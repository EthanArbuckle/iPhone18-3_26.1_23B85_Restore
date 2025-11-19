void _dispatch_root_queues_init_once_cold_3()
{
  v0 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unable to limit cooperative pool size";
  qword_1EBC5B9B0 = v0;
  __break(1u);
}

void _dispatch_root_queues_init_once_cold_4(int a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Missing Kevent WORKQ support";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_root_queues_init_once_cold_5(int a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: QoS Maintenance support required";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

uint64_t _dispatch_mgr_queue_drain_cold_2(uint64_t result, uint64_t a2)
{
  if (result == 1)
  {
    return _voucher_xref_dispose(a2);
  }

  qword_1EBC5B980 = "API MISUSE: Voucher over-release";
  __break(1u);
  return result;
}

void _dispatch_root_queue_drain_deferred_wlh_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Invalid wlh state";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

atomic_uint *_dispatch_root_queue_drain_deferred_wlh_cold_4(atomic_uint *result)
{
  if (*result != 0x7FFFFFFF && atomic_fetch_add_explicit(result, 1u, memory_order_relaxed) <= 0)
  {
    qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }

  return result;
}

void _dispatch_root_queue_drain_deferred_wlh_cold_5(void *a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  *a2 = 0;
  v3 = *(a3 + 32);
  if ((v3 & 0x1000000) != 0)
  {
    v4 = v3 & 0xFFFFFFFFFEFFFFFFLL;
    if ((v3 & 0xFFFFFFFFFEFFFFFFLL) != 0)
    {
      goto LABEL_7;
    }
  }

  if (*(a3 + 224))
  {
    v4 = 0;
LABEL_7:
    _dispatch_set_priority_and_voucher_slow(v4, 0, 14);
  }
}

void _dispatch_apply_with_attr_f_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_apply_attr not initialized using dispatch_apply_attr_init";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_apply_with_attr_f_cold_3(NSObject *a1, NSObject *a2, void *context)
{
  if (a1 == a2)
  {
    v4 = _dispatch_apply_serial;
  }

  else
  {
    v4 = _dispatch_apply_redirect;
  }

  dispatch_sync_f(a1, context, v4);
}

void _dispatch_apply_with_attr_f_cold_5(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: attribute's properties are invalid or meaningless on this system";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_apply_with_attr_f_cold_7(NSObject *a1, uint64_t a2, void *context)
{
  if (((a1[7].isa ^ *(a2 + 24)) & 0xFFFFFFFC) != 0)
  {
    dispatch_async_and_wait_f(a1, context, _dispatch_apply_serial);
  }

  else
  {
    _dispatch_apply_serial(context);
  }
}

void dispatch_apply_attr_set_parallelism_cold_2()
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: 0 is an invalid threads_per_cluster value";
  qword_1EBC5B9B0 = 0;
  __break(1u);
}

void dispatch_apply_attr_set_parallelism_cold_3(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid threads_per_cluster value, only acceptable value is 1";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_apply_attr_set_parallelism_cold_4(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid threads_per_entity value for CPU entity";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_apply_attr_set_parallelism_cold_5(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Unknown entity";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

uint64_t dispatch_apply_attr_query_cold_3(uint64_t a1, unint64_t *a2)
{
  result = pthread_qos_max_parallelism();
  if (result < 1)
  {
    result = MEMORY[0xFFFFFC036];
  }

  v5 = result;
  if (*(a1 + 8))
  {
    result = pthread_qos_max_parallelism();
    if (result < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = (result * *(a1 + 8));
    }
  }

  else
  {
    v6 = -1;
  }

  if (v6 >= v5)
  {
    v6 = v5;
  }

  *a2 = v6;
  return result;
}

size_t _dispatch_source_debug(void *a1, char *a2, size_t a3)
{
  v6 = a1[11];
  ClassName = object_getClassName(a1);
  v8 = snprintf(a2, a3, "%s[%p] = { ", ClassName + 12, a1);
  v9 = v8;
  if (v8 >= a3)
  {
    v9 = a3;
  }

  if (v8 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = OUTLINED_FUNCTION_1_1();
  v14 = v10 + _dispatch_object_debug_attr(v11, v12, v13);
  v15 = OUTLINED_FUNCTION_1_1();
  v18 = v14 + _dispatch_source_debug_attr(v15, v16, v17);
  v19 = *(v6 + 29);
  if ((v19 & 2) != 0)
  {
    v25 = OUTLINED_FUNCTION_1_1();
    v18 += _dispatch_timer_debug_attr(v25, v26, v27);
    v19 = *(v6 + 29);
  }

  v20 = a3 - v18;
  if (v19)
  {
    v21 = " (direct)";
  }

  else
  {
    v21 = &unk_1BB5822E3;
  }

  v22 = snprintf(&a2[v18], v20, "kevent = %p%s, filter = %s }", v6, v21, **v6);
  v23 = v22;
  if (v20 < v22)
  {
    v23 = v20;
  }

  if (v22 < 0)
  {
    v23 = 0;
  }

  return v23 + v18;
}

size_t _dispatch_source_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 88);
  v6 = *(a1 + 80);
  v7 = *(v5 + 16);
  if (v4)
  {
    v8 = v4[9];
    if (!v8)
    {
      v8 = &unk_1BB5822E3;
    }
  }

  else
  {
    v8 = &unk_1BB5822E3;
  }

  v9 = v7 != 0;
  v10 = v7 & 1;
  v11 = "cancelled, ";
  if ((v6 & 0x10000000) == 0)
  {
    v11 = &unk_1BB5822E3;
  }

  v12 = "needs-event, ";
  if ((v6 & 0x40000000) == 0)
  {
    v12 = &unk_1BB5822E3;
  }

  if (v6 < 0)
  {
    v13 = "deleted, ";
  }

  else
  {
    v13 = &unk_1BB5822E3;
  }

  v14 = snprintf(__str, __size, "target = %s[%p], ident = 0x%x, mask = 0x%x, pending_data = 0x%llx, registered = %d, armed = %d, %s%s%s", v8, v4, *(v5 + 24), *(v5 + 32), *(v5 + 72), v9, v10, v11, v12, v13);
  v15 = v14;
  if (v14 >= __size)
  {
    v15 = __size;
  }

  if (v14 >= 0)
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

size_t _dispatch_timer_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v4 = snprintf(__str, __size, "timer = { target = 0x%llx, deadline = 0x%llx, interval = 0x%llx, flags = 0x%x }, ", *(*(a1 + 88) + 80), *(*(a1 + 88) + 88), *(*(a1 + 88) + 96), *(*(a1 + 88) + 30));
  v5 = v4;
  if (v4 >= __size)
  {
    v5 = __size;
  }

  if (v4 >= 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void dispatch_source_create_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target source to the cooperative root queue - not implemented";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_source_xref_dispose_cold_1(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Release of a source that has not been cancelled, but has a mandatory cancel handler";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_source_merge_data_cold_2(char a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid source type";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void *dispatch_source_cancel_cold_2(atomic_uint *a1)
{
  if ((atomic_fetch_or_explicit(a1 + 20, 0x10000000u, memory_order_release) & 0x10000000) != 0)
  {
    return _os_object_release_internal_n(a1, 2);
  }

  else
  {
    return (*(*a1 + 80))(a1, 0, 3);
  }
}

void dispatch_source_cancel_and_wait_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Source has a cancel handler";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_source_cancel_and_wait_cold_2(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Dispatch source used after last release";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

_DWORD *dispatch_source_cancel_and_wait_cold_3(_DWORD *result, int a2, uint64_t a3)
{
  if (((a2 ^ *result) & 0xFFFFFFFC) == 0)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_source_cancel_and_wait called from a source handler";
    qword_1EBC5B9B0 = a3;
    __break(1u);
  }

  return result;
}

uint64_t dispatch_source_cancel_and_wait_cold_4(_DWORD *a1, void *a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    _dispatch_source_refs_unregister(a2, 3);
  }

  if ((*a1 & 0x80000000) != 0)
  {
    _dispatch_source_cancel_callout(a2, 0, 0);
  }

  v4 = *(*a2 + 80);

  return v4(a2, 0, 20);
}

uint64_t dispatch_source_cancel_and_wait_cold_5(uint64_t result, atomic_uint *a2)
{
  v3 = result;
  do
  {
    if ((v3 & 0x20000000) != 0 || (v4 = v3, atomic_compare_exchange_strong_explicit(a2, &v4, v3 | 0x20000000, memory_order_relaxed, memory_order_relaxed), v5 = v4 == v3, LODWORD(v3) = v3 | 0x20000000, v5))
    {
      result = _dispatch_wait_on_address(a2, v3, 0xFFFFFFFFFFFFFFFFLL);
      v4 = *a2;
    }

    v3 = v4;
  }

  while ((v4 & 0x80000000) == 0);
  return result;
}

void dispatch_source_cancel_and_wait_cold_6(unint64_t a1, dispatch_object_t object)
{
  if (a1 >> 58)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Source is suspended";
    qword_1EBC5B9B0 = object;
    __break(1u);
  }

  else
  {
    dispatch_activate(object);
  }
}

void _dispatch_source_merge_evt_cold_1(int a1, uint64_t a2)
{
  if ((a1 & 0x4000000) != 0)
  {
    v3 = *(a2 + 24);
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports or file descriptors)";
    qword_1EBC5B9B0 = v3;
    __break(1u);
  }

  else
  {
    _dispatch_bug_kevent_vanished(a2);
    *(a2 + 72) = 0;
  }
}

uint64_t _dispatch_source_latch_and_call_cold_1(void *a1)
{
  result = _dispatch_continuation_get_function_symbol(a1);
  if (MEMORY[0xFFFFFC100])
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t _dispatch_source_latch_and_call_cold_2()
{
  if (MEMORY[0xFFFFFC100])
  {
    return OUTLINED_FUNCTION_0_1();
  }

  return result;
}

uint64_t _dispatch_source_latch_and_call_cold_4()
{
  if (MEMORY[0xFFFFFC100])
  {
    return OUTLINED_FUNCTION_0_1();
  }

  return result;
}

void _os_workgroup_tsd_cleanup_cold_1(char *a1, uint64_t a2)
{
  snprintf(a1, 0x200uLL, "BUG IN CLIENT: Thread exiting without leaving workgroup '%s'", *(a2 + 16));
  _os_crash();
  __break(1u);
}

void _os_workgroup_set_name_cold_1()
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Invalid workgroup port";
  qword_1EBC5B9B0 = 0xFFFFFFFFLL;
  __break(1u);
}

void _os_workgroup_set_work_interval_workload_id_cold_1(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Invalid workgroup port";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void os_workgroup_create_with_port_cold_2(char *a1, int a2)
{
  snprintf(a1, 0x200uLL, "BUG IN DISPATCH: Invalid wi flags = %u", a2);
  _os_crash();
  __break(1u);
}

void _os_workgroup_pthread_start_cold_1(int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: pthread_start os_workgroup_join failed";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _os_workgroup_lookup_type_from_workload_id_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Invalid workload ID type";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

uint64_t _dispatch_mach_handoff_set_wlh(uint64_t result, uint64_t a2)
{
  v2 = (a2 + 24);
  if (*(a2 + 24))
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    while (1)
    {
      if ((*(a2 + 80) & 0x400000) != 0)
      {
        v6 = 0;
        v7 = (a2 + 100);
        atomic_compare_exchange_strong_explicit((a2 + 100), &v6, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
        if (v6)
        {
          v19 = result;
          v15 = StatusReg;
          v17 = a2;
          v11 = (a2 + 100);
          v13 = v2;
          _dispatch_unfair_lock_lock_slow(a2 + 100);
          v2 = v13;
          StatusReg = v15;
          v7 = v11;
          a2 = v17;
          result = v19;
        }

        atomic_fetch_and_explicit((a2 + 80), 0xFFBFFFFF, memory_order_relaxed);
        v8 = *(StatusReg + 24) & 0xFFFFFFFC;
        v9 = atomic_exchange_explicit(v7, 0, memory_order_release);
        if (v9 != v8)
        {
          v18 = result;
          v14 = StatusReg;
          v16 = a2;
          v10 = v9;
          v12 = v2;
          _dispatch_unfair_lock_unlock_slow(v7, v9);
          v2 = v12;
          StatusReg = v14;
          a2 = v16;
          result = v18;
          if ((v10 & 2) != 0 && (*(v14 + 200) & 0xF0000) == 0)
          {
            *(v14 + 200) = *(v14 + 200) & 0xFFF0FFFFLL | 0x10000;
          }
        }
      }

      if ((*(a2 + 56) & 0x2000000000) != 0)
      {
        break;
      }

      a2 = *v2;
      v4 = *v2;
      v5 = *(v4 + 24);
      v2 = (v4 + 24);
      if (!v5)
      {
        a2 = 0;
        break;
      }
    }
  }

  else
  {
    a2 = 0;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t dispatch_mach_handoff_reply(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = _dispatch_mach_handoff_context(a2);
  v6 = *(v5 + 16);
  result = _dispatch_mach_handoff_set_wlh(v6, a1);
  if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed) <= 0)
  {
    qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
    __break(1u);
    goto LABEL_19;
  }

  *(v5 + 24) = a1;
  result = _dispatch_Block_copy(a3);
  v8 = a3[2];
  if (v8)
  {
    if (_dispatch_block_special_invoke != v8)
    {
      goto LABEL_5;
    }

LABEL_17:
    *v6 = 276;
    v6[5] = result;
    result = _dispatch_continuation_init_slow(v6, a1, 0);
LABEL_15:
    *(v5 + 32) = result;
    v6[6] = *v6;
    *v6 = &unk_1F3A43668;
    return result;
  }

  if (!_dispatch_block_special_invoke)
  {
    goto LABEL_17;
  }

LABEL_5:
  *v6 = 276;
  v6[4] = _dispatch_call_block_and_release;
  v6[5] = result;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = *(StatusReg + 32) & 0xFFFFFFLL;
  v11 = 4351;
  if (v10 < 0x10FF)
  {
    v11 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  v12 = *(StatusReg + 224);
  if (!v12 || atomic_fetch_add_explicit((v12 + 12), 1u, memory_order_relaxed) > 0)
  {
    v6[3] = v12;
    if (v10 && ((v13 = *(a1 + 84), (v13 & 0x40000000) != 0) || (v13 & 0xFFF) == 0))
    {
      result = __clz(__rbit32(v11 >> 8)) + 1;
    }

    else
    {
      result = 0;
      v11 = 0;
    }

    v6[1] = v11;
    goto LABEL_15;
  }

LABEL_19:
  qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
  __break(1u);
  return result;
}

size_t _dispatch_mach_msg_debug(unsigned int *a1, char *a2, size_t a3)
{
  ClassName = object_getClassName(a1);
  v7 = snprintf(a2, a3, "%s[%p] = { ", ClassName + 12, a1);
  v8 = v7;
  if (v7 >= a3)
  {
    v8 = a3;
  }

  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = OUTLINED_FUNCTION_2_1();
  v13 = v9 + _dispatch_object_debug_attr(v10, v11, v12);
  v14 = a1 + 22;
  v15 = snprintf(&a2[v13], a3 - v13, "opts/err = 0x%x, msgh[%p] = { ", a1[12], a1 + 22);
  v17 = v15;
  if (a3 - v13 < v15)
  {
    v17 = a3 - v13;
  }

  if (v15 < 0)
  {
    v17 = 0;
  }

  if (a1[18])
  {
    v14 = *v14;
  }

  v18 = v17 + v13;
  if (v14[5])
  {
    v37 = v14[5];
    OUTLINED_FUNCTION_3_1(v15, v16, "id 0x%x, ");
    OUTLINED_FUNCTION_1_3();
    if (v15 < 0)
    {
      v19 = 0;
    }

    v18 += v19;
  }

  if (v14[1])
  {
    v37 = v14[1];
    OUTLINED_FUNCTION_3_1(v15, v16, "size %u, ");
    OUTLINED_FUNCTION_1_3();
    if (v15 < 0)
    {
      v20 = 0;
    }

    v18 += v20;
  }

  v21 = *v14;
  if (*v14)
  {
    v37 = (v21 >> 8) & 0x1F;
    v38 = v21 & 0x1F;
    OUTLINED_FUNCTION_3_1(v15, v16, "bits <l %u, r %u");
    OUTLINED_FUNCTION_1_3();
    if (v22 < 0)
    {
      v24 = 0;
    }

    v25 = v24 + v18;
    if ((*v14 & 0xFFE0E0E0) != 0)
    {
      v37 = *v14 & 0xFFE0E0E0;
      OUTLINED_FUNCTION_3_1(v22, v23, ", o 0x%x");
      OUTLINED_FUNCTION_1_3();
      if (v22 < 0)
      {
        v26 = 0;
      }

      v25 += v26;
    }

    OUTLINED_FUNCTION_3_1(v22, v23, ">, ");
    OUTLINED_FUNCTION_1_3();
    if (v15 < 0)
    {
      v27 = 0;
    }

    v18 = v27 + v25;
  }

  v28 = v14[2];
  if (v14[3])
  {
    if (v28)
    {
      v37 = v14[3];
      v38 = v14[2];
      v29 = "local 0x%x, remote 0x%x";
    }

    else
    {
      v37 = v14[3];
      v29 = "local 0x%x";
    }
  }

  else if (v28)
  {
    v37 = v14[2];
    v29 = "remote 0x%x";
  }

  else
  {
    v29 = "no ports";
  }

  OUTLINED_FUNCTION_3_1(v15, v16, v29);
  OUTLINED_FUNCTION_1_3();
  if (v31 < 0)
  {
    v30 = 0;
  }

  v32 = v30 + v18;
  v33 = a3 - (v30 + v18);
  v34 = snprintf(&a2[v30 + v18], v33, " } }", v37, v38);
  v35 = v34;
  if (v33 < v34)
  {
    v35 = v33;
  }

  if (v34 < 0)
  {
    v35 = 0;
  }

  return v35 + v32;
}

uint64_t _dispatch_mach_debug(void *a1, char *__str, size_t __size)
{
  v6 = a1[9];
  if (!v6 || (*(a1 + 58) & 8) != 0)
  {
    v6 = object_getClassName(a1) + 12;
  }

  v7 = snprintf(__str, __size, "%s[%p] = { ", v6, a1);
  v8 = v7;
  if (v7 >= __size)
  {
    v8 = __size;
  }

  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = OUTLINED_FUNCTION_2_1();
  v13 = v9 + _dispatch_object_debug_attr(v10, v11, v12);
  v14 = OUTLINED_FUNCTION_2_1();
  v17 = v13 + _dispatch_mach_debug_attr(v14, v15, v16);
  v18 = __size - v17;
  v19 = snprintf(&__str[v17], v18, "}");
  v20 = v19;
  if (v18 < v19)
  {
    v20 = v18;
  }

  if (v19 < 0)
  {
    v20 = 0;
  }

  return v20 + v17;
}

size_t _dispatch_mach_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 120);
  v6 = &unk_1BB5822E3;
  if (v4)
  {
    v7 = v4[9];
    if (!v7)
    {
      v7 = &unk_1BB5822E3;
    }
  }

  else
  {
    v7 = &unk_1BB5822E3;
  }

  if (*(v5 + 30))
  {
    v8 = " (armed)";
  }

  else
  {
    v8 = &unk_1BB5822E3;
  }

  if (*(v5 + 48))
  {
    v6 = " (pending)";
  }

  v9 = snprintf(__str, __size, "target = %s[%p], receive = 0x%x, send = 0x%x, send-possible = 0x%x%s, checkin = 0x%x%s, send state = %016llx, disconnected = %d, canceled = %d ", v7, v4, *(*(a1 + 88) + 24), *(v5 + 92), *(v5 + 24), v8, *(v5 + 96), v6, *(v5 + 64), *(v5 + 88), (*(a1 + 80) >> 28) & 1);
  v10 = v9;
  if (v9 >= __size)
  {
    v10 = __size;
  }

  if (v9 >= 0)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

void dispatch_mach_hooks_install_4libxpc_cold_1()
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_hooks_install_4libxpc called twice";
  qword_1EBC5B9B0 = _dispatch_mach_xpc_hooks;
  __break(1u);
}

void dispatch_mach_hooks_install_4libxpc_cold_2(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: trying to install hooks with unsupported version";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_mach_create_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target object to cooperative root queue - not implemented";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_mach_connect_cold_1(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Channel already connected";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_mach_arm_no_senders_cold_2(char a1, mach_port_name_t a2)
{
  if (a1)
  {
    v2 = mach_port_deallocate(*MEMORY[0x1E69E9A60], a2);
    if (v2 == -301)
    {
      qword_1EBC5B980 = "MIG_REPLY_MISMATCH";
      qword_1EBC5B9B0 = -301;
      __break(1u);
    }

    if (v2)
    {
      _dispatch_bug(269, v2);
    }
  }

  else
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Mach port notification collision";
    qword_1EBC5B9B0 = a2;
    __break(1u);
  }
}

void _dispatch_mach_merge_msg_cold_1(uint64_t a1)
{
  v1 = *(a1 + 24);
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports)";
  qword_1EBC5B9B0 = v1;
  __break(1u);
}

void _dispatch_mach_send_and_wait_for_reply_cold_3(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Reply received on unexpected port";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_mach_send_and_wait_for_reply_cold_4(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Overlarge message";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_mach_send_and_wait_for_reply_cold_5(int a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected error from mach_msg_receive";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_mach_send_and_wait_for_reply_cold_6(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid reply port";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_mach_install_cold_1(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Channel never connected";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_mach_msg_create_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Message size too large";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_mach_msg_create_cold_2(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Empty message";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

uint64_t _dispatch_mach_msg_dispose_cold_1(uint64_t a1, uint64_t a2)
{
  if (a1 == 1)
  {
    return OUTLINED_FUNCTION_0_3(a1, a2);
  }

  qword_1EBC5B980 = "API MISUSE: Voucher over-release";
  __break(1u);
  return a1;
}

void dispatch_mach_msg_get_filter_policy_id_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Messsage should be non-NULL";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_mach_msg_get_filter_policy_id_cold_2(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Trailer format is invalid";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_mach_msg_get_filter_policy_id_cold_3(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Trailer doesn't contain filter policy id";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_mach_msg_get_filter_policy_id_cold_4()
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Filter id should be non-NULL";
  qword_1EBC5B9B0 = 0;
  __break(1u);
}

void dispatch_mach_mig_demux_cold_3(int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_mig_demux: mach_msg(MACH_SEND_MSG) failed";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void *_dispatch_mach_msg_async_reply_wrap_cold_2(uint64_t a1, uint64_t a2, void *a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  result = *(StatusReg + 176);
  if (result)
  {
    *(StatusReg + 176) = result[2];
  }

  else
  {
    result = _dispatch_continuation_alloc_from_heap();
  }

  *a3 = result;
  result[6] = a1;
  result[7] = a2;
  *result = &unk_1F3A43548;
  result[1] = -1;
  result[3] = -1;
  return result;
}

uint64_t _dispatch_event_loop_drain_timers_cold_2(void *a1, void *a2)
{
  *a1 = 0;
  a2[9] = 2;
  return (*(*a2 + 48))(a2, 16, 0, 0);
}

uint64_t _dispatch_event_loop_drain_timers_cold_4()
{
  if (MEMORY[0xFFFFFC100])
  {
    return kdebug_trace();
  }

  return result;
}

void _dispatch_unote_unregister_direct(uint64_t *a1, char a2)
{
  v4 = a1[2];
  v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  v7 = 2;
  if (v4 <= 0xFFFFFFFFFFFFFFFBLL && v6 != 0)
  {
    if (*(v6 + 24) == v5)
    {
      a2 |= 5u;
      v7 = 6;
    }

    else
    {
      v7 = 2;
    }
  }

  if ((v4 & 2) != 0 && (a2 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v4 == 2)
  {
    a1[2] = 0;
    return;
  }

  if (v4)
  {
    v9 = v7;
  }

  else
  {
    a2 |= 4u;
    v9 = 6;
  }

  v10 = v9 <= 3 && (a2 & 2) == 0;
  if (v10 || (_dispatch_kq_unote_update(v5, a1, v9), (v11 & 1) == 0))
  {
LABEL_10:
    if ((a2 & 4) != 0)
    {
      qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unregistration failed";
      __break(1u);
    }
  }
}

void _dispatch_sync_ipc_handoff_begin_cold_1(int a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_unote_dispose_defer_cold_1(unsigned __int16 a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Disposing a direct unote while deferring an event";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_free_deferred_unotes_cold_1(unsigned __int16 a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_event_loop_leave_immediate_cold_1(int *a1)
{
  v1 = *a1;
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Broken priority";
  qword_1EBC5B9B0 = v1;
  __break(1u);
}

void _dispatch_event_loop_leave_immediate_cold_2(unsigned int *a1, unsigned __int16 a2)
{
  v2 = (a2 << 16) | (*a1 << 32) | 2;
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_1EBC5B9B0 = v2;
  __break(1u);
}

void _dispatch_event_loop_leave_immediate_cold_3(uint64_t *a1)
{
  v1 = *a1;
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
  qword_1EBC5B9B0 = v1;
  __break(1u);
}

void _dispatch_event_loop_leave_deferred_cold_1(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_event_loop_cancel_waiter_cold_2(uint64_t a1, unsigned __int16 a2)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_1EBC5B9B0 = (a2 << 16) | (a1 << 32) | 2;
  __break(1u);
}

void _dispatch_event_loop_cancel_waiter_cold_3(uint64_t a1)
{
  v1 = *(a1 + 64);
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
  qword_1EBC5B9B0 = v1;
  __break(1u);
}

void _dispatch_event_loop_wake_owner_cold_1(uint64_t a1)
{
  v1 = *(a1 + 12);
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Broken priority";
  qword_1EBC5B9B0 = v1;
  __break(1u);
}

void _dispatch_event_loop_wake_owner_cold_2(uint64_t a1, unsigned __int16 a2)
{
  v2 = (a2 << 16) | (*(a1 + 24) << 32) | 2;
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_1EBC5B9B0 = v2;
  __break(1u);
}

void _dispatch_event_loop_wait_for_ownership_cold_4(uint64_t a1, unsigned __int16 a2)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_1EBC5B9B0 = (a1 << 32) | (a2 << 16) | 2;
  __break(1u);
}

uint64_t _dispatch_event_loop_end_ownership_cold_6(uint64_t result, void *a2)
{
  if ((result & 0x80000000) == 0)
  {
    return _os_object_dispose(a2, a2);
  }

  vars0 = v2;
  vars8 = v3;
  qword_1EBC5B980 = "API MISUSE: Over-release of an object";
  __break(1u);
  return result;
}

void _dispatch_mach_host_port_init_cold_3(int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Could not get unprivileged host port";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

uint64_t _dispatch_kevent_mach_msg_recv_cold_3(uint64_t result, uint64_t a2)
{
  if ((result & 0x210) != 0)
  {
    v2 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFCLL | 2;
  }

  else
  {
    if ((result & 0x80) == 0)
    {
      return result;
    }

    v2 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL;
  }

  *(a2 + 16) = v2;
  return result;
}

void _dispatch_kevent_mach_msg_recv_cold_4(uint64_t a1)
{
  v1 = *(a1 + 20);
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Received message with MACH_PORT_NULL msgh_local_port";
  qword_1EBC5B9B0 = v1;
  __break(1u);
}

void _dispatch_kevent_mach_msg_recv_cold_5(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Overlarge message received";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_kq_init_cold_2()
{
  v0 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (v0 != 4)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Failed to initalize workqueue kevent";
    qword_1EBC5B9B0 = v0;
    __break(1u);
  }
}

uint64_t _dispatch_kevent_mach_notify_resume_cold_3(unsigned int a1, mach_port_name_t *a2, _DWORD *a3)
{
  _dispatch_bug(3048, a1);
  result = mach_port_deallocate(*MEMORY[0x1E69E9A60], *a2);
  *a3 = result;
  if (result == -301)
  {
    qword_1EBC5B980 = "MIG_REPLY_MISMATCH";
    qword_1EBC5B9B0 = -301;
    __break(1u);
  }

  if (result)
  {
    return 1;
  }

  return result;
}

BOOL voucher_activity_should_send_strings()
{
  if (_firehose_task_buffer_pred != -1)
  {
    dispatch_once_f(&_firehose_task_buffer_pred, 0, _firehose_task_buffer_init);
  }

  v0 = _firehose_task_buffer;
  if (!_firehose_task_buffer || *(_firehose_task_buffer + 1680) == -1)
  {
    return 0;
  }

  return firehose_buffer_should_send_strings(v0);
}

size_t voucher_kvoucher_debug(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v2;
  v118 = *MEMORY[0x1E69E9840];
  bzero(recipes, 0x2000uLL);
  *object_addr = 0;
  *recipesCnt = 0x2000;
  if (mach_port_kernel_object(v15, v14, object_addr, &object_addr[1]) || object_addr[0] != 37)
  {
    if (v6)
    {
      OUTLINED_FUNCTION_8_0();
      snprintf((v12 + v8), v4, "%s", v108);
      OUTLINED_FUNCTION_0_0();
      if (v98 < 0)
      {
        v97 = 0;
      }

      v8 += v97;
    }

    if (v10 >= v8)
    {
      v99 = v10 - v8;
    }

    else
    {
      v99 = 0;
    }

    v100 = snprintf((v12 + v8), v99, "Invalid voucher: 0x%x\n");
    goto LABEL_116;
  }

  v16 = mach_voucher_debug_info(v15, v14, recipes, recipesCnt);
  if (v16)
  {
    v17 = v16;
    if (v16 != 46)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_8_0();
        snprintf((v12 + v8), v4, "%s", v108);
        OUTLINED_FUNCTION_0_0();
        if (v102 < 0)
        {
          v101 = 0;
        }

        v8 += v101;
      }

      if (v10 >= v8)
      {
        v99 = v10 - v8;
      }

      else
      {
        v99 = 0;
      }

      mach_error_string(v17);
      v100 = snprintf((v12 + v8), v99, "Voucher: 0x%x Failed to get contents %s\n");
      goto LABEL_116;
    }
  }

  if (!*recipesCnt)
  {
    if (v6)
    {
      OUTLINED_FUNCTION_8_0();
      snprintf((v12 + v8), v4, "%s", v108);
      OUTLINED_FUNCTION_0_0();
      if (v104 < 0)
      {
        v103 = 0;
      }

      v8 += v103;
    }

    if (v10 >= v8)
    {
      v99 = v10 - v8;
    }

    else
    {
      v99 = 0;
    }

    v100 = snprintf((v12 + v8), v99, "Voucher: 0x%x has no contents\n");
LABEL_116:
    v105 = v100;
    if (v99 < v100)
    {
      v105 = v99;
    }

    if (v100 < 0)
    {
      v105 = 0;
    }

    v24 = v105 + v8;
    goto LABEL_121;
  }

  if (v6)
  {
    if (v10 >= v8)
    {
      v18 = v10 - v8;
    }

    else
    {
      v18 = 0;
    }

    v19 = snprintf((v12 + v8), v18, "%s", v6);
    v20 = v19;
    if (v18 < v19)
    {
      v20 = v18;
    }

    if (v19 < 0)
    {
      v20 = 0;
    }

    v8 += v20;
  }

  if (v10 >= v8)
  {
    v21 = v10 - v8;
  }

  else
  {
    v21 = 0;
  }

  v22 = snprintf((v12 + v8), v21, "Voucher: 0x%x\n", object_addr[1]);
  v23 = v22;
  if (v21 < v22)
  {
    v23 = v21;
  }

  if (v22 < 0)
  {
    v23 = 0;
  }

  v24 = v23 + v8;
  if (*recipesCnt)
  {
    v113 = v4;
    v114 = v6;
    v25 = 0;
    while (1)
    {
      v26 = &recipes[v25];
      if (*&recipes[v25])
      {
        break;
      }

LABEL_90:
      v25 = (v25 + *(v26 + 3) + 16);
      if (*recipesCnt <= v25)
      {
        goto LABEL_121;
      }
    }

    if (v6)
    {
      OUTLINED_FUNCTION_5_0();
      snprintf((v12 + v24), v1, "%s", v6);
      OUTLINED_FUNCTION_2_2();
      if (v28 < 0)
      {
        v27 = 0;
      }

      v24 += v27;
      v29 = *v26;
    }

    v30 = OUTLINED_FUNCTION_4_0();
    snprintf(v30, v31, "Key: %u, ", v109);
    OUTLINED_FUNCTION_2_2();
    if (v33 < 0)
    {
      v32 = 0;
    }

    v34 = v32 + v24;
    v35 = *(v26 + 1);
    v36 = OUTLINED_FUNCTION_9_0();
    snprintf(v36, v37, "Command: %u, ", v110);
    OUTLINED_FUNCTION_3_2();
    if (v39 < 0)
    {
      v38 = 0;
    }

    v40 = v38 + v34;
    v41 = *(v26 + 2);
    v42 = OUTLINED_FUNCTION_9_0();
    snprintf(v42, v43, "Previous voucher: 0x%x, ", v111);
    OUTLINED_FUNCTION_3_2();
    if (v45 < 0)
    {
      v44 = 0;
    }

    v46 = v44 + v40;
    v47 = *(v26 + 3);
    v48 = OUTLINED_FUNCTION_9_0();
    snprintf(v48, v49, "Content size: %u\n", v112);
    OUTLINED_FUNCTION_3_2();
    if (v51 < 0)
    {
      v50 = 0;
    }

    v1 = v50 + v46;
    if (*v26 == 3)
    {
      if (v6)
      {
        v58 = OUTLINED_FUNCTION_10_0();
        snprintf(v58, v59, "%s", v109);
        OUTLINED_FUNCTION_3_2();
        if (v61 < 0)
        {
          v60 = 0;
        }

        v1 += v60;
      }

      v62 = OUTLINED_FUNCTION_6_0();
      snprintf(v62, v63, "RESOURCE ACCOUNTING INFO: %s");
      goto LABEL_49;
    }

    if (*v26 == 2)
    {
      if (v6)
      {
        v52 = OUTLINED_FUNCTION_10_0();
        snprintf(v52, v53, "%s", v109);
        OUTLINED_FUNCTION_3_2();
        if (v55 < 0)
        {
          v54 = 0;
        }

        v1 += v54;
      }

      v56 = OUTLINED_FUNCTION_6_0();
      snprintf(v56, v57, "IMPORTANCE INFO: %s");
LABEL_49:
      OUTLINED_FUNCTION_3_2();
      if (v65 < 0)
      {
        v64 = 0;
      }

      v24 = v64 + v1;
      goto LABEL_86;
    }

    v66 = v6;
    if (*(v26 + 3) >= v113)
    {
      v67 = v113;
    }

    else
    {
      v67 = *(v26 + 3);
    }

    if (v10 >= v1)
    {
      v68 = v10 - v1;
    }

    else
    {
      v68 = 0;
    }

    snprintf((v12 + v1), v68, "%s%s:\n", v66, "Recipe Contents");
    OUTLINED_FUNCTION_3_2();
    if (v70 < 0)
    {
      v69 = 0;
    }

    v24 = v69 + v1;
    if (v67)
    {
      v71 = 0;
      v72 = v26 + 16;
      do
      {
        v73 = v71 & 0xF;
        if ((v71 & 0xF) == 0)
        {
          if (v71)
          {
            OUTLINED_FUNCTION_5_0();
            v74 = OUTLINED_FUNCTION_4_0();
            snprintf(v74, v75, "  %s\n", v109);
            OUTLINED_FUNCTION_2_2();
            if (v77 < 0)
            {
              v76 = 0;
            }

            v24 += v76;
          }

          OUTLINED_FUNCTION_5_0();
          snprintf((v12 + v24), v1, "%s  %04lx ", v114, v71);
          OUTLINED_FUNCTION_2_2();
          if (v79 < 0)
          {
            v78 = 0;
          }

          v24 += v78;
        }

        OUTLINED_FUNCTION_5_0();
        v80 = v72[v71];
        v81 = OUTLINED_FUNCTION_4_0();
        snprintf(v81, v82, " %02x", v109);
        OUTLINED_FUNCTION_2_2();
        if (v84 < 0)
        {
          v83 = 0;
        }

        v24 += v83;
        v85 = v72[v71];
        if ((v85 - 127) < 0xFFFFFFA1)
        {
          LOBYTE(v85) = 46;
        }

        recipes[v73 + 0x2000] = v85;
        ++v71;
      }

      while (v67 != v71);
      recipes[v73 + 8193] = 0;
      if ((v67 & 0xF) == 0)
      {
        v6 = v114;
LABEL_86:
        if (*(v12 + v24 - 1) != 10)
        {
          OUTLINED_FUNCTION_5_0();
          snprintf(v94, v1, "\n");
          OUTLINED_FUNCTION_2_2();
          if (v96 < 0)
          {
            v95 = 0;
          }

          v24 += v95;
        }

        goto LABEL_90;
      }

      v86 = v67 + 1;
      do
      {
        OUTLINED_FUNCTION_5_0();
        snprintf((v12 + v24), v1, "   ");
        OUTLINED_FUNCTION_2_2();
        if (v88 < 0)
        {
          v87 = 0;
        }

        v24 += v87;
      }

      while ((v86++ & 0xF) != 0);
      OUTLINED_FUNCTION_5_0();
      v90 = OUTLINED_FUNCTION_4_0();
      snprintf(v90, v91, "  %s\n", v109);
      OUTLINED_FUNCTION_2_2();
      if (v93 < 0)
      {
        v92 = 0;
      }

      v24 += v92;
    }

    v6 = v114;
    goto LABEL_86;
  }

LABEL_121:
  v106 = *MEMORY[0x1E69E9840];
  return v24;
}

void _voucher_task_mach_voucher_init_cold_1(int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Could not create task mach voucher";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _voucher_insert_cold_3(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: base voucher has non-zero activity value";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _voucher_insert_cold_4(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: base voucher has nested base voucher";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _voucher_create_with_mach_msgv_cold_1(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Invalid msg aux data size.";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void voucher_decrement_importance_count4CF_cold_2(uint64_t a1, int a2)
{
  _dispatch_bug(766, a1);
  if (a2 == 5)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Voucher importance count underflow";
    qword_1EBC5B9B0 = a1;
    __break(1u);
  }
}

uint64_t _voucher_xref_dispose_cold_3(uint64_t result, void *a2)
{
  if (result == 1)
  {
    return _os_object_dispose(a2, a2);
  }

  qword_1EBC5B980 = "API MISUSE: Over-release of an object";
  __break(1u);
  return result;
}

void _voucher_activity_debug_channel_init_cold_2(int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Couldn't get debug control port";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _voucher_process_can_use_arbitrary_personas_init_cold_2(int a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: mach_voucher_attr_command(BANK_PERSONA_ADOPT_ANY) failed";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void voucher_activity_initialize_4libtrace_cold_1()
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: voucher_activity_initialize_4libtrace called twice";
  qword_1EBC5B9B0 = _voucher_libtrace_hooks;
  __break(1u);
}

void voucher_activity_initialize_4libtrace_cold_2(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: unsupported vah_version";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void voucher_activity_create_with_data_2_cold_3(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Absurd publen";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void voucher_activity_flush_cold_2(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Allocation should always fail";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void firehose_buffer_create_cold_1()
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Invalid values for MADVISE_CHUNK_COUNT / CHUNK_SIZE";
  qword_1EBC5B9B0 = 0x4000;
  __break(1u);
}

void firehose_buffer_create_cold_3(int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Unable to allocate mach port";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void firehose_client_reconnect_cold_3(int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Unable to make memory port";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void firehose_client_reconnect_cold_10(int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Unable to register with logd";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void firehose_client_reconnect_cold_12(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid size for the firehose buffer";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

uint64_t firehose_buffer_tracepoint_reserve_slow_cold_1(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v10 = a3 + (*(a1 + 12) << 7);
  v11 = (v10 + 640);
  v12 = *(v10 + 640);
  if ((v12 & 0x400000000000) != 0)
  {
    v15 = v12 & 0xFFFF3FFFFFFFFFFDLL | 0xC00000000000;
    for (i = *(v10 + 640); ; v15 = i & 0xFFFF3FFFFFFFFFFDLL | 0xC00000000000)
    {
      atomic_compare_exchange_strong_explicit(v11, &i, v15, memory_order_relaxed, memory_order_relaxed);
      if (i == v12)
      {
        break;
      }

      v12 = i;
    }
  }

  else
  {
    *(v10 + 648) = mach_continuous_time();
    v12 = *v11;
    v13 = *v11 & 0xFFFF3FFFFFFFFFFDLL | 0xC00000000000;
    for (j = *v11; ; v13 = j & 0xFFFF3FFFFFFFFFFDLL | 0xC00000000000)
    {
      atomic_compare_exchange_strong_explicit(v11, &j, v13, memory_order_release, memory_order_relaxed);
      if (j == v12)
      {
        break;
      }

      v12 = j;
    }
  }

  if ((v12 & 2) != 0)
  {
    _dispatch_gate_broadcast_slow(v11, v12);
  }

  *(a1 + 13) = a2;
  result = firehose_buffer_tracepoint_reserve_wait_for_chunks_from_logd(a3, a1, a4);
  *a5 = result;
  return result;
}

void firehose_drain_notifications_once_cold_1(int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: firehose_drain_notifications_once() failed";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void firehose_drain_notifications_once_cold_2(uint64_t a1)
{
  v1 = *(a1 + 20);
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: firehose_mig_server doesn't handle replies";
  qword_1EBC5B9B0 = v1;
  __break(1u);
}

size_t _dispatch_io_debug(void *a1, char *a2, size_t a3)
{
  ClassName = object_getClassName(a1);
  snprintf(a2, a3, "%s[%p] = { ", ClassName + 12, a1);
  OUTLINED_FUNCTION_4_1();
  if (v8 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = OUTLINED_FUNCTION_3_3();
  v13 = v9 + _dispatch_object_debug_attr(v10, v11, v12);
  v14 = OUTLINED_FUNCTION_3_3();
  v17 = v13 + _dispatch_io_debug_attr(v14, v15, v16);
  v18 = a3 - v17;
  v19 = snprintf(&a2[v17], v18, "}");
  v20 = v19;
  if (v18 < v19)
  {
    v20 = v18;
  }

  if (v19 < 0)
  {
    v20 = 0;
  }

  return v20 + v17;
}

uint64_t _dispatch_io_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 120);
  v5 = &unk_1BB5822E3;
  if (v3)
  {
    v6 = v3[9];
    if (!v6)
    {
      v6 = &unk_1BB5822E3;
    }
  }

  else
  {
    v6 = &unk_1BB5822E3;
  }

  v7 = "closed, ";
  if ((v4 & 1) == 0)
  {
    v7 = &unk_1BB5822E3;
  }

  if ((v4 & 2) != 0)
  {
    v8 = "stopped, ";
  }

  else
  {
    v8 = v7;
  }

  if (*(a1 + 72))
  {
    v9 = "random";
  }

  else
  {
    v9 = "stream";
  }

  if (*(a1 + 104))
  {
    v5 = "(strict)";
  }

  snprintf(__str, __size, "type = %s, fd = 0x%lx, %sfd_entry = %p, queue = %p, target = %s[%p], barrier_queue = %p, barrier_group = %p, err = 0x%x, low = 0x%zx, high = 0x%zx, interval%s = %llu ", v9, *(a1 + 128), v8, *(a1 + 112), *(a1 + 48), v6, v3, *(a1 + 56), *(a1 + 64), *(a1 + 144), *(a1 + 80), *(a1 + 88), v5, *(a1 + 96));
  OUTLINED_FUNCTION_4_1();
  if (v11 >= 0)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

size_t _dispatch_operation_debug(void *a1, char *a2, size_t a3)
{
  ClassName = object_getClassName(a1);
  snprintf(a2, a3, "%s[%p] = { ", ClassName + 12, a1);
  OUTLINED_FUNCTION_4_1();
  if (v8 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = OUTLINED_FUNCTION_3_3();
  v13 = v9 + _dispatch_object_debug_attr(v10, v11, v12);
  v14 = OUTLINED_FUNCTION_3_3();
  v17 = v13 + _dispatch_operation_debug_attr(v14, v15, v16);
  v18 = a3 - v17;
  v19 = snprintf(&a2[v17], v18, "}");
  v20 = v19;
  if (v18 < v19)
  {
    v20 = v18;
  }

  if (v19 < 0)
  {
    v20 = 0;
  }

  return v20 + v17;
}

uint64_t _dispatch_operation_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = v3[3];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 144);
  if (v6)
  {
    v7 = *v6;
  }

  else
  {
    v7 = -1;
  }

  v8 = &unk_1BB5822E3;
  if (v4 && v4[9])
  {
    v8 = v4[9];
  }

  v9 = &unk_1BB5822E3;
  if (v5)
  {
    v10 = v5[9];
    if (!v10)
    {
      v10 = &unk_1BB5822E3;
    }
  }

  else
  {
    v10 = &unk_1BB5822E3;
  }

  v11 = "write";
  if (!*(a1 + 56))
  {
    v11 = "read";
  }

  if (*(a1 + 64))
  {
    v12 = "random";
  }

  else
  {
    v12 = "stream";
  }

  if (*(a1 + 96))
  {
    v9 = "(strict)";
  }

  snprintf(__str, __size, "type = %s %s, fd = 0x%lx, fd_entry = %p, channel = %p, queue = %p -> %s[%p], target = %s[%p], offset = %lld, length = %zu, done = %zu, undelivered = %zu, flags = %u, err = 0x%x, low = 0x%zx, high = 0x%zx, interval%s = %llu ", v12, v11, v7, v6, *(a1 + 136), v3, v8, v4, v10, v5, *(a1 + 104), *(a1 + 112), *(a1 + 216), *(a1 + 200) + *(a1 + 208), *(a1 + 184), *(a1 + 120), *(a1 + 72), *(a1 + 80), v9, *(a1 + 88));
  OUTLINED_FUNCTION_4_1();
  if (v14 >= 0)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

void *__dispatch_io_create_block_invoke_cold_2(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_9_1(a1);
  if (!v2)
  {
    result = OUTLINED_FUNCTION_5_1(result);
    if (v4 ^ v5 | v2)
    {
      if (v2)
      {
        return _os_object_dispose(result, v3);
      }

      else
      {
        qword_1EBC5B980 = "API MISUSE: Over-release of an object";
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t __dispatch_io_create_with_path_block_invoke_cold_2(uint64_t result, void *a2)
{
  if (result == 1)
  {
    return _os_object_dispose(a2, a2);
  }

  qword_1EBC5B980 = "API MISUSE: Over-release of an object";
  __break(1u);
  return result;
}

void *__dispatch_io_create_with_path_block_invoke_cold_3(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_9_1(a1);
  if (!v2)
  {
    result = OUTLINED_FUNCTION_5_1(result);
    if (v4 ^ v5 | v2)
    {
      if (v2)
      {
        return _os_object_dispose(result, v3);
      }

      else
      {
        qword_1EBC5B980 = "API MISUSE: Over-release of an object";
        __break(1u);
      }
    }
  }

  return result;
}

void *__dispatch_io_create_with_io_block_invoke_cold_2(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_7_0(a1);
  if (!v4)
  {
    result = OUTLINED_FUNCTION_5_1(v3);
    if (v7 ^ v8 | v4)
    {
      if (!v4)
      {
        goto LABEL_14;
      }

      _os_object_dispose(result, v6);
    }
  }

  result = *v1;
  if (*(*v1 + 8) == v2)
  {
    return result;
  }

  result = OUTLINED_FUNCTION_5_1(result);
  if (!(v7 ^ v8 | v9))
  {
    return result;
  }

  if (!v9)
  {
    qword_1EBC5B980 = "API MISUSE: Over-release of an object";
    __break(1u);
LABEL_14:
    qword_1EBC5B980 = "API MISUSE: Over-release of an object";
    __break(1u);
    return result;
  }

  return _os_object_dispose(result, v10);
}

void *__dispatch_io_create_with_io_block_invoke_2_cold_5(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_7_0(a1);
  if (!v4)
  {
    result = OUTLINED_FUNCTION_5_1(v3);
    if (v7 ^ v8 | v4)
    {
      if (!v4)
      {
        qword_1EBC5B980 = "API MISUSE: Over-release of an object";
        __break(1u);
        goto LABEL_14;
      }

      _os_object_dispose(result, v6);
    }
  }

  result = *v1;
  if (*(*v1 + 8) == v2)
  {
    return result;
  }

  result = OUTLINED_FUNCTION_5_1(result);
  if (!(v7 ^ v8 | v9))
  {
    return result;
  }

  if (!v9)
  {
LABEL_14:
    qword_1EBC5B980 = "API MISUSE: Over-release of an object";
    __break(1u);
    return result;
  }

  return _os_object_dispose(result, v10);
}

void dispatch_io_set_high_water_cold_2(uint64_t a1, void *a2)
{
  v2 = OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_6_1(COERCE_DOUBLE(0x40000000), v2, v3);
  OUTLINED_FUNCTION_8_1(v4, v5, v6, v7);
}

void dispatch_io_set_low_water_cold_2(uint64_t a1, void *a2)
{
  v2 = OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_6_1(COERCE_DOUBLE(0x40000000), v2, v3);
  OUTLINED_FUNCTION_8_1(v4, v5, v6, v7);
}

void dispatch_io_set_interval_cold_2(uint64_t a1, void *a2)
{
  v2 = OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_6_1(COERCE_DOUBLE(0x40000000), v2, v3);
  v4[2] = __dispatch_io_set_interval_block_invoke;
  v4[3] = &__block_descriptor_tmp_13;
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  dispatch_channel_async(v8, v4);
}

void _dispatch_io_set_target_queue_cold_2(uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed) > 0)
  {
    v2 = OUTLINED_FUNCTION_0_4(a1, a2);
    OUTLINED_FUNCTION_6_1(COERCE_DOUBLE(0x40000000), v2, v3);
    OUTLINED_FUNCTION_8_1(v4, v5, v6, v7);
  }

  else
  {
    qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }
}

void dispatch_io_close_cold_2(uint64_t a1, void *a2)
{
  v2 = OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_6_1(COERCE_DOUBLE(0x40000000), v2, v3);
  v4[2] = ___dispatch_io_stop_block_invoke;
  v4[3] = &__block_descriptor_tmp_54;
  v4[4] = v5;
  dispatch_channel_async(v6, v4);
}

void dispatch_io_close_cold_4(uint64_t a1, void *a2)
{
  v2 = OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_6_1(COERCE_DOUBLE(0x40000000), v2, v3);
  v4[2] = __dispatch_io_close_block_invoke;
  v4[3] = &__block_descriptor_tmp_17;
  v4[4] = v5;
  dispatch_channel_async(v6, v4);
}

void dispatch_io_barrier_cold_2(uint64_t a1, void *a2)
{
  v2 = OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_6_1(COERCE_DOUBLE(0x40000000), v2, v3);
  v4[2] = __dispatch_io_barrier_block_invoke;
  v4[3] = &unk_1E7FB1748;
  v4[4] = v6;
  v4[5] = v5;
  dispatch_channel_async(v7, v4);
}

uint64_t _dispatch_operation_create_cold_4(uint64_t result, uint64_t a2)
{
  *(result + 136) = a2;
  v2 = *(a2 + 72);
  v3 = *(a2 + 88);
  *(result + 96) = *(a2 + 104);
  *(result + 64) = v2;
  *(result + 80) = v3;
  v4 = *(a2 + 24);
  do
  {
    v5 = v4;
    v4 = *(v4 + 24);
  }

  while (v4);
  *(result + 24) = v5;
  return result;
}

void _dispatch_operation_dispose_cold_2(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 176);
  if (v3 && !*(a1 + 56))
  {
    free(v3);
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    _dispatch_objc_release(v4);
  }

  v5 = *(a1 + 232);
  if (v5)
  {
    _dispatch_objc_release(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 128);

  _Block_release(v7);
}

void ___dispatch_io_stop_block_invoke_2_cold_2(void *block, uint64_t a2)
{
  v3 = _dispatch_io_fds_lockq;
  *block = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___dispatch_io_stop_block_invoke_3;
  block[3] = &__block_descriptor_tmp_52;
  block[4] = a2;
  dispatch_channel_async(v3, block);
}

void _dispatch_fd_entry_cleanup_operations_cold_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  dispatch_suspend(*(a1 + 64));
  v8 = *(*a2 + 72);
  *a3 = MEMORY[0x1E69E9820];
  a3[1] = 0x40000000;
  a3[2] = ___dispatch_fd_entry_cleanup_operations_block_invoke;
  a3[3] = &__block_descriptor_tmp_55;
  a3[4] = a1;
  a3[5] = a4;
  dispatch_channel_async(v8, a3);
}

void _dispatch_operation_should_enqueue_cold_2(uint64_t a1, dispatch_queue_t queue, int64_t *a3)
{
  v3 = *(a1 + 152);
  if (!v3)
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
    v6 = dispatch_time(0, *a3);
    dispatch_source_set_timer(v3, v6, *a3, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = ___dispatch_operation_timer_block_invoke;
    v7[3] = &__block_descriptor_tmp_63;
    v7[4] = v3;
    v7[5] = a1;
    dispatch_source_set_event_handler(v3, v7);
    *(a1 + 152) = v3;
  }

  dispatch_resume(v3);
}

dispatch_queue_t _dispatch_disk_init_cold_2(int a1, char *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = qword_1EBC5B908;
  v9 = _dispatch_object_alloc(OS_dispatch_disk, 8 * qword_1EBC5B908 + 136);
  *a4 = v9;
  *(v9 + 16) = -1985229329;
  *(v9 + 12) = 0;
  *(v9 + 128) = v8;
  *(v9 + 24) = &unk_1ED3F3B40;
  *(v9 + 104) = a1;
  *(v9 + 48) = 0;
  *(v9 + 56) = v9 + 48;
  *(v9 + 64) = 0;
  snprintf(a2, 0x2DuLL, "com.apple.libdispatch-io.deviceq.%d", a1);
  result = dispatch_queue_create(a2, 0);
  *(v9 + 72) = result;
  v11 = *a3;
  *(v9 + 112) = *a3;
  if (v11)
  {
    *(v11 + 120) = v9 + 112;
  }

  *a3 = v9;
  *(v9 + 120) = a3;
  return result;
}

void ___dispatch_operation_deliver_data_block_invoke_cold_2(uint64_t a1, void **a2)
{
  dispatch_resume(*(*(a1 + 56) + 64));
  v3 = *a2;

  _dispatch_objc_release(v3);
}

__objc2_class **dispatch_data_create_alloc(unint64_t a1, __objc2_class ***a2)
{
  if (!a1)
  {
    v5 = 0;
    result = &_dispatch_data_empty;
    if (!a2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (a1 < 0xFFFFFFFFFFFFFFC0)
  {
    result = _dispatch_object_alloc_bridged(OS_dispatch_data, a1 + 64);
    result[7] = 0;
  }

  else
  {
    result = 0;
  }

  v5 = result + 8;
  result[5] = &__block_literal_global_4130;
  result[6] = a1;
  result[4] = (result + 8);
  if (a2)
  {
LABEL_6:
    *a2 = v5;
  }

  return result;
}

uint64_t _dispatch_data_debug(uint64_t a1, char *__str, size_t __size)
{
  v6 = snprintf(__str, __size, "data[%p] = { ", a1);
  v7 = v6;
  if (v6 >= __size)
  {
    v7 = __size;
  }

  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (v10)
  {
    snprintf(&__str[v8], __size - v8, "composite, size = %zd, num_records = %zd ", *(a1 + 48), v10);
    OUTLINED_FUNCTION_0_0();
    if (v12 < 0)
    {
      v11 = 0;
    }

    v13 = v11 + v8;
    if (*(a1 + 32))
    {
      snprintf(&__str[v13], __size - v13, ", flatbuf = %p ", *(a1 + 32));
      OUTLINED_FUNCTION_0_0();
      if (v15 < 0)
      {
        v14 = 0;
      }

      v13 += v14;
    }

    v16 = 0;
    v17 = (a1 + 80);
    do
    {
      v18 = snprintf(&__str[v13], __size - v13, "record[%zd] = { from = %zd, length = %zd, data_object = %p }, ", v16, *(v17 - 1), *v17, *(v17 - 2));
      v19 = v18;
      if (__size - v13 < v18)
      {
        v19 = __size - v13;
      }

      if (v18 < 0)
      {
        v19 = 0;
      }

      v13 += v19;
      ++v16;
      v17 += 3;
    }

    while (*(a1 + 56) > v16);
  }

  else
  {
    snprintf(&__str[v8], __size - v8, "leaf, size = %zd, buf = %p ", *(a1 + 48), *(a1 + 32));
    OUTLINED_FUNCTION_0_0();
    if (v21 < 0)
    {
      v20 = 0;
    }

    v13 = v20 + v8;
  }

  v22 = __size - v13;
  v23 = snprintf(&__str[v13], v22, "}");
  v24 = v23;
  if (v22 < v23)
  {
    v24 = v22;
  }

  if (v23 < 0)
  {
    v24 = 0;
  }

  return v24 + v13;
}

dispatch_data_t dispatch_data_create_map(dispatch_data_t data, const void **buffer_ptr, size_t *size_ptr)
{
  isa = data[6].isa;
  if (!isa)
  {
    v11 = 0;
    v6 = &_dispatch_data_empty;
    if (buffer_ptr)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v6 = data;
  v7 = data[7].isa;
  if (v7 == 1)
  {
    p_isa = data[8].isa;
    v8 = data[9].isa;
    if (!p_isa[7])
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = 0;
    p_isa = &data->isa;
    if (!v7)
    {
LABEL_4:
      v10 = p_isa[4];
      goto LABEL_5;
    }
  }

  v10 = p_isa[4];
  if (v10)
  {
LABEL_5:
    if (v10)
    {
      v11 = v8 + v10;
      _dispatch_objc_retain(data);
      if (!buffer_ptr)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  v12 = _dispatch_data_flatten(data);
  v11 = v12;
  if (v12)
  {
    v6 = dispatch_data_create(v12, isa, 0, &__block_literal_global);
    if (!buffer_ptr)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  isa = 0;
  v6 = 0;
  if (buffer_ptr)
  {
LABEL_14:
    *buffer_ptr = v11;
  }

LABEL_15:
  if (size_ptr)
  {
    *size_ptr = isa;
  }

  return v6;
}

char *dispatch_data_get_flattened_bytes_4libxpc(void *a1)
{
  if (!a1[6])
  {
    return 0;
  }

  v1 = a1;
  v2 = a1[7];
  if (v2 == 1)
  {
    v1 = a1[8];
    v3 = a1[9];
    if (!*(v1 + 56))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = 0;
    if (!v2)
    {
LABEL_4:
      v4 = *(v1 + 32);
      goto LABEL_5;
    }
  }

  v4 = *(v1 + 32);
  if (v4)
  {
LABEL_5:
    if (v4)
    {
      return (v4 + v3);
    }
  }

  result = _dispatch_data_flatten(v1);
  if (result)
  {
    v6 = 0;
    atomic_compare_exchange_strong_explicit((v1 + 32), &v6, result, memory_order_release, memory_order_relaxed);
    if (v6)
    {
      free(result);
      result = v6;
    }

    result += v3;
  }

  return result;
}

void dispatch_data_create_subrange_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: dispatch_data_create_subrange out of bounds";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_data_copy_region_cold_1(uint64_t a1, uint64_t a2)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: dispatch_data_copy_region out of bounds";
  qword_1EBC5B9B0 = a1 + a2;
  __break(1u);
}

uint64_t dispatch_time_to_nsecs(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  switch(a1)
  {
    case 0x8000000000000000:
      a1 = mach_continuous_time();
LABEL_11:
      v6 = 2;
      goto LABEL_16;
    case 0xFFFFFFFFFFFFFFFELL:
      a1 = clock_gettime_nsec_np(_CLOCK_REALTIME);
      break;
    case 0xFFFFFFFFFFFFFFFFLL:
      v5 = 0;
      *a2 = 0;
      goto LABEL_21;
    case 0uLL:
      a1 = mach_absolute_time();
LABEL_15:
      v6 = 1;
LABEL_16:
      *a2 = v6;
      if (_dispatch_host_time_mach2nano)
      {
        a1 = _dispatch_host_time_mach2nano(a1);
      }

      else if (a1)
      {
        OUTLINED_FUNCTION_0_5();
        if (!v8 & v7)
        {
          v5 = 1;
          a1 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_1_4();
        if (!(!v8 & v7))
        {
          v5 = 1;
          a1 = 125 * v9 / 3;
          goto LABEL_21;
        }

        a1 = OUTLINED_FUNCTION_2_4(v9);
      }

      goto LABEL_8;
    default:
      if ((a1 & 0x8000000000000000) == 0)
      {
        if (a1 >> 62)
        {
          a1 = -1;
        }

        goto LABEL_15;
      }

      if ((a1 & 0x4000000000000000) == 0)
      {
        a1 &= 0x3FFFFFFFFFFFFFFFuLL;
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_3_4();
      if (v8)
      {
        a1 = -v11;
      }

      else
      {
        a1 = v12;
      }

      break;
  }

  *a2 = 3;
LABEL_8:
  v5 = 1;
LABEL_21:
  *a3 = a1;
  return v5;
}

uint64_t dispatch_time_from_nsec(uint64_t a1, unint64_t a2)
{
  if (a2 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = a2;
  }

  if (_dispatch_host_time_nano2mach)
  {
    v5 = _dispatch_host_time_nano2mach(v4);
  }

  else if (a2 > 0x7FFFFFFFFFFFFFFELL)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if (a2 >= 0x5555555555555555)
  {
    v5 = 3 * (v4 / 0x7D);
  }

  else
  {
    v5 = 3 * v4 / 0x7D;
  }

  if (v5 > 0x3FFFFFFFFFFFFFFELL)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  v7 = v5 | 0x8000000000000000;
  if (v5 > 0x3FFFFFFFFFFFFFFELL)
  {
    v7 = -1;
  }

  v8 = -1;
  if (a2 <= 0x3FFFFFFFFFFFFFFELL)
  {
    v8 = -v4;
  }

  if (a1 == 2)
  {
    v8 = v7;
  }

  if (a1 == 1)
  {
    return v6;
  }

  else
  {
    return v8;
  }
}

unint64_t _dispatch_timeout(unint64_t result)
{
  v1 = result == 0x8000000000000000 || result == 0;
  if (v1)
  {
    return 0;
  }

  if (result == -1)
  {
    return result;
  }

  if (result == -2)
  {
    return 0;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    if ((result & 0x4000000000000000) != 0)
    {
      OUTLINED_FUNCTION_3_4();
      if (v1)
      {
        v9 = -v7;
      }

      else
      {
        v9 = v8;
      }

      v10 = clock_gettime_nsec_np(_CLOCK_REALTIME);
      if (v9 >= v10)
      {
        return v9 - v10;
      }

      else
      {
        return 0;
      }
    }

    v2 = result & 0x3FFFFFFFFFFFFFFFLL;
    v3 = mach_continuous_time();
  }

  else
  {
    v2 = result >> 62 ? -1 : result;
    v3 = mach_absolute_time();
  }

  if (v2 <= v3)
  {
    return 0;
  }

  v4 = _dispatch_host_time_mach2nano;
  if (_dispatch_host_time_mach2nano)
  {

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_0_5();
    if (!v1 & v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_1_4();
      if (v5)
      {
        return OUTLINED_FUNCTION_2_4(v6);
      }

      else
      {
        return 125 * v6 / 3;
      }
    }
  }
}

unint64_t _dispatch_mach_host_time_mach2nano(unint64_t result)
{
  v1 = result;
  if (result)
  {
    if ((_dispatch_host_time_data_1 & 1) == 0)
    {
      result = 0x7FFFFFFFFFFFFFFFLL;
      if (v1 <= 0x7FFFFFFFFFFFFFFELL)
      {
        v2 = v1 * *&_dispatch_host_time_data_0 + 0.5;
        if (v2 < 9.22337204e18)
        {
          return v2;
        }
      }
    }
  }

  return result;
}

unint64_t _dispatch_mach_host_time_nano2mach(unint64_t result)
{
  v1 = result;
  if (result)
  {
    if ((_dispatch_host_time_data_1 & 1) == 0)
    {
      result = 0x7FFFFFFFFFFFFFFFLL;
      if (v1 <= 0x7FFFFFFFFFFFFFFELL)
      {
        v2 = v1 / *&_dispatch_host_time_data_0 + 0.5;
        if (v2 < 9.22337204e18)
        {
          return v2;
        }
      }
    }
  }

  return result;
}

uint64_t _dispatch_time_init_cold_1(uint64_t result, unsigned int a2)
{
  *&_dispatch_host_time_data_0 = result / a2;
  _dispatch_host_time_data_1 = result == a2;
  _dispatch_host_time_mach2nano = _dispatch_mach_host_time_mach2nano;
  _dispatch_host_time_nano2mach = _dispatch_mach_host_time_nano2mach;
  return result;
}

uint64_t dispatch_benchmark_f(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (dispatch_benchmark_f_pred == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  dispatch_once_f(&dispatch_benchmark_f_pred, &dispatch_benchmark_f_bdata, _dispatch_benchmark_init);
  if (!a1)
  {
    return 0;
  }

LABEL_3:
  mach_absolute_time();
  v6 = a1;
  do
  {
    a3(a2);
    --v6;
  }

  while (v6);
  mach_absolute_time();
  return __udivti3() - qword_1EE926C50;
}