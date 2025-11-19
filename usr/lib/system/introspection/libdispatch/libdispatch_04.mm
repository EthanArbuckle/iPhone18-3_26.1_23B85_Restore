uint64_t voucher_mach_msg_fill_aux(uint64_t a1, unsigned int a2)
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  if (a2 >= 0x28)
  {
    v4 = *(v2 + 48);
    if (v4)
    {
      *a1 = xmmword_45410;
      v5 = *(v2 + 56);
      *(a1 + 16) = v4;
      *(a1 + 24) = v5;
      return 40;
    }
  }

  return v3;
}

void _voucher_activity_id_allocate_slow(uint64_t a1)
{
  activity_id = 0;
  v2 = mach_generate_activity_id(mach_task_self_, 1, &activity_id);
  if (v2)
  {
    v3 = v2;
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Could not generate an activity ID";
    qword_6D1F0 = v2;
    __break(1u);
  }

  else
  {
    if (16 * (activity_id & 0xFFFFFFFFFFFFFLL))
    {
      v2 = 16 * (activity_id & 0xFFFFFFFFFFFFFLL);
    }

    else
    {
      v2 = 1;
    }

    v3 = &_voucher_aid_next;
    if (a1)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  atomic_compare_exchange_strong_explicit(v3, &v4, v2 + 1, memory_order_relaxed, memory_order_relaxed);
  if (v4)
  {
LABEL_6:
    __swp(v2, v3);
  }
}

uint64_t _firehose_task_buffer_init()
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  v0 = getpid();
  result = proc_pidinfo(v0, 17, 1uLL, &v5, 56);
  if (result != 56)
  {
    if (!result)
    {
      v4 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      qword_6D1C0 = "BUG IN LIBDISPATCH: Unable to get the unique pid (error)";
      qword_6D1F0 = v4;
      __break(1u);
    }

    qword_6D1C0 = "BUG IN LIBDISPATCH: Unable to get the unique pid (size)";
    qword_6D1F0 = result;
    __break(1u);
  }

  _voucher_unique_pid = v6;
  if (_voucher_libtrace_hooks)
  {
    result = (*(_voucher_libtrace_hooks + 8))(result, v2);
    if (result)
    {
      result = firehose_buffer_create(result, _voucher_unique_pid, _dispatch_memory_warn);
      _firehose_task_buffer = result;
      if (*_voucher_libtrace_hooks >= 4)
      {
        v3 = *(_voucher_libtrace_hooks + 32);
        if (v3)
        {
          return v3(result + 2048, 2048);
        }
      }
    }
  }

  return result;
}

mach_vm_address_t firehose_buffer_create(mach_port_name_t a1, uint64_t a2, uint64_t a3)
{
  address = vm_page_size;
  if (0x4000 % vm_page_size)
  {
    firehose_buffer_create_cold_1();
  }

  v6 = mach_vm_map(mach_task_self_, &address, 0x40000uLL, 0, 1308622851, 0, 0, 0, 3, 7, 2u);
  if (v6)
  {
    if (v6 != 3)
    {
      _dispatch_bug(346, v6);
    }

    v11 = mach_port_deallocate(mach_task_self_, a1);
    if (v11 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (v11)
    {
      _dispatch_bug(91, v11);
    }

    return 0;
  }

  else
  {
    v7 = address;
    *(address + 1676) = a1;
    *(v7 + 1672) = getpid();
    *(v7 + 1664) = a2;
    name = 0;
    *&options.flags = 0x500000033;
    options.8 = 0uLL;
    v8 = mach_port_construct(mach_task_self_, &options, v7, &name);
    if (v8)
    {
      if (v8 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      firehose_buffer_create_cold_3(v8);
    }

    *(v7 + 1688) = name;
    *(v7 + 264) = 20180226;
    *(v7 + 512) = a3;
    for (i = 644; i != 1668; i += 128)
    {
      if (i != 1028)
      {
        *(v7 + i) = -1;
      }
    }

    firehose_buffer_update_limits_unlocked(v7);
    *(v7 + 520) = 31;
    *v7 = 1;
    *(v7 + 2) = 2;
    *(v7 + 4) = 3;
    *(v7 + 6) = 4;
    *(v7 + 464) = 4;
    *(v7 + 320) = 4;
    *(v7 + 256) = 0;
    *(v7 + 258) = 4;
    *(v7 + 260) = 0;
    *(v7 + 262) = 0;
  }

  return v7;
}

uint64_t firehose_buffer_update_limits_unlocked(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = *(result + 512);
  v5 = (result + 644);
  do
  {
    v7 = *v5;
    v5 += 128;
    v6 = v7;
    if (((1 << v3) & 0x93) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = v2 + 1;
    }

    if (((1 << v3) & 0x93) != 0)
    {
      v9 = v1 + 1;
    }

    else
    {
      v9 = v1;
    }

    if (v6 != 255)
    {
      v2 = v8;
      v1 = v9;
    }

    ++v3;
  }

  while (v3 != 8);
  v10 = (2 * (v1 + v2)) | 1;
  if ((v4 & 2) != 0)
  {
    v10 = 3 * v1 + 6 * v2 + 1;
  }

  v11 = v1 + v2 + 3;
  v12 = v1 + 4 * v2;
  if ((v4 & 2) != 0)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = v11;
  }

  if ((v4 & 1) == 0)
  {
    v13 = v10;
  }

  if ((vm_page_size & 0xFFFE000) != 0)
  {
    v14 = v13 % (vm_page_size >> 12);
    if (v14)
    {
      v15 = (vm_page_size >> 12) - v14;
    }

    else
    {
      v15 = 0;
    }

    v13 += v15;
  }

  if (v4)
  {
    v16 = 4;
  }

  else
  {
    v16 = 8;
  }

  if (v16 <= v13)
  {
    v16 = v13;
  }

  v17 = v16 - 1;
  v18 = 2 * v1;
  if ((3 * v16) >> 3 > v18)
  {
    v18 = (3 * v16) >> 3;
  }

  v19 = v16 + 1;
  v20 = *(result + 528);
  *(result + 528) = v17;
  *(result + 530) = v18;
  *(result + 532) = v19;
  *(result + 533) = 0;
  *(result + 534) = 0;
  v21 = ((v18 << 16) | (v19 << 32) | v17) - v20;
  if (v21)
  {
    atomic_fetch_add_explicit((result + 448), v21, memory_order_relaxed);
  }

  return result;
}

mach_vm_address_t firehose_buffer_get_logging_prefs(int a1, mach_vm_size_t *a2)
{
  v9 = 0;
  address = 0;
  size = 0;
  if ((a1 + 1) <= 1)
  {
LABEL_16:
    result = 0;
    *a2 = 0;
    return result;
  }

  logging_prefs = firehose_send_get_logging_prefs(a1, &v9, &size);
  if (logging_prefs)
  {
    if (logging_prefs != 268435459)
    {
      if (logging_prefs == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      _dispatch_bug(600, logging_prefs);
    }

    goto LABEL_16;
  }

  v4 = mach_vm_map(mach_task_self_, &address, size, 0, 1, v9, 0, 0, 1, 1, 2u);
  if (v4 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v4)
  {
    _dispatch_bug(611, v4);
    address = 0;
    size = 0;
  }

  v5 = mach_port_deallocate(mach_task_self_, v9);
  if (v5 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v5)
  {
    _dispatch_bug(617, v5);
  }

  result = address;
  *a2 = size;
  return result;
}

BOOL firehose_buffer_should_send_strings(int *guard)
{
  v1 = guard[420];
  v7 = 0;
  if (v1 == -1)
  {
    return 0;
  }

  if (!v1)
  {
LABEL_10:
    v5 = firehose_client_reconnect(guard, v1, 0);
    if ((v5 - 1) <= 0xFFFFFFFD)
    {
      should_send_strings = firehose_send_should_send_strings(v5, &v7);
      if (!should_send_strings)
      {
        return v7 != 0;
      }

      if (should_send_strings != 268435459)
      {
        if (should_send_strings == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        _dispatch_bug(653, should_send_strings);
      }
    }

    return 0;
  }

  v3 = firehose_send_should_send_strings(v1, &v7);
  if (v3)
  {
    if (v3 != 268435459)
    {
      if (v3 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      _dispatch_bug(641, v3);
    }

    goto LABEL_10;
  }

  return v7 != 0;
}

uint64_t firehose_client_reconnect(int *guard, int a2, unsigned int a3)
{
  v6 = 0;
  *object_handle = 0;
  v7 = guard + 423;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(guard + 423, &v6, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    _dispatch_unfair_lock_lock_slow((guard + 423));
  }

  v9 = guard + 420;
  v10 = guard[a3 + 420];
  if (v10 == a2 && v10 != -1)
  {
    if (a2)
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = v13;
        v15 = v9[v12];
        if (mach_port_destruct(mach_task_self_, v15, 0, guard) == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        v16 = mach_port_deallocate(mach_task_self_, v15);
        if (v16 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        if (v16)
        {
          _dispatch_bug(91, v16);
        }

        v13 = 0;
        v9[v12] = 0;
        v12 = 1;
      }

      while ((v14 & 1) != 0);
    }

    v44 = guard;
    size = 0x40000;
    memory_entry_64 = mach_make_memory_entry_64(mach_task_self_, &size, guard, 4194305, &object_handle[1], 0);
    if (!(size >> 18))
    {
      firehose_client_reconnect_cold_12(size);
    }

    if (memory_entry_64)
    {
      firehose_client_reconnect_cold_3(memory_entry_64);
    }

    if (a2 && (v18 = *(_voucher_libtrace_hooks + 24)) != 0 && ((v19 = v18(&v44, &size), v20 = size, !v19) ? (v21 = v44 == 0) : (v21 = 1), !v21 ? (v22 = size == 0) : (v22 = 1), !v22))
    {
      v33 = mach_make_memory_entry_64(mach_task_self_, &size, v44, 4194305, object_handle, 0);
      if (v33)
      {
        firehose_client_reconnect_cold_3(v33);
      }

      v34 = mach_vm_deallocate(mach_task_self_, v44, size);
      v43 = v20;
      if (v34)
      {
        _dispatch_bug(209, v34);
      }
    }

    else
    {
      v43 = 0;
    }

    v23 = &v49;
    v24 = 1;
    do
    {
      v25 = v24;
      name = 0;
      *&options.flags = 0x100000017;
      options.8 = 0uLL;
      v26 = mach_port_construct(mach_task_self_, &options, guard, &name);
      if (v26)
      {
        if (v26 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        firehose_buffer_create_cold_3(v26);
      }

      v24 = 0;
      *v23 = name;
      v23 = &v50;
    }

    while ((v25 & 1) != 0);
    v10 = *(&v49 + a3);
    v27 = v49;
    v28 = v50;
    v29 = firehose_send_register(guard[419], object_handle[1], 0x40000, v49, v50, guard[422], object_handle[0], v43);
    if (v29)
    {
      if (v29 != 268435459)
      {
        firehose_client_reconnect_cold_10(v29);
      }

      v35 = 0;
      v36 = &v49;
      v37 = 1;
      do
      {
        v38 = v37;
        v39 = *v36;
        if (mach_port_destruct(mach_task_self_, *v36, 0, guard) == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        v40 = mach_port_deallocate(mach_task_self_, v39);
        if (v40 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        if (v40)
        {
          _dispatch_bug(91, v40);
        }

        v37 = 0;
        v9[v35] = -1;
        v36 = &v50;
        v35 = 1;
      }

      while ((v38 & 1) != 0);
      v41 = mach_port_deallocate(mach_task_self_, object_handle[1]);
      if (v41 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      if (v41)
      {
        _dispatch_bug(91, v41);
      }

      if (object_handle[0])
      {
        v42 = mach_port_deallocate(mach_task_self_, object_handle[0]);
        if (v42 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        if (v42)
        {
          _dispatch_bug(91, v42);
        }
      }

      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      guard[420] = v27;
      guard[421] = v28;
    }
  }

  v30 = *(StatusReg + 24) & 0xFFFFFFFC;
  v31 = atomic_exchange_explicit(v7, 0, memory_order_release);
  if (v31 != v30)
  {
    _dispatch_unfair_lock_unlock_slow(v7, v31);
  }

  return v10;
}

void firehose_client_push_reply(uint64_t a1, int a2)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: firehose_push_reply should never be sent to the buffer receive port";
  qword_6D1F0 = a2;
  __break(1u);
}

uint64_t firehose_client_push_notify_async(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 184;
  do
  {
    v4 = *v4;
  }

  while (v4 && *(v4 + 8) != "firehose");
  firehose_client_merge_updates(*(v4 + 16), 1, a2, a3, a4 != 0, 0);
  return 0;
}

uint64_t firehose_client_merge_updates(uint64_t result, int a2, unint64_t a3, unint64_t a4, int a5, void *a6)
{
  if (a5)
  {
    v6 = *(result + 1696);
    if (!v6)
    {
      atomic_compare_exchange_strong_explicit((result + 1696), &v6, 1u, memory_order_relaxed, memory_order_relaxed);
    }
  }

  v7 = *(result + 464);
  do
  {
    v8 = v7;
    if (a3 <= v7)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit((result + 464), &v7, a3, memory_order_relaxed, memory_order_relaxed);
  }

  while (v7 != v8);
  if (a3 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3 - v8;
  }

  v10 = *(result + 488);
  do
  {
    v11 = v10;
    if (a4 <= v10)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit((result + 488), &v10, a4, memory_order_relaxed, memory_order_relaxed);
  }

  while (v10 != v11);
  if (a4 <= v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4 - v11;
  }

  if (v9 | v12)
  {
    v13 = *(result + 256);
    v14 = v13;
    atomic_compare_exchange_strong_explicit((result + 256), &v14, ((v9 + WORD1(v13)) << 16) | ((v12 + HIWORD(v13)) << 48) | v13 & 0xFFFF0000FFFFLL, memory_order_relaxed, memory_order_relaxed);
    if (v14 != v13)
    {
      v15 = v14;
      do
      {
        atomic_compare_exchange_strong_explicit((result + 256), &v15, ((v9 + WORD1(v14)) << 16) | ((v12 + HIWORD(v14)) << 48) | v14 & 0xFFFF0000FFFFLL, memory_order_relaxed, memory_order_relaxed);
        v16 = v15 == v14;
        v14 = v15;
      }

      while (!v16);
    }

    v17 = v9 | (v12 << 16);
    add_explicit = atomic_fetch_add_explicit((result + 448), v17, memory_order_release);
    if (a6)
    {
      *a6 = add_explicit + v17;
    }

    if (a2)
    {
      if (v12)
      {
        atomic_fetch_add_explicit((result + 496), 1uLL, memory_order_relaxed);
      }

      if (v9)
      {
        atomic_fetch_add_explicit((result + 472), 1uLL, memory_order_relaxed);
      }
    }
  }

  else if (a6)
  {
    *a6 = *(result + 448);
  }

  return result;
}

uint64_t firehose_buffer_update_limits(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 536);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((a1 + 536), &v2, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    _dispatch_unfair_lock_lock_slow(a1 + 536);
  }

  result = firehose_buffer_update_limits_unlocked(a1);
  v6 = *(StatusReg + 24) & 0xFFFFFFFC;
  v7 = atomic_exchange_explicit(v3, 0, memory_order_release);
  if (v7 != v6)
  {

    return _dispatch_unfair_lock_unlock_slow(v3, v7);
  }

  return result;
}

void firehose_buffer_ring_enqueue(int *guard, unsigned int a2)
{
  v3 = HIBYTE(guard[1024 * a2 + 1]) & 2;
  v4 = 96;
  if ((guard[1024 * a2 + 1] & 0x2000000) == 0)
  {
    v4 = 80;
  }

  v5 = &guard[v4];
  v6 = &guard[16 * v3];
  v7 = *v5;
  for (i = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)); ; *(i + 976) = 0)
  {
LABEL_4:
    while (1)
    {
      v9 = v7;
      v10 = v7 & 0xFFFFFFC0;
      *(i + 976) = v5;
      v11 = v7 & 0x3F;
      v12 = v7 & 0xFFFFFFC0;
      atomic_compare_exchange_strong_explicit(v6 + v11, &v12, v7 & 0xFFC0 | a2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == (v7 & 0xFFC0))
      {
        break;
      }

      *(i + 976) = 0;
      v7 = *v5;
      if (v7 == v9)
      {
        v13 = -1024;
        while (*(v6 + v11) != v10)
        {
          v21 = v9;
          v25 = i;
          v26 = v11;
          v24 = v10;
          v23 = v6;
          v22 = a2;
          v27 = v13;
          if (v13 < 0)
          {
            __yield();
          }

          else
          {
            _pthread_yield_to_enqueuer_4dispatch();
          }

          v7 = *v5;
          v13 = v27 + 1;
          v9 = v21;
          a2 = v22;
          v6 = v23;
          i = v25;
          v11 = v26;
          v10 = v24;
          if (v7 != v21)
          {
            goto LABEL_4;
          }
        }

        v7 = v9;
      }
    }

    atomic_compare_exchange_strong_explicit(v5, &v7, v7 + 1, memory_order_release, memory_order_relaxed);
    if (v7 == v9)
    {
      break;
    }

    *(v6 + v11) = v10;
  }

  *(i + 976) = 0;
  v14 = v3 >> 1;
  v15 = &guard[v3 >> 1];
  v16 = v15[420];
  if (v16 == -1)
  {
    return;
  }

  if (v16)
  {
    v17 = firehose_send_push_async(v15[420], 0, 0);
    if (v17 <= 268435458)
    {
      if (!v17)
      {
        return;
      }

      if (v17 == -301)
      {
        qword_6D1C0 = "MIG_REPLY_MISMATCH";
        qword_6D1F0 = -301;
        __break(1u);
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v17 != 268435459)
    {
      if (v17 == 268435460)
      {
        return;
      }

LABEL_24:
      _dispatch_bug(476, v17);
    }
  }

  v18 = firehose_client_reconnect(guard, v16, v14);
  if (v18 - 1 <= 0xFFFFFFFD)
  {
    v19 = firehose_send_push_async(v18, 0, 0);
    if ((v19 - 268435459) >= 2 && v19 != 0)
    {
      if (v19 != -301)
      {

        _dispatch_bug(488, v19);
        return;
      }

LABEL_37:
      qword_6D1C0 = "MIG_REPLY_MISMATCH";
      qword_6D1F0 = -301;
      __break(1u);
    }
  }
}

int *firehose_buffer_force_connect(int *result)
{
  if (!result[420])
  {
    return firehose_client_reconnect(result, 0, 0);
  }

  return result;
}

unint64_t firehose_buffer_tracepoint_reserve_slow(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + 14);
  firehose_drain_notifications_once(a1);
  v7 = *(a1 + 448);
  v64 = v7;
  while (*(&v64 | (2 * (v6 & 1))))
  {
    v63 = v7;
    --*(&v63 | (2 * (v6 & 1)));
    v8 = v7;
    atomic_compare_exchange_strong_explicit((a1 + 448), &v8, v63, memory_order_acquire, memory_order_acquire);
    v64 = v8;
    v9 = v8 == v7;
    v7 = v8;
    if (v9)
    {
      v10 = v63;
      v11 = (a1 + 536);
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      while (2)
      {
        for (i = *(a1 + 256); ; i = v18)
        {
          v14 = HIDWORD(i);
          if (i == WORD1(i))
          {
            if (HIWORD(i) == WORD2(i))
            {
              v41 = 0;
              v42 = BYTE4(v10);
              v43 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v62 = v11;
              atomic_compare_exchange_strong_explicit(v11, &v41, *(v43 + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
              if (v41)
              {
                _dispatch_unfair_lock_lock_slow(v11);
              }

              v44 = *(a1 + 520);
              v45 = v44 | (-1 << v42);
              if (v45 == -1)
              {
                v47 = 0;
              }

              else
              {
                v46 = __clz(__rbit64(~v45));
                *(a1 + 520) = v44 | (1 << v46);
                v47 = v46;
              }

              v48 = *(v43 + 24) & 0xFFFFFFFC;
              v49 = atomic_exchange_explicit(v62, 0, memory_order_release);
              if (v49 != v48)
              {
                _dispatch_unfair_lock_unlock_slow(v62, v49);
              }

              v25 = v47;
              if (!v47)
              {
                if ((*(a2 + 14) & 4) != 0)
                {
                  v39 = 1;
                  goto LABEL_54;
                }

                v25 = 0;
                v50 = 0x10000;
                if ((v6 & 1) == 0)
                {
                  v50 = 1;
                }

                atomic_fetch_add_explicit((a1 + 448), v50, memory_order_relaxed);
              }

              goto LABEL_38;
            }

            LODWORD(v16) = HIDWORD(i) + 1;
            v15 = i;
          }

          else
          {
            v15 = i + 1;
            v16 = HIDWORD(i);
          }

          v17 = v15 | (v16 << 32) | i & 0xFFFF0000FFFF0000;
          v18 = i;
          atomic_compare_exchange_strong_explicit((a1 + 256), &v18, v17, memory_order_relaxed, memory_order_relaxed);
          if (v18 == i)
          {
            break;
          }
        }

        if (v16 == WORD2(i))
        {
          LOBYTE(v19) = i;
        }

        else
        {
          v19 = HIDWORD(i);
        }

        v20 = a1 + ((v16 != WORD2(i)) << 7);
        v21 = v19 & 0x3F;
        v22 = *(v20 + 2 * v21);
        v23 = v22 & 0x3F;
        if ((v22 & 0x3F) == 0)
        {
          v33 = -1024;
          do
          {
            if (v33 < 0)
            {
              __yield();
            }

            else
            {
              v55 = StatusReg;
              v59 = v11;
              v34 = v10;
              v53 = v14;
              v54 = v20;
              v52 = v16;
              v51 = v21;
              thread_switch(0, 4, v33 + 1);
              v21 = v51;
              v14 = v53;
              v20 = v54;
              LODWORD(v16) = v52;
              StatusReg = v55;
              v11 = v59;
              v10 = v34;
            }

            v22 = *(v20 + 2 * v21);
            ++v33;
            v23 = v22 & 0x3F;
          }

          while ((v22 & 0x3F) == 0);
        }

        v24 = v16;
        v25 = v23;
        v26 = a1 + (v23 << 12);
        if (v24 == v14 && *(v26 + 6) == 3)
        {
          atomic_fetch_and_explicit((a1 + 456), ~(1 << v23), memory_order_relaxed);
        }

        *v26 = 0x100000000000000;
        *(v20 + 2 * v21) = (v22 & 0xFFC0) + 64;
        if (v23 >= BYTE4(v10))
        {
          v27 = 0;
          atomic_compare_exchange_strong_explicit(v11, &v27, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
          if (v27)
          {
            v56 = StatusReg;
            v60 = v11;
            v35 = v23;
            v36 = v10;
            _dispatch_unfair_lock_lock_slow(v11);
            StatusReg = v56;
            v11 = v60;
            v10 = v36;
            v25 = v35;
          }

          if (*(a1 + 532) <= v25)
          {
            v28 = *(a1 + 520) & ~(1 << v25);
            *(a1 + 520) = v28;
            if (((v28 >> (v25 & 0x3C)) & 0xF) == 0)
            {
              v58 = v11;
              v29 = v10;
              v30 = StatusReg;
              madvise((a1 + ((v25 & 0x3C) << 12)), 0x4000uLL, 5);
              StatusReg = v30;
              v10 = v29;
              v11 = v58;
            }

            v25 = 0;
          }

          v31 = *(StatusReg + 24) & 0xFFFFFFFC;
          v32 = atomic_exchange_explicit(v11, 0, memory_order_release);
          if (v32 != v31)
          {
            v57 = StatusReg;
            v61 = v11;
            v37 = v25;
            v38 = v10;
            _dispatch_unfair_lock_unlock_slow(v11, v32);
            StatusReg = v57;
            v11 = v61;
            v10 = v38;
            v25 = v37;
          }

          if (!v25)
          {
            continue;
          }
        }

        goto LABEL_38;
      }
    }
  }

  v25 = 0;
  v39 = 0;
  if ((*(a2 + 14) & 4) != 0)
  {
LABEL_54:
    firehose_buffer_tracepoint_reserve_slow_cold_1(a2, v39, a1, a3, &v64);
    return v64;
  }

LABEL_38:

  return firehose_buffer_stream_chunk_install(a1, a2, a3, v25);
}

BOOL firehose_drain_notifications_once(uint64_t a1)
{
  memset(msg, 0, sizeof(msg));
  v2 = mach_msg(msg, 67109126, 0, 0x7Cu, *(a1 + 1688), 0, 0);
  v3 = v2;
  if (v2)
  {
    if (v2 != 268451843)
    {
      firehose_drain_notifications_once_cold_1(v2);
    }
  }

  else
  {
    v8[1] = "firehose";
    v8[2] = a1;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8[0] = *(StatusReg + 184);
    *(StatusReg + 184) = v8;
    v5 = msg[0];
    memset(v10, 0, sizeof(v10));
    v11 = 0;
    if (!firehoseReply_server(msg, v10))
    {
      goto LABEL_12;
    }

    if (v10[0] >= 0)
    {
      v6 = v11;
    }

    else
    {
      v6 = 0;
    }

    if (!v6 && (v5 & 0x1F) == 0x12)
    {
      firehose_drain_notifications_once_cold_2(v10);
    }

    if (v6 != -305 && v6)
    {
LABEL_12:
      *&msg[8] = 0;
      mach_msg_destroy(msg);
    }

    *(StatusReg + 184) = v8[0];
  }

  return v3 == 0;
}

unint64_t firehose_buffer_stream_chunk_install(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v6 = (a1 + (*(a2 + 12) << 7) + 640);
  if (a4)
  {
    v8 = a4;
    v9 = a1 + (a4 << 12);
    if (*v9)
    {
      bzero((v9 + 16), 0xFF0uLL);
    }

    if (*(a2 + 12) == 3)
    {
      atomic_fetch_or_explicit((a1 + 456), 1 << v8, memory_order_relaxed);
    }

    v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
    v11 = v8 << 32;
    if ((*v6 & 0x3F0000000000) != 0)
    {
      goto LABEL_18;
    }

    if (*a2 >= 0x1000000000uLL)
    {
      v12 = *a2 - 0x1000000000;
    }

    else
    {
      v12 = 0;
    }

    *(v9 + 8) = v12;
    v13 = *(a2 + 8);
    v14 = v13 + 24;
    if ((v13 & 7) != 0)
    {
      v14 = (v13 & 0xFFF8) + 32;
    }

    v15 = v14 + 16;
    v16 = 4096 - *(a2 + 10);
    *(v9 + 32) = (*a2 - v12) | (v13 << 48);
    *(v9 + 24) = v10;
    v46 = *(a2 + 12);
    v44 = 2 * (*(a2 + 14) & 3);
    *v9 = v15;
    *(v9 + 2) = v16;
    *(v9 + 4) = 1;
    *(v9 + 5) = 0;
    *(v9 + 6) = v46;
    *(v9 + 7) = v44;
    if (a3)
    {
      *a3 = v9 + v16;
    }

    v17 = *v6;
    if ((*v6 & 0x3F0000000000) != 0)
    {
LABEL_18:
      atomic_load_explicit(v6, memory_order_acquire);
      v20 = v6[1];
      v6[1] = 0;
      v21 = mach_continuous_time();
      v22 = *a2;
      if (*a2 >= v20)
      {
        v22 = v20;
      }

      v23 = v22 >= 0x1000000000;
      v24 = v22 - 0x1000000000;
      if (!v23)
      {
        v24 = 0;
      }

      *(v9 + 8) = v24;
      v25 = *a2;
      if ((*a2 - v24) >> 48)
      {
        v24 = v25 - 0x1000000000;
        *(v9 + 8) = v25 - 0x1000000000;
      }

      v26 = v20 - v24;
      if ((v20 - v24) >> 48)
      {
        v26 = *a2 - v24;
      }

      *(v9 + 32) = v26 | 0x18000000000000;
      *(v9 + 24) = v10;
      v27 = *(a2 + 8);
      v28 = v27 + 24;
      if ((v27 & 7) != 0)
      {
        v28 = (v27 & 0xFFF8) + 32;
      }

      v29 = v28 + 64;
      v30 = 4096 - *(a2 + 10);
      *(v9 + 80) = (*a2 - v24) | (v27 << 48);
      *(v9 + 72) = v10;
      v47 = *(a2 + 12);
      v45 = 2 * (*(a2 + 14) & 3);
      *v9 = v29;
      *(v9 + 2) = v30;
      *(v9 + 4) = 1;
      *(v9 + 5) = 0;
      *(v9 + 6) = v47;
      *(v9 + 7) = v45;
      if (a3)
      {
        *a3 = v9 + v30;
      }

      v18 = v9 + 64;
      v17 = *v6;
      v31 = v11 | ((HIWORD(*v6) + 1) << 48);
      for (i = *v6; ; v31 = v11 | ((HIWORD(i) + 1) << 48))
      {
        atomic_compare_exchange_strong_explicit(v6, &i, v31, memory_order_release, memory_order_relaxed);
        if (i == v17)
        {
          break;
        }

        v17 = i;
      }

      *(v9 + 40) = v20;
      *(v9 + 48) = v21;
      *(v9 + 56) = (v17 >> 40) & 0x3F;
      atomic_store((*(a2 + 12) << 32) | 7, (v9 + 16));
    }

    else
    {
      v18 = v9 + 16;
      v19 = *v6;
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v6, &v19, v11 | ((HIWORD(v17) + 1) << 48), memory_order_release, memory_order_relaxed);
        if (v19 == v17)
        {
          break;
        }

        v17 = v19;
        if ((v19 & 0x3F0000000000) != 0)
        {
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
    v17 = *v6;
    if (((*v6 >> 40) & 0x40) != 0)
    {
      v41 = (v17 >> 40) & 0x3F;
      if (v41 >= 0x3E)
      {
        LODWORD(v41) = 62;
      }

      v42 = *v6;
      atomic_compare_exchange_strong_explicit(v6, &v42, v17 & 0xFFFF000000000000 | (((v41 + 1) | 0x40u) << 40), memory_order_relaxed, memory_order_relaxed);
      while (v42 != v17)
      {
        v17 = v42;
        v43 = (v42 >> 40) & 0x3F;
        if (v43 >= 0x3E)
        {
          LODWORD(v43) = 62;
        }

        atomic_compare_exchange_strong_explicit(v6, &v42, v42 & 0xFFFF000000000000 | (((v43 + 1) | 0x40u) << 40), memory_order_relaxed, memory_order_relaxed);
      }

      v18 = 0;
    }

    else
    {
      v6[1] = mach_continuous_time();
      v17 = *v6;
      v36 = (*v6 >> 40) & 0x3F;
      if (v36 >= 0x3E)
      {
        LODWORD(v36) = 62;
      }

      v37 = v17 & 0xFFFF000000000000 | (((v36 + 1) | 0x40u) << 40);
      for (j = *v6; ; v37 = j & 0xFFFF000000000000 | (((v39 + 1) | 0x40u) << 40))
      {
        atomic_compare_exchange_strong_explicit(v6, &j, v37, memory_order_release, memory_order_relaxed);
        if (j == v17)
        {
          break;
        }

        v17 = j;
        v39 = (j >> 40) & 0x3F;
        if (v39 >= 0x3E)
        {
          LODWORD(v39) = 62;
        }
      }

      v18 = 0;
    }
  }

  v33 = *a2;
  v34 = *(a2 + 8);
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  if ((v17 & 3) != 0)
  {
    _dispatch_gate_broadcast_slow(v6, v17);
  }

  if ((~v17 & 0xFF00000000) == 0)
  {
    firehose_buffer_update_limits(a1);
  }

  if (*(a1 + 1696) == 1)
  {
    v40 = 1;
    atomic_compare_exchange_strong_explicit((a1 + 1696), &v40, 2u, memory_order_relaxed, memory_order_relaxed);
    if (v40 == 1)
    {
      firehose_client_start_quarantine(a1);
    }
  }

  return v18;
}

uint64_t firehose_buffer_tracepoint_reserve_wait_for_chunks_from_logd(uint64_t guard, uint64_t a2, void *a3)
{
  v6 = *(a2 + 14);
  v7 = v6 & 1;
  v8 = -6;
  do
  {
    v9 = __CFADD__(v8++, 1);
  }

  while (!v9 && firehose_drain_notifications_once(guard));
  v79 = 0;
  if (*(a2 + 13))
  {
    v10 = *(guard + 452);
LABEL_6:
    v11 = (guard + 536);
    v12 = -1 << v10;
    v13 = guard + 1680;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_7:
    while (2)
    {
      for (i = *(guard + 256); ; i = v20)
      {
        v16 = HIDWORD(i);
        if (i == WORD1(i))
        {
          if (HIWORD(i) == WORD2(i))
          {
            v62 = v10;
            v68 = v12;
            v74 = v11;
            v35 = 0;
            v55 = StatusReg;
            atomic_compare_exchange_strong_explicit(v11, &v35, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
            if (v35)
            {
              _dispatch_unfair_lock_lock_slow(v11);
            }

            v36 = *(guard + 520);
            if ((v36 | v68) == 0xFFFFFFFFFFFFFFFFLL)
            {
              v51 = 0;
            }

            else
            {
              v37 = __clz(__rbit64(~(v36 | v68)));
              *(guard + 520) = v36 | (1 << v37);
              v51 = v37;
            }

            v38 = *(v55 + 24) & 0xFFFFFFFC;
            v39 = atomic_exchange_explicit(v74, 0, memory_order_release);
            if (v39 != v38)
            {
              _dispatch_unfair_lock_unlock_slow(v74, v39);
            }

            v27 = v51;
            if (v51)
            {
              return firehose_buffer_stream_chunk_install(guard, a2, a3, v27);
            }

            if ((*(a2 + 14) & 2) != 0)
            {
              __FIREHOSE_CLIENT_THROTTLED_DUE_TO_HEAVY_LOGGING__(guard, v6 & 1, 0);
            }

            else
            {
              firehose_client_send_push_and_wait(guard, v6 & 1, 0);
            }

            StatusReg = v55;
            v12 = v68;
            v11 = v74;
            v10 = v62;
            if (*(v13 + 4 * v7) == -1)
            {
              v27 = 0;
              return firehose_buffer_stream_chunk_install(guard, a2, a3, v27);
            }

            goto LABEL_7;
          }

          LODWORD(v18) = HIDWORD(i) + 1;
          v17 = i;
        }

        else
        {
          v17 = i + 1;
          v18 = HIDWORD(i);
        }

        v19 = v17 | (v18 << 32) | i & 0xFFFF0000FFFF0000;
        v20 = i;
        atomic_compare_exchange_strong_explicit((guard + 256), &v20, v19, memory_order_relaxed, memory_order_relaxed);
        if (v20 == i)
        {
          break;
        }
      }

      if (v18 == WORD2(i))
      {
        LOBYTE(v21) = i;
      }

      else
      {
        v21 = HIDWORD(i);
      }

      v22 = guard + ((v18 != WORD2(i)) << 7);
      v23 = v21 & 0x3F;
      v24 = *(v22 + 2 * v23);
      v25 = v24 & 0x3F;
      if ((v24 & 0x3F) == 0)
      {
        v34 = -1024;
        do
        {
          if (v34 < 0)
          {
            __yield();
          }

          else
          {
            v69 = v12;
            v75 = v11;
            v56 = v34;
            v60 = v13;
            v63 = v10;
            v40 = StatusReg;
            v50 = v16;
            v52 = v22;
            v48 = v18;
            v49 = v23;
            thread_switch(0, 4, v34 + 1);
            v34 = v56;
            v23 = v49;
            v16 = v50;
            v22 = v52;
            LODWORD(v18) = v48;
            StatusReg = v40;
            v13 = v60;
            v10 = v63;
            v12 = v69;
            v11 = v75;
          }

          v24 = *(v22 + 2 * v23);
          ++v34;
          v25 = v24 & 0x3F;
        }

        while ((v24 & 0x3F) == 0);
      }

      v26 = v18;
      v27 = v25;
      v28 = guard + (v25 << 12);
      if (v26 == v16 && *(v28 + 6) == 3)
      {
        atomic_fetch_and_explicit((guard + 456), ~(1 << v25), memory_order_relaxed);
      }

      *v28 = 0x100000000000000;
      *(v22 + 2 * v23) = (v24 & 0xFFC0) + 64;
      if (v25 >= v10)
      {
        v29 = 0;
        atomic_compare_exchange_strong_explicit(v11, &v29, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
        if (v29)
        {
          v70 = v12;
          v76 = v11;
          v53 = v25;
          v57 = StatusReg;
          v64 = v10;
          _dispatch_unfair_lock_lock_slow(v11);
          v27 = v53;
          StatusReg = v57;
          v10 = v64;
          v12 = v70;
          v11 = v76;
        }

        if (*(guard + 532) <= v27)
        {
          v30 = *(guard + 520) & ~(1 << v27);
          *(guard + 520) = v30;
          if (((v30 >> (v27 & 0x3C)) & 0xF) == 0)
          {
            v67 = v12;
            v73 = v11;
            v59 = v13;
            v61 = v10;
            v31 = StatusReg;
            madvise((guard + ((v27 & 0x3C) << 12)), 0x4000uLL, 5);
            StatusReg = v31;
            v13 = v59;
            v10 = v61;
            v12 = v67;
            v11 = v73;
          }

          v27 = 0;
        }

        v32 = *(StatusReg + 24) & 0xFFFFFFFC;
        v33 = atomic_exchange_explicit(v11, 0, memory_order_release);
        if (v33 != v32)
        {
          v71 = v12;
          v77 = v11;
          v54 = v27;
          v58 = StatusReg;
          v65 = v10;
          _dispatch_unfair_lock_unlock_slow(v11, v33);
          v27 = v54;
          StatusReg = v58;
          v10 = v65;
          v12 = v71;
          v11 = v77;
        }

        if (!v27)
        {
          continue;
        }
      }

      return firehose_buffer_stream_chunk_install(guard, a2, a3, v27);
    }
  }

  else
  {
    v79 = *(guard + 448);
    v42 = guard + 1680;
    v43 = (&v81 | (2 * v7));
    v44 = (&v80 | (2 * v7));
    do
    {
      v45 = v79;
      v81 = v79;
      while (*v43)
      {
        v80 = v45;
        --*v44;
        v46 = v45;
        atomic_compare_exchange_strong_explicit((guard + 448), &v46, v80, memory_order_acquire, memory_order_acquire);
        v81 = v46;
        v47 = v46 == v45;
        v45 = v46;
        if (v47)
        {
          v79 = v80;
          v10 = HIDWORD(v80);
          goto LABEL_6;
        }
      }

      v72 = v44;
      v78 = v43;
      v66 = v42;
      if ((*(a2 + 14) & 2) != 0)
      {
        __FIREHOSE_CLIENT_THROTTLED_DUE_TO_HEAVY_LOGGING__(guard, v6 & 1, &v79);
      }

      else
      {
        firehose_client_send_push_and_wait(guard, v6 & 1, &v79);
      }

      result = 0;
      v42 = v66;
      v44 = v72;
      v43 = v78;
    }

    while (*(v66 + 4 * v7) != -1);
  }

  return result;
}

void firehose_client_start_quarantine(uint64_t a1)
{
  if (*_voucher_libtrace_hooks < 5)
  {
    return;
  }

  v1 = *(_voucher_libtrace_hooks + 40);
  if (!v1)
  {
    return;
  }

  v1();
  *(a1 + 1697) = 1;
  v3 = *(a1 + 768);
  if ((~v3 & 0xFF00000000) == 0 || BYTE4(*(a1 + 768)) == 0)
  {
    if (!*(a1 + 1680))
    {
      firehose_client_reconnect(a1, 0, 0);
    }
  }

  else
  {
    v5 = (a1 + (BYTE4(v3) << 12));
    v6 = *v5;
    if ((*v5 & 0x1FF000000000000) == 0x1000000000000)
    {
      v7 = v5[1];
      v8 = *v5;
      while (1)
      {
        v10 = v6 + 25 > WORD1(v6) || v7 < 0xFFFF000000000000;
        v11 = v6 + 0x100000020;
        v12 = (v6 + 0x100000020) >> 16;
        v13 = (v6 + 0x100000020) >> 56;
        if ((v6 + 32) + 40 > v12)
        {
          ++v13;
        }

        if (v10)
        {
          v11 = v6;
          v13 = HIBYTE(v6) | 1;
          v12 = v6 >> 16;
        }

        atomic_compare_exchange_strong_explicit(v5, &v8, v11 & 0xFFFFFF00000000 | (v13 << 56) | (v12 << 16) | v11, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v6)
        {
          break;
        }

        v6 = v8;
        if ((v8 & 0x1FF000000000000) != 0x1000000000000)
        {
          goto LABEL_28;
        }
      }

      if (v10)
      {
        if ((v11 & 0xFF00000000) == 0)
        {
          firehose_buffer_ring_enqueue(a1, BYTE4(v3));
        }
      }

      else if (v6)
      {
        qword_6D1C0 = "BUG IN LIBDISPATCH: Allocation should always fail";
        qword_6D1F0 = v6;
        __break(1u);
        goto LABEL_87;
      }
    }

LABEL_28:
    atomic_compare_exchange_strong_explicit((a1 + 768), &v14, v3 & 0xFFFFFF00FFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
  }

  v3 = *(a1 + 640);
  if ((~v3 & 0xFF00000000) == 0 || !BYTE4(*(a1 + 640)))
  {
    if (!*(a1 + 1680))
    {
      firehose_client_reconnect(a1, 0, 0);
    }

    goto LABEL_59;
  }

  v15 = (a1 + (BYTE4(v3) << 12));
  v6 = *v15;
  if (*v15)
  {
    v16 = (*v15 & 0x1FF000000000000) == 0;
    *v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v17 = v15[1];
    v18 = *v15;
    while (1)
    {
      v20 = v6 + 25 > WORD1(v6) || v17 < 0xFFFF000000000000;
      v21 = v6 + 0x100000020;
      v22 = (v6 + 0x100000020) >> 16;
      v23 = (v6 + 0x100000020) >> 56;
      if ((v6 + 32) + 40 > v22)
      {
        ++v23;
      }

      if (v20)
      {
        v21 = v6;
        v23 = HIBYTE(v6) | 1;
        v22 = v6 >> 16;
      }

      atomic_compare_exchange_strong_explicit(v15, &v18, v21 & 0xFFFFFF00000000 | (v23 << 56) | (v22 << 16) | v21, memory_order_relaxed, memory_order_relaxed);
      if (v18 == v6)
      {
        break;
      }

      if (v18)
      {
        v24 = (v18 & 0x1FF000000000000) == 0;
      }

      else
      {
        v24 = 0;
      }

      v6 = v18;
      if (!v24)
      {
        goto LABEL_58;
      }
    }

    if (v20)
    {
      if ((v21 & 0xFF00000000) == 0)
      {
        firehose_buffer_ring_enqueue(a1, BYTE4(v3));
      }

      goto LABEL_58;
    }

LABEL_87:
    if (v6)
    {
      qword_6D1C0 = "BUG IN LIBDISPATCH: Allocation should always fail";
      qword_6D1F0 = v6;
      __break(1u);
      goto LABEL_89;
    }
  }

LABEL_58:
  atomic_compare_exchange_strong_explicit((a1 + 640), &v25, v3 & 0xFFFFFF00FFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
LABEL_59:
  v3 = *(a1 + 896);
  if ((~v3 & 0xFF00000000) != 0 && BYTE4(*(a1 + 896)))
  {
    v26 = (a1 + (BYTE4(v3) << 12));
    v6 = *v26;
    if ((*v26 & 0x1FF000000000000) != 0x2000000000000)
    {
LABEL_83:
      atomic_compare_exchange_strong_explicit((a1 + 896), &v34, v3 & 0xFFFFFF00FFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
      return;
    }

    v27 = v26[1];
    v28 = *v26;
    while (1)
    {
      v30 = v6 + 25 > WORD1(v6) || v27 < 0xFFFF000000000000;
      v31 = v6 + 0x100000020;
      v32 = (v6 + 0x100000020) >> 16;
      v33 = (v6 + 0x100000020) >> 56;
      if ((v6 + 32) + 40 > v32)
      {
        ++v33;
      }

      if (v30)
      {
        v31 = v6;
        v33 = HIBYTE(v6) | 1;
        v32 = v6 >> 16;
      }

      atomic_compare_exchange_strong_explicit(v26, &v28, v31 & 0xFFFFFF00000000 | (v33 << 56) | (v32 << 16) | v31, memory_order_relaxed, memory_order_relaxed);
      if (v28 == v6)
      {
        break;
      }

      v6 = v28;
      if ((v28 & 0x1FF000000000000) != 0x2000000000000)
      {
        goto LABEL_83;
      }
    }

    if (v30)
    {
      if ((v31 & 0xFF00000000) == 0)
      {
        firehose_buffer_ring_enqueue(a1, BYTE4(v3));
      }

      goto LABEL_83;
    }

LABEL_89:
    if (v6)
    {
      qword_6D1C0 = "BUG IN LIBDISPATCH: Allocation should always fail";
      qword_6D1F0 = v6;
      __break(1u);
      return;
    }

    goto LABEL_83;
  }

  if (!*(a1 + 1680))
  {

    firehose_client_reconnect(a1, 0, 0);
  }
}

void firehose_client_send_push_and_wait(uint64_t guard, unsigned int a2, void *a3)
{
  v3 = *(guard + 4 * a2 + 1680);
  v11 = 0uLL;
  v10 = 0;
  if (v3 == -1)
  {
    return;
  }

  if (v3)
  {
    v7 = firehose_send_push_and_wait(v3, &v11, &v10);
    if (!v7)
    {
LABEL_4:
      if ((v11 & *(&v11 + 1)) != 0xFFFFFFFFFFFFFFFFLL)
      {
        v8 = 480;
        if (a2)
        {
          v8 = 504;
        }

        atomic_fetch_add_explicit((guard + v8), 1uLL, memory_order_relaxed);
        firehose_client_merge_updates(guard, 0, v11, *(&v11 + 1), v10 != 0, a3);
        return;
      }

      goto LABEL_18;
    }

    if (v7 != 268435459)
    {
      if (v7 == -301)
      {
        qword_6D1C0 = "MIG_REPLY_MISMATCH";
        qword_6D1F0 = -301;
        __break(1u);
      }

      _dispatch_bug(680, v7);
    }
  }

  v9 = firehose_client_reconnect(guard, v3, a2);
  if ((v9 - 1) > 0xFFFFFFFD)
  {
    goto LABEL_20;
  }

  v7 = firehose_send_push_and_wait(v9, &v11, &v10);
  switch(v7)
  {
    case 0:
      goto LABEL_4;
    case 268435459:
      goto LABEL_20;
    case -301:
      qword_6D1C0 = "MIG_REPLY_MISMATCH";
      qword_6D1F0 = -301;
      __break(1u);
LABEL_18:
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Memory corruption in the logging buffers";
      __break(1u);
      break;
  }

  _dispatch_bug(692, v7);
LABEL_20:
  if (a3)
  {
    *a3 = *(guard + 448);
  }
}

uint64_t _dispatch_iocntl(uint64_t result, uint64_t a2)
{
  if (result > 2)
  {
    if (result == 3)
    {
      byte_6D150 = a2 != 0;
    }

    else if (result == 4)
    {
      qword_6D148 = a2;
    }
  }

  else if (result == 1)
  {
    dispatch_io_defaults = vm_page_size * a2;
  }

  else if (result == 2)
  {
    qword_6D140 = a2;
  }

  return result;
}

void _dispatch_io_dispose(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 && (*(a1 + 120) & 3) == 0)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      *v3 = 0;
      v2 = *(a1 + 112);
    }

    dispatch_resume(*(v2 + 64));
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {

    dispatch_release(v6);
  }
}

dispatch_io_t dispatch_io_create(dispatch_io_type_t type, dispatch_fd_t fd, dispatch_queue_t queue, void *cleanup_handler)
{
  if (type > 1)
  {
    return 0;
  }

  v4 = _dispatch_io_create(type);
  *(v4 + 31) = fd;
  *(v4 + 32) = fd;
  dispatch_suspend(v4[6]);
  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  if (*(v4 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = __dispatch_io_create_block_invoke;
  v10[3] = &unk_50328;
  v10[6] = type;
  v10[7] = queue;
  v10[4] = cleanup_handler;
  v10[5] = v4;
  _dispatch_fd_entry_init_async(fd, v10);
  return v4;
}

void *_dispatch_io_create(uint64_t a1)
{
  v2 = _dispatch_object_alloc(OS_dispatch_io, 152);
  v2[2] = -1985229329;
  v2[3] = &off_713C0;
  v3 = dispatch_io_defaults * qword_6D140;
  v2[9] = a1;
  v2[10] = v3;
  v2[11] = -1;
  v2[6] = dispatch_queue_create("com.apple.libdispatch-io.channelq", 0);
  return v2;
}

void _dispatch_fd_entry_init_async(int a1, uint64_t a2)
{
  if (_dispatch_io_init_pred != -1)
  {
    _dispatch_fd_entry_init_async_cold_1();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___dispatch_fd_entry_init_async_block_invoke;
  v4[3] = &unk_50AE0;
  v5 = a1;
  v4[4] = a2;
  dispatch_channel_async(_dispatch_io_fds_lockq, v4);
}

id __dispatch_io_create_block_invoke(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    v5 = *(a2 + 36) & 0xF000;
    if (v5 == 0x4000)
    {
      v4 = 21;
    }

    else if (*(a1[5] + 72) != 1 || (v4 = 29, v5 != 4096) && v5 != 49152)
    {
      if (a1[6] == 1)
      {
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        do
        {
          v7 = lseek(*a2, 0, 1);
          if (v7 != -1)
          {
            goto LABEL_12;
          }

          v4 = **(StatusReg + 8);
        }

        while (v4 == 4);
        if (!v4)
        {
LABEL_12:
          v4 = 0;
          *(a1[5] + 136) = v7;
          goto LABEL_15;
        }

        _dispatch_bug(389, v4);
      }

      else
      {
        v4 = 0;
      }
    }
  }

LABEL_15:
  *(a1[5] + 144) = v4;
  dispatch_suspend(*(a2 + 64));
  _dispatch_io_init(a1[5], a2, a1[7], v4, a1[4]);
  dispatch_resume(*(a1[5] + 48));
  v8 = a1[5];
  if (v8[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v8 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v8);
    }
  }

  return __dispatch_io_create_block_invoke_cold_2(a1 + 7);
}

dispatch_group_t _dispatch_io_init(void *a1, NSObject **a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a5)
  {
    if (*(a3 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a3 + 8), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    v7 = a2 + 8;
    if (a4)
    {
      v7 = (a1 + 6);
    }

    v8 = *v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___dispatch_io_init_block_invoke;
    block[3] = &unk_50898;
    block[4] = a5;
    block[5] = a3;
    v11 = a4;
    dispatch_channel_async(v8, block);
  }

  if (a2)
  {
    a1[14] = a2;
    dispatch_retain(a2[9]);
    dispatch_retain(a2[10]);
    result = a2[10];
    a1[7] = a2[9];
  }

  else
  {
    a1[7] = dispatch_queue_create("com.apple.libdispatch-io.barrierq", 0);
    result = dispatch_group_create();
  }

  a1[8] = result;
  return result;
}

dispatch_io_t dispatch_io_create_f(dispatch_io_type_t a1, dispatch_fd_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v6 = v8;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = __dispatch_io_create_f_block_invoke;
    v8[3] = &__block_descriptor_tmp_2;
    v8[4] = a5;
    v8[5] = a4;
  }

  else
  {
    v6 = 0;
  }

  return dispatch_io_create(a1, a2, a3, v6);
}

dispatch_io_t dispatch_io_create_with_path(dispatch_io_type_t type, const char *path, int oflag, mode_t mode, dispatch_queue_t queue, void *cleanup_handler)
{
  if (type > 1)
  {
    return 0;
  }

  if (*path != 47)
  {
    return 0;
  }

  v12 = strlen(path);
  v13 = malloc_type_malloc(v12 + 25, 0x1020040A7FD358CuLL);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = _dispatch_io_create(type);
  *(v15 + 124) = -1;
  *v14 = v15;
  v14[2] = oflag;
  *(v14 + 6) = mode;
  *(v14 + 2) = v12;
  memcpy(v14 + 6, path, v12 + 1);
  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  if (*(v15 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit(v15 + 2, 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  v16 = v15[6];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 0x40000000;
  v18[2] = __dispatch_io_create_with_path_block_invoke;
  v18[3] = &unk_50398;
  v18[6] = v15;
  v18[7] = queue;
  v18[4] = cleanup_handler;
  v18[5] = v14;
  dispatch_channel_async(v16, v18);
  return v15;
}

void __dispatch_io_create_with_path_block_invoke(uint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  memset(&v25, 0, sizeof(v25));
  do
  {
    v3 = *(a1 + 40);
    v4 = (v3 + 24);
    if ((*(v3 + 9) & 0x2001) != 0)
    {
      v5 = lstat(v4, &v25);
    }

    else
    {
      v5 = stat(v4, &v25);
    }

    if (v5 != -1)
    {
      goto LABEL_8;
    }

    v6 = **(StatusReg + 8);
  }

  while (v6 == 4);
  if (v6)
  {
    v9 = *(a1 + 40);
    if ((*(v9 + 9) & 2) != 0)
    {
      v10 = *(v9 + 16);
      if (*(v9 + v10 + 23) != 47)
      {
        while (1)
        {
          v11 = v10 - 1;
          if (v10 < 1)
          {
            break;
          }

          v12 = *(v9 + v10-- + 23);
          if (v12 == 47)
          {
            v13 = (v9 + v11 + 24);
            goto LABEL_19;
          }
        }

        v13 = 0;
LABEL_19:
        *v13 = 0;
        do
        {
          if (stat((*(a1 + 40) + 24), &v25) != -1)
          {
            goto LABEL_23;
          }

          v14 = **(StatusReg + 8);
        }

        while (v14 == 4);
        if (!v14)
        {
LABEL_23:
          v25.st_mode = 0x8000;
          *v13 = 47;
          v8 = *(a1 + 48);
          goto LABEL_24;
        }

        *v13 = 47;
        *(*(a1 + 48) + 144) = v6;
        goto LABEL_30;
      }
    }

LABEL_29:
    *(*(a1 + 48) + 144) = v6;
LABEL_30:
    free(*(a1 + 40));
    v18 = *(a1 + 56);
    v17 = (a1 + 56);
    _dispatch_io_init(*(v17 - 1), 0, v18, v6, *(v17 - 3));
    v19 = *(v17 - 1);
    if (v19[2] != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(v19 + 2, 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v19);
      }
    }

    __dispatch_io_create_with_path_block_invoke_cold_3(v17);
    return;
  }

LABEL_8:
  v7 = v25.st_mode & 0xF000;
  if (v7 == 0x4000)
  {
    v6 = 21;
    goto LABEL_29;
  }

  v8 = *(a1 + 48);
  if (*(v8 + 72) == 1)
  {
    v6 = 29;
    if (v7 == 4096 || v7 == 49152)
    {
      goto LABEL_29;
    }
  }

LABEL_24:
  *(v8 + 144) = 0;
  dispatch_suspend(*(v8 + 48));
  if (_dispatch_io_init_pred != -1)
  {
    __dispatch_io_create_with_path_block_invoke_cold_1();
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 0x40000000;
  v21[2] = __dispatch_io_create_with_path_block_invoke_2;
  v21[3] = &unk_50370;
  v22 = v25;
  v15 = *(a1 + 56);
  v23 = *(a1 + 48);
  v24 = v15;
  v16 = *(a1 + 40);
  v21[4] = *(a1 + 32);
  v21[5] = v16;
  dispatch_channel_async(_dispatch_io_devs_lockq, v21);
}

dispatch_queue_t _dispatch_io_queues_init()
{
  _dispatch_io_fds_lockq = dispatch_queue_create("com.apple.libdispatch-io.fd_lockq", 0);
  result = dispatch_queue_create("com.apple.libdispatch-io.dev_lockq", 0);
  _dispatch_io_devs_lockq = result;
  return result;
}

id __dispatch_io_create_with_path_block_invoke_2(uint64_t a1)
{
  v2 = _dispatch_fd_entry_create_with_path(*(a1 + 40), *(a1 + 48), *(a1 + 52));
  v4 = *(a1 + 200);
  v3 = (a1 + 200);
  _dispatch_io_init(*(v3 - 1), v2, v4, 0, *(v3 - 21));
  dispatch_resume(*(*(v3 - 1) + 48));
  v5 = *(v3 - 1);
  if (v5[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v5 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v5);
    }
  }

  return __dispatch_io_create_block_invoke_cold_2(v3);
}

NSObject *_dispatch_fd_entry_create_with_path(objc_class *a1, unsigned int a2, __int16 a3)
{
  v6 = _dispatch_fd_entry_create(*(*a1 + 48));
  v7 = v6;
  if ((a3 & 0xF000) == 0x8000)
  {
    _dispatch_disk_init(v6, HIBYTE(a2));
  }

  else
  {
    _dispatch_stream_init(v6);
  }

  LODWORD(v7->isa) = -1;
  LODWORD(v7[2].isa) = -1;
  v7[1].isa = a1;
  LODWORD(v7[4].isa) = a2;
  WORD2(v7[4].isa) = a3;
  v7[9].isa = dispatch_queue_create("com.apple.libdispatch-io.barrierq", 0);
  v7[10].isa = dispatch_group_create();
  isa = v7[8].isa;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___dispatch_fd_entry_create_with_path_block_invoke;
  block[3] = &__block_descriptor_tmp_79;
  block[4] = v7;
  dispatch_channel_async(isa, block);
  v9 = v7[8].isa;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = ___dispatch_fd_entry_create_with_path_block_invoke_2;
  v11[3] = &__block_descriptor_tmp_80;
  v11[4] = v7;
  dispatch_channel_async(v9, v11);
  return v7;
}

dispatch_io_t dispatch_io_create_with_path_f(dispatch_io_type_t a1, const char *a2, int a3, mode_t a4, NSObject *a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v8 = v10;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = __dispatch_io_create_with_path_f_block_invoke;
    v10[3] = &__block_descriptor_tmp_6;
    v10[4] = a7;
    v10[5] = a6;
  }

  else
  {
    v8 = 0;
  }

  return dispatch_io_create_with_path(a1, a2, a3, a4, a5, v8);
}

dispatch_io_t dispatch_io_create_with_io(dispatch_io_type_t type, dispatch_io_t io, dispatch_queue_t queue, void *cleanup_handler)
{
  if (type > 1)
  {
    return 0;
  }

  v4 = _dispatch_io_create(type);
  dispatch_suspend(v4[6]);
  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  if (*(v4 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  if (LODWORD(io[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&io[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  isa = io[6].isa;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __dispatch_io_create_with_io_block_invoke;
  block[3] = &unk_50430;
  block[6] = v4;
  block[7] = queue;
  block[4] = cleanup_handler;
  block[5] = io;
  block[8] = type;
  dispatch_channel_async(isa, block);
  return v4;
}

void __dispatch_io_create_with_io_block_invoke(void *a1)
{
  v3 = a1 + 5;
  v2 = a1[5];
  if ((*(v2 + 120) & 3) != 0)
  {
    v4 = 89;
  }

  else
  {
    v4 = *(v2 + 144);
    if (!v4)
    {
      v5 = *(v2 + 56);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = __dispatch_io_create_with_io_block_invoke_2;
      block[3] = &unk_50408;
      v7 = a1[7];
      v6 = a1[8];
      block[6] = a1[6];
      block[7] = v6;
      block[8] = v7;
      block[4] = a1[4];
      block[5] = v2;
      dispatch_channel_async(v5, block);
      return;
    }
  }

  v9 = a1 + 7;
  v8 = a1[7];
  v10 = a1[6];
  *(v10 + 144) = v4;
  _dispatch_io_init(v10, 0, v8, v4, *(v9 - 3));
  dispatch_resume(*(*(v9 - 1) + 48));
  v11 = *(v9 - 1);
  if (v11[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v11 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v11);
    }
  }

  __dispatch_io_create_with_io_block_invoke_cold_2(v3);
}

id __dispatch_io_create_with_io_block_invoke_2(void *a1)
{
  v3 = a1 + 5;
  v2 = a1[5];
  if ((*(v2 + 120) & 3) != 0)
  {
    v4 = 89;
    goto LABEL_7;
  }

  v4 = *(v2 + 144);
  if (v4)
  {
    goto LABEL_7;
  }

  v5 = *(v2 + 112);
  v4 = *(v5 + 24);
  if (v4)
  {
    goto LABEL_7;
  }

  v6 = *(v5 + 36) & 0xF000;
  if (v6 == 0x4000)
  {
    v4 = 21;
LABEL_7:
    v8 = a1[8];
    v7 = a1 + 8;
    v9 = *(v7 - 2);
    *(v9 + 144) = v4;
    _dispatch_io_init(v9, 0, v8, v4, *(v7 - 4));
    dispatch_resume(*(*(v7 - 2) + 48));
    v10 = *(v7 - 2);
    if (v10[2] != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(v10 + 2, 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        _dispatch_worker_thread_cold_1(add_explicit, v10);
      }
    }

    return __dispatch_io_create_with_io_block_invoke_2_cold_5(v3);
  }

  v13 = a1[6];
  if (*(v13 + 72) == 1)
  {
    v4 = 29;
    if (v6 == 4096 || v6 == 49152)
    {
      goto LABEL_7;
    }
  }

  if (a1[7] == 1 && *(v2 + 124) != -1)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v15 = lseek(**(*v3 + 112), 0, 1);
      if (v15 != -1)
      {
        goto LABEL_20;
      }

      v4 = **(StatusReg + 8);
    }

    while (v4 == 4);
    if (!v4)
    {
LABEL_20:
      v2 = a1[5];
      v13 = a1[6];
      *(v13 + 136) = v15;
      goto LABEL_21;
    }

    _dispatch_bug(590, v4);
    goto LABEL_7;
  }

LABEL_21:
  *(v13 + 144) = 0;
  v16 = *(v2 + 124);
  if (v16 == -1)
  {
    *(v13 + 124) = -1;
    v17 = *(v2 + 112);
    v18 = *(v17 + 36);
    v19 = *(v17 + 32);
    v20 = *(*(v17 + 8) + 16);
    v21 = malloc_type_malloc(v20 + 25, 0x414A21A5uLL);
    memcpy(v21, *(*(a1[5] + 112) + 8), v20 + 25);
    v22 = a1[6];
    *v21 = v22;
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = __dispatch_io_create_with_io_block_invoke_3;
    block[3] = &unk_503E0;
    v31 = v19;
    v32 = v18;
    v23 = a1[8];
    block[6] = v22;
    block[7] = v23;
    block[4] = a1[4];
    block[5] = v21;
    dispatch_channel_async(_dispatch_io_devs_lockq, block);
  }

  else
  {
    v24 = *(v2 + 112);
    v25 = *(v2 + 128);
    *(v13 + 124) = v16;
    *(v13 + 128) = v25;
    dispatch_suspend(v24[8]);
    v27 = a1[8];
    v26 = a1 + 8;
    _dispatch_io_init(*(v26 - 2), v24, v27, 0, *(v26 - 4));
    dispatch_resume(*(*(v26 - 2) + 48));
    v28 = *(v26 - 2);
    if (v28[2] != 0x7FFFFFFF)
    {
      v29 = atomic_fetch_add_explicit(v28 + 2, 0xFFFFFFFF, memory_order_release);
      if (v29 <= 1)
      {
        _dispatch_worker_thread_cold_1(v29, v28);
      }
    }

    __dispatch_io_create_block_invoke_cold_2(v26);
  }

  return __dispatch_io_create_with_path_block_invoke_cold_3(v3);
}

id __dispatch_io_create_with_io_block_invoke_3(uint64_t a1)
{
  v2 = _dispatch_fd_entry_create_with_path(*(a1 + 40), *(a1 + 64), *(a1 + 68));
  v4 = *(a1 + 56);
  v3 = (a1 + 56);
  _dispatch_io_init(*(v3 - 1), v2, v4, 0, *(v3 - 3));
  dispatch_resume(*(*(v3 - 1) + 48));
  v5 = *(v3 - 1);
  if (v5[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v5 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v5);
    }
  }

  return __dispatch_io_create_block_invoke_cold_2(v3);
}

dispatch_io_t dispatch_io_create_with_io_f(dispatch_io_type_t a1, NSObject *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v6 = v8;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = __dispatch_io_create_with_io_f_block_invoke;
    v8[3] = &__block_descriptor_tmp_10;
    v8[4] = a5;
    v8[5] = a4;
  }

  else
  {
    v6 = 0;
  }

  return dispatch_io_create_with_io(a1, a2, a3, v6);
}

void dispatch_io_set_high_water(dispatch_io_t channel, size_t high_water)
{
  if (LODWORD(channel[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&channel[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_io_set_high_water_cold_2(channel, &v2);
}

uint64_t __dispatch_io_set_high_water_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 80) > v2)
  {
    *(v1 + 80) = v2;
    v2 = *(result + 40);
  }

  if (v2 <= 1)
  {
    v2 = 1;
  }

  *(v1 + 88) = v2;
  if (*(v1 + 8) != 0x7FFFFFFF)
  {
    result = atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release);
    if (result <= 1)
    {
      return _dispatch_worker_thread_cold_1(result, v1);
    }
  }

  return result;
}

void dispatch_io_set_low_water(dispatch_io_t channel, size_t low_water)
{
  if (LODWORD(channel[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&channel[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_io_set_low_water_cold_2(channel, &v2);
}

uint64_t __dispatch_io_set_low_water_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 88) < v2)
  {
    *(v1 + 88) = v2;
    v2 = *(result + 40);
  }

  *(v1 + 80) = v2;
  if (*(v1 + 8) != 0x7FFFFFFF)
  {
    result = atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release);
    if (result <= 1)
    {
      return _dispatch_worker_thread_cold_1(result, v1);
    }
  }

  return result;
}

void dispatch_io_set_interval(dispatch_io_t channel, uint64_t interval, dispatch_io_interval_flags_t flags)
{
  if (LODWORD(channel[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&channel[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_io_set_interval_cold_2(channel, &v3);
}

uint64_t __dispatch_io_set_interval_block_invoke(uint64_t result)
{
  v1 = 0x7FFFFFFFFFFFFFFFLL;
  v2 = *(result + 32);
  if (*(result + 40) < 0x7FFFFFFFFFFFFFFFuLL)
  {
    v1 = *(result + 40);
  }

  v3 = *(result + 48);
  *(v2 + 96) = v1;
  *(v2 + 104) = v3;
  if (*(v2 + 8) != 0x7FFFFFFF)
  {
    result = atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release);
    if (result <= 1)
    {
      return _dispatch_worker_thread_cold_1(result, v2);
    }
  }

  return result;
}

void _dispatch_io_set_target_queue(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  _dispatch_io_set_target_queue_cold_2(a1, &v2);
}

id ___dispatch_io_set_target_queue_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (a1 + 32);
  v3 = *(v1 + 24);
  *(v1 + 24) = *(a1 + 40);
  if (v3[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v3);
    }
  }

  return __dispatch_io_create_block_invoke_cold_2(v2);
}

dispatch_fd_t dispatch_io_get_descriptor(dispatch_io_t channel)
{
  if ((channel[15].isa & 3) != 0)
  {
    return -1;
  }

  result = channel[16].isa;
  if (result == -1)
  {
    if (!LODWORD(channel[18].isa))
    {
      v3 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 184;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if (*(v3 + 8) == "io")
        {
          if (*(v3 + 16) != channel)
          {
            return -1;
          }

          _dispatch_fd_entry_open(channel[14].isa, channel);
          return channel[16].isa;
        }
      }
    }

    return -1;
  }

  return result;
}

uint64_t _dispatch_fd_entry_open(uint64_t a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v2 = *(a1 + 24);
      if (v2)
      {
        return v2;
      }

      v6 = *(v4 + 8) & 0xFFFFFFFB | (4 * (*(a1 + 56) == 0));
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      while (1)
      {
        v8 = *(*(a1 + 8) + 12);
        v9 = guarded_open_np();
        if (v9 != -1)
        {
          break;
        }

        **(StatusReg + 8) = 0;
        v9 = open_NOCANCEL();
        if (v9 != -1)
        {
          goto LABEL_11;
        }

        v2 = **(StatusReg + 8);
        if (v2 != 4)
        {
          v10 = 0;
          atomic_compare_exchange_strong_explicit((a1 + 24), &v10, v2, memory_order_relaxed, memory_order_relaxed);
          return v2;
        }
      }

      *(a1 + 28) = 15;
LABEL_11:
      v11 = -1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v9, memory_order_relaxed, memory_order_relaxed);
      if (v11 == -1)
      {
        v2 = 0;
        *(a2 + 128) = v9;
        return v2;
      }

      if (*(a1 + 28))
      {
        guarded_close_np();
      }

      else
      {
        close_NOCANCEL();
      }
    }

    return 0;
  }

  return 0;
}

void dispatch_io_close(dispatch_io_t channel, dispatch_io_close_flags_t flags)
{
  isa = channel[15].isa;
  if (flags)
  {
    if ((isa & 2) == 0)
    {
      atomic_fetch_or_explicit(&channel[15], 2u, memory_order_relaxed);
      if (LODWORD(channel[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&channel[1], 1u, memory_order_relaxed) <= 0)
      {
        dispatch_set_target_queue_cold_2();
      }

      dispatch_io_close_cold_2(channel, &v4);
    }
  }

  else if ((isa & 3) == 0)
  {
    if (LODWORD(channel[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&channel[1], 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    dispatch_io_close_cold_4(channel, &v3);
  }
}

void __dispatch_io_close_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __dispatch_io_close_block_invoke_2;
  block[3] = &__block_descriptor_tmp_16;
  block[4] = v1;
  dispatch_channel_async(v2, block);
}

void __dispatch_io_close_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 120) & 3) == 0)
  {
    atomic_fetch_or_explicit((v1 + 120), 1u, memory_order_relaxed);
    v1 = *(a1 + 32);
    v3 = *(v1 + 112);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        *v4 = 0;
        v1 = *(a1 + 32);
      }

      *(v1 + 112) = 0;
      dispatch_resume(*(v3 + 64));
      v1 = *(a1 + 32);
    }
  }

  if (*(v1 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v1);
    }
  }
}

void dispatch_io_barrier(dispatch_io_t channel, dispatch_block_t barrier)
{
  if (LODWORD(channel[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&channel[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_io_barrier_cold_2(channel, &v2);
}

void __dispatch_io_barrier_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __dispatch_io_barrier_block_invoke_2;
  block[3] = &unk_50560;
  v4 = *(v1 + 56);
  v5 = v2;
  v6 = v1;
  block[4] = *(a1 + 32);
  dispatch_channel_async(v4, block);
}

void __dispatch_io_barrier_block_invoke_2(uint64_t a1)
{
  dispatch_suspend(*(a1 + 40));
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __dispatch_io_barrier_block_invoke_3;
  block[3] = &unk_50538;
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  block[5] = v4;
  block[6] = v5;
  dispatch_group_notify(v2, v3, block);
}

void __dispatch_io_barrier_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6[1] = "io";
  v6[2] = v2;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6[0] = *(StatusReg + 184);
  *(StatusReg + 184) = v6;
  (*(*(a1 + 32) + 16))();
  *(StatusReg + 184) = v6[0];
  dispatch_resume(*(a1 + 48));
  v4 = *(a1 + 40);
  if (v4[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v4);
    }
  }
}

void dispatch_io_barrier_f(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = __dispatch_io_barrier_f_block_invoke;
  v3[3] = &__block_descriptor_tmp_21;
  v3[4] = a3;
  v3[5] = a2;
  dispatch_io_barrier(a1, v3);
}

void dispatch_io_read(dispatch_io_t channel, off_t offset, size_t length, dispatch_queue_t queue, dispatch_io_handler_t io_handler)
{
  if (LODWORD(channel[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&channel[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  isa = channel[6].isa;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __dispatch_io_read_block_invoke;
  block[3] = &unk_505F0;
  block[6] = offset;
  block[7] = length;
  block[8] = queue;
  block[4] = io_handler;
  block[5] = channel;
  dispatch_channel_async(isa, block);
}

id __dispatch_io_read_block_invoke(uint64_t a1)
{
  v2 = (a1 + 64);
  v3 = _dispatch_operation_create(0, *(a1 + 40), *(a1 + 48), *(a1 + 56), &_dispatch_data_empty, *(a1 + 64), *(a1 + 32));
  if (v3)
  {
    v4 = *(*(a1 + 40) + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = __dispatch_io_read_block_invoke_2;
    block[3] = &__block_descriptor_tmp_22;
    block[4] = v3;
    dispatch_channel_async(v4, block);
  }

  v5 = *(a1 + 40);
  if (v5[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v5 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v5);
    }
  }

  return __dispatch_io_create_with_path_block_invoke_cold_3(v2);
}

uint64_t _dispatch_operation_create(int a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, uint64_t a6, void *a7)
{
  if ((*(a2 + 120) & 3) != 0)
  {
    v12 = 89;
LABEL_5:
    _dispatch_objc_retain(a5);
    if (*(a6 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a6 + 8), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    if (*(a2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    v14 = *(a2 + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___dispatch_operation_create_block_invoke;
    block[3] = &unk_50988;
    v19 = a1;
    v20 = v12;
    block[4] = a7;
    block[5] = a6;
    block[6] = a5;
    block[7] = a2;
    dispatch_channel_async(v14, block);
    return 0;
  }

  v12 = *(a2 + 144);
  if (!a4 || v12)
  {
    goto LABEL_5;
  }

  v15 = _dispatch_object_alloc(OS_dispatch_operation, 272);
  *(v15 + 16) = -1985229329;
  *(v15 + 12) = 0;
  *(v15 + 48) = dispatch_queue_create_with_target_V2("com.apple.libdispatch-io.opq", 0, a6);
  *(v15 + 160) = 0;
  *(v15 + 56) = a1;
  *(v15 + 104) = *(a2 + 136) + a3;
  *(v15 + 112) = a4;
  *(v15 + 128) = _dispatch_Block_copy(a7);
  if (*(a2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  _dispatch_operation_create_cold_4(v15, a2);
  return v15;
}

void _dispatch_operation_enqueue(uint64_t a1, unsigned int a2, id a3)
{
  _dispatch_objc_retain(a3);
  v6 = *(a1 + 136);
  if ((*(v6 + 120) & 3) != 0)
  {
    v7 = 89;
    goto LABEL_4;
  }

  v7 = *(v6 + 144);
  if (v7)
  {
LABEL_4:
    v8 = *(a1 + 128);
    v9 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___dispatch_operation_enqueue_block_invoke;
    block[3] = &unk_509B0;
    v20 = a2;
    v21 = v7;
    block[4] = v8;
    block[5] = a3;
    dispatch_channel_async(v9, block);
    if (*(a1 + 8) != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, a1);
      }
    }

    return;
  }

  v11 = *(v6 + 112);
  *(a1 + 144) = v11;
  dispatch_suspend(*(v11 + 64));
  dispatch_group_enter(*(*(a1 + 144) + 80));
  v12 = *(a1 + 144);
  v13 = *(v12 + 56);
  if (v13)
  {
    v14 = *(v13 + 72);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 0x40000000;
    v17[2] = ___dispatch_operation_enqueue_block_invoke_3;
    v17[3] = &__block_descriptor_tmp_62;
    v17[4] = v13;
    v17[5] = a1;
    v17[6] = a3;
    v15 = v17;
  }

  else
  {
    v16 = *(v12 + 8 * a2 + 40);
    v14 = *v16;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 0x40000000;
    v18[2] = ___dispatch_operation_enqueue_block_invoke_2;
    v18[3] = &__block_descriptor_tmp_61;
    v18[4] = v16;
    v18[5] = a1;
    v18[6] = a3;
    v15 = v18;
  }

  dispatch_channel_async(v14, v15);
}

void dispatch_io_read_f(NSObject *a1, off_t a2, size_t a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = __dispatch_io_read_f_block_invoke;
  v6[3] = &__block_descriptor_tmp_25;
  v6[4] = a6;
  v6[5] = a5;
  dispatch_io_read(a1, a2, a3, a4, v6);
}

void dispatch_io_write(dispatch_io_t channel, off_t offset, dispatch_data_t data, dispatch_queue_t queue, dispatch_io_handler_t io_handler)
{
  _dispatch_objc_retain(data);
  if (LODWORD(channel[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&channel[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  isa = channel[6].isa;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __dispatch_io_write_block_invoke;
  block[3] = &unk_50658;
  block[6] = offset;
  block[7] = data;
  block[8] = queue;
  block[4] = io_handler;
  block[5] = channel;
  dispatch_channel_async(isa, block);
}

id __dispatch_io_write_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  size = dispatch_data_get_size(v4);
  v6 = _dispatch_operation_create(1, v2, v3, size, v4, *(a1 + 64), *(a1 + 32));
  if (v6)
  {
    v7 = *(*(a1 + 40) + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = __dispatch_io_write_block_invoke_2;
    v12[3] = &__block_descriptor_tmp_26;
    v8 = *(a1 + 56);
    v12[4] = v6;
    v12[5] = v8;
    dispatch_channel_async(v7, v12);
  }

  else
  {
    _dispatch_objc_release(*(a1 + 56));
  }

  v9 = *(a1 + 40);
  if (v9[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v9 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v9);
    }
  }

  return __dispatch_io_create_with_path_block_invoke_cold_3((a1 + 64));
}

void __dispatch_io_write_block_invoke_2(uint64_t a1)
{
  _dispatch_operation_enqueue(*(a1 + 32), 1u, *(a1 + 40));
  v2 = *(a1 + 40);

  _dispatch_objc_release(v2);
}

void dispatch_io_write_f(NSObject *a1, off_t a2, NSObject *a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = __dispatch_io_write_f_block_invoke;
  v6[3] = &__block_descriptor_tmp_28;
  v6[4] = a6;
  v6[5] = a5;
  dispatch_io_write(a1, a2, a3, a4, v6);
}

void dispatch_read(dispatch_fd_t fd, size_t length, dispatch_queue_t queue, void *handler)
{
  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = __dispatch_read_block_invoke;
  v4[3] = &unk_50740;
  v4[4] = handler;
  v4[5] = queue;
  v5 = fd;
  v4[6] = length;
  _dispatch_fd_entry_init_async(fd, v4);
}

void __dispatch_read_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = __dispatch_read_block_invoke_2;
    block[3] = &unk_506A0;
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    block[4] = v5;
    v21 = v3;
    dispatch_channel_async(v4, block);
    v6 = *(a1 + 40);
    if (v6[2] != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(v6 + 2, 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v6);
      }
    }
  }

  else
  {
    v9 = *(a2 + 88);
    if (!v9)
    {
      v9 = _dispatch_io_create(0);
      v10 = *(a1 + 56);
      *(v9 + 31) = v10;
      *(v9 + 32) = v10;
      v9[14] = a2;
      dispatch_retain(*(a2 + 72));
      dispatch_retain(*(a2 + 80));
      *(v9 + 7) = *(a2 + 72);
      *(a2 + 88) = v9;
    }

    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2000000000;
    v19[3] = &_dispatch_data_empty;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2000000000;
    v18 = 0;
    v11 = *(a2 + 64);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 0x40000000;
    v16[2] = __dispatch_read_block_invoke_3;
    v16[3] = &unk_506F0;
    v12 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v16[5] = v19;
    v16[6] = v17;
    v16[7] = v12;
    dispatch_channel_async(v11, v16);
    v13 = *(a1 + 48);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 0x40000000;
    v15[2] = __dispatch_read_block_invoke_5;
    v15[3] = &unk_50718;
    v15[4] = v19;
    v15[5] = v17;
    v14 = _dispatch_operation_create(0, v9, 0, v13, &_dispatch_data_empty, &off_71340, v15);
    if (v14)
    {
      _dispatch_operation_enqueue(v14, 0, &_dispatch_data_empty);
    }

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(v19, 8);
  }
}

void __dispatch_read_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __dispatch_read_block_invoke_4;
  block[3] = &unk_506C8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  dispatch_channel_async(v2, block);
  v3 = *(a1 + 56);
  if (v3[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v3);
    }
  }
}

void __dispatch_read_block_invoke_4(void *a1)
{
  v2 = *(*(a1[5] + 8) + 24);
  v3 = *(*(a1[6] + 8) + 24);
  (*(a1[4] + 16))();
  v4 = *(*(a1[5] + 8) + 24);

  _dispatch_objc_release(v4);
}

void __dispatch_read_block_invoke_5(uint64_t a1, int a2, dispatch_data_t data2, int a4)
{
  if (data2)
  {
    concat = dispatch_data_create_concat(*(*(*(a1 + 32) + 8) + 24), data2);
    _dispatch_objc_release(*(*(*(a1 + 32) + 8) + 24));
    *(*(*(a1 + 32) + 8) + 24) = concat;
  }

  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a4;
  }
}

void dispatch_read_f(dispatch_fd_t a1, size_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = __dispatch_read_f_block_invoke;
  v5[3] = &__block_descriptor_tmp_35;
  v5[4] = a5;
  v5[5] = a4;
  dispatch_read(a1, a2, a3, v5);
}

void dispatch_write(dispatch_fd_t fd, dispatch_data_t data, dispatch_queue_t queue, void *handler)
{
  _dispatch_objc_retain(data);
  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = __dispatch_write_block_invoke;
  v8[3] = &unk_50828;
  v8[4] = handler;
  v8[5] = queue;
  v9 = fd;
  v8[6] = data;
  _dispatch_fd_entry_init_async(fd, v8);
}

void __dispatch_write_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = __dispatch_write_block_invoke_2;
    block[3] = &unk_50788;
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    block[4] = v5;
    v22 = v3;
    dispatch_channel_async(v4, block);
    v6 = *(a1 + 40);
    if (v6[2] != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(v6 + 2, 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v6);
      }
    }
  }

  else
  {
    v9 = *(a2 + 88);
    if (!v9)
    {
      v9 = _dispatch_io_create(0);
      v10 = *(a1 + 56);
      *(v9 + 31) = v10;
      *(v9 + 32) = v10;
      v9[14] = a2;
      dispatch_retain(*(a2 + 72));
      dispatch_retain(*(a2 + 80));
      *(v9 + 7) = *(a2 + 72);
      *(a2 + 88) = v9;
    }

    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2000000000;
    v20[3] = 0;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2000000000;
    v19 = 0;
    v11 = *(a2 + 64);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 0x40000000;
    v17[2] = __dispatch_write_block_invoke_3;
    v17[3] = &unk_507D8;
    v12 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v17[5] = v20;
    v17[6] = v18;
    v17[7] = v12;
    dispatch_channel_async(v11, v17);
    v13 = *(a1 + 48);
    size = dispatch_data_get_size(v13);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 0x40000000;
    v16[2] = __dispatch_write_block_invoke_5;
    v16[3] = &unk_50800;
    v16[4] = v20;
    v16[5] = v18;
    v15 = _dispatch_operation_create(1, v9, 0, size, v13, &off_71340, v16);
    if (v15)
    {
      _dispatch_operation_enqueue(v15, 1u, *(a1 + 48));
    }

    _dispatch_objc_release(*(a1 + 48));
    _Block_object_dispose(v18, 8);
    _Block_object_dispose(v20, 8);
  }
}

void __dispatch_write_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __dispatch_write_block_invoke_4;
  block[3] = &unk_507B0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  dispatch_channel_async(v2, block);
  v3 = *(a1 + 56);
  if (v3[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v3);
    }
  }
}

void __dispatch_write_block_invoke_4(void *a1)
{
  v2 = *(*(a1[5] + 8) + 24);
  v3 = *(*(a1[6] + 8) + 24);
  (*(a1[4] + 16))();
  v4 = *(*(a1[5] + 8) + 24);
  if (v4)
  {

    _dispatch_objc_release(v4);
  }
}

id __dispatch_write_block_invoke_5(id result, int a2, id a3, int a4)
{
  if (a2)
  {
    v6 = result;
    if (a3)
    {
      result = _dispatch_objc_retain(a3);
      *(*(*(v6 + 32) + 8) + 24) = a3;
    }

    *(*(*(v6 + 40) + 8) + 24) = a4;
  }

  return result;
}

void dispatch_write_f(dispatch_fd_t a1, NSObject *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = __dispatch_write_f_block_invoke;
  v5[3] = &__block_descriptor_tmp_41;
  v5[4] = a5;
  v5[5] = a4;
  dispatch_write(a1, a2, a3, v5);
}

void _dispatch_operation_dispose(uint64_t a1)
{
  if (*(a1 + 144))
  {
    _dispatch_operation_deliver_data(a1, 2);
    dispatch_group_leave(*(*(a1 + 144) + 80));
    dispatch_resume(*(*(a1 + 144) + 64));
  }

  v2 = *(a1 + 136);
  if (v2)
  {
    if (v2[2] != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        _dispatch_worker_thread_cold_1(add_explicit, v2);
      }
    }
  }

  _dispatch_operation_dispose_cold_2(a1);
}

void _dispatch_operation_deliver_data(uint64_t a1, int a2)
{
  v4 = *(a1 + 200);
  v5 = v4 + *(a1 + 208);
  if ((a2 & 3) != 0)
  {
    *(a1 + 184) = 0;
LABEL_7:
    v8 = *(a1 + 120);
    if (v8)
    {
LABEL_11:
      v7 = 1;
      goto LABEL_12;
    }

    if ((*(*(a1 + 136) + 120) & 2) != 0)
    {
      v8 = 89;
      *(a1 + 120) = 89;
      goto LABEL_11;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_11;
  }

  v6 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v6)
  {
    goto LABEL_7;
  }

  if (v5 >= *(a1 + 72))
  {
    goto LABEL_9;
  }

  if (v4 < *(a1 + 192))
  {
    return;
  }

  v7 = 0;
  v8 = 0;
LABEL_12:
  v9 = *(a1 + 56);
  if (v9 == 1)
  {
    if (v7)
    {
      subrange = dispatch_data_create_subrange(*(a1 + 232), v4, *(a1 + 112));
    }

    else
    {
      subrange = 0;
    }

    v12 = *(a1 + 224);
    if (v12 && *(a1 + 200) == *(a1 + 192))
    {
      _dispatch_objc_release(v12);
      *(a1 + 224) = 0;
      *(a1 + 176) = 0;
      *(a1 + 200) = 0;
      if (v7)
      {
        _dispatch_objc_retain(subrange);
        v13 = subrange;
      }

      else
      {
        v13 = dispatch_data_create_subrange(*(a1 + 232), *(a1 + 192), *(a1 + 112));
      }

      _dispatch_objc_release(*(a1 + 232));
      *(a1 + 232) = v13;
      if (!v7)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (v9)
    {
      return;
    }

    if (v4)
    {
      v10 = dispatch_data_create(*(a1 + 176), v4, 0, &__block_literal_global);
      *(a1 + 176) = 0;
      *(a1 + 200) = 0;
      subrange = dispatch_data_create_concat(*(a1 + 232), v10);
      _dispatch_objc_release(*(a1 + 232));
      _dispatch_objc_release(v10);
    }

    else
    {
      subrange = *(a1 + 232);
    }

    v14 = &_dispatch_data_empty;
    if (!v7)
    {
      v14 = subrange;
    }

    *(a1 + 232) = v14;
  }

  if (!v7)
  {
LABEL_35:
    *(a1 + 208) = v5;
    return;
  }

LABEL_28:
  if ((a2 & 8) != 0 && !dispatch_data_get_size(subrange))
  {
    goto LABEL_35;
  }

  *(a1 + 208) = 0;
  v15 = *(a1 + 56);
  v16 = *(a1 + 128);
  v17 = *(a1 + 144);
  dispatch_suspend(*(v17 + 64));
  v18 = *(a1 + 136);
  if (*(v18 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v18 + 8), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  v19 = *(a1 + 48);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 0x40000000;
  v20[2] = ___dispatch_operation_deliver_data_block_invoke;
  v20[3] = &unk_50BE8;
  v21 = a2;
  v22 = v15;
  v23 = v8;
  v20[4] = v16;
  v20[5] = subrange;
  v20[6] = v18;
  v20[7] = v17;
  dispatch_channel_async(v19, v20);
}

void _dispatch_disk_dispose(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 120);
  if (v1)
  {
    *(v1 + 120) = v2;
  }

  *v2 = v1;
  dispatch_release(*(a1 + 72));
}

void ___dispatch_io_init_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___dispatch_io_init_block_invoke_2;
  v5[3] = &unk_50870;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  dispatch_channel_async(v2, v5);
  v3 = *(a1 + 40);
  if (v3[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v3);
    }
  }
}

void ___dispatch_io_stop_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___dispatch_io_stop_block_invoke_2;
  block[3] = &__block_descriptor_tmp_53;
  block[4] = v1;
  dispatch_channel_async(v2, block);
}

void ___dispatch_io_stop_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  if (v3)
  {
    _dispatch_fd_entry_cleanup_operations(*(v2 + 112), v2);
    v4 = *(a1 + 32);
    if ((*(v4 + 120) & 1) == 0)
    {
      v5 = *(v3 + 8);
      if (v5)
      {
        *v5 = 0;
        v4 = *(a1 + 32);
      }

      *(v4 + 112) = 0;
      dispatch_resume(*(v3 + 64));
    }
  }

  else if (*(v2 + 124) != -1)
  {
    if (*(v2 + 8) != 0x7FFFFFFF)
    {
      if (atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed) < 1)
      {
        dispatch_set_target_queue_cold_2();
      }

      v2 = *(a1 + 32);
    }

    ___dispatch_io_stop_block_invoke_2_cold_2(&block, v2);
  }

  v6 = *(a1 + 32);
  if (v6[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v6 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v6);
    }
  }
}

void _dispatch_fd_entry_cleanup_operations(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    if (a2 && *(a2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    _dispatch_fd_entry_cleanup_operations_cold_2(a1, a1 + 56, &v10, a2);
  }

  else
  {
    v5 = 1;
    do
    {
      v6 = v5;
      v7 = *(a1 + 40 + 8 * v4);
      if (v7)
      {
        if (a2 && *(a2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed) <= 0)
        {
          dispatch_set_target_queue_cold_2();
        }

        dispatch_suspend(*(a1 + 64));
        v8 = *v7;
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = ___dispatch_fd_entry_cleanup_operations_block_invoke_2;
        block[3] = &__block_descriptor_tmp_56;
        block[4] = v7;
        block[5] = a2;
        block[6] = a1;
        dispatch_channel_async(v8, block);
      }

      v5 = 0;
      v4 = 1;
    }

    while ((v6 & 1) != 0);
  }
}

void ___dispatch_io_stop_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[31];
  v4 = _dispatch_io_fds[v3 & 0x3F];
  if (v4)
  {
    while (*v4 != v3)
    {
      v4 = *(v4 + 112);
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    _dispatch_fd_entry_cleanup_operations(v4, v2);
    v2 = *(a1 + 32);
  }

LABEL_6:
  if (v2[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v2);
    }
  }
}

void ___dispatch_fd_entry_cleanup_operations_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4 = *(v3 + 48);
  if (v4)
  {
    v5 = *(a1 + 40);
    do
    {
      while (1)
      {
        v6 = v4;
        v4 = *(v4 + 240);
        if ((*(v6 + 160) & 1) == 0 && (!v5 || *(v6 + 136) == v5))
        {
          break;
        }

        if (!v4)
        {
          goto LABEL_9;
        }
      }

      _dispatch_disk_complete_operation(v3, v6);
    }

    while (v4);
LABEL_9:
    v2 = *(a1 + 32);
  }

  dispatch_resume(*(v2 + 64));
  v7 = *(a1 + 40);
  if (v7 && v7[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v7 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v7);
    }
  }
}

void ___dispatch_fd_entry_cleanup_operations_block_invoke_2(uint64_t *a1)
{
  _dispatch_stream_cleanup_operations(a1[4], a1[5]);
  dispatch_resume(*(a1[6] + 64));
  v2 = a1[5];
  if (v2 && v2[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v2);
    }
  }
}

void _dispatch_stream_cleanup_operations(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    do
    {
      v5 = *(v4 + 240);
      if (!a2 || *(v4 + 136) == a2)
      {
        _dispatch_stream_complete_operation(a1, v4);
      }

      v4 = v5;
    }

    while (v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    do
    {
      v7 = *(v6 + 240);
      if (!a2 || *(v6 + 136) == a2)
      {
        _dispatch_stream_complete_operation(a1, v6);
      }

      v6 = v7;
    }

    while (v7);
  }

  if (*(a1 + 24) == 1 && !*(a1 + 48) && !*(a1 + 32))
  {
    dispatch_suspend(*(a1 + 8));
    *(a1 + 24) = 0;
  }
}

void _dispatch_disk_complete_operation(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == a2)
  {
    *(a1 + 64) = **(*(a2 + 248) + 8);
  }

  if (!*(a2 + 64))
  {
    v3 = *(a2 + 256);
    v4 = *(a2 + 264);
    if (v3)
    {
      v3[33] = v4;
      *v4 = v3;
      v3[30] = 0;
      v5 = *(a1 + 56);
      v3[31] = v5;
      *v5 = v3;
      *(a1 + 56) = v3 + 30;
    }

    else
    {
      *(*(a2 + 144) + 104) = v4;
      *v4 = 0;
    }
  }

  v6 = *(a2 + 240);
  v7 = *(a2 + 248);
  v8 = (a1 + 56);
  if (v6)
  {
    v8 = (v6 + 248);
  }

  *v8 = v7;
  *v7 = v6;
  v9 = *(a2 + 152);
  if (v9)
  {
    dispatch_source_cancel(v9);
  }

  if (*(a2 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((a2 + 8), 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, a2);
    }
  }
}

void _dispatch_stream_complete_operation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 240);
  v4 = *(a2 + 248);
  if (v3)
  {
    v5 = (v3 + 248);
  }

  else
  {
    v5 = (a1 + 16 * *(a2 + 64) + 40);
  }

  *v5 = v4;
  *v4 = v3;
  if (*(a1 + 16) == a2)
  {
    *(a1 + 16) = 0;
  }

  v6 = *(a2 + 152);
  if (v6)
  {
    dispatch_source_cancel(v6);
  }

  if (*(a2 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((a2 + 8), 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, a2);
    }
  }
}

void ___dispatch_operation_create_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___dispatch_operation_create_block_invoke_2;
  v5[3] = &unk_50960;
  v7 = *(a1 + 64);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  dispatch_channel_async(v2, v5);
  v3 = *(a1 + 40);
  if (v3[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v3);
    }
  }
}

void ___dispatch_operation_create_block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 60);
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (!v3)
  {
    v5 = v8;
  }

  if (v3 == 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  (*(v4 + 16))(v4, 1, v9);
  v10 = *(a1 + 48);
  if (v10[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v10 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v10);
    }
  }

  v12 = *(a1 + 40);

  _dispatch_objc_release(v12);
}

void ___dispatch_operation_enqueue_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 52);
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (!v3)
  {
    v5 = v8;
  }

  if (v3 == 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  (*(v4 + 16))(v4, 1, v9);
  v10 = *(a1 + 40);

  _dispatch_objc_release(v10);
}

void ___dispatch_operation_enqueue_block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (_dispatch_operation_should_enqueue(v2, *v3, *(a1 + 48)))
  {
    v4 = *(v3 + 48) || *(v3 + 32) != 0;
    v2[30] = 0;
    v5 = v3 + 16 * v2[8];
    v6 = *(v5 + 40);
    v2[31] = v6;
    *v6 = v2;
    *(v5 + 40) = v2 + 30;
    if (!v4)
    {
      dispatch_channel_async_f(*v3, *v3, _dispatch_stream_queue_handler);
    }
  }

  v7 = *(a1 + 48);

  _dispatch_objc_release(v7);
}

void ___dispatch_operation_enqueue_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (_dispatch_operation_should_enqueue(v3, *(v2 + 72), *(a1 + 48)))
  {
    if (v3[8])
    {
      v3[30] = 0;
      v4 = *(v2 + 56);
      v3[31] = v4;
      *v4 = v3;
      *(v2 + 56) = v3 + 30;
    }

    else
    {
      v5 = v3[18];
      if (!*(v5 + 96))
      {
        v3[30] = 0;
        v6 = *(v2 + 56);
        v3[31] = v6;
        *v6 = v3;
        *(v2 + 56) = v3 + 30;
        v5 = v3[18];
      }

      v7 = *(v5 + 104);
      v3[32] = 0;
      v3[33] = v7;
      *v7 = v3;
      *(v3[18] + 104) = v3 + 32;
    }

    _dispatch_disk_handler(v2);
  }

  v8 = *(a1 + 48);

  _dispatch_objc_release(v8);
}

uint64_t _dispatch_operation_should_enqueue(uint64_t a1, NSObject *a2, id a3)
{
  _dispatch_objc_retain(a3);
  *(a1 + 232) = a3;
  v6 = *(*(a1 + 136) + 120);
  if ((v6 & 3) != 0)
  {
    if ((v6 & 2) != 0)
    {
      v7 = 89;
LABEL_5:
      *(a1 + 120) = v7;
      if (*(a1 + 8) != 0x7FFFFFFF)
      {
        add_explicit = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release);
        if (add_explicit <= 1)
        {
          _dispatch_worker_thread_cold_1(add_explicit, a1);
        }
      }

      return 0;
    }
  }

  else
  {
    v7 = *(*(a1 + 144) + 24);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  if (*(a1 + 88))
  {
    _dispatch_operation_should_enqueue_cold_2(a1, a2, (a1 + 88));
  }

  return 1;
}

void _dispatch_stream_queue_handler(NSObject *a1)
{
  context = dispatch_get_context(a1);
  if (context)
  {

    _dispatch_stream_handler(context);
  }
}

void ___dispatch_operation_timer_block_invoke(uint64_t a1)
{
  if (!dispatch_source_testcancel(*(a1 + 32)))
  {
    v2 = *(a1 + 40);
    v3 = *(v2 + 96) & 1;
    if (*(v2 + 160) == 1)
    {
      v4 = v3 == 0;
      *(v2 + 96);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {

      _dispatch_operation_deliver_data(v2, v3);
    }

    else
    {
      *(v2 + 184) = 1;
    }
  }
}

void _dispatch_stream_handler(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        if (v3 != 1)
        {
          return;
        }

        v2 = *(v2 + 240);
        if (!v2)
        {
          v2 = *(a1 + 48);
          if (!v2)
          {
            return;
          }
        }
      }
    }

    else
    {
      v4 = *(a1 + 32);
      if (!(*(a1 + 48) | v4))
      {
        return;
      }

      v2 = v4 ? *(a1 + 32) : *(a1 + 48);
      if (!v2)
      {
        return;
      }
    }

    v5 = *(*(v2 + 136) + 120);
    if ((v5 & 3) != 0)
    {
      break;
    }

    v7 = *(v2 + 144);
    v6 = *(v7 + 24);
    if (!v6)
    {
      goto LABEL_18;
    }

LABEL_16:
    *(v2 + 120) = v6;
    _dispatch_stream_complete_operation(a1, v2);
  }

  if ((v5 & 2) != 0)
  {
    v6 = 89;
    goto LABEL_16;
  }

  v7 = *(v2 + 144);
LABEL_18:
  *(a1 + 16) = v2;
  dispatch_suspend(*(v7 + 64));
  if (!*(v2 + 216) && byte_6D150 == 1)
  {
    _dispatch_operation_deliver_data(v2, 1);
  }

  v8 = _dispatch_operation_perform(v2);
  if (v8 <= 3)
  {
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        _dispatch_operation_deliver_data(v2, 0);
        goto LABEL_42;
      }

      if (v8 != 3)
      {
        goto LABEL_49;
      }

      _dispatch_operation_deliver_data(v2, 9);
    }

    _dispatch_stream_complete_operation(a1, v2);
LABEL_42:
    if (*(a1 + 48) || *(a1 + 32))
    {
      dispatch_channel_async_f(*a1, *a1, _dispatch_stream_queue_handler);
    }

    goto LABEL_49;
  }

  if (v8 > 5)
  {
    if (v8 == 6)
    {
      _dispatch_stream_cleanup_operations(a1, *(v2 + 136));
    }

    else if (v8 == 7)
    {
      dispatch_suspend(*(v7 + 64));
      v9 = *(v7 + 72);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 0x40000000;
      v14[2] = ___dispatch_stream_handler_block_invoke;
      v14[3] = &__block_descriptor_tmp_64;
      v14[4] = v7;
      dispatch_channel_async(v9, v14);
    }
  }

  else
  {
    if (v8 == 4)
    {
      _dispatch_stream_complete_operation(a1, v2);
    }

    if (*(a1 + 48) || *(a1 + 32))
    {
      *(a1 + 24) = 1;
      v10 = *(a1 + 8);
      if (!v10)
      {
        v11 = *(v2 + 56);
        if (v11)
        {
          if (v11 == 1)
          {
            v12 = &_dispatch_source_type_write;
            goto LABEL_46;
          }

          v10 = 0;
        }

        else
        {
          v12 = &_dispatch_source_type_read;
LABEL_46:
          v10 = dispatch_source_create(v12, **(v2 + 144), 0, *a1);
          dispatch_set_context(v10, a1);
          dispatch_source_set_event_handler_f(v10, _dispatch_stream_source_handler);
          v13 = *(*(v2 + 144) + 64);
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 0x40000000;
          v15[2] = ___dispatch_stream_source_block_invoke;
          v15[3] = &__block_descriptor_tmp_67;
          v15[4] = v13;
          dispatch_source_set_mandatory_cancel_handler(v10, v15);
          *(a1 + 8) = v10;
        }
      }

      dispatch_resume(v10);
    }
  }

LABEL_49:
  dispatch_resume(*(v7 + 64));
}

uint64_t _dispatch_operation_perform(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*(a1 + 136) + 120);
    if ((v2 & 3) == 0)
    {
      v3 = (*(a1 + 144) + 24);
      v4 = *v3;
      if (*v3)
      {
        goto LABEL_35;
      }

      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v2) = 95;
  }

  if ((v2 & 2) != 0)
  {
    *(a1 + 120) = 89;
    return 6;
  }

LABEL_8:
  if (*(a1 + 176))
  {
    goto LABEL_9;
  }

  v19 = *(a1 + 80);
  v20 = dispatch_io_defaults;
  v21 = *(a1 + 56);
  if (v21 == 1)
  {
    if (dispatch_io_defaults >= v19)
    {
      v29 = *(a1 + 80);
    }

    else
    {
      v29 = dispatch_io_defaults;
    }

    *(a1 + 192) = 0;
    v30 = *(a1 + 232);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 0x40000000;
    v33[2] = ___dispatch_operation_perform_block_invoke;
    v33[3] = &__block_descriptor_tmp_66;
    v33[4] = a1;
    v33[5] = v29;
    dispatch_data_apply(v30, v33);
    v31 = *(a1 + 192);
    if (v31 > v19)
    {
      *(a1 + 192) = v19;
      v31 = v19;
    }

    subrange = dispatch_data_create_subrange(*(a1 + 232), 0, v31);
    *(a1 + 224) = dispatch_data_create_map(subrange, (a1 + 176), 0);
    _dispatch_objc_release(subrange);
    goto LABEL_9;
  }

  if (v21)
  {
    goto LABEL_9;
  }

  size = dispatch_data_get_size(*(a1 + 232));
  if (v19 - size >= v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = v19 - size;
  }

  v24 = *(a1 + 112);
  if (v24 != -1)
  {
    v25 = v24 - *(a1 + 216);
    if (v25 < v23)
    {
      v23 = v25;
    }
  }

  *(a1 + 192) = v23;
  v4 = malloc_type_posix_memalign((a1 + 176), vm_page_size, v23, 0xB41883A9uLL);
  if (!v4)
  {
LABEL_9:
    v5 = *(a1 + 144);
    if (*v5 == -1)
    {
      v4 = _dispatch_fd_entry_open(v5, *(a1 + 136));
      if (v4)
      {
        goto LABEL_35;
      }
    }

    v6 = *(a1 + 176);
    v7 = *(a1 + 192) - *(a1 + 200);
    v8 = *(a1 + 104);
    v9 = *(a1 + 216);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v11 = *(a1 + 56);
      if (v11 == 1)
      {
        v15 = *(a1 + 64);
        if (v15 == 1)
        {
          v18 = **(a1 + 144);
          NOCANCEL = pwrite_NOCANCEL();
        }

        else
        {
          if (v15)
          {
            goto LABEL_22;
          }

          v16 = **(a1 + 144);
          NOCANCEL = write_NOCANCEL();
        }
      }

      else
      {
        if (v11)
        {
          goto LABEL_22;
        }

        v12 = *(a1 + 64);
        if (v12 == 1)
        {
          v17 = **(a1 + 144);
          NOCANCEL = pread_NOCANCEL();
        }

        else
        {
          if (v12)
          {
            goto LABEL_22;
          }

          v13 = **(a1 + 144);
          NOCANCEL = read_NOCANCEL();
        }
      }

      if (NOCANCEL != -1)
      {
        if (!NOCANCEL)
        {
          return 3;
        }

        *(a1 + 200) += NOCANCEL;
        v28 = *(a1 + 216) + NOCANCEL;
        *(a1 + 216) = v28;
        if (v28 == *(a1 + 112))
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

LABEL_22:
      v4 = **(StatusReg + 8);
    }

    while (v4 == 4);
  }

LABEL_35:
  if (v4 != 35)
  {
    *(a1 + 120) = v4;
    if (v4 != 89)
    {
      if (v4 != 9)
      {
        return 1;
      }

      v27 = 0;
      atomic_compare_exchange_strong_explicit((*(a1 + 144) + 24), &v27, 9u, memory_order_relaxed, memory_order_relaxed);
      return 7;
    }

    return 6;
  }

  if (!*(a1 + 56) && *(a1 + 216) && *(a1 + 136) == *(*(a1 + 144) + 88))
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

void ___dispatch_stream_handler_block_invoke(uint64_t a1)
{
  _dispatch_fd_entry_cleanup_operations(*(a1 + 32), 0);
  v2 = *(*(a1 + 32) + 64);

  dispatch_resume(v2);
}

BOOL ___dispatch_operation_perform_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 192);
  v7 = v6 + a5;
  if (!v6 || (v8 = *(a1 + 40), v7 <= v8))
  {
    *(v5 + 192) = v7;
    v8 = *(a1 + 40);
  }

  return v7 < v8;
}

uint64_t _dispatch_stream_source_handler(uint64_t a1)
{
  dispatch_suspend(*(a1 + 8));
  *(a1 + 24) = 0;

  return _dispatch_stream_handler(a1);
}

void _dispatch_disk_handler(void *context)
{
  if ((*(context + 108) & 1) == 0)
  {
    v3 = context[10];
    v2 = context[11];
    v4 = v2;
    if (v2 <= v3)
    {
      v4 = context[16] + v2;
    }

    if (v3 <= v4)
    {
      v5 = (context + 17);
      while (1)
      {
        v6 = v3 % context[16];
        if (*&v5[8 * v6] || (v7 = context[6]) == 0)
        {
LABEL_27:
          v2 = context[11];
          break;
        }

        v8 = context[8];
        v9 = v8;
        if (v8)
        {
          do
          {
            if (*(v9 + 240))
            {
              v9 = *(v9 + 240);
            }

            else
            {
              v9 = context[6];
            }

            v10 = *(v9 + 160);
          }

          while (v9 != v8 && (*(v9 + 160) & 1) != 0);
          if (*(v9 + 160))
          {
            goto LABEL_27;
          }
        }

        else
        {
          v9 = context[6];
          if (*(v7 + 160))
          {
            goto LABEL_27;
          }
        }

        context[8] = v9;
        v11 = *(*(v9 + 136) + 120);
        if ((v11 & 3) != 0)
        {
          if ((v11 & 2) == 0)
          {
            goto LABEL_22;
          }

          v12 = 89;
        }

        else
        {
          v12 = *(*(v9 + 144) + 24);
          if (!v12)
          {
LABEL_22:
            if (*(v9 + 8) != 0x7FFFFFFF)
            {
              if (atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed) < 1)
              {
                dispatch_set_target_queue_cold_2();
              }

              v6 = v3 % context[16];
            }

            *&v5[8 * v6] = v9;
            *(v9 + 160) = 1;
            ++v3;
            goto LABEL_26;
          }
        }

        *(v9 + 120) = v12;
        _dispatch_disk_complete_operation(context, v9);
LABEL_26:
        if (v3 > v4)
        {
          goto LABEL_27;
        }
      }
    }

    context[10] = v3 % context[16];
    v13 = context[v2 + 17];
    if (v13)
    {
      *(context + 108) = 1;
      v14 = *(v13 + 24);

      dispatch_channel_async_f(v14, context, _dispatch_disk_perform);
    }
  }
}

void _dispatch_disk_perform(void *a1)
{
  v2 = dispatch_io_defaults;
  v3 = a1[12];
  v4 = a1[10];
  if (v4 <= v3)
  {
    v4 += a1[16];
  }

  v5 = a1 + 17;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v7 = v3 % a1[16];
    v8 = v5[v7];
    if (!v8)
    {
      break;
    }

    if (*(v8 + 56) != 1)
    {
      v9 = *(v8 + 144);
      if (*v9 != -1 || !_dispatch_fd_entry_open(v9, *(v8 + 136)))
      {
        if (!*(v8 + 216) && byte_6D150 == 1)
        {
          _dispatch_operation_deliver_data(v8, 1);
        }

        if (v4 - v3 == 1 && !v5[a1[10]])
        {
          v2 <<= *(v8 + 168) == 0;
        }

        v10 = *(*(v8 + 136) + 120);
        if ((v10 & 3) != 0)
        {
          if ((v10 & 2) == 0)
          {
            goto LABEL_21;
          }
        }

        else if (!*(*(v8 + 144) + 24))
        {
LABEL_21:
          v25 = 0;
          v11 = *(v8 + 168);
          v12 = *(v8 + 104) + v2;
          if (v11 <= (v12 + *(v8 + 216) + vm_page_size))
          {
            if (v11)
            {
              v13 = v2;
            }

            else
            {
              if (v12 % vm_page_size)
              {
                v14 = vm_page_size - v12 % vm_page_size;
              }

              else
              {
                v14 = 0;
              }

              v13 = v14 + v2;
              v11 = *(v8 + 104);
            }

            LODWORD(v25) = v13;
            v24 = v11;
            *(v8 + 168) = v11 + v13;
            while (1)
            {
              v15 = **(v8 + 144);
              if (fcntl_NOCANCEL() != -1)
              {
                break;
              }

              v16 = **(StatusReg + 8);
              if (v16 != 4)
              {
                if (v16 > 0x2D || ((1 << v16) & 0x200008000001) == 0)
                {
                  _dispatch_bug(2308, v16);
                }

                break;
              }
            }
          }
        }
      }
    }

    if (++v3 >= v4)
    {
      v7 = v3 % a1[16];
      break;
    }
  }

  a1[12] = v7;
  v18 = v5[a1[11]];
  v19 = _dispatch_operation_perform(v18);
  v20 = a1[11];
  v5[v20] = 0;
  a1[11] = (v20 + 1) % a1[16];
  v21 = a1[9];
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___dispatch_disk_perform_block_invoke;
  block[3] = &__block_descriptor_tmp_68;
  v23 = v19;
  block[4] = v18;
  block[5] = a1;
  dispatch_channel_async(v21, block);
}

uint64_t ___dispatch_disk_perform_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 6)
      {
        _dispatch_disk_cleanup_operations(*(a1 + 40), *(*(a1 + 32) + 136));
      }

      else if (v2 == 7)
      {
        v3 = *(a1 + 40);
        v4 = *(v3 + 48);
        if (v4)
        {
          do
          {
            v5 = *(v4 + 240);
            _dispatch_disk_complete_operation(v3, v4);
            v4 = v5;
          }

          while (v5);
        }
      }

      goto LABEL_14;
    }

    _dispatch_operation_deliver_data(*(a1 + 32), 9);
LABEL_12:
    _dispatch_disk_complete_operation(*(a1 + 40), *(a1 + 32));
    goto LABEL_14;
  }

  if (v2 == 1)
  {
    goto LABEL_12;
  }

  if (v2 == 2)
  {
    _dispatch_operation_deliver_data(*(a1 + 32), 0);
  }

LABEL_14:
  v6 = *(a1 + 40);
  *(*(a1 + 32) + 160) = 0;
  v6[108] = 0;
  result = _dispatch_disk_handler(v6);
  v8 = *(a1 + 32);
  if (v8[2] != 0x7FFFFFFF)
  {
    result = atomic_fetch_add_explicit(v8 + 2, 0xFFFFFFFF, memory_order_release);
    if (result <= 1)
    {
      return _dispatch_worker_thread_cold_1(result, v8);
    }
  }

  return result;
}

void _dispatch_disk_cleanup_operations(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    do
    {
      v5 = *(v3 + 240);
      if (!a2 || *(v3 + 136) == a2)
      {
        _dispatch_disk_complete_operation(a1, v3);
      }

      v3 = v5;
    }

    while (v5);
  }
}

void ___dispatch_fd_entry_init_async_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (&_dispatch_io_fds + 8 * (v2 & 0x3F));
  v4 = *v3;
  if (*v3)
  {
    while (*v4 != v2)
    {
      v4 = v4[14];
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    dispatch_suspend(v4[8]);
  }

  else
  {
LABEL_4:
    v5 = _dispatch_fd_entry_create(_dispatch_io_fds_lockq);
    v4 = v5;
    *v5 = v2;
    v6 = *v3;
    v5[14] = *v3;
    if (v6)
    {
      v6[15] = v5 + 14;
    }

    *v3 = v5;
    v5[15] = v3;
    v5[9] = dispatch_queue_create("com.apple.libdispatch-io.barrierq", 0);
    v4[10] = dispatch_group_create();
    v7 = v4[9];
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___dispatch_fd_entry_create_with_fd_block_invoke;
    block[3] = &__block_descriptor_tmp_72;
    v16 = v2;
    block[4] = v4;
    dispatch_channel_async(v7, block);
    v8 = v4[8];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = ___dispatch_fd_entry_create_with_fd_block_invoke_3;
    v14[3] = &__block_descriptor_tmp_74;
    v14[4] = v4;
    dispatch_channel_async(v8, v14);
    v9 = v4[8];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = ___dispatch_fd_entry_create_with_fd_block_invoke_5;
    v12[3] = &__block_descriptor_tmp_75;
    v12[4] = v4;
    v13 = v2;
    dispatch_channel_async(v9, v12);
  }

  v10 = v4[9];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = ___dispatch_fd_entry_init_async_block_invoke_2;
  v11[3] = &unk_50AB8;
  v11[4] = *(a1 + 32);
  v11[5] = v4;
  dispatch_channel_async(v10, v11);
}

void ___dispatch_fd_entry_init_async_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 64);

  dispatch_resume(v3);
}

void *_dispatch_fd_entry_create(NSObject *a1)
{
  v2 = _dispatch_calloc_typed(1uLL, 0x80uLL, 0x10A00401D52844BuLL);
  v3 = dispatch_queue_create_with_target_V2("com.apple.libdispatch-io.closeq", 0, a1);
  v2[8] = v3;
  dispatch_suspend(v3);
  return v2;
}

void ___dispatch_fd_entry_create_with_fd_block_invoke(uint64_t a1)
{
  memset(&v27.st_uid, 0, 128);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *&v27.st_dev = *&v27.st_blksize;
  while (fstat(*(a1 + 40), &v27) == -1)
  {
    v3 = **(StatusReg + 8);
    if (v3 != 4)
    {
      if (v3)
      {
        *(*(a1 + 32) + 24) = v3;
        return;
      }

      break;
    }
  }

  v4 = *(a1 + 32);
  *(v4 + 32) = v27.st_dev;
  *(v4 + 36) = v27.st_mode;
  v5 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v6 = *(a1 + 40);
    v7 = fcntl_NOCANCEL();
    if (v7 != -1)
    {
      break;
    }

    v8 = **(v5 + 8);
    if (v8 != 4)
    {
      if (v8)
      {
        _dispatch_bug(1471, v8);
      }

      break;
    }
  }

  if ((v27.st_mode & 0xF000) == 0x1000)
  {
    v9 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v10 = *(a1 + 40);
      if (fcntl_NOCANCEL() != -1)
      {
        v13 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        do
        {
          v14 = *(a1 + 40);
          v15 = fcntl_NOCANCEL();
          if (v15 != -1)
          {
            v16 = v15;
            goto LABEL_22;
          }

          v11 = **(v13 + 8);
        }

        while (v11 == 4);
        if (!v11)
        {
          goto LABEL_21;
        }

        v12 = 1484;
        goto LABEL_42;
      }

      v11 = **(v9 + 8);
    }

    while (v11 == 4);
    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = 1477;
LABEL_42:
    _dispatch_bug(v12, v11);
  }

LABEL_21:
  v16 = -1;
LABEL_22:
  if ((v27.st_mode & 0xF000) == 0x8000)
  {
    if (v7 != -1)
    {
      v17 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      while (1)
      {
        v18 = *(a1 + 40);
        if (fcntl_NOCANCEL() != -1)
        {
          break;
        }

        v19 = **(v17 + 8);
        if (v19 != 4)
        {
          if (v19)
          {
            _dispatch_bug(1496, v19);
            v7 = -1;
          }

          break;
        }
      }
    }

    st_dev_high = HIBYTE(v27.st_dev);
    dispatch_suspend(*(*(a1 + 32) + 72));
    if (_dispatch_io_init_pred != -1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_1();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___dispatch_fd_entry_create_with_fd_block_invoke_2;
    block[3] = &__block_descriptor_tmp_71;
    block[4] = *(a1 + 32);
    v26 = st_dev_high;
    dispatch_channel_async(_dispatch_io_devs_lockq, block);
  }

  else
  {
    if (v7 != -1)
    {
      v21 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      while (1)
      {
        v22 = *(a1 + 40);
        if (fcntl_NOCANCEL() != -1)
        {
          break;
        }

        v23 = **(v21 + 8);
        if (v23 != 4)
        {
          if (v23)
          {
            _dispatch_bug(1516, v23);
            v7 = -1;
          }

          break;
        }
      }
    }

    _dispatch_stream_init(*(a1 + 32));
  }

  v24 = *(a1 + 32);
  *(v24 + 16) = v7;
  *(v24 + 20) = v16;
}

void ___dispatch_fd_entry_create_with_fd_block_invoke_2(uint64_t a1)
{
  _dispatch_disk_init(*(a1 + 32), *(a1 + 40));
  v2 = *(*(a1 + 32) + 72);

  dispatch_resume(v2);
}

dispatch_queue_t _dispatch_disk_init(dispatch_queue_t result, int a2)
{
  v2 = result;
  v3 = (&_dispatch_io_devs + 8 * (a2 & 0x3F));
  v4 = *v3;
  if (*v3)
  {
    while (*(v4 + 104) != a2)
    {
      v4 = *(v4 + 112);
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    if (*(v4 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }
  }

  else
  {
LABEL_4:
    result = _dispatch_disk_init_cold_2(a2, v7, v3, &v6);
    v4 = v6;
  }

  v2[12].isa = 0;
  v5 = v2 + 12;
  v5[-5].isa = v4;
  v5[1].isa = v5;
  return result;
}

void _dispatch_stream_init(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 40;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = _dispatch_calloc_typed(1uLL, 0x40uLL, 0x10A0040C5C49CBAuLL);
    v6 = dispatch_queue_create_with_target_V2("com.apple.libdispatch-io.streamq", 0, &off_71340);
    *v5 = v6;
    dispatch_set_context(v6, v5);
    v3 = 0;
    v5[6] = 0;
    v5[7] = v5 + 6;
    v5[4] = 0;
    v5[5] = v5 + 4;
    *(v2 + 8 * v1) = v5;
    v1 = 1;
  }

  while ((v4 & 1) != 0);
}

void ___dispatch_fd_entry_create_with_fd_block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___dispatch_fd_entry_create_with_fd_block_invoke_4;
    block[3] = &__block_descriptor_tmp_73;
    block[4] = v2;
    dispatch_channel_async(_dispatch_io_devs_lockq, block);
  }

  else
  {
    _dispatch_stream_dispose(*(a1 + 32), 0);
    _dispatch_stream_dispose(*(a1 + 32), 1u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  if (v4)
  {
    *(v4 + 120) = *(v3 + 120);
    v3 = *(a1 + 32);
    v4 = *(v3 + 112);
  }

  **(v3 + 120) = v4;
}

void _dispatch_stream_dispose(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8 * a2 + 40);
  if (v2)
  {
    if (v2[1])
    {
      dispatch_suspend(*(a1 + 64));
      dispatch_source_cancel(v2[1]);
      dispatch_resume(v2[1]);
      dispatch_release(v2[1]);
    }

    dispatch_set_context(*v2, 0);
    dispatch_release(*v2);

    free(v2);
  }
}

uint64_t ___dispatch_fd_entry_create_with_fd_block_invoke_4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1[2] != 0x7FFFFFFF)
  {
    result = atomic_fetch_add_explicit(v1 + 2, 0xFFFFFFFF, memory_order_release);
    if (result <= 1)
    {
      return _dispatch_worker_thread_cold_1(result, v1);
    }
  }

  return result;
}

void ___dispatch_fd_entry_create_with_fd_block_invoke_5(uint64_t a1)
{
  dispatch_release(*(*(a1 + 32) + 64));
  dispatch_release(*(*(a1 + 32) + 72));
  dispatch_release(*(*(a1 + 32) + 80));
  v2 = *(a1 + 32);
  if (*(v2 + 16) != -1)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v4 = *(a1 + 40);
      v8 = *(*(a1 + 32) + 16);
    }

    while (fcntl_NOCANCEL() == -1 && **(StatusReg + 8) == 4);
    v2 = *(a1 + 32);
  }

  if (*(v2 + 20) != -1)
  {
    v5 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v6 = *(a1 + 40);
      v9 = *(*(a1 + 32) + 20);
    }

    while (fcntl_NOCANCEL() == -1 && **(v5 + 8) == 4);
    v2 = *(a1 + 32);
  }

  v7 = *(v2 + 88);
  if (v7)
  {
    *(v7 + 112) = 0;
    dispatch_release(*(*(a1 + 32) + 88));
    v2 = *(a1 + 32);
  }

  free(v2);
}

uint64_t ___dispatch_fd_entry_create_with_path_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 7))
  {
    _dispatch_stream_dispose(*(a1 + 32), 0);
    _dispatch_stream_dispose(*(a1 + 32), 1u);
    v2 = *(a1 + 32);
  }

  result = *v2;
  if (result != -1)
  {
    if (v2[7])
    {
      result = guarded_close_np();
    }

    else
    {
      result = close_NOCANCEL();
    }
  }

  v4 = **(*(a1 + 32) + 8);
  if (v4)
  {
    *(v4 + 112) = 0;
  }

  return result;
}

void ___dispatch_fd_entry_create_with_path_block_invoke_2(uint64_t a1)
{
  dispatch_release(*(*(a1 + 32) + 64));
  dispatch_release(*(*(a1 + 32) + 72));
  dispatch_release(*(*(a1 + 32) + 80));
  free(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);

  free(v2);
}

void ___dispatch_operation_deliver_data_block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 40);
  if ((*(a1 + 64) & 2) != 0)
  {
    v4 = *(a1 + 68);
    if (v4 == 1)
    {
      *(a1 + 72);
    }

    else if (!v4 && *(a1 + 72) && dispatch_data_get_size(*(a1 + 40)))
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  v5 = *(a1 + 72);
  (*(*(a1 + 32) + 16))();
  v6 = *(a1 + 48);
  if (v6[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v6 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v6);
    }
  }

  ___dispatch_operation_deliver_data_block_invoke_cold_2(a1, v2);
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t result, void ***a2)
{
  v2 = *(result + 48);
  *a2 = _NSConcreteStackBlock;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t *a1)
{
  result = *a1;
  v2 = *(result + 8);
  return result;
}

void OUTLINED_FUNCTION_8_1(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X8>)
{
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = a1;
  a2[5] = a3;

  dispatch_channel_async(a4, a2);
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t *a1)
{
  result = *a1;
  v2 = *(result + 8);
  return result;
}

void _dispatch_data_init_with_bytes(void *a1, mach_vm_address_t a2, mach_vm_size_t a3, Block_layout *aBlock)
{
  v4 = a3;
  v5 = a2;
  if (!a2 || !a3)
  {
    if (aBlock)
    {
      v7 = _dispatch_Block_copy(aBlock);
      _dispatch_data_destroy_buffer(v5, v4, 0, v7);
    }

    v5 = 0;
    v4 = 0;
    aBlock = &__block_literal_global_4130;
  }

  a1[5] = aBlock;
  a1[6] = v4;
  a1[4] = v5;
}

void _dispatch_data_destroy_buffer(mach_vm_address_t address, mach_vm_size_t size, NSObject *a3, Block_layout *context)
{
  if (&__block_literal_global == context)
  {
    free(address);
  }

  else if (&__block_literal_global_4130 != context)
  {
    if (&__block_literal_global_4134 == context)
    {
      mach_vm_deallocate(mach_task_self_, address, size);
    }

    else
    {
      if (a3)
      {
        v4 = a3;
      }

      else
      {
        v4 = &off_71340;
      }

      dispatch_channel_async_f(v4, context, _dispatch_call_block_and_release);
    }
  }
}

dispatch_data_t dispatch_data_create(const void *buffer, size_t size, dispatch_queue_t queue, dispatch_block_t destructor)
{
  v7 = buffer;
  if (buffer && size)
  {
    if (destructor)
    {
      if (&__block_literal_global_4138 != destructor)
      {
        v8 = _dispatch_object_alloc_bridged(OS_dispatch_data, 64);
        v8[7].isa = 0;
        v9 = _dispatch_Block_copy(destructor);
        goto LABEL_13;
      }

      v8 = _dispatch_object_alloc_bridged(OS_dispatch_data, size + 64);
      v8[7].isa = 0;
      v12 = v8 + 8;
      memcpy(&v8[8], v7, size);
      v13 = &_dispatch_data_destructor_none;
    }

    else
    {
      v11 = malloc_type_malloc(size, 0x4B848A0EuLL);
      if (!v11)
      {
        return 0;
      }

      v12 = v11;
      memcpy(v11, v7, size);
      v8 = _dispatch_object_alloc_bridged(OS_dispatch_data, 64);
      v8[7].isa = 0;
      v13 = &_dispatch_data_destructor_free;
    }

    v9 = *v13;
    v7 = v12;
LABEL_13:
    v8[5].isa = v9;
    v8[6].isa = size;
    v8[4].isa = v7;
    if (queue)
    {
      if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
      {
        dispatch_set_target_queue_cold_2();
      }

      v8[1].isa = queue;
    }

    return v8;
  }

  if (destructor)
  {
    v10 = _dispatch_Block_copy(destructor);
    _dispatch_data_destroy_buffer(v7, size, queue, v10);
  }

  return &_dispatch_data_empty;
}

dispatch_data_t dispatch_data_create_f(const void *a1, size_t a2, NSObject *a3, Block_layout *a4)
{
  if (a4)
  {
    if (&__block_literal_global != a4 && &__block_literal_global_4130 != a4 && &__block_literal_global_4134 != a4 && &__block_literal_global_4138 != a4)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 0x40000000;
      v8[2] = __dispatch_data_create_f_block_invoke;
      v8[3] = &__block_descriptor_tmp_1;
      v8[4] = a4;
      v8[5] = a1;
      a4 = v8;
    }
  }

  return dispatch_data_create(a1, a2, a3, a4);
}

void _dispatch_data_dispose(void *a1)
{
  if (a1[7])
  {
    v2 = 0;
    v3 = (a1 + 8);
    do
    {
      v4 = *v3;
      v3 += 3;
      _dispatch_objc_release(v4);
      ++v2;
    }

    while (a1[7] > v2);
    v5 = a1[4];

    free(v5);
  }

  else
  {
    v7 = a1[5];
    v6 = a1[6];
    v8 = a1[1];
    v9 = a1[4];

    _dispatch_data_destroy_buffer(v9, v6, v8, v7);
  }
}

atomic_uint *_dispatch_data_set_target_queue(uint64_t a1, __objc2_class **a2)
{
  if (!a2)
  {
    a2 = &off_71340;
  }

  if (*(a2 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  return dispatch_set_target_queue_cold_3(a1, a2);
}

dispatch_data_t dispatch_data_create_concat(dispatch_data_t data1, dispatch_data_t data2)
{
  v2 = data2;
  isa = data1[6].isa;
  if (!isa)
  {
    goto LABEL_15;
  }

  v5 = data2[6].isa;
  if (!v5)
  {
    v2 = data1;
LABEL_15:
    _dispatch_objc_retain(v2);
    return v2;
  }

  v6 = data1[7].isa;
  if (v6 <= 1)
  {
    v7 = (&dword_0 + 1);
  }

  else
  {
    v7 = data1[7].isa;
  }

  v8 = data2[7].isa;
  if (v8 <= 1)
  {
    v8 = (&dword_0 + 1);
  }

  v9 = 0;
  v10 = v8 + v7;
  if (!__CFADD__(v7, v8))
  {
    if (is_mul_ok(v10, 0x18uLL) && 24 * v10 < 0xFFFFFFFFFFFFFFC0)
    {
      v9 = _dispatch_object_alloc_bridged(OS_dispatch_data, 24 * v10 + 64);
      v9[7].isa = v10;
      v5 = v2[6].isa;
      isa = data1[6].isa;
      v6 = data1[7].isa;
    }

    v9[6].isa = (isa + v5);
    v11 = v9 + 8;
    if (v6)
    {
      memcpy(&v9[8], &data1[8], 24 * v6);
    }

    else
    {
      v12 = data1[6].isa;
      v9[9].isa = 0;
      v9[10].isa = v12;
      v9[8].isa = data1;
    }

    v13 = v2[7].isa;
    v14 = data1[7].isa;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    if (v13)
    {
      memcpy(&v11[3 * v14], &v2[8], 24 * v13);
    }

    else
    {
      v15 = v2[6].isa;
      v16 = &v11[3 * v14];
      v16[1] = 0;
      v16[2] = v15;
      *v16 = v2;
    }

    v17 = 0;
    v18 = 8;
    do
    {
      _dispatch_objc_retain(v9[v18].isa);
      v17 = (v17 + 1);
      v18 += 3;
    }

    while (v9[7].isa > v17);
  }

  return v9;
}

dispatch_data_t dispatch_data_create_subrange(dispatch_data_t data, size_t offset, size_t length)
{
  v3 = &_dispatch_data_empty;
  if (!length)
  {
    return v3;
  }

  v5 = data;
  isa = data[6].isa;
  while (1)
  {
    if (isa <= offset)
    {
      return v3;
    }

    v7 = isa - offset;
    if (isa - offset >= length)
    {
      v7 = length;
      if (isa == length)
      {
        v3 = v5;
        goto LABEL_18;
      }
    }

    v8 = v5[7].isa;
    if (!v8)
    {
      v3 = _dispatch_object_alloc_bridged(OS_dispatch_data, 88);
      v3[6].isa = v7;
      v3[7].isa = (&dword_0 + 1);
      v3[9].isa = offset;
      v3[10].isa = v7;
      v3[8].isa = v5;
LABEL_18:
      _dispatch_objc_retain(v5);
      return v3;
    }

    v9 = 0;
    v10 = v5 + 16;
    v11 = offset;
    while (1)
    {
      v12 = v10[-6].isa;
      if (v11 < v12)
      {
        break;
      }

      ++v9;
      v10 += 3;
      v11 -= v12;
      if (v8 == v9)
      {
        dispatch_data_create_subrange_cold_1(v8);
      }
    }

    v13 = (v11 + v7 - v12);
    if (v11 + v7 > v12)
    {
      break;
    }

    if (!v7)
    {
      return v3;
    }

    v5 = v10[-8].isa;
    offset = v10[-7].isa + v11;
    isa = v5[6].isa;
    length = v7;
  }

  v14 = v8 - v9;
  if ((v7 + offset) == isa)
  {
    v13 = 0;
    v15 = v8 - v9;
  }

  else if (v9 + 1 >= v8)
  {
    v15 = 1;
  }

  else
  {
    v16 = v10[-3].isa;
    v15 = 2;
    if (v13 > v16)
    {
      p_isa = &v10->isa;
      do
      {
        if (v14 == v15)
        {
          dispatch_data_create_subrange_cold_1(v8);
        }

        v13 = (v13 - v16);
        ++v15;
        v18 = *p_isa;
        p_isa += 3;
        v16 = v18;
      }

      while (v13 > v18);
    }
  }

  v19 = v10 - 8;
  v3 = _dispatch_object_alloc_bridged(OS_dispatch_data, 24 * v15 + 64);
  v3[6].isa = v7;
  v3[7].isa = v15;
  memcpy(&v3[8], v19, 24 * v15);
  if (v11)
  {
    v20 = (v3[10].isa - v11);
    v3[9].isa = (v3[9].isa + v11);
    v3[10].isa = v20;
  }

  if ((v7 + offset) != isa)
  {
    v3[3 * v15 + 7].isa = v13;
  }

  if (v15)
  {
    v21 = 8;
    do
    {
      _dispatch_objc_retain(v3[v21].isa);
      v21 += 3;
      --v15;
    }

    while (v15);
  }

  return v3;
}

void *_dispatch_data_flatten(uint64_t a1)
{
  v2 = malloc_type_malloc(*(a1 + 48), 0x3AE70BEEuLL);
  v3 = v2;
  if (v2)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = ___dispatch_data_flatten_block_invoke;
    applier[3] = &__block_descriptor_tmp_12_0;
    applier[4] = v2;
    dispatch_data_apply(a1, applier);
  }

  return v3;
}

uint64_t dispatch_data_apply_f(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[6];
  if (v3)
  {
    return _dispatch_data_apply(a1, 0, 0, v3, a2, a3);
  }

  else
  {
    return 1;
  }
}

uint64_t _dispatch_data_apply(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  v10 = a1[7];
  if (v10 == 1)
  {
    v12 = a1[8];
    v11 = a1[9];
    if (!v12[7])
    {
      goto LABEL_3;
    }

LABEL_9:
    v13 = v12[4];
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  v11 = 0;
  v12 = a1;
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_3:
  v13 = v12[4];
LABEL_4:
  if (v13)
  {

    return _dispatch_data_apply_client_callout(a5, a1, a2, v13 + v11 + a3, a4);
  }

LABEL_10:
  v15 = a1 + 10;
  v16 = 1;
  do
  {
    result = _dispatch_data_apply(*(v15 - 2), v8, *(v15 - 1), *v15, a5, a6);
    if (a1[7] <= v16)
    {
      break;
    }

    v17 = *v15;
    v15 += 3;
    v8 += v17;
    ++v16;
  }

  while ((result & 1) != 0);
  return result;
}

BOOL dispatch_data_apply(dispatch_data_t data, dispatch_data_applier_t applier)
{
  isa = data[6].isa;
  if (!isa)
  {
    return 1;
  }

  if (*(applier + 2))
  {
    v3 = *(applier + 2);
  }

  else
  {
    v3 = 0;
  }

  return _dispatch_data_apply(data, 0, 0, isa, applier, v3);
}

dispatch_data_t dispatch_data_copy_region(dispatch_data_t data, size_t location, size_t *offset_ptr)
{
  isa = data[6].isa;
  if (isa <= location)
  {
    *offset_ptr = isa;
    return &_dispatch_data_empty;
  }

  else
  {
    v4 = data;
    v5 = 0;
    v6 = 0;
    *offset_ptr = 0;
    v7 = v4[6].isa;
LABEL_4:
    if (v4[6].isa == v7)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }

LABEL_7:
    v9 = v4[7].isa;
    if (v9 == 1)
    {
      v15 = v4 + 8;
      v4 = v4[8].isa;
      v6 = (v6 + v15[1].isa);
      v9 = v4[7].isa;
    }

    if (!v4[4].isa)
    {
      v10 = 0;
      if (v9 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v9;
      }

      for (i = v4 + 10; ; i += 3)
      {
        v13 = i->isa;
        if (v6 >= i->isa)
        {
          v6 = (v6 - i->isa);
        }

        else
        {
          v7 = (v13 - v6);
          v14 = v13 - v6 + v10;
          if (v14 > location)
          {
            v4 = i[-2].isa;
            v6 = (v6 + i[-1].isa);
            v5 += v10;
            *offset_ptr = v5;
            location -= v10;
            if (!v6)
            {
              goto LABEL_4;
            }

            v8 = 0;
            goto LABEL_7;
          }

          v6 = 0;
          v10 = v14;
        }

        if (!--v11)
        {
          dispatch_data_copy_region_cold_1(v5, v10);
        }
      }
    }

    if (v8)
    {
      _dispatch_objc_retain(v8);
    }

    else
    {
      _dispatch_objc_retain(v4);
      if (v6 || v4[6].isa != v7)
      {
        v8 = _dispatch_object_alloc_bridged(OS_dispatch_data, 88);
        v8[6].isa = v7;
        v8[7].isa = (&dword_0 + 1);
        v8[9].isa = v6;
        v8[10].isa = v7;
        v8[8].isa = v4;
      }

      else
      {
        return v4;
      }
    }
  }

  return v8;
}

uint64_t dispatch_data_make_memory_entry(NSObject *a1)
{
  object_handle = 0;
  size = 0;
  isa = a1[6].isa;
  v3 = a1[5].isa != &__block_literal_global_4134;
  while (1)
  {
    v4 = v3;
    if (v3)
    {
      address = vm_page_size;
      v5 = mach_vm_allocate(mach_task_self_, &address, isa, 1);
      if (v5)
      {
        if (v5 == 3)
        {
          return object_handle;
        }

        v9 = 704;
        goto LABEL_16;
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 0x40000000;
      v11[2] = __dispatch_data_make_memory_entry_block_invoke;
      v11[3] = &__block_descriptor_tmp_9_0;
      v11[4] = address;
      dispatch_data_apply(a1, v11);
      v6 = address;
    }

    else
    {
      v6 = a1[4].isa;
      address = v6;
    }

    size = isa;
    memory_entry_64 = mach_make_memory_entry_64(mach_task_self_, &size, v6, 2097219, &object_handle, 0);
    if (memory_entry_64 == 18)
    {
      memory_entry_64 = mach_make_memory_entry_64(mach_task_self_, &size, address, 67, &object_handle, 0);
    }

    if (memory_entry_64)
    {
      break;
    }

    if (size >= isa)
    {
      goto LABEL_18;
    }

    v8 = mach_port_deallocate(mach_task_self_, object_handle);
    if (v8)
    {
      _dispatch_bug(731, v8);
    }

    v3 = 1;
    if (v4)
    {
      object_handle = 0;
      goto LABEL_19;
    }
  }

  _dispatch_bug(726, memory_entry_64);
  object_handle = 0;
LABEL_18:
  if (v4)
  {
LABEL_19:
    v5 = mach_vm_deallocate(mach_task_self_, address, isa);
    if (!v5)
    {
      return object_handle;
    }

    v9 = 740;
LABEL_16:
    _dispatch_bug(v9, v5);
  }

  return object_handle;
}

NSObject *dispatch_data_create_with_transform(NSObject *a1, uint64_t *a2, void *a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *a2;
  if (*a2 == 16)
  {
    v14 = 0;
    v7 = _dispatch_data_subrange_map(a1, &v14, 0, 2uLL);
    if (!v7)
    {
      return 0;
    }

    v8 = *v14;
    if (v8 == 65534)
    {
      v9 = &_dispatch_data_format_type_utf16be;
    }

    else
    {
      v9 = &_dispatch_data_format_type_utf8;
    }

    dispatch_release(v7);
    if (v8 == 65279)
    {
      v4 = &_dispatch_data_format_type_utf16le;
    }

    else
    {
      v4 = v9;
    }

    v6 = *v4;
  }

  if ((v6 & ~a3[1]) != 0 || (*a3 & ~v4[2]) != 0)
  {
    return 0;
  }

  if (dispatch_data_get_size(v5))
  {
    v11 = v4[3];
    if (v11)
    {
      v5 = v11(v5);
      if (!v5)
      {
        return v5;
      }
    }

    else
    {
      dispatch_retain(v5);
    }

    v12 = a3[4];
    if (v12)
    {
      v13 = v12(v5);
    }

    else
    {
      dispatch_retain(v5);
      v13 = v5;
    }

    dispatch_release(v5);
    return v13;
  }

  return v5;
}

uint64_t _dispatch_transform_from_base64(NSObject *a1)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v11[3] = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v10[3] = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v9[3] = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = &_dispatch_data_empty;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___dispatch_transform_from_base64_block_invoke;
  v4[3] = &unk_50CC0;
  v4[4] = v10;
  v4[5] = v9;
  v4[6] = v11;
  v4[7] = &v5;
  v1 = dispatch_data_apply(a1, v4);
  v2 = v6[3];
  if (!v1)
  {
    dispatch_release(v6[3]);
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v11, 8);
  return v2;
}

dispatch_data_t _dispatch_transform_to_base64(NSObject *a1)
{
  size = dispatch_data_get_size(a1);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v12[3] = 0;
  if (size == 3 * (size / 3))
  {
    v3 = size / 3;
  }

  else
  {
    v3 = size / 3 + 1;
  }

  if (v3 >> 62 || (v4 = size, v5 = 4 * v3, (v6 = malloc_type_malloc(4 * v3, 0x100004077774924uLL)) == 0))
  {
    v8 = 0;
  }

  else
  {
    v7 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2000000000;
    v11[3] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = ___dispatch_transform_to_base64_block_invoke;
    v10[3] = &unk_50CE8;
    v10[4] = v12;
    v10[5] = v11;
    v10[6] = a1;
    v10[7] = v4;
    if (dispatch_data_apply(a1, v10))
    {
      v8 = dispatch_data_create(v7, v5, 0, &__block_literal_global);
    }

    else
    {
      free(v7);
      v8 = 0;
    }

    _Block_object_dispose(v11, 8);
  }

  _Block_object_dispose(v12, 8);
  return v8;
}

dispatch_data_t _dispatch_transform_to_utf8_without_bom(NSObject *a1)
{
  v1 = a1;
  v7 = 0;
  v2 = _dispatch_data_subrange_map(a1, &v7, 0, 3uLL);
  if (v2 && (*v7 == 48111 ? (v3 = v7[2] == 191) : (v3 = 0), v3 ? (v4 = 0) : (v4 = 1), dispatch_release(v2), !v4))
  {
    size = dispatch_data_get_size(v1);
    return dispatch_data_create_subrange(v1, 3uLL, size - 3);
  }

  else
  {
    dispatch_retain(v1);
  }

  return v1;
}

dispatch_data_t _dispatch_data_subrange_map(NSObject *a1, const void **a2, size_t offset, size_t length)
{
  subrange = dispatch_data_create_subrange(a1, offset, length);
  if (dispatch_data_get_size(subrange) == length)
  {
    map = dispatch_data_create_map(subrange, a2, 0);
  }

  else
  {
    map = 0;
  }

  dispatch_release(subrange);
  return map;
}

uint64_t _dispatch_transform_from_base32_with_table(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v13[3] = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v12[3] = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v11[3] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = &_dispatch_data_empty;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___dispatch_transform_from_base32_with_table_block_invoke;
  v6[3] = &unk_50C70;
  v6[8] = a3;
  v6[9] = a2;
  v6[4] = v12;
  v6[5] = v11;
  v6[6] = v13;
  v6[7] = &v7;
  v3 = dispatch_data_apply(a1, v6);
  v4 = v8[3];
  if (!v3)
  {
    dispatch_release(v8[3]);
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);
  return v4;
}

_BYTE *___dispatch_transform_from_base32_with_table_block_invoke(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v5 = a5;
  v8 = a5 >> 3;
  if ((a5 & 7) != 0)
  {
    ++v8;
  }

  result = malloc_type_malloc(5 * v8, 0x100004077774924uLL);
  if (result)
  {
    v10 = result;
    if (v5)
    {
      v10 = result;
      do
      {
        v12 = *a4++;
        v11 = v12;
        v13 = (1 << v12) & 0x100000600;
        if (v12 > 0x20 || v13 == 0)
        {
          if (a1[8] <= v11 || (v15 = a1[9], *(v15 + v11) == 255))
          {
            free(result);
            return 0;
          }

          ++*(*(a1[4] + 8) + 24);
          v16 = *(v15 + v11);
          if (v16 == 254)
          {
            LOBYTE(v16) = 0;
            ++*(*(a1[5] + 8) + 24);
          }

          *(*(a1[6] + 8) + 24) *= 32;
          *(*(a1[6] + 8) + 24) += v16;
          if ((*(*(a1[4] + 8) + 24) & 7) == 0)
          {
            *v10 = *(*(a1[6] + 8) + 28);
            v10[1] = BYTE3(*(*(a1[6] + 8) + 24));
            v10[2] = BYTE2(*(*(a1[6] + 8) + 24));
            v10[3] = BYTE1(*(*(a1[6] + 8) + 24));
            v10[4] = *(*(a1[6] + 8) + 24);
            v10 += 5;
          }
        }

        --v5;
      }

      while (v5);
    }

    v17 = v10 - result;
    v18 = *(*(a1[5] + 8) + 24);
    v19 = v17 - 3;
    v20 = v17 - 4;
    if (v18 != 6)
    {
      v20 = v17;
    }

    if (v18 != 4)
    {
      v19 = v20;
    }

    v21 = v17 - 1;
    if (v18 == 3)
    {
      v17 -= 2;
    }

    if (v18 == 1)
    {
      v17 = v21;
    }

    if (v18 <= 3)
    {
      v22 = v17;
    }

    else
    {
      v22 = v19;
    }

    v23 = dispatch_data_create(result, v22, 0, &__block_literal_global);
    concat = dispatch_data_create_concat(*(*(a1[7] + 8) + 24), v23);
    dispatch_release(v23);
    dispatch_release(*(*(a1[7] + 8) + 24));
    *(*(a1[7] + 8) + 24) = concat;
    return (&dword_0 + 1);
  }

  return result;
}

dispatch_data_t _dispatch_transform_to_base32_with_table(NSObject *a1, uint64_t a2)
{
  size = dispatch_data_get_size(a1);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v14[3] = 0;
  if (size == 5 * (size / 5))
  {
    v5 = size / 5;
  }

  else
  {
    v5 = size / 5 + 1;
  }

  if (v5 >> 61 || (v6 = size, v7 = 8 * v5, (v8 = malloc_type_malloc(8 * v5, 0x100004077774924uLL)) == 0))
  {
    v10 = 0;
  }

  else
  {
    v9 = v8;
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2000000000;
    v13[3] = v8;
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = ___dispatch_transform_to_base32_with_table_block_invoke;
    applier[3] = &unk_50C98;
    applier[4] = v14;
    applier[5] = v13;
    applier[6] = a1;
    applier[7] = a2;
    applier[8] = v6;
    if (dispatch_data_apply(a1, applier))
    {
      v10 = dispatch_data_create(v9, v7, 0, &__block_literal_global);
    }

    else
    {
      free(v9);
      v10 = 0;
    }

    _Block_object_dispose(v13, 8);
  }

  _Block_object_dispose(v14, 8);
  return v10;
}

BOOL ___dispatch_transform_to_base32_with_table_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *(a4 + v10);
      v12 = *(*(*(a1 + 32) + 8) + 24);
      if (0xCCCCCCCCCCCCCCCDLL * v12 < 0x3333333333333334)
      {
        v13 = 0;
      }

      else if (v10)
      {
        v13 = *(a4 + v10 - 1);
      }

      else
      {
        v50 = 0;
        v14 = _dispatch_data_subrange_map(*(a1 + 48), &v50, a3 - 1, 1uLL);
        if (!v14)
        {
          return v9;
        }

        v13 = *v50;
        dispatch_release(v14);
        v12 = *(*(*(a1 + 32) + 8) + 24);
      }

      v15 = v12 % 5;
      v16 = *(a1 + 56);
      if (v15 > 1)
      {
        break;
      }

      if (v15)
      {
        v25 = *(v16 + ((4 * (v13 & 7u)) | (v11 >> 6)));
        v26 = *(*(a1 + 40) + 8);
        v27 = *(v26 + 24);
        *(v26 + 24) = v27 + 1;
        *v27 = v25;
        v16 = *(a1 + 56);
        v20 = (v11 >> 1) & 0x1F;
LABEL_18:
        v21 = (v16 + v20);
        goto LABEL_19;
      }

      v21 = (v16 + (v11 >> 3));
LABEL_19:
      v28 = *v21;
      v29 = *(*(a1 + 40) + 8);
      v30 = *(v29 + 24);
      *(v29 + 24) = v30 + 1;
      *v30 = v28;
      ++v10;
      ++*(*(*(a1 + 32) + 8) + 24);
      v9 = v10 >= a5;
      if (a5 == v10)
      {
        goto LABEL_20;
      }
    }

    if (v15 == 2)
    {
      v20 = (v11 >> 4) & 0xFFFFFFEF | (16 * (v13 & 1));
    }

    else if (v15 == 3)
    {
      v17 = *(v16 + ((v11 >> 7) & 0xFFFFFFE1 | (2 * (v13 & 0xF))));
      v18 = *(*(a1 + 40) + 8);
      v19 = *(v18 + 24);
      *(v18 + 24) = v19 + 1;
      *v19 = v17;
      v16 = *(a1 + 56);
      v20 = (v11 >> 2) & 0x1F;
    }

    else
    {
      v22 = *(v16 + ((v11 >> 5) & 0xFFFFFFE7 | (8 * (v13 & 3))));
      v23 = *(*(a1 + 40) + 8);
      v24 = *(v23 + 24);
      *(v23 + 24) = v24 + 1;
      *v24 = v22;
      v16 = *(a1 + 56);
      v20 = v11 & 0x1F;
    }

    goto LABEL_18;
  }

LABEL_20:
  if (a5 + a3 == *(a1 + 64))
  {
    v31 = *(*(*(a1 + 32) + 8) + 24);
    v32 = ~(5 * (v31 / 5)) + v31;
    if (v32 <= 3)
    {
      v33 = *(*(a1 + 56) + ((*(a4 + a5 - 1) << qword_45638[v32]) & qword_45658[v32]));
      v34 = *(*(a1 + 40) + 8);
      v35 = *(v34 + 24);
      *(v34 + 24) = v35 + 1;
      *v35 = v33;
    }

    v36 = *(*(*(a1 + 32) + 8) + 24) % 5uLL;
    v9 = 1;
    if (v36 > 2)
    {
      if (v36 != 3)
      {
        if (v36 != 4)
        {
          return v9;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (v36 == 1)
      {
        v37 = *(*(a1 + 40) + 8);
        v38 = *(v37 + 24);
        *(v37 + 24) = v38 + 1;
        *v38 = 61;
        v39 = *(*(a1 + 40) + 8);
        v40 = *(v39 + 24);
        *(v39 + 24) = v40 + 1;
        *v40 = 61;
      }

      else if (v36 != 2)
      {
        return v9;
      }

      v41 = *(*(a1 + 40) + 8);
      v42 = *(v41 + 24);
      *(v41 + 24) = v42 + 1;
      *v42 = 61;
    }

    v43 = *(*(a1 + 40) + 8);
    v44 = *(v43 + 24);
    *(v43 + 24) = v44 + 1;
    *v44 = 61;
    v45 = *(*(a1 + 40) + 8);
    v46 = *(v45 + 24);
    *(v45 + 24) = v46 + 1;
    *v46 = 61;
LABEL_34:
    v47 = *(*(a1 + 40) + 8);
    v48 = *(v47 + 24);
    *(v47 + 24) = v48 + 1;
    *v48 = 61;
    return v9;
  }

  return 1;
}

_BYTE *___dispatch_transform_from_base64_block_invoke(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v5 = a5;
  v8 = a5 >> 2;
  if ((a5 & 3) != 0)
  {
    ++v8;
  }

  result = malloc_type_malloc(3 * v8, 0x100004077774924uLL);
  if (result)
  {
    v10 = result;
    if (!v5)
    {
LABEL_18:
      v16 = dispatch_data_create(result, v10 - result - *(*(a1[5] + 8) + 24), 0, &__block_literal_global);
      concat = dispatch_data_create_concat(*(*(a1[7] + 8) + 24), v16);
      dispatch_release(v16);
      dispatch_release(*(*(a1[7] + 8) + 24));
      *(*(a1[7] + 8) + 24) = concat;
      return (&dword_0 + 1);
    }

    v10 = result;
    while (1)
    {
      v12 = *a4++;
      v11 = v12;
      v13 = (1 << v12) & 0x100000600;
      if (v12 > 0x20 || v13 == 0)
      {
        if (v11 > 0x7A || (v15 = base64_decode_table[v11], v15 == 255))
        {
          free(result);
          return 0;
        }

        ++*(*(a1[4] + 8) + 24);
        if (v11 == 61)
        {
          LOBYTE(v15) = 0;
          ++*(*(a1[5] + 8) + 24);
        }

        *(*(a1[6] + 8) + 24) <<= 6;
        *(*(a1[6] + 8) + 24) += v15;
        if ((*(*(a1[4] + 8) + 24) & 3) == 0)
        {
          *v10 = BYTE2(*(*(a1[6] + 8) + 24));
          v10[1] = BYTE1(*(*(a1[6] + 8) + 24));
          v10[2] = *(*(a1[6] + 8) + 24);
          v10 += 3;
        }
      }

      if (!--v5)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

BOOL ___dispatch_transform_to_base64_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v8 = 0;
    v9 = 0;
    v10 = a3 - 1;
    do
    {
      v11 = *(a4 + v9);
      v12 = *(*(*(a1 + 32) + 8) + 24);
      if (0xAAAAAAAAAAAAAAABLL * v12 < 0x5555555555555556)
      {
        v13 = 0;
      }

      else if (v9)
      {
        v13 = *(a4 + v9 - 1);
      }

      else
      {
        v38 = 0;
        v14 = _dispatch_data_subrange_map(*(a1 + 48), &v38, v10, 1uLL);
        if (!v14)
        {
          return v8;
        }

        v13 = *v38;
        dispatch_release(v14);
        v12 = *(*(*(a1 + 32) + 8) + 24);
      }

      v15 = v12 % 3;
      if (v15 == 2)
      {
        v17 = base64_encode_table[(4 * (v13 & 0xFu)) | (v11 >> 6)];
        v18 = *(*(a1 + 40) + 8);
        v19 = *(v18 + 24);
        *(v18 + 24) = v19 + 1;
        *v19 = v17;
        v16 = v11 & 0x3F;
      }

      else if (v15 == 1)
      {
        v16 = (v11 >> 4) & 0xFFFFFFCF | (16 * (v13 & 3));
      }

      else
      {
        v16 = v11 >> 2;
      }

      v20 = base64_encode_table[v16];
      v21 = *(*(a1 + 40) + 8);
      v22 = *(v21 + 24);
      *(v21 + 24) = v22 + 1;
      *v22 = v20;
      ++v9;
      ++*(*(*(a1 + 32) + 8) + 24);
      v8 = v9 >= a5;
    }

    while (a5 != v9);
  }

  if (a5 + a3 == *(a1 + 56))
  {
    v23 = *(*(*(a1 + 32) + 8) + 24) % 3uLL;
    if (v23 == 2)
    {
      v31 = base64_encode_table[4 * (*(a4 + a5 - 1) & 0xF)];
      v32 = *(*(a1 + 40) + 8);
      v33 = *(v32 + 24);
      *(v32 + 24) = v33 + 1;
      *v33 = v31;
      v34 = *(*(a1 + 40) + 8);
      v35 = *(v34 + 24);
      *(v34 + 24) = v35 + 1;
      *v35 = 61;
    }

    else if (v23 == 1)
    {
      v24 = base64_encode_table[16 * (*(a4 + a5 - 1) & 3)];
      v25 = *(*(a1 + 40) + 8);
      v26 = *(v25 + 24);
      *(v25 + 24) = v26 + 1;
      *v26 = v24;
      v27 = *(*(a1 + 40) + 8);
      v28 = *(v27 + 24);
      *(v27 + 24) = v28 + 1;
      *v28 = 61;
      v29 = *(*(a1 + 40) + 8);
      v30 = *(v29 + 24);
      *(v29 + 24) = v30 + 1;
      *v30 = 61;
    }
  }

  return 1;
}

uint64_t _dispatch_transform_from_utf16(NSObject *a1, int a2)
{
  v11[2] = 0x2000000000;
  v8 = 0x3800000000;
  v9 = off_50D30;
  v10 = unk_50D40;
  v11[0] = 0;
  v11[1] = v11;
  v11[3] = 0;
  v6 = 0;
  v7 = &v6;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = ___dispatch_transform_from_utf16_block_invoke;
  applier[3] = &unk_50D10;
  applier[4] = &v6;
  applier[5] = v11;
  applier[6] = a1;
  v5 = a2;
  if (dispatch_data_apply(a1, applier))
  {
    v2 = v7[3];
  }

  else
  {
    _dispatch_transform_buffer_new((v7 + 3), 0, 0);
    dispatch_release(v7[3]);
    v2 = 0;
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v11, 8);
  return v2;
}

NSObject *___dispatch_transform_from_utf16_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  if (!a3)
  {
    v9 = a5 == 3 * (a5 / 3) ? a5 / 3 : a5 / 3 + 1;
    result = _dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 2 * v9, 0);
    if (!result)
    {
      return result;
    }
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 24);
  if (v12 >= v5)
  {
    *(v11 + 24) = v12 - v5;
    return (&dword_0 + 1);
  }

  if (v12)
  {
    a4 += v12;
    v5 -= v12;
    *(v11 + 24) = 0;
  }

  v13 = (v5 & 1) + (v5 >> 1);
  if (!v13)
  {
LABEL_56:
    _dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 0, 0);
    return (&dword_0 + 1);
  }

  v14 = 0;
  while (1)
  {
    if ((v5 & 1) != 0 && v14 == v13 - 1)
    {
      v33 = 0;
      result = _dispatch_data_subrange_map(*(a1 + 48), &v33, a3 + 2 * (v13 - 1), 2uLL);
      if (!result)
      {
        return result;
      }

      v15 = bswap32(*v33) >> 16;
      LOWORD(v16) = *(a1 + 56) == 1 ? *v33 : v15;
      dispatch_release(result);
      ++*(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      v17 = bswap32(*(a4 + 2 * v14)) >> 16;
      LOWORD(v16) = *(a1 + 56) == 1 ? *(a4 + 2 * v14) : v17;
    }

    if (!(v14 | a3) && v16 == 65534)
    {
      return 0;
    }

    v16 = v16;
    if (v14 | a3 || v16 != 65279)
    {
      if ((v16 & 0xFC00) == 0xD800)
      {
        if (++v14 >= v13)
        {
          v33 = 0;
          result = _dispatch_data_subrange_map(*(a1 + 48), &v33, a3 + 2 * v14, 2uLL);
          if (!result)
          {
            return result;
          }

          v20 = bswap32(*v33) >> 16;
          if (*(a1 + 56) == 1)
          {
            v19 = *v33;
          }

          else
          {
            v19 = v20;
          }

          dispatch_release(result);
          *(*(*(a1 + 40) + 8) + 24) += 2;
        }

        else
        {
          v18 = bswap32(*(a4 + 2 * v14)) >> 16;
          if (*(a1 + 56) == 1)
          {
            v19 = *(a4 + 2 * v14);
          }

          else
          {
            v19 = v18;
          }
        }

        if (v19 >> 10 != 55)
        {
          return 0;
        }

        v16 = (v16 << 10) + (v19 & 0x3FF) - 56557568;
      }

      else if ((v16 & 0xFC00) == 0xDC00)
      {
        return 0;
      }

      if ((v13 - v14) < 0)
      {
        return 0;
      }

      v21 = 2 * (v13 - v14);
      if (v16 > 0x7F)
      {
        if (v16 > 0x7FF)
        {
          v23 = *(*(a1 + 32) + 8) + 24;
          if (HIWORD(v16))
          {
            result = _dispatch_transform_buffer_new(v23, 4uLL, v21);
            if (!result)
            {
              return result;
            }

            v25 = *(*(a1 + 32) + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = v26 + 1;
            *v26 = (v16 >> 18) | 0xF0;
            v24 = (v16 >> 12) & 0x3F | 0x80;
          }

          else
          {
            result = _dispatch_transform_buffer_new(v23, 3uLL, v21);
            if (!result)
            {
              return result;
            }

            v24 = (v16 >> 12) | 0xE0;
          }

          v27 = *(*(a1 + 32) + 8);
          v28 = *(v27 + 40);
          *(v27 + 40) = v28 + 1;
          *v28 = v24;
          v22 = (v16 >> 6) & 0x3F | 0x80;
        }

        else
        {
          result = _dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 2uLL, v21);
          if (!result)
          {
            return result;
          }

          v22 = (v16 >> 6) | 0xC0;
        }

        v29 = *(*(a1 + 32) + 8);
        v30 = *(v29 + 40);
        *(v29 + 40) = v30 + 1;
        *v30 = v22;
        LOBYTE(v16) = v16 & 0x3F | 0x80;
      }

      else
      {
        result = _dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 1uLL, v21);
        if (!result)
        {
          return result;
        }
      }

      v31 = *(*(a1 + 32) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v32 + 1;
      *v32 = v16;
      ++v14;
    }

    else
    {
      v14 = 1;
    }

    if (v14 >= v13)
    {
      goto LABEL_56;
    }
  }
}

void *_dispatch_transform_buffer_new(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (a2 && v6 + *(a1 + 24) - *(a1 + 16) >= a2)
  {
    return &dword_0 + 1;
  }

  if (v6)
  {
    v7 = *(a1 + 16);
    if (v7 <= v6)
    {
      free(v6);
    }

    else
    {
      v8 = dispatch_data_create(v6, v7 - v6, 0, &__block_literal_global);
      concat = dispatch_data_create_concat(*a1, v8);
      dispatch_release(v8);
      dispatch_release(*a1);
      *a1 = concat;
    }
  }

  *(a1 + 8) = 0;
  result = (a3 + a2);
  *(a1 + 24) = a3 + a2;
  if (!(a3 + a2))
  {
    goto LABEL_11;
  }

  if (result > 0x6400000)
  {
    return 0;
  }

  result = malloc_type_malloc(result, 0x100004077774924uLL);
  *(a1 + 8) = result;
  if (result)
  {
LABEL_11:
    *(a1 + 16) = result;
    return &dword_0 + 1;
  }

  return result;
}

uint64_t _dispatch_transform_to_utf16(NSObject *a1, int a2)
{
  v11[2] = 0x2000000000;
  v8 = 0x3800000000;
  v9 = off_50D30;
  v10 = unk_50D40;
  v11[0] = 0;
  v11[1] = v11;
  v11[3] = 0;
  v6 = 0;
  v7 = &v6;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = ___dispatch_transform_to_utf16_block_invoke;
  applier[3] = &unk_50D58;
  v5 = a2;
  applier[4] = &v6;
  applier[5] = v11;
  applier[6] = a1;
  if (dispatch_data_apply(a1, applier))
  {
    v2 = v7[3];
  }

  else
  {
    _dispatch_transform_buffer_new((v7 + 3), 0, 0);
    dispatch_release(v7[3]);
    v2 = 0;
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v11, 8);
  return v2;
}

NSObject *___dispatch_transform_to_utf16_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, size_t a5)
{
  v5 = a5;
  if (!a3)
  {
    result = 0;
    if ((a5 & 0x8000000000000000) != 0)
    {
      return result;
    }

    if (2 * a5 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return result;
    }

    result = _dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 2 * a5 + 2, 0);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 56) == 1)
    {
      v27 = -257;
    }

    else
    {
      v27 = -2;
    }

    v28 = *(*(a1 + 32) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v29 + 1;
    *v29 = v27;
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 24);
  if (v10 >= v5)
  {
    *(v9 + 24) = v10 - v5;
    return (&dword_0 + 1);
  }

  if (!v10)
  {
    goto LABEL_6;
  }

  *(v9 + 24) = 0;
  v5 -= v10;
  if (!v5)
  {
LABEL_35:
    _dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 0, 0);
    return (&dword_0 + 1);
  }

  a4 += v10;
LABEL_6:
  v11 = 0;
  while (1)
  {
    v12 = *a4;
    if (v12 < 0)
    {
      if ((v12 & 0xE0) == 0xC0)
      {
        v13 = 2;
      }

      else if ((v12 & 0xF0) == 0xE0)
      {
        v13 = 3;
      }

      else
      {
        if ((v12 & 0xF8) != 0xF0)
        {
          return 0;
        }

        v13 = 4;
      }
    }

    else
    {
      v13 = 1;
    }

    if (v13 + v11 <= v5)
    {
      utf8_sequence = _dispatch_transform_read_utf8_sequence(a4);
      v11 += v13;
    }

    else
    {
      v30 = 0;
      result = _dispatch_data_subrange_map(*(a1 + 48), &v30, v11 + a3, v13);
      if (!result)
      {
        return result;
      }

      v15 = result;
      utf8_sequence = _dispatch_transform_read_utf8_sequence(v30);
      *(*(*(a1 + 40) + 8) + 24) += v11 - v5 + v13;
      dispatch_release(v15);
      v11 = v5;
    }

    if ((v5 - v11) < 0)
    {
      return 0;
    }

    if (utf8_sequence != 65279 || v11 + a3 != 3)
    {
      if (utf8_sequence - 55296 < 0x7FF)
      {
        return 0;
      }

      v17 = 2 * (v5 - v11);
      v18 = *(*(a1 + 32) + 8) + 24;
      if (utf8_sequence < 0x10000)
      {
        result = _dispatch_transform_buffer_new(v18, 2uLL, v17);
        if (!result)
        {
          return result;
        }

        v23 = utf8_sequence;
      }

      else
      {
        result = _dispatch_transform_buffer_new(v18, 4uLL, v17);
        if (!result)
        {
          return result;
        }

        v19 = bswap32(((utf8_sequence + 983040) >> 10) & 0x3FF | 0xFFFFD800) >> 16;
        if (*(a1 + 56) == 1)
        {
          v20 = ((utf8_sequence + 983040) >> 10) & 0x3FF | 0xD800;
        }

        else
        {
          v20 = v19;
        }

        v21 = *(*(a1 + 32) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v22 + 1;
        *v22 = v20;
        v23 = utf8_sequence & 0x3FF | 0xFFFFDC00;
      }

      v24 = bswap32(v23) >> 16;
      if (*(a1 + 56) != 1)
      {
        LOWORD(v23) = v24;
      }

      v25 = *(*(a1 + 32) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v26 + 1;
      *v26 = v23;
    }

    a4 += v13;
    if (v5 <= v11)
    {
      goto LABEL_35;
    }
  }
}

uint64_t _dispatch_transform_read_utf8_sequence(unsigned __int8 *a1)
{
  v2 = *a1;
  result = *a1;
  if (v2 < 0)
  {
    v4 = result & 0xE0;
    v5 = (result & 0x1F) << 6;
    v6 = result & 0xF0;
    v7 = (result & 0xF) << 6;
    v8 = (result & 7) << 6;
    if ((result & 0xF8) == 0xF0)
    {
      v9 = 3;
    }

    else
    {
      v9 = 255;
    }

    if ((result & 0xF8) != 0xF0)
    {
      v8 = 0;
    }

    v10 = v6 == 224;
    if (v6 == 224)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9;
    }

    if (!v10)
    {
      v7 = v8;
    }

    v12 = v4 == 192;
    if (v4 == 192)
    {
      v13 = 1;
    }

    else
    {
      v13 = v11;
    }

    if (!v12)
    {
      v5 = v7;
    }

    v14 = (a1 + 1);
    do
    {
      v15 = *v14++;
      result = v5 | v15 & 0x3Fu;
      --v13;
      v5 = result << 6;
    }

    while (v13);
  }

  return result;
}

uint64_t _dispatch_time_init()
{
  info = 0;
  v0 = mach_timebase_info(&info);
  if (v0)
  {
    _dispatch_bug(86, v0);
  }

  result = info.numer;
  if (info.numer != 125 || info.denom != 3)
  {
    return _dispatch_time_init_cold_1(info.numer, info.denom);
  }

  return result;
}

dispatch_time_t dispatch_time(dispatch_time_t when, int64_t delta)
{
  if (when > -2)
  {
    if (when == -1)
    {
      return when;
    }

    if (when)
    {
      goto LABEL_8;
    }

    when = mach_absolute_time();
    v3 = 0;
LABEL_11:
    if (when == -1)
    {
      return when;
    }

    goto LABEL_12;
  }

  if (when == 0x8000000000000000)
  {
    v3 = 1;
    when = mach_continuous_time();
    goto LABEL_11;
  }

  if (when == -2)
  {
    when = clock_gettime_nsec_np(_CLOCK_REALTIME);
    v3 = 2;
    goto LABEL_11;
  }

LABEL_8:
  if ((when & 0x8000000000000000) != 0)
  {
    if ((when & 0x4000000000000000) == 0)
    {
      when &= 0x3FFFFFFFFFFFFFFFuLL;
      v3 = 1;
      goto LABEL_21;
    }

    when = -when;
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if (when >> 62)
  {
    return -1;
  }

LABEL_12:
  if (v3 == 2)
  {
    v4 = when + delta;
    if (delta < 0)
    {
      if (v4 < 1)
      {
        v4 = 2;
        return -v4;
      }

      if (v4 <= 0x3FFFFFFFFFFFFFFELL)
      {
        return -v4;
      }
    }

    else if ((v4 - 0x3FFFFFFFFFFFFFFFLL) >= 0xC000000000000002)
    {
      return -v4;
    }

    return -1;
  }

LABEL_21:
  if ((delta & 0x8000000000000000) == 0)
  {
    if (_dispatch_host_time_nano2mach)
    {
      v11 = when;
      delta = _dispatch_host_time_nano2mach(delta);
      when = v11;
    }

    else if (delta && delta != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (delta > 0x5555555555555554)
      {
        delta = 3 * (delta / 0x7DuLL);
      }

      else
      {
        v5 = ((3 * delta) * 0x624DD2F1A9FBE77uLL) >> 64;
        delta = (v5 + ((3 * delta - v5) >> 1)) >> 6;
      }
    }

    v6 = delta + when;
    if (delta + when - 0x3FFFFFFFFFFFFFFFLL < 0xC000000000000002)
    {
      return -1;
    }

LABEL_37:
    if (v3 == 1)
    {
      return v6 | 0x8000000000000000;
    }

    else
    {
      return v6;
    }
  }

  v7 = -delta;
  if (_dispatch_host_time_nano2mach)
  {
    v10 = when;
    v9 = _dispatch_host_time_nano2mach(v7);
    when = v10;
  }

  else if (v7 > 0x7FFFFFFFFFFFFFFELL)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if (v7 > 0x5555555555555554)
  {
    v9 = 3 * (v7 / 0x7D);
  }

  else
  {
    v8 = ((-3 * delta) * 0x624DD2F1A9FBE77uLL) >> 64;
    v9 = (v8 + ((-3 * delta - v8) >> 1)) >> 6;
  }

  v6 = when - v9;
  if (v6 > 0)
  {
    if (v6 > 0x3FFFFFFFFFFFFFFELL)
    {
      return -1;
    }

    goto LABEL_37;
  }

  if (v3 == 1)
  {
    return 0x8000000000000001;
  }

  else
  {
    return 1;
  }
}

dispatch_time_t dispatch_walltime(const timespec *when, int64_t delta)
{
  if (when)
  {
    v3 = when->tv_nsec + 1000000000 * when->tv_sec;
  }

  else
  {
    v3 = clock_gettime_nsec_np(_CLOCK_REALTIME);
  }

  v4 = v3 + delta;
  v5 = -2;
  if (delta >= 0)
  {
    v5 = -1;
  }

  if (v4 >= 2)
  {
    return -v4;
  }

  else
  {
    return v5;
  }
}

void *_dispatch_continuation_alloc_from_heap()
{
  if (_dispatch_continuation_alloc_init_pred != -1)
  {
    _dispatch_continuation_alloc_from_heap_cold_1();
  }

  if (_dispatch_use_dispatch_alloc == 1)
  {

    return _dispatch_alloc_continuation_alloc();
  }

  else
  {
    while (1)
    {
      result = malloc_type_calloc(1uLL, 0x40uLL, 0x6C65818FuLL);
      if (result)
      {
        break;
      }

      _dispatch_temporary_resource_shortage();
    }
  }

  return result;
}

unint64_t _dispatch_alloc_continuation_alloc()
{
  if (!_dispatch_main_heap)
  {
    goto LABEL_11;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
  v1 = _dispatch_main_heap;
  v2 = *(_dispatch_main_heap + ((StatusReg & 0xFFF) << 20) + 8);
  if (v2)
  {
    v3 = 0;
    while (2)
    {
      v4 = (v2 + 8 * v3);
      v5 = *v4;
      while (v5 != -1)
      {
        v6 = __clz(__rbit64(~v5));
        v7 = v5;
        atomic_compare_exchange_strong_explicit(v4, &v7, (1 << v6) | v5, memory_order_relaxed, memory_order_relaxed);
        v8 = v7 == v5;
        v5 = v7;
        if (v8)
        {
          v10 = (v4 & 0xFFFFF) - 64;
          v11 = v10 >> 3;
          v12 = (v10 >> 9) & 0x3FFFFFF;
          result = (((v4 & 0xFFFFFFFFFFF00000) + (v12 << 18)) & 0xFFFFFFFFFFFC0FFFLL | ((v11 & 0x3F) << 12)) + (v6 << 6) + 0x4000;
          v13 = v4 & 0xFFFFFFFFFFF00000 | 0x10;
          v14 = 1 << v11;
          v15 = *(v13 + 8 * v12);
          v16 = (v13 + 8 * v12);
          do
          {
            if (*v4 != -1)
            {
              break;
            }

            v17 = v15;
            atomic_compare_exchange_strong_explicit(v16, &v17, v15 | v14, memory_order_relaxed, memory_order_relaxed);
            v8 = v17 == v15;
            v15 = v17;
          }

          while (!v8);
          return result;
        }
      }

      if (++v3 != 4)
      {
        continue;
      }

      break;
    }

    v1 = _dispatch_main_heap;
  }

  result = _dispatch_alloc_continuation_from_heap(v1);
  if (!result)
  {
LABEL_11:

    return _dispatch_alloc_continuation_from_heap_slow();
  }

  return result;
}

void _dispatch_continuation_free_to_heap(uint64_t a1)
{
  if (_dispatch_use_dispatch_alloc == 1)
  {
    _dispatch_alloc_continuation_free(a1);
  }

  else
  {
    free(a1);
  }
}

void _dispatch_alloc_continuation_free(uint64_t a1)
{
  *a1 = 0;
  v1 = a1 - (a1 & 0xFFFFFFFFFFF00000);
  v2 = (v1 - 0x4000) >> 6;
  v3 = ((v1 - 0x4000) >> 18) & 0xFFFFF;
  v4 = (a1 & 0xFFFFFFFFFFF00000) + 8 * v3 + 16;
  v5 = (a1 & 0xFFFFFFFFFFF00000) + (v3 << 9) + 8 * ((v2 >> 6) & 0x3F) + 64;
  v6 = (v1 - 1664) >> 6;
  v7 = v6 >> 6;
  if ((a1 & 0xFC000) != 0)
  {
    v8 = v4;
  }

  else
  {
    v5 = (a1 & 0xFFFFFFFFFFF00000) + 8 * v7 + 1600;
    v8 = 0;
  }

  if ((a1 & 0xFC000) != 0)
  {
    LOBYTE(v7) = (v2 >> 6) & 0x3F;
  }

  else
  {
    LOBYTE(v2) = v6;
  }

  v9 = 1 << v2;
  if ((v9 & *v5) != 0)
  {
    v5 = atomic_fetch_and_explicit(v5, ~v9, memory_order_release);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *v5;
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Corruption: failed to clear bit exclusively";
    qword_6D1F0 = v8;
    __break(1u);
  }

  atomic_fetch_and_explicit(v8, ~(1 << v7), memory_order_release);
  if ((v5 & ~v9) == 0)
  {
    _dispatch_alloc_maybe_madvise_page(a1);
  }
}

uint64_t _dispatch_continuation_alloc_init()
{
  v0 = malloc_engaged_nano() == 0;
  v1 = getenv("LIBDISPATCH_CONTINUATION_ALLOCATOR");
  if (v1)
  {
    v0 = atoi(v1) != 0;
  }

  result = sub_43CD8();
  _dispatch_use_dispatch_alloc = (result ^ 1) & v0;
  return result;
}

uint64_t _dispatch_alloc_continuation_from_heap(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + ((_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) & 0xFFF) << 20);
  v3 = v2 + 1600;
  while (2)
  {
    v4 = *(v3 + 8 * v1);
    while (v4 != -1)
    {
      v5 = __clz(__rbit64(~v4));
      v6 = v4;
      atomic_compare_exchange_strong_explicit((v3 + 8 * v1), &v6, (1 << v5) | v4, memory_order_relaxed, memory_order_relaxed);
      v7 = v6 == v4;
      v4 = v6;
      if (v7)
      {
        v9 = (v1 & 0x3FFFFFF) << 6;
        return v2 + ((v9 | v5) << 6) + 1664;
      }
    }

    if (++v1 != 3)
    {
      continue;
    }

    break;
  }

  v8 = *(v2 + 1624);
  v9 = 192;
  while (v8 != -1)
  {
    v5 = __clz(__rbit64(~v8));
    if (v5 > 0x25)
    {
      break;
    }

    v10 = v8;
    atomic_compare_exchange_strong_explicit((v2 + 1624), &v10, (1 << v5) | v8, memory_order_relaxed, memory_order_relaxed);
    v7 = v10 == v8;
    v8 = v10;
    if (v7)
    {
      return v2 + ((v9 | v5) << 6) + 1664;
    }
  }

  v12 = 0;
  v13 = v2 + 16;
  do
  {
    if (*(v13 + 8 * v12) != -1)
    {
      v14 = 0;
      while (2)
      {
        v15 = v2 + 64 + (v12 << 9) + 8 * v14;
        v16 = *v15;
        while (v16 != -1)
        {
          v17 = __clz(__rbit64(~v16));
          v18 = v16;
          atomic_compare_exchange_strong_explicit(v15, &v18, (1 << v17) | v16, memory_order_relaxed, memory_order_relaxed);
          v7 = v18 == v16;
          v16 = v18;
          if (v7)
          {
            StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
            *(_dispatch_main_heap + ((StatusReg & 0xFFF) << 20) + 8) = v15 & 0xFFFFFFFFFFFFFFE0;
            v20 = *(v13 + 8 * v12);
            v21 = (v13 + 8 * v12);
            do
            {
              if (*v15 != -1)
              {
                break;
              }

              v22 = v20;
              atomic_compare_exchange_strong_explicit(v21, &v22, v20 | (1 << v14), memory_order_relaxed, memory_order_relaxed);
              v7 = v22 == v20;
              v20 = v22;
            }

            while (!v7);
            return v2 + (v12 << 18) + (v14 << 12) + (v17 << 6) + 0x4000;
          }
        }

        if (++v14 != 64)
        {
          continue;
        }

        break;
      }
    }

    result = 0;
    ++v12;
  }

  while (v12 != 3);
  return result;
}

uint64_t _dispatch_alloc_continuation_from_heap_slow()
{
  for (i = &_dispatch_main_heap; ; i = *i)
  {
    v1 = *i;
    if (!*i)
    {
      _dispatch_alloc_try_create_heap(i);
      v1 = *i;
    }

    result = _dispatch_alloc_continuation_from_heap(v1);
    if (result)
    {
      break;
    }
  }

  return result;
}

void _dispatch_alloc_try_create_heap(atomic_ullong *a1)
{
  v2 = MEMORY[0xFFFFFC036] << 20;
  while (1)
  {
    address = vm_page_size;
    v3 = mach_vm_map(mach_task_self_, &address, v2, 0xFFFFFuLL, 1241513985, 0, 0, 0, 3, 7, 1u);
    if (!v3)
    {
      break;
    }

    if (v3 != 3)
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Could not allocate heap";
      qword_6D1F0 = v3;
      __break(1u);
LABEL_9:
      _dispatch_bug(450, v3);
      return;
    }

    _dispatch_temporary_resource_shortage();
  }

  v4 = 0;
  v5 = address;
  atomic_compare_exchange_strong_explicit(a1, &v4, address, memory_order_relaxed, memory_order_relaxed);
  if (v4)
  {
    v3 = munmap(v5, MEMORY[0xFFFFFC036] << 20);
    if (v3)
    {
      goto LABEL_9;
    }
  }
}

void _dispatch_alloc_maybe_madvise_page(uint64_t a1)
{
  if ((a1 & 0xFC000) != 0)
  {
    v2 = (a1 & 0xFFFFFFFFFFFFC000);
    if (v2)
    {
      v3 = 0;
      v4 = a1 & 0xFFFFFFFFFFF00000;
      v5 = v2 - v4 - 0x4000;
      v6 = v5 >> 12;
      v7 = (v5 >> 12) & 0x3F;
      v8 = (v5 >> 18) & 0xFFFFF;
      v9 = (((v4 + (v8 << 9)) & 0xFFFFFFFFFFFFFE07 | (8 * (v6 & 0x3F))) + 64);
      while (!v9[v3])
      {
        if (++v3 == 4)
        {
          v10 = 0;
          v16 = v7;
          v17 = v4;
          v15 = v8;
          while (1)
          {
            v11 = 0;
            atomic_compare_exchange_strong_explicit(&v9[v10], &v11, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
            if (v11)
            {
              break;
            }

            if (++v10 == 4)
            {
              v12 = madvise(v2, 0x4000uLL, 5);
              if (v12)
              {
                _dispatch_bug(586, v12);
              }

              v10 = 4;
LABEL_14:
              v13 = v10 + 1;
              v14 = ((v15 << 9) + 8 * v10 + 8 * v16 + v17 + 56);
              do
              {
                *v14-- = 0;
                --v13;
              }

              while (v13 > 2);
              goto LABEL_16;
            }
          }

          if (v10 >= 2)
          {
            goto LABEL_14;
          }

          if (v10)
          {
LABEL_16:
            *v9 = 0;
            return;
          }

          return;
        }
      }
    }
  }
}

uint64_t _dispatch_benchmark_init(unsigned int *a1)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = *(a1 + 4);
  mach_timebase_info(a1);
  mach_absolute_time();
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  do
  {
    v3(v2);
    --v5;
  }

  while (v5);
  mach_absolute_time();
  v7 = *a1;
  v6 = a1[1];
  __udivti3();
  result = __udivti3();
  *(a1 + 1) = result;
  return result;
}

NSObject *_dispatch_introspection_init()
{
  byte_6D338 = _dispatch_getenv_BOOL("LIBDISPATCH_DEBUG_QUEUE_INVERSIONS", 0);
  v0 = *_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *thread_info_out = 0;
  v10 = 0;
  v11 = 0;
  thread_info_outCnt = 6;
  v1 = pthread_mach_thread_np(v0);
  v2 = thread_info(v1, 4u, thread_info_out, &thread_info_outCnt);
  if (v2)
  {
    _dispatch_bug(72, v2);
  }

  else
  {
    qword_6D330 = v11 - v0;
  }

  pthread_key_init_np();
  _dispatch_introspection_thread_add();
  v3 = &_dispatch_root_queues;
  v4 = 18;
  do
  {
    if (MEMORY[0xFFFFFC100])
    {
      *__dst = 0u;
      v13 = 0u;
      if (v3[9])
      {
        v5 = v3[9];
      }

      else
      {
        v5 = "";
      }

      strncpy(__dst, v5, 0x20uLL);
      *(v3 + 21);
      v6 = v3[8];
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    _dispatch_introspection_queue_create(v3);
    v3 += 16;
    --v4;
  }

  while (v4);
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_introspection_init_cold_1();
  }

  _dispatch_introspection_queue_create(&_dispatch_main_q);
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_introspection_init_cold_2();
  }

  return _dispatch_introspection_queue_create(&_dispatch_mgr_q);
}

void _dispatch_introspection_thread_remove(uint64_t a1)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&dword_6D328, &v2, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    _dispatch_introspection_thread_remove_cold_1();
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 16) = v5;
  }

  *v5 = v4;
  v6 = *(StatusReg + 24) & 0xFFFFFFFC;
  v7 = atomic_exchange_explicit(&dword_6D328, 0, memory_order_release);
  if (v7 != v6)
  {
    _dispatch_unfair_lock_unlock_slow(&dword_6D328, v7);
  }

  v8 = *(StatusReg + 176);
  if (v8)
  {
    v9 = *(v8 + 8) + 1;
  }

  else
  {
    v9 = 1;
  }

  if (v9 > _dispatch_continuation_cache_limit)
  {
    _dispatch_continuation_free_to_cache_limit(a1);
  }

  else
  {
    *(a1 + 16) = v8;
    *(a1 + 8) = v9;
    *(StatusReg + 176) = a1;
  }

  *(StatusReg + 208) = 0;
}

void _dispatch_introspection_thread_add()
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (!*(StatusReg + 208))
  {
    v1 = *StatusReg;
    v2 = *(StatusReg + 176);
    if (v2)
    {
      *(StatusReg + 176) = v2[2];
    }

    else
    {
      v2 = _dispatch_continuation_alloc_from_heap();
    }

    v3 = 0;
    *v2 = 65;
    v4 = v1 + qword_6D330;
    if (!qword_6D330)
    {
      v4 = 0;
    }

    v2[3] = v1;
    v2[4] = v4;
    *(StatusReg + 208) = v2;
    atomic_compare_exchange_strong_explicit(&dword_6D328, &v3, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      _dispatch_introspection_thread_remove_cold_1();
    }

    v5 = _dispatch_introspection;
    v2[1] = _dispatch_introspection;
    if (v5)
    {
      *(v5 + 16) = v2 + 1;
    }

    v2[2] = &_dispatch_introspection;
    _dispatch_introspection = v2;
    v6 = *(StatusReg + 24) & 0xFFFFFFFC;
    v7 = atomic_exchange_explicit(&dword_6D328, 0, memory_order_release);
    if (v7 != v6)
    {

      _dispatch_unfair_lock_unlock_slow(&dword_6D328, v7);
    }
  }
}

uint64_t dispatch_introspection_queue_get_info@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 40);
  if (v2 == 18)
  {
    v3 = *(result + 56);
    *(a2 + 40) = 0;
    v4 = *(result + 24);
    *a2 = result;
    *(a2 + 8) = v4;
    v5 = *(result + 64);
    *(a2 + 16) = *(result + 72);
    *(a2 + 24) = v5;
    *(a2 + 32) = 1;
    v6 = (v3 & 0x4000000001) == 0;
    v2 = (v3 >> 53) & 2;
    if (!v6)
    {
      LOBYTE(v2) = v2 + 1;
    }
  }

  else
  {
    v7 = *(result + 8);
    v8 = *(result + 56);
    v9 = (v8 & 0x4000000001) != 0;
    *(a2 + 40) = 0;
    v10 = *(result + 24);
    *a2 = result;
    *(a2 + 8) = v10;
    v11 = *(result + 64);
    *(a2 + 16) = *(result + 72);
    *(a2 + 24) = v11;
    LODWORD(v10) = *(result + 112) + (v8 >> 58);
    *(a2 + 32) = *(result + 80);
    *(a2 + 36) = v10;
    if (v7 == 0x7FFFFFFF)
    {
      v9 = 0;
    }

    if (((v8 >> 54) & (v7 != 0x7FFFFFFF)) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 | v9;
    if (*(result + 104) == -1)
    {
      v14 = 4;
    }

    else if (*(result + 104))
    {
      v14 = 0;
    }

    else
    {
      v14 = 4 * (*(result + 48) != 0);
    }

    LOBYTE(v2) = (16 * (v2 == 394769)) | (8 * (v7 == 0x7FFFFFFF)) | v14 | v13;
  }

  *(a2 + 40) = v2;
  return result;
}

int8x16_t dispatch_introspection_queue_item_get_info@<Q0>(void *a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>, int8x16_t result@<Q0>)
{
  v4 = a1;
  result.i64[0] = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (*a1 >= 0x1000uLL)
  {
    v6 = *a1;
    v7 = *(*a1 + 40);
    if (v7 == 256)
    {
      while (1)
      {
        v8 = v4;
        v4 = v4[7];
        if (*v4 <= 0xFFFuLL)
        {
          break;
        }

        v6 = *v4;
        v7 = *(*v4 + 40);
        if (v7 != 256)
        {
          a2 = v8[6];
          goto LABEL_6;
        }
      }

      a2 = v8[6];
    }

    else
    {
LABEL_6:
      if (v7)
      {
        v9 = v7 == 531 || v7 == 17;
        if (v9)
        {
          *a3 = 257;
          v10 = *(v4 + 2);
          v11 = v4[7];
          v12 = (v11 & 0x4000000001) != 0;
          v13 = v4[3];
          v15 = v4[8];
          v14 = v4[9];
          v16 = *(v4 + 40);
          v17 = *(v4 + 28) + (v11 >> 58);
          if (v10 == 0x7FFFFFFF)
          {
            v12 = 0;
          }

          if (((v11 >> 54) & (v10 != 0x7FFFFFFF)) != 0)
          {
            v18 = 2;
          }

          else
          {
            v18 = 0;
          }

          if (v4[13] == -1)
          {
            v19 = 4;
          }

          else if (v4[13])
          {
            v19 = 0;
          }

          else
          {
            v19 = 4 * (v4[6] != 0);
          }

          *(a3 + 8) = v4;
          *(a3 + 16) = v13;
          *(a3 + 24) = v14;
          *(a3 + 32) = v15;
          *(a3 + 40) = v16;
          *(a3 + 44) = v17;
          *(a3 + 48) = v12 | (8 * (v10 == 0x7FFFFFFF)) | v18 | v19 | (16 * (v7 == 394769));
          *(a3 + 49) = 0;
          *(a3 + 52) = 0;
        }

        else if (v7 == 18)
        {
          *a3 = 257;
          *(a3 + 8) = v4;
          v20 = v4[7];
          *(a3 + 52) = 0;
          *(a3 + 49) = 0;
          v22 = v4[8];
          v21 = v4[9];
          v9 = (v20 & 0x4000000001) == 0;
          v23 = (v20 >> 53) & 2;
          if (!v9)
          {
            LOBYTE(v23) = v23 + 1;
          }

          *(a3 + 16) = v4[3];
          *(a3 + 24) = v21;
          *(a3 + 32) = v22;
          result.i64[0] = 1;
          *(a3 + 40) = 1;
          *(a3 + 48) = v23;
        }

        else if (v7 == 787)
        {
          *a3 = 66;
          v27 = v4[11];
          v28 = v4[7];
          v29 = v4[3];
          v30 = *(v27 + 28);
          v31 = *(v27 + 24);
          v32 = *(v27 + 48);
          v33 = *(v27 + 40);
          v34 = *(v4 + 28) + (v28 >> 58);
          v35 = (*(v27 + 29) >> 5) & 2;
          if ((v28 & 0x4000000001) != 0)
          {
            ++v35;
          }

          v36 = v35 | *(v4 + 116) & 0x10u;
          *(a3 + 8) = v4;
          *(a3 + 16) = v29;
          *(a3 + 24) = v30;
          *(a3 + 32) = v31;
          *(a3 + 40) = v32;
          *(a3 + 48) = v33;
          *(a3 + 56) = v34 | (v36 << 32);
        }

        else if (v7 == 275)
        {
          *a3 = 66;
          v24 = v4[11];
          v25 = *(v24 + 40);
          if (v25)
          {
            v26 = v25[2];
            LODWORD(v25) = (v25->u8[0] >> 3) & 2;
          }

          else
          {
            v26 = 0uLL;
          }

          v39 = v4[7];
          v40 = v4[3];
          v41 = *(v24 + 28);
          v42 = *(v24 + 24);
          v43 = *(v4 + 28) + (v39 >> 58);
          v44 = *(v24 + 29);
          if ((v44 & 2) != 0)
          {
            v45 = (*(v24 + 30) >> 3) & 8;
          }

          else
          {
            v45 = 0;
          }

          *(a3 + 8) = v4;
          *(a3 + 16) = v40;
          *(a3 + 24) = v41;
          *(a3 + 32) = v42;
          result = vextq_s8(v26, v26, 8uLL);
          *(a3 + 40) = result;
          *(a3 + 56) = v43 | ((v25 & 0xFFFFFFFB | ((v39 & 0x4000000001) != 0) | (4 * ((v44 >> 1) & 1)) | v45) << 32);
        }

        else
        {
          *a3 = 256;
          v37 = v4[3];
          ClassName = object_getClassName(v4);
          *(a3 + 8) = v4;
          *(a3 + 16) = v37;
          *(a3 + 24) = v6;
          *(a3 + 32) = ClassName + 12;
        }

        return result;
      }
    }
  }

  _dispatch_introspection_continuation_get_info(a2, v4, a3);
  return result;
}

uint64_t _dispatch_introspection_continuation_get_info(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  if (*a2 >= 0x1000)
  {
    while (1)
    {
      result = v6;
      v8 = __ROR8__(*(v6 + 40) - 256, 8);
      if ((v8 - 5) >= 3)
      {
        break;
      }

      v4 = *(v4 + 48);
      v6 = *v4;
      if (*v4 < 0x1000uLL)
      {
        goto LABEL_10;
      }

      v9 = *v4;
      v10 = *(v6 + 40);
      if (v10)
      {
        *a3 = 257;
        if (v10 == 18)
        {
          v11 = 0;
          v12 = *(v4 + 56);
          v13 = *(v4 + 24);
          v15 = *(v4 + 64);
          v14 = *(v4 + 72);
          if ((v12 & 0x4000000001) != 0)
          {
            v16 = ((v12 >> 53) & 2) + 1;
          }

          else
          {
            v16 = (v12 >> 53) & 2;
          }

          v17 = 1;
        }

        else
        {
          v21 = *(v4 + 8);
          v22 = *(v4 + 56);
          v13 = *(v4 + 24);
          v15 = *(v4 + 64);
          v14 = *(v4 + 72);
          v17 = *(v4 + 80);
          v11 = *(v4 + 112) + (v22 >> 58);
          v23 = v21 != 0x7FFFFFFF && (v22 & 0x4000000001) != 0;
          v24 = ((v22 >> 54) & (v21 != 0x7FFFFFFF)) == 0;
          v25 = 2;
          if (v24)
          {
            v25 = 0;
          }

          if (*(v4 + 104) == -1)
          {
            result = 4;
          }

          else if (*(v4 + 104))
          {
            result = 0;
          }

          else
          {
            result = 4 * (*(v4 + 48) != 0);
          }

          v16 = (16 * (v10 == 394769)) | (8 * (v21 == 0x7FFFFFFF)) | v23 | v25 | result;
        }

        *(a3 + 8) = v4;
        *(a3 + 16) = v13;
        *(a3 + 24) = v14;
        *(a3 + 32) = v15;
        *(a3 + 40) = v17;
        *(a3 + 44) = v11;
        *(a3 + 48) = v16;
        return result;
      }
    }

    if (v8 <= 3)
    {
      if ((v8 - 2) < 2)
      {
        LOBYTE(v18) = 0;
        result = 0;
        v19 = *(v4 + 32);
        v20 = *(v4 + 40);
        v6 = *(v4 + 48);
        a1 = *(a1 + 24);
        if ((v6 & 0x20) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      if (v8 == 1)
      {
LABEL_49:
        LOBYTE(v6) = 0;
        LOBYTE(v18) = 0;
        result = 0;
        v19 = *(v4 + 32);
        v20 = *(v4 + 40);
        goto LABEL_50;
      }

      if (!v8)
      {
        _dispatch_introspection_continuation_get_info_cold_1();
      }

LABEL_62:
      _dispatch_introspection_continuation_get_info_cold_3(v6);
    }

    if (v8 == 4)
    {
      goto LABEL_49;
    }

    if (v8 != 8)
    {
      goto LABEL_62;
    }

    LOBYTE(v18) = 0;
    result = 0;
    v19 = *(v4 + 32);
    v20 = *(v4 + 40);
    v6 = *(v4 + 48);
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_38;
    }

LABEL_41:
    if ((v6 & 0x10) != 0)
    {
      *a3 = 17;
      v26 = v20;
      goto LABEL_43;
    }

LABEL_50:
    *a3 = 18;
    if ((v6 & 2) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_51;
  }

LABEL_10:
  if ((v6 & 0x81) != 0)
  {
    result = pthread_from_mach_thread_np(*(v4 + 100));
    LOBYTE(v18) = 0;
    v19 = *(v4 + 64);
    v20 = *(v4 + 72);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v20 = *(v4 + 40);
  if ((v6 & 0x400) != 0)
  {
    LOBYTE(v18) = 0;
    result = 0;
    v19 = *(*(a1 + 88) + 16);
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_41;
  }

  v19 = *(v4 + 32);
  if (v19 == _dispatch_apply_invoke || v19 == _dispatch_apply_redirect_invoke)
  {
    v18 = v20[2];
    if (v18)
    {
      result = 0;
      v4 = *v20;
      a1 = *(*v20 + 56);
      v19 = *(*v20 + 32);
      v20 = *(*v20 + 40);
      LOBYTE(v18) = 4;
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  result = 0;
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_41;
  }

LABEL_38:
  if (v20[4] != 3512316172)
  {
    _dispatch_continuation_get_function_symbol_cold_1(v20[4]);
  }

  *a3 = 17;
  v26 = v20[9];
LABEL_43:
  if (!v26[2])
  {
    v19 = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_47;
    }

LABEL_51:
    v27 = *(a1 + 80) == 1;
    goto LABEL_52;
  }

  v19 = v26[2];
  if ((v6 & 2) == 0)
  {
    goto LABEL_51;
  }

LABEL_47:
  v27 = 1;
LABEL_52:
  *(a3 + 8) = v4;
  *(a3 + 16) = a1;
  *(a3 + 24) = v20;
  *(a3 + 32) = v19;
  *(a3 + 40) = 0;
  *(a3 + 48) = result;
  *(a3 + 56) = v18 | (2 * ((v6 & 0x81) != 0)) | v27;
  if ((v6 & 8) != 0)
  {
    v28 = *(v4 + 48);
    if (*(*v28 + 40) == 514)
    {
      *(a3 + 40) = v28;
    }
  }

  return result;
}

uint64_t dispatch_introspection_get_queues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 40);
  if (!a1)
  {
    v3 = &qword_6D320;
  }

  v4 = *v3;
  if (!a2)
  {
    return *v4;
  }

  v5 = a3 + 24;
  while (v4)
  {
    v6 = *v4;
    v7 = *(**v4 + 40);
    if (v7 == 18)
    {
      v8 = 0;
      v9 = *(v6 + 56);
      v10 = *(v6 + 24);
      v12 = *(v6 + 64);
      v11 = *(v6 + 72);
      v13 = (v9 & 0x4000000001) == 0;
      v14 = (v9 >> 53) & 2;
      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 + 1;
      }

      v16 = 1;
    }

    else
    {
      v17 = *(v6 + 8);
      v18 = *(v6 + 56);
      v10 = *(v6 + 24);
      v12 = *(v6 + 64);
      v11 = *(v6 + 72);
      v16 = *(v6 + 80);
      v19 = v17 != 0x7FFFFFFF && (v18 & 0x4000000001) != 0;
      if (((v18 >> 54) & (v17 != 0x7FFFFFFF)) != 0)
      {
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }

      if (*(v6 + 104) == -1)
      {
        v21 = 4;
      }

      else if (*(v6 + 104))
      {
        v21 = 0;
      }

      else
      {
        v21 = 4 * (*(v6 + 48) != 0);
      }

      v8 = *(v6 + 112) + (v18 >> 58);
      v15 = (16 * (v7 == 394769)) | (8 * (v17 == 0x7FFFFFFF)) | v19 | v20 | v21;
    }

    *(v5 - 24) = v6;
    *(v5 - 16) = v10;
    *(v5 - 8) = v11;
    *v5 = v12;
    *(v5 + 8) = v16;
    *(v5 + 12) = v8;
    *(v5 + 16) = v15;
    v5 += 48;
    v4 = v4[2];
    if (!--a2)
    {
      return *v4;
    }
  }

  result = 0;
  *(v5 - 24) = 0;
  return result;
}

void *dispatch_introspection_get_queue_threads(void *result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    result = _dispatch_introspection;
  }

  if (a2)
  {
    v3 = a3 + 32;
    while (result)
    {
      v4 = result[3];
      v5 = result[4];
      if (v5 && (v5 = *v5) != 0)
      {
        if (*(*v5 + 40) == 18)
        {
          v6 = 0;
          v7 = v5[7];
          v8 = v5[3];
          v10 = v5[8];
          v9 = v5[9];
          v11 = (v7 & 0x4000000001) == 0;
          v12 = (v7 >> 53) & 2;
          if (v11)
          {
            v13 = v12;
          }

          else
          {
            v13 = v12 + 1;
          }

          v14 = 1;
        }

        else
        {
          v15 = *(v5 + 2);
          v16 = v5[7];
          v8 = v5[3];
          v10 = v5[8];
          v9 = v5[9];
          v14 = *(v5 + 40);
          v17 = v15 != 0x7FFFFFFF && (v16 & 0x4000000001) != 0;
          if (((v16 >> 54) & (v15 != 0x7FFFFFFF)) != 0)
          {
            v18 = 2;
          }

          else
          {
            v18 = 0;
          }

          if (v5[13] == -1)
          {
            v19 = 4;
          }

          else if (v5[13])
          {
            v19 = 0;
          }

          else
          {
            v19 = 4 * (v5[6] != 0);
          }

          v6 = *(v5 + 28) + (v16 >> 58);
          v13 = (16 * (*(*v5 + 40) == 394769)) | (8 * (v15 == 0x7FFFFFFF)) | v17 | v18 | v19;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v14 = 0;
        v6 = 0;
        v13 = 0;
        v8 = 0;
      }

      *(v3 - 32) = result;
      *(v3 - 24) = v4;
      *(v3 - 16) = v5;
      *(v3 - 8) = v8;
      *v3 = v9;
      *(v3 + 8) = v10;
      *(v3 + 16) = v14;
      *(v3 + 20) = v6;
      *(v3 + 24) = v13;
      v3 += 64;
      result = result[1];
      if (!--a2)
      {
        return result;
      }
    }

    *(v3 - 32) = 0;
  }

  return result;
}

void *dispatch_introspection_queue_get_items(void *a1, void *a2, uint64_t a3, _OWORD *a4, int8x16_t a5)
{
  if (*(*a1 + 40) != 17)
  {
    return 0;
  }

  v6 = a3;
  v7 = a2;
  if (a2)
  {
    goto LABEL_5;
  }

  if (a1[13] != -1)
  {
    v7 = a1[13];
LABEL_5:
    if (a3)
    {
      goto LABEL_6;
    }

    return v7;
  }

  v7 = 0;
  if (a3)
  {
LABEL_6:
    while (v7)
    {
      --v6;
      dispatch_introspection_queue_item_get_info(v7, a1, v12, a5);
      v9 = v12[1];
      *a4 = v12[0];
      a4[1] = v9;
      a5 = v13;
      v10 = v14;
      a4[2] = v13;
      a4[3] = v10;
      v7 = v7[2];
      a4 += 4;
      if (!v6)
      {
        return v7;
      }
    }

    *a4 = 0;
  }

  return v7;
}