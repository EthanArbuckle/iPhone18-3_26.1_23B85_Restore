NSObject *_dispatch_introspection_queue_fake_sync_push_pop(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 32);
  v9[0].isa = (a4 | 1);
  v9[1].isa = v6;
  v9[2].isa = 0;
  v11 = 0u;
  v10 = 0u;
  v12 = a1;
  v13 = a3;
  v17 = 0;
  v14 = a2;
  v15 = 0;
  v16 = 0;
  v18 = *(StatusReg + 24);
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_trace_item_push_internal(a1, v9, 0);
  }

  _dispatch_introspection_queue_item_enqueue(a1, v9);
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_trace_item_pop_internal(a1, v9, v7);
  }

  _dispatch_introspection_queue_item_dequeue(a1, v9);
  return v9;
}

__n128 dispatch_introspection_hooks_install(__int128 *a1)
{
  v1 = 0;
  v2 = &_dispatch_introspection_hooks;
  v12 = xmmword_6D360;
  v13 = xmmword_6D370;
  v14 = xmmword_6D380;
  v10 = _dispatch_introspection_hooks;
  v11 = xmmword_6D350;
  _dispatch_introspection_hooks = *a1;
  v3 = a1[4];
  v5 = a1[1];
  v4 = a1[2];
  xmmword_6D370 = a1[3];
  xmmword_6D380 = v3;
  xmmword_6D350 = v5;
  xmmword_6D360 = v4;
  v6.i64[0] = -1;
  v6.i64[1] = -1;
  do
  {
    v7 = vmovn_s64(vbicq_s8(vceqzq_s64(*v2), vceqzq_s64(_dispatch_introspection_hook_callouts[v1])));
    if (v7.i8[0])
    {
      v2->i64[0] = -1;
    }

    if (v7.i8[4])
    {
      v2->i64[1] = -1;
    }

    *(&v10 + v1 * 16) = vbicq_s8(*(&v10 + v1 * 16), vceqq_s64(*(&v10 + v1 * 16), v6));
    ++v2;
    ++v1;
  }

  while (v1 != 3);
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  a1[4] = v14;
  result = v11;
  *a1 = v10;
  a1[1] = result;
  return result;
}

__int128 *dispatch_introspection_hook_callouts_enable(__int128 *result)
{
  v1 = 0;
  if (result)
  {
    v2 = result;
  }

  else
  {
    v2 = &_dispatch_introspection_hook_callouts_enabled;
  }

  _dispatch_introspection_hook_callouts[0] = *v2;
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[4];
  xmmword_6D3C0 = v2[3];
  unk_6D3D0 = v5;
  xmmword_6D3A0 = v3;
  unk_6D3B0 = v4;
  do
  {
    v6 = *(&_dispatch_introspection_hooks + v1);
    if (*(_dispatch_introspection_hook_callouts + v1))
    {
      if (v6)
      {
        goto LABEL_11;
      }

      v7 = -1;
    }

    else
    {
      if (v6 != -1)
      {
        goto LABEL_11;
      }

      v7 = 0;
    }

    *(&_dispatch_introspection_hooks + v1) = v7;
LABEL_11:
    v1 += 8;
  }

  while (v1 != 48);
  return result;
}

uint64_t dispatch_introspection_hook_callout_queue_create()
{
  if (_dispatch_introspection_hooks != -1)
  {
    return _dispatch_introspection_hooks();
  }

  return result;
}

uint64_t _dispatch_object_finalizer(void *a1)
{
  v1 = a1[5];
  if (*(*a1 + 40) - 17 <= 1)
  {
    return *(v1 + 8);
  }

  if (v1)
  {
    return a1[5];
  }

  return 0;
}

uint64_t _dispatch_object_set_finalizer(uint64_t result, uint64_t a2)
{
  v2 = result + 40;
  if (*(*result + 40) - 17 > 1)
  {
    if (a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = 0;
    }

    *v2 = v3;
  }

  else
  {
    *(*v2 + 8) = a2;
  }

  return result;
}

NSObject *_dispatch_introspection_queue_create(NSObject *a1)
{
  if (byte_6D338)
  {
    v2 = 56;
  }

  else
  {
    v2 = 32;
  }

  v3 = _dispatch_calloc_typed(1uLL, v2, 0x38534C1AuLL);
  v4 = v3;
  *v3 = a1;
  if (byte_6D338 == 1)
  {
    *(v3 + 5) = 0;
    *(v3 + 6) = 0;
  }

  v5 = 0;
  a1[5].isa = v3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&dword_6D32C, &v5, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    _dispatch_introspection_queue_create_cold_1();
  }

  v7 = qword_6D320;
  *(v4 + 16) = qword_6D320;
  if (v7)
  {
    *(v7 + 24) = v4 + 16;
  }

  *(v4 + 24) = &qword_6D320;
  qword_6D320 = v4;
  v8 = *(StatusReg + 24) & 0xFFFFFFFC;
  v9 = atomic_exchange_explicit(&dword_6D32C, 0, memory_order_release);
  if (v9 != v8)
  {
    _dispatch_unfair_lock_unlock_slow(&dword_6D32C, v9);
  }

  j__dispatch_introspection_hook_queue_create(a1);
  if (_dispatch_introspection_hooks)
  {
    _dispatch_introspection_queue_create_hook(a1);
  }

  return a1;
}

uint64_t _dispatch_introspection_queue_create_hook(uint64_t a1)
{
  if (*(*a1 + 40) == 18)
  {
    v1 = *(a1 + 24);
    v3 = *(a1 + 64);
    v2 = *(a1 + 72);
    *(a1 + 56);
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 56);
    v6 = *(a1 + 24);
    v8 = *(a1 + 64);
    v7 = *(a1 + 72);
    v9 = *(a1 + 80);
    v10 = *(a1 + 112) + (v5 >> 58);
    v11 = v4 != 0x7FFFFFFF && (v5 & 0x4000000001) != 0;
    v12 = ((v5 >> 54) & (v4 != 0x7FFFFFFF)) == 0;
    v13 = 2;
    if (v12)
    {
      v13 = 0;
    }

    if (*(a1 + 104) == -1)
    {
      v14 = 4;
    }

    else if (*(a1 + 104))
    {
      v14 = 0;
    }

    else
    {
      v14 = 4 * (*(a1 + 48) != 0);
    }

    v15 = (16 * (*(*a1 + 40) == 394769)) | (8 * (v4 == 0x7FFFFFFF)) | v11 | v13 | v14;
  }

  return dispatch_introspection_hook_callout_queue_create();
}

uint64_t dispatch_introspection_hook_callout_queue_dispose()
{
  if (*(&_dispatch_introspection_hooks + 1) != -1)
  {
    return (*(&_dispatch_introspection_hooks + 1))();
  }

  return result;
}

void _dispatch_introspection_queue_dispose(NSObject *a1)
{
  v3 = a1 + 5;
  isa = a1[5].isa;
  j__dispatch_introspection_hook_queue_destroy(a1);
  if (*(&_dispatch_introspection_hooks + 1))
  {
    _dispatch_introspection_queue_dispose_hook(a1);
  }

  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&dword_6D32C, &v4, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    _dispatch_introspection_queue_create_cold_1();
  }

  v6 = isa[2];
  v7 = isa[3];
  if (v6)
  {
    *(v6 + 24) = v7;
  }

  *v7 = v6;
  if (byte_6D338 == 1)
  {
    _dispatch_introspection_queue_order_dispose(isa);
  }

  v8 = *(StatusReg + 24) & 0xFFFFFFFC;
  v9 = atomic_exchange_explicit(&dword_6D32C, 0, memory_order_release);
  if (v9 != v8)
  {
    _dispatch_unfair_lock_unlock_slow(&dword_6D32C, v9);
  }

  v10 = isa[1];
  if (v10)
  {
    v11 = isa[1];
  }

  v3->isa = v10;

  free(isa);
}

uint64_t _dispatch_introspection_queue_dispose_hook(uint64_t a1)
{
  if (*(*a1 + 40) == 18)
  {
    v1 = *(a1 + 24);
    v3 = *(a1 + 64);
    v2 = *(a1 + 72);
    *(a1 + 56);
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 56);
    v6 = *(a1 + 24);
    v8 = *(a1 + 64);
    v7 = *(a1 + 72);
    v9 = *(a1 + 80);
    v10 = *(a1 + 112) + (v5 >> 58);
    v11 = v4 != 0x7FFFFFFF && (v5 & 0x4000000001) != 0;
    v12 = ((v5 >> 54) & (v4 != 0x7FFFFFFF)) == 0;
    v13 = 2;
    if (v12)
    {
      v13 = 0;
    }

    if (*(a1 + 104) == -1)
    {
      v14 = 4;
    }

    else if (*(a1 + 104))
    {
      v14 = 0;
    }

    else
    {
      v14 = 4 * (*(a1 + 48) != 0);
    }

    v15 = (16 * (*(*a1 + 40) == 394769)) | (8 * (v4 == 0x7FFFFFFF)) | v11 | v13 | v14;
  }

  return dispatch_introspection_hook_callout_queue_dispose();
}

void _dispatch_introspection_queue_order_dispose(uint64_t a1)
{
  v2 = 0;
  v28 = 0;
  v3 = (a1 + 32);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((a1 + 32), &v2, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    _dispatch_unfair_lock_lock_slow(a1 + 32);
  }

  v28 = *(a1 + 40);
  v5 = v28;
  *(a1 + 40) = 0;
  if (v5)
  {
    v5[1] = &v28;
  }

  v6 = *(StatusReg + 24) & 0xFFFFFFFC;
  v7 = atomic_exchange_explicit(v3, 0, memory_order_release);
  if (v7 != v6)
  {
    _dispatch_unfair_lock_unlock_slow(v3, v7);
  }

  v8 = v28;
  if (v28)
  {
    do
    {
      v9 = 0;
      v10 = *v8;
      v11 = (*(v8[7] + 40) + 36);
      atomic_compare_exchange_strong_explicit(v11, &v9, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
      if (v9)
      {
        _dispatch_unfair_lock_lock_slow(v11);
      }

      v12 = v8[2];
      v13 = v8[3];
      if (v12)
      {
        *(v12 + 24) = v13;
      }

      *v13 = v12;
      v14 = *(StatusReg + 24) & 0xFFFFFFFC;
      v15 = atomic_exchange_explicit(v11, 0, memory_order_release);
      if (v15 != v14)
      {
        _dispatch_unfair_lock_unlock_slow(v11, v15);
      }

      free(v8);
      v8 = v10;
    }

    while (v10);
  }

  v16 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 36), &v16, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v16)
  {
    _dispatch_unfair_lock_lock_slow(a1 + 36);
  }

  v28 = *(a1 + 48);
  v17 = v28;
  *(a1 + 48) = 0;
  if (v17)
  {
    v17[1] = &v28;
  }

  v18 = *(StatusReg + 24) & 0xFFFFFFFC;
  v19 = atomic_exchange_explicit((a1 + 36), 0, memory_order_release);
  if (v19 != v18)
  {
    _dispatch_unfair_lock_unlock_slow(a1 + 36, v19);
  }

  v20 = v28;
  if (v28)
  {
    do
    {
      v21 = 0;
      v22 = v20[2];
      v23 = (*(v20[6] + 40) + 32);
      atomic_compare_exchange_strong_explicit(v23, &v21, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
      if (v21)
      {
        _dispatch_unfair_lock_lock_slow(v23);
      }

      v24 = *v20;
      v25 = v20[1];
      if (*v20)
      {
        *(v24 + 8) = v25;
      }

      *v25 = v24;
      v26 = *(StatusReg + 24) & 0xFFFFFFFC;
      v27 = atomic_exchange_explicit(v23, 0, memory_order_release);
      if (v27 != v26)
      {
        _dispatch_unfair_lock_unlock_slow(v23, v27);
      }

      free(v20);
      v20 = v22;
    }

    while (v22);
  }
}

uint64_t dispatch_introspection_hook_callout_queue_item_enqueue()
{
  if (xmmword_6D350 != -1)
  {
    return xmmword_6D350();
  }

  return result;
}

void _dispatch_introspection_queue_item_enqueue(NSObject *a1, NSObject *a2)
{
  j__dispatch_introspection_hook_queue_item_enqueue(a1, a2);
  if (xmmword_6D350)
  {

    _dispatch_introspection_queue_item_enqueue_hook(a1, a2);
  }
}

uint64_t _dispatch_introspection_queue_item_enqueue_hook(uint64_t a1, void *a2)
{
  memset(v3, 0, sizeof(v3));
  dispatch_introspection_queue_item_get_info(a2, a1, v3, 0);
  return dispatch_introspection_hook_callout_queue_item_enqueue();
}

void _dispatch_trace_item_push_internal(void *a1, uint64_t *a2, int8x16_t a3)
{
  if (*(*a1 + 40) == 17)
  {
    v5 = *a2;
    if (*a2 < 0x1000 || (!*(v5 + 40) ? (v6 = *(v5 + 40) == 0) : (v6 = 1), v6))
    {
      dispatch_introspection_queue_item_get_info(a2, a1, v14, a3);
      switch(v14[0])
      {
        case 0x42:
          v13 = a1[8];
          if (!MEMORY[0xFFFFFC100])
          {
            return;
          }

          break;
        case 0x12:
          v10 = a1[8];
          v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
          if (!MEMORY[0xFFFFFC100])
          {
            return;
          }

          v12 = a2[1] | (v11 << 32);
          break;
        case 0x11:
          v7 = a1[8];
          v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
          v9 = a2[1];
          if ((*a2 & 0x20) != 0)
          {
            if (!MEMORY[0xFFFFFC100])
            {
              return;
            }
          }

          else if (!MEMORY[0xFFFFFC100])
          {
            return;
          }

          break;
        default:
          return;
      }

      kdebug_trace();
    }
  }
}

uint64_t dispatch_introspection_hook_callout_queue_item_dequeue()
{
  if (*(&xmmword_6D350 + 1) != -1)
  {
    return (*(&xmmword_6D350 + 1))();
  }

  return result;
}

void _dispatch_introspection_queue_item_dequeue(NSObject *a1, NSObject *a2)
{
  j__dispatch_introspection_hook_queue_item_dequeue(a1, a2);
  if (*(&xmmword_6D350 + 1))
  {

    _dispatch_introspection_queue_item_dequeue_hook(a1, a2);
  }
}

uint64_t _dispatch_introspection_queue_item_dequeue_hook(uint64_t a1, void *a2)
{
  memset(v3, 0, sizeof(v3));
  dispatch_introspection_queue_item_get_info(a2, a1, v3, 0);
  return dispatch_introspection_hook_callout_queue_item_dequeue();
}

void _dispatch_trace_item_pop_internal(void *a1, uint64_t *a2, int8x16_t a3)
{
  if (*(*a1 + 40) == 17)
  {
    v4 = *a2;
    if (*a2 < 0x1000 || (!*(v4 + 40) ? (v5 = *(v4 + 40) == 0) : (v5 = 1), v5))
    {
      dispatch_introspection_queue_item_get_info(a2, a1, v9, a3);
      if ((v9[0] - 17) >= 2)
      {
        if (v9[0] != 66)
        {
          return;
        }

        v8 = a1[8];
        if (!MEMORY[0xFFFFFC100])
        {
          return;
        }
      }

      else
      {
        v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
        v7 = a1[8];
        if (!MEMORY[0xFFFFFC100])
        {
          return;
        }
      }

      kdebug_trace();
    }
  }
}

uint64_t dispatch_introspection_hook_callout_queue_item_complete()
{
  if (xmmword_6D360 != -1)
  {
    return xmmword_6D360();
  }

  return result;
}

void _dispatch_introspection_queue_item_complete(NSObject *a1)
{
  j__dispatch_introspection_hook_queue_item_complete(a1);
  if (xmmword_6D360)
  {

    _dispatch_introspection_queue_item_complete_hook(a1);
  }
}

void _dispatch_trace_source_callout_entry_internal(int a1, int a2, void *a3, uint64_t *a4, int8x16_t a5)
{
  if (*(*a3 + 40) == 17)
  {
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_trace_item_push_internal(a3, a4, a5);
  }
}

uint64_t _dispatch_introspection_runtime_event()
{
  if (*(&xmmword_6D360 + 1) + 1 >= 2)
  {
    return (*(&xmmword_6D360 + 1))();
  }

  return result;
}

void _dispatch_introspection_order_record(uint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 160);
  if (v2)
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    *v48 = 0u;
    v49 = 0u;
    v3 = *(v2 + 24);
    if (v3)
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        v6 = a1;
        do
        {
          v7 = v6;
          v6 = v5;
          v5 = *(v5 + 24);
        }

        while (v5);
        v8 = v2;
        do
        {
          v9 = v8;
          v8 = v3;
          v3 = *(v3 + 24);
        }

        while (v3);
        v10 = *(v7 + 40);
        v11 = *(v9 + 40);
        v12 = (v10 + 32);
        v14 = *(StatusReg + 24);
        v13 = (StatusReg + 24);
        atomic_compare_exchange_strong_explicit((v10 + 32), &v3, v14 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
        if (v3)
        {
          v44 = v11;
          _dispatch_unfair_lock_lock_slow(v10 + 32);
          v11 = v44;
        }

        v15 = (v10 + 40);
        v16 = (v10 + 40);
        while (1)
        {
          v16 = *v16;
          if (!v16)
          {
            break;
          }

          if (v16[7] == v9)
          {
            v17 = *v13 & 0xFFFFFFFC;
            v18 = atomic_exchange_explicit(v12, 0, memory_order_release);
            if (v18 != v17)
            {

              _dispatch_unfair_lock_unlock_slow(v10 + 32, v18);
            }

            return;
          }
        }

        v45 = v11;
        v19 = *v13 & 0xFFFFFFFC;
        v20 = atomic_exchange_explicit(v12, 0, memory_order_release);
        if (v20 != v19)
        {
          _dispatch_unfair_lock_unlock_slow(v10 + 32, v20);
        }

        _dispatch_introspection_order_check(0, a1, v7, v2, v9);
        v47 = (v10 + 32);
        if (backtrace(v48, 128) < 2)
        {
          v21 = 0;
        }

        else
        {
          v21 = backtrace(v48, 128) - 1;
        }

        v22 = 8 * v21;
        v23 = *(a1 + 80);
        if ((v23 & 0x200000) != 0)
        {
          v24 = v22 + strlen(*(a1 + 72)) + 73;
        }

        else
        {
          v24 = v22 + 72;
        }

        v46 = *(v2 + 80);
        if ((v46 & 0x200000) != 0)
        {
          v24 += strlen(*(v2 + 72)) + 1;
        }

        v25 = _dispatch_calloc_typed(1uLL, v24, 0x350B6C35uLL);
        v25[6] = v7;
        v25[7] = v9;
        *(v25 + 16) = v21;
        memcpy(v25 + 9, &v48[1], 8 * v21);
        v26 = &v25[v21 + 9];
        v27 = *(a1 + 72);
        if ((v23 & 0x200000) != 0)
        {
          v29 = strcpy(v26, v27);
          v25[4] = v26;
          v26 += strlen(v29) + 1;
        }

        else
        {
          if (v27)
          {
            v28 = *(a1 + 72);
          }

          else
          {
            v28 = "";
          }

          v25[4] = v28;
        }

        v30 = *(v2 + 72);
        if ((v46 & 0x200000) != 0)
        {
          strcpy(v26, v30);
        }

        else if (v30)
        {
          v26 = *(v2 + 72);
        }

        else
        {
          v26 = "";
        }

        v31 = 0;
        v25[5] = v26;
        atomic_compare_exchange_strong_explicit(v47, &v31, *v13 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
        if (v31)
        {
          _dispatch_unfair_lock_lock_slow(v47);
        }

        v32 = v15;
        while (1)
        {
          v32 = *v32;
          if (!v32)
          {
            break;
          }

          if (v32[7] == v9)
          {
            _dispatch_introspection_order_record_cold_1(v13, v47, v25);
            return;
          }
        }

        v33 = *v15;
        *v25 = *v15;
        if (v33)
        {
          *(v33 + 8) = v25;
        }

        *v15 = v25;
        v25[1] = v15;
        v34 = *v13 & 0xFFFFFFFC;
        v35 = atomic_exchange_explicit(v47, 0, memory_order_release);
        if (v35 != v34)
        {
          _dispatch_unfair_lock_unlock_slow(v47, v35);
        }

        v36 = 0;
        v37 = v45;
        v38 = (v45 + 36);
        atomic_compare_exchange_strong_explicit((v45 + 36), &v36, *v13 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
        if (v36)
        {
          _dispatch_unfair_lock_lock_slow(v38);
          v37 = v45;
        }

        v41 = *(v37 + 48);
        v40 = (v37 + 48);
        v39 = v41;
        v25[2] = v41;
        if (v41)
        {
          *(v39 + 24) = v25 + 2;
        }

        *v40 = v25;
        v25[3] = v40;
        v42 = *v13 & 0xFFFFFFFC;
        v43 = atomic_exchange_explicit(v38, 0, memory_order_release);
        if (v43 != v42)
        {
          _dispatch_unfair_lock_unlock_slow(v38, v43);
        }
      }
    }
  }
}

uint64_t _dispatch_introspection_order_check(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v14 = result;
  v15 = 0;
  v9 = *(a5 + 40);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v9 + 32), &v8, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    result = _dispatch_unfair_lock_lock_slow(v9 + 32);
  }

  for (i = *(v9 + 40); ; i = *v15)
  {
    v15 = i;
    if (!i)
    {
      break;
    }

    if (i[7] == a3)
    {
      _dispatch_introspection_lock_inversion_fail(&v14, a2, a4);
    }

    result = _dispatch_introspection_order_check(&v14, a2, a3, a4);
  }

  v12 = *(StatusReg + 24) & 0xFFFFFFFC;
  v13 = atomic_exchange_explicit((v9 + 32), 0, memory_order_release);
  if (v13 != v12)
  {
    return _dispatch_unfair_lock_unlock_slow(v9 + 32, v13);
  }

  return result;
}

void _dispatch_introspection_target_queue_changed(uint64_t a1)
{
  if (byte_6D338 == 1)
  {
    if ((*(a1 + 80) & 0x100000) != 0)
    {
      _dispatch_introspection_target_queue_changed_cold_1(a1);
    }

    else if (*(*(a1 + 40) + 40))
    {
      _dispatch_introspection_target_queue_changed_cold_2(a1, (a1 + 40));
    }
  }
}

void _dispatch_introspection_lock_inversion_fail(void *a1, uint64_t a2, uint64_t a3)
{
  _simple_salloc();
  *(a3 + 72);
  if (*(a2 + 72))
  {
    v6 = *(a2 + 72);
  }

  _simple_sprintf();
  for (; a1; a1 = *a1)
  {
    v7 = a1[1];
    v13 = *(v7 + 40);
    v14 = *(v7 + 32);
    _simple_sprintf();
    v8 = backtrace_symbols((v7 + 72), *(v7 + 64));
    if (v8)
    {
      v9 = v8;
      if (*(v7 + 64) >= 1)
      {
        v10 = 0;
        do
        {
          v12 = v9[v10];
          _simple_sprintf();
          ++v10;
        }

        while (v10 < *(v7 + 64));
      }

      free(v9);
    }

    else
    {
      _simple_sappend();
    }
  }

  byte_6D338 = 0;
  v11 = _simple_string();
  _dispatch_log("%s", v11);
  qword_6D1C0 = v11;
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return kdebug_trace();
}

uint64_t _dispatch_send_wakeup_runloop_thread(mach_port_t a1, mach_msg_timeout_t timeout)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x4E00000000;
  v2 = mach_msg(&msg, 17, 0x18u, 0, 0, timeout, 0);
  if (v2 == 268435460)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(mach_task_self_, msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _dispatch_send_consume_send_once_right(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 18;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x4F00000000;
  return mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
}

uint64_t (*libdispatch_internal_protocol_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 80) >= 0xFFFFFFF0)
  {
    return _dispatch_libdispatch_internal_protocol_subsystem[5 * (v1 - 64) + 5];
  }

  else
  {
    return 0;
  }
}

_DWORD *_Xmach_notify_port_deleted(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = _dispatch_mach_notify_port_deleted(result[3], result[8]);
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_Xmach_notify_send_possible(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = _dispatch_mach_notify_send_possible(result[3], result[8]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _Xmach_notify_port_destroyed(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 40)
  {
    if (*(result + 38) << 16 == 0x100000)
    {
      _dispatch_mach_notify_port_destroyed(*(result + 12), *(result + 28));
    }

    v2 = -300;
  }

  else
  {
    v2 = -304;
  }

  *(a2 + 32) = v2;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *_Xmach_notify_no_senders(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && result[1] == 36)
  {
    _dispatch_mach_notify_no_senders(result[3], result[8]);
  }

  *(a2 + 32) = -304;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *_Xmach_notify_send_once(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = _dispatch_wakeup_runloop_thread();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_Xmach_notify_dead_name(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = _dispatch_mach_notify_dead_name(result[3], result[8]);
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_Xwakeup_runloop_thread(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = _dispatch_wakeup_runloop_thread();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_Xconsume_send_once_right(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = _dispatch_wakeup_runloop_thread();
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t libdispatch_internal_protocol_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 80) >= 0xFFFFFFF0 && (v5 = _dispatch_libdispatch_internal_protocol_subsystem[5 * (v4 - 64) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t firehose_send_register(int a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, int a7, uint64_t a8)
{
  v19 = 0u;
  v10 = 0u;
  v12 = a2;
  v13 = 1114112;
  v14 = a4;
  v15 = 0x100000;
  v16 = a5;
  v17 = 0x100000;
  v18 = a6;
  DWORD1(v19) = 1310720;
  DWORD2(v19) = a7;
  v20 = 1114112;
  v21 = NDR_record;
  v22 = a3;
  v23 = a8;
  v9 = -2147483629;
  DWORD1(v10) = a1;
  v11 = 0x500002D50;
  return mach_msg(&v9, 1, 0x70u, 0, 0, 0, 0);
}

uint64_t firehose_send_push_and_wait(int a1, _OWORD *a2, _DWORD *a3)
{
  memset(&msg_16[4], 0, 44);
  msg_4 = 0;
  msg_8 = a1;
  msg_12 = mig_get_special_reply_port();
  msg = 5395;
  *msg_16 = 0x2D5100000000;
  v5 = mach_msg(&msg, 3162115, 0x18u, 0x40u, msg_12, 0, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (*&msg_16[4] == 71)
      {
        v6 = 4294966988;
      }

      else if (*&msg_16[4] == 11701)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (msg_4 == 56)
          {
            if (!msg_8)
            {
              v6 = *&msg_16[16];
              if (!*&msg_16[16])
              {
                *a2 = *&msg_16[20];
                *a3 = *&msg_16[36];
                return v6;
              }

              goto LABEL_20;
            }
          }

          else if (msg_4 == 36)
          {
            if (msg_8)
            {
              v7 = 1;
            }

            else
            {
              v7 = *&msg_16[16] == 0;
            }

            if (v7)
            {
              v6 = 4294966996;
            }

            else
            {
              v6 = *&msg_16[16];
            }

            goto LABEL_20;
          }
        }

        v6 = 4294966996;
      }

      else
      {
        v6 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&msg);
      return v6;
    }

    mig_dealloc_special_reply_port();
  }

  return v6;
}

uint64_t firehose_send_push_async(mach_port_t a1, int a2, mach_msg_timeout_t timeout)
{
  v6 = NDR_record;
  v7 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 11602;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  v3 = mach_msg(&msg, 17, 0x24u, 0, 0, timeout, 0);
  if (v3 == 268435460)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(mach_task_self_, msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v3;
}

uint64_t firehose_send_get_logging_prefs(int a1, _DWORD *a2, void *a3)
{
  memset(v12, 0, sizeof(v12));
  *&v11[4] = 0u;
  LODWORD(v9) = 0;
  HIDWORD(v9) = a1;
  special_reply_port = mig_get_special_reply_port();
  v8 = 5395;
  *v11 = 0x2D5300000000;
  v5 = mach_msg(&v8, 3162115, 0x18u, 0x40u, special_reply_port, 0, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (*&v11[4] == 71)
      {
        v6 = 4294966988;
      }

      else if (*&v11[4] == 11703)
      {
        if ((v8 & 0x80000000) == 0)
        {
          if (v9 == 36)
          {
            v6 = 4294966996;
            if (*&v11[16])
            {
              if (HIDWORD(v9))
              {
                v6 = 4294966996;
              }

              else
              {
                v6 = *&v11[16];
              }
            }
          }

          else
          {
            v6 = 4294966996;
          }

          goto LABEL_20;
        }

        v6 = 4294966996;
        if (*&v11[8] == 1 && v9 == 56 && HIWORD(v12[0]) << 16 == 1114112)
        {
          v6 = 0;
          *a2 = *&v11[12];
          *a3 = *&v12[3];
          return v6;
        }
      }

      else
      {
        v6 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&v8);
      return v6;
    }

    mig_dealloc_special_reply_port();
  }

  return v6;
}

uint64_t firehose_send_should_send_strings(int a1, _DWORD *a2)
{
  memset(&v11[4], 0, 28);
  v8 = 0;
  v9 = a1;
  special_reply_port = mig_get_special_reply_port();
  v7 = 5395;
  *v11 = 0x2D5400000000;
  v3 = mach_msg(&v7, 3162115, 0x18u, 0x30u, special_reply_port, 0, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (!v3)
    {
      if (*&v11[4] == 71)
      {
        v4 = 4294966988;
      }

      else if (*&v11[4] == 11704)
      {
        if ((v7 & 0x80000000) == 0)
        {
          if (v8 == 40)
          {
            if (!v9)
            {
              v4 = *&v11[16];
              if (!*&v11[16])
              {
                *a2 = *&v11[20];
                return v4;
              }

              goto LABEL_20;
            }
          }

          else if (v8 == 36)
          {
            if (v9)
            {
              v5 = 1;
            }

            else
            {
              v5 = *&v11[16] == 0;
            }

            if (v5)
            {
              v4 = 4294966996;
            }

            else
            {
              v4 = *&v11[16];
            }

            goto LABEL_20;
          }
        }

        v4 = 4294966996;
      }

      else
      {
        v4 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&v7);
      return v4;
    }

    mig_dealloc_special_reply_port();
  }

  return v4;
}

uint64_t (*firehoseReply_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 11705) >= 0xFFFFFFFB)
  {
    return firehose_client_firehoseReply_subsystem[5 * (v1 - 11700) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t _Xpush_reply(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && *(result + 4) == 56)
  {
    v2 = *(result + 52);
    v3 = *(result + 36);
    v4 = *(result + 44);
    firehose_client_push_reply(*(result + 12), *(result + 32));
  }

  *(a2 + 32) = -304;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t _Xpush_notify_async(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 52)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = firehose_client_push_notify_async(*(result + 12), *(result + 32), *(result + 40), *(result + 48));
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t firehoseReply_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 11705) >= 0xFFFFFFFB && (v5 = firehose_client_firehoseReply_subsystem[5 * (v4 - 11700) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

void os_eventlink_create_with_port_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void _os_workgroup_tsd_cleanup_cold_1(char *a1, uint64_t a2)
{
  snprintf(a1, 0x200uLL, "BUG IN CLIENT: Thread exiting without leaving workgroup '%s'", *(a2 + 16));
  _os_crash();
  __break(1u);
}

void _os_workgroup_set_name_cold_1()
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Invalid workgroup port";
  qword_6D1F0 = 0xFFFFFFFFLL;
  __break(1u);
}

void _os_workgroup_set_work_interval_workload_id_cold_1(unsigned int a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Invalid workgroup port";
  qword_6D1F0 = a1;
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
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: pthread_start os_workgroup_join failed";
  qword_6D1F0 = a1;
  __break(1u);
}

void _os_workgroup_lookup_type_from_workload_id_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Invalid workload ID type";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_bug(uint64_t a1, uint64_t a2)
{
  if (_dispatch_build_pred != -1)
  {
    OUTLINED_FUNCTION_0_0();
    dispatch_once_f(v6, v7, v8);
  }

  v5 = _dispatch_bug_db_last_seen;
  _dispatch_bug_db_last_seen = v2;
  if (v2 != v5)
  {
    _dispatch_log("BUG in libdispatch: %s - %lu - 0x%lx", _dispatch_build, a1, a2);
  }
}

void _dispatch_log(char *__format, ...)
{
  va_start(va, __format);
  if (_dispatch_logv_pred != -1)
  {
    dispatch_once_f(&_dispatch_logv_pred, 0, _dispatch_logv_init);
  }

  if ((dispatch_log_disabled & 1) == 0)
  {
    if (dispatch_logfile == -1)
    {
      v2 = 0;
      vasprintf(&v2, __format, va);
      if (v2)
      {
        _simple_asl_log();
        free(v2);
      }
    }

    else
    {
      _dispatch_logv_file(__format, va);
    }
  }
}

void _dispatch_bug_mach_client(const char *a1, mach_error_t error_value)
{
  v3 = _dispatch_bug_mach_client_dbmc_last_seen;
  _dispatch_bug_mach_client_dbmc_last_seen = v2;
  if (v2 != v3)
  {
    v6 = mach_error_string(error_value);
    _dispatch_log("BUG in libdispatch client: %s %s - 0x%x", a1, v6, error_value);
    v7 = mach_error_string(error_value);
    _dispatch_fault("LIBDISPATCH_STRICT: _dispatch_bug_mach_client", "BUG in libdispatch client: %s %s - 0x%x", a1, v7, error_value);
    OUTLINED_FUNCTION_1_0();
    if (v8)
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_mach_client";
      __break(1u);
    }
  }
}

void _dispatch_bug_kevent_client(const char *a1, const char *a2, const char *a3, int __errnum, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  LODWORD(v11) = __errnum;
  if (a7)
  {
    v15 = *(*~*(a7 + 8) + 40);
    if (v15 == 787)
    {
      if (*(a7 + 40))
      {
        function_symbol = *(a7 + 40);
        goto LABEL_11;
      }
    }

    else if (v15 == 275)
    {
      v16 = *(a7 + 40);
      if (v16)
      {
        function_symbol = _dispatch_continuation_get_function_symbol(v16);
        goto LABEL_11;
      }
    }

    function_symbol = 0;
LABEL_11:
    a2 = **a7;
    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  function_symbol = 0;
  if (!a3)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (v11)
  {
    v19 = _dispatch_bug_kevent_client_dbkc_last_seen_1;
    _dispatch_bug_kevent_client_dbkc_last_seen_1 = v7;
    if (v7 == v19)
    {
      return;
    }

    strerror(v11);
    OUTLINED_FUNCTION_3();
    v8 = "BUG in libdispatch client: %s %s: %s - 0x%x { 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }";
    _dispatch_log("BUG in libdispatch client: %s %s: %s - 0x%x { 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }", a1, v27, v29, v31, v33, v35, v37, v39, v41);
    strerror(v11);
    OUTLINED_FUNCTION_3();
    _dispatch_fault("LIBDISPATCH_STRICT: _dispatch_bug_kevent_client", "BUG in libdispatch client: %s %s: %s - 0x%x { 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }", a1, v28, v30, v32, v34, v36, v38, v40, v42);
    OUTLINED_FUNCTION_1_0();
    if ((v20 & 1) == 0)
    {
      return;
    }

    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_kevent_client";
    __break(1u);
  }

LABEL_16:
  v21 = v8;
  if (a3)
  {
    v22 = _dispatch_bug_kevent_client_dbkc_last_seen_2;
    _dispatch_bug_kevent_client_dbkc_last_seen_2 = v8;
    if (v8 == v22)
    {
      return;
    }

    v11 = "BUG in libdispatch client: %s %s{ 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }";
    _dispatch_log("BUG in libdispatch client: %s %s{ 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }", a1, a3, a6, a2, a5, a5, function_symbol);
    _dispatch_fault("LIBDISPATCH_STRICT: _dispatch_bug_kevent_client", "BUG in libdispatch client: %s %s{ 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }", a1, a3, a6, a2, a5, a5, function_symbol);
    OUTLINED_FUNCTION_1_0();
    if ((v21 & 1) == 0)
    {
      return;
    }

    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_kevent_client";
    __break(1u);
  }

  v23 = _dispatch_bug_kevent_client_dbkc_last_seen_3;
  _dispatch_bug_kevent_client_dbkc_last_seen_3 = v21;
  if (v21 != v23)
  {
    v24 = strerror(v11);
    _dispatch_log("BUG in libdispatch: %s: %s - 0x%x{ 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }", a1, v24, v11, a6, a2, a5, a5, function_symbol);
    v25 = strerror(v11);
    _dispatch_fault("LIBDISPATCH_STRICT: _dispatch_bug_kevent_client", "BUG in libdispatch: %s: %s - 0x%x{ 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }", a1, v25, v11, a6, a2, a5, a5, function_symbol);
    OUTLINED_FUNCTION_1_0();
    if (v26)
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_kevent_client";
      __break(1u);
    }
  }
}

void _dispatch_bug_kevent_vanished(uint64_t **a1)
{
  v3 = ~a1[1];
  v4 = *(*v3 + 40);
  if (v4 == 787)
  {
    if (a1[5])
    {
      v6 = a1[5];
    }
  }

  else if (v4 == 275)
  {
    v5 = a1[5];
    if (v5)
    {
      _dispatch_continuation_get_function_symbol(v5);
    }
  }

  v7 = _dispatch_bug_kevent_vanished_dbkv_last_seen;
  _dispatch_bug_kevent_vanished_dbkv_last_seen = v1;
  if (v1 != v7)
  {
    v8 = **a1;
    v9 = *(v3 + 72);
    OUTLINED_FUNCTION_2();
    _dispatch_log("BUG in libdispatch client: %s, monitored resource vanished before the source cancel handler was invoked { %p[%s], ident: %d / 0x%x, handler: %p }", v13, v15, v17, v19, v21, v23);
    v10 = **a1;
    v11 = *(v3 + 72);
    OUTLINED_FUNCTION_2();
    _dispatch_fault("LIBDISPATCH_STRICT: _dispatch_bug_kevent_vanished", "BUG in libdispatch client: %s, monitored resource vanished before the source cancel handler was invoked { %p[%s], ident: %d / 0x%x, handler: %p }", v14, v16, v18, v20, v22, v24);
    OUTLINED_FUNCTION_1_0();
    if (v12)
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_kevent_vanished";
      __break(1u);
    }
  }
}

void _dispatch_bug_deprecated(const char *a1)
{
  v2 = _dispatch_bug_deprecated_dbd_last_seen;
  _dispatch_bug_deprecated_dbd_last_seen = v1;
  if (v1 != v2)
  {
    _dispatch_log("DEPRECATED USE in libdispatch client: %s; set a breakpoint on _dispatch_bug_deprecated to debug", a1);
    _dispatch_fault("LIBDISPATCH_STRICT: _dispatch_bug_deprecated", "DEPRECATED USE in libdispatch client: %s; set a breakpoint on _dispatch_bug_deprecated to debug", a1);
    OUTLINED_FUNCTION_1_0();
    if (v4)
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_deprecated";
      __break(1u);
    }
  }
}

void _dispatch_queue_attr_to_info_cold_1(uint64_t *a1)
{
  if (*a1)
  {
    v1 = *a1;
  }

  else
  {
    v1 = 0;
  }

  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid queue attribute";
  qword_6D1F0 = v1;
  __break(1u);
}

void _dispatch_continuation_get_function_symbol_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
  qword_6D1F0 = a1;
  __break(1u);
}

void *__cdecl dispatch_get_context(dispatch_object_t object)
{
  isa = object->isa;
  if ((object->isa & 1) != 0 || !isa)
  {
    return _dispatch_objc_get_context();
  }

  v2 = object->isa;
  if (isa < OS_dispatch_object || isa >= OS_object)
  {
    return _dispatch_objc_get_context();
  }

  if ((*(isa + 42) & 4) != 0)
  {
    return 0;
  }

  return object[4].isa;
}

void dispatch_set_context(dispatch_object_t object, void *context)
{
  isa = object->isa;
  if ((object->isa & 1) != 0 || !isa || ((v3 = object->isa, isa >= OS_dispatch_object) ? (v4 = isa >= OS_object) : (v4 = 1), v4))
  {
    _dispatch_objc_set_context(object, context);
  }

  else if ((*(isa + 42) & 4) == 0)
  {
    object[4].isa = context;
  }
}

void dispatch_set_finalizer_f(dispatch_object_t object, dispatch_function_t finalizer)
{
  isa = object->isa;
  if ((object->isa & 1) != 0 || !isa || ((v3 = object->isa, isa >= OS_dispatch_object) ? (v4 = isa >= OS_object) : (v4 = 1), v4))
  {
    _dispatch_objc_set_finalizer_f(object, finalizer);
  }

  else if ((*(isa + 42) & 4) == 0)
  {
    _dispatch_object_set_finalizer(object, finalizer);
  }
}

void dispatch_activate(dispatch_object_t object)
{
  isa = object->isa;
  if ((object->isa & 1) != 0 || !isa || ((v2 = object->isa, isa >= OS_dispatch_object) ? (v3 = isa >= OS_object) : (v3 = 1), v3))
  {
    _dispatch_objc_activate();
  }

  else if (LODWORD(object[1].isa) != 0x7FFFFFFF)
  {
    v4 = *(isa + 40);
    if (v4 == 18)
    {
      _dispatch_workloop_activate(object);
    }

    else if ((v4 & 0xF0) == 0x10)
    {
      _dispatch_lane_resume(object, 1);
    }
  }
}

size_t _dispatch_object_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v4 = snprintf(__str, __size, "xref = %d, ref = %d, ", *(a1 + 12), *(a1 + 8));
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

void *dispatch_release_cold_1(void *result, atomic_uint *a2, void *a3)
{
  if (result == 1)
  {
    atomic_load_explicit(a2, memory_order_acquire);
    return _dispatch_xref_dispose(a3, a2);
  }

  else
  {
    qword_6D1C0 = "API MISUSE: Over-release of an object";
    __break(1u);
  }

  return result;
}

void _dispatch_dispose_cold_1(uint64_t *a1)
{
  v1 = *a1;
  qword_6D1C0 = "BUG IN LIBDISPATCH: Release while enqueued";
  qword_6D1F0 = v1;
  __break(1u);
}

void dispatch_set_target_queue_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
  qword_6D1F0 = a1;
  __break(1u);
}

atomic_uint *dispatch_set_target_queue_cold_3(uint64_t a1, const char *a2)
{
  result = atomic_exchange_explicit((a1 + 24), a2, memory_order_release);
  if (result)
  {
    if (result[2] != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        if (add_explicit == 1)
        {
          return _os_object_dispose(result, a2);
        }

        else
        {
          qword_6D1C0 = "API MISUSE: Over-release of an object";
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t _dispatch_objc_debug(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v5 = [a1 debugDescription];
  [v5 getBytes:a2 maxLength:a3 - 1 usedLength:&v7 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v5, "length"), 0}];
  result = v7;
  if (v7)
  {
    *(a2 + v7) = 0;
  }

  return result;
}

void *_dispatch_last_resort_autorelease_pool_push(void *result)
{
  if ((_os_object_debug_missing_pools & 1) == 0)
  {
    v1 = result;
    result = objc_autoreleasePoolPush();
    v1[3] = result;
  }

  return result;
}

void _dispatch_last_resort_autorelease_pool_pop(uint64_t a1)
{
  if ((_os_object_debug_missing_pools & 1) == 0)
  {
    objc_autoreleasePoolPop(*(a1 + 24));
    *(a1 + 24) = 0;
  }
}

uint64_t _dispatch_sema4_timedwait(semaphore_t *a1, unint64_t a2)
{
  do
  {
    v4 = _dispatch_timeout(a2);
    v6.tv_sec = v4 / 0x3B9ACA00;
    v6.tv_nsec = v4 % 0x3B9ACA00;
    result = semaphore_timedwait(*a1, v6);
  }

  while (result == 14);
  if (result == 49)
  {
    return result == 49;
  }

  if (result == -301)
  {
    qword_6D1C0 = "MIG_REPLY_MISMATCH";
    qword_6D1F0 = -301;
    __break(1u);
  }

  if (!result)
  {
    return result == 49;
  }

  if (result == 15)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
    qword_6D1F0 = 15;
    __break(1u);
  }

  qword_6D1C0 = "BUG IN LIBDISPATCH: mach semaphore API failure";
  qword_6D1F0 = result;
  __break(1u);
  return result;
}

void _dispatch_sema4_create_slow_cold_2()
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
  qword_6D1F0 = 15;
  __break(1u);
}

void _dispatch_sema4_create_slow_cold_3()
{
  qword_6D1C0 = "MIG_REPLY_MISMATCH";
  qword_6D1F0 = -301;
  __break(1u);
}

void _dispatch_sema4_create_slow_cold_4(int a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: mach semaphore API failure";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_thread_event_wait_slow_cold_1(unsigned int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Corrupt thread event value";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_unfair_lock_unlock_slow_cold_1(unsigned int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: lock not owned by current thread";
  qword_6D1F0 = a1;
  __break(1u);
}

uint64_t _dispatch_once_wait_cold_1(uint64_t a1, atomic_ullong *a2, int a3, void *a4)
{
  if ((a1 & 3) == 2)
  {
    __dmb(9u);
    if ((4 * MEMORY[0xFFFFFC180] - a1 - 14) > 0xFFFFFFFFFFFFFFEFLL)
    {
      return 0;
    }

    else
    {
      result = 0;
      *a2 = -1;
    }
  }

  else
  {
    v5 = a1;
    if ((a1 | 1) == a1 || (v6 = a1, atomic_compare_exchange_strong_explicit(a2, &v6, a1 | 1, memory_order_relaxed, memory_order_relaxed), *a4 = v6, v5 = a1 | 1, v6 == a1))
    {
      if (((a1 ^ a3) & 0xFFFFFFFC) != 0)
      {
        _dlock_wait(a2, v5, 0);
        return 1;
      }

      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: trying to lock recursively";
      __break(1u);
    }

    return 2;
  }

  return result;
}

void _dlock_wait_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Owner in ulock is unknown - possible memory corruption";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dlock_wait_cold_2(int a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: ulock_wait() failed";
  qword_6D1F0 = -a1;
  __break(1u);
}

void _dlock_wake_cold_1(int a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: ulock_wake() failed";
  qword_6D1F0 = -a1;
  __break(1u);
}

size_t _dispatch_semaphore_debug(uint64_t a1, char *a2, size_t a3)
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

  v10 = v9 + _dispatch_object_debug_attr(a1, &a2[v9], a3 - v9);
  v11 = snprintf(&a2[v10], a3 - v10, "port = 0x%x, ", *(a1 + 64));
  v12 = v11;
  if (a3 - v10 < v11)
  {
    v12 = a3 - v10;
  }

  if (v11 < 0)
  {
    v12 = 0;
  }

  v13 = v12 + v10;
  v14 = a3 - (v12 + v10);
  v15 = *(a1 + 48);
  v16 = snprintf(&a2[v13], v14, "value = %ld, orig = %ld }", v15, *(a1 + 56));
  v17 = v16;
  if (v14 < v16)
  {
    v17 = v14;
  }

  if (v16 < 0)
  {
    v17 = 0;
  }

  return v17 + v13;
}

size_t _dispatch_group_debug(void *a1, char *a2, size_t a3)
{
  v6 = a1[6];
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

  v11 = v10 + _dispatch_object_debug_attr(a1, &a2[v10], a3 - v10);
  v12 = a3 - v11;
  v13 = snprintf(&a2[v11], v12, "count = %u, gen = %d, waiters = %d, notifs = %d }", -(v6 & 0xFFFFFFFC) >> 2, HIDWORD(v6), v6 & 1, (v6 >> 1) & 1);
  v14 = v13;
  if (v12 < v13)
  {
    v14 = v12;
  }

  if (v13 < 0)
  {
    v14 = 0;
  }

  return v14 + v11;
}

intptr_t dispatch_group_wait(dispatch_group_t group, dispatch_time_t timeout)
{
  isa = group[6].isa;
  result = 49;
  while ((isa & 0xFFFFFFFC) != 0)
  {
    if (!timeout)
    {
      return result;
    }

    v5 = isa;
    if ((isa & 1) == 0)
    {
      atomic_compare_exchange_strong_explicit(&group[6], &isa, isa | 1, memory_order_relaxed, memory_order_relaxed);
      if (isa != v5)
      {
        continue;
      }
    }

    return _dispatch_group_wait_slow(group, HIDWORD(v5), timeout);
  }

  result = 0;
  __dmb(9u);
  return result;
}

void _dispatch_semaphore_dispose_cold_1(void *a1, uint64_t a2)
{
  v2 = a2 - *a1;
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Semaphore object deallocated while in use (current value < original value)";
  qword_6D1F0 = v2;
  __break(1u);
}

void _dispatch_group_dispose_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Group object deallocated while in use";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_group_leave_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Unbalanced call to dispatch_group_leave()";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_group_enter_cold_1(unsigned int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Too many nested calls to dispatch_group_enter()";
  qword_6D1F0 = a1;
  __break(1u);
}

void *dispatch_group_notify_cold_1(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  *result = 276;
  result[4] = _dispatch_call_block_and_release;
  result[5] = a2;
  v6 = *(a3 + 32) & 0xFFFFFFLL;
  if (v6 >= 0x10FF)
  {
    v7 = 4351;
  }

  else
  {
    v7 = *(a3 + 32) & 0xFFFFFFLL;
  }

  v8 = *(a3 + 224);
  if (v8)
  {
    result = os_retain(*(a3 + 224));
  }

  v5[3] = v8;
  if (v8 != -1)
  {
    if (v8)
    {
      v9 = *(v8 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      result = kdebug_trace();
      if (v6)
      {
        goto LABEL_11;
      }

LABEL_18:
      v11 = 0;
      goto LABEL_16;
    }
  }

  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_11:
  v10 = (*(a4 + 84) >> 30) & 1;
  if ((*(a4 + 84) & 0xFFF) == 0)
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

LABEL_16:
  v5[1] = v11;
  return result;
}

unint64_t *dispatch_group_notify_cold_3(unint64_t *result, uint64_t a2, uint64_t a3, int8x16_t a4)
{
  result[2] = 0;
  *(a3 + 976) = a2 + 64;
  v4 = atomic_exchange_explicit((a2 + 64), result, memory_order_release);
  if (v4)
  {
    *(v4 + 16) = result;
    *(a3 + 976) = 0;
  }

  else if (*(a2 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed) > 0)
  {
    *(a2 + 56) = result;
    *(a3 + 976) = 0;
    v5 = *(a2 + 48);
    while (1)
    {
      v6 = (v5 | 2);
      if (!v5)
      {
        break;
      }

      v7 = v5;
      atomic_compare_exchange_strong_explicit((a2 + 48), &v7, v6, memory_order_release, memory_order_relaxed);
      v8 = v7 == v5;
      v5 = v7;
      if (v8)
      {
        return result;
      }
    }

    return _dispatch_group_wake(a2, v6, 0, a4);
  }

  else
  {
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }

  return result;
}

void _dispatch_async_redirect_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = a3 & 0xFCFFFFFF | *(a1 + 40);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = StatusReg + 10;
  v44 = StatusReg[10].i64[0];
  if (v4)
  {
    v10 = StatusReg[12].i64[1];
    v11 = *(v4 + 84);
    v12 = v11 & 0xFFF0FFFF | ((WORD1(v10) & 0xF) << 16);
    StatusReg[10].i64[0] = v4;
    v13 = *(v5 + 84);
    if (v12)
    {
      v14 = v13 >> 12;
      if ((v13 & 0xFFF) != 0)
      {
        v15 = v11 & 0x88000000 | ((WORD1(v10) & 0xF) << 16) & 0x880F0000;
        v16 = v11 & 0xFFF;
        if (v16 <= (*(v5 + 84) & 0xFFFu))
        {
          v16 = *(v5 + 84) & 0xFFF;
        }

        if (v14 <= v16 >> 8)
        {
          v17 = 0x40000000;
        }

        else
        {
          v17 = 1140912128;
        }

        v18 = v17 & v13;
        v19 = v15 | v16;
LABEL_18:
        v23 = v19 | v18;
        goto LABEL_29;
      }

      if ((v11 & 0xFFF) != 0)
      {
        v24 = v12 | 0x40000000;
      }

      else
      {
        v24 = v11 & 0xFFF0FFFF | ((WORD1(v10) & 0xF) << 16);
      }

      v23 = v24 & 0xFFFF0FFF | v13 & 0x400F000;
      if (v14 <= ((v24 >> 8) & 0xF))
      {
        v23 = v24;
      }

      goto LABEL_29;
    }

LABEL_67:
    v23 = v13 & 0xFFF0FFFF;
    goto LABEL_29;
  }

  v13 = *(v5 + 84);
  v10 = StatusReg[12].i64[1];
  if (!v10)
  {
    goto LABEL_67;
  }

  v20 = v13 >> 12;
  v21 = *(v5 + 84) & 0xFFF;
  if ((v13 & 0xFFF) != 0)
  {
    if ((v10 & 0xFFFu) > v21)
    {
      v21 = v10 & 0xFFF;
    }

    if (v20 <= v21 >> 8)
    {
      v22 = 0x40000000;
    }

    else
    {
      v22 = 1140912128;
    }

    v18 = v22 & v13;
    v19 = v10 & 0x880F0000 | v21;
    goto LABEL_18;
  }

  v25 = v10 | 0x40000000;
  if ((v10 & 0xFFF) == 0)
  {
    v25 = StatusReg[12].i64[1];
  }

  v23 = v25 & 0xFFFF0FFF | v13 & 0x400F000;
  if (v20 <= ((v25 >> 8) & 0xF))
  {
    v23 = v25;
  }

LABEL_29:
  StatusReg[12].i64[1] = v23;
  v45 = *v9;
  StatusReg[10].i64[0] = v5;
  StatusReg[10].i64[1] = &v45;
  v26 = *(a1 + 24);
  *(a1 + 24) = -1;
  v27 = v26 == -1 || v26 == -1;
  if (!v27)
  {
    if (v26)
    {
      v28 = *(v26 + 32);
    }

    OUTLINED_FUNCTION_3_0();
    if (v29)
    {
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_13();
      kdebug_trace();
    }
  }

  if (*(a1 + 8) == -1)
  {
    v31 = 0;
  }

  else
  {
    v30 = StatusReg[12].i64[1];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_20();
    if (v27)
    {
      if (v32 >> 12)
      {
        OUTLINED_FUNCTION_16();
        v31 = v43 | 0xFF;
      }
    }

    else
    {
      OUTLINED_FUNCTION_19();
      if (v33)
      {
        OUTLINED_FUNCTION_5();
        if (!v27)
        {
          v31 = v34;
        }
      }
    }
  }

  v35 = OUTLINED_FUNCTION_10(v31);
  v37 = StatusReg[2].i64[0];
  if ((v37 & 0x1000000) != 0)
  {
    if (v35)
    {
LABEL_76:
      _dispatch_set_priority_and_voucher_slow(v35, v26, 6);
      goto LABEL_52;
    }

    v35 = v37 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else
  {
    OUTLINED_FUNCTION_9();
    if (v27)
    {
      goto LABEL_48;
    }
  }

  if (v35)
  {
    goto LABEL_76;
  }

LABEL_48:
  if (v26 == -1)
  {
    goto LABEL_52;
  }

  if (StatusReg[14].i64[0] != v26)
  {
    v35 = 0;
    goto LABEL_76;
  }

  if (v26)
  {
    os_release(v26);
  }

LABEL_52:
  v38 = StatusReg[11].i64[0];
  if (v38)
  {
    OUTLINED_FUNCTION_21(v38);
  }

  else
  {
    v39 = 1;
  }

  if (v39 > _dispatch_continuation_cache_limit)
  {
    OUTLINED_FUNCTION_30(v36);
    _dispatch_continuation_free_to_cache_limit(a1);
  }

  else
  {
    *(a1 + 16) = v38;
    *(a1 + 8) = v39;
    StatusReg[11].i64[0] = a1;
    OUTLINED_FUNCTION_30(v36);
  }

  v40 = v45;
  *v9 = v45;
  if (v4)
  {
    v9->i64[0] = v44;
  }

  StatusReg[12].i64[1] = StatusReg[12].i64[1] & 0xF0000 | v10 & 0xFFF0FFFF;
  v41 = *(v5 + 24);
  if (*(v41 + 24) && v41 != v44)
  {
    do
    {
      _dispatch_lane_non_barrier_complete(v41, 0, v40);
      v41 = *(v41 + 24);
      if (*(v41 + 24))
      {
        v42 = v41 == v44;
      }

      else
      {
        v42 = 1;
      }
    }

    while (!v42);
  }

  _dispatch_lane_non_barrier_complete(v5, 1, v40);
}

void _dispatch_workloop_stealer_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 24);
  *(a1 + 24) = -1;
  v7 = v6 == -1 || v6 == -1;
  if (!v7)
  {
    if (v6)
    {
      v8 = *(v6 + 32);
    }

    OUTLINED_FUNCTION_3_0();
    if (v9)
    {
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_13();
      kdebug_trace();
    }
  }

  if (*(a1 + 8) == -1)
  {
    v11 = 0;
  }

  else
  {
    v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 200);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_20();
    if (v7)
    {
      OUTLINED_FUNCTION_7();
    }

    else
    {
      OUTLINED_FUNCTION_19();
      if (v12)
      {
        OUTLINED_FUNCTION_5();
        if (!v7)
        {
          v11 = v13;
        }
      }
    }
  }

  v14 = OUTLINED_FUNCTION_10(v11);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v16 = StatusReg[4];
  if ((v16 & 0x1000000) != 0)
  {
    if (v14)
    {
LABEL_40:
      _dispatch_set_priority_and_voucher_slow(v14, v6, 6);
      goto LABEL_24;
    }

    v14 = v16 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else
  {
    OUTLINED_FUNCTION_9();
    if (v7)
    {
      goto LABEL_20;
    }
  }

  if (v14)
  {
    goto LABEL_40;
  }

LABEL_20:
  if (v6 == -1)
  {
    goto LABEL_24;
  }

  if (StatusReg[28] != v6)
  {
    v14 = 0;
    goto LABEL_40;
  }

  if (v6)
  {
    os_release(v6);
  }

LABEL_24:
  v17 = StatusReg[22];
  if (v17)
  {
    OUTLINED_FUNCTION_21(v17);
  }

  else
  {
    v18 = 1;
  }

  v19 = a1;
  if (v18 <= _dispatch_continuation_cache_limit)
  {
    v19 = 0;
    *(a1 + 16) = v17;
    *(a1 + 8) = v18;
    StatusReg[22] = a1;
  }

  (*(**(a1 + 48) + 64))(*(a1 + 48), a2, a3 | 1u);
  if (v19)
  {

    _dispatch_continuation_free_to_cache_limit(v19);
  }
}

void _dispatch_queue_override_invoke(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = a1[6];
  v8 = a1[7];
  v50 = StatusReg[25];
  v51 = StatusReg[20];
  StatusReg[25] = *(v8 + 84) & 0xFFF0FFFF | ((WORD1(v50) & 0xF) << 16);
  StatusReg[20] = v8;
  v9 = *(*a1 + 40);
  v10 = a1[3];
  a1[3] = -1;
  v11 = v10 == -1 || v10 == -1;
  if (!v11)
  {
    if (v10)
    {
      v12 = *(v10 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_13();
      kdebug_trace();
    }
  }

  if (a1[1] == -1)
  {
    v14 = 0;
  }

  else
  {
    v13 = StatusReg[25];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_20();
    if (v11)
    {
      OUTLINED_FUNCTION_7();
    }

    else
    {
      OUTLINED_FUNCTION_19();
      if (v15)
      {
        OUTLINED_FUNCTION_5();
        if (!v11)
        {
          v14 = v16;
        }
      }
    }
  }

  v17 = OUTLINED_FUNCTION_10(v14);
  v19 = StatusReg[4];
  if ((v19 & 0x1000000) != 0)
  {
    if (v17)
    {
LABEL_101:
      _dispatch_set_priority_and_voucher_slow(v17, v10, 6);
      goto LABEL_24;
    }

    v17 = v19 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else
  {
    OUTLINED_FUNCTION_9();
    if (v11)
    {
      goto LABEL_20;
    }
  }

  if (v17)
  {
    goto LABEL_101;
  }

LABEL_20:
  if (v10 == -1)
  {
    goto LABEL_24;
  }

  if (StatusReg[28] != v10)
  {
    v17 = 0;
    goto LABEL_101;
  }

  if (v10)
  {
    os_release(v10);
  }

LABEL_24:
  if (v9 != 1792)
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_pop_internal(v8, a1, v18);
    }

    _dispatch_introspection_queue_item_dequeue(v8, a1);
  }

  v20 = StatusReg[22];
  if (v20)
  {
    OUTLINED_FUNCTION_21(v20);
  }

  else
  {
    v21 = 1;
  }

  v22 = a1;
  if (v21 <= _dispatch_continuation_cache_limit)
  {
    v22 = 0;
    a1[2] = v20;
    *(a1 + 2) = v21;
    StatusReg[22] = a1;
  }

  v23 = *v7;
  if (*v7 >= 0x1000uLL)
  {
    v24 = *v7;
    if (*(v23 + 40) == 1)
    {
      (*(v23 + 48))(v7, 0, (a3 >> 21) & 1);
    }

    else
    {
      (*(v23 + 64))(v7, a2, (v9 == 1792) | a3);
    }

    goto LABEL_88;
  }

  if ((a3 & 0x1000000) != 0)
  {
    v25 = objc_autoreleasePoolPush();
    v23 = *v7;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v7 + 24);
  if ((v23 & 4) != 0)
  {
    *(v7 + 24) = -1;
  }

  if (v26 != -1 && v26 != -1)
  {
    if (v26)
    {
      v28 = *(v26 + 32);
    }

    OUTLINED_FUNCTION_3_0();
    if (v29)
    {
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_13();
      kdebug_trace();
    }
  }

  if (*(v7 + 8) == -1)
  {
    v31 = 0;
  }

  else
  {
    v30 = StatusReg[25];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_20();
    if (v11)
    {
      if (v32 >> 12)
      {
        OUTLINED_FUNCTION_16();
        v31 = v48 | 0xFF;
      }
    }

    else
    {
      OUTLINED_FUNCTION_19();
      if (v15)
      {
        OUTLINED_FUNCTION_5();
        if (!v11)
        {
          v31 = v33;
        }
      }
    }
  }

  v34 = OUTLINED_FUNCTION_10(v31);
  v35 = StatusReg[4];
  if ((v35 & 0x1000000) != 0)
  {
    if (v34)
    {
      goto LABEL_114;
    }

    v34 = v35 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else
  {
    OUTLINED_FUNCTION_9();
    if (v11)
    {
      goto LABEL_61;
    }
  }

  if (v34)
  {
LABEL_114:
    _dispatch_set_priority_and_voucher_slow(v34, v26, v23 & 4 | 2);
    if ((v23 & 0x200) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

LABEL_61:
  if (v26 != -1)
  {
    if (StatusReg[28] != v26)
    {
      v34 = 0;
      goto LABEL_114;
    }

    if ((v23 & 4) != 0 && v26)
    {
      os_release(v26);
    }
  }

  if ((v23 & 0x200) != 0)
  {
    goto LABEL_70;
  }

LABEL_67:
  OUTLINED_FUNCTION_3_0();
  if (v37)
  {
    _dispatch_trace_item_pop_internal(v8, v7, v36);
  }

  _dispatch_introspection_queue_item_dequeue(v8, v7);
LABEL_70:
  if ((v23 & 4) != 0)
  {
    v39 = StatusReg[22];
    if (v39)
    {
      OUTLINED_FUNCTION_21(v39);
    }

    else
    {
      v40 = 1;
    }

    v38 = v7;
    if (v40 <= _dispatch_continuation_cache_limit)
    {
      v38 = 0;
      *(v7 + 16) = v39;
      *(v7 + 8) = v40;
      StatusReg[22] = v7;
    }
  }

  else
  {
    v38 = 0;
  }

  if ((v23 & 8) == 0)
  {
    v42 = *(v7 + 32);
    v41 = *(v7 + 40);
    v43 = v42;
    if (v41)
    {
      v43 = *(v7 + 32);
      if (v42 == _dispatch_call_block_and_release)
      {
        if (v41[2])
        {
          v43 = v41[2];
        }

        else
        {
          v43 = 0;
        }
      }
    }

    _dispatch_introspection_callout_entry(v41, v43);
    _dispatch_client_callout(v41, v42);
    _dispatch_introspection_callout_return(v41, v43);
    if (MEMORY[0xFFFFFC100])
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_2_0();
      kdebug_trace();
    }

    _dispatch_introspection_queue_item_complete(v7);
    if (!v38)
    {
      goto LABEL_86;
    }

LABEL_120:
    _dispatch_continuation_free_to_cache_limit(v38);
    if (!v25)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  v44 = *(**(v7 + 48) + 40);
  if (v44 != 514)
  {
    qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_6D1F0 = v44;
    __break(1u);
    return;
  }

  v46 = *(v7 + 32);
  v45 = *(v7 + 40);
  v47 = v46;
  if (v45)
  {
    v47 = *(v7 + 32);
    if (v46 == _dispatch_call_block_and_release)
    {
      if (v45[2])
      {
        v47 = v45[2];
      }

      else
      {
        v47 = 0;
      }
    }
  }

  group = *(v7 + 48);
  _dispatch_introspection_callout_entry(v45, v47);
  _dispatch_client_callout(v45, v46);
  _dispatch_introspection_callout_return(v45, v47);
  if (MEMORY[0xFFFFFC100])
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_2_0();
    kdebug_trace();
  }

  _dispatch_introspection_queue_item_complete(v7);
  dispatch_group_leave(group);
  if (v38)
  {
    goto LABEL_120;
  }

LABEL_86:
  if (v25)
  {
LABEL_87:
    objc_autoreleasePoolPop(v25);
  }

LABEL_88:
  if (v9 != 1792)
  {
    if (MEMORY[0xFFFFFC100])
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_2_0();
      kdebug_trace();
    }

    _dispatch_introspection_queue_item_complete(a1);
  }

  if (v22)
  {
    _dispatch_continuation_free_to_cache_limit(v22);
  }

  StatusReg[25] = StatusReg[25] & 0xF0000 | v50 & 0xFFF0FFFF;
  StatusReg[20] = v51;
}

unint64_t _dispatch_lane_set_width(int a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 160);
  if (a1 < 0)
  {
    v9 = (*(StatusReg + 32) >> 8) & 0x3FFF;
    v10 = __clz(__rbit32(v9));
    if (a1 == -1)
    {
      if (!v9)
      {
        goto LABEL_27;
      }

      if (v10 <= 5)
      {
        v12 = dword_451C4[v10];
      }

      a1 = pthread_qos_max_parallelism();
      if (a1 <= 0)
      {
LABEL_27:
        a1 = MEMORY[0xFFFFFC036];
      }

      if (a1 >= MEMORY[0xFFFFFC034])
      {
        a1 = MEMORY[0xFFFFFC034];
      }
    }

    else if (a1 == -2)
    {
      if (!v9)
      {
        goto LABEL_25;
      }

      if (v10 <= 5)
      {
        v11 = dword_451C4[v10];
      }

      a1 = pthread_qos_max_parallelism();
      if (a1 <= 0)
      {
LABEL_25:
        a1 = MEMORY[0xFFFFFC035];
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_31;
      }

      if (v10 <= 5)
      {
        v13 = dword_451C4[v10];
      }

      a1 = pthread_qos_max_parallelism();
      if (a1 <= 0)
      {
LABEL_31:
        a1 = MEMORY[0xFFFFFC036];
      }
    }
  }

  else if (a1 <= 1)
  {
    a1 = 1;
  }

  if (a1 >= 0xFFE)
  {
    v3 = 4094;
  }

  else
  {
    v3 = a1;
  }

  v4 = *(v2 + 80);
  v5 = v4;
  do
  {
    atomic_compare_exchange_strong_explicit((v2 + 80), &v5, v4 & 0xFFFF0000 | v3, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v4;
    v4 = v5;
  }

  while (!v6);
  v7 = *(v2 + 24);

  return _dispatch_lane_inherit_wlh_from_target(v2, v7);
}

uint64_t _dispatch_queue_debug_attr()
{
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v4 = *(v2 + 24);
  v5 = "";
  if (v4 && v4[9])
  {
    v5 = v4[9];
  }

  v6 = *(v2 + 56);
  v7 = snprintf(v0, v1, "sref = %d, target = %s[%p], width = 0x%x, state = 0x%016llx", *(v2 + 96) + 1, v5, v4, *(v2 + 80), v6);
  v9 = v7;
  if (v7 >= v1)
  {
    v9 = v1;
  }

  if (v7 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v6 >> 55)
  {
    OUTLINED_FUNCTION_17(v7, v8, ", suspended = %d");
    OUTLINED_FUNCTION_6();
    if (v7 < 0)
    {
      v11 = 0;
    }

    v10 += v11;
  }

  v12 = ", inactive";
  switch((v6 >> 55) & 3)
  {
    case 1uLL:
      v12 = ", activating";
      goto LABEL_16;
    case 2uLL:
      v12 = ", activated";
      goto LABEL_16;
    case 3uLL:
LABEL_16:
      OUTLINED_FUNCTION_17(v7, v8, v12);
      OUTLINED_FUNCTION_6();
      if (v7 < 0)
      {
        v13 = 0;
      }

      v10 += v13;
      break;
    default:
      break;
  }

  if ((v6 & 0x4000000001) != 0)
  {
    OUTLINED_FUNCTION_17(v7, v8, ", enqueued");
    OUTLINED_FUNCTION_6();
    if (v7 < 0)
    {
      v14 = 0;
    }

    v10 += v14;
  }

  if ((v6 & 0x8000000000) != 0)
  {
    OUTLINED_FUNCTION_17(v7, v8, ", dirty");
    OUTLINED_FUNCTION_6();
    if (v7 < 0)
    {
      v15 = 0;
    }

    v10 += v15;
  }

  if ((v6 & 0x700000000) != 0)
  {
    OUTLINED_FUNCTION_17(v7, v8, ", max qos %d");
    OUTLINED_FUNCTION_6();
    if (v7 < 0)
    {
      v16 = 0;
    }

    v10 += v16;
  }

  if (v6 >= 4)
  {
    v17 = v6 | 3;
  }

  else
  {
    v17 = 0;
  }

  if (v6 >= 4 && ((*(v3 + 80) & 0x40000) == 0 || (*(v3 + 80) & 0x1000000) != 0))
  {
    OUTLINED_FUNCTION_17(v7, v8, ", draining on 0x%x");
    OUTLINED_FUNCTION_6();
    if (v7 < 0)
    {
      v18 = 0;
    }

    v10 += v18;
  }

  if ((v6 & 0x40000000000000) != 0)
  {
    OUTLINED_FUNCTION_17(v7, v8, ", in-barrier");
    OUTLINED_FUNCTION_6();
    if (v24 < 0)
    {
      v22 = 0;
    }

    v20 = v6 & 0x10000000000;
  }

  else
  {
    v19 = (v6 >> 41) & 0x1FFF;
    v20 = v6 & 0x10000000000;
    if (!v20)
    {
      v21 = v19 + *(v3 + 80) - 4096;
    }

    OUTLINED_FUNCTION_17(v7, v8, ", in-flight = %d");
    OUTLINED_FUNCTION_6();
    if (v23 < 0)
    {
      v22 = 0;
    }
  }

  v25 = v22 + v10;
  if (v20)
  {
    v26 = snprintf(&v0[v25], v1 - v25, ", pending-barrier");
    v27 = v26;
    if (v1 - v25 < v26)
    {
      v27 = v1 - v25;
    }

    if (v26 < 0)
    {
      v27 = 0;
    }

    v25 += v27;
  }

  if ((*(v3 + 80) & 0x40000) != 0 && (*(v3 + 80) & 0x1000000) == 0)
  {
    v28 = v1 - v25;
    v29 = snprintf(&v0[v25], v28, ", thread = 0x%x ", v17);
    v30 = v29;
    if (v28 < v29)
    {
      v30 = v28;
    }

    if (v29 < 0)
    {
      v30 = 0;
    }

    v25 += v30;
  }

  return v25;
}

size_t _dispatch_queue_debug()
{
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v4 = v2[9];
  if (!v4)
  {
    v4 = object_getClassName(v2) + 12;
  }

  v5 = snprintf(v0, v1, "%s[%p] = { ", v4, v3);
  v6 = v5;
  if (v5 >= v1)
  {
    v6 = v1;
  }

  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 + _dispatch_object_debug_attr(v3, &v0[v7], v1 - v7);
  v9 = v8 + _dispatch_queue_debug_attr();
  v10 = v1 - v9;
  v11 = snprintf(&v0[v9], v10, "}");
  v12 = v11;
  if (v10 < v11)
  {
    v12 = v10;
  }

  if (v11 < 0)
  {
    v12 = 0;
  }

  return v12 + v9;
}

size_t _dispatch_channel_debug(_DWORD *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[20];
  v24 = object_getClassName(a1) + 12;
  v7 = OUTLINED_FUNCTION_12();
  v10 = snprintf(v7, v8, v9, v24, a1);
  v11 = v10;
  if (v10 >= a3)
  {
    v11 = a3;
  }

  if (v10 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 + _dispatch_object_debug_attr(a1, (a2 + v12), a3 - v12);
  v14 = _dispatch_queue_debug_attr();
  v15 = "cancelled, ";
  v16 = "";
  if ((v6 & 0x10000000) == 0)
  {
    v15 = "";
  }

  v17 = "needs-event, ";
  if ((v6 & 0x40000000) == 0)
  {
    v17 = "";
  }

  if (v6 < 0)
  {
    v16 = "deleted, ";
  }

  v26 = v17;
  v27 = v16;
  v25 = v15;
  v18 = OUTLINED_FUNCTION_12();
  v21 = snprintf(v18, v19, v20, v25, v26, v27);
  v22 = v21;
  if (v21 >= a3)
  {
    v22 = a3;
  }

  if (v21 < 0)
  {
    v22 = 0;
  }

  return v13 + v22 + v14;
}

NSObject *_dispatch_runloop_root_queue_create_4CF(const char *a1, uint64_t a2)
{
  if (!a2)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = *(StatusReg + 32);
    v5 = _dispatch_object_alloc(OS_dispatch_queue_runloop, 120);
    v6 = v5;
    *(v5 + 16) = -1985229329;
    *(v5 + 80) = 262145;
    *(v5 + 56) = 0x1FFE1000000000;
    add_explicit = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
    *(v5 + 24) = &off_713C0;
    v8 = "runloop-queue";
    if (a1)
    {
      v8 = a1;
    }

    *(v5 + 64) = add_explicit;
    *(v5 + 72) = v8;
    if ((v4 & 0x22000000) == 0 && (v4 & 0x3F00) != 0)
    {
      v9 = (__clz(__rbit32((v4 >> 8) & 0x3FFF)) << 8) + 256;
      if (((v4 >> 8) & 0x3FFF) == 0)
      {
        v9 = 0;
      }

      *(v5 + 84) = v9 & 0xFFFFFF00 | v4;
    }

    _dispatch_runloop_queue_handle_init(v5);
    v10 = *(v6 + 80);
    v11 = *(v6 + 56);
    v12 = v11;
    do
    {
      atomic_compare_exchange_strong_explicit((v6 + 56), &v12, v11 & 0xFFFFFFFF00000003 | (4 * ((*(StatusReg + 24) >> 2) & 0x3FFFFFFFLL)), memory_order_relaxed, memory_order_relaxed);
      v13 = v12 == v11;
      v11 = v12;
    }

    while (!v13);
    if (!MEMORY[0xFFFFFC100])
    {
      return _dispatch_introspection_queue_create(v6);
    }

    OUTLINED_FUNCTION_29(*(v6 + 72), v17, v18);
    if ((*(v6 + 84) & 0x4000000) != 0)
    {
      OUTLINED_FUNCTION_24();
    }

    else
    {
      OUTLINED_FUNCTION_25();
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_20:
    v16 = *(v6 + 64);
    if (MEMORY[0xFFFFFC100])
    {
      OUTLINED_FUNCTION_13();
      kdebug_trace();
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    return _dispatch_introspection_queue_create(v6);
  }

  return 0;
}

NSObject *libdispatch_init()
{
  if (_dispatch_getenv_BOOL("LIBDISPATCH_STRICT", 0))
  {
    _dispatch_mode |= 1u;
  }

  if (_dispatch_getenv_BOOL("LIBDISPATCH_COOPERATIVE_POOL_STRICT", 0))
  {
    _dispatch_mode |= 4u;
  }

  HIDWORD(v1) = qos_class_main() - 5;
  LODWORD(v1) = HIDWORD(v1);
  v0 = v1 >> 2;
  if (v0 > 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_45280[v0];
  }

  dword_70E14 = v2;
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  StatusReg[20] = &_dispatch_main_q;
  v4 = qword_70DF8[0];
  v5 = qword_70DF8[0];
  do
  {
    atomic_compare_exchange_strong_explicit(qword_70DF8, &v5, v4 & 0xFFFFFFFF00000003 | (4 * ((StatusReg[3] >> 2) & 0x3FFFFFFFLL)), memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v4;
    v4 = v5;
  }

  while (!v6);
  if ((~*(StatusReg + 50) & 0xF0000) != 0)
  {
    StatusReg[25] = StatusReg[25] | 0xF0000;
  }

  v7 = _dispatch_time_init();
  _dispatch_vtable_init(v7);
  _os_object_init();
  _voucher_init();
  _workgroup_init();

  return _dispatch_introspection_init();
}

uint64_t dispatch_assert_queue_V2_cold_1(uint64_t result, void *a2)
{
  v2 = *(result + 160);
  v3 = v2 == 0;
  if (v2)
  {
    v4 = v2 == a2;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(result + 168);
    do
    {
      v6 = v2[3];
      if (v5)
      {
        if (!v6)
        {
          v6 = *v5;
LABEL_11:
          v5 = v5[1];
          goto LABEL_12;
        }

        if (v2 == *v5)
        {
          goto LABEL_11;
        }
      }

LABEL_12:
      v3 = v6 == 0;
      if (v6)
      {
        v7 = v6 == a2;
      }

      else
      {
        v7 = 1;
      }

      v2 = v6;
    }

    while (!v7);
  }

  if (v3)
  {
    _dispatch_assert_queue_fail(a2, 1);
  }

  return result;
}

void dispatch_assert_queue_V2_cold_2(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_assert_queue()";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_assert_queue_not_V2_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_assert_queue_not()";
  qword_6D1F0 = a1;
  __break(1u);
}

void *dispatch_assert_queue_barrier_cold_1(void *result)
{
  if (!result[3] || (result[7] & 0x40000000000000) == 0)
  {
    _dispatch_assert_queue_barrier_fail(result);
  }

  return result;
}

void dispatch_verify_current_queue_4swiftonly_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_am_i_on_queue_4swiftonly()";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_block_perform_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid flags passed to dispatch_block_perform()";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_block_invoke_direct_cold_1(unsigned int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
  qword_6D1F0 = a1;
  __break(1u);
}

uint64_t _dispatch_block_sync_invoke_cold_3(uint64_t a1, void *a2)
{
  if (a1 == 2)
  {
    return OUTLINED_FUNCTION_15(a1, a2);
  }

  qword_6D1C0 = "API MISUSE: Over-release of an object";
  __break(1u);
  return a1;
}

void dispatch_block_wait_cold_3(unsigned int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be waited for more than once";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_block_wait_cold_4(int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_block_notify_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid block object passed to dispatch_block_notify()";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_block_notify_cold_3(unsigned int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and observed";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_queue_set_label_nocopy_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change label for this queue";
  qword_6D1F0 = a1;
  __break(1u);
}

uint64_t _dispatch_queue_compute_priority_and_wlh_cold_1(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  v5 = *(v4 + 40);
  if (MEMORY[0xFFFFFC100])
  {
    OUTLINED_FUNCTION_13();
    result = kdebug_trace();
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    *v2 = 0;
  }

LABEL_4:
  *v1 = 0;
  return result;
}

void dispatch_set_qos_class_floor_cold_2(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_lane_class_dispose_cold_1(uint64_t *a1)
{
  v1 = *a1;
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Release of a queue while items are enqueued";
  qword_6D1F0 = v1;
  __break(1u);
}

void _dispatch_lane_class_dispose_cold_2(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFC) == 0)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Release of a queue with corrupt state";
    qword_6D1F0 = a1;
    __break(1u);
  }

  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Premature release of a locked queue";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_queue_xref_dispose_cold_1(uint64_t a1)
{
  if ((a1 & 0x180000000000000) == 0)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Release of a suspended object";
    qword_6D1F0 = a1;
    __break(1u);
  }

  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Release of an inactive object";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_queue_set_width_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected dispatch object type";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_queue_set_width_cold_2(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Cannot set width of a serial queue";
  qword_6D1F0 = a1;
  __break(1u);
}

atomic_ullong *_dispatch_lane_set_target_queue_cold_1(atomic_ullong *result, uint64_t a2)
{
  if ((result[10] & 0x400000) == 0)
  {
    if ((result[10] & 0x100000) != 0)
    {
      goto LABEL_17;
    }

    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change the target of this object after it has been activated";
    __break(1u);
    goto LABEL_16;
  }

  v2 = a2;
  v3 = *(*result + 40);
  if (v3 == 17)
  {
    if ((result[10] & 0x100000) != 0)
    {
      v8 = "Changing the target of a queue already targeted by other dispatch objects";
      goto LABEL_13;
    }

    while (*(v2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed) <= 0)
    {
LABEL_16:
      qword_6D1C0 = "API MISUSE: Resurrection of an object";
      __break(1u);
LABEL_17:
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change the target of a queue already targeted by other dispatch objects";
      __break(1u);
LABEL_18:
      OUTLINED_FUNCTION_2_0();
      kdebug_trace();
LABEL_11:
      v8 = "Changing the target of a source after it has been activated";
LABEL_13:
      _dispatch_bug_deprecated(v8);
    }

    v4 = OUTLINED_FUNCTION_12();

    return _dispatch_barrier_trysync_or_async_f(v4, v5, v6, 1);
  }

  else
  {
    if (v3 == 19)
    {
      OUTLINED_FUNCTION_3_0();
      if (v7)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected dispatch object type";
    qword_6D1F0 = v3;
    __break(1u);
  }

  return result;
}

atomic_uint *_dispatch_lane_set_target_queue_cold_4(uint64_t a1, const char *a2)
{
  result = atomic_exchange_explicit((a1 + 24), a2, memory_order_release);
  if (result)
  {
    if (result[2] != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        if (add_explicit != 1)
        {
          qword_6D1C0 = "API MISUSE: Over-release of an object";
          __break(1u);
          return result;
        }

        _os_object_dispose(result, a2);
      }
    }
  }

  return _dispatch_lane_resume(a1, 0);
}

void _dispatch_lane_legacy_set_target_queue_cold_1()
{
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_bug_deprecated("Changing the target of a queue already targeted by other dispatch objects");
}

void _dispatch_lane_legacy_set_target_queue_cold_2()
{
  OUTLINED_FUNCTION_27();
  _dispatch_unfair_lock_unlock_slow(v2, v3);
  if ((v1 & 2) != 0)
  {
    v4 = *(v0 + 200);
    if ((v4 & 0xF0000) == 0)
    {
      OUTLINED_FUNCTION_23(v4);
    }
  }
}

NSObject *_dispatch_queue_invoke_finish_cold_1(__objc2_class **a1, uint64_t a2, uint64_t a3)
{
  v5 = 0x4000000000;
  if (a1 != &_dispatch_mgr_q)
  {
    v5 = 1;
  }

  v6 = *(a2 + 56);
  v7 = v6;
  do
  {
    v8 = v6 - a3;
    if (((v6 - a3) & 0xFFE0004000000001) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = v5;
    }

    v10 = v9 | (v6 - a3) & 0xFFFFFF7700000001;
    v11 = v10 | 0x8000000000;
    atomic_compare_exchange_strong_explicit((a2 + 56), &v7, v10 | 0x8000000000, memory_order_release, memory_order_relaxed);
    v12 = v7 == v6;
    v6 = v7;
  }

  while (!v12);
  v13 = HIDWORD(v8) & 7;
  if ((~v8 & 0x1800000000) == 0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = *(StatusReg + 200);
    if ((HIWORD(v15) & 0xF) < v13)
    {
      *(StatusReg + 200) = v15 & 0xFFF0FFFF | (v13 << 16);
    }
  }

  if (((v10 ^ v8) & v5) != 0)
  {
    if ((v8 & 0x2000000000) != 0)
    {
      _dispatch_introspection_runtime_event();

      return _dispatch_event_loop_poke(a2, v11, (&dword_0 + 1), v16);
    }

    else
    {
      OUTLINED_FUNCTION_3_0();
      if (v18)
      {
        v24 = OUTLINED_FUNCTION_12();
        _dispatch_trace_item_push_internal(v24, v25, v26);
      }

      v19 = OUTLINED_FUNCTION_12();
      _dispatch_introspection_queue_item_enqueue(v19, v20);
      superclass = (*a1)[2].superclass;
      v22 = OUTLINED_FUNCTION_12();

      return v23(v22);
    }
  }

  else
  {

    return _os_object_release_internal_n(a2, &dword_0 + 2);
  }
}

void _dispatch_queue_priority_inherit_from_target_cold_1(unsigned int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_workloop_dispose_cold_1(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFC) == 0)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Release of a workloop with corrupt state";
    qword_6D1F0 = a1;
    __break(1u);
  }

  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Release of a locked workloop";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_workloop_dispose_cold_2(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Release of a workloop while items are enqueued";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_workloop_activate_cold_2(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Process has too many threads.";
  qword_6D1F0 = a1;
  __break(1u);
}

uint64_t _dispatch_workloop_activate_cold_3()
{
  OUTLINED_FUNCTION_22();
  v2 = *v1;
  memset(&v8, 0, sizeof(v8));
  pthread_attr_init(&v8);
  sched_priority = v2->sched_priority;
  if (v2->sched_priority)
  {
    pthread_attr_setschedparam(&v8, v2 + 1);
    sched_priority = v2->sched_priority;
    if ((v2->sched_priority & 2) == 0)
    {
LABEL_3:
      if ((sched_priority & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((sched_priority & 2) == 0)
  {
    goto LABEL_3;
  }

  pthread_attr_setschedpolicy(&v8, v2[2].sched_priority);
  if ((v2->sched_priority & 4) != 0)
  {
LABEL_4:
    v4 = v2[2].__opaque[0];
    v5 = v2[3].sched_priority;
    pthread_attr_setcpupercent_np();
  }

LABEL_5:
  v6 = _pthread_workloop_create();
  if (v6)
  {
    if (v6 == 45)
    {
      _dispatch_workloop_activate_simulator_fallback(v0, &v8.__sig);
    }
  }

  else
  {
    v2->sched_priority |= 0x10u;
  }

  return pthread_attr_destroy(&v8);
}

uint64_t _dispatch_workloop_activate_cold_4(uint64_t a1, atomic_ullong *a2)
{
  v2 = *(a1 + 84);
  if (v2)
  {
    v3 = v2 | 0x80000000;
  }

  else
  {
    v3 = -2080358400;
  }

  *(a1 + 84) = v3;
  atomic_fetch_and_explicit(a2, 0xFF7FFFFFFFFFFFFFLL, memory_order_relaxed);
  return _dispatch_workloop_wakeup(a1, 0, 1);
}

uint64_t _dispatch_workloop_wakeup_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  if (v2)
  {
    v9 = OUTLINED_FUNCTION_12();
    _dispatch_trace_item_push_internal(v9, v10, v11);
  }

  v3 = OUTLINED_FUNCTION_12();
  _dispatch_introspection_queue_item_enqueue(v3, v4);
  v5 = *(*a1 + 88);
  v6 = OUTLINED_FUNCTION_12();

  return v7(v6);
}

uint64_t _dispatch_workloop_wakeup_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a1 & 0x700000000) == 0)
  {
    return 1;
  }

  if ((a2 & 0x2000000000) != 0)
  {
    _dispatch_introspection_runtime_event();
    v5 = OUTLINED_FUNCTION_28();
    _dispatch_event_loop_poke(v5, v6, v7, v8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_28();
    _dispatch_queue_wakeup_with_override_slow(v10, v11, a4);
  }

  return 0;
}

void _dispatch_workloop_wakeup_cold_3(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Waking up an inactive workloop";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_workloop_wakeup_cold_4(unsigned int a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Invalid way to wake up a workloop";
  qword_6D1F0 = a1;
  __break(1u);
}

uint64_t _dispatch_workloop_invoke_cold_1()
{
  OUTLINED_FUNCTION_27();
  v3 = *v2;
  OUTLINED_FUNCTION_16();
  result = _pthread_workqueue_override_start_direct();
  if ((HIWORD(*v0) & 0xFu) < v1)
  {
    *v0 = *v0 & 0xFFF0FFFF | (v1 << 16);
  }

  return result;
}

void _dispatch_workloop_invoke_cold_2(uint64_t a1)
{
  if (*a1)
  {
    *(*a1 + 53) |= 2u;
    _dispatch_return_to_kernel();
  }
}

void _dispatch_workloop_invoke_cold_3(uint64_t a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected object type";
  qword_6D1F0 = a1;
  __break(1u);
}

uint64_t _dispatch_workloop_barrier_complete_cold_3(uint64_t a1, uint64_t a2, char a3)
{
  result = 1;
  if ((a1 & 0xFF80004000000000) == 0 && (a1 & 0xFFFFFFFD) != 0)
  {
    if ((a1 & 0x2000000000) != 0)
    {
      _dispatch_introspection_runtime_event();
      v6 = OUTLINED_FUNCTION_28();
      _dispatch_event_loop_poke(v6, v7, v8, v9);
    }

    else
    {
      v10 = OUTLINED_FUNCTION_28();
      _dispatch_queue_wakeup_with_override_slow(v10, v11, a3);
    }

    return 0;
  }

  return result;
}

void dispatch_async_swift_job_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Used Swift only SPI to enqueue non-Swift runtime objects into dispatch";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_channel_xref_dispose_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Release of a channel that has not been cancelled, but has a cancel acknowledgement callback";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_channel_create_cold_2()
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Unsupported callbacks version";
  qword_6D1F0 = 0;
  __break(1u);
}

NSObject *_dispatch_mgr_queue_push_cold_1(NSObject *result, objc_class *a2, void *a3, uint64_t a4)
{
  result[13].isa = a2;
  *a3 = 0;
  if (((atomic_fetch_or_explicit(&result[7], 0x8000000000uLL, memory_order_release) ^ *(a4 + 24)) & 0xFFFFFFFC) != 0)
  {
    _dispatch_introspection_runtime_event();

    return _dispatch_event_loop_poke(0xFFFFFFFFFFFFFFF8, 0, 0, v5);
  }

  return result;
}

void _dispatch_pthread_root_queue_create_cold_1()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_29(*v2, v5, v6);
  if ((*v1 & 0x4000000) != 0)
  {
    OUTLINED_FUNCTION_24();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_25();
  if (v3)
  {
LABEL_5:
    OUTLINED_FUNCTION_16();
  }

  v4 = *v0;
  if (MEMORY[0xFFFFFC100])
  {
    OUTLINED_FUNCTION_13();
    kdebug_trace();
  }

  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }
}

void _dispatch_queue_is_exclusively_owned_by_current_thread_4IOHID_cold_1(unsigned __int16 a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid queue type";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_runloop_root_queue_perform_4CF_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Not a runloop queue";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_main_queue_drain_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: _dispatch_main_queue_callback_4CF called from the wrong thread";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_main_queue_drain_cold_5(void *a1, uint64_t a2, _OWORD *a3)
{
  *a1 = -4;
  *a3 = *(a2 + 160);
  *(a2 + 160) = &_dispatch_main_q;
  *(a2 + 168) = 0;
  v52 = *(a2 + 32);
  v6 = (__clz(__rbit32((v52 >> 8) & 0x3FFF)) << 8) + 256;
  if (((v52 >> 8) & 0x3FFF) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 224);
  if (v8)
  {
    os_retain(*(a2 + 224));
  }

  if (((dword_70E14 ^ v7) & 0xF00) != 0)
  {
    _dispatch_main_queue_update_priority_from_thread();
  }

  LODWORD(v9) = v7 | v52 & 0x8E0000FF;
  v10 = *(a2 + 200);
  v50 = a3;
  v51 = a1;
  v48 = v10;
  if (v10)
  {
    v11 = v7 & 0xFFF | v52;
    if (v11)
    {
      v12 = v10 & 0x880F0000;
      v13 = v10 & 0xFFF;
      if (v13 > v11)
      {
        v11 = v13;
      }

      LODWORD(v9) = v12 | v11;
    }

    else
    {
      LODWORD(v9) = v10 | 0x40000000;
      if ((v10 & 0xFFF) == 0)
      {
        LODWORD(v9) = *(a2 + 200);
      }
    }
  }

  object = v8;
  if ((~v9 & 0xF0000) != 0)
  {
    v9 = v9 | 0xF0000;
  }

  else
  {
    v9 = v9;
  }

  *(a2 + 200) = v9;
  memset(v53, 0, sizeof(v53));
  v14 = off_70E28[0];
  if (!off_70E28[0])
  {
    v14 = _dispatch_wait_for_enqueuer(off_70E28);
  }

  off_70E28[0] = 0;
  v15 = atomic_exchange_explicit(&qword_70DF0, 0, memory_order_release) & 0xFFFFFFFFFFFFFFF8;
  do
  {
    if (v14 == v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v14 + 2);
      if (!v16)
      {
        v16 = _dispatch_wait_for_enqueuer(v14 + 2);
      }
    }

    v17 = *(a2 + 192);
    if (v17)
    {
      (*v17)(&_dispatch_main_q);
    }

    v18 = *v14;
    if (*v14 >= 0x1000uLL)
    {
      v19 = *v14;
      if (*(v18 + 40) == 1)
      {
        (*(v18 + 48))(v14, 0, 0);
      }

      else
      {
        (*(v18 + 64))(v14, v53, 0x80000);
      }

      if (v17)
      {
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    v20 = *(v14 + 3);
    if ((v18 & 4) != 0)
    {
      *(v14 + 3) = -1;
    }

    v21 = v20 == -1 || (v20 + 1) == 0;
    if (!v21)
    {
      if (v20)
      {
        v22 = v20[8];
      }

      if (MEMORY[0xFFFFFC100])
      {
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_13();
        kdebug_trace();
      }
    }

    if (*(v14 + 1) == -1)
    {
      v24 = 0;
    }

    else
    {
      v23 = *(a2 + 200);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_20();
      if (v21)
      {
        OUTLINED_FUNCTION_7();
      }

      else
      {
        OUTLINED_FUNCTION_19();
        if (v25)
        {
          OUTLINED_FUNCTION_5();
          if (!v21)
          {
            v24 = v26;
          }
        }
      }
    }

    v27 = OUTLINED_FUNCTION_10(v24);
    v29 = *(a2 + 32);
    if ((v29 & 0x1000000) != 0)
    {
      if (v27)
      {
        goto LABEL_94;
      }

      v27 = v29 & 0xFFFFFFFFFEFFFFFFLL;
LABEL_85:
      if (v27)
      {
        goto LABEL_94;
      }

      goto LABEL_54;
    }

    OUTLINED_FUNCTION_9();
    if (!v21)
    {
      goto LABEL_85;
    }

LABEL_54:
    if (v20 == -1)
    {
      goto LABEL_59;
    }

    if (*(a2 + 224) == v20)
    {
      if ((v18 & 4) != 0 && v20)
      {
        os_release(v20);
      }

LABEL_59:
      if ((v18 & 0x200) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_63;
    }

    v27 = 0;
LABEL_94:
    _dispatch_set_priority_and_voucher_slow(v27, v20, v18 & 4 | 2);
    if ((v18 & 0x200) == 0)
    {
LABEL_60:
      if (MEMORY[0xFFFFFC100])
      {
        _dispatch_trace_item_pop_internal(&_dispatch_main_q, v14, v28);
      }

      _dispatch_introspection_queue_item_dequeue(&_dispatch_main_q, v14);
    }

LABEL_63:
    if ((v18 & 4) != 0)
    {
      v31 = *(a2 + 176);
      if (v31)
      {
        OUTLINED_FUNCTION_21(v31);
      }

      else
      {
        v32 = 1;
      }

      v30 = v14;
      if (v32 <= _dispatch_continuation_cache_limit)
      {
        v30 = 0;
        *(v14 + 2) = v31;
        v14[2] = v32;
        *(a2 + 176) = v14;
      }
    }

    else
    {
      v30 = 0;
    }

    if ((v18 & 8) != 0)
    {
      v36 = *(**(v14 + 6) + 40);
      if (v36 != 514)
      {
        qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected object type";
        qword_6D1F0 = v36;
        __break(1u);
        return;
      }

      v37 = *(v14 + 4);
      v38 = *(v14 + 5);
      v39 = v37;
      if (v38)
      {
        v39 = *(v14 + 4);
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

      group = *(v14 + 6);
      _dispatch_introspection_callout_entry(v38, v39);
      _dispatch_client_callout(v38, v37);
      _dispatch_introspection_callout_return(v38, v39);
      if (MEMORY[0xFFFFFC100])
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_2_0();
        kdebug_trace();
      }

      _dispatch_introspection_queue_item_complete(v14);
      dispatch_group_leave(group);
      if (!v30)
      {
LABEL_79:
        if (!v17)
        {
          goto LABEL_81;
        }

LABEL_80:
        v17[1](&_dispatch_main_q);
        goto LABEL_81;
      }
    }

    else
    {
      v33 = *(v14 + 4);
      v34 = *(v14 + 5);
      v35 = v33;
      if (v34)
      {
        v35 = *(v14 + 4);
        if (v33 == _dispatch_call_block_and_release)
        {
          if (v34[2])
          {
            v35 = v34[2];
          }

          else
          {
            v35 = 0;
          }
        }
      }

      _dispatch_introspection_callout_entry(v34, v35);
      _dispatch_client_callout(v34, v33);
      _dispatch_introspection_callout_return(v34, v35);
      if (MEMORY[0xFFFFFC100])
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_2_0();
        kdebug_trace();
      }

      _dispatch_introspection_queue_item_complete(v14);
      if (!v30)
      {
        goto LABEL_79;
      }
    }

    _dispatch_continuation_free_to_cache_limit(v30);
    if (v17)
    {
      goto LABEL_80;
    }

LABEL_81:
    v14 = v16;
  }

  while (v16);
  (*(_dispatch_main_q + 80))(&_dispatch_main_q, 0, 0);
  *(a2 + 200) = v48 & 0xFFF0FFFF;
  v40 = v52 & 0xFFFFFFFF02FFFFFFLL;
  if (v52 == -1)
  {
    v41 = 0;
  }

  else
  {
    v41 = v52 & 0xFFFFFFFF02FFFFFFLL;
  }

  v42 = *(a2 + 32);
  if ((v42 & 0x1000000) != 0)
  {
    v44 = v50;
    v43 = v51;
    v45 = object;
    if (!v41)
    {
      v41 = v42 & 0xFFFFFFFFFEFFFFFFLL;
      goto LABEL_116;
    }

LABEL_119:
    _dispatch_set_priority_and_voucher_slow(v40, v45, 6);
  }

  else
  {
    v44 = v50;
    v43 = v51;
    v45 = object;
    if (v41 == (v42 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_107;
    }

LABEL_116:
    v40 = v41;
    if (v41)
    {
      goto LABEL_119;
    }

LABEL_107:
    if (v45 != -1)
    {
      if (*(a2 + 224) != v45)
      {
        v40 = 0;
        goto LABEL_119;
      }

      if (v45)
      {
        os_release(v45);
      }
    }
  }

  *(a2 + 160) = *v44;
  *v43 = 0;
  *(a2 + 40) = 0;
  v46 = *(a2 + 176);
  if (v46)
  {
    *(a2 + 176) = 0;
    _dispatch_cache_cleanup(v46);
  }
}

void _dispatch_queue_cleanup_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch queue is running";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_deferred_items_cleanup_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Premature thread exit with unhandled deferred items";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_queue_atfork_child_cold_1()
{
  v0 = qword_70DF8[0];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = v0;
  do
  {
    atomic_compare_exchange_strong_explicit(qword_70DF8, &v2, v0 & 0xFFFFFFFF00000003 | (4 * ((*(StatusReg + 24) >> 2) & 0x3FFFFFFFLL)), memory_order_relaxed, memory_order_relaxed);
    v3 = v2 == v0;
    v0 = v2;
  }

  while (!v3);
}

uint64_t _dispatch_worker_thread_cold_1(uint64_t a1, void *a2)
{
  if (a1 == 1)
  {
    return OUTLINED_FUNCTION_15(a1, a2);
  }

  qword_6D1C0 = "API MISUSE: Over-release of an object";
  __break(1u);
  return a1;
}

void _dispatch_worker_thread_cold_2(int a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Pending thread request underflow";
  qword_6D1F0 = a1 - 1;
  __break(1u);
}

void _dispatch_root_queues_init_once_cold_2(int a1, int a2)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Root queue initialization failed";
  qword_6D1F0 = a2 | (a1 << 16);
  __break(1u);
}

void _dispatch_root_queues_init_once_cold_3()
{
  v0 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  qword_6D1C0 = "BUG IN LIBDISPATCH: Unable to limit cooperative pool size";
  qword_6D1F0 = v0;
  __break(1u);
}

void _dispatch_root_queues_init_once_cold_4(int a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Missing Kevent WORKQ support";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_root_queues_init_once_cold_5(int a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: QoS Maintenance support required";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_root_queue_drain_deferred_wlh_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Invalid wlh state";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_root_queue_drain_deferred_wlh_cold_4(atomic_uint *a1, uint64_t *a2)
{
  if (*a1 == 0x7FFFFFFF || atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed) > 0)
  {
    v2 = *a2;
    OUTLINED_FUNCTION_3_0();
    if (v3)
    {
      v6 = OUTLINED_FUNCTION_12();
      _dispatch_trace_item_push_internal(v6, v7, v8);
    }

    v4 = OUTLINED_FUNCTION_12();
    _dispatch_introspection_queue_item_enqueue(v4, v5);
  }

  else
  {
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }
}

void *_dispatch_root_queue_drain_deferred_wlh_cold_5(void *result, void *a2, uint64_t a3)
{
  *result = 0;
  *a2 = 0;
  v3 = *(a3 + 32);
  if ((v3 & 0x1000000) != 0)
  {
    result = (v3 & 0xFFFFFFFFFEFFFFFFLL);
    if ((v3 & 0xFFFFFFFFFEFFFFFFLL) != 0)
    {
      return _dispatch_set_priority_and_voucher_slow(result, 0, 14);
    }
  }

  if (*(a3 + 224))
  {
    result = 0;
    return _dispatch_set_priority_and_voucher_slow(result, 0, 14);
  }

  return result;
}

void _dispatch_apply_with_attr_f_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_apply_attr not initialized using dispatch_apply_attr_init";
  qword_6D1F0 = a1;
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

void _dispatch_apply_with_attr_f_cold_4(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: attribute's properties are invalid or meaningless on this system";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_apply_attr_set_parallelism_cold_2()
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: 0 is an invalid threads_per_cluster value";
  qword_6D1F0 = 0;
  __break(1u);
}

void dispatch_apply_attr_set_parallelism_cold_3(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid threads_per_cluster value, only acceptable value is 1";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_apply_attr_set_parallelism_cold_4(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid threads_per_entity value for CPU entity";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_apply_attr_set_parallelism_cold_5(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Unknown entity";
  qword_6D1F0 = a1;
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

  v11 = OUTLINED_FUNCTION_1_2();
  v14 = v10 + _dispatch_object_debug_attr(v11, v12, v13);
  v15 = OUTLINED_FUNCTION_1_2();
  v18 = v14 + _dispatch_source_debug_attr(v15, v16, v17);
  v19 = *(v6 + 29);
  if ((v19 & 2) != 0)
  {
    v25 = OUTLINED_FUNCTION_1_2();
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
    v21 = "";
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
      v8 = "";
    }
  }

  else
  {
    v8 = "";
  }

  v9 = v7 != 0;
  v10 = v7 & 1;
  v11 = "cancelled, ";
  if ((v6 & 0x10000000) == 0)
  {
    v11 = "";
  }

  v12 = "needs-event, ";
  if ((v6 & 0x40000000) == 0)
  {
    v12 = "";
  }

  if (v6 < 0)
  {
    v13 = "deleted, ";
  }

  else
  {
    v13 = "";
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
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target source to the cooperative root queue - not implemented";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_source_xref_dispose_cold_1(unsigned int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Release of a source that has not been cancelled, but has a mandatory cancel handler";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_source_merge_data_cold_2(char a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid source type";
  qword_6D1F0 = a1;
  __break(1u);
}

void *dispatch_source_cancel_cold_2(atomic_uint *a1)
{
  if ((atomic_fetch_or_explicit(a1 + 20, 0x10000000u, memory_order_release) & 0x10000000) != 0)
  {
    return _os_object_release_internal_n(a1, &dword_0 + 2);
  }

  else
  {
    return (*(*a1 + 80))(a1, 0, 3);
  }
}

void dispatch_source_cancel_and_wait_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Source has a cancel handler";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_source_cancel_and_wait_cold_2(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Dispatch source used after last release";
  qword_6D1F0 = a1;
  __break(1u);
}

_DWORD *dispatch_source_cancel_and_wait_cold_3(_DWORD *result, int a2, uint64_t a3)
{
  if (((a2 ^ *result) & 0xFFFFFFFC) == 0)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_source_cancel_and_wait called from a source handler";
    qword_6D1F0 = a3;
    __break(1u);
  }

  return result;
}

uint64_t dispatch_source_cancel_and_wait_cold_4(_DWORD *a1, void *a2, int8x16_t a3)
{
  if ((*a1 & 0x80000000) == 0)
  {
    _dispatch_source_refs_unregister(a2, 3);
  }

  if ((*a1 & 0x80000000) != 0)
  {
    _dispatch_source_cancel_callout(a2, 0, 0, a3);
  }

  v5 = *(*a2 + 80);

  return v5(a2, 0, 20);
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
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Source is suspended";
    qword_6D1F0 = object;
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
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports or file descriptors)";
    qword_6D1F0 = v3;
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
    return OUTLINED_FUNCTION_0_3();
  }

  return result;
}

uint64_t _dispatch_source_latch_and_call_cold_5()
{
  if (MEMORY[0xFFFFFC100])
  {
    return OUTLINED_FUNCTION_0_3();
  }

  return result;
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

uint64_t *dispatch_mach_handoff_reply(uint64_t a1, unsigned int a2, void *a3)
{
  v7 = _dispatch_mach_handoff_context(a2);
  v8 = *(v7 + 16);
  _dispatch_mach_handoff_set_wlh(v8, a1);
  if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed) <= 0)
  {
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
    goto LABEL_24;
  }

  *(v7 + 24) = a1;
  v9 = _dispatch_Block_copy(a3);
  v10 = a3[2];
  if (v10)
  {
    if (_dispatch_block_special_invoke != v10)
    {
      goto LABEL_5;
    }

LABEL_22:
    *v8 = 276;
    v8[5] = v9;
    result = _dispatch_continuation_init_slow(v8, a1, 0);
    goto LABEL_20;
  }

  if (!_dispatch_block_special_invoke)
  {
    goto LABEL_22;
  }

LABEL_5:
  *v8 = 276;
  v8[4] = _dispatch_call_block_and_release;
  v8[5] = v9;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 32) & 0xFFFFFFLL;
  if (v4 >= 0x10FF)
  {
    v3 = 4351;
  }

  else
  {
    v3 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  v12 = *(StatusReg + 224);
  if (v12)
  {
    os_retain(*(StatusReg + 224));
  }

  v8[3] = v12;
  if (v12 == -1)
  {
    goto LABEL_14;
  }

  if (v12)
  {
    v13 = *(v12 + 32);
  }

  if (!MEMORY[0xFFFFFC100])
  {
LABEL_14:
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_24:
  OUTLINED_FUNCTION_3_1();
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_15:
  v14 = *(a1 + 84);
  if ((v14 & 0x40000000) != 0 || (v14 & 0xFFF) == 0)
  {
    result = (__clz(__rbit32(v3 >> 8)) + 1);
    goto LABEL_19;
  }

LABEL_17:
  result = 0;
  v3 = 0;
LABEL_19:
  v8[1] = v3;
LABEL_20:
  *(v7 + 32) = result;
  v8[6] = *v8;
  *v8 = &unk_64828;
  return result;
}

void _dispatch_mach_ipc_handoff_invoke(id a1, int8x16_t a2, uint64_t a3, int a4)
{
  v27[1] = "mach_msg";
  v27[2] = a1;
  v28 = 0;
  v29 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = StatusReg[20];
  v9 = *(a1 + 6);
  v10 = *(a1 + 14);
  __swp(v4, a1 + 16);
  if (v4)
  {
    if (v4)
    {
      v4 = ~v4;
    }

    else
    {
      _dispatch_sync_ipc_handoff_begin(v4, v10, a1 + 64);
    }
  }

  *(a1 + 2) = -1985229329;
  *(a1 + 7) = 0;
  v27[0] = StatusReg[23];
  StatusReg[23] = v27;
  v11 = *(a1 + 3);
  *(a1 + 3) = -1;
  if (v11 != -1 && v11 != -1)
  {
    if (v11)
    {
      v13 = *(v11 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      OUTLINED_FUNCTION_3_1();
    }
  }

  v14 = *(a1 + 1);
  if (v14 == -1)
  {
    v17 = 0;
  }

  else
  {
    v15 = StatusReg[25];
    if (((v15 >> 8) & 0xF) != 0)
    {
      v16 = 256 << ((BYTE1(v15) & 0xFu) - 1);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
    if ((v14 & 0xFFFFFF) != 0)
    {
      if ((v14 & 0xFFFFFFuLL) >= (v16 & 0xFFFFFF00) && ((v15 & 0x44000000) != 0 || (*(a1 + 1) & 0x10000000) != 0))
      {
        v17 = v14 & 0xFFFFFF;
      }
    }

    else if (v15 >> 12)
    {
      v17 = (256 << ((v15 >> 12) - 1)) | 0xFF;
    }
  }

  v19 = v17 & 0xFFFFFFFF02FFFFFFLL;
  v20 = StatusReg[4];
  if ((v20 & 0x1000000) != 0)
  {
    if (v19)
    {
      goto LABEL_64;
    }

    v19 = v20 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v19 == (v20 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_28;
  }

  if (v19)
  {
LABEL_64:
    _dispatch_set_priority_and_voucher_slow(v19, v11, 6);
    if ((v9 & 0x200) != 0)
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

  if (StatusReg[28] != v11)
  {
    v19 = 0;
    goto LABEL_64;
  }

  if (v11)
  {
    os_release(v11);
  }

LABEL_32:
  if ((v9 & 0x200) != 0)
  {
    goto LABEL_36;
  }

LABEL_33:
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_trace_item_pop_internal(v8, a1, a2);
  }

  _dispatch_introspection_queue_item_dequeue(v8, a1);
LABEL_36:
  if ((a4 & 0x1000000) != 0)
  {
    v21 = objc_autoreleasePoolPush();
  }

  else
  {
    v21 = 0;
  }

  v23 = *(a1 + 4);
  v22 = *(a1 + 5);
  v24 = v23;
  if (v22)
  {
    v24 = *(a1 + 4);
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
  if (v21)
  {
    objc_autoreleasePoolPop(v21);
  }

  if ((v9 & 0x200) == 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      OUTLINED_FUNCTION_3_1();
    }

    _dispatch_introspection_queue_item_complete(a1);
  }

  v26 = v28;
  StatusReg[23] = v27[0];
  if (v26)
  {
    _dispatch_mach_ipc_handoff_async(v27, v25);
  }

  else if (!atomic_fetch_add_explicit(a1 + 18, 0xFFFFFFFF, memory_order_relaxed))
  {
    free(a1);
  }

  if (v4)
  {
    _dispatch_sync_ipc_handoff_end(v4, v10);
  }
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

  v10 = OUTLINED_FUNCTION_1_3();
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
    OUTLINED_FUNCTION_2_1(v15, v16, "id 0x%x, ");
    OUTLINED_FUNCTION_0_4();
    if (v15 < 0)
    {
      v19 = 0;
    }

    v18 += v19;
  }

  if (v14[1])
  {
    v37 = v14[1];
    OUTLINED_FUNCTION_2_1(v15, v16, "size %u, ");
    OUTLINED_FUNCTION_0_4();
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
    OUTLINED_FUNCTION_2_1(v15, v16, "bits <l %u, r %u");
    OUTLINED_FUNCTION_0_4();
    if (v22 < 0)
    {
      v24 = 0;
    }

    v25 = v24 + v18;
    if ((*v14 & 0xFFE0E0E0) != 0)
    {
      v37 = *v14 & 0xFFE0E0E0;
      OUTLINED_FUNCTION_2_1(v22, v23, ", o 0x%x");
      OUTLINED_FUNCTION_0_4();
      if (v22 < 0)
      {
        v26 = 0;
      }

      v25 += v26;
    }

    OUTLINED_FUNCTION_2_1(v22, v23, ">, ");
    OUTLINED_FUNCTION_0_4();
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

  OUTLINED_FUNCTION_2_1(v15, v16, v29);
  OUTLINED_FUNCTION_0_4();
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

  v10 = OUTLINED_FUNCTION_1_3();
  v13 = v9 + _dispatch_object_debug_attr(v10, v11, v12);
  v14 = OUTLINED_FUNCTION_1_3();
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
  v6 = "";
  if (v4)
  {
    v7 = v4[9];
    if (!v7)
    {
      v7 = "";
    }
  }

  else
  {
    v7 = "";
  }

  if (*(v5 + 30))
  {
    v8 = " (armed)";
  }

  else
  {
    v8 = "";
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
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_hooks_install_4libxpc called twice";
  qword_6D1F0 = _dispatch_mach_xpc_hooks;
  __break(1u);
}

void dispatch_mach_hooks_install_4libxpc_cold_2(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: trying to install hooks with unsupported version";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_mach_create_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target object to cooperative root queue - not implemented";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_mach_connect_cold_1(unsigned int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Channel already connected";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_mach_arm_no_senders_cold_2(char a1, mach_port_name_t a2)
{
  if (a1)
  {
    v2 = mach_port_deallocate(mach_task_self_, a2);
    if (v2 == -301)
    {
      qword_6D1C0 = "MIG_REPLY_MISMATCH";
      qword_6D1F0 = -301;
      __break(1u);
    }

    if (v2)
    {
      _dispatch_bug(269, v2);
    }
  }

  else
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Mach port notification collision";
    qword_6D1F0 = a2;
    __break(1u);
  }
}

void _dispatch_mach_merge_msg_cold_1(uint64_t a1)
{
  v1 = *(a1 + 24);
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports)";
  qword_6D1F0 = v1;
  __break(1u);
}

BOOL _dispatch_mach_merge_msg_cold_3(void *a1)
{
  OUTLINED_FUNCTION_3_1();
  result = (*a1 & 0x200) == 0;
  a1[1] = 0;
  return result;
}

void _dispatch_mach_send_and_wait_for_reply_cold_3(unsigned int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Reply received on unexpected port";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_mach_send_and_wait_for_reply_cold_4(unsigned int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Overlarge message";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_mach_send_and_wait_for_reply_cold_5(int a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected error from mach_msg_receive";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_mach_send_and_wait_for_reply_cold_6(unsigned int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid reply port";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_mach_install_cold_1(unsigned int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Channel never connected";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_mach_msg_create_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Message size too large";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_mach_msg_create_cold_2(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Empty message";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_mach_msg_get_filter_policy_id_cold_1(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Messsage should be non-NULL";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_mach_msg_get_filter_policy_id_cold_2(unsigned int a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Trailer format is invalid";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_mach_msg_get_filter_policy_id_cold_3(unsigned int a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Trailer doesn't contain filter policy id";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_mach_msg_get_filter_policy_id_cold_4()
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Filter id should be non-NULL";
  qword_6D1F0 = 0;
  __break(1u);
}

void dispatch_mach_mig_demux_cold_3(int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_mig_demux: mach_msg(MACH_SEND_MSG) failed";
  qword_6D1F0 = a1;
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
  *result = &unk_64708;
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
      qword_6D1C0 = "BUG IN LIBDISPATCH: Unregistration failed";
      __break(1u);
    }
  }
}

void _dispatch_sync_ipc_handoff_begin_cold_1(int a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_unote_dispose_defer_cold_1(unsigned __int16 a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Disposing a direct unote while deferring an event";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_free_deferred_unotes_cold_1(unsigned __int16 a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_event_loop_leave_immediate_cold_1(int *a1)
{
  v1 = *a1;
  qword_6D1C0 = "BUG IN LIBDISPATCH: Broken priority";
  qword_6D1F0 = v1;
  __break(1u);
}

void _dispatch_event_loop_leave_immediate_cold_2(unsigned int *a1, unsigned __int16 a2)
{
  v2 = (a2 << 16) | (*a1 << 32) | 2;
  qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_6D1F0 = v2;
  __break(1u);
}

void _dispatch_event_loop_leave_immediate_cold_3(uint64_t *a1)
{
  v1 = *a1;
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
  qword_6D1F0 = v1;
  __break(1u);
}

void _dispatch_event_loop_leave_deferred_cold_1(unsigned int a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_event_loop_cancel_waiter_cold_2(uint64_t a1, unsigned __int16 a2)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_6D1F0 = (a2 << 16) | (a1 << 32) | 2;
  __break(1u);
}

void _dispatch_event_loop_cancel_waiter_cold_3(uint64_t a1)
{
  v1 = *(a1 + 64);
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
  qword_6D1F0 = v1;
  __break(1u);
}

void _dispatch_event_loop_wake_owner_cold_1(uint64_t a1)
{
  v1 = *(a1 + 12);
  qword_6D1C0 = "BUG IN LIBDISPATCH: Broken priority";
  qword_6D1F0 = v1;
  __break(1u);
}

void _dispatch_event_loop_wake_owner_cold_2(uint64_t a1, unsigned __int16 a2)
{
  v2 = (a2 << 16) | (*(a1 + 24) << 32) | 2;
  qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_6D1F0 = v2;
  __break(1u);
}

void _dispatch_event_loop_wait_for_ownership_cold_4(uint64_t a1, unsigned __int16 a2)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_6D1F0 = (a1 << 32) | (a2 << 16) | 2;
  __break(1u);
}

id _dispatch_event_loop_end_ownership_cold_6(id result, void *a2)
{
  if ((result & 0x80000000) == 0)
  {
    return _os_object_dispose(a2, a2);
  }

  vars0 = v2;
  vars8 = v3;
  qword_6D1C0 = "API MISUSE: Over-release of an object";
  __break(1u);
  return result;
}

void _dispatch_mach_host_port_init_cold_3(int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Could not get unprivileged host port";
  qword_6D1F0 = a1;
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
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Received message with MACH_PORT_NULL msgh_local_port";
  qword_6D1F0 = v1;
  __break(1u);
}

void _dispatch_kevent_mach_msg_recv_cold_5(unsigned int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Overlarge message received";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_kq_init_cold_2()
{
  v0 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (v0 != 4)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Failed to initalize workqueue kevent";
    qword_6D1F0 = v0;
    __break(1u);
  }
}

uint64_t _dispatch_kevent_mach_notify_resume_cold_3(unsigned int a1, mach_port_name_t *a2, _DWORD *a3)
{
  _dispatch_bug(3048, a1);
  result = mach_port_deallocate(mach_task_self_, *a2);
  *a3 = result;
  if (result == -301)
  {
    qword_6D1C0 = "MIG_REPLY_MISMATCH";
    qword_6D1F0 = -301;
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

size_t voucher_kvoucher_debug()
{
  v1 = off_546A8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1;
  bzero(recipes, 0x2000uLL);
  *object_addr = 0;
  *recipesCnt = 0x2000;
  if (mach_port_kernel_object(v14, v13, object_addr, &object_addr[1]) || object_addr[0] != 37)
  {
    if (v5)
    {
      OUTLINED_FUNCTION_7_0();
      snprintf((v11 + v7), v3, "%s", v106);
      OUTLINED_FUNCTION_6();
      if (v97 < 0)
      {
        v96 = 0;
      }

      v7 += v96;
    }

    if (v9 >= v7)
    {
      v98 = v9 - v7;
    }

    else
    {
      v98 = 0;
    }

    v99 = snprintf((v11 + v7), v98, "Invalid voucher: 0x%x\n");
    goto LABEL_116;
  }

  v15 = mach_voucher_debug_info(v14, v13, recipes, recipesCnt);
  if (v15)
  {
    v16 = v15;
    if (v15 != 46)
    {
      if (v5)
      {
        OUTLINED_FUNCTION_7_0();
        snprintf((v11 + v7), v3, "%s", v106);
        OUTLINED_FUNCTION_6();
        if (v101 < 0)
        {
          v100 = 0;
        }

        v7 += v100;
      }

      if (v9 >= v7)
      {
        v98 = v9 - v7;
      }

      else
      {
        v98 = 0;
      }

      mach_error_string(v16);
      v99 = snprintf((v11 + v7), v98, "Voucher: 0x%x Failed to get contents %s\n");
      goto LABEL_116;
    }
  }

  if (!*recipesCnt)
  {
    if (v5)
    {
      OUTLINED_FUNCTION_7_0();
      snprintf((v11 + v7), v3, "%s", v106);
      OUTLINED_FUNCTION_6();
      if (v103 < 0)
      {
        v102 = 0;
      }

      v7 += v102;
    }

    if (v9 >= v7)
    {
      v98 = v9 - v7;
    }

    else
    {
      v98 = 0;
    }

    v99 = snprintf((v11 + v7), v98, "Voucher: 0x%x has no contents\n");
LABEL_116:
    v104 = v99;
    if (v98 < v99)
    {
      v104 = v98;
    }

    if (v99 < 0)
    {
      v104 = 0;
    }

    return v104 + v7;
  }

  if (v5)
  {
    if (v9 >= v7)
    {
      v17 = v9 - v7;
    }

    else
    {
      v17 = 0;
    }

    v18 = snprintf((v11 + v7), v17, "%s", v5);
    v19 = v18;
    if (v17 < v18)
    {
      v19 = v17;
    }

    if (v18 < 0)
    {
      v19 = 0;
    }

    v7 += v19;
  }

  if (v9 >= v7)
  {
    v20 = v9 - v7;
  }

  else
  {
    v20 = 0;
  }

  v21 = snprintf((v11 + v7), v20, "Voucher: 0x%x\n", object_addr[1]);
  v22 = v21;
  if (v20 < v21)
  {
    v22 = v20;
  }

  if (v21 < 0)
  {
    v22 = 0;
  }

  v23 = v22 + v7;
  if (*recipesCnt)
  {
    v111 = v3;
    v112 = v5;
    v24 = 0;
    while (1)
    {
      v25 = &recipes[v24];
      if (*&recipes[v24])
      {
        break;
      }

LABEL_90:
      v24 = (v24 + *(v25 + 3) + 16);
      if (*recipesCnt <= v24)
      {
        return v23;
      }
    }

    if (v5)
    {
      OUTLINED_FUNCTION_4_0();
      snprintf((v11 + v23), v0, "%s", v5);
      OUTLINED_FUNCTION_1_4();
      if (v27 < 0)
      {
        v26 = 0;
      }

      v23 += v26;
      v28 = *v25;
    }

    v29 = OUTLINED_FUNCTION_3_2();
    snprintf(v29, v30, "Key: %u, ", v107);
    OUTLINED_FUNCTION_1_4();
    if (v32 < 0)
    {
      v31 = 0;
    }

    v33 = v31 + v23;
    v34 = *(v25 + 1);
    v35 = OUTLINED_FUNCTION_8_0();
    snprintf(v35, v36, "Command: %u, ", v108);
    OUTLINED_FUNCTION_2_2();
    if (v38 < 0)
    {
      v37 = 0;
    }

    v39 = v37 + v33;
    v40 = *(v25 + 2);
    v41 = OUTLINED_FUNCTION_8_0();
    snprintf(v41, v42, "Previous voucher: 0x%x, ", v109);
    OUTLINED_FUNCTION_2_2();
    if (v44 < 0)
    {
      v43 = 0;
    }

    v45 = v43 + v39;
    v46 = *(v25 + 3);
    v47 = OUTLINED_FUNCTION_8_0();
    snprintf(v47, v48, "Content size: %u\n", v110);
    OUTLINED_FUNCTION_2_2();
    if (v50 < 0)
    {
      v49 = 0;
    }

    v0 = v49 + v45;
    if (*v25 == 3)
    {
      if (v5)
      {
        v57 = OUTLINED_FUNCTION_9_0();
        snprintf(v57, v58, "%s", v107);
        OUTLINED_FUNCTION_2_2();
        if (v60 < 0)
        {
          v59 = 0;
        }

        v0 += v59;
      }

      v61 = OUTLINED_FUNCTION_5_0();
      snprintf(v61, v62, "RESOURCE ACCOUNTING INFO: %s");
      goto LABEL_49;
    }

    if (*v25 == 2)
    {
      if (v5)
      {
        v51 = OUTLINED_FUNCTION_9_0();
        snprintf(v51, v52, "%s", v107);
        OUTLINED_FUNCTION_2_2();
        if (v54 < 0)
        {
          v53 = 0;
        }

        v0 += v53;
      }

      v55 = OUTLINED_FUNCTION_5_0();
      snprintf(v55, v56, "IMPORTANCE INFO: %s");
LABEL_49:
      OUTLINED_FUNCTION_2_2();
      if (v64 < 0)
      {
        v63 = 0;
      }

      v23 = v63 + v0;
      goto LABEL_86;
    }

    v65 = v5;
    if (*(v25 + 3) >= v111)
    {
      v66 = v111;
    }

    else
    {
      v66 = *(v25 + 3);
    }

    if (v9 >= v0)
    {
      v67 = v9 - v0;
    }

    else
    {
      v67 = 0;
    }

    snprintf((v11 + v0), v67, "%s%s:\n", v65, "Recipe Contents");
    OUTLINED_FUNCTION_2_2();
    if (v69 < 0)
    {
      v68 = 0;
    }

    v23 = v68 + v0;
    if (v66)
    {
      v70 = 0;
      v71 = v25 + 16;
      do
      {
        v72 = v70 & 0xF;
        if ((v70 & 0xF) == 0)
        {
          if (v70)
          {
            OUTLINED_FUNCTION_4_0();
            v73 = OUTLINED_FUNCTION_3_2();
            snprintf(v73, v74, "  %s\n", v107);
            OUTLINED_FUNCTION_1_4();
            if (v76 < 0)
            {
              v75 = 0;
            }

            v23 += v75;
          }

          OUTLINED_FUNCTION_4_0();
          snprintf((v11 + v23), v0, "%s  %04lx ", v112, v70);
          OUTLINED_FUNCTION_1_4();
          if (v78 < 0)
          {
            v77 = 0;
          }

          v23 += v77;
        }

        OUTLINED_FUNCTION_4_0();
        v79 = v71[v70];
        v80 = OUTLINED_FUNCTION_3_2();
        snprintf(v80, v81, " %02x", v107);
        OUTLINED_FUNCTION_1_4();
        if (v83 < 0)
        {
          v82 = 0;
        }

        v23 += v82;
        v84 = v71[v70];
        if ((v84 - 127) < 0xFFFFFFA1)
        {
          LOBYTE(v84) = 46;
        }

        recipes[v72 + 0x2000] = v84;
        ++v70;
      }

      while (v66 != v70);
      recipes[v72 + 8193] = 0;
      if ((v66 & 0xF) == 0)
      {
        v5 = v112;
LABEL_86:
        if (*(v11 + v23 - 1) != 10)
        {
          OUTLINED_FUNCTION_4_0();
          snprintf(v93, v0, "\n");
          OUTLINED_FUNCTION_1_4();
          if (v95 < 0)
          {
            v94 = 0;
          }

          v23 += v94;
        }

        goto LABEL_90;
      }

      v85 = v66 + 1;
      do
      {
        OUTLINED_FUNCTION_4_0();
        snprintf((v11 + v23), v0, "   ");
        OUTLINED_FUNCTION_1_4();
        if (v87 < 0)
        {
          v86 = 0;
        }

        v23 += v86;
      }

      while ((v85++ & 0xF) != 0);
      OUTLINED_FUNCTION_4_0();
      v89 = OUTLINED_FUNCTION_3_2();
      snprintf(v89, v90, "  %s\n", v107);
      OUTLINED_FUNCTION_1_4();
      if (v92 < 0)
      {
        v91 = 0;
      }

      v23 += v91;
    }

    v5 = v112;
    goto LABEL_86;
  }

  return v23;
}

void _voucher_task_mach_voucher_init_cold_1(int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Could not create task mach voucher";
  qword_6D1F0 = a1;
  __break(1u);
}

void _voucher_insert_cold_3(uint64_t a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: base voucher has non-zero activity value";
  qword_6D1F0 = a1;
  __break(1u);
}

void _voucher_insert_cold_4(uint64_t a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: base voucher has nested base voucher";
  qword_6D1F0 = a1;
  __break(1u);
}

void _voucher_create_with_mach_msgv_cold_1(unsigned int a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Invalid msg aux data size.";
  qword_6D1F0 = a1;
  __break(1u);
}

void voucher_decrement_importance_count4CF_cold_2(uint64_t a1, int a2)
{
  _dispatch_bug(766, a1);
  if (a2 == 5)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Voucher importance count underflow";
    qword_6D1F0 = a1;
    __break(1u);
  }
}

id _voucher_xref_dispose_cold_3(id result, void *a2)
{
  if (result == 1)
  {
    return _os_object_dispose(a2, a2);
  }

  qword_6D1C0 = "API MISUSE: Over-release of an object";
  __break(1u);
  return result;
}

void _voucher_activity_debug_channel_init_cold_2(int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Couldn't get debug control port";
  qword_6D1F0 = a1;
  __break(1u);
}

void _voucher_process_can_use_arbitrary_personas_init_cold_2(int a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: mach_voucher_attr_command(BANK_PERSONA_ADOPT_ANY) failed";
  qword_6D1F0 = a1;
  __break(1u);
}

void voucher_activity_initialize_4libtrace_cold_1()
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: voucher_activity_initialize_4libtrace called twice";
  qword_6D1F0 = _voucher_libtrace_hooks;
  __break(1u);
}

void voucher_activity_initialize_4libtrace_cold_2(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: unsupported vah_version";
  qword_6D1F0 = a1;
  __break(1u);
}

void voucher_activity_create_with_data_2_cold_2(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Absurd publen";
  qword_6D1F0 = a1;
  __break(1u);
}

void voucher_activity_flush_cold_2(uint64_t a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Allocation should always fail";
  qword_6D1F0 = a1;
  __break(1u);
}

void firehose_buffer_create_cold_1()
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Invalid values for MADVISE_CHUNK_COUNT / CHUNK_SIZE";
  qword_6D1F0 = 0x4000;
  __break(1u);
}

void firehose_buffer_create_cold_3(int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Unable to allocate mach port";
  qword_6D1F0 = a1;
  __break(1u);
}

void firehose_client_reconnect_cold_3(int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Unable to make memory port";
  qword_6D1F0 = a1;
  __break(1u);
}

void firehose_client_reconnect_cold_10(int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Unable to register with logd";
  qword_6D1F0 = a1;
  __break(1u);
}

void firehose_client_reconnect_cold_12(uint64_t a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid size for the firehose buffer";
  qword_6D1F0 = a1;
  __break(1u);
}

uint64_t firehose_buffer_tracepoint_reserve_slow_cold_1(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v10 = (a3 + (*(a1 + 12) << 7) + 640);
  v11 = *v10;
  if (((*v10 >> 40) & 0x40) != 0)
  {
    v13 = v11 & 0xFFFF00FFFFFFFFFDLL | ((BYTE5(v11) | 0xC0u) << 40);
    for (i = *v10; ; v13 = i & 0xFFFF00FFFFFFFFFDLL | ((BYTE5(i) | 0xC0u) << 40))
    {
      atomic_compare_exchange_strong_explicit(v10, &i, v13, memory_order_relaxed, memory_order_relaxed);
      if (i == v11)
      {
        break;
      }

      v11 = i;
    }
  }

  else
  {
    v10[1] = mach_continuous_time();
    v11 = *v10;
    v12 = *v10;
    atomic_compare_exchange_strong_explicit(v10, &v12, *v10 & 0xFFFF00FFFFFFFFFDLL | (((WORD2(*v10) >> 8) | 0xC0u) << 40), memory_order_release, memory_order_relaxed);
    while (v12 != v11)
    {
      v11 = v12;
      atomic_compare_exchange_strong_explicit(v10, &v12, v12 & 0xFFFF00FFFFFFFFFDLL | ((BYTE5(v12) | 0xC0u) << 40), memory_order_release, memory_order_relaxed);
    }
  }

  v15 = v10[1];
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if ((v11 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    _dispatch_gate_broadcast_slow(v10, v11);
    goto LABEL_10;
  }

  if ((v11 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  *(a1 + 13) = a2;
  result = firehose_buffer_tracepoint_reserve_wait_for_chunks_from_logd(a3, a1, a4);
  *a5 = result;
  return result;
}

void firehose_drain_notifications_once_cold_1(int a1)
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: firehose_drain_notifications_once() failed";
  qword_6D1F0 = a1;
  __break(1u);
}

void firehose_drain_notifications_once_cold_2(uint64_t a1)
{
  v1 = *(a1 + 20);
  qword_6D1C0 = "BUG IN LIBDISPATCH: firehose_mig_server doesn't handle replies";
  qword_6D1F0 = v1;
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
  v5 = "";
  if (v3)
  {
    v6 = v3[9];
    if (!v6)
    {
      v6 = "";
    }
  }

  else
  {
    v6 = "";
  }

  v7 = "closed, ";
  if ((v4 & 1) == 0)
  {
    v7 = "";
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

  v8 = "";
  if (v4 && v4[9])
  {
    v8 = v4[9];
  }

  v9 = "";
  if (v5)
  {
    v10 = v5[9];
    if (!v10)
    {
      v10 = "";
    }
  }

  else
  {
    v10 = "";
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

id __dispatch_io_create_block_invoke_cold_2(uint64_t *a1)
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
        qword_6D1C0 = "API MISUSE: Over-release of an object";
        __break(1u);
      }
    }
  }

  return result;
}

id __dispatch_io_create_with_path_block_invoke_cold_2(id result, void *a2)
{
  if (result == 1)
  {
    return _os_object_dispose(a2, a2);
  }

  qword_6D1C0 = "API MISUSE: Over-release of an object";
  __break(1u);
  return result;
}

id __dispatch_io_create_with_path_block_invoke_cold_3(uint64_t *a1)
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
        qword_6D1C0 = "API MISUSE: Over-release of an object";
        __break(1u);
      }
    }
  }

  return result;
}

id __dispatch_io_create_with_io_block_invoke_cold_2(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_7_1(a1);
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
    qword_6D1C0 = "API MISUSE: Over-release of an object";
    __break(1u);
LABEL_14:
    qword_6D1C0 = "API MISUSE: Over-release of an object";
    __break(1u);
    return result;
  }

  return _os_object_dispose(result, v10);
}

id __dispatch_io_create_with_io_block_invoke_2_cold_5(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_7_1(a1);
  if (!v4)
  {
    result = OUTLINED_FUNCTION_5_1(v3);
    if (v7 ^ v8 | v4)
    {
      if (!v4)
      {
        qword_6D1C0 = "API MISUSE: Over-release of an object";
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
    qword_6D1C0 = "API MISUSE: Over-release of an object";
    __break(1u);
    return result;
  }

  return _os_object_dispose(result, v10);
}

void dispatch_io_set_high_water_cold_2(uint64_t a1, void ***a2)
{
  v2 = OUTLINED_FUNCTION_0_5(a1, a2);
  OUTLINED_FUNCTION_6_0(COERCE_DOUBLE(0x40000000), v2, v3);
  OUTLINED_FUNCTION_8_1(v4, v5, v6, v7);
}

void dispatch_io_set_low_water_cold_2(uint64_t a1, void ***a2)
{
  v2 = OUTLINED_FUNCTION_0_5(a1, a2);
  OUTLINED_FUNCTION_6_0(COERCE_DOUBLE(0x40000000), v2, v3);
  OUTLINED_FUNCTION_8_1(v4, v5, v6, v7);
}

void dispatch_io_set_interval_cold_2(uint64_t a1, void ***a2)
{
  v2 = OUTLINED_FUNCTION_0_5(a1, a2);
  OUTLINED_FUNCTION_6_0(COERCE_DOUBLE(0x40000000), v2, v3);
  v4[2] = __dispatch_io_set_interval_block_invoke;
  v4[3] = &__block_descriptor_tmp_13;
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  dispatch_channel_async(v8, v4);
}

void _dispatch_io_set_target_queue_cold_2(uint64_t a1, void ***a2)
{
  if (*(a1 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed) > 0)
  {
    v2 = OUTLINED_FUNCTION_0_5(a1, a2);
    OUTLINED_FUNCTION_6_0(COERCE_DOUBLE(0x40000000), v2, v3);
    OUTLINED_FUNCTION_8_1(v4, v5, v6, v7);
  }

  else
  {
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }
}

void dispatch_io_close_cold_2(uint64_t a1, void ***a2)
{
  v2 = OUTLINED_FUNCTION_0_5(a1, a2);
  OUTLINED_FUNCTION_6_0(COERCE_DOUBLE(0x40000000), v2, v3);
  v4[2] = ___dispatch_io_stop_block_invoke;
  v4[3] = &__block_descriptor_tmp_54;
  v4[4] = v5;
  dispatch_channel_async(v6, v4);
}

void dispatch_io_close_cold_4(uint64_t a1, void ***a2)
{
  v2 = OUTLINED_FUNCTION_0_5(a1, a2);
  OUTLINED_FUNCTION_6_0(COERCE_DOUBLE(0x40000000), v2, v3);
  v4[2] = __dispatch_io_close_block_invoke;
  v4[3] = &__block_descriptor_tmp_17;
  v4[4] = v5;
  dispatch_channel_async(v6, v4);
}

void dispatch_io_barrier_cold_2(uint64_t a1, void ***a2)
{
  v2 = OUTLINED_FUNCTION_0_5(a1, a2);
  OUTLINED_FUNCTION_6_0(COERCE_DOUBLE(0x40000000), v2, v3);
  v4[2] = __dispatch_io_barrier_block_invoke;
  v4[3] = &unk_50588;
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

void ___dispatch_io_stop_block_invoke_2_cold_2(void ***block, void **a2)
{
  v3 = _dispatch_io_fds_lockq;
  *block = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___dispatch_io_stop_block_invoke_3;
  block[3] = &__block_descriptor_tmp_52;
  block[4] = a2;
  dispatch_channel_async(v3, block);
}

void _dispatch_fd_entry_cleanup_operations_cold_2(uint64_t a1, uint64_t a2, void ***a3, void **a4)
{
  dispatch_suspend(*(a1 + 64));
  v8 = *(*a2 + 72);
  *a3 = _NSConcreteStackBlock;
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
    v7[0] = _NSConcreteStackBlock;
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
  v8 = qword_6D148;
  v9 = _dispatch_object_alloc(OS_dispatch_disk, 8 * qword_6D148 + 136);
  *a4 = v9;
  *(v9 + 16) = -1985229329;
  *(v9 + 12) = 0;
  *(v9 + 128) = v8;
  *(v9 + 24) = &off_71340;
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
    OUTLINED_FUNCTION_6();
    if (v12 < 0)
    {
      v11 = 0;
    }

    v13 = v11 + v8;
    if (*(a1 + 32))
    {
      snprintf(&__str[v13], __size - v13, ", flatbuf = %p ", *(a1 + 32));
      OUTLINED_FUNCTION_6();
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
    OUTLINED_FUNCTION_6();
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
  if (v7 == (&dword_0 + 1))
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
  qword_6D1C0 = "BUG IN LIBDISPATCH: dispatch_data_create_subrange out of bounds";
  qword_6D1F0 = a1;
  __break(1u);
}

void dispatch_data_copy_region_cold_1(uint64_t a1, uint64_t a2)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: dispatch_data_copy_region out of bounds";
  qword_6D1F0 = a1 + a2;
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
        OUTLINED_FUNCTION_0_6();
        if (!v8 & v7)
        {
          v5 = 1;
          a1 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_1_5();
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
    OUTLINED_FUNCTION_0_6();
    if (!v1 & v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
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
  return __udivti3() - qword_68050;
}

void _dispatch_introspection_init_cold_1()
{
  OUTLINED_FUNCTION_29(off_70E08, v2, v3);
  if ((dword_70E14 & 0x4000000) != 0)
  {
    OUTLINED_FUNCTION_24();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_25();
  if (v0)
  {
LABEL_5:
    OUTLINED_FUNCTION_1_6();
  }

  OUTLINED_FUNCTION_3_5();
  if (v1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  if (_dispatch_main_q)
  {
    kdebug_trace();
  }
}

void _dispatch_introspection_init_cold_2()
{
  OUTLINED_FUNCTION_29(off_70E88, v2, v3);
  if ((dword_70E94 & 0x4000000) != 0)
  {
    OUTLINED_FUNCTION_24();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_25();
  if (v0)
  {
LABEL_5:
    OUTLINED_FUNCTION_1_6();
  }

  OUTLINED_FUNCTION_3_5();
  if (v1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  if (_dispatch_mgr_q)
  {
    kdebug_trace();
  }
}

void _dispatch_introspection_continuation_get_info_cold_3(uint64_t a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Unknown dc vtable type";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_introspection_order_record_cold_1(_DWORD *a1, atomic_uint *a2, void *a3)
{
  v4 = *a1 & 0xFFFFFFFC;
  v5 = atomic_exchange_explicit(a2, 0, memory_order_release);
  if (v5 != v4)
  {
    _dispatch_unfair_lock_unlock_slow(a2, v5);
  }

  free(a3);
}

void _dispatch_introspection_target_queue_changed_cold_1(void *a1)
{
  v1 = a1[9];
  if (!v1)
  {
    v1 = "";
  }

  _dispatch_log("BUG IN CLIENT OF LIBDISPATCH: queue inversion debugging cannot be used with code that changes the target of a queue already targeted by other dispatch objects\nqueue %p[%s] was already targeted by other dispatch objects", a1, v1);
  byte_6D338 = 0;
}

void _dispatch_introspection_target_queue_changed_cold_2(void *a1, uint64_t *a2)
{
  v3 = a1[9];
  if (!v3)
  {
    v3 = "";
  }

  _dispatch_log("BUG IN CLIENT OF LIBDISPATCH: queue inversion debugging expects queues to not participate in dispatch_sync() before their setup is complete\nforgetting that queue 0x%p[%s] participated as %s of a dispatch_sync", a1, v3, "both an initiator and a recipient");
  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&dword_6D32C, &v4, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    _dispatch_unfair_lock_lock_slow(&dword_6D32C);
  }

  _dispatch_introspection_queue_order_dispose(*a2);
  v6 = *(StatusReg + 24) & 0xFFFFFFFC;
  v7 = atomic_exchange_explicit(&dword_6D32C, 0, memory_order_release);
  if (v7 != v6)
  {

    _dispatch_unfair_lock_unlock_slow(&dword_6D32C, v7);
  }
}