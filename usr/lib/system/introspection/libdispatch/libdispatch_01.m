NSObject *_dispatch_queue_invoke_finish(atomic_ullong *a1, uint64_t a2, __objc2_class **a3, uint64_t a4)
{
  v6 = *(a2 + 8);
  if (!v6)
  {
    return _dispatch_queue_invoke_finish_cold_1(a3, a1, a4);
  }

  v7 = *(a2 + 16);
  *(v6 + 106) |= 0x80u;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v7)
  {

    return _dispatch_workloop_drain_barrier_waiter(a1, v6, v7, 1, a4 & 0x4000000001);
  }

  else
  {
    v9 = a4 & 0x4000000001;

    return _dispatch_lane_drain_barrier_waiter(a1, v6, 1, v9);
  }
}

uint64_t _dispatch_workloop_drain_barrier_waiter(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 100) & 0xFFFFFFFC;
  v9 = *(a2 + 16);
  v10 = a3 - 1;
  *(a1 + 104 + 8 * (a3 - 1)) = v9;
  if (!v9)
  {
    v20 = v10;
    v21 = *(a1 + 8 * v10 + 152);
    v22 = (a1 + 8 * v10 + 152);
    while ((v21 & 0xFFFFFFFFFFFFFFF8) == a2)
    {
      v23 = v21;
      atomic_compare_exchange_strong_explicit(v22, &v23, 0, memory_order_release, memory_order_relaxed);
      v24 = v23 == v21;
      v21 = v23;
      if (v24)
      {
        goto LABEL_2;
      }
    }

    v25 = a5;
    v9 = *(a2 + 16);
    if (!v9)
    {
      v9 = _dispatch_wait_for_enqueuer((a2 + 16));
    }

    *(a1 + 104 + 8 * v20) = v9;
    a5 = v25;
  }

LABEL_2:
  v11 = v9 != 0;
  v12 = v8 - a5;
LABEL_3:
  if (v11)
  {
    v11 = 1;
  }

  else
  {
    v13 = 0;
    do
    {
      v11 = v13 != -48;
      if (v13 == -48)
      {
        break;
      }

      v14 = *(a1 + 192 + v13);
      v13 -= 8;
    }

    while (!v14);
  }

  v15 = *(a1 + 56);
  do
  {
    v16 = v15;
    if ((v15 & 0x2000000000) != 0)
    {
      v18 = 0xFFFFFF7700000000;
      if ((v16 & 2) != 0)
      {
        if ((v16 & 0x800000001) != 0)
        {
          _dispatch_event_loop_ensure_ownership(a1);
          atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
          goto LABEL_3;
        }
      }

      else
      {
        v18 = 0xFFFFFF7700000001;
      }

      v17 = v16 & v18 | v8;
      if (!v11)
      {
        if ((v16 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          goto LABEL_3;
        }

        v17 &= 0xFFFFFF70FFFFFFFCLL;
      }
    }

    else
    {
      v17 = v12 + (v15 & 0xFFFFFF5700000001);
    }

    v15 = v16;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v15, v17, memory_order_release, memory_order_relaxed);
  }

  while (v15 != v16);

  return _dispatch_barrier_waiter_redirect_or_wake(a1, a2, a4, v16, v17);
}

uint64_t _dispatch_lane_drain_barrier_waiter(atomic_ullong *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = *(a2 + 100) & 0xFFFFFFFC;
  v8 = *(a2 + 16);
  a1[13] = v8;
  if (!v8)
  {
    v15 = a1[6];
    while ((v15 & 0xFFFFFFFFFFFFFFF8) == a2)
    {
      v16 = v15;
      atomic_compare_exchange_strong_explicit(a1 + 6, &v16, 0, memory_order_release, memory_order_relaxed);
      v17 = v16 == v15;
      v15 = v16;
      if (v17)
      {
        goto LABEL_2;
      }
    }

    v18 = a4;
    v8 = *(a2 + 16);
    if (!v8)
    {
      v8 = _dispatch_wait_for_enqueuer((a2 + 16));
    }

    a1[13] = v8;
    a4 = v18;
  }

LABEL_2:
  v9 = v7 - a4;
LABEL_3:
  v10 = a1[7];
  do
  {
    v11 = v10;
    if ((v10 & 0x2000000000) != 0)
    {
      v13 = 0xFFFFFF7700000000;
      if ((v11 & 2) != 0)
      {
        if ((v11 & 0x800000001) != 0)
        {
          _dispatch_event_loop_ensure_ownership(a1);
          atomic_fetch_and_explicit(a1 + 7, 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
          goto LABEL_3;
        }
      }

      else
      {
        v13 = 0xFFFFFF7700000001;
      }

      v12 = v11 & v13 | v7;
      if (!v8)
      {
        if ((v11 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit(a1 + 7, 0x8000000000uLL, memory_order_acquire);
          v8 = a1[13];
          goto LABEL_3;
        }

        v12 &= 0xFFFFFF70FFFFFFFCLL;
      }
    }

    else
    {
      v12 = v9 + (v10 & 0xFFFFFF5700000001);
    }

    v10 = v11;
    atomic_compare_exchange_strong_explicit(a1 + 7, &v10, v12, memory_order_release, memory_order_relaxed);
  }

  while (v10 != v11);

  return _dispatch_barrier_waiter_redirect_or_wake(a1, a2, a3, v11, v12);
}

unint64_t _dispatch_lane_activate(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 84);
  v4 = (v3 >> 8) & 0xF;
  if (v3 >> 12 <= v4 || (v3 & 0x40000000) == 0 && v4)
  {
    *(a1 + 84) = v3 & 0xFBFF0FFF;
  }

  v5 = _dispatch_queue_priority_inherit_from_target(a1, v2);

  return _dispatch_lane_inherit_wlh_from_target(a1, v5);
}

__objc2_class **_dispatch_queue_priority_inherit_from_target(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 84);
  v4 = a2 >= &_dispatch_root_queues && a2 < &_dispatch_queue_serial_numbers;
  if ((v2 & 0x20000000) != 0 || (v2 & 0x44000FFF) == 0)
  {
    if (v4)
    {
      v2 = *(a2 + 84) | 0x20000000;
    }

    else if ((v2 & 0x20000000) != 0)
    {
      v2 &= 0xFBFF0FFF;
    }

    *(a1 + 84) = v2;
  }

  else if (v4)
  {
    if (((v2 >> 8) & 0xF) != 0)
    {
      v5 = (v2 >> 8) & 0xF;
    }

    else
    {
      v5 = 4;
    }

    if (v5 - 7 <= 0xFFFFFFF9)
    {
      _dispatch_queue_priority_inherit_from_target_cold_1(v5);
    }

    return &_dispatch_root_queues + 16 * (3 * v5 + (v2 >> 31) - 3);
  }

  return a2;
}

unint64_t _dispatch_lane_inherit_wlh_from_target(uint64_t a1, unint64_t a2)
{
  if (*(*a2 + 42))
  {
    if (*(*a1 + 40) == 133137 || (*(*a1 + 40) != 19 || (*(*(a1 + 88) + 29) & 0x20) != 0) && *(a1 + 80) == 1 && (a2 >= &_dispatch_root_queues ? (v6 = &_dispatch_queue_serial_numbers > a2) : (v6 = 0), v6))
    {
      v5 = 0x2000000000;
      v4 = 1;
    }

    else
    {
      v4 = 0;
      v5 = 0x1000000000;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v7 = *(a1 + 56);
  while (1)
  {
    v8 = v7;
    result = v7 & 0xFFFFFFCFFFFFFFFFLL | v5;
    if (v7 == result)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit((a1 + 56), &v7, result, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v8)
    {
      goto LABEL_16;
    }
  }

  result = v7;
LABEL_16:
  if ((v8 & 0x2000000000) == 0)
  {
    v4 = 1;
  }

  if ((v4 & 1) == 0)
  {
    v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
    if (v10)
    {
      if (*(v10 + 24) == a1)
      {
        result = _dispatch_event_loop_leave_immediate(result);
      }
    }
  }

  if ((*(*a2 + 40) & 0x10000) == 0)
  {
    if (*(*a2 + 40) == 18)
    {
      v11 = *(a2 + 24);
      if (v11 < &_dispatch_root_queues || v11 >= &_dispatch_queue_serial_numbers)
      {
        v13 = *(a2 + 200);
        v14 = 0x1000000;
        if (v13)
        {
          if ((*v13 & 0x40) != 0)
          {
            v14 = 17039360;
          }

          else
          {
            v14 = 0x1000000;
          }
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = *(a2 + 80);
      do
      {
        v16 = v15 & 0xFFAFFFFF | 0x100000;
        if (v16 == v15)
        {
          break;
        }

        v17 = v15;
        atomic_compare_exchange_strong_explicit((a2 + 80), &v17, v16, memory_order_relaxed, memory_order_relaxed);
        v18 = v17 == v15;
        v15 = v17;
      }

      while (!v18);
    }

    else
    {
      v14 = *(a2 + 80) & 0x1000000;
      if (v14)
      {
        v14 = *(a2 + 80) & 0x1040000;
      }

      atomic_fetch_or_explicit((a2 + 80), 0x100000u, memory_order_relaxed);
    }

    if (v14)
    {
      atomic_fetch_or_explicit((a1 + 80), v14, memory_order_relaxed);
    }
  }

  return result;
}

NSObject *_dispatch_lane_invoke(uint64_t a1, void *a2, unsigned int a3, int8x16_t a4)
{
  v58 = 0;
  if ((a3 & 3) == 0)
  {
    *(a1 + 16) = -1985229329;
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_pop_internal(v7, a1, a4);
    }

    _dispatch_introspection_queue_item_dequeue(v7, a1);
  }

  if ((a3 & 2) != 0)
  {
    v58 = 0x40020000000001;
    v8 = a3 & 0x40000;
  }

  else
  {
    v36 = (*(a1 + 80) << 41) - 0x20000000000;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v38 = *(StatusReg + 24) & 0xFFFFFFFCLL;
    v8 = a3 & 0x40000;
    if ((a3 & 0x40000) != 0)
    {
      v39 = 0x4000000000;
    }

    else
    {
      v39 = 1;
    }

    if ((a3 & 0x40001) == 0x40000)
    {
      v40 = 0xFFE00000FFFFFFFCLL;
    }

    else
    {
      v40 = 0xFFE00040FFFFFFFCLL;
    }

    v41 = *(StatusReg + 200);
    v42 = (v41 >> 8) & 0xF;
    v43 = v41 >> 12;
    v44 = HIWORD(v41) & 0xF;
    if (v42 <= v43)
    {
      v42 = v43;
    }

    if (v42 > v44)
    {
      v44 = v42;
    }

LABEL_76:
    for (i = *(a1 + 56); ; i = v50)
    {
      while ((i & v40) != 0)
      {
        if ((a3 & 1) != 0 || (v51 = i, atomic_compare_exchange_strong_explicit((a1 + 56), &v51, i ^ v39, memory_order_acquire, memory_order_acquire), v51 == i))
        {
          v22 = 0;
          v58 = 0;
          goto LABEL_59;
        }

        i = v51;
      }

      if ((i & 0x1000000000) != 0)
      {
        v46 = HIDWORD(i) & 7;
        if (v46 > v44)
        {
          v52 = *(StatusReg + 24);
          v56 = v36;
          _pthread_workqueue_override_start_direct();
          v36 = v56;
          v53 = *(StatusReg + 200);
          v44 = v46;
          if ((HIWORD(v53) & 0xF) < v46)
          {
            *(StatusReg + 200) = v53 & 0xFFF0FFFF | (v46 << 16);
            v44 = v46;
          }

          goto LABEL_76;
        }
      }

      v47 = (i >> 40) & 1;
      if (!((v36 + i) >> 53))
      {
        LODWORD(v47) = 1;
      }

      v48 = v47 ? 0x60000000000000 : 0x20000000000000;
      v49 = i & 0x7700000001 | v38 | v48;
      v50 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v50, v49, memory_order_acquire, memory_order_acquire);
      if (v50 == i)
      {
        break;
      }
    }

    v54 = 0x60000000000000;
    if ((a3 & 1) == 0)
    {
      v54 = v39 | 0x60000000000000;
    }

    v58 = (v49 & v54) - (i & 0x3FFE0000000000);
    if (!v58)
    {
      v22 = 0;
      goto LABEL_59;
    }
  }

  if (v8)
  {
    v9 = 0;
    if ((a3 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 84);
  v11 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v12 = *(v11 + 200);
  if (v12)
  {
    v13 = v10 >> 12;
    v14 = v10 & 0xFFF;
    if ((v10 & 0xFFF) != 0)
    {
      if ((v12 & 0xFFFu) > v14)
      {
        v14 = v12 & 0xFFF;
      }

      if (v13 <= v14 >> 8)
      {
        v15 = 0x40000000;
      }

      else
      {
        v15 = 1140912128;
      }

      v16 = v12 & 0x880F0000 | v14 | v15 & v10;
    }

    else
    {
      v17 = v12 | 0x40000000;
      if ((v12 & 0xFFF) == 0)
      {
        v17 = *(v11 + 200);
      }

      v16 = v17 & 0xFFFF0FFF | v10 & 0x400F000;
      if (v13 <= ((v17 >> 8) & 0xF))
      {
        v16 = v17;
      }
    }
  }

  else
  {
    v16 = v10 & 0xFFF0FFFF;
  }

  *(v11 + 200) = v16;
  v9 = v12 & 0xFFF0FFFF;
  if ((a3 & 0x100000) != 0)
  {
LABEL_23:
    if ((*(a1 + 80) & 0x400000) != 0)
    {
      atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
    }
  }

LABEL_25:
  LODWORD(v18) = (*(a1 + 80) << 8) & 0x3000000 | a3 & 0xFCFFFFFF;
  if (((*(a1 + 80) << 8) & 0x3000000) != 0)
  {
    v18 = v18;
  }

  else
  {
    v18 = a3;
  }

  v55 = v18 | 0x10;
  v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v20 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_29:
  v21 = v18;
  if ((v18 & 0x1000002) == 2)
  {
    _dispatch_last_resort_autorelease_pool_push(a2);
    v22 = *(a1 + 24);
    v23 = (v19 + 160);
    if (*(v19 + 160) == v22)
    {
      if (*(a1 + 80) == 1)
      {
        _dispatch_lane_serial_drain(a1, a2, v21, &v58);
      }

      else
      {
        _dispatch_lane_concurrent_drain(a1, a2, v21, &v58);
      }

      v22 = v24;
    }

    v57 = *v23;
    *(v19 + 160) = a1;
    *(v19 + 168) = &v57;
    _dispatch_last_resort_autorelease_pool_pop(a2);
    *v23 = v57;
  }

  else
  {
    v22 = *(a1 + 24);
    if (*(v20 + 160) == v22)
    {
      if (*(a1 + 80) == 1)
      {
        _dispatch_lane_serial_drain(a1, a2, v18, &v58);
      }

      else
      {
        _dispatch_lane_concurrent_drain(a1, a2, v18, &v58);
      }

      v22 = v25;
    }
  }

  if (v22 + 1 <= 1)
  {
    v26 = v58;
    v27 = *(a1 + 56);
    while (1)
    {
      v28 = v27;
      v29 = v27 - v26;
      v30 = v29 & 0xFFFFFFF700000001;
      if (!(v28 >> 55))
      {
        if ((v28 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          v22 = *(v20 + 160);
          v18 = v55;
          if (a3)
          {
            goto LABEL_29;
          }

          v18 = v55;
          if (((*v22)[1].isa & 0x10000) != 0)
          {
            goto LABEL_29;
          }

          break;
        }

        if (v22)
        {
          v30 = v29 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v30 = v29 & 0xFFFFFFF000000001;
        }
      }

      v27 = v28;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v27, v30, memory_order_release, memory_order_relaxed);
      if (v27 == v28)
      {
        if ((~v28 & 0x1800000000) == 0)
        {
          v31 = HIDWORD(v28) & 7;
          v32 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v33 = *(v32 + 200);
          if ((HIWORD(v33) & 0xF) < v31)
          {
            *(v32 + 200) = v33 & 0xFFF0FFFF | (v31 << 16);
          }
        }

        v22 = 0;
        v58 = 0;
        break;
      }
    }
  }

  if ((v21 & 0x40000) == 0)
  {
    v34 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v34 + 200) = *(v34 + 200) & 0xF0000 | v9;
  }

LABEL_59:
  if ((a3 & 1) == 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_introspection_queue_item_complete(a1);
  }

  if (v22)
  {
    return _dispatch_queue_invoke_finish(a1, a2, v22, v58);
  }

  else
  {
    return _os_object_release_internal_n(a1, &dword_0 + 2);
  }
}

uint64_t dispatch_workloop_copy_current()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 216);
  v1 = v0 == -4 || v0 == 0;
  if (v1 || *(*v0 + 40) != 18)
  {
    return 0;
  }

  _os_object_retain_with_resurrect(v0);
  return v0;
}

BOOL _dispatch_workloop_should_yield_4NW()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 216);
  v1 = v0 == -4 || v0 == 0;
  return !v1 && *(*v0 + 40) == 18 && (*(v0 + 60) & 7u) > *(v0 + 100);
}

NSObject *_dispatch_workloop_create(const char *a1, uint64_t a2)
{
  v3 = 65537;
  if (a1)
  {
    v5 = _dispatch_strdup_if_mutable(a1);
    if (v5 == a1)
    {
      v3 = 65537;
    }

    else
    {
      v3 = 2162689;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = _dispatch_object_alloc(OS_dispatch_workloop, 208);
  if ((a2 & 0x180000000000000) != 0)
  {
    LODWORD(v6[1].isa) += 2;
    if (*(v6->isa + 40) == 19)
    {
      ++LODWORD(v6[1].isa);
    }
  }

  v6[2].isa = -1985229329;
  LODWORD(v6[10].isa) = v3;
  v6[7].isa = (a2 | 0x1FFE2000000000);
  v6[8].isa = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  v6[9].isa = v5;
  v6[3].isa = &off_713C0;
  if ((a2 & 0x180000000000000) == 0)
  {
    HIDWORD(v6[10].isa) = -2080358400;
  }

  return _dispatch_introspection_queue_create(v6);
}

void dispatch_workloop_set_autorelease_frequency(dispatch_workloop_t workloop, dispatch_autorelease_frequency_t frequency)
{
  isa_low = LODWORD(workloop[10].isa);
  if (frequency == DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM)
  {
    do
    {
      v3 = isa_low & 0xFFFCFFFF | 0x10000;
      if (v3 == isa_low)
      {
        break;
      }

      v4 = isa_low;
      atomic_compare_exchange_strong_explicit(&workloop[10], &v4, v3, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == isa_low;
      isa_low = v4;
    }

    while (!v5);
  }

  else
  {
    do
    {
      v6 = isa_low & 0xFFFCFFFF | 0x20000;
      if (v6 == isa_low)
      {
        break;
      }

      v7 = isa_low;
      atomic_compare_exchange_strong_explicit(&workloop[10], &v7, v6, memory_order_relaxed, memory_order_relaxed);
      v5 = v7 == isa_low;
      isa_low = v7;
    }

    while (!v5);
  }

  isa = workloop[7].isa;
  if ((~isa & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(isa);
  }
}

_DWORD *dispatch_workloop_set_scheduler_priority(uint64_t a1, int a2, char a3)
{
  v4 = *(a1 + 56);
  if ((~v4 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v4);
  }

  result = *(a1 + 200);
  if (result)
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_8:
    result[2] = 0;
    v8 = *result & 0xFFFFFFFE;
    if ((a3 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    result[4] = 2;
    v9 = v8 | 2;
    goto LABEL_10;
  }

  result = _dispatch_calloc_typed(1uLL, 0x38uLL, 0x10A00404B3B3801uLL);
  *(a1 + 200) = result;
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  result[2] = a2;
  v8 = *result | 1;
  if (a3)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = v8 & 0xFFFFFFFD;
LABEL_10:
  *result = v9;
  return result;
}

uint64_t dispatch_workloop_set_uses_bound_thread(uint64_t a1)
{
  if (_dispatch_workloop_bound_thread_pred != -1)
  {
    dispatch_workloop_set_uses_bound_thread_cold_1();
  }

  if (_dispatch_thread_bound_kqwl_enabled != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 56);
  if ((~v2 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v2);
  }

  v3 = *(a1 + 200);
  if (!v3)
  {
    v3 = _dispatch_calloc_typed(1uLL, 0x38uLL, 0x10A00404B3B3801uLL);
    *(a1 + 200) = v3;
  }

  v4 = 0;
  *v3 |= 0x40u;
  return v4;
}

void dispatch_workloop_set_os_workgroup(dispatch_workloop_t workloop, os_workgroup_t workgroup)
{
  isa = workloop[7].isa;
  if ((~isa & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(isa);
  }

  v5 = workloop[25].isa;
  if (!v5)
  {
    v5 = _dispatch_calloc_typed(1uLL, 0x38uLL, 0x10A00404B3B3801uLL);
    workloop[25].isa = v5;
  }

  v6 = *(v5 + 4);
  if (v6)
  {
    _os_object_release(v6, workgroup);
  }

  _os_object_retain(workgroup);
  *(workloop[25].isa + 4) = workgroup;
}

_BYTE *dispatch_workloop_set_cpupercent(uint64_t a1, char a2, int a3)
{
  v4 = *(a1 + 56);
  if ((~v4 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v4);
  }

  result = *(a1 + 200);
  if (!result)
  {
    result = _dispatch_calloc_typed(1uLL, 0x38uLL, 0x10A00404B3B3801uLL);
    *(a1 + 200) = result;
  }

  v8 = *result;
  if ((*result & 9) == 0)
  {
    dispatch_workloop_set_cpupercent_cold_2();
  }

  result[20] = a2;
  *(result + 6) = a3;
  *result = v8 | 4;
  return result;
}

__n128 _dispatch_workloop_set_observer_hooks_4IOHID(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 56);
  if ((~v3 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v3);
  }

  v5 = *(a1 + 200);
  if (!v5)
  {
    v5 = _dispatch_calloc_typed(1uLL, 0x38uLL, 0x10A00404B3B3801uLL);
    *(a1 + 200) = v5;
  }

  result = *a2;
  *(v5 + 40) = *a2;
  **(a1 + 200) |= 0x20u;
  return result;
}

void _dispatch_workloop_dispose(NSObject *a1, _BYTE *a2)
{
  isa = a1[7].isa;
  if (isa != 0x1FFE2000000000)
  {
    _dispatch_workloop_dispose_cold_1(isa);
  }

  _dispatch_introspection_queue_dispose(a1);
  for (i = 0; i != 6; ++i)
  {
    v7 = &a1[i];
    v8 = a1[i + 19].isa;
    if (v8)
    {
      _dispatch_workloop_dispose_cold_2(v8);
    }

    v7[19].isa = (&stru_1F8 + 8);
    v7[13].isa = (&stru_1F8 + 8);
  }

  v9 = a1[6].isa;
  if (v9)
  {
    free(v9);
    a1[6].isa = 0;
  }

  v10 = a1[25].isa;
  if (v10)
  {
    if ((*v10 & 0x10) != 0)
    {
      v11 = _pthread_workloop_destroy();
      if (v11)
      {
        _dispatch_bug(4623, v11);
      }
    }

    v12 = a1[25].isa;
    if (v12)
    {
      if (v12[4])
      {
        _os_object_release(v12[4], v5);
        v12 = a1[25].isa;
      }

      free(v12);
    }
  }

  _dispatch_queue_dispose(a1, a2);
}

uint64_t _dispatch_workloop_activate(uint64_t result)
{
  v1 = (result + 56);
  if ((~atomic_fetch_and_explicit((result + 56), 0xFEFFFFFFFFFFFFFFLL, memory_order_relaxed) & 0x180000000000000) == 0)
  {
    v2 = result;
    v3 = (result + 200);
    v4 = *(result + 200);
    if (!v4)
    {
      return _dispatch_workloop_activate_cold_4(v2, v1);
    }

    memset(&v13, 0, sizeof(v13));
    pthread_attr_init(&v13);
    v5 = *v4;
    if ((*v4 & 8) != 0)
    {
      *(v2 + 84) |= v4[1] | 0x40000000;
    }

    if (v5)
    {
      pthread_attr_setschedparam(&v13, v4 + 1);
      *(v2 + 24) = &_dispatch_custom_workloop_root_queue;
    }

    v6 = *(v4 + 4);
    if (v6)
    {
      *(v2 + 24) = &_dispatch_custom_workloop_root_queue;
      if (_os_workgroup_get_backing_workinterval(v6))
      {
        pthread_attr_setworkinterval_np();
      }
    }

    v7 = *v4;
    if ((*v4 & 0x40) != 0)
    {
      if (_dispatch_root_queues_pred != -1)
      {
        _dispatch_workloop_activate_cold_1();
      }

      *(v2 + 24) = &_dispatch_custom_workloop_overcommit_root_queue;
      v7 = *v4;
      if ((*v4 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_17;
    }

    pthread_attr_setschedpolicy(&v13, v4[4]);
    v7 = *v4;
LABEL_17:
    if ((v7 & 4) != 0)
    {
      v8 = *(v4 + 20);
      v9 = v4[6];
      pthread_attr_setcpupercent_np();
    }

    v10 = *v3;
    if (*v3)
    {
      if ((*v10 & 0x47) != 0 || (v11 = *(v10 + 32)) != 0 && _os_workgroup_get_backing_workinterval(v11))
      {
        v12 = _pthread_workloop_create();
        if (v12 <= 44)
        {
          if (v12)
          {
            if (v12 == 33)
            {
              _dispatch_workloop_activate_cold_2(v2);
            }
          }

          else
          {
            *v4 |= 0x10u;
          }
        }

        else if (v12 == 45)
        {
          _dispatch_workloop_activate_cold_3();
        }

        else if (v12 == 78)
        {
          _dispatch_workloop_activate_simulator_fallback(v2, &v13.__sig);
        }
      }
    }

    pthread_attr_destroy(&v13);
    return _dispatch_workloop_activate_cold_4(v2, v1);
  }

  return result;
}

uint64_t _dispatch_workloop_wakeup(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 4) == 0)
  {
    if ((a3 & 1) == 0)
    {
      _dispatch_workloop_wakeup_cold_4(a3);
    }

    if ((a3 & 8) == 0)
    {
      v4 = *(a1 + 56);
      v5 = a2 << 32;
      do
      {
        v6 = v4;
        v7 = v4 & 0x700000000;
        v8 = v6 & 0xFFFFFFF8FFFFFFFFLL | v5;
        if (v6 & 0x1000000000 | v5 & 0x1000000000)
        {
          v8 |= 0x800000000uLL;
        }

        if (v7 < v5)
        {
          v9 = v8;
        }

        else
        {
          v9 = v6;
        }

        v10 = v9 | ((v9 & 0x700000000) != 0);
        if ((a3 & 2) != 0)
        {
          v10 |= 0x8000000000uLL;
        }

        else if (v10 == v6)
        {
          goto LABEL_27;
        }

        v4 = v6;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v4, v10, memory_order_release, memory_order_relaxed);
      }

      while (v4 != v6);
      if (v6 >> 55)
      {
        _dispatch_workloop_wakeup_cold_3(v6);
      }

      v11 = v10 ^ v6;
      if (v11)
      {
        if ((v10 & 0x2000000000) == 0)
        {
          return _dispatch_workloop_wakeup_cold_1(*(a1 + 24));
        }

        _dispatch_introspection_runtime_event();

        return _dispatch_event_loop_poke(a1, v10, (&dword_0 + 1), v12);
      }

      result = _dispatch_workloop_wakeup_cold_2(v11, v10, a1, a3);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

LABEL_27:

    return _os_object_release_internal_n(a1, &dword_0 + 2);
  }

  return _dispatch_workloop_barrier_complete(a1, a2, a3);
}

NSObject *_dispatch_workloop_invoke(void *a1, uint64_t a2, int a3, int8x16_t a4)
{
  v4 = a3;
  if ((a3 & 3) == 0)
  {
    a1[2] = -1985229329;
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_pop_internal(v7, a1, a4);
    }

    _dispatch_introspection_queue_item_dequeue(v7, a1);
  }

  v132 = a2;
  if ((v4 & 2) != 0)
  {
    v8 = v4 & 0x40000;
    v129 = 0x40020000000001;
  }

  else
  {
    v106 = (*(a1 + 40) << 41) - 0x20000000000;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v109 = *(StatusReg + 24);
    v108 = StatusReg + 24;
    v110 = v109 & 0xFFFFFFFC;
    v8 = v4 & 0x40000;
    if ((v4 & 0x40000) != 0)
    {
      v111 = 0x4000000000;
    }

    else
    {
      v111 = 1;
    }

    if ((v4 & 0x40001) == 0x40000)
    {
      v112 = 0xFFE00000FFFFFFFCLL;
    }

    else
    {
      v112 = 0xFFE00040FFFFFFFCLL;
    }

    v113 = *(v108 + 176);
    v114 = (v113 >> 8) & 0xF;
    v115 = v113 >> 12;
    v116 = HIWORD(v113) & 0xF;
    if (v114 <= v115)
    {
      v114 = v115;
    }

    if (v114 > v116)
    {
      v116 = v114;
    }

LABEL_290:
    for (i = a1[7]; ; i = v122)
    {
      while ((i & v112) != 0)
      {
        if ((v4 & 1) != 0 || (v123 = i, atomic_compare_exchange_strong_explicit(a1 + 7, &v123, i ^ v111, memory_order_acquire, memory_order_acquire), v123 == i))
        {
          v100 = 0;
          v95 = 0;
          a2 = v132;
          goto LABEL_273;
        }

        i = v123;
      }

      if ((i & 0x1000000000) != 0)
      {
        v118 = HIDWORD(i) & 7;
        if (v118 > v116)
        {
          v136 = v106;
          _dispatch_workloop_invoke_cold_1();
          v106 = v136;
          v116 = v118;
          goto LABEL_290;
        }
      }

      v119 = (i >> 40) & 1;
      if (!((v106 + i) >> 53))
      {
        LODWORD(v119) = 1;
      }

      v120 = v119 ? 0x60000000000000 : 0x20000000000000;
      v121 = i & 0x7700000001 | v110 | v120;
      v122 = i;
      atomic_compare_exchange_strong_explicit(a1 + 7, &v122, v121, memory_order_acquire, memory_order_acquire);
      if (v122 == i)
      {
        break;
      }
    }

    v124 = 0x60000000000000;
    if ((v4 & 1) == 0)
    {
      v124 = v111 | 0x60000000000000;
    }

    v129 = (v121 & v124) - (i & 0x3FFE0000000000);
    if (!v129)
    {
      v95 = 0;
      a2 = v132;
      v100 = 0;
      goto LABEL_273;
    }

    a2 = v132;
  }

  if (v8)
  {
    v126 = 0;
    goto LABEL_23;
  }

  v9 = *(a1 + 21);
  v10 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = *(v10 + 200);
  if (v11)
  {
    v12 = v9 & 0xFFF;
    if ((v9 & 0xFFF) != 0)
    {
      if ((v11 & 0xFFFu) > v12)
      {
        v12 = v11 & 0xFFF;
      }

      if (v9 >> 12 <= v12 >> 8)
      {
        v13 = 0x40000000;
      }

      else
      {
        v13 = 1140912128;
      }

      v14 = v13 & v9;
      v15 = v11 & 0x880F0000 | v12;
    }

    else
    {
      v16 = v11 | 0x40000000;
      if ((v11 & 0xFFF) == 0)
      {
        v16 = *(v10 + 200);
      }

      if (v9 >> 12 <= ((v16 >> 8) & 0xF))
      {
        goto LABEL_22;
      }

      v15 = v16 & 0xFFFF0FFF;
      v14 = v9 & 0x400F000;
    }

    v16 = v15 | v14;
  }

  else
  {
    v16 = v9 & 0xFFF0FFFF;
  }

LABEL_22:
  *(v10 + 200) = v16;
  v126 = v11 & 0xFFF0FFFF;
LABEL_23:
  if ((a1[10] & 0x400000) != 0)
  {
    atomic_fetch_and_explicit(a1 + 20, 0xFFBFFFFF, memory_order_relaxed);
  }

  v17 = (*(a1 + 20) << 8) & 0x3000000 | v4 & 0xFCEDFFFF | 0x100000;
  if (((*(a1 + 20) << 8) & 0x3000000) == 0)
  {
    v17 = v4 & 0xFFEDFFFF | 0x100000;
  }

  v130 = (a1 + 19);
  v135 = (a1 + 13);
  v18 = v17 & 0x1000002;
  v134 = v17;
  v131 = (v17 >> 21) & 1;
  v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v133 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v127 = v17 & 0x1000002;
  v128 = v4;
LABEL_28:
  if (v18 == 2)
  {
    _dispatch_last_resort_autorelease_pool_push(a2);
    v20 = a1[25];
    if (v20 && (*v20 & 0x20) != 0)
    {
      *(v133 + 192) = v20 + 40;
    }

    v21 = *(v19 + 160);
    v137 = v21;
    *(v19 + 160) = a1;
    *(v19 + 168) = &v137;
LABEL_33:
    v22 = 6;
    while (v22)
    {
      v23 = v22--;
      if (*&v130[8 * v22])
      {
        v24 = v23;
        v25 = v23 << 32;
        v26 = a1[7];
        while (1)
        {
          if ((v26 & 0x700000000uLL) <= v25)
          {
            goto LABEL_42;
          }

          if ((v26 & 0x8000000000) != 0)
          {
            break;
          }

          v27 = v26;
          atomic_compare_exchange_strong_explicit(a1 + 7, &v27, v26 & 0xFFFFFF78FFFFFFFFLL | v25, memory_order_relaxed, memory_order_relaxed);
          v41 = v27 == v26;
          v26 = v27;
          if (v41)
          {
            _dispatch_workloop_invoke_cold_2(v19 + 232);
LABEL_42:
            *(a1 + 100) = v23;
            v28 = &v135[8 * v22];
            v29 = *v28;
            if (!*v28)
            {
              v29 = _dispatch_wait_for_enqueuer(v28);
            }

            while (2)
            {
              if ((*v29 & 0xFFFFFFFFFFFFF001) == 1)
              {
                *(a2 + 16) = v24;
                *(a2 + 8) = v29;
                *(a1 + 100) = 0;
                *(v19 + 160) = v137;
                *(v19 + 192) = 0;
                v95 = a1[3];
                goto LABEL_250;
              }

              v30 = v29[2];
              v31 = v24 - 1;
              *&v135[8 * v31] = v30;
              if (!v30)
              {
                v50 = *&v130[8 * v31];
                while (v29 == (v50 & 0xFFFFFFFFFFFFFFF8))
                {
                  v51 = v50;
                  atomic_compare_exchange_strong_explicit(&v130[8 * v31], &v51, 0, memory_order_release, memory_order_relaxed);
                  v41 = v51 == v50;
                  v50 = v51;
                  if (v41)
                  {
                    goto LABEL_46;
                  }
                }

                v30 = v29[2];
                if (!v30)
                {
                  v30 = _dispatch_wait_for_enqueuer(v29 + 2);
                }

                *&v135[8 * v31] = v30;
              }

LABEL_46:
              if (*(v19 + 40))
              {
                _dispatch_return_to_kernel();
              }

              v32 = *(v19 + 192);
              if (v32)
              {
                (*v32)(a1);
              }

              v33 = *v29;
              if (*v29 >= 0x1000uLL)
              {
                v34 = *v29;
                if (*(v33 + 40) == 1)
                {
                  (*(v33 + 48))(v29, 0, v131);
                }

                else
                {
                  (*(v33 + 64))(v29, a2, v134 & 0xFEFD0000);
                }

                if (!v32)
                {
LABEL_105:
                  if (!v30)
                  {
                    goto LABEL_33;
                  }

                  v24 = *(a1 + 100);
                  v29 = v30;
                  if ((*(a1 + 15) & 7u) > v24)
                  {
                    goto LABEL_33;
                  }

                  continue;
                }

LABEL_104:
                v32[1](a1);
                goto LABEL_105;
              }

              break;
            }

            v35 = v29[3];
            if ((v33 & 4) != 0)
            {
              v29[3] = -1;
            }

            if (v35 != -1)
            {
              if (v35)
              {
                v36 = *(v35 + 32);
              }

              if (MEMORY[0xFFFFFC100])
              {
                kdebug_trace();
              }
            }

            v37 = v29[1];
            if (v37 == -1)
            {
              v40 = 0;
            }

            else
            {
              v38 = *(v19 + 200);
              if (((v38 >> 8) & 0xF) != 0)
              {
                v39 = 1 << ((BYTE1(v38) & 0xFu) + 7);
              }

              else
              {
                v39 = 0;
              }

              v40 = v39 | *(v19 + 200);
              if ((v37 & 0xFFFFFF) != 0)
              {
                if ((v37 & 0xFFFFFFuLL) >= (v39 & 0xFFFFFF00))
                {
                  v41 = (v38 & 0x44000000) == 0 && (v29[1] & 0x10000000) == 0;
                  if (!v41)
                  {
                    v40 = v37 & 0xFFFFFF;
                  }
                }
              }

              else if (v38 >> 12)
              {
                v40 = (256 << ((v38 >> 12) - 1)) | 0xFF;
              }
            }

            v42 = v40 & 0x7FFFFFFF02FFFFFFLL;
            v43 = *(v19 + 32);
            if ((v43 & 0x1000000) != 0)
            {
              if (!v42)
              {
                v42 = v43 & 0xFFFFFFFFFEFFFFFFLL;
                goto LABEL_114;
              }

LABEL_125:
              _dispatch_set_priority_and_voucher_slow(v42, v35, v33 & 4 | 2);
              if ((v33 & 0x200) == 0)
              {
LABEL_84:
                if (MEMORY[0xFFFFFC100])
                {
                  _dispatch_trace_item_pop_internal(a1, v29, v21);
                }

                _dispatch_introspection_queue_item_dequeue(a1, v29);
              }
            }

            else
            {
              if (v42 == (v43 & 0xFFFFFFFF76FFFFFFLL))
              {
                goto LABEL_78;
              }

LABEL_114:
              if (v42)
              {
                goto LABEL_125;
              }

LABEL_78:
              if (v35 != -1)
              {
                if (*(v19 + 224) != v35)
                {
                  v42 = 0;
                  goto LABEL_125;
                }

                if ((v33 & 4) != 0 && v35)
                {
                  os_release(v35);
                }
              }

              if ((v33 & 0x200) == 0)
              {
                goto LABEL_84;
              }
            }

            if ((v33 & 4) != 0)
            {
              v45 = *(v19 + 176);
              if (v45)
              {
                v46 = *(v45 + 8) + 1;
              }

              else
              {
                v46 = 1;
              }

              v44 = v29;
              if (v46 <= _dispatch_continuation_cache_limit)
              {
                v44 = 0;
                v29[2] = v45;
                *(v29 + 2) = v46;
                *(v19 + 176) = v29;
              }
            }

            else
            {
              v44 = 0;
            }

            if ((v33 & 8) != 0)
            {
              v52 = v29[6];
              v53 = *(v52->isa + 5);
              if (v53 != 514)
              {
                _dispatch_workloop_invoke_cold_3(v53);
              }

              v54 = v29[4];
              v55 = v29[5];
              v56 = v54;
              if (v55)
              {
                v56 = v29[4];
                if (v54 == _dispatch_call_block_and_release)
                {
                  if (v55[2])
                  {
                    v56 = v55[2];
                  }

                  else
                  {
                    v56 = 0;
                  }
                }
              }

              _dispatch_introspection_callout_entry(v55, v56);
              _dispatch_client_callout(v55, v54);
              _dispatch_introspection_callout_return(v55, v56);
              if (MEMORY[0xFFFFFC100])
              {
                _dispatch_workloop_invoke_cold_4();
              }

              _dispatch_introspection_queue_item_complete(v29);
              dispatch_group_leave(v52);
              a2 = v132;
              if (!v44)
              {
LABEL_103:
                if (!v32)
                {
                  goto LABEL_105;
                }

                goto LABEL_104;
              }
            }

            else
            {
              v47 = v29[4];
              v48 = v29[5];
              v49 = v47;
              if (v48)
              {
                v49 = v29[4];
                if (v47 == _dispatch_call_block_and_release)
                {
                  if (v48[2])
                  {
                    v49 = v48[2];
                  }

                  else
                  {
                    v49 = 0;
                  }
                }
              }

              _dispatch_introspection_callout_entry(v48, v49);
              _dispatch_client_callout(v48, v47);
              _dispatch_introspection_callout_return(v48, v49);
              if (MEMORY[0xFFFFFC100])
              {
                _dispatch_workloop_invoke_cold_4();
              }

              _dispatch_introspection_queue_item_complete(v29);
              if (!v44)
              {
                goto LABEL_103;
              }
            }

            _dispatch_continuation_free_to_cache_limit(v44);
            if (!v32)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          }
        }

        atomic_fetch_xor_explicit(a1 + 7, 0x8000000000uLL, memory_order_acquire);
        goto LABEL_33;
      }
    }

    v95 = 0;
    v129 = v129 & 1 | 0x40020000000000;
    *(v19 + 160) = v137;
    *(v19 + 192) = 0;
LABEL_250:
    v137 = *(v19 + 160);
    *(v19 + 160) = a1;
    *(v19 + 168) = &v137;
    _dispatch_last_resort_autorelease_pool_pop(a2);
    *(v19 + 160) = v137;
    v18 = v127;
    LOBYTE(v4) = v128;
  }

  else
  {
    v57 = a1[25];
    if (v57 && (*v57 & 0x20) != 0)
    {
      *(v133 + 192) = v57 + 40;
    }

    v58 = *(v133 + 160);
    v137 = v58;
    *(v133 + 160) = a1;
    *(v133 + 168) = &v137;
LABEL_141:
    v59 = 6;
    while (v59)
    {
      v60 = v59--;
      if (*&v130[8 * v59])
      {
        v61 = v60;
        v62 = v60 << 32;
        v63 = a1[7];
        while (1)
        {
          if ((v63 & 0x700000000uLL) <= v62)
          {
            goto LABEL_150;
          }

          if ((v63 & 0x8000000000) != 0)
          {
            break;
          }

          v64 = v63;
          atomic_compare_exchange_strong_explicit(a1 + 7, &v64, v63 & 0xFFFFFF78FFFFFFFFLL | v62, memory_order_relaxed, memory_order_relaxed);
          v41 = v64 == v63;
          v63 = v64;
          if (v41)
          {
            _dispatch_workloop_invoke_cold_2(v133 + 232);
LABEL_150:
            *(a1 + 100) = v60;
            v65 = &v135[8 * v59];
            v66 = *v65;
            if (!*v65)
            {
              v66 = _dispatch_wait_for_enqueuer(v65);
            }

            v67 = v133;
            while (2)
            {
              if ((*v66 & 0xFFFFFFFFFFFFF001) == 1)
              {
                *(a2 + 16) = v61;
                *(a2 + 8) = v66;
                *(a1 + 100) = 0;
                *(v67 + 160) = v137;
                *(v67 + 192) = 0;
                v95 = a1[3];
                goto LABEL_252;
              }

              v68 = *(v66 + 16);
              v69 = v61 - 1;
              *&v135[8 * v69] = v68;
              if (!v68)
              {
                v89 = *&v130[8 * v69];
                while (v66 == (v89 & 0xFFFFFFFFFFFFFFF8))
                {
                  v90 = v89;
                  atomic_compare_exchange_strong_explicit(&v130[8 * v69], &v90, 0, memory_order_release, memory_order_relaxed);
                  v41 = v90 == v89;
                  v89 = v90;
                  if (v41)
                  {
                    goto LABEL_155;
                  }
                }

                v68 = *(v66 + 16);
                if (!v68)
                {
                  v68 = _dispatch_wait_for_enqueuer((v66 + 16));
                }

                *&v135[8 * v69] = v68;
              }

LABEL_155:
              if (*(v67 + 40))
              {
                _dispatch_return_to_kernel();
              }

              v70 = *(v67 + 192);
              if (v70)
              {
                (*v70)(a1);
              }

              v71 = *v66;
              if (*v66 >= 0x1000uLL)
              {
                v72 = *v66;
                if (*(v71 + 40) == 1)
                {
                  (*(v71 + 48))(v66, 0, v131);
                }

                else
                {
                  (*(v71 + 64))(v66, a2, v134 & 0xFFFD0000);
                }

                goto LABEL_217;
              }

              if ((v134 & 0x1000000) != 0)
              {
                v73 = objc_autoreleasePoolPush();
                v71 = *v66;
              }

              else
              {
                v73 = 0;
              }

              v74 = *(v66 + 24);
              if ((v71 & 4) != 0)
              {
                *(v66 + 24) = -1;
              }

              if (v74 != -1)
              {
                if (v74)
                {
                  v75 = *(v74 + 32);
                }

                if (MEMORY[0xFFFFFC100])
                {
                  kdebug_trace();
                }
              }

              v76 = *(v66 + 8);
              if (v76 == -1)
              {
                v79 = 0;
              }

              else
              {
                v77 = *(v67 + 200);
                if (((v77 >> 8) & 0xF) != 0)
                {
                  v78 = 1 << ((BYTE1(v77) & 0xFu) + 7);
                }

                else
                {
                  v78 = 0;
                }

                v79 = v78 | *(v67 + 200);
                if ((v76 & 0xFFFFFF) != 0)
                {
                  if ((v76 & 0xFFFFFFuLL) >= (v78 & 0xFFFFFF00) && ((v77 & 0x44000000) != 0 || (*(v66 + 8) & 0x10000000) != 0))
                  {
                    v79 = v76 & 0xFFFFFF;
                  }
                }

                else if (v77 >> 12)
                {
                  v79 = (256 << ((v77 >> 12) - 1)) | 0xFF;
                }
              }

              v81 = v79 & 0x7FFFFFFF02FFFFFFLL;
              v82 = *(v67 + 32);
              if ((v82 & 0x1000000) != 0)
              {
                if (!v81)
                {
                  v81 = v82 & 0xFFFFFFFFFEFFFFFFLL;
                  goto LABEL_228;
                }

LABEL_239:
                _dispatch_set_priority_and_voucher_slow(v81, v74, v71 & 4 | 2);
                if ((v71 & 0x200) == 0)
                {
LABEL_194:
                  if (MEMORY[0xFFFFFC100])
                  {
                    _dispatch_trace_item_pop_internal(a1, v66, v58);
                  }

                  _dispatch_introspection_queue_item_dequeue(a1, v66);
                }
              }

              else
              {
                if (v81 == (v82 & 0xFFFFFFFF76FFFFFFLL))
                {
                  goto LABEL_188;
                }

LABEL_228:
                if (v81)
                {
                  goto LABEL_239;
                }

LABEL_188:
                if (v74 != -1)
                {
                  if (*(v67 + 224) != v74)
                  {
                    v81 = 0;
                    goto LABEL_239;
                  }

                  if ((v71 & 4) != 0 && v74)
                  {
                    os_release(v74);
                  }
                }

                if ((v71 & 0x200) == 0)
                {
                  goto LABEL_194;
                }
              }

              if ((v71 & 4) != 0)
              {
                v84 = *(v67 + 176);
                if (v84)
                {
                  v85 = *(v84 + 8) + 1;
                }

                else
                {
                  v85 = 1;
                }

                v83 = v66;
                if (v85 <= _dispatch_continuation_cache_limit)
                {
                  v83 = 0;
                  *(v66 + 16) = v84;
                  *(v66 + 8) = v85;
                  *(v67 + 176) = v66;
                }
              }

              else
              {
                v83 = 0;
              }

              if ((v71 & 8) != 0)
              {
                v91 = *(**(v66 + 48) + 40);
                if (v91 != 514)
                {
                  _dispatch_workloop_invoke_cold_3(v91);
                }

                v92 = *(v66 + 32);
                v93 = *(v66 + 40);
                v94 = v92;
                if (v93)
                {
                  v94 = *(v66 + 32);
                  if (v92 == _dispatch_call_block_and_release)
                  {
                    if (v93[2])
                    {
                      v94 = v93[2];
                    }

                    else
                    {
                      v94 = 0;
                    }
                  }
                }

                group = *(v66 + 48);
                _dispatch_introspection_callout_entry(v93, v94);
                _dispatch_client_callout(v93, v92);
                _dispatch_introspection_callout_return(v93, v94);
                if (MEMORY[0xFFFFFC100])
                {
                  _dispatch_workloop_invoke_cold_4();
                }

                _dispatch_introspection_queue_item_complete(v66);
                dispatch_group_leave(group);
              }

              else
              {
                v86 = *(v66 + 32);
                v87 = *(v66 + 40);
                v88 = v86;
                if (v87)
                {
                  v88 = *(v66 + 32);
                  if (v86 == _dispatch_call_block_and_release)
                  {
                    if (v87[2])
                    {
                      v88 = v87[2];
                    }

                    else
                    {
                      v88 = 0;
                    }
                  }
                }

                _dispatch_introspection_callout_entry(v87, v88);
                _dispatch_client_callout(v87, v86);
                _dispatch_introspection_callout_return(v87, v88);
                if (MEMORY[0xFFFFFC100])
                {
                  _dispatch_workloop_invoke_cold_4();
                }

                _dispatch_introspection_queue_item_complete(v66);
              }

              v67 = v133;
              if (v83)
              {
                _dispatch_continuation_free_to_cache_limit(v83);
              }

              a2 = v132;
              if (v73)
              {
                objc_autoreleasePoolPop(v73);
              }

LABEL_217:
              if (v70)
              {
                v70[1](a1);
              }

              if (!v68)
              {
                goto LABEL_141;
              }

              v61 = *(a1 + 100);
              v66 = v68;
              if ((*(a1 + 15) & 7u) > v61)
              {
                goto LABEL_141;
              }

              continue;
            }
          }
        }

        atomic_fetch_xor_explicit(a1 + 7, 0x8000000000uLL, memory_order_acquire);
        goto LABEL_141;
      }
    }

    v95 = 0;
    v129 = v129 & 1 | 0x40020000000000;
    *(v133 + 160) = v137;
    *(v133 + 192) = 0;
LABEL_252:
    v18 = v127;
    LOBYTE(v4) = v128;
  }

  if (v95 + 1 <= 1)
  {
    v96 = a1[7];
    while (1)
    {
      v97 = v96;
      v98 = v96 - v129;
      v99 = v98 & 0xFFFFFFF700000001;
      if (!(v97 >> 55))
      {
        if ((v97 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit(a1 + 7, 0x8000000000uLL, memory_order_acquire);
          v95 = *(v133 + 160);
          if ((v4 & 1) != 0 || ((*v95)[1].isa & 0x10000) != 0)
          {
            goto LABEL_28;
          }

          break;
        }

        if (v95)
        {
          v99 = v98 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v99 = v98 & 0xFFFFFFF000000001;
        }
      }

      v96 = v97;
      atomic_compare_exchange_strong_explicit(a1 + 7, &v96, v99, memory_order_release, memory_order_relaxed);
      if (v96 == v97)
      {
        if ((~v97 & 0x1800000000) != 0 || (v101 = HIDWORD(v97) & 7, v102 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)), v103 = *(v102 + 200), (HIWORD(v103) & 0xF) >= v101))
        {
          v100 = 0;
          v95 = 0;
        }

        else
        {
          v100 = 0;
          v95 = 0;
          *(v102 + 200) = v103 & 0xFFF0FFFF | (v101 << 16);
        }

        goto LABEL_271;
      }
    }
  }

  v100 = v129;
LABEL_271:
  if ((v134 & 0x40000) == 0)
  {
    v104 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v104 + 200) = *(v104 + 200) & 0xF0000 | v126;
  }

LABEL_273:
  if ((v4 & 1) == 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_workloop_invoke_cold_4();
    }

    _dispatch_introspection_queue_item_complete(a1);
  }

  if (v95)
  {
    return _dispatch_queue_invoke_finish(a1, a2, v95, v100);
  }

  else
  {
    return _os_object_release_internal_n(a1, &dword_0 + 2);
  }
}

uint64_t _dispatch_workloop_barrier_complete(uint64_t result, uint64_t a2, char a3)
{
  v4 = result;
  v5 = 0;
  v6 = a2 << 32;
  v7 = (result + 192);
LABEL_2:
  v8 = v7;
  v9 = 6;
  do
  {
    if (*v8)
    {
      v10 = *(v8 - 6);
      if (!v10)
      {
        result = _dispatch_wait_for_enqueuer(v8 - 6);
        v10 = result;
      }

      if (*v10 <= 0xFFFuLL && (*v10 & 0x81) != 0)
      {

        return _dispatch_workloop_drain_barrier_waiter(v4, v10, v9, a3, 0);
      }

      v5 = 1;
    }

    --v8;
    --v9;
  }

  while (v9);
  if (v5 && (a3 & 1) == 0)
  {
    if (*(v4 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v4 + 8), 2u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    a3 |= 1u;
  }

LABEL_15:
  v12 = *(v4 + 56);
  do
  {
    v13 = v12;
    if ((~v12 & 0x2000000002) == 0 && (v12 & 0x800000001) != 0)
    {
      result = _dispatch_event_loop_ensure_ownership(v4);
      atomic_fetch_and_explicit((v4 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_15;
    }

    if ((v12 & 0x700000000) < v6)
    {
      v12 = v12 & 0xFFFFFFF000000001 | v6;
    }

    v14 = (v12 & 0xFFFFFFF700000001) - 0x40020000000000;
    if (v5)
    {
      v15 = v14 | 1;
    }

    else
    {
      if ((v13 & 0x8000000000) != 0)
      {
        atomic_fetch_xor_explicit((v4 + 56), 0x8000000000uLL, memory_order_acquire);
        goto LABEL_2;
      }

      v16 = v14 & 0xFFFFFFF000000001;
      v17 = v14 & 0xFFFFFFF000000000;
      if ((v13 & 0x2000000000) != 0)
      {
        v15 = v17;
      }

      else
      {
        v15 = v16;
      }
    }

    v12 = v13;
    atomic_compare_exchange_strong_explicit((v4 + 56), &v12, v15, memory_order_release, memory_order_relaxed);
  }

  while (v12 != v13);
  if ((v15 & 0x4000000001) != 0)
  {
    result = _dispatch_introspection_runtime_event();
  }

  if ((v13 & 0x2000000000) == 0)
  {
    if ((~v13 & 0x1800000000) == 0)
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = HIDWORD(v13) & 7;
      v20 = *(StatusReg + 200);
      if ((HIWORD(v20) & 0xF) < v19)
      {
        *(StatusReg + 200) = v20 & 0xFFF0FFFF | (v19 << 16);
      }
    }

    if (v5)
    {
      if ((v15 ^ v13))
      {
        if ((v15 & 0x2000000000) == 0)
        {
          return _dispatch_workloop_wakeup_cold_1(*(v4 + 24));
        }

        _dispatch_introspection_runtime_event();

        return _dispatch_event_loop_poke(v4, v15, (&dword_0 + 1), v21);
      }

      result = _dispatch_workloop_barrier_complete_cold_3(v15, v4, a3);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    goto LABEL_50;
  }

  if ((v13 & 3) == 2 && (v15 & 1) == 0)
  {
LABEL_50:
    if (a3)
    {

      return _os_object_release_internal_n(v4, &dword_0 + 2);
    }

    return result;
  }

  return _dispatch_event_loop_end_ownership(v4, v13, v15, a3);
}

uint64_t _dispatch_workloop_push(uint64_t result, void *a2, unsigned int a3)
{
  if (*a2 <= 0xFFFuLL)
  {
    v3 = (*a2 & 0x81) == 0;
    *a2;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    return _dispatch_workloop_push_waiter(result, a2, a3);
  }

  v4 = *(result + 84);
  v5 = (v4 >> 8) & 0xF;
  v6 = v4 >> 12;
  if (a3)
  {
    v6 = a3;
  }

  if (v5 > a3)
  {
    v6 = v5;
  }

  a2[2] = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = result + 8 * (v6 - 1) + 152;
  v8 = atomic_exchange_explicit((result + 8 * (v6 - 1) + 152), a2, memory_order_release);
  if (v8)
  {
    *(v8 + 16) = a2;
    *(StatusReg + 976) = 0;
  }

  else
  {
    atomic_fetch_add_explicit((result + 8), 2u, memory_order_relaxed);
    *(result + 8 * (v6 - 1) + 104) = a2;
    *(StatusReg + 976) = 0;
    return _dispatch_workloop_wakeup();
  }

  return result;
}

uint64_t _dispatch_workloop_push_waiter(uint64_t result, unint64_t a2, unsigned int a3)
{
  v3 = __clz(__rbit32((*(a2 + 8) >> 8) & 0x3FFF));
  if (((*(a2 + 8) >> 8) & 0x3FFF) != 0)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= a3)
  {
    v4 = a3;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  *(a2 + 16) = 0;
  v6 = (result + 8 * (v5 - 1) + 152);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = v6;
  v8 = atomic_exchange_explicit(v6, a2, memory_order_release);
  if (v8)
  {
    *(v8 + 16) = a2;
    *(StatusReg + 976) = 0;
    return result;
  }

  v9 = result;
  v10 = result + 8 * (v5 - 1);
  *(v10 + 104) = a2;
  *(StatusReg + 976) = 0;
  v11 = *a2;
  if ((*a2 & 0x80) != 0 && ((v12 = *(result + 24), v12 < &_dispatch_root_queues) || v12 >= &_dispatch_queue_serial_numbers))
  {
    *(a2 + 56) = result;
    *a2 = v11 & 0xFFFFFFFFFFFFFF7FLL;
    atomic_fetch_add_explicit((result + 8), 2u, memory_order_relaxed);

    return _dispatch_workloop_wakeup();
  }

  else
  {
    v13 = *(result + 56);
    v14 = v5 << 32;
    v15 = *(StatusReg + 24) & 0xFFFFFFFCLL | 0x60000000000002;
    result = 0x40FFFFFFFDLL;
    do
    {
      v16 = v13;
      v17 = v13 & 0xFFFFFFF8FFFFFFFFLL | v14;
      if (v13 & 0x1000000000 | v14 & 0x1000000000)
      {
        v17 |= 0x800000000uLL;
      }

      if ((v13 & 0x700000000) < v14)
      {
        v18 = v17;
      }

      else
      {
        v18 = v13;
      }

      v19 = v18 | 0x8000000000;
      v20 = v15 | v18 & 0x7700000001;
      if ((v13 & 0x40FFFFFFFDLL) != 0)
      {
        v20 = v19;
      }

      atomic_compare_exchange_strong_explicit((v9 + 56), &v13, v20, memory_order_release, memory_order_relaxed);
    }

    while (v13 != v16);
    if ((v20 & 0x2000000000) != 0 && *(a2 + 48) != -4)
    {
      *(a2 + 106) = *(a2 + 106) & 0xFB | (4 * (*(a2 + 100) == *(StatusReg + 24)));
    }

    if (((v20 ^ v16) & 0x40000000000000) != 0)
    {
      if ((*(a2 + 106) & 4) == 0)
      {
        goto LABEL_40;
      }

      result = *(v10 + 104);
      if (!result)
      {
        v29 = v9;
        v30 = a2;
        v31 = v6;
        result = _dispatch_wait_for_enqueuer((v10 + 104));
        a2 = v30;
        v6 = v31;
        v9 = v29;
      }

      if (result == a2)
      {
        v21 = v6;
        *(a2 + 106) |= 8u;
        if ((*a2 & 0x80) != 0)
        {
          *(a2 + 56) = v9;
        }

        v22 = *(a2 + 16);
        *(v10 + 104) = v22;
        if (!v22)
        {
          v23 = *v21;
          while ((v23 & 0xFFFFFFFFFFFFFFF8) == a2)
          {
            v24 = v23;
            atomic_compare_exchange_strong_explicit(v21, &v24, 0, memory_order_release, memory_order_relaxed);
            v25 = v24 == v23;
            v23 = v24;
            if (v25)
            {
              return result;
            }
          }

          result = *(a2 + 16);
          if (!result)
          {
            result = _dispatch_wait_for_enqueuer((a2 + 16));
          }

          *(v10 + 104) = result;
        }
      }

      else
      {
LABEL_40:

        return _dispatch_workloop_barrier_complete(v9, v5, 0);
      }
    }

    else
    {
      if (((v20 ^ v16) & 0x700000000) == 0 || (v20 & 0xFF80004000000000) != 0)
      {
        return result;
      }

      if ((v20 & 1) == 0)
      {
        if ((v20 & 0x2000000000) != 0 || (v20 & 0xFFFFFFFC) == 0)
        {
          return result;
        }

        goto LABEL_33;
      }

      if ((v20 & 0x2000000000) == 0)
      {
LABEL_33:

        return _dispatch_queue_wakeup_with_override_slow(v9, v20, 0);
      }

      v26 = v9;
      v27 = v20;
      _dispatch_introspection_runtime_event();

      return _dispatch_event_loop_poke(v26, v27, 0x80000000, v28);
    }
  }

  return result;
}

uint64_t dispatch_thread_get_current_override_qos_floor()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 200);
  v1 = (v0 >> 8) & 0xF;
  v2 = v0 >> 12;
  v3 = HIWORD(v0) & 0xF;
  if (v1 <= v2)
  {
    v1 = v2;
  }

  if (v1 > v3)
  {
    v3 = v1;
  }

  if (v3 <= 3)
  {
    switch(v3)
    {
      case 1:
        return 0x500000001;
      case 2:
        return 0x900000001;
      case 3:
        return 0x1100000001;
    }

    return 1;
  }

  if (v3 > 5)
  {
    if (v3 == 6)
    {
      return 0x2100000001;
    }

    return v3 != 15;
  }

  if (v3 == 4)
  {
    return 0x1500000001;
  }

  else
  {
    return 0x1900000001;
  }
}

uint64_t dispatch_thread_override_self(int a1)
{
  HIDWORD(v2) = a1 - 5;
  LODWORD(v2) = a1 - 5;
  v1 = v2 >> 2;
  if (v1 > 3)
  {
    if (v1 != 4)
    {
      if (v1 == 7)
      {
        v1 = 6;
      }

      else if (v1 != 5)
      {
LABEL_11:
        v1 = 0;
      }
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v1 = 1;
        break;
      case 1:
        v1 = 2;
        break;
      case 3:
        break;
      default:
        goto LABEL_11;
    }
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 24);
  _pthread_workqueue_override_start_direct();
  v5 = *(StatusReg + 200);
  if ((HIWORD(v5) & 0xF) < v1)
  {
    *(StatusReg + 200) = v5 & 0xFFF0FFFF | (v1 << 16);
  }

  return 0;
}

uint64_t dispatch_lock_override_start_with_debounce(uint64_t a1, uint64_t a2, int a3)
{
  HIDWORD(v4) = a3 - 5;
  LODWORD(v4) = a3 - 5;
  v3 = v4 >> 2;
  if (v3 <= 7 && ((0xBBu >> v3) & 1) != 0)
  {
    v5 = (256 << qword_451E0[v3]) | 0xFF;
  }

  return _pthread_workqueue_override_start_direct_check_owner();
}

uint64_t dispatch_lock_override_end(int a1)
{
  HIDWORD(v2) = a1 - 5;
  LODWORD(v2) = a1 - 5;
  v1 = v2 >> 2;
  if (v1 > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_45220[v1];
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 200);
  if ((HIWORD(v5) & 0xF) < v3)
  {
    *(StatusReg + 200) = v5 & 0xFFF0FFFF | (v3 << 16);
  }

  return 0;
}

void _dispatch_queue_wakeup(uint64_t a1, uint64_t a2, uint64_t a3, __objc2_class **a4, int8x16_t a5)
{
  v6 = a4;
  if (a4 && (a3 & 1) == 0)
  {
    if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) <= 0)
    {
      qword_6D1C0 = "API MISUSE: Resurrection of an object";
      __break(1u);
      goto LABEL_86;
    }

    a3 = a3 | 1;
  }

  if ((a3 & 4) != 0)
  {
    v34 = *(a1 + 84);
    v35 = v34 >> 12;
    if (a2)
    {
      v35 = a2;
    }

    v36 = (v34 >> 8) & 0xF;
    if (v35 <= v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = v35;
    }

    _dispatch_lane_class_barrier_complete(a1, v37, a3, a4, 0x40020000000000, a5);
    return;
  }

  if (!a4)
  {
    if (!a2)
    {
LABEL_76:
      if ((a3 & 1) == 0)
      {
        return;
      }

LABEL_77:

      _os_object_release_internal_n(a1, &dword_0 + 2);
      return;
    }

    v23 = *(a1 + 56);
    v24 = a2 << 32;
    do
    {
      if ((v23 & 0x40FFFFFFFDLL) == 0)
      {
        goto LABEL_76;
      }

      v25 = v23;
      v26 = v23 & 0x700000000;
      v27 = v25 & 0xFFFFFFF8FFFFFFFFLL | v24;
      if (v25 & 0x1000000000 | v24 & 0x1000000000)
      {
        v27 |= 0x800000000uLL;
      }

      v28 = v26 < v24 ? v27 : v25;
      v29 = (v25 & 0xFF80002000000000) == 0x2000000000 && ((v25 & 0x4000000000) == 0);
      v5 = v28 | v29;
      if ((v28 | v29) == v25)
      {
        goto LABEL_76;
      }

      v23 = v25;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v23, v5, memory_order_relaxed, memory_order_relaxed);
    }

    while (v23 != v25);
    v22 = v5 ^ v25;
    v8 = 1;
    if ((a3 & 1) != 0 || (v22 & 1) == 0)
    {
LABEL_58:
      v6 = (&dword_0 + 1);
      goto LABEL_59;
    }

    if (*(a1 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) > 0)
    {
      LODWORD(a3) = a3 | 1;
      v8 = 1;
      goto LABEL_58;
    }

LABEL_86:
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
    goto LABEL_87;
  }

  v8 = 0x4000000000;
  if (a4 != &_dispatch_mgr_q)
  {
    v8 = 1;
  }

  v9 = *(a1 + 84);
  v10 = v9 >> 12;
  if (a2)
  {
    v10 = a2;
  }

  LODWORD(v11) = (v9 >> 8) & 0xF;
  if (v10 <= v11)
  {
    v11 = v11;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(a1 + 56);
  v13 = v11 << 32;
  do
  {
    v14 = v12;
    v15 = v12 & 0x700000000;
    v16 = v14 & 0xFFFFFFF8FFFFFFFFLL | v13;
    if (v14 & 0x1000000000 | v13 & 0x1000000000)
    {
      v16 |= 0x800000000uLL;
    }

    if (v15 < v13)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    if ((v14 & 0x180000000000000) == 0x80000000000000)
    {
      v18 = v17 & 0xFF7FFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    if ((a3 & 0x20) != 0)
    {
      v17 = v18;
    }

    v19 = ((v14 & 0xFFFFFFFC) == 0) << 38;
    if (a4 != &_dispatch_mgr_q)
    {
      v19 = 1;
    }

    v20 = v17 | v19;
    if (v17 >> 55)
    {
      v21 = v17;
    }

    else
    {
      v21 = v20;
    }

    if ((v14 & 0x4000000001) != 0)
    {
      v5 = v17;
    }

    else
    {
      v5 = v21;
    }

    if ((a3 & 2) != 0)
    {
      v5 |= 0x8000000000uLL;
    }

    else if (v5 == v14)
    {
      goto LABEL_76;
    }

    v12 = v14;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v12, v5, memory_order_release, memory_order_relaxed);
  }

  while (v12 != v14);
  v22 = v14 ^ v5;
LABEL_59:
  if ((v22 & v8) != 0)
  {
    if (v6 == (&dword_0 + 1))
    {
      v6 = *(a1 + 24);
    }

    if ((v5 & 0x2000000000) != 0)
    {
      _dispatch_introspection_runtime_event();
      v31 = a1;
      v32 = v5;
      v33 = (&dword_0 + 1);
LABEL_64:

      _dispatch_event_loop_poke(v31, v32, v33, v30);
      return;
    }

    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(v6, a1, a5);
    }

    _dispatch_introspection_queue_item_enqueue(v6, a1);
    v38 = *(v6->isa + 11);

    v38(v6, a1, HIDWORD(v5) & 7);
    return;
  }

  if ((v22 & 0x700000000) == 0)
  {
    goto LABEL_76;
  }

LABEL_87:
  v39 = a3;
  if ((v5 & 0xFF80004000000000) != 0 || (v5 & 0xFFFFFFFD) == 0)
  {
    if ((a3 & 1) == 0)
    {
      return;
    }

    goto LABEL_77;
  }

  if ((v5 & 0x2000000000) != 0)
  {
    _dispatch_introspection_runtime_event();
    v33 = (v39 | 0x80000000);
    v31 = a1;
    v32 = v5;
    goto LABEL_64;
  }

  _dispatch_queue_wakeup_with_override_slow(a1, v5, a3);
}

void _dispatch_lane_class_barrier_complete(uint64_t a1, uint64_t a2, uint64_t a3, __objc2_class **a4, uint64_t a5, int8x16_t a6)
{
  if (a4 == &_dispatch_mgr_q)
  {
    v11 = 0;
    v12 = 0x4000000000;
    v10 = &_dispatch_mgr_q;
  }

  else
  {
    v10 = a4;
    if (a4)
    {
      v11 = 0;
      if (a4 == (&dword_0 + 1))
      {
        v10 = *(a1 + 24);
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
      v11 = 1;
    }
  }

  v13 = a2 << 32;
LABEL_9:
  v14 = *(a1 + 56);
  do
  {
    if ((~v14 & 0x2000000002) == 0 && (v14 & 0x800000001) != 0)
    {
      v23 = a3;
      _dispatch_event_loop_ensure_ownership(a1);
      a3 = v23;
      atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_9;
    }

    v15 = v14 - a5;
    if (((v14 - a5) & 0x700000000) >= v13)
    {
      v16 = v14 - a5;
    }

    else
    {
      v16 = (v14 - a5) & 0xFFFFFFF8FFFFFFFFLL | v13;
    }

    v17 = v16 & 0xFFFFFFF700000001;
    if (v14 >> 55)
    {
      v22 = v16 & 0xFFFFFFF700000000;
      if ((v14 & 0x2000000000) != 0)
      {
        v18 = v22;
      }

      else
      {
        v18 = v17;
      }
    }

    else if (v11)
    {
      if ((v14 & 0x8000000000) != 0)
      {
        atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
        v32 = *(*a1 + 80);
        v33 = a3 | 4;
        v34 = a1;
        v35 = a2;

        goto LABEL_54;
      }

      v18 = v16 & 0xFFFFFFF000000001;
    }

    else
    {
      if ((v14 & 0x4000000001) != 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = v12;
      }

      v18 = v17 | v19;
    }

    v20 = v14;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v20, v18, memory_order_release, memory_order_relaxed);
    v21 = v20 == v14;
    v14 = v20;
  }

  while (!v21);
  if ((v18 & 0x4000000001) != 0)
  {
    v24 = a3;
    _dispatch_introspection_runtime_event();
    LODWORD(a3) = v24;
  }

  if ((v15 & 0x2000000000) != 0)
  {
    if (v15 & 2) == 0 || ((v18 | v15))
    {

      _dispatch_event_loop_end_ownership(a1, v15, v18, a3);
      return;
    }

LABEL_44:
    if (a3)
    {

      _os_object_release_internal_n(a1, &dword_0 + 2);
    }

    return;
  }

  if ((~v15 & 0x1800000000) == 0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v26 = HIDWORD(v15) & 7;
    v27 = *(StatusReg + 200);
    if ((HIWORD(v27) & 0xF) < v26)
    {
      *(StatusReg + 200) = v27 & 0xFFF0FFFF | (v26 << 16);
    }
  }

  if (!v10)
  {
    goto LABEL_44;
  }

  if (((v18 ^ v15) & v12) != 0)
  {
    if ((v18 & 0x2000000000) != 0)
    {
      _dispatch_introspection_runtime_event();
      v29 = a1;
      v30 = v18;
      v31 = (&dword_0 + 1);
      goto LABEL_39;
    }

    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(v10, a1, a6);
    }

    _dispatch_introspection_queue_item_enqueue(v10, a1);
    v32 = *(v10->isa + 11);
    v33 = HIDWORD(v18) & 7;
    v34 = v10;
    v35 = a1;

LABEL_54:
    v32(v34, v35, v33);
    return;
  }

  if ((v18 & 0xFF80004000000000) != 0 || (v18 & 0xFFFFFFFD) == 0)
  {
    goto LABEL_44;
  }

  v36 = a3;
  if ((v18 & 0x2000000000) != 0)
  {
    _dispatch_introspection_runtime_event();
    v31 = (v36 | 0x80000000);
    v29 = a1;
    v30 = v18;
LABEL_39:

    _dispatch_event_loop_poke(v29, v30, v31, v28);
  }

  else
  {

    _dispatch_queue_wakeup_with_override_slow(a1, v18, a3);
  }
}

void _dispatch_lane_wakeup(uint64_t a1, uint64_t a2, uint64_t a3, int8x16_t a4)
{
  if ((a3 & 4) != 0)
  {
    _dispatch_lane_barrier_complete(a1, a2, a3, a4);
  }

  else
  {
    _dispatch_queue_wakeup(a1, a2, a3, (*(a1 + 48) != 0), a4);
  }
}

void _dispatch_lane_barrier_complete(unsigned __int16 *a1, uint64_t a2, uint64_t a3, int8x16_t a4)
{
  if (!*(a1 + 6) || *(a1 + 7) >> 55)
  {
    v7 = 0;
LABEL_33:
    v11 = (a1[40] << 41) + 0x40000000000000;

    _dispatch_lane_class_barrier_complete(a1, a2, a3, v7, v11, a4);
    return;
  }

  v8 = *(a1 + 13);
  if (!v8)
  {
    v8 = _dispatch_wait_for_enqueuer(a1 + 13);
  }

  v9 = *v8;
  if (a1[40] == 1)
  {
    if (v9 <= 0xFFF && (*v8 & 0x81) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  if (v9 < 0x1000)
  {
    if ((v9 & 2) != 0)
    {
      if ((v9 & 0x81) != 0)
      {
LABEL_21:

        _dispatch_lane_drain_barrier_waiter(a1, v8, a3, 0);
        return;
      }

LABEL_28:
      if ((a3 & 1) == 0)
      {
        if (*(a1 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit(a1 + 2, 2u, memory_order_relaxed) <= 0)
        {
          qword_6D1C0 = "API MISUSE: Resurrection of an object";
          __break(1u);
          return;
        }

        a3 = a3 | 1;
      }

      v7 = (&dword_0 + 1);
      goto LABEL_33;
    }
  }

  else if ((*(v9 + 40) & 0xF0) == 0x10)
  {
    if ((*(v8 + 80) & 0x80000) != 0 || !a1[40] || (*(v8 + 80) & 0x80000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (!a1[40])
  {
    goto LABEL_28;
  }

LABEL_25:

  _dispatch_lane_drain_non_barriers(a1, v8, a3, a4);
}

void _dispatch_lane_push(uint64_t a1, void *a2, unsigned int a3, int8x16_t a4)
{
  if (*a2 <= 0xFFFuLL)
  {
    v4 = (*a2 & 0x81) == 0;
    *a2;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    _dispatch_lane_push_waiter(a1, a2, a3, a4);
    return;
  }

  v5 = *(a1 + 8);
  if (((*(a1 + 84) >> 8) & 0xFu) >= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  a2[2] = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = a1 + 48;
  v8 = atomic_exchange_explicit((a1 + 48), a2, memory_order_release);
  if (v8)
  {
    if ((*(a1 + 60) & 7) != 0 && (*(a1 + 60) & 7u) >= v6)
    {
      *(v8 + 16) = a2;
      *(StatusReg + 976) = 0;
      return;
    }

    atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed);
    v10 = (v8 + 16);
    v11 = 1;
  }

  else
  {
    atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed);
    v10 = (a1 + 104);
    v11 = 3;
  }

  *v10 = a2;
  *(StatusReg + 976) = 0;
  (*(*a1 + 80))(a1, v6, v11);
}

void _dispatch_lane_push_waiter(atomic_ullong *a1, unint64_t a2, unsigned int a3, int8x16_t a4)
{
  if (*(a2 + 48) == -4)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 16) = 0;
  v6 = a1 + 6;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = a1 + 6;
  v8 = atomic_exchange_explicit(a1 + 6, a2, memory_order_release);
  if (!v8)
  {
    a1[13] = a2;
    *(StatusReg + 976) = 0;
    v9 = *(a1 + 20);
    if ((v9 & 0x40000) != 0 && (v9 = *(a1 + 20), (v9 & 0x1000000) == 0))
    {
      v10 = *a2;
    }

    else
    {
      v10 = *a2;
      if ((*a2 & 0x80) == 0)
      {
        v11 = a1[7];
LABEL_32:
        v20 = (v9 << 41) - 0x20000000000;
        v21 = v5 << 32;
        v22 = *(StatusReg + 24) & 0xFFFFFFFCLL | 0x60000000000002;
        do
        {
          v23 = v11;
          v24 = v11 & 0x700000000;
          v25 = v11 & 0xFFFFFFF8FFFFFFFFLL | v21;
          if ((v25 & 0x1000000000) != 0)
          {
            v25 |= 0x800000000uLL;
          }

          if (v24 >= v21)
          {
            v25 = v23;
          }

          v26 = v25 | 0x8000000000;
          if ((v23 & 0xFFE00000FFFFFFFCLL) == 0 && ((v23 & 0x2000000000) == 0 || (v23 & 0x4000000001) == 0) && ((v23 & 0x10000000000) != 0 || !((v20 + v25) >> 53)))
          {
            v26 = v22 | v25 & 0x7700000001;
          }

          v11 = v23;
          atomic_compare_exchange_strong_explicit(a1 + 7, &v11, v26, memory_order_release, memory_order_relaxed);
        }

        while (v11 != v23);
        if ((v23 & 0x2000000000) != 0 && *(a2 + 48) != -4)
        {
          *(a2 + 106) = *(a2 + 106) & 0xFB | (4 * (*(a2 + 100) == *(StatusReg + 24)));
        }

        if (((v26 ^ v23) & 0x40000000000000) != 0)
        {
          if ((*(a2 + 106) & 4) != 0 && a1[13] == a2)
          {
            *(a2 + 106) |= 8u;
            if ((*a2 & 0x80) != 0)
            {
              *(a2 + 56) = a1;
            }

            v28 = *(a2 + 16);
            a1[13] = v28;
            if (!v28)
            {
              v29 = *v6;
              while ((v29 & 0xFFFFFFFFFFFFFFF8) == a2)
              {
                v30 = v29;
                atomic_compare_exchange_strong_explicit(v6, &v30, 0, memory_order_release, memory_order_relaxed);
                v17 = v30 == v29;
                v29 = v30;
                if (v17)
                {
                  return;
                }
              }

              v32 = *(a2 + 16);
              if (!v32)
              {
                v32 = _dispatch_wait_for_enqueuer((a2 + 16));
              }

              a1[13] = v32;
            }
          }

          else
          {

            _dispatch_lane_barrier_complete(a1, v5, 0, a4);
          }

          return;
        }

        if (((v26 ^ v23) & 0x700000000) == 0 || (v26 & 0xFF80004000000000) != 0)
        {
          return;
        }

        if (v26)
        {
          if ((v26 & 0x2000000000) != 0)
          {
            v15 = v26;
LABEL_60:
            _dispatch_introspection_runtime_event();

            _dispatch_event_loop_poke(a1, v15, 0x80000000, v27);
            return;
          }
        }

        else if ((v26 & 0x2000000000) != 0 || (v26 & 0xFFFFFFFC) == 0)
        {
          return;
        }

        v18 = v26;
LABEL_25:

        _dispatch_queue_wakeup_with_override_slow(a1, v18, 0);
        return;
      }

      v11 = a1[7];
      v9 = *(a1 + 20);
      if ((v9 & 0x1000000) == 0)
      {
        if ((v11 & 0x3000000000) == 0)
        {
          goto LABEL_32;
        }

        v19 = a1[3];
        if (v19 >= &_dispatch_root_queues && v19 < &_dispatch_queue_serial_numbers)
        {
          goto LABEL_32;
        }
      }
    }

    *a2 = v10 & 0xFFFFFFFFFFFFFF7FLL;
    *(a2 + 56) = a1;
    v31 = *(*a1 + 80);

    v31();
    return;
  }

  *(v8 + 16) = a2;
  *(StatusReg + 976) = 0;
  if (!v5)
  {
    return;
  }

  v12 = a1[7];
  v13 = v5 << 32;
  do
  {
    v14 = v12 & 0xFFFFFFF8FFFFFFFFLL | v13;
    if (v12 & 0x1000000000 | v13 & 0x1000000000)
    {
      v14 |= 0x800000000uLL;
    }

    if ((v12 & 0x700000000) < v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    if (v12 == v15)
    {
      return;
    }

    v16 = v12;
    atomic_compare_exchange_strong_explicit(a1 + 7, &v16, v15, memory_order_relaxed, memory_order_relaxed);
    v17 = v16 == v12;
    v12 = v16;
  }

  while (!v17);
  if ((v15 & 0xFF80004000000000) != 0)
  {
    return;
  }

  if (v15)
  {
    if ((v15 & 0x2000000000) == 0)
    {
LABEL_24:
      v18 = v15;
      goto LABEL_25;
    }

    goto LABEL_60;
  }

  if ((v15 & 0x2000000000) == 0 && (v15 & 0xFFFFFFFC) != 0)
  {
    goto LABEL_24;
  }
}

void _dispatch_lane_concurrent_push(uint64_t a1, _DWORD *a2, unsigned int a3, int8x16_t a4)
{
  if ((*(a1 + 87) & 8) != 0 && *a2 >= 0x1000uLL && *(*a2 + 40) != 1 && (*(*a2 + 40) != 19 || (_dispatch_source_is_timer(a2) & 1) == 0))
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
    qword_6D1F0 = a2;
    __break(1u);
    return;
  }

  if (!*(a1 + 48))
  {
    v7 = *a2;
    if (*a2 <= 0xFFFuLL)
    {
      if ((v7 & 0x83) != 0)
      {
        goto LABEL_7;
      }
    }

    else if ((*(v7 + 40) & 0xF0) == 0x10 && (a2[20] & 0x80000) != 0)
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 56);
    while ((v8 & 0xFFE0018000000000) == 0)
    {
      v9 = v8;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v9, v8 + 0x20000000000, memory_order_acquire, memory_order_acquire);
      v10 = v9 == v8;
      v8 = v9;
      if (v10)
      {

        _dispatch_continuation_redirect_push(a1, a2, a3);
        return;
      }
    }
  }

LABEL_7:

  _dispatch_lane_push(a1, a2, a3, a4);
}

_DWORD *_dispatch_continuation_redirect_push(_DWORD *result, void *a2, int a3)
{
  v5 = result;
  if (*a2 >= 0x1000uLL && *(*a2 + 40) == 256)
  {
    if (!a2[5])
    {
      a2[5] = (result[20] << 8) & 0x3000000;
    }
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = *(StatusReg + 176);
    if (v7)
    {
      *(StatusReg + 176) = v7[2];
    }

    else
    {
      result = _dispatch_continuation_alloc_from_heap();
      v7 = result;
    }

    a2[2] = 0;
    *v7 = &unk_645E8;
    v7[4] = 0;
    v7[5] = (v5[20] << 8) & 0x3000000;
    v7[6] = v5;
    v7[7] = a2;
    v7[3] = -1;
    v7[1] = -1;
    if (v5[2] != 0x7FFFFFFF && atomic_fetch_add_explicit(v5 + 2, 2u, memory_order_relaxed) <= 0)
    {
      qword_6D1C0 = "API MISUSE: Resurrection of an object";
      __break(1u);
      return result;
    }
  }

  v8 = *(v5 + 3);
  if (!a3)
  {
    v9 = (v8[21] >> 8) & 0xF;
  }

  v10 = *(*v8 + 88);

  return v10();
}

uint64_t dispatch_async_swift_job(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*a2 + 40);
  if (v4 != 1)
  {
    dispatch_async_swift_job_cold_1(v4);
  }

  v5 = *(*a1 + 88);
  HIDWORD(v7) = a3 - 5;
  LODWORD(v7) = a3 - 5;
  v6 = v7 >> 2;
  if (v6 > 7)
  {
  }

  else
  {
    v8 = dword_45220[v6];
  }

  return v5();
}

uint64_t _dispatch_channel_xref_dispose(uint64_t a1)
{
  if (*(*(a1 + 88) + 24))
  {
    v2 = (*(a1 + 80) & 0x10000000) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    _dispatch_channel_xref_dispose_cold_1(a1);
  }

  v3 = *(*a1 + 80);

  return v3();
}

NSObject *_dispatch_channel_invoke(atomic_ullong *a1, void *a2, int a3, int8x16_t a4)
{
  v5 = a1;
  if ((a3 & 3) == 0)
  {
    a1[2] = -1985229329;
    v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_pop_internal(v6, a1, a4);
    }

    _dispatch_introspection_queue_item_dequeue(v6, v5);
  }

  v126 = v5;
  v125 = a3;
  if ((a3 & 2) != 0)
  {
    v7 = 0x40020000000001;
    if ((a3 & 0x40000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_7;
  }

  v8 = *(v5 + 40);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = *(StatusReg + 24);
  v10 = StatusReg + 24;
  v12 = (v8 << 41) - 0x20000000000;
  v13 = v11 & 0xFFFFFFFC;
  if ((a3 & 0x40000) != 0)
  {
    v14 = 0x4000000000;
  }

  else
  {
    v14 = 1;
  }

  v15 = 0xFFE00000FFFFFFFCLL;
  if ((a3 & 0x40000) == 0)
  {
    v15 = 0xFFE00040FFFFFFFCLL;
  }

  if (a3)
  {
    v16 = 0xFFE00040FFFFFFFCLL;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v10 + 176);
  v18 = (v17 >> 8) & 0xF;
  v19 = v17 >> 12;
  v20 = HIWORD(v17) & 0xF;
  if (v18 <= v19)
  {
    v18 = v19;
  }

  if (v18 > v20)
  {
    v20 = v18;
  }

  while (1)
  {
    v21 = v5[7];
    while ((v21 & v16) != 0)
    {
      if ((a3 & 1) != 0 || (v27 = v21, atomic_compare_exchange_strong_explicit(v126 + 7, &v27, v21 ^ v14, memory_order_acquire, memory_order_acquire), v27 == v21))
      {
        v7 = 0;
        v31 = 0;
        v5 = v126;
        goto LABEL_299;
      }

      v21 = v27;
LABEL_31:
      v5 = v126;
    }

    if ((v21 & 0x1000000000) == 0)
    {
      break;
    }

    v22 = HIDWORD(v21) & 7;
    if (v22 <= v20)
    {
      break;
    }

    _dispatch_workloop_invoke_cold_1();
    v20 = v22;
  }

  v23 = (v21 >> 40) & 1;
  if (!((v12 + v21) >> 53))
  {
    LODWORD(v23) = 1;
  }

  if (v23)
  {
    v24 = 0x60000000000000;
  }

  else
  {
    v24 = 0x20000000000000;
  }

  v25 = v21 & 0x7700000001 | v13 | v24;
  v26 = v21;
  atomic_compare_exchange_strong_explicit(v5 + 7, &v26, v25, memory_order_acquire, memory_order_acquire);
  if (v26 != v21)
  {
    v21 = v26;
    goto LABEL_31;
  }

  v28 = 0x60000000000000;
  if ((a3 & 1) == 0)
  {
    v28 = v14 | 0x60000000000000;
  }

  v29 = v25 & v28;
  v30 = v21 & 0x3FFE0000000000;
  v7 = v29 - v30;
  if (v29 == v30)
  {
    v31 = 0;
    goto LABEL_299;
  }

  if ((a3 & 0x40000) != 0)
  {
LABEL_7:
    v123 = 0;
    goto LABEL_56;
  }

LABEL_42:
  v32 = *(v5 + 21);
  v33 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v34 = *(v33 + 200);
  if (v34)
  {
    v35 = v32 & 0xFFF;
    if ((v32 & 0xFFF) != 0)
    {
      if ((v34 & 0xFFFu) > v35)
      {
        v35 = v34 & 0xFFF;
      }

      if (v32 >> 12 <= v35 >> 8)
      {
        v36 = 0x40000000;
      }

      else
      {
        v36 = 1140912128;
      }

      v37 = v36 & v32;
      v38 = v34 & 0x880F0000 | v35;
LABEL_54:
      v39 = v38 | v37;
    }

    else
    {
      v39 = v34 | 0x40000000;
      if ((v34 & 0xFFF) == 0)
      {
        v39 = *(v33 + 200);
      }

      if (v32 >> 12 > ((v39 >> 8) & 0xF))
      {
        v38 = v39 & 0xFFFF0FFF;
        v37 = v32 & 0x400F000;
        goto LABEL_54;
      }
    }
  }

  else
  {
    v39 = v32 & 0xFFF0FFFF;
  }

  *(v33 + 200) = v39;
  v123 = v34 & 0xFFF0FFFF;
LABEL_56:
  v124 = v7;
  v40 = a3 | 8;
  if ((a3 & 0x100000) != 0 && (v5[10] & 0x400000) != 0)
  {
    atomic_fetch_and_explicit(v5 + 20, 0xFFBFFFFF, memory_order_relaxed);
  }

  v41 = *(v5 + 20);
  if (((v41 << 8) & 0x3000000) != 0)
  {
    v40 = (v41 << 8) & 0x3000000 | a3 & 0xFCFFFFF7 | 8;
  }

  v121 = v40 | 0x10;
  v122 = v5 + 6;
  v42 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v43 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_62:
  v44 = v40;
  v128 = v40;
  if ((v40 & 0x1000002) != 2)
  {
    v75 = v5[11];
    v133 = 0u;
    *v129 = v5;
    v130 = a2;
    v131 = v40 & 0xFFFDFFFF;
    v132 = 0;
    *&v133 = 0;
    BYTE8(v133) = 0;
    *&v129[8] = *(v43 + 160);
    *(v43 + 160) = v5;
    *(v43 + 168) = &v129[8];
    if (!_dispatch_channel_invoke_cancel_check(v5, v129, v75))
    {
LABEL_279:
      *(v43 + 160) = *&v129[8];
      v31 = v132;
      goto LABEL_280;
    }

    while (1)
    {
      v77 = v133;
      if (!v133)
      {
        if (!*v122)
        {
          goto LABEL_279;
        }

        v77 = v5[13];
        if (!v77)
        {
          v77 = _dispatch_wait_for_enqueuer(v5 + 13);
        }
      }

      v78 = *v77;
      if (*v77 > 0xFFFuLL)
      {
        break;
      }

      if (v78)
      {
        _dispatch_channel_invoke_cold_2();
      }

      if ((v78 & 0x400) == 0)
      {
        break;
      }

      *&v133 = v77;
      BYTE8(v133) = 0;
      if ((v131 & 0x1000000) != 0)
      {
        v84 = objc_autoreleasePoolPush();
      }

      else
      {
        v84 = 0;
      }

      if ((*(v75 + 16))(v5, v129, v5[4]))
      {
        if ((BYTE8(v133) & 1) == 0)
        {
          _dispatch_channel_invoke_cold_3();
        }

        if (!v84)
        {
          goto LABEL_245;
        }

LABEL_227:
        objc_autoreleasePoolPop(v84);
        goto LABEL_245;
      }

      v132 = -1;
      if (v84)
      {
        goto LABEL_227;
      }

LABEL_245:
      if (v132)
      {
        goto LABEL_279;
      }
    }

    v79 = *(v77 + 16);
    v5[13] = v79;
    if (!v79)
    {
      v104 = *v122;
      while (v77 == (v104 & 0xFFFFFFFFFFFFFFF8))
      {
        v105 = v104;
        atomic_compare_exchange_strong_explicit(v122, &v105, 0, memory_order_release, memory_order_relaxed);
        v59 = v105 == v104;
        v104 = v105;
        if (v59)
        {
          goto LABEL_175;
        }
      }

      v79 = *(v77 + 16);
      if (!v79)
      {
        v79 = _dispatch_wait_for_enqueuer((v77 + 16));
      }

      v5[13] = v79;
    }

LABEL_175:
    *&v133 = v79;
    v80 = *(v43 + 192);
    if (v80)
    {
      (*v80)(v5);
    }

    v81 = *v77;
    if (*v77 >= 0x1000uLL)
    {
      v82 = *v77;
      if (*(v81 + 40) == 1)
      {
        (*(v81 + 48))(v77, 0, (v128 >> 21) & 1);
      }

      else
      {
        (*(v81 + 64))(v77, a2, v128 & 0xFFFF0000);
      }

LABEL_242:
      if (v80)
      {
        v80[1](v5);
      }

      if (!_dispatch_channel_invoke_checks(v5, v129, v75))
      {
        goto LABEL_279;
      }

      goto LABEL_245;
    }

    if ((v128 & 0x1000000) != 0)
    {
      v83 = objc_autoreleasePoolPush();
      v81 = *v77;
    }

    else
    {
      v83 = 0;
    }

    v85 = *(v77 + 24);
    if ((v81 & 4) != 0)
    {
      *(v77 + 24) = -1;
    }

    if (v85 != -1)
    {
      if (v85)
      {
        v86 = v85[8];
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v87 = *(v77 + 8);
    if (v87 == -1)
    {
      v90 = 0;
    }

    else
    {
      v88 = *(v43 + 200);
      if (((v88 >> 8) & 0xF) != 0)
      {
        v89 = 1 << ((BYTE1(v88) & 0xFu) + 7);
      }

      else
      {
        v89 = 0;
      }

      v90 = v89 | *(v43 + 200);
      if ((v87 & 0xFFFFFF) != 0)
      {
        if ((v87 & 0xFFFFFFuLL) >= (v89 & 0xFFFFFF00) && ((v88 & 0x44000000) != 0 || (*(v77 + 8) & 0x10000000) != 0))
        {
          v90 = v87 & 0xFFFFFF;
        }
      }

      else if (v88 >> 12)
      {
        v90 = (256 << ((v88 >> 12) - 1)) | 0xFF;
      }
    }

    v92 = v90 & 0x7FFFFFFF02FFFFFFLL;
    v93 = *(v43 + 32);
    if ((v93 & 0x1000000) != 0)
    {
      if (v92)
      {
        goto LABEL_267;
      }

      v92 = v93 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v92 == (v93 & 0xFFFFFFFF76FFFFFFLL))
    {
LABEL_208:
      if (v85 == -1)
      {
        goto LABEL_213;
      }

      if (*(v43 + 224) == v85)
      {
        if ((v81 & 4) != 0 && v85)
        {
          os_release(v85);
        }

LABEL_213:
        if ((v81 & 0x200) != 0)
        {
          goto LABEL_217;
        }

LABEL_214:
        if (MEMORY[0xFFFFFC100])
        {
          _dispatch_trace_item_pop_internal(v5, v77, v76);
        }

        _dispatch_introspection_queue_item_dequeue(v5, v77);
LABEL_217:
        if ((v81 & 4) != 0)
        {
          v95 = *(v43 + 176);
          if (v95)
          {
            v96 = *(v95 + 8) + 1;
          }

          else
          {
            v96 = 1;
          }

          v94 = v77;
          if (v96 <= _dispatch_continuation_cache_limit)
          {
            v94 = 0;
            *(v77 + 16) = v95;
            *(v77 + 8) = v96;
            *(v43 + 176) = v77;
          }
        }

        else
        {
          v94 = 0;
        }

        if ((v81 & 8) != 0)
        {
          v106 = *(**(v77 + 48) + 40);
          if (v106 != 514)
          {
            _dispatch_workloop_invoke_cold_3(v106);
          }

          v107 = *(v77 + 40);
          v108 = *(v77 + 32);
          if (v107)
          {
            v108 = *(v77 + 32);
            if (v108 == _dispatch_call_block_and_release)
            {
              if (v107[2])
              {
                v108 = v107[2];
              }

              else
              {
                v108 = 0;
              }
            }
          }

          v118 = *(v77 + 32);
          groupa = *(v77 + 48);
          _dispatch_introspection_callout_entry(v107, v108);
          _dispatch_client_callout(v107, v118);
          _dispatch_introspection_callout_return(v107, v108);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_4();
          }

          _dispatch_introspection_queue_item_complete(v77);
          dispatch_group_leave(groupa);
          if (!v94)
          {
LABEL_240:
            if (!v83)
            {
              goto LABEL_242;
            }

            goto LABEL_241;
          }
        }

        else
        {
          v97 = v83;
          v98 = v42;
          v99 = v43;
          v100 = v75;
          v101 = *(v77 + 32);
          v102 = *(v77 + 40);
          v103 = v101;
          if (v102)
          {
            v103 = *(v77 + 32);
            if (v101 == _dispatch_call_block_and_release)
            {
              if (v102[2])
              {
                v103 = v102[2];
              }

              else
              {
                v103 = 0;
              }
            }
          }

          _dispatch_introspection_callout_entry(v102, v103);
          _dispatch_client_callout(v102, v101);
          _dispatch_introspection_callout_return(v102, v103);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_4();
          }

          _dispatch_introspection_queue_item_complete(v77);
          v75 = v100;
          v43 = v99;
          v42 = v98;
          v83 = v97;
          v5 = v126;
          if (!v94)
          {
            goto LABEL_240;
          }
        }

        _dispatch_continuation_free_to_cache_limit(v94);
        if (!v83)
        {
          goto LABEL_242;
        }

LABEL_241:
        objc_autoreleasePoolPop(v83);
        goto LABEL_242;
      }

      v92 = 0;
LABEL_267:
      _dispatch_set_priority_and_voucher_slow(v92, v85, v81 & 4 | 2);
      if ((v81 & 0x200) != 0)
      {
        goto LABEL_217;
      }

      goto LABEL_214;
    }

    if (v92)
    {
      goto LABEL_267;
    }

    goto LABEL_208;
  }

  _dispatch_last_resort_autorelease_pool_push(a2);
  v45 = v5[11];
  v133 = 0u;
  *v129 = v5;
  v130 = a2;
  v131 = v44 & 0xFEFDFFFF;
  v132 = 0;
  *&v133 = 0;
  BYTE8(v133) = 0;
  *&v129[8] = *(v42 + 160);
  *(v42 + 160) = v5;
  *(v42 + 168) = &v129[8];
  if (_dispatch_channel_invoke_cancel_check(v5, v129, v45))
  {
    while (1)
    {
      v47 = v133;
      if (!v133)
      {
        if (!*v122)
        {
          goto LABEL_278;
        }

        v47 = v5[13];
        if (!v47)
        {
          v47 = _dispatch_wait_for_enqueuer(v5 + 13);
        }
      }

      v48 = *v47;
      if (*v47 > 0xFFFuLL)
      {
        goto LABEL_68;
      }

      if (v48)
      {
        _dispatch_channel_invoke_cold_2();
      }

      if ((v48 & 0x400) == 0)
      {
LABEL_68:
        v49 = *(v47 + 16);
        v5[13] = v49;
        if (!v49)
        {
          v69 = *v122;
          while (v47 == (v69 & 0xFFFFFFFFFFFFFFF8))
          {
            v70 = v69;
            atomic_compare_exchange_strong_explicit(v122, &v70, 0, memory_order_release, memory_order_relaxed);
            v59 = v70 == v69;
            v69 = v70;
            if (v59)
            {
              goto LABEL_69;
            }
          }

          v49 = *(v47 + 16);
          if (!v49)
          {
            v49 = _dispatch_wait_for_enqueuer((v47 + 16));
          }

          v5[13] = v49;
        }

LABEL_69:
        *&v133 = v49;
        v50 = *(v42 + 192);
        if (v50)
        {
          (*v50)(v5);
        }

        v51 = *v47;
        if (*v47 >= 0x1000uLL)
        {
          v52 = *v47;
          if (*(v51 + 40) == 1)
          {
            (*(v51 + 48))(v47, 0, (v128 >> 21) & 1);
          }

          else
          {
            (*(v51 + 64))(v47, a2, v128 & 0xFEFF0000);
          }

          if (!v50)
          {
LABEL_135:
            if (!_dispatch_channel_invoke_checks(v5, v129, v45))
            {
              goto LABEL_278;
            }

            goto LABEL_136;
          }

LABEL_134:
          v50[1](v5);
          goto LABEL_135;
        }

        v53 = *(v47 + 24);
        if ((v51 & 4) != 0)
        {
          *(v47 + 24) = -1;
        }

        if (v53 != -1)
        {
          if (v53)
          {
            v54 = *(v53 + 32);
          }

          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }
        }

        v55 = *(v47 + 8);
        if (v55 == -1)
        {
          v58 = 0;
        }

        else
        {
          v56 = *(v42 + 200);
          if (((v56 >> 8) & 0xF) != 0)
          {
            v57 = 1 << ((BYTE1(v56) & 0xFu) + 7);
          }

          else
          {
            v57 = 0;
          }

          v58 = v57 | *(v42 + 200);
          if ((v55 & 0xFFFFFF) != 0)
          {
            if ((v55 & 0xFFFFFFuLL) >= (v57 & 0xFFFFFF00))
            {
              v59 = (v56 & 0x44000000) == 0 && (*(v47 + 8) & 0x10000000) == 0;
              if (!v59)
              {
                v58 = v55 & 0xFFFFFF;
              }
            }
          }

          else if (v56 >> 12)
          {
            v58 = (256 << ((v56 >> 12) - 1)) | 0xFF;
          }
        }

        v61 = v58 & 0x7FFFFFFF02FFFFFFLL;
        v62 = *(v42 + 32);
        if ((v62 & 0x1000000) != 0)
        {
          if (!v61)
          {
            v61 = v62 & 0xFFFFFFFFFEFFFFFFLL;
            goto LABEL_147;
          }

LABEL_158:
          _dispatch_set_priority_and_voucher_slow(v61, v53, v51 & 4 | 2);
          if ((v51 & 0x200) == 0)
          {
LABEL_107:
            if (MEMORY[0xFFFFFC100])
            {
              _dispatch_trace_item_pop_internal(v5, v47, v46);
            }

            _dispatch_introspection_queue_item_dequeue(v5, v47);
          }
        }

        else
        {
          if (v61 == (v62 & 0xFFFFFFFF76FFFFFFLL))
          {
            goto LABEL_101;
          }

LABEL_147:
          if (v61)
          {
            goto LABEL_158;
          }

LABEL_101:
          if (v53 != -1)
          {
            if (*(v42 + 224) != v53)
            {
              v61 = 0;
              goto LABEL_158;
            }

            if ((v51 & 4) != 0 && v53)
            {
              os_release(v53);
            }
          }

          if ((v51 & 0x200) == 0)
          {
            goto LABEL_107;
          }
        }

        if ((v51 & 4) != 0)
        {
          v64 = *(v42 + 176);
          if (v64)
          {
            v65 = *(v64 + 8) + 1;
          }

          else
          {
            v65 = 1;
          }

          v63 = v47;
          if (v65 <= _dispatch_continuation_cache_limit)
          {
            v63 = 0;
            *(v47 + 16) = v64;
            *(v47 + 8) = v65;
            *(v42 + 176) = v47;
          }
        }

        else
        {
          v63 = 0;
        }

        if ((v51 & 8) != 0)
        {
          v71 = *(**(v47 + 48) + 40);
          if (v71 != 514)
          {
            _dispatch_workloop_invoke_cold_3(v71);
          }

          v72 = *(v47 + 32);
          v73 = *(v47 + 40);
          v74 = v72;
          if (v73)
          {
            v74 = *(v47 + 32);
            if (v72 == _dispatch_call_block_and_release)
            {
              if (v73[2])
              {
                v74 = v73[2];
              }

              else
              {
                v74 = 0;
              }
            }
          }

          group = *(v47 + 48);
          _dispatch_introspection_callout_entry(v73, v74);
          _dispatch_client_callout(v73, v72);
          _dispatch_introspection_callout_return(v73, v74);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_4();
          }

          _dispatch_introspection_queue_item_complete(v47);
          dispatch_group_leave(group);
          if (!v63)
          {
LABEL_133:
            if (!v50)
            {
              goto LABEL_135;
            }

            goto LABEL_134;
          }
        }

        else
        {
          v66 = *(v47 + 32);
          v67 = *(v47 + 40);
          v68 = v66;
          if (v67)
          {
            v68 = *(v47 + 32);
            if (v66 == _dispatch_call_block_and_release)
            {
              if (v67[2])
              {
                v68 = v67[2];
              }

              else
              {
                v68 = 0;
              }
            }
          }

          _dispatch_introspection_callout_entry(v67, v68);
          _dispatch_client_callout(v67, v66);
          _dispatch_introspection_callout_return(v67, v68);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_4();
          }

          _dispatch_introspection_queue_item_complete(v47);
          if (!v63)
          {
            goto LABEL_133;
          }
        }

        _dispatch_continuation_free_to_cache_limit(v63);
        if (!v50)
        {
          goto LABEL_135;
        }

        goto LABEL_134;
      }

      *&v133 = v47;
      BYTE8(v133) = 0;
      v60 = (v131 & 0x1000000) != 0 ? objc_autoreleasePoolPush() : 0;
      if ((*(v45 + 16))(v5, v129, v5[4]))
      {
        break;
      }

      v132 = -1;
      if (v60)
      {
        goto LABEL_120;
      }

LABEL_136:
      if (v132)
      {
        goto LABEL_278;
      }
    }

    if ((BYTE8(v133) & 1) == 0)
    {
      _dispatch_channel_invoke_cold_3();
    }

    if (!v60)
    {
      goto LABEL_136;
    }

LABEL_120:
    objc_autoreleasePoolPop(v60);
    goto LABEL_136;
  }

LABEL_278:
  *(v42 + 160) = *&v129[8];
  v31 = v132;
  *v129 = *(v42 + 160);
  *(v42 + 160) = v5;
  *(v42 + 168) = v129;
  _dispatch_last_resort_autorelease_pool_pop(a2);
  *(v42 + 160) = *v129;
LABEL_280:
  if (v31 + 1 <= 1)
  {
    v109 = v5[7];
    do
    {
      v110 = v109;
      v111 = v109 - v124;
      v112 = v111 & 0xFFFFFFF700000001;
      if (!(v110 >> 55))
      {
        if ((v110 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit(v5 + 7, 0x8000000000uLL, memory_order_acquire);
          v31 = *(v43 + 160);
          v40 = v121;
          if (v125)
          {
            goto LABEL_62;
          }

          v40 = v121;
          if (((*v31)[1].isa & 0x10000) != 0)
          {
            goto LABEL_62;
          }

          goto LABEL_291;
        }

        if (v31)
        {
          v112 = v111 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v112 = v111 & 0xFFFFFFF000000001;
        }
      }

      v109 = v110;
      atomic_compare_exchange_strong_explicit(v5 + 7, &v109, v112, memory_order_release, memory_order_relaxed);
    }

    while (v109 != v110);
    if ((~v110 & 0x1800000000) == 0)
    {
      v113 = HIDWORD(v110) & 7;
      v114 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v115 = *(v114 + 200);
      if ((HIWORD(v115) & 0xF) < v113)
      {
        v7 = 0;
        v31 = 0;
        *(v114 + 200) = v115 & 0xFFF0FFFF | (v113 << 16);
        if ((v128 & 0x40000) == 0)
        {
          goto LABEL_298;
        }

        goto LABEL_299;
      }
    }

    v7 = 0;
    v31 = 0;
    if ((v128 & 0x40000) != 0)
    {
      goto LABEL_299;
    }

    goto LABEL_298;
  }

LABEL_291:
  v7 = v124;
  if ((v128 & 0x40000) == 0)
  {
LABEL_298:
    v116 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v116 + 200) = *(v116 + 200) & 0xF0000 | v123;
  }

LABEL_299:
  if ((v125 & 1) == 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_workloop_invoke_cold_4();
    }

    _dispatch_introspection_queue_item_complete(v5);
  }

  if (v31)
  {
    return _dispatch_queue_invoke_finish(v5, a2, v31, v7);
  }

  else
  {
    return _os_object_release_internal_n(v5, &dword_0 + 2);
  }
}

uint64_t dispatch_channel_foreach_work_item_peek_f(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  if (*(result + 56) == 1)
  {
    dispatch_channel_foreach_work_item_peek_f_cold_1();
  }

  v3 = *(result + 48);
  if ((*v3 & 0xFFFFFFFFFFFFF400) == 0x400)
  {
    v6 = *result;
    do
    {
      result = a3(a2, v3[5]);
      if (!result || v3 == *(v6 + 48))
      {
        break;
      }

      result = v3[2];
      if (!result)
      {
        result = _dispatch_wait_for_enqueuer(v3 + 2);
      }

      v3 = result;
    }

    while ((*result & 0xFFFFFFFFFFFFF400) == 0x400);
  }

  return result;
}

void dispatch_channel_drain_f(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, uint64_t *), int8x16_t a4)
{
  v41 = 0;
  v4 = *a1;
  v5 = *(*a1 + 88);
  if (*(a1 + 56) == 1)
  {
    dispatch_channel_drain_f_cold_1();
  }

  *(a1 + 56) = 1;
  v39 = (v4 + 48);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  do
  {
    v9 = *(a1 + 48);
    if (!v9)
    {
      if (!*v39)
      {
        break;
      }

      v9 = *(v4 + 104);
      if (!v9)
      {
        v9 = _dispatch_wait_for_enqueuer((v4 + 104));
      }
    }

    if ((*v9 & 0xFFFFFFFFFFFFF400) != 0x400)
    {
      break;
    }

    v10 = v9[2];
    *(v4 + 104) = v10;
    if (!v10)
    {
      v26 = *v39;
      while (v9 == (v26 & 0xFFFFFFFFFFFFFFF8))
      {
        v27 = v26;
        atomic_compare_exchange_strong_explicit(v39, &v27, 0, memory_order_release, memory_order_relaxed);
        v12 = v27 == v26;
        v26 = v27;
        if (v12)
        {
          goto LABEL_6;
        }
      }

      v10 = v9[2];
      if (!v10)
      {
        v10 = _dispatch_wait_for_enqueuer(v9 + 2);
      }

      *(v4 + 104) = v10;
    }

LABEL_6:
    *(a1 + 48) = v10;
    v11 = v9[3];
    v9[3] = -1;
    v12 = v11 == -1 || v11 == -1;
    if (!v12)
    {
      if (v11)
      {
        v13 = *(v11 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v14 = v9[1];
    if (v14 == -1)
    {
      v17 = 0;
    }

    else
    {
      v15 = StatusReg[25];
      v16 = ((v15 >> 8) & 0xF) != 0 ? 1 << ((BYTE1(v15) & 0xFu) + 7) : 0;
      v17 = v16 | StatusReg[25];
      if ((v14 & 0xFFFFFF) != 0)
      {
        if ((v14 & 0xFFFFFFuLL) >= (v16 & 0xFFFFFF00) && ((v15 & 0x44000000) != 0 || (v9[1] & 0x10000000) != 0))
        {
          v17 = v14 & 0xFFFFFF;
        }
      }

      else if (v15 >> 12)
      {
        v17 = (256 << ((v15 >> 12) - 1)) | 0xFF;
      }
    }

    v19 = v17 & 0x7FFFFFFF02FFFFFFLL;
    v20 = StatusReg[4];
    if ((v20 & 0x1000000) != 0)
    {
      if (v19)
      {
        goto LABEL_65;
      }

      v19 = v20 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v19 == (v20 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_29;
    }

    if (v19)
    {
      goto LABEL_65;
    }

LABEL_29:
    if (v11 == -1)
    {
      goto LABEL_33;
    }

    if (StatusReg[28] != v11)
    {
      v19 = 0;
LABEL_65:
      _dispatch_set_priority_and_voucher_slow(v19, v11, 6);
      goto LABEL_33;
    }

    if (v11)
    {
      os_release(v11);
    }

LABEL_33:
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_pop_internal(v4, v9, a4);
    }

    _dispatch_introspection_queue_item_dequeue(v4, v9);
    v21 = StatusReg[22];
    if (v21)
    {
      v22 = *(v21 + 8) + 1;
    }

    else
    {
      v22 = 1;
    }

    v23 = v9;
    if (v22 <= _dispatch_continuation_cache_limit)
    {
      v23 = 0;
      v9[2] = v21;
      *(v9 + 2) = v22;
      StatusReg[22] = v9;
    }

    if (*(a1 + 35))
    {
      v25 = objc_autoreleasePoolPush();
      v24 = a3(a2, v9[5], &v41);
      objc_autoreleasePoolPop(v25);
    }

    else
    {
      v24 = a3(a2, v9[5], &v41);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_introspection_queue_item_complete(v9);
    if (!v23)
    {
      if (!v24)
      {
        break;
      }

      continue;
    }

    _dispatch_continuation_free_to_cache_limit(v23);
    if (!v24)
    {
      break;
    }
  }

  while ((_dispatch_channel_invoke_checks(v4, a1, v5) & 1) != 0);
  v28 = v41;
  if (v41)
  {
    v29 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v30 = v29[22];
    if (v30)
    {
      v29[22] = v30[2];
    }

    else
    {
      v30 = _dispatch_continuation_alloc_from_heap();
      v28 = v41;
    }

    *v30 = 1284;
    v30[4] = 0;
    v30[5] = v28;
    v31 = v29[4] & 0xFFFFFFLL;
    if (v31 >= 0x10FF)
    {
      v32 = 4351;
    }

    else
    {
      v32 = v29[4] & 0xFFFFFFLL;
    }

    v33 = v29[28];
    if (v33)
    {
      os_retain(v33);
    }

    v30[3] = v33;
    if (v33 == -1)
    {
      goto LABEL_81;
    }

    if (v33)
    {
      v34 = v33[8];
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (!v31)
      {
        goto LABEL_93;
      }

LABEL_82:
      v35 = (*(v4 + 84) >> 30) & 1;
      if ((*(v4 + 84) & 0xFFF) == 0)
      {
        v35 = 1;
      }

      if (v35)
      {
        v36 = v32;
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
LABEL_81:
      if (v31)
      {
        goto LABEL_82;
      }

LABEL_93:
      v36 = 0;
    }

    v30[1] = v36;
    v37 = *(a1 + 48);
    v30[2] = v37;
    if (!v37)
    {
      atomic_compare_exchange_strong_explicit(v39, &v37, v30, memory_order_release, memory_order_relaxed);
      if (v37)
      {
        v38 = *(v4 + 104);
        if (!v38)
        {
          v38 = _dispatch_wait_for_enqueuer((v4 + 104));
        }

        v30[2] = v38;
      }
    }

    *(v4 + 104) = v30;
    *(a1 + 48) = v30;
  }
}

uint64_t _dispatch_channel_invoke_checks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _dispatch_channel_invoke_cancel_check(a1, a2, a3);
  if (result)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    if (*(StatusReg + 40))
    {
      _dispatch_return_to_kernel();
    }

    if ((*(a2 + 34) & 0x10) != 0 && (*(*(StatusReg + 216) + 60) & 7u) > *(*(StatusReg + 216) + 100) || (*(StatusReg + 960) & 1) != 0 || *(a1 + 56) >> 55)
    {
      result = 0;
      *(a2 + 40) = *(a1 + 24);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void _dispatch_channel_wakeup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a1 + 88) + 8))(a1, *(a1 + 32)))
  {
    if (*(a1 + 48))
    {
      v7 = 1;
    }

    else
    {
      v7 = (*(a1 + 80) & 0x10000000) != 0 && (*(a1 + 116) & 8) == 0;
    }
  }

  else
  {
    v7 = -1;
  }

  _dispatch_queue_wakeup(a1, a2, a3, v7, v6);
}

uint64_t dispatch_channel_create(const char *a1, __objc2_class **a2, uint64_t a3, void *a4)
{
  if (!*a4)
  {
    dispatch_channel_create_cold_2();
  }

  v6 = a2;
  v8 = 67108865;
  if (!a1)
  {
    v9 = 0;
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_15:
    v6 = &off_713C0;
    goto LABEL_9;
  }

  v9 = _dispatch_strdup_if_mutable(a1);
  if (v9 == a1)
  {
    v8 = 67108865;
  }

  else
  {
    v8 = 69206017;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (*(v6 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit(v6 + 2, 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

LABEL_9:
  result = _dispatch_object_alloc(OS_dispatch_channel, 120);
  *(result + 8) += 2;
  if (*(*result + 40) == 19)
  {
    ++*(result + 8);
  }

  *(result + 16) = -1985229329;
  *(result + 80) = v8;
  *(result + 56) = 0x19FFE0000000000;
  *(result + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(result + 72) = v9;
  *(result + 88) = a4;
  *(result + 24) = v6;
  *(result + 32) = a3;
  if (!a4[3])
  {
    *(result + 116) |= 8u;
    --*(result + 8);
  }

  return result;
}

uint64_t dispatch_channel_enqueue(uint64_t a1, objc_class *a2, int8x16_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 176);
  if (v5)
  {
    *(StatusReg + 176) = *(v5 + 16);
    *v5 = 1284;
    *(v5 + 32) = 0;
    *(v5 + 40) = a2;
    v6 = *(StatusReg + 32) & 0xFFFFFFLL;
    if (v6 >= 0x10FF)
    {
      v7 = 4351;
    }

    else
    {
      v7 = *(StatusReg + 32) & 0xFFFFFFLL;
    }

    v8 = *(StatusReg + 224);
    if (v8)
    {
      os_retain(*(StatusReg + 224));
    }

    *(v5 + 24) = v8;
    if (v8 == -1)
    {
      goto LABEL_11;
    }

    if (v8)
    {
      v9 = *(v8 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_11:
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    v10 = *(a1 + 84);
    if ((v10 & 0x40000000) != 0 || (v10 & 0xFFF) == 0)
    {
      v11 = __clz(__rbit32(v7 >> 8)) + 1;
      goto LABEL_16;
    }

LABEL_14:
    v11 = 0;
    v7 = 0;
LABEL_16:
    *(v5 + 8) = v7;
    if ((*(v5 + 1) & 2) == 0)
    {
      if (MEMORY[0xFFFFFC100])
      {
        _dispatch_trace_item_push_internal(a1, v5, a3);
      }

      _dispatch_introspection_queue_item_enqueue(a1, v5);
    }

    v12 = *(*a1 + 88);

    return v12(a1, v5, v11);
  }

  return _dispatch_channel_enqueue_slow(a1, a2);
}

uint64_t _dispatch_channel_enqueue_slow(uint64_t a1, objc_class *a2)
{
  v4 = _dispatch_continuation_alloc_from_heap();
  v4->isa = (&stru_4C0 + 68);
  v4[4].isa = 0;
  v4[5].isa = a2;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 32) & 0xFFFFFFLL;
  if (v7 >= 0x10FF)
  {
    v8 = 4351;
  }

  else
  {
    v8 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  v9 = *(StatusReg + 224);
  if (v9)
  {
    os_retain(*(StatusReg + 224));
  }

  v4[3].isa = v9;
  if (v9 != -1)
  {
    if (v9)
    {
      v10 = v9[8];
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (v7)
      {
        goto LABEL_11;
      }

LABEL_13:
      v12 = 0;
      v8 = 0;
      goto LABEL_15;
    }
  }

  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_11:
  v11 = *(a1 + 84);
  if ((v11 & 0x40000000) == 0 && (v11 & 0xFFF) != 0)
  {
    goto LABEL_13;
  }

  v12 = __clz(__rbit32(v8 >> 8)) + 1;
LABEL_15:
  v4[1].isa = v8;
  if ((BYTE1(v4->isa) & 2) == 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(a1, v4, v5);
    }

    _dispatch_introspection_queue_item_enqueue(a1, v4);
  }

  v13 = *(*a1 + 88);

  return v13(a1, v4, v12);
}

uint64_t dispatch_channel_wakeup(uint64_t a1, int a2)
{
  HIDWORD(v3) = a2 - 5;
  LODWORD(v3) = a2 - 5;
  v2 = v3 >> 2;
  if (v2 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_45220[v2];
  }

  return (*(*a1 + 80))(a1, v4, 2);
}

NSObject *_dispatch_mgr_queue_push(NSObject *result, objc_class *a2)
{
  if (*a2 <= 0xFFFuLL)
  {
    v2 = (*a2 & 0x81) == 0;
    *a2;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    _dispatch_mgr_queue_push_cold_2();
  }

  *(a2 + 2) = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = (StatusReg + 976);
  *(StatusReg + 976) = result + 6;
  v5 = atomic_exchange_explicit(&result[6], a2, memory_order_release);
  if (!v5)
  {
    return _dispatch_mgr_queue_push_cold_1(result, a2, v4, StatusReg);
  }

  *(v5 + 16) = a2;
  *v4 = 0;
  return result;
}

void _dispatch_kevent_workqueue_init()
{
  if (_dispatch_root_queues_pred != -1)
  {
    _dispatch_kevent_workqueue_init_cold_1();
  }

  if (_dispatch_mgr_sched_pred != -1)
  {
    _dispatch_kevent_workqueue_init_cold_2();
  }

  v0 = _dispatch_mgr_sched;
  if (dword_71B6C)
  {
    v1 = _pthread_qos_class_encode();
  }

  else
  {
    v1 = 0;
  }

  if (v0 > dword_71B70)
  {
    v1 = v0 | 0x20000000;
  }

  if (v1)
  {
    v2 = _pthread_workqueue_set_event_manager_priority();
    if (v2)
    {

      _dispatch_bug(6573, v2);
    }
  }
}

uint64_t _dispatch_mgr_sched_init()
{
  v5 = 0;
  memset(&v6, 0, sizeof(v6));
  v0 = pthread_attr_init(&v6);
  if (v0)
  {
    _dispatch_bug(6222, v0);
  }

  v1 = pthread_attr_getschedpolicy(&v6, dword_71B74);
  if (v1)
  {
    _dispatch_bug(6224, v1);
  }

  v2 = pthread_attr_getschedparam(&v6, &v5);
  if (v2)
  {
    _dispatch_bug(6225, v2);
  }

  v3 = qos_class_main();
  if (v3 == QOS_CLASS_DEFAULT)
  {
    v3 = QOS_CLASS_USER_INITIATED;
  }

  if (v3)
  {
    dword_71B6C = v3;
    result = _dispatch_mgr_sched_qos2prio(v3);
  }

  else
  {
    result = v5.sched_priority;
  }

  dword_71B70 = result;
  _dispatch_mgr_sched = result;
  return result;
}

void _dispatch_root_queue_poke(unsigned int *a1, signed int a2, int a3)
{
  if (*(a1 + 6))
  {
    v3 = *(*a1 + 40);
    v4 = v3 == 330001 || v3 == 328465;
    if (!v4 || (v5 = 0, atomic_compare_exchange_strong_explicit(a1 + 28, &v5, a2, memory_order_release, memory_order_relaxed), !v5))
    {
      _dispatch_root_queue_poke_slow(a1, a2, a3);
    }
  }
}

void _dispatch_root_queue_poke_slow(unsigned int *a1, signed int a2, int a3)
{
  if (_dispatch_root_queues_pred != -1)
  {
LABEL_36:
    dispatch_once_f(&_dispatch_root_queues_pred, 0, _dispatch_root_queues_init_once);
  }

  _dispatch_introspection_runtime_event();
  v6 = *(*a1 + 40);
  if (v6 == 330001)
  {
    v8 = a1[21];
    v14 = _pthread_workqueue_add_cooperativethreads();
    if (!v14)
    {
      return;
    }

    v12 = v14;
    v13 = 6920;
    goto LABEL_38;
  }

  if (v6 == 328465)
  {
    v7 = a1[21];
    v11 = _pthread_workqueue_addthreads();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    v13 = 6912;
LABEL_38:

    _dispatch_bug(v13, v12);
    return;
  }

  v9 = *(a1 + 4);
  if (*(v9 + 72))
  {
    while (dispatch_semaphore_signal((v9 + 72)))
    {
      if (!--a2)
      {
        return;
      }
    }
  }

  if ((a1[21] & 0x80000000) != 0)
  {
    atomic_fetch_add_explicit(a1 + 28, a2, memory_order_relaxed);
  }

  else
  {
    v10 = 0;
    atomic_compare_exchange_strong_explicit(a1 + 28, &v10, a2, memory_order_relaxed, memory_order_relaxed);
    if (v10)
    {
      return;
    }
  }

  v15 = a1[25];
  while (1)
  {
    v16 = v15 - a3;
    if (v15 < a3)
    {
      v16 = 0;
    }

    if (a2 > v16)
    {
      atomic_fetch_add_explicit(a1 + 28, v16 - a2, memory_order_relaxed);
      a2 = v16;
    }

    if (!a2)
    {
      break;
    }

    v17 = v15;
    atomic_compare_exchange_strong_explicit(a1 + 25, &v17, v15 - a2, memory_order_acquire, memory_order_acquire);
    v18 = v17 == v15;
    v15 = v17;
    if (v18)
    {
      v20 = 0;
      a3 = 0x7FFFFFFF;
LABEL_27:
      if (a1[2] != 0x7FFFFFFF && atomic_fetch_add_explicit(a1 + 2, 1u, memory_order_relaxed) < 1)
      {
        qword_6D1C0 = "API MISUSE: Resurrection of an object";
        __break(1u);
        goto LABEL_36;
      }

      while (1)
      {
        v19 = pthread_create(&v20, v9, _dispatch_worker_thread, a1);
        if (v19 != 35)
        {
          if (!v19)
          {
            if (!--a2)
            {
              return;
            }

            goto LABEL_27;
          }

          _dispatch_bug(6979, v19);
        }

        _dispatch_temporary_resource_shortage();
      }
    }
  }
}

void _dispatch_root_queue_poke_and_wakeup(unsigned int *a1, signed int a2, int a3)
{
  v3 = *(*a1 + 40);
  if (v3 != 330001 && v3 != 328465)
  {
    goto LABEL_12;
  }

  v5 = a1[28];
  do
  {
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = a2;
    }

    atomic_compare_exchange_strong_explicit(a1 + 28, &v5, v7, memory_order_release, memory_order_relaxed);
  }

  while (v5 != v6);
  if (v6 <= 0)
  {
LABEL_12:
    _dispatch_root_queue_poke_slow(a1, a2, a3);
  }
}

unsigned int *_dispatch_root_queue_wakeup(unsigned int *result, uint64_t a2, char a3)
{
  if ((a3 & 8) != 0)
  {
    if (a3)
    {
      return _os_object_release_internal_n(result, &dword_0 + 2);
    }
  }

  else
  {
    v3 = result[21];
    qword_6D1C0 = "BUG IN LIBDISPATCH: Don't try to wake up or override a root queue";
    qword_6D1F0 = v3;
    __break(1u);
  }

  return result;
}

void _dispatch_root_queue_push(uint64_t a1, void *a2, unsigned int a3)
{
  v3 = a3;
  v4 = a1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 232);
  if (v6 && *(v6 + 52) == 1 && ((v7 = v6[1], v12 = *(a1 + 84), !v7) || v12 < 0))
  {
    v13 = *v6;
    v14 = *(v6 + 4);
    *v6 = a1;
    v6[1] = a2;
    *(v6 + 4) = a3;
    if (v12 < 0)
    {
      *(v6 + 52) = 0;
    }

    if (!v7)
    {
      return;
    }

    v3 = v14;
    v4 = v13;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(v4 + 84);
  if ((v8 & 0x8000000) != 0 && *v7 >= 0x1000uLL && *(*v7 + 40) != 1)
  {
    if (*(*v7 + 40) != 19 || !_dispatch_source_is_timer(v7))
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
      qword_6D1F0 = v7;
      __break(1u);
      return;
    }

    v8 = *(v4 + 84);
  }

  if (v8 >> 12)
  {
    if (v3 && v8 >> 12 != v3)
    {
LABEL_13:

      _dispatch_root_queue_push_override(v4, v7, v3);
      return;
    }
  }

  else
  {
    v9 = (v8 >> 8) & 0xF;
    if (v9)
    {
      v10 = v9 >= v3;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      goto LABEL_13;
    }
  }

  v7[2] = 0;
  *(StatusReg + 976) = v4 + 48;
  v11 = atomic_exchange_explicit((v4 + 48), v7, memory_order_release);
  if (v11)
  {
    *(v11 + 16) = v7;
    *(StatusReg + 976) = 0;
  }

  else
  {
    *(v4 + 104) = v7;
    *(StatusReg + 976) = 0;

    _dispatch_root_queue_poke_and_wakeup(v4, 1, 0);
  }
}

void _dispatch_root_queue_push_override(__objc2_class **a1, void *a2, unsigned int a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *(a1 + 21);
  if (v6 < 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = (v6 >> 25) & 4;
  }

  if (*a2 >= 0x1000uLL && *(*a2 + 40) == 256)
  {
    a2[4] = a1;
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    a1 = *(StatusReg + 176);
    if (a1)
    {
      *(StatusReg + 176) = a1[2];
    }

    else
    {
      a1 = _dispatch_continuation_alloc_from_heap();
    }

    a1[6] = v4;
    a1[7] = v5;
    a1[5] = a1;
    *a1 = &unk_647E0;
    a1[1] = -1;
    a1[3] = -1;
    v4 = a1;
  }

  if (a3 - 7 <= 0xFFFFFFF9)
  {
    v10 = a3;
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_6D1F0 = a3;
    __break(1u);
  }

  else
  {
    v9 = 2 * (v7 > 3);
    if ((v7 & 2) != 0)
    {
      v9 = 1;
    }

    a1 = &_dispatch_root_queues + 16 * (3 * a3 + v9 - 3);
    *(v4 + 16) = 0;
    v10 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v10 + 976) = a1 + 6;
    v11 = atomic_exchange_explicit(a1 + 6, v4, memory_order_release);
    if (v11)
    {
      *(v11 + 16) = v4;
      *(v10 + 976) = 0;
      return;
    }
  }

  a1[13] = v4;
  *(v10 + 976) = 0;

  _dispatch_root_queue_poke_and_wakeup(a1, 1, 0);
}

NSObject *_dispatch_pthread_root_queue_create(const char *a1, int a2, __int128 *a3, void *a4, _OWORD *a5)
{
  if (a2 < 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = 4095;
  if (a1)
  {
    v11 = _dispatch_strdup_if_mutable(a1);
    if (v11 == a1)
    {
      v9 = 4095;
    }

    else
    {
      v9 = 2101247;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = _dispatch_object_alloc(OS_dispatch_queue_pthread_root, 320);
  v13 = v12;
  *(v12 + 16) = -1985229329;
  *(v12 + 80) = v9;
  *(v12 + 56) = 0x20000000000;
  *(v12 + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(v12 + 72) = v11;
  *(v12 + 56) = 0x60000000000000;
  *(v12 + 84) = 0x80000000;
  v14 = v12 + 120;
  *(v12 + 32) = v12 + 120;
  if (v8 >= 32)
  {
    v15 = 32;
  }

  else
  {
    v15 = v8;
  }

  if (v8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 32;
  }

  *(v12 + 100) = v16;
  *(v12 + 192) = OS_dispatch_semaphore;
  *(v12 + 256) = 0;
  _dispatch_sema4_create_slow((v12 + 256), 2);
  if (a3)
  {
    v17 = *a3;
    v18 = a3[1];
    v19 = a3[3];
    *(v14 + 32) = a3[2];
    *(v14 + 48) = v19;
    *v14 = v17;
    *(v14 + 16) = v18;
    _dispatch_mgr_priority_raise(v14);
  }

  else
  {
    v20 = pthread_attr_init(v14);
    if (v20)
    {
      _dispatch_bug(7729, v20);
    }
  }

  v21 = pthread_attr_setdetachstate(v14, 2);
  if (!v21)
  {
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  _dispatch_bug(7732, v21);
  if (a4)
  {
LABEL_21:
    *(v13 + 184) = _dispatch_Block_copy(a4);
  }

LABEL_22:
  if (a5)
  {
    *(v13 + 264) = *a5;
  }

  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_pthread_root_queue_create_cold_1();
  }

  return _dispatch_introspection_queue_create(v13);
}

NSObject *_dispatch_pthread_root_queue_create_with_observer_hooks_4IOHID(const char *a1, int a2, __int128 *a3, uint64_t a4, void *a5)
{
  if (!*a4 || !*(a4 + 8))
  {
    _dispatch_pthread_root_queue_create_with_observer_hooks_4IOHID_cold_1();
  }

  return _dispatch_pthread_root_queue_create(a1, a2, a3, a5, a4);
}

BOOL _dispatch_queue_is_exclusively_owned_by_current_thread_4IOHID(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 != 1)
  {
    _dispatch_queue_is_exclusively_owned_by_current_thread_4IOHID_cold_1(v2);
  }

  v3 = *(a1 + 56);
  return ((v3 ^ *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24)) & 0xFFFFFFFC) == 0;
}

uint64_t dispatch_pthread_root_queue_copy_current()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
  if (!v0)
  {
    return 0;
  }

  do
  {
    v1 = v0;
    v0 = *(v0 + 24);
  }

  while (v0);
  if (*(*v1 + 40) != 328721)
  {
    return 0;
  }

  _os_object_retain_with_resurrect(v1);
  return v1;
}

void _dispatch_pthread_root_queue_dispose(NSObject *a1, _BYTE *a2)
{
  isa = a1[4].isa;
  v5 = a1[8].isa;
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_lane_dispose_cold_1(v5);
  }

  _dispatch_introspection_queue_dispose(a1);
  pthread_attr_destroy(isa);
  _dispatch_semaphore_dispose(isa[1].__opaque);
  sig = isa[1].__sig;
  if (sig)
  {
    _Block_release(sig);
  }

  a1[3].isa = &off_71340;

  _dispatch_lane_class_dispose(a1, a2);
}

void _dispatch_runloop_queue_wakeup(atomic_ullong *context, uint64_t a2, uint64_t a3, int8x16_t a4)
{
  if ((context[10] & 0x800000) != 0 || (a3 & 2) != 0 && (atomic_fetch_or_explicit(context + 7, 0x8000000000uLL, memory_order_release) & 0xFFFFFFFC) == 0)
  {

    _dispatch_lane_wakeup(context, a2, a3, a4);
  }

  else if (context[6])
  {

    _dispatch_runloop_queue_poke(context, a2, a3);
  }

  else
  {
    v4 = (atomic_fetch_and_explicit(context + 7, 0xFFFFFFF0FFFFFFFFLL, memory_order_relaxed) >> 32) & 7;
    if (v4)
    {
      v5 = context[7] | 3;
      if (context[6])
      {
        _dispatch_runloop_queue_poke(context, v4, a3);
      }

      _pthread_qos_override_end_direct();
    }

    else if (a3)
    {

      _os_object_release_internal_n(context, &dword_0 + 2);
    }
  }
}

void _dispatch_runloop_queue_poke(atomic_ullong *context, unsigned int a2, char a3)
{
  if (*(*context + 40) == 394769 && _dispatch_main_q_handle_pred != -1)
  {
    dispatch_once_f(&_dispatch_main_q_handle_pred, context, _dispatch_runloop_queue_handle_init);
  }

  v6 = *(context + 21);
  v7 = v6 >> 12;
  if (a2)
  {
    v7 = a2;
  }

  v8 = (v6 >> 8) & 0xF;
  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = context[7];
  v11 = v9 << 32;
  while (1)
  {
    v12 = v10;
    v13 = v10 & 0x700000000;
    v14 = v10 & 0xFFFFFFF8FFFFFFFFLL | v11;
    if ((v14 & 0x1000000000) != 0)
    {
      v14 |= 0x800000000uLL;
    }

    v15 = v13 < v11 ? v14 : v12;
    if (v12 == v15)
    {
      break;
    }

    v10 = v12;
    atomic_compare_exchange_strong_explicit(context + 7, &v10, v15, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v12)
    {
      if (v7 > v8)
      {
        _pthread_qos_override_start_direct();
        if ((BYTE4(v12) & 7u) > v8)
        {
          _pthread_qos_override_end_direct();
        }
      }

      break;
    }
  }

  v16 = *(context + 8);
  if (v16 - 1 > 0xFFFFFFFD || ((_dispatch_introspection_runtime_event(), v17 = _dispatch_send_wakeup_runloop_thread(v16, 0), (v17 - 268435459) >= 2) ? (v18 = v17 == 16) : (v18 = 1), !v18 ? (v19 = v17 == 0) : (v19 = 1), v19))
  {
    if ((a3 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    _dispatch_bug(7983, v17);
    if ((a3 & 1) == 0)
    {
      return;
    }
  }

  _os_object_release_internal_n(context, &dword_0 + 2);
}

void _dispatch_runloop_queue_handle_init(void *context)
{
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_sema4_create_slow_cold_1();
  }

  options.reserved[1] = 0;
  *&options.flags = xmmword_45168;
  name = 0;
  if (*(*context + 40) == 394769)
  {
    *&options.flags = 0x100000033;
  }

  v2 = mach_port_construct(mach_task_self_, &options, context, &name);
  if (v2 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v2)
  {
    _dispatch_bug(7896, v2);
  }

  context[4] = name;
  _dispatch_program_is_probably_callback_driven = 1;
}

uint64_t _dispatch_runloop_queue_xref_dispose(uint64_t a1)
{
  v2 = (atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF0FFFFFFFFLL, memory_order_relaxed) >> 32) & 7;
  v3 = *(a1 + 80);
  atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFFF00000003, memory_order_relaxed);
  result = (*(*a1 + 80))(a1, v2, 2);
  if (v2)
  {
    v5 = *(a1 + 56) | 3;

    return _pthread_qos_override_end_direct();
  }

  return result;
}

void _dispatch_runloop_queue_dispose(NSObject *a1, _BYTE *a2)
{
  isa = a1[8].isa;
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_lane_dispose_cold_1(isa);
  }

  _dispatch_introspection_queue_dispose(a1);
  _dispatch_runloop_queue_handle_dispose(a1);

  _dispatch_lane_class_dispose(a1, a2);
}

void _dispatch_runloop_queue_handle_dispose(mach_port_context_t guard)
{
  v1 = *(guard + 32);
  if (v1 - 1 <= 0xFFFFFFFD)
  {
    *(guard + 32) = 0;
    v2 = mach_port_destruct(mach_task_self_, v1, -1, guard);
    if (v2 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (v2)
    {

      _dispatch_bug(7952, v2);
    }
  }
}

BOOL _dispatch_runloop_root_queue_perform_4CF(dispatch_object_t object)
{
  v2 = *(object->isa + 5);
  if (v2 != 395025)
  {
    _dispatch_runloop_root_queue_perform_4CF_cold_1(v2);
  }

  dispatch_retain(object);
  v3 = &object[6];
  if (!object[6].isa)
  {
    v14 = 0;
    goto LABEL_101;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 216) & 0xFFFFFFFFFFFFFFFELL;
  if (v5 != -4)
  {
    if (v5)
    {
      add_explicit = atomic_fetch_add_explicit((v5 + 96), 0xFFFFFFFF, memory_order_relaxed);
      if (add_explicit <= 0)
      {
        if (add_explicit < 0)
        {
          _os_object_retain_weak_cold_1();
        }

        *(v5 + 56) = 0xDEAD000000000000;
        _dispatch_object_dealloc(v5);
      }
    }

    *(StatusReg + 216) = -4;
  }

  v58 = *(StatusReg + 160);
  *(StatusReg + 160) = object;
  *(StatusReg + 168) = &v58;
  v7 = *(StatusReg + 32);
  v8 = (__clz(__rbit32((v7 >> 8) & 0x3FFF)) << 8) + 256;
  if (((v7 >> 8) & 0x3FFF) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(StatusReg + 224);
  if (v10)
  {
    os_retain(*(StatusReg + 224));
  }

  LODWORD(v11) = v9 | v7 & 0x8E0000FF;
  v12 = *(StatusReg + 200);
  if (v12)
  {
    v13 = v11 & 0xFFF;
    if (v13)
    {
      if ((v12 & 0xFFFu) > v13)
      {
        v13 = v12 & 0xFFF;
      }

      LODWORD(v11) = v13 | v12 & 0x880F0000;
    }

    else
    {
      LODWORD(v11) = v12 | 0x40000000;
      if ((v12 & 0xFFF) == 0)
      {
        LODWORD(v11) = *(StatusReg + 200);
      }
    }
  }

  if ((~v11 & 0xF0000) != 0)
  {
    v11 = v11 | 0xF0000;
  }

  else
  {
    v11 = v11;
  }

  *(StatusReg + 200) = v11;
  v15 = 0uLL;
  memset(v57, 0, sizeof(v57));
  isa = object[13].isa;
  if (!isa)
  {
    isa = _dispatch_wait_for_enqueuer(&object[13]);
  }

  v17 = *(isa + 16);
  object[13].isa = v17;
  if (!v17)
  {
    v45 = *v3;
    while (isa == (v45 & 0xFFFFFFFFFFFFFFF8))
    {
      v46 = v45;
      atomic_compare_exchange_strong_explicit(v3, &v46, 0, memory_order_release, memory_order_relaxed);
      v27 = v46 == v45;
      v45 = v46;
      if (v27)
      {
        goto LABEL_28;
      }
    }

    v51 = *(isa + 16);
    if (!v51)
    {
      v51 = _dispatch_wait_for_enqueuer((isa + 16));
    }

    v17 = v51;
    object[13].isa = v51;
  }

LABEL_28:
  v18 = *(StatusReg + 192);
  if (v18)
  {
    (*v18)(object);
  }

  v19 = *isa;
  if (*isa < 0x1000uLL)
  {
    v56 = v7;
    v21 = *(isa + 24);
    if ((v19 & 4) != 0)
    {
      *(isa + 24) = -1;
    }

    if (v21 != -1)
    {
      if (v21)
      {
        v22 = v21[8];
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v55 = v5;
    v23 = *(isa + 8);
    if (v23 == -1)
    {
      v26 = 0;
    }

    else
    {
      v24 = *(StatusReg + 200);
      if (((v24 >> 8) & 0xF) != 0)
      {
        v25 = 1 << ((BYTE1(v24) & 0xFu) + 7);
      }

      else
      {
        v25 = 0;
      }

      v26 = v25 | *(StatusReg + 200);
      if ((v23 & 0xFFFFFF) != 0)
      {
        if ((v23 & 0xFFFFFFuLL) >= (v25 & 0xFFFFFF00))
        {
          v27 = (v24 & 0x44000000) == 0 && (*(isa + 8) & 0x10000000) == 0;
          if (!v27)
          {
            v26 = v23 & 0xFFFFFF;
          }
        }
      }

      else if (v24 >> 12)
      {
        v26 = (256 << ((v24 >> 12) - 1)) | 0xFF;
      }
    }

    v28 = v26 & 0x7FFFFFFF02FFFFFFLL;
    v29 = *(StatusReg + 32);
    if ((v29 & 0x1000000) != 0)
    {
      if (v28)
      {
        goto LABEL_129;
      }

      v28 = v29 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v28 == (v29 & 0xFFFFFFFF76FFFFFFLL))
    {
LABEL_58:
      if (v21 == -1)
      {
        goto LABEL_63;
      }

      if (*(StatusReg + 224) == v21)
      {
        if ((v19 & 4) != 0 && v21)
        {
          os_release(v21);
        }

LABEL_63:
        v7 = v56;
        if ((v19 & 0x200) == 0)
        {
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_trace_item_pop_internal(object, isa, v15);
          }

          _dispatch_introspection_queue_item_dequeue(object, isa);
        }

        if ((v19 & 4) != 0)
        {
          v31 = *(StatusReg + 176);
          if (v31)
          {
            v32 = *(v31 + 8) + 1;
          }

          else
          {
            v32 = 1;
          }

          v30 = isa;
          if (v32 <= _dispatch_continuation_cache_limit)
          {
            v30 = 0;
            *(isa + 16) = v31;
            *(isa + 8) = v32;
            *(StatusReg + 176) = isa;
          }
        }

        else
        {
          v30 = 0;
        }

        v54 = v17;
        if ((v19 & 8) != 0)
        {
          v53 = v10;
          v47 = *(**(isa + 48) + 40);
          if (v47 != 514)
          {
            _dispatch_workloop_invoke_cold_3(v47);
          }

          group = *(isa + 48);
          v48 = *(isa + 32);
          v49 = *(isa + 40);
          v50 = v48;
          if (v49)
          {
            v50 = *(isa + 32);
            if (v48 == _dispatch_call_block_and_release)
            {
              if (v49[2])
              {
                v50 = v49[2];
              }

              else
              {
                v50 = 0;
              }
            }
          }

          v37 = v18;
          v38 = v12;
          v12 = v30;
          _dispatch_introspection_callout_entry(v49, v50);
          _dispatch_client_callout(v49, v48);
          _dispatch_introspection_callout_return(v49, v50);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_4();
          }

          _dispatch_introspection_queue_item_complete(isa);
          dispatch_group_leave(group);
          v5 = v55;
          v10 = v53;
        }

        else
        {
          v33 = v10;
          v35 = *(isa + 32);
          v34 = *(isa + 40);
          v36 = v35;
          if (v34)
          {
            v36 = *(isa + 32);
            if (v35 == _dispatch_call_block_and_release)
            {
              if (v34[2])
              {
                v36 = v34[2];
              }

              else
              {
                v36 = 0;
              }
            }
          }

          v37 = v18;
          v38 = v12;
          v12 = v30;
          _dispatch_introspection_callout_entry(v34, v36);
          _dispatch_client_callout(v34, v35);
          _dispatch_introspection_callout_return(v34, v36);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_4();
          }

          _dispatch_introspection_queue_item_complete(isa);
          v10 = v33;
          v5 = v55;
          v7 = v56;
        }

        v39 = v12;
        LODWORD(v12) = v38;
        v18 = v37;
        v17 = v54;
        if (v39)
        {
          _dispatch_continuation_free_to_cache_limit(v39);
          if (!v18)
          {
            goto LABEL_86;
          }
        }

        else if (!v18)
        {
          goto LABEL_86;
        }

LABEL_85:
        v18[1](object);
        goto LABEL_86;
      }

      v28 = 0;
LABEL_129:
      _dispatch_set_priority_and_voucher_slow(v28, v21, v19 & 4 | 2);
      goto LABEL_63;
    }

    if (v28)
    {
      goto LABEL_129;
    }

    goto LABEL_58;
  }

  v20 = *isa;
  if (*(v19 + 40) == 1)
  {
    (*(v19 + 48))(isa, 0, 0);
  }

  else
  {
    (*(v19 + 64))(isa, v57, 0x80000);
  }

  if (v18)
  {
    goto LABEL_85;
  }

LABEL_86:
  v14 = v17 != 0;
  if (!v17)
  {
    (*(object->isa + 10))(object, 0, 0);
  }

  *(StatusReg + 200) = v12 & 0xFFF0FFFF;
  v40 = v7 & 0xFFFFFFFF02FFFFFFLL;
  if (v7 == -1)
  {
    v41 = 0;
  }

  else
  {
    v41 = v7 & 0xFFFFFFFF02FFFFFFLL;
  }

  v42 = *(StatusReg + 32);
  if ((v42 & 0x1000000) != 0)
  {
    if (v41)
    {
LABEL_112:
      _dispatch_set_priority_and_voucher_slow(v40, v10, 6);
      goto LABEL_97;
    }

    v41 = v42 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v41 == (v42 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_93;
  }

  v40 = v41;
  if (v41)
  {
    goto LABEL_112;
  }

LABEL_93:
  if (v10 != -1)
  {
    if (*(StatusReg + 224) == v10)
    {
      if (v10)
      {
        os_release(v10);
      }

      goto LABEL_97;
    }

    v40 = 0;
    goto LABEL_112;
  }

LABEL_97:
  *(StatusReg + 160) = v58;
  if (v5 != -4)
  {
    *(StatusReg + 216) = 0;
    *(StatusReg + 40) = 0;
  }

  v43 = *(StatusReg + 176);
  if (v43)
  {
    *(StatusReg + 176) = 0;
    _dispatch_cache_cleanup(v43);
  }

LABEL_101:
  dispatch_release(object);
  return v14;
}

void _dispatch_runloop_root_queue_wakeup_4CF(atomic_ullong *a1, int8x16_t a2)
{
  v3 = *(*a1 + 40);
  if (v3 != 395025)
  {
    _dispatch_runloop_root_queue_perform_4CF_cold_1(v3);
  }

  _dispatch_runloop_queue_wakeup(a1, 0, 0, a2);
}

uint64_t _dispatch_runloop_root_queue_get_port_4CF(unsigned int *a1)
{
  v1 = *(*a1 + 40);
  if (v1 != 395025)
  {
    _dispatch_runloop_root_queue_perform_4CF_cold_1(v1);
  }

  return a1[8];
}

uint64_t _dispatch_get_main_queue_handle_4CF()
{
  if (_dispatch_main_q_handle_pred != -1)
  {
    _dispatch_get_main_queue_handle_4CF_cold_1();
  }

  return dword_70DE0;
}

uint64_t _dispatch_get_main_queue_port_4CF()
{
  if (_dispatch_main_q_handle_pred != -1)
  {
    _dispatch_get_main_queue_handle_4CF_cold_1();
  }

  return dword_70DE0;
}

void _dispatch_main_queue_callback_4CF()
{
  if (!dword_70E30)
  {
    dword_70E30 = 1;
    _dispatch_main_queue_drain();
    dword_70E30 = 0;
  }
}

void _dispatch_main_queue_drain()
{
  v4 = 0uLL;
  if (qword_70DF0)
  {
    if ((dword_70E10 & 0x40000) == 0)
    {
      _dispatch_main_queue_drain_cold_6();
    }

    v0 = qword_70DF8[0];
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    if (((v0 ^ *(StatusReg + 24)) & 0xFFFFFFFC) != 0)
    {
      _dispatch_main_queue_drain_cold_1(v0);
    }

    if (_dispatch_main_q_handle_pred != -1)
    {
      _dispatch_get_main_queue_handle_4CF_cold_1();
    }

    v2 = *(StatusReg + 216) & 0xFFFFFFFFFFFFFFFELL;
    if (v2)
    {
      if (v2 == -4)
      {
        _dispatch_main_queue_drain_cold_3();
      }

      add_explicit = atomic_fetch_add_explicit((v2 + 96), 0xFFFFFFFF, memory_order_relaxed);
      if (add_explicit <= 0)
      {
        if (add_explicit < 0)
        {
          _os_object_retain_weak_cold_1();
        }

        *(v2 + 56) = 0xDEAD000000000000;
        _dispatch_object_dealloc(v2);
      }
    }

    _dispatch_main_queue_drain_cold_5((StatusReg + 216), StatusReg, &v4);
  }
}

uint64_t _dispatch_main_queue_push(uint64_t result, uint64_t a2, uint64_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = (*(StatusReg + 32) >> 8) & 0x3FFF;
  v5 = __clz(__rbit32(v4));
  *(a2 + 16) = 0;
  *(StatusReg + 976) = result + 48;
  v6 = *(result + 48);
  do
  {
    v7 = v6;
    v8 = v4 != 0 && v5 >= (v6 & 7u);
    if (v8)
    {
      v9 = v5 + 1;
    }

    else
    {
      v9 = v6 & 7;
    }

    atomic_compare_exchange_strong_explicit((result + 48), &v6, v9 | a2, memory_order_release, memory_order_relaxed);
  }

  while (v6 != v7);
  v10 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 16);
  if ((v7 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    v10 = (result + 104);
  }

  *v10 = a2;
  *(StatusReg + 976) = 0;
  if (!v7 || v8 && (*(result + 80) & 0x40000) != 0)
  {
    return (*(*result + 80))(result, a3, 2);
  }

  if (((*(result + 84) >> 8) & 0xFu) >= a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  if ((*(result + 60) & 7) == 0 || (*(result + 60) & 7u) < v11)
  {
    return (*(*result + 80))(result, v11, 0);
  }

  return result;
}

void _dispatch_main_queue_wakeup(uint64_t a1, uint64_t a2, uint64_t a3, int8x16_t a4)
{
  if ((*(a1 + 80) & 0x40000) != 0)
  {
    v4 = *(a1 + 80);
    _dispatch_runloop_queue_wakeup(a1, a2, a3, a4);
  }

  else
  {
    _dispatch_lane_wakeup(a1, a2, a3, a4);
  }
}

void dispatch_main(void)
{
  if (_dispatch_root_queues_pred != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    if (!pthread_main_np())
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_main() must be called on the main thread";
      __break(1u);
    }

    if (!dword_70E30)
    {
      dword_70E30 = 1;
      _dispatch_main_queue_drain();
      dword_70E30 = 0;
      _dispatch_program_is_probably_callback_driven = 1;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      pthread_exit(0);
    }

    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_main called from a block on the main queue";
    __break(1u);
LABEL_9:
    dispatch_once_f(&_dispatch_root_queues_pred, 0, _dispatch_root_queues_init_once);
  }
}

dispatch_queue_global_t dispatch_get_global_queue(intptr_t identifier, uintptr_t flags)
{
  if ((flags & 0xFFFFFFFFFFFFFFF9) != 0 || flags >= 4 && (flags & 2) != 0)
  {
    return 0;
  }

  if (identifier <= -3)
  {
    if (identifier == -32768)
    {
      v3 = 3;
      goto LABEL_15;
    }

    if (identifier != -128)
    {
      goto LABEL_18;
    }

LABEL_12:
    v3 = 6;
    goto LABEL_15;
  }

  switch(identifier)
  {
    case -2:
      goto LABEL_12;
    case 0:
      v3 = 9;
      goto LABEL_15;
    case 2:
      v3 = 12;
      goto LABEL_15;
  }

LABEL_18:
  HIDWORD(v6) = identifier - 5;
  LODWORD(v6) = identifier - 5;
  v5 = v6 >> 2;
  if (v5 > 7 || ((0xBBu >> v5) & 1) == 0)
  {
    return 0;
  }

  v3 = qword_45240[v5];
LABEL_15:
  v4 = 2 * (flags > 3);
  if ((flags & 2) != 0)
  {
    v4 = 1;
  }

  return (&_dispatch_root_queues + 16 * (v3 + v4));
}

void _dispatch_queue_cleanup(void *a1, int8x16_t a2)
{
  if (a1 != &_dispatch_main_q)
  {
    _dispatch_queue_cleanup_cold_1(a1);
  }

  _dispatch_queue_cleanup2(a2);
}

void _dispatch_frame_cleanup(uint64_t a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch frame is active";
  qword_6D1F0 = a1;
  __break(1u);
}

uint64_t _dispatch_cache_cleanup(uint64_t result)
{
  if (result)
  {
    do
    {
      v1 = *(result + 16);
      _dispatch_continuation_free_to_heap(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

void _dispatch_context_cleanup(uint64_t a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch context is set";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_wlh_cleanup(uint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFFELL;
  add_explicit = atomic_fetch_add_explicit((v2 + 96), 0xFFFFFFFF, memory_order_relaxed);
  if (add_explicit <= 0)
  {
    if (add_explicit < 0)
    {
      _os_object_retain_weak_cold_1();
    }

    *(v2 + 56) = 0xDEAD000000000000;

    _dispatch_object_dealloc(v2);
  }
}

void *_dispatch_deferred_items_cleanup(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    _dispatch_deferred_items_cleanup_cold_1(a1);
  }

  v2 = (a1 & 0xFFFFFFFFFFFFFFFELL);

  return _dispatch_free_deferred_unotes(v2);
}

void _dispatch_queue_atfork_child()
{
  if ((dword_70E10 & 0x40000) != 0)
  {
    _dispatch_queue_atfork_child_cold_1();
  }

  if (_dispatch_unsafe_fork)
  {
    off_70E28[0] = (&stru_B8 + 72);
    qword_70DF0 = 256;
    qword_70EA8 = 256;
    qword_70E70 = 256;
    v0 = &qword_70F28;
    v1 = 18;
    do
    {
      *v0 = 256;
      *(v0 - 7) = 256;
      v0 += 16;
      --v1;
    }

    while (v1);
  }
}

void _dispatch_fork_becomes_unsafe_slow()
{
  if ((atomic_fetch_or_explicit(&_dispatch_unsafe_fork, 1u, memory_order_relaxed) & 2) != 0)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Transition to multithreaded is prohibited";
    __break(1u);
  }
}

uint64_t _dispatch_prohibit_transition_to_multithreaded(uint64_t result)
{
  if (result)
  {
    if (atomic_fetch_or_explicit(&_dispatch_unsafe_fork, 2u, memory_order_relaxed))
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: The executable is already multithreaded";
      __break(1u);
    }
  }

  else
  {
    atomic_fetch_and_explicit(&_dispatch_unsafe_fork, 0xFDu, memory_order_relaxed);
  }

  return result;
}

void _dispatch_block_async_invoke2(char *aBlock, const char *a2)
{
  v2 = a2;
  v3 = aBlock;
  v4 = *(aBlock + 2);
  if (v4)
  {
    v5 = *(aBlock + 2);
  }

  v6 = v4 == _dispatch_block_special_invoke;
  if (v4 == _dispatch_block_special_invoke)
  {
    v7 = aBlock + 32;
    v8 = *(aBlock + 4);
    v6 = v8 == 3512316172;
    if (v8 != 3512316172)
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_6D1F0 = v8;
      __break(1u);
      goto LABEL_25;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *(v7 + 4);
  if ((v9 & 4) != 0)
  {
    v11 = *(v7 + 4);
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
    qword_6D1F0 = v9;
    __break(1u);
    goto LABEL_18;
  }

  if ((v9 & 1) == 0)
  {
    aBlock = (*(*(v7 + 5) + 16))();
  }

  if ((v9 & 8) == 0 && !atomic_fetch_add_explicit(v7 + 5, 1u, memory_order_relaxed))
  {
    dispatch_group_leave(*(v7 + 6));
  }

  __swp(aBlock, v7 + 14);
  if (aBlock)
  {
    if (*(aBlock + 2) != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(aBlock + 2, 0xFFFFFFFE, memory_order_release);
      v6 = add_explicit == 2;
      if (add_explicit <= 2)
      {
LABEL_18:
        if (v6)
        {
          _os_object_dispose(aBlock, a2);
          if ((v2 & 1) == 0)
          {
            return;
          }

          goto LABEL_21;
        }

LABEL_25:
        qword_6D1C0 = "API MISUSE: Over-release of an object";
        __break(1u);
        return;
      }
    }
  }

  if ((v2 & 1) == 0)
  {
    return;
  }

LABEL_21:

  _Block_release(v3);
}

void _dispatch_lane_non_barrier_complete(unsigned __int16 *a1, uint64_t a2, int8x16_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 24) & 0xFFFFFFFCLL;
  v6 = *(a1 + 7);
  do
  {
    v7 = v6;
    v8 = v6 - 0x20000000000;
    if ((v6 & 0xFFFFFFFC) != 0)
    {
      v8 |= 0x8000000000uLL;
    }

    else if (!(v8 >> 53))
    {
      if ((v6 & 0x10000000000) != 0)
      {
        v9 = v6 + 0x3FFF0000000000;
      }

      else
      {
        v9 = v6 + (a1[40] << 41) + 0x3FFE0000000000;
      }

      v10 = (v9 & 0x3FFE0000000000) == 0x20000000000000;
      v11 = v9 & 0xFFE0017FFFFFFFFFLL | v5;
      if (v10)
      {
        v8 = v11;
      }

      else
      {
        v8 |= (v7 >> 39) & 1;
      }
    }

    v6 = v7;
    atomic_compare_exchange_strong_explicit(a1 + 7, &v6, v8, memory_order_relaxed, memory_order_relaxed);
  }

  while (v6 != v7);
  if ((~v7 & 0x1800000000) == 0)
  {
    v12 = HIDWORD(v7) & 7;
    v13 = *(StatusReg + 200);
    if ((HIWORD(v13) & 0xF) < v12)
    {
      *(StatusReg + 200) = v13 & 0xFFF0FFFF | (v12 << 16);
    }
  }

  if (((v8 ^ v7) & 0x40000000000000) != 0)
  {

    _dispatch_lane_barrier_complete(a1, 0, a2, a3);
  }

  else if ((v8 ^ v7))
  {
    if ((a2 & 1) != 0 || *(a1 + 2) == 0x7FFFFFFF || atomic_fetch_add_explicit(a1 + 2, 2u, memory_order_relaxed) > 0)
    {
      v14 = *(a1 + 3);
      if (MEMORY[0xFFFFFC100])
      {
        v16 = *(a1 + 3);
        _dispatch_trace_item_push_internal(v14, a1, a3);
        v14 = v16;
      }

      _dispatch_introspection_queue_item_enqueue(v14, a1);
      v15 = *(**(a1 + 3) + 88);

      v15();
    }

    else
    {
      qword_6D1C0 = "API MISUSE: Resurrection of an object";
      __break(1u);
    }
  }

  else if (a2)
  {

    _os_object_release_internal_n(a1, &dword_0 + 2);
  }
}

double _dispatch_sync_f_slow(unsigned __int16 *a1, void *context, uint64_t (*function)(void), unint64_t a4, atomic_ullong *a5, uint64_t a6, int8x16_t a7)
{
  if (a5[3])
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    isa = StatusReg[4].isa;
    v24 = 0;
    v16[0].isa = (a6 | 1);
    v16[1].isa = (isa | 0x10000000);
    v16[2].isa = 0;
    v16[3] = StatusReg[28];
    v16[4].isa = _dispatch_async_and_wait_invoke;
    v16[5].isa = v16;
    v16[6].isa = 0;
    v17 = a1;
    v18 = function;
    v19 = context;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = StatusReg[3].isa;
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(a1, v16, a7);
    }

    _dispatch_introspection_queue_item_enqueue(a1, v16);
    __DISPATCH_WAIT_FOR_QUEUE__(v16, a5);
    if (v18)
    {
      if (byte_6D338 == 1)
      {
        _dispatch_introspection_order_record(a1);
      }

      if (MEMORY[0xFFFFFC100])
      {
        _dispatch_trace_item_pop_internal(a1, v16, v14);
      }

      _dispatch_introspection_queue_item_dequeue(a1, v16);
      _dispatch_sync_invoke_and_complete_recurse(a1, context, function, a4, v16);
    }

    else
    {
      _dispatch_sync_complete_recurse(a1, v17, a4, v14);
    }
  }

  else
  {

    return _dispatch_sync_function_invoke(a5, context, function);
  }

  return result;
}

double _dispatch_sync_recurse(NSObject *a1, void *context, uint64_t (*function)(void), unint64_t a4, int8x16_t a5)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  isa = a1[3].isa;
  v11 = *(StatusReg + 24) & 0xFFFFFFFCLL;
LABEL_2:
  if (*(isa + 40) == 1)
  {
    v12 = *(isa + 7);
    while (v12 == (v12 & 0x3000000000 | 0x1FFE0000000000))
    {
      v13 = v12;
      atomic_compare_exchange_strong_explicit(isa + 7, &v13, v11 | v12 & 0x3000000000 | 0x60000000000002, memory_order_acquire, memory_order_acquire);
      v14 = v13 == v12;
      v12 = v13;
      if (v14)
      {
        goto LABEL_7;
      }
    }

    v19 = 2;
  }

  else
  {
    if (!*(isa + 6))
    {
      v15 = *(isa + 7);
      while ((v15 & 0xFFC0018000000000) == 0)
      {
        v16 = v15;
        atomic_compare_exchange_strong_explicit(isa + 7, &v16, v15 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        v14 = v16 == v15;
        v15 = v16;
        if (v14)
        {
LABEL_7:
          isa = *(isa + 3);
          if (*(isa + 3))
          {
            goto LABEL_2;
          }

          if (byte_6D338 == 1)
          {
            _dispatch_introspection_order_record(a1);
          }

          v17 = _dispatch_introspection_queue_fake_sync_push_pop(a1, context, function, a4);

          _dispatch_sync_invoke_and_complete_recurse(a1, context, function, a4, v17);
          return result;
        }
      }
    }

    v19 = 0;
  }

  return _dispatch_sync_f_slow(a1, context, function, a4, isa, v19, a5);
}

void _dispatch_lane_barrier_sync_invoke_and_complete(uint64_t a1, void *context, uint64_t (*function)(void), NSObject *a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v14 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v14;
  v9 = function;
  if (context)
  {
    v9 = function;
    if (function == _dispatch_call_block_and_release)
    {
      if (context[2])
      {
        v9 = context[2];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  _dispatch_introspection_callout_entry(context, v9);
  _dispatch_client_callout(context, function);
  _dispatch_introspection_callout_return(context, v9);
  *(StatusReg + 160) = v14;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_introspection_queue_item_complete(a4);
  if (!*(a1 + 48) && *(a1 + 80) < 2u)
  {
    v11 = *(a1 + 56);
    while ((v11 & 0xFF80008800000001) == 0)
    {
      v12 = v11;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v12, (v11 & 0x7FFF7000000000) - 0x40020000000000, memory_order_release, memory_order_relaxed);
      v13 = v12 == v11;
      v11 = v12;
      if (v13)
      {
        return;
      }
    }
  }

  _dispatch_lane_barrier_complete(a1, 0, 0, v10);
}

uint64_t _dispatch_async_and_wait_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 106))
  {
    v3 = objc_autoreleasePoolPush();
  }

  else
  {
    v3 = 0;
  }

  if (byte_6D338 == 1)
  {
    _dispatch_introspection_order_record(v2);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg + 160);
  *(StatusReg + 160) = v2;
  *(StatusReg + 168) = a1 + 80;
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v7 = v6;
  if (v5)
  {
    v7 = *(a1 + 64);
    if (v6 == _dispatch_call_block_and_release)
    {
      if (v5[2])
      {
        v7 = v5[2];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  _dispatch_introspection_callout_entry(v5, v7);
  _dispatch_client_callout(v5, v6);
  _dispatch_introspection_callout_return(v5, v7);
  *(StatusReg + 160) = v9;
  if (v3)
  {
    objc_autoreleasePoolPop(v3);
  }

  *(a1 + 56) = *(StatusReg + 160);
  *(a1 + 64) = 0;
  if (*(a1 + 48) == -4)
  {
    result = a1 + 96;
    if (atomic_fetch_add_explicit((a1 + 96), 1u, memory_order_release))
    {

      return _dispatch_thread_event_signal_slow();
    }
  }

  else
  {

    return _dispatch_event_loop_cancel_waiter(a1);
  }

  return result;
}

void __DISPATCH_WAIT_FOR_QUEUE__(uint64_t a1, atomic_ullong *a2)
{
  v4 = a2[7];
  while ((v4 & 0xFF80002000000002) == 0x2000000002)
  {
    v5 = v4 | 0x800000000;
    v6 = v4;
    atomic_compare_exchange_strong_explicit(a2 + 7, &v6, v4 | 0x800000000, memory_order_relaxed, memory_order_relaxed);
    v7 = v6 == v4;
    v4 = v6;
    if (v7)
    {
      goto LABEL_5;
    }
  }

  v5 = v4;
LABEL_5:
  if ((*(a1 + 100) ^ v5) <= 3)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_sync called on queue already owned by current thread";
    qword_6D1F0 = v5;
    __break(1u);
    return;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(a1 + 80) = *(StatusReg + 160);
  if ((v5 & 0xFF80001000000000) != 0)
  {
    *(a1 + 48) = -4;
    v9 = (a1 + 48);
LABEL_8:
    v10 = *(StatusReg + 200);
    v11 = (v10 >> 8) & 0xF;
    v12 = v10 >> 12;
    v13 = HIWORD(v10) & 0xF;
    if (v11 <= v12)
    {
      v11 = v12;
    }

    if (v11 > v13)
    {
      LOBYTE(v13) = v11;
    }

    *(a1 + 105) = v13;
    *(a1 + 104) = v13;
    *(a1 + 96) = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x2000000000) != 0)
  {
    *(a1 + 48) = a2;
    v14 = a2;
  }

  else
  {
    _dispatch_wait_compute_wlh(a2, a1);
    v14 = *(a1 + 48);
  }

  v9 = (a1 + 48);
  if (v14 == -4)
  {
    goto LABEL_8;
  }

LABEL_17:
  *(StatusReg + 968) = a1;
  v15 = *a2 + 88;
  v16 = __clz(__rbit32((*(a1 + 8) >> 8) & 0x3FFF));
  if (((*(a1 + 8) >> 8) & 0x3FFF) != 0)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = 0;
  }

  (*(*a2 + 88))(a2, a1, v17);
  _dispatch_introspection_runtime_event();
  if (*(a1 + 48) == -4)
  {
    if (atomic_fetch_add_explicit((a1 + 96), 0xFFFFFFFF, memory_order_acquire) != 1)
    {
      _dispatch_thread_event_wait_slow((a1 + 96));
    }
  }

  else if ((*(a1 + 106) & 8) == 0)
  {
    _dispatch_event_loop_wait_for_ownership(a1);
  }

  *(StatusReg + 968) = 0;
  if (*v9 == -4)
  {
    v18 = *(a1 + 105);
    if (v18 > *(a1 + 104))
    {
      v19 = *(StatusReg + 200);
      if ((HIWORD(v19) & 0xF) < v18)
      {
        *(StatusReg + 200) = v19 & 0xFFF0FFFF | (v18 << 16);
      }
    }
  }
}

void _dispatch_sync_complete_recurse(unsigned __int16 *a1, unsigned __int16 *a2, unint64_t a3, int8x16_t a4)
{
  v6 = (a3 >> 1) & 1;
  do
  {
    if (a1 == a2)
    {
      break;
    }

    if (v6)
    {
      (*(*a1 + 80))(a1, 0, 4);
    }

    else
    {
      _dispatch_lane_non_barrier_complete(a1, 0, a4);
    }

    a1 = *(a1 + 3);
    LOBYTE(v6) = a1[40] == 1;
  }

  while (*(a1 + 3));
}

void _dispatch_sync_invoke_and_complete_recurse(unsigned __int16 *a1, void *context, uint64_t (*function)(void), unint64_t a4, NSObject *a5)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v13 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v13;
  v11 = function;
  if (context)
  {
    v11 = function;
    if (function == _dispatch_call_block_and_release)
    {
      if (context[2])
      {
        v11 = context[2];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  _dispatch_introspection_callout_entry(context, v11);
  _dispatch_client_callout(context, function);
  _dispatch_introspection_callout_return(context, v11);
  *(StatusReg + 160) = v13;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_introspection_queue_item_complete(a5);
  _dispatch_sync_complete_recurse(a1, 0, a4, v12);
}

void _dispatch_wait_compute_wlh(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  if ((v4 & 0x400000) != 0)
  {
    v5 = 0;
    *(a2 + 106) |= 0x40u;
    v6 = a1 + 100;
    atomic_compare_exchange_strong_explicit((a1 + 100), &v5, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      _dispatch_unfair_lock_lock_slow(v6);
    }
  }

  v7 = *(a1 + 24);
  v8 = *(v7 + 56);
  while (1)
  {
    if (v8 >> 55)
    {
      goto LABEL_18;
    }

    if ((~v8 & 0x2000000002) != 0)
    {
      break;
    }

    v9 = v8 | 0x800000000;
    v10 = v8;
    atomic_compare_exchange_strong_explicit((v7 + 56), &v10, v8 | 0x800000000, memory_order_relaxed, memory_order_relaxed);
    v11 = v10 == v8;
    v8 = v10;
    if (v11)
    {
      if ((v9 & 0x1000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_18:
      *(a2 + 106) &= ~0x40u;
      *(a2 + 48) = -4;
      goto LABEL_19;
    }
  }

  v9 = v8;
  if ((v8 & 0x1000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v9 & 0x2000000000) != 0)
  {
    if (*(*v7 + 40) == 18)
    {
      *(a2 + 106) = *(a2 + 106) & 0xAF | 0x10;
    }

    else if ((*(a2 + 106) & 0x40) != 0 && (atomic_fetch_add_explicit((v7 + 96), 1u, memory_order_relaxed) & 0x80000000) != 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    *(a2 + 48) = v7;
  }

  else
  {
    _dispatch_wait_compute_wlh();
  }

LABEL_19:
  if ((v4 & 0x400000) != 0)
  {
    if ((*(a2 + 106) & 0x10) != 0)
    {
      atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
    }

    v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC;
    if (atomic_exchange_explicit((a1 + 100), 0, memory_order_release) != v12)
    {
      _dispatch_lane_legacy_set_target_queue_cold_2();
    }
  }
}

void _dispatch_sync_invoke_and_complete(unsigned __int16 *a1, void *context, uint64_t (*function)(void), NSObject *a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v11;
  v9 = function;
  if (context)
  {
    v9 = function;
    if (function == _dispatch_call_block_and_release)
    {
      if (context[2])
      {
        v9 = context[2];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  _dispatch_introspection_callout_entry(context, v9);
  _dispatch_client_callout(context, function);
  _dispatch_introspection_callout_return(context, v9);
  *(StatusReg + 160) = v11;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_introspection_queue_item_complete(a4);
  _dispatch_lane_non_barrier_complete(a1, 0, v10);
}

void _dispatch_async_and_wait_recurse(uint64_t a1, uint64_t *a2, int a3, unint64_t a4, int8x16_t a5)
{
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_trace_item_push_internal(a1, a2, a5);
  }

  _dispatch_introspection_queue_item_enqueue(a1, a2);
  v9 = *(a1 + 56);
  v10 = *(a1 + 80);
  v11 = a1;
  if ((v10 & 0x1000000) != 0)
  {
    goto LABEL_39;
  }

  v12 = (a1 + 56);
  v13 = (a1 + 80);
  v14 = a1;
  v15 = a4;
LABEL_5:
  if ((v9 & 0x3000000000) != 0)
  {
    v16 = *(v14 + 24);
    if (v16 < &_dispatch_root_queues || v16 >= &_dispatch_queue_serial_numbers)
    {
      v11 = v14;
LABEL_39:
      *a2 &= ~0x80uLL;
      a2[7] = v11;
      v14 = v11;
      goto LABEL_35;
    }
  }

  if ((v15 & 2) != 0)
  {
    v18 = v10 << 41;
    while (v9 == (v9 & 0x3000000000) - v18 + 0x20000000000000)
    {
      v19 = v9;
      atomic_compare_exchange_strong_explicit(v12, &v19, v9 & 0x3000000000 | a3 & 0xFFFFFFFC | 0x60000000000002, memory_order_acquire, memory_order_acquire);
      v20 = v19 == v9;
      v9 = v19;
      if (v20)
      {
        goto LABEL_15;
      }
    }
  }

  else if (!*(v14 + 48))
  {
    while ((v9 & 0xFFC0018000000000) == 0)
    {
      v25 = v9;
      atomic_compare_exchange_strong_explicit(v12, &v25, v9 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
      v20 = v25 == v9;
      v9 = v25;
      if (v20)
      {
LABEL_15:
        v21 = *(v14 + 84) & 0xFFF;
        if (v21)
        {
          v22 = v21 >= 0x100 ? 1 << (BYTE1(v21) + 7) : 0;
          v23 = v22 | *(v14 + 84);
          if (v23 > (a2[1] & 0xFFFFFFuLL))
          {
            a2[1] = v23 | 0x10000000;
          }
        }

        if ((*(a2 + 106) & 3) == 0)
        {
          *(a2 + 106) |= HIWORD(*v13) & 3;
        }

        v11 = *(v14 + 24);
        if (!*(v11 + 24))
        {

          _dispatch_async_and_wait_invoke_and_complete_recurse(a1, a2, v14, a4);
          return;
        }

        v13 = (v11 + 80);
        v24 = v15 & 0xFFFFFFFFFFFFFFFDLL;
        v15 |= 2uLL;
        if (*(v11 + 80) != 1)
        {
          v15 = v24;
        }

        *a2 = v15;
        v12 = (v11 + 56);
        v9 = *(v11 + 56);
        v10 = *(v11 + 80);
        v14 = v11;
        if ((v10 & 0x1000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_39;
      }
    }
  }

LABEL_35:

  _dispatch_async_and_wait_f_slow(a1, a4, a2, v14);
}

void _dispatch_async_and_wait_f_slow(NSObject *a1, unint64_t a2, uint64_t a3, atomic_ullong *a4)
{
  __DISPATCH_WAIT_FOR_QUEUE__(a3, a4);
  v8 = *(a3 + 56);
  if (*(a3 + 64))
  {

    _dispatch_async_and_wait_invoke_and_complete_recurse(a1, a3, v8, a2);
  }

  else
  {
    v9 = *(a3 + 56);

    _dispatch_sync_complete_recurse(a1, v9, a2, v7);
  }
}

void _dispatch_async_and_wait_invoke_and_complete_recurse(NSObject *a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  if (*(*a3 + 40) != 18 && (*(a3 + 56) & 0x2000000000) == 0)
  {
    a3 = -4;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v22 = *(StatusReg + 216);
  *(StatusReg + 216) = a3;
  if (a2[106])
  {
    context = objc_autoreleasePoolPush();
  }

  else
  {
    context = 0;
  }

  v7 = *(a2 + 1);
  v8 = *(a2 + 3);
  if (byte_6D338 == 1)
  {
    _dispatch_introspection_order_record(a1);
  }

  v9 = *(StatusReg + 160);
  v24 = v9;
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v24;
  v10 = *(StatusReg + 32);
  v11 = v10 & 0xFFFFFF;
  v12 = (v10 & 0xFFFFFFuLL) >= (v7 & 0xFFFFFFuLL) || (v10 & 0xFFFFFF) == 0;
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10 & 0xFFFFFF;
  }

  v14 = v7 & 0xFFFFFFFF02FFFFFFLL;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v7 & 0xFFFFFFFF02FFFFFFLL;
  }

  if ((v10 & 0x1000000) != 0)
  {
    if (v15)
    {
LABEL_54:
      v8 = _dispatch_set_priority_and_voucher_slow(v14, v8, 0);
      goto LABEL_22;
    }

    v15 = v10 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v15 == (v10 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_18;
  }

  v14 = v15;
  if (v15)
  {
    goto LABEL_54;
  }

LABEL_18:
  if (v8 == -1)
  {
    goto LABEL_22;
  }

  if (*(StatusReg + 224) != v8)
  {
    v14 = 0;
    goto LABEL_54;
  }

  if (v8)
  {
    os_retain(v8);
  }

LABEL_22:
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_trace_item_pop_internal(a1, a2, v9);
  }

  _dispatch_introspection_queue_item_dequeue(a1, a2);
  v17 = *(a2 + 8);
  v16 = *(a2 + 9);
  v18 = v17;
  if (v16)
  {
    v18 = *(a2 + 8);
    if (v17 == _dispatch_call_block_and_release)
    {
      if (v16[2])
      {
        v18 = v16[2];
      }

      else
      {
        v18 = 0;
      }
    }
  }

  _dispatch_introspection_callout_entry(v16, v18);
  _dispatch_client_callout(v16, v17);
  _dispatch_introspection_callout_return(v16, v18);
  v19 = *(StatusReg + 32);
  if ((v19 & 0x1000000) != 0)
  {
    if (!v12)
    {
LABEL_52:
      _dispatch_set_priority_and_voucher_slow(v11, v8, 6);
      goto LABEL_35;
    }

    v11 = v19 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else
  {
    if (v13 == (v19 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_31;
    }

    v11 = v13;
  }

  if (v11)
  {
    goto LABEL_52;
  }

LABEL_31:
  if (v8 == -1)
  {
    goto LABEL_35;
  }

  if (*(StatusReg + 224) != v8)
  {
    v11 = 0;
    goto LABEL_52;
  }

  if (v8)
  {
    os_release(v8);
  }

LABEL_35:
  *(StatusReg + 160) = v24;
  if (context)
  {
    objc_autoreleasePoolPop(context);
  }

  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_introspection_queue_item_complete(a2);
  *(StatusReg + 216) = v22;
  _dispatch_sync_complete_recurse(a1, 0, a4, v20);
}

void _dispatch_queue_specific_head_dispose(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_9;
  }

  v2[4] = v7;
  v4 = a1[2];
  v7[0] = v2;
  v7[1] = v4;
  a1[1] = 0;
  a1[2] = v3;
  do
  {
    v5 = v2[3];
    if (v2[2])
    {
      v6 = a1[2];
      v2[3] = 0;
      v2[4] = v6;
      *v6 = v2;
      a1[2] = v2 + 3;
    }

    else
    {
      free(v2);
    }

    v2 = v5;
  }

  while (v5);
  if (*v3)
  {
    _dispatch_barrier_async_detached_f(&off_71340, a1, _dispatch_queue_specific_head_dispose_slow);
  }

  else
  {
LABEL_9:
    free(a1);
  }
}

void _dispatch_queue_specific_head_dispose_slow(void *a1)
{
  v2 = a1[1];
  while (v2)
  {
    v3 = v2;
    v2 = v2[3];
    v4 = v3[1];
    v5 = v3[2];
    v6 = v5 != _dispatch_call_block_and_release || v4 == 0;
    v7 = v3[2];
    if (!v6)
    {
      if (v4[2])
      {
        v7 = v4[2];
      }

      else
      {
        v7 = 0;
      }
    }

    _dispatch_introspection_callout_entry(v4, v7);
    _dispatch_client_callout(v4, v5);
    _dispatch_introspection_callout_return(v4, v7);
    free(v3);
  }

  free(a1);
}

uint64_t _dispatch_non_barrier_waiter_redirect_or_wake(uint64_t a1, uint64_t a2)
{
LABEL_1:
  v2 = *(a1 + 56);
  if ((BYTE4(v2) & 7u) > *(a2 + 105))
  {
    *(a2 + 105) = BYTE4(v2) & 7;
  }

  v3 = *a2;
  if ((*a2 & 0x80) != 0)
  {
    v4 = *(a1 + 84) & 0xFFF;
    if (v4)
    {
      v5 = v4 >= 0x100 ? 1 << (BYTE1(v4) + 7) : 0;
      v6 = v5 | *(a1 + 84);
      if (v6 > (*(a2 + 8) & 0xFFFFFFuLL))
      {
        *(a2 + 8) = v6 | 0x10000000;
      }
    }

    if ((*(a2 + 106) & 3) == 0)
    {
      *(a2 + 106) |= HIWORD(*(a1 + 80)) & 3;
    }

    if ((v2 & 0x3000000000) == 0)
    {
      goto LABEL_15;
    }

    *(a2 + 56) = a1;
    return _dispatch_waiter_wake_wlh_anon(a2);
  }

  if ((v2 & 0x3000000000) != 0)
  {
    return _dispatch_waiter_wake_wlh_anon(a2);
  }

LABEL_15:
  a1 = *(a1 + 24);
  if (*(a1 + 80) == 1)
  {
    *a2 = v3 | 2;
  }

  else
  {
    *a2 = v3 & 0xFFFFFFFFFFFFFFFDLL;
    if (!*(a1 + 48))
    {
      v7 = *(a1 + 56);
      while ((v7 & 0xFFC0018000000000) == 0)
      {
        v8 = v7;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v8, v7 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        v9 = v8 == v7;
        v7 = v8;
        if (v9)
        {
          goto LABEL_1;
        }
      }
    }
  }

  return (*(*a1 + 88))();
}

uint64_t _dispatch_waiter_wake_wlh_anon(uint64_t a1)
{
  if (*(a1 + 105) > *(a1 + 104))
  {
    v2 = *(a1 + 100);
    _pthread_workqueue_override_start_direct();
  }

  result = a1 + 96;
  if (atomic_fetch_add_explicit((a1 + 96), 1u, memory_order_release))
  {

    return _dispatch_thread_event_signal_slow();
  }

  return result;
}

uint64_t _dispatch_barrier_waiter_redirect_or_wake(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5)
{
  v8 = a1;
  if (*(a2 + 48) == -4 && (BYTE4(a4) & 7u) > *(a2 + 105))
  {
    *(a2 + 105) = BYTE4(a4) & 7;
  }

  if ((a4 & 0x2000000000) != 0)
  {
    v12 = a1;
    if ((a3 & 1) == 0)
    {
      if ((a4 & 1) == 0)
      {
        goto LABEL_22;
      }

      v12 = a1;
      if (a5)
      {
        goto LABEL_22;
      }

      v12 = a1;
      if (*(a1 + 8) == 0x7FFFFFFF)
      {
        goto LABEL_22;
      }

      v12 = a1;
      if (atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) > 1)
      {
        goto LABEL_22;
      }

      qword_6D1C0 = "API MISUSE: Over-release of an object";
      __break(1u);
    }

    if (a5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((~a4 & 0x1800000000) == 0)
    {
      v9 = HIDWORD(a4) & 7;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = *(StatusReg + 200);
      if ((HIWORD(v11) & 0xF) < v9)
      {
        *(StatusReg + 200) = v11 & 0xFFF0FFFF | (v9 << 16);
      }
    }

    v12 = -4;
    if ((a3 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (*(a1 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFE, memory_order_release) > 2)
  {
    goto LABEL_22;
  }

  qword_6D1C0 = "API MISUSE: Over-release of an object";
  __break(1u);
LABEL_20:
  v12 = a1;
  if (*(a1 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release);
    v12 = a1;
    if (add_explicit <= 1)
    {
      qword_6D1C0 = "API MISUSE: Over-release of an object";
      __break(1u);
LABEL_43:
      *a2 = add_explicit & 0xFFFFFFFFFFFFFFFDLL;
      if (!*(a1 + 48))
      {
        v19 = *(a1 + 56);
        while ((v19 & 0xFFC0018000000000) == 0)
        {
          v20 = v19;
          atomic_compare_exchange_strong_explicit((a1 + 56), &v20, v19 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
          v21 = v20 == v19;
          v19 = v20;
          if (v21)
          {

            return _dispatch_non_barrier_waiter_redirect_or_wake(a1, a2);
          }
        }
      }

      goto LABEL_39;
    }
  }

LABEL_22:
  if ((a4 & 0x3000000000) != 0)
  {
    *(a2 + 106);
    _dispatch_introspection_runtime_event();
    if ((*a2 & 0x80) != 0)
    {
      *(a2 + 56) = v8;
    }

    return _dispatch_waiter_wake(a2, v12, a4, a5);
  }

  a1 = *(a1 + 24);
  add_explicit = *a2;
  if ((*a2 & 0x80) != 0)
  {
    v15 = *(v8 + 84) & 0xFFF;
    if (v15)
    {
      v16 = v15 >= 0x100 ? 1 << (BYTE1(v15) + 7) : 0;
      v17 = v16 | *(v8 + 84);
      if (v17 > (*(a2 + 8) & 0xFFFFFFuLL))
      {
        *(a2 + 8) = v17 | 0x10000000;
      }
    }

    if ((*(a2 + 106) & 3) == 0)
    {
      *(a2 + 106) |= HIWORD(*(v8 + 80)) & 3;
    }
  }

  if (*(a1 + 80) != 1)
  {
    goto LABEL_43;
  }

  *a2 = add_explicit | 2;
LABEL_39:
  *(a2 + 106) &= ~0x80u;
  v18 = *(*a1 + 88);

  return v18();
}

uint64_t _dispatch_waiter_wake(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  if (((a3 & 0x2000000000) == 0 || *(a1 + 106) < 0) && (a4 & 0x2000000000) == 0 && v5 == -4 || (result = _dispatch_event_loop_wake_owner(a1, a2, a3, a4), v5 == -4))
  {

    return _dispatch_waiter_wake_wlh_anon(a1);
  }

  return result;
}

void _dispatch_lane_concurrent_drain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 24);
  v5 = *a4;
  v55 = (a1 + 48);
  if (!*(a1 + 48))
  {
    return;
  }

  v6 = a3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg + 160);
  v62 = v9;
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v62;
  if ((v5 & 0x40000000000000) != 0)
  {
    v10 = 0x40000000000000;
  }

  else
  {
    v10 = v5 & 0x3FFE0000000000;
  }

  if ((a3 & 0x10) != 0 && *(StatusReg + 40))
  {
    _dispatch_return_to_kernel();
  }

  v11 = *(a1 + 104);
  if (!v11)
  {
    v11 = _dispatch_wait_for_enqueuer((a1 + 104));
  }

  v12 = *(a1 + 56);
  if (!(v12 >> 55))
  {
    v57 = (v6 >> 21) & 1;
    v59 = v4;
    while (v4 == *(a1 + 24))
    {
      v13 = *v11;
      if (*v11 >= 0x1000uLL)
      {
        v14 = *v11;
        if ((*(v13 + 40) & 0xF0) == 0x10 && (*(v11 + 80) & 0x80000) != 0)
        {
LABEL_18:
          if (v10 != 0x40000000000000)
          {
            v15 = (*(a1 + 80) << 41) - 0x10000000000;
            v16 = v12;
            do
            {
              if ((v12 & 0x10000000000) != 0)
              {
                v17 = 0;
              }

              else
              {
                v17 = v15;
              }

              v18 = v17 + v12 - v10;
              if (!(v18 >> 53))
              {
                v18 += 0x40010000000000;
              }

              atomic_compare_exchange_strong_explicit((a1 + 56), &v16, v18 & 0xFFFFFF7FFFFFFFFFLL, memory_order_acquire, memory_order_acquire);
              v20 = v16 == v12;
              v12 = v16;
            }

            while (!v20);
            if ((v18 & 0x40000000000000) == 0)
            {
              goto LABEL_157;
            }

            v13 = *v11;
          }

          if (v13 <= 0xFFF && (v6 & 0x80000) == 0 && (v13 & 1) != 0)
          {
            *(a2 + 8) = v11;
            if ((v6 & 8) == 0)
            {
              goto LABEL_169;
            }

            qword_6D1C0 = "BUG IN LIBDISPATCH: Deferred continuation on source, mach channel or mgr";
            __break(1u);
            return;
          }

          v19 = *(v11 + 16);
          *(a1 + 104) = v19;
          if (!v19)
          {
            v44 = *v55;
            while (v11 == (v44 & 0xFFFFFFFFFFFFFFF8))
            {
              v45 = v44;
              atomic_compare_exchange_strong_explicit(v55, &v45, 0, memory_order_release, memory_order_relaxed);
              v10 = 0x40000000000000;
              v20 = v45 == v44;
              v44 = v45;
              if (v20)
              {
                goto LABEL_42;
              }
            }

            v19 = *(v11 + 16);
            if (!v19)
            {
              v19 = _dispatch_wait_for_enqueuer((v11 + 16));
            }

            *(a1 + 104) = v19;
          }

          v10 = 0x40000000000000;
          goto LABEL_42;
        }
      }

      else if ((v13 & 2) != 0)
      {
        goto LABEL_18;
      }

      if (v10 == 0x40000000000000)
      {
        atomic_fetch_xor_explicit((a1 + 56), 0x40000000000000uLL, memory_order_release);
        v10 = *(a1 + 80) << 41;
      }

      else if (!v10)
      {
        if (v13 > 0xFFF || (v13 & 0x81) == 0)
        {
          while ((v12 & 0xFFE0018000000000) == 0)
          {
            v49 = v12;
            atomic_compare_exchange_strong_explicit((a1 + 56), &v49, v12 + 0x20000000000, memory_order_acquire, memory_order_acquire);
            v20 = v49 == v12;
            v12 = v49;
            if (v20)
            {
              v10 = 0x20000000000;
              goto LABEL_35;
            }
          }

LABEL_157:
          *a4 &= 0x4000000001uLL;
          *(StatusReg + 160) = v62;
          return;
        }

        v10 = 0x20000000000;
        atomic_fetch_add_explicit((a1 + 56), 0x20000000000uLL, memory_order_relaxed);
      }

LABEL_35:
      v19 = *(v11 + 16);
      *(a1 + 104) = v19;
      if (!v19)
      {
        v42 = *v55;
        while (v11 == (v42 & 0xFFFFFFFFFFFFFFF8))
        {
          v43 = v42;
          atomic_compare_exchange_strong_explicit(v55, &v43, 0, memory_order_release, memory_order_relaxed);
          v20 = v43 == v42;
          v42 = v43;
          if (v20)
          {
            goto LABEL_36;
          }
        }

        v19 = *(v11 + 16);
        if (!v19)
        {
          v19 = _dispatch_wait_for_enqueuer((v11 + 16));
        }

        *(a1 + 104) = v19;
      }

LABEL_36:
      if (*v11 <= 0xFFFuLL)
      {
        v20 = (*v11 & 0x81) == 0;
        *v11;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v10 -= 0x20000000000;
        _dispatch_non_barrier_waiter_redirect_or_wake(a1, v11);
        goto LABEL_105;
      }

      if ((v6 & 0x20000) != 0)
      {
        v10 -= 0x20000000000;
        _dispatch_continuation_redirect_push(a1, v11, *(a1 + 60) & 7);
        goto LABEL_105;
      }

LABEL_42:
      v21 = *(StatusReg + 192);
      if (v21)
      {
        (*v21)(a1);
      }

      v22 = *v11;
      if (*v11 < 0x1000uLL)
      {
        if ((v6 & 0x1000000) != 0)
        {
          context = objc_autoreleasePoolPush();
          v22 = *v11;
        }

        else
        {
          context = 0;
        }

        v24 = *(v11 + 24);
        if ((v22 & 4) != 0)
        {
          *(v11 + 24) = -1;
        }

        if (v24 != -1)
        {
          if (v24)
          {
            v25 = *(v24 + 32);
          }

          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }
        }

        v26 = *(v11 + 8);
        if (v26 == -1)
        {
          v29 = 0;
        }

        else
        {
          v27 = *(StatusReg + 200);
          if (((v27 >> 8) & 0xF) != 0)
          {
            v28 = 1 << ((BYTE1(v27) & 0xFu) + 7);
          }

          else
          {
            v28 = 0;
          }

          v29 = v28 | *(StatusReg + 200);
          if ((v26 & 0xFFFFFF) != 0)
          {
            if ((v26 & 0xFFFFFFuLL) >= (v28 & 0xFFFFFF00) && ((v27 & 0x44000000) != 0 || (*(v11 + 8) & 0x10000000) != 0))
            {
              v29 = v26 & 0xFFFFFF;
            }
          }

          else if (v27 >> 12)
          {
            v29 = (256 << ((v27 >> 12) - 1)) | 0xFF;
          }
        }

        v31 = v29 & 0x7FFFFFFF02FFFFFFLL;
        v32 = *(StatusReg + 32);
        if ((v32 & 0x1000000) != 0)
        {
          if (!v31)
          {
            v31 = v32 & 0xFFFFFFFFFEFFFFFFLL;
            goto LABEL_131;
          }

LABEL_142:
          _dispatch_set_priority_and_voucher_slow(v31, v24, v22 & 4 | 2);
        }

        else
        {
          if (v31 == (v32 & 0xFFFFFFFF76FFFFFFLL))
          {
            goto LABEL_74;
          }

LABEL_131:
          if (v31)
          {
            goto LABEL_142;
          }

LABEL_74:
          if (v24 != -1)
          {
            if (*(StatusReg + 224) != v24)
            {
              v31 = 0;
              goto LABEL_142;
            }

            if ((v22 & 4) != 0 && v24)
            {
              os_release(v24);
            }
          }
        }

        if ((v22 & 0x200) == 0)
        {
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_trace_item_pop_internal(a1, v11, v9);
          }

          _dispatch_introspection_queue_item_dequeue(a1, v11);
        }

        if ((v22 & 4) != 0)
        {
          v34 = *(StatusReg + 176);
          if (v34)
          {
            v35 = *(v34 + 8) + 1;
          }

          else
          {
            v35 = 1;
          }

          v33 = v11;
          if (v35 <= _dispatch_continuation_cache_limit)
          {
            v33 = 0;
            *(v11 + 16) = v34;
            *(v11 + 8) = v35;
            *(StatusReg + 176) = v11;
          }
        }

        else
        {
          v33 = 0;
        }

        v60 = v21;
        if ((v22 & 8) != 0)
        {
          v46 = *(**(v11 + 48) + 40);
          if (v46 != 514)
          {
            qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected object type";
            qword_6D1F0 = v46;
            __break(1u);
            return;
          }

          v47 = *(v11 + 40);
          v48 = *(v11 + 32);
          if (v47)
          {
            v48 = *(v11 + 32);
            if (v48 == _dispatch_call_block_and_release)
            {
              if (v47[2])
              {
                v48 = v47[2];
              }

              else
              {
                v48 = 0;
              }
            }
          }

          v53 = *(v11 + 32);
          group = *(v11 + 48);
          v40 = v10;
          v41 = v33;
          _dispatch_introspection_callout_entry(v47, v48);
          _dispatch_client_callout(v47, v53);
          _dispatch_introspection_callout_return(v47, v48);
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          _dispatch_introspection_queue_item_complete(v11);
          dispatch_group_leave(group);
          v4 = v59;
        }

        else
        {
          v36 = v6;
          v37 = *(v11 + 32);
          v38 = *(v11 + 40);
          v39 = v37;
          if (v38)
          {
            v39 = *(v11 + 32);
            if (v37 == _dispatch_call_block_and_release)
            {
              if (v38[2])
              {
                v39 = v38[2];
              }

              else
              {
                v39 = 0;
              }
            }
          }

          v40 = v10;
          v41 = v33;
          _dispatch_introspection_callout_entry(v38, v39);
          _dispatch_client_callout(v38, v37);
          _dispatch_introspection_callout_return(v38, v39);
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          _dispatch_introspection_queue_item_complete(v11);
          v6 = v36;
          v4 = v59;
        }

        if (v41)
        {
          _dispatch_continuation_free_to_cache_limit(v41);
        }

        v10 = v40;
        v21 = v60;
        if (context)
        {
          objc_autoreleasePoolPop(context);
        }

        goto LABEL_103;
      }

      v23.isa = *v11;
      if (*(v22 + 40) == 1)
      {
        (*(v22 + 48))(v11, 0, v57);
      }

      else
      {
        (*(v22 + 64))(v11, a2, v6 & 0xFFFF0000);
      }

LABEL_103:
      if (v21)
      {
        v21[1](a1);
      }

LABEL_105:
      v11 = v19;
      if (!v19)
      {
        if (!*v55)
        {
          v11 = 0;
          break;
        }

        v11 = *(a1 + 104);
        if (!v11)
        {
          v11 = _dispatch_wait_for_enqueuer((a1 + 104));
        }
      }

      if (*(StatusReg + 40))
      {
        _dispatch_return_to_kernel();
      }

      if (*(a1 + 80) != 1 && ((v6 & 0x4000000) != 0 || (*(StatusReg + 960) & 1) == 0) && ((v6 & 0x100000) == 0 || (*(*(StatusReg + 216) + 60) & 7u) <= *(*(StatusReg + 216) + 100)))
      {
        v12 = *(a1 + 56);
        if (!(v12 >> 55))
        {
          continue;
        }
      }

      break;
    }
  }

  if (v10 == 0x40000000000000)
  {
    v10 = (*(a1 + 80) << 41) + 0x40000000000000;
  }

  if (!v11)
  {
    *a4 = *a4 & 0x4000000001 | v10;
    *(StatusReg + 160) = v62;
    return;
  }

  v50 = *(a1 + 80);
  if (v50 >= 2)
  {
    v52.isa = *v11;
    if (*v11 < 0x1000uLL)
    {
      if ((v52.isa & 2) == 0)
      {
        goto LABEL_168;
      }
    }

    else if ((*(v52.isa + 5) & 0xF0) != 0x10 || (*(v11 + 80) & 0x80000) == 0)
    {
      goto LABEL_168;
    }

    v10 = v10 - (v50 << 41) + 0x10000000000;
  }

LABEL_168:
  *a4 = *a4 & 0x4000000001 | v10;
LABEL_169:
  *(StatusReg + 160) = v62;
  v51 = *(a1 + 24);
}

void _dispatch_workloop_bound_thread_init_once()
{
  v2 = 0;
  v1 = 4;
  v0 = sysctlbyname("kern.kern_event.thread_bound_kqwl_support_enabled", &v2, &v1, 0, 0);
  if (v0)
  {
    _dispatch_bug(4277, v0);
  }

  if (v2)
  {
    _dispatch_thread_bound_kqwl_enabled = 1;
  }
}

void _dispatch_workloop_activate_simulator_fallback(uint64_t a1, __int128 *a2)
{
  v3 = _dispatch_pthread_root_queue_create("com.apple.libdispatch.workloop_fallback", 0, a2, 0, 0);
  *(a1 + 24) = v3;
  if (LODWORD(v3[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&v3[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_release(v3);
  v4 = *(a1 + 56);
  v5 = v4;
  do
  {
    atomic_compare_exchange_strong_explicit((a1 + 56), &v5, v4 & 0xFFFFFFCFFFFFFFFFLL | 0x1000000000, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v4;
    v4 = v5;
  }

  while (!v6);
}

void _dispatch_queue_wakeup_with_override_slow(uint64_t a1, unint64_t a2, char a3)
{
  v5 = HIDWORD(a2) & 7;
  v6 = *(a1 + 24);
  if ((a2 & 0x1000000000) != 0)
  {
    if (v6 < &_dispatch_root_queues || v6 >= &_dispatch_queue_serial_numbers)
    {
      goto LABEL_41;
    }

    if (a2 >= 4)
    {
      _pthread_workqueue_override_start_direct_check_owner();
      goto LABEL_41;
    }

    goto LABEL_16;
  }

  if ((*(a1 + 80) & 0x400000) == 0)
  {
LABEL_16:
    v11 = 1;
    goto LABEL_17;
  }

  v7 = *(a1 + 100);
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC;
  do
  {
    v9 = v7;
    v10 = v7 | 2;
    if (v7 < 4)
    {
      v10 = v8;
    }

    atomic_compare_exchange_strong_explicit((a1 + 100), &v7, v10, memory_order_acquire, memory_order_acquire);
  }

  while (v7 != v9);
  if (v9 > 3)
  {
    _pthread_workqueue_override_start_direct_check_owner();
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    goto LABEL_41;
  }

  v6 = *(a1 + 24);
  if (MEMORY[0xFFFFFC100])
  {
    v20 = HIDWORD(a2) & 7;
    kdebug_trace();
    v5 = v20;
  }

  v11 = 0;
LABEL_17:
  v13 = (a1 + 100);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v15 = v5;
    if ((*(*v6 + 40) & 0x10000) != 0)
    {
      if (v5 > ((v6[21] >> 8) & 0xF))
      {
        _dispatch_root_queue_push_override_stealer(v6, a1, v5);
      }
    }

    else if (*(*v6 + 40) == 18)
    {
      _dispatch_workloop_push_stealer(v6, a1, v5);
    }

    else if ((v6[15] & 7) == 0 || (v6[15] & 7u) < v5)
    {
      (*(*v6 + 80))(v6, v5, 0);
    }

    if (v11)
    {
      break;
    }

    do
    {
      for (i = *v13; ; i = v19)
      {
        while ((i & 2) == 0)
        {
          v18 = i;
          atomic_compare_exchange_strong_explicit(v13, &v18, 0, memory_order_release, memory_order_relaxed);
          if (v18 == i)
          {
            if (i)
            {
              _dispatch_unfair_lock_unlock_slow(a1 + 100, i);
            }

            goto LABEL_41;
          }

          i = v18;
        }

        v19 = i;
        atomic_compare_exchange_strong_explicit(v13, &v19, i & 0xFFFFFFFD, memory_order_release, memory_order_relaxed);
        if (v19 == i)
        {
          break;
        }
      }

      if ((i & 0xFFFFFFFD) == 0)
      {
        goto LABEL_41;
      }

      __dmb(9u);
      if ((*(StatusReg + 200) & 0xF0000) == 0)
      {
        *(StatusReg + 200) = *(StatusReg + 200) & 0xFFF0FFFFLL | 0x10000;
      }

      v5 = *(a1 + 60) & 7;
    }

    while ((*(a1 + 60) & 7u) <= v15);
  }

LABEL_41:
  if (a3)
  {

    _os_object_release_internal_n(a1, &dword_0 + 2);
  }
}

void _dispatch_root_queue_push_override_stealer(int *a1, uint64_t a2, unsigned int a3)
{
  if (a3 - 7 <= 0xFFFFFFF9)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_6D1F0 = a3;
    __break(1u);
LABEL_15:
    v10 = _dispatch_continuation_alloc_from_heap();
    goto LABEL_10;
  }

  v3 = a2;
  v4 = a1;
  v8 = a1[21];
  if (v8 < 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = (v8 >> 25) & 4;
  }

  if ((v9 & 2) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (v9 > 3);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = *(StatusReg + 176);
  if (!v10)
  {
    goto LABEL_15;
  }

  *(StatusReg + 176) = v10->cache;
LABEL_10:
  v10->isa = &unk_64798;
  if (*(v3 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((v3 + 8), 2u, memory_order_relaxed) > 0)
  {
    v11 = &_dispatch_root_queues + 16 * (3 * a3 + v6 - 3);
    v10[1].superclass = v3;
    v10[1].cache = v4;
    v10->info = 0;
    v10[1].isa = v10;
    v10->superclass = -1;
    v10->vtable = -1;
    v10->cache = 0;
    *(StatusReg + 976) = v11 + 6;
    v12 = atomic_exchange_explicit(v11 + 6, v10, memory_order_release);
    if (v12)
    {
      *(v12 + 16) = v10;
      *(StatusReg + 976) = 0;
    }

    else
    {
      v11[13] = v10;
      *(StatusReg + 976) = 0;

      _dispatch_root_queue_poke_and_wakeup(&_dispatch_root_queues + 32 * (3 * a3 + v6 - 3), 1, 0);
    }
  }

  else
  {
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }
}

void *_dispatch_workloop_push_stealer(void *result, uint64_t a2, unsigned int a3)
{
  v5 = result;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 176);
  if (v7)
  {
    *(StatusReg + 176) = v7[2];
  }

  else
  {
    result = _dispatch_continuation_alloc_from_heap();
    v7 = result;
  }

  *v7 = &unk_64750;
  if (*(a2 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a2 + 8), 2u, memory_order_relaxed) > 0)
  {
    v7[6] = a2;
    v7[7] = 0;
    v7[4] = 0;
    v7[5] = v7;
    v7[1] = -1;
    v7[3] = -1;

    return _dispatch_workloop_push(v5, v7, a3);
  }

  else
  {
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }

  return result;
}

atomic_ullong *_dispatch_lane_drain_non_barriers(atomic_ullong *result, uint64_t a2, char a3, int8x16_t a4)
{
  v5 = result;
  v6 = *(result + 40);
  atomic_fetch_and_explicit(result + 7, 0xFFBFFFFFFFFFFFFFLL, memory_order_release);
  v7 = result + 6;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    if (v6)
    {
      --v6;
      goto LABEL_4;
    }

    if (*a2 > 0xFFFuLL || (*a2 & 0x81) == 0)
    {
      break;
    }

    v6 = 0;
    atomic_fetch_add_explicit((v5 + 56), 0x20000000000uLL, memory_order_relaxed);
LABEL_4:
    v9 = *(a2 + 16);
    *(v5 + 104) = v9;
    if (!v9)
    {
      v27 = *v7;
      while (a2 == (v27 & 0xFFFFFFFFFFFFFFF8))
      {
        v28 = v27;
        atomic_compare_exchange_strong_explicit(v7, &v28, 0, memory_order_release, memory_order_relaxed);
        v10 = v28 == v27;
        v27 = v28;
        if (v10)
        {
          goto LABEL_5;
        }
      }

      v34 = a2;
      v9 = *(a2 + 16);
      if (!v9)
      {
        v9 = _dispatch_wait_for_enqueuer((a2 + 16));
      }

      *(v5 + 104) = v9;
      a2 = v34;
    }

LABEL_5:
    v10 = *a2 > 0xFFFuLL || (*a2 & 0x81) == 0;
    if (v10)
    {
      result = _dispatch_continuation_redirect_push(v5, a2, *(v5 + 60) & 7);
    }

    else
    {
      result = _dispatch_non_barrier_waiter_redirect_or_wake(v5, a2);
    }

    a2 = v9;
    if (!v9)
    {
      goto LABEL_17;
    }

LABEL_12:
    v11 = *a2;
    if (*a2 <= 0xFFFuLL)
    {
      if ((v11 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else if ((*(v11 + 40) & 0xF0) == 0x10 && (*(a2 + 80) & 0x80000) != 0)
    {
      goto LABEL_17;
    }
  }

  v25 = *(v5 + 56);
  while ((v25 & 0xFFE0018000000000) == 0)
  {
    v26 = v25;
    atomic_compare_exchange_strong_explicit((v5 + 56), &v26, v25 + 0x20000000000, memory_order_acquire, memory_order_acquire);
    v10 = v26 == v25;
    v25 = v26;
    if (v10)
    {
      v6 = 0;
      goto LABEL_4;
    }
  }

  v6 = 0;
LABEL_17:
  v12 = *(StatusReg + 24) & 0xFFFFFFFCLL;
  v13 = v6 << 41;
  if (a2)
  {
    v14 = *(v5 + 80);
    if (v14 >= 2)
    {
      v29 = *a2;
      if (*a2 < 0x1000uLL)
      {
        if ((v29 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else if ((*(v29 + 40) & 0xF0) != 0x10 || (*(a2 + 80) & 0x80000) == 0)
      {
        goto LABEL_19;
      }

      v13 = (v13 | 0x10000000000) - (v14 << 41);
    }
  }

LABEL_19:
  v15 = *(v5 + 56);
  do
  {
    v16 = v15 - v13;
    v17 = (v15 - v13) & 0xFFFFFF7700000001;
    if (a2)
    {
      if ((v16 & 0x10000000000) != 0)
      {
        v19 = v17 + 0x40018000000000;
      }

      else
      {
        v19 = v17 + (*(v5 + 80) << 41) + 0x40008000000000;
      }

      v20 = v19 & 0x3FFE0000000000;
      v21 = 0x8000000000;
      if ((v15 & 0x8000000000) != 0)
      {
        v21 = 0x8000000001;
      }

      v22 = v17 | v21;
      v23 = v19 & 0xFFE0017FFFFFFFFFLL | v12;
      if (v20 == 0x20000000000000)
      {
        v17 = v23;
      }

      else
      {
        v17 = v22;
      }
    }

    else if ((v15 & 0x8000000000) != 0)
    {
      atomic_fetch_xor_explicit((v5 + 56), 0x8000000000uLL, memory_order_acquire);
      a2 = *(v5 + 104);
      if (a2)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    v18 = v15;
    atomic_compare_exchange_strong_explicit((v5 + 56), &v18, v17, memory_order_relaxed, memory_order_relaxed);
    v10 = v18 == v15;
    v15 = v18;
  }

  while (!v10);
  if ((~v16 & 0x1800000000) == 0)
  {
    v30 = HIDWORD(v16) & 7;
    v31 = *(StatusReg + 200);
    if ((HIWORD(v31) & 0xF) < v30)
    {
      *(StatusReg + 200) = v31 & 0xFFF0FFFF | (v30 << 16);
    }
  }

  if (((v17 ^ v16) & 0x40000000000000) != 0)
  {

    return _dispatch_lane_barrier_complete(v5);
  }

  else if ((v17 ^ v16))
  {
    if ((a3 & 1) != 0 || *(v5 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((v5 + 8), 2u, memory_order_relaxed) > 0)
    {
      v32 = *(v5 + 24);
      if (MEMORY[0xFFFFFC100])
      {
        _dispatch_trace_item_push_internal(*(v5 + 24), v5, a4);
      }

      _dispatch_introspection_queue_item_enqueue(v32, v5);
      v33 = *(**(v5 + 24) + 88);

      return v33();
    }

    else
    {
      qword_6D1C0 = "API MISUSE: Resurrection of an object";
      __break(1u);
    }
  }

  else if (a3)
  {

    return _os_object_release_internal_n(v5, &dword_0 + 2);
  }

  return result;
}