uint64_t __kdebug_trace64(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_kdebug_trace64, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int *__error(void)
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (v0)
  {
    return v0;
  }

  else
  {
    return &errno;
  }
}

uint64_t os_packet_trace_event(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x60);
  result = kdebug_is_enabled(a2, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {

    return __kdebug_trace64(a2, v9, 0, 0, 0, v11, v12, v13);
  }

  return result;
}

uint64_t kdebug_trace_string(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (!kdebug_is_enabled(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  if (a2 != -1 && (a2 || a3))
  {

    return __kdebug_trace_string(a1, a2, a3, v11, v12, v13, v14, v15);
  }

  else
  {
    v17 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v17)
    {
      v17 = &errno;
    }

    *v17 = 22;
    return -1;
  }
}

uint64_t kdebug_trace(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = kdebug_is_enabled(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {

    return __kdebug_trace64(a1, a2, a3, a4, a5, v14, v15, v16);
  }

  return result;
}

BOOL kdebug_is_enabled(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = 0;
  if (MEMORY[0xFFFFFC100])
  {
    if ((MEMORY[0xFFFFFC100] & 2) == 0)
    {
      return 1;
    }

    v8 = a1;
    v9 = kdebug_typefilter(a1, a2, a3, a4, a5, a6, a7, a8);
    if (!v9 || ((*(v9 + (v8 >> 19)) >> (BYTE2(v8) & 7)) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t kdebug_typefilter(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = kdebug_typefilter_typefilter;
  if (!kdebug_typefilter_typefilter)
  {
    v10 = 0;
    address = 0;
    if (!__kdebug_typefilter(&address, &v10, a3, a4, a5, a6, a7, a8) && address)
    {
      v9 = 0;
      atomic_compare_exchange_strong(&kdebug_typefilter_typefilter, &v9, address);
      if (v9)
      {
        mach_vm_deallocate(mach_task_self_, address, 0x2000uLL);
      }
    }

    return kdebug_typefilter_typefilter;
  }

  return result;
}

uint64_t __kdebug_typefilter(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_kdebug_typefilter, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t kevent_id(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_kevent_id, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __workq_kernreturn(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_workq_kernreturn, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

void voucher_mach_msg_revert(voucher_mach_msg_state_t state)
{
  v1 = _libkernel_voucher_functions[4];
  if (v1)
  {
    v1(state);
  }
}

uint64_t __ulock_wait2(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_ulock_wait2, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

voucher_mach_msg_state_t voucher_mach_msg_adopt(mach_msg_header_t *msg)
{
  v1 = _libkernel_voucher_functions[3];
  if (v1)
  {
    return v1(msg);
  }

  else
  {
    return -1;
  }
}

uint64_t mach_continuous_approximate_time(void)
{
  v0 = MEMORY[0xFFFFFC098];
  if (MEMORY[0xFFFFFC0C8])
  {
    v1 = MEMORY[0xFFFFFC0C0];
  }

  else
  {
    v1 = mach_absolute_time();
  }

  return v1 + v0;
}

uint64_t mach_absolute_time(void)
{
  if (!MEMORY[0xFFFFFC090])
  {
    return mach_absolute_time_kernel();
  }

  if (MEMORY[0xFFFFFC090] == 2)
  {
    do
    {
      v3 = MEMORY[0xFFFFFC088];
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 6));
    }

    while (v3 != MEMORY[0xFFFFFC088]);
    return StatusReg + v3;
  }

  else if (MEMORY[0xFFFFFC090] == 3)
  {
    do
    {
      v5 = MEMORY[0xFFFFFC088];
      v6 = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 10, 6));
    }

    while (v5 != MEMORY[0xFFFFFC088]);
    return v6 + v5;
  }

  else
  {
    __isb(0xFu);
    do
    {
      v1 = MEMORY[0xFFFFFC088];
      v2 = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 2));
    }

    while (v1 != MEMORY[0xFFFFFC088]);
    return v2 + v1;
  }
}

uint64_t mach_get_times(uint64_t *a1, void *a2, __darwin_time_t *a3)
{
  if (a3)
  {
    *&v9.tv_usec = 0;
    v10 = 0;
    v9.tv_sec = 0;
    do
    {
      v6 = MEMORY[0xFFFFFC098];
      if (__commpage_gettimeofday_internal(&v9, &v10))
      {
        v10 = 0;
        result = __gettimeofday_with_mach(&v9, 0);
        if ((result & 0x80000000) != 0)
        {
          return 5;
        }

        if (!v10)
        {
          __break(1u);
          return result;
        }
      }
    }

    while (v6 != MEMORY[0xFFFFFC098]);
    if (a1)
    {
      *a1 = v10;
    }

    if (a2)
    {
      *a2 = v10 + v6;
    }

    result = 0;
    v8 = 1000 * v9.tv_usec;
    *a3 = v9.tv_sec;
    a3[1] = v8;
  }

  else
  {
    _mach_continuous_time(a1, a2);
    return 0;
  }

  return result;
}

uint64_t _mach_continuous_time(uint64_t *a1, void *a2)
{
  do
  {
    v5 = MEMORY[0xFFFFFC098];
    result = mach_absolute_time();
  }

  while (v5 != MEMORY[0xFFFFFC098]);
  if (a1)
  {
    *a1 = result;
  }

  if (a2)
  {
    *a2 = v5 + result;
  }

  return result;
}

uint64_t __commpage_gettimeofday_internal(uint64_t a1, uint64_t *a2)
{
  do
  {
    v4 = MEMORY[0xFFFFFC120];
    v5 = mach_absolute_time();
    v6 = MEMORY[0xFFFFFC130];
  }

  while (v4 != MEMORY[0xFFFFFC120]);
  if (!v4)
  {
    return 1;
  }

  v7 = v5 - v4;
  v8 = 1;
  if (v5 - v4 < MEMORY[0xFFFFFC140] && (MEMORY[0xFFFFFC128] & 0x8000000000000000) == 0)
  {
    v9 = MEMORY[0xFFFFFC138] * v7;
    *a1 = ((MEMORY[0xFFFFFC138] * v7) >> 64) + __CFADD__(MEMORY[0xFFFFFC138] * v7, MEMORY[0xFFFFFC130]) + MEMORY[0xFFFFFC128];
    *(a1 + 8) = (1000000 * ((v9 + v6) >> 32)) >> 32;
    v8 = 0;
    if (a2)
    {
      *a2 = v5;
    }
  }

  return v8;
}

uint64_t mach_continuous_time(void)
{
  v2 = 0;
  if (MEMORY[0xFFFFFC091])
  {
    if (MEMORY[0xFFFFFC090] == 3)
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 10, 6));
    }

    else if (MEMORY[0xFFFFFC090] == 2)
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 6));
    }

    else
    {
      __isb(0xFu);
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 2));
    }

    return MEMORY[0xFFFFFC0A8] + StatusReg;
  }

  else
  {
    _mach_continuous_time(0, &v2);
    return v2;
  }
}

uint64_t mach_approximate_time(void)
{
  if (MEMORY[0xFFFFFC0C8])
  {
    return MEMORY[0xFFFFFC0C0];
  }

  else
  {
    return mach_absolute_time();
  }
}

BOOLean_t voucher_mach_msg_set(mach_msg_header_t *msg)
{
  v1 = _libkernel_voucher_functions[1];
  if (v1)
  {
    return v1(msg);
  }

  else
  {
    return 0;
  }
}

ssize_t pread(int __fd, void *__buf, size_t __nbyte, off_t a4)
{
  result = mac_syscall(SYS_pread, __fd, __buf, __nbyte, a4);
  if (v4)
  {
    return cerror(result);
  }

  return result;
}

void voucher_mach_msg_clear(mach_msg_header_t *msg)
{
  v1 = _libkernel_voucher_functions[2];
  if (v1)
  {
    v1(msg);
  }
}

kern_return_t mach_vm_purgable_control(vm_map_t target_task, mach_vm_address_t address, vm_purgable_t control, int *state)
{
  result = _kernelrpc_mach_vm_purgable_control_trap(target_task, address, control, state);
  if (result == 268435459)
  {

    return _kernelrpc_mach_vm_purgable_control(target_task, address, control, state);
  }

  return result;
}

int close(int a1)
{
  result = mac_syscall(SYS_close, a1);
  if (v1)
  {
    return cerror(result);
  }

  return result;
}

int64_t mach_vm_reclaim_update_kernel_accounting(atomic_ullong *a1)
{
  v20 = 0;
  v2 = a1[7];
  while (1)
  {
    v3 = mach_absolute_time();
    if (v3 - v2 < a1[6])
    {
      break;
    }

    v10 = v2;
    atomic_compare_exchange_strong_explicit(a1 + 7, &v10, v3, memory_order_relaxed, memory_order_relaxed);
    _ZF = v10 == v2;
    v2 = v10;
    if (_ZF)
    {
      result = mach_vm_reclaim_update_kernel_accounting_trap(mach_task_self_, &v20, v4, v5, v6, v7, v8, v9);
      v13 = v20;
      _X8 = atomic_fetch_add_explicit(a1 + 8, -v20, memory_order_relaxed) - v13;
      _X9 = a1 + 9;
      __asm { LDUMIN          X8, X8, [X9] }

      return result;
    }
  }

  return 0;
}

off_t lseek(int a1, off_t a2, int a3)
{
  result = mac_syscall(SYS_lseek, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

uint64_t kevent_qos(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_kevent_qos, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t _kernelrpc_mach_port_request_notification(unsigned int a1, int a2, int a3, int a4, int a5, unsigned __int8 a6, _DWORD *a7)
{
  v14 = 1;
  v15 = a5;
  v16 = 0;
  v17 = a6 << 16;
  v18 = NDR_record;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x3C80001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v13.msgh_voucher_port = 0xC8D00000000;
  v10 = mach_msg2_internal(&v13, 0x200000003, 0x3C80001513, __PAIR64__(reply_port, a1), 0xC8D00000000, ((reply_port << 32) | 1), 0x30, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (v13.msgh_id == 71)
      {
        v11 = 4294966988;
      }

      else if (v13.msgh_id == 3313)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 36)
          {
            v11 = 4294966996;
            if (v16)
            {
              if (v13.msgh_remote_port)
              {
                v11 = 4294966996;
              }

              else
              {
                v11 = v16;
              }
            }
          }

          else
          {
            v11 = 4294966996;
          }

          goto LABEL_20;
        }

        v11 = 4294966996;
        if (v14 == 1 && *&v13.msgh_size == 40 && HIWORD(v17) << 16 == 1179648)
        {
          v11 = 0;
          *a7 = v15;
          return v11;
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&v13);
      return v11;
    }

    mig_dealloc_reply_port(v13.msgh_local_port);
  }

  return v11;
}

kern_return_t host_statistics(host_t host_priv, host_flavor_t flavor, host_info_t host_info_out, mach_msg_type_number_t *host_info_outCnt)
{
  v17 = NDR_record;
  v7 = *host_info_outCnt;
  if (*host_info_outCnt >= 0x44)
  {
    v7 = 68;
  }

  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v18 = flavor;
  v19 = v7;
  reply_port = mig_get_reply_port();
  *&v16.msgh_bits = 0x2800001513;
  *&v16.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v16.msgh_voucher_port = 0xD800000000;
  v9 = mach_msg2_internal(&v16, 0x200000003, 0x2800001513, __PAIR64__(reply_port, host_priv), 0xD800000000, (reply_port << 32), 0x140, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v16.msgh_local_port);
      return v10;
    }

    if (v16.msgh_id == 71)
    {
      v10 = -308;
    }

    else if (v16.msgh_id == 316)
    {
      if ((v16.msgh_bits & 0x80000000) == 0)
      {
        if (v16.msgh_size - 313 <= 0xFFFFFEEE)
        {
          if (v18)
          {
            v11 = v16.msgh_remote_port == 0;
          }

          else
          {
            v11 = 0;
          }

          if (v11 && v16.msgh_size == 36)
          {
            v10 = v18;
          }

          else
          {
            v10 = -300;
          }

          goto LABEL_24;
        }

        if (!v16.msgh_remote_port)
        {
          v10 = v18;
          if (v18)
          {
            goto LABEL_24;
          }

          v14 = v19;
          if (v19 <= 0x44 && v19 <= (v16.msgh_size - 40) >> 2 && v16.msgh_size == 4 * v19 + 40)
          {
            v15 = *host_info_outCnt;
            if (v19 <= v15)
            {
              memmove(host_info_out, v20, 4 * v19);
              v10 = 0;
              *host_info_outCnt = v14;
            }

            else
            {
              memmove(host_info_out, v20, 4 * v15);
              *host_info_outCnt = v14;
              return -307;
            }

            return v10;
          }
        }
      }

      v10 = -300;
    }

    else
    {
      v10 = -301;
    }

LABEL_24:
    mach_msg_destroy(&v16);
  }

  return v10;
}

kern_return_t task_get_special_port(task_inspect_t task, int which_port, mach_port_t *special_port)
{
  v14 = 0;
  v13 = 0;
  v11 = NDR_record;
  v12 = which_port;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x2400001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v10.msgh_voucher_port = 0xD5100000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x2400001513, __PAIR64__(reply_port, task), 0xD5100000000, (reply_port << 32), 0x30, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (v10.msgh_id == 71)
      {
        v7 = -308;
      }

      else if (v10.msgh_id == 3509)
      {
        if ((v10.msgh_bits & 0x80000000) != 0)
        {
          v7 = -300;
          if (*&v11.mig_vers == 1 && *&v10.msgh_size == 40 && WORD1(v13) << 16 == 1114112)
          {
            v7 = 0;
            *special_port = *&v11.int_rep;
            return v7;
          }
        }

        else if (v10.msgh_size == 36)
        {
          v7 = -300;
          if (v12)
          {
            if (v10.msgh_remote_port)
            {
              v7 = -300;
            }

            else
            {
              v7 = v12;
            }
          }
        }

        else
        {
          v7 = -300;
        }
      }

      else
      {
        v7 = -301;
      }

      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_reply_port(v10.msgh_local_port);
  }

  return v7;
}

kern_return_t thread_get_state(thread_read_t target_act, thread_state_flavor_t flavor, thread_state_t old_state, mach_msg_type_number_t *old_stateCnt)
{
  v17 = NDR_record;
  v7 = *old_stateCnt;
  if (*old_stateCnt >= 0x510)
  {
    v7 = 1296;
  }

  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v18 = flavor;
  v19 = v7;
  reply_port = mig_get_reply_port();
  *&v16.msgh_bits = 0x2800001513;
  *&v16.msgh_remote_port = __PAIR64__(reply_port, target_act);
  *&v16.msgh_voucher_port = 0xE1300000000;
  v9 = mach_msg2_internal(&v16, 0x200000003, 0x2800001513, __PAIR64__(reply_port, target_act), 0xE1300000000, (reply_port << 32), 0x1470, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v16.msgh_local_port);
      return v10;
    }

    if (v16.msgh_id == 71)
    {
      v10 = -308;
    }

    else if (v16.msgh_id == 3703)
    {
      if ((v16.msgh_bits & 0x80000000) == 0)
      {
        if (v16.msgh_size - 5225 <= 0xFFFFEBBE)
        {
          if (v18)
          {
            v11 = v16.msgh_remote_port == 0;
          }

          else
          {
            v11 = 0;
          }

          if (v11 && v16.msgh_size == 36)
          {
            v10 = v18;
          }

          else
          {
            v10 = -300;
          }

          goto LABEL_24;
        }

        if (!v16.msgh_remote_port)
        {
          v10 = v18;
          if (v18)
          {
            goto LABEL_24;
          }

          v14 = v19;
          if (v19 <= 0x510 && v19 <= (v16.msgh_size - 40) >> 2 && v16.msgh_size == 4 * v19 + 40)
          {
            v15 = *old_stateCnt;
            if (v19 <= v15)
            {
              memmove(old_state, v20, 4 * v19);
              v10 = 0;
              *old_stateCnt = v14;
            }

            else
            {
              memmove(old_state, v20, 4 * v15);
              *old_stateCnt = v14;
              return -307;
            }

            return v10;
          }
        }
      }

      v10 = -300;
    }

    else
    {
      v10 = -301;
    }

LABEL_24:
    mach_msg_destroy(&v16);
  }

  return v10;
}

kern_return_t mach_vm_region_recurse(vm_map_read_t target_task, mach_vm_address_t *address, mach_vm_size_t *size, natural_t *nesting_depth, vm_region_recurse_info_t info, mach_msg_type_number_t *infoCnt)
{
  v12 = *address;
  v25 = NDR_record;
  *v26 = v12;
  v13 = *infoCnt;
  if (*infoCnt >= 0x13)
  {
    v13 = 19;
  }

  v14 = *nesting_depth;
  *&v27[4] = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  *&v26[8] = v14;
  *v27 = v13;
  reply_port = mig_get_reply_port();
  *&v24.msgh_bits = 0x3000001513;
  *&v24.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v24.msgh_voucher_port = 0x12CF00000000;
  v16 = mach_msg2_internal(&v24, 0x200000003, 0x3000001513, __PAIR64__(reply_port, target_task), 0x12CF00000000, (reply_port << 32), 0x90, 0);
  v17 = v16;
  if ((v16 - 268435458) > 0xE || ((1 << (v16 - 2)) & 0x4003) == 0)
  {
    if (v16)
    {
      mig_dealloc_reply_port(v24.msgh_local_port);
      return v17;
    }

    if (v24.msgh_id == 71)
    {
      v17 = -308;
    }

    else if (v24.msgh_id == 4915)
    {
      if ((v24.msgh_bits & 0x80000000) == 0)
      {
        if (v24.msgh_size - 137 <= 0xFFFFFFB2)
        {
          if (*v26)
          {
            v18 = v24.msgh_remote_port == 0;
          }

          else
          {
            v18 = 0;
          }

          if (v18 && v24.msgh_size == 36)
          {
            v17 = *v26;
          }

          else
          {
            v17 = -300;
          }

          goto LABEL_24;
        }

        if (!v24.msgh_remote_port)
        {
          v17 = *v26;
          if (*v26)
          {
            goto LABEL_24;
          }

          v21 = *&v27[12];
          if (*&v27[12] <= 0x13u && *&v27[12] <= (v24.msgh_size - 60) >> 2)
          {
            v22 = 4 * *&v27[12];
            if (v24.msgh_size == 4 * *&v27[12] + 60)
            {
              *address = *&v26[4];
              *size = *v27;
              *nesting_depth = *&v27[8];
              v23 = *infoCnt;
              if (v21 <= v23)
              {
                memmove(info, &v27[16], v22);
                v17 = 0;
                *infoCnt = v21;
              }

              else
              {
                memmove(info, &v27[16], 4 * v23);
                *infoCnt = v21;
                return -307;
              }

              return v17;
            }
          }
        }
      }

      v17 = -300;
    }

    else
    {
      v17 = -301;
    }

LABEL_24:
    mach_msg_destroy(&v24);
  }

  return v17;
}

uint64_t _kernelrpc_thread_policy_set(unsigned int a1, unsigned int a2, void *__src, unsigned int a4)
{
  v12 = NDR_record;
  v13 = a2;
  if (a4 > 0x10)
  {
    return 4294966989;
  }

  memset(v15, 0, sizeof(v15));
  v7 = 4 * a4;
  memmove(v15, __src, 4 * a4);
  v14 = a4;
  reply_port = mig_get_reply_port();
  v11.msgh_bits = 5395;
  v11.msgh_size = v7 + 40;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v11.msgh_voucher_port = 0xE2100000000;
  v9 = mach_msg2_internal(&v11, 0x200000003, (((((v7 + 40) >> 2) & 0x1FFFFFFF) << 34) | 0x1513), __PAIR64__(reply_port, a1), 0xE2100000000, (reply_port << 32), 0x2C, 0);
  v4 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v4;
    }

    if (v11.msgh_id == 71)
    {
      v4 = 4294966988;
    }

    else if (v11.msgh_id == 3717)
    {
      v4 = 4294966996;
      if ((v11.msgh_bits & 0x80000000) == 0 && v11.msgh_size == 36 && !v11.msgh_remote_port)
      {
        v4 = v13;
        if (!v13)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = 4294966995;
    }

    mach_msg_destroy(&v11);
  }

  return v4;
}

uint64_t _kernelrpc_mach_port_set_attributes(unsigned int a1, unsigned int a2, int a3, void *__src, unsigned int a5)
{
  v13 = NDR_record;
  v14 = a2;
  v15 = a3;
  if (a5 > 0x11)
  {
    return 4294966989;
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v8 = 4 * a5;
  memmove(v17, __src, 4 * a5);
  v16 = a5;
  reply_port = mig_get_reply_port();
  v12.msgh_bits = 5395;
  v12.msgh_size = v8 + 44;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v12.msgh_voucher_port = 0xC9200000000;
  v10 = mach_msg2_internal(&v12, 0x200000003, (((((v8 + 44) >> 2) & 0x1FFFFFFF) << 34) | 0x1513), __PAIR64__(reply_port, a1), 0xC9200000000, (reply_port << 32), 0x2C, 0);
  v5 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (v10)
    {
      mig_dealloc_reply_port(v12.msgh_local_port);
      return v5;
    }

    if (v12.msgh_id == 71)
    {
      v5 = 4294966988;
    }

    else if (v12.msgh_id == 3318)
    {
      v5 = 4294966996;
      if ((v12.msgh_bits & 0x80000000) == 0 && v12.msgh_size == 36 && !v12.msgh_remote_port)
      {
        v5 = v14;
        if (!v14)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = 4294966995;
    }

    mach_msg_destroy(&v12);
  }

  return v5;
}

kern_return_t thread_resume(thread_read_t target_act)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001513;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, target_act);
  *&v7.msgh_voucher_port = 0xE1600000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001513, __PAIR64__(reply_port, target_act), 0xE1600000000, (reply_port << 32), 0x2C, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
      return v4;
    }

    if (v7.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v7.msgh_id == 3706)
    {
      v4 = -300;
      if ((v7.msgh_bits & 0x80000000) == 0 && *&v7.msgh_size == 36)
      {
        v4 = v9;
        if (!v9)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v7);
  }

  return v4;
}

kern_return_t thread_suspend(thread_read_t target_act)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001513;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, target_act);
  *&v7.msgh_voucher_port = 0xE1500000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001513, __PAIR64__(reply_port, target_act), 0xE1500000000, (reply_port << 32), 0x2C, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
      return v4;
    }

    if (v7.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v7.msgh_id == 3705)
    {
      v4 = -300;
      if ((v7.msgh_bits & 0x80000000) == 0 && *&v7.msgh_size == 36)
      {
        v4 = v9;
        if (!v9)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v7);
  }

  return v4;
}

uint64_t task_restartable_ranges_synchronize(unsigned int a1)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001513;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v7.msgh_voucher_port = 0x1F4100000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001513, __PAIR64__(reply_port, a1), 0x1F4100000000, (reply_port << 32), 0x2C, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
      return v4;
    }

    if (v7.msgh_id == 71)
    {
      v4 = 4294966988;
    }

    else if (v7.msgh_id == 8101)
    {
      v4 = 4294966996;
      if ((v7.msgh_bits & 0x80000000) == 0 && *&v7.msgh_size == 36)
      {
        v4 = v9;
        if (!v9)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = 4294966995;
    }

    mach_msg_destroy(&v7);
  }

  return v4;
}

kern_return_t semaphore_create(task_t task, semaphore_t *semaphore, int policy, int value)
{
  v15 = 0;
  v12 = NDR_record;
  v13 = policy;
  v14 = value;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x2800001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v11.msgh_voucher_port = 0xD5A00000000;
  v7 = mach_msg2_internal(&v11, 0x200000003, 0x2800001513, __PAIR64__(reply_port, task), 0xD5A00000000, (reply_port << 32), 0x30, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v11.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v11.msgh_id == 3518)
      {
        if ((v11.msgh_bits & 0x80000000) != 0)
        {
          v8 = -300;
          if (*&v12.mig_vers == 1 && *&v11.msgh_size == 40 && HIWORD(v14) << 16 == 1114112)
          {
            v8 = 0;
            *semaphore = *&v12.int_rep;
            return v8;
          }
        }

        else if (v11.msgh_size == 36)
        {
          v8 = -300;
          if (v13)
          {
            if (v11.msgh_remote_port)
            {
              v8 = -300;
            }

            else
            {
              v8 = v13;
            }
          }
        }

        else
        {
          v8 = -300;
        }
      }

      else
      {
        v8 = -301;
      }

      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_reply_port(v11.msgh_local_port);
  }

  return v8;
}

kern_return_t host_get_io_main(host_t host, io_main_t *io_main)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x1800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v9.msgh_voucher_port = 0xCD00000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x1800001513, __PAIR64__(reply_port, host), 0xCD00000000, (reply_port << 32), 0x30, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (v9.msgh_id == 71)
      {
        v6 = -308;
      }

      else if (v9.msgh_id == 305)
      {
        if ((v9.msgh_bits & 0x80000000) != 0)
        {
          v6 = -300;
          if (v10 == 1 && *&v9.msgh_size == 40 && HIWORD(v11) << 16 == 1114112)
          {
            v6 = 0;
            *io_main = HIDWORD(v10);
            return v6;
          }
        }

        else if (v9.msgh_size == 36)
        {
          v6 = -300;
          if (v11)
          {
            if (v9.msgh_remote_port)
            {
              v6 = -300;
            }

            else
            {
              v6 = v11;
            }
          }
        }

        else
        {
          v6 = -300;
        }
      }

      else
      {
        v6 = -301;
      }

      mach_msg_destroy(&v9);
      return v6;
    }

    mig_dealloc_reply_port(v9.msgh_local_port);
  }

  return v6;
}

kern_return_t mach_vm_region(vm_map_read_t target_task, mach_vm_address_t *address, mach_vm_size_t *size, vm_region_flavor_t flavor, vm_region_info_t info, mach_msg_type_number_t *infoCnt, mach_port_t *object_name)
{
  v13 = *address;
  v24 = NDR_record;
  v25 = v13;
  v14 = *infoCnt;
  if (*infoCnt >= 0xA)
  {
    v14 = 10;
  }

  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v26 = flavor;
  v27 = v14;
  reply_port = mig_get_reply_port();
  *&v23.msgh_bits = 0x3000001513;
  *&v23.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v23.msgh_voucher_port = 0x12D000000000;
  v16 = mach_msg2_internal(&v23, 0x200000003, 0x3000001513, __PAIR64__(reply_port, target_task), 0x12D000000000, (reply_port << 32), 0x74, 0);
  v17 = v16;
  if ((v16 - 268435458) > 0xE || ((1 << (v16 - 2)) & 0x4003) == 0)
  {
    if (v16)
    {
      mig_dealloc_reply_port(v23.msgh_local_port);
      return v17;
    }

    if (v23.msgh_id == 71)
    {
      v17 = -308;
    }

    else if (v23.msgh_id == 4916)
    {
      if ((v23.msgh_bits & 0x80000000) == 0)
      {
        if (v23.msgh_size == 36)
        {
          v17 = -300;
          if (v25)
          {
            if (v23.msgh_remote_port)
            {
              v17 = -300;
            }

            else
            {
              v17 = v25;
            }
          }
        }

        else
        {
          v17 = -300;
        }

        goto LABEL_27;
      }

      v17 = -300;
      if (*&v24.mig_vers == 1 && v23.msgh_size - 68 <= 0x28 && !v23.msgh_remote_port && HIWORD(v25) << 16 == 1114112)
      {
        v18 = v29[0];
        if (LODWORD(v29[0]) <= 0xA && (v23.msgh_size - 68) >> 2 >= LODWORD(v29[0]))
        {
          v19 = 4 * LODWORD(v29[0]);
          if (v23.msgh_size == 4 * LODWORD(v29[0]) + 68)
          {
            v20 = *(&v28 + 1);
            *address = v28;
            *size = v20;
            v21 = *infoCnt;
            if (v18 <= v21)
            {
              memmove(info, v29 + 4, v19);
              v17 = 0;
              *infoCnt = v18;
              *object_name = *&v24.int_rep;
            }

            else
            {
              memmove(info, v29 + 4, 4 * v21);
              *infoCnt = v18;
              return -307;
            }

            return v17;
          }
        }
      }
    }

    else
    {
      v17 = -301;
    }

LABEL_27:
    mach_msg_destroy(&v23);
  }

  return v17;
}

kern_return_t vm_read_overwrite(vm_map_read_t target_task, vm_address_t address, vm_size_t size, vm_address_t data, vm_size_t *outsize)
{
  v14 = NDR_record;
  *&v15 = address;
  *(&v15 + 1) = size;
  v16 = data;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x3800001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v13.msgh_voucher_port = 0x12C800000000;
  v8 = mach_msg2_internal(&v13, 0x200000003, 0x3800001513, __PAIR64__(reply_port, target_task), 0x12C800000000, (reply_port << 32), 0x34, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v13.msgh_local_port);
      return v9;
    }

    if (v13.msgh_id == 71)
    {
      v9 = -308;
    }

    else if (v13.msgh_id == 4908)
    {
      if ((v13.msgh_bits & 0x80000000) == 0)
      {
        if (v13.msgh_size == 44)
        {
          if (!v13.msgh_remote_port)
          {
            v9 = v15;
            if (!v15)
            {
              *outsize = *(&v15 + 4);
              return v9;
            }

            goto LABEL_23;
          }
        }

        else if (v13.msgh_size == 36)
        {
          if (v13.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = v15 == 0;
          }

          if (v11)
          {
            v9 = -300;
          }

          else
          {
            v9 = v15;
          }

          goto LABEL_23;
        }
      }

      v9 = -300;
    }

    else
    {
      v9 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v13);
  }

  return v9;
}

uint64_t _kernelrpc_vm_map(unsigned int a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, int a10)
{
  v19 = 1;
  v20 = a6;
  *&v21 = 0x13000000000000;
  v12 = *a2;
  *(&v21 + 1) = NDR_record;
  v22 = v12;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v29 = a10;
  reply_port = mig_get_reply_port();
  *&v18.msgh_bits = 0x6480001513;
  *&v18.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v18.msgh_voucher_port = 0x12CB00000000;
  v14 = mach_msg2_internal(&v18, 0x200000003, 0x6480001513, __PAIR64__(reply_port, a1), 0x12CB00000000, ((reply_port << 32) | 1), 0x34, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (v18.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (v18.msgh_id == 4911)
      {
        if ((v18.msgh_bits & 0x80000000) == 0)
        {
          if (v18.msgh_size == 44)
          {
            if (!v18.msgh_remote_port)
            {
              v15 = v21;
              if (!v21)
              {
                *a2 = *(&v21 + 4);
                return v15;
              }

              goto LABEL_20;
            }
          }

          else if (v18.msgh_size == 36)
          {
            if (v18.msgh_remote_port)
            {
              v16 = 1;
            }

            else
            {
              v16 = v21 == 0;
            }

            if (v16)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = v21;
            }

            goto LABEL_20;
          }
        }

        v15 = 4294966996;
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&v18);
      return v15;
    }

    mig_dealloc_reply_port(v18.msgh_local_port);
  }

  return v15;
}

kern_return_t vm_read(vm_map_read_t target_task, vm_address_t address, vm_size_t size, vm_offset_t *data, mach_msg_type_number_t *dataCnt)
{
  v7 = _kernelrpc_vm_read(target_task, address, size, data, dataCnt);
  v8 = v7;
  if (__syscall_logger)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    __syscall_logger(144, mach_task_self_, *dataCnt, 0, *data, 0);
  }

  return v8;
}

uint64_t _kernelrpc_vm_read(unsigned int a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v17 = 0;
  v18 = 0;
  *&v15 = NDR_record;
  *(&v15 + 1) = a2;
  v16 = a3;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x3000001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v14.msgh_voucher_port = 0x12C400000000;
  v9 = mach_msg2_internal(&v14, 0x200000003, 0x3000001513, __PAIR64__(reply_port, a1), 0x12C400000000, (reply_port << 32), 0x40, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (v14.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (v14.msgh_id == 4904)
      {
        if ((v14.msgh_bits & 0x80000000) != 0)
        {
          v10 = 4294966996;
          if (v15 == 1 && *&v14.msgh_size == 56 && HIBYTE(v15) == 1)
          {
            v12 = v16;
            if (v16 == HIDWORD(v17))
            {
              v10 = 0;
              *a4 = *(&v15 + 4);
              *a5 = v12;
              return v10;
            }
          }
        }

        else if (v14.msgh_size == 36)
        {
          v10 = 4294966996;
          if (DWORD2(v15))
          {
            if (v14.msgh_remote_port)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = DWORD2(v15);
            }
          }
        }

        else
        {
          v10 = 4294966996;
        }
      }

      else
      {
        v10 = 4294966995;
      }

      mach_msg_destroy(&v14);
      return v10;
    }

    mig_dealloc_reply_port(v14.msgh_local_port);
  }

  return v10;
}

kern_return_t vm_copy(vm_map_t target_task, vm_address_t source_address, vm_size_t size, vm_address_t dest_address)
{
  v11 = NDR_record;
  v12 = source_address;
  v13 = size;
  v14 = dest_address;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3800001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v10.msgh_voucher_port = 0x12C700000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x3800001513, __PAIR64__(reply_port, target_task), 0x12C700000000, (reply_port << 32), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v7;
    }

    if (v10.msgh_id == 71)
    {
      v7 = -308;
    }

    else if (v10.msgh_id == 4907)
    {
      v7 = -300;
      if ((v10.msgh_bits & 0x80000000) == 0 && v10.msgh_size == 36 && !v10.msgh_remote_port)
      {
        v7 = v12;
        if (!v12)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = -301;
    }

    mach_msg_destroy(&v10);
  }

  return v7;
}

uint64_t _kernelrpc_mach_port_is_connection_for_service(unsigned int a1, unsigned int a2, int a3, void *a4)
{
  v16 = 0;
  *&v15[4] = 0;
  v13 = NDR_record;
  v14 = a2;
  *v15 = a3;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x2800001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v12.msgh_voucher_port = 0xCA800000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x2800001513, __PAIR64__(reply_port, a1), 0xCA800000000, (reply_port << 32), 0x34, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v12.msgh_local_port);
      return v8;
    }

    if (v12.msgh_id == 71)
    {
      v8 = 4294966988;
    }

    else if (v12.msgh_id == 3340)
    {
      if ((v12.msgh_bits & 0x80000000) == 0)
      {
        if (v12.msgh_size == 44)
        {
          if (!v12.msgh_remote_port)
          {
            v8 = v14;
            if (!v14)
            {
              *a4 = *v15;
              return v8;
            }

            goto LABEL_23;
          }
        }

        else if (v12.msgh_size == 36)
        {
          if (v12.msgh_remote_port)
          {
            v10 = 1;
          }

          else
          {
            v10 = v14 == 0;
          }

          if (v10)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = v14;
          }

          goto LABEL_23;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v12);
  }

  return v8;
}

kern_return_t mach_voucher_attr_command(ipc_voucher_t voucher, mach_voucher_attr_key_t key, mach_voucher_attr_command_t command, mach_voucher_attr_content_t in_content, mach_msg_type_number_t in_contentCnt, mach_voucher_attr_content_t out_content, mach_msg_type_number_t *out_contentCnt)
{
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  __n[1] = 0;
  v26 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v24 = NDR_record;
  LODWORD(__n[0]) = key;
  HIDWORD(__n[0]) = command;
  if (in_contentCnt > 0x1000)
  {
    return -307;
  }

  memmove(&__n[1] + 4, in_content, in_contentCnt);
  LODWORD(__n[1]) = in_contentCnt;
  v12 = (in_contentCnt + 3) & 0x3FFC;
  v13 = (v12 + 48);
  v14 = &reply_port + v12;
  v15 = *out_contentCnt;
  if (*out_contentCnt >= 0x1000)
  {
    v15 = 4096;
  }

  *(v14 + 11) = v15;
  v16 = mig_get_reply_port();
  reply_port.msgh_bits = 5395;
  reply_port.msgh_size = v13;
  *&reply_port.msgh_remote_port = __PAIR64__(v16, voucher);
  *&reply_port.msgh_voucher_port = 0x151B00000000;
  v17 = mach_msg2_internal(&reply_port, 0x200000003, ((((v13 >> 2) & 0x1FFF) << 34) | 0x1513), __PAIR64__(v16, voucher), 0x151B00000000, (v16 << 32), 0x1030, 0);
  v7 = v17;
  if ((v17 - 268435458) > 0xE || ((1 << (v17 - 2)) & 0x4003) == 0)
  {
    if (v17)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v7;
    }

    if (reply_port.msgh_id == 71)
    {
      v7 = -308;
    }

    else if (reply_port.msgh_id == 5503)
    {
      if ((reply_port.msgh_bits & 0x80000000) != 0)
      {
        goto LABEL_25;
      }

      if (reply_port.msgh_size - 4137 <= 0xFFFFEFFE)
      {
        if (LODWORD(__n[0]))
        {
          v18 = reply_port.msgh_remote_port == 0;
        }

        else
        {
          v18 = 0;
        }

        if (v18 && reply_port.msgh_size == 36)
        {
          v7 = __n[0];
        }

        else
        {
          v7 = -300;
        }

        goto LABEL_26;
      }

      if (reply_port.msgh_remote_port)
      {
LABEL_25:
        v7 = -300;
      }

      else
      {
        v7 = __n[0];
        if (!LODWORD(__n[0]))
        {
          v21 = HIDWORD(__n[0]);
          v7 = -300;
          if (HIDWORD(__n[0]) <= 0x1000 && reply_port.msgh_size - 40 >= HIDWORD(__n[0]) && reply_port.msgh_size == ((WORD2(__n[0]) + 3) & 0x3FFC) + 40)
          {
            v22 = *out_contentCnt;
            if (HIDWORD(__n[0]) <= v22)
            {
              memmove(out_content, &__n[1], HIDWORD(__n[0]));
              v7 = 0;
              *out_contentCnt = v21;
              return v7;
            }

            memmove(out_content, &__n[1], v22);
            *out_contentCnt = v21;
            return -307;
          }
        }
      }
    }

    else
    {
      v7 = -301;
    }

LABEL_26:
    mach_msg_destroy(&reply_port);
  }

  return v7;
}

uint64_t _kernelrpc_mach_port_get_refs(unsigned int a1, unsigned int a2, int a3, _DWORD *a4)
{
  v16 = 0;
  v13 = NDR_record;
  v14 = a2;
  v15 = a3;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x2800001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v12.msgh_voucher_port = 0xC8700000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x2800001513, __PAIR64__(reply_port, a1), 0xC8700000000, (reply_port << 32), 0x30, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v12.msgh_local_port);
      return v8;
    }

    if (v12.msgh_id == 71)
    {
      v8 = 4294966988;
    }

    else if (v12.msgh_id == 3307)
    {
      if ((v12.msgh_bits & 0x80000000) == 0)
      {
        if (v12.msgh_size == 40)
        {
          if (!v12.msgh_remote_port)
          {
            v8 = v14;
            if (!v14)
            {
              *a4 = v15;
              return v8;
            }

            goto LABEL_23;
          }
        }

        else if (v12.msgh_size == 36)
        {
          if (v12.msgh_remote_port)
          {
            v10 = 1;
          }

          else
          {
            v10 = v14 == 0;
          }

          if (v10)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = v14;
          }

          goto LABEL_23;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v12);
  }

  return v8;
}

uint64_t _kernelrpc_mach_port_extract_right(unsigned int a1, unsigned int a2, unsigned int a3, _DWORD *a4, unsigned int *a5)
{
  v18 = 0;
  v15 = NDR_record;
  v16 = a2;
  v17 = a3;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x2800001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v14.msgh_voucher_port = 0xC8F00000000;
  v9 = mach_msg2_internal(&v14, 0x200000003, 0x2800001513, __PAIR64__(reply_port, a1), 0xC8F00000000, (reply_port << 32), 0x30, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (v14.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (v14.msgh_id == 3315)
      {
        if ((v14.msgh_bits & 0x80000000) != 0)
        {
          v10 = 4294966996;
          if (*&v15.mig_vers == 1 && *&v14.msgh_size == 40)
          {
            v12 = v17;
            if (!HIBYTE(v17))
            {
              v10 = 0;
              *a4 = *&v15.int_rep;
              *a5 = HIWORD(v12);
              return v10;
            }
          }
        }

        else if (v14.msgh_size == 36)
        {
          v10 = 4294966996;
          if (v16)
          {
            if (v14.msgh_remote_port)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = v16;
            }
          }
        }

        else
        {
          v10 = 4294966996;
        }
      }

      else
      {
        v10 = 4294966995;
      }

      mach_msg_destroy(&v14);
      return v10;
    }

    mig_dealloc_reply_port(v14.msgh_local_port);
  }

  return v10;
}

kern_return_t mach_make_memory_entry_64(vm_map_t target_task, memory_object_size_t *size, memory_object_offset_t offset, vm_prot_t permission, mach_port_t *object_handle, mem_entry_name_port_t parent_entry)
{
  v15 = 1;
  v16 = parent_entry;
  v17 = 0x13000000000000;
  v9 = *size;
  v18 = NDR_record;
  v19 = v9;
  v20 = offset;
  v21 = permission;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x4480001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v14.msgh_voucher_port = 0x12D100000000;
  v11 = mach_msg2_internal(&v14, 0x200000003, 0x4480001513, __PAIR64__(reply_port, target_task), 0x12D100000000, ((reply_port << 32) | 1), 0x40, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (v14.msgh_id == 71)
      {
        v12 = -308;
      }

      else if (v14.msgh_id == 4917)
      {
        if ((v14.msgh_bits & 0x80000000) == 0)
        {
          if (v14.msgh_size == 36)
          {
            v12 = -300;
            if (v17)
            {
              if (v14.msgh_remote_port)
              {
                v12 = -300;
              }

              else
              {
                v12 = v17;
              }
            }
          }

          else
          {
            v12 = -300;
          }

          goto LABEL_21;
        }

        v12 = -300;
        if (v15 == 1 && v14.msgh_size == 56 && !v14.msgh_remote_port && HIWORD(v17) << 16 == 1114112)
        {
          v12 = 0;
          *size = v19;
          *object_handle = v16;
          return v12;
        }
      }

      else
      {
        v12 = -301;
      }

LABEL_21:
      mach_msg_destroy(&v14);
      return v12;
    }

    mig_dealloc_reply_port(v14.msgh_local_port);
  }

  return v12;
}

kern_return_t mach_vm_map(vm_map_t target_task, mach_vm_address_t *address, mach_vm_size_t size, mach_vm_offset_t mask, int flags, mem_entry_name_port_t object, memory_object_offset_t offset, BOOLean_t copy, vm_prot_t cur_protection, vm_prot_t max_protection, vm_inherit_t inheritance)
{
  v13 = size;
  v14 = address;
  v15 = target_task;
  if (object)
  {
    goto LABEL_8;
  }

  if (max_protection != 7 || inheritance != 1)
  {
    goto LABEL_8;
  }

  v17 = mask;
  v18 = copy;
  v21 = offset;
  v22 = _kernelrpc_mach_vm_map_trap(target_task, address, size, mask, flags, cur_protection);
  mask = v17;
  offset = v21;
  v13 = size;
  v14 = address;
  v15 = target_task;
  copy = v18;
  v23 = v22;
  if (v22 == 268435459)
  {
LABEL_8:
    v23 = _kernelrpc_mach_vm_map(v15, v14, v13, mask, flags, object, offset, copy, __SPAIR64__(max_protection, cur_protection), inheritance);
  }

  if ((flags & 0xFF000000) != 0x1E000000)
  {
    if (__syscall_logger)
    {
      v24 = v23 == 0;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      __syscall_logger(flags & 0xFF000000 | 0x90, v15, v13, 0, *v14, 0);
    }
  }

  return v23;
}

uint64_t _kernelrpc_mach_vm_map(unsigned int a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, int a10)
{
  v19 = 1;
  v20 = a6;
  *&v21 = 0x13000000000000;
  v12 = *a2;
  *(&v21 + 1) = NDR_record;
  v22 = v12;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v29 = a10;
  reply_port = mig_get_reply_port();
  *&v18.msgh_bits = 0x6480001513;
  *&v18.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v18.msgh_voucher_port = 0x12CB00000000;
  v14 = mach_msg2_internal(&v18, 0x200000003, 0x6480001513, __PAIR64__(reply_port, a1), 0x12CB00000000, ((reply_port << 32) | 1), 0x34, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (v18.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (v18.msgh_id == 4911)
      {
        if ((v18.msgh_bits & 0x80000000) == 0)
        {
          if (v18.msgh_size == 44)
          {
            if (!v18.msgh_remote_port)
            {
              v15 = v21;
              if (!v21)
              {
                *a2 = *(&v21 + 4);
                return v15;
              }

              goto LABEL_20;
            }
          }

          else if (v18.msgh_size == 36)
          {
            if (v18.msgh_remote_port)
            {
              v16 = 1;
            }

            else
            {
              v16 = v21 == 0;
            }

            if (v16)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = v21;
            }

            goto LABEL_20;
          }
        }

        v15 = 4294966996;
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&v18);
      return v15;
    }

    mig_dealloc_reply_port(v18.msgh_local_port);
  }

  return v15;
}

kern_return_t task_threads(task_inspect_t target_task, thread_act_array_t *act_list, mach_msg_type_number_t *act_listCnt)
{
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x1800001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v12.msgh_voucher_port = 0xD4A00000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x1800001513, __PAIR64__(reply_port, target_task), 0xD4A00000000, (reply_port << 32), 0x40, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v12.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v12.msgh_id == 3502)
      {
        if ((v12.msgh_bits & 0x80000000) != 0)
        {
          v8 = -300;
          if (v13 == 1 && *&v12.msgh_size == 56 && HIWORD(v13) == 529)
          {
            v10 = v14;
            if (v14 == HIDWORD(v14))
            {
              v8 = 0;
              *act_list = *(&v13 + 4);
              *act_listCnt = v10;
              return v8;
            }
          }
        }

        else if (v12.msgh_size == 36)
        {
          v8 = -300;
          if (DWORD2(v13))
          {
            if (v12.msgh_remote_port)
            {
              v8 = -300;
            }

            else
            {
              v8 = DWORD2(v13);
            }
          }
        }

        else
        {
          v8 = -300;
        }
      }

      else
      {
        v8 = -301;
      }

      mach_msg_destroy(&v12);
      return v8;
    }

    mig_dealloc_reply_port(v12.msgh_local_port);
  }

  return v8;
}

kern_return_t task_info(task_name_t target_task, task_flavor_t flavor, task_info_t task_info_out, mach_msg_type_number_t *task_info_outCnt)
{
  v17 = NDR_record;
  v7 = *task_info_outCnt;
  if (*task_info_outCnt >= 0x5E)
  {
    v7 = 94;
  }

  memset(v20, 0, sizeof(v20));
  v18 = flavor;
  v19 = v7;
  reply_port = mig_get_reply_port();
  *&v16.msgh_bits = 0x2800001513;
  *&v16.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v16.msgh_voucher_port = 0xD4D00000000;
  v9 = mach_msg2_internal(&v16, 0x200000003, 0x2800001513, __PAIR64__(reply_port, target_task), 0xD4D00000000, (reply_port << 32), 0x1A8, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v16.msgh_local_port);
      return v10;
    }

    if (v16.msgh_id == 71)
    {
      v10 = -308;
    }

    else if (v16.msgh_id == 3505)
    {
      if ((v16.msgh_bits & 0x80000000) == 0)
      {
        if (v16.msgh_size - 417 <= 0xFFFFFE86)
        {
          if (v18)
          {
            v11 = v16.msgh_remote_port == 0;
          }

          else
          {
            v11 = 0;
          }

          if (v11 && v16.msgh_size == 36)
          {
            v10 = v18;
          }

          else
          {
            v10 = -300;
          }

          goto LABEL_24;
        }

        if (!v16.msgh_remote_port)
        {
          v10 = v18;
          if (v18)
          {
            goto LABEL_24;
          }

          v14 = v19;
          if (v19 <= 0x5E && v19 <= (v16.msgh_size - 40) >> 2 && v16.msgh_size == 4 * v19 + 40)
          {
            v15 = *task_info_outCnt;
            if (v19 <= v15)
            {
              memmove(task_info_out, v20, 4 * v19);
              v10 = 0;
              *task_info_outCnt = v14;
            }

            else
            {
              memmove(task_info_out, v20, 4 * v15);
              *task_info_outCnt = v14;
              return -307;
            }

            return v10;
          }
        }
      }

      v10 = -300;
    }

    else
    {
      v10 = -301;
    }

LABEL_24:
    mach_msg_destroy(&v16);
  }

  return v10;
}

kern_return_t thread_info(thread_inspect_t target_act, thread_flavor_t flavor, thread_info_t thread_info_out, mach_msg_type_number_t *thread_info_outCnt)
{
  v17 = NDR_record;
  v7 = *thread_info_outCnt;
  v20[0] = 0u;
  if (v7 >= 0x20)
  {
    v7 = 32;
  }

  memset(&v20[1], 0, 112);
  v21 = 0;
  v18 = flavor;
  v19 = v7;
  reply_port = mig_get_reply_port();
  *&v16.msgh_bits = 0x2800001513;
  *&v16.msgh_remote_port = __PAIR64__(reply_port, target_act);
  *&v16.msgh_voucher_port = 0xE1C00000000;
  v9 = mach_msg2_internal(&v16, 0x200000003, 0x2800001513, __PAIR64__(reply_port, target_act), 0xE1C00000000, (reply_port << 32), 0xB0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v16.msgh_local_port);
      return v10;
    }

    if (v16.msgh_id == 71)
    {
      v10 = -308;
    }

    else if (v16.msgh_id == 3712)
    {
      if ((v16.msgh_bits & 0x80000000) == 0)
      {
        if (v16.msgh_size - 169 <= 0xFFFFFF7E)
        {
          if (v18)
          {
            v11 = v16.msgh_remote_port == 0;
          }

          else
          {
            v11 = 0;
          }

          if (v11 && v16.msgh_size == 36)
          {
            v10 = v18;
          }

          else
          {
            v10 = -300;
          }

          goto LABEL_24;
        }

        if (!v16.msgh_remote_port)
        {
          v10 = v18;
          if (v18)
          {
            goto LABEL_24;
          }

          v14 = v19;
          if (v19 <= 0x20 && v19 <= (v16.msgh_size - 40) >> 2 && v16.msgh_size == 4 * v19 + 40)
          {
            v15 = *thread_info_outCnt;
            if (v19 <= v15)
            {
              memmove(thread_info_out, v20, 4 * v19);
              v10 = 0;
              *thread_info_outCnt = v14;
            }

            else
            {
              memmove(thread_info_out, v20, 4 * v15);
              *thread_info_outCnt = v14;
              return -307;
            }

            return v10;
          }
        }
      }

      v10 = -300;
    }

    else
    {
      v10 = -301;
    }

LABEL_24:
    mach_msg_destroy(&v16);
  }

  return v10;
}

int64_t mach_msg2_internal(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v14 = a2;
  result = mach_msg2_trap(a1, (a2 & 0xFFFFFFFFFFFFFBBFLL), a3, a4, a5, a6, a7, a8);
  if (result)
  {
    if ((v14 & 0x40) == 0)
    {
      while (result == 268435463)
      {
        result = mach_msg2_trap(a1, (v14 & 0xFFFFFFFFFFFFFBBFLL), a3, a4, a5, a6, a7, a8);
      }
    }

    if ((v14 & 0x400) == 0 && result == 268451845)
    {
      if ((~v14 & 3) == 0)
      {
        v14 &= 0xFFFFFFFFFFFFBBBELL;
      }

      do
      {
        result = mach_msg2_trap(a1, (v14 & 0xFFFFFFFFFFFFFBBELL), a3, a4, a5, a6, a7, a8);
      }

      while (result == 268451845);
    }
  }

  return result;
}

mach_port_t mig_get_reply_port(void)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  result = *(StatusReg + 16);
  name = result;
  if (!result)
  {
    v2.reserved[1] = 0;
    *&v2.flags = xmmword_22CE354D0;
    result = mach_port_construct(mach_task_self_, &v2, 0, &name);
    if (result)
    {
      qword_27D9EE798 = "mach_port_construct for mig_get_reply_port failed";
      qword_27D9EE7C8 = result;
      __break(1u);
    }

    else
    {
      result = name;
      *(StatusReg + 16) = name;
    }
  }

  return result;
}

kern_return_t mach_port_construct(ipc_space_t task, mach_port_options_ptr_t options, mach_port_context_t context, mach_port_name_t *name)
{
  result = _kernelrpc_mach_port_construct_trap(task, options, context, name);
  if (result == 268435459)
  {

    return _kernelrpc_mach_port_construct(task, options, context, name);
  }

  return result;
}

mach_msg_return_t mach_msg_server_once(BOOLean_t (__cdecl *a1)(mach_msg_header_t *, mach_msg_header_t *), mach_msg_size_t a2, mach_port_t a3, mach_msg_options_t a4)
{
  v8 = mach_task_self_;
  v9 = HIBYTE(a4) & 0xF;
  if (v9 > 4)
  {
    v10 = 68;
  }

  else
  {
    v10 = dword_22CE354B8[v9];
  }

  v11 = vm_page_size - 1;
  v12 = -vm_page_size;
  v13 = a2 + 68;
  if ((a4 & 0x20000) == 0)
  {
    v13 = a2;
  }

  v14 = v12 & (v11 + v13);
  address = 0;
  v15 = mach_vm_allocate(mach_task_self_, &address, v14, 335544321);
  if (v15)
  {
    return v15;
  }

  v33 = a1;
  v34 = v14;
  v16 = 0;
  v17 = a4 & 0xFFFFF7FC;
  v35 = address;
  v18 = (v11 + v10 + a2) & v12;
  if ((a4 & 4) != 0)
  {
    LODWORD(v12) = (v11 + v10 + a2) & v12;
  }

  else
  {
    LODWORD(v12) = v10 + a2;
  }

  while (1)
  {
    v19 = v18;
    address = v16;
    v20 = mach_vm_allocate(v8, &address, v18, 335544321);
    if (v20)
    {
      v15 = v20;
      v22 = v34;
      v23 = v35;
      goto LABEL_38;
    }

    v16 = address;
    v21 = mach_msg_overwrite(address, v17 | 0x802, 0, v12, a3, 0, 0, 0, v32);
    v15 = v21;
    if ((a4 & 4) == 0 || v21 != 268451844)
    {
      break;
    }

    v12 = (vm_page_size + 0xFFFFFFFF + v16->msgh_size + v10) & -vm_page_size;
    mach_vm_deallocate(v8, v16, v19);
    v18 = v12;
  }

  v23 = v35;
  if (v21)
  {
    v24 = -1;
    goto LABEL_35;
  }

  v25 = _libkernel_voucher_functions[3];
  if (v25)
  {
    v24 = v25(v16);
  }

  else
  {
    v24 = -1;
  }

  (v33)(v16, v35);
  if ((v35->msgh_bits & 0x80000000) == 0)
  {
    msgh_remote_port = v35[1].msgh_remote_port;
    if (msgh_remote_port)
    {
      if (msgh_remote_port == -305)
      {
        v35->msgh_remote_port = 0;
      }

      else
      {
        v16->msgh_remote_port = 0;
        mach_msg_destroy(v16);
      }
    }
  }

  if (!v35->msgh_remote_port)
  {
    goto LABEL_34;
  }

  if ((v35->msgh_bits & 0x1F) == 0x12)
  {
    v27 = 1;
  }

  else
  {
    v27 = 17;
  }

  v28 = mach_msg_overwrite(v35, v27 | v17, v35->msgh_size, 0, 0, 0, 0, 0, v32);
  if ((v28 - 268435459) <= 4 && ((1 << (v28 - 3)) & 0x13) != 0)
  {
    mach_msg_server_consume_unsent_message(v35);
LABEL_34:
    v15 = 0;
    goto LABEL_35;
  }

  v15 = v28;
LABEL_35:
  v22 = v34;
  v30 = _libkernel_voucher_functions[4];
  if (v30)
  {
    v30(v24);
  }

  mach_vm_deallocate(v8, v16, v19);
LABEL_38:
  mach_vm_deallocate(v8, v23, v22);
  return v15;
}

kern_return_t vm_allocate(vm_map_t target_task, vm_address_t *address, vm_size_t size, int flags)
{
  addressa = *address;
  result = mach_vm_allocate(target_task, &addressa, size, flags);
  *address = addressa;
  return result;
}

kern_return_t mach_vm_allocate(vm_map_t target, mach_vm_address_t *address, mach_vm_size_t size, int flags)
{
  trap = _kernelrpc_mach_vm_allocate_trap(target, address, size, flags);
  if (trap == 268435459)
  {
    trap = _kernelrpc_mach_vm_allocate(target, address, size, flags);
  }

  if ((flags & 0xFF000000) != 0x1E000000)
  {
    if (__syscall_logger)
    {
      v9 = trap == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      __syscall_logger(flags & 0xFF000000 | 0x10, target, size, 0, *address, 0);
    }
  }

  return trap;
}

uint64_t stackshot_config_dealloc(uint64_t a1)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      mach_vm_deallocate(mach_task_self_, v3, v2);
    }
  }

  v4 = *(_libkernel_functions + 24);
  if (v4)
  {
    v5 = *(_libkernel_functions + 24);
    v4(a1);
  }

  return 0;
}

kern_return_t host_get_special_port(host_priv_t host_priv, int node, int which, mach_port_t *port)
{
  v15 = 0;
  v12 = NDR_record;
  v13 = node;
  v14 = which;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x2800001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v11.msgh_voucher_port = 0x19C00000000;
  v7 = mach_msg2_internal(&v11, 0x200000003, 0x2800001513, __PAIR64__(reply_port, host_priv), 0x19C00000000, (reply_port << 32), 0x30, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v11.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v11.msgh_id == 512)
      {
        if ((v11.msgh_bits & 0x80000000) != 0)
        {
          v8 = -300;
          if (*&v12.mig_vers == 1 && *&v11.msgh_size == 40 && HIWORD(v14) << 16 == 1114112)
          {
            v8 = 0;
            *port = *&v12.int_rep;
            return v8;
          }
        }

        else if (v11.msgh_size == 36)
        {
          v8 = -300;
          if (v13)
          {
            if (v11.msgh_remote_port)
            {
              v8 = -300;
            }

            else
            {
              v8 = v13;
            }
          }
        }

        else
        {
          v8 = -300;
        }
      }

      else
      {
        v8 = -301;
      }

      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_reply_port(v11.msgh_local_port);
  }

  return v8;
}

uint64_t _kernelrpc_mach_vm_purgable_control(unsigned int a1, uint64_t a2, int a3, int *a4)
{
  v14 = NDR_record;
  v15 = a2;
  v6 = *a4;
  v16 = a3;
  v17 = v6;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x3000001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v13.msgh_voucher_port = 0x12D200000000;
  v8 = mach_msg2_internal(&v13, 0x200000003, 0x3000001513, __PAIR64__(reply_port, a1), 0x12D200000000, (reply_port << 32), 0x30, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v13.msgh_local_port);
      return v9;
    }

    if (v13.msgh_id == 71)
    {
      v9 = 4294966988;
    }

    else if (v13.msgh_id == 4918)
    {
      if ((v13.msgh_bits & 0x80000000) == 0)
      {
        if (v13.msgh_size == 40)
        {
          if (!v13.msgh_remote_port)
          {
            v9 = v15;
            if (!v15)
            {
              *a4 = HIDWORD(v15);
              return v9;
            }

            goto LABEL_23;
          }
        }

        else if (v13.msgh_size == 36)
        {
          if (v13.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = v15 == 0;
          }

          if (v11)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = v15;
          }

          goto LABEL_23;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v13);
  }

  return v9;
}

void mach_msg_destroy(mach_msg_header_t *a1)
{
  msgh_bits = a1->msgh_bits;
  mach_msg_destroy_port(a1->msgh_remote_port, a1->msgh_bits & 0x1F);
  mach_msg_destroy_port(a1->msgh_voucher_port, HIWORD(msgh_bits) & 0x1F);
  if ((msgh_bits & 0x80000000) != 0)
  {
    v3 = a1[1].msgh_bits;
    if (v3)
    {
      v4 = 0;
      p_msgh_size = &a1[1].msgh_size;
      do
      {
        v6 = p_msgh_size[2];
        v7 = HIBYTE(v6);
        if (HIBYTE(v6) <= 1u)
        {
          if (!v7)
          {
            v13 = *p_msgh_size;
            p_msgh_size += 3;
            mach_msg_destroy_port(v13, BYTE2(v6));
            goto LABEL_27;
          }

          if (v7 == 1)
          {
            if (!p_msgh_size[2])
            {
              goto LABEL_26;
            }

            v8 = p_msgh_size[3];
            if (!v8)
            {
              goto LABEL_26;
            }

LABEL_25:
            mach_vm_deallocate(mach_task_self_, *p_msgh_size, v8);
LABEL_26:
            p_msgh_size += 4;
          }
        }

        else
        {
          switch(v7)
          {
            case 2u:
              if (p_msgh_size[3])
              {
                v9 = 0;
                v10 = *p_msgh_size;
                do
                {
                  mach_msg_destroy_port(*(v10 + 4 * v9), *(p_msgh_size + 10));
                  v11 = p_msgh_size[3];
                  ++v9;
                }

                while (v11 > v9);
                p_msgh_size[3];
                if (p_msgh_size[3] && *(p_msgh_size + 8) != 0)
                {
                  v8 = 4 * v11;
                  goto LABEL_25;
                }
              }

              goto LABEL_26;
            case 3u:
              goto LABEL_26;
            case 4u:
              if ((v6 & 2) == 0)
              {
                mach_port_unguard(mach_task_self_, p_msgh_size[3], *p_msgh_size);
                v6 = p_msgh_size[2];
              }

              mach_msg_destroy_port(p_msgh_size[3], BYTE2(v6));
              goto LABEL_26;
          }
        }

LABEL_27:
        ++v4;
      }

      while (v4 != v3);
    }
  }
}

kern_return_t mach_port_deallocate(ipc_space_t task, mach_port_name_t name)
{
  result = _kernelrpc_mach_port_deallocate_trap(task, name);
  if (result == 268435459)
  {

    return _kernelrpc_mach_port_deallocate(task, name);
  }

  return result;
}

uint64_t mach_msg_destroy_port(uint64_t name, int a2)
{
  v7 = name;
  if ((name - 1) > 0xFFFFFFFD)
  {
    return name;
  }

  v2 = name;
  if (a2 > 19)
  {
    if (a2 != 20)
    {
      if (a2 != 21)
      {
        return name;
      }

      _kernelrpc_mach_port_extract_right(mach_task_self_, name, 0x15u, &v7, &v6);
      v3 = mach_task_self_;
      v4 = v7;
      goto LABEL_15;
    }

    mach_port_insert_right(mach_task_self_, name, name, 0x14u);
    v3 = mach_task_self_;
LABEL_14:
    v4 = v2;
LABEL_15:

    return mach_port_deallocate(v3, v4);
  }

  if ((a2 - 17) < 2)
  {
    v3 = mach_task_self_;
    goto LABEL_14;
  }

  if (a2 == 16)
  {
    v5 = mach_task_self_;

    return mach_port_mod_refs(v5, v2, 1u, -1);
  }

  return name;
}

kern_return_t mach_vm_deallocate(vm_map_t target, mach_vm_address_t address, mach_vm_size_t size)
{
  if (__syscall_logger)
  {
    __syscall_logger(32, target, address, size, 0, 0);
  }

  result = _kernelrpc_mach_vm_deallocate_trap(target, address, size);
  if (result == 268435459)
  {

    return _kernelrpc_mach_vm_deallocate(target, address, size);
  }

  return result;
}

void mig_dealloc_reply_port(mach_port_t reply_port)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 16);
  if (v2 && _task_reply_port != v2)
  {
    *(StatusReg + 16) = _task_reply_port;
    mach_port_mod_refs(mach_task_self_, v2, 1u, -1);
    if (v2 != reply_port)
    {
      mach_port_deallocate(mach_task_self_, reply_port);
    }

    *(StatusReg + 16) = 0;
  }
}

kern_return_t mach_port_mod_refs(ipc_space_t task, mach_port_name_t name, mach_port_right_t right, mach_port_delta_t delta)
{
  result = _kernelrpc_mach_port_mod_refs_trap(task, name, right, delta);
  if (result == 268435459)
  {

    return _kernelrpc_mach_port_mod_refs(task, name, right, delta);
  }

  return result;
}

ssize_t write(int __fd, const void *__buf, size_t __nbyte)
{
  result = mac_syscall(SYS_write, __fd, __buf, __nbyte);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

kern_return_t mach_timebase_info(mach_timebase_info_t info)
{
  v2 = mach_timebase_info_cached_info;
  if (mach_timebase_info_cached_info)
  {
    v3 = HIDWORD(mach_timebase_info_cached_info) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    result = mach_timebase_info_trap(&mach_timebase_info_cached_info);
    if (result)
    {
      return result;
    }

    v2 = mach_timebase_info_cached_info;
  }

  result = 0;
  *info = v2;
  return result;
}

sem_t *sem_open(const char *a1, int a2, ...)
{
  va_start(va, a2);
  v3 = va_arg(va, void *);
  return __sem_open(a1, a2, v3);
}

int shm_open(const char *a1, int a2, ...)
{
  va_start(va, a2);
  v3 = va_arg(va, void *);
  return __shm_open(a1, a2, v3);
}

int msgsys(int a1, ...)
{
  va_start(va, a1);
  v3 = va_arg(va, void *);
  v4 = va_arg(va, void *);
  v1 = __msgsys(a1, v3, v4);
  return semsys(v1);
}

int semsys(int a1, ...)
{
  va_start(va, a1);
  v2 = va_arg(va, void *);
  v3 = va_arg(va, void *);
  return __semsys(a1, v2, v3);
}

int shmsys(int a1, ...)
{
  va_start(va, a1);
  v2 = va_arg(va, void *);
  v3 = va_arg(va, void *);
  return __shmsys(a1, v2, v3);
}

int __shm_open(const char *a1, int a2, void *a3)
{
  result = mac_syscall(SYS_shm_open, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __kill(pid_t a1, int a2)
{
  result = mac_syscall(SYS_kill, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __sigsuspend_nocancel(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_sigsuspend_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int64_t __fork(uint64_t a1, uint64_t a2)
{
  result = mac_syscall(SYS_fork);
  if (v2)
  {
    cerror(result);
    return 0xFFFFFFFFLL;
  }

  else if (a2)
  {
    result = 0;
    _current_pid = 0;
  }

  return result;
}

uint64_t __kdebug_trace_string(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_kdebug_trace_string, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror(result);
  }

  return result;
}

uint64_t guarded_open_np(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, unsigned int a9)
{
  if ((a4 & 0x200) != 0)
  {
    v9 = a9;
  }

  else
  {
    v9 = 0;
  }

  return __guarded_open_np(a1, a2, a3, a4, v9, a6, a7, a8);
}

uint64_t __guarded_open_np(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_guarded_open_np, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int open_dprotected_np(const char *a1, int a2, int a3, int a4, ...)
{
  if ((a4 & 4) == 0)
  {
    return __open_dprotected_np(a1, a2, a3, a4);
  }

  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v4)
  {
    v4 = &errno;
  }

  *v4 = 22;
  return -1;
}

int __open_dprotected_np(const char *a1, int a2, int a3, int a4)
{
  result = mac_syscall(SYS_open_dprotected_np, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __fchmod_extended(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_fchmod_extended, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __stat64_extended(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_stat64_extended, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int clonefileat(int a1, const char *a2, int a3, const char *a4, uint32_t a5)
{
  result = mac_syscall(SYS_clonefileat, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int setxattr(const char *path, const char *name, const void *value, size_t size, u_int32_t position, int options)
{
  result = mac_syscall(SYS_setxattr, path, name, value, size, position, options);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t proc_listcoalitions(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  LODWORD(result) = __proc_info(0xB, a1, a2, 0, a3, a4, a7, a8);
  if (result == -1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

int socket(int a1, int a2, int a3)
{
  mac_syscall(SYS_socket);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

void rename(const std::__fs::filesystem::path *__from, const std::__fs::filesystem::path *__to, std::error_code *__ec)
{
  __rename(__from, __to, __ec);
  if (!v3)
  {
    atomic_fetch_add(&__remove_counter, 1u);
  }
}

void __rename(const std::__fs::filesystem::path *__from, const std::__fs::filesystem::path *__to, std::error_code *__ec)
{
  mac_syscall(SYS_rename, __from, __to, __ec);
  if (v3)
  {
    cerror(v4);
  }
}

uint64_t __proc_info_extended_id(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_proc_info_extended_id, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int fchown(int a1, uid_t a2, gid_t a3)
{
  result = mac_syscall(SYS_fchown, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int setpriority(int a1, id_t a2, int a3)
{
  result = __setpriority(a1, a2, a3);
  if (a1 == 3 && result == -2)
  {
    if (*_libkernel_functions >= 3uLL)
    {
      v5 = *(_libkernel_functions + 88);
      if (v5)
      {
        v5(0);
      }
    }

    return 0;
  }

  return result;
}

int __setpriority(int a1, id_t a2, int a3)
{
  result = mac_syscall(SYS_setpriority, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t fcntl_NOCANCEL(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  switch(a2)
  {
    case '*':
    case '+':
    case ',':
    case '1':
    case '2':
    case '4':
    case '8':
    case '9':
    case ';':
    case '=':
    case 'A':
    case 'B':
    case 'G':
    case 'H':
    case 'K':
    case 'N':
    case 'S':
    case 'Z':
    case '[':
    case '\\':
    case ']':
    case '^':
    case 'a':
    case 'b':
    case 'c':
    case 'd':
    case 'e':
    case 'f':
    case 'g':
    case 'h':
    case 'i':
    case 'l':
    case 'o':
    case 'q':
      goto LABEL_2;
    case '-':
    case '.':
    case '/':
    case '0':
    case '3':
    case '5':
    case '6':
    case '7':
    case ':':
    case '<':
    case '>':
    case '?':
    case '@':
    case 'C':
    case 'D':
    case 'E':
    case 'F':
    case 'I':
    case 'J':
    case 'L':
    case 'M':
    case 'O':
    case 'P':
    case 'Q':
    case 'R':
    case 'T':
    case 'U':
    case 'V':
    case 'W':
    case 'X':
    case 'Y':
    case '_':
    case 'j':
    case 'k':
    case 'm':
    case 'n':
    case 'p':
      goto LABEL_5;
    default:
      if ((a2 - 7) < 4)
      {
LABEL_2:
        v9 = a9;
      }

      else
      {
LABEL_5:
        v9 = a9;
      }

      return __fcntl_nocancel(a1, a2, v9, a4, a5, a6, a7, a8);
  }
}

uint64_t __fcntl_nocancel(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_fcntl_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t os_fault_with_payload(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_os_fault_with_payload, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __ulock_wake(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_ulock_wake, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

ssize_t readlink(const char *a1, char *a2, size_t a3)
{
  result = mac_syscall(SYS_readlink, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int ffsctl(int a1, unint64_t a2, void *a3, unsigned int a4)
{
  result = mac_syscall(SYS_ffsctl, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int utimes(const char *a1, const timeval *a2)
{
  result = mac_syscall(SYS_utimes, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int accept(int a1, sockaddr *a2, socklen_t *a3)
{
  result = mac_syscall(SYS_accept, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

int rmdir(const char *a1)
{
  result = __rmdir(a1);
  if (!result)
  {
    atomic_fetch_add(&__remove_counter, 1u);
  }

  return result;
}

int __rmdir(const char *a1)
{
  result = mac_syscall(SYS_rmdir, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int statfs64(const char *a1, statfs *a2)
{
  v9 = mac_syscall(SYS_statfs64, a1, a2, v3, v4, v5, v6, v7, v8);
  if (v2)
  {
    LODWORD(v9) = cerror_nocancel(v9);
  }

  return v9;
}

uint64_t __bsdthread_ctl(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_bsdthread_ctl, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int fcntl(int a1, int a2, ...)
{
  va_start(va, a2);
  v4 = va_arg(va, void *);
  switch(a2)
  {
    case '*':
    case '+':
    case ',':
    case '1':
    case '2':
    case '4':
    case '8':
    case '9':
    case ';':
    case '=':
    case 'A':
    case 'B':
    case 'G':
    case 'H':
    case 'K':
    case 'N':
    case 'S':
    case 'Z':
    case '[':
    case '\\':
    case ']':
    case '^':
    case 'a':
    case 'b':
    case 'c':
    case 'd':
    case 'e':
    case 'f':
    case 'g':
    case 'h':
    case 'i':
    case 'l':
    case 'o':
    case 'q':
      goto LABEL_2;
    case '-':
    case '.':
    case '/':
    case '0':
    case '3':
    case '5':
    case '6':
    case '7':
    case ':':
    case '<':
    case '>':
    case '?':
    case '@':
    case 'C':
    case 'D':
    case 'E':
    case 'F':
    case 'I':
    case 'J':
    case 'L':
    case 'M':
    case 'O':
    case 'P':
    case 'Q':
    case 'R':
    case 'T':
    case 'U':
    case 'V':
    case 'W':
    case 'X':
    case 'Y':
    case '_':
    case 'j':
    case 'k':
    case 'm':
    case 'n':
    case 'p':
      goto LABEL_5;
    default:
      if ((a2 - 7) < 4)
      {
LABEL_2:
        v2 = v4;
      }

      else
      {
LABEL_5:
        v2 = v4;
      }

      return __fcntl(a1, a2, v2);
  }
}

int __fcntl(int a1, int a2, void *a3)
{
  result = mac_syscall(SYS_fcntl, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

uint64_t __pthread_fchdir(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___pthread_fchdir, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t memorystatus_control(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_memorystatus_control, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t pid_resume(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_pid_resume, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t csops(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_csops, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int quotactl(const char *a1, int a2, int a3, caddr_t a4)
{
  result = mac_syscall(SYS_quotactl, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __sysctl(int *a1, u_int a2, void *a3, size_t *a4, void *a5, size_t a6)
{
  result = mac_syscall(SYS_sysctl, a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int removexattr(const char *path, const char *name, int options)
{
  result = mac_syscall(SYS_removexattr, path, name, options);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

ssize_t read(int a1, void *a2, size_t a3)
{
  result = mac_syscall(SYS_read, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

uint64_t necp_client_action(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_necp_client_action, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int fgetattrlist(int a1, void *a2, void *a3, size_t a4, unsigned int a5)
{
  result = mac_syscall(SYS_fgetattrlist, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int ioctl(int a1, unint64_t a2, ...)
{
  va_start(va, a2);
  v3 = va_arg(va, void *);
  return __ioctl(a1, a2, v3);
}

int __ioctl(int a1, unint64_t a2, void *a3)
{
  result = mac_syscall(SYS_ioctl, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

uint64_t objc_bp_assist_cfg_np(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_objc_bp_assist_cfg_np, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int connectx(int a1, const sa_endpoints_t *a2, sae_associd_t a3, unsigned int a4, const iovec *a5, unsigned int a6, size_t *a7, sae_connid_t *a8)
{
  result = mac_syscall(SYS_connectx, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror(result);
  }

  return result;
}

ssize_t getxattr(const char *path, const char *name, void *value, size_t size, u_int32_t position, int options)
{
  result = mac_syscall(SYS_getxattr, path, name, value, size, position, options);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int posix_madvise(void *a1, size_t a2, int a3)
{
  result = mac_syscall(SYS_madvise, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t proc_pidbind(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = a3;
  if (a3 != 1)
  {
    if (a3)
    {
      return 22;
    }

    a1 = getpid();
  }

  if (__process_policy(1, 1, 5, 3, &v12, a1, a2, a8) != -1)
  {
    return 0;
  }

  v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v11)
  {
    v11 = &errno;
  }

  return *v11;
}

uint64_t proc_pidoriginatorinfo(void *a1, void *a2, void *a3)
{
  v6 = getpid();
  LODWORD(result) = __proc_info(0xA, v6, a1, 0, a2, a3, v7, v8);
  if (result == -1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

pid_t getpid(void)
{
  result = _current_pid;
  if (_current_pid <= 0)
  {
    return cerror_nocancel(mac_syscall(SYS_getpid));
  }

  return result;
}

uint64_t __proc_info(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_proc_info, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int mkdir(const char *a1, mode_t a2)
{
  result = mac_syscall(SYS_mkdir, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int faccessat(int a1, const char *a2, int a3, int a4)
{
  result = mac_syscall(SYS_faccessat, a1, a2, a3, a4);
  if (v4)
  {
    return cerror(result);
  }

  return result;
}

int unlink(const char *a1)
{
  result = __unlink(a1);
  if (!result)
  {
    atomic_fetch_add(&__remove_counter, 1u);
  }

  return result;
}

int __unlink(const char *a1)
{
  result = mac_syscall(SYS_unlink, a1);
  if (v1)
  {
    return cerror(result);
  }

  return result;
}

ssize_t recvmsg(int a1, msghdr *a2, int a3)
{
  result = mac_syscall(SYS_recvmsg, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

int unlinkat(int a1, const char *a2, int a3)
{
  result = __unlinkat(a1, a2, a3);
  if (!result)
  {
    atomic_fetch_add(&__remove_counter, 1u);
  }

  return result;
}

int __unlinkat(int a1, const char *a2, int a3)
{
  result = mac_syscall(SYS_unlinkat, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

ssize_t fgetxattr(int fd, const char *name, void *value, size_t size, u_int32_t position, int options)
{
  result = mac_syscall(SYS_fgetxattr, fd, name, value, size, position, options);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int access(const char *a1, int a2)
{
  result = mac_syscall(SYS_access, a1, a2);
  if (v2)
  {
    return cerror(result);
  }

  return result;
}

uint64_t __psynch_cvwait(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_cvwait, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int lstat64(const char *a1, stat *a2)
{
  v9 = mac_syscall(SYS_lstat64, a1, a2, v3, v4, v5, v6, v7, v8);
  if (v2)
  {
    LODWORD(v9) = cerror_nocancel(v9);
  }

  return v9;
}

ssize_t recvfrom(int a1, void *a2, size_t a3, int a4, sockaddr *a5, socklen_t *a6)
{
  result = mac_syscall(SYS_recvfrom, a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return cerror(result);
  }

  return result;
}

uint64_t __sandbox_ms(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___mac_syscall, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getattrlist(const char *a1, void *a2, void *a3, size_t a4, unsigned int a5)
{
  result = mac_syscall(SYS_getattrlist, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int mkdirat(int a1, const char *a2, mode_t a3)
{
  result = mac_syscall(SYS_mkdirat, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t open_NOCANCEL(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, unsigned __int16 a9)
{
  if ((a2 & 0x200) != 0)
  {
    v9 = a9;
  }

  else
  {
    v9 = 0;
  }

  return __open_nocancel(a1, a2, v9, a4, a5, a6, a7, a8);
}

uint64_t __open_nocancel(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_open_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int open(const char *a1, int a2, ...)
{
  va_start(va, a2);
  v4 = va_arg(va, void);
  if ((a2 & 0x200) != 0)
  {
    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  return __open(a1, a2, v2);
}

int __open(const char *a1, int a2, void *a3)
{
  result = mac_syscall(SYS_open, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

uint64_t csops_audittoken(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_csops_audittoken, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int pthread_getugid_np(uid_t *a1, gid_t *a2)
{
  v9 = mac_syscall(SYS_gettid, a1, a2, v3, v4, v5, v6, v7, v8);
  if (v2)
  {
    LODWORD(v9) = cerror_nocancel(v9);
  }

  return v9;
}

uint64_t __semwait_signal(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___semwait_signal, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror(result);
  }

  return result;
}

int stat64(const char *a1, stat *a2)
{
  v9 = mac_syscall(SYS_stat64, a1, a2, v3, v4, v5, v6, v7, v8);
  if (v2)
  {
    LODWORD(v9) = cerror_nocancel(v9);
  }

  return v9;
}

int __openat(int a1, const char *a2, int a3)
{
  result = mac_syscall(SYS_openat, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

uint64_t cerror(int a1)
{
  (*(_libkernel_functions + 40))();
  cerror_nocancel(a1);
  return -1;
}

uint64_t cerror_nocancel(int a1)
{
  errno = a1;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (v1)
  {
    *v1 = a1;
  }

  return -1;
}

uint64_t proc_set_cpumon_defaults(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9[0] = 0xFE00000005;
  v9[1] = 0;
  v9[2] = 0;
  return __process_policy(1, 0xA, 4, 3, v9, a1, 0, a8);
}

uint64_t proc_disable_cpumon(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9[0] = 0xFF00000005;
  v9[1] = 0;
  v9[2] = 0;
  return __process_policy(1, 0xA, 4, 3, v9, a1, 0, a8);
}

uint64_t __process_policy(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_process_policy, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

kern_return_t mach_port_insert_member(ipc_space_t task, mach_port_name_t name, mach_port_name_t pset)
{
  result = _kernelrpc_mach_port_insert_member_trap(task, name, pset);
  if (result == 268435459)
  {

    return _kernelrpc_mach_port_insert_member(task, name, pset);
  }

  return result;
}

kern_return_t mach_port_extract_member(ipc_space_t task, mach_port_name_t name, mach_port_name_t pset)
{
  result = _kernelrpc_mach_port_extract_member_trap(task, name, pset);
  if (result == 268435459)
  {

    return _kernelrpc_mach_port_extract_member(task, name, pset);
  }

  return result;
}

uint64_t __getdirentries64(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_getdirentries64, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uid_t geteuid(void)
{
  result = mac_syscall(SYS_geteuid);
  if (v0)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int64_t mig_get_special_reply_port(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  result = *(StatusReg + 64);
  if ((result - 1) >= 0xFFFFFFFE)
  {
    result = thread_get_special_reply_port(result, a2, a3, a4, a5, a6, a7, a8);
    *(StatusReg + 64) = result;
  }

  return result;
}

uint64_t __psynch_cvsignal(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_cvsignal, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t close_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_close_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __munmap(void *a1, size_t a2)
{
  result = mac_syscall(SYS_munmap, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t guarded_pwrite_np(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_guarded_pwrite_np, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t read_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_read_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

kern_return_t mach_port_type(ipc_space_t task, mach_port_name_t name, mach_port_type_t *ptype)
{
  result = _kernelrpc_mach_port_type_trap(task, name, ptype);
  if (result == 268435459)
  {

    return _kernelrpc_mach_port_type(task, name, ptype);
  }

  return result;
}

gid_t getegid(void)
{
  result = mac_syscall(SYS_getegid);
  if (v0)
  {
    return cerror_nocancel(result);
  }

  return result;
}

ssize_t pwrite(int __fd, const void *__buf, size_t __nbyte, off_t a4)
{
  result = mac_syscall(SYS_pwrite, __fd, __buf, __nbyte, a4);
  if (v4)
  {
    return cerror(result);
  }

  return result;
}

void *__cdecl mmap(void *a1, size_t a2, int a3, int a4, int a5, off_t a6)
{
  v7 = a4;
  if ((a4 & 2) != 0)
  {
    if (!a2)
    {
LABEL_4:
      cerror_nocancel(22);
      return -1;
    }
  }

  else if (!a2 || (a4 & 1) == 0)
  {
    goto LABEL_4;
  }

  v9 = __mmap(a1, a2, a3, a4 | 0x40000u, a5, a6);
  if (__syscall_logger)
  {
    if ((v7 & 0x1000) != 0)
    {
      v10 = a5 & 0xFF000000 | 0x10;
    }

    else
    {
      v10 = 144;
    }

    __syscall_logger(v10, mach_task_self_, a2, 0, v9, 0);
  }

  return v9;
}

void *__mmap(void *a1, size_t a2, int a3, int a4, int a5, off_t a6)
{
  result = mac_syscall(SYS_mmap, a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

double work_interval_instance_clear(uint64_t a1)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  return result;
}

int mig_strncpy_zerofill(char *dest, const char *src, int len)
{
  v3 = 0;
  if (dest && len >= 1)
  {
    v4 = src == 0;
    if (len < 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      for (i = 1; i != len; ++i)
      {
        if (v4)
        {
          v7 = 0;
          v4 = 1;
        }

        else
        {
          v8 = *src++;
          v7 = v8;
          v4 = v8 == 0;
          if (!v8)
          {
            v5 = i;
          }
        }

        *dest++ = v7;
      }
    }

    *dest = 0;
    if (v4)
    {
      return v5;
    }

    else
    {
      return len;
    }
  }

  return v3;
}

uid_t getuid(void)
{
  result = mac_syscall(SYS_getuid);
  if (v0)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t mig_dealloc_special_reply_port(uint64_t result)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 64);
  if ((v2 - 1) <= 0xFFFFFFFD)
  {
    v3 = result;
    result = mach_port_destruct(mach_task_self_, *(StatusReg + 64), -1, 0);
    if (v2 != v3)
    {
      result = mach_port_deallocate(mach_task_self_, v3);
    }

    *(StatusReg + 64) = 0;
  }

  return result;
}

kern_return_t mach_port_destruct(ipc_space_t task, mach_port_name_t name, mach_port_delta_t srdelta, mach_port_context_t guard)
{
  result = _kernelrpc_mach_port_destruct_trap(task, name, srdelta, guard);
  if (result == 268435459)
  {

    return _kernelrpc_mach_port_destruct(task, name, srdelta, guard);
  }

  return result;
}

kern_return_t mach_port_guard(ipc_space_t task, mach_port_name_t name, mach_port_context_t guard, BOOLean_t strict)
{
  result = _kernelrpc_mach_port_guard_trap(task, name, guard, strict);
  if (result == 268435459)
  {

    return _kernelrpc_mach_port_guard(task, name, guard, strict);
  }

  return result;
}

uint64_t __psynch_mutexdrop(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_mutexdrop, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int issetugid(void)
{
  result = mac_syscall(SYS_issetugid);
  if (v0)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __psynch_mutexwait(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_mutexwait, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __thread_selfusage(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_thread_selfusage, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror(result);
  }

  return result;
}

uint64_t __ulock_wait(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_ulock_wait, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

kern_return_t mach_port_request_notification(ipc_space_t task, mach_port_name_t name, mach_msg_id_t msgid, mach_port_mscount_t sync, mach_port_t notify, mach_msg_type_name_t notifyPoly, mach_port_t *previous)
{
  v8 = notifyPoly;
  result = _kernelrpc_mach_port_request_notification_trap(task, name, msgid, sync, notify, notifyPoly, previous);
  if (result == 268435459)
  {

    return _kernelrpc_mach_port_request_notification(task, name, msgid, sync, notify, v8, previous);
  }

  return result;
}

ssize_t sendto(int a1, const void *a2, size_t a3, int a4, const sockaddr *a5, socklen_t a6)
{
  result = mac_syscall(SYS_sendto, a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return cerror(result);
  }

  return result;
}

int dup(int a1)
{
  result = mac_syscall(SYS_dup, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __gettimeofday_with_mach(timeval *a1, void *a2)
{
  result = mac_syscall(SYS_gettimeofday, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __gettimeofday(timeval *a1, void *a2)
{
  result = mac_syscall(SYS_gettimeofday, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

ssize_t writev(int a1, const iovec *a2, int a3)
{
  result = mac_syscall(SYS_writev, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

uint64_t os_channel_available_slot_count(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(v1 + 30) == 1)
  {
    v2 = *v1 - *(v1 + 8);
    v3 = *(v1 + 12);
    v4 = ~(v2 + (v3 & (v2 >> 31)));
LABEL_5:
    v4 += v3;
    return v4 & (**(a1 + 8) >> 31);
  }

  v4 = *(v1 + 4) - *v1;
  if (v4 < 0)
  {
    v3 = *(v1 + 12);
    goto LABEL_5;
  }

  return v4 & (**(a1 + 8) >> 31);
}

int munmap(void *a1, size_t a2)
{
  if (__syscall_logger)
  {
    __syscall_logger(32, mach_task_self_, a1, a2, 0, 0);
  }

  return __munmap(a1, a2);
}

uint64_t write_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_write_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

void mig_reply_setup(mach_msg_header_t *a1, mach_msg_header_t *a2)
{
  a2->msgh_bits = (a1->msgh_bits >> 8) & 0x1F;
  a2->msgh_size = 36;
  a2->msgh_remote_port = a1->msgh_local_port;
  a2->msgh_local_port = 0;
  a2->msgh_id = a1->msgh_id + 100;
  *&a2[1].msgh_bits = NDR_record;
}

uint64_t work_interval_create(int32x2_t **a1, __int32 a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    v25 = 0;
    v26.i32[0] = 0;
    v26.i32[1] = a2;
    result = __work_interval_ctl(4, 0, &v25, 0x10, a5, a6, a7, a8);
    if (result != -1)
    {
      v10 = *(_libkernel_functions + 16);
      if (v10 && (v11 = *(_libkernel_functions + 16), (v12 = v10(24)) != 0))
      {
        v20 = v12;
        v21 = __thread_selfid(v12, v13, v14, v15, v16, v17, v18, v19);
        result = 0;
        v22 = v25;
        *v20 = v21;
        v20[1] = v22;
        v20[2] = vrev64_s32(v26);
        *a1 = v20;
      }

      else
      {
        v24 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        if (!v24)
        {
          v24 = &errno;
        }

        *v24 = 12;
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    v23 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v23)
    {
      v23 = &errno;
    }

    *v23 = 22;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t __thread_selfid(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_thread_selfid, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror(result);
  }

  return result;
}

uint64_t work_interval_get_flags_from_port(unsigned int a1, _DWORD *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1 + 1 < 2 || a2 == 0)
  {
    v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v11)
    {
      v11 = &errno;
    }

    *v11 = 22;
    return 0xFFFFFFFFLL;
  }

  else
  {
    v16 = v8;
    v17 = v9;
    v14 = 0;
    v15 = 0;
    result = __work_interval_ctl(9, a1, &v14, 0x10, a5, a6, a7, a8);
    if (result != -1)
    {
      result = 0;
      *a2 = HIDWORD(v15);
    }
  }

  return result;
}

uint64_t work_interval_instance_finish(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    if (!*(a1 + 8) || (*(a1 + 48) & 0x20) != 0)
    {
      return 0;
    }

    else
    {
      result = __work_interval_ctl(8, *a1, a1, 0x60, a5, a6, a7, a8);
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
    }
  }

  else
  {
    v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v10)
    {
      v10 = &errno;
    }

    *v10 = 22;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t __work_interval_ctl(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_work_interval_ctl, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getiopolicy_np(int a1, int a2)
{
  v9[1] = a1;
  v10 = 0;
  v9[0] = a2;
  if (__iopolicysys(1, v9, v2, v3, v4, v5, v6, v7))
  {
    return -1;
  }

  else
  {
    return v10;
  }
}

uint64_t __iopolicysys(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_iopolicysys, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int mprotect(void *a1, size_t a2, int a3)
{
  result = mac_syscall(SYS_mprotect, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __psynch_rw_rdlock(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_rw_rdlock, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t work_interval_instance_start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    if ((*(a1 + 48) & 0x20) != 0)
    {
      return 0;
    }

    else
    {
      return __work_interval_ctl(6, *a1, a1, 0x60, a5, a6, a7, a8);
    }
  }

  else
  {
    v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v9)
    {
      v9 = &errno;
    }

    *v9 = 22;
    return 0xFFFFFFFFLL;
  }
}

int setsockopt(int a1, int a2, int a3, const void *a4, socklen_t a5)
{
  result = mac_syscall(SYS_setsockopt, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

kern_return_t mach_port_allocate(ipc_space_t task, mach_port_right_t right, mach_port_name_t *name)
{
  result = _kernelrpc_mach_port_allocate_trap(task, right, name);
  if (result == 268435459)
  {

    return _kernelrpc_mach_port_allocate(task, right, name);
  }

  return result;
}

int kevent(int kq, const kevent *changelist, int nchanges, kevent *eventlist, int nevents, const timespec *timeout)
{
  result = mac_syscall(SYS_kevent, kq, changelist, nchanges, eventlist, nevents, timeout);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t os_packet_decrement_use_count(uint64_t a1, _WORD *a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFF0;
  v3 = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x4A);
  if (!v3)
  {
    return 34;
  }

  result = 0;
  v5 = v3 - 1;
  *(v2 + 74) = v5;
  *a2 = v5;
  return result;
}

uint64_t work_interval_instance_update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    if (!*(a1 + 8) || (*(a1 + 48) & 0x20) != 0)
    {
      return 0;
    }

    else
    {
      return __work_interval_ctl(7, *a1, a1, 0x60, a5, a6, a7, a8);
    }
  }

  else
  {
    v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v9)
    {
      v9 = &errno;
    }

    *v9 = 22;
    return 0xFFFFFFFFLL;
  }
}

kern_return_t mach_vm_protect(vm_map_t target_task, mach_vm_address_t address, mach_vm_size_t size, BOOLean_t set_maximum, vm_prot_t new_protection)
{
  result = _kernelrpc_mach_vm_protect_trap(target_task, address, size, set_maximum, new_protection);
  if (result == 268435459)
  {

    return _kernelrpc_mach_vm_protect(target_task, address, size, set_maximum, new_protection);
  }

  return result;
}

uint64_t os_packet_increment_use_count(uint64_t a1)
{
  v1 = a1 & 0xFFFFFFFFFFFFFFF0;
  v2 = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x4A);
  if (v2 == 0xFFFF)
  {
    return 34;
  }

  result = 0;
  *(v1 + 74) = v2 + 1;
  return result;
}

int fsetxattr(int fd, const char *name, const void *value, size_t size, u_int32_t position, int options)
{
  result = mac_syscall(SYS_fsetxattr, fd, name, value, size, position, options);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t os_packet_get_inet_checksum(uint64_t a1, _WORD *a2, _WORD *a3)
{
  if (a2)
  {
    *a2 = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x58);
  }

  if (a3)
  {
    *a3 = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x5A);
  }

  return *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x54) & 0x300F7F;
}

__n128 os_packet_get_flow_uuid(uint64_t a1, __n128 *a2)
{
  v2 = (a1 & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 7) != 0)
  {
    if ((a2 & 3) != 0)
    {
      result = *v2;
      *a2 = *v2;
    }

    else
    {
      a2->n128_u32[0] = v2->n128_u32[0];
      a2->n128_u32[1] = *((a1 & 0xFFFFFFFFFFFFFFF0) + 4);
      a2->n128_u32[2] = *((a1 & 0xFFFFFFFFFFFFFFF0) + 8);
      a2->n128_u32[3] = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0xC);
    }
  }

  else
  {
    a2->n128_u64[0] = v2->n128_u64[0];
    a2->n128_u64[1] = *((a1 & 0xFFFFFFFFFFFFFFF0) + 8);
  }

  return result;
}

uint64_t os_channel_sync(unsigned int *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a2 > 1)
  {
    return 22;
  }

  v8 = *a1;
  v9 = a1[1];
  if (a2)
  {
    v10 = v9 & 0xFFFFFFF6;
  }

  else
  {
    v10 = v9;
  }

  return __channel_sync(*a1, a2, v10, a4, a5, a6, a7, a8);
}

uint64_t __psynch_cvbroad(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_cvbroad, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t os_packet_set_inet_checksum(uint64_t a1, int a2, __int16 a3, __int16 a4)
{
  v4 = a1 & 0xFFFFFFFFFFFFFFF0;
  *(v4 + 84) = a2 & 0x300F7F;
  *(v4 + 88) = a3;
  *(v4 + 90) = a4;
  return 0;
}

unint64_t os_packet_get_next_buflet(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFF0;
  if (a2 && *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x9A))
  {
    return *a2;
  }

  result = v2 + 32;
  if (!*(v2 + 40))
  {
    return *result;
  }

  return result;
}

int mig_strncpy(char *dest, const char *src, int len)
{
  if (len < 1)
  {
    return 0;
  }

  if (len == 1)
  {
LABEL_6:
    *dest = 0;
  }

  else
  {
    v3 = 1;
    while (1)
    {
      v4 = *src;
      *dest = v4;
      if (!v4)
      {
        return v3;
      }

      ++dest;
      ++src;
      if (len == ++v3)
      {
        goto LABEL_6;
      }
    }
  }

  return len;
}

uint64_t os_packet_get_buflet_count(uint64_t a1)
{
  if (*((a1 & 0xFFFFFFFFFFFFFFF0) + 0x9A))
  {
    return *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x9A);
  }

  else
  {
    return 1;
  }
}

uint64_t kpersona_pidinfo(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v10 = 1;
  v9 = a1;
  return __persona(6, 0, a2, &v9, &v10, 0, a7, a8);
}

uint64_t kpersona_find_by_type(int a1, void *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v34 = 0;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v10 = 0xFFFFFFFF00000001;
  v11 = a1;
  v12 = 0;
  v13 = 0;
  result = __persona(9, 0, &v10, a2, a3, 0, a7, a8);
  if ((result & 0x80000000) == 0)
  {
    return *a3;
  }

  return result;
}

uint64_t kpersona_find(char *a1, int a2, void *a3, unsigned int *a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v11[0] = 1;
  v11[1] = a2;
  v13 = 0;
  v12 = 0;
  if (a1)
  {
    (*(_libkernel_string_functions + 11))(v18, a1, 0x100uLL);
  }

  result = __persona(7, 0, v11, a3, a4, 0, a7, a8);
  if ((result & 0x80000000) == 0)
  {
    return *a4;
  }

  return result;
}

uint64_t kpersona_info(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v10 = a1;
  v9 = 1;
  return __persona(5, 0, a2, &v10, &v9, 0, a7, a8);
}

uint64_t __persona(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_persona, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __sigaction(int a1, const sigaction *a2, sigaction *a3)
{
  result = mac_syscall(SYS_sigaction, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getattrlistbulk(int a1, void *a2, void *a3, size_t a4, uint64_t a5)
{
  result = mac_syscall(SYS_getattrlistbulk, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t os_channel_advance_slot(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = (a2 - *(a1 + 24)) >> 3;
  if (*v2 <= v2[1])
  {
    if (*v2 > v3)
    {
      goto LABEL_12;
    }

    v4 = v2[1];
LABEL_7:
    if (v4 > v3)
    {
      goto LABEL_8;
    }

LABEL_12:
    if (**(a1 + 8) < 0)
    {
      return 22;
    }

    else
    {
      return 6;
    }
  }

  if (v2[1] <= v3)
  {
    if (*v2 > v3)
    {
      goto LABEL_12;
    }

    v4 = v2[3];
    goto LABEL_7;
  }

LABEL_8:
  result = 0;
  if (v3 + 1 == v2[3])
  {
    v6 = 0;
  }

  else
  {
    v6 = v3 + 1;
  }

  *v2 = v6;
  return result;
}

kern_return_t mach_port_insert_right(ipc_space_t task, mach_port_name_t name, mach_port_t poly, mach_msg_type_name_t polyPoly)
{
  v4 = polyPoly;
  result = _kernelrpc_mach_port_insert_right_trap(task, name, poly, polyPoly);
  if (result == 268435459)
  {

    return _kernelrpc_mach_port_insert_right(task, name, poly, v4);
  }

  return result;
}

__n128 os_packet_set_flow_uuid(uint64_t a1, __n128 *a2)
{
  v2 = (a1 & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 7) != 0)
  {
    if ((a2 & 3) != 0)
    {
      result = *a2;
      *v2 = *a2;
    }

    else
    {
      *v2 = a2->n128_u32[0];
      *((a1 & 0xFFFFFFFFFFFFFFF0) + 4) = a2->n128_u32[1];
      *((a1 & 0xFFFFFFFFFFFFFFF0) + 8) = a2->n128_u32[2];
      *((a1 & 0xFFFFFFFFFFFFFFF0) + 0xC) = a2->n128_u32[3];
    }
  }

  else
  {
    *v2 = a2->n128_u64[0];
    *((a1 & 0xFFFFFFFFFFFFFFF0) + 8) = a2->n128_u64[1];
  }

  return result;
}

ssize_t fsgetpath(char *a1, size_t a2, fsid_t *a3, uint64_t a4)
{
  result = mac_syscall(SYS_fsgetpath, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getsockopt(int a1, int a2, int a3, void *a4, socklen_t *a5)
{
  result = mac_syscall(SYS_getsockopt, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t kdebug_signpost_internal(unsigned int a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1 >= 0x10000)
  {
    v17 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v17)
    {
      v17 = &errno;
    }

    *v17 = 22;
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = kdebug_is_enabled(a1 | 0x210A0000, a2, a3, a4, a5, a6, a7, a8);
    if (result)
    {

      return __kdebug_trace64((a1 | 0x210A0000), a2, a3, a4, a5, v14, v15, v16);
    }
  }

  return result;
}

uint64_t __bsdthread_create(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_bsdthread_create, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

void *work_interval_instance_get_telemetry_data(uint64_t a1, void *__dst, size_t a3)
{
  if (a3 >= 0x28)
  {
    a3 = 40;
  }

  return memmove(__dst, (a1 + 56), a3);
}

int getentropy(void *buffer, size_t size)
{
  result = mac_syscall(SYS_getentropy, buffer, size);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int sigprocmask(int a1, const sigset_t *a2, sigset_t *a3)
{
  result = mac_syscall(SYS_sigprocmask, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int fsync(int a1)
{
  result = mac_syscall(SYS_fsync, a1);
  if (v1)
  {
    return cerror(result);
  }

  return result;
}

uint64_t guarded_open_dprotected_np(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8, unsigned int a9)
{
  if ((a4 & 0x200) != 0)
  {
    v9 = a9;
  }

  else
  {
    v9 = 0;
  }

  return __guarded_open_dprotected_np(a1, a2, a3, a4, a5, a6, v9, a8);
}

uint64_t __guarded_open_dprotected_np(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_guarded_open_dprotected_np, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t fileport_makefd(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_fileport_makefd, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __psynch_rw_unlock(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_rw_unlock, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int ftruncate(int a1, off_t a2)
{
  result = mac_syscall(SYS_ftruncate, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int select_DARWIN_EXTSN(int a1, fd_set *a2, fd_set *a3, fd_set *a4, timeval *a5)
{
  result = mac_syscall(SYS_select, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror(result);
  }

  return result;
}

kern_return_t mach_port_get_attributes(ipc_space_read_t task, mach_port_name_t name, mach_port_flavor_t flavor, mach_port_info_t port_info_out, mach_msg_type_number_t *port_info_outCnt)
{
  result = _kernelrpc_mach_port_get_attributes_trap(task, name, flavor, port_info_out, port_info_outCnt);
  if (result == 268435459)
  {

    return _kernelrpc_mach_port_get_attributes(task, name, flavor, port_info_out, port_info_outCnt);
  }

  return result;
}

uint64_t fileport_makeport(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_fileport_makeport, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __kqueue_workloop_ctl(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_kqueue_workloop_ctl, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __pthread_sigmask(int a1, const sigset_t *a2, sigset_t *a3)
{
  result = mac_syscall(SYS___pthread_sigmask, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int flock(int a1, int a2)
{
  result = mac_syscall(SYS_flock, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t guarded_close_np(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_guarded_close_np, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t os_packet_set_service_class(uint64_t a1, int a2)
{
  result = 22;
  if (a2 <= 2621727)
  {
    if (a2 <= 1048703)
    {
      if (!a2)
      {
        goto LABEL_16;
      }

      v4 = 524432;
    }

    else
    {
      if (a2 == 1048704 || a2 == 1572880)
      {
        goto LABEL_16;
      }

      v4 = 2097184;
    }

LABEL_15:
    if (a2 != v4)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (a2 > 3670319)
  {
    if (a2 == 3670320 || a2 == 4718992)
    {
      goto LABEL_16;
    }

    v4 = 4194688;
    goto LABEL_15;
  }

  if (a2 != 2621728 && a2 != 3146000)
  {
    v4 = 3670272;
    goto LABEL_15;
  }

LABEL_16:
  result = 0;
  *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x14) = a2;
  return result;
}

ssize_t listxattr(const char *path, char *namebuff, size_t size, int options)
{
  result = mac_syscall(SYS_listxattr, path, namebuff, size, options);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int select(int a1, fd_set *a2, fd_set *a3, fd_set *a4, timeval *a5)
{
  if (a1 < 1025)
  {
    return select_DARWIN_EXTSN(a1, a2, a3, a4, a5);
  }

  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v5)
  {
    v5 = &errno;
  }

  *v5 = 22;
  return -1;
}

BOOLean_t mach_task_is_self(task_name_t task)
{
  if (mach_task_self_ == task)
  {
    return 1;
  }

  v6 = v1;
  v7 = v2;
  v5 = 0;
  if (_kernelrpc_mach_task_is_self(task, &v5))
  {
    v4 = 1;
  }

  else
  {
    v4 = v5 == 0;
  }

  return !v4;
}

uint64_t _kernelrpc_mach_task_is_self(unsigned int a1, _DWORD *a2)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x1800001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v10.msgh_voucher_port = 0xD7F00000000;
  v5 = mach_msg2_internal(&v10, 0x200000003, 0x1800001513, __PAIR64__(reply_port, a1), 0xD7F00000000, (reply_port << 32), 0x30, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v6;
    }

    if (v10.msgh_id == 71)
    {
      v6 = 4294966988;
    }

    else if (v10.msgh_id == 3555)
    {
      if ((v10.msgh_bits & 0x80000000) == 0)
      {
        if (v10.msgh_size == 40)
        {
          if (!v10.msgh_remote_port)
          {
            v6 = v12;
            if (!v12)
            {
              *a2 = HIDWORD(v12);
              return v6;
            }

            goto LABEL_23;
          }
        }

        else if (v10.msgh_size == 36)
        {
          if (v10.msgh_remote_port)
          {
            v8 = 1;
          }

          else
          {
            v8 = v12 == 0;
          }

          if (v8)
          {
            v6 = 4294966996;
          }

          else
          {
            v6 = v12;
          }

          goto LABEL_23;
        }
      }

      v6 = 4294966996;
    }

    else
    {
      v6 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v10);
  }

  return v6;
}

uint64_t os_channel_get_next_slot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (!a2)
  {
    v8 = *v6;
    goto LABEL_14;
  }

  v7 = a2 - *(a1 + 24);
  v3 = (v7 >> 3);
  v8 = v6[1];
  if (*v6 <= v8)
  {
    v9 = *v6;
    if (v9 > v3)
    {
      goto LABEL_12;
    }

    v9 = v6[1];
    goto LABEL_8;
  }

  if (v6[1] > v3)
  {
    goto LABEL_9;
  }

  v9 = *v6;
  if (v9 <= v3)
  {
    v9 = v6[3];
LABEL_8:
    if (v9 > v3)
    {
LABEL_9:
      if (v3 + 1 == v6[3])
      {
        v8 = 0;
      }

      else
      {
        v8 = v3 + 1;
      }

      goto LABEL_14;
    }
  }

LABEL_12:
  v3 = **(a1 + 8);
  if ((v3 & 0x80000000) != 0)
  {
LABEL_72:
    qword_27D9EE798 = "Index out of bounds in gns";
    qword_27D9EE7C8 = (v7 >> 3);
    __break(1u);
LABEL_73:
    v15 = v8;
    qword_27D9EE798 = "Tx slot has attached metadata";
    qword_27D9EE7C8 = v8;
    __break(1u);
LABEL_74:
    v5[4] = v3;
    v5[5] = 0;
    goto LABEL_28;
  }

  v8 = v6[1];
LABEL_14:
  if (v8 != v6[1])
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v9 = v10 + 8 * v8;
      v4 = *(v6 + 15);
      if (v4 == 1 && (*(*(*a1 + 16) + 16) & 8) != 0)
      {
LABEL_68:
        if ((*(v9 + 4) & 1) == 0)
        {
          if (a3)
          {
            *a3 = 0;
            *(a3 + 16) = 0;
            *(a3 + 24) = 0;
          }

          goto LABEL_49;
        }

        goto LABEL_73;
      }

      if ((*(v9 + 4) & 1) != 0 || (v13 = **(a1 + 8), (v13 & 0x80000000) == 0))
      {
        v11 = *v9 * *(v6 + 12);
        v12 = (*(a1 + 64) + v11);
        v14 = *v12;
        v5 = v12 + 2;
        v13 = v14;
        if (v14 == ((v11 + 16) ^ __os_ch_md_redzone_cookie))
        {
          goto LABEL_20;
        }
      }

      else
      {
        qword_27D9EE798 = "Slot descriptor has no metadata";
        __break(1u);
      }

      v16 = **(a1 + 8);
      if ((v16 & 0x80000000) != 0)
      {
        qword_27D9EE798 = "Metadata redzone corrupted";
        qword_27D9EE7C8 = v13;
        __break(1u);
        goto LABEL_60;
      }

LABEL_20:
      v15 = *(v5 + 77);
      v16 = *(v5 + 76);
      if (*(v5 + 77))
      {
        v17 = v16 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        if (*(a1 + 88) >= v16)
        {
          if (v15 <= v16)
          {
            if (*(v5 + 13) != -1)
            {
              v3 = v5 + 4;
LABEL_28:
              v18 = 0;
              v19 = v3;
              while (1)
              {
                v20 = *(v19 + 5);
                if (v20 == -1)
                {
                  v25 = 0;
                }

                else
                {
                  v21 = *(v19 + 20);
                  v22 = (v21 & 2) == 0;
                  v23 = (v21 & 2) != 0 ? 20 : 16;
                  v24 = v22 ? 48 : 56;
                  v25 = *(a1 + v24) + *(v6 + v23) * v20;
                }

                v19[1] = v25;
                v26 = *(v19 + 6);
                if (v26 == -1)
                {
                  break;
                }

                v27 = (*(a1 + 80) + v26 * *(v6 + 13));
                *v19 = v27;
                if (++v18 < v15)
                {
                  v19 = v27;
                  if (v27)
                  {
                    continue;
                  }
                }

                v7 = **(a1 + 8);
                if ((v7 & 0x80000000) == 0)
                {
                  return 0;
                }

                qword_27D9EE798 = "non terminating buflet chain";
                __break(1u);
                goto LABEL_72;
              }

              *v19 = 0;
              if (v18 + 1 != v15)
              {
                goto LABEL_67;
              }

              v28 = v3[1];
              if (v28)
              {
                if (a3)
                {
                  v29 = *(v3 + 16);
                  *(a3 + 4) = v8;
                  *a3 = 0;
                  *(a3 + 16) = v28 + v29;
                  *(a3 + 24) = v5;
                  if (v4 == 1)
                  {
                    v30 = v6;
                  }

                  else
                  {
                    v30 = v5;
                  }

                  *(a3 + 2) = v30[4];
                }

                goto LABEL_49;
              }

              return 0;
            }

            goto LABEL_64;
          }

LABEL_63:
          qword_27D9EE798 = "Invalid bufcnt";
          qword_27D9EE7C8 = v15;
          __break(1u);
LABEL_64:
          v3 = *(v5 + 14);
          if (v3 != -1)
          {
            v3 = (*(a1 + 80) + v3 * *(v6 + 13));
            if (v3)
            {
              goto LABEL_74;
            }
          }

          qword_27D9EE798 = "bad packet: no buflet";
          __break(1u);
LABEL_67:
          qword_27D9EE798 = "invalid buflet count";
          qword_27D9EE7C8 = v15;
          __break(1u);
          goto LABEL_68;
        }

LABEL_62:
        v15 = v16;
        qword_27D9EE798 = "Invalid max bufcnt";
        qword_27D9EE7C8 = v16;
        __break(1u);
        goto LABEL_63;
      }

LABEL_60:
      if ((**(a1 + 8) & 0x80000000) == 0)
      {
        return 0;
      }

      qword_27D9EE798 = "bad bufcnt";
      __break(1u);
      goto LABEL_62;
    }
  }

  v9 = 0;
LABEL_49:
  if (**(a1 + 8) < 0)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

int fchmod(int a1, mode_t a2)
{
  result = __fchmod(a1, a2);
  if (result < 0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = *(StatusReg + 8);
    if (!v6)
    {
      v6 = &errno;
    }

    v7 = a2 & 0xC00;
    if (*v6 == 1 && v7 != 0)
    {
      if ((a2 & 0x400) == 0)
      {
        goto LABEL_24;
      }

      result = __fchmod(a1, a2 & 0xFBFF);
      if (result < 0)
      {
        v9 = *(StatusReg + 8);
        if (!v9)
        {
          v9 = &errno;
        }

        if (*v9 == 1)
        {
LABEL_24:
          if ((a2 & 0x800) == 0)
          {
            goto LABEL_12;
          }

          result = __fchmod(a1, a2 & 0xF7FF);
          if (result < 0)
          {
            v10 = *(StatusReg + 8);
            if (!v10)
            {
              v10 = &errno;
            }

            if (*v10 == 1)
            {
LABEL_12:
              if (v7 == 3072)
              {

                return __fchmod(a1, a2 & 0xF3FF);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

int __fchmod(int a1, mode_t a2)
{
  result = mac_syscall(SYS_fchmod, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t change_fdguard_np(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_change_fdguard_np, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __psynch_rw_wrlock(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_rw_wrlock, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t openat_NOCANCEL(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, unsigned __int16 a9)
{
  if ((a3 & 0x200) != 0)
  {
    v9 = a9;
  }

  else
  {
    v9 = 0;
  }

  return __openat_nocancel(a1, a2, a3, v9, a5, a6, a7, a8);
}

uint64_t __openat_nocancel(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_openat_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __disable_threadsignal(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___disable_threadsignal, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t os_channel_slot_attach_packet(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(*(*result + 16) + 16) & 8) == 0)
  {
    return 45;
  }

  v4 = a3 & 0xFFFFFFFFFFFFFFF0;
  if ((*((a3 & 0xFFFFFFFFFFFFFFF0) + 0x18) & 1) == 0)
  {
    v9 = *(result + 8);
    if ((*v9 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    qword_27D9EE798 = "packet not finalized";
    __break(1u);
    goto LABEL_20;
  }

  v5 = *(result + 16);
  v6 = (a2 - *(result + 24)) >> 3;
  if (*v5 <= *(v5 + 4))
  {
    if (*v5 > v6)
    {
      goto LABEL_13;
    }

    v7 = *(v5 + 4);
  }

  else
  {
    if (*(v5 + 4) > v6)
    {
      goto LABEL_10;
    }

    if (*v5 > v6)
    {
LABEL_13:
      v9 = *(result + 8);
      if (*v9 < 0)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    v7 = *(v5 + 12);
  }

  if (v7 <= v6)
  {
    goto LABEL_13;
  }

LABEL_10:
  v3 = *(a2 + 4);
  if ((v3 & 1) == 0)
  {
    v8 = *(v4 - 8);
    if (v4 == *(result + 64) + v8 * *(v5 + 24) + 16)
    {
LABEL_12:
      *a2 = v8;
      *(a2 + 4) = v3 | 1;
      v9 = *(result + 8);
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_20:
  v9 = *(result + 8);
  if (*v9 < 0)
  {
    v8 = a2;
    qword_27D9EE798 = "Slot has attached packet";
    qword_27D9EE7C8 = a2;
    __break(1u);
LABEL_22:
    if ((**(result + 8) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    qword_27D9EE798 = "bad packet handle";
    qword_27D9EE7C8 = v8;
    __break(1u);
LABEL_24:
    qword_27D9EE798 = "Invalid slot";
    qword_27D9EE7C8 = a2;
    __break(1u);
    return result;
  }

LABEL_14:
  if (*v9 >= 0)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

int renameat(int a1, const char *a2, int a3, const char *a4)
{
  result = __renameat(a1, a2, a3, a4);
  if (!result)
  {
    atomic_fetch_add(&__remove_counter, 1u);
  }

  return result;
}

int __renameat(int a1, const char *a2, int a3, const char *a4)
{
  result = mac_syscall(SYS_renameat, a1, a2, a3, a4);
  if (v4)
  {
    return cerror(result);
  }

  return result;
}

uint64_t os_packet_finalize(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = a1 & 0xFFFFFFFFFFFFFFF0;
  *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x18) &= 0xFFFCu;
  v5 = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x9A);
  if (*((a1 & 0xFFFFFFFFFFFFFFF0) + 0x9A))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x9A);
  }

  else
  {
    v6 = 1;
  }

  *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0;
  do
  {
    if (v5 && (v7 = v3) != 0 || (v7 = (v4 + 32), v8 = (v4 + 32), !*((a1 & 0xFFFFFFFFFFFFFFF0) + 0x28)))
    {
      v8 = *v7;
      if (!*v7)
      {
        goto LABEL_18;
      }
    }

    v9 = v8[9];
    if ((v9 + v8[8]) > v8[7])
    {
      goto LABEL_18;
    }

    if (!v3)
    {
      v1 = v8[8];
    }

    v2 += v9;
    v3 = v8;
    --v6;
  }

  while (v6);
  if (v1 > 0xFF)
  {
LABEL_18:
    result = 34;
    goto LABEL_19;
  }

  *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x52) = v1;
  *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x53) = 0;
  if ((*((a1 & 0xFFFFFFFFFFFFFFF0) + 0x68) & 0x1640F00000000) == 0 || ((*((a1 & 0xFFFFFFFFFFFFFFF0) + 0x68) & 0x400000000) == 0 || *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x80)) && ((*((a1 & 0xFFFFFFFFFFFFFFF0) + 0x68) & 0x800000000) == 0 || *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x92)))
  {
    result = 0;
    v11 = 1;
    goto LABEL_17;
  }

  result = 22;
LABEL_19:
  v2 = 0;
  v11 = 2;
LABEL_17:
  *(v4 + 16) = v2;
  *(v4 + 24) |= v11;
  return result;
}

void *os_channel_slot_get_packet(void *result, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = result[2];
  v3 = result[3];
  v4 = a2 - v3;
  v5 = (a2 - v3) >> 3;
  if (*v2 <= *(v2 + 4))
  {
    if (*v2 > v5)
    {
      goto LABEL_9;
    }

    v6 = *(v2 + 4);
  }

  else
  {
    if (*(v2 + 4) > v5)
    {
      goto LABEL_10;
    }

    if (*v2 > v5)
    {
      goto LABEL_9;
    }

    v6 = *(v2 + 12);
  }

  if (v6 > v5)
  {
    goto LABEL_10;
  }

LABEL_9:
  if ((*result[1] & 0x80000000) == 0)
  {
LABEL_10:
    v7 = v3 + (v4 & 0x7FFFFFFF8);
    if (*(v7 + 4))
    {
      v8 = *(v2 + 24);
      v9 = (*v7 * v8);
      v10 = (result[8] + v9);
      v13 = *v10;
      v12 = v10 + 2;
      v11 = v13;
      if (v13 == ((v9 + 16) ^ __os_ch_md_redzone_cookie) || (*result[1] & 0x80000000) == 0)
      {
        v11 = *(result[8] + v9 + 8);
        if (v9 == v11 * v8)
        {
          return v12;
        }
      }

      else
      {
        qword_27D9EE798 = "Metadata redzone corrupted";
        qword_27D9EE7C8 = v11;
        __break(1u);
      }

      v4 = *result[1];
      if ((v4 & 0x80000000) != 0)
      {
        qword_27D9EE798 = "bad packet handle";
        qword_27D9EE7C8 = v11;
        __break(1u);
        goto LABEL_19;
      }

      return v12;
    }

    return 0;
  }

LABEL_19:
  qword_27D9EE798 = "Index out of bounds in sgp";
  qword_27D9EE7C8 = (v4 >> 3);
  __break(1u);
  return result;
}

int __darwin_check_fd_set_overflow(int a1, const void *a2, int a3)
{
  v10 = a1;
  if (a1 < 0)
  {
    v9 = "FD_SET underflow";
    goto LABEL_11;
  }

  if (a1 < 0x400)
  {
    return 1;
  }

  if (*_libkernel_functions < 4uLL)
  {
    return 1;
  }

  v5 = *(_libkernel_functions + 96);
  if (!v5)
  {
    return 1;
  }

  v7 = v5(a2, 128);
  result = 1;
  if (!a3 && v7)
  {
    v9 = "FD_SET overflow";
LABEL_11:
    os_fault_with_payload(0x12, 2, &v10, 4, v9, 0, v3, v4);
    return 0;
  }

  return result;
}

int fsctl(const char *a1, unint64_t a2, void *a3, unsigned int a4)
{
  result = mac_syscall(SYS_fsctl, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __bsdthread_terminate(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_bsdthread_terminate, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t recvfrom_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_recvfrom_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t os_channel_flow_admissible(void *a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *(*a1 + 40);
  if (!v3)
  {
    return 6;
  }

  if (*(a1[2] + 30) != 1 || *(*(*a1 + 16) + 196) <= a3)
  {
    return 22;
  }

  v4 = (v3 + 32 * a3);
  if (*(v4 + 6))
  {
    if ((a2 & 7) == 0)
    {
      if (*v4 == *a2 && *(v4 + 1) == *(a2 + 1))
      {
        return ((*(v4 + 6) << 30) >> 31) & 0x37;
      }

      return 2;
    }

    if ((a2 & 3) != 0)
    {
      if (*v4 == *a2 && v4[1] == a2[1] && v4[2] == a2[2] && v4[3] == a2[3] && v4[4] == a2[4] && v4[5] == a2[5] && v4[6] == a2[6] && v4[7] == a2[7] && v4[8] == a2[8] && v4[9] == a2[9] && v4[10] == a2[10] && v4[11] == a2[11] && v4[12] == a2[12] && v4[13] == a2[13] && v4[14] == a2[14])
      {
        v6 = v4[15];
        v7 = a2[15];
LABEL_16:
        if (v6 == v7)
        {
          return ((*(v4 + 6) << 30) >> 31) & 0x37;
        }
      }
    }

    else if (*v4 == *a2 && *(v4 + 1) == *(a2 + 1) && *(v4 + 2) == *(a2 + 2))
    {
      v6 = *(v4 + 3);
      v7 = *(a2 + 3);
      goto LABEL_16;
    }
  }

  return 2;
}

uint64_t os_channel_packet_free(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if ((*(*(result + 16) + 16) & 8) == 0)
  {
    return 45;
  }

  v9 = result;
  v10 = result + 96 * *(result + 65);
  v11 = *(v10 + 88);
  v12 = *v11;
  if (v12 == v11[1] && (result = __channel_sync(*result, 2, 2, a4, a5, a6, a7, a8), result) && (*(*(v9 + 24) + 4) & 0x80000000) != 0)
  {
    qword_27D9EE798 = "packet pool free sync failed";
    qword_27D9EE7C8 = result;
    __break(1u);
  }

  else if (v12 != v11[1])
  {
    goto LABEL_4;
  }

  v13 = *(*(v9 + 24) + 4);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_4:
    v13 = *((a2 & 0xFFFFFFFFFFFFFFF0) - 8);
    if ((a2 & 0xFFFFFFFFFFFFFFF0) == *(v10 + 136) + v13 * *(*(v10 + 88) + 24) + 16)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  qword_27D9EE798 = "no free ring space";
  __break(1u);
LABEL_17:
  if ((**(v10 + 80) & 0x80000000) != 0)
  {
    qword_27D9EE798 = "bad packet handle";
    qword_27D9EE7C8 = v13;
    __break(1u);
    return result;
  }

LABEL_5:
  *(*(v10 + 96) + 8 * v12) = v13;
  *(*(v10 + 96) + 8 * v12 + 4) |= 1u;
  if (v12 + 1 == v11[3])
  {
    v14 = 0;
  }

  else
  {
    v14 = v12 + 1;
  }

  *v11 = v14;
  if (**(v10 + 80) >= 0)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t os_channel_slot_detach_packet(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(*(*result + 16) + 16) & 8) == 0)
  {
    return 45;
  }

  v4 = *(result + 16);
  v3 = *(result + 24);
  v5 = (a2 - v3) >> 3;
  if (*v4 <= *(v4 + 4))
  {
    if (*v4 > v5)
    {
      goto LABEL_13;
    }

    v6 = *(v4 + 4);
    goto LABEL_8;
  }

  if (*(v4 + 4) > v5)
  {
    goto LABEL_9;
  }

  if (*v4 <= v5)
  {
    v6 = *(v4 + 12);
LABEL_8:
    if (v6 > v5)
    {
LABEL_9:
      v7 = *(a2 + 4);
      if (v7)
      {
        if (*(result + 64) + *(v3 + ((a2 - v3) & 0x7FFFFFFF8)) * *(v4 + 24) + 16 == a3)
        {
          if (*((a3 & 0xFFFFFFFFFFFFFFF0) + 0x18))
          {
            *a2 = -1;
            *(a2 + 4) = v7 & 0xFFFE;
            v8 = *(result + 8);
            goto LABEL_14;
          }

LABEL_22:
          v8 = *(result + 8);
          if (*v8 < 0)
          {
            qword_27D9EE798 = "packet not finalized";
            __break(1u);
            goto LABEL_24;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v8 = *(result + 8);
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        qword_27D9EE798 = "Slot has no attached packet";
        qword_27D9EE7C8 = a2;
        __break(1u);
      }

      v8 = *(result + 8);
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      qword_27D9EE798 = "packet handle mismatch";
      __break(1u);
      goto LABEL_22;
    }
  }

LABEL_13:
  v8 = *(result + 8);
  if (*v8 < 0)
  {
LABEL_24:
    qword_27D9EE798 = "Invalid slot";
    qword_27D9EE7C8 = a2;
    __break(1u);
    return result;
  }

LABEL_14:
  if (*v8 >= 0)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

int fclonefileat(int a1, int a2, const char *a3, uint32_t a4)
{
  result = mac_syscall(SYS_fclonefileat, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

ssize_t sendmsg(int a1, const msghdr *a2, int a3)
{
  result = mac_syscall(SYS_sendmsg, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

uint64_t __pthread_chdir(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___pthread_chdir, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int mlock(const void *a1, size_t a2)
{
  result = mac_syscall(SYS_mlock, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getsockname(int a1, sockaddr *a2, socklen_t *a3)
{
  result = mac_syscall(SYS_getsockname, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t coalition_info_set_name(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = a3;
  v10 = a1;
  return __coalition_info(2, &v10, a2, &v9, a5, a6, a7, a8);
}

uint64_t coalition_info_resource_usage(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = a3;
  v10 = a1;
  return __coalition_info(1, &v10, a2, &v9, a5, a6, a7, a8);
}

uint64_t __coalition_info(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_coalition_info, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __getrlimit(int a1, rlimit *a2)
{
  result = mac_syscall(SYS_getrlimit, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t os_channel_get_advisory_region(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 4);
  v3 = v1 + 8;
  if (v2 == 1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

int posix_spawnattr_setflags(posix_spawnattr_t *a1, __int16 a2)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *v2 = a2;
  return result;
}

uint64_t __bsdthread_register(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_bsdthread_register, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t pathconf(const char *a1, int a2)
{
  result = mac_syscall(SYS_pathconf, a1, a2);
  if (v2)
  {
    return cerror(result);
  }

  return result;
}

uint64_t select_DARWIN_EXTSN_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_select_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t pid_hibernate(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_pid_hibernate, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t sendto_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_sendto_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int fsetattrlist(int a1, void *a2, void *a3, size_t a4, unsigned int a5)
{
  result = mac_syscall(SYS_fsetattrlist, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

kern_return_t mach_port_move_member(ipc_space_t task, mach_port_name_t member, mach_port_name_t after)
{
  result = _kernelrpc_mach_port_move_member_trap(task, member, after);
  if (result == 268435459)
  {

    return _kernelrpc_mach_port_move_member(task, member, after);
  }

  return result;
}

uint64_t thread_destruct_special_reply_port(mach_port_name_t name, int a2)
{
  switch(a2)
  {
    case 2:
      return mach_port_deallocate(mach_task_self_, name);
    case 1:
      v3 = mach_task_self_;
      v4 = name;
      v5 = 0;
      return mach_port_destruct(v3, v4, v5, 0);
    case 0:
      v3 = mach_task_self_;
      v4 = name;
      v5 = -1;
      return mach_port_destruct(v3, v4, v5, 0);
  }

  return 4;
}

int mincore(const void *a1, size_t a2, char *a3)
{
  result = mac_syscall(SYS_mincore, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t os_channel_packet_pool_purge(unsigned int *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if ((*(*(a1 + 2) + 16) & 8) == 0)
  {
    return 45;
  }

  result = __channel_sync(*a1, 2, (a1[1] & 0xFFFFFFF9 | 4), a4, a5, a6, a7, a8);
  if (result)
  {
    if ((*(*(a1 + 3) + 4) & 0x80000000) == 0)
    {
      return result;
    }

    v39 = result;
    qword_27D9EE798 = "packet pool purge sync failed";
    qword_27D9EE7C8 = result;
    __break(1u);
  }

  else
  {
    result = os_channel_purge_packet_alloc_ring_common(a1, 0, v10, v11, v12, v13, v14, v15);
    if (result)
    {
      return result;
    }

    if (*(a1 + 68) != 255)
    {
      result = os_channel_purge_packet_alloc_ring_common(a1, 1, v16, v17, v18, v19, v20, v21);
      if (result)
      {
        return result;
      }
    }

    if ((2 * *(*(a1 + 3) + 304)) >= 3)
    {
      v22 = &a1[24 * *(a1 + 66)];
      v23 = *(v22 + 11);
      v24 = *v23;
      v25 = v23[1] - *v23;
      if (v25 < 0)
      {
        v25 += v23[3];
      }

      v26 = v22 + 18;
      v27 = v25 + 1;
      v28 = v23[22];
      while (--v27 > v28)
      {
        v29 = *(v26 + 3) + 8 * v24;
        if ((*(v29 + 4) & 1) == 0 && (**(v26 + 1) & 0x80000000) != 0)
        {
          qword_27D9EE798 = "Slot descriptor has no metadata";
          __break(1u);
          break;
        }

        v30 = *(v26 + 10) + *v29 * *(v23 + 13);
        *v29 = -1;
        v31 = *(v26 + 3) + 8 * v24;
        *(v31 + 4) &= ~1u;
        v32 = *(v30 + 40);
        v33 = *(v30 + 20);
        v34 = (v32 & 2) == 0;
        if ((v32 & 2) != 0)
        {
          v35 = 14;
        }

        else
        {
          v35 = 12;
        }

        v36 = *&v26[v35];
        if (v34)
        {
          v37 = 4;
        }

        else
        {
          v37 = 5;
        }

        v38 = v36 + v23[v37] * v33;
        *(v30 + 8) = v38;
        if (!v38)
        {
          qword_27D9EE798 = "buflet with NULL buffer";
          qword_27D9EE7C8 = v33;
          __break(1u);
LABEL_33:
          if ((*(*(a1 + 3) + 4) & 0x80000000) != 0)
          {
            goto LABEL_42;
          }

          return 6;
        }

        v33 = *(v30 + 24);
        if (v33 != -1)
        {
          goto LABEL_33;
        }

        if (v24 + 1 == v23[3])
        {
          v24 = 0;
        }

        else
        {
          ++v24;
        }

        *v23 = v24;
        result = os_channel_buflet_free(a1, v30, v16, v17, v18, v19, v20, v21);
        if (result)
        {
          if ((*(*(a1 + 3) + 4) & 0x80000000) == 0)
          {
            return result;
          }

          qword_27D9EE798 = "buflet pool purge free failed";
          qword_27D9EE7C8 = result;
          __break(1u);
          return 45;
        }
      }
    }

    result = __channel_sync(*a1, 2, 2, v17, v18, v19, v20, v21);
    v39 = *(*(a1 + 3) + 4);
    if (!result)
    {
      if (v39 >= 0)
      {
        return 6;
      }

      else
      {
        return 0;
      }
    }
  }

  if (v39 < 0)
  {
    v33 = result;
    qword_27D9EE798 = "packet pool free sync failed";
    qword_27D9EE7C8 = result;
    __break(1u);
LABEL_42:
    qword_27D9EE798 = "buflet with invalid nidx";
    qword_27D9EE7C8 = v33;
    __break(1u);
  }

  return result;
}

uint64_t os_channel_packet_alloc_common(unsigned int *a1, unint64_t *a2, int a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if ((*(*(a1 + 2) + 16) & 8) == 0)
  {
    return 45;
  }

  if (!a3)
  {
    v18 = &a1[24 * *(a1 + 64)];
    v19 = *(v18 + 11);
    v13 = (v18 + 22);
    v12 = v19;
    v15 = v13 - 2;
    v16 = *v19;
    if (*v19 == v19[1])
    {
      goto LABEL_59;
    }

    goto LABEL_7;
  }

  if (*(a1 + 68) == 255)
  {
    return 45;
  }

  v11 = &a1[24 * *(a1 + 68)];
  v14 = *(v11 + 11);
  v13 = (v11 + 22);
  v12 = v14;
  v15 = v13 - 2;
  v16 = *v14;
  if (*v14 != v14[1])
  {
    goto LABEL_7;
  }

  for (i = (a1[1] & 0xFFFFFFE6 | 0x10); ; i = (a1[1] & 0xFFFFFFF7))
  {
    result = __channel_sync(*a1, 2, i, a4, a5, a6, a7, a8);
    if (result)
    {
      break;
    }

LABEL_7:
    if (v16 == v12[1])
    {
      if (*(*(a1 + 3) + 4) < 0)
      {
        return 12;
      }

      else
      {
        return 6;
      }
    }

    v20 = v15[3] + 8 * v16;
    if ((*(v20 + 4) & 1) != 0 || (v23 = *v15[1], (v23 & 0x80000000) == 0))
    {
      v21 = *v20 * *(v12 + 12);
      v22 = (v15[8] + v21);
      v24 = *v22;
      v8 = (v22 + 2);
      v23 = v24;
      if (v24 == ((v21 + 16) ^ __os_ch_md_redzone_cookie))
      {
        goto LABEL_10;
      }
    }

    else
    {
      qword_27D9EE798 = "Slot descriptor has no metadata";
      __break(1u);
    }

    if ((*v15[1] & 0x80000000) != 0)
    {
      qword_27D9EE798 = "Metadata redzone corrupted";
      qword_27D9EE7C8 = v23;
      __break(1u);
LABEL_51:
      if ((*v15[1] & 0x80000000) == 0)
      {
        return 6;
      }

      qword_27D9EE798 = "bad bufcnt";
      __break(1u);
LABEL_53:
      v26 = v20;
      qword_27D9EE798 = "Invalid max bufcnt";
      qword_27D9EE7C8 = v20;
      __break(1u);
LABEL_54:
      qword_27D9EE798 = "Invalid bufcnt";
      qword_27D9EE7C8 = v26;
      __break(1u);
      goto LABEL_55;
    }

LABEL_10:
    *a2 = v8;
    *v20 = -1;
    v25 = v15[3] + 8 * v16;
    *(v25 + 4) &= ~1u;
    v26 = *(v8 + 154);
    v20 = *(v8 + 152);
    if (*(v8 + 154))
    {
      v27 = v20 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      goto LABEL_51;
    }

    if (*(v15 + 22) < v20)
    {
      goto LABEL_53;
    }

    if (v26 > v20)
    {
      goto LABEL_54;
    }

    v20 = *v13;
    if (*(v8 + 52) != -1)
    {
      v28 = (v8 + 32);
      goto LABEL_18;
    }

LABEL_55:
    v40 = *(v8 + 56);
    if (v40 != -1)
    {
      v28 = (v15[10] + v40 * *(v20 + 26));
      if (v28)
      {
        goto LABEL_64;
      }
    }

    qword_27D9EE798 = "bad packet: no buflet";
    __break(1u);
LABEL_58:
    qword_27D9EE798 = "invalid buflet count";
    qword_27D9EE7C8 = v26;
    __break(1u);
LABEL_59:
    ;
  }

  if ((*(*(a1 + 3) + 4) & 0x80000000) != 0)
  {
    v26 = result;
    qword_27D9EE798 = "packet pool alloc sync failed";
    qword_27D9EE7C8 = result;
    __break(1u);
    while (2)
    {
      qword_27D9EE798 = "non terminating buflet chain";
      __break(1u);
LABEL_64:
      *(v8 + 32) = v28;
      *(v8 + 40) = 0;
LABEL_18:
      LODWORD(v8) = 0;
      v29 = v28;
      do
      {
        v30 = *(v29 + 5);
        if (v30 == -1)
        {
          v35 = 0;
        }

        else
        {
          v31 = *(v29 + 20);
          v32 = (v31 & 2) == 0;
          if ((v31 & 2) != 0)
          {
            v33 = 20;
          }

          else
          {
            v33 = 16;
          }

          if (v32)
          {
            v34 = 6;
          }

          else
          {
            v34 = 7;
          }

          v35 = v15[v34] + (*(v20 + v33) * v30);
        }

        v29[1] = v35;
        v36 = *(v29 + 6);
        if (v36 == -1)
        {
          *v29 = 0;
          if (v8 + 1 != v26)
          {
            goto LABEL_58;
          }

          result = 6;
          if (v28[1])
          {
            if (v16 + 1 == v12[3])
            {
              v39 = 0;
            }

            else
            {
              v39 = v16 + 1;
            }

            *v12 = v39;
            if (*(*(a1 + 3) + 4) >= 0)
            {
              return 6;
            }

            else
            {
              return 0;
            }
          }

          return result;
        }

        v37 = v15[10] + v36 * *(v20 + 26);
        *v29 = v37;
        v8 = (v8 + 1);
        if (v8 >= v26)
        {
          break;
        }

        v29 = v37;
      }

      while (v37);
      v26 = *v15[1];
      if ((v26 & 0x80000000) != 0)
      {
        continue;
      }

      return 6;
    }
  }

  return result;
}

uint64_t __channel_sync(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___channel_sync, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t os_channel_purge_packet_alloc_ring_common(uint64_t result, int a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = result;
  v9 = 64;
  if (a2)
  {
    v9 = 68;
  }

  v10 = result + 96 * *(result + v9);
  v11 = *(v10 + 88);
  v12 = *v11;
  v13 = v11[1] - *v11;
  if (v13 < 0)
  {
    v13 += v11[3];
  }

  v14 = v10 + 72;
  v15 = v11[22];
  v16 = v13 + 1;
  while (1)
  {
    if (--v16 <= v15)
    {
      return 0;
    }

    v17 = *(v14 + 24) + 8 * v12;
    if ((*(v17 + 4) & 1) == 0 && (**(v14 + 8) & 0x80000000) != 0)
    {
      goto LABEL_38;
    }

    v18 = *v17 * *(v11 + 12);
    v19 = (*(v14 + 64) + v18);
    v22 = *v19;
    v20 = (v19 + 2);
    v21 = v22;
    if (v22 != ((v18 + 16) ^ __os_ch_md_redzone_cookie) && (**(v14 + 8) & 0x80000000) != 0)
    {
      qword_27D9EE798 = "Metadata redzone corrupted";
      qword_27D9EE7C8 = v21;
      __break(1u);
      return 0;
    }

    *v17 = -1;
    v23 = *(v14 + 24) + 8 * v12;
    *(v23 + 4) &= ~1u;
    v24 = *(v20 + 154);
    if (*(v20 + 154))
    {
      v25 = *(v20 + 152) == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      if ((**(v14 + 8) & 0x80000000) == 0)
      {
        return 6;
      }

      goto LABEL_39;
    }

    if (!*(v14 + 88))
    {
      break;
    }

    if (v24 >= 2)
    {
      goto LABEL_35;
    }

    v26 = *(v20 + 72);
    v27 = (v26 & 2) == 0;
    if ((v26 & 2) != 0)
    {
      v28 = 5;
    }

    else
    {
      v28 = 4;
    }

    if (v27)
    {
      v29 = 48;
    }

    else
    {
      v29 = 56;
    }

    *(v20 + 40) = *(v14 + v29) + v11[v28] * *(v20 + 52);
    if (v12 + 1 == v11[3])
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    *v11 = v12;
    result = os_channel_packet_free(v8, v20, a3, a4, a5, a6, a7, a8);
    if (result)
    {
      goto LABEL_36;
    }
  }

  v24 = 1;
  qword_27D9EE798 = "Invalid max bufcnt";
  qword_27D9EE7C8 = 1;
  __break(1u);
LABEL_35:
  qword_27D9EE798 = "Invalid bufcnt";
  qword_27D9EE7C8 = v24;
  __break(1u);
LABEL_36:
  if ((*(*(v8 + 24) + 4) & 0x80000000) != 0)
  {
    qword_27D9EE798 = "packet pool purge free failed";
    qword_27D9EE7C8 = result;
    __break(1u);
LABEL_38:
    qword_27D9EE798 = "Slot descriptor has no metadata";
    __break(1u);
LABEL_39:
    qword_27D9EE798 = "pkt pool purge, bad bufcnt";
    __break(1u);
  }

  return result;
}

uint64_t os_channel_tx_ring(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16);
  v3 = v2[5];
  v4 = v3 == -1 || v3 == a2;
  if (v4 && (v5 = v2[76], v6 = a2 >= v5, v7 = a2 - v5, v6) && v2[77] >= a2)
  {
    return a1 + 96 * v7 + 72;
  }

  else
  {
    return 0;
  }
}

uint64_t posix_spawnattr_set_darwin_role_np(uint64_t *a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *(v2 + 88) = a2;
  return result;
}

int shutdown(int a1, int a2)
{
  result = mac_syscall(SYS_shutdown, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

mode_t umask(mode_t a1)
{
  LOWORD(v2) = mac_syscall(SYS_umask, a1);
  if (v1)
  {
    LOWORD(v2) = cerror_nocancel(v2);
  }

  return v2;
}

uint64_t os_channel_get_stats_region(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (*(*(a1 + 24) + 352) != 1)
    {
      return 0;
    }

    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          result += 336;
          return result;
        }

        return 0;
      }
    }

    else
    {
      switch(a2)
      {
        case 2:
          result += 624;
          break;
        case 3:
          result += 2352;
          break;
        case 4:
          result += 2528;
          return result;
        default:
          return 0;
      }
    }
  }

  return result;
}

int tracker_action(int action, char *buffer, size_t buffer_size)
{
  result = mac_syscall(SYS_tracker_action, action, buffer, buffer_size);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __workq_open(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_workq_open, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t select_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1 < 1025)
  {
    return select_DARWIN_EXTSN_NOCANCEL(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v8)
  {
    v8 = &errno;
  }

  *v8 = 22;
  return 0xFFFFFFFFLL;
}

uint64_t stackshot_config_get_stackshot_buffer(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t os_channel_ring_id(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  result = 0xFFFFFFFFLL;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      return v2[78];
    }

    else if (a2 == 3)
    {
      return v2[79];
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return v2[77];
    }
  }

  else
  {
    return v2[76];
  }

  return result;
}

int chown(const char *a1, uid_t a2, gid_t a3)
{
  result = mac_syscall(SYS_chown, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int shm_unlink(const char *a1)
{
  result = mac_syscall(SYS_shm_unlink, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t posix_spawnattr_setjetsam_ext(uint64_t *a1, __int16 a2, int a3, int a4, int a5)
{
  if (!a1)
  {
    return 22;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *(v5 + 64) = a2 | 0x8000;
  *(v5 + 68) = a3;
  *(v5 + 72) = a4;
  *(v5 + 76) = a5;
  return result;
}

int msync(void *a1, size_t a2, int a3)
{
  result = mac_syscall(SYS_msync, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

int getrusage(int a1, rusage *a2)
{
  result = mac_syscall(SYS_getrusage, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t posix_spawnattr_set_persona_uid_np(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  if (!*a1)
  {
    return 22;
  }

  v2 = *(*a1 + 216);
  if (!v2)
  {
    return 22;
  }

  result = 0;
  *(v2 + 4) |= 0x10000u;
  *(v2 + 8) = a2;
  return result;
}

uint64_t posix_spawnattr_set_persona_gid_np(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  if (!*a1)
  {
    return 22;
  }

  v2 = *(*a1 + 216);
  if (!v2)
  {
    return 22;
  }

  result = 0;
  *(v2 + 12) = a2;
  *(v2 + 4) |= 0x20000u;
  return result;
}

uint64_t pread_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_pread_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

ssize_t flistxattr(int fd, char *namebuff, size_t size, int options)
{
  result = mac_syscall(SYS_flistxattr, fd, namebuff, size, options);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int posix_spawnattr_getflags(const posix_spawnattr_t *a1, __int16 *a2)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *a2 = *v2;
  return result;
}

uint64_t __coalition(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_coalition, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t openbyid_np(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_openbyid_np, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t posix_spawnattr_set_launch_type_np(uint64_t *a1, char a2)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *(v2 + 168) = a2;
  return result;
}

uint64_t __libkernel_init(uint64_t a1)
{
  _libkernel_functions = a1;
  v3 = *(a1 + 8);
  result = a1 + 8;
  v2 = v3;
  if (v3)
  {
    _dlsym = v2;
  }

  if ((mach_init_mach_init_inited & 1) == 0)
  {
    result = mach_init_doit();
    mach_init_mach_init_inited = 1;
  }

  return result;
}

uint64_t mach_init_doit()
{
  mach_task_self_ = task_self_trap();
  result = mach_reply_port();
  _task_reply_port = result;
  if (!vm_kernel_page_shift)
  {
    vm_kernel_page_shift = MEMORY[0xFFFFF4037];
    vm_kernel_page_size = 1 << MEMORY[0xFFFFF4037];
    vm_kernel_page_mask = vm_kernel_page_size - 1;
  }

  if (!vm_page_shift)
  {
    vm_page_shift = MEMORY[0xFFFFF4025];
    vm_page_size = 1 << MEMORY[0xFFFFF4025];
    vm_page_mask = vm_page_size - 1;
  }

  return result;
}

uint64_t posix_spawnattr_setprocesstype_np(uint64_t *a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *(v2 + 36) = a2;
  return result;
}

int connect(int a1, const sockaddr *a2, socklen_t a3)
{
  result = mac_syscall(SYS_connect, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

uint64_t posix_spawnattr_set_threadlimit_ext(uint64_t *a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *(v2 + 92) = a2;
  return result;
}

uint64_t posix_spawnattr_set_portlimits_ext(uint64_t *a1, int a2, int a3)
{
  if (!a1)
  {
    return 22;
  }

  v3 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *(v3 + 132) = a2;
  *(v3 + 136) = a3;
  return result;
}

uint64_t posix_spawnattr_set_max_addr_np(uint64_t *a1, uint64_t a2)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *(v2 + 96) = a2;
  return result;
}

uint64_t posix_spawnattr_set_kqworklooplimit_ext(uint64_t *a1, int a2, int a3)
{
  if (!a1)
  {
    return 22;
  }

  v3 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *(v3 + 180) = a2;
  *(v3 + 184) = a3;
  return result;
}

uint64_t posix_spawnattr_set_filedesclimit_ext(uint64_t *a1, int a2, int a3)
{
  if (!a1)
  {
    return 22;
  }

  v3 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *(v3 + 140) = a2;
  *(v3 + 144) = a3;
  return result;
}

uint64_t posix_spawnattr_set_crash_count_np(uint64_t *a1, int a2, int a3)
{
  if (!a1)
  {
    return 22;
  }

  v3 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *(v3 + 172) = a2;
  *(v3 + 176) = a3;
  return result;
}

uint64_t posix_spawnattr_set_crash_behavior_np(uint64_t *a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *(v2 + 148) = a2;
  return result;
}

uint64_t posix_spawnattr_set_crash_behavior_deadline_np(uint64_t *a1, uint64_t a2)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *(v2 + 160) = a2;
  return result;
}

uint64_t os_channel_attr_get(unsigned int *a1, int a2, uint64_t *a3)
{
  v3 = 22;
  v4 = 1;
  switch(a2)
  {
    case 0:
      v4 = *a1;
      goto LABEL_31;
    case 1:
      v4 = a1[1];
      goto LABEL_31;
    case 2:
      v4 = a1[2];
      goto LABEL_31;
    case 3:
      v4 = a1[3];
      goto LABEL_31;
    case 4:
      v4 = a1[4];
      goto LABEL_31;
    case 5:
      v4 = a1[5];
      goto LABEL_31;
    case 6:
      v4 = a1[7];
      goto LABEL_31;
    case 7:
      goto LABEL_31;
    case 9:
      v4 = a1[12];
      goto LABEL_31;
    case 10:
      v4 = a1[13];
      goto LABEL_31;
    case 11:
      v4 = a1[14];
      goto LABEL_31;
    case 12:
      v4 = a1[15];
      goto LABEL_31;
    case 13:
      v4 = a1[16];
      goto LABEL_31;
    case 14:
      v4 = a1[17];
      goto LABEL_31;
    case 15:
      v4 = a1[18];
      goto LABEL_31;
    case 18:
      v4 = a1[19];
      goto LABEL_31;
    case 19:
      v4 = a1[6];
      goto LABEL_31;
    case 20:
      v4 = a1[20];
      goto LABEL_31;
    case 21:
      v4 = a1[21];
      goto LABEL_31;
    case 22:
      v4 = a1[22];
      goto LABEL_31;
    case 23:
      v4 = a1[23];
      goto LABEL_31;
    case 24:
      v5 = a1[24];
      goto LABEL_29;
    case 25:
      v4 = a1[25];
      goto LABEL_31;
    case 26:
      v4 = a1[26];
      goto LABEL_31;
    case 28:
      v5 = a1[28];
      goto LABEL_29;
    case 29:
      v4 = a1[29];
      goto LABEL_31;
    case 30:
      v4 = a1[30];
      goto LABEL_31;
    case 31:
      v5 = a1[31];
LABEL_29:
      v4 = v5 != 0;
      goto LABEL_31;
    case 32:
      v4 = a1[32];
LABEL_31:
      v3 = 0;
      *a3 = v4;
      break;
    default:
      return v3;
  }

  return v3;
}

int posix_spawnattr_setsigmask(posix_spawnattr_t *a1, const sigset_t *a2)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  v2[2] = *a2;
  return result;
}

int posix_spawnattr_setsigdefault(posix_spawnattr_t *a1, const sigset_t *a2)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  v2[1] = *a2;
  return result;
}

uint64_t stackshot_config_get_stackshot_size(uint64_t a1)
{
  if (a1 && *(a1 + 24))
  {
    return *(a1 + 32);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sendmsg_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_sendmsg_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __setrlimit(int a1, const rlimit *a2)
{
  result = mac_syscall(SYS_setrlimit, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int socketpair(int a1, int a2, int a3, int *a4)
{
  result = mac_syscall(SYS_socketpair, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __pthread_kill(_opaque_pthread_t *a1, int a2)
{
  result = mac_syscall(SYS___pthread_kill, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __psynch_cvclrprepost(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_cvclrprepost, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __sigreturn(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_sigreturn, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror(result);
  }

  return result;
}

uint64_t posix_spawnattr_setcpumonitor_default(uint64_t *a1)
{
  if (!a1)
  {
    return 22;
  }

  v1 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *(v1 + 40) = xmmword_22CE349F0;
  return result;
}

uint64_t connect_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_connect_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __wait4(pid_t a1, int *a2, int a3, rusage *a4)
{
  result = mac_syscall(SYS_wait4, a1, a2, a3, a4);
  if (v4)
  {
    return cerror(result);
  }

  return result;
}

uint64_t os_nexus_flow_set_wake_from_sleep(__int128 *a1, uint64_t a2, int a3)
{
  bzero(v8, 0x210uLL);
  (*(_libkernel_string_functions + 4))(&v9, a2, 16);
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2048;
  }

  v8[18] = v6;
  return __os_nexus_config_flow(a1, v8);
}

uint64_t __nexus_set_opt(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___nexus_set_opt, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t pid_suspend(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_pid_suspend, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int posix_spawn_file_actions_addopen(posix_spawn_file_actions_t *a1, int a2, const char *a3, int a4, mode_t a5)
{
  if (!a1)
  {
    return 22;
  }

  v6 = *a1;
  if (!*a1)
  {
    return 22;
  }

  if (a2 >> 11 > 4)
  {
    return 9;
  }

  v12 = v6[1];
  if (v12 == *v6)
  {
    if (_posix_spawn_file_actions_grow(a1))
    {
      return 12;
    }

    v6 = *a1;
    v12 = *(*a1 + 1);
  }

  v13 = &v6[260 * v12];
  v6[1] = v12 + 1;
  v13[2] = 0;
  v13[3] = a2;
  v13[4] = a4;
  *(v13 + 10) = a5;
  (*(_libkernel_string_functions + 11))(v13 + 22, a3, 1024);
  return 0;
}

uint64_t _posix_spawn_file_actions_grow(int **a1)
{
  v2 = **a1;
  if (v2 + 0x40000000 < 0)
  {
    return 12;
  }

  v3 = 2 * v2;
  if (!is_mul_ok(2 * v2, 0x410uLL))
  {
    return 12;
  }

  v4 = *(_libkernel_functions + 32);
  if (!v4)
  {
    return 12;
  }

  v5 = *(_libkernel_functions + 32);
  v6 = v4();
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  result = 0;
  *v7 = v3;
  *a1 = v7;
  return result;
}

uint64_t posix_spawnattr_setcoalition_np(uint64_t *a1, uint64_t a2, unsigned int a3, int a4)
{
  if (!a1)
  {
    return 22;
  }

  result = 22;
  if (a3 <= 1)
  {
    v7 = *a1;
    if (*a1)
    {
      v10 = *(v7 + 208);
      if (v10)
      {
LABEL_5:
        result = 0;
        v11 = v10 + 24 * a3;
        *v11 = a2;
        *(v11 + 2) = a4;
        return result;
      }

      v12 = *(_libkernel_functions + 16);
      if (v12)
      {
        v13 = *(_libkernel_functions + 16);
        v14 = v12(48);
        if (v14)
        {
          v10 = v14;
          v14[1] = 0u;
          v14[2] = 0u;
          *v14 = 0u;
          *(v7 + 208) = v14;
          goto LABEL_5;
        }
      }

      return 12;
    }
  }

  return result;
}

kern_return_t vm_remap(vm_map_t target_task, vm_address_t *target_address, vm_size_t size, vm_address_t mask, int flags, vm_map_t src_task, vm_address_t src_address, BOOLean_t copy, vm_prot_t *cur_protection, vm_prot_t *max_protection, vm_inherit_t inheritance)
{
  v15 = _kernelrpc_vm_remap(target_task, target_address, size, mask, flags, src_task, src_address, copy, cur_protection, max_protection, inheritance);
  if (__syscall_logger)
  {
    __syscall_logger(flags & 0xFF000000 | 0x90, target_task, size, 0, *target_address, 0);
  }

  return v15;
}

uint64_t _kernelrpc_vm_remap(unsigned int a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, _DWORD *a9, _DWORD *a10, int a11)
{
  v21 = 1;
  v22 = a6;
  *&v23 = 0x13000000000000;
  v13 = *a2;
  *(&v23 + 1) = NDR_record;
  v24 = v13;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a7;
  v29 = a8;
  v30 = a11;
  reply_port = mig_get_reply_port();
  *&v20.msgh_bits = 0x5C80001513;
  *&v20.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v20.msgh_voucher_port = 0x12CD00000000;
  v15 = mach_msg2_internal(&v20, 0x200000003, 0x5C80001513, __PAIR64__(reply_port, a1), 0x12CD00000000, ((reply_port << 32) | 1), 0x3C, 0);
  v16 = v15;
  if ((v15 - 268435458) > 0xE || ((1 << (v15 - 2)) & 0x4003) == 0)
  {
    if (!v15)
    {
      if (v20.msgh_id == 71)
      {
        v16 = 4294966988;
      }

      else if (v20.msgh_id == 4913)
      {
        if ((v20.msgh_bits & 0x80000000) == 0)
        {
          if (v20.msgh_size == 52)
          {
            if (!v20.msgh_remote_port)
            {
              v16 = v23;
              if (!v23)
              {
                *a2 = *(&v23 + 4);
                v19 = v24;
                *a9 = HIDWORD(v23);
                *a10 = v19;
                return v16;
              }

              goto LABEL_20;
            }
          }

          else if (v20.msgh_size == 36)
          {
            if (v20.msgh_remote_port)
            {
              v17 = 1;
            }

            else
            {
              v17 = v23 == 0;
            }

            if (v17)
            {
              v16 = 4294966996;
            }

            else
            {
              v16 = v23;
            }

            goto LABEL_20;
          }
        }

        v16 = 4294966996;
      }

      else
      {
        v16 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&v20);
      return v16;
    }

    mig_dealloc_reply_port(v20.msgh_local_port);
  }

  return v16;
}

uint64_t pid_shutdown_sockets(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_pid_shutdown_sockets, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t necp_open(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_necp_open, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t os_channel_set_slot_properties(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = a2 - v4;
  v6 = (a2 - v4) >> 3;
  if (*v3 <= *(v3 + 4))
  {
    if (*v3 > v6)
    {
      goto LABEL_11;
    }

    v7 = *(v3 + 4);
    goto LABEL_7;
  }

  if (*(v3 + 4) > v6)
  {
LABEL_8:
    v8 = *(a3 + 24);
    v9 = *(v8 - 16);
    v10 = *(result + 64);
    if (v9 == ((v8 - v10) ^ __os_ch_md_redzone_cookie) || (**(result + 8) & 0x80000000) == 0)
    {
      v9 = v4 + (v5 & 0x7FFFFFFF8);
      if (*(v9 + 4))
      {
        goto LABEL_10;
      }
    }

    else
    {
      qword_27D9EE798 = "Metadata redzone corrupted";
      qword_27D9EE7C8 = v9;
      __break(1u);
    }

    v5 = **(result + 8);
    if ((v5 & 0x80000000) != 0)
    {
      qword_27D9EE798 = "Slot descriptor has no metadata";
      __break(1u);
      goto LABEL_17;
    }

LABEL_10:
    v11 = (v10 + *v9 * *(v3 + 24));
    v12 = *(a3 + 2);
    v11[8] = v12;
    v11[20] = 0;
    v11[21] = v12;
    return result;
  }

  if (*v3 <= v6)
  {
    v7 = *(v3 + 12);
LABEL_7:
    if (v7 > v6)
    {
      goto LABEL_8;
    }
  }

LABEL_11:
  if ((**(result + 8) & 0x80000000) != 0)
  {
LABEL_17:
    qword_27D9EE798 = "Index out of bounds in ssp";
    qword_27D9EE7C8 = (v5 >> 3);
    __break(1u);
  }

  return result;
}

uint64_t work_interval_join_port(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    return __work_interval_ctl(5, a1, 0, 0, a5, a6, a7, a8);
  }

  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v9)
  {
    v9 = &errno;
  }

  *v9 = 22;
  return 0xFFFFFFFFLL;
}

int setgid(gid_t a1)
{
  result = mac_syscall(SYS_setgid, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __initgroups(const char *a1, int a2)
{
  result = mac_syscall(SYS_initgroups, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int setuid(uid_t a1)
{
  result = mac_syscall(SYS_setuid, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

kern_return_t host_processor_set_priv(host_priv_t host_priv, processor_set_name_t set_name, processor_set_t *set)
{
  v13 = 0x13000000000000;
  v14 = 0;
  v11 = 1;
  v12 = set_name;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x2880001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v10.msgh_voucher_port = 0x1A400000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x2880001513, __PAIR64__(reply_port, host_priv), 0x1A400000000, ((reply_port << 32) | 1), 0x30, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (v10.msgh_id == 71)
      {
        v7 = -308;
      }

      else if (v10.msgh_id == 520)
      {
        if ((v10.msgh_bits & 0x80000000) != 0)
        {
          v7 = -300;
          if (v11 == 1 && *&v10.msgh_size == 40 && HIWORD(v13) << 16 == 1114112)
          {
            v7 = 0;
            *set = v12;
            return v7;
          }
        }

        else if (v10.msgh_size == 36)
        {
          v7 = -300;
          if (v13)
          {
            if (v10.msgh_remote_port)
            {
              v7 = -300;
            }

            else
            {
              v7 = v13;
            }
          }
        }

        else
        {
          v7 = -300;
        }
      }

      else
      {
        v7 = -301;
      }

      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_reply_port(v10.msgh_local_port);
  }

  return v7;
}

uint64_t sigsuspend_NOCANCEL(unsigned int *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    a1 = *a1;
  }

  return __sigsuspend_nocancel(a1, a2, a3, a4, a5, a6, a7, a8);
}

kern_return_t host_processor_sets(host_priv_t host_priv, processor_set_name_array_t *processor_sets, mach_msg_type_number_t *processor_setsCnt)
{
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x1800001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v12.msgh_voucher_port = 0x1A300000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x1800001513, __PAIR64__(reply_port, host_priv), 0x1A300000000, (reply_port << 32), 0x40, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v12.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v12.msgh_id == 519)
      {
        if ((v12.msgh_bits & 0x80000000) != 0)
        {
          v8 = -300;
          if (v13 == 1 && *&v12.msgh_size == 56 && HIWORD(v13) == 529)
          {
            v10 = v14;
            if (v14 == HIDWORD(v14))
            {
              v8 = 0;
              *processor_sets = *(&v13 + 4);
              *processor_setsCnt = v10;
              return v8;
            }
          }
        }

        else if (v12.msgh_size == 36)
        {
          v8 = -300;
          if (DWORD2(v13))
          {
            if (v12.msgh_remote_port)
            {
              v8 = -300;
            }

            else
            {
              v8 = DWORD2(v13);
            }
          }
        }

        else
        {
          v8 = -300;
        }
      }

      else
      {
        v8 = -301;
      }

      mach_msg_destroy(&v12);
      return v8;
    }

    mig_dealloc_reply_port(v12.msgh_local_port);
  }

  return v8;
}

pid_t setsid(void)
{
  result = mac_syscall(SYS_setsid);
  if (v0)
  {
    return cerror_nocancel(result);
  }

  return result;
}

kern_return_t processor_set_tasks(processor_set_t processor_set, task_array_t *task_list, mach_msg_type_number_t *task_listCnt)
{
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x1800001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, processor_set);
  *&v12.msgh_voucher_port = 0xFA500000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x1800001513, __PAIR64__(reply_port, processor_set), 0xFA500000000, (reply_port << 32), 0x40, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v12.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v12.msgh_id == 4105)
      {
        if ((v12.msgh_bits & 0x80000000) != 0)
        {
          v8 = -300;
          if (v13 == 1 && *&v12.msgh_size == 56 && HIWORD(v13) == 529)
          {
            v10 = v14;
            if (v14 == HIDWORD(v14))
            {
              v8 = 0;
              *task_list = *(&v13 + 4);
              *task_listCnt = v10;
              return v8;
            }
          }
        }

        else if (v12.msgh_size == 36)
        {
          v8 = -300;
          if (DWORD2(v13))
          {
            if (v12.msgh_remote_port)
            {
              v8 = -300;
            }

            else
            {
              v8 = DWORD2(v13);
            }
          }
        }

        else
        {
          v8 = -300;
        }
      }

      else
      {
        v8 = -301;
      }

      mach_msg_destroy(&v12);
      return v8;
    }

    mig_dealloc_reply_port(v12.msgh_local_port);
  }

  return v8;
}

sem_t *__sem_open(const char *a1, int a2, void *a3)
{
  result = mac_syscall(SYS_sem_open, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t proc_rlimit_control(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_proc_rlimit_control, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

kern_return_t mach_vm_remap_new(vm_map_t target_task, mach_vm_address_t *target_address, mach_vm_size_t size, mach_vm_offset_t mask, int flags, vm_map_read_t src_task, mach_vm_address_t src_address, BOOLean_t copy, vm_prot_t *cur_protection, vm_prot_t *max_protection, vm_inherit_t inheritance)
{
  v15 = _kernelrpc_mach_vm_remap_new(target_task, target_address, size, mask, flags, src_task, src_address, copy, cur_protection, max_protection, inheritance);
  v16 = v15;
  if (__syscall_logger)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    __syscall_logger(flags & 0xFF000000 | 0x90, target_task, size, 0, *target_address, 0);
  }

  return v16;
}

uint64_t _kernelrpc_mach_vm_remap_new(unsigned int a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, int *a9, int *a10, int a11)
{
  v22 = 1;
  v23 = a6;
  *&v24 = 0x13000000000000;
  v13 = *a2;
  *(&v24 + 1) = NDR_record;
  v25 = v13;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a7;
  v14 = *a9;
  v30 = a8;
  v31 = v14;
  v32 = *a10;
  v33 = a11;
  reply_port = mig_get_reply_port();
  *&v21.msgh_bits = 0x6480001513;
  *&v21.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v21.msgh_voucher_port = 0x12D500000000;
  v16 = mach_msg2_internal(&v21, 0x200000003, 0x6480001513, __PAIR64__(reply_port, a1), 0x12D500000000, ((reply_port << 32) | 1), 0x3C, 0);
  v17 = v16;
  if ((v16 - 268435458) > 0xE || ((1 << (v16 - 2)) & 0x4003) == 0)
  {
    if (!v16)
    {
      if (v21.msgh_id == 71)
      {
        v17 = 4294966988;
      }

      else if (v21.msgh_id == 4921)
      {
        if ((v21.msgh_bits & 0x80000000) == 0)
        {
          if (v21.msgh_size == 52)
          {
            if (!v21.msgh_remote_port)
            {
              v17 = v24;
              if (!v24)
              {
                *a2 = *(&v24 + 4);
                v20 = v25;
                *a9 = HIDWORD(v24);
                *a10 = v20;
                return v17;
              }

              goto LABEL_20;
            }
          }

          else if (v21.msgh_size == 36)
          {
            if (v21.msgh_remote_port)
            {
              v18 = 1;
            }

            else
            {
              v18 = v24 == 0;
            }

            if (v18)
            {
              v17 = 4294966996;
            }

            else
            {
              v17 = v24;
            }

            goto LABEL_20;
          }
        }

        v17 = 4294966996;
      }

      else
      {
        v17 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&v21);
      return v17;
    }

    mig_dealloc_reply_port(v21.msgh_local_port);
  }

  return v17;
}

int pipe(int a1[2])
{
  v4 = mac_syscall(SYS_pipe, a1);
  if (v1)
  {
    return cerror_nocancel(v4);
  }

  *a1 = v4;
  a1[1] = v2;
  return 0;
}

uint64_t posix_spawnattr_setdataless_iopolicy_np(uint64_t *a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *(v2 + 128) |= 4u;
  *(v2 + 152) = a2 | 4;
  return result;
}

int fchmodat(int a1, const char *a2, mode_t a3, int a4)
{
  result = mac_syscall(SYS_fchmodat, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t os_channel_rx_ring(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16);
  v3 = v2[5];
  v4 = v3 == -1 || v3 == a2;
  if (v4 && (v5 = v2[78], v5 <= a2) && v2[79] >= a2)
  {
    return a1 + 96 * (a2 - (v5 + v2[76]) + v2[77] + 1) + 72;
  }

  else
  {
    return 0;
  }
}