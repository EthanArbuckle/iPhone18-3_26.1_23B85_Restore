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
    return dword_452A0[v2];
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
  _dispatch_introspection_thread_add();
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
    _dispatch_introspection_runtime_event();
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
    _dispatch_introspection_runtime_event();
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
  memset(v42, 0, sizeof(v42));
  _dispatch_last_resort_autorelease_pool_push(v42);
  v10 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v11 = __swp(v3, (a1 + 104));
        if (v3)
        {
          break;
        }

        v38 = -1;
        atomic_compare_exchange_strong_explicit((a1 + 104), &v38, 0, memory_order_relaxed, memory_order_relaxed);
        if (v38 == -1)
        {
          if (!*(a1 + 48))
          {
            goto LABEL_110;
          }

          v39 = _dispatch_root_queue_head_tail_quiesced;
          goto LABEL_87;
        }
      }

      if (v3 != -1)
      {
        break;
      }

      v39 = _dispatch_root_queue_mediator_is_gone;
LABEL_87:
      if (!__DISPATCH_ROOT_QUEUE_CONTENDED_WAIT__(a1, v39))
      {
        goto LABEL_110;
      }
    }

    v12 = (v3 + 16);
    v13 = *(v3 + 16);
    if (v13)
    {
      goto LABEL_10;
    }

    *(a1 + 104) = 0;
    v40 = v3;
    atomic_compare_exchange_strong_explicit((a1 + 48), &v40, 0, memory_order_release, memory_order_relaxed);
    if (v40 != v3)
    {
      v13 = *v12;
      if (!*v12)
      {
        v13 = _dispatch_wait_for_enqueuer(v12);
      }

LABEL_10:
      *(a1 + 104) = v13;
      _dispatch_root_queue_poke(a1, 1, 0);
    }

    if (v10)
    {
      _pthread_workqueue_override_reset();
    }

    v14 = *(StatusReg + 192);
    if (v14)
    {
      (*v14)(a1);
    }

    v15 = *v3;
    if (*v3 >= 0x1000uLL)
    {
      v16 = *v3;
      if (*(v15 + 40) == 1)
      {
        (*(v15 + 48))(v3, 0, (a3 >> 21) & 1);
      }

      else
      {
        (*(v15 + 64))(v3, v42, a3 & 0xFFFF0000);
      }

      goto LABEL_76;
    }

    if ((a3 & 0x1000000) != 0)
    {
      v17 = objc_autoreleasePoolPush();
      v15 = *v3;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v3 + 24);
    if ((v15 & 4) != 0)
    {
      *(v3 + 24) = v11;
    }

    if (v18 != -1)
    {
      if (v18)
      {
        v19 = *(v18 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v20 = *(v3 + 8);
    if (v20 == -1)
    {
      v23 = 0;
    }

    else
    {
      v21 = *(StatusReg + 200);
      v22 = ((v21 >> 8) & 0xF) != 0 ? 1 << ((BYTE1(v21) & 0xFu) + 7) : 0;
      v23 = v22 | *(StatusReg + 200);
      if ((v20 & 0xFFFFFF) != 0)
      {
        if ((v20 & 0xFFFFFFuLL) >= (v22 & 0xFFFFFF00) && ((v21 & 0x44000000) != 0 || (*(v3 + 8) & 0x10000000) != 0))
        {
          v23 = v20 & 0xFFFFFF;
        }
      }

      else if (v21 >> 12)
      {
        v23 = (256 << ((v21 >> 12) - 1)) | 0xFF;
      }
    }

    v25 = v23 & 0x7FFFFFFF02FFFFFFLL;
    v26 = *(StatusReg + 32);
    if ((v26 & 0x1000000) != 0)
    {
      if (v25)
      {
        goto LABEL_102;
      }

      v25 = v26 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v25 == (v26 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_44;
    }

    if (v25)
    {
      goto LABEL_102;
    }

LABEL_44:
    if (v18 != -1)
    {
      if (*(StatusReg + 224) != v18)
      {
        v25 = 0;
LABEL_102:
        _dispatch_set_priority_and_voucher_slow(v25, v18, v15 & 4 | 2);
        if ((v15 & 0x200) != 0)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }

      if ((v15 & 4) != 0 && v18)
      {
        os_release(v18);
      }
    }

    if ((v15 & 0x200) != 0)
    {
      goto LABEL_53;
    }

LABEL_50:
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_pop_internal(a1, v3, v9);
    }

    _dispatch_introspection_queue_item_dequeue(a1, v3);
LABEL_53:
    if ((v15 & 4) != 0)
    {
      v31 = *(StatusReg + 176);
      v32 = v31 ? *(v31 + 8) + 1 : 1;
      if (v32 > _dispatch_continuation_cache_limit)
      {
        v27 = v3;
        if ((v15 & 8) != 0)
        {
LABEL_64:
          v33 = *(**(v3 + 48) + 40);
          if (v33 != 514)
          {
            _dispatch_workloop_invoke_cold_3(v33);
          }

          v34 = *(v3 + 32);
          v35 = *(v3 + 40);
          v36 = v34;
          if (v35)
          {
            v36 = *(v3 + 32);
            if (v34 == _dispatch_call_block_and_release)
            {
              if (v35[2])
              {
                v36 = v35[2];
              }

              else
              {
                v36 = 0;
              }
            }
          }

          group = *(v3 + 48);
          _dispatch_introspection_callout_entry(v35, v36);
          _dispatch_client_callout(v35, v34);
          _dispatch_introspection_callout_return(v35, v36);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_4();
          }

          _dispatch_introspection_queue_item_complete(v3);
          dispatch_group_leave(group);
          goto LABEL_73;
        }
      }

      else
      {
        v27 = 0;
        *(v3 + 16) = v31;
        *(v3 + 8) = v32;
        *(StatusReg + 176) = v3;
        if ((v15 & 8) != 0)
        {
          goto LABEL_64;
        }
      }
    }

    else
    {
      v27 = 0;
      if ((v15 & 8) != 0)
      {
        goto LABEL_64;
      }
    }

    v29 = *(v3 + 32);
    v28 = *(v3 + 40);
    v30 = v29;
    if (v28)
    {
      v30 = *(v3 + 32);
      if (v29 == _dispatch_call_block_and_release)
      {
        if (v28[2])
        {
          v30 = v28[2];
        }

        else
        {
          v30 = 0;
        }
      }
    }

    _dispatch_introspection_callout_entry(v28, v30);
    _dispatch_client_callout(v28, v29);
    _dispatch_introspection_callout_return(v28, v30);
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_workloop_invoke_cold_4();
    }

    _dispatch_introspection_queue_item_complete(v3);
LABEL_73:
    if (!v27)
    {
      if (!v17)
      {
        goto LABEL_76;
      }

LABEL_75:
      objc_autoreleasePoolPop(v17);
      goto LABEL_76;
    }

    _dispatch_continuation_free_to_cache_limit(v27);
    if (v17)
    {
      goto LABEL_75;
    }

LABEL_76:
    if (v14)
    {
      v14[1](a1);
    }

    v37 = WORD1(*(StatusReg + 200)) & 0xF;
    if (v37)
    {
      *(StatusReg + 200) &= 0xFFF0FFFFuLL;
      v10 = v37 != 15;
    }

    else
    {
      v10 = 0;
    }

    if (*(StatusReg + 960))
    {
      break;
    }

    *(StatusReg + 960) = 0;
  }

LABEL_110:
  _dispatch_last_resort_autorelease_pool_pop(v42);
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

      thread_switch(0, 3, v5);
      v8 = a2(a1);
      if (!v8)
      {
        v9 = (v5 >> 4) & 0x7FFFFFF;
        v5 *= 2;
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
    v5 = dword_71B6C;
    do
    {
      if (v5 >= v3)
      {
        break;
      }

      v6 = v5;
      atomic_compare_exchange_strong_explicit(&dword_71B6C, &v6, v3, memory_order_relaxed, memory_order_relaxed);
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

      if (sched_priority > dword_71B70 || __qos_class && _pthread_qos_class_encode())
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
  v0 = qword_70DF8[0];
  if (LODWORD(qword_70DF8[0]) >= 4)
  {
    result = LODWORD(qword_70DF8[0]) | 3u;
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
  v9 = (dword_70E14 >> 8) & 0xF;
  dword_70E14 = v7;
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

uint64_t _dispatch_worker_thread2(uint64_t a1)
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
  _dispatch_introspection_thread_add();
  _dispatch_introspection_runtime_event();
  atomic_fetch_add_explicit(v7 + 28, 0xFFFFFFFF, memory_order_acquire);
  v8 = (StatusReg[29] & 0xFFFFFFFFFFFFFFFELL);
  if (v8)
  {
    _dispatch_free_deferred_unotes(v8);
    StatusReg[29] = 0;
  }

  _dispatch_root_queue_drain(v7, *(v7 + 21), v2);
  v9 = StatusReg[4];
  if ((v9 & 0x1000000) == 0 || (v11 = v9 & 0xFFFFFFFFFEFFFFFFLL, (v9 & 0xFFFFFFFFFEFFFFFFLL) == 0))
  {
    if (!StatusReg[28])
    {
      goto LABEL_15;
    }

    v11 = 0;
  }

  _dispatch_set_priority_and_voucher_slow(v11, 0, 14);
LABEL_15:
  StatusReg[120] = 0;

  return _dispatch_introspection_runtime_event();
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

        qword_6D1C0 = "API MISUSE: Over-release of an object";
        __break(1u);
      }

      qword_6D1C0 = "BUG IN LIBDISPATCH: Lingering DISPATCH_WLH_ANON";
      __break(1u);
      return;
    }

LABEL_10:
    StatusReg[27] = -4;
    v7 = *a1;
    _dispatch_introspection_thread_add();
    StatusReg[120] = 0;
    v22 = 0;
    v24 = 0;
    v21 = 0u;
    v23 = -4;
    v25 = v7;
    v26 = 0;
    v9 = StatusReg[4];
    if ((v9 & 0x2000000) != 0)
    {
      v11 = StatusReg[4] & 0xFE000000;
      if ((v9 & 0x20000000) == 0)
      {
        v11 = StatusReg[4];
      }

      StatusReg[4] = v11 & 0xFFFFFFFFFEFFFFFFLL;
      StatusReg[25] = 34537472;
      StatusReg[20] = &_dispatch_mgr_q;
      v12 = qword_70E78[0];
      v13 = StatusReg[3] & 0xFFFFFFFCLL | 0x40020000000000;
      while ((v12 & 0xFFE00000FFFFFFFCLL) == 0)
      {
        v14 = v12;
        atomic_compare_exchange_strong_explicit(qword_70E78, &v14, v13 | v12 & 0x7700000001, memory_order_acquire, memory_order_acquire);
        v15 = v14 == v12;
        v12 = v14;
        if (v15)
        {
          v16 = *a2;
          _dispatch_introspection_runtime_event();
          v23 = -4;
          goto LABEL_19;
        }
      }

      qword_6D1C0 = "BUG IN LIBDISPATCH: Locking the manager should not fail";
      qword_6D1F0 = v12;
      __break(1u);
    }

    else
    {
      StatusReg[4] = v9 & 0xFFFFFFFF88FFFFFFLL | 0x1000000;
      BYTE4(v26) = 1;
      v10 = *a2;
      _dispatch_introspection_runtime_event();
LABEL_19:
      v8 = (StatusReg[29] & 0xFFFFFFFFFFFFFFFELL);
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    _dispatch_free_deferred_unotes(v8);
LABEL_20:
    StatusReg[29] = &v21;
    _dispatch_event_loop_merge(v7, *a2);
    if ((v9 & 0x2000000) != 0)
    {
      _dispatch_introspection_runtime_event();
      _dispatch_mgr_queue_drain();
      if (byte_71A36)
      {
        _dispatch_event_loop_drain_timers(&_dispatch_timers_heap, 9u);
      }

      v17 = qword_70E78[0];
      do
      {
        v18 = v17;
        atomic_compare_exchange_strong_explicit(qword_70E78, &v17, (v17 & 0xFFFFFFF000000001) - 0x40020000000000, memory_order_release, memory_order_relaxed);
      }

      while (v17 != v18);
      StatusReg[25] = 0;
      StatusReg[20] = 0;
      if ((v18 & 0x8000000000) != 0)
      {
        _dispatch_introspection_runtime_event();
        _dispatch_event_loop_poke(0xFFFFFFFFFFFFFFF8, 0, 0, v19);
      }
    }

    else if (*(&v21 + 1))
    {
      if (v23 == -4)
      {
        StatusReg[29] = 0;
        _dispatch_introspection_runtime_event();
        _dispatch_root_queue_drain_deferred_item(&v21);
      }

      else
      {
        _dispatch_introspection_runtime_event();
        _dispatch_root_queue_drain_deferred_wlh(&v21);
      }
    }

    if (v24)
    {
      v20 = v24 | 1;
    }

    else
    {
      v20 = 0;
    }

    StatusReg[29] = v20;
    StatusReg[5] = 0;
    StatusReg[120] = 0;
    *a2 = v26;
    _dispatch_introspection_runtime_event();
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
        goto LABEL_81;
      }

      if (updated == v5)
      {
LABEL_15:
        StatusReg[27] = v5;
        v9 = *a2;
        _dispatch_introspection_thread_add();
        StatusReg[120] = 0;
        v32 = 0;
        v34 = 0;
        v31 = 0u;
        v33 = v5;
        v35 = v9;
        v36 = 0;
        if (v5 == -4)
        {
          v10 = 0;
          v11 = 0;
          memset(&v30, 0, sizeof(v30));
          goto LABEL_35;
        }

        if (*(*v5 + 40) == 131090 && (v12 = *(v5 + 200)) != 0)
        {
          v13 = *v12;
          memset(&v30, 0, sizeof(v30));
          if ((v13 & 0x40) != 0)
          {
            updated = *(v5 + 72);
            if (!updated || StatusReg[124] || (updated = pthread_setname_np(updated), v10 = 1, StatusReg[124] = 1, (v12 = *(v5 + 200)) != 0))
            {
              if (*(v12 + 4) && !StatusReg[115])
              {
                v29 = _dispatch_calloc_typed(1uLL, 0x28uLL, 0x10200401C7990E2uLL);
                updated = _os_workgroup_join_update_wg(*(*(v5 + 200) + 32), v29);
                v11 = 0;
                StatusReg[115] = v29;
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
                v18 = StatusReg[4] & 0xFE000000;
                if ((v15 & 0x20000000) == 0)
                {
                  v18 = StatusReg[4];
                }

                StatusReg[4] = v18 & 0xFFFFFFFFFEFFFFFFLL;
                StatusReg[25] = 34537472;
                StatusReg[20] = &_dispatch_mgr_q;
                v19 = qword_70E78[0];
                v20 = StatusReg[3] & 0xFFFFFFFCLL | 0x40020000000000;
                while ((v19 & 0xFFE00000FFFFFFFCLL) == 0)
                {
                  v21 = v19;
                  atomic_compare_exchange_strong_explicit(qword_70E78, &v21, v20 | v19 & 0x7700000001, memory_order_acquire, memory_order_acquire);
                  v22 = v21 == v19;
                  v19 = v21;
                  if (v22)
                  {
                    v23 = *a3;
                    _dispatch_introspection_runtime_event();
                    v33 = -4;
                    goto LABEL_48;
                  }
                }

                qword_6D1C0 = "BUG IN LIBDISPATCH: Locking the manager should not fail";
                qword_6D1F0 = v19;
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
                  BYTE4(v36) = 1;
                }

                v17 = *a3;
                _dispatch_introspection_runtime_event();
LABEL_48:
                updated = StatusReg[29] & 0xFFFFFFFFFFFFFFFELL;
                if (!updated)
                {
                  goto LABEL_49;
                }
              }

              _dispatch_free_deferred_unotes(updated);
LABEL_49:
              StatusReg[29] = &v31;
              _dispatch_event_loop_merge(v9, *a3);
              if ((v15 & 0x2000000) != 0)
              {
                _dispatch_introspection_runtime_event();
                _dispatch_mgr_queue_drain();
                if (byte_71A36)
                {
                  _dispatch_event_loop_drain_timers(&_dispatch_timers_heap, 9u);
                }

                v24 = qword_70E78[0];
                do
                {
                  v25 = v24;
                  atomic_compare_exchange_strong_explicit(qword_70E78, &v24, (v24 & 0xFFFFFFF000000001) - 0x40020000000000, memory_order_release, memory_order_relaxed);
                }

                while (v24 != v25);
                StatusReg[25] = 0;
                StatusReg[20] = 0;
                if ((v25 & 0x8000000000) != 0)
                {
                  _dispatch_introspection_runtime_event();
                  _dispatch_event_loop_poke(0xFFFFFFFFFFFFFFF8, 0, 0, v26);
                }
              }

              else if (*(&v31 + 1))
              {
                if (v33 == -4)
                {
                  StatusReg[29] = 0;
                  _dispatch_introspection_runtime_event();
                  _dispatch_root_queue_drain_deferred_item(&v31);
                }

                else
                {
                  _dispatch_introspection_runtime_event();
                  _dispatch_root_queue_drain_deferred_wlh(&v31);
                }
              }

              if (v11)
              {
                v27 = v10;
              }

              else
              {
                v27 = 1;
              }

              if ((v27 & 1) == 0)
              {
                os_workgroup_leave(v11, &v30);
              }

              if (v34)
              {
                v28 = v34 | 1;
              }

              else
              {
                v28 = 0;
              }

              StatusReg[29] = v28;
              StatusReg[5] = 0;
              StatusReg[120] = 0;
              *a3 = v36;
              _dispatch_introspection_runtime_event();
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
          memset(&v30, 0, sizeof(v30));
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
        if (!v11 || (updated = os_workgroup_join(*(v14 + 32), &v30), !updated))
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

LABEL_82:
        qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_workloop os_workgroup_join failed";
        qword_6D1F0 = updated;
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
            qword_6D1C0 = "API MISUSE: Over-release of an object";
            __break(1u);
LABEL_80:
            qword_6D1C0 = "API MISUSE: Resurrection of an object";
            __break(1u);
LABEL_81:
            qword_6D1C0 = "BUG IN LIBDISPATCH: Lingering DISPATCH_WLH_ANON";
            __break(1u);
            goto LABEL_82;
          }

          *(updated + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(updated);
        }
      }

      if (v5 == -4 || (atomic_fetch_add_explicit((v5 + 96), 1u, memory_order_relaxed) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_80;
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
  memset(v4, 0, sizeof(v4));
  v3 = 0x40020000000000;
  if (qword_70E70)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    if ((~*(StatusReg + 200) & 0xF0000) != 0)
    {
      *(StatusReg + 200) = *(StatusReg + 200) & 0xFFF0FFFFLL | 0xF0000;
    }

    _dispatch_lane_serial_drain(&_dispatch_mgr_q, v4, 0x40000u, &v3);
    if (v1)
    {
      _dispatch_mgr_queue_drain_cold_1();
    }

    v2 = *(StatusReg + 224);
    if (v2)
    {
      *(StatusReg + 224) = 0;
      if (v2[8])
      {
        _dispatch_set_priority_and_mach_voucher_slow(0, 0);
      }

      os_release(v2);
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
  _dispatch_introspection_runtime_event();
  memset(v32, 0, sizeof(v32));
  _dispatch_last_resort_autorelease_pool_push(v32);
  StatusReg[25] = *(v2 + 84);
  v5 = a1[1];
  v6 = StatusReg[24];
  if (v6)
  {
    (*v6)(v2);
  }

  v7 = *v5;
  if (*v5 < 0x1000)
  {
    v9 = v5[3];
    if ((v7 & 4) != 0)
    {
      v5[3] = -1;
    }

    if (v9 != -1 && (v9 + 1) != 0)
    {
      if (v9)
      {
        v11 = v9[8];
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v12 = v5[1];
    if (v12 == -1)
    {
      v15 = 0;
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
      if ((v12 & 0xFFFFFF) != 0)
      {
        if ((v12 & 0xFFFFFFuLL) >= (v14 & 0xFFFFFF00) && ((v13 & 0x44000000) != 0 || (v5[1] & 0x10000000) != 0))
        {
          v15 = v12 & 0xFFFFFF;
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
        goto LABEL_81;
      }

      v17 = v18 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v17 == (v18 & 0xFFFFFFFF76FFFFFFLL))
    {
LABEL_34:
      if (v9 == -1)
      {
        goto LABEL_39;
      }

      if (StatusReg[28] == v9)
      {
        if ((v7 & 4) != 0 && v9)
        {
          os_release(v9);
        }

LABEL_39:
        if ((v7 & 0x200) != 0)
        {
          goto LABEL_43;
        }

LABEL_40:
        if (MEMORY[0xFFFFFC100])
        {
          _dispatch_trace_item_pop_internal(v2, v5, v4);
        }

        _dispatch_introspection_queue_item_dequeue(v2, v5);
LABEL_43:
        if ((v7 & 4) != 0)
        {
          v20 = StatusReg[22];
          if (v20)
          {
            v21 = *(v20 + 8) + 1;
          }

          else
          {
            v21 = 1;
          }

          v19 = v5;
          if (v21 <= _dispatch_continuation_cache_limit)
          {
            v19 = 0;
            v5[2] = v20;
            *(v5 + 2) = v21;
            StatusReg[22] = v5;
          }
        }

        else
        {
          v19 = 0;
        }

        if ((v7 & 8) != 0)
        {
          v27 = v5[6];
          v28 = *(v27->isa + 5);
          if (v28 != 514)
          {
            _dispatch_workloop_invoke_cold_3(v28);
          }

          v29 = v5[4];
          v30 = v5[5];
          v31 = v29;
          if (v30)
          {
            v31 = v5[4];
            if (v29 == _dispatch_call_block_and_release)
            {
              if (v30[2])
              {
                v31 = v30[2];
              }

              else
              {
                v31 = 0;
              }
            }
          }

          _dispatch_introspection_callout_entry(v30, v31);
          _dispatch_client_callout(v30, v29);
          _dispatch_introspection_callout_return(v30, v31);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_4();
          }

          _dispatch_introspection_queue_item_complete(v5);
          dispatch_group_leave(v27);
          if (!v19)
          {
LABEL_59:
            if (!v6)
            {
              goto LABEL_61;
            }

LABEL_60:
            v6[1](v2);
            goto LABEL_61;
          }
        }

        else
        {
          v23 = v5[4];
          v22 = v5[5];
          v24 = v23;
          if (v22)
          {
            v24 = v5[4];
            if (v23 == _dispatch_call_block_and_release)
            {
              if (v22[2])
              {
                v24 = v22[2];
              }

              else
              {
                v24 = 0;
              }
            }
          }

          _dispatch_introspection_callout_entry(v22, v24);
          _dispatch_client_callout(v22, v23);
          _dispatch_introspection_callout_return(v22, v24);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_4();
          }

          _dispatch_introspection_queue_item_complete(v5);
          if (!v19)
          {
            goto LABEL_59;
          }
        }

        _dispatch_continuation_free_to_cache_limit(v19);
        if (!v6)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v17 = 0;
LABEL_81:
      _dispatch_set_priority_and_voucher_slow(v17, v9, v7 & 4 | 2);
      if ((v7 & 0x200) != 0)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (v17)
    {
      goto LABEL_81;
    }

    goto LABEL_34;
  }

  v8 = *v5;
  if (*(v7 + 40) == 1)
  {
    (*(v7 + 48))(v5, 0, 0);
  }

  else
  {
    (*(v7 + 64))(v5, v32, 196608);
  }

  if (v6)
  {
    goto LABEL_60;
  }

LABEL_61:
  _dispatch_last_resort_autorelease_pool_pop(v32);
  StatusReg[25] = 0;
  StatusReg[20] = 0;
  v25 = StatusReg[4];
  if ((v25 & 0x1000000) != 0)
  {
    v26 = v25 & 0xFFFFFFFFFEFFFFFFLL;
    if ((v25 & 0xFFFFFFFFFEFFFFFFLL) != 0)
    {
      goto LABEL_67;
    }
  }

  if (StatusReg[28])
  {
    v26 = 0;
LABEL_67:
    _dispatch_set_priority_and_voucher_slow(v26, 0, 14);
  }
}

void *_dispatch_root_queue_drain_deferred_wlh(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  StatusReg[20] = v2;
  v5 = 0uLL;
  StatusReg[25] = *(v2 + 84) | 0xF0000;
  v6 = *(a1 + 53) | 4;
  v14 = (v3 + 1);
  memset(v15, 0, sizeof(v15));
  *(a1 + 53) = v6;
  v7 = 196610;
  while (2)
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_pop_internal(v2, v3, v5);
    }

    _dispatch_introspection_queue_item_dequeue(v2, v3);
    v8 = StatusReg[3] & 0xFFFFFFFCLL;
    v9 = v3[7];
    while (1)
    {
      v10 = v9;
      if (v9 >> 55)
      {
        v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
        goto LABEL_8;
      }

      if ((v9 & 0xFFFFFFFC) != 0)
      {
        break;
      }

      v11 = v8 | v9 & 0x7700000001 | 0x60000000000000;
LABEL_8:
      atomic_compare_exchange_strong_explicit(v3 + 7, &v9, v11, memory_order_acquire, memory_order_acquire);
      if (v9 == v10)
      {
        goto LABEL_14;
      }
    }

    if ((v9 & 2) != 0)
    {
      v11 = v9 | 0x800000000;
      goto LABEL_8;
    }

    v11 = v9;
LABEL_14:
    if ((v10 & 0x6000000001) != 0x2000000001)
    {
      _dispatch_root_queue_drain_deferred_wlh_cold_1(v10);
    }

    if ((v10 & 0xFF800000FFFFFFFCLL) != 0)
    {
      v12 = *v14;
      if (v11 >> 55)
      {
        if (v12 != 0x7FFFFFFF && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_release) <= 2)
        {
          _os_object_retain_weak_cold_1();
        }
      }

      else if (v12 != 0x7FFFFFFF && atomic_fetch_add_explicit(v14, 0xFFFFFFFF, memory_order_release) <= 1)
      {
        _os_object_retain_weak_cold_1();
      }

      goto LABEL_26;
    }

    (*(*v3 + 64))(v3, v15, v7);
    if (*(a1 + 53))
    {
      v11 = v3[7];
      if ((v11 & 0x2000000000) != 0)
      {
        if (v11)
        {
          _dispatch_root_queue_drain_deferred_wlh_cold_4(v14, v3 + 3);
          v7 = 196626;
          continue;
        }

LABEL_26:
        _dispatch_event_loop_leave_deferred(a1, v11);
      }
    }

    return _dispatch_root_queue_drain_deferred_wlh_cold_5(StatusReg + 25, StatusReg + 20, StatusReg);
  }
}

void _dispatch_queue_cleanup2(int8x16_t a1)
{
  v1 = qword_70DF8[0];
  v2 = qword_70DF8[0];
  do
  {
    atomic_compare_exchange_strong_explicit(qword_70DF8, &v2, (v1 & 0xFFFFFF7FFFFFFFFFLL) + 0x40020000000000, memory_order_acquire, memory_order_acquire);
    v3 = v2 == v1;
    v1 = v2;
  }

  while (!v3);
  atomic_fetch_and_explicit(&dword_70E10, 0xFFFBFFFF, memory_order_relaxed);
  _dispatch_lane_barrier_complete(&_dispatch_main_q, 0, 0, a1);
  if (_dispatch_program_is_probably_callback_driven == 1)
  {
    memset(&v6, 0, sizeof(v6));
    pthread_attr_init(&v6);
    pthread_attr_setdetachstate(&v6, 2);
    v5 = 0;
    v4 = pthread_create(&v5, &v6, _dispatch_sig_thread, 0);
    if (v4)
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Unable to create signal thread";
      qword_6D1F0 = v4;
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

uint64_t OUTLINED_FUNCTION_0_2()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1, uint64_t a2, const char *a3)
{

  return snprintf((v3 + v5), v4, a3);
}

char *OUTLINED_FUNCTION_29@<X0>(const char *a1@<X8>, uint64_t a2, char __dst)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = v3;
  }

  return strncpy(&__dst, v5, 0x20uLL);
}

void OUTLINED_FUNCTION_30(int8x16_t a1)
{

  _dispatch_continuation_pop(v3, v2, v4, v1, a1);
}

void _dispatch_apply_invoke(atomic_uint *a1)
{
  add_explicit = atomic_fetch_add_explicit(a1 + 15, 1u, memory_order_relaxed);
  context[1] = 0;
  context[2] = 0;
  context[0] = a1;
  _dispatch_apply_set_attr_behavior(*(a1 + 8));
  v3 = (*(a1 + 5) + 8 * add_explicit);
  if (*v3 != -1)
  {
    dispatch_once_f(v3, context, _dispatch_apply_invoke3);
  }

  _dispatch_apply_clear_attr_behavior(*(a1 + 8));
  if (atomic_fetch_add_explicit(a1 + 13, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v4 = *a1;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = *(StatusReg + 176);
    if (v6)
    {
      v7 = *(v6 + 8) + 1;
    }

    else
    {
      v7 = 1;
    }

    if (v7 > _dispatch_continuation_cache_limit)
    {
      if (v4)
      {
        _dispatch_continuation_free_to_cache_limit(v4);
      }
    }

    else
    {
      *(v4 + 16) = v6;
      *(v4 + 8) = v7;
      *(StatusReg + 176) = v4;
    }

    v8 = *(a1 + 5);
    if (v8)
    {
      free(v8);
    }

    v9 = *(a1 + 8);
    if (v9)
    {
      v9[2] = 0u;
      v9[3] = 0u;
      *v9 = 0u;
      v9[1] = 0u;
      free(*(a1 + 8));
    }

    free(a1);
  }
}

void _dispatch_apply_redirect_invoke(atomic_uint *a1)
{
  add_explicit = atomic_fetch_add_explicit(a1 + 15, 1u, memory_order_relaxed);
  context = a1;
  v11 = xmmword_452C0;
  _dispatch_apply_set_attr_behavior(*(a1 + 8));
  v3 = (*(a1 + 5) + 8 * add_explicit);
  if (*v3 != -1)
  {
    dispatch_once_f(v3, &context, _dispatch_apply_invoke3);
  }

  _dispatch_apply_clear_attr_behavior(*(a1 + 8));
  if (atomic_fetch_add_explicit(a1 + 13, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v4 = *a1;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = *(StatusReg + 176);
    if (v6)
    {
      v7 = *(v6 + 8) + 1;
    }

    else
    {
      v7 = 1;
    }

    if (v7 > _dispatch_continuation_cache_limit)
    {
      if (v4)
      {
        _dispatch_continuation_free_to_cache_limit(v4);
      }
    }

    else
    {
      *(v4 + 16) = v6;
      *(v4 + 8) = v7;
      *(StatusReg + 176) = v4;
    }

    v8 = *(a1 + 5);
    if (v8)
    {
      free(v8);
    }

    v9 = *(a1 + 8);
    if (v9)
    {
      v9[2] = 0u;
      v9[3] = 0u;
      *v9 = 0u;
      v9[1] = 0u;
      free(*(a1 + 8));
    }

    free(a1);
  }
}

void _dispatch_apply_with_attr_f(unint64_t a1, uint64_t a2, __objc2_class **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return;
  }

  v6 = a3;
  if (a2 && (*a2 != -1592086528 || (*(a2 + 16) ^ a2) != 0xFFFFFFFFFFFFFFFFLL))
  {
    _dispatch_apply_with_attr_f_cold_1(a2);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = StatusReg + 184;
  while (1)
  {
    v10 = *v10;
    if (!v10)
    {
      break;
    }

    if (*(v10 + 8) == "apply")
    {
      v11 = *(v10 + 16);
      goto LABEL_10;
    }
  }

  v11 = 0;
LABEL_10:
  v13 = (StatusReg + 160);
  v12 = *(StatusReg + 160);
  if (!a3)
  {
    if (!v12)
    {
      goto LABEL_24;
    }

    v14 = *(StatusReg + 160);
    do
    {
      v6 = v14;
      v14 = v14[3];
      if (!v14)
      {
        break;
      }
    }

    while (v14 != &_dispatch_custom_workloop_root_queue && v14 != &_dispatch_custom_workloop_overcommit_root_queue);
    if (v6 >= &_dispatch_root_queues && v6 < &_dispatch_queue_serial_numbers)
    {
LABEL_24:
      v17 = __clz(__rbit32((*(StatusReg + 32) >> 8) & 0x3FFF));
      if (((*(StatusReg + 32) >> 8) & 0x3FFF) != 0)
      {
        v18 = v17 + 1;
      }

      else
      {
        v18 = 4;
      }

      if (v18 - 7 <= 0xFFFFFFF9)
      {
        _dispatch_queue_priority_inherit_from_target_cold_1(v18);
      }

      v6 = &_dispatch_root_queues + 16 * (3 * v18 - 3);
    }
  }

  v19 = *(v6 + 21);
  v20 = v19 >> 12;
  v21 = (v19 >> 8) & 0xF;
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  if (v6[3])
  {
    v47 = __clz(__rbit32((*(StatusReg + 32) >> 8) & 0x3FFF));
    if (((*(StatusReg + 32) >> 8) & 0x3FFF) != 0)
    {
      v22 = v47 + 1;
    }

    else
    {
      v22 = 0;
    }
  }

  if (a2)
  {
    if (*a2 != -1592086528 || (*(a2 + 16) ^ a2) != 0xFFFFFFFFFFFFFFFFLL)
    {
      _dispatch_apply_with_attr_f_cold_1(a2);
    }

    if (!v11)
    {
      if (v22 <= 2 && !v22 || (v23 = pthread_qos_max_parallelism(), v23 <= 0))
      {
        v23 = MEMORY[0xFFFFFC036];
      }

      if (v23 >= MEMORY[0xFFFFFC034])
      {
        v24 = MEMORY[0xFFFFFC034];
      }

      else
      {
        v24 = v23;
      }

      if (*(a2 + 8))
      {
        if ((v22 - 1) <= 5)
        {
          v25 = dword_452E0[v22 - 1];
        }

        v27 = pthread_qos_max_parallelism();
        if (v27 < 1)
        {
          v26 = 0;
        }

        else
        {
          v26 = (v27 * *(a2 + 8));
        }
      }

      else
      {
        v26 = -1;
      }

      if (v26 >= v24)
      {
        v26 = v24;
      }

      if (v26)
      {
        v28 = 0xFFFFLL;
        goto LABEL_66;
      }

LABEL_136:
      _dispatch_apply_with_attr_f_cold_4(a2);
    }

    v28 = 0xFFFFLL;
    v26 = 1;
  }

  else
  {
    if (v22 <= 2 && !v22 || (v29 = pthread_qos_max_parallelism(), v29 <= 0))
    {
      v29 = MEMORY[0xFFFFFC036];
    }

    if (v29 >= MEMORY[0xFFFFFC034])
    {
      v26 = MEMORY[0xFFFFFC034];
    }

    else
    {
      v26 = v29;
    }

    if (v11)
    {
      if (v11 >= v26)
      {
        v26 = 1;
      }

      else
      {
        if (v11 > v26)
        {
          goto LABEL_136;
        }

        v26 = v26 / v11;
      }

      if (v11 >= 0xFFFF || a1 >= 0xFFFF)
      {
        v28 = 0xFFFFLL;
      }

      else
      {
        v28 = v11 * a1;
      }
    }

    else
    {
      v28 = a1;
      if (!v26)
      {
        goto LABEL_136;
      }
    }
  }

LABEL_66:
  if (v26 >= a1)
  {
    v30 = a1;
  }

  else
  {
    v30 = v26;
  }

  v55 = 0;
  v31 = _dispatch_calloc_typed(1uLL, 0x48uLL, 0x1030040CC20926CuLL);
  *(v31 + 1) = 0;
  *(v31 + 3) = a1;
  *(v31 + 4) = v28;
  *(v31 + 13) = v30;
  *(v31 + 15) = 0;
  if (a2)
  {
    v32 = _dispatch_calloc_typed(1uLL, 0x40uLL, 0x1000040FA0F61DDuLL);
    *v32 = 0u;
    *(v32 + 16) = 0u;
    *(v32 + 32) = 0u;
    *(v32 + 48) = 0u;
    *(v32 + 8) = *(a2 + 8);
    *(v32 + 16) = ~v32;
    v33 = *(a2 + 4);
    *v32 = -1592086528;
    *(v32 + 4) = v33;
  }

  else
  {
    v32 = 0;
  }

  *(v31 + 8) = v32;
  *(v31 + 5) = 0;
  *(v31 + 2) = a1;
  v34 = *(StatusReg + 176);
  if (v34)
  {
    *(StatusReg + 176) = v34[2];
  }

  else
  {
    v34 = _dispatch_continuation_alloc_from_heap();
  }

  *v31 = v34;
  v34[4] = a5;
  v34[5] = a4;
  v34[6] = a6;
  v34[7] = v6;
  *v34 = 256;
  *(v31 + 12) = 0;
  v35 = v6[3];
  if (v35 == &_dispatch_custom_workloop_root_queue || v35 == &_dispatch_custom_workloop_overcommit_root_queue)
  {
    if (((v6[7] ^ *(StatusReg + 24)) & 0xFFFFFFFC) != 0)
    {
      dispatch_async_and_wait_f(v6, v31, _dispatch_apply_serial);
    }

    else
    {
      _dispatch_apply_serial(v31);
    }
  }

  else if (v30 < 2 || *(v6 + 40) == 1)
  {
    dispatch_sync_f(v6, v31, _dispatch_apply_serial);
  }

  else if (v35)
  {
    _dispatch_apply_with_attr_f_cold_3(v6, v12, v31);
  }

  else
  {
    v54 = *v13;
    *(StatusReg + 160) = v6;
    *(StatusReg + 168) = &v54;
    v36 = *(v31 + 13);
    v37 = v36 - 1;
    if (v36 < 2)
    {
      v39 = 0;
      v38 = 0;
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = *(StatusReg + 32) | 0x10000000;
      v51 = v36 - 1;
      do
      {
        v41 = v38;
        v38 = *(StatusReg + 176);
        if (v38)
        {
          *(StatusReg + 176) = v38[2];
        }

        else
        {
          v38 = _dispatch_continuation_alloc_from_heap();
        }

        *v38 = 260;
        v38[4] = _dispatch_apply_invoke;
        v38[5] = v31;
        v42 = *(StatusReg + 224);
        if (v42)
        {
          os_retain(*(StatusReg + 224));
        }

        v38[3] = v42;
        if (v42 != -1)
        {
          if (v42)
          {
            v43 = *(v42 + 32);
          }

          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }
        }

        v38[1] = v40;
        v38[2] = v41;
        if (!v39)
        {
          v39 = v38;
        }

        --v37;
      }

      while (v37);
      v36 = *(v31 + 13);
      v13 = (StatusReg + 160);
      v37 = v51;
    }

    *(v31 + 14) = v36;
    *(v31 + 5) = _dispatch_calloc_typed(v36, 8uLL, 0x100004000313F17uLL);
    if (MEMORY[0xFFFFFC100])
    {
      v48 = v38;
      do
      {
        if (MEMORY[0xFFFFFC100])
        {
          _dispatch_trace_item_push_internal(v6, v48, v44);
        }

        if (v48 == v39)
        {
          break;
        }

        v48 = v48[2];
      }

      while (v48);
    }

    isa = v38;
    do
    {
      _dispatch_introspection_queue_item_enqueue(v6, isa);
      if (isa == v39)
      {
        break;
      }

      isa = isa[2].isa;
    }

    while (isa);
    *(v39 + 16) = 0;
    *(StatusReg + 976) = v6 + 6;
    v46 = atomic_exchange_explicit(v6 + 6, v39, memory_order_release);
    if (v46)
    {
      *(v46 + 16) = v38;
      *(StatusReg + 976) = 0;
    }

    else
    {
      v6[13] = v38;
      *(StatusReg + 976) = 0;
      _dispatch_root_queue_poke_and_wakeup(v6, v37, 0);
    }

    _dispatch_apply_invoke_and_wait(v31);
    *v13 = v54;
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
              v19 = dword_452E0[v16 - 1];
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

void _dispatch_apply_invoke3(_BYTE *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  add_explicit = atomic_fetch_add_explicit((*a1 + 8), 1uLL, memory_order_relaxed);
  if (add_explicit >= v2)
  {
    return;
  }

  v4 = 0;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 40);
  v7 = "apply";
  v8 = *(*v1 + 48);
  v9 = *(v1 + 32);
  v28[1] = "apply";
  v28[2] = v9;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v28[0] = *(StatusReg + 184);
  *(StatusReg + 184) = v28;
  v27 = 0uLL;
  if (a1[8])
  {
    v11 = *(*v1 + 56);
    v27 = *(StatusReg + 160);
    *(StatusReg + 160) = v11;
    *(StatusReg + 168) = &v27;
    LODWORD(v7) = *(v11 + 84);
    v12 = *(StatusReg + 200);
    if (v12)
    {
      v13 = v7 & 0xFFF;
      if ((v7 & 0xFFF) != 0)
      {
        if ((v12 & 0xFFFu) > v13)
        {
          v13 = v12 & 0xFFF;
        }

        if (v7 >> 12 <= v13 >> 8)
        {
          v14 = 0x40000000;
        }

        else
        {
          v14 = 1140912128;
        }

        LODWORD(v7) = v12 & 0x880F0000 | v13 | v14 & v7;
      }

      else
      {
        v15 = v12 | 0x40000000;
        if ((v12 & 0xFFF) == 0)
        {
          v15 = *(StatusReg + 200);
        }

        v16 = v7 >> 12;
        LODWORD(v7) = v15 & 0xFFFF0FFF | v7 & 0x400F000;
        if (v16 <= ((v15 >> 8) & 0xF))
        {
          LODWORD(v7) = v15;
        }
      }
    }

    else
    {
LABEL_31:
      LODWORD(v7) = v7 & 0xFFF0FFFF;
    }

    *(StatusReg + 200) = v7;
    v4 = v12 & 0xFFF0FFFF;
  }

  v24 = v4;
  v25 = StatusReg;
  v26 = a1;
  v17 = 0;
  v18 = *(v1 + 48);
  do
  {
    if ((v18 & 0x1000000) != 0)
    {
      a1 = objc_autoreleasePoolPush();
      v19 = a1;
      if (v8)
      {
LABEL_19:
        _dispatch_introspection_callout_entry(v6, v5);
        _dispatch_client_callout2(v6, add_explicit, v5);
        goto LABEL_23;
      }
    }

    else
    {
      v19 = 0;
      if (v8)
      {
        goto LABEL_19;
      }
    }

    if ((v8 & 2) == 0)
    {
      LODWORD(v12) = v8;
      qword_6D1C0 = "BUG IN LIBDISPATCH: apply continuation has invalid flags";
      qword_6D1F0 = v8;
      __break(1u);
      goto LABEL_31;
    }

    v20 = v2;
    v21 = v1;
    v22 = *(v26 + 4);
    _dispatch_introspection_callout_entry(v6, v5);
    v23 = v22;
    v1 = v21;
    v2 = v20;
    _dispatch_client_callout3(v6, add_explicit, v23, v5);
LABEL_23:
    _dispatch_introspection_callout_return(v6, v5);
    add_explicit = atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
    if (v19)
    {
      objc_autoreleasePoolPop(v19);
    }

    ++v17;
  }

  while (add_explicit < v2);
  if (v26[8])
  {
    *(v25 + 200) = *(v25 + 200) & 0xF0000 | v24;
    *(v25 + 160) = v27;
  }

  *(v25 + 184) = v28[0];
  atomic_fetch_add_explicit((v1 + 16), -v17, memory_order_release);
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

void _dispatch_apply_serial(uint64_t *a1)
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
  if (a1[3] <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a1[3];
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

    v10 = v2[6];
    if (v10)
    {
      v12 = v2[4];
      v11 = v2[5];
      _dispatch_introspection_callout_entry(v11, v12);
      _dispatch_client_callout2(v11, v7, v12);
    }

    else
    {
      if ((v10 & 2) == 0)
      {
        qword_6D1C0 = "BUG IN LIBDISPATCH: apply continuation has invalid flags";
        qword_6D1F0 = v10;
        __break(1u);
        return;
      }

      v12 = v2[4];
      v11 = v2[5];
      _dispatch_introspection_callout_entry(v11, v12);
      _dispatch_client_callout3(v11, v7, 0, v12);
    }

    _dispatch_introspection_callout_return(v11, v12);
    if (v9)
    {
      objc_autoreleasePoolPop(v9);
    }

    ++v7;
  }

  while (v8 != v7);
  v13 = *a1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v15 = *(StatusReg + 176);
  if (v15)
  {
    v16 = *(v15 + 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v16 > _dispatch_continuation_cache_limit)
  {
    if (v13)
    {
      _dispatch_continuation_free_to_cache_limit(v13);
    }
  }

  else
  {
    *(v13 + 16) = v15;
    *(v13 + 8) = v16;
    *(StatusReg + 176) = v13;
  }

  v17 = a1[5];
  if (v17)
  {
    free(v17);
  }

  v18 = a1[8];
  if (v18)
  {
    v18[2] = 0u;
    v18[3] = 0u;
    *v18 = 0u;
    v18[1] = 0u;
    free(a1[8]);
  }

  free(a1);
}

void _dispatch_apply_redirect(uint64_t *a1)
{
  v1 = (*(a1 + 13) - 1);
  v2 = *(*a1 + 56);
  v3 = v2;
  while (1)
  {
    if (*(v3 + 80) != 1)
    {
      v4 = *(v3 + 56);
      while ((v4 & 0x20000000000000) == 0)
      {
        LODWORD(v5) = 4096 - ((v4 >> 41) & 0xFFF);
        if (v5 >= v1)
        {
          v5 = v1;
        }

        else
        {
          v5 = v5;
        }

        v6 = v4;
        atomic_compare_exchange_strong_explicit((v3 + 56), &v6, v4 + (v5 << 41), memory_order_relaxed, memory_order_relaxed);
        v7 = v6 == v4;
        v4 = v6;
        if (v7)
        {
          goto LABEL_10;
        }
      }
    }

    v5 = 0;
LABEL_10:
    v8 = (v1 - v5);
    if (v1 <= v5)
    {
      goto LABEL_11;
    }

    if (v2 != v3)
    {
      v9 = v2;
      do
      {
        atomic_fetch_add_explicit((v9 + 56), 0xFFFFFE0000000000 * v8, memory_order_relaxed);
        v9 = *(v9 + 24);
      }

      while (v9 != v3);
    }

    if (!v5)
    {
      break;
    }

    *(a1 + 13) -= v8;
    v1 = v5;
LABEL_11:
    if (!*(a1 + 12))
    {
      *(a1 + 12) = (*(v3 + 80) << 8) & 0x3000000;
    }

    v3 = *(v3 + 24);
    if (!*(v3 + 24))
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = *(a1 + 13);
      v12 = v11 - 1;
      v25 = a1;
      if (v11 < 2)
      {
        v14 = 0;
        v13 = 0;
      }

      else
      {
        v24 = v1;
        v13 = 0;
        v14 = 0;
        v15 = *(StatusReg + 32) | 0x10000000;
        v23 = v11 - 1;
        do
        {
          v16 = v13;
          v13 = *(StatusReg + 176);
          if (v13)
          {
            *(StatusReg + 176) = v13[2];
          }

          else
          {
            v13 = _dispatch_continuation_alloc_from_heap();
            a1 = v25;
          }

          *v13 = 260;
          v13[4] = _dispatch_apply_redirect_invoke;
          v13[5] = a1;
          v17 = *(StatusReg + 224);
          if (v17)
          {
            os_retain(*(StatusReg + 224));
            a1 = v25;
          }

          v13[3] = v17;
          if (v17 != -1)
          {
            if (v17)
            {
              v18 = *(v17 + 32);
            }

            if (MEMORY[0xFFFFFC100])
            {
              kdebug_trace();
              a1 = v25;
            }
          }

          v13[1] = v15;
          v13[2] = v16;
          if (!v14)
          {
            v14 = v13;
          }

          --v12;
        }

        while (v12);
        v11 = *(a1 + 13);
        v1 = v24;
        v12 = v23;
      }

      *(a1 + 14) = v11;
      v25[5] = _dispatch_calloc_typed(v11, 8uLL, 0x100004000313F17uLL);
      if (MEMORY[0xFFFFFC100])
      {
        v22 = v13;
        do
        {
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_trace_item_push_internal(v3, v22, v19);
          }

          if (v22 == v14)
          {
            break;
          }

          v22 = v22[2];
        }

        while (v22);
      }

      isa = v13;
      do
      {
        _dispatch_introspection_queue_item_enqueue(v3, isa);
        if (isa == v14)
        {
          break;
        }

        isa = isa[2].isa;
      }

      while (isa);
      *(v14 + 16) = 0;
      *(StatusReg + 976) = v3 + 48;
      v21 = atomic_exchange_explicit((v3 + 48), v14, memory_order_release);
      if (v21)
      {
        *(v21 + 16) = v13;
        *(StatusReg + 976) = 0;
      }

      else
      {
        *(v3 + 104) = v13;
        *(StatusReg + 976) = 0;
        _dispatch_root_queue_poke_and_wakeup(v3, v12, 0);
      }

      _dispatch_apply_invoke_and_wait(v25);
      for (; v2 != v3; v2 = *(v2 + 24))
      {
        atomic_fetch_add_explicit((v2 + 56), 0xFFFFFE0000000000 * v1, memory_order_relaxed);
      }

      return;
    }
  }

  _dispatch_apply_serial(a1);
}

void _dispatch_apply_invoke_and_wait(atomic_uint *a1)
{
  add_explicit = atomic_fetch_add_explicit(a1 + 15, 1u, memory_order_relaxed);
  context = a1;
  v16 = xmmword_452D0;
  _dispatch_apply_set_attr_behavior(*(a1 + 8));
  v3 = (*(a1 + 5) + 8 * add_explicit);
  if (*v3 != -1)
  {
    dispatch_once_f(v3, &context, _dispatch_apply_invoke3);
  }

  _dispatch_apply_clear_attr_behavior(*(a1 + 8));
  v4 = a1[14];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 8 * add_explicit;
    do
    {
      if (v7 != v5)
      {
        v8 = *(a1 + 5);
        if (*(v8 + v5) != -1)
        {
          dispatch_once_f((v8 + v5), 0, _dispatch_no_op);
        }

        v4 = a1[14];
      }

      ++v6;
      v5 += 8;
    }

    while (v6 < v4);
  }

  if (atomic_fetch_add_explicit(a1 + 13, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v9 = *a1;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = *(StatusReg + 176);
    if (v11)
    {
      v12 = *(v11 + 8) + 1;
    }

    else
    {
      v12 = 1;
    }

    if (v12 > _dispatch_continuation_cache_limit)
    {
      if (v9)
      {
        _dispatch_continuation_free_to_cache_limit(v9);
      }
    }

    else
    {
      *(v9 + 16) = v11;
      *(v9 + 8) = v12;
      *(StatusReg + 176) = v9;
    }

    v13 = *(a1 + 5);
    if (v13)
    {
      free(v13);
    }

    v14 = *(a1 + 8);
    if (v14)
    {
      v14[2] = 0u;
      v14[3] = 0u;
      *v14 = 0u;
      v14[1] = 0u;
      free(*(a1 + 8));
    }

    free(a1);
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
    queue = &off_713C0;
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
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Attempt to set timer on a non-timer source";
    qword_6D1F0 = source;
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
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Setting interval to 0";
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

    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Attempting to modify timer clock";
    __break(1u);
LABEL_99:
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Start value is not DISPATCH_TIME_NOW or DISPATCH_TIME_FOREVER";
    __break(1u);
LABEL_100:
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Passing an invalid leeway";
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

void _dispatch_source_dispose(uint64_t a1, _BYTE *a2)
{
  v3 = a1;
  if (MEMORY[0xFFFFFC100])
  {
    a1 = _dispatch_source_dispose_cold_1();
  }

  __swp(a1, (v3[11] + 56));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1);
  }

  __swp(a1, (v3[11] + 40));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1);
  }

  __swp(a1, (v3[11] + 48));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1);
  }

  _dispatch_unote_dispose(v3[11], 0);
  v3[11] = 0;

  _dispatch_lane_class_dispose(v3, a2);
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
  if (v9)
  {
    *(StatusReg + 176) = v9[2];
    if (aBlock)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = _dispatch_continuation_alloc_from_heap();
    if (aBlock)
    {
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
            goto LABEL_46;
          }
        }

        else
        {
          if (!_dispatch_block_special_invoke)
          {
LABEL_46:
            *v9 = v12;
            v9[5] = v11;
            _dispatch_continuation_init_slow(v9, a1, 1073741888);
            goto LABEL_17;
          }

          v14 = 0;
        }

        if (a3)
        {
          v14 = _dispatch_call_block_and_release;
        }

        *v9 = v12;
        v9[4] = v14;
        v9[5] = v11;
      }

      else
      {
        v15 = *(a1 + 32);
        *v9 = v10 | 0x140;
        v9[4] = aBlock;
        v9[5] = v15;
      }

      v9[3] = 0;
      if (MEMORY[0xFFFFFC100])
      {
LABEL_44:
        kdebug_trace();
      }

      v9[1] = 0;
      goto LABEL_17;
    }
  }

  *v9 = 256;
  v9[4] = 0;
LABEL_17:
  v16 = *(a1 + 56);
  do
  {
    if ((~v16 & 0x180000000000000) != 0)
    {
      v22 = *(a1 + 80);
      if ((v22 & 0x4000000) != 0)
      {
        qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change a handler of this source after it has been activated";
        qword_6D1F0 = a3;
        __break(1u);
      }

      else
      {
        if ((v22 & 0x10000000) != 0)
        {
LABEL_40:
          v9[6] = a3;

          return _dispatch_barrier_trysync_or_async_f(a1, v9, _dispatch_source_set_handler_slow, 0);
        }

        if (!MEMORY[0xFFFFFC100])
        {
LABEL_38:
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

          goto LABEL_40;
        }
      }

      kdebug_trace();
      goto LABEL_38;
    }

    v17 = v16;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v16, v16 + 0x400000000000000, memory_order_relaxed, memory_order_relaxed);
  }

  while (v16 != v17);
  if ((v17 & 0x200000000000000) != 0)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Too many calls to dispatch_suspend() prior to calling dispatch_set_target_queue() or dispatch_set_*_handler()";
    __break(1u);
    goto LABEL_44;
  }

  if (v9[4])
  {
    if ((*v9 & 0x40) != 0)
    {
      v9[5] = *(a1 + 32);
    }
  }

  else
  {
    v18 = *(StatusReg + 176);
    if (v18)
    {
      v19 = *(v18 + 8) + 1;
    }

    else
    {
      v19 = 1;
    }

    if (v19 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(v9);
    }

    else
    {
      v9[2] = v18;
      *(v9 + 2) = v19;
      *(StatusReg + 176) = v9;
    }

    v9 = 0;
  }

  v20 = atomic_exchange_explicit((*(a1 + 88) + 8 * a3 + 40), v9, memory_order_release);
  if (v20)
  {
    _dispatch_source_handler_dispose(v20);
  }

  return _dispatch_lane_resume(a1, 0);
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
    qword_6D1C0 = "BUG IN LIBDISPATCH: Source finalized twice";
    qword_6D1F0 = v6;
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

void _dispatch_source_invoke(uint64_t a1, void *a2, int a3, int8x16_t a4)
{
  v82 = 0;
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

  v80 = a2;
  if ((a3 & 2) != 0)
  {
    v82 = 0x40020000000001;
    v8 = a3 & 0x40000;
  }

  else
  {
    v55 = (*(a1 + 80) << 41) - 0x20000000000;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v57 = *(StatusReg + 24) & 0xFFFFFFFCLL;
    v8 = a3 & 0x40000;
    if ((a3 & 0x40000) != 0)
    {
      v58 = 0x4000000000;
    }

    else
    {
      v58 = 1;
    }

    v59 = 0xFFE00000FFFFFFFCLL;
    if ((a3 & 0x40000) == 0)
    {
      v59 = 0xFFE00040FFFFFFFCLL;
    }

    if (a3)
    {
      v60 = 0xFFE00040FFFFFFFCLL;
    }

    else
    {
      v60 = v59;
    }

    v61 = *(StatusReg + 200);
    v62 = (v61 >> 8) & 0xF;
    v63 = v61 >> 12;
    v64 = HIWORD(v61) & 0xF;
    if (v62 <= v63)
    {
      v62 = v63;
    }

    if (v62 > v64)
    {
      v64 = v62;
    }

LABEL_169:
    for (i = *(a1 + 56); ; i = v70)
    {
      while ((i & v60) != 0)
      {
        if ((a3 & 1) != 0 || (v71 = i, atomic_compare_exchange_strong_explicit((a1 + 56), &v71, i ^ v58, memory_order_acquire, memory_order_acquire), v71 == i))
        {
          v30 = 0;
          v82 = 0;
          a2 = v80;
          goto LABEL_145;
        }

        i = v71;
      }

      if ((i & 0x1000000000) != 0)
      {
        v66 = HIDWORD(i) & 7;
        if (v66 > v64)
        {
          v72 = *(StatusReg + 24);
          _pthread_workqueue_override_start_direct();
          v73 = *(StatusReg + 200);
          v64 = v66;
          if ((HIWORD(v73) & 0xF) < v66)
          {
            *(StatusReg + 200) = v73 & 0xFFF0FFFF | (v66 << 16);
            v64 = v66;
          }

          goto LABEL_169;
        }
      }

      v67 = (i >> 40) & 1;
      if (!((v55 + i) >> 53))
      {
        LODWORD(v67) = 1;
      }

      v68 = v67 ? 0x60000000000000 : 0x20000000000000;
      v69 = v57 | i & 0x7700000001 | v68;
      v70 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v70, v69, memory_order_acquire, memory_order_acquire);
      if (v70 == i)
      {
        break;
      }
    }

    v74 = 0x60000000000000;
    if ((a3 & 1) == 0)
    {
      v74 = v58 | 0x60000000000000;
    }

    v82 = (v69 & v74) - (i & 0x3FFE0000000000);
    a2 = v80;
    if (!v82)
    {
      v30 = 0;
      if ((a3 & 1) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_149;
    }
  }

  if (v8)
  {
    v77 = 0;
    goto LABEL_23;
  }

  v9 = *(a1 + 84);
  v10 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = *(v10 + 200);
  if (v11)
  {
    v12 = v9 >> 12;
    v13 = v9 & 0xFFF;
    if ((v9 & 0xFFF) != 0)
    {
      if ((v11 & 0xFFFu) > v13)
      {
        v13 = v11 & 0xFFF;
      }

      if (v12 <= v13 >> 8)
      {
        v14 = 0x40000000;
      }

      else
      {
        v14 = 1140912128;
      }

      v15 = v14 & v9;
      v16 = v11 & 0x880F0000 | v13;
    }

    else
    {
      v17 = v11 | 0x40000000;
      if ((v11 & 0xFFF) == 0)
      {
        v17 = *(v10 + 200);
      }

      if (v12 <= ((v17 >> 8) & 0xF))
      {
        goto LABEL_22;
      }

      v16 = v17 & 0xFFFF0FFF;
      v15 = v9 & 0x400F000;
    }

    v17 = v16 | v15;
  }

  else
  {
    v17 = v9 & 0xFFF0FFFF;
  }

LABEL_22:
  *(v10 + 200) = v17;
  v77 = v11 & 0xFFF0FFFF;
LABEL_23:
  v18 = a3 | 8;
  if ((a3 & 0x100000) != 0 && (*(a1 + 80) & 0x400000) != 0)
  {
    atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
  }

  if (((*(a1 + 80) << 8) & 0x3000000) != 0)
  {
    v18 = (*(a1 + 80) << 8) & 0x3000000 | a3 & 0xFCFFFFF7 | 8;
  }

  v76 = v18 | 0x10;
  v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (2)
  {
    while (2)
    {
      v20 = v18;
      v79 = v18 & 0x1000002;
      if ((v18 & 0x1000002) == 2)
      {
        _dispatch_last_resort_autorelease_pool_push(a2);
      }

      v21 = *(v19 + 160);
      v78 = (v19 + 160);
      v22 = *(a1 + 88);
      if ((v20 & 0x40000) == 0)
      {
        v23 = *(v19 + 232);
        v24 = v23 ? *(v23 + 24) : -4;
        v25 = *(v22 + 16) & 0xFFFFFFFFFFFFFFFCLL;
        if (v25 == -4)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25 == 0;
          v27 = *(v22 + 16) < 0;
        }

        if (!v26 && v24 != v25)
        {
          _dispatch_source_handle_wlh_change(a1);
        }
      }

      if (*(a1 + 48))
      {
        _dispatch_lane_serial_drain(a1, a2, v20 | 0x4000000, &v82);
        v30 = v29;
        v31 = v20 & 0xFBFFFFFF;
      }

      else
      {
        v30 = 0;
        v31 = v20;
      }

      v32 = &_dispatch_mgr_q;
      if (*(v22 + 29))
      {
        v32 = *(a1 + 24);
      }

      if ((*(a1 + 116) & 1) == 0)
      {
        if (v21 != v32)
        {
LABEL_50:
          v30 = v32;
          goto LABEL_93;
        }

        if ((v31 & 0x10000) != 0)
        {
          v33 = *(v19 + 200);
        }

        else
        {
          v33 = 0x2000000;
        }

        v34 = *(v19 + 232);
        if (v34)
        {
          v35 = *(v34 + 24);
        }

        else
        {
          v35 = -4;
        }

        _dispatch_source_install(a1, v35, v33);
      }

      if (*(a1 + 56) >> 55)
      {
LABEL_116:
        v30 = *(a1 + 24);
        goto LABEL_93;
      }

      if ((*(v22 + 29) & 2) != 0 && *(v22 + 104) && (*(a1 + 80) & 0x10800000) == 0)
      {
        if (v21 != v32)
        {
          goto LABEL_50;
        }

        _dispatch_timer_unote_configure(*(a1 + 88));
      }

      if (*(v22 + 56))
      {
        v36 = v30;
        v30 = *(a1 + 24);
        if (v21 != v30)
        {
          goto LABEL_93;
        }

        _dispatch_source_registration_callout(a1, v21, v31, a4);
        v30 = v36;
      }

      if ((*(v22 + 16) & 2) != 0)
      {
        _dispatch_source_refs_unregister(a1, 5);
      }

      v37 = *(a1 + 80);
      v38 = v37 & 0x10800000;
      if ((v37 & 0x10800000) != 0)
      {
        v39 = 0;
        if ((v37 & 0x80000000) == 0)
        {
          goto LABEL_68;
        }

        goto LABEL_77;
      }

      if (*(v22 + 72))
      {
        v75 = v30;
        v30 = *(a1 + 24);
        if (v21 != v30)
        {
          goto LABEL_93;
        }

        _dispatch_source_latch_and_call(a1, v21, v31, a4);
        v37 = *(a1 + 80);
        if ((v37 & 0x90000000) != 0)
        {
          v39 = 0;
          v30 = v75;
        }

        else
        {
          v30 = v75;
          if (*(v21 + 24))
          {
            v39 = 1;
          }

          else
          {
            v39 = *(v21 + 84) >= 0;
          }
        }

        *(a1 + 116) |= 2u;
        v38 = v37 & 0x10800000;
        if ((v37 & 0x80000000) == 0)
        {
LABEL_68:
          if (v38)
          {
            if ((*(v22 + 29) & 2) == 0 || (*(v22 + 16)) && v21 != v32)
            {
              goto LABEL_50;
            }

            if (v37 >> 30)
            {
              v40 = 1;
            }

            else
            {
              v40 = 3;
            }

            _dispatch_source_refs_unregister(a1, v40);
            v37 = *(a1 + 80);
            if ((v37 & 0x80000000) == 0)
            {
              if (!v30)
              {
                v30 = -1;
              }

              goto LABEL_93;
            }

            v38 = v37 & 0x10800000;
          }
        }

LABEL_77:
        if ((v37 & 0x80000000) != 0 && v38)
        {
          if (v21 != *(a1 + 24) && (*(v22 + 40) || *(v22 + 48) || *(v22 + 56)))
          {
            v39 = 0;
            v30 = *(a1 + 24);
          }

          else
          {
            _dispatch_source_cancel_callout(a1, v21, v31, a4);
            v39 = 0;
            v37 = *(a1 + 80);
          }
        }

        goto LABEL_92;
      }

      v39 = 0;
LABEL_92:
      if ((v37 & 0x10800000) == 0)
      {
        if ((*(v22 + 29) & 2) != 0)
        {
          if (!*(v22 + 104))
          {
            v49 = *(v22 + 16);
            if (!v49 || (v49 & 3) != 0 || *(v22 + 80) > 0x7FFFFFFFFFFFFFFEuLL)
            {
              goto LABEL_93;
            }
          }
        }

        else
        {
          v46 = *(v22 + 16);
          if (!v46 || (v46 & 3) != 0)
          {
            goto LABEL_93;
          }
        }

        v47 = v30;
        v30 = v32;
        if (v21 == v32)
        {
          if (*(a1 + 56) >> 55)
          {
            goto LABEL_116;
          }

          v30 = v47;
          if ((*(v22 + 29) & 1) == 0 || *(v22 + 16) < 0xFFFFFFFFFFFFFFFCLL)
          {
            _dispatch_unote_resume(v22);
            if (!v39)
            {
              if (*(v19 + 40))
              {
                v50 = *(v19 + 232);
                if (v50)
                {
                  v51 = *(v50 + 24);
                  if (v51 != -4 && v51 == (*(v22 + 16) & 0xFFFFFFFFFFFFFFFCLL))
                  {
                    _dispatch_event_loop_drain(1);
                  }
                }
              }
            }

            goto LABEL_93;
          }

          v48 = *(a1 + 116);
          if ((v48 & 2) != 0)
          {
            *(a1 + 116) = v48 & 0xFFFD;
            _dispatch_unote_resume(v22);
          }

          if (v39)
          {
            goto LABEL_116;
          }
        }
      }

LABEL_93:
      a2 = v80;
      if (v79 == 2)
      {
        v81 = *v78;
        *(v19 + 160) = a1;
        *(v19 + 168) = &v81;
        _dispatch_last_resort_autorelease_pool_pop(v80);
        a4 = v81;
        *v78 = v81;
      }

      if ((v30 + 1) > 1)
      {
        goto LABEL_143;
      }

      v41 = v82;
      v42 = *(a1 + 56);
      while (1)
      {
        v43 = v42;
        v44 = v42 - v41;
        v45 = v44 & 0xFFFFFFF700000001;
        if (!(v43 >> 55))
        {
          break;
        }

LABEL_101:
        v42 = v43;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v42, v45, memory_order_release, memory_order_relaxed);
        if (v42 == v43)
        {
          if ((~v43 & 0x1800000000) == 0)
          {
            v52 = HIDWORD(v43) & 7;
            v53 = *(v19 + 200);
            if ((HIWORD(v53) & 0xF) < v52)
            {
              *(v19 + 200) = v53 & 0xFFF0FFFF | (v52 << 16);
            }
          }

          v30 = 0;
          v82 = 0;
          goto LABEL_143;
        }
      }

      if ((v43 & 0x8000000000) == 0)
      {
        if (v30)
        {
          v45 = v44 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v45 = v44 & 0xFFFFFFF000000001;
        }

        goto LABEL_101;
      }

      atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
      v30 = v78->i64[0];
      v18 = v76;
      if (a3)
      {
        continue;
      }

      break;
    }

    v18 = v76;
    if ((*(*v78->i64[0] + 40) & 0x10000) != 0)
    {
      continue;
    }

    break;
  }

LABEL_143:
  if ((v20 & 0x40000) == 0)
  {
    *(v19 + 200) = *(v19 + 200) & 0xF0000 | v77;
  }

LABEL_145:
  if ((a3 & 1) == 0)
  {
LABEL_146:
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_introspection_queue_item_complete(a1);
  }

LABEL_149:
  if (v30)
  {
    _dispatch_queue_invoke_finish(a1, a2, v30, v82);
    if ((a3 & 0x100000) == 0)
    {
      return;
    }

LABEL_153:
    v54 = *(*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 216) + 48);
    if (v54)
    {
      if (*(v54 + 6))
      {
        _dispatch_event_loop_drain_timers(v54, 6u);
      }
    }
  }

  else
  {
    _os_object_release_internal_n(a1, &dword_0 + 2);
    if ((a3 & 0x100000) != 0)
    {
      goto LABEL_153;
    }
  }
}

void _dispatch_source_wakeup(uint64_t a1, uint64_t a2, uint64_t a3, int8x16_t a4)
{
  v4 = *(a1 + 88);
  v5 = *(a1 + 80);
  v6 = *(v4 + 29);
  v7 = &_dispatch_mgr_q;
  if (*(a1 + 116))
  {
    v8 = (v5 & 0x10800000) != 0 || (v6 & 2) == 0;
    if (v8 || !*(v4 + 104))
    {
      if (*(v4 + 56) | *(v4 + 16) & 2)
      {
        goto LABEL_14;
      }

      if ((v5 & 0x10800000) != 0)
      {
        if ((v5 & 0x80000000) != 0)
        {
          if (!*(v4 + 40) && !*(v4 + 48) && !*(v4 + 56))
          {
            goto LABEL_23;
          }
        }

        else if (*(v4 + 29) & 2) == 0 || (*(v4 + 16))
        {
          if ((a3 & 0x10) != 0 || !(v5 >> 30))
          {
            goto LABEL_7;
          }

          goto LABEL_23;
        }
      }

      else if (!*(v4 + 72))
      {
        if ((*(v4 + 29) & 2) != 0)
        {
          if (*(v4 + 104))
          {
            goto LABEL_7;
          }

          v13 = *(v4 + 16);
          if (v13)
          {
            if ((v13 & 3) == 0 && *(v4 + 80) < 0x7FFFFFFFFFFFFFFFuLL)
            {
              goto LABEL_7;
            }
          }
        }

        else
        {
          v11 = *(v4 + 16);
          if (v11)
          {
            v12 = (v11 & 3) == 0;
          }

          else
          {
            v12 = 0;
          }

          if (v12)
          {
            goto LABEL_7;
          }
        }

LABEL_23:
        if (!*(a1 + 48))
        {
          v7 = 0;
          goto LABEL_12;
        }
      }

LABEL_14:
      if (*(a1 + 24) != &_dispatch_mgr_q)
      {
        v7 = (&dword_0 + 1);
      }

      goto LABEL_12;
    }
  }

LABEL_7:
  v9 = v6 & 1;
  if (&_dispatch_mgr_q == (&dword_0 + 1) || v9 != 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  _dispatch_queue_wakeup(a1, a2, a3, v7, a4);
}

void dispatch_source_cancel(dispatch_source_t source)
{
  if (LODWORD(source[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&source[1], 2u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_source_cancel_cold_2(source);
}

void dispatch_source_cancel_and_wait(dispatch_object_t object, int8x16_t a2)
{
  isa = object[11].isa;
  if (*(isa + 6))
  {
    dispatch_source_cancel_and_wait_cold_1(object);
  }

  v5 = &object[10];
  v4 = object[10].isa;
  do
  {
    v6 = v4;
    v7 = v4 | 0x10000000;
    if ((v4 & 0x20000000) != 0)
    {
      break;
    }

    if ((v4 & 0x80000000) == 0 && (v4 >> 30 || (*(isa + 29) & 3) != 1))
    {
      v7 = v4 | 0x30000000;
    }

    atomic_compare_exchange_strong_explicit(v5, &v4, v7, memory_order_relaxed, memory_order_relaxed);
  }

  while (v4 != v6);
  if ((v6 & 0x800000) != 0)
  {
    dispatch_source_cancel_and_wait_cold_2(object);
  }

  if ((v6 & 0x80000000) != 0)
  {
    return;
  }

  if ((v7 & 0x20000000) != 0)
  {
    goto LABEL_12;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v15 = *(StatusReg + 24);
  v14 = (StatusReg + 24);
  v16 = v15 & 0xFFFFFFFC;
  v17 = object[7].isa;
  while (1)
  {
    v18 = v17;
    if ((v17 & 0xFFE00000FFFFFFFCLL) != 0)
    {
      break;
    }

    v19 = v16 | v17 & 0x7700000001 | 0x60000000000000;
LABEL_22:
    atomic_compare_exchange_strong(&object[7], &v17, v19);
    if (v17 == v18)
    {
      goto LABEL_26;
    }
  }

  if ((v6 & 0x10000000) == 0)
  {
    v19 = v17 | 0x8000000000;
    goto LABEL_22;
  }

LABEL_26:
  if (v18 >> 55)
  {
    dispatch_source_cancel_and_wait_cold_6(v18, object);
  }

  else
  {
    if ((v18 & 0x600000FFFFFFFCLL) == 0)
    {
      dispatch_source_cancel_and_wait_cold_4(&object[10], object, a2);
      goto LABEL_16;
    }

    dispatch_source_cancel_and_wait_cold_3(v14, v18, object);
LABEL_12:
    v9 = (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) >> 8) & 0x3FFF;
    v8 = v9 == 0;
    v10 = __clz(__rbit32(v9));
    if (v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10 + 1;
    }

    (*(object->isa + 10))(object, v11, 2);
    dispatch_activate(object);
LABEL_16:
    v12 = *v5;
    if ((v12 & 0x80000000) == 0)
    {
      dispatch_source_cancel_and_wait_cold_5(v12, &object[10]);
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

void _dispatch_source_cancel_callout(void *a1, NSObject *a2, int a3, int8x16_t a4)
{
  v7 = a1;
  v8 = a1[11];
  if ((a3 & 0x1000000) != 0)
  {
    a1 = objc_autoreleasePoolPush();
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  __swp(v4, (v8 + 48));
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  __swp(a1, (v8 + 40));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1);
  }

  __swp(a1, (v8 + 56));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1);
  }

  if (!v4)
  {
LABEL_11:
    if (!v9)
    {
      return;
    }

    goto LABEL_12;
  }

  if ((v7[10] & 0x10000000) == 0)
  {
    _dispatch_source_handler_dispose(v4);
    goto LABEL_11;
  }

  if ((*v4 & 0x40) != 0)
  {
    v4[5] = v7[4];
  }

  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_trace_source_callout_entry_internal(v7, 1, a2, v4, a4);
  }

  __dmb(9u);
  _dispatch_continuation_pop(v4, 0, a3 & 0xFEFFFFFF, a2, a4);
  if (v9)
  {
LABEL_12:

    objc_autoreleasePoolPop(v9);
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
      v12 = qword_452F8[v11];
    }

    v13 = v8 / v12;
    if (v13 <= 0xF4240)
    {
      v13 = 1000000;
    }

    if (v13 >= 0xDF8475800)
    {
      v13 = 60000000000;
    }

    v27 = v13;
    v14 = dispatch_source_create(&_dispatch_source_type_after, 0, 0, queue);
    isa = v14[11].isa;
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
    if (v18 >= 0x10FF)
    {
      v19 = 4351;
    }

    else
    {
      v19 = *(StatusReg + 32) & 0xFFFFFFLL;
    }

    v20 = *(StatusReg + 224);
    if (v20)
    {
      os_retain(*(StatusReg + 224));
    }

    v17[3] = v20;
    if (v20 == -1)
    {
      goto LABEL_28;
    }

    if (v20)
    {
      v21 = *(v20 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
LABEL_28:
      if (v18)
      {
LABEL_29:
        v22 = (HIDWORD(queue[10].isa) >> 30) & 1;
        if ((HIDWORD(queue[10].isa) & 0xFFF) == 0)
        {
          v22 = 1;
        }

        if (v22)
        {
          v23 = v19;
        }

        else
        {
          v23 = 0;
        }

LABEL_34:
        v17[1] = v23;
        v17[6] = v14;
        if (MEMORY[0xFFFFFC100])
        {
          _dispatch_trace_item_push_internal(queue, v17, v15);
        }

        _dispatch_introspection_queue_item_enqueue(queue, v17);
        *(isa + 5) = v17;
        if ((v7 & 0x8000000000000000) != 0)
        {
          v25 = v27;
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

            v24 = 2;
LABEL_44:
            *(isa + 30) |= 4 * v24;
            *(isa + 10) = v7;
            *(isa + 11) = v25 + v7;
            *(isa + 12) = -1;

            dispatch_activate(v14);
            return;
          }

          v7 &= 0x3FFFFFFFFFFFFFFFuLL;
          v24 = 1;
        }

        else
        {
          v24 = 0;
          v25 = v27;
        }

        if (v7 >> 62)
        {
          v7 = -1;
        }

        if (_dispatch_host_time_nano2mach)
        {
          v25 = _dispatch_host_time_nano2mach(v25);
        }

        else
        {
          v26 = (3 * v25 * 0x624DD2F1A9FBE77uLL) >> 64;
          v25 = (v26 + ((3 * v25 - v26) >> 1)) >> 6;
        }

        goto LABEL_44;
      }
    }

    v23 = 0;
    goto LABEL_34;
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
      v10 = qword_452F8[v9];
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
    v18 = *(block + 2);
    if (v18)
    {
      if (_dispatch_block_special_invoke == v18)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (!_dispatch_block_special_invoke)
      {
LABEL_59:
        *v15 = 272;
        v15[5] = v16;
        _dispatch_continuation_init_slow(v15, queue, 0);
LABEL_41:
        v15[6] = v13;
        if (MEMORY[0xFFFFFC100])
        {
          _dispatch_trace_item_push_internal(queue, v15, v17);
        }

        _dispatch_introspection_queue_item_enqueue(queue, v15);
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

            v25 = 2;
LABEL_51:
            *(isa + 30) |= 4 * v25;
            *(isa + 10) = v5;
            *(isa + 11) = v12 + v5;
            *(isa + 12) = -1;

            dispatch_activate(v13);
            return;
          }

          v5 &= 0x3FFFFFFFFFFFFFFFuLL;
          v25 = 1;
        }

        else
        {
          v25 = 0;
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
          v26 = (3 * v12 * 0x624DD2F1A9FBE77uLL) >> 64;
          v12 = (v26 + ((3 * v12 - v26) >> 1)) >> 6;
        }

        goto LABEL_51;
      }

      v18 = 0;
    }

    *v15 = 272;
    v15[4] = v18;
    v15[5] = v16;
    v19 = *(StatusReg + 32) & 0xFFFFFFLL;
    if (v19 >= 0x10FF)
    {
      v20 = 4351;
    }

    else
    {
      v20 = *(StatusReg + 32) & 0xFFFFFFLL;
    }

    v21 = *(StatusReg + 224);
    if (v21)
    {
      os_retain(*(StatusReg + 224));
    }

    v15[3] = v21;
    if (v21 == -1)
    {
      goto LABEL_34;
    }

    if (v21)
    {
      v22 = *(v21 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (v19)
      {
        goto LABEL_35;
      }
    }

    else
    {
LABEL_34:
      if (v19)
      {
LABEL_35:
        v23 = (HIDWORD(queue[10].isa) >> 30) & 1;
        if ((HIDWORD(queue[10].isa) & 0xFFF) == 0)
        {
          v23 = 1;
        }

        if (v23)
        {
          v24 = v20;
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_40;
      }
    }

    v24 = 0;
LABEL_40:
    v15[1] = v24;
    goto LABEL_41;
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
    os_release(v2);
    *(a1 + 24) = -1;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
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
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Changing target queue hierarchy after source was activated";
    __break(1u);
  }
}

void _dispatch_source_registration_callout(uint64_t a1, NSObject *a2, unsigned int a3, int8x16_t a4)
{
  __swp(v4, (*(a1 + 88) + 56));
  if ((*(a1 + 80) & 0x10800000) != 0)
  {
    if ((a3 & 0x1000000) != 0)
    {
      v7 = objc_autoreleasePoolPush();
      _dispatch_source_handler_dispose(v4);

      objc_autoreleasePoolPop(v7);
    }

    else
    {

      _dispatch_source_handler_dispose(v4);
    }
  }

  else
  {
    if ((*v4 & 0x40) != 0)
    {
      v4[5] = *(a1 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_source_callout_entry_internal(a1, 2, a2, v4, a4);
    }

    _dispatch_continuation_pop(v4, 0, a3, a2, a4);
  }
}

void _dispatch_source_latch_and_call(uint64_t a1, NSObject *a2, unsigned int a3, int8x16_t a4)
{
  v8 = *(a1 + 88);
  v9 = *(v8 + 40);
  __swp(v4, (v8 + 72));
  if ((*(v8 + 29) & 2) != 0 && (*(v8 + 30) & 0x40) != 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_pop_internal(a2, v9, a4);
    }

    _dispatch_introspection_queue_item_dequeue(a2, v9);
  }

  v10 = *(*v8 + 9);
  if (v10 == 3)
  {
    v11 = ~v4;
  }

  else if (v10 == 5)
  {
    if (v4)
    {
      v11 = v4 >> 1;
      v12 = *(a1 + 88);
      v13 = (v12 + 80);
      if (*(v12 + 80) <= 0x7FFFFFFFFFFFFFFEuLL)
      {
        v14 = *(v12 + 24) / 3u;
        if (v14 == 2)
        {
          v15 = clock_gettime_nsec_np(_CLOCK_REALTIME);
        }

        else
        {
          v15 = v14 == 1 ? mach_continuous_time() : mach_absolute_time();
        }

        if (v15 >= *v13)
        {
          v16 = *(v12 + 96);
          v17 = (v15 - *v13) / v16;
          if ((v17 + 1 + v11) >= 0)
          {
            v18 = v17 + 1;
          }

          else
          {
            v18 = v11 ^ 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v16 > 0x7FFFFFFFFFFFFFFELL)
          {
            *v13 = -1;
            *(v12 + 88) = -1;
          }

          else
          {
            v19 = v18 * v16;
            v20 = v19 + *v13;
            v21 = *(v12 + 88) + v19;
            *(v12 + 80) = v20;
            *(v12 + 88) = v21;
          }

          v11 += v18;
        }
      }
    }

    else
    {
      v11 = v4 >> 1;
    }
  }

  else
  {
    v11 = v4;
    if (!v4)
    {
      v11 = 0;
      if (*(v8 + 28) == 233)
      {
        return;
      }
    }
  }

  *(v8 + 64) = v11;
  if (v9)
  {
    if (v4)
    {
      if (MEMORY[0xFFFFFC100])
      {
        _dispatch_trace_source_callout_entry_internal(a1, 0, a2, v9, a4);
      }

      if (*(v8 + 28) == 242)
      {
        _dispatch_source_latch_and_call_cold_1(v9);
      }

      _dispatch_continuation_pop(v9, 0, a3, a2, a4);
      if (*(v8 + 28) == 242)
      {
        _dispatch_source_latch_and_call_cold_2();
      }

      if ((*(v8 + 29) & 2) != 0)
      {
        if ((v4 & 1) != 0 && *(v8 + 104))
        {
          _dispatch_timer_unote_configure(*(a1 + 88));
        }

        if ((*(v8 + 30) & 0x40) != 0)
        {
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_source_latch_and_call_cold_3();
          }

          _dispatch_introspection_queue_item_complete(v9);
          if ((a3 & 0x1000000) != 0)
          {
            v22 = objc_autoreleasePoolPush();
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          __swp(v22, (v8 + 40));
          if (v22)
          {
            _dispatch_source_handler_dispose(v22);
          }

          if (v23)
          {
            objc_autoreleasePoolPop(v23);
          }

          dispatch_release(a1);
        }
      }
    }

    else
    {
      _dispatch_source_latch_and_call_cold_4();
    }
  }

  else
  {
    _dispatch_source_latch_and_call_cold_5();
  }
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
  v14 = off_64E10(&_dispatch_mach_type_recv, 0, 0);
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
  v17 = off_64D50(&_dispatch_mach_type_send, 0, 9);
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
    a2 = &off_713C0;
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
    v4 = mach_port_request_notification(mach_task_self_, v3, 70, (*(a1 + 116) & 0x40) == 0, v3, 0x15u, &previous);
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
  if ((*(79 - *(a1 + 8)) & 0x10000000) != 0)
  {
    goto LABEL_31;
  }

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
    if (v14 != -1)
    {
      if (v14)
      {
        v18 = v14[8];
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    _dispatch_mach_handle_or_push_received_msg(v10, v16, a7, v17);
    goto LABEL_17;
  }

  if (_dispatch_mach_msg_sender_is_kernel(a3))
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = *(StatusReg + 176);
    if (v22)
    {
      *(StatusReg + 176) = v22[2];
    }

    else
    {
      v22 = _dispatch_continuation_alloc_from_heap();
    }

    v22->isa = (&stru_B8 + 76);
    v22[4].isa = _dispatch_mach_no_senders_invoke;
    v22[5].isa = v10;
    v22[3].isa = 0;
    if (MEMORY[0xFFFFFC100])
    {
      if (!_dispatch_mach_merge_msg_cold_3(v22))
      {
LABEL_30:
        (*(*v10 + 88))(v10, v22, 0);
        goto LABEL_31;
      }
    }

    else
    {
      v22[1].isa = 0;
    }

    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(v10, v22, v20);
    }

    _dispatch_introspection_queue_item_enqueue(v10, v22);
    goto LABEL_30;
  }

  _dispatch_mach_merge_msg_cold_2();
LABEL_31:
  mach_msg_destroy(a3);
  if ((a2 & 0x10000) != 0)
  {
    free(a3);
  }

LABEL_17:
  if ((*(a1 + 16) & 2) != 0 || (*(v10 + 60) & 0x1800000) == 0x800000)
  {
    return _dispatch_mach_merge_msg_cold_4(v10);
  }

  return _os_object_release_internal_n(v10, &dword_0 + 2);
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

void _dispatch_mach_handle_or_push_received_msg(uint64_t a1, NSObject *a2, unsigned int a3, int8x16_t a4)
{
  isa = a2[6].isa;
  v8 = 3;
  if (isa)
  {
    v8 = 4;
  }

  if ((isa & 0xFFFFC000) == 0xF8F80000)
  {
    v9 = isa & 0x3FFF;
  }

  else
  {
    v9 = v8;
  }

  if (v9 != 2 && (*(a1 + 116) & 0x10) != 0 && ((*(&dword_8 + _dispatch_mach_xpc_hooks))(*(*(a1 + 88) + 48)) & 1) != 0)
  {
    a2[2].isa = -1985229329;

    dispatch_release(a2);
  }

  else
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(a1, a2, a4);
    }

    _dispatch_introspection_queue_item_enqueue(a1, a2);
    v11 = (a3 >> 8) & 0x3FFF;
    if (v11)
    {
      v12 = __clz(__rbit32(v11)) + 1;
    }

    else
    {
      v12 = (*(a1 + 84) >> 8) & 0xF;
    }

    _dispatch_lane_push(a1, a2, v12, v10);
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

    v31 = 117;
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
    *(v20 + 32) = *(a1 + 48);
    *(v20 + 48) = -117964798;
    if (v19 != -1)
    {
      if (v19)
      {
        v22 = *(v19 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    if ((*(v10 + 116) & 0x10) != 0 && *(v20 + 32))
    {
      v23 = (*(&dword_10 + _dispatch_mach_xpc_hooks))();
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v10;
      }

      v25 = _dispatch_mach_msg_async_reply_wrap(v20, v10);
      if (MEMORY[0xFFFFFC100])
      {
        _dispatch_trace_item_push_internal(v24, v25, v26);
      }

      _dispatch_introspection_queue_item_enqueue(v24, v25);
      v27 = v24->isa + 88;
      v28 = __clz(__rbit32((*(v20 + 56) >> 8) & 0x3FFF));
      if (((*(v20 + 56) >> 8) & 0x3FFF) != 0)
      {
        v29 = v28 + 1;
      }

      else
      {
        v29 = 0;
      }

      (*(v24->isa + 11))(v24, v25, v29);
    }

    else
    {
      _dispatch_mach_handle_or_push_received_msg(v10, v20, a7, v21);
    }

    v31 = 101;
  }

  v32 = *(a1 + 16);

  _dispatch_mach_reply_unregister(v10, a1, v31, v30);
}

void _dispatch_mach_reply_unregister(NSObject *a1, uint64_t a2, char a3, int8x16_t a4)
{
  if (*a2)
  {
    v7 = *a2 == -2;
  }

  else
  {
    v7 = 0;
  }

  isa = a1[15].isa;
  if ((a3 & 0x20) != 0)
  {
    v10 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(isa + 10, &v10, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
    if (v10)
    {
      _dispatch_unfair_lock_lock_slow(isa + 40);
    }

    v12 = *(a2 + 64);
    v13 = *(a2 + 72);
    if (v12)
    {
      *(v12 + 72) = v13;
    }

    *v13 = v12;
    *(a2 + 72) = 0;
    if (*(isa + 7))
    {
      v9 = 0;
    }

    else
    {
      v9 = *(isa + 22) != 0;
    }

    v14 = *(StatusReg + 24) & 0xFFFFFFFC;
    v15 = atomic_exchange_explicit(isa + 10, 0, memory_order_release);
    if (v15 != v14)
    {
      _dispatch_unfair_lock_unlock_slow(isa + 40, v15);
    }
  }

  else
  {
    v9 = 0;
  }

  if (!*(a2 + 16) || (_dispatch_unote_unregister(a2, a3 & 0xF), (v16 & 1) != 0))
  {
    if ((a3 & 0x10) != 0)
    {
      if ((WORD2(a1[14].isa) & 0x10) != 0 && *(a2 + 48))
      {
        v19 = (*(&dword_10 + _dispatch_mach_xpc_hooks))();
        if (v19)
        {
          v18 = v19;
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

      v23 = *(a2 + 24);
      if (v23)
      {
        if (*(a2 + 16) || *(a2 + 30) != 1)
        {
          v25 = _dispatch_object_alloc(OS_dispatch_mach_msg, 112);
          v26 = v25;
          *(v25 + 16) = -1985229329;
          *(v25 + 24) = &off_71340;
          *(v25 + 72) = 0;
          *(v25 + 80) = 24;
          *(v25 + 100) = v23;
          v27 = *(a2 + 40);
          v28 = *(a2 + 56);
          *(v25 + 32) = *(a2 + 48);
          *(v25 + 56) = v27;
          *(v25 + 64) = v28;
          *(a2 + 56) = 0;
          if (v18)
          {
            v29 = -117964788;
          }

          else
          {
            v29 = -117964793;
          }

          *(v25 + 48) = v29;
          if (v7)
          {
LABEL_46:
            if (v26)
            {
              if (!v18)
              {
                _dispatch_mach_handle_or_push_received_msg(a1, v26, 0, a4);
                if ((a3 & 0x40) == 0)
                {
                  return;
                }

                goto LABEL_59;
              }

              v31 = _dispatch_mach_msg_async_reply_wrap(v26, a1);
              if (MEMORY[0xFFFFFC100])
              {
                _dispatch_trace_item_push_internal(v18, v31, v32);
              }

              _dispatch_introspection_queue_item_enqueue(v18, v31);
              v33 = v18->isa + 88;
              v34 = __clz(__rbit32((*(v26 + 56) >> 8) & 0x3FFF));
              if (((*(v26 + 56) >> 8) & 0x3FFF) != 0)
              {
                v35 = v34 + 1;
              }

              else
              {
                v35 = 0;
              }

              (*(v18->isa + 11))(v18, v31, v35);
            }

            if ((a3 & 0x40) == 0)
            {
              return;
            }

LABEL_59:
            if (v9)
            {
              v36 = *(a1->isa + 10);

              v36(a1, 0, 3);
            }

            else
            {

              _os_object_release_internal_n(a1, &dword_0 + 2);
            }

            return;
          }

LABEL_45:
          _dispatch_unote_dispose(a2, 1);
          goto LABEL_46;
        }

        v24 = *(a2 + 56);
        if (v24)
        {
          os_release(v24);
          *(a2 + 56) = 0;
        }

        _dispatch_destruct_reply_port();
      }

      else
      {
        v30 = *(a2 + 56);
        if (v30)
        {
          os_release(v30);
LABEL_44:
          v26 = 0;
          *(a2 + 56) = 0;
          if (v7)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }
      }
    }

    else
    {
      v17 = *(a2 + 56);
      if (v17)
      {
        os_release(v17);
        v18 = 0;
        goto LABEL_44;
      }

      v18 = 0;
    }

    v26 = 0;
    if (v7)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (a3 < 0)
  {
    v22 = *(isa + 7);
    v21 = (isa + 56);
    v20 = v22;
    *(a2 + 64) = v22;
    if (v22)
    {
      *(v20 + 72) = a2 + 64;
    }

    *v21 = a2;
    *(a2 + 72) = v21;
  }
}

void _dispatch_mach_send_barrier_drain_invoke(void *a1, uint64_t a2, const char *a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = StatusReg[10].i64[0];
  v7 = StatusReg[10].i64[1];
  v8 = *v7;
  StatusReg[10] = *v7;
  v9 = a1[3];
  a1[3] = -1;
  if (v9 != -1 && v9 != -1)
  {
    if (v9)
    {
      v11 = *(v9 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  v12 = a1[1];
  if (v12 == -1)
  {
    v15 = 0;
  }

  else
  {
    v13 = StatusReg[12].i64[1];
    if (((v13 >> 8) & 0xF) != 0)
    {
      v14 = 256 << ((BYTE1(v13) & 0xFu) - 1);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 & 0xFFFFFFFFFFFFFF00 | StatusReg[12].i64[1];
    if ((v12 & 0xFFFFFF) != 0)
    {
      if ((v12 & 0xFFFFFFuLL) >= (v14 & 0xFFFFFF00) && ((v13 & 0x44000000) != 0 || (a1[1] & 0x10000000) != 0))
      {
        v15 = v12 & 0xFFFFFF;
      }
    }

    else if (v13 >> 12)
    {
      v15 = (256 << ((v13 >> 12) - 1)) | 0xFF;
    }
  }

  v17 = v15 & 0xFFFFFFFF02FFFFFFLL;
  v18 = StatusReg[2].i64[0];
  if ((v18 & 0x1000000) != 0)
  {
    if (v17)
    {
LABEL_42:
      _dispatch_set_priority_and_voucher_slow(v17, v9, 6);
      goto LABEL_28;
    }

    v17 = v18 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v17 == (v18 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_24;
  }

  if (v17)
  {
    goto LABEL_42;
  }

LABEL_24:
  if (v9 == -1)
  {
    goto LABEL_28;
  }

  if (StatusReg[14].i64[0] != v9)
  {
    v17 = 0;
    goto LABEL_42;
  }

  if (v9)
  {
    os_release(v9);
  }

LABEL_28:
  v19 = StatusReg[11].i64[0];
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
    _dispatch_mach_send_invoke(v6, a3, 6, v8);
    _dispatch_continuation_free_to_cache_limit(a1);
  }

  else
  {
    a1[2] = v19;
    *(a1 + 2) = v20;
    StatusReg[11].i64[0] = a1;
    _dispatch_mach_send_invoke(v6, a3, 6, v8);
  }

  StatusReg[10].i64[0] = v6;
  StatusReg[10].i64[1] = v7;
}

void _dispatch_mach_send_invoke(uint64_t a1, const char *a2, int a3, int8x16_t a4)
{
  v7 = *(a1 + 120);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg + 24) & 0xFFFFFFFCLL;
  v10 = 0xFFFFFFFFLL;
  if ((a3 & 4) == 0)
  {
    v10 = 0x10FFFFFFFFLL;
  }

  v11 = (a3 & 2) << 35;
  if ((a3 & 2) != 0)
  {
    v12 = 0x10FFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  v13 = *(StatusReg + 200);
  v14 = (v13 >> 8) & 0xF;
  v15 = v13 >> 12;
  v16 = HIWORD(v13) & 0xF;
  if (v14 <= v15)
  {
    v14 = v15;
  }

  if (v14 > v16)
  {
    v16 = v14;
  }

LABEL_10:
  for (i = *(v7 + 64); ; i = v19)
  {
    if ((i & v12) != v11)
    {
      if ((a3 & 1) == 0)
      {
        return;
      }

      v19 = i;
      atomic_compare_exchange_strong_explicit((v7 + 64), &v19, i | 0x2000000000, memory_order_acquire, memory_order_acquire);
      if (v19 == i)
      {
        return;
      }

      continue;
    }

    v18 = HIDWORD(i) & 7;
    if (v16 < v18)
    {
      v20 = *(StatusReg + 24);
      _pthread_workqueue_override_start_direct();
      v21 = *(StatusReg + 200);
      v16 = v18;
      if ((HIWORD(v21) & 0xF) < v18)
      {
        *(StatusReg + 200) = v21 & 0xFFF0FFFF | (v18 << 16);
        v16 = v18;
      }

      goto LABEL_10;
    }

    v19 = i;
    atomic_compare_exchange_strong_explicit((v7 + 64), &v19, i & 0xFFFFFFC7FFFFFFFFLL | v9, memory_order_acquire, memory_order_acquire);
    if (v19 == i)
    {
      break;
    }
  }

  _dispatch_mach_send_drain(a1, a2, a3, a4);
}

void *_dispatch_mach_notification_merge_evt(uint64_t a1, int8x16_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 8);
  if ((*(a1 + 32) & a4) != 0)
  {
    _dispatch_mach_send_invoke(~v4, &loc_40000, 1, a2);
  }

  return _os_object_release_internal_n(~v4, &dword_0 + 2);
}

uint64_t _dispatch_mach_send_msg(uint64_t a1, dispatch_object_t object, NSObject *a3, int a4)
{
  v9 = *(a1 + 120);
  if (object[2].isa != -1985229329)
  {
    isa = object[2].isa;
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Message already enqueued";
    qword_6D1F0 = isa;
    __break(1u);
    goto LABEL_40;
  }

  v5 = a3;
  v4 = a1;
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
  if (v14)
  {
    os_retain(*(StatusReg + 224));
  }

  object[8].isa = v14;
  LODWORD(object[6].isa) = a4 | (((*(StatusReg + 32) & 0x300) != 0) << 18);
  dispatch_retain(object);
  v16 = __clz(__rbit32((LODWORD(object[7].isa) >> 8) & 0x3FFF));
  if (((LODWORD(object[7].isa) >> 8) & 0x3FFF) != 0)
  {
    v7 = v16 + 1;
  }

  else
  {
    v7 = 0;
  }

  v17 = object + 11;
  if (LODWORD(object[9].isa))
  {
    v17 = v17->isa;
  }

  v18 = v17->isa;
  if ((v17->isa & 0x1F00) != 0x1500 || (HIDWORD(v17[1].isa) - 1) >= 0xFFFFFFFE)
  {
    isa_high = 0;
  }

  else
  {
    isa_high = HIDWORD(v17[1].isa);
  }

  HIDWORD(object[6].isa) = isa_high;
  v6 = 8 * (a4 & 1);
  if ((v18 & 0x1F) != 0x12 || isa_high || *(v9 + 88) || (v4[20] & 0x10000000) != 0)
  {
    v23 = object[8].isa;
    if (v23 == -1)
    {
      goto LABEL_34;
    }

    if (v23)
    {
      v24 = *(v23 + 8);
    }

    if (!MEMORY[0xFFFFFC100])
    {
LABEL_34:
      if (v5)
      {
        v25 = v5;
      }

      else
      {
        v25 = object;
      }

      _dispatch_mach_send_push_and_trydrain(v4, v25, v7, v6, v15);
      if (v26)
      {
        goto LABEL_27;
      }

      return 0;
    }

LABEL_40:
    kdebug_trace();
    goto LABEL_34;
  }

  if ((_dispatch_mach_msg_send(v4, object, 0, 0, v6) & 2) == 0)
  {
    return 0;
  }

LABEL_27:
  v21 = object[8].isa;
  if (v21)
  {
    os_release(v21);
  }

  object[8].isa = 0;
  object[2].isa = -1985229329;
  dispatch_release(object);
  return 1;
}

uint64_t dispatch_mach_send_with_result(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  if (a4)
  {
    vars0 = v6;
    vars8 = v7;
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_6D1F0 = a4;
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
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = -2;
  *(&v60 + 1) = object[4];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  DWORD2(v62) = *(StatusReg + 24);
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
    BYTE6(v59) = 1;
  }

  v50 = xmmword_45330;
  v51 = 0;
  v52 = -1;
  v53 = 0;
  v54 = 0;
  v55 = object;
  v56 = &v57;
  *a4 = _dispatch_mach_send_msg(a1, object, &v50, a3 | 4u);
  if (BYTE6(v59) == 1)
  {
    if (isa_high == *(StatusReg + 64))
    {
      *(StatusReg + 64) = 0;
    }

    v14 = *(*(a1 + 120) + 92);
  }

  else
  {
    v14 = 0;
  }

  if (isa_high + 1 <= 1)
  {
    _dispatch_mach_send_and_wait_for_reply_cold_6(isa_high);
  }

  v49 = &v46;
  v47 = *(&v60 + 1);
  v15 = (vm_page_mask + 0x4000) & ~vm_page_mask;
  off_54698();
  v17 = (&v46 - v16);
  bzero(&v46 - v16, v18);
  LODWORD(v19) = 0;
  v20 = 0;
  if (v14 - 1 >= 0xFFFFFFFE)
  {
    v21 = 117440526;
  }

  else
  {
    v21 = 117456910;
  }

  if (v14 - 1 >= 0xFFFFFFFE)
  {
    v22 = 0;
  }

  else
  {
    v22 = v14;
  }

  v48 = a1;
  v23 = v21 & 0xFFFFFDFF | (((*(a1 + 116) >> 7) & 1) << 9);
  while (1)
  {
    v24 = mach_msg(v17, v23, 0, v15, isa_high, 0, v22);
    v25 = v24;
    if (v24 != 268451844)
    {
      break;
    }

    msgh_size = v17->msgh_size;
    if (msgh_size >= 0xFFFFFFBC)
    {
      _dispatch_mach_send_and_wait_for_reply_cold_4(msgh_size);
    }

    if ((v23 & 4) == 0)
    {
      _dispatch_log("BUG in libdispatch client: dispatch_mach_send_and_wait_for_reply: dropped message too large to fit in memory: id = 0x%x, size = %u", v17->msgh_id, msgh_size);
      goto LABEL_42;
    }

    v19 = msgh_size + 68;
    v27 = malloc_type_malloc(msgh_size + 68, 0xB147F4AEuLL);
    v20 = v27;
    v28 = v19;
    if (!v27)
    {
      _dispatch_mach_send_and_wait_for_reply_cold_2();
      v27 = v17;
      v28 = v15;
    }

    v23 = v23 & 0xFFFFFEFB | 0x100;
    v15 = v28;
    v17 = v27;
  }

  if ((v24 - 268451842) <= 7 && ((1 << (v24 - 2)) & 0x91) != 0)
  {
    if (BYTE6(v59) == 1)
    {
      _dispatch_destruct_reply_port();
    }

    goto LABEL_34;
  }

  if (v24)
  {
    _dispatch_mach_send_and_wait_for_reply_cold_5(v24);
  }

  LODWORD(v15) = v17->msgh_size + 68;
  if (v20 && v15 < v19)
  {
    v30 = malloc_type_realloc(v20, v19, 0xB8079499uLL);
    if (v30)
    {
      v20 = v30;
      v31 = v30;
    }

    else
    {
      v31 = v17;
    }
  }

  else
  {
LABEL_42:
    v31 = v17;
  }

  v32 = 0;
  msgh_local_port = v31->msgh_local_port;
  v34 = (*(v48 + 120) + 40);
  atomic_compare_exchange_strong_explicit(v34, &v32, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v32)
  {
    _dispatch_unfair_lock_lock_slow(v34);
  }

  v35 = v62;
  if (v62)
  {
    v36 = *(&v61 + 1);
    if (*(&v61 + 1))
    {
      *(*(&v61 + 1) + 72) = v62;
    }

    *v35 = v36;
    *&v62 = 0;
  }

  v37 = *(StatusReg + 24) & 0xFFFFFFFC;
  v38 = atomic_exchange_explicit(v34, 0, memory_order_release);
  if (v38 != v37)
  {
    _dispatch_unfair_lock_unlock_slow(v34, v38);
  }

  if (BYTE6(v59) == 1)
  {
    if (v59 != msgh_local_port)
    {
      if ((msgh_local_port - 1) < 0xFFFFFFFE || v35)
      {
        _dispatch_mach_send_and_wait_for_reply_cold_3(msgh_local_port);
      }

      goto LABEL_61;
    }

    if (!v35 || *(StatusReg + 64))
    {
LABEL_61:
      _dispatch_destruct_reply_port();
      goto LABEL_62;
    }

    *(StatusReg + 64) = msgh_local_port;
  }

  else if ((msgh_local_port - 1) <= 0xFFFFFFFD && v35)
  {
    v39 = _dispatch_object_alloc(OS_dispatch_mach_msg, 112);
    *(v39 + 16) = -1985229329;
    *(v39 + 24) = &off_71340;
    *(v39 + 72) = 0;
    *(v39 + 80) = 24;
    *(v39 + 100) = msgh_local_port;
    v41 = *(&v60 + 1);
    v40 = v61;
    *&v61 = 0;
    *(v39 + 56) = v60;
    *(v39 + 64) = v40;
    *(v39 + 32) = v41;
    *(v39 + 48) = -117964791;
    _dispatch_mach_handle_or_push_received_msg(v48, v39, 0, v42);
  }

LABEL_62:
  v31->msgh_local_port = 0;
  if (*(v48 + 80) & 0x10000000 | v25)
  {
    if (!v25)
    {
      mach_msg_destroy(v31);
    }

LABEL_34:
    free(v20);
    return 0;
  }

  v43 = dispatch_mach_msg_create(v31, v15, v20 != 0, 0);
  v29 = v43;
  if (!v20 || v31 != v17)
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

  *(v29 + 32) = v47;
  return v29;
}

uint64_t dispatch_mach_send_with_result_and_wait_for_reply(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  if (a4)
  {
    vars0 = v6;
    vars8 = v7;
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_6D1F0 = a4;
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
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_6D1F0 = a4;
    __break(1u);
    goto LABEL_16;
  }

  if ((*(result + 116) & 0x10) == 0)
  {
LABEL_16:
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_send_with_result_and_wait_for_reply is XPC only";
    __break(1u);
LABEL_17:
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Reply port needed for async send with reply";
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
  *v11 = xmmword_45340;

  return _dispatch_mach_send_push(a1, v11, 0, xmmword_45340);
}

BOOL _dispatch_mach_reconnect_invoke(uint64_t a1, uint64_t a2, int8x16_t a3)
{
  v5 = *(a1 + 120);
  if (*(v5 + 16))
  {
    _dispatch_unote_unregister(*(a1 + 120), 5);
    *(*(a1 + 120) + 24) = 0;
  }

  v6 = *(v5 + 92);
  if ((v6 + 1) >= 2)
  {
    v7 = _dispatch_object_alloc(OS_dispatch_mach_msg, 112);
    *(v7 + 16) = -1985229329;
    *(v7 + 24) = &off_71340;
    *(v7 + 72) = 0;
    *(v7 + 80) = 24;
    *(v7 + 96) = v6;
    *(v7 + 48) = -117964793;
    _dispatch_mach_handle_or_push_received_msg(a1, v7, 0, v8);
    *(v5 + 92) = 0;
  }

  v9 = *(v5 + 48);
  if (v9)
  {
    _dispatch_mach_msg_not_sent(a1, v9, 0);
    *(v5 + 48) = 0;
  }

  v10 = 0;
  *(a1 + 118) &= ~1u;
  v27 = 0;
  if ((*(a1 + 80) & 0x40000000) != 0)
  {
    v11 = -112;
  }

  else
  {
    v11 = -110;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v5 + 40), &v10, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    _dispatch_unfair_lock_lock_slow(v5 + 40);
  }

  v13 = v27;
  v27 = *(v5 + 56);
  v14 = v27;
  *(v5 + 56) = v13;
  if (v14)
  {
    *(v14 + 72) = &v27;
    do
    {
      v15 = *(v14 + 64);
      *(v14 + 72) = 0;
      _dispatch_mach_reply_unregister(a1, v14, v11, a3);
      v14 = v15;
    }

    while (v15);
    v13 = *(v5 + 56);
  }

  v16 = *(StatusReg + 24) & 0xFFFFFFFC;
  v17 = atomic_exchange_explicit((v5 + 40), 0, memory_order_release);
  if (v17 != v16)
  {
    _dispatch_unfair_lock_unlock_slow(v5 + 40, v17);
    if (v13)
    {
      return v13 == 0;
    }

LABEL_18:
    v18 = *(StatusReg + 176);
    if (v18)
    {
      v19 = *(v18 + 8) + 1;
    }

    else
    {
      v19 = 1;
    }

    v20 = *(a2 + 56);
    v21 = *(a2 + 48);
    if (v19 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a2);
    }

    else
    {
      *(a2 + 16) = v18;
      *(a2 + 8) = v19;
      *(StatusReg + 176) = a2;
    }

    v22 = *(a1 + 118);
    if (v21 == -1)
    {
      v21 = 0;
      v23 = v22 | 2;
      *(a1 + 118) = v23;
      if ((v23 & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    else if ((v22 & 2) == 0)
    {
LABEL_25:
      *(v5 + 92) = v20;
      *(v5 + 48) = v21;
LABEL_31:
      atomic_fetch_add_explicit((v5 + 88), 0xFFFFFFFF, memory_order_relaxed);
      return v13 == 0;
    }

    if ((v20 - 1) <= 0xFFFFFFFD)
    {
      v24 = _dispatch_object_alloc(OS_dispatch_mach_msg, 112);
      *(v24 + 16) = -1985229329;
      *(v24 + 24) = &off_71340;
      *(v24 + 72) = 0;
      *(v24 + 80) = 24;
      *(v24 + 96) = v20;
      *(v24 + 48) = -117964793;
      _dispatch_mach_handle_or_push_received_msg(a1, v24, 0, v25);
    }

    if (v21)
    {
      _dispatch_mach_msg_not_sent(a1, v21, 0);
    }

    goto LABEL_31;
  }

  if (!v13)
  {
    goto LABEL_18;
  }

  return v13 == 0;
}

atomic_uint *_dispatch_mach_send_push(atomic_uint *result, void **a2, uint64_t a3, int8x16_t a4)
{
  v4 = result;
  v5 = *(result + 15);
  v6 = 0xA000000000;
  if (*a2 >= 0x1000 && *a2 == &unk_64678)
  {
    v6 = 0xB000000000;
  }

  a2[2] = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = v5 + 72;
  v8 = atomic_exchange_explicit((v5 + 72), a2, memory_order_release);
  if (v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = 4;
  }

  atomic_fetch_add_explicit(result + 2, v9, memory_order_relaxed);
  v10 = a3 << 32;
  if (v8)
  {
    *(v8 + 16) = a2;
    *(StatusReg + 976) = 0;
    v11 = *(v5 + 64);
    while (1)
    {
      v12 = v11;
      v13 = v10 | v11 & 0xFFFFFFF0FFFFFFFFLL | 0x2800000000;
      if ((v11 & 0x700000000) >= v10)
      {
        v13 = v11;
      }

      if (v11 == v13)
      {
        break;
      }

      v6 = 0;
      atomic_compare_exchange_strong_explicit((v5 + 64), &v11, v13, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v12)
      {
        goto LABEL_13;
      }
    }

    v6 = 0;
    v13 = v11;
  }

  else
  {
    *(v5 + 80) = a2;
    *(StatusReg + 976) = 0;
    v15 = *(v5 + 64);
    do
    {
      v12 = v15;
      if ((v15 & 0x700000000) >= v10)
      {
        v16 = v15;
      }

      else
      {
        v16 = v10 | v15 & 0xFFFFFF50FFFFFFFFLL | 0x800000000;
      }

      v13 = v16 | v6;
      atomic_compare_exchange_strong_explicit((v5 + 64), &v15, v13, memory_order_release, memory_order_relaxed);
    }

    while (v15 != v12);
    if ((v12 & 0x8000000000) != 0 && result[2] != 0x7FFFFFFF && atomic_fetch_add_explicit(result + 2, 0xFFFFFFFE, memory_order_release) <= 2)
    {
      qword_6D1C0 = "API MISUSE: Over-release of an object";
      __break(1u);
      return result;
    }
  }

LABEL_13:
  if (v12 >= 4)
  {
    if ((v12 & 0x700000000) < (v13 & 0x700000000))
    {
      _pthread_workqueue_override_start_direct_check_owner();
    }
  }

  else if ((v6 & 0x1000000000) != 0)
  {
    _dispatch_mach_push_send_barrier_drain(result, BYTE4(v13) & 7, a4);
  }

  else
  {
    if (!v8 || *(v5 + 88) || (result[20] & 0x10000000) != 0)
    {
      v14 = *(*result + 80);
      goto LABEL_27;
    }

    if ((v12 & 0x1000000000) != 0)
    {
      v14 = *(*result + 80);
LABEL_27:

      return v14();
    }
  }

  return _os_object_release_internal_n(v4, &dword_0 + 2);
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
  if (v11 >= 0x10FF)
  {
    v12 = 4351;
  }

  else
  {
    v12 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  v13 = *(StatusReg + 224);
  if (v13)
  {
    result = os_retain(*(StatusReg + 224));
  }

  v8[3] = v13;
  if (v13 == -1)
  {
    goto LABEL_12;
  }

  if (v13)
  {
    v14 = *(v13 + 32);
  }

  if (MEMORY[0xFFFFFC100])
  {
    result = kdebug_trace();
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_12:
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  v15 = *(a1 + 84);
  if ((v15 & 0x40000000) != 0 || (v15 & 0xFFF) == 0)
  {
    v16 = __clz(__rbit32(v12 >> 8)) + 1;
    goto LABEL_17;
  }

LABEL_15:
  v16 = 0;
  v12 = 0;
LABEL_17:
  v8[1] = v12;
  *(v7 + 32) = v16;
  *v8 = &unk_64828;
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

void *_dispatch_mach_ipc_handoff_async(uint64_t a1, int8x16_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(a1 + 32);
  if ((*(v3 + 49) & 2) == 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(*(a1 + 24), v3, a2);
    }

    _dispatch_introspection_queue_item_enqueue(v4, v3);
  }

  (*(v4->isa + 11))(v4, v3, v7);
  if (v6)
  {
    _dispatch_sync_ipc_handoff_begin(v6, v5, v3 + 64);
    atomic_compare_exchange_strong_explicit((v3 + 64), &v9, ~v6, memory_order_relaxed, memory_order_relaxed);
  }

  if (!atomic_fetch_add_explicit((v3 + 72), 0xFFFFFFFF, memory_order_relaxed))
  {
    free(v3);
  }

  v10 = *(a1 + 24);

  return _os_object_release_internal(v10, v8);
}

void _dispatch_mach_msg_invoke(_DWORD *a1, uint64_t a2, int a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = StatusReg[10].i64[0];
  v7 = StatusReg[10].i64[1];
  v8 = *v7;
  StatusReg[10] = *v7;
  v9 = a1[12];
  v10 = v9 & 0xFFFFC000;
  v11 = 3;
  if (v9)
  {
    v11 = 4;
  }

  if (v10 == -117964800)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (v10 == -117964800)
  {
    v13 = v9 & 0x3FFF;
  }

  else
  {
    v13 = v11;
  }

  v30 = 0;
  v31 = 0;
  v29[1] = "mach_msg";
  v29[2] = a1;
  v29[0] = StatusReg[11].i64[1];
  StatusReg[11].i64[1] = v29;
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_trace_item_pop_internal(v6, a1, v8);
  }

  _dispatch_introspection_queue_item_dequeue(v6, a1);
  v14 = *(v6 + 88);
  *(a1 + 2) = -1985229329;
  v15 = *(a1 + 8);
  if (v15 != -1)
  {
    v16 = *(a1 + 8);
    if (v15)
    {
      v17 = *(v15 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      v15 = *(a1 + 8);
    }
  }

  v18 = *(a1 + 7);
  if (v18 == -1)
  {
    v21 = 0;
  }

  else
  {
    v19 = StatusReg[12].i64[1];
    if (((v19 >> 8) & 0xF) != 0)
    {
      v20 = 256 << ((BYTE1(v19) & 0xFu) - 1);
    }

    else
    {
      v20 = 0;
    }

    v21 = v18 & 0xFFFFFF;
    if (v21)
    {
      if (v21 < (v20 & 0xFFFFFF00))
      {
        v21 = v20 & 0xFFFFFFFFFFFFFF00 | StatusReg[12].i64[1];
      }
    }

    else if (v19 >> 12)
    {
      v21 = (256 << ((v19 >> 12) - 1)) | 0xFF;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFFFFFFFF00 | StatusReg[12].i64[1];
    }
  }

  v22 = v21 & 0xFFFFFFFF02FFFFFFLL;
  v23 = StatusReg[2].i64[0];
  if ((v23 & 0x1000000) != 0)
  {
    if (v22)
    {
LABEL_62:
      _dispatch_set_priority_and_voucher_slow(v22, v15, 7);
      goto LABEL_31;
    }

    v22 = v23 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v22 == (v23 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_27;
  }

  if (v22)
  {
    goto LABEL_62;
  }

LABEL_27:
  if (v15 == -1)
  {
    goto LABEL_31;
  }

  if (StatusReg[14].i64[0] != v15)
  {
    v22 = 0;
    goto LABEL_62;
  }

  if (v15)
  {
    os_release(v15);
  }

LABEL_31:
  v24 = 0;
  *(a1 + 8) = 0;
  if ((a3 & 0x1000000) != 0)
  {
    v24 = objc_autoreleasePoolPush();
  }

  if ((a3 & 4) != 0)
  {
    _dispatch_client_callout3(*(v14 + 48), v13, a1, *(&dword_18 + _dispatch_mach_xpc_hooks));
    if (v24)
    {
LABEL_44:
      objc_autoreleasePoolPop(v24);
    }
  }

  else
  {
    if ((*(v6 + 116) & 4) == 0)
    {
      _dispatch_mach_connect_invoke(v6);
    }

    if (v13 == 2 && (*(v6 + 80) & 0x10000000) != 0)
    {
      v28 = (a1 + 22);
      if (a1[18])
      {
        v28 = *&v28->msgh_bits;
      }

      mach_msg_destroy(v28);
      if (v24)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (*(v14 + 40))
      {
        v25 = *(v14 + 40);
      }

      else
      {
        v25 = 0;
      }

      _dispatch_client_callout4(*(v14 + 48), v13, a1, v12, v25);
      if (v24)
      {
        goto LABEL_44;
      }
    }
  }

  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_introspection_queue_item_complete(a1);
  dispatch_release(a1);
  v27 = v30;
  StatusReg[11].i64[1] = v29[0];
  if (v27)
  {
    _dispatch_mach_ipc_handoff_async(v29, v26);
  }

  StatusReg[10].i64[0] = v6;
  StatusReg[10].i64[1] = v7;
}

void _dispatch_mach_barrier_invoke(NSObject *a1, int8x16_t a2, uint64_t a3, int a4)
{
  isa = a1[6].isa;
  v6 = a1[7].isa;
  v8 = *(a1->isa + 5);
  if (v8 == 1024)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v33 = *(StatusReg + 168);
    v34 = *(StatusReg + 160);
    a2 = *v33;
    *(StatusReg + 160) = *v33;
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v10 = *(v6 + 88);
  if ((*(v6 + 116) & 4) == 0)
  {
    if ((a4 & 0x1000000) != 0)
    {
      v32 = objc_autoreleasePoolPush();
      _dispatch_mach_connect_invoke(v6);
      objc_autoreleasePoolPop(v32);
    }

    else
    {
      _dispatch_mach_connect_invoke(v6);
    }
  }

  v11 = a1[3].isa;
  a1[3].isa = -1;
  if (v11 != -1 && (v11 + 1) != 0)
  {
    if (v11)
    {
      v13 = *(v11 + 8);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  v14 = a1[1].isa;
  if (v14 == -1)
  {
    v17 = 0;
  }

  else
  {
    v15 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 200);
    if (((v15 >> 8) & 0xF) != 0)
    {
      v16 = 256 << ((BYTE1(v15) & 0xFu) - 1);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 & 0xFFFFFFFFFFFFFF00 | v15;
    v18 = v14 & 0xFFFFFF;
    if ((v14 & 0xFFFFFF) != 0)
    {
      if (v18 >= (v16 & 0xFFFFFF00))
      {
        v19 = v14 & 0x10000000;
        if ((v15 & 0x44000000) != 0 || v19 != 0)
        {
          v17 = v18;
        }
      }
    }

    else if (v15 >> 12)
    {
      v17 = (256 << ((v15 >> 12) - 1)) | 0xFF;
    }
  }

  v21 = v17 & 0xFFFFFFFF02FFFFFFLL;
  v22 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = v22[4];
  if ((v23 & 0x1000000) != 0)
  {
    if (v21)
    {
      goto LABEL_72;
    }

    v21 = v23 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v21 == (v23 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_28;
  }

  if (v21)
  {
LABEL_72:
    _dispatch_set_priority_and_voucher_slow(v21, v11, 6);
    if ((isa & 0x200) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

LABEL_28:
  if (v11 == -1)
  {
    goto LABEL_32;
  }

  if (v22[28] != v11)
  {
    v21 = 0;
    goto LABEL_72;
  }

  if (v11)
  {
    os_release(v11);
  }

LABEL_32:
  if ((isa & 0x200) != 0)
  {
    goto LABEL_36;
  }

LABEL_33:
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_trace_item_pop_internal(v6, a1, a2);
  }

  _dispatch_introspection_queue_item_dequeue(v6, a1);
LABEL_36:
  v24 = v22[22];
  if (v24)
  {
    v25 = *(v24 + 2) + 1;
  }

  else
  {
    v25 = 1;
  }

  v26 = a1;
  if (v25 <= _dispatch_continuation_cache_limit)
  {
    v26 = 0;
    a1[2].isa = v24;
    LODWORD(a1[1].isa) = v25;
    v22[22] = a1;
  }

  if ((a4 & 0x1000000) != 0)
  {
    v27 = objc_autoreleasePoolPush();
  }

  else
  {
    v27 = 0;
  }

  v29 = a1[4].isa;
  v28 = a1[5].isa;
  v30 = v29;
  if (v28)
  {
    v30 = a1[4].isa;
    if (v29 == _dispatch_call_block_and_release)
    {
      if (v28[2])
      {
        v30 = v28[2];
      }

      else
      {
        v30 = 0;
      }
    }
  }

  _dispatch_introspection_callout_entry(v28, v30);
  _dispatch_client_callout(v28, v29);
  _dispatch_introspection_callout_return(v28, v30);
  if (*(v10 + 40))
  {
    v31 = *(v10 + 40);
  }

  else
  {
    v31 = 0;
  }

  _dispatch_client_callout4(*(v10 + 48), 6, 0, 0, v31);
  if (v27)
  {
    objc_autoreleasePoolPop(v27);
  }

  if ((isa & 0x200) == 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_introspection_queue_item_complete(a1);
  }

  if (v26)
  {
    _dispatch_continuation_free_to_cache_limit(v26);
  }

  if (v8 == 1024)
  {
    v22[20] = v34;
    v22[21] = v33;
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

atomic_uint *dispatch_mach_send_barrier_f(uint64_t a1, uint64_t a2, uint64_t a3, int8x16_t a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 176);
  if (v8)
  {
    *(StatusReg + 176) = v8[2];
  }

  else
  {
    v8 = _dispatch_continuation_alloc_from_heap();
  }

  *v8 = 260;
  v8[4] = a3;
  v8[5] = a2;
  v9 = *(StatusReg + 32) & 0xFFFFFFLL;
  if (v9 >= 0x10FF)
  {
    v10 = 4351;
  }

  else
  {
    v10 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  v11 = *(StatusReg + 224);
  if (v11)
  {
    os_retain(*(StatusReg + 224));
  }

  v8[3] = v11;
  if (v11 != -1)
  {
    if (v11)
    {
      v12 = *(v11 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (v9)
      {
        goto LABEL_13;
      }

LABEL_28:
      v14 = 0;
      goto LABEL_18;
    }
  }

  if (!v9)
  {
    goto LABEL_28;
  }

LABEL_13:
  v13 = (*(a1 + 84) >> 30) & 1;
  if ((*(a1 + 84) & 0xFFF) == 0)
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

LABEL_18:
  v8[1] = v14;
  v8[6] = *v8;
  v8[7] = a1;
  *v8 = &unk_64678;
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_trace_item_push_internal(a1, v8, a4);
  }

  _dispatch_introspection_queue_item_enqueue(a1, v8);
  v16 = __clz(__rbit32((*(v8 + 2) >> 8) & 0x3FFF));
  if (((*(v8 + 2) >> 8) & 0x3FFF) != 0)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = 0;
  }

  return _dispatch_mach_send_push(a1, v8, v17, v15);
}

atomic_uint *dispatch_mach_send_barrier(atomic_uint *a1, uint64_t (**aBlock)())
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

  v6 = _dispatch_Block_copy(aBlock);
  v8 = aBlock[2];
  if (v8)
  {
    if (_dispatch_block_special_invoke != v8)
    {
      goto LABEL_5;
    }
  }

  else if (_dispatch_block_special_invoke)
  {
LABEL_5:
    *v5 = 276;
    v5[4] = _dispatch_call_block_and_release;
    v5[5] = v6;
    v9 = *(StatusReg + 32) & 0xFFFFFFLL;
    if (v9 >= 0x10FF)
    {
      v10 = 4351;
    }

    else
    {
      v10 = *(StatusReg + 32) & 0xFFFFFFLL;
    }

    v11 = *(StatusReg + 224);
    if (v11)
    {
      os_retain(*(StatusReg + 224));
    }

    v5[3] = v11;
    if (v11 == -1)
    {
      goto LABEL_14;
    }

    if (v11)
    {
      v12 = *(v11 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
LABEL_14:
      if (v9)
      {
LABEL_15:
        v13 = (a1[21] >> 30) & 1;
        if ((a1[21] & 0xFFF) == 0)
        {
          v13 = 1;
        }

        if (v13)
        {
          v14 = v10;
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_20;
      }
    }

    v14 = 0;
LABEL_20:
    v5[1] = v14;
    goto LABEL_21;
  }

  *v5 = 276;
  v5[5] = v6;
  _dispatch_continuation_init_slow(v5, a1, 0);
LABEL_21:
  v5[6] = *v5;
  v5[7] = a1;
  *v5 = &unk_64678;
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_trace_item_push_internal(a1, v5, v7);
  }

  _dispatch_introspection_queue_item_enqueue(a1, v5);
  v16 = __clz(__rbit32((*(v5 + 2) >> 8) & 0x3FFF));
  if (((*(v5 + 2) >> 8) & 0x3FFF) != 0)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = 0;
  }

  return _dispatch_mach_send_push(a1, v5, v17, v15);
}

uint64_t dispatch_mach_receive_barrier_f(uint64_t a1, uint64_t a2, uint64_t a3, int8x16_t a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 176);
  if (v8)
  {
    *(StatusReg + 176) = v8[2];
  }

  else
  {
    v8 = _dispatch_continuation_alloc_from_heap();
  }

  *v8 = 260;
  v8[4] = a3;
  v8[5] = a2;
  v9 = *(StatusReg + 32) & 0xFFFFFFLL;
  if (v9 >= 0x10FF)
  {
    v10 = 4351;
  }

  else
  {
    v10 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  v11 = *(StatusReg + 224);
  if (v11)
  {
    os_retain(*(StatusReg + 224));
  }

  v8[3] = v11;
  if (v11 != -1)
  {
    if (v11)
    {
      v12 = *(v11 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (v9)
      {
        goto LABEL_13;
      }

LABEL_15:
      v14 = 0;
      v10 = 0;
      goto LABEL_17;
    }
  }

  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_13:
  v13 = *(a1 + 84);
  if ((v13 & 0x40000000) == 0 && (v13 & 0xFFF) != 0)
  {
    goto LABEL_15;
  }

  v14 = __clz(__rbit32(v10 >> 8)) + 1;
LABEL_17:
  v8[6] = *v8;
  v8[7] = a1;
  *v8 = &unk_646C0;
  v8[1] = v10;
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_trace_item_push_internal(a1, v8, a4);
  }

  _dispatch_introspection_queue_item_enqueue(a1, v8);
  v15 = *(*a1 + 88);

  return v15(a1, v8, v14);
}

uint64_t dispatch_mach_receive_barrier(atomic_uint *a1, uint64_t (**aBlock)())
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

  v6 = _dispatch_Block_copy(aBlock);
  v8 = aBlock[2];
  if (v8)
  {
    if (_dispatch_block_special_invoke != v8)
    {
      goto LABEL_5;
    }
  }

  else if (_dispatch_block_special_invoke)
  {
LABEL_5:
    *v5 = 276;
    v5[4] = _dispatch_call_block_and_release;
    v5[5] = v6;
    v9 = *(StatusReg + 32) & 0xFFFFFFLL;
    if (v9 >= 0x10FF)
    {
      v10 = 4351;
    }

    else
    {
      v10 = *(StatusReg + 32) & 0xFFFFFFLL;
    }

    v11 = *(StatusReg + 224);
    if (v11)
    {
      os_retain(*(StatusReg + 224));
    }

    v5[3] = v11;
    if (v11 == -1)
    {
      goto LABEL_14;
    }

    if (v11)
    {
      v12 = *(v11 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_14:
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    v13 = a1[21];
    if ((v13 & 0x40000000) != 0 || (v13 & 0xFFF) == 0)
    {
      inited = (__clz(__rbit32(v10 >> 8)) + 1);
      goto LABEL_19;
    }

LABEL_17:
    inited = 0;
    v10 = 0;
LABEL_19:
    v5[1] = v10;
    goto LABEL_20;
  }

  *v5 = 276;
  v5[5] = v6;
  inited = _dispatch_continuation_init_slow(v5, a1, 0);
LABEL_20:
  v5[6] = *v5;
  v5[7] = a1;
  *v5 = &unk_646C0;
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_trace_item_push_internal(a1, v5, v7);
  }

  _dispatch_introspection_queue_item_enqueue(a1, v5);
  v15 = *(*a1 + 88);

  return v15(a1, v5, inited);
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
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
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

  if ((v6 & 0x10) != 0 && (*(&stru_20.cmd + _dispatch_mach_xpc_hooks))(*(v5 + 48)))
  {
    v10 = off_64E90(&_dispatch_xpc_type_sigterm, 15, 0);
    *(v10 + 1) = ~a1;
    *(a1 + 128) = v10;
    _dispatch_unote_register(v10, a2, a3);
  }

  if (*(v5 + 24))
  {

    _dispatch_unote_register(v5, a2, a3);
  }
}

NSObject *_dispatch_mach_invoke(uint64_t a1, void *a2, int a3, int8x16_t a4)
{
  v75 = 0;
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

  v73 = a2;
  if ((a3 & 2) != 0)
  {
    v75 = 0x40020000000001;
    v8 = a3 & 0x40000;
  }

  else
  {
    v50 = (*(a1 + 80) << 41) - 0x20000000000;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v52 = *(StatusReg + 24) & 0xFFFFFFFCLL;
    v8 = a3 & 0x40000;
    if ((a3 & 0x40000) != 0)
    {
      v53 = 0x4000000000;
    }

    else
    {
      v53 = 1;
    }

    v54 = 0xFFE00000FFFFFFFCLL;
    if ((a3 & 0x40000) == 0)
    {
      v54 = 0xFFE00040FFFFFFFCLL;
    }

    if (a3)
    {
      v55 = 0xFFE00040FFFFFFFCLL;
    }

    else
    {
      v55 = v54;
    }

    v56 = *(StatusReg + 200);
    v57 = (v56 >> 8) & 0xF;
    v58 = v56 >> 12;
    v59 = HIWORD(v56) & 0xF;
    if (v57 <= v58)
    {
      v57 = v58;
    }

    if (v57 > v59)
    {
      v59 = v57;
    }

LABEL_149:
    for (i = *(a1 + 56); ; i = v65)
    {
      while ((i & v55) != 0)
      {
        if ((a3 & 1) != 0 || (v66 = i, atomic_compare_exchange_strong_explicit((a1 + 56), &v66, i ^ v53, memory_order_acquire, memory_order_acquire), v66 == i))
        {
          v36 = 0;
          v75 = 0;
          a2 = v73;
          goto LABEL_130;
        }

        i = v66;
      }

      if ((i & 0x1000000000) != 0)
      {
        v61 = HIDWORD(i) & 7;
        if (v61 > v59)
        {
          v67 = *(StatusReg + 24);
          _pthread_workqueue_override_start_direct();
          v68 = *(StatusReg + 200);
          v59 = v61;
          if ((HIWORD(v68) & 0xF) < v61)
          {
            *(StatusReg + 200) = v68 & 0xFFF0FFFF | (v61 << 16);
            v59 = v61;
          }

          goto LABEL_149;
        }
      }

      v62 = (i >> 40) & 1;
      if (!((v50 + i) >> 53))
      {
        LODWORD(v62) = 1;
      }

      v63 = v62 ? 0x60000000000000 : 0x20000000000000;
      v64 = v52 | i & 0x7700000001 | v63;
      v65 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v65, v64, memory_order_acquire, memory_order_acquire);
      if (v65 == i)
      {
        break;
      }
    }

    v69 = 0x60000000000000;
    if ((a3 & 1) == 0)
    {
      v69 = v53 | 0x60000000000000;
    }

    v75 = (v64 & v69) - (i & 0x3FFE0000000000);
    a2 = v73;
    if (!v75)
    {
      v36 = 0;
      if ((a3 & 1) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_134;
    }
  }

  if (v8)
  {
    v71 = 0;
  }

  else
  {
    v9 = *(a1 + 84);
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

        v14 = v11 & 0x880F0000 | v12 | v13 & v9;
      }

      else
      {
        v15 = v11 | 0x40000000;
        if ((v11 & 0xFFF) == 0)
        {
          v15 = *(v10 + 200);
        }

        v16 = v9 >> 12;
        v14 = v15 & 0xFFFF0FFF | v9 & 0x400F000;
        if (v16 <= ((v15 >> 8) & 0xF))
        {
          v14 = v15;
        }
      }
    }

    else
    {
      v14 = v9 & 0xFFF0FFFF;
    }

    *(v10 + 200) = v14;
    v71 = v11 & 0xFFF0FFFF;
  }

  LODWORD(v17) = a3 | 8;
  if ((a3 & 0x100000) != 0 && (*(a1 + 80) & 0x400000) != 0)
  {
    atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
  }

  if (((*(a1 + 80) << 8) & 0x3000000) != 0)
  {
    v17 = (*(a1 + 80) << 8) & 0x3000000 | a3 & 0xFCFFFFF7 | 8;
  }

  else
  {
    v17 = v17;
  }

  v70 = v17 | 0x10;
  v18 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (2)
  {
    while (2)
    {
      v19 = v17;
      v72 = v17 & 0x1000002;
      if ((v17 & 0x1000002) == 2)
      {
        _dispatch_last_resort_autorelease_pool_push(a2);
      }

      v21 = (v18 + 160);
      v20 = *(v18 + 160);
      v22 = *(a1 + 120);
      v23 = *(a1 + 88);
      if ((v19 & 0x40000) == 0 && v23)
      {
        v24 = *(v18 + 232);
        v25 = v24 ? *(v24 + 24) : -4;
        v26 = v23[2] & 0xFFFFFFFFFFFFFFFCLL;
        if (v26 == -4)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26 == 0;
          v28 = v23[2] < 0;
        }

        if (!v27 && v25 != v26)
        {
          _dispatch_mach_handle_wlh_change(a1);
        }
      }

      if ((*(a1 + 116) & 1) == 0)
      {
        if ((v19 & 0x40000) != 0)
        {
          v36 = *(a1 + 24);
          goto LABEL_86;
        }

        if ((v19 & 0x10000) != 0)
        {
          v44 = *(v18 + 200);
        }

        else
        {
          v44 = 0x2000000;
        }

        v45 = *(v18 + 232);
        if (v45)
        {
          v46 = *(v45 + 24);
        }

        else
        {
          v46 = -4;
        }

        _dispatch_mach_install(a1, v46, v44);
      }

      if (!*(a1 + 48))
      {
        v30 = 0;
        goto LABEL_49;
      }

      v30 = *(a1 + 24);
      if (v20 != v30)
      {
        goto LABEL_49;
      }

      while (1)
      {
        while (1)
        {
          _dispatch_lane_serial_drain(a1, v73, v19, &v75);
          v30 = v31;
LABEL_49:
          v32 = *(a1 + 80);
          if (v30 || (v32 & 0x10000000) != 0)
          {
            break;
          }

          if (!v23[2] || (v23[2] & 3) != 0)
          {
            break;
          }

          _dispatch_unote_resume(v23);
          if (v20 == *(a1 + 24) && !v20[3] && !*(v22 + 72) && (*(v20 + 21) & 0x80000000) != 0)
          {
            if (*(v18 + 40))
            {
              v42 = *(v18 + 232);
              if (v42)
              {
                v43 = *(v42 + 24);
                if (v43 != -4 && v43 == (v23[2] & 0xFFFFFFFFFFFFFFFCLL))
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

          v32 = *(a1 + 80);
          break;
        }

        if (!*(v22 + 72))
        {
          goto LABEL_73;
        }

        if ((*(v22 + 30) & 1) != 0 && !*(v22 + 88))
        {
          goto LABEL_72;
        }

        if (*(v22 + 88))
        {
          v34 = *(v22 + 16) != 0;
        }

        else
        {
          v34 = *(a1 + 118) & 1;
        }

        if (v34 && v20 != &_dispatch_mgr_q)
        {
          if (v30)
          {
            v36 = v30;
          }

          else
          {
            v36 = &_dispatch_mgr_q;
          }

          goto LABEL_86;
        }

        _dispatch_mach_send_invoke(a1, v19, 4 * (v20 != &_dispatch_mgr_q), a4);
        if (v30)
        {
LABEL_73:
          if ((v32 & 0x10000000) == 0)
          {
            goto LABEL_85;
          }

          goto LABEL_74;
        }

        if (*(a1 + 48))
        {
          v30 = *(a1 + 24);
LABEL_72:
          if (v30)
          {
            goto LABEL_73;
          }
        }

        if (*(v22 + 72))
        {
          v30 = -1;
        }

        else
        {
          v30 = 0;
        }

        if ((v32 & 0x10000000) == 0)
        {
          goto LABEL_85;
        }

LABEL_74:
        if ((v32 & 0x80000000) == 0)
        {
          _dispatch_mach_cancel(a1);
          if ((v35 & 1) == 0)
          {
            if (v30)
            {
              v36 = v30;
            }

            else
            {
              v36 = -1;
            }

            goto LABEL_86;
          }
        }

        if ((*(a1 + 116) & 8) != 0)
        {
          goto LABEL_85;
        }

        v36 = *(a1 + 24);
        if (v20 != v36)
        {
          break;
        }

        if (*(a1 + 56) >> 55)
        {
          goto LABEL_86;
        }

        if (!*(a1 + 48))
        {
          _dispatch_mach_cancel_invoke(a1, v19);
LABEL_85:
          v36 = v30;
          goto LABEL_86;
        }
      }

      if (v30)
      {
        v36 = v30;
      }

LABEL_86:
      a2 = v73;
      if (v72 == 2)
      {
        v74 = *v21;
        *(v18 + 160) = a1;
        *(v18 + 168) = &v74;
        _dispatch_last_resort_autorelease_pool_pop(v73);
        a4 = v74;
        *v21 = v74;
      }

      if ((v36 + 1) > 1)
      {
        goto LABEL_128;
      }

      v37 = v75;
      v38 = *(a1 + 56);
      while (2)
      {
        v39 = v38;
        v40 = v38 - v37;
        v41 = v40 & 0xFFFFFFF700000001;
        if (v39 >> 55)
        {
LABEL_94:
          v38 = v39;
          atomic_compare_exchange_strong_explicit((a1 + 56), &v38, v41, memory_order_release, memory_order_relaxed);
          if (v38 == v39)
          {
            if ((~v39 & 0x1800000000) == 0)
            {
              v47 = HIDWORD(v39) & 7;
              v48 = *(v18 + 200);
              if ((HIWORD(v48) & 0xF) < v47)
              {
                *(v18 + 200) = v48 & 0xFFF0FFFF | (v47 << 16);
              }
            }

            v36 = 0;
            v75 = 0;
            goto LABEL_128;
          }

          continue;
        }

        break;
      }

      if ((v39 & 0x8000000000) == 0)
      {
        if (v36)
        {
          v41 = v40 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v41 = v40 & 0xFFFFFFF000000001;
        }

        goto LABEL_94;
      }

      atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
      v36 = v21->i64[0];
      v17 = v70;
      if (a3)
      {
        continue;
      }

      break;
    }

    v17 = v70;
    if ((*(*v21->i64[0] + 40) & 0x10000) != 0)
    {
      continue;
    }

    break;
  }

LABEL_128:
  if ((v19 & 0x40000) == 0)
  {
    *(v18 + 200) = *(v18 + 200) & 0xF0000 | v71;
  }

LABEL_130:
  if ((a3 & 1) == 0)
  {
LABEL_131:
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_introspection_queue_item_complete(a1);
  }

LABEL_134:
  if (v36)
  {
    return _dispatch_queue_invoke_finish(a1, a2, v36, v75);
  }

  else
  {
    return _os_object_release_internal_n(a1, &dword_0 + 2);
  }
}

void _dispatch_mach_wakeup(uint64_t a1, uint64_t a2, uint64_t a3, int8x16_t a4)
{
  v4 = *(a1 + 120);
  v5 = *(a1 + 80);
  if ((*(a1 + 116) & 1) == 0 || *(a1 + 48))
  {
    goto LABEL_3;
  }

  if (!*(v4 + 72))
  {
    v6 = 0;
    if ((v5 & 0x10000000) == 0 || !(a3 & 0x10 | ~v5 & 0x50000000))
    {
      goto LABEL_6;
    }

    if ((*(a1 + 116) & 8) == 0)
    {
LABEL_3:
      if (*(a1 + 24) == &_dispatch_mgr_q)
      {
        v6 = &_dispatch_mgr_q;
      }

      else
      {
        v6 = (&dword_0 + 1);
      }

      goto LABEL_6;
    }

LABEL_16:
    v6 = 0;
    goto LABEL_6;
  }

  if (*(v4 + 64) > 3u || (*(v4 + 30) & 1) != 0 && !*(v4 + 88))
  {
    goto LABEL_16;
  }

  if (*(v4 + 88))
  {
    v7 = *(v4 + 16) != 0;
  }

  else
  {
    v7 = *(a1 + 118) & 1;
  }

  v6 = &_dispatch_mgr_q;
  if (v7)
  {
    v8 = &_dispatch_mgr_q == (&dword_0 + 1);
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_3;
  }

LABEL_6:
  _dispatch_queue_wakeup(a1, a2, a3, v6, a4);
}