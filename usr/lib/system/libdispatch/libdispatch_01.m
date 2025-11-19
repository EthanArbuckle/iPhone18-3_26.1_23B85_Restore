uint64_t _dispatch_workloop_barrier_complete(uint64_t result, uint64_t a2, int a3)
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
  while (1)
  {
    if ((~v12 & 0x2000000002) == 0 && (v12 & 0x800000001) != 0)
    {
      v19 = v5;
      result = _dispatch_event_loop_ensure_ownership(v4);
      v5 = v19;
      atomic_fetch_and_explicit((v4 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_15;
    }

    v14 = (v12 & 0x700000000) >= v6 ? v12 : v12 & 0xFFFFFFF000000001 | v6;
    v15 = (v14 & 0xFFFFFFF700000001) - 0x40020000000000;
    if (v5)
    {
      break;
    }

    if ((v12 & 0x8000000000) != 0)
    {
      atomic_fetch_xor_explicit((v4 + 56), 0x8000000000uLL, memory_order_acquire);
      goto LABEL_2;
    }

    if ((v12 & 0x2000000000) != 0)
    {
      v16 = v15 & 0xFFFFFFF000000000;
      v17 = v12;
      atomic_compare_exchange_strong_explicit((v4 + 56), &v17, v16, memory_order_release, memory_order_relaxed);
      if (v17 == v12)
      {
        goto LABEL_50;
      }

LABEL_30:
      v12 = v17;
    }

    else
    {
      v16 = v15 & 0xFFFFFFF000000001;
      v18 = v12;
      atomic_compare_exchange_strong_explicit((v4 + 56), &v18, v16, memory_order_release, memory_order_relaxed);
      if (v18 == v12)
      {
        goto LABEL_41;
      }

      v12 = v18;
    }
  }

  v16 = v15 | 1;
  v17 = v12;
  atomic_compare_exchange_strong_explicit((v4 + 56), &v17, v16, memory_order_release, memory_order_relaxed);
  if (v17 != v12)
  {
    goto LABEL_30;
  }

  if ((v12 & 0x2000000000) == 0)
  {
LABEL_41:
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    if ((~v12 & 0x1800000000) == 0)
    {
      v21 = HIDWORD(v12) & 7;
      v22 = *(StatusReg + 200);
      if ((HIWORD(v22) & 0xF) < v21)
      {
        *(StatusReg + 200) = v22 & 0xFFF0FFFF | (v21 << 16);
      }
    }

    if (v5)
    {
      if ((v16 ^ v12))
      {
        if ((v16 & 0x2000000000) == 0)
        {
          return _dispatch_workloop_wakeup_cold_1(v4, v16);
        }

        return _dispatch_event_loop_poke(v4, v16, 1);
      }

      result = _dispatch_workloop_barrier_complete_cold_3(v16, v4, a3);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    goto LABEL_52;
  }

LABEL_50:
  if ((v12 & 3) == 2 && (v16 & 1) == 0)
  {
LABEL_52:
    if (a3)
    {

      return _os_object_release_internal_n(v4, 2);
    }

    return result;
  }

  return _dispatch_event_loop_end_ownership(v4, v12, v16, a3);
}

void *_dispatch_workloop_push(void *result, void *a2, unsigned int a3)
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

  v4 = *(result + 21);
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
  *(StatusReg + 976) = &result[v6 + 18];
  v8 = atomic_exchange_explicit(&result[v6 + 18], a2, memory_order_release);
  if (v8)
  {
    *(v8 + 16) = a2;
    *(StatusReg + 976) = 0;
  }

  else
  {
    atomic_fetch_add_explicit(result + 2, 2u, memory_order_relaxed);
    result[v6 + 12] = a2;
    *(StatusReg + 976) = 0;
    return _dispatch_workloop_wakeup();
  }

  return result;
}

void *_dispatch_workloop_push_waiter(void *result, unint64_t a2, unsigned int a3)
{
  v3 = __clz(__rbit32((*(a2 + 8) >> 8) & 0x3FFF));
  if (((*(a2 + 8) >> 8) & 0x3FFF) != 0)
  {
    LODWORD(v4) = v3 + 1;
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 <= a3)
  {
    LODWORD(v4) = a3;
  }

  if (v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 4;
  }

  *(a2 + 16) = 0;
  v5 = &result[v4 + 18];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = v5;
  v7 = atomic_exchange_explicit(v5, a2, memory_order_release);
  if (v7)
  {
    *(v7 + 16) = a2;
    *(StatusReg + 976) = 0;
    return result;
  }

  v8 = &result[v4 - 1];
  v8[13] = a2;
  *(StatusReg + 976) = 0;
  v9 = *a2;
  if ((*a2 & 0x80) != 0 && ((v10 = result[3], v10 < &_dispatch_root_queues) || v10 >= &_dispatch_queue_serial_numbers))
  {
    *(a2 + 56) = result;
    *a2 = v9 & 0xFFFFFFFFFFFFFF7FLL;
    atomic_fetch_add_explicit(result + 2, 2u, memory_order_relaxed);

    return _dispatch_workloop_wakeup();
  }

  else
  {
    v11 = result[7];
    v12 = v4 << 32;
    v13 = *(StatusReg + 24) & 0xFFFFFFFCLL | 0x60000000000002;
    do
    {
      v14 = v11;
      v15 = v11 & 0xFFFFFFF8FFFFFFFFLL | v12;
      if (v11 & 0x1000000000 | v12 & 0x1000000000)
      {
        v15 |= 0x800000000uLL;
      }

      if ((v11 & 0x700000000) < v12)
      {
        v16 = v15;
      }

      else
      {
        v16 = v11;
      }

      v17 = v16 | 0x8000000000;
      v18 = v13 | v16 & 0x7700000001;
      if ((v11 & 0x40FFFFFFFDLL) != 0)
      {
        v18 = v17;
      }

      atomic_compare_exchange_strong_explicit(result + 7, &v11, v18, memory_order_release, memory_order_relaxed);
    }

    while (v11 != v14);
    if ((v18 & 0x2000000000) != 0 && *(a2 + 48) != -4)
    {
      *(a2 + 106) = *(a2 + 106) & 0xFB | (4 * (*(a2 + 100) == *(StatusReg + 24)));
    }

    if (((v18 ^ v14) & 0x40000000000000) != 0)
    {
      if ((*(a2 + 106) & 4) == 0)
      {
        goto LABEL_40;
      }

      v19 = v8[13];
      if (!v19)
      {
        v25 = a2;
        v26 = result;
        v27 = &result[v4 + 18];
        v29 = &result[v4 - 1];
        v24 = _dispatch_wait_for_enqueuer(v8 + 13);
        v5 = v27;
        v8 = v29;
        a2 = v25;
        v19 = v24;
        result = v26;
      }

      if (v19 == a2)
      {
        v28 = v8;
        *(a2 + 106) |= 8u;
        if ((*a2 & 0x80) != 0)
        {
          *(a2 + 56) = result;
        }

        v20 = *(a2 + 16);
        v28[13] = v20;
        if (!v20)
        {
          v21 = *v5;
          while ((v21 & 0xFFFFFFFFFFFFFFF8) == a2)
          {
            v22 = v21;
            atomic_compare_exchange_strong_explicit(v5, &v22, 0, memory_order_release, memory_order_relaxed);
            v23 = v22 == v21;
            v21 = v22;
            if (v23)
            {
              return result;
            }
          }

          result = *(a2 + 16);
          if (!result)
          {
            result = _dispatch_wait_for_enqueuer((a2 + 16));
          }

          v28[13] = result;
        }
      }

      else
      {
LABEL_40:

        return _dispatch_workloop_barrier_complete();
      }
    }

    else
    {
      if (((v18 ^ v14) & 0x700000000) == 0 || (v18 & 0xFF80004000000000) != 0)
      {
        return result;
      }

      if ((v18 & 1) == 0)
      {
        if ((v18 & 0x2000000000) != 0 || (v18 & 0xFFFFFFFC) == 0)
        {
          return result;
        }

        goto LABEL_33;
      }

      if ((v18 & 0x2000000000) == 0)
      {
LABEL_33:

        return _dispatch_queue_wakeup_with_override_slow();
      }

      return _dispatch_event_loop_poke(result, v18, 0x80000000);
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
    v5 = (256 << qword_1BB5812A0[v3]) | 0xFF;
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
    v3 = dword_1BB5812E0[v1];
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 200);
  if ((HIWORD(v5) & 0xF) < v3)
  {
    *(StatusReg + 200) = v5 & 0xFFF0FFFF | (v3 << 16);
  }

  return 0;
}

void _dispatch_queue_wakeup(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a4 && (a3 & 1) == 0)
  {
    if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) <= 0)
    {
      qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
      __break(1u);
      return;
    }

    a3 |= 1u;
  }

  if ((a3 & 4) != 0)
  {
    v28 = *(a1 + 84);
    v29 = v28 >> 12;
    if (a2)
    {
      v29 = a2;
    }

    v30 = (v28 >> 8) & 0xF;
    if (v29 <= v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = v29;
    }

    _dispatch_lane_class_barrier_complete(a1, v31, a3, a4, 0x40020000000000);
    return;
  }

  if (!a4)
  {
    if (!a2)
    {
      goto LABEL_72;
    }

    v20 = *(a1 + 56);
    v21 = a2 << 32;
    do
    {
      if ((v20 & 0x40FFFFFFFDLL) == 0)
      {
        goto LABEL_72;
      }

      v22 = v20;
      v23 = v20 & 0x700000000;
      v24 = v22 & 0xFFFFFFF8FFFFFFFFLL | v21;
      if (v22 & 0x1000000000 | v21 & 0x1000000000)
      {
        v24 |= 0x800000000uLL;
      }

      v25 = v23 < v21 ? v24 : v22;
      v26 = (v22 & 0xFF80002000000000) == 0x2000000000 && ((v22 & 0x4000000000) == 0);
      v18 = v25 | v26;
      if ((v25 | v26) == v22)
      {
        goto LABEL_72;
      }

      v20 = v22;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v20, v18, memory_order_relaxed, memory_order_relaxed);
    }

    while (v20 != v22);
    v19 = v18 ^ v22;
    v4 = 1;
    if (a3 & 1) == 0 && (v19)
    {
      if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) <= 0)
      {
        qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
        __break(1u);
        goto LABEL_78;
      }

      a3 |= 1u;
      v4 = 1;
    }

    a4 = 1;
    goto LABEL_59;
  }

  v4 = 0x4000000000;
  if (a4 != &_dispatch_mgr_q)
  {
    v4 = 1;
  }

  v5 = *(a1 + 84);
  v6 = v5 >> 12;
  if (a2)
  {
    v6 = a2;
  }

  LODWORD(v7) = (v5 >> 8) & 0xF;
  if (v6 <= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a1 + 56);
  v9 = v7 << 32;
  do
  {
    v10 = v8;
    v11 = v8 & 0x700000000;
    v12 = v10 & 0xFFFFFFF8FFFFFFFFLL | v9;
    if (v10 & 0x1000000000 | v9 & 0x1000000000)
    {
      v12 |= 0x800000000uLL;
    }

    if (v11 < v9)
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    if ((v10 & 0x180000000000000) == 0x80000000000000)
    {
      v14 = v13 & 0xFF7FFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if ((a3 & 0x20) != 0)
    {
      v13 = v14;
    }

    v15 = ((v10 & 0xFFFFFFFC) == 0) << 38;
    if (a4 != &_dispatch_mgr_q)
    {
      v15 = 1;
    }

    v16 = v13 | v15;
    if (v13 >> 55)
    {
      v17 = v13;
    }

    else
    {
      v17 = v16;
    }

    if ((v10 & 0x4000000001) != 0)
    {
      v18 = v13;
    }

    else
    {
      v18 = v17;
    }

    if ((a3 & 2) != 0)
    {
      v18 |= 0x8000000000uLL;
    }

    else if (v18 == v10)
    {
      goto LABEL_72;
    }

    v8 = v10;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v8, v18, memory_order_release, memory_order_relaxed);
  }

  while (v8 != v10);
  v19 = v10 ^ v18;
LABEL_59:
  if ((v19 & v4) != 0)
  {
    if (a4 == 1)
    {
      a4 = *(a1 + 24);
    }

    if ((v18 & 0x2000000000) != 0)
    {
      v27 = 1;
LABEL_64:
      _dispatch_event_loop_poke(a1, v18, v27);
      return;
    }

    (*(*a4 + 88))(a4, a1, HIDWORD(v18) & 7);
    return;
  }

  if ((v19 & 0x700000000) == 0)
  {
LABEL_72:
    if (a3)
    {
      _os_object_release_internal_n(a1, 2);
    }

    return;
  }

LABEL_78:
  if ((v18 & 0xFF80004000000000) != 0 || (v18 & 0xFFFFFFFD) == 0)
  {
    goto LABEL_72;
  }

  if ((v18 & 0x2000000000) != 0)
  {
    v27 = a3 | 0x80000000;
    goto LABEL_64;
  }

  _dispatch_queue_wakeup_with_override_slow(a1, v18, a3);
}

void _dispatch_lane_class_barrier_complete(atomic_ullong *a1, atomic_ullong *a2, int a3, __objc2_class **a4, uint64_t a5)
{
  if (a4 == &_dispatch_mgr_q)
  {
    v10 = 0;
    v11 = 0x4000000000;
    v9 = &_dispatch_mgr_q;
  }

  else
  {
    v9 = a4;
    if (a4)
    {
      v10 = 0;
      if (a4 == 1)
      {
        v9 = a1[3];
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
      v10 = 1;
    }
  }

  v12 = a2 << 32;
LABEL_9:
  v13 = a1[7];
  do
  {
    if ((~v13 & 0x2000000002) == 0 && (v13 & 0x800000001) != 0)
    {
      v31 = a3;
      _dispatch_event_loop_ensure_ownership(a1);
      a3 = v31;
      atomic_fetch_and_explicit(a1 + 7, 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_9;
    }

    v14 = v13 - a5;
    if (((v13 - a5) & 0x700000000) >= v12)
    {
      v15 = v13 - a5;
    }

    else
    {
      v15 = (v13 - a5) & 0xFFFFFFF8FFFFFFFFLL | v12;
    }

    v16 = v15 & 0xFFFFFFF700000001;
    if (v13 >> 55)
    {
      v17 = v15 & 0xFFFFFFF700000000;
      if ((v13 & 0x2000000000) == 0)
      {
        v17 = v16;
      }
    }

    else if (v10)
    {
      if ((v13 & 0x8000000000) != 0)
      {
        atomic_fetch_xor_explicit(a1 + 7, 0x8000000000uLL, memory_order_acquire);
        superclass = *(*a1 + 80);
        v28 = a3 | 4u;
        v29 = a1;
        v30 = a2;

        goto LABEL_52;
      }

      v17 = v15 & 0xFFFFFFF000000001;
    }

    else
    {
      if ((v13 & 0x4000000001) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = v11;
      }

      v17 = v16 | v18;
    }

    v19 = v13;
    atomic_compare_exchange_strong_explicit(a1 + 7, &v19, v17, memory_order_release, memory_order_relaxed);
    v20 = v19 == v13;
    v13 = v19;
  }

  while (!v20);
  if ((v14 & 0x2000000000) != 0)
  {
    if (v14 & 2) == 0 || ((v17 | v14))
    {

      _dispatch_event_loop_end_ownership(a1, v14, v17, a3);
      return;
    }

LABEL_42:
    if (a3)
    {

      _os_object_release_internal_n(a1, 2);
    }

    return;
  }

  if ((~v14 & 0x1800000000) == 0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = HIDWORD(v14) & 7;
    v23 = *(StatusReg + 200);
    if ((HIWORD(v23) & 0xF) < v22)
    {
      *(StatusReg + 200) = v23 & 0xFFF0FFFF | (v22 << 16);
    }
  }

  if (!v9)
  {
    goto LABEL_42;
  }

  if (((v17 ^ v14) & v11) != 0)
  {
    if ((v17 & 0x2000000000) != 0)
    {
      v24 = a1;
      v25 = v17;
      v26 = 1;
      goto LABEL_37;
    }

    superclass = (*v9)[2].superclass;
    v28 = HIDWORD(v17) & 7;
    v29 = v9;
    v30 = a1;

LABEL_52:
    (superclass)(v29, v30, v28);
    return;
  }

  if ((v17 & 0xFF80004000000000) != 0 || (v17 & 0xFFFFFFFD) == 0)
  {
    goto LABEL_42;
  }

  if ((v17 & 0x2000000000) != 0)
  {
    v26 = a3 | 0x80000000;
    v24 = a1;
    v25 = v17;
LABEL_37:

    _dispatch_event_loop_poke(v24, v25, v26);
  }

  else
  {

    _dispatch_queue_wakeup_with_override_slow(a1, v17, a3);
  }
}

void _dispatch_lane_wakeup(uint64_t a1, atomic_ullong *a2, uint64_t a3)
{
  if ((a3 & 4) != 0)
  {
    _dispatch_lane_barrier_complete(a1, a2, a3);
  }

  else
  {
    _dispatch_queue_wakeup(a1, a2, a3, *(a1 + 48) != 0);
  }
}

void _dispatch_lane_barrier_complete(uint64_t a1, atomic_ullong *a2, uint64_t a3)
{
  if (!*(a1 + 48) || *(a1 + 56) >> 55)
  {
    v6 = 0;
LABEL_33:
    v10 = (*(a1 + 80) << 41) + 0x40000000000000;

    _dispatch_lane_class_barrier_complete(a1, a2, a3, v6, v10);
    return;
  }

  v7 = *(a1 + 104);
  if (!v7)
  {
    v7 = _dispatch_wait_for_enqueuer((a1 + 104));
  }

  v8 = *v7;
  if (*(a1 + 80) == 1)
  {
    if (v8 <= 0xFFF && (*v7 & 0x81) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  if (v8 < 0x1000)
  {
    if ((v8 & 2) != 0)
    {
      if ((v8 & 0x81) != 0)
      {
LABEL_21:

        _dispatch_lane_drain_barrier_waiter(a1, v7, a3, 0);
        return;
      }

LABEL_28:
      if ((a3 & 1) == 0)
      {
        if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) <= 0)
        {
          qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
          __break(1u);
          return;
        }

        LODWORD(a3) = a3 | 1;
      }

      v6 = 1;
      goto LABEL_33;
    }
  }

  else if ((*(v8 + 40) & 0xF0) == 0x10)
  {
    if ((*(v7 + 80) & 0x80000) != 0 || !*(a1 + 80) || (*(v7 + 80) & 0x80000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (!*(a1 + 80))
  {
    goto LABEL_28;
  }

LABEL_25:

  _dispatch_lane_drain_non_barriers(a1, v7, a3);
}

void _dispatch_lane_push(uint64_t a1, void *a2, unsigned int a3)
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
    _dispatch_lane_push_waiter(a1, a2, a3);
    return;
  }

  v4 = *(a1 + 8);
  if (((*(a1 + 84) >> 8) & 0xFu) >= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  a2[2] = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = a1 + 48;
  v7 = atomic_exchange_explicit((a1 + 48), a2, memory_order_release);
  if (v7)
  {
    if ((*(a1 + 60) & 7) != 0 && (*(a1 + 60) & 7u) >= v5)
    {
      *(v7 + 16) = a2;
      *(StatusReg + 976) = 0;
      return;
    }

    atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed);
    v9 = (v7 + 16);
    v10 = 1;
  }

  else
  {
    atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed);
    v9 = (a1 + 104);
    v10 = 3;
  }

  *v9 = a2;
  *(StatusReg + 976) = 0;
  (*(*a1 + 80))(a1, v5, v10);
}

void _dispatch_lane_push_waiter(void *a1, unint64_t a2, unsigned int a3)
{
  if (*(a2 + 48) == -4)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  *(a2 + 16) = 0;
  v4 = a1 + 6;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = a1 + 6;
  v6 = atomic_exchange_explicit(a1 + 6, a2, memory_order_release);
  if (v6)
  {
    *(v6 + 16) = a2;
    *(StatusReg + 976) = 0;
    if (v3)
    {
      v10 = a1[7];
      v11 = v3 << 32;
      while (1)
      {
        v12 = v10 & 0xFFFFFFF8FFFFFFFFLL | v11;
        if (v10 & 0x1000000000 | v11 & 0x1000000000)
        {
          v12 |= 0x800000000uLL;
        }

        v13 = (v10 & 0x700000000) < v11 ? v12 : v10;
        if (v10 == v13)
        {
          break;
        }

        v14 = v10;
        atomic_compare_exchange_strong_explicit(a1 + 7, &v14, v13, memory_order_relaxed, memory_order_relaxed);
        v15 = v14 == v10;
        v10 = v14;
        if (v15)
        {
          if ((v13 & 0xFF80004000000000) != 0)
          {
            return;
          }

          if (v13)
          {
            if ((v13 & 0x2000000000) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_59;
          }

          if ((v13 & 0x2000000000) != 0 || (v13 & 0xFFFFFFFC) == 0)
          {
            return;
          }

          goto LABEL_24;
        }
      }
    }

    return;
  }

  a1[13] = a2;
  *(StatusReg + 976) = 0;
  v7 = *(a1 + 20);
  if ((v7 & 0x40000) != 0)
  {
    v7 = *(a1 + 20);
    if ((v7 & 0x1000000) == 0)
    {
      v8 = *a2;
      goto LABEL_70;
    }
  }

  v8 = *a2;
  if ((*a2 & 0x80) != 0)
  {
    v9 = a1[7];
    v7 = *(a1 + 20);
    if ((v7 & 0x1000000) == 0)
    {
      if ((v9 & 0x3000000000) == 0)
      {
        goto LABEL_31;
      }

      v16 = a1[3];
      if (v16 >= &_dispatch_root_queues && v16 < &_dispatch_queue_serial_numbers)
      {
        goto LABEL_31;
      }
    }

LABEL_70:
    *a2 = v8 & 0xFFFFFFFFFFFFFF7FLL;
    *(a2 + 56) = a1;
    v27 = *(*a1 + 80);

    v27();
    return;
  }

  v9 = a1[7];
LABEL_31:
  v17 = (v7 << 41) - 0x20000000000;
  v18 = v3 << 32;
  v19 = *(StatusReg + 24) & 0xFFFFFFFCLL | 0x60000000000002;
  do
  {
    v20 = v9;
    v21 = v9 & 0x700000000;
    v22 = v9 & 0xFFFFFFF8FFFFFFFFLL | v18;
    if ((v22 & 0x1000000000) != 0)
    {
      v22 |= 0x800000000uLL;
    }

    if (v21 >= v18)
    {
      v22 = v20;
    }

    v23 = v22 | 0x8000000000;
    if ((v20 & 0xFFE00000FFFFFFFCLL) == 0 && ((v20 & 0x2000000000) == 0 || (v20 & 0x4000000001) == 0) && ((v20 & 0x10000000000) != 0 || !((v17 + v22) >> 53)))
    {
      v23 = v19 | v22 & 0x7700000001;
    }

    v9 = v20;
    atomic_compare_exchange_strong_explicit(a1 + 7, &v9, v23, memory_order_release, memory_order_relaxed);
  }

  while (v9 != v20);
  if ((v20 & 0x2000000000) != 0 && *(a2 + 48) != -4)
  {
    *(a2 + 106) = *(a2 + 106) & 0xFB | (4 * (*(a2 + 100) == *(StatusReg + 24)));
  }

  if (((v23 ^ v20) & 0x40000000000000) != 0)
  {
    if ((*(a2 + 106) & 4) != 0 && a1[13] == a2)
    {
      *(a2 + 106) |= 8u;
      if ((*a2 & 0x80) != 0)
      {
        *(a2 + 56) = a1;
      }

      v24 = *(a2 + 16);
      a1[13] = v24;
      if (!v24)
      {
        v25 = *v4;
        while ((v25 & 0xFFFFFFFFFFFFFFF8) == a2)
        {
          v26 = v25;
          atomic_compare_exchange_strong_explicit(v4, &v26, 0, memory_order_release, memory_order_relaxed);
          v15 = v26 == v25;
          v25 = v26;
          if (v15)
          {
            return;
          }
        }

        v28 = *(a2 + 16);
        if (!v28)
        {
          v28 = _dispatch_wait_for_enqueuer((a2 + 16));
        }

        a1[13] = v28;
      }
    }

    else
    {

      _dispatch_lane_barrier_complete(a1, v3, 0);
    }
  }

  else
  {
    if (((v23 ^ v20) & 0x700000000) == 0 || (v23 & 0xFF80004000000000) != 0)
    {
      return;
    }

    if (v23)
    {
      if ((v23 & 0x2000000000) != 0)
      {
        v13 = v23;
LABEL_59:

        _dispatch_event_loop_poke(a1, v13, 0x80000000);
        return;
      }
    }

    else if ((v23 & 0x2000000000) != 0 || (v23 & 0xFFFFFFFC) == 0)
    {
      return;
    }

    v13 = v23;
LABEL_24:

    _dispatch_queue_wakeup_with_override_slow(a1, v13, 0);
  }
}

void _dispatch_lane_concurrent_push(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if ((*(a1 + 87) & 8) != 0 && *a2 >= 0x1000uLL && *(*a2 + 40) != 1 && (*(*a2 + 40) != 19 || (_dispatch_source_is_timer(a2) & 1) == 0))
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
    qword_1EBC5B9B0 = a2;
    __break(1u);
    return;
  }

  if (!*(a1 + 48))
  {
    v6 = *a2;
    if (*a2 <= 0xFFFuLL)
    {
      if ((v6 & 0x83) != 0)
      {
        goto LABEL_7;
      }
    }

    else if ((*(v6 + 40) & 0xF0) == 0x10 && (a2[20] & 0x80000) != 0)
    {
      goto LABEL_7;
    }

    v7 = *(a1 + 56);
    while ((v7 & 0xFFE0018000000000) == 0)
    {
      v8 = v7;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v8, v7 + 0x20000000000, memory_order_acquire, memory_order_acquire);
      v9 = v8 == v7;
      v7 = v8;
      if (v9)
      {

        _dispatch_continuation_redirect_push(a1, a2, a3);
        return;
      }
    }
  }

LABEL_7:

  _dispatch_lane_push(a1, a2, a3);
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
    *v7 = &unk_1F3A43428;
    v7[4] = 0;
    v7[5] = (v5[20] << 8) & 0x3000000;
    v7[6] = v5;
    v7[7] = a2;
    v7[3] = -1;
    v7[1] = -1;
    if (v5[2] != 0x7FFFFFFF && atomic_fetch_add_explicit(v5 + 2, 2u, memory_order_relaxed) <= 0)
    {
      qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
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
    v8 = dword_1BB5812E0[v6];
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

void *_dispatch_channel_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  if ((a3 & 3) == 0)
  {
    *(a1 + 16) = -1985229329;
  }

  v100 = a3;
  if ((a3 & 2) != 0)
  {
    v6 = a3 & 0x40000;
    v7 = 0x40020000000001;
    goto LABEL_5;
  }

  v73 = *(a1 + 80);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v76 = *(StatusReg + 24);
  v75 = (StatusReg + 24);
  v77 = (v73 << 41) - 0x20000000000;
  v78 = v76 & 0xFFFFFFFC;
  v6 = a3 & 0x40000;
  if ((a3 & 0x40000) != 0)
  {
    v79 = 0x4000000000;
  }

  else
  {
    v79 = 1;
  }

  v80 = 0xFFE00000FFFFFFFCLL;
  if ((a3 & 0x40000) == 0)
  {
    v80 = 0xFFE00040FFFFFFFCLL;
  }

  if (a3)
  {
    v81 = 0xFFE00040FFFFFFFCLL;
  }

  else
  {
    v81 = v80;
  }

  v82 = v75[44];
  v83 = (v82 >> 8) & 0xF;
  v84 = v82 >> 12;
  v85 = HIWORD(v82) & 0xF;
  if (v83 <= v84)
  {
    v83 = v84;
  }

  if (v83 > v85)
  {
    v85 = v83;
  }

  while (2)
  {
    v86 = *(a1 + 56);
    while ((v86 & v81) != 0)
    {
      if (v3)
      {
        return _os_object_release_internal_n(a1, 2);
      }

      v94 = v86;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v94, v86 ^ v79, memory_order_acquire, memory_order_acquire);
      if (v94 == v86)
      {
        return _os_object_release_internal_n(a1, 2);
      }

      v92 = v77;
      v93 = v3;
      v86 = v94;
LABEL_230:
      v3 = v93;
      v77 = v92;
    }

    if ((v86 & 0x1000000000) != 0)
    {
      v87 = HIDWORD(v86) & 7;
      if (v87 > v85)
      {
        v104 = v77;
        _dispatch_workloop_invoke_cold_1(v75);
        v77 = v104;
        v3 = v100;
        v85 = v87;
        continue;
      }
    }

    break;
  }

  v88 = (v86 >> 40) & 1;
  if (!((v77 + v86) >> 53))
  {
    LODWORD(v88) = 1;
  }

  if (v88)
  {
    v89 = 0x60000000000000;
  }

  else
  {
    v89 = 0x20000000000000;
  }

  v90 = v86 & 0x7700000001 | v78 | v89;
  v91 = v86;
  atomic_compare_exchange_strong_explicit((a1 + 56), &v91, v90, memory_order_acquire, memory_order_acquire);
  if (v91 != v86)
  {
    v92 = v77;
    v93 = v3;
    v86 = v91;
    goto LABEL_230;
  }

  v95 = 0x60000000000000;
  if ((v3 & 1) == 0)
  {
    v95 = v79 | 0x60000000000000;
  }

  v96 = v90 & v95;
  v97 = v86 & 0x3FFE0000000000;
  v7 = v96 - v97;
  if (v96 == v97)
  {
    return _os_object_release_internal_n(a1, 2);
  }

LABEL_5:
  if (v6)
  {
    v102 = 0;
    goto LABEL_21;
  }

  v8 = *(a1 + 84);
  v9 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = *(v9 + 200);
  if (v10)
  {
    v11 = v8 >> 12;
    v12 = v8 & 0xFFF;
    if ((v8 & 0xFFF) != 0)
    {
      if ((v10 & 0xFFFu) > v12)
      {
        v12 = v10 & 0xFFF;
      }

      if (v11 <= v12 >> 8)
      {
        v13 = 0x40000000;
      }

      else
      {
        v13 = 1140912128;
      }

      v14 = v13 & v8;
      v15 = v10 & 0x880F0000 | v12;
LABEL_19:
      v16 = v15 | v14;
    }

    else
    {
      v16 = v10 | 0x40000000;
      if ((v10 & 0xFFF) == 0)
      {
        v16 = *(v9 + 200);
      }

      if (v11 > ((v16 >> 8) & 0xF))
      {
        v15 = v16 & 0xFFFF0FFF;
        v14 = v8 & 0x400F000;
        goto LABEL_19;
      }
    }
  }

  else
  {
    v16 = v8 & 0xFFF0FFFF;
  }

  *(v9 + 200) = v16;
  v102 = v10 & 0xFFF0FFFF;
LABEL_21:
  v17 = v3 | 8;
  if ((v3 & 0x100000) != 0 && (*(a1 + 80) & 0x400000) != 0)
  {
    atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
  }

  v18 = *(a1 + 80);
  if (((v18 << 8) & 0x3000000) != 0)
  {
    v17 = (v18 << 8) & 0x3000000 | v3 & 0xFCFFFFF7 | 8;
  }

  v99 = v17 | 0x10;
  v101 = (a1 + 48);
  v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v20 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_27:
  v21 = v17;
  if ((v17 & 0x1000002) != 2)
  {
    v43 = *(a1 + 88);
    v109 = 0u;
    *v105 = a1;
    v106 = a2;
    v107 = v17 & 0xFFFDFFFF;
    v108 = 0;
    *&v109 = 0;
    BYTE8(v109) = 0;
    *&v105[8] = *(v20 + 160);
    *(v20 + 160) = a1;
    *(v20 + 168) = &v105[8];
    if (!_dispatch_channel_invoke_cancel_check(a1, v105, v43))
    {
LABEL_183:
      *(v20 + 160) = *&v105[8];
      v63 = v108;
      goto LABEL_184;
    }

    v103 = v7;
    while (1)
    {
      v44 = v109;
      if (!v109)
      {
        if (!*v101)
        {
          goto LABEL_183;
        }

        v44 = *(a1 + 104);
        if (!v44)
        {
          v44 = _dispatch_wait_for_enqueuer((a1 + 104));
        }
      }

      v45 = *v44;
      if (*v44 > 0xFFFuLL)
      {
        goto LABEL_110;
      }

      if (v45)
      {
        _dispatch_channel_invoke_cold_2();
      }

      if ((v45 & 0x400) == 0)
      {
LABEL_110:
        v46 = v44[2];
        *(a1 + 104) = v46;
        if (!v46)
        {
          v61 = *v101;
          while (v44 == (v61 & 0xFFFFFFFFFFFFFFF8))
          {
            v62 = v61;
            atomic_compare_exchange_strong_explicit(v101, &v62, 0, memory_order_release, memory_order_relaxed);
            v35 = v62 == v61;
            v61 = v62;
            if (v35)
            {
              goto LABEL_111;
            }
          }

          v46 = v44[2];
          if (!v46)
          {
            v46 = _dispatch_wait_for_enqueuer(v44 + 2);
          }

          *(a1 + 104) = v46;
        }

LABEL_111:
        *&v109 = v46;
        v47 = *(v20 + 192);
        if (v47)
        {
          (*v47)(a1);
        }

        v48 = *v44;
        if (*v44 >= 0x1000uLL)
        {
          v49 = *v44;
          if (*(v48 + 40) == 1)
          {
            (*(v48 + 48))(v44, 0, (v21 >> 21) & 1);
          }

          else
          {
            (*(v48 + 64))(v44, a2, v21 & 0xFFFF0000);
          }

          if (v47)
          {
LABEL_118:
            v47[1](a1);
          }

LABEL_119:
          if (!_dispatch_channel_invoke_checks(a1, v105, v43))
          {
            goto LABEL_183;
          }

          goto LABEL_120;
        }

        if ((v21 & 0x1000000) != 0)
        {
          objc_autoreleasePoolPush();
          v48 = *v44;
        }

        v51 = v44[3];
        if ((v48 & 4) != 0)
        {
          v44[3] = -1;
        }

        v52 = v44[1];
        if (v52 == -1)
        {
          v53 = 0;
        }

        else
        {
          v54 = *(v20 + 200);
          if (((v54 >> 8) & 0xF) != 0)
          {
            v55 = 1 << ((BYTE1(v54) & 0xFu) + 7);
          }

          else
          {
            v55 = 0;
          }

          v53 = v55 | *(v20 + 200);
          if ((v52 & 0xFFFFFF) != 0)
          {
            if ((v52 & 0xFFFFFFuLL) >= (v55 & 0xFFFFFF00) && ((v54 & 0x44000000) != 0 || (v44[1] & 0x10000000) != 0))
            {
              v53 = v52 & 0xFFFFFF;
            }
          }

          else if (v54 >> 12)
          {
            v53 = (256 << ((v54 >> 12) - 1)) | 0xFF;
          }
        }

        v57 = v53 & 0x7FFFFFFF02FFFFFFLL;
        v58 = *(v20 + 32);
        if ((v58 & 0x1000000) != 0)
        {
          if (!v57)
          {
            v57 = v58 & 0xFFFFFFFFFEFFFFFFLL;
            goto LABEL_172;
          }

LABEL_181:
          _dispatch_set_priority_and_voucher_slow(v57, v51, v48 & 4 | 2);
        }

        else
        {
          if (v57 == (v58 & 0xFFFFFFFF76FFFFFFLL))
          {
            goto LABEL_149;
          }

LABEL_172:
          if (v57)
          {
            goto LABEL_181;
          }

LABEL_149:
          if (v51 != -1)
          {
            if (*(v20 + 224) != v51)
            {
              v57 = 0;
              goto LABEL_181;
            }

            if ((v48 & 4) != 0 && v51)
            {
              if (atomic_fetch_add_explicit((v51 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
              {
                _dispatch_async_redirect_invoke_cold_1();
              }

LABEL_156:
              v59 = *(v20 + 176);
              if (v59)
              {
                v60 = *(v59 + 8) + 1;
              }

              else
              {
                v60 = 1;
              }

              v7 = v103;
              if (v60 <= _dispatch_continuation_cache_limit)
              {
                v44[2] = v59;
                *(v44 + 2) = v60;
                *(v20 + 176) = v44;
              }

              goto LABEL_161;
            }
          }
        }

        if ((v48 & 4) != 0)
        {
          goto LABEL_156;
        }

        v7 = v103;
LABEL_161:
        _dispatch_workloop_invoke_cold_4();
        if (v47)
        {
          goto LABEL_118;
        }

        goto LABEL_119;
      }

      *&v109 = v44;
      BYTE8(v109) = 0;
      v50 = (v107 & 0x1000000) != 0 ? objc_autoreleasePoolPush() : 0;
      if ((*(v43 + 16))(a1, v105, *(a1 + 32)))
      {
        break;
      }

      v108 = -1;
      if (v50)
      {
        goto LABEL_130;
      }

LABEL_120:
      if (v108)
      {
        goto LABEL_183;
      }
    }

    if ((BYTE8(v109) & 1) == 0)
    {
      _dispatch_channel_invoke_cold_3();
    }

    if (!v50)
    {
      goto LABEL_120;
    }

LABEL_130:
    objc_autoreleasePoolPop(v50);
    goto LABEL_120;
  }

  _dispatch_last_resort_autorelease_pool_push(a2);
  v22 = *(a1 + 88);
  v109 = 0u;
  *v105 = a1;
  v106 = a2;
  v107 = v21 & 0xFEFDFFFF;
  v108 = 0;
  *&v109 = 0;
  BYTE8(v109) = 0;
  *&v105[8] = *(v19 + 160);
  *(v19 + 160) = a1;
  *(v19 + 168) = &v105[8];
  if (_dispatch_channel_invoke_cancel_check(a1, v105, v22))
  {
    v98 = a2;
    while (1)
    {
      v23 = v109;
      if (!v109)
      {
        if (!*v101)
        {
          goto LABEL_182;
        }

        v23 = *(a1 + 104);
        if (!v23)
        {
          v23 = _dispatch_wait_for_enqueuer((a1 + 104));
        }
      }

      v24 = *v23;
      if (*v23 > 0xFFFuLL)
      {
        goto LABEL_34;
      }

      if (v24)
      {
        _dispatch_channel_invoke_cold_2();
      }

      if ((v24 & 0x400) == 0)
      {
LABEL_34:
        v25 = v23[2];
        *(a1 + 104) = v25;
        if (!v25)
        {
          v41 = *v101;
          while (v23 == (v41 & 0xFFFFFFFFFFFFFFF8))
          {
            v42 = v41;
            atomic_compare_exchange_strong_explicit(v101, &v42, 0, memory_order_release, memory_order_relaxed);
            v35 = v42 == v41;
            v41 = v42;
            if (v35)
            {
              goto LABEL_35;
            }
          }

          v25 = v23[2];
          if (!v25)
          {
            v25 = _dispatch_wait_for_enqueuer(v23 + 2);
          }

          *(a1 + 104) = v25;
        }

LABEL_35:
        *&v109 = v25;
        v26 = *(v19 + 192);
        if (v26)
        {
          (*v26)(a1);
        }

        v27 = *v23;
        if (*v23 >= 0x1000uLL)
        {
          v28 = *v23;
          if (*(v27 + 40) == 1)
          {
            (*(v27 + 48))(v23, 0, (v21 >> 21) & 1);
          }

          else
          {
            (*(v27 + 64))(v23, a2, v21 & 0xFEFF0000);
          }

          if (v26)
          {
LABEL_42:
            v26[1](a1);
          }

LABEL_43:
          if (!_dispatch_channel_invoke_checks(a1, v105, v22))
          {
            goto LABEL_182;
          }

          goto LABEL_44;
        }

        v30 = v23[3];
        if ((v27 & 4) != 0)
        {
          v23[3] = -1;
        }

        v31 = v23[1];
        if (v31 == -1)
        {
          v32 = 0;
        }

        else
        {
          v33 = *(v19 + 200);
          if (((v33 >> 8) & 0xF) != 0)
          {
            v34 = 1 << ((BYTE1(v33) & 0xFu) + 7);
          }

          else
          {
            v34 = 0;
          }

          v32 = v34 | *(v19 + 200);
          if ((v31 & 0xFFFFFF) != 0)
          {
            if ((v31 & 0xFFFFFFuLL) >= (v34 & 0xFFFFFF00))
            {
              v35 = (v33 & 0x44000000) == 0 && (v23[1] & 0x10000000) == 0;
              if (!v35)
              {
                v32 = v31 & 0xFFFFFF;
              }
            }
          }

          else if (v33 >> 12)
          {
            v32 = (256 << ((v33 >> 12) - 1)) | 0xFF;
          }
        }

        v36 = v32 & 0x7FFFFFFF02FFFFFFLL;
        v37 = *(v19 + 32);
        if ((v37 & 0x1000000) != 0)
        {
          if (!v36)
          {
            v36 = v37 & 0xFFFFFFFFFEFFFFFFLL;
            goto LABEL_94;
          }

LABEL_103:
          _dispatch_set_priority_and_voucher_slow(v36, v30, v27 & 4 | 2);
        }

        else
        {
          if (v36 == (v37 & 0xFFFFFFFF76FFFFFFLL))
          {
            goto LABEL_71;
          }

LABEL_94:
          if (v36)
          {
            goto LABEL_103;
          }

LABEL_71:
          if (v30 != -1)
          {
            if (*(v19 + 224) != v30)
            {
              v36 = 0;
              goto LABEL_103;
            }

            if ((v27 & 4) != 0 && v30)
            {
              if (atomic_fetch_add_explicit((v30 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
              {
                _dispatch_async_redirect_invoke_cold_1();
              }

LABEL_78:
              v39 = *(v19 + 176);
              if (v39)
              {
                v40 = *(v39 + 8) + 1;
              }

              else
              {
                v40 = 1;
              }

              a2 = v98;
              v38 = v23;
              if (v40 <= _dispatch_continuation_cache_limit)
              {
                v38 = 0;
                v23[2] = v39;
                *(v23 + 2) = v40;
                *(v19 + 176) = v23;
              }

              goto LABEL_83;
            }
          }
        }

        if ((v27 & 4) != 0)
        {
          goto LABEL_78;
        }

        v38 = 0;
        a2 = v98;
LABEL_83:
        _dispatch_workloop_invoke_cold_7(v23, v38, v27);
        if (v26)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      *&v109 = v23;
      BYTE8(v109) = 0;
      v29 = (v107 & 0x1000000) != 0 ? objc_autoreleasePoolPush() : 0;
      if ((*(v22 + 16))(a1, v105, *(a1 + 32)))
      {
        break;
      }

      v108 = -1;
      if (v29)
      {
        goto LABEL_54;
      }

LABEL_44:
      if (v108)
      {
        goto LABEL_182;
      }
    }

    if ((BYTE8(v109) & 1) == 0)
    {
      _dispatch_channel_invoke_cold_3();
    }

    if (!v29)
    {
      goto LABEL_44;
    }

LABEL_54:
    objc_autoreleasePoolPop(v29);
    goto LABEL_44;
  }

LABEL_182:
  *(v19 + 160) = *&v105[8];
  v63 = v108;
  *v105 = *(v19 + 160);
  *(v19 + 160) = a1;
  *(v19 + 168) = v105;
  _dispatch_last_resort_autorelease_pool_pop(a2);
  *(v19 + 160) = *v105;
LABEL_184:
  if (v63 + 1 > 1)
  {
LABEL_199:
    if ((v21 & 0x40000) == 0)
    {
LABEL_200:
      v71 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      *(v71 + 200) = *(v71 + 200) & 0xF0000 | v102;
    }
  }

  else
  {
    v64 = *(a1 + 56);
    do
    {
      v65 = v64;
      v66 = v64 - v7;
      v67 = v66 & 0xFFFFFFF700000001;
      if (!(v65 >> 55))
      {
        if ((v65 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          v63 = *(v20 + 160);
          v17 = v99;
          if (v100)
          {
            goto LABEL_27;
          }

          v17 = v99;
          if (((*v63)[1].isa & 0x10000) != 0)
          {
            goto LABEL_27;
          }

          goto LABEL_199;
        }

        if (v63)
        {
          v67 = v66 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v67 = v66 & 0xFFFFFFF000000001;
        }
      }

      v64 = v65;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v64, v67, memory_order_release, memory_order_relaxed);
    }

    while (v64 != v65);
    if ((~v65 & 0x1800000000) == 0)
    {
      v68 = HIDWORD(v65) & 7;
      v69 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v70 = *(v69 + 200);
      if ((HIWORD(v70) & 0xF) < v68)
      {
        v7 = 0;
        v63 = 0;
        *(v69 + 200) = v70 & 0xFFF0FFFF | (v68 << 16);
        goto LABEL_199;
      }
    }

    v7 = 0;
    v63 = 0;
    if ((v21 & 0x40000) == 0)
    {
      goto LABEL_200;
    }
  }

  if (v63)
  {
    return _dispatch_queue_invoke_finish(a1, a2, v63, v7);
  }

  else
  {
    return _os_object_release_internal_n(a1, 2);
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

void dispatch_channel_drain_f(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, uint64_t *))
{
  v3 = *a1;
  v4 = *(*a1 + 88);
  v36 = 0;
  if (*(a1 + 56) == 1)
  {
    dispatch_channel_drain_f_cold_3();
  }

  *(a1 + 56) = 1;
  v35 = (v3 + 48);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  do
  {
    v9 = *(a1 + 48);
    if (!v9)
    {
      if (!*v35)
      {
        break;
      }

      v9 = *(v3 + 104);
      if (!v9)
      {
        v9 = _dispatch_wait_for_enqueuer((v3 + 104));
      }
    }

    if ((*v9 & 0xFFFFFFFFFFFFF400) != 0x400)
    {
      break;
    }

    v10 = v9[2];
    *(v3 + 104) = v10;
    if (!v10)
    {
      v24 = *v35;
      while (v9 == (v24 & 0xFFFFFFFFFFFFFFF8))
      {
        v25 = v24;
        atomic_compare_exchange_strong_explicit(v35, &v25, 0, memory_order_release, memory_order_relaxed);
        v16 = v25 == v24;
        v24 = v25;
        if (v16)
        {
          goto LABEL_6;
        }
      }

      v10 = v9[2];
      if (!v10)
      {
        v10 = _dispatch_wait_for_enqueuer(v9 + 2);
      }

      *(v3 + 104) = v10;
    }

LABEL_6:
    *(a1 + 48) = v10;
    v11 = v9[3];
    v9[3] = -1;
    v12 = v9[1];
    if (v12 == -1)
    {
      v15 = 0;
    }

    else
    {
      v13 = StatusReg[25];
      v14 = ((v13 >> 8) & 0xF) != 0 ? 1 << ((BYTE1(v13) & 0xFu) + 7) : 0;
      v15 = v14 | StatusReg[25];
      if ((v12 & 0xFFFFFF) != 0)
      {
        if ((v12 & 0xFFFFFFuLL) >= (v14 & 0xFFFFFF00))
        {
          v16 = (v13 & 0x44000000) == 0 && (v9[1] & 0x10000000) == 0;
          if (!v16)
          {
            v15 = v12 & 0xFFFFFF;
          }
        }
      }

      else if (v13 >> 12)
      {
        v15 = (256 << ((v13 >> 12) - 1)) | 0xFF;
      }
    }

    v17 = v15 & 0x7FFFFFFF02FFFFFFLL;
    v18 = StatusReg[4];
    if ((v18 & 0x1000000) != 0)
    {
      if (v17)
      {
        goto LABEL_53;
      }

      v17 = v18 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v17 == (v18 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_21;
    }

    if (v17)
    {
      goto LABEL_53;
    }

LABEL_21:
    if (v11 == -1)
    {
      goto LABEL_25;
    }

    if (StatusReg[28] != v11)
    {
      v17 = 0;
LABEL_53:
      _dispatch_set_priority_and_voucher_slow(v17, v11, 6);
      goto LABEL_25;
    }

    if (v11 && atomic_fetch_add_explicit((v11 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
    {
      _dispatch_async_redirect_invoke_cold_1();
    }

LABEL_25:
    v19 = StatusReg[22];
    if (v19)
    {
      v20 = *(v19 + 8) + 1;
    }

    else
    {
      v20 = 1;
    }

    v21 = v9;
    if (v20 <= _dispatch_continuation_cache_limit)
    {
      v21 = 0;
      v9[2] = v19;
      *(v9 + 2) = v20;
      StatusReg[22] = v9;
    }

    if (*(a1 + 35))
    {
      v23 = objc_autoreleasePoolPush();
      v22 = a3(a2, v9[5], &v36);
      objc_autoreleasePoolPop(v23);
    }

    else
    {
      v22 = a3(a2, v9[5], &v36);
    }

    if (!v21)
    {
      if (!v22)
      {
        break;
      }

      continue;
    }

    _dispatch_continuation_free_to_cache_limit(v21);
    if (!v22)
    {
      break;
    }
  }

  while ((_dispatch_channel_invoke_checks(v3, a1, v4) & 1) != 0);
  v26 = v36;
  if (v36)
  {
    v27 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v28 = v27[22];
    if (v28)
    {
      v27[22] = v28[2];
    }

    else
    {
      v28 = _dispatch_continuation_alloc_from_heap();
      v26 = v36;
    }

    *v28 = 1284;
    v28[4] = 0;
    v28[5] = v26;
    v29 = v27[4] & 0xFFFFFFLL;
    v30 = 4351;
    if (v29 < 0x10FF)
    {
      v30 = v27[4] & 0xFFFFFFLL;
    }

    v31 = v27[28];
    if (v31 && atomic_fetch_add_explicit((v31 + 12), 1u, memory_order_relaxed) <= 0)
    {
      [OS_voucher retain];
    }

    v28[3] = v31;
    if (v29)
    {
      v32 = (*(v3 + 84) >> 30) & 1;
      if ((*(v3 + 84) & 0xFFF) == 0)
      {
        v32 = 1;
      }

      if (!v32)
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    v28[1] = v30;
    v33 = *(a1 + 48);
    v28[2] = v33;
    if (!v33)
    {
      atomic_compare_exchange_strong_explicit(v35, &v33, v28, memory_order_release, memory_order_relaxed);
      if (v33)
      {
        v34 = *(v3 + 104);
        if (!v34)
        {
          v34 = _dispatch_wait_for_enqueuer((v3 + 104));
        }

        v28[2] = v34;
      }
    }

    *(v3 + 104) = v28;
    *(a1 + 48) = v28;
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

void _dispatch_channel_wakeup(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(*(a1 + 88) + 8))(a1, *(a1 + 32)))
  {
    if (*(a1 + 48))
    {
      v6 = 1;
    }

    else
    {
      v6 = (*(a1 + 80) & 0x10000000) != 0 && (*(a1 + 116) & 8) == 0;
    }
  }

  else
  {
    v6 = -1;
  }

  _dispatch_queue_wakeup(a1, a2, a3, v6);
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
    v6 = &off_1ED3F3BC0;
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

_DWORD *dispatch_channel_enqueue(_DWORD *result, uint64_t a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = StatusReg[22];
  if (!v4)
  {
    return _dispatch_channel_enqueue_slow(result, a2);
  }

  StatusReg[22] = v4[2];
  *v4 = 1284;
  v4[4] = 0;
  v4[5] = a2;
  v5 = StatusReg[4] & 0xFFFFFFLL;
  v6 = 4351;
  if (v5 < 0x10FF)
  {
    v6 = StatusReg[4] & 0xFFFFFFLL;
  }

  v7 = StatusReg[28];
  if (v7 && atomic_fetch_add_explicit((v7 + 12), 1u, memory_order_relaxed) <= 0)
  {
    qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
    __break(1u);
  }

  else
  {
    v4[3] = v7;
    if (!v5 || (v8 = result[21], (v8 & 0x40000000) == 0) && (v8 & 0xFFF) != 0)
    {
      v6 = 0;
    }

    v4[1] = v6;
    return (*(*result + 88))();
  }

  return result;
}

void *_dispatch_channel_enqueue_slow(_DWORD *a1, uint64_t a2)
{
  result = _dispatch_continuation_alloc_from_heap();
  *result = 1284;
  result[4] = 0;
  result[5] = a2;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 32) & 0xFFFFFFLL;
  v7 = 4351;
  if (v6 < 0x10FF)
  {
    v7 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  v8 = *(StatusReg + 224);
  if (v8 && atomic_fetch_add_explicit((v8 + 12), 1u, memory_order_relaxed) <= 0)
  {
    qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
    __break(1u);
  }

  else
  {
    result[3] = v8;
    if (v6 && ((v9 = a1[21], (v9 & 0x40000000) != 0) || (v9 & 0xFFF) == 0))
    {
      v10 = __clz(__rbit32(v7 >> 8)) + 1;
    }

    else
    {
      v10 = 0;
      v7 = 0;
    }

    result[1] = v7;
    v11 = *(*a1 + 88);

    return v11(a1, result, v10);
  }

  return result;
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
    v4 = dword_1BB5812E0[v2];
  }

  return (*(*a1 + 80))(a1, v4, 2);
}

void *_dispatch_mgr_queue_push(void *result, void *a2)
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

  a2[2] = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = (StatusReg + 976);
  *(StatusReg + 976) = result + 6;
  v5 = atomic_exchange_explicit(result + 6, a2, memory_order_release);
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
  if (dword_1ED3F436C)
  {
    v1 = _pthread_qos_class_encode();
  }

  else
  {
    v1 = 0;
  }

  if (v0 > dword_1ED3F4370)
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
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0;
  memset(&v7, 0, sizeof(v7));
  v0 = pthread_attr_init(&v7);
  if (v0)
  {
    _dispatch_bug(6222, v0);
  }

  v1 = pthread_attr_getschedpolicy(&v7, dword_1ED3F4374);
  if (v1)
  {
    _dispatch_bug(6224, v1);
  }

  v2 = pthread_attr_getschedparam(&v7, &v6);
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
    dword_1ED3F436C = v3;
    result = _dispatch_mgr_sched_qos2prio(v3);
  }

  else
  {
    result = v6.sched_priority;
  }

  dword_1ED3F4370 = result;
  _dispatch_mgr_sched = result;
  v5 = *MEMORY[0x1E69E9840];
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
        qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
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
      return _os_object_release_internal_n(result, 2);
    }
  }

  else
  {
    v3 = result[21];
    qword_1EBC5B980 = "BUG IN LIBDISPATCH: Don't try to wake up or override a root queue";
    qword_1EBC5B9B0 = v3;
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
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
      qword_1EBC5B9B0 = v7;
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
    *a1 = &unk_1F3A43620;
    a1[1] = -1;
    a1[3] = -1;
    v4 = a1;
  }

  if (a3 - 7 <= 0xFFFFFFF9)
  {
    v10 = a3;
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_1EBC5B9B0 = a3;
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

uint64_t _dispatch_pthread_root_queue_create(const char *a1, int a2, __int128 *a3, void *a4, _OWORD *a5)
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

  return v13;
}

uint64_t _dispatch_pthread_root_queue_create_with_observer_hooks_4IOHID(const char *a1, int a2, __int128 *a3, uint64_t a4, void *a5)
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

void _dispatch_pthread_root_queue_dispose(uint64_t *a1, _BYTE *a2)
{
  v4 = a1[4];
  pthread_attr_destroy(v4);
  _dispatch_semaphore_dispose(v4[1].__opaque);
  sig = v4[1].__sig;
  if (sig)
  {
    _Block_release(sig);
  }

  a1[3] = &unk_1ED3F3B40;

  _dispatch_lane_class_dispose(a1, a2);
}

void _dispatch_runloop_queue_wakeup(atomic_ullong *context, atomic_ullong *a2, uint64_t a3)
{
  if ((context[10] & 0x800000) != 0 || (a3 & 2) != 0 && (atomic_fetch_or_explicit(context + 7, 0x8000000000uLL, memory_order_release) & 0xFFFFFFFC) == 0)
  {

    _dispatch_lane_wakeup(context, a2, a3);
  }

  else if (context[6])
  {

    _dispatch_runloop_queue_poke(context, a2, a3);
  }

  else
  {
    v3 = (atomic_fetch_and_explicit(context + 7, 0xFFFFFFF0FFFFFFFFLL, memory_order_relaxed) >> 32) & 7;
    if (v3)
    {
      v4 = context[7] | 3;
      if (context[6])
      {
        _dispatch_runloop_queue_poke(context, v3, a3);
      }

      _pthread_qos_override_end_direct();
    }

    else if (a3)
    {

      _os_object_release_internal_n(context, 2);
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
  if (v16 - 1 > 0xFFFFFFFD || ((v17 = _dispatch_send_wakeup_runloop_thread(v16, 0), (v17 - 268435459) >= 2) ? (v18 = v17 == 16) : (v18 = 1), !v18 ? (v19 = v17 == 0) : (v19 = 1), v19))
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

  _os_object_release_internal_n(context, 2);
}

void _dispatch_runloop_queue_handle_init(void *context)
{
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_sema4_create_slow_cold_1();
  }

  options.reserved[1] = 0;
  *&options.flags = xmmword_1BB581228;
  name = 0;
  if (*(*context + 40) == 394769)
  {
    *&options.flags = 0x100000033;
  }

  v2 = mach_port_construct(*MEMORY[0x1E69E9A60], &options, context, &name);
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

void _dispatch_runloop_queue_dispose(uint64_t *a1, _BYTE *a2)
{
  _dispatch_runloop_queue_handle_dispose(a1);

  _dispatch_lane_class_dispose(a1, a2);
}

void _dispatch_runloop_queue_handle_dispose(mach_port_context_t guard)
{
  v1 = *(guard + 32);
  if (v1 - 1 <= 0xFFFFFFFD)
  {
    *(guard + 32) = 0;
    v2 = mach_port_destruct(*MEMORY[0x1E69E9A60], v1, -1, guard);
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
    v13 = 0;
    goto LABEL_50;
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

  v44 = *(StatusReg + 160);
  *(StatusReg + 160) = object;
  *(StatusReg + 168) = &v44;
  v7 = *(StatusReg + 32);
  v8 = (__clz(__rbit32((v7 >> 8) & 0x3FFF)) << 8) + 256;
  if (((v7 >> 8) & 0x3FFF) == 0)
  {
    v8 = 0;
  }

  v9 = *(StatusReg + 224);
  if (v9 && atomic_fetch_add_explicit((v9 + 12), 1u, memory_order_relaxed) <= 0)
  {
    [OS_voucher retain];
  }

  LODWORD(v10) = v8 | v7 & 0x8E0000FF;
  v11 = *(StatusReg + 200);
  if (v11)
  {
    v12 = v10 & 0xFFF;
    if (v12)
    {
      if ((v11 & 0xFFFu) > v12)
      {
        v12 = v11 & 0xFFF;
      }

      LODWORD(v10) = v12 | v11 & 0x880F0000;
    }

    else
    {
      LODWORD(v10) = v11 | 0x40000000;
      if ((v11 & 0xFFF) == 0)
      {
        LODWORD(v10) = *(StatusReg + 200);
      }
    }
  }

  if ((~v10 & 0xF0000) != 0)
  {
    v10 = v10 | 0xF0000;
  }

  else
  {
    v10 = v10;
  }

  *(StatusReg + 200) = v10;
  memset(v43, 0, sizeof(v43));
  isa = object[13].isa;
  if (!isa)
  {
    isa = _dispatch_wait_for_enqueuer(&object[13]);
  }

  v15 = isa[2];
  object[13].isa = v15;
  if (!v15)
  {
    v39 = *v3;
    while (isa == (v39 & 0xFFFFFFFFFFFFFFF8))
    {
      v40 = v39;
      atomic_compare_exchange_strong_explicit(v3, &v40, 0, memory_order_release, memory_order_relaxed);
      v33 = v40 == v39;
      v39 = v40;
      if (v33)
      {
        goto LABEL_27;
      }
    }

    v15 = isa[2];
    if (!v15)
    {
      v15 = _dispatch_wait_for_enqueuer(isa + 2);
    }

    object[13].isa = v15;
  }

LABEL_27:
  v16 = *(StatusReg + 192);
  if (v16)
  {
    (*v16)(object);
  }

  v17 = *isa;
  if (*isa >= 0x1000uLL)
  {
    v18 = *isa;
    if (*(v17 + 40) == 1)
    {
      (*(v17 + 48))(isa, 0, 0);
    }

    else
    {
      (*(v17 + 64))(isa, v43, 0x80000);
    }

    if (v16)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v24 = isa[3];
  if ((v17 & 4) != 0)
  {
    isa[3] = -1;
  }

  v25 = v17 & 4;
  v26 = isa[1];
  if (v26 == -1)
  {
    v27 = 0;
  }

  else
  {
    v28 = *(StatusReg + 200);
    if (((v28 >> 8) & 0xF) != 0)
    {
      v29 = 1 << ((BYTE1(v28) & 0xFu) + 7);
    }

    else
    {
      v29 = 0;
    }

    v30 = v29 | *(StatusReg + 200);
    v31 = v26 & 0xFFFFFF;
    if ((v26 & 0xFFFFFF) != 0)
    {
      v32 = v29 & 0xFFFFFF00;
      v33 = (v28 & 0x44000000) == 0 && (isa[1] & 0x10000000) == 0;
      if (v33)
      {
        v27 = v30;
      }

      else
      {
        v27 = v26 & 0xFFFFFF;
      }

      if (v31 < v32)
      {
        v27 = v30;
      }
    }

    else if (v28 >> 12)
    {
      v27 = (256 << ((v28 >> 12) - 1)) | 0xFF;
    }

    else
    {
      v27 = v29 | *(StatusReg + 200);
    }
  }

  v34 = v27 & 0x7FFFFFFF02FFFFFFLL;
  v35 = *(StatusReg + 32);
  if ((v35 & 0x1000000) != 0)
  {
    if (v34)
    {
LABEL_108:
      v41 = v17 & 4;
      v42 = v17;
      _dispatch_set_priority_and_voucher_slow(v34, v24, v25 | 2);
      v25 = v41;
      LOBYTE(v17) = v42;
      goto LABEL_70;
    }

    v34 = v35 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v34 == (v35 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_69;
  }

  if (v34)
  {
    goto LABEL_108;
  }

LABEL_69:
  if (v24 == -1)
  {
    goto LABEL_70;
  }

  if (*(StatusReg + 224) != v24)
  {
    v34 = 0;
    goto LABEL_108;
  }

  if ((v17 & 4) != 0 && v24)
  {
    if (atomic_fetch_add_explicit((v24 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
    {
      _dispatch_async_redirect_invoke_cold_1();
    }

    goto LABEL_76;
  }

LABEL_70:
  if (!v25)
  {
    v36 = 0;
    goto LABEL_81;
  }

LABEL_76:
  v37 = *(StatusReg + 176);
  if (v37)
  {
    v38 = *(v37 + 8) + 1;
  }

  else
  {
    v38 = 1;
  }

  v36 = isa;
  if (v38 <= _dispatch_continuation_cache_limit)
  {
    v36 = 0;
    isa[2] = v37;
    *(isa + 2) = v38;
    *(StatusReg + 176) = isa;
  }

LABEL_81:
  _dispatch_workloop_invoke_cold_7(isa, v36, v17);
  if (v16)
  {
LABEL_34:
    v16[1](object);
  }

LABEL_35:
  v13 = v15 != 0;
  if (!v15)
  {
    (*(object->isa + 10))(object, 0, 0);
  }

  *(StatusReg + 200) = v11 & 0xFFF0FFFF;
  v19 = v7 & 0xFFFFFFFF02FFFFFFLL;
  if (v7 == -1)
  {
    v20 = 0;
  }

  else
  {
    v20 = v7 & 0xFFFFFFFF02FFFFFFLL;
  }

  v21 = *(StatusReg + 32);
  if ((v21 & 0x1000000) != 0)
  {
    if (v20)
    {
LABEL_94:
      _dispatch_set_priority_and_voucher_slow(v19, v9, 6);
      goto LABEL_46;
    }

    v20 = v21 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v20 == (v21 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_42;
  }

  v19 = v20;
  if (v20)
  {
    goto LABEL_94;
  }

LABEL_42:
  if (v9 != -1)
  {
    if (*(StatusReg + 224) == v9)
    {
      if (v9 && atomic_fetch_add_explicit((v9 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
      {
        _dispatch_async_redirect_invoke_cold_1();
      }

      goto LABEL_46;
    }

    v19 = 0;
    goto LABEL_94;
  }

LABEL_46:
  *(StatusReg + 160) = v44;
  if (v5 != -4)
  {
    *(StatusReg + 216) = 0;
    *(StatusReg + 40) = 0;
  }

  v22 = *(StatusReg + 176);
  if (v22)
  {
    *(StatusReg + 176) = 0;
    _dispatch_cache_cleanup(v22);
  }

LABEL_50:
  dispatch_release(object);
  return v13;
}

void _dispatch_runloop_root_queue_wakeup_4CF(atomic_ullong *a1)
{
  v2 = *(*a1 + 40);
  if (v2 != 395025)
  {
    _dispatch_runloop_root_queue_perform_4CF_cold_1(v2);
  }

  _dispatch_runloop_queue_wakeup(a1, 0, 0);
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

  return dword_1ED3F35E0;
}

uint64_t _dispatch_get_main_queue_port_4CF()
{
  if (_dispatch_main_q_handle_pred != -1)
  {
    _dispatch_get_main_queue_handle_4CF_cold_1();
  }

  return dword_1ED3F35E0;
}

void _dispatch_main_queue_callback_4CF()
{
  if (!dword_1ED3F3630)
  {
    dword_1ED3F3630 = 1;
    _dispatch_main_queue_drain();
    dword_1ED3F3630 = 0;
  }
}

void _dispatch_main_queue_drain()
{
  v4 = 0uLL;
  if (qword_1ED3F35F0)
  {
    if ((dword_1ED3F3610 & 0x40000) == 0)
    {
      _dispatch_main_queue_drain_cold_6();
    }

    v0 = qword_1ED3F35F8[0];
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

void _dispatch_main_queue_wakeup(uint64_t a1, atomic_ullong *a2, uint64_t a3)
{
  if ((*(a1 + 80) & 0x40000) != 0)
  {
    v3 = *(a1 + 80);
    _dispatch_runloop_queue_wakeup(a1, a2, a3);
  }

  else
  {
    _dispatch_lane_wakeup(a1, a2, a3);
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
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_main() must be called on the main thread";
      __break(1u);
    }

    if (!dword_1ED3F3630)
    {
      dword_1ED3F3630 = 1;
      _dispatch_main_queue_drain();
      dword_1ED3F3630 = 0;
      _dispatch_program_is_probably_callback_driven = 1;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      pthread_exit(0);
    }

    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_main called from a block on the main queue";
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

  v3 = qword_1BB581300[v5];
LABEL_15:
  v4 = 2 * (flags > 3);
  if ((flags & 2) != 0)
  {
    v4 = 1;
  }

  return (&_dispatch_root_queues + 16 * (v3 + v4));
}

void _dispatch_queue_cleanup(void *a1)
{
  if (a1 != &_dispatch_main_q)
  {
    _dispatch_queue_cleanup_cold_1(a1);
  }

  _dispatch_queue_cleanup2();
}

void _dispatch_frame_cleanup(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch frame is active";
  qword_1EBC5B9B0 = a1;
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
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch context is set";
  qword_1EBC5B9B0 = a1;
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
  if ((dword_1ED3F3610 & 0x40000) != 0)
  {
    _dispatch_queue_atfork_child_cold_1();
  }

  if (_dispatch_unsafe_fork)
  {
    off_1ED3F3628 = 256;
    qword_1ED3F35F0 = 256;
    qword_1ED3F36A8 = 256;
    qword_1ED3F3670 = 256;
    v0 = &qword_1ED3F3728;
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
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Transition to multithreaded is prohibited";
    __break(1u);
  }
}

uint64_t _dispatch_prohibit_transition_to_multithreaded(uint64_t result)
{
  if (result)
  {
    if (atomic_fetch_or_explicit(&_dispatch_unsafe_fork, 2u, memory_order_relaxed))
    {
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: The executable is already multithreaded";
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
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_1EBC5B9B0 = v8;
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
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
    qword_1EBC5B9B0 = v9;
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
        qword_1EBC5B980 = "API MISUSE: Over-release of an object";
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

void _dispatch_lane_non_barrier_complete(uint64_t a1, uint64_t a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 24) & 0xFFFFFFFCLL;
  v4 = *(a1 + 56);
  do
  {
    v5 = v4;
    v6 = v4 - 0x20000000000;
    if ((v4 & 0xFFFFFFFC) != 0)
    {
      v6 |= 0x8000000000uLL;
    }

    else if (!(v6 >> 53))
    {
      v7 = (v4 & 0x10000000000) != 0 ? v4 + 0x3FFF0000000000 : v4 + (*(a1 + 80) << 41) + 0x3FFE0000000000;
      v8 = (v7 & 0x3FFE0000000000) == 0x20000000000000;
      v6 |= (v5 >> 39) & 1;
      v9 = v7 & 0xFFE0017FFFFFFFFFLL | v3;
      if (v8)
      {
        v6 = v9;
      }
    }

    v4 = v5;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v4, v6, memory_order_relaxed, memory_order_relaxed);
  }

  while (v4 != v5);
  if ((~v5 & 0x1800000000) == 0)
  {
    v10 = HIDWORD(v5) & 7;
    v11 = *(StatusReg + 200);
    if ((HIWORD(v11) & 0xF) < v10)
    {
      *(StatusReg + 200) = v11 & 0xFFF0FFFF | (v10 << 16);
    }
  }

  if (((v6 ^ v5) & 0x40000000000000) != 0)
  {
    _dispatch_lane_barrier_complete(a1, 0, a2);
  }

  else if ((v6 ^ v5))
  {
    if ((a2 & 1) != 0 || *(a1 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) > 0)
    {
      (*(**(a1 + 24) + 88))(*(a1 + 24), a1, HIDWORD(v6) & 7);
    }

    else
    {
      qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
      __break(1u);
    }
  }

  else if (a2)
  {
    _os_object_release_internal_n(a1, 2);
  }
}

double _dispatch_sync_f_slow(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t a4, atomic_ullong *a5, uint64_t a6)
{
  if (a5[3])
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = StatusReg[4];
    v21 = 0;
    v13[0] = a6 | 1;
    v13[1] = v11 | 0x10000000;
    v13[2] = 0;
    v13[3] = StatusReg[28];
    v13[4] = _dispatch_async_and_wait_invoke;
    v13[5] = v13;
    v13[6] = 0;
    v14 = a1;
    v15 = a3;
    v16 = a2;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = StatusReg[3];
    __DISPATCH_WAIT_FOR_QUEUE__(v13, a5);
    if (v15)
    {
      _dispatch_sync_invoke_and_complete_recurse(a1, a2, a3, a4);
    }

    else
    {
      _dispatch_sync_complete_recurse(a1, v14, a4);
    }
  }

  else
  {

    return _dispatch_sync_function_invoke(a5, a2, a3);
  }

  return result;
}

double _dispatch_sync_recurse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(a1 + 24);
  v6 = *(StatusReg + 24) & 0xFFFFFFFCLL;
LABEL_2:
  if (*(v5 + 80) == 1)
  {
    v7 = *(v5 + 56);
    while (v7 == (v7 & 0x3000000000 | 0x1FFE0000000000))
    {
      v8 = v7;
      atomic_compare_exchange_strong_explicit((v5 + 56), &v8, v6 | v7 & 0x3000000000 | 0x60000000000002, memory_order_acquire, memory_order_acquire);
      v9 = v8 == v7;
      v7 = v8;
      if (v9)
      {
        goto LABEL_7;
      }
    }

    v13 = 2;
  }

  else
  {
    if (!*(v5 + 48))
    {
      v10 = *(v5 + 56);
      while ((v10 & 0xFFC0018000000000) == 0)
      {
        v11 = v10;
        atomic_compare_exchange_strong_explicit((v5 + 56), &v11, v10 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        v9 = v11 == v10;
        v10 = v11;
        if (v9)
        {
LABEL_7:
          v5 = *(v5 + 24);
          if (*(v5 + 24))
          {
            goto LABEL_2;
          }

          _dispatch_sync_invoke_and_complete_recurse(a1, a2, a3, a4);
          return result;
        }
      }
    }

    v13 = 0;
  }

  return _dispatch_sync_f_slow(a1, a2, a3, a4, v5, v13);
}

void _dispatch_lane_barrier_sync_invoke_and_complete(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v8;
  _dispatch_client_callout(a2, a3);
  *(StatusReg + 160) = v8;
  if (!*(a1 + 48) && *(a1 + 80) < 2u)
  {
    v5 = *(a1 + 56);
    while ((v5 & 0xFF80008800000001) == 0)
    {
      v6 = v5;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v6, (v5 & 0x7FFF7000000000) - 0x40020000000000, memory_order_release, memory_order_relaxed);
      v7 = v6 == v5;
      v5 = v6;
      if (v7)
      {
        return;
      }
    }
  }

  _dispatch_lane_barrier_complete(a1, 0, 0);
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

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 160);
  *(StatusReg + 160) = v2;
  *(StatusReg + 168) = a1 + 80;
  _dispatch_client_callout(*(a1 + 72), *(a1 + 64));
  *(StatusReg + 160) = v6;
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
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_sync called on queue already owned by current thread";
    qword_1EBC5B9B0 = v5;
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

void _dispatch_sync_complete_recurse(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (a3 >> 1) & 1;
  do
  {
    if (a1 == a2)
    {
      break;
    }

    if (v5)
    {
      (*(*a1 + 80))(a1, 0, 4);
    }

    else
    {
      _dispatch_lane_non_barrier_complete(a1, 0);
    }

    a1 = *(a1 + 24);
    LOBYTE(v5) = *(a1 + 80) == 1;
  }

  while (*(a1 + 24));
}

void _dispatch_sync_invoke_and_complete_recurse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v7;
  _dispatch_client_callout(a2, a3);
  *(StatusReg + 160) = v7;
  _dispatch_sync_complete_recurse(a1, 0, a4);
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

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = *(StatusReg + 24) & 0xFFFFFFFC;
    v14 = atomic_exchange_explicit((a1 + 100), 0, memory_order_release);
    if (v14 != v13)
    {
      _dispatch_lane_legacy_set_target_queue_cold_2(a1 + 100, v14, StatusReg);
    }
  }
}

void _dispatch_sync_invoke_and_complete(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v5;
  _dispatch_client_callout(a2, a3);
  *(StatusReg + 160) = v5;
  _dispatch_lane_non_barrier_complete(a1, 0);
}

void _dispatch_async_and_wait_recurse(uint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 80);
  v7 = a1;
  if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_32;
  }

  v8 = (a1 + 56);
  v9 = (a1 + 80);
  v10 = a3 & 0xFFFFFFFC;
  v11 = a1;
  v12 = a4;
LABEL_3:
  if ((v5 & 0x3000000000) != 0)
  {
    v13 = *(v11 + 24);
    if (v13 < &_dispatch_root_queues || v13 >= &_dispatch_queue_serial_numbers)
    {
      v7 = v11;
LABEL_32:
      *a2 &= ~0x80uLL;
      *(a2 + 56) = v7;
      v11 = v7;
      goto LABEL_30;
    }
  }

  if ((v12 & 2) != 0)
  {
    while (v5 == (v5 & 0x3000000000) - (v6 << 41) + 0x20000000000000)
    {
      v15 = v5;
      atomic_compare_exchange_strong_explicit(v8, &v15, v5 & 0x3000000000 | v10 | 0x60000000000002, memory_order_acquire, memory_order_acquire);
      v16 = v15 == v5;
      v5 = v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }
  }

  else if (!*(v11 + 48))
  {
    while ((v5 & 0xFFC0018000000000) == 0)
    {
      v21 = v5;
      atomic_compare_exchange_strong_explicit(v8, &v21, v5 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
      v16 = v21 == v5;
      v5 = v21;
      if (v16)
      {
LABEL_12:
        v17 = *(v11 + 84) & 0xFFF;
        if (v17)
        {
          v18 = v17 >= 0x100 ? 1 << (BYTE1(v17) + 7) : 0;
          v19 = v18 | *(v11 + 84);
          if (v19 > (*(a2 + 8) & 0xFFFFFFuLL))
          {
            *(a2 + 8) = v19 | 0x10000000;
          }
        }

        if ((*(a2 + 106) & 3) == 0)
        {
          *(a2 + 106) |= HIWORD(*v9) & 3;
        }

        v7 = *(v11 + 24);
        if (!*(v7 + 24))
        {
          _dispatch_async_and_wait_invoke_and_complete_recurse(a1, a2, v11, a4);
          return;
        }

        v9 = (v7 + 80);
        v20 = v12 & 0xFFFFFFFFFFFFFFFDLL;
        v12 |= 2uLL;
        if (*(v7 + 80) != 1)
        {
          v12 = v20;
        }

        *a2 = v12;
        v8 = (v7 + 56);
        v5 = *(v7 + 56);
        v6 = *(v7 + 80);
        v11 = v7;
        if ((v6 & 0x1000000) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_32;
      }
    }
  }

LABEL_30:
  _dispatch_async_and_wait_f_slow(a1, a4, a2, v11);
}

void _dispatch_async_and_wait_f_slow(uint64_t a1, unint64_t a2, uint64_t a3, atomic_ullong *a4)
{
  __DISPATCH_WAIT_FOR_QUEUE__(a3, a4);
  v7 = *(a3 + 56);
  if (*(a3 + 64))
  {

    _dispatch_async_and_wait_invoke_and_complete_recurse(a1, a3, v7, a2);
  }

  else
  {
    v8 = *(a3 + 56);

    _dispatch_sync_complete_recurse(a1, v8, a2);
  }
}

void _dispatch_async_and_wait_invoke_and_complete_recurse(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(*a3 + 40) != 18 && (*(a3 + 56) & 0x2000000000) == 0)
  {
    a3 = -4;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 216);
  *(StatusReg + 216) = a3;
  if (*(a2 + 106))
  {
    v9 = objc_autoreleasePoolPush();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + 8);
  v11 = *(a2 + 24);
  v20 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v20;
  v12 = *(StatusReg + 32);
  v13 = v12 & 0xFFFFFF;
  v14 = (v12 & 0xFFFFFFuLL) >= (v10 & 0xFFFFFFuLL) || (v12 & 0xFFFFFF) == 0;
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12 & 0xFFFFFF;
  }

  v16 = v10 & 0xFFFFFFFF02FFFFFFLL;
  if (v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10 & 0xFFFFFFFF02FFFFFFLL;
  }

  if ((v12 & 0x1000000) != 0)
  {
    if (v17)
    {
LABEL_41:
      _dispatch_set_priority_and_voucher_slow(v16, v11, 0);
      v11 = v19;
      goto LABEL_20;
    }

    v17 = v12 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v17 == (v12 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_16;
  }

  v16 = v17;
  if (v17)
  {
    goto LABEL_41;
  }

LABEL_16:
  if (v11 == -1)
  {
    goto LABEL_20;
  }

  if (*(StatusReg + 224) != v11)
  {
    v16 = 0;
    goto LABEL_41;
  }

  if (v11 && atomic_fetch_add_explicit((v11 + 12), 1u, memory_order_relaxed) <= 0)
  {
    qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
    __break(1u);
LABEL_45:
    qword_1EBC5B980 = "API MISUSE: Voucher over-release";
    __break(1u);
    return;
  }

LABEL_20:
  _dispatch_client_callout(*(a2 + 72), *(a2 + 64));
  v18 = *(StatusReg + 32);
  if ((v18 & 0x1000000) != 0)
  {
    if (!v14)
    {
LABEL_43:
      _dispatch_set_priority_and_voucher_slow(v13, v11, 6);
      goto LABEL_26;
    }

    v13 = v18 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else
  {
    if (v15 == (v18 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_22;
    }

    v13 = v15;
  }

  if (v13)
  {
    goto LABEL_43;
  }

LABEL_22:
  if (v11 == -1)
  {
    goto LABEL_26;
  }

  if (*(StatusReg + 224) != v11)
  {
    v13 = 0;
    goto LABEL_43;
  }

  if (v11 && atomic_fetch_add_explicit((v11 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    goto LABEL_45;
  }

LABEL_26:
  *(StatusReg + 160) = v20;
  if (v9)
  {
    objc_autoreleasePoolPop(v9);
  }

  *(StatusReg + 216) = v8;
  _dispatch_sync_complete_recurse(a1, 0, a4);
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
    _dispatch_barrier_async_detached_f(&unk_1ED3F3B40, a1, _dispatch_queue_specific_head_dispose_slow);
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
  if (v2)
  {
    do
    {
      v3 = *(v2 + 24);
      _dispatch_client_callout(*(v2 + 8), *(v2 + 16));
      free(v2);
      v2 = v3;
    }

    while (v3);
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
  if (*(a2 + 48) == -4 && (BYTE4(a4) & 7u) > *(a2 + 105))
  {
    *(a2 + 105) = BYTE4(a4) & 7;
  }

  if ((a4 & 0x2000000000) != 0)
  {
    v8 = a1;
    if ((a3 & 1) == 0)
    {
      if ((a4 & 1) == 0)
      {
        goto LABEL_22;
      }

      v8 = a1;
      if (a5)
      {
        goto LABEL_22;
      }

      v8 = a1;
      if (*(a1 + 8) == 0x7FFFFFFF)
      {
        goto LABEL_22;
      }

      v8 = a1;
      if (atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) > 1)
      {
        goto LABEL_22;
      }

      qword_1EBC5B980 = "API MISUSE: Over-release of an object";
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
      v5 = HIDWORD(a4) & 7;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = *(StatusReg + 200);
      if ((HIWORD(v7) & 0xF) < v5)
      {
        *(StatusReg + 200) = v7 & 0xFFF0FFFF | (v5 << 16);
      }
    }

    v8 = -4;
    if ((a3 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (*(a1 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFE, memory_order_release) > 2)
  {
    goto LABEL_22;
  }

  qword_1EBC5B980 = "API MISUSE: Over-release of an object";
  __break(1u);
LABEL_20:
  v8 = a1;
  if (*(a1 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release);
    v8 = a1;
    if (add_explicit <= 1)
    {
      qword_1EBC5B980 = "API MISUSE: Over-release of an object";
      __break(1u);
      goto LABEL_39;
    }
  }

LABEL_22:
  if ((a4 & 0x3000000000) == 0)
  {
    v8 = *(a1 + 24);
    add_explicit = *a2;
    if ((*a2 & 0x80) != 0)
    {
      v11 = *(a1 + 84) & 0xFFF;
      if (v11)
      {
        v12 = v11 >= 0x100 ? 1 << (BYTE1(v11) + 7) : 0;
        v13 = v12 | *(a1 + 84);
        if (v13 > (*(a2 + 8) & 0xFFFFFFuLL))
        {
          *(a2 + 8) = v13 | 0x10000000;
        }
      }

      if ((*(a2 + 106) & 3) == 0)
      {
        *(a2 + 106) |= HIWORD(*(a1 + 80)) & 3;
      }
    }

    if (*(v8 + 80) == 1)
    {
      *a2 = add_explicit | 2;
LABEL_37:
      *(a2 + 106) &= ~0x80u;
      return (*(*v8 + 88))(v8);
    }

LABEL_39:
    *a2 = add_explicit & 0xFFFFFFFFFFFFFFFDLL;
    if (!*(v8 + 48))
    {
      v14 = *(v8 + 56);
      while ((v14 & 0xFFC0018000000000) == 0)
      {
        v15 = v14;
        atomic_compare_exchange_strong_explicit((v8 + 56), &v15, v14 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        v16 = v15 == v14;
        v14 = v15;
        if (v16)
        {
          return _dispatch_non_barrier_waiter_redirect_or_wake(v8, a2);
        }
      }
    }

    goto LABEL_37;
  }

  if ((*a2 & 0x80) != 0)
  {
    *(a2 + 56) = a1;
  }

  return _dispatch_waiter_wake(a2, v8, a4, a5);
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

void _dispatch_lane_concurrent_drain(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v4 = *(a1 + 24);
  v5 = *a4;
  v48 = (a1 + 48);
  if (!*(a1 + 48))
  {
    return;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v52 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v52;
  if ((v5 & 0x40000000000000) != 0)
  {
    v9 = 0x40000000000000;
  }

  else
  {
    v9 = v5 & 0x3FFE0000000000;
  }

  if ((a3 & 0x10) != 0 && *(StatusReg + 40))
  {
    _dispatch_return_to_kernel();
  }

  v10 = *(a1 + 104);
  if (!v10)
  {
    v10 = _dispatch_wait_for_enqueuer((a1 + 104));
  }

  v11 = *(a1 + 56);
  if (!(v11 >> 55))
  {
    v51 = v4;
    while (v4 == *(a1 + 24))
    {
      v12 = *v10;
      if (*v10 >= 0x1000uLL)
      {
        v13 = *v10;
        if ((*(v12 + 40) & 0xF0) == 0x10 && (*(v10 + 80) & 0x80000) != 0)
        {
LABEL_18:
          if (v9 != 0x40000000000000)
          {
            v14 = (*(a1 + 80) << 41) - 0x10000000000;
            v15 = v11;
            do
            {
              if ((v11 & 0x10000000000) != 0)
              {
                v16 = 0;
              }

              else
              {
                v16 = v14;
              }

              v17 = v16 + v11 - v9;
              if (!(v17 >> 53))
              {
                v17 += 0x40010000000000;
              }

              atomic_compare_exchange_strong_explicit((a1 + 56), &v15, v17 & 0xFFFFFF7FFFFFFFFFLL, memory_order_acquire, memory_order_acquire);
              v19 = v15 == v11;
              v11 = v15;
            }

            while (!v19);
            if ((v17 & 0x40000000000000) == 0)
            {
              goto LABEL_135;
            }

            v12 = *v10;
          }

          if (v12 <= 0xFFF && (a3 & 0x80000) == 0 && (v12 & 1) != 0)
          {
            *(a2 + 8) = v10;
            if ((a3 & 8) == 0)
            {
              goto LABEL_148;
            }

            qword_1EBC5B980 = "BUG IN LIBDISPATCH: Deferred continuation on source, mach channel or mgr";
            __break(1u);
LABEL_138:
            qword_1EBC5B980 = "API MISUSE: Voucher over-release";
            __break(1u);
            return;
          }

          v18 = *(v10 + 16);
          *(a1 + 104) = v18;
          if (!v18)
          {
            v38 = *v48;
            while (v10 == (v38 & 0xFFFFFFFFFFFFFFF8))
            {
              v39 = v38;
              atomic_compare_exchange_strong_explicit(v48, &v39, 0, memory_order_release, memory_order_relaxed);
              v9 = 0x40000000000000;
              v19 = v39 == v38;
              v38 = v39;
              if (v19)
              {
                goto LABEL_42;
              }
            }

            v18 = *(v10 + 16);
            if (!v18)
            {
              v18 = _dispatch_wait_for_enqueuer((v10 + 16));
            }

            *(a1 + 104) = v18;
          }

          v9 = 0x40000000000000;
          goto LABEL_42;
        }
      }

      else if ((v12 & 2) != 0)
      {
        goto LABEL_18;
      }

      if (v9 == 0x40000000000000)
      {
        atomic_fetch_xor_explicit((a1 + 56), 0x40000000000000uLL, memory_order_release);
        v9 = *(a1 + 80) << 41;
      }

      else if (!v9)
      {
        if (v12 > 0xFFF || (v12 & 0x81) == 0)
        {
          while ((v11 & 0xFFE0018000000000) == 0)
          {
            v44 = v11;
            atomic_compare_exchange_strong_explicit((a1 + 56), &v44, v11 + 0x20000000000, memory_order_acquire, memory_order_acquire);
            v19 = v44 == v11;
            v11 = v44;
            if (v19)
            {
              v9 = 0x20000000000;
              goto LABEL_35;
            }
          }

LABEL_135:
          *a4 &= 0x4000000001uLL;
          *(StatusReg + 160) = v52;
          return;
        }

        v9 = 0x20000000000;
        atomic_fetch_add_explicit((a1 + 56), 0x20000000000uLL, memory_order_relaxed);
      }

LABEL_35:
      v18 = *(v10 + 16);
      *(a1 + 104) = v18;
      if (!v18)
      {
        v36 = *v48;
        while (v10 == (v36 & 0xFFFFFFFFFFFFFFF8))
        {
          v37 = v36;
          atomic_compare_exchange_strong_explicit(v48, &v37, 0, memory_order_release, memory_order_relaxed);
          v19 = v37 == v36;
          v36 = v37;
          if (v19)
          {
            goto LABEL_36;
          }
        }

        v18 = *(v10 + 16);
        if (!v18)
        {
          v18 = _dispatch_wait_for_enqueuer((v10 + 16));
        }

        *(a1 + 104) = v18;
      }

LABEL_36:
      if (*v10 <= 0xFFFuLL)
      {
        v19 = (*v10 & 0x81) == 0;
        *v10;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v9 -= 0x20000000000;
        _dispatch_non_barrier_waiter_redirect_or_wake(a1, v10);
        goto LABEL_110;
      }

      if ((a3 & 0x20000) != 0)
      {
        v9 -= 0x20000000000;
        _dispatch_continuation_redirect_push(a1, v10, *(a1 + 60) & 7);
        goto LABEL_110;
      }

LABEL_42:
      v20 = *(StatusReg + 192);
      if (v20)
      {
        (*v20)(a1);
      }

      v21 = *v10;
      if (*v10 < 0x1000uLL)
      {
        if ((a3 & 0x1000000) != 0)
        {
          v23 = objc_autoreleasePoolPush();
          v21 = *v10;
        }

        else
        {
          v23 = 0;
        }

        v24 = *(v10 + 24);
        if ((v21 & 4) != 0)
        {
          *(v10 + 24) = -1;
        }

        v25 = *(v10 + 8);
        if (v25 == -1)
        {
          v28 = 0;
        }

        else
        {
          v26 = *(StatusReg + 200);
          if (((v26 >> 8) & 0xF) != 0)
          {
            v27 = 1 << ((BYTE1(v26) & 0xFu) + 7);
          }

          else
          {
            v27 = 0;
          }

          v28 = v27 | *(StatusReg + 200);
          v29 = v25 & 0xFFFFFF;
          if ((v25 & 0xFFFFFF) != 0)
          {
            v30 = v27 & 0xFFFFFF00;
            if ((v26 & 0x44000000) == 0 && (*(v10 + 8) & 0x10000000) == 0)
            {
              v32 = v28;
            }

            else
            {
              v32 = v25 & 0xFFFFFF;
            }

            if (v29 >= v30)
            {
              v28 = v32;
            }
          }

          else if (v26 >> 12)
          {
            v28 = (256 << ((v26 >> 12) - 1)) | 0xFF;
          }
        }

        v33 = v21 & 4;
        v34 = v28 & 0x7FFFFFFF02FFFFFFLL;
        v35 = *(StatusReg + 32);
        if ((v35 & 0x1000000) != 0)
        {
          if (!v34)
          {
            v34 = v35 & 0xFFFFFFFFFEFFFFFFLL;
            goto LABEL_90;
          }

LABEL_95:
          _dispatch_set_priority_and_voucher_slow(v34, v24, v33 | 2);
        }

        else
        {
          if (v34 == (v35 & 0xFFFFFFFF76FFFFFFLL))
          {
            goto LABEL_71;
          }

LABEL_90:
          if (v34)
          {
            goto LABEL_95;
          }

LABEL_71:
          if (v24 != -1)
          {
            if (*(StatusReg + 224) != v24)
            {
              v34 = 0;
              goto LABEL_95;
            }

            if ((v21 & 4) != 0 && v24)
            {
              if (atomic_fetch_add_explicit((v24 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
              {
                goto LABEL_138;
              }

LABEL_97:
              v40 = *(StatusReg + 176);
              if (v40)
              {
                v41 = *(v40 + 8) + 1;
              }

              else
              {
                v41 = 1;
              }

              v33 = v10;
              if (v41 <= _dispatch_continuation_cache_limit)
              {
                v33 = 0;
                *(v10 + 16) = v40;
                *(v10 + 8) = v41;
                *(StatusReg + 176) = v10;
              }

LABEL_102:
              if ((v21 & 8) != 0)
              {
                v42 = *(v10 + 48);
                v43 = *(v42->isa + 5);
                if (v43 != 514)
                {
                  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected object type";
                  qword_1EBC5B9B0 = v43;
                  __break(1u);
                  return;
                }

                _dispatch_client_callout(*(v10 + 40), *(v10 + 32));
                dispatch_group_leave(v42);
              }

              else
              {
                _dispatch_client_callout(*(v10 + 40), *(v10 + 32));
              }

              if (v33)
              {
                _dispatch_continuation_free_to_cache_limit(v33);
              }

              v4 = v51;
              if (v23)
              {
                objc_autoreleasePoolPop(v23);
              }

              goto LABEL_108;
            }
          }
        }

        if ((v21 & 4) != 0)
        {
          goto LABEL_97;
        }

        goto LABEL_102;
      }

      v22 = *v10;
      if (*(v21 + 40) == 1)
      {
        (*(v21 + 48))(v10, 0, (a3 >> 21) & 1);
      }

      else
      {
        (*(v21 + 64))(v10, a2, a3 & 0xFFFF0000);
      }

LABEL_108:
      if (v20)
      {
        v20[1](a1);
      }

LABEL_110:
      v10 = v18;
      if (!v18)
      {
        if (!*v48)
        {
          v10 = 0;
          break;
        }

        v10 = *(a1 + 104);
        if (!v10)
        {
          v10 = _dispatch_wait_for_enqueuer((a1 + 104));
        }
      }

      if (*(StatusReg + 40))
      {
        _dispatch_return_to_kernel();
      }

      if (*(a1 + 80) != 1 && ((a3 & 0x4000000) != 0 || (*(StatusReg + 960) & 1) == 0) && ((a3 & 0x100000) == 0 || (*(*(StatusReg + 216) + 60) & 7u) <= *(*(StatusReg + 216) + 100)))
      {
        v11 = *(a1 + 56);
        if (!(v11 >> 55))
        {
          continue;
        }
      }

      break;
    }
  }

  if (v9 == 0x40000000000000)
  {
    v9 = (*(a1 + 80) << 41) + 0x40000000000000;
  }

  if (!v10)
  {
    *a4 = *a4 & 0x4000000001 | v9;
    *(StatusReg + 160) = v52;
    return;
  }

  v45 = *(a1 + 80);
  if (v45 >= 2)
  {
    v47 = *v10;
    if (*v10 < 0x1000uLL)
    {
      if ((v47 & 2) == 0)
      {
        goto LABEL_147;
      }
    }

    else if ((*(v47 + 40) & 0xF0) != 0x10 || (*(v10 + 80) & 0x80000) == 0)
    {
      goto LABEL_147;
    }

    v9 = v9 - (v45 << 41) + 0x10000000000;
  }

LABEL_147:
  *a4 = *a4 & 0x4000000001 | v9;
LABEL_148:
  *(StatusReg + 160) = v52;
  v46 = *(a1 + 24);
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
  if (*(v3 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed) <= 0)
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

    _os_object_release_internal_n(a1, 2);
  }
}

void _dispatch_root_queue_push_override_stealer(int *a1, uint64_t a2, unsigned int a3)
{
  if (a3 - 7 <= 0xFFFFFFF9)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_1EBC5B9B0 = a3;
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
  v10->isa = &unk_1F3A435D8;
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
    qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
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

  *v7 = &unk_1F3A43590;
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
    qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }

  return result;
}

atomic_ullong *_dispatch_lane_drain_non_barriers(atomic_ullong *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(result + 40);
  atomic_fetch_and_explicit(result + 7, 0xFFBFFFFFFFFFFFFFLL, memory_order_release);
  v6 = result + 6;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    if (v5)
    {
      --v5;
      goto LABEL_4;
    }

    if (*a2 > 0xFFFuLL || (*a2 & 0x81) == 0)
    {
      break;
    }

    v5 = 0;
    atomic_fetch_add_explicit((v4 + 56), 0x20000000000uLL, memory_order_relaxed);
LABEL_4:
    v8 = *(a2 + 16);
    *(v4 + 104) = v8;
    if (!v8)
    {
      v25 = *v6;
      while (a2 == (v25 & 0xFFFFFFFFFFFFFFF8))
      {
        v26 = v25;
        atomic_compare_exchange_strong_explicit(v6, &v26, 0, memory_order_release, memory_order_relaxed);
        v9 = v26 == v25;
        v25 = v26;
        if (v9)
        {
          goto LABEL_5;
        }
      }

      v31 = a2;
      v8 = *(a2 + 16);
      if (!v8)
      {
        v8 = _dispatch_wait_for_enqueuer((a2 + 16));
      }

      *(v4 + 104) = v8;
      a2 = v31;
    }

LABEL_5:
    v9 = *a2 > 0xFFFuLL || (*a2 & 0x81) == 0;
    if (v9)
    {
      result = _dispatch_continuation_redirect_push(v4, a2, *(v4 + 60) & 7);
    }

    else
    {
      result = _dispatch_non_barrier_waiter_redirect_or_wake(v4, a2);
    }

    a2 = v8;
    if (!v8)
    {
      goto LABEL_17;
    }

LABEL_12:
    v10 = *a2;
    if (*a2 <= 0xFFFuLL)
    {
      if ((v10 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else if ((*(v10 + 40) & 0xF0) == 0x10 && (*(a2 + 80) & 0x80000) != 0)
    {
      goto LABEL_17;
    }
  }

  v23 = *(v4 + 56);
  while ((v23 & 0xFFE0018000000000) == 0)
  {
    v24 = v23;
    atomic_compare_exchange_strong_explicit((v4 + 56), &v24, v23 + 0x20000000000, memory_order_acquire, memory_order_acquire);
    v9 = v24 == v23;
    v23 = v24;
    if (v9)
    {
      v5 = 0;
      goto LABEL_4;
    }
  }

  v5 = 0;
LABEL_17:
  v11 = *(StatusReg + 24) & 0xFFFFFFFCLL;
  v12 = v5 << 41;
  if (a2)
  {
    v13 = *(v4 + 80);
    if (v13 >= 2)
    {
      v27 = *a2;
      if (*a2 < 0x1000uLL)
      {
        if ((v27 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else if ((*(v27 + 40) & 0xF0) != 0x10 || (*(a2 + 80) & 0x80000) == 0)
      {
        goto LABEL_19;
      }

      v12 = (v12 | 0x10000000000) - (v13 << 41);
    }
  }

LABEL_19:
  v14 = *(v4 + 56);
  do
  {
    v15 = v14 - v12;
    v16 = (v14 - v12) & 0xFFFFFF7700000001;
    if (a2)
    {
      if ((v15 & 0x10000000000) != 0)
      {
        v18 = v16 + 0x40018000000000;
      }

      else
      {
        v18 = v16 + (*(v4 + 80) << 41) + 0x40008000000000;
      }

      v19 = v18 & 0x3FFE0000000000;
      v20 = 0x8000000000;
      if ((v14 & 0x8000000000) != 0)
      {
        v20 = 0x8000000001;
      }

      v16 |= v20;
      v21 = v18 & 0xFFE0017FFFFFFFFFLL | v11;
      if (v19 == 0x20000000000000)
      {
        v16 = v21;
      }
    }

    else if ((v14 & 0x8000000000) != 0)
    {
      atomic_fetch_xor_explicit((v4 + 56), 0x8000000000uLL, memory_order_acquire);
      a2 = *(v4 + 104);
      if (a2)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    v17 = v14;
    atomic_compare_exchange_strong_explicit((v4 + 56), &v17, v16, memory_order_relaxed, memory_order_relaxed);
    v9 = v17 == v14;
    v14 = v17;
  }

  while (!v9);
  if ((~v15 & 0x1800000000) == 0)
  {
    v28 = HIDWORD(v15) & 7;
    v29 = *(StatusReg + 200);
    if ((HIWORD(v29) & 0xF) < v28)
    {
      *(StatusReg + 200) = v29 & 0xFFF0FFFF | (v28 << 16);
    }
  }

  if (((v16 ^ v15) & 0x40000000000000) != 0)
  {

    return _dispatch_lane_barrier_complete(v4, 0, a3);
  }

  else if ((v16 ^ v15))
  {
    if ((a3 & 1) != 0 || *(v4 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((v4 + 8), 2u, memory_order_relaxed) > 0)
    {
      v30 = *(**(v4 + 24) + 88);

      return v30();
    }

    else
    {
      qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
      __break(1u);
    }
  }

  else if (a3)
  {

    return _os_object_release_internal_n(v4, 2);
  }

  return result;
}

uint64_t _dispatch_channel_invoke_cancel_check(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 116) & 8) != 0 || (*(a1 + 80) & 0x10000000) == 0)
  {
    return 1;
  }

  if (*(a2 + 35))
  {
    v6 = objc_autoreleasePoolPush();
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(a3 + 24))(a1, *(a1 + 32));
  if (v6)
  {
    objc_autoreleasePoolPop(v6);
  }

  if (v7)
  {
    *(a1 + 116) |= 8u;
    if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) <= 1)
    {
      _os_object_retain_weak_cold_1();
    }

    return 1;
  }

  result = 0;
  *(a2 + 40) = -1;
  return result;
}

uint64_t _dispatch_mgr_sched_qos2prio(int a1)
{
  if (a1 == 5)
  {
    return 4;
  }

  HIDWORD(v3) = a1 - 9;
  LODWORD(v3) = a1 - 9;
  v2 = v3 >> 2;
  if (v2 > 6)
  {
    return 0;
  }

  else
  {
    return dword_1BB581360[v2];
  }
}

uint64_t _dispatch_worker_thread(uint64_t a1)
{
  v2 = *(a1 + 32);
  add_explicit = atomic_fetch_add_explicit((a1 + 112), 0xFFFFFFFF, memory_order_acquire);
  if (add_explicit <= 0)
  {
    _dispatch_worker_thread_cold_2(add_explicit);
  }

  if (v2[18].isa)
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 192) = v2 + 18;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    pthread_setname_np(v4);
  }

  isa = v2[8].isa;
  if (isa)
  {
    (*(isa + 2))();
  }

  _dispatch_sigmask();
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 32);
  v8 = *(a1 + 84);
  if ((v8 & 0x46000FFF) == 0)
  {
    v9 = v8 & 0x80000000;
    if ((v7 & 0x22000000) != 0 || (v7 & 0x3F00) == 0)
    {
      v8 = v9 | 0xF0000;
    }

    else
    {
      v10 = (__clz(__rbit32((v7 >> 8) & 0x3FFF)) << 8) + 256;
      if (((v7 >> 8) & 0x3FFF) == 0)
      {
        v10 = 0;
      }

      v8 = v7 & 0x8C0000FF | v9 | v10;
    }
  }

  v11 = v7 & 0xFFFFFFFF02FFFFFFLL;
  if (v7 == -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7 & 0xFFFFFFFF02FFFFFFLL;
  }

  do
  {
    _dispatch_root_queue_drain(a1, v8, 0x20000);
    v13 = *(StatusReg + 32);
    if ((v13 & 0x1000000) != 0)
    {
      v14 = v11;
      if (v12)
      {
        goto LABEL_28;
      }

      v14 = v13 & 0xFFFFFFFFFEFFFFFFLL;
LABEL_25:
      if (v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    v14 = v12;
    if (v12 != (v13 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_25;
    }

LABEL_20:
    if (!*(StatusReg + 224))
    {
      goto LABEL_21;
    }

    v14 = 0;
LABEL_28:
    _dispatch_set_priority_and_voucher_slow(v14, 0, 6);
LABEL_21:
    v15 = dispatch_time(0, 5000000000);
  }

  while (!dispatch_semaphore_wait(v2 + 9, v15));
  atomic_fetch_add_explicit((a1 + 100), 1u, memory_order_release);
  _dispatch_root_queue_poke(a1, 1, 0);
  if (*(a1 + 8) != 0x7FFFFFFF)
  {
    v16 = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release);
    if (v16 <= 1)
    {
      _dispatch_worker_thread_cold_1(v16, a1);
    }
  }

  return 0;
}

void _dispatch_root_queue_drain(uint64_t a1, unsigned int a2, unsigned int a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 160) = a1;
  *(StatusReg + 200) = a2;
  v7 = *(StatusReg + 216) & 0xFFFFFFFFFFFFFFFELL;
  if (v7)
  {
    if (v7 == -4)
    {
      _dispatch_main_queue_drain_cold_3();
    }

    add_explicit = atomic_fetch_add_explicit((v7 + 96), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 0)
    {
      if (add_explicit < 0)
      {
        _os_object_retain_weak_cold_1();
      }

      *(v7 + 56) = 0xDEAD000000000000;
      _dispatch_object_dealloc(v7);
    }
  }

  *(StatusReg + 216) = -4;
  memset(v30, 0, sizeof(v30));
  _dispatch_last_resort_autorelease_pool_push(v30);
  v9 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = __swp(v3, (a1 + 104));
        if (v3)
        {
          break;
        }

        v27 = -1;
        atomic_compare_exchange_strong_explicit((a1 + 104), &v27, 0, memory_order_relaxed, memory_order_relaxed);
        if (v27 == -1)
        {
          if (!*(a1 + 48))
          {
            goto LABEL_77;
          }

          v28 = _dispatch_root_queue_head_tail_quiesced;
          goto LABEL_62;
        }
      }

      if (v3 != -1)
      {
        break;
      }

      v28 = _dispatch_root_queue_mediator_is_gone;
LABEL_62:
      if (!__DISPATCH_ROOT_QUEUE_CONTENDED_WAIT__(a1, v28))
      {
        goto LABEL_77;
      }
    }

    v11 = v3 + 2;
    v12 = v3[2];
    if (v12)
    {
      goto LABEL_10;
    }

    *(a1 + 104) = 0;
    v29 = v3;
    atomic_compare_exchange_strong_explicit((a1 + 48), &v29, 0, memory_order_release, memory_order_relaxed);
    if (v29 != v3)
    {
      v12 = *v11;
      if (!*v11)
      {
        v12 = _dispatch_wait_for_enqueuer(v11);
      }

LABEL_10:
      *(a1 + 104) = v12;
      _dispatch_root_queue_poke(a1, 1, 0);
    }

    if (v9)
    {
      _pthread_workqueue_override_reset();
    }

    v13 = *(StatusReg + 192);
    if (v13)
    {
      (*v13)(a1);
    }

    v14 = *v3;
    if (*v3 < 0x1000uLL)
    {
      if ((a3 & 0x1000000) != 0)
      {
        objc_autoreleasePoolPush();
        v14 = *v3;
      }

      v17 = v3[3];
      if ((v14 & 4) != 0)
      {
        v3[3] = v10;
      }

      v18 = v3[1];
      if (v18 == -1)
      {
        v19 = 0;
      }

      else
      {
        v20 = *(StatusReg + 200);
        if (((v20 >> 8) & 0xF) != 0)
        {
          v21 = 1 << ((BYTE1(v20) & 0xFu) + 7);
        }

        else
        {
          v21 = 0;
        }

        v19 = v21 | *(StatusReg + 200);
        if ((v18 & 0xFFFFFF) != 0)
        {
          if ((v18 & 0xFFFFFFuLL) >= (v21 & 0xFFFFFF00) && ((v20 & 0x44000000) != 0 || (v3[1] & 0x10000000) != 0))
          {
            v19 = v18 & 0xFFFFFF;
          }
        }

        else if (v20 >> 12)
        {
          v19 = (256 << ((v20 >> 12) - 1)) | 0xFF;
        }
      }

      v23 = v19 & 0x7FFFFFFF02FFFFFFLL;
      v24 = *(StatusReg + 32);
      if ((v24 & 0x1000000) != 0)
      {
        if (v23)
        {
          goto LABEL_76;
        }

        v23 = v24 & 0xFFFFFFFFFEFFFFFFLL;
      }

      else if (v23 == (v24 & 0xFFFFFFFF76FFFFFFLL))
      {
LABEL_44:
        if (v17 == -1)
        {
          goto LABEL_45;
        }

        if (*(StatusReg + 224) == v17)
        {
          if ((v14 & 4) != 0 && v17)
          {
            if (atomic_fetch_add_explicit((v17 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
            {
              _dispatch_async_redirect_invoke_cold_1();
            }

LABEL_51:
            v25 = *(StatusReg + 176);
            if (v25)
            {
              v26 = *(v25 + 8) + 1;
            }

            else
            {
              v26 = 1;
            }

            if (v26 <= _dispatch_continuation_cache_limit)
            {
              v3[2] = v25;
              *(v3 + 2) = v26;
              *(StatusReg + 176) = v3;
            }

LABEL_56:
            _dispatch_workloop_invoke_cold_4();
            if (v13)
            {
              goto LABEL_20;
            }

            goto LABEL_21;
          }

LABEL_45:
          if ((v14 & 4) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_51;
        }

        v23 = 0;
LABEL_76:
        _dispatch_set_priority_and_voucher_slow(v23, v17, v14 & 4 | 2);
        goto LABEL_45;
      }

      if (v23)
      {
        goto LABEL_76;
      }

      goto LABEL_44;
    }

    v15 = *v3;
    if (*(v14 + 40) == 1)
    {
      (*(v14 + 48))(v3, 0, (a3 >> 21) & 1);
    }

    else
    {
      (*(v14 + 64))(v3, v30, a3 & 0xFFFF0000);
    }

    if (v13)
    {
LABEL_20:
      v13[1](a1);
    }

LABEL_21:
    v16 = WORD1(*(StatusReg + 200)) & 0xF;
    if (v16)
    {
      *(StatusReg + 200) &= 0xFFF0FFFFuLL;
      v9 = v16 != 15;
    }

    else
    {
      v9 = 0;
    }

    if (*(StatusReg + 960))
    {
      break;
    }

    *(StatusReg + 960) = 0;
  }

LABEL_77:
  _dispatch_last_resort_autorelease_pool_pop(v30);
  *(StatusReg + 216) = 0;
  *(StatusReg + 40) = 0;
  *(StatusReg + 200) = 0;
  *(StatusReg + 160) = 0;
}

BOOL __DISPATCH_ROOT_QUEUE_CONTENDED_WAIT__(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = 0;
  v5 = 500;
LABEL_2:
  v6 = -80;
  do
  {
    if (__CFADD__(v6++, 1))
    {
      if ((v4 & 1) == 0)
      {
        atomic_fetch_add_explicit((a1 + 112), 1u, memory_order_release);
      }

      MEMORY[0x1BFB10130](0, 3, v5);
      v8 = a2(a1);
      if (!v8)
      {
        v9 = (v5 >> 4) & 0x7FFFFFF;
        v5 = (2 * v5);
        v4 = 1;
        if (v9 < 0xC35)
        {
          goto LABEL_2;
        }

        v8 = 0;
      }

      goto LABEL_12;
    }

    __yield();
    v8 = a2(a1);
  }

  while (!v8);
  if ((v4 & 1) == 0)
  {
    return v8 == 1;
  }

LABEL_12:
  atomic_fetch_add_explicit((a1 + 112), 0xFFFFFFFF, memory_order_acquire);
  if (*(a1 + 48))
  {
    v8 = 1;
  }

  else if (!v8)
  {
    _dispatch_root_queue_poke(a1, 1, 0);
    v8 = 0;
  }

  return v8 == 1;
}

uint64_t _dispatch_root_queue_head_tail_quiesced(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if ((*(a1 + 104) != 0) != (*(a1 + 48) == 0))
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void _dispatch_mgr_priority_raise(pthread_attr_t *a1)
{
  if (_dispatch_mgr_sched_pred != -1)
  {
    dispatch_once_f(&_dispatch_mgr_sched_pred, 0, _dispatch_mgr_sched_init);
  }

  v12 = 0;
  v2 = pthread_attr_getschedparam(a1, &v12);
  if (v2)
  {
    _dispatch_bug(6350, v2);
  }

  __qos_class = QOS_CLASS_UNSPECIFIED;
  pthread_attr_get_qos_class_np(a1, &__qos_class, 0);
  v3 = __qos_class;
  if (__qos_class)
  {
    sched_priority = _dispatch_mgr_sched_qos2prio(__qos_class);
    v12.sched_priority = sched_priority;
    v5 = dword_1ED3F436C;
    do
    {
      if (v5 >= v3)
      {
        break;
      }

      v6 = v5;
      atomic_compare_exchange_strong_explicit(&dword_1ED3F436C, &v6, v3, memory_order_relaxed, memory_order_relaxed);
      v7 = v6 == v5;
      v5 = v6;
    }

    while (!v7);
  }

  else
  {
    sched_priority = v12.sched_priority;
  }

  v8 = _dispatch_mgr_sched;
  while (v8 < sched_priority)
  {
    v9 = v8;
    atomic_compare_exchange_strong_explicit(&_dispatch_mgr_sched, &v9, sched_priority, memory_order_relaxed, memory_order_relaxed);
    v7 = v9 == v8;
    v8 = v9;
    if (v7)
    {
      if (_dispatch_root_queues_pred != -1)
      {
        dispatch_once_f(&_dispatch_root_queues_pred, 0, _dispatch_root_queues_init_once);
      }

      if (sched_priority > dword_1ED3F4370 || __qos_class && _pthread_qos_class_encode())
      {
        v10 = _pthread_workqueue_set_event_manager_priority();
        if (v10)
        {
          _dispatch_bug(6382, v10);
        }
      }

      return;
    }
  }
}

uint64_t _dispatch_main_queue_update_priority_from_thread()
{
  v0 = qword_1ED3F35F8[0];
  if (LODWORD(qword_1ED3F35F8[0]) >= 4)
  {
    result = LODWORD(qword_1ED3F35F8[0]) | 3u;
  }

  else
  {
    result = 0;
  }

  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
  v3 = v2;
  v4 = (v2 >> 8) & 0x3FFF;
  v5 = __clz(__rbit32(v4));
  if (v4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = v3 | (v6 << 8);
  v8 = HIDWORD(v0) & 7;
  v9 = (dword_1ED3F3614 >> 8) & 0xF;
  dword_1ED3F3614 = v7;
  if (v9 < v8 && v4 == 0)
  {
    return _pthread_qos_override_end_direct();
  }

  if (v9 < v8 && v8 <= v6)
  {
    return _pthread_qos_override_end_direct();
  }

  if (v9 >= v8 && v8 > v6)
  {
    return _pthread_qos_override_start_direct();
  }

  return result;
}

uint64_t _dispatch_root_queues_init_once()
{
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_sema4_create_slow_cold_1();
  }

  v0 = _pthread_workqueue_supported();
  v1 = v0;
  if ((v0 & 0x10) == 0)
  {
    _dispatch_root_queues_init_once_cold_5(v0);
  }

  v4 = 0x200000000;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 64;
  v9 = 72;
  if ((v0 & 0x80) != 0)
  {
    v7 = _dispatch_worker_thread2;
    v5 = _dispatch_kevent_worker_thread;
    v6 = _dispatch_workloop_worker_thread;
  }

  else
  {
    if ((v0 & 0x40) == 0)
    {
      _dispatch_root_queues_init_once_cold_4(v0);
    }

    v7 = _dispatch_worker_thread2;
    v5 = _dispatch_kevent_worker_thread;
  }

  result = pthread_workqueue_setup();
  if (result)
  {
    _dispatch_root_queues_init_once_cold_2(result, v1);
  }

  if ((_dispatch_mode & 4) != 0)
  {
    v3 = -1;
    result = sysctlbyname("kern.wq_limit_cooperative_threads", 0, 0, &v3, 4uLL);
    if (result)
    {
      _dispatch_root_queues_init_once_cold_3();
    }
  }

  return result;
}

void _dispatch_worker_thread2(uint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  StatusReg[120] = 0;
  StatusReg[4] = a1 & 0xFFFFFFFF88FFFFFFLL;
  if ((a1 & 0x8000000) != 0)
  {
    v2 = 2293760;
  }

  else
  {
    v2 = 196608;
  }

  v3 = __clz(__rbit32((a1 >> 8) & 0x3FFF));
  if (((a1 >> 8) & 0x3FFF) != 0)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 - 7 <= 0xFFFFFFF9)
  {
    _dispatch_queue_priority_inherit_from_target_cold_1(v4);
  }

  v5 = 3 * v4;
  if ((a1 & 0x88000000) == 0x80000000)
  {
    v6 = -2;
  }

  else
  {
    v6 = (a1 >> 26) | 0xFFFFFFFD;
  }

  v7 = &_dispatch_root_queues + 16 * (v6 + v5);
  atomic_fetch_add_explicit(v7 + 28, 0xFFFFFFFF, memory_order_acquire);
  v8 = (StatusReg[29] & 0xFFFFFFFFFFFFFFFELL);
  if (v8)
  {
    _dispatch_free_deferred_unotes(v8);
    StatusReg[29] = 0;
  }

  _dispatch_root_queue_drain(v7, *(v7 + 21), v2);
  v9 = StatusReg[4];
  if ((v9 & 0x1000000) != 0)
  {
    v10 = v9 & 0xFFFFFFFFFEFFFFFFLL;
    if ((v9 & 0xFFFFFFFFFEFFFFFFLL) != 0)
    {
      goto LABEL_20;
    }
  }

  if (StatusReg[28])
  {
    v10 = 0;
LABEL_20:
    _dispatch_set_priority_and_voucher_slow(v10, 0, 14);
  }

  StatusReg[120] = 0;
}

void _dispatch_kevent_worker_thread(uint64_t *a1, int *a2)
{
  if (a1 && a2)
  {
    if (!*a2 || !*a1)
    {
      return;
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = StatusReg[27] & 0xFFFFFFFFFFFFFFFELL;
    if (v5)
    {
      if (v5 != -4)
      {
        add_explicit = atomic_fetch_add_explicit((v5 + 96), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit > 0)
        {
          goto LABEL_10;
        }

        if ((add_explicit & 0x80000000) == 0)
        {
          *(v5 + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(v5);
          goto LABEL_10;
        }

        qword_1EBC5B980 = "API MISUSE: Over-release of an object";
        __break(1u);
      }

      qword_1EBC5B980 = "BUG IN LIBDISPATCH: Lingering DISPATCH_WLH_ANON";
      __break(1u);
      return;
    }

LABEL_10:
    StatusReg[27] = -4;
    v7 = *a1;
    StatusReg[120] = 0;
    v18 = 0;
    v20 = 0;
    v17 = 0u;
    v19 = -4;
    v21 = v7;
    v22 = 0;
    v8 = StatusReg[4];
    if ((v8 & 0x2000000) != 0)
    {
      v9 = StatusReg[4] & 0xFE000000;
      if ((v8 & 0x20000000) == 0)
      {
        v9 = StatusReg[4];
      }

      StatusReg[4] = v9 & 0xFFFFFFFFFEFFFFFFLL;
      StatusReg[25] = 34537472;
      StatusReg[20] = &_dispatch_mgr_q;
      v10 = qword_1ED3F3678[0];
      v11 = StatusReg[3] & 0xFFFFFFFCLL | 0x40020000000000;
      while ((v10 & 0xFFE00000FFFFFFFCLL) == 0)
      {
        v12 = v10;
        atomic_compare_exchange_strong_explicit(qword_1ED3F3678, &v12, v11 | v10 & 0x7700000001, memory_order_acquire, memory_order_acquire);
        v13 = v12 == v10;
        v10 = v12;
        if (v13)
        {
          v19 = -4;
          goto LABEL_19;
        }
      }

      qword_1EBC5B980 = "BUG IN LIBDISPATCH: Locking the manager should not fail";
      qword_1EBC5B9B0 = v10;
      __break(1u);
    }

    else
    {
      StatusReg[4] = v8 & 0xFFFFFFFF88FFFFFFLL | 0x1000000;
      BYTE4(v22) = 1;
LABEL_19:
      v5 = StatusReg[29] & 0xFFFFFFFFFFFFFFFELL;
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    _dispatch_free_deferred_unotes(v5);
LABEL_20:
    StatusReg[29] = &v17;
    _dispatch_event_loop_merge(v7, *a2);
    if ((v8 & 0x2000000) != 0)
    {
      _dispatch_mgr_queue_drain();
      if (byte_1ED3F4236)
      {
        _dispatch_event_loop_drain_timers(&_dispatch_timers_heap, 9u);
      }

      v14 = qword_1ED3F3678[0];
      do
      {
        v15 = v14;
        atomic_compare_exchange_strong_explicit(qword_1ED3F3678, &v14, (v14 & 0xFFFFFFF000000001) - 0x40020000000000, memory_order_release, memory_order_relaxed);
      }

      while (v14 != v15);
      StatusReg[25] = 0;
      StatusReg[20] = 0;
      if ((v15 & 0x8000000000) != 0)
      {
        _dispatch_event_loop_poke(0xFFFFFFFFFFFFFFF8, 0, 0);
      }
    }

    else if (*(&v17 + 1))
    {
      if (v19 == -4)
      {
        StatusReg[29] = 0;
        _dispatch_root_queue_drain_deferred_item(&v17);
      }

      else
      {
        _dispatch_root_queue_drain_deferred_wlh(&v17);
      }
    }

    if (v20)
    {
      v16 = v20 | 1;
    }

    else
    {
      v16 = 0;
    }

    StatusReg[29] = v16;
    StatusReg[120] = 0;
    *a2 = v22;
    StatusReg[27] = 0;
    StatusReg[5] = 0;
    return;
  }

  _dispatch_bug(6827, 0);
}

void _dispatch_workloop_worker_thread(uint64_t *a1, uint64_t *a2, int *a3)
{
  if (a1 && a2 && a3)
  {
    v5 = *a1;
    if (*a1)
    {
      if (!*a3 || !*a2)
      {
        return;
      }

      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      updated = StatusReg[27] & 0xFFFFFFFFFFFFFFFELL;
      if (updated == -4)
      {
        goto LABEL_80;
      }

      if (updated == v5)
      {
LABEL_15:
        StatusReg[27] = v5;
        v9 = *a2;
        StatusReg[120] = 0;
        v29 = 0;
        v31 = 0;
        v28 = 0u;
        v30 = v5;
        v32 = v9;
        v33 = 0;
        if (v5 == -4)
        {
          v10 = 0;
          v11 = 0;
          memset(&v27, 0, sizeof(v27));
          goto LABEL_35;
        }

        if (*(*v5 + 40) == 131090 && (v12 = *(v5 + 200)) != 0)
        {
          v13 = *v12;
          memset(&v27, 0, sizeof(v27));
          if ((v13 & 0x40) != 0)
          {
            updated = *(v5 + 72);
            if (!updated || StatusReg[124] || (updated = pthread_setname_np(updated), v10 = 1, StatusReg[124] = 1, (v12 = *(v5 + 200)) != 0))
            {
              if (*(v12 + 4) && !StatusReg[115])
              {
                v26 = _dispatch_calloc_typed(1uLL, 0x28uLL, 0x10200401C7990E2uLL);
                updated = _os_workgroup_join_update_wg(*(*(v5 + 200) + 32), v26);
                v11 = 0;
                StatusReg[115] = v26;
                v10 = 1;
              }

              else
              {
                v11 = 0;
                v10 = 1;
              }

LABEL_35:
              v15 = StatusReg[4];
              if ((v15 & 0x2000000) != 0)
              {
                v17 = StatusReg[4] & 0xFE000000;
                if ((v15 & 0x20000000) == 0)
                {
                  v17 = StatusReg[4];
                }

                StatusReg[4] = v17 & 0xFFFFFFFFFEFFFFFFLL;
                StatusReg[25] = 34537472;
                StatusReg[20] = &_dispatch_mgr_q;
                v18 = qword_1ED3F3678[0];
                v19 = StatusReg[3] & 0xFFFFFFFCLL | 0x40020000000000;
                while ((v18 & 0xFFE00000FFFFFFFCLL) == 0)
                {
                  v20 = v18;
                  atomic_compare_exchange_strong_explicit(qword_1ED3F3678, &v20, v19 | v18 & 0x7700000001, memory_order_acquire, memory_order_acquire);
                  v21 = v20 == v18;
                  v18 = v20;
                  if (v21)
                  {
                    v30 = -4;
                    goto LABEL_47;
                  }
                }

                qword_1EBC5B980 = "BUG IN LIBDISPATCH: Locking the manager should not fail";
                qword_1EBC5B9B0 = v18;
                __break(1u);
              }

              else
              {
                v16 = v15 & 0xFFFFFFFF88FFFFFFLL;
                if (v5 == -4)
                {
                  v16 = v15 & 0xFFFFFFFF88FFFFFFLL | 0x1000000;
                }

                StatusReg[4] = v16;
                if (v5 == -4)
                {
                  BYTE4(v33) = 1;
                }

LABEL_47:
                updated = StatusReg[29] & 0xFFFFFFFFFFFFFFFELL;
                if (!updated)
                {
                  goto LABEL_48;
                }
              }

              _dispatch_free_deferred_unotes(updated);
LABEL_48:
              StatusReg[29] = &v28;
              _dispatch_event_loop_merge(v9, *a3);
              if ((v15 & 0x2000000) != 0)
              {
                _dispatch_mgr_queue_drain();
                if (byte_1ED3F4236)
                {
                  _dispatch_event_loop_drain_timers(&_dispatch_timers_heap, 9u);
                }

                v22 = qword_1ED3F3678[0];
                do
                {
                  v23 = v22;
                  atomic_compare_exchange_strong_explicit(qword_1ED3F3678, &v22, (v22 & 0xFFFFFFF000000001) - 0x40020000000000, memory_order_release, memory_order_relaxed);
                }

                while (v22 != v23);
                StatusReg[25] = 0;
                StatusReg[20] = 0;
                if ((v23 & 0x8000000000) != 0)
                {
                  _dispatch_event_loop_poke(0xFFFFFFFFFFFFFFF8, 0, 0);
                }
              }

              else if (*(&v28 + 1))
              {
                if (v30 == -4)
                {
                  StatusReg[29] = 0;
                  _dispatch_root_queue_drain_deferred_item(&v28);
                }

                else
                {
                  _dispatch_root_queue_drain_deferred_wlh(&v28);
                }
              }

              if (v11)
              {
                v24 = v10;
              }

              else
              {
                v24 = 1;
              }

              if ((v24 & 1) == 0)
              {
                os_workgroup_leave(v11, &v27);
              }

              if (v31)
              {
                v25 = v31 | 1;
              }

              else
              {
                v25 = 0;
              }

              StatusReg[29] = v25;
              StatusReg[5] = 0;
              StatusReg[120] = 0;
              *a3 = v33;
              StatusReg[27] = v5 | 1;
              return;
            }

LABEL_33:
            v11 = 0;
            goto LABEL_35;
          }
        }

        else
        {
          memset(&v27, 0, sizeof(v27));
        }

        if (*(*v5 + 40) != 131090)
        {
          goto LABEL_32;
        }

        v14 = *(v5 + 200);
        if (!v14)
        {
          goto LABEL_32;
        }

        v11 = *(v14 + 32);
        if (!v11 || (updated = os_workgroup_join(*(v14 + 32), &v27), !updated))
        {
          v10 = 0;
          goto LABEL_35;
        }

        if (updated == 22)
        {
LABEL_32:
          v10 = 0;
          goto LABEL_33;
        }

LABEL_81:
        qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_workloop os_workgroup_join failed";
        qword_1EBC5B9B0 = updated;
        __break(1u);
        return;
      }

      if (updated)
      {
        add_explicit = atomic_fetch_add_explicit((updated + 96), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit <= 0)
        {
          if (add_explicit < 0)
          {
            qword_1EBC5B980 = "API MISUSE: Over-release of an object";
            __break(1u);
LABEL_79:
            qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
            __break(1u);
LABEL_80:
            qword_1EBC5B980 = "BUG IN LIBDISPATCH: Lingering DISPATCH_WLH_ANON";
            __break(1u);
            goto LABEL_81;
          }

          *(updated + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(updated);
        }
      }

      if (v5 == -4 || (atomic_fetch_add_explicit((v5 + 96), 1u, memory_order_relaxed) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_79;
    }

    _dispatch_bug(6849, 0);

    _dispatch_kevent_worker_thread(a2, a3);
  }

  else
  {

    _dispatch_bug(6846, 0);
  }
}

void _dispatch_mgr_queue_drain()
{
  memset(v5, 0, sizeof(v5));
  v4 = 0x40020000000000;
  if (qword_1ED3F3670)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    if ((~*(StatusReg + 200) & 0xF0000) != 0)
    {
      *(StatusReg + 200) = *(StatusReg + 200) & 0xFFF0FFFFLL | 0xF0000;
    }

    _dispatch_lane_serial_drain(&_dispatch_mgr_q, v5, 0x40000u, &v4);
    if (v1)
    {
      _dispatch_mgr_queue_drain_cold_1();
    }

    v2 = *(StatusReg + 224);
    if (v2)
    {
      *(StatusReg + 224) = 0;
      if (*(v2 + 32))
      {
        _dispatch_set_priority_and_mach_voucher_slow(0, 0);
      }

      add_explicit = atomic_fetch_add_explicit((v2 + 12), 0xFFFFFFFF, memory_order_relaxed);
      if (add_explicit <= 1)
      {
        _dispatch_mgr_queue_drain_cold_2(add_explicit, v2);
      }
    }

    if ((*(StatusReg + 200) & 0xF0000) != 0)
    {
      *(StatusReg + 200) &= 0xFFF0FFFFuLL;
    }
  }
}

void _dispatch_root_queue_drain_deferred_item(uint64_t *a1)
{
  v2 = *a1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  StatusReg[20] = v2;
  memset(v27, 0, sizeof(v27));
  _dispatch_last_resort_autorelease_pool_push(v27);
  StatusReg[25] = *(v2 + 84);
  v4 = a1[1];
  v5 = StatusReg[24];
  if (v5)
  {
    (*v5)(v2);
  }

  v6 = *v4;
  if (*v4 < 0x1000uLL)
  {
    v9 = v4[3];
    if ((v6 & 4) != 0)
    {
      v4[3] = -1;
    }

    v10 = v6 & 4;
    v11 = v4[1];
    if (v11 == -1)
    {
      v12 = 0;
    }

    else
    {
      v13 = StatusReg[25];
      if (((v13 >> 8) & 0xF) != 0)
      {
        v14 = 1 << ((BYTE1(v13) & 0xFu) + 7);
      }

      else
      {
        v14 = 0;
      }

      v15 = v14 | StatusReg[25];
      v16 = v11 & 0xFFFFFF;
      if ((v11 & 0xFFFFFF) != 0)
      {
        v17 = v14 & 0xFFFFFF00;
        if ((v13 & 0x44000000) == 0 && (v4[1] & 0x10000000) == 0)
        {
          v12 = v15;
        }

        else
        {
          v12 = v11 & 0xFFFFFF;
        }

        if (v16 < v17)
        {
          v12 = v15;
        }
      }

      else if (v13 >> 12)
      {
        v12 = (256 << ((v13 >> 12) - 1)) | 0xFF;
      }

      else
      {
        v12 = v14 | StatusReg[25];
      }
    }

    v19 = v12 & 0x7FFFFFFF02FFFFFFLL;
    v20 = StatusReg[4];
    if ((v20 & 0x1000000) != 0)
    {
      if (v19)
      {
        goto LABEL_56;
      }

      v19 = v20 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v19 == (v20 & 0xFFFFFFFF76FFFFFFLL))
    {
LABEL_30:
      if (v9 == -1)
      {
        goto LABEL_31;
      }

      if (StatusReg[28] == v9)
      {
        if ((v6 & 4) != 0 && v9)
        {
          if (atomic_fetch_add_explicit((v9 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
          {
            _dispatch_async_redirect_invoke_cold_1();
          }

          goto LABEL_37;
        }

LABEL_31:
        if (!v10)
        {
          v21 = 0;
          goto LABEL_42;
        }

LABEL_37:
        v22 = StatusReg[22];
        if (v22)
        {
          v23 = *(v22 + 8) + 1;
        }

        else
        {
          v23 = 1;
        }

        v21 = v4;
        if (v23 <= _dispatch_continuation_cache_limit)
        {
          v21 = 0;
          v4[2] = v22;
          *(v4 + 2) = v23;
          StatusReg[22] = v4;
        }

LABEL_42:
        _dispatch_workloop_invoke_cold_7(v4, v21, v6);
        if (!v5)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      v19 = 0;
LABEL_56:
      v25 = v6 & 4;
      v26 = v6;
      _dispatch_set_priority_and_voucher_slow(v19, v9, v10 | 2);
      v10 = v25;
      LOBYTE(v6) = v26;
      goto LABEL_31;
    }

    if (v19)
    {
      goto LABEL_56;
    }

    goto LABEL_30;
  }

  v7 = *v4;
  if (*(v6 + 40) == 1)
  {
    (*(v6 + 48))(v4, 0, 0);
  }

  else
  {
    (*(v6 + 64))(v4, v27, 196608);
  }

  if (v5)
  {
LABEL_8:
    v5[1](v2);
  }

LABEL_9:
  _dispatch_last_resort_autorelease_pool_pop(v27);
  StatusReg[25] = 0;
  StatusReg[20] = 0;
  v8 = StatusReg[4];
  if ((v8 & 0x1000000) != 0)
  {
    v24 = v8 & 0xFFFFFFFFFEFFFFFFLL;
    if ((v8 & 0xFFFFFFFFFEFFFFFFLL) != 0)
    {
      goto LABEL_47;
    }
  }

  if (StatusReg[28])
  {
    v24 = 0;
LABEL_47:
    _dispatch_set_priority_and_voucher_slow(v24, 0, 14);
  }
}

void _dispatch_root_queue_drain_deferred_wlh(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  StatusReg[20] = v2;
  memset(v12, 0, sizeof(v12));
  StatusReg[25] = *(v2 + 84) | 0xF0000;
  *(a1 + 53) |= 4u;
  v5 = (v3 + 8);
  v6 = *(v3 + 56);
  v7 = 196610;
  while (2)
  {
    v8 = StatusReg[3] & 0xFFFFFFFCLL;
    while (1)
    {
      v9 = v6;
      if (v6 >> 55)
      {
        v10 = v6 & 0xFFFFFFFFFFFFFFFELL;
        goto LABEL_6;
      }

      if ((v6 & 0xFFFFFFFC) != 0)
      {
        break;
      }

      v10 = v8 | v6 & 0x7700000001 | 0x60000000000000;
LABEL_6:
      atomic_compare_exchange_strong_explicit((v3 + 56), &v6, v10, memory_order_acquire, memory_order_acquire);
      if (v6 == v9)
      {
        goto LABEL_12;
      }
    }

    if ((v6 & 2) != 0)
    {
      v10 = v6 | 0x800000000;
      goto LABEL_6;
    }

    v10 = v6;
LABEL_12:
    if ((v9 & 0x6000000001) != 0x2000000001)
    {
      _dispatch_root_queue_drain_deferred_wlh_cold_1(v9);
    }

    if ((v9 & 0xFF800000FFFFFFFCLL) != 0)
    {
      v11 = *v5;
      if (v10 >> 55)
      {
        if (v11 != 0x7FFFFFFF && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_release) <= 2)
        {
          _os_object_retain_weak_cold_1();
        }
      }

      else if (v11 != 0x7FFFFFFF && atomic_fetch_add_explicit(v5, 0xFFFFFFFF, memory_order_release) <= 1)
      {
        _os_object_retain_weak_cold_1();
      }

      goto LABEL_19;
    }

    (*(*v3 + 64))(v3, v12, v7);
    if (*(a1 + 53))
    {
      v6 = *(v3 + 56);
      if ((v6 & 0x2000000000) != 0)
      {
        if (v6)
        {
          _dispatch_root_queue_drain_deferred_wlh_cold_4((v3 + 8));
          v7 = 196626;
          continue;
        }

        v10 = *(v3 + 56);
LABEL_19:
        _dispatch_event_loop_leave_deferred(a1, v10);
      }
    }

    break;
  }

  _dispatch_root_queue_drain_deferred_wlh_cold_5(StatusReg + 25, StatusReg + 20, StatusReg);
}

void _dispatch_queue_cleanup2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = qword_1ED3F35F8[0];
  v1 = qword_1ED3F35F8[0];
  do
  {
    atomic_compare_exchange_strong_explicit(qword_1ED3F35F8, &v1, (v0 & 0xFFFFFF7FFFFFFFFFLL) + 0x40020000000000, memory_order_acquire, memory_order_acquire);
    v2 = v1 == v0;
    v0 = v1;
  }

  while (!v2);
  atomic_fetch_and_explicit(&dword_1ED3F3610, 0xFFFBFFFF, memory_order_relaxed);
  _dispatch_lane_barrier_complete(&_dispatch_main_q, 0, 0);
  if (_dispatch_program_is_probably_callback_driven == 1)
  {
    memset(&v6, 0, sizeof(v6));
    pthread_attr_init(&v6);
    pthread_attr_setdetachstate(&v6, 2);
    v5 = 0;
    v3 = pthread_create(&v5, &v6, _dispatch_sig_thread, 0);
    if (v3)
    {
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Unable to create signal thread";
      qword_1EBC5B9B0 = v3;
      __break(1u);
    }

    pthread_attr_destroy(&v6);
    sleep_NOCANCEL();
  }

  if (_dispatch_main_q_handle_pred != -1)
  {
    dispatch_once_f(&_dispatch_main_q_handle_pred, &_dispatch_main_q, _dispatch_runloop_queue_handle_init);
  }

  _dispatch_runloop_queue_handle_dispose(&_dispatch_main_q);
  v4 = *MEMORY[0x1E69E9840];
}

void _dispatch_sig_thread()
{
  v0 = pthread_self();
  stackaddr_np = pthread_get_stackaddr_np(v0);
  bzero(&vars0, stackaddr_np - &vars0);
  _dispatch_sigsuspend();
}

void _dispatch_sigsuspend()
{
  pthread_sigmask(3, &_dispatch_sigsuspend_mask, 0);
  while (1)
  {
    sigsuspend_NOCANCEL();
  }
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return _dispatch_client_callout(v3, v2);
}

uint64_t OUTLINED_FUNCTION_7(unsigned int *a1)
{
  v2 = *a1;

  return _pthread_workqueue_override_start_direct();
}

uint64_t OUTLINED_FUNCTION_8()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, const char *a3)
{

  return snprintf((v3 + v5), v4, a3);
}

void _dispatch_apply_invoke(uint64_t a1)
{
  add_explicit = atomic_fetch_add_explicit((a1 + 52), 1u, memory_order_relaxed);
  context[1] = 0;
  context[2] = 0;
  context[0] = a1;
  _dispatch_apply_set_attr_behavior(*(a1 + 56));
  v3 = (*(a1 + 32) + 8 * add_explicit);
  if (*v3 != -1)
  {
    dispatch_once_f(v3, context, _dispatch_apply_invoke3);
  }

  _dispatch_apply_clear_attr_behavior(*(a1 + 56));
  if (atomic_fetch_add_explicit((a1 + 44), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      free(v4);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      free(*(a1 + 56));
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = *(StatusReg + 176);
    if (v7)
    {
      v8 = *(v7 + 8) + 1;
    }

    else
    {
      v8 = 1;
    }

    if (v8 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a1);
    }

    else
    {
      *(a1 + 16) = v7;
      *(a1 + 8) = v8;
      *(StatusReg + 176) = a1;
    }
  }
}

void _dispatch_apply_redirect_invoke(uint64_t a1)
{
  add_explicit = atomic_fetch_add_explicit((a1 + 52), 1u, memory_order_relaxed);
  context = a1;
  v10 = xmmword_1BB581380;
  _dispatch_apply_set_attr_behavior(*(a1 + 56));
  v3 = (*(a1 + 32) + 8 * add_explicit);
  if (*v3 != -1)
  {
    dispatch_once_f(v3, &context, _dispatch_apply_invoke3);
  }

  _dispatch_apply_clear_attr_behavior(*(a1 + 56));
  if (atomic_fetch_add_explicit((a1 + 44), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      free(v4);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      free(*(a1 + 56));
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = *(StatusReg + 176);
    if (v7)
    {
      v8 = *(v7 + 8) + 1;
    }

    else
    {
      v8 = 1;
    }

    if (v8 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a1);
    }

    else
    {
      *(a1 + 16) = v7;
      *(a1 + 8) = v8;
      *(StatusReg + 176) = a1;
    }
  }
}

void _dispatch_apply_with_attr_f(unint64_t a1, uint64_t a2, __objc2_class **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return;
  }

  v9 = a3;
  if (a2 && (*a2 != -1592086528 || (*(a2 + 16) ^ a2) != 0xFFFFFFFFFFFFFFFFLL))
  {
    _dispatch_apply_with_attr_f_cold_1(a2);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v13 = StatusReg + 184;
  while (1)
  {
    v13 = *v13;
    if (!v13)
    {
      break;
    }

    if (*(v13 + 8) == "apply")
    {
      v14 = *(v13 + 16);
      goto LABEL_10;
    }
  }

  v14 = 0;
LABEL_10:
  if (!a3)
  {
    if (!*(StatusReg + 160))
    {
      goto LABEL_24;
    }

    v15 = *(StatusReg + 160);
    do
    {
      v9 = v15;
      v15 = v15[3];
      if (!v15)
      {
        break;
      }
    }

    while (v15 != &_dispatch_custom_workloop_root_queue && v15 != &_dispatch_custom_workloop_overcommit_root_queue);
    if (v9 >= &_dispatch_root_queues && v9 < &_dispatch_queue_serial_numbers)
    {
LABEL_24:
      v18 = __clz(__rbit32((*(StatusReg + 32) >> 8) & 0x3FFF));
      if (((*(StatusReg + 32) >> 8) & 0x3FFF) != 0)
      {
        v19 = v18 + 1;
      }

      else
      {
        v19 = 4;
      }

      if (v19 - 7 <= 0xFFFFFFF9)
      {
        _dispatch_queue_priority_inherit_from_target_cold_1(v19);
      }

      v9 = &_dispatch_root_queues + 16 * (3 * v19 - 3);
    }
  }

  v48 = *(StatusReg + 160);
  v20 = *(v9 + 21);
  v21 = v20 >> 12;
  v22 = (v20 >> 8) & 0xF;
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  if (v9[3])
  {
    v31 = __clz(__rbit32((*(StatusReg + 32) >> 8) & 0x3FFF));
    if (((*(StatusReg + 32) >> 8) & 0x3FFF) != 0)
    {
      v23 = v31 + 1;
    }

    else
    {
      v23 = 0;
    }

    if (a2)
    {
      goto LABEL_34;
    }

LABEL_57:
    if (!v23 || (v32 = pthread_qos_max_parallelism(), v32 <= 0))
    {
      v32 = MEMORY[0xFFFFFC036];
    }

    if (v32 >= MEMORY[0xFFFFFC034])
    {
      v28 = MEMORY[0xFFFFFC034];
    }

    else
    {
      v28 = v32;
    }

    v25 = a5;
    if (v14)
    {
      if (v14 >= v28)
      {
        v28 = 1;
      }

      else
      {
        if (v14 > v28)
        {
          goto LABEL_115;
        }

        v28 = v28 / v14;
      }

      if (v14 >= 0xFFFF || a1 >= 0xFFFF)
      {
        v30 = 0xFFFFLL;
      }

      else
      {
        v30 = v14 * a1;
      }
    }

    else
    {
      v30 = a1;
      if (!v28)
      {
        goto LABEL_115;
      }
    }

    goto LABEL_64;
  }

  if (!a2)
  {
    goto LABEL_57;
  }

LABEL_34:
  if (*a2 != -1592086528 || (*(a2 + 16) ^ a2) != 0xFFFFFFFFFFFFFFFFLL)
  {
    _dispatch_apply_with_attr_f_cold_1(a2);
  }

  if (!v14)
  {
    if (!v23 || (v24 = pthread_qos_max_parallelism(), v24 <= 0))
    {
      v24 = MEMORY[0xFFFFFC036];
    }

    v25 = a5;
    if (v24 >= MEMORY[0xFFFFFC034])
    {
      v26 = MEMORY[0xFFFFFC034];
    }

    else
    {
      v26 = v24;
    }

    if (*(a2 + 8))
    {
      if ((v23 - 1) <= 5)
      {
        v27 = dword_1BB5813A0[v23 - 1];
      }

      v29 = pthread_qos_max_parallelism();
      if (v29 < 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = (v29 * *(a2 + 8));
      }
    }

    else
    {
      v28 = -1;
    }

    if (v28 >= v26)
    {
      v28 = v26;
    }

    if (v28)
    {
      v30 = 0xFFFFLL;
      goto LABEL_64;
    }

LABEL_115:
    _dispatch_apply_with_attr_f_cold_5(a2);
  }

  v25 = a5;
  v30 = 0xFFFFLL;
  v28 = 1;
LABEL_64:
  if (v28 >= a1)
  {
    v33 = a1;
  }

  else
  {
    v33 = v28;
  }

  memset(v51, 0, 32);
  v51[4] = v25;
  v51[5] = a4;
  v51[6] = a6;
  v51[7] = v9;
  v34 = *(StatusReg + 176);
  if (v34)
  {
    *(StatusReg + 176) = *(v34 + 2);
  }

  else
  {
    v34 = _dispatch_continuation_alloc_from_heap();
  }

  *(v34 + 1) = 0;
  *(v34 + 2) = a1;
  *(v34 + 3) = v30;
  *(v34 + 11) = v33;
  *(v34 + 13) = 0;
  if (a2)
  {
    v35 = _dispatch_calloc_typed(1uLL, 0x40uLL, 0x1000040FA0F61DDuLL);
    *v35 = 0u;
    *(v35 + 16) = 0u;
    *(v35 + 32) = 0u;
    *(v35 + 48) = 0u;
    *(v35 + 8) = *(a2 + 8);
    *(v35 + 16) = ~v35;
    v36 = *(a2 + 4);
    *v35 = -1592086528;
    *(v35 + 4) = v36;
  }

  else
  {
    v35 = 0;
  }

  *(v34 + 7) = v35;
  *(v34 + 4) = 0;
  *v34 = v51;
  *(v34 + 10) = 0;
  v37 = v9[3];
  if (v37 == &_dispatch_custom_workloop_root_queue || v37 == &_dispatch_custom_workloop_overcommit_root_queue)
  {
    _dispatch_apply_with_attr_f_cold_7(v9, StatusReg, v34);
  }

  else if (v33 < 2 || *(v9 + 40) == 1)
  {
    dispatch_sync_f(v9, v34, _dispatch_apply_serial);
  }

  else if (v37)
  {
    _dispatch_apply_with_attr_f_cold_3(v9, v48, v34);
  }

  else
  {
    v38 = (StatusReg + 160);
    v50 = *(StatusReg + 160);
    *(StatusReg + 160) = v9;
    *(StatusReg + 168) = &v50;
    v39 = *(v34 + 11);
    v49 = v39 - 1;
    if (v39 < 2)
    {
      v41 = 0;
      v44 = 0;
    }

    else
    {
      v40 = 0;
      v41 = 0;
      v42 = *(StatusReg + 32) | 0x10000000;
      v43 = v39 - 1;
      do
      {
        v44 = *(StatusReg + 176);
        if (v44)
        {
          *(StatusReg + 176) = v44->cache;
        }

        else
        {
          v44 = _dispatch_continuation_alloc_from_heap();
        }

        v44->isa = 260;
        v44->info = _dispatch_apply_invoke;
        v44[1].isa = v34;
        v45 = *(StatusReg + 224);
        if (v45 && atomic_fetch_add_explicit(v45 + 3, 1u, memory_order_relaxed) <= 0)
        {
          [OS_voucher retain];
        }

        v44->vtable = v45;
        v44->superclass = v42;
        v44->cache = v40;
        if (!v41)
        {
          v41 = v44;
        }

        v40 = v44;
        --v43;
      }

      while (v43);
      v39 = *(v34 + 11);
      v38 = (StatusReg + 160);
    }

    *(v34 + 12) = v39;
    *(v34 + 4) = _dispatch_calloc_typed(v39, 8uLL, 0x100004000313F17uLL);
    *(v41 + 16) = 0;
    *(StatusReg + 976) = v9 + 6;
    v46 = atomic_exchange_explicit(v9 + 6, v41, memory_order_release);
    if (v46)
    {
      *(v46 + 16) = v44;
      *(StatusReg + 976) = 0;
    }

    else
    {
      v9[13] = v44;
      *(StatusReg + 976) = 0;
      _dispatch_root_queue_poke_and_wakeup(v9, v49, 0);
    }

    _dispatch_apply_invoke_and_wait(v34);
    *v38 = v50;
  }
}

void dispatch_apply(size_t iterations, dispatch_queue_t queue, void *block)
{
  v5 = _dispatch_Block_copy(block);
  dispatch_apply_f(iterations, queue, v5, v5[2]);

  _Block_release(v5);
}

void dispatch_apply_with_attr(unint64_t a1, uint64_t a2, void *aBlock)
{
  v5 = _dispatch_Block_copy(aBlock);
  v6 = v5;
  if (v5[2])
  {
    v7 = v5[2];
  }

  else
  {
    v7 = 0;
  }

  _dispatch_apply_with_attr_f(a1, a2, 0, v5, v7, 2);

  _Block_release(v6);
}

double dispatch_apply_attr_init(unint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = -1592086528;
  *(a1 + 16) = ~a1;
  return result;
}

double dispatch_apply_attr_destroy(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t dispatch_apply_attr_set_parallelism(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == -1 || a2 == 2)
  {
    if (a3 != 1)
    {
      if (!a3)
      {
        dispatch_apply_attr_set_parallelism_cold_2();
      }

      dispatch_apply_attr_set_parallelism_cold_3(a3);
    }

    if (result && (*result != -1592086528 || (*(result + 16) ^ result) != 0xFFFFFFFFFFFFFFFFLL))
    {
      _dispatch_apply_with_attr_f_cold_1(result);
    }

    *(result + 8) = 1;
  }

  else
  {
    if (a2 != 1)
    {
      dispatch_apply_attr_set_parallelism_cold_5(a2);
    }

    if (a3 != 1)
    {
      dispatch_apply_attr_set_parallelism_cold_4(a3);
    }
  }

  return result;
}

unint64_t dispatch_apply_attr_query(unint64_t result, uint64_t a2, char a3)
{
  v3 = result;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg + 184;
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    if (*(v5 + 8) == "apply")
    {
      v6 = *(v5 + 16);
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = *(StatusReg + 160);
  if (!v7)
  {
    goto LABEL_18;
  }

  do
  {
    v8 = v7;
    v7 = v7[3];
    if (!v7)
    {
      break;
    }

    v9 = v7 == &_dispatch_custom_workloop_root_queue || v7 == &_dispatch_custom_workloop_overcommit_root_queue;
  }

  while (!v9);
  if (v8 >= &_dispatch_root_queues && v8 < &_dispatch_queue_serial_numbers)
  {
LABEL_18:
    v11 = (*(StatusReg + 32) >> 8) & 0x3FFF;
    v9 = v11 == 0;
    v12 = __clz(__rbit32(v11));
    if (v9)
    {
      result = 4;
    }

    else
    {
      result = v12 + 1;
    }

    if ((result - 7) <= 0xFFFFFFF9)
    {
      _dispatch_queue_priority_inherit_from_target_cold_1(result);
    }

    v8 = &_dispatch_root_queues + 16 * (3 * result - 3);
  }

  v13 = *(v8 + 21);
  v14 = v13 >> 12;
  v15 = (v13 >> 8) & 0xF;
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  switch(a2)
  {
    case 0:
      return dispatch_apply_attr_query(v3, 1) != 0;
    case 1:
      if ((a3 & 1) == 0)
      {
        if (v3)
        {
          if (*v3 != -1592086528 || (*(v3 + 16) ^ v3) != 0xFFFFFFFFFFFFFFFFLL)
          {
            _dispatch_apply_with_attr_f_cold_1(v3);
          }

          dispatch_apply_attr_query_cold_3(v3, &v22);
          return v22;
        }

        else
        {
          LODWORD(result) = pthread_qos_max_parallelism();
          if (result <= 0)
          {
            LODWORD(result) = MEMORY[0xFFFFFC036];
          }

          return result;
        }
      }

      if (v3)
      {
        if (*v3 != -1592086528 || (*(v3 + 16) ^ v3) != 0xFFFFFFFFFFFFFFFFLL)
        {
          _dispatch_apply_with_attr_f_cold_1(v3);
        }

LABEL_42:
        if (!v6)
        {
          if (v16 <= 2 && !v16 || (v17 = pthread_qos_max_parallelism(), v17 <= 0))
          {
            v17 = MEMORY[0xFFFFFC036];
          }

          if (v17 >= MEMORY[0xFFFFFC034])
          {
            v18 = MEMORY[0xFFFFFC034];
          }

          else
          {
            v18 = v17;
          }

          if (*(v3 + 8))
          {
            if ((v16 - 1) <= 5)
            {
              v19 = dword_1BB5813A0[v16 - 1];
            }

            v21 = pthread_qos_max_parallelism();
            if (v21 < 1)
            {
              v20 = 0;
            }

            else
            {
              v20 = (v21 * *(v3 + 8));
            }
          }

          else
          {
            v20 = -1;
          }

          if (v20 >= v18)
          {
            return v18;
          }

          else
          {
            return v20;
          }
        }

        return 1;
      }

      break;
    case 2:
      if (v3)
      {
        if (*v3 != -1592086528 || (*(v3 + 16) ^ v3) != 0xFFFFFFFFFFFFFFFFLL)
        {
          _dispatch_apply_with_attr_f_cold_1(v3);
        }

        goto LABEL_42;
      }

      break;
    default:
      return result;
  }

  if (v16 <= 2 && !v16 || (LODWORD(result) = pthread_qos_max_parallelism(), result <= 0))
  {
    LODWORD(result) = MEMORY[0xFFFFFC036];
  }

  if (result >= MEMORY[0xFFFFFC034])
  {
    result = MEMORY[0xFFFFFC034];
  }

  else
  {
    result = result;
  }

  if (v6)
  {
    if (v6 < result)
    {
      return result / v6;
    }

    return 1;
  }

  return result;
}

uint64_t _dispatch_apply_set_attr_behavior(uint64_t result)
{
  if (result)
  {
    if (*(result + 8))
    {
      result = __bsdthread_ctl();
      if (result)
      {
        result = __error();
        if (*result != 45)
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

void _dispatch_apply_invoke3(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  add_explicit = atomic_fetch_add_explicit((*a1 + 8), 1uLL, memory_order_relaxed);
  if (add_explicit >= v2)
  {
    return;
  }

  v5 = 0;
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 40);
  v8 = "apply";
  v9 = *(*v1 + 48);
  v10 = *(v1 + 24);
  v23[1] = "apply";
  v23[2] = v10;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23[0] = *(StatusReg + 184);
  *(StatusReg + 184) = v23;
  v22 = 0uLL;
  if (a1[1])
  {
    v12 = *(*v1 + 56);
    v22 = *(StatusReg + 160);
    *(StatusReg + 160) = v12;
    *(StatusReg + 168) = &v22;
    LODWORD(v8) = *(v12 + 84);
    v13 = *(StatusReg + 200);
    if (v13)
    {
      v14 = v8 & 0xFFF;
      if ((v8 & 0xFFF) != 0)
      {
        if ((v13 & 0xFFFu) > v14)
        {
          v14 = v13 & 0xFFF;
        }

        if (v8 >> 12 <= v14 >> 8)
        {
          v15 = 0x40000000;
        }

        else
        {
          v15 = 1140912128;
        }

        LODWORD(v8) = v13 & 0x880F0000 | v14 | v15 & v8;
      }

      else
      {
        v16 = v13 | 0x40000000;
        if ((v13 & 0xFFF) == 0)
        {
          v16 = *(StatusReg + 200);
        }

        v17 = v8 >> 12;
        LODWORD(v8) = v16 & 0xFFFF0FFF | v8 & 0x400F000;
        if (v17 <= ((v16 >> 8) & 0xF))
        {
          LODWORD(v8) = v16;
        }
      }
    }

    else
    {
LABEL_31:
      LODWORD(v8) = v8 & 0xFFF0FFFF;
    }

    *(StatusReg + 200) = v8;
    v5 = v13 & 0xFFF0FFFF;
  }

  v20 = v5;
  v21 = StatusReg;
  v18 = *(v1 + 40);
  do
  {
    if ((v18 & 0x1000000) != 0)
    {
      v19 = objc_autoreleasePoolPush();
      if (v9)
      {
LABEL_19:
        _dispatch_client_callout2(v7, add_explicit, v6);
        goto LABEL_23;
      }
    }

    else
    {
      v19 = 0;
      if (v9)
      {
        goto LABEL_19;
      }
    }

    if ((v9 & 2) == 0)
    {
      LODWORD(v13) = v9;
      qword_1EBC5B980 = "BUG IN LIBDISPATCH: apply continuation has invalid flags";
      qword_1EBC5B9B0 = v9;
      __break(1u);
      goto LABEL_31;
    }

    _dispatch_client_callout3(v7, add_explicit, *(a1 + 4), v6);
LABEL_23:
    add_explicit = atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
    if (v19)
    {
      objc_autoreleasePoolPop(v19);
    }
  }

  while (add_explicit < v2);
  if (a1[1])
  {
    *(v21 + 200) = *(v21 + 200) & 0xF0000 | v20;
    *(v21 + 160) = v22;
  }

  *(v21 + 184) = v23[0];
}

uint64_t _dispatch_apply_clear_attr_behavior(uint64_t result)
{
  if (result && *(result + 8))
  {
    result = __bsdthread_ctl();
    if (result)
    {
      __break(1u);
    }
  }

  return result;
}

void _dispatch_apply_serial(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  if (v3)
  {
    do
    {
      v4 = *(v3 + 80);
      v3 = *(v3 + 24);
      if (v3)
      {
        v5 = (v4 & 0x30000) == 0;
      }

      else
      {
        v5 = 0;
      }
    }

    while (v5);
    v6 = (v4 & 0x10000) == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = 0;
  if (*(a1 + 16) <= 1uLL)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 16);
  }

  do
  {
    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
    }

    v10 = *(v2 + 48);
    if (v10)
    {
      _dispatch_client_callout2(*(v2 + 40), v7, *(v2 + 32));
      if (!v9)
      {
        goto LABEL_20;
      }

LABEL_19:
      objc_autoreleasePoolPop(v9);
      goto LABEL_20;
    }

    if ((v10 & 2) == 0)
    {
      qword_1EBC5B980 = "BUG IN LIBDISPATCH: apply continuation has invalid flags";
      qword_1EBC5B9B0 = v10;
      __break(1u);
      return;
    }

    _dispatch_client_callout3(*(v2 + 40), v7, 0, *(v2 + 32));
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_20:
    ++v7;
  }

  while (v8 != v7);
  v11 = *(a1 + 32);
  if (v11)
  {
    free(v11);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    free(*(a1 + 56));
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v14 = *(StatusReg + 176);
  if (v14)
  {
    v15 = *(v14 + 8) + 1;
  }

  else
  {
    v15 = 1;
  }

  if (v15 > _dispatch_continuation_cache_limit)
  {

    _dispatch_continuation_free_to_cache_limit(a1);
  }

  else
  {
    *(a1 + 16) = v14;
    *(a1 + 8) = v15;
    *(StatusReg + 176) = a1;
  }
}

void _dispatch_apply_redirect(uint64_t a1)
{
  v2 = (*(a1 + 44) - 1);
  v3 = *(*a1 + 56);
  v4 = v3;
  while (1)
  {
    if (*(v4 + 80) != 1)
    {
      v5 = *(v4 + 56);
      while ((v5 & 0x20000000000000) == 0)
      {
        LODWORD(v6) = 4096 - ((v5 >> 41) & 0xFFF);
        if (v6 >= v2)
        {
          v6 = v2;
        }

        else
        {
          v6 = v6;
        }

        v7 = v5;
        atomic_compare_exchange_strong_explicit((v4 + 56), &v7, v5 + (v6 << 41), memory_order_relaxed, memory_order_relaxed);
        v8 = v7 == v5;
        v5 = v7;
        if (v8)
        {
          goto LABEL_10;
        }
      }
    }

    v6 = 0;
LABEL_10:
    v9 = (v2 - v6);
    if (v2 <= v6)
    {
      goto LABEL_11;
    }

    if (v3 != v4)
    {
      v10 = v3;
      do
      {
        atomic_fetch_add_explicit((v10 + 56), 0xFFFFFE0000000000 * v9, memory_order_relaxed);
        v10 = *(v10 + 24);
      }

      while (v10 != v4);
    }

    if (!v6)
    {
      break;
    }

    *(a1 + 44) -= v9;
    v2 = v6;
LABEL_11:
    if (!*(a1 + 40))
    {
      *(a1 + 40) = (*(v4 + 80) << 8) & 0x3000000;
    }

    v4 = *(v4 + 24);
    if (!*(v4 + 24))
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v12 = *(a1 + 44);
      v13 = v12 - 1;
      if (v12 < 2)
      {
        v14 = 0;
        v16 = 0;
LABEL_33:
        *(a1 + 48) = v12;
        *(a1 + 32) = _dispatch_calloc_typed(v12, 8uLL, 0x100004000313F17uLL);
        *(v14 + 16) = 0;
        StatusReg[122] = v4 + 48;
        v18 = atomic_exchange_explicit((v4 + 48), v14, memory_order_release);
        if (v18)
        {
          *(v18 + 16) = v16;
          StatusReg[122] = 0;
          goto LABEL_35;
        }
      }

      else
      {
        v20 = v2;
        v2 = 0;
        v14 = 0;
        v15 = StatusReg[4] | 0x10000000;
        v19 = v12 - 1;
        while (1)
        {
          v16 = StatusReg[22];
          if (v16)
          {
            StatusReg[22] = v16[2];
          }

          else
          {
            v16 = _dispatch_continuation_alloc_from_heap();
          }

          *v16 = 260;
          v16[4] = _dispatch_apply_redirect_invoke;
          v16[5] = a1;
          v17 = StatusReg[28];
          if (v17)
          {
            if (atomic_fetch_add_explicit((v17 + 12), 1u, memory_order_relaxed) <= 0)
            {
              break;
            }
          }

          v16[3] = v17;
          v16[1] = v15;
          v16[2] = v2;
          if (!v14)
          {
            v14 = v16;
          }

          v2 = v16;
          if (!--v13)
          {
            v12 = *(a1 + 44);
            v2 = v20;
            v13 = v19;
            goto LABEL_33;
          }
        }

        qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
        __break(1u);
      }

      *(v4 + 104) = v16;
      StatusReg[122] = 0;
      _dispatch_root_queue_poke_and_wakeup(v4, v13, 0);
LABEL_35:
      _dispatch_apply_invoke_and_wait(a1);
      for (; v3 != v4; v3 = *(v3 + 24))
      {
        atomic_fetch_add_explicit((v3 + 56), 0xFFFFFE0000000000 * v2, memory_order_relaxed);
      }

      return;
    }
  }

  _dispatch_apply_serial(a1);
}

void _dispatch_apply_invoke_and_wait(uint64_t a1)
{
  add_explicit = atomic_fetch_add_explicit((a1 + 52), 1u, memory_order_relaxed);
  context = a1;
  v15 = xmmword_1BB581390;
  _dispatch_apply_set_attr_behavior(*(a1 + 56));
  v3 = (*(a1 + 32) + 8 * add_explicit);
  if (*v3 != -1)
  {
    dispatch_once_f(v3, &context, _dispatch_apply_invoke3);
  }

  _dispatch_apply_clear_attr_behavior(*(a1 + 56));
  v4 = *(a1 + 48);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 8 * add_explicit;
    do
    {
      if (v7 != v5)
      {
        v8 = *(a1 + 32);
        if (*(v8 + v5) != -1)
        {
          dispatch_once_f((v8 + v5), 0, _dispatch_no_op);
        }

        v4 = *(a1 + 48);
      }

      ++v6;
      v5 += 8;
    }

    while (v6 < v4);
  }

  if (atomic_fetch_add_explicit((a1 + 44), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      free(v9);
    }

    v10 = *(a1 + 56);
    if (v10)
    {
      v10[2] = 0u;
      v10[3] = 0u;
      *v10 = 0u;
      v10[1] = 0u;
      free(*(a1 + 56));
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = *(StatusReg + 176);
    if (v12)
    {
      v13 = *(v12 + 8) + 1;
    }

    else
    {
      v13 = 1;
    }

    if (v13 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a1);
    }

    else
    {
      *(a1 + 16) = v12;
      *(a1 + 8) = v13;
      *(StatusReg + 176) = a1;
    }
  }
}

dispatch_source_t dispatch_source_create(dispatch_source_type_t type, uintptr_t handle, uintptr_t mask, dispatch_queue_t queue)
{
  v6 = (*(type + 4))(type, handle, mask);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = _dispatch_object_alloc(OS_dispatch_source, 120);
  v9 = v8;
  v10 = *(*v7 + 10);
  *(v8 + 8) += 2;
  if (*(*v8 + 40) == 19)
  {
    ++*(v8 + 8);
  }

  *(v8 + 16) = -1985229329;
  if ((v10 & 2) != 0)
  {
    v11 = 67108865;
  }

  else
  {
    v11 = 4194305;
  }

  *(v8 + 80) = v11;
  *(v8 + 56) = 0x19FFE0000000000;
  *(v8 + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(v8 + 72) = "source";
  *(v8 + 88) = v7;
  *(v7 + 8) = ~v8;
  if (queue)
  {
    if ((HIBYTE(queue[10].isa) & 8) != 0 && (*(v7 + 29) & 2) == 0)
    {
      dispatch_source_create_cold_1(v8);
    }

    if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }
  }

  else
  {
    queue = &off_1ED3F3BC0;
  }

  *(v8 + 24) = queue;
  if ((*(v7 + 29) & 2) != 0 && (*(v7 + 30) & 0x10) != 0)
  {
    dispatch_source_set_timer(v8, 0, handle, 0xFFFFFFFFFFFFFFFFLL);
  }

  return v9;
}

void dispatch_source_set_timer(dispatch_source_t source, dispatch_time_t start, uint64_t interval, uint64_t leeway)
{
  isa = source[11].isa;
  if ((*(isa + 29) & 2) == 0)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Attempt to set timer on a non-timer source";
    qword_1EBC5B9B0 = source;
    __break(1u);
    goto LABEL_51;
  }

  v5 = leeway;
  v6 = start;
  v11 = *(isa + 30);
  if ((v11 & 0x10) != 0)
  {
    v13 = _dispatch_calloc_typed(1uLL, 0x20uLL, 0x1000040F6D918ACuLL);
    v4 = v13;
    *(v13 + 24) = 0;
    if (v6)
    {
      if (v6 != -1)
      {
        goto LABEL_99;
      }

      v15 = 0x7FFFFFFFFFFFFFFFLL;
      *v13 = 0x7FFFFFFFFFFFFFFFLL;
      v16 = 2;
      v17 = 4;
      interval = 0x7FFFFFFFFFFFFFFFLL;
LABEL_49:
      *&v4[v17] = v15;
      *&v4[v16] = interval;
      v11 = v4[6];
      goto LABEL_75;
    }

    if (interval)
    {
      v18 = 16666666;
      v19 = 1892160075;
      if ((v11 & 0x20) == 0)
      {
        v19 = 31536000000;
        v18 = 1000000;
      }

      v20 = v18 * interval;
      if (v19 >= interval)
      {
        v13 = v20;
      }

      else
      {
        v13 = 31536000000000000;
      }

      v7 = &_dispatch_host_time_nano2mach;
      v14 = _dispatch_host_time_nano2mach;
      if (!_dispatch_host_time_nano2mach)
      {
        if (v13 > 0x7FFFFFFFFFFFFFFELL)
        {
          interval = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (v13 > 0x5555555555555554)
        {
          interval = 3 * (v13 / 0x7D);
        }

        else
        {
          v21 = (3 * v13 * 0x624DD2F1A9FBE77uLL) >> 64;
          interval = (v21 + ((3 * v13 - v21) >> 1)) >> 6;
        }

        goto LABEL_26;
      }
    }

    else
    {
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Setting interval to 0";
      __break(1u);
    }

    interval = v14(v13);
LABEL_26:
    v6 = mach_absolute_time();
    if (v5 > 0x3E8)
    {
      if (v5 != -1)
      {
        goto LABEL_100;
      }

      if ((v11 & 0x20) != 0)
      {
        if (*v7)
        {
          v22 = (*v7)(16666666);
        }

        else
        {
          v22 = 399999;
        }
      }

      else
      {
        v22 = interval >> 1;
      }
    }

    else
    {
      v22 = interval * v5 / 0x3E8;
    }

    v25 = (v6 + interval) / interval * interval;
    v4[6] = 0;
    *v4 = v25;
    v15 = v22 + v25;
    v16 = 4;
    v17 = 2;
    goto LABEL_49;
  }

  v4 = _dispatch_calloc_typed(1uLL, 0x20uLL, 0x1000040F6D918ACuLL);
  if (interval)
  {
    if (interval >= 0x7FFFFFFFFFFFFFFFLL)
    {
      interval = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v6 != -1)
    {
      goto LABEL_9;
    }

LABEL_55:
    v11 = (*(isa + 30) >> 2) & 3;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_56;
  }

LABEL_51:
  if (v6 == -1)
  {
    if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    interval = 1;
    goto LABEL_55;
  }

  _dispatch_bug_deprecated("Setting timer interval to 0 requests a 1ns timer, did you mean FOREVER (a one-shot timer)?");
  if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  interval = 1;
LABEL_9:
  if (v6 == 0x8000000000000000)
  {
    v11 = 1;
    v12 = mach_continuous_time();
    goto LABEL_57;
  }

  if (v6 == -2)
  {
    v12 = clock_gettime_nsec_np(_CLOCK_REALTIME);
    v11 = 2;
    goto LABEL_68;
  }

  if (v6)
  {
    v23 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x4000000000000000) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    if ((v6 & 0x4000000000000000) != 0)
    {
      v23 = -v6;
    }

    if (v6 < 0)
    {
      v11 = v24;
    }

    else
    {
      v11 = 0;
    }

    if (v6 >= 0)
    {
      v23 = v6;
    }

    if (v23 >> 62)
    {
      v12 = -1;
    }

    else
    {
      v12 = v23;
    }

LABEL_56:
    if (v11 == 2)
    {
      goto LABEL_68;
    }

    goto LABEL_57;
  }

  v12 = mach_absolute_time();
  v11 = 0;
LABEL_57:
  v6 = 0x5555555555555554;
  if (_dispatch_host_time_nano2mach)
  {
    v7 = v12;
    v33 = _dispatch_host_time_nano2mach(interval);
    if (v33 <= 1)
    {
      interval = 1;
    }

    else
    {
      interval = v33;
    }

    if (_dispatch_host_time_nano2mach)
    {
      v5 = _dispatch_host_time_nano2mach(v5);
      v12 = v7;
      goto LABEL_68;
    }

    goto LABEL_101;
  }

  if (interval > 0x7FFFFFFFFFFFFFFELL)
  {
    interval = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = (3 * interval * 0x624DD2F1A9FBE77uLL) >> 64;
    v27 = (v26 + ((3 * interval - v26) >> 1)) >> 6;
    if (interval > 0x5555555555555554)
    {
      v27 = 3 * (interval / 0x7D);
    }

    if (v27 <= 1)
    {
      interval = 1;
    }

    else
    {
      interval = v27;
    }
  }

  while (1)
  {
    if (v5)
    {
      if (v5 > 0x7FFFFFFFFFFFFFFELL)
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else if (v5 > v6)
      {
        v5 = 3 * (v5 / 0x7D);
      }

      else
      {
        v28 = (3 * v5 * 0x624DD2F1A9FBE77uLL) >> 64;
        v5 = (v28 + ((3 * v5 - v28) >> 1)) >> 6;
      }
    }

LABEL_68:
    v29 = interval >> 1;
    if (v5 < interval >> 1)
    {
      v29 = v5;
    }

    if (interval >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = v5;
    }

    v4[6] = v11;
    v30 = v29 + v12;
    if (v30 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *v4 = v12;
    *(v4 + 1) = v30;
    *(v4 + 2) = interval;
LABEL_75:
    if (v11 == ((*(isa + 30) >> 2) & 3) || *(isa + 28) != 236)
    {
      break;
    }

    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Attempting to modify timer clock";
    __break(1u);
LABEL_99:
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Start value is not DISPATCH_TIME_NOW or DISPATCH_TIME_FOREVER";
    __break(1u);
LABEL_100:
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Passing an invalid leeway";
    __break(1u);
LABEL_101:
    v12 = v7;
  }

  v31 = atomic_exchange_explicit(isa + 13, v4, memory_order_release);
  if (v31)
  {
    free(v31);
  }

  v32 = *(source->isa + 10);

  v32(source, 0, 2);
}