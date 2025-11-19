void thread_chkstk_darwin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = v10;
  v19 = v11;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (&a9 < *(StatusReg - 48))
  {
    v13 = *(StatusReg - 40);
    if (&a9 > v13)
    {
      if (&a9 >= v9 && &a9 - v9 >= v13)
      {
        return;
      }

      v14 = *(v13 - 8);
    }
  }

  v15 = &a9;
  if (v9 >= 0x1000)
  {
    do
    {
      v15 -= 512;
      v16 = *v15;
      v9 -= 4096;
    }

    while (v9 > 0x1000);
  }

  v17 = *(v15 - v9);
}

int pthread_mutex_lock(pthread_mutex_t *a1)
{
  if (a1->__sig == 1297437786)
  {
    v1 = *&a1->__opaque[4];
    if ((v1 & 0x1C0) == 0x40)
    {

      return _pthread_mutex_fairshare_lock(a1, 0);
    }

    else if ((v1 & 0x4000) != 0)
    {
      v9 = 0;
      v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC;
      atomic_compare_exchange_strong_explicit(&a1->__opaque[16], &v9, v8, memory_order_acquire, memory_order_acquire);
      if (v9)
      {
        _pthread_mutex_ulock_lock_slow(a1, v8, v9);
      }

      return 0;
    }

    else
    {
      v2 = (&a1->__opaque[31] & 0xFFFFFFFFFFFFFFF8);
      v3 = *v2;
      if ((*v2 & 2) == 0)
      {
        v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
        v5 = v3;
        while ((v5 & 2) == 0)
        {
          v6 = v3 & 0xFFFFFFFF00000000 | v5;
          v3 = v6;
          atomic_compare_exchange_strong_explicit(v2, &v3, v6 | 2, memory_order_acquire, memory_order_acquire);
          v5 = v3;
          if (v3 == v6)
          {
            *(&a1->__opaque[23] & 0xFFFFFFFFFFFFFFF8) = v4;
            return 0;
          }
        }
      }

      return _pthread_mutex_firstfit_lock_slow(a1, 0);
    }
  }

  else
  {

    return _pthread_mutex_lock_init_slow(a1, 0);
  }
}

int pthread_mutex_unlock(pthread_mutex_t *a1)
{
  if (a1->__sig == 1297437786)
  {
    v1 = *&a1->__opaque[4];
    if ((v1 & 0x1C0) == 0x40)
    {

      return _pthread_mutex_fairshare_unlock(a1);
    }

    else if ((v1 & 0x4000) != 0)
    {
      _pthread_mutex_ulock_unlock(a1);
      return 0;
    }

    else
    {
      v2 = (&a1->__opaque[31] & 0xFFFFFFFFFFFFFFF8);
      v3 = *v2;
      *(&a1->__opaque[23] & 0xFFFFFFFFFFFFFFF8) = 0;
      while (((HIDWORD(v3) ^ v3) & 0xFFFFFF00) == 0)
      {
        v4 = v3;
        atomic_compare_exchange_strong_explicit(v2, &v4, v3 & 0xFFFFFFFFFFFFFFFDLL, memory_order_release, memory_order_relaxed);
        v5 = v4 == v3;
        v3 = v4;
        if (v5)
        {
          return 0;
        }
      }

      return _pthread_mutex_firstfit_unlock_slow(a1);
    }
  }

  else
  {

    return _pthread_mutex_unlock_init_slow(a1);
  }
}

uint64_t _pthread_mutex_lock_init_slow(uint64_t a1, int a2)
{
  if ((*a1 & 0xFFFFFFFDLL) == 0x4D555458 || (result = _pthread_mutex_check_init_slow(a1), !result))
  {
    v5 = *(a1 + 12);
    if ((v5 & 0x1C0) == 0x40)
    {

      return _pthread_mutex_fairshare_lock_slow(a1, a2);
    }

    else if ((v5 & 0x4000) != 0)
    {

      return _pthread_mutex_ulock_lock(a1, a2);
    }

    else
    {

      return _pthread_mutex_firstfit_lock_slow(a1, a2);
    }
  }

  return result;
}

uint64_t _pthread_mutex_firstfit_lock_slow(uint64_t a1, int a2)
{
  v3 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  v7 = *(a1 + 12);
  if ((v7 & 0xC) != 0 && *v5 == v6)
  {
    if ((*(a1 + 12) & 0xC) == 8)
    {
      if (v7 <= 0xFFFEFFFF)
      {
        result = 0;
        v12 = (v7 & 0xFFFFFFFB) + 0x10000;
LABEL_26:
        *(a1 + 12) = v12;
      }

      else
      {
        return 35;
      }
    }

    else if (a2)
    {
      return 16;
    }

    else
    {
      return 11;
    }

    return result;
  }

  while (1)
  {
    v10 = *v5;
    if (a2 && (v4 & 2) != 0)
    {
      v9 = v4;
      atomic_compare_exchange_strong_explicit(v3, &v9, v4, memory_order_acquire, memory_order_acquire);
      if (v9 == v4)
      {
        if (a2)
        {
          return 16;
        }

        goto LABEL_17;
      }

      goto LABEL_10;
    }

    if ((v4 & 2) == 0)
    {
      break;
    }

    v9 = v4;
    atomic_compare_exchange_strong_explicit(v3, &v9, (v4 + 256) | v4 & 0xFFFFFFFF00000000, memory_order_acquire, memory_order_acquire);
    if (v9 == v4)
    {
      if (a2)
      {
        return 16;
      }

LABEL_17:
      _pthread_mutex_firstfit_lock_wait(a1);
      goto LABEL_19;
    }

LABEL_10:
    v4 = v9;
  }

  v9 = v4;
  atomic_compare_exchange_strong_explicit(v3, &v9, v4 | 2, memory_order_acquire, memory_order_acquire);
  if (v9 != v4)
  {
    goto LABEL_10;
  }

  *v5 = v6;
LABEL_19:
  v11 = *(a1 + 12);
  if ((v11 & 0xC) == 8)
  {
    result = 0;
    v12 = v11 & 0xFFFB | 0x10000;
    goto LABEL_26;
  }

  return 0;
}

uint64_t _pthread_mutex_check_init_slow(uint64_t a1)
{
  if ((*a1 & 0xFFFFFFF0) != 0x32AAABA0)
  {
    if ((*a1 & 0xFFFFFFFDLL) == 0x4D555458)
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  v2 = 0;
  v3 = (a1 + 8);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((a1 + 8), &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((*a1 & 0xFFFFFFF0) == 0x32AAABA0)
  {
    v5 = *a1 & 0xF;
    *(a1 + 12) = 0x2000;
    v6 = 22;
    if (v5 > 2)
    {
      if (v5 == 3 || v5 == 7)
      {
        *(a1 + 16) = 0;
        if (v5 == 3)
        {
          *(a1 + 18) = 0;
          LOWORD(v8) = 8352;
          goto LABEL_25;
        }

        v7 = 8224;
LABEL_22:
        v9 = 1297437784;
        v10 = (__pthread_mutex_default_opt_policy & 7) << 6;
        v8 = v7 | v10;
        *(a1 + 18) = 0;
        if ((v7 & 0xC) != 0)
        {
          goto LABEL_27;
        }

        if (v10 == 64)
        {
          v9 = 1297437786;
          goto LABEL_27;
        }

        if (v10 != 128)
        {
LABEL_27:
          *(a1 + 12) = v8;
          if ((v8 & 0x4000) != 0)
          {
            *(a1 + 32) = -1;
            *(a1 + 40) = -1;
            *(a1 + 24) = -1;
            *(a1 + 24) = 0;
          }

          else
          {
            v11 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
            if ((a1 + 24) != v11)
            {
              *(a1 + 12) = v8 | 0x800;
              *(a1 + 24) = -1;
            }

            *(a1 + 40) = -1;
            *v11 = 0;
            *((a1 + 39) & 0xFFFFFFFFFFFFFFF8) = 0;
          }

          v6 = 0;
          *(a1 + 48) = ~a1;
          *(a1 + 56) = v9;
          *(a1 + 60) = v9;
          *(a1 + 20) = v9;
          *(a1 + 4) = 0;
          atomic_store(v9, a1);
          goto LABEL_33;
        }

LABEL_25:
        v8 = v8 & 0x3EA3 | (__pthread_mutex_use_ulock << 14);
        v9 = 1297437786;
        goto LABEL_27;
      }
    }

    else
    {
      if (v5 == 1)
      {
        v7 = 8228;
        goto LABEL_21;
      }

      if (v5 == 2)
      {
        v7 = 8232;
LABEL_21:
        *(a1 + 16) = 0;
        goto LABEL_22;
      }
    }
  }

  else if ((*a1 & 0xFFFFFFFDLL) == 0x4D555458)
  {
    v6 = 0;
  }

  else
  {
    v6 = 22;
  }

LABEL_33:
  v12 = *(StatusReg + 24);
  v13 = v12;
  atomic_compare_exchange_strong_explicit(v3, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != v12)
  {
    os_unfair_lock_unlock(v3);
  }

  return v6;
}

uint64_t _pthread_mutex_unlock_init_slow(uint64_t a1)
{
  if ((*a1 & 0xFFFFFFFDLL) == 0x4D555458 || (result = _pthread_mutex_check_init_slow(a1), !result))
  {
    v3 = *(a1 + 12);
    if ((v3 & 0x1C0) == 0x40)
    {

      return _pthread_mutex_fairshare_unlock_slow(a1);
    }

    else if ((v3 & 0x4000) != 0)
    {
      _pthread_mutex_ulock_unlock(a1);
      return 0;
    }

    else
    {

      return _pthread_mutex_firstfit_unlock_slow(a1);
    }
  }

  return result;
}

uint64_t _pthread_mutex_firstfit_unlock_slow(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  v3 = *v2;
  v4 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  if ((v1 & 0xC) == 0)
  {
    goto LABEL_5;
  }

  if (*v4 == *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8))
  {
    if ((v1 & 0xC) == 8)
    {
      *(a1 + 12) = v1 & 0xFFFB | ((HIWORD(v1) - 1) << 16);
      if (HIWORD(v1) != 1)
      {
        return 0;
      }
    }

    do
    {
LABEL_5:
      v5 = *v4;
      if (*v4)
      {
        v6 = *v4;
        atomic_compare_exchange_strong_explicit(v4, &v6, 0, memory_order_relaxed, memory_order_relaxed);
        if (v6 != v5)
        {
          _pthread_mutex_corruption_abort();
        }
      }

      v7 = (v3 & 0xFFFFFF00) - (HIDWORD(v3) & 0xFFFFFF00);
      v8 = v3 + 0x10000000000;
      if (v7 <= 0)
      {
        v8 = v3;
      }

      v9 = v3;
      atomic_compare_exchange_strong_explicit(v2, &v9, v8 & 0xFFFFFFFF00000000 | v3 & 0xFFFFFFFD, memory_order_release, memory_order_relaxed);
      v10 = v9 == v3;
      v3 = v9;
    }

    while (!v10);
    if ((((v7 > 0) << 12) & 0x1000) != 0)
    {
      _pthread_mutex_firstfit_wake();
    }

    return 0;
  }

  return 1;
}

uint64_t _pthread_set_properties_self(int a1, int a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if ((_pthread_ptr_munge_token ^ *(StatusReg - 224)) != StatusReg - 224)
  {
    v6 = _pthread_set_properties_self_cold_1();
    return pthread_getschedparam(v6, v7, v8);
  }

  v4 = a1;
  if ((a1 & 0x2D) != 0 && (*(StatusReg - 60) & 1) != 0 && (a1 & 0xFFFFFFD2) == 0)
  {
    if ((a1 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_13;
  }

  result = __bsdthread_ctl();
  if (v4)
  {
    if (result)
    {
      result = **(StatusReg + 8);
      if (result != 2)
      {
        return result;
      }

      goto LABEL_14;
    }

LABEL_13:
    result = 0;
LABEL_14:
    *(StatusReg + 32) = a2 & 0xFF403FFF;
    return result;
  }

  if (result)
  {
    return **(StatusReg + 8);
  }

  return result;
}

int pthread_getschedparam(pthread_t a1, int *a2, sched_param *a3)
{
  if (!a1)
  {
    return 3;
  }

  os_unfair_lock_lock_with_options();
  v6 = __pthread_head;
  if (__pthread_head)
  {
    while (v6 != a1)
    {
      v6 = *v6->__opaque;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    if ((_pthread_ptr_munge_token ^ v6->__sig) != a1)
    {
      pthread_mach_thread_np_cold_1();
    }

    if (a2)
    {
      *a2 = a1->__opaque[32];
    }

    v7 = 0;
    if (a3)
    {
      *a3 = *&a1->__opaque[40];
    }
  }

  else
  {
LABEL_5:
    v7 = 3;
  }

  os_unfair_lock_unlock(&_pthread_list_lock);
  return v7;
}

uint64_t _pthread_wqthread(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if ((a5 & 0x20000) == 0)
  {
    _pthread_wqthread_setup(a1, a2, a3, a5);
  }

  if ((a5 & 0x800000) != 0)
  {
    *(a1 + 164) = 1;
    v10 = 67111167;
  }

  else
  {
    *(a1 + 164) = 0;
    if ((a5 & 0x100000) != 0)
    {
      v10 = (32 * a5) & 0x1000000 | 0x2000000;
    }

    else
    {
      v10 = (32 * a5) & 0x1000000 | (BYTE2(a5) << 31);
      if ((a5 & 0x4000) != 0)
      {
        if (a5 - 1 <= 5)
        {
          v10 = (v10 + (1 << (a5 + 7))) | 0xFF;
        }
      }

      else
      {
        if ((a5 & 0x8000) == 0)
        {
          _pthread_wqthread_cold_1(a5);
        }

        v10 |= 0xFFFFu;
      }
    }
  }

  *(a1 + 256) = v10;
  if (a6 == -1)
  {
    _pthread_wqthread_exit(a1);
  }

  if ((a5 & 0x400000) != 0)
  {
    v13 = __libdispatch_workloopfunction;
    *(a1 + 152) = a4;
    *(a1 + 144) = v13;
    *(a1 + 160) = a6;
    (v13)(a4 - 8, a1 + 152, a1 + 160);
  }

  if ((a5 & 0x80000) != 0)
  {
    v14 = __libdispatch_keventfunction;
    *(a1 + 152) = a4;
    *(a1 + 144) = v14;
    *(a1 + 160) = a6;
    (v14)(a1 + 152, a1 + 160);
  }

  v11 = v10 | (8 * a5) & 0x8000000;
  v12 = __libdispatch_workerfunction;
  *(a1 + 144) = __libdispatch_workerfunction;
  *(a1 + 152) = v11;
  *(a1 + 160) = 0;
  if (__workq_newapi == 1)
  {
    v12();
  }

  else
  {
    _pthread_wqthread_legacy_worker_wrap(v11);
  }

  result = __workq_kernreturn();
  v16 = *(a1 + 172);
  qword_1ECE00010 = "BUG IN LIBPTHREAD: __workq_kernreturn returned";
  qword_1ECE00040 = v16;
  return result;
}

uint64_t _pthread_qos_class_to_thread_qos(int a1)
{
  HIDWORD(v1) = a1 - 5;
  LODWORD(v1) = a1 - 5;
  v2 = 0x600050403000201uLL >> (8 * (v1 >> 2));
  if ((v1 >> 2) >= 8)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3 & 7;
}

uint64_t _pthread_qos_class_encode(int a1, char a2, int a3)
{
  v5 = _pthread_qos_class_to_thread_qos(a1);
  if (v5)
  {
    return (128 << v5) | (a2 - 1) | a3 & 0xFF000000;
  }

  else
  {
    return a3 & 0xFF000000;
  }
}

uint64_t _pthread_exit_if_canceled(uint64_t result)
{
  if (result == 4)
  {
    v1 = result;
    result = __pthread_canceled();
    if (!result)
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v4 = *(StatusReg - 224);
      v3 = StatusReg - 224;
      if ((_pthread_ptr_munge_token ^ v4) == v3)
      {
        *(v3 + 168) = v1;
        *(v3 + 165) = 1;
        pthread_exit(1);
      }

      pthread_mach_thread_np_cold_1();
    }
  }

  return result;
}

uint64_t _pthread_wqthread_setup(uint64_t result, int a2, uint64_t a3, int a4)
{
  v4 = MEMORY[0x1E69E9AC8];
  v5 = *MEMORY[0x1E69E9AC8];
  v6 = *MEMORY[0x1E69E9AB8];
  *result = _pthread_ptr_munge_token ^ result;
  *(result + 224) = result;
  *(result + 232) = result + 172;
  *(result + 256) = 2303;
  *(result + 280) = _pthread_ptr_munge_token;
  v7 = *(result + 49);
  *(result + 72) = 0;
  *(result + 176) = result;
  *(result + 184) = a3;
  *(result + 192) = a3 - v5;
  *(result + 200) = ((result + v5 - 1) & -v5) - (a3 - v5) + (~v6 & (v6 + 4320));
  *(result + 208) = *v4;
  LOWORD(v6) = *(result + 78);
  *(result + 48) = 1;
  *(result + 56) = default_priority;
  *(result + 60) = 10;
  *(result + 166) = 3;
  *(result + 248) = a2;
  *(result + 78) = v6 & 0xF100 | 0x401;
  *(result + 49) = v7 & 0xFA;
  if ((a4 & 0x200000) == 0)
  {
    v9 = a4;
    qword_1ECE00010 = "BUG IN LIBPTHREAD: thread_set_tsd_base() wasn't called by the kernel";
    qword_1ECE00040 = a4;
    __break(0xB001u);
    goto LABEL_12;
  }

  v8 = result;
  result = __thread_selfid();
  *(v8 + 216) = result;
  if (result == -1)
  {
LABEL_12:
    qword_1ECE00010 = "BUG IN LIBPTHREAD: failed to set thread_id";
    __break(0xB001u);
LABEL_13:
    qword_1ECE00010 = "BUG IN CLIENT OF LIBPTHREAD: Unable to allocate thread port, possible port leak";
    qword_1ECE00040 = v9;
    __break(0xB001u);
    return result;
  }

  os_unfair_lock_lock_no_tsd();
  *(v8 + 16) = 0;
  v10 = off_1ED3F8028;
  *(v8 + 24) = off_1ED3F8028;
  *v10 = v8;
  off_1ED3F8028 = (v8 + 16);
  ++_pthread_count;
  result = os_unfair_lock_unlock_no_tsd();
  if (_pthread_introspection_hook)
  {
    result = _pthread_introspection_hook_callout_thread_create(v8);
  }

  v9 = *(v8 + 248);
  if ((v9 + 1) <= 1)
  {
    goto LABEL_13;
  }

  if (_pthread_introspection_hook)
  {

    return _pthread_introspection_hook_callout_thread_start(v8);
  }

  return result;
}

int pthread_cond_broadcast(pthread_cond_t *a1)
{
  v36 = 1129270852;
  sig = a1->__sig;
  if ((LODWORD(a1->__sig) - 1129270853) < 2)
  {
    result = 0;
    v36 = sig;
  }

  else
  {
    if (sig != 1018212795)
    {
      if (sig == 1129270852)
      {
        return 0;
      }

      else
      {
        return 22;
      }
    }

    result = _pthread_cond_check_init_slow(a1, &v36, v1);
    sig = v36;
    if (result)
    {
      return result;
    }
  }

  if (sig == 1129270852)
  {
    return result;
  }

  if (sig != 1129270854)
  {
    if (sig != 1129270853)
    {
      pthread_cond_broadcast_cold_3(sig);
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    if ((*&a1->__opaque[4] & 0x20000000) != 0)
    {
      v8 = 28;
    }

    else
    {
      v8 = 24;
    }

    if ((*&a1->__opaque[4] & 0x20000000) != 0)
    {
      v9 = 32;
    }

    else
    {
      v9 = 28;
    }

    if ((*&a1->__opaque[4] & 0x20000000) != 0)
    {
      v10 = 24;
    }

    else
    {
      v10 = 32;
    }

    while (1)
    {
      while (1)
      {
        v11 = *(&a1->__sig + v8);
        v12 = *(&a1->__sig + v10);
        v13 = *(&a1->__sig + v9);
        v14 = v11 & 0xFFFFFF00;
        v15 = v13 & 0xFFFFFF00;
        v16 = v12 & 0xFFFFFF00;
        v17 = (v11 & 0xFFFFFF00) == (v13 & 0xFFFFFF00) || v14 == v16;
        if (!v17)
        {
          break;
        }

        v18 = v11 | (v13 << 32);
        v19 = v18;
        atomic_compare_exchange_strong((&a1->__sig + v8), &v19, v18);
        if (v19 == v18)
        {
          return 0;
        }
      }

      v20 = ((v11 & 0xFFFFFF00) - (v13 & 0xFFFFFF00)) < 0x7FFFFF81;
      if (v15 > v14)
      {
        v20 = v15 - v14 > 0x7FFFFF7F;
      }

      if (!v20)
      {
        break;
      }

      v21 = v14 - v16 < 0x7FFFFF81;
      if (v16 > v14)
      {
        v21 = v16 - v14 > 0x7FFFFF7F;
      }

      if (v21)
      {
        v22 = *(&a1->__sig + v10);
        atomic_compare_exchange_strong((a1 + v10), &v22, v14);
        if (v22 == v12)
        {
          v34 = *&a1->__opaque[4] >> 30;
          v35 = __psynch_cvbroad();
          if ((v35 - 1) <= 0xFFFFFFFD)
          {
            _pthread_cond_updateval(a1, 0, v35);
          }

          return 0;
        }
      }

      else
      {
        if (v6 < 0x2000)
        {
          ++v6;
        }

        else
        {
          if (v5)
          {
            return 35;
          }

          v23 = *(&a1->__sig + v10);
          atomic_compare_exchange_strong((a1 + v10), &v23, v15);
          v5 = v23 == v12;
          if (v23 == v12)
          {
            v6 = 0;
          }

          else
          {
            ++v6;
          }
        }

LABEL_43:
        sched_yield();
      }
    }

    if (v7 >= 0x2000)
    {
      return 35;
    }

    ++v7;
    goto LABEL_43;
  }

  v24 = a1 + 4 * ((*&a1->__opaque[4] >> 29) & 1);
  v27 = *(v24 + 3);
  v26 = (v24 + 24);
  v25 = v27;
  while (1)
  {
    result = 0;
    v28 = WORD2(v25);
    if (!WORD2(v25))
    {
      break;
    }

    v29 = HIWORD(v25);
    if (WORD2(v25) == HIWORD(v25))
    {
      break;
    }

    v30 = (v25 + 1) | (HIDWORD(v25) << 48) | (WORD2(v25) << 32);
    v31 = v25 & 0xFFFF0000FFFFFFFFLL | (WORD2(v25) << 32);
    v32 = v31;
    atomic_compare_exchange_strong_explicit(v26, &v32, v30, memory_order_release, memory_order_relaxed);
    v17 = v32 == v31;
    v25 = v32;
    if (v17)
    {
      if (v29 >= v28)
      {
        return 0;
      }

      do
      {
        v33 = __ulock_wake();
        if ((v33 & 0x80000000) == 0)
        {
          return 0;
        }
      }

      while (v33 == -4);
      if (v33 != -2)
      {
        if (v33 == -37)
        {
          pthread_cond_broadcast_cold_1();
        }

        pthread_cond_broadcast_cold_2(v33);
      }

      return 0;
    }
  }

  return result;
}

uint64_t pthread_qos_max_parallelism(int a1, unint64_t a2)
{
  if (!a1)
  {
    a1 = 21;
  }

  v3 = _pthread_qos_class_to_thread_qos(a1);
  if (v3 && a2 < 4)
  {
    v4 = v3;
    if (*(MEMORY[0x1E69E99F0] + 256) == -1)
    {
      v5 = *(MEMORY[0x1E69E99F0] + 264);
    }

    else
    {
      v5 = _os_alloc_once();
    }

    v6 = v5 + 2 * v4;
    v7 = (v6 + 272);
    v8 = 1;
    if (a2)
    {
      v8 = 4;
      v7 = (v6 + 300);
    }

    v9 = (v6 + 286);
    if (a2)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }

    if (a2)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    result = *v11;
    if (result == 0xFFFF)
    {
      LODWORD(result) = __bsdthread_ctl();
      if (result != -1)
      {
        result = result;
LABEL_18:
        *v11 = result;
        return result;
      }

      result = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (result != 22 && result != 45)
      {
        pthread_qos_max_parallelism_cold_1(result);
      }

      if (v10)
      {
        result = MEMORY[0xFFFFFC036];
        goto LABEL_18;
      }

      if (a2)
      {
        result = MEMORY[0xFFFFFC035];
        goto LABEL_18;
      }

      if (result == 45)
      {
        result = 0;
        goto LABEL_18;
      }

      __break(1u);
    }
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 0xFFFFFFFFLL;
  }

  return result;
}

pthread_t pthread_self(void)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg - 224);
  result = (StatusReg - 224);
  if ((_pthread_ptr_munge_token ^ v2) != result)
  {
    v3 = _pthread_set_properties_self_cold_1();
    return _pthread_mutex_firstfit_lock_wait(v3);
  }

  return result;
}

uint64_t _pthread_mutex_firstfit_lock_wait(uint64_t a1)
{
  v2 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  v4 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  do
  {
    do
    {
      v5 = *(a1 + 12);
      result = __psynch_mutexwait();
      v7 = *v2;
    }

    while (result == -1);
    v8 = *v4;
    do
    {
      v9 = v8;
      v10 = v8 + 256;
      if ((v8 & 2) == 0)
      {
        v10 = v8 | 2;
      }

      atomic_compare_exchange_strong_explicit(v4, &v8, v8 & 0xFFFFFFFF00000000 | v10, memory_order_acquire, memory_order_acquire);
    }

    while (v8 != v9);
  }

  while ((v9 & 2) != 0);
  *v2 = v3;
  return result;
}

uint64_t _pthread_mutex_firstfit_wake()
{
  result = __psynch_mutexdrop();
  if (result == -1)
  {
    v1 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if ((v1 & 0xFFFFFFFB) != 0)
    {
      qword_1ECE00010 = "BUG IN LIBPTHREAD: __psynch_mutexdrop failed";
      qword_1ECE00040 = v1;
      __break(0xB001u);
    }
  }

  return result;
}

uint64_t _pthread_cond_check_init_slow(uint64_t result, unsigned int *a2, __n128 a3)
{
  v4 = result;
  v5 = 0;
  v6 = (result + 8);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((result + 8), &v5, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    result = os_unfair_lock_lock_with_options();
  }

  v8 = v4->n128_u32[0];
  if (v4->n128_u32[0] - 1129270853 >= 2)
  {
    if (v8 != 1129270852)
    {
      if (v8 == 1018212795)
      {
        a3.n128_u64[0] = 0;
        v9 = 0;
        v10 = *a2;
        v4[1] = a3;
        v4[2].n128_u32[0] = 0;
        v11 = 8;
        if (((v4 + 24) & 7) == 0)
        {
          v11 = 7;
        }

        v4->n128_u32[v11] = 1;
        if (((v4 + 24) & 7) != 0)
        {
          v12 = -1610612736;
        }

        else
        {
          v12 = 0x80000000;
        }

        v4->n128_u32[3] = v12;
        v4->n128_u32[1] = 0;
        atomic_store(v10, v4);
      }

      else
      {
        v9 = 22;
      }

      goto LABEL_19;
    }

    if (*a2 != 1129270852)
    {
      v9 = 0;
      v4->n128_u32[0] = *a2;
      goto LABEL_19;
    }

LABEL_17:
    v9 = 0;
    goto LABEL_19;
  }

  if (*a2 != 1129270852)
  {
    if (*a2 != v8)
    {
      qword_1ECE00010 = "BUG IN LIBPTHREAD: Mixed ulock and psych condvar use";
      __break(0xB001u);
      return result;
    }

    goto LABEL_17;
  }

  v9 = 0;
  *a2 = v8;
LABEL_19:
  v13 = *(StatusReg + 24);
  v14 = v13;
  atomic_compare_exchange_strong_explicit(v6, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != v13)
  {
    os_unfair_lock_unlock(v6);
  }

  return v9;
}

uint64_t __pthread_init(void *a1, uint64_t a2)
{
  if (a1)
  {
    exitf = a1[1];
    if (*a1 >= 2uLL)
    {
      v3 = a1[3];
      _pthread_malloc = a1[2];
      _pthread_free = v3;
    }
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg - 224;
  if (StatusReg == 224)
  {
    __pthread_init_cold_4();
  }

  _main_thread_ptr = StatusReg - 224;
  *v5 = _pthread_ptr_munge_token ^ v5;
  host_info_outCnt = 8;
  *host_info_out = 0u;
  v33 = 0u;
  v6 = MEMORY[0x1E12CEE30]();
  v7 = host_info(v6, 5, host_info_out, &host_info_outCnt);
  if (v7)
  {
    __pthread_init_cold_1(v7);
  }

  default_priority = host_info_out[3];
  mach_port_deallocate(*MEMORY[0x1E69E9A60], v6);
  v31 = 0;
  v8 = _simple_getenv();
  if (v8)
  {
    *&v29[0] = v8;
    v9 = _pthread_strtoul(v8, v29);
    v31 = v9;
    if (**&v29[0] == 44)
    {
      v10 = _pthread_strtoul((*&v29[0] + 1), v29);
      if (**&v29[0] == 44)
      {
        v11 = _pthread_strtoul((*&v29[0] + 1), v29);
        if (**&v29[0] == 44)
        {
          v12 = _pthread_strtoul((*&v29[0] + 1), v29);
          v13 = **&v29[0];
          v15 = v13 != 44 && v13 != 0;
LABEL_19:
          _platform_strlen();
          _platform_bzero();
          if (!v15 && v9 && v10)
          {
            goto LABEL_25;
          }

          goto LABEL_22;
        }

LABEL_18:
        v12 = 0;
        v15 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
    goto LABEL_18;
  }

LABEL_22:
  *&v29[0] = 8;
  address = 0x3B00000001;
  if (__sysctl())
  {
    v31 = 0x16FE00000;
  }

  v11 = 0;
  v12 = 0;
  v10 = 1032192;
LABEL_25:
  v16 = _simple_getenv();
  if (!v16 || (v17 = _pthread_strtoul(v16, v29), _platform_strlen(), _platform_bzero(), !v17))
  {
    v18 = _simple_getenv();
    if (!v18 || (v19 = _pthread_strtoul(v18, v29)) == 0)
    {
      __pthread_init_cold_3();
    }

    v17 = v19;
  }

  _pthread_ptr_munge_token = v17;
  *_main_thread_ptr = _main_thread_ptr ^ v17;
  v20 = v31;
  *v5 = _pthread_ptr_munge_token ^ v5;
  *(v5 + 224) = v5;
  *(v5 + 232) = v5 + 172;
  *(v5 + 256) = 2303;
  *(v5 + 280) = _pthread_ptr_munge_token;
  v21 = *(v5 + 49);
  *(v5 + 72) = 0;
  *(v5 + 176) = v20;
  *(v5 + 184) = v20 - v10;
  *(v5 + 192) = v11;
  *(v5 + 200) = v12;
  *(v5 + 208) = *MEMORY[0x1E69E9AC8];
  LOBYTE(v20) = v21 & 0xFA | 1;
  v22 = *(v5 + 78);
  *(v5 + 48) = 1;
  *(v5 + 78) = v22 & 0xFD00 | 1;
  *(v5 + 56) = default_priority;
  *(v5 + 60) = 10;
  *(v5 + 166) = 3;
  *(v5 + 49) = v20;
  v23 = _simple_getenv();
  if (v23)
  {
    v24 = _pthread_strtoul(v23, v29);
    _platform_strlen();
    _platform_bzero();
  }

  else
  {
    v24 = 0;
  }

  _pthread_main_thread_init(v5, v24);
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  _pthread_bsdthread_init(v29);
  _pthread_key_global_init();
  _pthread_mutex_global_init(a2, v29);
  if (MEMORY[0xFFFFFC10C] && (__pthread_supported_features & 0x1000) != 0)
  {
    address = &_pthread_jit_config;
    v25 = mach_vm_map(*MEMORY[0x1E69E9A60], &address, 0x4000uLL, 0x3FFFuLL, 16512, 0, 0, 0, 3, 3, 1u);
    if (v25 || address != &_pthread_jit_config)
    {
      __pthread_init_cold_2(v25);
    }

    _pthread_jit_config = 1;
    if ((__pthread_supported_features & 0x800) != 0)
    {
      byte_1ECE08001 = 1;
    }
  }

  v26 = _simple_getenv();
  if (v26)
  {
    pthread_yield_to_zero = *v26 == 49;
  }

  v27 = _simple_getenv();
  if (v27)
  {
    pthread_has_sec_transition = *v27 == 49;
  }

  return 0;
}

uint64_t _pthread_strtoul(char *a1, void *a2)
{
  if (a1 && *a1 == 48 && a1[1] == 120)
  {
    v2 = 0;
    for (a1 += 2; ; ++a1)
    {
      v3 = *a1;
      v4 = (v3 - 48);
      if (v4 > 9)
      {
        if ((v3 - 97) > 5)
        {
          if ((v3 - 65) > 5)
          {
            goto LABEL_14;
          }

          v5 = (v3 - 55);
        }

        else
        {
          v5 = (v3 - 87);
        }

        v2 = v5 + 16 * v2;
      }

      else
      {
        v2 = v4 | (16 * v2);
      }
    }
  }

  v2 = 0;
LABEL_14:
  *a2 = a1;
  return v2;
}

uint64_t _pthread_qos_override_end_direct()
{
  result = __bsdthread_ctl();
  if (result == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return result;
}

uint64_t _pthread_mutex_droplock(uint64_t a1, unsigned int *a2, void *a3, unsigned int *a4, _DWORD *a5)
{
  v5 = *(a1 + 12);
  v6 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v9 = v5 & 0xC;
  if ((v5 & 0x1C0) != 0x40)
  {
    v10 = v5 & 0xFFFFEFFF;
    if ((v5 & 0xC) != 0)
    {
      if (*v8 != *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8))
      {
        return 1;
      }

      if (v9 == 8)
      {
        *(a1 + 12) = v5 & 0xFFFB | ((HIWORD(v5) - 1) << 16);
        if (HIWORD(v5) != 1)
        {
          goto LABEL_49;
        }
      }
    }

    do
    {
      v22 = v7;
      v23 = *v8;
      v24 = (v7 & 0xFFFFFF00) - (HIDWORD(v7) & 0xFFFFFF00);
      if (v24 <= 0)
      {
        v25 = HIDWORD(v7);
      }

      else
      {
        v25 = (HIDWORD(v7) + 256);
      }

      if (v23)
      {
        v26 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v26, 0, memory_order_relaxed, memory_order_relaxed);
        if (v26 != v23)
        {
LABEL_53:
          _pthread_mutex_corruption_abort();
        }
      }

      v27 = v7;
      atomic_compare_exchange_strong_explicit(v6, &v27, v7 & 0xFFFFFFFD | (v25 << 32), memory_order_release, memory_order_relaxed);
      v21 = v27 == v7;
      v7 = v27;
    }

    while (!v21);
    if (a4)
    {
      *a4 = v22 & 0xFFFFFFFD;
    }

    if (a5)
    {
      *a5 = v25;
    }

    v10 |= (v24 > 0) << 12;
    goto LABEL_47;
  }

  v10 = v5 & 0xFFFFEE7F;
  if ((v5 & 0xC) == 0)
  {
    goto LABEL_6;
  }

  if (*v8 != *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8))
  {
    return 1;
  }

  if (v9 != 8 || (*(a1 + 12) = v5 & 0xFE7B | ((HIWORD(v5) - 1) << 16), HIWORD(v5) == 1))
  {
    do
    {
LABEL_6:
      v11 = HIDWORD(v7);
      v12 = *v8;
      if (((HIDWORD(v7) ^ v7) & 0xFFFFFF00) != 0)
      {
        v11 = (HIDWORD(v7) + 256);
        v13 = v11 ^ v7;
        if ((v11 ^ v7) <= 0xFF)
        {
          v14 = 0;
        }

        else
        {
          v14 = -1;
        }

        v15 = v13 >= 0x100;
        v16 = v13 < 0x100;
        v17 = v7 & 0xFFFFFFFC;
        if (v15)
        {
          v17 = v7;
        }

        if (v15)
        {
          v10 |= 0x1000u;
        }

        if (v12 != v14)
        {
          v18 = *v8;
          atomic_compare_exchange_strong_explicit(v8, &v18, v14, memory_order_relaxed, memory_order_relaxed);
          if (v18 != v12)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
        v16 = 0;
        v17 = v7;
      }

      if (((HIDWORD(v7) ^ v7) & 0xFFFFFF00) == 0 || v16)
      {
        v10 &= ~0x1000u;
      }

      v20 = v7;
      atomic_compare_exchange_strong_explicit(v6, &v20, v17 | (v11 << 32), memory_order_release, memory_order_relaxed);
      v21 = v20 == v7;
      v7 = v20;
    }

    while (!v21);
    if (a4)
    {
      *a4 = v17;
    }

    if (a5)
    {
      *a5 = v11;
    }

LABEL_47:
    if (a3)
    {
      *a3 = a1;
    }
  }

LABEL_49:
  result = 0;
  if (a2)
  {
    *a2 = v10;
  }

  return result;
}

int pthread_rwlock_rdlock(pthread_rwlock_t *a1)
{
  if (a1->__sig == 1381452875)
  {
    v1 = (&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0);
    v2 = *v1;
    if ((*v1 & 2) == 0)
    {
      *(&v4 + 1) = *((&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0) + 8);
      *&v4 = *v1;
      v3 = v4 >> 32;
      v5 = DWORD2(v4) & 0xFFFFFF00;
      while ((v2 & 5) == 0 && v2 - v5 <= 0xFFFFFEFF)
      {
        v6 = v2 | (v3 << 32);
        v7 = (((v2 & 0xFFFFFFBA) + 256) | (v3 << 32)) + 0x10000000000;
        v2 = v6;
        atomic_compare_exchange_strong_explicit(v1, &v2, v7, memory_order_acquire, memory_order_acquire);
        v3 = HIDWORD(v2);
        if (v2 == v6)
        {
          return 0;
        }
      }
    }
  }

  return _pthread_rwlock_lock_slow(a1, 1, 0);
}

int pthread_rwlock_unlock(pthread_rwlock_t *a1)
{
  if (a1->__sig != 1381452875)
  {
    return _pthread_rwlock_unlock_slow(a1, 0);
  }

  LODWORD(_X2) = *(&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0);
  if ((_X2 & 0x40) == 0)
  {
    v3 = *((&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0) + 4);
    LODWORD(_X3) = *((&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0) + 8);
    LODWORD(v4) = *((&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0) + 0xC);
    if ((_X2 & 2) != 0)
    {
      *(&a1->__opaque[23] & 0xFFFFFFFFFFFFFFF8) = 0;
    }

    do
    {
      v5 = _X3 + 256;
      if (_X3 + 256 == (_X2 & 0xFFFFFF00))
      {
        v6 = v5 | 0xC0;
        v7 = v5 | 1u;
      }

      else
      {
        v6 = _X2;
        v7 = v3;
        if ((_X2 & 7) != 0)
        {
          v6 = _X2;
          v7 = v3;
          if (v5 == (v3 & 0xFFFFFF00))
          {
            return _pthread_rwlock_unlock_slow(a1, 0);
          }
        }
      }

      v8 = _X2 | (v3 << 32);
      _X6 = v6 | (v7 << 32);
      _X3 = _X3 | (v4 << 32);
      __asm { CASPL           X2, X3, X6, X7, [X8] }

      v4 = HIDWORD(_X3);
      v3 = HIDWORD(_X2);
    }

    while (_X2 != v8);
  }

  return 0;
}

void _pthread_cond_wait(uint64_t a1, pthread_mutex_t *a2, void **a3, int a4, int a5, __n128 a6)
{
  v6 = (a2->__sig & 0xFFFFFFFDLL) == 0x4D555458 || (a2->__sig & 0xFFFFFFF0) == 850045856;
  if (!v6)
  {
    return;
  }

  v12 = *&a2->__opaque[4];
  if ((v12 & 0x4000) != 0)
  {
    v13 = 1129270854;
  }

  else
  {
    v13 = 1129270853;
  }

  v41 = v13;
  v14 = *a1;
  if ((*a1 - 1129270853) < 2)
  {
    if (v13 != v14)
    {
      goto LABEL_86;
    }
  }

  else if (v14 == 1018212795)
  {
    if (_pthread_cond_check_init_slow(a1, &v41, a6))
    {
      return;
    }
  }

  else
  {
    if (v14 != 1129270852)
    {
      return;
    }

    *a1 = v13;
  }

  if (a5 == 2)
  {
    pthread_testcancel();
  }

  if (a3)
  {
    v15 = a3[1];
    if (v15 > 0x3B9AC9FF)
    {
      return;
    }

    if (a4)
    {
      v16 = *a3;
      v17 = (v16 | v15) == 0;
LABEL_38:
      if ((v12 & 0x4000) == 0)
      {
        v23 = *(a1 + 16);
        if (v23 && v23 != a2)
        {
          return;
        }

        if (!v17)
        {
LABEL_42:
          v47 = 0;
          v46 = 0;
          v42[0] = 0;
          v24 = 28;
          v25 = 24;
          if ((*(a1 + 12) & 0x20000000) != 0)
          {
            v26 = 28;
          }

          else
          {
            v26 = 24;
          }

          if ((*(a1 + 12) & 0x20000000) != 0)
          {
            v24 = 32;
          }

          else
          {
            v25 = 32;
          }

          v27 = (a1 + v26);
          do
          {
            v28 = *v27;
            v29 = *(a1 + v25);
            v30 = *(a1 + v24);
            v31 = v28 | (v30 << 32);
            atomic_compare_exchange_strong(v27, &v31, (v28 + 256) | (((v30 & 0xFFFFFF00) >> 8) << 40));
          }

          while (v31 != (v28 | (v30 << 32)));
          *(a1 + 16) = a2;
          if (!_pthread_mutex_droplock(a2, &v46, v42, &v47 + 1, &v47))
          {
            if ((v46 & 0x1000) == 0)
            {
              v42[0] = 0;
            }

            v46 &= ~0x2000u;
            if (a5 == 2)
            {
              StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v43 = _pthread_psynch_cond_cleanup;
              v44 = a1;
              v45 = *(StatusReg - 216);
              *(StatusReg - 216) = &v43;
              v38 = __psynch_cvwait();
              pthread_testcancel();
              *(StatusReg - 216) = v45;
            }

            else
            {
              v38 = __psynch_cvwait();
            }

            if (v38)
            {
              if (v38 == -1)
              {
                _pthread_cond_updateval(a1, **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8), 0);
              }

              else
              {
                _pthread_cond_updateval(a1, 0, v38);
              }
            }

            pthread_mutex_lock(a2);
          }

          return;
        }

LABEL_53:
        if (!pthread_mutex_unlock(a2))
        {
          pthread_mutex_lock(a2);
        }

        return;
      }

      if (v17)
      {
        goto LABEL_53;
      }

      goto LABEL_55;
    }

    v43 = 0;
    v44 = 0;
    __gettimeofday();
    v19 = 1000 * v44;
    if (*a3 == v43)
    {
      v20 = a3[1];
      if (v20 > v19)
      {
        goto LABEL_34;
      }
    }

    else if (*a3 >= v43)
    {
      v20 = a3[1];
LABEL_34:
      v21 = v20 - v19;
      if (v21 < 0)
      {
        v22 = *a3 - v43 - 1;
      }

      else
      {
        v22 = *a3 - v43;
      }

      v17 = 0;
      goto LABEL_38;
    }

    v17 = 1;
    goto LABEL_38;
  }

  if ((v12 & 0x4000) == 0)
  {
    v18 = *(a1 + 16);
    if (v18 && v18 != a2)
    {
      return;
    }

    goto LABEL_42;
  }

LABEL_55:
  v32 = (a1 + 4 * ((*(a1 + 12) >> 29) & 1) + 24);
  add_explicit = atomic_fetch_add_explicit(v32, 0x100000000uLL, memory_order_relaxed);
  if (_pthread_mutex_ulock_unlock(a2))
  {
    v34 = *v32;
    v35 = *v32;
    do
    {
      LODWORD(v36) = HIWORD(v34) - 1;
      if (HIWORD(v34))
      {
        v36 = v36;
      }

      else
      {
        v36 = 0;
      }

      atomic_compare_exchange_strong_explicit(v32, &v35, (v34 + 0xFFFF00000000) & 0xFFFF00000000 | (v36 << 48) | v34, memory_order_acquire, memory_order_acquire);
      v6 = v35 == v34;
      v34 = v35;
    }

    while (!v6);
    return;
  }

  v39 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    if (a5 == 2)
    {
      v42[0] = a1;
      v42[1] = a2;
      v43 = _pthread_ulock_cond_cleanup;
      v44 = v42;
      v45 = 0;
      v45 = *(v39 - 216);
      *(v39 - 216) = &v43;
      v40 = __ulock_wait2();
      pthread_testcancel();
      *(v39 - 216) = v45;
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v40 = __ulock_wait2();
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_80;
      }
    }

    if (v40 != -14)
    {
      break;
    }

LABEL_80:
    if (*v32 != add_explicit)
    {
      goto LABEL_84;
    }
  }

  if (v40 == -60 || v40 == -4)
  {
LABEL_84:
    _pthread_ulock_cond_wait_complete(v32, a2);
    return;
  }

  qword_1ECE00010 = "BUG IN LIBPTHREAD: ulock_wait failure";
  qword_1ECE00040 = -v40;
  __break(0xB001u);
LABEL_86:
  qword_1ECE00010 = "BUG IN LIBPTHREAD: Mixed ulock and psych condvar use";
  __break(0xB001u);
}

uint64_t _pthread_cond_updateval(uint64_t result, unsigned int a2, int a3)
{
  if ((a2 & 0x100) != 0)
  {
    v3 = 257;
  }

  else
  {
    v3 = 256;
  }

  v4 = v3 | (a2 >> 8) & 2;
  if (!a2)
  {
    v4 = a3;
  }

  v5 = *(result + 12);
  v6 = (v5 & 0x20000000) == 0;
  v7 = 28;
  v8 = 24;
  if ((v5 & 0x20000000) != 0)
  {
    v9 = 28;
  }

  else
  {
    v9 = 24;
  }

  if (v6)
  {
    v8 = 32;
  }

  else
  {
    v7 = 32;
  }

  do
  {
    v10 = *(result + v9);
    v11 = *(result + v8);
    v12 = *(result + v7);
    v13 = v10 & 0xFFFFFF00;
    v14 = v12 & 0xFFFFFF00;
    v15 = v10 | (v12 << 32);
    v16 = (v12 & 0xFFFFFF00) + (v4 & 0xFFFFFF00);
    v17 = (v12 | v4) & 3;
    v18 = v16 | v17;
    v19 = v16 == (v10 & 0xFFFFFF00) && v17 == 3;
    v20 = !v19;
    LODWORD(v21) = v18 & 0xFFFFFF01;
    if (v19)
    {
      v21 = v21;
    }

    else
    {
      v21 = v18;
    }

    v22 = v10 | (v21 << 32);
    if (v13 == v14 && (v4 & 2) == 0)
    {
      v22 = v15;
      LODWORD(v21) = 0;
      v24 = 1;
    }

    else
    {
      v24 = v20;
    }

    v25 = v15;
    atomic_compare_exchange_strong((result + v9), &v25, v22);
  }

  while (v25 != v15);
  if (v13 != v14 && (v21 ^ v10) <= 0xFF)
  {
    *(result + 16) = 0;
  }

  if ((v24 & 1) == 0)
  {
    v26 = *(result + 12) >> 30;
    return __psynch_cvclrprepost();
  }

  return result;
}

int pthread_attr_getschedparam(const pthread_attr_t *a1, sched_param *a2)
{
  if (a1->__sig != 1414022209)
  {
    return 22;
  }

  if (a1->__opaque[35])
  {
    result = 0;
    *a2 = *&a1->__opaque[24];
  }

  else
  {
    result = 0;
    a2->sched_priority = default_priority;
    *a2->__opaque = 10;
  }

  return result;
}

uint64_t _pthread_workqueue_addthreads()
{
  if (!__libdispatch_workerfunction)
  {
    return 1;
  }

  result = __workq_kernreturn();
  if (result == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return result;
}

uint64_t _pthread_workqueue_add_cooperativethreads()
{
  if (!__libdispatch_workerfunction)
  {
    return 1;
  }

  result = __workq_kernreturn();
  if (result == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return result;
}

int pthread_threadid_np(pthread_t a1, __uint64_t *a2)
{
  if (!a2)
  {
    return 22;
  }

  v4 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224;
  if (!a1 || v4 == a1)
  {
    v6 = 0;
    *a2 = *(v4 + 216);
  }

  else
  {
    os_unfair_lock_lock_with_options();
    v5 = __pthread_head;
    if (__pthread_head)
    {
      while (v5 != a1)
      {
        v5 = *v5->__opaque;
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      if ((_pthread_ptr_munge_token ^ v5->__sig) != a1)
      {
        pthread_mach_thread_np_cold_1();
      }

      v7 = *&a1->__opaque[200];
      *a2 = v7;
      if (v7)
      {
        v6 = 0;
      }

      else
      {
        v6 = _pthread_threadid_slow(a1, a2);
      }

      os_unfair_lock_unlock(&_pthread_list_lock);
    }

    else
    {
LABEL_7:
      os_unfair_lock_unlock(&_pthread_list_lock);
      return 3;
    }
  }

  return v6;
}

uint64_t _pthread_qos_override_start_direct()
{
  result = __bsdthread_ctl();
  if (result == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return result;
}

uint64_t _pthread_workqueue_set_event_manager_priority()
{
  result = __workq_kernreturn();
  if (result == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return result;
}

int pthread_rwlock_wrlock(pthread_rwlock_t *a1)
{
  if (a1->__sig == 1381452875)
  {
    v1 = (&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0);
    v2 = *v1;
    if ((*v1 & 2) == 0)
    {
      *(&v4 + 1) = *((&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0) + 8);
      *&v4 = *v1;
      v3 = v4 >> 32;
      while ((v2 & 0x40) != 0)
      {
        v5 = v2 | (v3 << 32);
        v6 = (((v2 & 0xFFFFFF00) + 387) | (v3 << 32)) + 0x10000000000;
        v2 = v5;
        atomic_compare_exchange_strong_explicit(v1, &v2, v6, memory_order_acquire, memory_order_acquire);
        v3 = HIDWORD(v2);
        if (v2 == v5)
        {
          *(&a1->__opaque[23] & 0xFFFFFFFFFFFFFFF8) = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
          return 0;
        }
      }
    }
  }

  return _pthread_rwlock_lock_slow(a1, 0, 0);
}

int pthread_setname_np(const char *a1)
{
  v1 = (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224);
  if (a1)
  {
    v2 = _platform_strlen();
  }

  else
  {
    v2 = 0;
  }

  if ((_pthread_ptr_munge_token ^ *v1) != v1)
  {
    pthread_mach_thread_np_cold_1();
  }

  getpid();
  v3 = __proc_info();
  if (!v3)
  {
    if (v2)
    {
      _platform_strlcpy();
    }

    else
    {
      _platform_bzero();
    }
  }

  return v3;
}

uint64_t pthread_workqueue_setup(uint64_t a1, unint64_t a2)
{
  if (a2 < 4)
  {
    return 22;
  }

  v4 = *(a1 + 4);
  if (v4 == 1)
  {
    v5 = 40;
  }

  else
  {
    if (v4 != 2)
    {
      return 22;
    }

    v5 = 48;
  }

  if (v5 > a2)
  {
    return 22;
  }

  if (*a1)
  {
    return 45;
  }

  if (__libdispatch_workerfunction)
  {
    return 16;
  }

  __workq_newapi = 1;
  v7 = *(a1 + 32);
  if (__workq_kernreturn() == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  v6 = *(a1 + 16);
  __libdispatch_keventfunction = *(a1 + 8);
  __libdispatch_workloopfunction = v6;
  __libdispatch_workerfunction = *(a1 + 24);
  __workq_open();
  result = 0;
  if (!__is_threaded)
  {
    __is_threaded = 1;
  }

  return result;
}

int pthread_once(pthread_once_t *a1, void (*a2)(void))
{
  opaque = a1->__opaque;
  do
  {
    if (atomic_load_explicit(opaque, memory_order_acquire) != -1)
    {
      _os_once();
    }
  }

  while (a1->__sig == 816954554);
  return 0;
}

uint64_t _pthread_workqueue_override_start_direct_check_owner(int a1, uint64_t a2, _DWORD *a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    result = __bsdthread_ctl();
    if (result == -1)
    {
      result = **(StatusReg + 8);
    }

    if (!a3 || result != 14)
    {
      break;
    }

    if ((*a3 | 3) != a1)
    {
      return 70;
    }
  }

  return result;
}

uint64_t _pthread_markcancel_if_canceled(uint64_t result)
{
  v1 = atomic_load((result + 166));
  if ((~v1 & 0x11) == 0)
  {
    return __pthread_markcancel();
  }

  return result;
}

uint64_t pthread_key_init_np(int a1, uint64_t a2)
{
  if ((a1 - 10) > 0xF5)
  {
    return 22;
  }

  os_unfair_lock_lock_with_options();
  if (!_pthread_keys[a1])
  {
    _pthread_keys[a1] = ~a2;
  }

  if (__pthread_tsd_max < a1)
  {
    __pthread_tsd_max = a1;
  }

  os_unfair_lock_unlock(&__pthread_tsd_lock);
  return 0;
}

int pthread_getname_np(pthread_t a1, char *a2, size_t a3)
{
  if ((_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224) != a1)
  {
    if (a1)
    {
      os_unfair_lock_lock_with_options();
      v4 = __pthread_head;
      if (__pthread_head)
      {
        while (v4 != a1)
        {
          v4 = *v4->__opaque;
          if (!v4)
          {
            goto LABEL_6;
          }
        }

        if ((_pthread_ptr_munge_token ^ v4->__sig) != a1)
        {
          pthread_mach_thread_np_cold_1();
        }

        _platform_strlcpy();
        os_unfair_lock_unlock(&_pthread_list_lock);
        return 0;
      }

LABEL_6:
      os_unfair_lock_unlock(&_pthread_list_lock);
    }

    return 3;
  }

  _platform_strlcpy();
  return 0;
}

int pthread_sigmask(int a1, const sigset_t *a2, sigset_t *a3)
{
  if (__pthread_sigmask() == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t _pthread_introspection_hook_callout_thread_create(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9AB8] + 4320;
  v2 = ~*MEMORY[0x1E69E9AB8];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg - 174);
  *(StatusReg - 174) = 1;
  result = _pthread_introspection_hook(1, a1, a1, v2 & v1);
  *(StatusReg - 174) = v4;
  return result;
}

uint64_t _pthread_workqueue_override_reset()
{
  result = __bsdthread_ctl();
  if (result == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return result;
}

int pthread_cond_signal(pthread_cond_t *a1)
{
  v36 = 1129270852;
  sig = a1->__sig;
  if ((LODWORD(a1->__sig) - 1129270853) < 2)
  {
    result = 0;
    v36 = sig;
  }

  else
  {
    if (sig != 1018212795)
    {
      if (sig == 1129270852)
      {
        return 0;
      }

      else
      {
        return 22;
      }
    }

    result = _pthread_cond_check_init_slow(a1, &v36, v1);
    sig = v36;
    if (result)
    {
      return result;
    }
  }

  if (sig == 1129270852)
  {
    return result;
  }

  if (sig != 1129270854)
  {
    if (sig != 1129270853)
    {
      pthread_cond_broadcast_cold_3(sig);
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    if ((*&a1->__opaque[4] & 0x20000000) != 0)
    {
      v8 = 28;
    }

    else
    {
      v8 = 24;
    }

    if ((*&a1->__opaque[4] & 0x20000000) != 0)
    {
      v9 = 32;
    }

    else
    {
      v9 = 28;
    }

    if ((*&a1->__opaque[4] & 0x20000000) != 0)
    {
      v10 = 24;
    }

    else
    {
      v10 = 32;
    }

    while (1)
    {
      while (1)
      {
        v11 = *(&a1->__sig + v8);
        v12 = *(&a1->__sig + v10);
        v13 = *(&a1->__sig + v9);
        v14 = v11 & 0xFFFFFF00;
        v15 = v13 & 0xFFFFFF00;
        v16 = v12 & 0xFFFFFF00;
        v17 = (v11 & 0xFFFFFF00) == (v13 & 0xFFFFFF00) || v14 == v16;
        if (!v17)
        {
          break;
        }

        v18 = v11 | (v13 << 32);
        v19 = v18;
        atomic_compare_exchange_strong((&a1->__sig + v8), &v19, v18);
        if (v19 == v18)
        {
          return 0;
        }
      }

      v20 = ((v11 & 0xFFFFFF00) - (v13 & 0xFFFFFF00)) < 0x7FFFFF81;
      if (v15 > v14)
      {
        v20 = v15 - v14 > 0x7FFFFF7F;
      }

      if (!v20)
      {
        break;
      }

      if (v16 <= v14)
      {
        v21 = v14 - v16 < 0x7FFFFF81;
      }

      else
      {
        v21 = v16 - v14 > 0x7FFFFF7F;
      }

      if (v21)
      {
        v22 = v15 - v16 > 0x7FFFFF7F;
        if (v16 >= v15)
        {
          v22 = v16 - v15 < 0x7FFFFF81;
        }

        if (v22)
        {
          v15 = v12 & 0xFFFFFF00;
        }

        v23 = *(&a1->__sig + v10);
        atomic_compare_exchange_strong((a1 + v10), &v23, v15 + 256);
        if (v23 == v12)
        {
          v34 = *&a1->__opaque[4] >> 30;
          v35 = __psynch_cvsignal();
          if ((v35 - 1) <= 0xFFFFFFFD)
          {
            _pthread_cond_updateval(a1, 0, v35);
          }

          return 0;
        }
      }

      else
      {
        if (v6 < 0x2000)
        {
          ++v6;
        }

        else
        {
          if (v5)
          {
            return 35;
          }

          v24 = *(&a1->__sig + v10);
          atomic_compare_exchange_strong((a1 + v10), &v24, v15);
          v5 = v24 == v12;
          if (v24 == v12)
          {
            v6 = 0;
          }

          else
          {
            ++v6;
          }
        }

LABEL_48:
        sched_yield();
      }
    }

    if (v7 >= 0x2000)
    {
      return 35;
    }

    ++v7;
    goto LABEL_48;
  }

  v25 = a1 + 4 * ((*&a1->__opaque[4] >> 29) & 1);
  v28 = *(v25 + 3);
  v27 = (v25 + 24);
  v26 = v28;
  while (1)
  {
    result = 0;
    v29 = WORD2(v26);
    if (!WORD2(v26))
    {
      break;
    }

    v30 = HIWORD(v26);
    if (WORD2(v26) == HIWORD(v26))
    {
      break;
    }

    if (v30 + 1 < WORD2(v26))
    {
      v31 = (v30 + 1);
    }

    else
    {
      v31 = WORD2(v26);
    }

    v32 = v26;
    atomic_compare_exchange_strong_explicit(v27, &v32, (v26 + 1) | (v31 << 48) | v26 & 0xFFFF00000000, memory_order_release, memory_order_relaxed);
    v17 = v32 == v26;
    v26 = v32;
    if (v17)
    {
      if (v30 >= v29)
      {
        return 0;
      }

      do
      {
        v33 = __ulock_wake();
        if ((v33 & 0x80000000) == 0)
        {
          return 0;
        }
      }

      while (v33 == -4);
      if (v33 != -2)
      {
        if (v33 == -37)
        {
          pthread_cond_broadcast_cold_1();
        }

        pthread_cond_broadcast_cold_2(v33);
      }

      return 0;
    }
  }

  return result;
}

void pthread_testcancel(void)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v1 = atomic_load((StatusReg - 58));
  if ((~v1 & 0x11) == 0)
  {
    v2 = pthread_testcancel_cold_1(StatusReg - 224, StatusReg - 224);
    pthread_cond_timedwait(v2, v3, v4);
  }
}

uint64_t pthread_install_workgroup_functions_np(uint64_t a1)
{
  result = _pthread_workgroup_functions;
  if (_pthread_workgroup_functions)
  {
    pthread_install_workgroup_functions_np_cold_1(_pthread_workgroup_functions);
  }

  _pthread_workgroup_functions = a1;
  return result;
}

int pthread_attr_getschedpolicy(const pthread_attr_t *a1, int *a2)
{
  if (a1->__sig != 1414022209)
  {
    return 22;
  }

  result = 0;
  *a2 = a1->__opaque[34];
  return result;
}

uint64_t _pthread_rwlock_lock_slow(void *a1, int a2, int a3)
{
  if (*a1 == 1381452875 || (result = _pthread_rwlock_check_init_slow(a1), !result))
  {
    v7 = ((a1 + 47) & 0xFFFFFFFFFFFFFFF0);
    _X0 = *v7;
    v9 = v7[1];
    v10 = HIDWORD(*v7);
    v11 = HIDWORD(v9);
    do
    {
      _X0 = _X0 | (v10 << 32);
      v9 = v9 | (v11 << 32);
      _X25 = v9;
      __asm { CASP            X24, X25, X0, X1, [X22] }

      v10 = HIDWORD(_X24);
      v11 = HIDWORD(v9);
      _ZF = _X24 == _X0;
      LODWORD(_X0) = _X24;
    }

    while (!_ZF);
    v18 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
    if ((_X24 & 2) != 0 && *((a1 + 31) & 0xFFFFFFFFFFFFFFF8) == v18)
    {
      return 11;
    }

    v33 = v18;
    v34 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
    v35 = a1;
    LODWORD(v19) = _X24;
    do
    {
      v20 = (v19 & 0x40) == 0;
      if (a2)
      {
        v21 = (v19 & 5) != 0;
      }

      else
      {
        v21 = (v19 & 0x40) == 0;
      }

      if (a3 && v21)
      {
        v22 = v10;
        LODWORD(_X0) = v19;
        v24 = v11;
        _X1 = _X25;
LABEL_16:
        v26 = _X0 | (v22 << 32);
        v20 = 1;
        v27 = _X0;
      }

      else
      {
        v28 = 0;
        v24 = v11;
        _X1 = _X25;
        v22 = v10;
        LODWORD(_X0) = v19;
        while (!v21)
        {
          if (!a2)
          {
            v26 = v19 | (v10 << 32);
            v32 = v19 & 0xFFFFFF00 | 0x83;
            v24 = v11;
            _X1 = _X25;
            LODWORD(v22) = v10;
LABEL_36:
            v27 = v32 + 256;
            v22 = (v22 + 256);
            goto LABEL_37;
          }

          if (_X0 - (_X1 & 0xFFFFFF00) < 0xFFFFFF00)
          {
            v20 = 0;
            v26 = _X0 | (v22 << 32);
            v32 = _X0 & 0xFFFFFFBF;
            goto LABEL_36;
          }

          if (v28 == 1024)
          {
            return 35;
          }

          sched_yield();
          _X2 = *v7;
          v30 = v7[1];
          v22 = HIDWORD(*v7);
          v24 = HIDWORD(v30);
          do
          {
            _X2 = _X2 | (v22 << 32);
            v30 = v30 | (v24 << 32);
            _X1 = v30;
            __asm { CASP            X0, X1, X2, X3, [X22] }

            _ZF = _X0 == _X2;
            v22 = HIDWORD(_X0);
            v24 = HIDWORD(v30);
            LODWORD(_X2) = _X0;
          }

          while (!_ZF);
          ++v28;
          v21 = (_X0 & 5) != 0;
          if (a3 && (_X0 & 5) != 0)
          {
            goto LABEL_16;
          }
        }

        v26 = _X0 | (v22 << 32);
        v31 = _X0 | 5;
        if (a2)
        {
          v31 = _X0 & 0xFFFFFFBF;
        }

        v27 = v31 + 256;
        if (v22)
        {
          v22 = v22 & 0xFE | _X0 & 0xFFFFFF00;
        }

        else
        {
          v22 = v22;
        }

        v20 = 1;
      }

LABEL_37:
      v19 = v26;
      atomic_compare_exchange_strong_explicit(v7, &v19, v27 | (v22 << 32), memory_order_acquire, memory_order_acquire);
      v10 = HIDWORD(v19);
      _X25 = _X1;
      v11 = v24;
    }

    while (v19 != v26);
    if (v20)
    {
      if (a3)
      {
        return 16;
      }

      _pthread_rwlock_lock_wait(v35, a2);
    }

    else if ((a2 & 1) == 0)
    {
      result = 0;
      *v34 = v33;
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t _pthread_rwlock_check_init_slow(uint64_t a1)
{
  if (*a1 == 766030772)
  {
    v2 = 0;
    v3 = (a1 + 8);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit((a1 + 8), &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      os_unfair_lock_lock_with_options();
    }

    if (*a1 == 766030772)
    {
      v5 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
      v6 = (a1 + 32);
      v7 = ((a1 + 47) & 0xFFFFFFFFFFFFFFF0);
      if ((a1 + 24) != v5)
      {
        *(a1 + 12) |= 0x20000000u;
        *(a1 + 24) = -1;
      }

      if (v6 != v7)
      {
        *v6 = -1;
        *(a1 + 40) = -1;
      }

      v8 = 0;
      *(a1 + 48) = -1;
      *(a1 + 56) = -1;
      *v5 = 0;
      *v7 = 0x1000000C0;
      *(((a1 + 47) & 0xFFFFFFFFFFFFFFF0) + 8) = 0;
      *(a1 + 12) = *(a1 + 12) & 0x3FFFFFFF | 0x80000000;
      *(a1 + 64) = ~a1;
      *(a1 + 196) = 1381452875;
      *(a1 + 16) = 0x52574C4B00000020;
      *(a1 + 4) = 0;
      atomic_store(0x52574C4Bu, a1);
    }

    else if (*a1 == 1381452875)
    {
      v8 = 0;
    }

    else
    {
      v8 = 22;
    }

    v9 = *(StatusReg + 24);
    v10 = v9;
    atomic_compare_exchange_strong_explicit(v3, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 != v9)
    {
      os_unfair_lock_unlock(v3);
    }
  }

  else if (*a1 == 1381452875)
  {
    return 0;
  }

  else
  {
    return 22;
  }

  return v8;
}

uint64_t _pthread_globals_init(uint64_t result)
{
  v1 = (result + 272);
  v2 = 7;
  do
  {
    *v1 = -1;
    v1[7] = -1;
    v1[14] = -1;
    ++v1;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t __pthread_once_handler(void *a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = a1[1];
  v4 = *a1 + 8;
  v6[0] = MEMORY[0x1E69E9B78];
  v6[1] = v4;
  v7 = *(StatusReg - 216);
  *(StatusReg - 216) = v6;
  result = v3();
  *(StatusReg - 216) = v7;
  **a1 = 1330529093;
  return result;
}

uint64_t _pthread_create(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a2)
  {
    v7 = _pthread_attr_default;
LABEL_5:
    v10 = *(v7 + 4);
    v9 = *(v7 + 5);
    v11 = *(v7 + 3);
    __is_threaded = 1;
    address = __pthread_stack_hint;
    if ((v11 - 1) <= 0x3FFE)
    {
      _pthread_create_cold_3(v11);
    }

    v12 = *(v7 + 2);
    if ((*MEMORY[0x1E69E9AB8] & v12) != 0)
    {
      _pthread_create_cold_1(v12);
    }

    v35 = a1;
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = ~*MEMORY[0x1E69E9AB8] & (*MEMORY[0x1E69E9AB8] + 4320);
    }

    else
    {
      if ((v9 & 0x10000000) != 0)
      {
        v16 = MEMORY[0x1E69E9AC8];
      }

      else
      {
        v16 = (v7 + 8);
      }

      v14 = *v16;
      if (v11)
      {
        v11 += 12288;
      }

      else
      {
        v11 = 536576;
      }

      v13 = v14 + v11;
      v15 = ((~*MEMORY[0x1E69E9AB8] & (*MEMORY[0x1E69E9AB8] + 4320)) + *MEMORY[0x1E69E9AB8] + v14 + v11) & ~*MEMORY[0x1E69E9AB8];
    }

    v17 = MEMORY[0x1E69E9A60];
    v18 = mach_vm_map(*MEMORY[0x1E69E9A60], &address, v15, *MEMORY[0x1E69E9AC8] - 1, 503316481, 0, 0, 0, 3, 7, 1u);
    if (v18)
    {
      v19 = v17;
      v18 = mach_vm_allocate(*v17, &address, v15, 503316481);
      if (v18)
      {
        return 35;
      }
    }

    else
    {
      v19 = v17;
      if ((a5 & 1) == 0 && *MEMORY[0x1E69E99E8])
      {
        v18 = (*MEMORY[0x1E69E99E8])(503316624, *v17, v15, 0, address, 0);
      }
    }

    if ((a5 & 1) == 0 && *MEMORY[0x1E69E99E8])
    {
      v18 = (*MEMORY[0x1E69E99E8])(503316496, *v19, v15, 0, address, 0);
    }

    if (v14)
    {
      v18 = mach_vm_protect(*v19, address, v14, 0, 0);
    }

    v20 = address;
    v21 = address + v13;
    if (*(v7 + 2))
    {
      v22 = *(v7 + 2);
    }

    else
    {
      v22 = address + v13;
    }

    *v21 = _pthread_ptr_munge_token ^ v21;
    *(v21 + 224) = v21;
    *(v21 + 232) = v21 + 172;
    if (v7[43])
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v7 + 4);
    }

    v24 = MEMORY[0x1E69E9AC8];
    *(v21 + 256) = v23;
    *(v21 + 280) = _pthread_ptr_munge_token;
    v25 = *(v21 + 49) & 0xFB | (4 * (*(v7 + 2) != 0));
    *(v21 + 49) = v25;
    *(v21 + 72) = 0;
    *(v21 + 176) = v22;
    *(v21 + 184) = v22 - v11;
    *(v21 + 192) = v20;
    *(v21 + 200) = v15;
    if ((*(v7 + 5) & 0x10000000) != 0)
    {
      v26 = v24;
    }

    else
    {
      v26 = v7 + 8;
    }

    *(v21 + 208) = *v26;
    v27 = v25 & 0xFE;
    if (v7[40] == 1)
    {
      ++v27;
    }

    *(v21 + 49) = v27;
    v28 = v7[41] | (*(v21 + 79) << 8);
    *(v21 + 78) = v28;
    *(v21 + 48) = BYTE2(*(v7 + 5));
    *(v21 + 78) = (*(v7 + 10) >> 15) & 0x200 | v28 & 0xFDFF;
    if (v7[43])
    {
      *(v21 + 56) = *(v7 + 4);
    }

    else
    {
      *(v21 + 56) = default_priority;
      *(v21 + 60) = 10;
    }

    *(v21 + 166) = 3;
    if (a5)
    {
      v29 = MEMORY[0x1E12CEE70](v18);
    }

    else
    {
      v29 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    }

    *(v21 + 144) = a3;
    *(v21 + 152) = a4;
    os_unfair_lock_lock_no_tsd();
    *(v21 + 16) = 0;
    v30 = off_1ED3F8028;
    *(v21 + 24) = off_1ED3F8028;
    *v30 = v21;
    off_1ED3F8028 = (v21 + 16);
    ++_pthread_count;
    os_unfair_lock_unlock_no_tsd();
    if ((a5 & 1) == 0 && _pthread_introspection_hook)
    {
      _pthread_introspection_hook_callout_thread_create(v21);
    }

    if (__bsdthread_create() == -1)
    {
      if (**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) == 24)
      {
        _pthread_create_cold_2();
      }

      os_unfair_lock_lock_no_tsd();
      v32 = *(v21 + 16);
      v33 = *(v21 + 24);
      v34 = (v32 + 24);
      if (!v32)
      {
        v34 = &off_1ED3F8028;
      }

      *v34 = v33;
      *v33 = v32;
      --_pthread_count;
      os_unfair_lock_unlock_no_tsd();
      _pthread_deallocate(v21, a5 & 1);
      v21 = 0;
      v8 = 35;
      if ((a5 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v8 = 0;
      if ((a5 & 1) == 0)
      {
LABEL_49:
        *v35 = v21;
        return v8;
      }
    }

    mach_port_deallocate(*v19, v29);
    goto LABEL_49;
  }

  v7 = a2;
  if (*a2 == 1414022209)
  {
    goto LABEL_5;
  }

  return 22;
}

uint64_t _pthread_start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if ((a6 & 0x20000000) != 0)
  {
    qword_1ECE00010 = "BUG IN LIBPTHREAD: kernel without PTHREAD_START_SUSPENDED support";
    qword_1ECE00040 = a6;
    __break(0xB001u);
    goto LABEL_8;
  }

  if ((a6 & 0x10000000) == 0)
  {
LABEL_8:
    qword_1ECE00010 = "BUG IN LIBPTHREAD: thread_set_tsd_base() wasn't called by the kernel";
    qword_1ECE00040 = a6;
    __break(0xB001u);
    goto LABEL_9;
  }

  if ((_pthread_ptr_munge_token ^ *a1) != a1)
  {
LABEL_9:
    result = abort_with_reason();
    goto LABEL_10;
  }

  _pthread_markcancel_if_canceled(a1);
  result = __thread_selfid();
  *(a1 + 216) = result;
  if (result == -1)
  {
LABEL_10:
    qword_1ECE00010 = "BUG IN LIBPTHREAD: failed to set thread_id";
    __break(0xB001u);
    goto LABEL_11;
  }

  v8 = *(a1 + 248);
  if ((v8 + 1) > 1)
  {
    _pthread_introspection_thread_start(a1);
    v9 = (*(a1 + 144))(*(a1 + 152));
    _pthread_exit(a1, v9);
  }

LABEL_11:
  qword_1ECE00010 = "BUG IN CLIENT OF LIBPTHREAD: Unable to allocate thread port, possible port leak";
  qword_1ECE00040 = v8;
  __break(0xB001u);
  return result;
}

void *_pthread_introspection_thread_start(void *a1)
{
  if (_pthread_introspection_hook)
  {
    return _pthread_introspection_hook_callout_thread_start(a1);
  }

  return a1;
}

int pthread_attr_set_qos_class_np(pthread_attr_t *__attr, qos_class_t __qos_class, int __relative_priority)
{
  v4 = __relative_priority - 1;
  if ((__relative_priority - 1) >= 0xFFFFFFF0)
  {
    v5 = _pthread_qos_class_to_thread_qos(__qos_class);
  }

  else
  {
    v5 = 0;
  }

  if (__attr->__sig != 1414022209)
  {
    return 22;
  }

  v6 = *&__attr->__opaque[32];
  if ((v6 & 0x1000000) != 0)
  {
    return 22;
  }

  result = 0;
  if (v5)
  {
    v8 = (128 << v5) | v4;
  }

  else
  {
    v8 = 0;
  }

  *&__attr->__opaque[24] = v8;
  *&__attr->__opaque[32] = v6 | 0x2000000;
  return result;
}

uint64_t _pthread_main_thread_init(uint64_t a1, int a2)
{
  __pthread_head = 0;
  off_1ED3F8028 = &__pthread_head;
  _pthread_list_lock = 0;
  *(a1 + 72) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 52) = 0;
  if (!a2)
  {
    a2 = MEMORY[0x1E12CEE70]();
  }

  *(a1 + 248) = a2;
  name = 0;
  *&v8.flags = xmmword_1DF1582B0;
  v8.reserved[1] = 0;
  result = mach_port_construct(*MEMORY[0x1E69E9A60], &v8, 0, &name);
  *(a1 + 240) = name;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  v4 = __pthread_head;
  *(a1 + 16) = __pthread_head;
  v5 = v4 + 24;
  v6 = v4 == 0;
  __pthread_head = a1;
  v7 = &off_1ED3F8028;
  if (!v6)
  {
    v7 = v5;
  }

  *v7 = a1 + 16;
  *(a1 + 24) = &__pthread_head;
  _pthread_count = 1;
  if (_pthread_introspection_hook)
  {
    return _pthread_introspection_hook_callout_thread_start(a1);
  }

  return result;
}

uint64_t _pthread_bsdthread_init(uint64_t a1)
{
  _platform_bzero();
  *a1 = xmmword_1DF158270;
  *(a1 + 24) = 0x28000000E0;
  *(a1 + 32) = 24;
  *(a1 + 48) = 0x3C000000188;
  v2 = *MEMORY[0x1E69E9AB8];
  result = __bsdthread_register();
  if (result >= 1)
  {
    if ((~result & 0x4000001E) != 0)
    {
      _pthread_bsdthread_init_cold_1(result);
    }

    __pthread_supported_features = result;
  }

  v4 = *(a1 + 16);
  if ((v4 & 0x22000000) == 0 && (v4 & 0x3F00) != 0)
  {
    result = _pthread_set_main_qos(*(a1 + 16));
    *(_main_thread_ptr + 256) = v4;
  }

  if (*(a1 + 36))
  {
    __pthread_stack_hint = *(a1 + 36);
  }

  if (__libdispatch_workerfunction)
  {

    return __workq_open();
  }

  return result;
}

unsigned __int8 *_pthread_mutex_global_init(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 44);
  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3 <= 3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  if (*(a2 + 44))
  {
    v6 = v5;
  }

  else
  {
    v6 = 2;
  }

  v7 = _simple_getenv();
  if (v7)
  {
    v8 = *v7 == 49 ? 1 : 2;
    if ((*v7 - 48) <= 3)
    {
      v6 = v8;
    }
  }

  if (v6 != __pthread_mutex_default_opt_policy)
  {
    __pthread_mutex_default_opt_policy = v6;
  }

  v9 = _simple_getenv();
  if (v9)
  {
    v10 = *v9 == 49;
  }

  else
  {
    v11 = *(a2 + 44);
    if (v11)
    {
      v10 = (v11 >> 8) & 1;
    }

    else
    {
      v10 = 0;
    }
  }

  if (__pthread_mutex_use_ulock != v10)
  {
    __pthread_mutex_use_ulock = v10;
  }

  result = _simple_getenv();
  if (result)
  {
    v13 = *result == 49;
  }

  else
  {
    v14 = *(a2 + 44);
    if (v14)
    {
      v13 = (v14 >> 9) & 1;
    }

    else
    {
      v13 = 0;
    }
  }

  if (__pthread_mutex_ulock_adaptive_spin != v13)
  {
    __pthread_mutex_ulock_adaptive_spin = v13;
  }

  return result;
}

void pthread_exit(void *a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if ((*(StatusReg - 146) & 0x400) != 0)
  {
    qword_1ECE00010 = "BUG IN CLIENT OF LIBPTHREAD: pthread_exit() called from a thread not created by pthread_create()";
    __break(0xB001u);
  }

  else if ((_pthread_ptr_munge_token ^ *(StatusReg - 224)) == StatusReg - 224)
  {
    _pthread_exit((StatusReg - 224), a1);
  }

  v2 = abort_with_reason();
  _pthread_exit(v2, v3);
}

void _pthread_exit(_opaque_pthread_t *a1, uint64_t a2)
{
  __disable_threadsignal();
  _pthread_setcancelstate_exit(a1);
  for (i = a1->__cleanup_stack; i; a1->__cleanup_stack = i)
  {
    (i->__routine)(i->__arg);
    i = i->__next;
  }

  _pthread_tsd_cleanup(a1);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 72);
  *(StatusReg + 72) = 0;
  if (v6)
  {
    goto LABEL_5;
  }

  while (1)
  {
    _pthread_terminate_invoke(a1, a2);
LABEL_5:
    _os_semaphore_dispose();
  }
}

uint64_t _pthread_tsd_cleanup(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 2272;
  v4 = result + 1224;
  if (__pthread_key_legacy_behaviour)
  {
    do
    {
      v5 = *(v1 + 76);
      if (v5 >= 0x100)
      {
        v6 = 0;
        do
        {
          v7 = _pthread_keys[v6 + 256];
          if (v7)
          {
            result = *(v3 + 8 * v6);
            if (result)
            {
              *(v3 + 8 * v6) = 0;
              if (v7 != -1)
              {
                result = (~v7)();
                LOWORD(v5) = *(v1 + 76);
              }
            }
          }

          v8 = v6 + 256;
          ++v6;
        }

        while (v8 < v5);
      }

      for (i = 0; i != 85; ++i)
      {
        v10 = _pthread_keys[i + 125];
        if (v10)
        {
          result = *(v4 + i * 8);
          if (result)
          {
            *(v4 + i * 8) = 0;
            if (v10 != -1)
            {
              result = (~v10)();
            }
          }
        }
      }

      ++v2;
    }

    while (v2 != 4);
    v11 = 0;
    *(v1 + 76) = 0;
    v12 = v1 + 304;
    do
    {
      v13 = __pthread_tsd_max;
      if (__pthread_tsd_max >= 0xA)
      {
        v14 = 0;
        do
        {
          v15 = _pthread_keys[v14 + 10];
          if (v15)
          {
            result = *(v12 + 8 * v14);
            if (result)
            {
              *(v12 + 8 * v14) = 0;
              if (v15 != -1)
              {
                result = (~v15)();
                v13 = __pthread_tsd_max;
              }
            }
          }

          v16 = v14 + 10;
          ++v14;
        }

        while (v16 < v13);
      }

      if (__pthread_key_legacy_behaviour_log == 1 && *(v1 + 76))
      {
        for (j = 0; j != 256; ++j)
        {
          v18 = _pthread_keys[j + 256];
          if (v18)
          {
            if (v18 != -1 && *(v1 + 2272 + j * 8) != 0)
            {
              result = _simple_asl_log();
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != 4);
  }

  else
  {
    v20 = result + 304;
    do
    {
      v21 = *(v1 + 76);
      if (v21 >= 0x100)
      {
        v22 = 0;
        do
        {
          v23 = _pthread_keys[v22 + 256];
          if (v23)
          {
            result = *(v3 + 8 * v22);
            if (result)
            {
              *(v3 + 8 * v22) = 0;
              if (v23 != -1)
              {
                result = (~v23)();
                LOWORD(v21) = *(v1 + 76);
              }
            }
          }

          v24 = v22 + 256;
          ++v22;
        }

        while (v24 < v21);
      }

      for (k = 0; k != 85; ++k)
      {
        v26 = _pthread_keys[k + 125];
        if (v26)
        {
          result = *(v4 + k * 8);
          if (result)
          {
            *(v4 + k * 8) = 0;
            if (v26 != -1)
            {
              result = (~v26)();
            }
          }
        }
      }

      v27 = __pthread_tsd_max;
      if (__pthread_tsd_max >= 0xA)
      {
        v28 = 0;
        do
        {
          v29 = _pthread_keys[v28 + 10];
          if (v29)
          {
            result = *(v20 + 8 * v28);
            if (result)
            {
              *(v20 + 8 * v28) = 0;
              if (v29 != -1)
              {
                result = (~v29)();
                v27 = __pthread_tsd_max;
              }
            }
          }

          v30 = v28 + 10;
          ++v28;
        }

        while (v30 < v27);
      }

      ++v2;
    }

    while (v2 != 4);
    *(v1 + 76) = 0;
  }

  return result;
}

uint64_t _pthread_setcancelstate_exit(uint64_t result)
{
  v1 = *(result + 166);
  v2 = v1;
  do
  {
    atomic_compare_exchange_strong_explicit((result + 166), &v2, v1 & 0xFFDC | 0x22, memory_order_relaxed, memory_order_relaxed);
    v3 = v2 == v1;
    v1 = v2;
  }

  while (!v3);
  return result;
}

uint64_t _pthread_terminate(pthread_t a1, uint64_t a2)
{
  if (_pthread_introspection_hook)
  {
    _pthread_introspection_hook_callout_thread_terminate(a1);
  }

  v4 = *&a1->__opaque[176];
  v5 = *&a1->__opaque[184];
  if (v4 < a1 && v4 + v5 > a1)
  {
    v10 = (a1 - v4) & -*MEMORY[0x1E69E9AC8];
    *&a1->__opaque[176] = v4 + v10;
    *&a1->__opaque[184] = v5 - v10;
  }

  else if (_main_thread_ptr == a1)
  {
    v7 = *&a1->__opaque[160];
    v8 = v7 - pthread_get_stacksize_np(a1);
    v9 = (_pthread_current_stack_address() & -*MEMORY[0x1E69E9AC8]) - v8;
  }

  v11 = *&a1->__opaque[232];
  if (*&a1->__opaque[272])
  {
    *&a1->__opaque[272] = 0;
    thread_destruct_special_reply_port();
  }

  v12 = *&a1->__opaque[224];
  if (v12)
  {
    mig_dealloc_reply_port(v12);
  }

  os_unfair_lock_lock_with_options();
  *&a1->__opaque[36] = -1;
  *&a1->__opaque[24] = a2;
  v13 = _pthread_count--;
  v14 = *&a1->__opaque[16];
  if (v14)
  {
    _pthread_joiner_prepost_wake(a1);
  }

  v15 = a1->__opaque[33];
  v16 = v15 & 1;
  if (v15)
  {
    a1->__opaque[33] = v15 | 2;
  }

  else
  {
    v17 = *a1->__opaque;
    v18 = *&a1->__opaque[8];
    v19 = (v17 + 24);
    if (!v17)
    {
      v19 = &off_1ED3F8028;
    }

    *v19 = v18;
    *v18 = v17;
  }

  os_unfair_lock_unlock(&_pthread_list_lock);
  if (v14)
  {
    _pthread_joiner_wake();
    os_unfair_lock_lock_with_options();
    if (*&a1->__opaque[16])
    {
      a1->__opaque[33] |= 2u;
      v16 = 1;
    }

    os_unfair_lock_unlock(&_pthread_list_lock);
  }

  if ((v16 & 1) == 0 && _main_thread_ptr != a1 && _pthread_introspection_hook)
  {
    _pthread_introspection_hook_callout_thread_destroy(a1);
  }

  if (v13 <= 1)
  {
    exitf(0);
  }

  result = __bsdthread_terminate();
  qword_1ECE00010 = "BUG IN LIBPTHREAD: thread didn't terminate";
  qword_1ECE00040 = a1;
  __break(0xB001u);
  return result;
}

void _pthread_terminate_invoke(pthread_t a1, uint64_t a2)
{
  if (((&vars0 ^ a1) & -*MEMORY[0x1E69E9AC8]) == 0)
  {
    bzero(&v6, 0x3000uLL);
  }

  v4 = _pthread_terminate(a1, a2);
  bzero(v4, v5);
}

size_t pthread_get_stacksize_np(pthread_t a1)
{
  if (!a1)
  {
    return 3;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224) == a1 || _main_thread_ptr == a1)
  {
    v3 = *&a1->__opaque[160] - *&a1->__opaque[168];
    if (v3)
    {
      return v3;
    }

    return 0x80000;
  }

  os_unfair_lock_lock_with_options();
  v4 = __pthread_head;
  if (!__pthread_head)
  {
LABEL_13:
    os_unfair_lock_unlock(&_pthread_list_lock);
    return 0x80000;
  }

  while (v4 != a1)
  {
    v4 = *v4->__opaque;
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if ((_pthread_ptr_munge_token ^ v4->__sig) != a1)
  {
    pthread_mach_thread_np_cold_1();
  }

  v3 = *&a1->__opaque[160] - *&a1->__opaque[168];
  os_unfair_lock_unlock(&_pthread_list_lock);
  if (!v3)
  {
    return 0x80000;
  }

  return v3;
}

uint64_t _pthread_key_global_init()
{
  if (_simple_getenv())
  {
    __pthread_key_legacy_behaviour = 1;
  }

  result = _simple_getenv();
  if (result)
  {
    __pthread_key_legacy_behaviour_log = 1;
  }

  return result;
}

int pthread_mutex_trylock(pthread_mutex_t *a1)
{
  if (a1->__sig != 1297437786)
  {
    return _pthread_mutex_lock_init_slow(a1, 1);
  }

  v1 = *&a1->__opaque[4];
  if ((v1 & 0x1C0) == 0x40)
  {
    return _pthread_mutex_fairshare_lock(a1, 1);
  }

  if ((v1 & 0x4000) != 0)
  {
    v9 = 0;
    atomic_compare_exchange_strong_explicit(&a1->__opaque[16], &v9, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
    if (v9)
    {
      return 16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = (&a1->__opaque[23] & 0xFFFFFFFFFFFFFFF8);
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
    v4 = (&a1->__opaque[31] & 0xFFFFFFFFFFFFFFF8);
    v5 = *v4;
    while ((v5 & 2) == 0)
    {
      v6 = v5;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 | 2, memory_order_acquire, memory_order_acquire);
      v7 = v6 == v5;
      v5 = v6;
      if (v7)
      {
        result = 0;
        *v2 = v3;
        return result;
      }
    }

    __dmb(9u);
    return 16;
  }
}

uint64_t _pthread_yield_to_enqueuer_4dispatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock_with_options();
  v6 = __pthread_head;
  if (__pthread_head)
  {
    do
    {
      v7 = v6[a1 + 28];
      if (a2)
      {
        if (v7 == a2)
        {
          goto LABEL_8;
        }
      }

      else if (v7)
      {
LABEL_8:
        v8 = *(v6 + 62);
        goto LABEL_9;
      }

      v6 = v6[2];
    }

    while (v6);
  }

  v8 = 0;
LABEL_9:
  os_unfair_lock_unlock(&_pthread_list_lock);
  MEMORY[0x1E12CEF70](v8, 4, a3);
  return 0;
}

int pthread_setspecific(pthread_key_t a1, const void *a2)
{
  if (a1 - 10 > 0x1F5)
  {
    return 22;
  }

  v2 = _pthread_keys[a1];
  if (a1 >= 0x100 && !v2)
  {
    return 22;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 8 * a1) = a2;
  if (a1 <= 0xFF && !v2)
  {
    _pthread_keys[a1] = -1;
  }

  v3 = 0;
  if (*(StatusReg - 148) < a1)
  {
    *(StatusReg - 148) = a1;
  }

  return v3;
}

uint64_t _pthread_rwlock_lock_wait(uint64_t a1, int a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v5 = *(a1 + 16);
    result = a2 ? __psynch_rw_rdlock() : __psynch_rw_wrlock();
    if (result != -1)
    {
      break;
    }

    v7 = **(StatusReg + 8);
    if (v7 != 4)
    {
      if (v7)
      {
        qword_1ECE00010 = "BUG IN LIBPTHREAD: kernel rwlock returned unknown error";
        qword_1ECE00040 = v7;
        __break(0xB001u);
        return result;
      }

      break;
    }
  }

  v8 = ((a1 + 47) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v8;
  do
  {
    v10 = HIDWORD(v9);
    if (result & 0x40 | BYTE4(v9) & 2)
    {
      v12 = result | v9;
      if (v9 & 4 | result & 1)
      {
        v13 = 191;
      }

      else
      {
        v13 = 190;
      }

      v14 = v13 & v12;
      if ((((v12 & 6) == 0) & (HIDWORD(v9) >> 2)) != 0)
      {
        v15 = v14 | 5;
      }

      else
      {
        v15 = v14;
      }

      v11 = v15 | v9 & 0xFFFFFF00;
      v16 = (result & 0xFFFFFF00) + HIDWORD(v9);
      if ((result & 0x40) == 0)
      {
        v16 &= 0xFFFFFF00;
      }

      v10 = v16 & 0xFFFFFFFB;
    }

    else
    {
      v11 = v9;
    }

    v17 = v11 | (v10 << 32);
    v18 = v9;
    atomic_compare_exchange_strong_explicit(v8, &v18, v17, memory_order_relaxed, memory_order_relaxed);
    v19 = v18 == v9;
    v9 = v18;
  }

  while (!v19);
  return result;
}

uint64_t _pthread_mutex_fairshare_lock(uint64_t a1, int a2)
{
  v2 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  v3 = *v2;
  if ((*v2 & 2) != 0)
  {
    return _pthread_mutex_fairshare_lock_slow(a1, a2);
  }

  v4 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  do
  {
    while (1)
    {
      v6 = v3;
      if (a2)
      {
        if ((v3 & 2) != 0)
        {
          break;
        }
      }

      if ((v3 & 2) != 0)
      {
        return _pthread_mutex_fairshare_lock_slow(a1, a2);
      }

      atomic_compare_exchange_strong_explicit(v2, &v3, v3 & 0xFFFFFFFF00000000 | ((v3 | 3) + 256), memory_order_acquire, memory_order_acquire);
      if (v3 == v6)
      {
        result = 0;
        *v4 = v5;
        return result;
      }
    }

    atomic_compare_exchange_strong_explicit(v2, &v3, v3, memory_order_acquire, memory_order_acquire);
  }

  while (v3 != v6);
  return 16;
}

int pthread_mutex_init(pthread_mutex_t *a1, const pthread_mutexattr_t *a2)
{
  *a1->__opaque = 0x200000000000;
  if (a2)
  {
    if (a2->__sig != 1297373249)
    {
      return 22;
    }

    *&a1->__opaque[8] = *a2->__opaque;
    v2 = *&a2->__opaque[4] & 3 | 0x2000;
    *&a1->__opaque[4] = v2;
    v3 = *&a2->__opaque[4] & 0x1C0 | v2;
    *&a1->__opaque[4] = v3;
    v4 = *&a2->__opaque[4] & 0xC | v3;
    *&a1->__opaque[4] = v4;
    v5 = *&a2->__opaque[4] & 0x30 | v4;
  }

  else
  {
    *&a1->__opaque[8] = 0;
    v5 = ((__pthread_mutex_default_opt_policy & 7) << 6) | 0x2020;
  }

  v6 = 1297437784;
  *&a1->__opaque[10] = 0;
  if ((v5 & 0xC) == 0)
  {
    v7 = v5 & 0x1C0;
    if (v7 == 128 || v7 == 64)
    {
      v6 = 1297437786;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    if (v7 == 128)
    {
      v10 = v8 ^ 1;
      if ((v5 & 0x30) != 0x20)
      {
        v10 = 1;
      }

      if ((v10 & 1) == 0)
      {
        v5 = v5 & 0x3EA3 | (__pthread_mutex_use_ulock << 14);
      }
    }
  }

  *&a1->__opaque[4] = v5;
  if ((v5 & 0x4000) != 0)
  {
    *&a1->__opaque[24] = -1;
    *&a1->__opaque[32] = -1;
    *&a1->__opaque[16] = -1;
    *&a1->__opaque[16] = 0;
  }

  else
  {
    v11 = (&a1->__opaque[23] & 0xFFFFFFFFFFFFFFF8);
    if (&a1->__opaque[16] != v11)
    {
      *&a1->__opaque[4] = v5 | 0x800;
      *&a1->__opaque[16] = -1;
    }

    *&a1->__opaque[32] = -1;
    v11->__sig = 0;
    *(&a1->__opaque[31] & 0xFFFFFFFFFFFFFFF8) = 0;
  }

  v9 = 0;
  *&a1->__opaque[40] = ~a1;
  *&a1->__opaque[48] = v6;
  *&a1->__opaque[52] = v6;
  *&a1->__opaque[12] = v6;
  HIDWORD(a1->__sig) = 0;
  atomic_store(v6, a1);
  return v9;
}

int pthread_cond_init(pthread_cond_t *a1, const pthread_condattr_t *a2)
{
  *&v2 = 0;
  *&a1->__opaque[8] = v2;
  *&a1->__opaque[24] = 0;
  v3 = *&a1->__opaque[4];
  v4 = (((a1 + 24) & 7) != 0) << 29;
  *a1->__opaque = 0;
  *&a1->__opaque[4] = v3 & 0xC0000000 | v4;
  v5 = 32;
  if (((a1 + 24) & 7) == 0)
  {
    v5 = 28;
  }

  *(&a1->__sig + v5) = 1;
  if (a2)
  {
    v6 = v4 | (*a2->__opaque << 30);
  }

  else
  {
    v6 = v4 | 0x80000000;
  }

  *&a1->__opaque[4] = v6;
  HIDWORD(a1->__sig) = 0;
  atomic_store(0x434F4E44u, a1);
  return 0;
}

void _pthread_clear_qos_tsd(int a1)
{
  if (a1 && *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) != a1)
  {
    os_unfair_lock_lock_with_options();
    v2 = __pthread_head;
    if (__pthread_head)
    {
      while (*(v2 + 62) != a1)
      {
        v2 = v2[2];
        if (!v2)
        {
          goto LABEL_9;
        }
      }

      v2[32] = 0;
    }

LABEL_9:

    os_unfair_lock_unlock(&_pthread_list_lock);
  }

  else
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) = 0;
  }
}

uint64_t _pthread_workloop_create(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = 22;
  if (a2 <= 1 && a3)
  {
    if ((*(a3 + 40) & 0x1000000) != 0)
    {
      v4 = *(a3 + 32);
    }

    if ((*(a3 + 48) + 1) >= 2)
    {
      v5 = *(a3 + 48);
    }

    result = __kqueue_workloop_ctl();
    if (result == -1)
    {
      return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    }
  }

  return result;
}

qos_class_t qos_class_self(void)
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
  v1 = (v0 & 0x22000000) != 0 || (v0 & 0x3F00) == 0;
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v3 = (v0 >> 8) & 0x3F;
    v1 = v3 == 0;
    v4 = __clz(__rbit32(v3));
    if (v1)
    {
      v2 = 0;
    }

    else
    {
      v2 = v4 + 1;
    }
  }

  return _pthread_qos_class_from_thread_qos_thread_qos_to_qos_class[v2];
}

int pthread_rwlock_init(pthread_rwlock_t *a1, const pthread_rwlockattr_t *a2)
{
  if (a2 && a2->__sig != 1381452865)
  {
    return 22;
  }

  if (a1->__sig != 1381452875)
  {
    goto LABEL_7;
  }

  LODWORD(_X2) = *(&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0);
  v3 = *((&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0) + 4);
  LODWORD(_X3) = *((&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0) + 8);
  v5 = *((&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0) + 0xC);
  do
  {
    v6 = _X3 | (v5 << 32);
    _X4 = _X2 | (v3 << 32);
    _X3 = v6;
    __asm { CASP            X2, X3, X4, X5, [X8] }

    v5 = HIDWORD(v6);
    v3 = HIDWORD(_X2);
  }

  while (_X2 != _X4);
  if ((_X2 & 0xFFFFFF00) != v6)
  {
    return 16;
  }

LABEL_7:
  *a1->__opaque = 0;
  v12 = (&a1->__opaque[23] & 0xFFFFFFFFFFFFFFF8);
  v13 = &a1->__opaque[24];
  v14 = (&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0);
  if (&a1->__opaque[16] != v12)
  {
    *&a1->__opaque[4] |= 0x20000000u;
    *&a1->__opaque[16] = -1;
  }

  if (v13 != v14)
  {
    *v13 = -1;
    *&a1->__opaque[32] = -1;
  }

  *&a1->__opaque[40] = -1;
  *&a1->__opaque[48] = -1;
  v12->__sig = 0;
  *v14 = 0x1000000C0;
  *((&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0) + 8) = 0;
  if (a2 && *a2->__opaque == 1)
  {
    v15 = 16;
    v16 = 0x40000000;
  }

  else
  {
    v15 = 32;
    v16 = 0x80000000;
  }

  v17 = 0;
  *&a1->__opaque[4] = *&a1->__opaque[4] & 0x3FFFFFFF | v16;
  *&a1->__opaque[8] = v15;
  *&a1->__opaque[56] = ~a1;
  *&a1->__opaque[188] = 1381452875;
  *&a1->__opaque[12] = 1381452875;
  HIDWORD(a1->__sig) = 0;
  atomic_store(0x52574C4Bu, a1);
  return v17;
}

int pthread_rwlock_trywrlock(pthread_rwlock_t *a1)
{
  if (a1->__sig != 1381452875)
  {
    return _pthread_rwlock_lock_slow(a1, 0, 1);
  }

  v1 = (&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0);
  v2 = *v1;
  if ((*v1 & 2) != 0)
  {
    return _pthread_rwlock_lock_slow(a1, 0, 1);
  }

  *(&v4 + 1) = *((&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0) + 8);
  *&v4 = *v1;
  v3 = v4 >> 32;
  do
  {
    v5 = v2 | (v3 << 32);
    v6 = v2 & 0x40;
    if ((v2 & 0x40) != 0)
    {
      v2 = (v2 & 0xFFFFFF00) + 387;
    }

    else
    {
      v2 = v2;
    }

    v7 = v2 | ((v3 + 4 * v6) << 32);
    v2 = v5;
    atomic_compare_exchange_strong_explicit(v1, &v2, v7, memory_order_acquire, memory_order_acquire);
    v3 = HIDWORD(v2);
  }

  while (v2 != v5);
  if (!v6)
  {
    return 16;
  }

  v8 = 0;
  *(&a1->__opaque[23] & 0xFFFFFFFFFFFFFFF8) = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  return v8;
}

uint64_t _pthread_workqueue_override_start_direct()
{
  result = __bsdthread_ctl();
  if (result == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return result;
}

int pthread_mutex_destroy(pthread_mutex_t *a1)
{
  v2 = 0;
  opaque = a1->__opaque;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(a1->__opaque, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((a1->__sig & 0xFFFFFFFDLL) == 0x4D555458)
  {
    if (((a1->__opaque[5] & 0x40) == 0 || *&a1->__opaque[16]) && *(&a1->__opaque[23] & 0xFFFFFFFFFFFFFFF8) | (*(&a1->__opaque[31] & 0xFFFFFFFFFFFFFFF8) ^ HIDWORD(*(&a1->__opaque[31] & 0xFFFFFFFFFFFFFFF8))) & 0xFFFFFF00)
    {
      v5 = 16;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ((a1->__sig & 0xFFFFFFF0) == 0x32AAABA0)
  {
LABEL_9:
    v5 = 0;
    a1->__sig = 0;
    goto LABEL_11;
  }

  v5 = 22;
LABEL_11:
  v6 = *(StatusReg + 24);
  v7 = v6;
  atomic_compare_exchange_strong_explicit(opaque, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != v6)
  {
    os_unfair_lock_unlock(opaque);
  }

  return v5;
}

uint64_t pthread_dependency_init_np(void *a1, pthread_t a2, char *a3)
{
  if (a3)
  {
    v4 = *a3;
  }

  result = pthread_mach_thread_np(a2);
  *a1 = result;
  a1[1] = 0;
  return result;
}

mach_port_t pthread_mach_thread_np(pthread_t a1)
{
  v1 = a1;
  if ((_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224) == a1)
  {
    if ((_pthread_ptr_munge_token ^ a1->__sig) != a1)
    {
      pthread_mach_thread_np_cold_1();
    }

    LODWORD(v1) = *&a1->__opaque[232];
  }

  else if (a1)
  {
    os_unfair_lock_lock_with_options();
    v2 = __pthread_head;
    if (__pthread_head)
    {
      while (v2 != v1)
      {
        v2 = v2[2];
        if (!v2)
        {
          goto LABEL_6;
        }
      }

      if ((_pthread_ptr_munge_token ^ *v2) != v1)
      {
        pthread_mach_thread_np_cold_1();
      }

      LODWORD(v1) = *&v1->__opaque[232];
      os_unfair_lock_unlock(&_pthread_list_lock);
    }

    else
    {
LABEL_6:
      os_unfair_lock_unlock(&_pthread_list_lock);
      LODWORD(v1) = 0;
    }
  }

  return v1;
}

uint64_t pthread_dependency_fulfill_np(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2;
  v2 = atomic_exchange_explicit((result + 4), 0xFFFFFFFF, memory_order_release);
  if (v2)
  {
    return _pthread_dependency_fulfill_slow(result, v2);
  }

  return result;
}

uint64_t pthread_dependency_wait_np(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 4);
  atomic_compare_exchange_strong_explicit((a1 + 4), &v2, *a1, memory_order_relaxed, memory_order_relaxed);
  if (!v2)
  {
    do
    {
      v4 = __ulock_wait();
      if (v4 != 0 && v4 < 0xFFFFFFF2 || ((1 << (v4 + 14)) & 0x4401) == 0)
      {
        if (v4 == -105)
        {
          pthread_dependency_wait_np_cold_1(a1);
        }

        pthread_dependency_wait_np_cold_3(v4);
      }
    }

    while (*(a1 + 4) == *a1);
  }

  explicit = atomic_load_explicit(v3, memory_order_acquire);
  if (explicit != -1)
  {
    pthread_dependency_wait_np_cold_2(explicit);
  }

  return *(a1 + 8);
}

uint64_t _pthread_dependency_fulfill_slow(uint64_t result, unsigned int a2)
{
  if (a2 == -1)
  {
    goto LABEL_7;
  }

  if (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) != a2)
  {
    qword_1ECE00010 = "BUG IN CLIENT OF LIBPTHREAD: Fulfilled a dependency not owned by current thread";
    qword_1ECE00040 = a2;
    __break(0xB001u);
LABEL_7:
    qword_1ECE00010 = "BUG IN CLIENT OF LIBPTHREAD: Fufilling pthread_dependency_t twice";
    __break(0xB001u);
LABEL_8:
    qword_1ECE00010 = "BUG IN LIBPTHREAD: __ulock_wake() failed";
    qword_1ECE00040 = -result;
    __break(0xB001u);
    return result;
  }

  result = __ulock_wake();
  if (result && result != -2)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t _pthread_workloop_destroy()
{
  result = __kqueue_workloop_ctl();
  if (result == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return result;
}

void _pthread_wqthread_exit(uint64_t a1)
{
  if ((*(a1 + 256) & 0x22000000) != 0 || (*(a1 + 256) & 0xF00) == 0)
  {
    *(a1 + 256) = 2303;
  }

  _pthread_exit(a1, 0);
}

int pthread_atfork(void (*a1)(void), void (*a2)(void), void (*a3)(void))
{
  if (*(MEMORY[0x1E69E99F0] + 256) == -1)
  {
    v6 = *(MEMORY[0x1E69E99F0] + 264);
  }

  else
  {
    v6 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  v7 = *(v6 + 16);
  if (v7 == 10)
  {
    v8 = *(v6 + 264);
    if (v8 != v6 + 24)
    {
      pthread_atfork_cold_1(v8);
    }

    address = 0;
    if (!mach_vm_map(*MEMORY[0x1E69E9A60], &address, 24 * (*MEMORY[0x1E69E9AC8] / 0x18uLL), *MEMORY[0x1E69E9AC8] - 1, 1224736769, 0, 0, 0, 3, 7, 1u))
    {
      *(v6 + 264) = address;
      _platform_memmove();
      _platform_bzero();
      v7 = *(v6 + 16);
      goto LABEL_10;
    }

LABEL_11:
    v9 = 12;
    goto LABEL_12;
  }

  if (v7)
  {
    if (v7 < *MEMORY[0x1E69E9AC8] / 0x18uLL)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  *(v6 + 264) = v6 + 24;
LABEL_10:
  v9 = 0;
  v10 = (*(v6 + 264) + 24 * v7);
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  *(v6 + 16) = v7 + 1;
LABEL_12:
  os_unfair_lock_unlock((v6 + 12));
  return v9;
}

uint64_t _pthread_rwlock_unlock_slow(void *a1, int a2)
{
  if (*a1 == 1381452875 || (result = _pthread_rwlock_check_init_slow(a1), !result))
  {
    v5 = ((a1 + 47) & 0xFFFFFFFFFFFFFFF0);
    LODWORD(_X2) = *v5;
    if ((*v5 & 0x40) == 0)
    {
      v8 = *(((a1 + 47) & 0xFFFFFFFFFFFFFFF0) + 4);
      LODWORD(_X3) = *(((a1 + 47) & 0xFFFFFFFFFFFFFFF0) + 8);
      v9 = *(((a1 + 47) & 0xFFFFFFFFFFFFFFF0) + 0xC);
      if ((_X2 & 2) != 0)
      {
        *((a1 + 31) & 0xFFFFFFFFFFFFFFF8) = 0;
      }

      v10 = 3;
      do
      {
        v11 = v9;
        v10 &= ~a2;
        v12 = ((v10 << 7) & 0x100) + _X3;
        if (v12 == (_X2 & 0xFFFFFF00))
        {
          v13 = 0;
          v14 = v12 | 0xC0;
          v15 = v12 | 1u;
        }

        else if ((_X2 & 7) != 0)
        {
          v14 = _X2 & 0xFFFFFF00 | 1;
          LODWORD(v15) = _X2 & 4 | v8 | 2;
          if (v12 == (v8 & 0xFFFFFF00))
          {
            v15 = v15;
          }

          else
          {
            v14 = _X2;
            v15 = v8;
          }

          v13 = v12 == (v8 & 0xFFFFFF00);
        }

        else
        {
          v13 = 0;
          v14 = _X2;
          v15 = v8;
        }

        result = _X2 | (v8 << 32);
        if (v10 == 1)
        {
          _X2 = _X2 | (v8 << 32);
          atomic_compare_exchange_strong_explicit(v5, &_X2, v14 | (v15 << 32), memory_order_release, memory_order_relaxed);
          a2 = _X2 == result;
          v8 = HIDWORD(_X2);
          v9 = v11;
        }

        else
        {
          if (v10 != 3)
          {
            __break(1u);
            return result;
          }

          _X4 = v14 | (v15 << 32);
          _X3 = _X3 | (v11 << 32);
          __asm { CASPL           X2, X3, X4, X5, [X8] }

          _ZF = _X2 == result;
          v9 = HIDWORD(_X3);
          v8 = HIDWORD(_X2);
          if (_ZF)
          {
            a2 = 3;
          }

          else
          {
            a2 = 0;
          }
        }
      }

      while (v10 != a2);
      if (v13)
      {
        _pthread_rwlock_unlock_drop(a1);
      }
    }

    return 0;
  }

  return result;
}

uint64_t _pthread_rwlock_unlock_drop(uint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v3 = *(a1 + 16);
    result = __psynch_rw_unlock();
    if (result != -1)
    {
      break;
    }

    v5 = **(StatusReg + 8);
    if (v5 != 4)
    {
      if (v5)
      {
        qword_1ECE00010 = "BUG IN LIBPTHREAD: kernel rwunlock returned unknown error";
        qword_1ECE00040 = v5;
        __break(0xB001u);
      }

      return result;
    }
  }

  return result;
}

int pthread_set_qos_class_self_np(qos_class_t __qos_class, int __relative_priority)
{
  if ((__relative_priority - 1) < 0xFFFFFFF0)
  {
    return 22;
  }

  v3 = _pthread_qos_class_to_thread_qos(__qos_class);
  if (!v3)
  {
    return 22;
  }

  return _pthread_set_properties_self(1, (128 << v3) | (__relative_priority + 255));
}

uint64_t __pthread_late_init()
{
  if (_pthread_jit_config[0] == 1)
  {
    if ((__pthread_supported_features & 0x200) != 0)
    {
      result = _dyld_register_for_bulk_image_loads();
    }

    if ((byte_1ECE08001 & 1) == 0)
    {
      byte_1ECE08002 = 1;

      return _pthread_jit_write_protect_freeze_config();
    }
  }

  return result;
}

int pthread_mutexattr_settype(pthread_mutexattr_t *a1, int a2)
{
  result = 22;
  if (a2 <= 2 && a1->__sig == 1297373249)
  {
    result = 0;
    *&a1->__opaque[4] = *&a1->__opaque[4] & 0xFFFFFFF3 | (4 * a2);
  }

  return result;
}

int pthread_mutexattr_init(pthread_mutexattr_t *a1)
{
  v1 = *&a1->__opaque[4] & 0xFFFFFE00 | ((__pthread_mutex_default_opt_policy & 7) << 6);
  a1->__sig = 1297373249;
  *a1->__opaque = 0;
  *&a1->__opaque[4] = v1 | 0x20;
  return 0;
}

int pthread_mutexattr_destroy(pthread_mutexattr_t *a1)
{
  if (a1->__sig != 1297373249)
  {
    return 22;
  }

  result = 0;
  a1->__sig = 0;
  return result;
}

int pthread_attr_setdetachstate(pthread_attr_t *a1, int a2)
{
  result = 22;
  if ((a2 - 1) <= 1 && a1->__sig == 1414022209)
  {
    result = 0;
    *&a1->__opaque[32] = *&a1->__opaque[32] & 0xFFFFFFFFFFFFFF00 | a2;
  }

  return result;
}

int pthread_attr_destroy(pthread_attr_t *a1)
{
  if (a1->__sig != 1414022209)
  {
    return 22;
  }

  v2 = *&a1->__opaque[40];
  if (v2 + 1 < 2 || (result = mach_port_mod_refs(*MEMORY[0x1E69E9A60], v2, 0, -1)) == 0)
  {
    result = 0;
    a1->__sig = 0;
  }

  return result;
}

uint64_t _pthread_introspection_hook_callout_thread_start(void *a1)
{
  if (_main_thread_ptr == a1)
  {
    v3 = a1[26];
    v2 = a1[22] - a1[23] + v3;
    v1 = a1[23] - v3;
  }

  else
  {
    v1 = a1[24];
    v2 = a1[25] - (~*MEMORY[0x1E69E9AB8] & (*MEMORY[0x1E69E9AB8] + 4320));
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg - 174);
  *(StatusReg - 174) = 2;
  result = _pthread_introspection_hook(2, a1, v1, v2);
  *(StatusReg - 174) = v5;
  return result;
}

uint64_t _pthread_jit_write_protect_freeze_config()
{
  result = mach_vm_protect(*MEMORY[0x1E69E9A60], &_pthread_jit_config, 0x4000uLL, 1, 1);
  if (result)
  {
    _pthread_jit_write_protect_freeze_config_cold_1(result);
  }

  return result;
}

uint64_t _pthread_mutex_fairshare_unlock(uint64_t a1)
{
  v1 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  v2 = *v1;
  v3 = HIDWORD(*v1);
  if (((v3 ^ *v1) & 0xFFFFFF00) == 0)
  {
    return 0;
  }

  *((a1 + 31) & 0xFFFFFFFFFFFFFFF8) = 0;
  while (1)
  {
    v4 = (v3 + 256);
    if ((v4 ^ v2) > 0xFF)
    {
      break;
    }

    v5 = v2 & 0xFFFFFFFC;
    v2 = v2 | (v3 << 32);
    v6 = v5 | (v4 << 32);
    v7 = v2;
    atomic_compare_exchange_strong_explicit(v1, &v7, v6, memory_order_release, memory_order_relaxed);
    v3 = HIDWORD(v7);
    v8 = v7 == v2;
    LODWORD(v2) = v7;
    if (v8)
    {
      return 0;
    }
  }

  return _pthread_mutex_fairshare_unlock_slow(a1);
}

pthread_override_t pthread_override_qos_class_start_np(pthread_t __pthread, qos_class_t __qos_class, int __relative_priority)
{
  if ((__relative_priority - 1) < 0xFFFFFFF0)
  {
    return 0;
  }

  v5 = _pthread_qos_class_to_thread_qos(__qos_class);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (_pthread_malloc && (v7 = _pthread_malloc(32), (address = v7) != 0))
  {
    v8 = v7;
    v9 = 1;
  }

  else
  {
    if ((pthread_override_qos_class_start_np_cold_1(&address, &v16) & 1) == 0)
    {
      return 0;
    }

    v9 = 0;
    v8 = v16;
  }

  *v8 = 1870030194;
  *(v8 + 8) = __pthread;
  v10 = pthread_mach_thread_np(__pthread);
  *(v8 + 4) = v10;
  *(v8 + 16) = (128 << v6) | (__relative_priority + 255);
  *(v8 + 24) = v9;
  v11 = MEMORY[0x1E69E9A60];
  if (mach_port_mod_refs(*MEMORY[0x1E69E9A60], v10, 0, 1))
  {
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_12:
    mach_vm_deallocate(*v11, address, (*MEMORY[0x1E69E9AC8] + 31) & -*MEMORY[0x1E69E9AC8]);
    return 0;
  }

  v12 = *(v8 + 4);
  v13 = *(v8 + 16);
  if (__bsdthread_ctl())
  {
    mach_port_mod_refs(*v11, *(v8 + 4), 0, -1);
    if (v9)
    {
LABEL_8:
      if (_pthread_free)
      {
        _pthread_free(v8);
      }

      return 0;
    }

    goto LABEL_12;
  }

  return v8;
}

uint64_t _pthread_introspection_hook_callout_thread_terminate(void *a1)
{
  if (_main_thread_ptr == a1)
  {
    v3 = a1[26];
    v2 = a1[22] - a1[23] + v3;
    v1 = a1[23] - v3;
  }

  else
  {
    v1 = a1[24];
    v2 = a1[25] - (~*MEMORY[0x1E69E9AB8] & (*MEMORY[0x1E69E9AB8] + 4320));
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg - 174);
  *(StatusReg - 174) = 3;
  result = _pthread_introspection_hook(3, a1, v1, v2);
  *(StatusReg - 174) = v5;
  return result;
}

uint64_t _pthread_introspection_hook_callout_thread_destroy(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9AB8] + 4320;
  v2 = ~*MEMORY[0x1E69E9AB8];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg - 174);
  *(StatusReg - 174) = 4;
  result = _pthread_introspection_hook(4, a1, a1, v2 & v1);
  *(StatusReg - 174) = v4;
  return result;
}

uint64_t _pthread_mutex_fairshare_lock_slow(uint64_t a1, int a2)
{
  v3 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  v7 = *(a1 + 12);
  if ((v7 & 0xC) == 0 || *v5 != v6)
  {
    do
    {
      v9 = v4;
      v10 = *v5;
      v11 = (v4 | 3) + 256;
      if ((a2 & ((v4 & 2) != 0)) != 0)
      {
        v11 = v4;
      }

      atomic_compare_exchange_strong_explicit(v3, &v4, v4 & 0xFFFFFFFF00000000 | v11, memory_order_acquire, memory_order_acquire);
    }

    while (v4 != v9);
    if ((v9 & 2) != 0)
    {
      if (a2)
      {
        return 16;
      }

      _pthread_mutex_fairshare_lock_wait(a1);
    }

    else
    {
      *v5 = v6;
    }

    v12 = *(a1 + 12);
    if ((v12 & 0xC) != 8)
    {
      return 0;
    }

    result = 0;
    v13 = v12 & 0xFFFB | 0x10000;
    goto LABEL_21;
  }

  if ((*(a1 + 12) & 0xC) == 8)
  {
    if (v7 > 0xFFFEFFFF)
    {
      return 35;
    }

    result = 0;
    v13 = (v7 & 0xFFFFFFFB) + 0x10000;
LABEL_21:
    *(a1 + 12) = v13;
    return result;
  }

  if (a2)
  {
    return 16;
  }

  else
  {
    return 11;
  }
}

int pthread_join(pthread_t a1, void **a2)
{
  pthread_testcancel();

  return _pthread_join(a1, a2, 2);
}

int pthread_override_qos_class_end_np(pthread_override_t __override)
{
  result = _pthread_atomic_xchg_uint32_relaxed(__override);
  if (result == 1870030194)
  {
    pthread_override_qos_class_end_np_cold_1(__override, &v3);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _pthread_mutex_fairshare_unlock_slow(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = v1 & 0xFFFFEFFF;
  v3 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  if ((v1 & 0xC) == 0)
  {
    goto LABEL_5;
  }

  if (*v5 == *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8))
  {
    if ((v1 & 0xC) == 8)
    {
      *(a1 + 12) = v1 & 0xFFFB | ((HIWORD(v1) - 1) << 16);
      if (HIWORD(v1) != 1)
      {
        return 0;
      }
    }

    do
    {
LABEL_5:
      v6 = HIDWORD(v4);
      v7 = *v5;
      if (((HIDWORD(v4) ^ v4) & 0xFFFFFF00) != 0)
      {
        LODWORD(v6) = HIDWORD(v4) + 256;
        v8 = (HIDWORD(v4) + 256) ^ v4;
        if (v8 <= 0xFF)
        {
          v9 = 0;
        }

        else
        {
          v9 = -1;
        }

        v10 = v8 >= 0x100;
        v11 = v8 < 0x100;
        v12 = v4 & 0xFFFFFFFC;
        if (v10)
        {
          v12 = v4;
        }

        if (v10)
        {
          v2 |= 0x1000u;
        }

        if (v7 != v9)
        {
          v13 = *v5;
          atomic_compare_exchange_strong_explicit(v5, &v13, v9, memory_order_relaxed, memory_order_relaxed);
          if (v13 != v7)
          {
            _pthread_mutex_corruption_abort();
          }
        }
      }

      else
      {
        v11 = 0;
        v12 = v4;
      }

      if (((HIDWORD(v4) ^ v4) & 0xFFFFFF00) == 0 || v11)
      {
        v2 &= ~0x1000u;
      }

      v15 = v12 | (v6 << 32);
      v16 = v4;
      atomic_compare_exchange_strong_explicit(v3, &v16, v15, memory_order_release, memory_order_relaxed);
      v17 = v16 == v4;
      v4 = v16;
    }

    while (!v17);
    if ((v2 & 0x1000) != 0)
    {
      _pthread_mutex_fairshare_unlock_drop(a1);
    }

    return 0;
  }

  return 1;
}

uint64_t _pthread_join(uint64_t a1, uint64_t *a2, int a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = (StatusReg - 224);
  v36[0] = StatusReg - 224;
  v36[1] = a2;
  v37 = 0;
  if (!a1)
  {
    return 3;
  }

  v8 = 0;
  v38 = 0;
  atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v8, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    os_unfair_lock_lock_with_options();
  }

  v9 = __pthread_head;
  if (!__pthread_head)
  {
LABEL_7:
    v10 = *(StatusReg + 24);
    v11 = v10;
    atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 != v10)
    {
      os_unfair_lock_unlock(&_pthread_list_lock);
    }

    return 3;
  }

  while (v9 != a1)
  {
    v9 = v9[2];
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  if ((_pthread_ptr_munge_token ^ *v9) != a1 || (_pthread_ptr_munge_token ^ *v4) != v4)
  {
    goto LABEL_65;
  }

  v14 = *(a1 + 49);
  if ((v14 & 1) != 0 && !*(a1 + 32))
  {
    if (v4 != a1)
    {
      v22 = *(StatusReg - 192);
      if (!v22 || *v22 != a1)
      {
        if (*(a1 + 52) == -1)
        {
          v31 = *(a1 + 16);
          v32 = *(a1 + 24);
          v33 = (v31 + 24);
          if (!v31)
          {
            v33 = &off_1ED3F8028;
          }

          *v33 = v32;
          *v32 = v31;
          *(a1 + 49) &= ~1u;
          if (a2)
          {
            v34 = atomic_load((a1 + 166));
            if ((~v34 & 0x11) != 0)
            {
              v35 = *(a1 + 40);
            }

            else
            {
              v35 = 1;
            }

            v12 = 0;
            *a2 = v35;
            goto LABEL_63;
          }
        }

        else
        {
          LODWORD(v37) = *(a1 + 248);
          *(a1 + 52) = v37;
          *(a1 + 32) = v36;
          if ((v14 & 4) != 0)
          {
            v23 = *(StatusReg + 72);
            if (!v23)
            {
              goto LABEL_66;
            }

            *(StatusReg + 72) = 0;
            goto LABEL_33;
          }
        }

        v12 = 0;
        goto LABEL_63;
      }
    }

    v15 = 0;
    v12 = 11;
  }

  else
  {
    v15 = 0;
    v12 = 22;
  }

  while (1)
  {
    v16 = *(StatusReg + 24);
    v17 = v16;
    atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v17, 0, memory_order_release, memory_order_relaxed);
    if (v17 != v16)
    {
      os_unfair_lock_unlock(&_pthread_list_lock);
    }

    if (!v15)
    {
      break;
    }

    if (!v37)
    {
      goto LABEL_45;
    }

    explicit = atomic_load_explicit((a1 + 52), memory_order_acquire);
    if (explicit == -1)
    {
LABEL_21:
      v19 = 0;
      atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v19, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v19)
      {
        os_unfair_lock_lock_with_options();
      }

      if (v38)
      {
        v20 = *(StatusReg + 24);
        v21 = v20;
        atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v21, 0, memory_order_release, memory_order_relaxed);
        if (v21 != v20)
        {
          os_unfair_lock_unlock(&_pthread_list_lock);
        }
      }

      else
      {
        *(a1 + 32) = 0;
        v26 = *(a1 + 49);
        v27 = *(StatusReg + 24);
        v28 = v27;
        atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v28, 0, memory_order_release, memory_order_relaxed);
        if (v28 != v27)
        {
          os_unfair_lock_unlock(&_pthread_list_lock);
        }

        if ((v26 & 2) != 0)
        {
LABEL_45:
          _pthread_deallocate(a1, 0);
        }
      }

      v12 = 0;
      break;
    }

    while (explicit == v37)
    {
      v24 = __ulock_wait();
      if (a3 == 2 && v24 == -4)
      {
        v25 = atomic_load((v36[0] + 166));
        if ((~v25 & 0x11) == 0)
        {
          if (_pthread_joiner_abort_wait(a1, v36))
          {
            *(v36[0] + 165) = 1;
            pthread_exit(1);
          }
        }
      }

      explicit = atomic_load_explicit((a1 + 52), memory_order_acquire);
      if (explicit == -1)
      {
        goto LABEL_21;
      }
    }

    qword_1ECE00010 = "BUG IN CLIENT OF LIBPTHREAD: pthread_join() state corruption";
    qword_1ECE00040 = explicit;
    __break(0xB001u);
LABEL_65:
    abort_with_reason();
LABEL_66:
    LODWORD(v23) = _os_semaphore_create();
LABEL_33:
    v12 = 0;
    HIDWORD(v37) = v23;
LABEL_63:
    v15 = 1;
  }

  v29 = HIDWORD(v37);
  if (v12 || !HIDWORD(v37))
  {
LABEL_52:
    if (!v29)
    {
      return v12;
    }

    goto LABEL_53;
  }

  if ((v38 & 1) == 0)
  {
      ;
    }

    v29 = HIDWORD(v37);
    goto LABEL_52;
  }

LABEL_53:
  v30 = *(StatusReg + 72);
  *(StatusReg + 72) = v29;
  if (v30)
  {
    _os_semaphore_dispose();
  }

  return v12;
}

int pthread_cond_destroy(pthread_cond_t *a1)
{
  sig = a1->__sig;
  result = 22;
  if (sig <= 1129270852)
  {
    if (sig != 1018212795 && sig != 1129270852)
    {
      return result;
    }

LABEL_21:
    result = 0;
    LODWORD(a1->__sig) = 0;
    return result;
  }

  if (sig == 1129270854)
  {
    goto LABEL_21;
  }

  if (sig == 1129270853)
  {
    v5 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(a1->__opaque, &v5, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      os_unfair_lock_lock_with_options();
    }

    v7 = *&a1->__opaque[4];
    v8 = (v7 & 0x20000000) == 0;
    v9 = 28;
    v10 = 24;
    if ((v7 & 0x20000000) != 0)
    {
      v11 = 28;
    }

    else
    {
      v11 = 24;
    }

    if (v8)
    {
      v10 = 32;
    }

    else
    {
      v9 = 32;
    }

    do
    {
      v12 = *(&a1->__sig + v11);
      v13 = *(&a1->__sig + v10);
      v14 = *(&a1->__sig + v9);
      if ((v14 ^ v12) > 0xFF)
      {
        break;
      }

      v15 = v12 | (v14 << 32);
      v16 = v15;
      atomic_compare_exchange_strong((&a1->__sig + v11), &v16, v15);
    }

    while (v16 != v15);
    if ((v14 & 2) != 0)
    {
      v17 = *&a1->__opaque[4] >> 30 == 1;
    }

    LODWORD(a1->__sig) = 0;
    v18 = *(StatusReg + 24);
    v19 = v18;
    atomic_compare_exchange_strong_explicit(a1->__opaque, &v19, 0, memory_order_release, memory_order_relaxed);
    if (v19 != v18)
    {
      os_unfair_lock_unlock(a1->__opaque);
    }

    if ((v14 & 2) != 0)
    {
      __psynch_cvclrprepost();
    }

    return 0;
  }

  return result;
}

void sched_yield(void)
{
  if (pthread_yield_to_zero == 1)
  {
    swtch_pri(0);
  }

  else
  {
    sched_yield_cold_1();
  }
}

uint64_t pthread_override_qos_class_end_np_cold_1(uint64_t a1, int *a2)
{
  v4 = *(a1 + 4);
  v5 = __bsdthread_ctl();
  if (v5 == -1)
  {
    v5 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  if (v5 == 14)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = MEMORY[0x1E69E9A60];
  result = mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(a1 + 4), 0, -1);
  if (result)
  {
    v6 = 22;
  }

  if (*(a1 + 24))
  {
    if (_pthread_free)
    {
      result = _pthread_free(a1);
    }
  }

  else
  {
    v9 = *v7;
    v10 = *MEMORY[0x1E69E9AC8];
    OUTLINED_FUNCTION_0_0();
    result = mach_vm_deallocate(v11, v12, v13);
    if (result)
    {
      v6 = 22;
    }
  }

  *a2 = v6;
  return result;
}

uint64_t _pthread_joiner_prepost_wake(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 49))
  {
    v2 = *(v1 + 20);
    *(a1 + 49) &= ~1u;
  }

  else
  {
    v2 = 0;
    *(v1 + 24) = 1;
    *(a1 + 32) = 0;
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  if (v4)
  {
    _pthread_joiner_prepost_wake_cold_1(a1, v3);
  }

  return v2;
}

uint64_t _pthread_joiner_wake()
{
  do
  {
    result = __ulock_wake();
  }

  while (result == -4);
  if (result != -2)
  {
    if (result)
    {
      _pthread_joiner_wake_cold_1(result);
    }
  }

  return result;
}

uint64_t _pthread_deallocate(uint64_t result, char a2)
{
  if (_main_thread_ptr != result)
  {
    v2 = result;
    if ((a2 & 1) == 0 && _pthread_introspection_hook)
    {
      _pthread_introspection_hook_callout_thread_destroy(result);
    }

    result = mach_vm_deallocate(*MEMORY[0x1E69E9A60], *(v2 + 192), *(v2 + 200));
    if (result)
    {
      qword_1ECE00010 = "BUG IN LIBPTHREAD: Unable to deallocate stack";
      qword_1ECE00040 = result;
      __break(0xB001u);
    }
  }

  return result;
}

int pthread_cond_signal_thread_np(pthread_cond_t *a1, pthread_t a2)
{
  if (a2)
  {
    v4 = pthread_mach_thread_np(a2);
  }

  else
  {
    v4 = 0;
  }

  v38 = 1129270852;
  sig = a1->__sig;
  if ((LODWORD(a1->__sig) - 1129270853) < 2)
  {
    result = 0;
    v38 = a1->__sig;
  }

  else
  {
    if (sig != 1018212795)
    {
      if (sig == 1129270852)
      {
        return 0;
      }

      else
      {
        return 22;
      }
    }

    result = _pthread_cond_check_init_slow(a1, &v38, v2);
    sig = v38;
    if (result)
    {
      return result;
    }
  }

  if (sig == 1129270852)
  {
    return result;
  }

  if (sig != 1129270854)
  {
    if (sig != 1129270853)
    {
      pthread_cond_broadcast_cold_3(sig);
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    if ((*&a1->__opaque[4] & 0x20000000) != 0)
    {
      v10 = 28;
    }

    else
    {
      v10 = 24;
    }

    if ((*&a1->__opaque[4] & 0x20000000) != 0)
    {
      v11 = 32;
    }

    else
    {
      v11 = 28;
    }

    if ((*&a1->__opaque[4] & 0x20000000) != 0)
    {
      v12 = 24;
    }

    else
    {
      v12 = 32;
    }

    while (1)
    {
      while (1)
      {
        v13 = *(&a1->__sig + v10);
        v14 = *(&a1->__sig + v12);
        v15 = *(&a1->__sig + v11);
        v16 = v13 & 0xFFFFFF00;
        v17 = v15 & 0xFFFFFF00;
        if ((v13 & 0xFFFFFF00) != (v15 & 0xFFFFFF00))
        {
          v18 = v14 & 0xFFFFFF00;
          if (v4 || v16 != v18)
          {
            break;
          }
        }

        v19 = v13 | (v15 << 32);
        v20 = v19;
        atomic_compare_exchange_strong((&a1->__sig + v10), &v20, v19);
        if (v20 == v19)
        {
          return 0;
        }
      }

      if (v4)
      {
LABEL_68:
        v36 = *&a1->__opaque[4] >> 30;
        v37 = __psynch_cvsignal();
        if ((v37 - 1) <= 0xFFFFFFFD)
        {
          _pthread_cond_updateval(a1, 0, v37);
        }

        return 0;
      }

      v21 = ((v13 & 0xFFFFFF00) - (v15 & 0xFFFFFF00)) < 0x7FFFFF81;
      if (v17 > v16)
      {
        v21 = v17 - v16 > 0x7FFFFF7F;
      }

      if (!v21)
      {
        break;
      }

      if (v18 <= v16)
      {
        v22 = v16 - v18 < 0x7FFFFF81;
      }

      else
      {
        v22 = v18 - v16 > 0x7FFFFF7F;
      }

      if (v22)
      {
        v23 = v17 - v18 > 0x7FFFFF7F;
        if (v18 >= v17)
        {
          v23 = v18 - v17 < 0x7FFFFF81;
        }

        if (v23)
        {
          v17 = v14 & 0xFFFFFF00;
        }

        v24 = *(&a1->__sig + v12);
        atomic_compare_exchange_strong((a1 + v12), &v24, v17 + 256);
        if (v24 == v14)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v8 < 0x2000)
        {
          ++v8;
        }

        else
        {
          if (v7)
          {
            return 35;
          }

          v25 = *(&a1->__sig + v12);
          atomic_compare_exchange_strong((a1 + v12), &v25, v17);
          v7 = v25 == v14;
          if (v25 == v14)
          {
            v8 = 0;
          }

          else
          {
            ++v8;
          }
        }

LABEL_50:
        sched_yield();
      }
    }

    if (v9 >= 0x2000)
    {
      return 35;
    }

    ++v9;
    goto LABEL_50;
  }

  v26 = a1 + 4 * ((*&a1->__opaque[4] >> 29) & 1);
  v29 = *(v26 + 3);
  v28 = (v26 + 24);
  v27 = v29;
  while (1)
  {
    result = 0;
    v30 = WORD2(v27);
    if (!WORD2(v27))
    {
      break;
    }

    v31 = HIWORD(v27);
    if (WORD2(v27) == HIWORD(v27))
    {
      break;
    }

    if (v31 + 1 < WORD2(v27))
    {
      v32 = (v31 + 1);
    }

    else
    {
      v32 = WORD2(v27);
    }

    v33 = v27;
    atomic_compare_exchange_strong_explicit(v28, &v33, (v27 + 1) | (v32 << 48) | v27 & 0xFFFF00000000, memory_order_release, memory_order_relaxed);
    v34 = v33 == v27;
    v27 = v33;
    if (v34)
    {
      if (v31 >= v30)
      {
        return 0;
      }

      do
      {
        v35 = __ulock_wake();
        if ((v35 & 0x80000000) == 0)
        {
          return 0;
        }
      }

      while (v35 == -4);
      if (v35 == -2)
      {
        return 0;
      }

      if (v35 != -37)
      {
        pthread_cond_broadcast_cold_2(v35);
      }

      if (!v4)
      {
        pthread_cond_broadcast_cold_1();
      }

      return pthread_cond_broadcast(a1);
    }
  }

  return result;
}

int pthread_get_qos_class_np(pthread_t __pthread, qos_class_t *__qos_class, int *__relative_priority)
{
  v3 = *&__pthread->__opaque[240];
  if (__qos_class)
  {
    if ((v3 & 0x22000000) != 0 || (*&__pthread->__opaque[240] & 0x3F00) == 0)
    {
      v5 = 0;
    }

    else
    {
      v6 = __clz(__rbit32((v3 >> 8) & 0x3F));
      if (((v3 >> 8) & 0x3F) != 0)
      {
        v5 = v6 + 1;
      }

      else
      {
        v5 = 0;
      }
    }

    *__qos_class = _pthread_qos_class_from_thread_qos_thread_qos_to_qos_class[v5];
  }

  if (__relative_priority)
  {
    v7 = (v3 & 0x3F00) != 0 && (v3 & 0x22000000) == 0;
    LODWORD(v3) = v3;
    if (v7)
    {
      v8 = v3 + 1;
    }

    else
    {
      v8 = 0;
    }

    *__relative_priority = v8;
  }

  return 0;
}

int pthread_kill(pthread_t a1, int a2)
{
  if (a2 > 0x20)
  {
    return 22;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if ((StatusReg - 224) != a1)
  {
    if (a1)
    {
      os_unfair_lock_lock_with_options();
      v5 = __pthread_head;
      if (__pthread_head)
      {
        while (v5 != a1)
        {
          v5 = *v5->__opaque;
          if (!v5)
          {
            goto LABEL_8;
          }
        }

        if ((_pthread_ptr_munge_token ^ v5->__sig) != a1)
        {
          pthread_mach_thread_np_cold_1();
        }

        v7 = *&a1->__opaque[232];
        os_unfair_lock_unlock(&_pthread_list_lock);
        goto LABEL_14;
      }

LABEL_8:
      os_unfair_lock_unlock(&_pthread_list_lock);
    }

    return 3;
  }

  if ((_pthread_ptr_munge_token ^ a1->__sig) != a1)
  {
    pthread_mach_thread_np_cold_1();
  }

  v6 = *&a1->__opaque[232];
LABEL_14:
  result = __pthread_kill();
  if (result == -1)
  {
    return **(StatusReg + 8);
  }

  return result;
}

uint64_t _pthread_joiner_prepost_wake_cold_1(uint64_t result, uint64_t **a2)
{
  v2 = atomic_load((result + 166));
  if ((~v2 & 0x11) != 0)
  {
    v3 = *(result + 40);
  }

  else
  {
    v3 = 1;
  }

  **a2 = v3;
  return result;
}

int pthread_attr_getdetachstate(const pthread_attr_t *a1, int *a2)
{
  if (a1->__sig != 1414022209)
  {
    return 22;
  }

  result = 0;
  *a2 = a1->__opaque[32];
  return result;
}

int pthread_attr_getinheritsched(const pthread_attr_t *a1, int *a2)
{
  if (a1->__sig != 1414022209)
  {
    return 22;
  }

  result = 0;
  *a2 = a1->__opaque[33];
  return result;
}

int pthread_attr_setinheritsched(pthread_attr_t *a1, int a2)
{
  result = 22;
  if ((a2 - 1) <= 1 && a1->__sig == 1414022209)
  {
    result = 0;
    *&a1->__opaque[32] = *&a1->__opaque[32] & 0xFFFFFFFFFFFF00FFLL | (a2 << 8);
  }

  return result;
}

int pthread_attr_setschedparam(pthread_attr_t *a1, const sched_param *a2)
{
  if (a1->__sig != 1414022209)
  {
    return 22;
  }

  result = 0;
  v4 = *&a1->__opaque[32] | 0x1000000;
  *&a1->__opaque[24] = *a2;
  *&a1->__opaque[32] = v4;
  return result;
}

int pthread_attr_setschedpolicy(pthread_attr_t *a1, int a2)
{
  if (a1->__sig != 1414022209)
  {
    return 22;
  }

  if (a2 == 4 || a2 == 2)
  {
    goto LABEL_6;
  }

  if (a2 != 1)
  {
    return 22;
  }

  *&a1->__opaque[32] &= ~0x8000000uLL;
LABEL_6:
  v2 = 0;
  *&a1->__opaque[32] = *&a1->__opaque[32] & 0xFFFFFFFFFF00FFFFLL | (a2 << 16) | 0x4000000u;
  return v2;
}

int pthread_attr_setscope(pthread_attr_t *a1, int a2)
{
  if (a2 == 2)
  {
    v2 = 45;
  }

  else
  {
    v2 = 22;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  if (a1->__sig == 1414022209)
  {
    return v2;
  }

  else
  {
    return 22;
  }
}

int pthread_attr_getscope(const pthread_attr_t *a1, int *a2)
{
  if (a1->__sig != 1414022209)
  {
    return 22;
  }

  result = 0;
  *a2 = 1;
  return result;
}

int pthread_attr_getstackaddr(const pthread_attr_t *a1, void **a2)
{
  if (a1->__sig != 1414022209)
  {
    return 22;
  }

  result = 0;
  *a2 = *&a1->__opaque[8];
  return result;
}

int pthread_attr_setstackaddr(pthread_attr_t *a1, void *a2)
{
  if (a1->__sig != 1414022209 || (*MEMORY[0x1E69E9AB8] & a2) != 0)
  {
    return 22;
  }

  result = 0;
  *&a1->__opaque[32] &= ~0x10000000uLL;
  *a1->__opaque = 0;
  *&a1->__opaque[8] = a2;
  return result;
}

int pthread_attr_getstacksize(const pthread_attr_t *a1, size_t *a2)
{
  if (a1->__sig != 1414022209)
  {
    return 22;
  }

  result = 0;
  v4 = *&a1->__opaque[16];
  if (!v4)
  {
    v4 = 0x80000;
  }

  *a2 = v4;
  return result;
}

int pthread_attr_setstacksize(pthread_attr_t *a1, size_t a2)
{
  if (a1->__sig != 1414022209)
  {
    return 22;
  }

  result = 22;
  if (a2 >= 0x4000 && (*MEMORY[0x1E69E9AB8] & a2) == 0)
  {
    result = 0;
    *&a1->__opaque[16] = a2;
  }

  return result;
}

int pthread_attr_getstack(const pthread_attr_t *a1, void **a2, size_t *a3)
{
  if (a1->__sig != 1414022209)
  {
    return 22;
  }

  result = 0;
  v6 = *&a1->__opaque[8];
  v5 = *&a1->__opaque[16];
  *a2 = (v6 - v5);
  if (!v5)
  {
    v5 = 0x80000;
  }

  *a3 = v5;
  return result;
}

int pthread_attr_setstack(pthread_attr_t *a1, void *a2, size_t a3)
{
  if (a1->__sig != 1414022209 || (*MEMORY[0x1E69E9AB8] & a2) != 0)
  {
    return 22;
  }

  result = 22;
  if (a3 >= 0x4000 && (*MEMORY[0x1E69E9AB8] & a3) == 0)
  {
    result = 0;
    *&a1->__opaque[8] = a2 + a3;
    *&a1->__opaque[16] = a3;
  }

  return result;
}

int pthread_attr_setguardsize(pthread_attr_t *a1, size_t a2)
{
  if (a1->__sig != 1414022209 || (*MEMORY[0x1E69E9AB8] & a2) != 0)
  {
    return 22;
  }

  result = 0;
  *&a1->__opaque[32] &= ~0x10000000uLL;
  *a1->__opaque = a2;
  return result;
}

int pthread_attr_getguardsize(const pthread_attr_t *a1, size_t *a2)
{
  if (a1->__sig != 1414022209)
  {
    return 22;
  }

  result = 0;
  v4 = *&a1->__opaque[32];
  opaque = a1->__opaque;
  if ((v4 & 0x10000000) != 0)
  {
    opaque = MEMORY[0x1E69E9AC8];
  }

  *a2 = *opaque;
  return result;
}

uint64_t pthread_attr_setcpupercent_np(void *a1, int a2, unint64_t a3)
{
  result = 22;
  if (a3 <= 0x1FFFFFE && a2 <= 254 && *a1 == 1414022209)
  {
    v5 = a1[5];
    if ((v5 & 0x4000000) != 0 && (BYTE2(v5) == 4 || BYTE2(v5) == 2))
    {
      result = 0;
      a1[5] = a1[5] | (a2 << 32) | (a3 << 40) | 0x8000000;
    }
  }

  return result;
}

uint64_t pthread_attr_setworkinterval_np(uint64_t a1, mach_port_name_t a2)
{
  result = 22;
  if (a2 - 1 <= 0xFFFFFFFD && *a1 == 1414022209)
  {
    result = mach_port_mod_refs(*MEMORY[0x1E69E9A60], a2, 0, 1);
    if (!result)
    {
      *(a1 + 48) = a2;
    }
  }

  return result;
}

pthread_t pthread_from_mach_thread_np(mach_port_t a1)
{
  os_unfair_lock_lock_with_options();
  v2 = __pthread_head;
  if (__pthread_head)
  {
    do
    {
      if (*&v2->__opaque[232] == a1)
      {
        break;
      }

      v2 = *v2->__opaque;
    }

    while (v2);
  }

  os_unfair_lock_unlock(&_pthread_list_lock);
  return v2;
}

void *__cdecl pthread_get_stackaddr_np(pthread_t a1)
{
  if ((_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224) == a1 || _main_thread_ptr == a1)
  {
    return *&a1->__opaque[160];
  }

  if (!a1)
  {
    return 3;
  }

  os_unfair_lock_lock_with_options();
  v4 = __pthread_head;
  if (!__pthread_head)
  {
LABEL_11:
    os_unfair_lock_unlock(&_pthread_list_lock);
    return 3;
  }

  while (v4 != a1)
  {
    v4 = *v4->__opaque;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  if ((_pthread_ptr_munge_token ^ v4->__sig) != a1)
  {
    pthread_mach_thread_np_cold_1();
  }

  v3 = *&a1->__opaque[160];
  os_unfair_lock_unlock(&_pthread_list_lock);
  return v3;
}

uint64_t _pthread_threadid_slow(uint64_t a1, void *a2)
{
  thread_info_outCnt = 6;
  v4 = *(a1 + 248);
  memset(v9, 0, sizeof(v9));
  v5 = thread_info(v4, 4u, v9, &thread_info_outCnt);
  v6 = v9[0];
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v9[0] == 0;
  }

  if (v7)
  {
    return 22;
  }

  result = 0;
  *a2 = v9[0];
  *(a1 + 216) = v6;
  return result;
}

int pthread_cpu_number_np(size_t *cpu_number_out)
{
  if (cpu_number_out)
  {
    result = 0;
    *cpu_number_out = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) & 0xFFF;
  }

  else
  {
    result = 22;
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
  }

  return result;
}

int pthread_jit_write_with_callback_np(pthread_jit_write_callback_t callback, void *ctx)
{
  if (MEMORY[0xFFFFFC10C])
  {
    v2 = MEMORY[0xFFFFFC10C];
    __dmb(0xAu);
    if ((v2 - 2) >= 2)
    {
      if (v2 != 1)
      {
        goto LABEL_32;
      }

      _WriteStatusReg(ARM64_SYSREG(3, 4, 15, 2, 7), MEMORY[0xFFFFFC110]);
      __isb(0xFu);
      v3 = MEMORY[0xFFFFFC110];
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 2, 7));
    }

    else
    {
      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC110]);
      __isb(0xFu);
      v3 = MEMORY[0xFFFFFC110];
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5));
    }

    if (v3 == StatusReg)
    {
      if (_pthread_jit_config[0] != 1)
      {
        goto LABEL_21;
      }

      if (byte_1ECE08002 != 1)
      {
        goto LABEL_33;
      }

      if (dword_1ECE08004)
      {
        v6 = 0;
        while (*&_pthread_jit_config[8 * v6 + 8] != callback)
        {
          if (dword_1ECE08004 == ++v6)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        LODWORD(v6) = 0;
      }

      if (v6 == dword_1ECE08004)
      {
LABEL_16:
        if (MEMORY[0xFFFFFC10C])
        {
          v7 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v7 - 2) >= 2)
          {
            if (v7 != 1)
            {
              goto LABEL_32;
            }

            _WriteStatusReg(ARM64_SYSREG(3, 4, 15, 2, 7), MEMORY[0xFFFFFC118]);
            __isb(0xFu);
            v8 = MEMORY[0xFFFFFC118];
            v9 = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 2, 7));
          }

          else
          {
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC118]);
            __isb(0xFu);
            v8 = MEMORY[0xFFFFFC118];
            v9 = _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5));
          }

          if (v8 == v9)
          {
            pthread_jit_write_with_callback_np_cold_2(callback);
          }
        }
      }

      else
      {
LABEL_21:
        result = (callback)(ctx);
        if (MEMORY[0xFFFFFC10C])
        {
          v10 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v10 - 2) < 2)
          {
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC118]);
            __isb(0xFu);
            v11 = MEMORY[0xFFFFFC118];
            v12 = _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5));
            goto LABEL_26;
          }

          if (v10 == 1)
          {
            _WriteStatusReg(ARM64_SYSREG(3, 4, 15, 2, 7), MEMORY[0xFFFFFC118]);
            __isb(0xFu);
            v11 = MEMORY[0xFFFFFC118];
            v12 = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 2, 7));
LABEL_26:
            if (v11 == v12)
            {
              return result;
            }
          }
        }
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    pthread_jit_write_with_callback_np_cold_1();
  }

  return (callback)(ctx);
}

void pthread_jit_write_freeze_callbacks_np(void)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((byte_1ECE08001 & 1) == 0)
    {
      pthread_jit_write_freeze_callbacks_np_cold_1();
    }

    os_unfair_lock_lock_with_options();
    if (byte_1ECE08002 == 1)
    {
      pthread_jit_write_freeze_callbacks_np_cold_2();
    }

    byte_1ECE08002 = 1;
    os_unfair_lock_unlock(&_pthread_jit_config_lock);

    _pthread_jit_write_protect_freeze_config();
  }
}

uint64_t pthread_create_with_workgroup_np()
{
  if (!_pthread_workgroup_functions)
  {
    pthread_create_with_workgroup_np_cold_1();
  }

  v1 = *(_pthread_workgroup_functions + 8);

  return v1();
}

int pthread_detach(pthread_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v2 = __pthread_head;
    if (__pthread_head)
    {
      while (v2 != a1)
      {
        v2 = *v2->__opaque;
        if (!v2)
        {
          goto LABEL_5;
        }
      }

      if ((_pthread_ptr_munge_token ^ v2->__sig) != a1)
      {
        pthread_mach_thread_np_cold_1();
      }

      if ((a1->__opaque[33] & 1) == 0)
      {
        v3 = 22;
LABEL_11:
        os_unfair_lock_unlock(&_pthread_list_lock);
        return v3;
      }

      if (*&a1->__opaque[36] == -1)
      {
        os_unfair_lock_unlock(&_pthread_list_lock);
        pthread_join_NOCANCEL(a1, 0);
      }

      else
      {
        a1->__opaque[33] &= ~1u;
        if (!*&a1->__opaque[16])
        {
          v3 = 0;
          goto LABEL_11;
        }

        _pthread_joiner_prepost_wake(a1);
        os_unfair_lock_unlock(&_pthread_list_lock);
        _pthread_joiner_wake();
      }

      return 0;
    }

LABEL_5:
    os_unfair_lock_unlock(&_pthread_list_lock);
  }

  return 3;
}

int pthread_setschedparam(pthread_t a1, int a2, const sched_param *a3)
{
  v6 = (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224) == a1 || _main_thread_ptr == a1;
  v7 = !v6;
  if (v6)
  {
    if ((_pthread_ptr_munge_token ^ a1->__sig) != a1)
    {
      pthread_mach_thread_np_cold_1();
    }

    v9 = *&a1->__opaque[232];
  }

  else
  {
    if (!a1)
    {
      return 3;
    }

    os_unfair_lock_lock_with_options();
    v8 = __pthread_head;
    if (!__pthread_head)
    {
LABEL_28:
      os_unfair_lock_unlock(&_pthread_list_lock);
      return 3;
    }

    while (v8 != a1)
    {
      v8 = *v8->__opaque;
      if (!v8)
      {
        goto LABEL_28;
      }
    }

    if ((_pthread_ptr_munge_token ^ v8->__sig) != a1)
    {
      pthread_mach_thread_np_cold_1();
    }

    v9 = *&a1->__opaque[232];
    os_unfair_lock_unlock(&_pthread_list_lock);
  }

  v14 = 0uLL;
  if ((a1->__opaque[63] & 4) == 0)
  {
    switch(a2)
    {
      case 4:
        v11 = &v14 + 3;
        HIDWORD(v14) = a3->sched_priority;
        v10 = 1;
        break;
      case 2:
        v11 = &v14 + 1;
        *(&v14 + 4) = *a3;
        v10 = 2;
        break;
      case 1:
        LODWORD(v14) = a3->sched_priority;
        v10 = 1;
        v11 = &v14;
        break;
      default:
        return 22;
    }

    if (thread_policy(v9, a2, v11, v10, 1))
    {
      return 22;
    }

    os_unfair_lock_lock_with_options();
    if (!v7)
    {
      goto LABEL_33;
    }

    v13 = __pthread_head;
    if (__pthread_head)
    {
      while (v13 != a1)
      {
        v13 = *v13->__opaque;
        if (!v13)
        {
          goto LABEL_28;
        }
      }

      if ((_pthread_ptr_munge_token ^ v13->__sig) != a1)
      {
        pthread_mach_thread_np_cold_1();
      }

LABEL_33:
      a1->__opaque[32] = a2;
      *&a1->__opaque[40] = *a3;
      os_unfair_lock_unlock(&_pthread_list_lock);
      return 0;
    }

    goto LABEL_28;
  }

  return 45;
}

uint64_t _pthread_set_self(uint64_t a1)
{
  v2 = __thread_selfid();
  *(a1 + 216) = v2;
  if (v2 == -1)
  {
    qword_1ECE00010 = "BUG IN LIBPTHREAD: failed to set thread_id";
    __break(0xB001u);
  }

  else
  {
    v2 = a1 + 224;
  }

  return MEMORY[0x1EEE722F0](v2);
}

int pthread_setconcurrency(int a1)
{
  if (a1 < 0)
  {
    return 22;
  }

  result = 0;
  pthread_concurrency = a1;
  return result;
}

uint64_t _pthread_main_thread_postfork_init(uint64_t a1)
{
  _pthread_main_thread_init(a1, 0);
  result = __thread_selfid();
  *(a1 + 216) = result;
  if (result == -1)
  {
    _pthread_main_thread_postfork_init_cold_1();
  }

  return result;
}

uint64_t pthread_current_stack_contains_np(unint64_t a1, uint64_t a2)
{
  v4 = (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 48);
  v3 = *v4;
  v2 = v4[1];
  if (v2 == *v4)
  {
    return 4294967251;
  }

  v5 = __CFADD__(a1, a2);
  v7 = v2 <= a1 && a1 + a2 <= v3;
  if (v5)
  {
    return 4294967274;
  }

  else
  {
    return v7;
  }
}

uintptr_t pthread_stack_frame_decode_np(uintptr_t frame_addr, uintptr_t *return_addr)
{
  if (return_addr)
  {
    *return_addr = *(frame_addr + 8);
  }

  v2 = 0xFFFFFFFFFFFFFFLL;
  if (pthread_has_sec_transition)
  {
    v2 = 0xFFFFFFFFFFFFFFFLL;
  }

  return v2 & *frame_addr;
}

unint64_t _pthread_wqthread_legacy_worker_wrap(unint64_t result)
{
  v1 = (result & 0x22000000) != 0 || (result & 0x3F00) == 0;
  v2 = (result >> 8) & 0x3F;
  if (v1 || v2 == 0)
  {
    goto LABEL_18;
  }

  v4 = __libdispatch_workerfunction;
  v5 = __clz(__rbit32(v2));
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v5 = 3;
    }

    else if (v5 != 2)
    {
      goto LABEL_18;
    }

    return v4(v5, (result >> 31) & 1, 0);
  }

  if (v5 == 4)
  {
    v5 = 0;
    return v4(v5, (result >> 31) & 1, 0);
  }

  if (v5 == 3)
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) = 4351;
    v5 = 1;
    return v4(v5, (result >> 31) & 1, 0);
  }

LABEL_18:
  qword_1ECE00010 = "BUG IN LIBPTHREAD: Invalid pthread priority for the legacy interface";
  qword_1ECE00040 = result;
  __break(0xB001u);
  return result;
}

uint64_t _pthread_workqueue_init_with_workloop(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5[0] = 0x200000000;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a1;
  v5[4] = a4;
  v5[5] = 0;
  return pthread_workqueue_setup(v5, 0x30uLL);
}

uint64_t _pthread_workqueue_init_with_kevent(uint64_t a1, uint64_t a2, int a3)
{
  v4[0] = 0x200000000;
  v4[1] = a2;
  v4[2] = 0;
  v4[3] = a1;
  v4[4] = a3;
  v4[5] = 0;
  return pthread_workqueue_setup(v4, 0x30uLL);
}

uint64_t _pthread_workqueue_init(uint64_t a1, int a2)
{
  v3[0] = 0x200000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = 0;
  return pthread_workqueue_setup(v3, 0x30uLL);
}

uint64_t pthread_workqueue_setdispatch_np(uint64_t a1)
{
  v2 = 0u;
  v3 = 0;
  v5 = 0u;
  DWORD1(v2) = 2;
  v4 = a1;
  return pthread_workqueue_setup(&v2, 0x30uLL);
}

uint64_t _pthread_workqueue_supported()
{
  result = __pthread_supported_features;
  if (!__pthread_supported_features)
  {
    _pthread_workqueue_supported_cold_1();
  }

  return result;
}

uint64_t pthread_workqueue_addthreads_np(__int16 a1, int a2)
{
  if (!__libdispatch_workerfunction)
  {
    return 1;
  }

  _pthread_qos_class_encode_workqueue(a1 & 0xFFF, a2 << 31);
  result = __workq_kernreturn();
  if (result == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return result;
}

void _pthread_jit_write_protect_bulk_image_load_callback(int a1, uint64_t a2)
{
  if (byte_1ECE08001 == 1)
  {
    os_unfair_lock_lock_with_options();
  }

  if (a1 && (byte_1ECE08002 & 1) == 0)
  {
    v4 = 0;
    do
    {
      v5 = *(a2 + 8 * v4);
      if ((v5->flags & 0x80000000) == 0)
      {
        size = 0;
        v6 = getsectiondata(v5, "__DATA_CONST", "__pth_jit_func", &size);
        v7 = !v6 || size == 0;
        if (!v7 && (size & 7) == 0)
        {
          v9 = size >> 3;
          v10 = dword_1ECE08004;
          LODWORD(v11) = 2047 - dword_1ECE08004;
          if (dword_1ECE08004 <= 0x7FF)
          {
            v11 = v11;
          }

          else
          {
            v11 = 0;
          }

          do
          {
            if (!*v6)
            {
              break;
            }

            if (!v11)
            {
              _pthread_jit_write_protect_bulk_image_load_callback_cold_1(v10);
            }

            *&_pthread_jit_config[8 * v10++ + 8] = *v6;
            dword_1ECE08004 = v10;
            --v11;
            v6 += 8;
            --v9;
          }

          while (v9);
        }
      }

      ++v4;
    }

    while (v4 != a1);
  }

  if (byte_1ECE08001 == 1)
  {
    os_unfair_lock_unlock(&_pthread_jit_config_lock);
  }
}

uint64_t OUTLINED_FUNCTION_0()
{

  return abort_with_reason();
}

int pthread_cancel(pthread_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if ((StatusReg - 224) == a1)
  {
    if ((_pthread_ptr_munge_token ^ a1->__sig) != a1)
    {
      pthread_mach_thread_np_cold_1();
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    return 3;
  }

  v3 = 0;
  atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v3, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    os_unfair_lock_lock_with_options();
  }

  v4 = __pthread_head;
  if (!__pthread_head)
  {
LABEL_8:
    v5 = *(StatusReg + 24);
    v6 = v5;
    atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 != v5)
    {
      os_unfair_lock_unlock(&_pthread_list_lock);
    }

    return 3;
  }

  while (v4 != a1)
  {
    v4 = *v4->__opaque;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if ((_pthread_ptr_munge_token ^ v4->__sig) != a1)
  {
    pthread_mach_thread_np_cold_1();
  }

  v8 = *(StatusReg + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {
    os_unfair_lock_unlock(&_pthread_list_lock);
  }

LABEL_12:
  if ((*&a1->__opaque[62] & 0x400) != 0)
  {
    return 45;
  }

  if ((atomic_fetch_or_explicit(&a1->__opaque[150], 0x10u, memory_order_relaxed) & 1) == 0)
  {
    return 0;
  }

  result = *&a1->__opaque[232];
  if (result)
  {
    __pthread_markcancel();
    return 0;
  }

  return result;
}

int pthread_setcancelstate(int a1, int *a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg - 224);
  v3 = StatusReg - 224;
  if ((_pthread_ptr_munge_token ^ v4) != v3)
  {
    pthread_mach_thread_np_cold_1();
  }

  v6 = a1;
  if (a1 > 1)
  {
    return 22;
  }

  __pthread_canceled();
  v7 = *(v3 + 166);
  do
  {
    v8 = v7;
    atomic_compare_exchange_strong_explicit((v3 + 166), &v7, v7 & 0xFFFE | v6, memory_order_relaxed, memory_order_relaxed);
  }

  while (v7 != v8);
  result = 0;
  if (a2)
  {
    *a2 = v8 & 1;
  }

  return result;
}

int pthread_setcanceltype(int a1, int *a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg - 224);
  v3 = StatusReg - 224;
  if ((_pthread_ptr_munge_token ^ v4) != v3)
  {
    pthread_mach_thread_np_cold_1();
  }

  if ((a1 & 0xFFFFFFFD) != 0)
  {
    return 22;
  }

  v6 = *(v3 + 166);
  do
  {
    v7 = v6;
    atomic_compare_exchange_strong_explicit((v3 + 166), &v6, v6 & 0xFFFD | a1, memory_order_relaxed, memory_order_relaxed);
  }

  while (v6 != v7);
  result = 0;
  if (a2)
  {
    *a2 = v7 & 2;
  }

  return result;
}

uint64_t sigwait_NOCANCEL()
{
  if (__sigwait() != -1)
  {
    return 0;
  }

  v1 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t _pthread_joiner_abort_wait(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((*(a2 + 24) & 1) != 0 || *(a1 + 52) == -1)
  {
    v6 = 0;
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 52) = 0;
    v6 = 1;
  }

  v7 = *(StatusReg + 24);
  v8 = v7;
  atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != v7)
  {
    os_unfair_lock_unlock(&_pthread_list_lock);
  }

  return v6;
}

int pthread_condattr_init(pthread_condattr_t *a1)
{
  a1->__sig = 1129202753;
  *a1->__opaque = *a1->__opaque & 0xFFFFFFFC | 2;
  return 0;
}

int pthread_condattr_getpshared(const pthread_condattr_t *a1, int *a2)
{
  if (a1->__sig != 1129202753)
  {
    return 22;
  }

  result = 0;
  *a2 = *a1->__opaque & 3;
  return result;
}

int pthread_condattr_setpshared(pthread_condattr_t *a1, int a2)
{
  result = 22;
  if ((a2 - 1) <= 1 && a1->__sig == 1129202753)
  {
    result = 0;
    *a1->__opaque = *a1->__opaque & 0xFFFFFFFC | a2;
  }

  return result;
}

uint64_t _pthread_psynch_cond_cleanup(uint64_t result)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (*(StatusReg - 59))
  {
    v2 = *(result + 16);
    result = _pthread_cond_updateval(result, *(StatusReg - 56), 0);
    if (v2)
    {

      return pthread_mutex_lock(v2);
    }
  }

  return result;
}

BOOL mutex_seq_atomic_cmpxchgv_relaxed(atomic_ullong *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a2;
  atomic_compare_exchange_strong_explicit(a1, &v4, *a3, memory_order_relaxed, memory_order_relaxed);
  result = v4 == v3;
  *a2 = v4;
  return result;
}

BOOL mutex_seq_atomic_cmpxchgv_acquire(atomic_ullong *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a2;
  atomic_compare_exchange_strong_explicit(a1, &v4, *a3, memory_order_acquire, memory_order_acquire);
  result = v4 == v3;
  *a2 = v4;
  return result;
}

BOOL mutex_seq_atomic_cmpxchgv_release(atomic_ullong *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a2;
  atomic_compare_exchange_strong_explicit(a1, &v4, *a3, memory_order_release, memory_order_relaxed);
  result = v4 == v3;
  *a2 = v4;
  return result;
}

int pthread_mutex_getprioceiling(const pthread_mutex_t *a1, int *a2)
{
  if ((a1->__sig & 0xFFFFFFFDLL) != 0x4D555458)
  {
    return 22;
  }

  v4 = 0;
  opaque = a1->__opaque;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(a1->__opaque, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  result = 0;
  *a2 = *&a1->__opaque[8];
  v8 = *(StatusReg + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit(opaque, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {
    os_unfair_lock_unlock(opaque);
    return 0;
  }

  return result;
}

int pthread_mutex_setprioceiling(pthread_mutex_t *a1, int a2, int *a3)
{
  if ((a1->__sig & 0xFFFFFFFDLL) != 0x4D555458)
  {
    return 22;
  }

  v6 = 0;
  opaque = a1->__opaque;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(a1->__opaque, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((a2 + 999) > 0x7CE)
  {
    v9 = 22;
  }

  else
  {
    v9 = 0;
    *a3 = *&a1->__opaque[8];
    *&a1->__opaque[8] = a2;
  }

  v10 = *(StatusReg + 24);
  v11 = v10;
  atomic_compare_exchange_strong_explicit(opaque, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != v10)
  {
    os_unfair_lock_unlock(opaque);
  }

  return v9;
}

int pthread_mutexattr_getprioceiling(const pthread_mutexattr_t *a1, int *a2)
{
  if (a1->__sig != 1297373249)
  {
    return 22;
  }

  result = 0;
  *a2 = *a1->__opaque;
  return result;
}

int pthread_mutexattr_getprotocol(const pthread_mutexattr_t *a1, int *a2)
{
  if (a1->__sig != 1297373249)
  {
    return 22;
  }

  result = 0;
  *a2 = *&a1->__opaque[4] & 3;
  return result;
}

int pthread_mutexattr_getpolicy_np(const pthread_mutexattr_t *a1, int *a2)
{
  if (a1->__sig == 1297373249)
  {
    v2 = (*&a1->__opaque[4] >> 6) & 7;
    if (v2 == 1)
    {
LABEL_5:
      result = 0;
      *a2 = v2;
      return result;
    }

    if (v2 == 2)
    {
      v2 = 3;
      goto LABEL_5;
    }
  }

  return 22;
}

int pthread_mutexattr_gettype(const pthread_mutexattr_t *a1, int *a2)
{
  if (a1->__sig != 1297373249)
  {
    return 22;
  }

  result = 0;
  *a2 = (*&a1->__opaque[4] >> 2) & 3;
  return result;
}

int pthread_mutexattr_getpshared(const pthread_mutexattr_t *a1, int *a2)
{
  if (a1->__sig != 1297373249)
  {
    return 22;
  }

  result = 0;
  *a2 = (*&a1->__opaque[4] >> 4) & 3;
  return result;
}

int pthread_mutexattr_setprioceiling(pthread_mutexattr_t *a1, int a2)
{
  result = 22;
  if ((a2 + 999) <= 0x7CE && a1->__sig == 1297373249)
  {
    result = 0;
    *a1->__opaque = a2;
  }

  return result;
}

int pthread_mutexattr_setprotocol(pthread_mutexattr_t *a1, int a2)
{
  result = 22;
  if (a2 <= 2 && a1->__sig == 1297373249)
  {
    result = 0;
    *&a1->__opaque[4] = *&a1->__opaque[4] & 0xFFFFFFFC | a2;
  }

  return result;
}

int pthread_mutexattr_setpolicy_np(pthread_mutexattr_t *a1, int a2)
{
  if (a1->__sig == 1297373249)
  {
    if (a2 == 1)
    {
      v2 = 64;
      goto LABEL_7;
    }

    if (a2 == 3)
    {
      v2 = 128;
LABEL_7:
      v3 = 0;
      *&a1->__opaque[4] = *&a1->__opaque[4] & 0xFFFFFE3F | v2;
      return v3;
    }
  }

  return 22;
}

int pthread_mutexattr_setpshared(pthread_mutexattr_t *a1, int a2)
{
  result = 22;
  if ((a2 - 1) <= 1 && a1->__sig == 1297373249)
  {
    result = 0;
    *&a1->__opaque[4] = *&a1->__opaque[4] & 0xFFFFFFCF | (16 * a2);
  }

  return result;
}

uint64_t _pthread_mutex_fairshare_lock_wait(uint64_t a1)
{
  v2 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  v4 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  do
  {
    do
    {
      v5 = *(a1 + 12);
      result = __psynch_mutexwait();
      v7 = *v2;
    }

    while (result == -1);
    v8 = *(a1 + 12) & 0x1C0;
    v9 = *v4;
    v10 = 1;
    do
    {
      if (v8 == 128)
      {
        v10 = (v9 & 2) == 0;
      }

      else if ((~v9 & 3) == 0)
      {
        break;
      }

      v11 = v9;
      atomic_compare_exchange_strong_explicit(v4, &v11, v9 | 3, memory_order_acquire, memory_order_acquire);
      v12 = v11 == v9;
      v9 = v11;
    }

    while (!v12);
  }

  while (!v10);
  *v2 = v3;
  return result;
}

uint64_t _pthread_mutex_fairshare_unlock_drop(uint64_t a1)
{
  v1 = *((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  result = __psynch_mutexdrop();
  if (result == -1)
  {
    v3 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if ((v3 & 0xFFFFFFFB) != 0)
    {
      qword_1ECE00010 = "BUG IN LIBPTHREAD: __psynch_mutexdrop failed";
      qword_1ECE00040 = v3;
      __break(0xB001u);
    }
  }

  return result;
}

uint64_t _pthread_mutex_ulock_lock(uint64_t a1, char a2)
{
  v4 = 0;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC;
  atomic_compare_exchange_strong_explicit((a1 + 24), &v4, v3, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v5 = 16;
  }

  else
  {
    v5 = 0;
  }

  if (v4 && (a2 & 1) == 0)
  {
    _pthread_mutex_ulock_lock_slow(a1, v3, v4);
    return 0;
  }

  return v5;
}

uint64_t _pthread_mutex_ulock_lock_slow(uint64_t result, int a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  v7 = (result + 24);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v8 = (v5 & 1) != 0 ? -4 : a3 & 0xFFFFFFFC;
        v9 = a3;
        atomic_compare_exchange_strong_explicit(v7, &v9, v8 | 1, memory_order_relaxed, memory_order_relaxed);
        if (v9 == a3)
        {
          break;
        }

        v5 = 0;
        a3 = v9;
        if (!v9)
        {
LABEL_11:
          v5 = 0;
          atomic_compare_exchange_strong_explicit(v7, &a3, v6 & 1 | a2, memory_order_acquire, memory_order_acquire);
          if (!a3)
          {
            return result;
          }
        }
      }

      result = __ulock_wait();
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v6 |= result != 0;
LABEL_8:
      v5 = 0;
      a3 = *v7;
      if (!a3)
      {
        goto LABEL_11;
      }
    }

    if (result != -105)
    {
      break;
    }

    v5 = 1;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  if (result == -14 || result == -4)
  {
    goto LABEL_8;
  }

  qword_1ECE00010 = "BUG IN LIBPTHREAD: ulock_wait failure";
  qword_1ECE00040 = result;
  __break(0xB001u);
  return result;
}

uint64_t _pthread_mutex_ulock_unlock(uint64_t a1)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC;
  v2 = atomic_exchange_explicit((a1 + 24), 0, memory_order_release);
  if (v2 != v1)
  {
    _pthread_mutex_ulock_unlock_slow(a1, v1, v2);
  }

  return 0;
}

void _pthread_mutex_ulock_unlock_slow(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    if ((a3 & 0xFFFFFFFC) != a2)
    {
      goto LABEL_8;
    }

    if ((a3 & 1) == 0)
    {
      qword_1ECE00010 = "BUG IN LIBPTHREAD: unlock_slow without orig_waiters";
      __break(0xB001u);
    }

    while (1)
    {
      v3 = __ulock_wake();
      if ((v3 & 0x80000000) == 0)
      {
        break;
      }

      if (v3 != -4)
      {
        if (v3 == -2)
        {
          break;
        }

        qword_1ECE00010 = "BUG IN LIBPTHREAD: ulock_wake failure";
        qword_1ECE00040 = -v3;
        __break(0xB001u);
LABEL_8:
        if ((a3 & 1) == 0)
        {
          break;
        }
      }
    }
  }
}

int pthread_attr_get_qos_class_np(pthread_attr_t *__attr, qos_class_t *__qos_class, int *__relative_priority)
{
  if (__attr->__sig != 1414022209)
  {
    return 22;
  }

  if ((__attr->__opaque[35] & 2) != 0)
  {
    v3 = *&__attr->__opaque[24];
    if (!__qos_class)
    {
      goto LABEL_16;
    }

LABEL_7:
    if ((v3 & 0x22000000) != 0)
    {
      v7 = 0;
    }

    else
    {
      v5 = __clz(__rbit32((v3 >> 8) & 0x3F));
      if (((v3 >> 8) & 0x3F) != 0)
      {
        v6 = v5 + 1;
      }

      else
      {
        v6 = 0;
      }

      if ((v3 & 0x3F00) != 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    *__qos_class = _pthread_qos_class_from_thread_qos_thread_qos_to_qos_class[v7];
    goto LABEL_16;
  }

  LODWORD(v3) = 0;
  if (__qos_class)
  {
    goto LABEL_7;
  }

LABEL_16:
  result = 0;
  if (__relative_priority)
  {
    v8 = (v3 & 0x3F00) != 0 && (v3 & 0x22000000) == 0;
    LODWORD(v3) = v3;
    if (v8)
    {
      v9 = v3 + 1;
    }

    else
    {
      v9 = 0;
    }

    *__relative_priority = v9;
  }

  return result;
}

uint64_t pthread_set_qos_class_np(void *a1, qos_class_t __qos_class, int __relative_priority)
{
  if ((_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224) != a1)
  {
    return 1;
  }

  if ((_pthread_ptr_munge_token ^ *a1) == a1)
  {

    return pthread_set_qos_class_self_np(__qos_class, __relative_priority);
  }

  else
  {
    _pthread_set_properties_self_cold_1();
    return qos_class_main();
  }
}

qos_class_t qos_class_main(void)
{
  if ((_main_qos & 0x22000000) != 0 || (_main_qos & 0x3F00) == 0)
  {
    v1 = 0;
  }

  else
  {
    v2 = __clz(__rbit32((_main_qos >> 8) & 0x3F));
    if (((_main_qos >> 8) & 0x3F) != 0)
    {
      v1 = v2 + 1;
    }

    else
    {
      v1 = 0;
    }
  }

  return _pthread_qos_class_from_thread_qos_thread_qos_to_qos_class[v1];
}

uint64_t _pthread_qos_class_decode(unsigned int a1, int *a2, void *a3)
{
  v3 = (a1 & 0x3F00) != 0 && (a1 & 0x22000000) == 0;
  v4 = __clz(__rbit32((a1 >> 8) & 0x3F));
  if (((a1 >> 8) & 0x3F) != 0)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  if (!v3)
  {
    v5 = 0;
  }

  v6 = _pthread_qos_class_from_thread_qos_thread_qos_to_qos_class[v5];
  if (a2)
  {
    if (v3)
    {
      v7 = a1 + 1;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  if (a3)
  {
    *a3 = a1 & 0xFF000000;
  }

  return v6;
}

uint64_t _pthread_qos_class_and_override_encode(int a1, char a2, int a3, int a4)
{
  v7 = _pthread_qos_class_to_thread_qos(a1);
  if (v7)
  {
    v8 = (128 << v7) | (a2 - 1) | a3 & 0xFF000000;
  }

  else
  {
    v8 = a3 & 0xFF000000;
  }

  v9 = _pthread_qos_class_to_thread_qos(a4);
  if (v9)
  {
    return v8 | (0x2000 << v9) | 0x800000;
  }

  else
  {
    return v8;
  }
}

uint64_t _pthread_qos_class_and_override_decode(uint64_t a1, int *a2, void *a3, _DWORD *a4)
{
  v6 = a1;
  if (!a4)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  _pthread_qos_class_and_override_decode_cold_1(a1, a4);
  if (a3)
  {
LABEL_3:
    *a3 = v6 & 0xFF000000;
  }

LABEL_4:
  if (a2)
  {
    v7 = v6 & 0x3F00;
    if ((v6 & 0x3F00) != 0 && (v6 & 0x22000000) == 0)
    {
      v9 = v6 + 1;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
    if ((v6 & 0x22000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_19:
    v12 = 0;
    return _pthread_qos_class_from_thread_qos_thread_qos_to_qos_class[v12];
  }

  v7 = v6 & 0x3F00;
  if ((v6 & 0x22000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v10 = __clz(__rbit32((v6 >> 8) & 0x3F));
  if (((v6 >> 8) & 0x3F) != 0)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v7)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return _pthread_qos_class_from_thread_qos_thread_qos_to_qos_class[v12];
}

uint64_t _pthread_sched_pri_decode(uint64_t result, void *a2)
{
  if (a2)
  {
    *a2 = result & 0xDF000000;
  }

  if ((result & 0x20000000) != 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t _pthread_qos_class_encode_workqueue(int a1, int a2)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v2 = 6;
      return (128 << v2) | a2 & 0xFF000000 | 0xFF;
    }

    if (a1 == 1)
    {
      v2 = 4;
      return (128 << v2) | a2 & 0xFF000000 | 0xFF;
    }

LABEL_12:
    _pthread_qos_class_encode_workqueue_cold_1(a1);
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v2 = 2;
      return (128 << v2) | a2 & 0xFF000000 | 0xFF;
    }

    if (a1 != 128)
    {
      goto LABEL_12;
    }
  }

  v2 = 3;
  return (128 << v2) | a2 & 0xFF000000 | 0xFF;
}

uint64_t _pthread_override_qos_class_start_direct()
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  result = __bsdthread_ctl();
  if (result == -1)
  {
    return **(StatusReg + 8);
  }

  return result;
}

uint64_t _pthread_override_qos_class_end_direct()
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  result = __bsdthread_ctl();
  if (result == -1)
  {
    return **(StatusReg + 8);
  }

  return result;
}

uint64_t _pthread_workqueue_asynchronous_override_add()
{
  result = __bsdthread_ctl();
  if (result == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return result;
}

uint64_t _pthread_workqueue_asynchronous_override_reset_self()
{
  result = __bsdthread_ctl();
  if (result == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return result;
}

uint64_t _pthread_workqueue_asynchronous_override_reset_all_self()
{
  result = __bsdthread_ctl();
  if (result == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return result;
}

uint64_t pthread_time_constraint_max_parallelism(char a1)
{
  if (*(MEMORY[0x1E69E99F0] + 256) != -1)
  {
    v2 = _os_alloc_once();
    if ((a1 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = (v2 + 286);
    v4 = 2;
    goto LABEL_8;
  }

  v2 = *(MEMORY[0x1E69E99F0] + 264);
  if (a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 2) != 0)
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 0xFFFFFFFFLL;
  }

  v3 = (v2 + 272);
  v4 = 3;
LABEL_8:
  result = *v3;
  if (result == 0xFFFF)
  {
    LODWORD(result) = __bsdthread_ctl();
    if (result == -1)
    {
      v6 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (v6 != 22 && v6 != 45)
      {
        pthread_qos_max_parallelism_cold_1(v6);
      }

      if (v4)
      {
        result = MEMORY[0xFFFFFC036];
      }

      else
      {
        result = MEMORY[0xFFFFFC035];
      }
    }

    else
    {
      result = result;
    }

    *v3 = result;
  }

  return result;
}

int posix_spawnattr_set_qos_class_np(posix_spawnattr_t *__attr, qos_class_t __qos_class)
{
  switch(__qos_class)
  {
    case 5u:
      v2 = 3;
      break;
    case 0x11u:
      v2 = 1;
      break;
    case 9u:
      v2 = 2;
      break;
    default:
      return 22;
  }

  return MEMORY[0x1EEE72ED0](__attr, v2);
}

int posix_spawnattr_get_qos_class_np(const posix_spawnattr_t *__attr, qos_class_t *__qos_class)
{
  if (!__qos_class)
  {
    return 22;
  }

  result = posix_spawnattr_get_qos_clamp_np();
  if (!result)
  {
    result = 0;
    *__qos_class = QOS_CLASS_UNSPECIFIED;
  }

  return result;
}

int pthread_rwlockattr_init(pthread_rwlockattr_t *a1)
{
  a1->__sig = 1381452865;
  *a1->__opaque = 2;
  return 0;
}

int pthread_rwlockattr_destroy(pthread_rwlockattr_t *a1)
{
  a1->__sig = 0;
  *a1->__opaque = 0;
  return 0;
}

int pthread_rwlockattr_getpshared(const pthread_rwlockattr_t *a1, int *a2)
{
  if (a1->__sig != 1381452865)
  {
    return 22;
  }

  result = 0;
  *a2 = *a1->__opaque;
  return result;
}

int pthread_rwlockattr_setpshared(pthread_rwlockattr_t *a1, int a2)
{
  result = 22;
  if ((a2 - 1) <= 1 && a1->__sig == 1381452865)
  {
    result = 0;
    *a1->__opaque = a2;
  }

  return result;
}

int pthread_rwlock_destroy(pthread_rwlock_t *a1)
{
  v2 = 0;
  opaque = a1->__opaque;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(a1->__opaque, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  if (a1->__sig == 766030772)
  {
    goto LABEL_8;
  }

  if (a1->__sig == 1381452875)
  {
    LODWORD(_X0) = *(&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0);
    v6 = *((&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0) + 4);
    LODWORD(_X1) = *((&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0) + 8);
    v8 = *((&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0) + 0xC);
    do
    {
      v9 = _X1 | (v8 << 32);
      _X2 = _X0 | (v6 << 32);
      _X1 = v9;
      __asm { CASP            X0, X1, X2, X3, [X8] }

      v8 = HIDWORD(v9);
      v6 = HIDWORD(_X0);
    }

    while (_X0 != _X2);
    if ((_X0 & 0xFFFFFF00) == v9)
    {
LABEL_8:
      v15 = 0;
      a1->__sig = 0;
      goto LABEL_11;
    }

    v15 = 16;
  }

  else
  {
    v15 = 22;
  }

LABEL_11:
  v16 = *(StatusReg + 24);
  v17 = v16;
  atomic_compare_exchange_strong_explicit(opaque, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != v16)
  {
    os_unfair_lock_unlock(opaque);
  }

  return v15;
}

int pthread_rwlock_tryrdlock(pthread_rwlock_t *a1)
{
  if (a1->__sig == 1381452875)
  {
    v1 = (&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0);
    v2 = *v1;
    if ((*v1 & 2) == 0)
    {
      *(&v4 + 1) = *((&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0) + 8);
      *&v4 = *v1;
      v3 = v4 >> 32;
      v5 = DWORD2(v4) & 0xFFFFFF00;
      while (1)
      {
        v6 = v2 | (v3 << 32);
        if ((v2 & 5) != 0)
        {
          v2 = v2 | (v3 << 32);
          atomic_compare_exchange_strong_explicit(v1, &v2, v6, memory_order_acquire, memory_order_acquire);
          if (v2 == v6)
          {
            return 16;
          }
        }

        else
        {
          if (v2 - v5 > 0xFFFFFEFF)
          {
            return _pthread_rwlock_lock_slow(a1, 1, 1);
          }

          v7 = (v3 << 32) + 0x10000000000 + (v2 & 0xFFFFFFBA) + 256;
          v2 = v6;
          atomic_compare_exchange_strong_explicit(v1, &v2, v7, memory_order_acquire, memory_order_acquire);
          if (v2 == v6)
          {
            return 0;
          }
        }

        v3 = HIDWORD(v2);
      }
    }
  }

  return _pthread_rwlock_lock_slow(a1, 1, 1);
}

int pthread_key_create(pthread_key_t *a1, void (__cdecl *a2)(void *))
{
  os_unfair_lock_lock_with_options();
  v4 = 256;
  while (_pthread_keys[v4])
  {
    if (++v4 == 512)
    {
      v5 = 35;
      goto LABEL_6;
    }
  }

  v5 = 0;
  _pthread_keys[v4] = ~a2;
  *a1 = v4;
LABEL_6:
  os_unfair_lock_unlock(&__pthread_tsd_lock);
  return v5;
}

int pthread_key_delete(pthread_key_t a1)
{
  os_unfair_lock_lock_with_options();
  if ((a1 & 0xFFFFFFFFFFFFFF00) == 0x100 && _pthread_keys[a1])
  {
    _pthread_keys[a1] = 0;
    os_unfair_lock_lock_with_options();
    v2 = __pthread_head;
    if (__pthread_head)
    {
      do
      {
        v2[a1 + 28] = 0;
        v2 = v2[2];
      }

      while (v2);
    }

    os_unfair_lock_unlock(&_pthread_list_lock);
    v3 = 0;
  }

  else
  {
    v3 = 22;
  }

  os_unfair_lock_unlock(&__pthread_tsd_lock);
  return v3;
}

uint64_t _pthread_setspecific_static(unint64_t a1, uint64_t a2)
{
  if (a1 > 0xFF)
  {
    return 22;
  }

  result = 0;
  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * a1) = a2;
  return result;
}

int pthread_introspection_setspecific_np(pthread_t thread, pthread_key_t key, const void *value)
{
  if (*&pthread_self()->__opaque[34] != 1)
  {
    pthread_introspection_setspecific_np_cold_1();
  }

  if (key - 10 > 0x1F5)
  {
    return 22;
  }

  v6 = _pthread_keys[key];
  if (key >= 0x100 && !v6)
  {
    return 22;
  }

  *&thread->__opaque[8 * key + 208] = value;
  if (key <= 0xFF && !v6)
  {
    _pthread_keys[key] = -1;
  }

  result = 0;
  if (*&thread->__opaque[60] < key)
  {
    *&thread->__opaque[60] = key;
  }

  return result;
}

void *__cdecl pthread_introspection_getspecific_np(pthread_t thread, pthread_key_t key)
{
  if (*&pthread_self()->__opaque[34] != 4)
  {
    pthread_introspection_getspecific_np_cold_1();
  }

  return *&thread->__opaque[8 * key + 208];
}

int sigwait(const sigset_t *a1, int *a2)
{
  pthread_testcancel();
  if (__sigwait() != -1)
  {
    return 0;
  }

  v3 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_testcancel();
  if (v3 == 4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t _pthread_atfork_prepare_handlers()
{
  if (*(MEMORY[0x1E69E99F0] + 256) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 264);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  result = os_unfair_lock_lock_with_options();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = 24 * v2 - 24;
    do
    {
      v4 = *(*(v0 + 264) + v3);
      if (v4)
      {
        result = v4(result);
      }

      v3 -= 24;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t _pthread_atfork_prepare()
{
  if (*(MEMORY[0x1E69E99F0] + 256) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 264);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  *v0 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224;

  return os_unfair_lock_lock_with_options();
}

void _pthread_atfork_parent()
{
  if (*(MEMORY[0x1E69E99F0] + 256) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 264);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  os_unfair_lock_unlock((*v0 + 72));

  os_unfair_lock_unlock((v0 + 8));
}

void _pthread_atfork_parent_handlers()
{
  if (*(MEMORY[0x1E69E99F0] + 256) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 264);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 8;
    do
    {
      v4 = *(*(v0 + 264) + v3);
      if (v4)
      {
        v4();
        v1 = *(v0 + 16);
      }

      ++v2;
      v3 += 24;
    }

    while (v2 < v1);
  }

  os_unfair_lock_unlock((v0 + 12));
}

uint64_t _pthread_atfork_child()
{
  if (*(MEMORY[0x1E69E99F0] + 256) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 264);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  *(v0 + 8) = 0;
  __is_threaded = 0;
  _pthread_main_thread_postfork_init(*v0);
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  return _pthread_bsdthread_init(v2);
}

void _pthread_atfork_child_handlers()
{
  if (*(MEMORY[0x1E69E99F0] + 256) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 264);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 16;
    do
    {
      v4 = *(*(v0 + 264) + v3);
      if (v4)
      {
        v4();
        v1 = *(v0 + 16);
      }

      ++v2;
      v3 += 24;
    }

    while (v2 < v1);
  }

  *(v0 + 12) = 0;
}

uint64_t _pthread_fork_prepare()
{
  _pthread_atfork_prepare_handlers();

  return _pthread_atfork_prepare();
}

void _pthread_fork_parent()
{
  _pthread_atfork_parent();

  _pthread_atfork_parent_handlers();
}

void pthread_jit_write_with_callback_np_cold_1()
{
  qword_1ECE00010 = "BUG IN CLIENT OF LIBPTHREAD: pthread_jit_write_with_callback_np() called before pthread_jit_write_freeze_callbacks_np()";
  qword_1ECE00040 = byte_1ECE08001;
  __break(0xB001u);
}

void pthread_jit_write_with_callback_np_cold_2(uint64_t a1)
{
  qword_1ECE00010 = "BUG IN CLIENT OF LIBPTHREAD: pthread_jit_write_with_callback_np() callback not in allowlist";
  qword_1ECE00040 = a1;
  __break(0xB001u);
}

void _pthread_jit_write_protect_freeze_config_cold_1(int a1)
{
  qword_1ECE00010 = "BUG IN LIBPTHREAD: jit config vm_protect() failed";
  qword_1ECE00040 = a1;
  __break(0xB001u);
}

void _pthread_create_cold_1(uint64_t a1)
{
  qword_1ECE00010 = "BUG IN CLIENT OF LIBPTHREAD: Unaligned stack addr in attrs";
  qword_1ECE00040 = a1;
  __break(0xB001u);
}

void _pthread_create_cold_3(uint64_t a1)
{
  qword_1ECE00010 = "BUG IN CLIENT OF LIBPTHREAD: Stack size in attrs is too small";
  qword_1ECE00040 = a1;
  __break(0xB001u);
}

void pthread_install_workgroup_functions_np_cold_1(uint64_t a1)
{
  qword_1ECE00010 = "BUG IN CLIENT OF LIBPTHREAD: workgroup functions already installed";
  qword_1ECE00040 = a1;
  __break(0xB001u);
}

void _pthread_joiner_wake_cold_1(int a1)
{
  qword_1ECE00010 = "BUG IN LIBPTHREAD: pthread_join() wake failure";
  qword_1ECE00040 = -a1;
  __break(0xB001u);
}

void __pthread_init_cold_1(int a1)
{
  qword_1ECE00010 = "BUG IN LIBPTHREAD: host_info() failed";
  qword_1ECE00040 = a1;
  __break(0xB001u);
}

void __pthread_init_cold_2(int a1)
{
  qword_1ECE00010 = "BUG IN LIBPTHREAD: jit config vm_map PERMANENT failed";
  qword_1ECE00040 = a1;
  __break(0xB001u);
}

void __pthread_init_cold_3()
{
  qword_1ECE00010 = "BUG IN LIBPTHREAD: Token from the kernel is 0";
  qword_1ECE00040 = 0;
  __break(0xB001u);
}

void _pthread_bsdthread_init_cold_1(unsigned int a1)
{
  qword_1ECE00010 = "BUG IN LIBPTHREAD: Missing required kernel support";
  qword_1ECE00040 = a1;
  __break(0xB001u);
}

void _pthread_wqthread_cold_1(int a1)
{
  qword_1ECE00010 = "BUG IN LIBPTHREAD: Missing priority";
  qword_1ECE00040 = a1;
  __break(0xB001u);
}

void _pthread_jit_write_protect_bulk_image_load_callback_cold_1(uint64_t a1)
{
  qword_1ECE00010 = "BUG IN CLIENT OF LIBPTHREAD: Too many pthread jit write callbacks";
  qword_1ECE00040 = a1;
  __break(0xB001u);
}

uint64_t pthread_testcancel_cold_1(uint64_t a1, uint64_t a2)
{
  if ((_pthread_ptr_munge_token ^ *a1) == a2)
  {
    *(a1 + 165) = 1;
    pthread_exit(1);
  }

  v2 = OUTLINED_FUNCTION_0();
  return _pthread_ulock_cond_wait_complete(v2);
}

uint64_t _pthread_ulock_cond_wait_complete(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    result = _pthread_mutex_ulock_lock(a2, 0);
  }

  v3 = *v2;
  v4 = *v2;
  do
  {
    LODWORD(v5) = HIWORD(v3) - 1;
    if (HIWORD(v3))
    {
      v5 = v5;
    }

    else
    {
      v5 = 0;
    }

    atomic_compare_exchange_strong_explicit(v2, &v4, (v3 + 0xFFFF00000000) & 0xFFFF00000000 | (v5 << 48) | v3, memory_order_acquire, memory_order_acquire);
    v6 = v4 == v3;
    v3 = v4;
  }

  while (!v6);
  return result;
}

uint64_t _pthread_ulock_cond_cleanup(uint64_t *a1)
{
  _pthread_ulock_cond_wait_complete(*a1 + 4 * ((*(*a1 + 12) >> 29) & 1) + 24, a1[1]);
  v2 = *a1;

  return pthread_cond_signal(v2);
}

void pthread_cond_broadcast_cold_2(int a1)
{
  qword_1ECE00010 = "BUG IN LIBPTHREAD: ulock_wake failure";
  qword_1ECE00040 = -a1;
  __break(0xB001u);
}

void pthread_cond_broadcast_cold_3(unsigned int a1)
{
  qword_1ECE00010 = "BUG IN LIBPTHREAD: impossible cond signature";
  qword_1ECE00040 = a1;
  __break(0xB001u);
}

uint64_t _pthread_qos_class_and_override_decode_cold_1(uint64_t result, _DWORD *a2)
{
  v2 = (result & 0x22800000) != 0x800000 || (result & 0x3FC000) == 0;
  if (v2 || !(result >> 14))
  {
    v4 = 0;
  }

  else
  {
    v3 = __clz(__rbit32((result >> 14)));
    if (v3 > 5)
    {
      v5 = 0;
      goto LABEL_10;
    }

    v4 = v3 + 1;
  }

  v5 = _pthread_qos_class_from_thread_qos_thread_qos_to_qos_class[v4];
LABEL_10:
  *a2 = v5;
  return result;
}

void _pthread_qos_class_encode_workqueue_cold_1(int a1)
{
  qword_1ECE00010 = "BUG IN CLIENT OF LIBPTHREAD: Invalid priority";
  qword_1ECE00040 = a1;
  __break(0xB001u);
}

uint64_t pthread_override_qos_class_start_np_cold_1(void *a1, void *a2)
{
  *a1 = *MEMORY[0x1E69E9AC8];
  v4 = *MEMORY[0x1E69E9A60];
  OUTLINED_FUNCTION_0_0();
  if (mach_vm_allocate(v5, v6, v7, 1241513985))
  {
    result = 0;
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
  }

  else
  {
    *a2 = *a1;
    return 1;
  }

  return result;
}

void pthread_qos_max_parallelism_cold_1(int a1)
{
  qword_1ECE00010 = "BUG IN LIBPTHREAD: qos_max_parallelism failed";
  qword_1ECE00040 = a1;
  __break(0xB001u);
}

void pthread_atfork_cold_1(uint64_t a1)
{
  qword_1ECE00010 = "BUG IN LIBPTHREAD: expected atfork to be inline";
  qword_1ECE00040 = a1;
  __break(0xB001u);
}

void pthread_dependency_wait_np_cold_1(unsigned int *a1)
{
  v1 = *a1;
  qword_1ECE00010 = "BUG IN CLIENT OF LIBPTHREAD: Waiting on orphaned dependency";
  qword_1ECE00040 = v1;
  __break(0xB001u);
}

void pthread_dependency_wait_np_cold_2(unsigned int a1)
{
  qword_1ECE00010 = "BUG IN CLIENT OF LIBPTHREAD: Corrupted pthread_dependency_t";
  qword_1ECE00040 = a1;
  __break(0xB001u);
}

void pthread_dependency_wait_np_cold_3(int a1)
{
  qword_1ECE00010 = "BUG IN CLIENT OF LIBPTHREAD: __ulock_wait() failed";
  qword_1ECE00040 = -a1;
  __break(0xB001u);
  __bsdthread_create();
}