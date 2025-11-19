pid_t getppid(void)
{
  result = mac_syscall(SYS_getppid);
  if (v0)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int posix_spawn_file_actions_init(posix_spawn_file_actions_t *a1)
{
  v2 = *(_libkernel_functions + 16);
  if (v2)
  {
    v3 = *(_libkernel_functions + 16);
    v4 = v2(2088);
    *a1 = v4;
    if (v4)
    {
      v5 = v4;
      result = 0;
      *v5 = 2;
      return result;
    }
  }

  else
  {
    *a1 = 0;
  }

  return 12;
}

uint64_t os_channel_attr_set(_DWORD *a1, int a2, unint64_t a3)
{
  result = 45;
  switch(a2)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 14:
    case 15:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 25:
    case 29:
    case 30:
    case 32:
      return result;
    case 6:
      result = 0;
      a1[7] = a3;
      break;
    case 7:
      if (a3)
      {
        result = 0;
      }

      else
      {
        result = 45;
      }

      break;
    case 9:
    case 11:
      if (a3 > 1)
      {
        goto LABEL_5;
      }

      result = 0;
      if (a2 == 9)
      {
        a1[12] = a3;
      }

      else
      {
        a1[14] = a3;
      }

      break;
    case 10:
      result = 0;
      a1[13] = a3;
      break;
    case 12:
      result = 0;
      a1[15] = a3;
      break;
    case 24:
      result = 0;
      a1[24] = a3 != 0;
      break;
    case 26:
      result = 0;
      a1[26] = a3 != 0;
      break;
    case 27:
      result = 0;
      a1[27] = a3;
      break;
    case 28:
      result = 0;
      a1[28] = a3 != 0;
      break;
    case 31:
      result = 0;
      a1[31] = a3 != 0;
      break;
    default:
LABEL_5:
      result = 22;
      break;
  }

  return result;
}

kern_return_t mach_port_unguard(ipc_space_t task, mach_port_name_t name, mach_port_context_t guard)
{
  result = _kernelrpc_mach_port_unguard_trap(task, name, guard);
  if (result == 268435459)
  {

    return _kernelrpc_mach_port_unguard(task, name, guard);
  }

  return result;
}

int __setlogin(const char *a1)
{
  result = mac_syscall(SYS_setlogin, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int sem_close(sem_t *a1)
{
  result = mac_syscall(SYS_sem_close, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int posix_spawn_file_actions_destroy(posix_spawn_file_actions_t *a1)
{
  if (!a1)
  {
    return 22;
  }

  if (!*a1)
  {
    return 22;
  }

  v2 = *(_libkernel_functions + 24);
  if (v2)
  {
    v3 = *(_libkernel_functions + 24);
    v2();
  }

  result = 0;
  *a1 = 0;
  return result;
}

uint64_t posix_spawnattr_set_importancewatch_port_np(uint64_t *a1, unsigned int a2, unsigned int *a3)
{
  if (a2 > 0x80)
  {
    return 22;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v6;
  v15 = v5;
  v16 = v3;
  v17 = v4;
  v10 = a2;
  while (1)
  {
    *&v12 = 3;
    v11 = *a3++;
    *(&v12 + 1) = v11;
    v13 = 0;
    result = posix_spawn_appendportaction_np(a1, &v12);
    if (result)
    {
      break;
    }

    if (!--v10)
    {
      return 0;
    }
  }

  return result;
}

int posix_spawnattr_setspecialport_np(posix_spawnattr_t *a1, mach_port_t a2, int a3)
{
  *&v4 = 0;
  *(&v4 + 1) = a2;
  v5 = 0;
  v6 = a3;
  return posix_spawn_appendportaction_np(a1, &v4);
}

uint64_t posix_spawn_appendportaction_np(uint64_t *a1, __int128 *a2)
{
  if (!a1)
  {
    return 22;
  }

  v3 = 22;
  if (a2)
  {
    v4 = *a1;
    if (*a1)
    {
      v5 = *(v4 + 192);
      if (v5)
      {
        v6 = *v5;
        v7 = v5[1];
        if (*v5 != v7)
        {
LABEL_15:
          v3 = 0;
          v13 = &v5[6 * v7];
          v14 = *a2;
          *(v13 + 3) = *(a2 + 2);
          *(v13 + 2) = v14;
          ++v5[1];
          return v3;
        }

        if (v6 + 0x40000000 >= 0)
        {
          v8 = 2 * v6;
          if (is_mul_ok(2 * v6, 0x18uLL))
          {
            v9 = *(_libkernel_functions + 32);
            if (v9)
            {
              v10 = *(_libkernel_functions + 32);
              v5 = v9();
              if (v5)
              {
                *v5 = v8;
                *(v4 + 192) = v5;
                v7 = v5[1];
                goto LABEL_15;
              }
            }
          }
        }
      }

      else
      {
        v11 = *(_libkernel_functions + 16);
        if (v11)
        {
          v12 = *(_libkernel_functions + 16);
          v5 = v11(56);
          if (v5)
          {
            v7 = 0;
            *v5 = 2;
            *(v4 + 192) = v5;
            goto LABEL_15;
          }
        }
      }

      return 12;
    }
  }

  return v3;
}

uint64_t posix_spawnattr_set_persona_groups_np(uint64_t *a1, unsigned int a2, int *a3, int a4)
{
  if (!a1)
  {
    return 22;
  }

  result = 22;
  if (a2 <= 0x10)
  {
    if (a3)
    {
      v6 = *a1;
      if (v6)
      {
        v7 = *(v6 + 216);
        if (v7)
        {
          v7[4] = a2;
          if (a2)
          {
            v8 = v7 + 5;
            v9 = a2;
            do
            {
              v10 = *a3++;
              *v8++ = v10;
              --v9;
            }

            while (v9);
          }

          result = 0;
          v7[21] = a4;
          v7[1] |= 0x40000u;
        }
      }
    }
  }

  return result;
}

kern_return_t task_set_special_port(task_t task, int which_port, mach_port_t special_port)
{
  v10 = 1;
  v11 = special_port;
  v12 = 0x13000000000000;
  v13 = NDR_record;
  v14 = which_port;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x3480001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v9.msgh_voucher_port = 0xD5200000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x3480001513, __PAIR64__(reply_port, task), 0xD5200000000, ((reply_port << 32) | 1), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = -308;
    }

    else if (v9.msgh_id == 3510)
    {
      v6 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && v9.msgh_size == 36 && !v9.msgh_remote_port)
      {
        v6 = v12;
        if (!v12)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = -301;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

kern_return_t thread_set_exception_ports(thread_act_t thread, exception_mask_t exception_mask, mach_port_t new_port, exception_behavior_t behavior, thread_state_flavor_t new_flavor)
{
  v11 = 1;
  v12 = new_port;
  v13 = 0x13000000000000;
  v14 = NDR_record;
  v15 = exception_mask;
  v16 = behavior;
  v17 = new_flavor;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3C80001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, thread);
  *&v10.msgh_voucher_port = 0xE1D00000000;
  v7 = mach_msg2_internal(&v10, 0x200000003, 0x3C80001513, __PAIR64__(reply_port, thread), 0xE1D00000000, ((reply_port << 32) | 1), 0x2C, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v8;
    }

    if (v10.msgh_id == 71)
    {
      v8 = -308;
    }

    else if (v10.msgh_id == 3713)
    {
      v8 = -300;
      if ((v10.msgh_bits & 0x80000000) == 0 && *&v10.msgh_size == 36)
      {
        v8 = v13;
        if (!v13)
        {
          return v8;
        }
      }
    }

    else
    {
      v8 = -301;
    }

    mach_msg_destroy(&v10);
  }

  return v8;
}

int chdir(const char *a1)
{
  result = mac_syscall(SYS_chdir, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

kern_return_t mach_port_get_context(ipc_space_read_t task, mach_port_name_t name, mach_port_context_t *context)
{
  v5 = 0;
  result = _kernelrpc_mach_port_get_context(task, name, &v5);
  if (!result)
  {
    *context = v5;
  }

  return result;
}

uint64_t _kernelrpc_mach_port_get_context(unsigned int a1, unsigned int a2, void *a3)
{
  v15 = 0;
  v14 = 0;
  v12 = NDR_record;
  v13 = a2;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x2400001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v11.msgh_voucher_port = 0xC9C00000000;
  v6 = mach_msg2_internal(&v11, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0xC9C00000000, (reply_port << 32), 0x34, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v7;
    }

    if (v11.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (v11.msgh_id == 3328)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 44)
        {
          if (!v11.msgh_remote_port)
          {
            v7 = v13;
            if (!v13)
            {
              *a3 = v14;
              return v7;
            }

            goto LABEL_23;
          }
        }

        else if (v11.msgh_size == 36)
        {
          if (v11.msgh_remote_port)
          {
            v9 = 1;
          }

          else
          {
            v9 = v13 == 0;
          }

          if (v9)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = v13;
          }

          goto LABEL_23;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v11);
  }

  return v7;
}

int posix_spawn(pid_t *a1, const char *a2, const posix_spawn_file_actions_t *a3, const posix_spawnattr_t *a4, char *const __argv[], char *const __envp[])
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = *(StatusReg + 8);
  if (v11)
  {
    v12 = *(StatusReg + 8);
  }

  else
  {
    v12 = &errno;
  }

  v13 = *v12;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  if (!a3 || (v14 = *a3) == 0)
  {
    if (a4)
    {
      goto LABEL_11;
    }

LABEL_49:
    v32 = 0;
    goto LABEL_50;
  }

  v15 = v14[1];
  if (!a4 && v15 <= 0)
  {
    goto LABEL_49;
  }

  if (!a4)
  {
LABEL_46:
    if (v15 >= 1)
    {
      *&v37 = (1040 * v15) | 8;
      *(&v37 + 1) = v14;
    }

    goto LABEL_48;
  }

LABEL_11:
  v16 = *a4;
  if (*a4)
  {
    *&v36 = 248;
    *(&v36 + 1) = v16;
    v17 = v16[24];
    if (v17)
    {
      v18 = *(v17 + 4);
      v19 = !is_mul_ok(v18, 0x18uLL);
      if (24 * v18 >= 0xFFFFFFFFFFFFFFF8)
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = 24 * v18 + 8;
      }

      if (v20)
      {
        v21 = 1;
      }

      else
      {
        v21 = v18 == 0;
      }

      if (!v21)
      {
        goto LABEL_56;
      }

      *&v38 = v20;
      *(&v38 + 1) = v17;
    }

    v22 = v16[25];
    if (v22)
    {
      v23 = *(v22 + 4);
      v24 = !is_mul_ok(v23, 0x90uLL);
      if (!is_mul_ok(v23, 0x90uLL) && v23 != 0)
      {
LABEL_56:
        *v12 = 22;
LABEL_57:
        if (v11)
        {
          v34 = v11;
        }

        else
        {
          v34 = &errno;
        }

        v45 = *v34;
        goto LABEL_61;
      }

      v26 = (144 * v23) | 8;
      if (v24)
      {
        v26 = 0;
      }

      *&v39 = v26;
      *(&v39 + 1) = v22;
    }

    v27 = v16[26];
    if (v27)
    {
      *&v40 = 48;
      *(&v40 + 1) = v27;
    }

    v28 = v16[27];
    if (v28)
    {
      *&v41 = 88;
      *(&v41 + 1) = v28;
    }

    v29 = v16[28];
    if (v29)
    {
      *&v42 = 340;
      *(&v42 + 1) = v29;
    }

    v30 = v16[29];
    if (v30)
    {
      *&v43 = 1024;
      *(&v43 + 1) = v30;
    }

    v31 = v16[30];
    if (v31)
    {
      *&v44 = 128;
      *(&v44 + 1) = v31;
    }
  }

  if (a3)
  {
    v14 = *a3;
    if (*a3)
    {
      v15 = v14[1];
      goto LABEL_46;
    }
  }

LABEL_48:
  v32 = &v36;
LABEL_50:
  if (posix_spawn_with_filter && _posix_spawn_with_filter(a1, a2, __argv, __envp, v32, &v45))
  {
    v33 = v45;
  }

  else
  {
    v33 = __posix_spawn(a1, a2, v32, __argv, __envp, __envp);
    v45 = v33;
  }

  v11 = *(StatusReg + 8);
  if (v33 < 0)
  {
    goto LABEL_57;
  }

LABEL_61:
  if (!v11)
  {
    v11 = &errno;
  }

  *v11 = v13;
  return v45;
}

int __posix_spawn(pid_t *a1, const char *a2, const posix_spawn_file_actions_t *a3, const posix_spawnattr_t *a4, char *const *a5, char *const *a6)
{
  result = mac_syscall(SYS_posix_spawn, a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return cerror(result);
  }

  return result;
}

uint64_t os_channel_attr_create()
{
  v0 = *(_libkernel_functions + 16);
  if (!v0)
  {
    return 0;
  }

  v1 = *(_libkernel_functions + 16);
  v2 = v0(136);
  v3 = v2;
  if (v2)
  {
    (*(_libkernel_string_functions + 1))(v2, 136);
  }

  return v3;
}

kern_return_t host_get_clock_service(host_t host, clock_id_t clock_id, clock_serv_t *clock_serv)
{
  v14 = 0;
  v13 = 0;
  v11 = NDR_record;
  v12 = clock_id;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x2400001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v10.msgh_voucher_port = 0xCE00000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x2400001513, __PAIR64__(reply_port, host), 0xCE00000000, (reply_port << 32), 0x30, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (v10.msgh_id == 71)
      {
        v7 = -308;
      }

      else if (v10.msgh_id == 306)
      {
        if ((v10.msgh_bits & 0x80000000) != 0)
        {
          v7 = -300;
          if (*&v11.mig_vers == 1 && *&v10.msgh_size == 40 && WORD1(v13) << 16 == 1114112)
          {
            v7 = 0;
            *clock_serv = *&v11.int_rep;
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

gid_t getgid(void)
{
  result = mac_syscall(SYS_getgid);
  if (v0)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t coalition_ledger_set_logical_writes_limit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = a1;
  v9 = 8;
  v10 = a2;
  return __coalition_ledger(1, &v11, &v10, &v9, a5, a6, a7, a8);
}

uint64_t __coalition_ledger(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_coalition_ledger, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

kern_return_t semaphore_destroy(task_t task, semaphore_t semaphore)
{
  v11 = 0x11000000000000;
  v9 = 1;
  v10 = semaphore;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2880001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v8.msgh_voucher_port = 0xD5B00000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2880001513, __PAIR64__(reply_port, task), 0xD5B00000000, ((reply_port << 32) | 1), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 3519)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v11;
        if (!v11)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t host_info(host_t host, host_flavor_t flavor, host_info_t host_info_out, mach_msg_type_number_t *host_info_outCnt)
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
  *&v16.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v16.msgh_voucher_port = 0xC800000000;
  v9 = mach_msg2_internal(&v16, 0x200000003, 0x2800001513, __PAIR64__(reply_port, host), 0xC800000000, (reply_port << 32), 0x140, 0);
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

    else if (v16.msgh_id == 300)
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

uint64_t work_interval_join(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      v8 = *(a1 + 20);
      if (v8 - 1 < 0xFFFFFFFE)
      {
        return work_interval_join_port(v8, a2, a3, a4, a5, a6, a7, a8);
      }
    }
  }

  v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v10)
  {
    v10 = &errno;
  }

  *v10 = 22;
  return 0xFFFFFFFFLL;
}

uint64_t task_restartable_ranges_register(unsigned int a1, const void *a2, unsigned int a3)
{
  v11 = NDR_record;
  if (a3 > 0x40)
  {
    return 4294966989;
  }

  memset(v13, 0, 476);
  v6 = 16 * a3;
  memmove(v13, a2, 16 * a3);
  v12 = a3;
  reply_port = mig_get_reply_port();
  v10.msgh_bits = 5395;
  v10.msgh_size = v6 + 36;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v10.msgh_voucher_port = 0x1F4000000000;
  v8 = mach_msg2_internal(&v10, 0x200000003, (((v6 + 36) << 32) | 0x1513), __PAIR64__(reply_port, a1), 0x1F4000000000, (reply_port << 32), 0x2C, 0);
  v3 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v3;
    }

    if (v10.msgh_id == 71)
    {
      v3 = 4294966988;
    }

    else if (v10.msgh_id == 8100)
    {
      v3 = 4294966996;
      if ((v10.msgh_bits & 0x80000000) == 0 && v10.msgh_size == 36 && !v10.msgh_remote_port)
      {
        v3 = v12;
        if (!v12)
        {
          return v3;
        }
      }
    }

    else
    {
      v3 = 4294966995;
    }

    mach_msg_destroy(&v10);
  }

  return v3;
}

uint64_t posix_spawnattr_set_persona_np(uint64_t *a1, int a2, unsigned int a3)
{
  if (!a1)
  {
    return 22;
  }

  result = 22;
  if (a3 <= 3)
  {
    v6 = *a1;
    if (*a1)
    {
      v8 = *(v6 + 216);
      if (v8)
      {
LABEL_5:
        result = 0;
        *v8 = a2;
        v8[1] = a3;
        return result;
      }

      v9 = *(_libkernel_functions + 16);
      if (v9)
      {
        v10 = *(_libkernel_functions + 16);
        v11 = v9(88);
        if (v11)
        {
          v8 = v11;
          *(v11 + 84) = 0;
          *(v11 + 8) = 0;
          *(v11 + 16) = 0;
          *(v6 + 216) = v11;
          goto LABEL_5;
        }
      }

      return 12;
    }
  }

  return result;
}

int posix_spawnattr_init(posix_spawnattr_t *a1)
{
  v2 = *(_libkernel_functions + 16);
  if (v2)
  {
    v3 = *(_libkernel_functions + 16);
    v4 = v2(248);
    *a1 = v4;
    if (v4)
    {
      v5 = v4;
      result = 0;
      *(v5 + 14) = -1;
      *(v5 + 15) = -1;
      *(v5 + 19) = -1;
      *(v5 + 6) = 0;
      *(v5 + 7) = 1;
      *v5 = 0;
      *(v5 + 4) = 0;
      *(v5 + 20) = 0;
      *(v5 + 12) = 0;
      *(v5 + 7) = 0;
      *(v5 + 16) = 0;
      *(v5 + 68) = -1;
      *(v5 + 4) = 0;
      *(v5 + 5) = 0;
      *(v5 + 200) = 0u;
      *(v5 + 216) = 0u;
      *(v5 + 5) = 0u;
      *(v5 + 12) = 0;
      *(v5 + 52) = 0;
      *(v5 + 27) = 0;
      *(v5 + 20) = 0;
      v5[168] = 0;
      *(v5 + 16) = 0;
      *(v5 + 17) = 0;
      *(v5 + 38) = 0;
      *(v5 + 18) = 0;
      *(v5 + 23) = 0;
      *(v5 + 24) = 0;
      *(v5 + 170) = 0;
      *(v5 + 178) = 0;
      *(v5 + 29) = 0;
      *(v5 + 30) = 0;
      return result;
    }
  }

  else
  {
    *a1 = 0;
  }

  return 12;
}

const char *mach_error_string_int(unsigned int a1, _DWORD *a2)
{
  v32 = a1;
  do_compat(&v32);
  v3 = v32;
  v4 = &_mach_errors + 40 * (v32 >> 26);
  v5 = (v32 >> 14) & 0xFFF;
  *a2 = 1;
  v6 = *(v4 + 3);
  if (v6)
  {
    v7 = *(v4 + 8);
    if (v7 < 1)
    {
LABEL_33:
      v31 = (v4 + 8);
      return *v31;
    }

    v8 = 0;
    v9 = (v6 + 4);
    while (1)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = v5 - v10;
      v13 = v5 >= v10 && v11 >= v5;
      v14 = !v13;
      v15 = v11 - v10;
      v16 = v14 ? v15 + 1 : v12;
      v8 += v16;
      if (!v14)
      {
        break;
      }

      v9 += 2;
      if (!--v7)
      {
        goto LABEL_33;
      }
    }

    v5 = v8;
  }

  if (v5 >= *v4)
  {
    goto LABEL_33;
  }

  v17 = v3 & 0x3FFF;
  v18 = *(v4 + 2) + 40 * v5;
  v19 = *(v18 + 24);
  if (v19)
  {
    v20 = *(v18 + 32);
    if (v20 < 1)
    {
      return "unknown error code";
    }

    v21 = 0;
    v22 = (v19 + 4);
    result = "unknown error code";
    while (1)
    {
      v24 = *(v22 - 1);
      v25 = *v22;
      v26 = v17 - v24;
      v27 = v17 >= v24 && v25 >= v17;
      v28 = !v27;
      v29 = v25 - v24;
      v30 = v28 ? v29 + 1 : v26;
      v21 += v30;
      if (!v28)
      {
        break;
      }

      v22 += 2;
      if (!--v20)
      {
        return result;
      }
    }

    v17 = v21;
  }

  if (v17 < *(v18 + 8))
  {
    *a2 = mach_error_full_diag;
    v31 = *(v18 + 16) + 8 * v17;
    return *v31;
  }

  return "unknown error code";
}

int *do_compat(int *result)
{
  v1 = *result;
  if ((*result + 199) > 0x63)
  {
    v3 = v1 + 299;
    v4 = v1 - 1000;
    v5 = v1 - 1600;
    if ((v1 - 27600) >= 0x64)
    {
      v6 = *result;
    }

    else
    {
      v6 = (v1 - 27600) | 0x8008000;
    }

    v7 = v5 | 0x8004000;
    if (v5 > 0x63)
    {
      v7 = v6;
    }

    if (v4 <= 0x63)
    {
      v8 = v4 | 0x8000000;
    }

    else
    {
      v8 = v7;
    }

    if ((v1 + 399) <= 0x63)
    {
      v9 = 268467924 - v1;
    }

    else
    {
      v9 = v8;
    }

    v2 = 201342776 - v1;
    if (v3 > 0x63)
    {
      v2 = v9;
    }
  }

  else
  {
    v2 = 201326492 - v1;
  }

  *result = v2;
  return result;
}

uint64_t os_channel_read_attr(void **a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  info = __channel_get_info(*a1, a1[2], 0x180, a4, a5, a6, a7, a8);
  if (!info)
  {
    os_channel_info2attr(a1, a2);
  }

  return info;
}

double os_channel_info2attr(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  (*(_libkernel_string_functions + 1))(a2, 136);
  v7 = *(a1 + 16);
  *a2 = *(v7 + 152);
  *(a2 + 16) = *(v7 + 168);
  v8 = *(v7 + 176);
  *(a2 + 80) = *(v7 + 196);
  v9 = *(v4 + 16);
  *(a2 + 24) = v8;
  *(a2 + 28) = (v9 >> 9) & 1;
  *(a2 + 104) = (v9 >> 4) & 1;
  LODWORD(v7) = *(v7 + 208);
  *(a2 + 96) = (v9 >> 3) & 1;
  *(a2 + 100) = v7;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = *(v4 + 320);
  *(a2 + 56) = *(v4 + 328);
  v10 = *(a1 + 16);
  *(a2 + 64) = *(v10 + 132);
  *(a2 + 68) = *(v10 + 184);
  *(a2 + 76) = *(v10 + 192);
  result = *(a1 + 56);
  *(a2 + 84) = result;
  v12 = *(v4 + 16);
  *(a2 + 92) = *(v10 + 204) & 1;
  v13 = *(v10 + 212);
  *(a2 + 112) = (v12 >> 6) & 1;
  *(a2 + 116) = v13;
  *(a2 + 120) = *(v4 + 276);
  *(a2 + 124) = (v12 >> 7) & 1;
  *(a2 + 128) = *(v10 + 220);
  return result;
}

uint64_t os_channel_create_extended(_OWORD *a1, __int16 a2, unsigned int a3, int a4, uint64_t a5)
{
  v93 = 0;
  v91 = 0u;
  v92 = 0u;
  memset(v90, 0, sizeof(v90));
  if (a3 > 2)
  {
    v34 = 22;
LABEL_29:
    v36 = 0;
    v37 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v37)
    {
      v37 = &errno;
    }

    *v37 = v34;
    return v36;
  }

  v5 = *(_libkernel_functions + 16);
  if (!v5 || (v6 = *(_libkernel_functions + 16), (v11 = v5(384)) == 0))
  {
    v35 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v35)
    {
      v35 = &errno;
    }

    v34 = 12;
    *v35 = 12;
    goto LABEL_29;
  }

  v12 = v11;
  (*(_libkernel_string_functions + 1))(v11, 384);
  (*(_libkernel_string_functions + 1))(v90, 72);
  LODWORD(v90[0]) = 1;
  if (a5)
  {
    if (*(a5 + 28))
    {
      DWORD1(v90[0]) |= 0x200u;
    }

    v19 = *(a5 + 96);
    if (v19)
    {
      DWORD1(v90[0]) |= 8u;
    }

    if (*(a5 + 104))
    {
      DWORD1(v90[0]) |= 0x10u;
    }

    if (*(a5 + 112))
    {
      if (!v19)
      {
        v34 = 22;
        goto LABEL_64;
      }

      DWORD1(v90[0]) |= 0x40u;
    }

    if (*(a5 + 108))
    {
      DWORD1(v90[0]) |= 0x20u;
    }

    if (*(a5 + 124))
    {
      DWORD1(v90[0]) |= 0x80u;
    }

    DWORD2(v91) = *(a5 + 32);
    *&v91 = *(a5 + 40);
    v92 = *(a5 + 48);
  }

  DWORD2(v90[0]) = a4;
  WORD6(v90[0]) = a2;
  *(v90 + 14) = *a1;
  v20 = __channel_open(v90, 0x48, v13, v14, v15, v16, v17, v18);
  if (v20 == -1)
  {
    v39 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v39)
    {
      v39 = &errno;
    }

    v34 = *v39;
    if (!*v39)
    {
      return 0;
    }

    goto LABEL_64;
  }

  v26 = v20;
  if (__channel_get_info(v20, v12, 0x180, v21, v22, v23, v24, v25))
  {
    v33 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v33)
    {
      v33 = &errno;
    }

    v34 = *v33;
    if (!*v33)
    {
      return 0;
    }

    goto LABEL_63;
  }

  v40 = (*(v12 + 296) + *(v12 + 288));
  v41 = 2 * v40[76];
  v42 = v40[77];
  if ((BYTE4(v90[0]) & 8) != 0 && (!v41 || (*(v12 + 16) & 8) == 0) || (BYTE4(v90[0]) & 0x40) != 0 && (!v42 || (*(v12 + 16) & 0x40) == 0))
  {
    v34 = 6;
LABEL_60:
    v52 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v52)
    {
      v52 = &errno;
    }

    *v52 = v34;
LABEL_63:
    guarded_close_np(v26, &v93, v27, v28, v29, v30, v31, v32);
LABEL_64:
    v53 = *(_libkernel_functions + 24);
    if (v53)
    {
      v54 = *(_libkernel_functions + 24);
      v53(v12);
    }

    goto LABEL_29;
  }

  v43 = *(_libkernel_functions + 16);
  if (!v43)
  {
    goto LABEL_59;
  }

  v84 = *(v12 + 312);
  v85 = *(v12 + 304);
  v82 = *(v12 + 316);
  v83 = *(v12 + 308);
  v44 = (v83 - v85 + 1);
  v45 = (v82 - v84 + 1);
  v80 = *(v12 + 316) - *(v12 + 312) + 1 + *(v12 + 308) - *(v12 + 304) + 1;
  v89 = v40[77];
  v86 = (2 * v40[76]);
  v88 = v40[78];
  v81 = v45 + v44 + v42 + v41;
  v87 = 96 * (v81 + v40[78]);
  v46 = v43(v87 + 72);
  if (!v46)
  {
LABEL_59:
    v34 = 12;
    goto LABEL_60;
  }

  v36 = v46;
  result = (*(_libkernel_string_functions + 1))(v46, v87 + 72);
  *v36 = v26;
  *(v36 + 8) = v93;
  *(v36 + 16) = v12;
  *(v36 + 24) = v40;
  __dmb(0xBu);
  v47 = *(v36 + 24);
  if (*v47 != 19)
  {
    v67 = malloc(0x400uLL);
    v68 = *(v36 + 24);
    v79 = *(v68 + 274);
    v77 = *(v68 + 272);
    v78 = *(v68 + 273);
    v75 = *(v68 + 270);
    v76 = *(v68 + 271);
    v73 = *(v68 + 268);
    v74 = *(v68 + 269);
    v71 = *(v68 + 266);
    v72 = *(v68 + 267);
    v69 = *(v68 + 264);
    v70 = *(v68 + 265);
    result = _mach_snprintf(v67, 1024, "Schema region version mismatch: 0x%x != 0x%x\nKernel version: %s - did you forget to install a matching libsystem_kernel.dylib?\nKernel UUID: %x%x%x%x-%x%x-%x%x-%x%x-%x%x%x%x%x%x", *(v68 + 275), *(v68 + 276), *(v68 + 277), *(v68 + 278), *(v68 + 279), *v68);
    qword_27D9EE798 = v67;
    __break(1u);
LABEL_98:
    qword_27D9EE798 = "nexus advisory metadata version mismatch";
    qword_27D9EE7C8 = 1;
    __break(1u);
    goto LABEL_99;
  }

  *(v36 + 56) = *(v47 + 336);
  *(v36 + 60) = *(v47 + 340);
  v48 = *(v47 + 344);
  if (v48)
  {
    *(v36 + 32) = *(*(v36 + 16) + 288) + v48;
  }

  v49 = *(v47 + 320);
  if (v49)
  {
    *(v36 + 40) = *(*(v36 + 16) + 288) + v49;
  }

  v50 = *(v47 + 360);
  if (!v50)
  {
    goto LABEL_71;
  }

  v51 = *(*(v36 + 16) + 288) + v50;
  *(v36 + 48) = v51;
  if (*v51 != 1 && (*(v47 + 4) & 0x80000000) != 0)
  {
    goto LABEL_98;
  }

  if (*(v51 + 4) == 2)
  {
    if (*(v51 + 8) != 1 && (*(v47 + 4) & 0x80000000) != 0)
    {
      qword_27D9EE798 = "nexus advisory version mismatch for netif";
      qword_27D9EE7C8 = 1;
      __break(1u);
      goto LABEL_59;
    }

    goto LABEL_71;
  }

  if (*(v51 + 4) == 1)
  {
    if (*(v51 + 8) == 2 || (*(v47 + 4) & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    v47 = 2;
    qword_27D9EE798 = "nexus advisory version mismatch for flowswitch";
    qword_27D9EE7C8 = 2;
    __break(1u);
  }

  if ((*(v47 + 4) & 0x80000000) == 0)
  {
LABEL_71:
    if (a5)
    {
      os_channel_info2attr(v36, a5);
    }

    if (v83 - v85 != -1)
    {
      v55 = 0;
      v56 = (v36 + 72);
      do
      {
        os_channel_init_ring(v56, v36, v55++);
        v56 += 6;
      }

      while (v44 != v55);
    }

    if (v82 - v84 != -1)
    {
      do
      {
        os_channel_init_ring((v36 + 72 + 96 * v44), v36, v44);
        LODWORD(v44) = v44 + 1;
        --v45;
      }

      while (v45);
    }

    if (v86)
    {
      v57 = v83 + v82 - v85 - v84 + 2;
      v58 = v86;
      do
      {
        os_channel_init_ring((v36 + 72 + 96 * v57), v36, v57);
        ++v57;
        --v58;
      }

      while (v58);
    }

    if (v89)
    {
      v59 = v83 + v82 + v86 - v85 - v84 + 2;
      v60 = v89;
      do
      {
        os_channel_init_ring((v36 + 72 + 96 * v59), v36, v59);
        ++v59;
        --v60;
      }

      while (v60);
    }

    if (v88)
    {
      v61 = v88;
      v62 = v83 + v82 + v89 + v86 - v85 - v84 + 2;
      do
      {
        os_channel_init_ring((v36 + 72 + 96 * v62), v36, v62);
        ++v62;
        --v61;
      }

      while (v61);
    }

    if ((BYTE4(v90[0]) & 8) != 0)
    {
      *(v36 + 4) = 3;
      *(v36 + 64) = v80;
      if (v86 < 3)
      {
        v65 = v80 + 1;
        v64 = -1;
        v66 = -1;
      }

      else
      {
        *(v36 + 4) = 11;
        v64 = v80 + 1;
        v65 = v80 + 2;
        v66 = v80 + 3;
      }

      *(v36 + 66) = v64;
      *(v36 + 65) = v65;
      *(v36 + 67) = v66;
      v63 = v81;
      if (!v88)
      {
        v63 = -1;
      }
    }

    else
    {
      *(v36 + 64) = -1;
      v63 = -1;
    }

    *(v36 + 68) = v63;
    if (!__os_ch_md_redzone_cookie)
    {
      __os_ch_md_redzone_cookie = *(*(v36 + 24) + 328);
    }

    __dmb(0xBu);
    return v36;
  }

LABEL_99:
  qword_27D9EE798 = "nexus advisory metadata type unknown";
  qword_27D9EE7C8 = 1;
  __break(1u);
  return result;
}

int64x2_t *os_channel_init_ring(int64x2_t *result, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 24);
  v4 = vaddq_s64(*(v3 + 16 * a3 + 368), vdupq_n_s64(v3));
  v5 = v4.i64[1];
  if (v4.i64[0])
  {
    v6 = v4.i64[1] == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    qword_27D9EE798 = "Channel schema not valid";
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(v3 + 336);
  if (v5 != 2)
  {
LABEL_9:
    qword_27D9EE798 = "Metadata type unknown";
    qword_27D9EE7C8 = v5;
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v3 + 340);
  if (v5 == 2)
  {
    result->i64[0] = a2;
    result->i64[1] = v3 + 4;
    result[1] = v4;
    result[2].i64[0] = 0x200000002;
    v7 = *(a2 + 16);
    result[2].i64[1] = *(v7 + 288);
    result[3].i64[0] = *(v4.i64[0] + 32) + v4.i64[0];
    result[4].i64[0] = *(v4.i64[0] + 48) + v4.i64[0];
    result[4].i64[1] = *(v4.i64[0] + 56) + v4.i64[0];
    result[5].i64[0] = *(v4.i64[0] + 64) + v4.i64[0];
    result[3].i64[1] = *(v4.i64[0] + 40) + v4.i64[0];
    result[5].i32[2] = *(v7 + 212);
    return result;
  }

LABEL_10:
  qword_27D9EE798 = "Metadata subtype unknown";
  qword_27D9EE7C8 = v5;
  __break(1u);
  return result;
}

uint64_t __channel_get_info(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___channel_get_info, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __channel_open(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___channel_open, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int kqueue(void)
{
  result = mac_syscall(SYS_kqueue);
  if (v0)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __microstackshot(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_microstackshot, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int fs_snapshot_list(int a1, attrlist *a2, void *a3, size_t a4, uint32_t a5)
{
  if (!a5)
  {
    return getattrlistbulk(a1, a2, a3, a4, 0x40uLL);
  }

  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v5)
  {
    v5 = &errno;
  }

  *v5 = 22;
  return -1;
}

uint64_t posix_spawnattr_set_uid_np(uint64_t *a1, int a2)
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

  v4 = *(v2 + 224);
  if (v4)
  {
    v5 = *v4 | 0x10000;
  }

  else
  {
    v7 = *(_libkernel_functions + 16);
    if (!v7)
    {
      return 12;
    }

    v8 = *(_libkernel_functions + 16);
    v4 = v7(340);
    if (!v4)
    {
      return 12;
    }

    *(v4 + 80) = 0;
    *(v4 + 84) = 0;
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    v5 = 0x10000;
    *(v2 + 224) = v4;
  }

  v6 = 0;
  *v4 = v5;
  *(v4 + 4) = a2;
  return v6;
}

uint64_t posix_spawnattr_set_gid_np(uint64_t *a1, int a2)
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

  v4 = *(v2 + 224);
  if (v4)
  {
    v5 = *v4 | 0x20000;
  }

  else
  {
    v7 = *(_libkernel_functions + 16);
    if (!v7)
    {
      return 12;
    }

    v8 = *(_libkernel_functions + 16);
    v4 = v7(340);
    if (!v4)
    {
      return 12;
    }

    *(v4 + 80) = 0;
    *(v4 + 84) = 0;
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    v5 = 0x20000;
    *(v2 + 224) = v4;
  }

  v6 = 0;
  *(v4 + 8) = a2;
  *v4 = v5;
  return v6;
}

int setattrlist(const char *a1, void *a2, void *a3, size_t a4, unsigned int a5)
{
  result = mac_syscall(SYS_setattrlist, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int fchownat(int a1, const char *a2, uid_t a3, gid_t a4, int a5)
{
  result = mac_syscall(SYS_fchownat, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int symlink(const char *a1, const char *a2)
{
  mac_syscall(SYS_symlink);
  if (v2)
  {
    return cerror(result);
  }

  return result;
}

int munlock(const void *a1, size_t a2)
{
  result = mac_syscall(SYS_munlock, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getpeername(int a1, sockaddr *a2, socklen_t *a3)
{
  result = mac_syscall(SYS_getpeername, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __sigaltstack(const stack_t *a1, stack_t *a2)
{
  result = mac_syscall(SYS_sigaltstack, a1, a2);
  if (v2)
  {
    return cerror(result);
  }

  return result;
}

uint64_t _kernelrpc_thread_policy(unsigned int a1, int a2, void *__src, unsigned int a4, int a5)
{
  memset(v15, 0, sizeof(v15));
  memset(&reply_port, 0, sizeof(reply_port));
  v14 = NDR_record;
  LODWORD(v15[0]) = a2;
  if (a4 > 5)
  {
    return 4294966989;
  }

  v9 = 4 * a4;
  memmove(v15 + 8, __src, v9);
  DWORD1(v15[0]) = a4;
  *(&reply_port + v9 + 40) = a5;
  v10 = mig_get_reply_port();
  reply_port.msgh_bits = 5395;
  reply_port.msgh_size = v9 + 44;
  *&reply_port.msgh_remote_port = __PAIR64__(v10, a1);
  *&reply_port.msgh_voucher_port = 0xE2000000000;
  v11 = mach_msg2_internal(&reply_port, 0x200000003, (((((v9 + 44) >> 2) & 0x1FFFFFFF) << 34) | 0x1513), __PAIR64__(v10, a1), 0xE2000000000, (v10 << 32), 0x2C, 0);
  v5 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (v11)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v5;
    }

    if (reply_port.msgh_id == 71)
    {
      v5 = 4294966988;
    }

    else if (reply_port.msgh_id == 3716)
    {
      v5 = 4294966996;
      if ((reply_port.msgh_bits & 0x80000000) == 0 && reply_port.msgh_size == 36 && !reply_port.msgh_remote_port)
      {
        v5 = LODWORD(v15[0]);
        if (!LODWORD(v15[0]))
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = 4294966995;
    }

    mach_msg_destroy(&reply_port);
  }

  return v5;
}

kern_return_t thread_get_exception_ports(thread_act_t thread, exception_mask_t exception_mask, exception_mask_array_t masks, mach_msg_type_number_t *masksCnt, exception_handler_array_t old_handlers, exception_behavior_array_t old_behaviors, exception_flavor_array_t old_flavors)
{
  v52 = 0u;
  memset(v53, 0, 92);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v27 = NDR_record;
  v28 = exception_mask;
  reply_port = mig_get_reply_port();
  *&v26.msgh_bits = 0x2400001513;
  *&v26.msgh_remote_port = __PAIR64__(reply_port, thread);
  *&v26.msgh_voucher_port = 0xE1E00000000;
  v14 = mach_msg2_internal(&v26, 0x200000003, 0x2400001513, __PAIR64__(reply_port, thread), 0xE1E00000000, (reply_port << 32), 0x330, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (v26.msgh_id == 71)
      {
        v15 = -308;
      }

      else if (v26.msgh_id == 3714)
      {
        if ((v26.msgh_bits & 0x80000000) != 0)
        {
          v15 = -300;
          if (*&v27.mig_vers != 32 || v26.msgh_size - 424 > 0x180 || v26.msgh_remote_port)
          {
            goto LABEL_23;
          }

          p_int_rep = &v27.int_rep;
          v17 = 36;
          while (!*(&v26.msgh_bits + v17 + 3))
          {
            v17 += 12;
            if (v17 == 420)
            {
              v18 = v53[0];
              if (v53[0] > 0x20u)
              {
                break;
              }

              v15 = -300;
              if (v53[0] <= (v26.msgh_size - 424) >> 2)
              {
                v20 = (4 * v53[0]);
                v21 = v20 + 424;
                if (v26.msgh_size >= (v20 + 424))
                {
                  v22 = v26.msgh_size - v20;
                  if (v53[0] <= (v26.msgh_size - v20 - 424) >> 2 && v22 >= v21)
                  {
                    v23 = v22 - v20;
                    if (v53[0] <= (v23 - 424) >> 2 && v23 == v21)
                    {
                      v24 = &v26 + v20 - 128;
                      memmove(masks, &v53[1], (4 * v53[0]));
                      *masksCnt = v18;
                      if (v18)
                      {
                        do
                        {
                          v25 = *p_int_rep;
                          p_int_rep += 12;
                          *old_handlers++ = v25;
                          --v18;
                        }

                        while (v18);
                      }

                      memmove(old_behaviors, v24 + 552, v20);
                      memmove(old_flavors, &v24[v20 + 552], v20);
                      return 0;
                    }
                  }
                }
              }

              goto LABEL_23;
            }
          }
        }

        else if (v26.msgh_size == 36)
        {
          v15 = -300;
          if (v28)
          {
            if (v26.msgh_remote_port)
            {
              v15 = -300;
            }

            else
            {
              v15 = v28;
            }
          }

          goto LABEL_23;
        }

        v15 = -300;
      }

      else
      {
        v15 = -301;
      }

LABEL_23:
      mach_msg_destroy(&v26);
      return v15;
    }

    mig_dealloc_reply_port(v26.msgh_local_port);
  }

  return v15;
}

uint64_t posix_spawnattr_set_login_np(uint64_t *a1, uint64_t a2)
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

  if ((*(_libkernel_string_functions + 12))(a2) > 0xFF)
  {
    return 34;
  }

  v5 = *(v2 + 224);
  if (v5)
  {
    goto LABEL_8;
  }

  v6 = *(_libkernel_functions + 16);
  if (v6)
  {
    v7 = *(_libkernel_functions + 16);
    v8 = v6(340);
    if (v8)
    {
      v5 = v8;
      *(v8 + 80) = 0;
      *(v8 + 84) = 0;
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v2 + 224) = v8;
LABEL_8:
      (*(_libkernel_string_functions + 11))(v5 + 21, a2, 256);
      result = 0;
      *v5 |= 0x80000u;
      return result;
    }
  }

  return 12;
}

uint64_t posix_spawnattr_set_groups_np(uint64_t *a1, unsigned int a2, int *a3, int a4)
{
  if (!a1)
  {
    return 22;
  }

  v5 = 22;
  if (a2 <= 0x10)
  {
    v6 = a3;
    if (a3)
    {
      v7 = *a1;
      if (*a1)
      {
        v9 = *(v7 + 224);
        if (!v9)
        {
          v13 = *(_libkernel_functions + 16);
          if (!v13)
          {
            return 12;
          }

          v14 = *(_libkernel_functions + 16);
          v9 = v13(340);
          if (!v9)
          {
            return 12;
          }

          *(v9 + 80) = 0;
          *(v9 + 84) = 0;
          *v9 = 0;
          *(v9 + 8) = 0;
          *(v9 + 16) = 0;
          *(v7 + 224) = v9;
        }

        *(v9 + 12) = a2;
        if (a2)
        {
          v10 = (v9 + 16);
          v11 = a2;
          do
          {
            v12 = *v6++;
            *v10++ = v12;
            --v11;
          }

          while (v11);
        }

        v5 = 0;
        *(v9 + 80) = a4;
        *v9 |= 0x40000u;
      }
    }
  }

  return v5;
}

uint64_t __fstat64_extended(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_fstat64_extended, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int chmod(const char *a1, mode_t a2)
{
  result = __chmod(a1, a2);
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

      result = __chmod(a1, a2 & 0xFBFF);
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

          result = __chmod(a1, a2 & 0xF7FF);
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

                return __chmod(a1, a2 & 0xF3FF);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

int __chmod(const char *a1, mode_t a2)
{
  result = mac_syscall(SYS_chmod, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

void sync(void)
{
  mac_syscall(SYS_sync);
  if (v0)
  {
    cerror(v1);
  }
}

int fchflags(int a1, __uint32_t a2)
{
  result = mac_syscall(SYS_fchflags, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

kern_return_t mach_vm_range_create(vm_map_t target_task, mach_vm_range_flavor_t flavor, mach_vm_range_recipes_raw_t recipes, mach_msg_type_number_t recipesCnt)
{
  v12 = NDR_record;
  v13 = flavor;
  if (recipesCnt > 0x400)
  {
    return -307;
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  memmove(v15, recipes, recipesCnt);
  v14 = recipesCnt;
  v7 = ((recipesCnt + 3) & 0xFFCu) + 40;
  reply_port = mig_get_reply_port();
  v11.msgh_bits = 5395;
  v11.msgh_size = v7;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v11.msgh_voucher_port = 0x12D900000000;
  v9 = mach_msg2_internal(&v11, 0x200000003, ((((v7 >> 2) & 0x7FF) << 34) | 0x1513), __PAIR64__(reply_port, target_task), 0x12D900000000, (reply_port << 32), 0x2C, 0);
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
      v4 = -308;
    }

    else if (v11.msgh_id == 4925)
    {
      v4 = -300;
      if ((v11.msgh_bits & 0x80000000) == 0 && v11.msgh_size == 36 && !v11.msgh_remote_port)
      {
        v4 = v13;
        if (v13 == MACH_VM_RANGE_FLAVOR_INVALID)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v11);
  }

  return v4;
}

uint64_t os_channel_attr_set_key(uint64_t a1, const void *a2, unsigned int a3)
{
  if (!a2 && a3)
  {
    return 22;
  }

  if (a2)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  result = 22;
  if (a3 <= 0x400 && (v8 & 1) == 0)
  {
    *(a1 + 32) = 0;
    if (a3)
    {
      if (a2)
      {
        v9 = _libkernel_functions;
        if (*(a1 + 40))
        {
          v10 = *(_libkernel_functions + 24);
          if (v10)
          {
            v11 = *(_libkernel_functions + 24);
            v10();
            v9 = _libkernel_functions;
          }
        }

        v12 = *(v9 + 16);
        if (v12)
        {
          v13 = v12(a3);
          *(a1 + 40) = v13;
          if (v13)
          {
            *(a1 + 32) = a3;
            memmove(v13, a2, a3);
            return 0;
          }
        }

        else
        {
          *(a1 + 40) = 0;
        }

        return 12;
      }

      return 0;
    }

    result = *(a1 + 40);
    if (result)
    {
      v14 = *(_libkernel_functions + 24);
      if (v14)
      {
        v15 = *(_libkernel_functions + 24);
        v14();
      }

      result = 0;
      *(a1 + 40) = 0;
    }
  }

  return result;
}

kern_return_t clock_get_time(clock_serv_t clock_serv, mach_timespec_t *cur_time)
{
  v11 = 0;
  v12 = 0uLL;
  v13 = 0;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x1800001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, clock_serv);
  *&v10.msgh_voucher_port = 0x3E800000000;
  v5 = mach_msg2_internal(&v10, 0x200000003, 0x1800001513, __PAIR64__(reply_port, clock_serv), 0x3E800000000, (reply_port << 32), 0x34, 0);
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
      v6 = -308;
    }

    else if (v10.msgh_id == 1100)
    {
      if ((v10.msgh_bits & 0x80000000) == 0)
      {
        if (v10.msgh_size == 44)
        {
          if (!v10.msgh_remote_port)
          {
            v6 = v12;
            if (!v12)
            {
              *cur_time = *(&v12 + 4);
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
            v6 = -300;
          }

          else
          {
            v6 = v12;
          }

          goto LABEL_23;
        }
      }

      v6 = -300;
    }

    else
    {
      v6 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v10);
  }

  return v6;
}

uint64_t os_cpu_in_cksum(uint32x4_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x40 || (a2 & 3) != 0)
  {
    v12 = 0u;
    v13 = a1;
    v14 = a2;
    return os_cpu_in_cksum_mbuf(&v12);
  }

  v3 = a3;
  if (a2)
  {
    if (a2 == 20)
    {
      v4 = a1->u32[0];
      v5 = 4;
      v6 = 3;
      v7 = 2;
      v8 = 1;
    }

    else
    {
      if (a2 != 32)
      {
        do
        {
          v9 = a1->i32[0];
          a1 = (a1 + 4);
          v3 += v9;
          a2 -= 4;
        }

        while (a2);
        goto LABEL_12;
      }

      v4 = vaddlvq_u32(*a1);
      v5 = 7;
      v6 = 6;
      v7 = 5;
      v8 = 4;
    }

    v3 = v4 + a3 + a1->u32[v8] + a1->u32[v7] + a1->u32[v6] + a1->u32[v5];
  }

LABEL_12:
  v11 = ((HIDWORD(v3) + v3) >> 16) + (WORD2(v3) + v3);
  return (WORD1(v11) + v11 + (((v11 >> 16) + v11) >> 16));
}

kern_return_t host_request_notification(host_t host, host_flavor_t notify_type, mach_port_t notify_port)
{
  v10 = 1;
  v11 = notify_port;
  v12 = 0x15000000000000;
  v13 = NDR_record;
  v14 = notify_type;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x3480001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v9.msgh_voucher_port = 0xD900000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x3480001513, __PAIR64__(reply_port, host), 0xD900000000, ((reply_port << 32) | 1), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = -308;
    }

    else if (v9.msgh_id == 317)
    {
      v6 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && v9.msgh_size == 36 && !v9.msgh_remote_port)
      {
        v6 = v12;
        if (!v12)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = -301;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

uint64_t pselect_DARWIN_EXTSN(int a1, fd_set *a2, fd_set *a3, fd_set *a4, const timespec *a5, const sigset_t *a6)
{
  p_tv_sec = a5;
  v12 = __pselect(a1, a2, a3, a4, a5, a6);
  if (v12 == -1)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = *(StatusReg + 8);
    if (!v14)
    {
      v14 = &errno;
    }

    if (*v14 == 78)
    {
      tv_sec = 0;
      v21 = 0;
      if (p_tv_sec)
      {
        tv_nsec = p_tv_sec->tv_nsec;
        tv_sec = p_tv_sec->tv_sec;
        LODWORD(v21) = tv_nsec / 1000;
        p_tv_sec = &tv_sec;
      }

      v22 = 0;
      if (a6)
      {
        v12 = __pthread_sigmask(3, a6, &v22);
        if (!v12)
        {
          v12 = select_DARWIN_EXTSN(a1, a2, a3, a4, p_tv_sec);
          v16 = *(StatusReg + 8);
          if (!v16)
          {
            v16 = &errno;
          }

          v17 = *v16;
          __pthread_sigmask(3, &v22, 0);
          v18 = *(StatusReg + 8);
          if (!v18)
          {
            v18 = &errno;
          }

          *v18 = v17;
        }
      }

      else
      {
        return select_DARWIN_EXTSN(a1, a2, a3, a4, p_tv_sec);
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v12;
}

int __pselect(int a1, fd_set *a2, fd_set *a3, fd_set *a4, const timespec *a5, const sigset_t *a6)
{
  result = mac_syscall(SYS_pselect, a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return cerror(result);
  }

  return result;
}

kern_return_t kext_request(host_priv_t host_priv, uint32_t user_log_flags, vm_offset_t request_data, mach_msg_type_number_t request_dataCnt, vm_offset_t *response_data, mach_msg_type_number_t *response_dataCnt, vm_offset_t *log_data, mach_msg_type_number_t *log_dataCnt, kern_return_t *op_result)
{
  v29 = 0;
  v28 = 0;
  v31 = 0;
  v30 = 0;
  v21 = 1;
  v22 = request_data;
  v23 = 16777472;
  v24 = request_dataCnt;
  v25 = NDR_record;
  v26 = user_log_flags;
  v27 = request_dataCnt;
  reply_port = mig_get_reply_port();
  *&v20.msgh_bits = 0x3C80001513;
  *&v20.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v20.msgh_voucher_port = 0x1A900000000;
  v15 = mach_msg2_internal(&v20, 0x200000003, 0x3C80001513, __PAIR64__(reply_port, host_priv), 0x1A900000000, ((reply_port << 32) | 1), 0x58, 0);
  v16 = v15;
  if ((v15 - 268435458) > 0xE || ((1 << (v15 - 2)) & 0x4003) == 0)
  {
    if (!v15)
    {
      if (v20.msgh_id == 71)
      {
        v16 = -308;
      }

      else if (v20.msgh_id == 525)
      {
        if ((v20.msgh_bits & 0x80000000) == 0)
        {
          if (v20.msgh_size == 36)
          {
            v16 = -300;
            if (HIDWORD(v22))
            {
              if (v20.msgh_remote_port)
              {
                v16 = -300;
              }

              else
              {
                v16 = HIDWORD(v22);
              }
            }
          }

          else
          {
            v16 = -300;
          }

          goto LABEL_24;
        }

        v16 = -300;
        if (v21 == 2 && v20.msgh_size == 80 && !v20.msgh_remote_port && HIBYTE(v23) == 1 && HIBYTE(v26) == 1)
        {
          v17 = v24;
          if (v24 == v29)
          {
            v18 = v27;
            if (v27 == HIDWORD(v29))
            {
              v16 = 0;
              *response_data = v22;
              *response_dataCnt = v17;
              *log_data = v25;
              *log_dataCnt = v18;
              *op_result = v30;
              return v16;
            }
          }
        }
      }

      else
      {
        v16 = -301;
      }

LABEL_24:
      mach_msg_destroy(&v20);
      return v16;
    }

    mig_dealloc_reply_port(v20.msgh_local_port);
  }

  return v16;
}

uint64_t __semwait_signal_nocancel(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___semwait_signal_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t proc_setthread_cpupercent(unsigned int a1, unsigned int a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1 <= 0x63 && !HIBYTE(a2))
  {
    return proc_rlimit_control(0xFFFFFFFFLL, 3, (a1 | (a2 << 8)), a4, a5, a6, a7, a8);
  }

  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v9)
  {
    v9 = &errno;
  }

  *v9 = 22;
  return 0xFFFFFFFFLL;
}

int fchdir(int a1)
{
  result = mac_syscall(SYS_fchdir, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int posix_spawnattr_destroy(posix_spawnattr_t *a1)
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

  v3 = *a1;
  if (!v2[24] || (v4 = *(_libkernel_functions + 24), v3 = *a1, !v4) || (v5 = *a1, v4(), (v3 = *a1) != 0))
  {
    if (!v3[26])
    {
      goto LABEL_13;
    }

    v3[26] = 0;
    v6 = *(_libkernel_functions + 24);
    if (v6)
    {
      v6();
    }

    v3 = *a1;
    if (*a1)
    {
LABEL_13:
      if (!v3[27])
      {
        goto LABEL_17;
      }

      v3[27] = 0;
      v7 = *(_libkernel_functions + 24);
      if (v7)
      {
        v7();
      }

      v3 = *a1;
      if (*a1)
      {
LABEL_17:
        if (!v3[28])
        {
          goto LABEL_21;
        }

        v3[28] = 0;
        v8 = *(_libkernel_functions + 24);
        if (v8)
        {
          v8();
        }

        v3 = *a1;
        if (*a1)
        {
LABEL_21:
          if (!v3[25])
          {
            goto LABEL_25;
          }

          v3[25] = 0;
          v9 = *(_libkernel_functions + 24);
          if (v9)
          {
            v9();
          }

          v3 = *a1;
          if (*a1)
          {
LABEL_25:
            if (!v3[29])
            {
              goto LABEL_36;
            }

            v3[29] = 0;
            v10 = *(_libkernel_functions + 24);
            if (v10)
            {
              v10();
            }

            v3 = *a1;
            if (*a1)
            {
LABEL_36:
              if (v3[30])
              {
                v3[30] = 0;
                v11 = *(_libkernel_functions + 24);
                if (v11)
                {
                  v11();
                }
              }
            }
          }
        }
      }
    }
  }

  v12 = *(_libkernel_functions + 24);
  if (v12)
  {
    v12(v2);
  }

  result = 0;
  *a1 = 0;
  return result;
}

kern_return_t task_get_exception_ports(task_t task, exception_mask_t exception_mask, exception_mask_array_t masks, mach_msg_type_number_t *masksCnt, exception_handler_array_t old_handlers, exception_behavior_array_t old_behaviors, exception_flavor_array_t old_flavors)
{
  v52 = 0u;
  memset(v53, 0, 92);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v27 = NDR_record;
  v28 = exception_mask;
  reply_port = mig_get_reply_port();
  *&v26.msgh_bits = 0x2400001513;
  *&v26.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v26.msgh_voucher_port = 0xD5600000000;
  v14 = mach_msg2_internal(&v26, 0x200000003, 0x2400001513, __PAIR64__(reply_port, task), 0xD5600000000, (reply_port << 32), 0x330, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (v26.msgh_id == 71)
      {
        v15 = -308;
      }

      else if (v26.msgh_id == 3514)
      {
        if ((v26.msgh_bits & 0x80000000) != 0)
        {
          v15 = -300;
          if (*&v27.mig_vers != 32 || v26.msgh_size - 424 > 0x180 || v26.msgh_remote_port)
          {
            goto LABEL_23;
          }

          p_int_rep = &v27.int_rep;
          v17 = 36;
          while (!*(&v26.msgh_bits + v17 + 3))
          {
            v17 += 12;
            if (v17 == 420)
            {
              v18 = v53[0];
              if (v53[0] > 0x20u)
              {
                break;
              }

              v15 = -300;
              if (v53[0] <= (v26.msgh_size - 424) >> 2)
              {
                v20 = (4 * v53[0]);
                v21 = v20 + 424;
                if (v26.msgh_size >= (v20 + 424))
                {
                  v22 = v26.msgh_size - v20;
                  if (v53[0] <= (v26.msgh_size - v20 - 424) >> 2 && v22 >= v21)
                  {
                    v23 = v22 - v20;
                    if (v53[0] <= (v23 - 424) >> 2 && v23 == v21)
                    {
                      v24 = &v26 + v20 - 128;
                      memmove(masks, &v53[1], (4 * v53[0]));
                      *masksCnt = v18;
                      if (v18)
                      {
                        do
                        {
                          v25 = *p_int_rep;
                          p_int_rep += 12;
                          *old_handlers++ = v25;
                          --v18;
                        }

                        while (v18);
                      }

                      memmove(old_behaviors, v24 + 552, v20);
                      memmove(old_flavors, &v24[v20 + 552], v20);
                      return 0;
                    }
                  }
                }
              }

              goto LABEL_23;
            }
          }
        }

        else if (v26.msgh_size == 36)
        {
          v15 = -300;
          if (v28)
          {
            if (v26.msgh_remote_port)
            {
              v15 = -300;
            }

            else
            {
              v15 = v28;
            }
          }

          goto LABEL_23;
        }

        v15 = -300;
      }

      else
      {
        v15 = -301;
      }

LABEL_23:
      mach_msg_destroy(&v26);
      return v15;
    }

    mig_dealloc_reply_port(v26.msgh_local_port);
  }

  return v15;
}

uint64_t __lstat64_extended(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_lstat64_extended, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

kern_return_t mach_memory_entry_ownership(mem_entry_name_port_t mem_entry, task_t owner, int ledger_tag, int ledger_flags)
{
  v10 = 1;
  v11 = owner;
  v12 = 0x13000000000000;
  v13 = NDR_record;
  v14 = ledger_tag;
  v15 = ledger_flags;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x3880001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, mem_entry);
  *&v9.msgh_voucher_port = 0x132600000000;
  v6 = mach_msg2_internal(&v9, 0x200000003, 0x3880001513, __PAIR64__(reply_port, mem_entry), 0x132600000000, ((reply_port << 32) | 1), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v7;
    }

    if (v9.msgh_id == 71)
    {
      v7 = -308;
    }

    else if (v9.msgh_id == 5002)
    {
      v7 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && v9.msgh_size == 36 && !v9.msgh_remote_port)
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

    mach_msg_destroy(&v9);
  }

  return v7;
}

kern_return_t task_resume2(task_suspension_token_t suspend_token)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001512;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, suspend_token);
  *&v7.msgh_voucher_port = 0xD6D00000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001512, __PAIR64__(reply_port, suspend_token), 0xD6D00000000, (reply_port << 32), 0x2C, 0);
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

    else if (v7.msgh_id == 3537)
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

kern_return_t task_set_exception_ports(task_t task, exception_mask_t exception_mask, mach_port_t new_port, exception_behavior_t behavior, thread_state_flavor_t new_flavor)
{
  v11 = 1;
  v12 = new_port;
  v13 = 0x13000000000000;
  v14 = NDR_record;
  v15 = exception_mask;
  v16 = behavior;
  v17 = new_flavor;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3C80001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v10.msgh_voucher_port = 0xD5500000000;
  v7 = mach_msg2_internal(&v10, 0x200000003, 0x3C80001513, __PAIR64__(reply_port, task), 0xD5500000000, ((reply_port << 32) | 1), 0x2C, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v8;
    }

    if (v10.msgh_id == 71)
    {
      v8 = -308;
    }

    else if (v10.msgh_id == 3513)
    {
      v8 = -300;
      if ((v10.msgh_bits & 0x80000000) == 0 && *&v10.msgh_size == 36)
      {
        v8 = v13;
        if (!v13)
        {
          return v8;
        }
      }
    }

    else
    {
      v8 = -301;
    }

    mach_msg_destroy(&v10);
  }

  return v8;
}

uint64_t _kernelrpc_mach_port_peek(unsigned int a1, unsigned int a2, int a3, int *a4, _DWORD *a5, int *a6, void *a7, int *a8)
{
  v26 = NDR_record;
  v27 = a2;
  v28 = a3;
  v14 = *a4;
  v15 = *a8;
  if (*a8 >= 0x44)
  {
    v15 = 68;
  }

  *__n = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = v14;
  v30 = v15;
  reply_port = mig_get_reply_port();
  *&v25.msgh_bits = 0x3000001513;
  *&v25.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v25.msgh_voucher_port = 0xC8900000000;
  v17 = mach_msg2_internal(&v25, 0x200000003, 0x3000001513, __PAIR64__(reply_port, a1), 0xC8900000000, (reply_port << 32), 0x80, 0);
  v18 = v17;
  if ((v17 - 268435458) <= 0xE && ((1 << (v17 - 2)) & 0x4003) != 0)
  {
    return v18;
  }

  if (v17)
  {
    mig_dealloc_reply_port(v25.msgh_local_port);
    return v18;
  }

  if (v25.msgh_id == 71)
  {
    v18 = 4294966988;
LABEL_24:
    mach_msg_destroy(&v25);
    return v18;
  }

  if (v25.msgh_id != 3309)
  {
    v18 = 4294966995;
    goto LABEL_24;
  }

  if ((v25.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (v25.msgh_size - 121 <= 0xFFFFFFBA)
  {
    if (v27)
    {
      v19 = v25.msgh_remote_port == 0;
    }

    else
    {
      v19 = 0;
    }

    if (v19 && v25.msgh_size == 36)
    {
      v18 = v27;
    }

    else
    {
      v18 = 4294966996;
    }

    goto LABEL_24;
  }

  if (v25.msgh_remote_port)
  {
LABEL_23:
    v18 = 4294966996;
    goto LABEL_24;
  }

  v18 = v27;
  if (v27)
  {
    goto LABEL_24;
  }

  v22 = LODWORD(__n[0]);
  v18 = 4294966996;
  if (LODWORD(__n[0]) > 0x44 || v25.msgh_size - 52 < LODWORD(__n[0]) || v25.msgh_size != ((LOBYTE(__n[0]) + 3) & 0xFC) + 52)
  {
    goto LABEL_24;
  }

  v23 = v29;
  *a4 = v28;
  *a5 = v23;
  *a6 = v30;
  v24 = *a8;
  if (v22 <= v24)
  {
    memmove(a7, __n + 4, v22);
    v18 = 0;
    *a8 = v22;
  }

  else
  {
    memmove(a7, __n + 4, v24);
    *a8 = v22;
    return 4294966989;
  }

  return v18;
}

kern_return_t task_suspend2(task_read_t target_task, task_suspension_token_t *suspend_token)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x1800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v9.msgh_voucher_port = 0xD6C00000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x1800001513, __PAIR64__(reply_port, target_task), 0xD6C00000000, (reply_port << 32), 0x30, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (v9.msgh_id == 71)
      {
        v6 = -308;
      }

      else if (v9.msgh_id == 3536)
      {
        if ((v9.msgh_bits & 0x80000000) != 0)
        {
          v6 = -300;
          if (v10 == 1 && *&v9.msgh_size == 40 && HIWORD(v11) << 16 == 1179648)
          {
            v6 = 0;
            *suspend_token = HIDWORD(v10);
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

uint64_t posix_spawnattr_setmacpolicyinfo_np(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  result = 22;
  if (a2)
  {
    v7 = *a1;
    if (*a1)
    {
      v10 = *(v7 + 200);
      if (v10)
      {
        v11 = v10[1];
        if (v11 >= 1)
        {
          v12 = v10 + 2;
          while (1)
          {
            result = (*(_libkernel_string_functions + 8))(v12, a2);
            if (!result)
            {
              break;
            }

            v12 += 36;
            if (!--v11)
            {
              LODWORD(v11) = v10[1];
              goto LABEL_10;
            }
          }

          *(v12 + 16) = a3;
          *(v12 + 17) = a4;
          return result;
        }

LABEL_10:
        if (v11 != *v10)
        {
LABEL_19:
          v18 = &v10[36 * v11];
          (*(_libkernel_string_functions + 11))(v18 + 2, a2, 128);
          result = 0;
          *(v18 + 17) = a3;
          *(v18 + 18) = a4;
          ++v10[1];
          return result;
        }

        if (v11 + 0x40000000 >= 0)
        {
          v13 = 2 * v11;
          if (is_mul_ok(2 * v11, 0x90uLL))
          {
            v14 = reallocf(v10, (144 * v13) | 8);
            *(v7 + 200) = v14;
            if (v14)
            {
              v10 = v14;
              *v14 = v13;
              LODWORD(v11) = v14[1];
              goto LABEL_19;
            }
          }
        }
      }

      else
      {
        v15 = *(_libkernel_functions + 16);
        if (v15)
        {
          v16 = *(_libkernel_functions + 16);
          v17 = v15(296);
          *(v7 + 200) = v17;
          if (v17)
          {
            v10 = v17;
            LODWORD(v11) = 0;
            *v17 = 2;
            goto LABEL_19;
          }
        }

        else
        {
          *(v7 + 200) = 0;
        }
      }

      return 12;
    }
  }

  return result;
}

kern_return_t mach_ports_lookup(task_t target_task, mach_port_array_t *init_port_set, mach_msg_type_number_t *init_port_setCnt)
{
  address = 0;
  v6 = mach_vm_allocate(target_task, &address, 0xCuLL, 1);
  if (!v6)
  {
    v7 = address;
    v6 = _kernelrpc_mach_ports_lookup3(target_task, address, (address + 4), (address + 8));
    if (v6)
    {
      mach_vm_deallocate(target_task, v7, 0xCuLL);
    }

    else
    {
      *init_port_set = v7;
      *init_port_setCnt = 3;
    }
  }

  return v6;
}

kern_return_t mach_vm_read_overwrite(vm_map_read_t target_task, mach_vm_address_t address, mach_vm_size_t size, mach_vm_address_t data, mach_vm_size_t *outsize)
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

uint64_t __memorystatus_available_memory(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_memorystatus_available_memory, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

kern_return_t host_statistics64(host_t host_priv, host_flavor_t flavor, host_info64_t host_info64_out, mach_msg_type_number_t *host_info64_outCnt)
{
  v17 = NDR_record;
  v7 = *host_info64_outCnt;
  if (*host_info64_outCnt >= 0x100)
  {
    v7 = 256;
  }

  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v18 = flavor;
  v19 = v7;
  reply_port = mig_get_reply_port();
  *&v16.msgh_bits = 0x2800001513;
  *&v16.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v16.msgh_voucher_port = 0xDB00000000;
  v9 = mach_msg2_internal(&v16, 0x200000003, 0x2800001513, __PAIR64__(reply_port, host_priv), 0xDB00000000, (reply_port << 32), 0x430, 0);
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

    else if (v16.msgh_id == 319)
    {
      if ((v16.msgh_bits & 0x80000000) == 0)
      {
        if (v16.msgh_size - 1065 <= 0xFFFFFBFE)
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
          if (v19 <= 0x100 && v19 <= (v16.msgh_size - 40) >> 2 && v16.msgh_size == 4 * v19 + 40)
          {
            v15 = *host_info64_outCnt;
            if (v19 <= v15)
            {
              memmove(host_info64_out, v20, 4 * v19);
              v10 = 0;
              *host_info64_outCnt = v14;
            }

            else
            {
              memmove(host_info64_out, v20, 4 * v15);
              *host_info64_outCnt = v14;
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

kern_return_t thread_policy_get(thread_inspect_t thread, thread_policy_flavor_t flavor, thread_policy_t policy_info, mach_msg_type_number_t *policy_infoCnt, BOOLean_t *get_default)
{
  v21 = NDR_record;
  v9 = *policy_infoCnt;
  if (*policy_infoCnt >= 0x10)
  {
    v9 = 16;
  }

  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v22 = flavor;
  v23 = v9;
  v24 = *get_default;
  reply_port = mig_get_reply_port();
  *&v20.msgh_bits = 0x2C00001513;
  *&v20.msgh_remote_port = __PAIR64__(reply_port, thread);
  *&v20.msgh_voucher_port = 0xE2200000000;
  v11 = mach_msg2_internal(&v20, 0x200000003, 0x2C00001513, __PAIR64__(reply_port, thread), 0xE2200000000, (reply_port << 32), 0x74, 0);
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    return v12;
  }

  if (v11)
  {
    mig_dealloc_reply_port(v20.msgh_local_port);
    return v12;
  }

  if (v20.msgh_id == 71)
  {
    v12 = -308;
LABEL_24:
    mach_msg_destroy(&v20);
    return v12;
  }

  if (v20.msgh_id != 3718)
  {
    v12 = -301;
    goto LABEL_24;
  }

  if ((v20.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (v20.msgh_size - 109 <= 0xFFFFFFBE)
  {
    if (v22)
    {
      v13 = v20.msgh_remote_port == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13 && v20.msgh_size == 36)
    {
      v12 = v22;
    }

    else
    {
      v12 = -300;
    }

    goto LABEL_24;
  }

  if (v20.msgh_remote_port)
  {
    goto LABEL_23;
  }

  v12 = v22;
  if (v22)
  {
    goto LABEL_24;
  }

  v16 = v23;
  if (v23 > 0x10)
  {
LABEL_23:
    v12 = -300;
    goto LABEL_24;
  }

  v12 = -300;
  if (v23 > (v20.msgh_size - 44) >> 2)
  {
    goto LABEL_24;
  }

  v17 = 4 * v23;
  if (v20.msgh_size != v17 + 44)
  {
    goto LABEL_24;
  }

  v18 = *policy_infoCnt;
  if (v23 <= v18)
  {
    v19 = &v20 + v17;
    memmove(policy_info, &v24, v17);
    v12 = 0;
    *policy_infoCnt = v16;
    *get_default = *(v19 + 10);
  }

  else
  {
    memmove(policy_info, &v24, 4 * v18);
    *policy_infoCnt = v16;
    return -307;
  }

  return v12;
}

double work_interval_instance_alloc(uint64_t a1)
{
  v2 = (*(_libkernel_functions + 16))(96);
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 48) = *(a1 + 16);
  *v2 = *(a1 + 8);
  return result;
}

uint64_t work_interval_copy_port(uint64_t a1, mach_port_name_t *a2)
{
  if (a2)
  {
    if (a1 && (*(a1 + 16) & 1) != 0)
    {
      v4 = *(a1 + 20);
      result = mach_port_mod_refs(mach_task_self_, v4, 0, 1);
      if (!result)
      {
        *a2 = v4;
        return result;
      }

      *a2 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    }

    else
    {
      *a2 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    }
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  }

  v6 = *(StatusReg + 8);
  if (!v6)
  {
    v6 = &errno;
  }

  *v6 = 22;
  return 0xFFFFFFFFLL;
}

int listen(int a1, int a2)
{
  result = mac_syscall(SYS_listen, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int bind(int a1, const sockaddr *a2, socklen_t a3)
{
  result = mac_syscall(SYS_bind, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int utimensat(int __fd, const char *__path, const timespec __times[2], int __flag)
{
  v14 = 0;
  if (__times)
  {
    v7 = *__times;
    v8 = __times[1];
  }

  else
  {
    v7 = times_now;
    v8 = unk_22CE35510;
  }

  v15[0] = v7;
  v15[1] = v8;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v10 = xmmword_22CE35520;
  v11 = 0;
  DWORD1(v10) = prepare_times_array_and_attrs(v15, v12, &v13, &v14);
  return setattrlistat(__fd, __path, &v10, v12, v13, v14 | (__flag >> 5) & 1 | __flag & 0x800 | (__flag >> 1) & 0x1000);
}

int setattrlistat(int a1, const char *a2, void *a3, void *a4, size_t a5, uint32_t a6)
{
  result = mac_syscall(SYS_setattrlistat, a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

kern_return_t task_create_identity_token(task_t task, task_id_token_t *token)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x1800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v9.msgh_voucher_port = 0xD8100000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x1800001513, __PAIR64__(reply_port, task), 0xD8100000000, (reply_port << 32), 0x30, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (v9.msgh_id == 71)
      {
        v6 = -308;
      }

      else if (v9.msgh_id == 3557)
      {
        if ((v9.msgh_bits & 0x80000000) != 0)
        {
          v6 = -300;
          if (v10 == 1 && *&v9.msgh_size == 40 && HIWORD(v11) << 16 == 1114112)
          {
            v6 = 0;
            *token = HIDWORD(v10);
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

kern_return_t mach_port_kernel_object(ipc_space_read_t task, mach_port_name_t name, unsigned int *object_type, unsigned int *object_addr)
{
  v6 = 0;
  result = _kernelrpc_mach_port_kobject(task, name, object_type, &v6);
  if (object_addr)
  {
    if (!result)
    {
      *object_addr = v6;
    }
  }

  return result;
}

uint64_t _kernelrpc_mach_port_kobject(unsigned int a1, unsigned int a2, _DWORD *a3, void *a4)
{
  v16 = 0uLL;
  v17 = 0;
  v14 = NDR_record;
  v15 = a2;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x2400001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v13.msgh_voucher_port = 0xC9E00000000;
  v8 = mach_msg2_internal(&v13, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0xC9E00000000, (reply_port << 32), 0x38, 0);
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

    else if (v13.msgh_id == 3330)
    {
      if ((v13.msgh_bits & 0x80000000) == 0)
      {
        if (v13.msgh_size == 48)
        {
          if (!v13.msgh_remote_port)
          {
            v9 = v15;
            if (!v15)
            {
              *a3 = v16;
              *a4 = *(&v16 + 4);
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

kern_return_t mach_ports_register(task_t target_task, mach_port_array_t init_port_set, mach_msg_type_number_t init_port_setCnt)
{
  v8 = 0;
  v7 = 0;
  if (init_port_setCnt > 3)
  {
    return 4;
  }

  if (init_port_setCnt)
  {
    memmove(&v7, init_port_set, 4 * init_port_setCnt);
    v5 = v7;
    init_port_setCnt = HIDWORD(v7);
    v6 = v8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  return _kernelrpc_mach_ports_register3(target_task, v5, init_port_setCnt, v6);
}

kern_return_t task_swap_exception_ports(task_t task, exception_mask_t exception_mask, mach_port_t new_port, exception_behavior_t behavior, thread_state_flavor_t new_flavor, exception_mask_array_t masks, mach_msg_type_number_t *masksCnt, exception_handler_array_t old_handlers, exception_behavior_array_t old_behaviors, exception_flavor_array_t old_flavors)
{
  memset(v59, 0, 96);
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0;
  v30 = 0;
  v28 = 1;
  v29 = new_port;
  v31 = 1245184;
  v32 = NDR_record;
  v33 = exception_mask;
  v34 = behavior;
  v35 = new_flavor;
  reply_port = mig_get_reply_port();
  *&v27.msgh_bits = 0x3C80001513;
  *&v27.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v27.msgh_voucher_port = 0xD5700000000;
  v15 = mach_msg2_internal(&v27, 0x200000003, 0x3C80001513, __PAIR64__(reply_port, task), 0xD5700000000, ((reply_port << 32) | 1), 0x330, 0);
  v16 = v15;
  if ((v15 - 268435458) > 0xE || ((1 << (v15 - 2)) & 0x4003) == 0)
  {
    if (!v15)
    {
      if (v27.msgh_id == 71)
      {
        v16 = -308;
      }

      else if (v27.msgh_id == 3515)
      {
        if ((v27.msgh_bits & 0x80000000) != 0)
        {
          v16 = -300;
          if (v28 != 32 || v27.msgh_size - 424 > 0x180 || v27.msgh_remote_port)
          {
            goto LABEL_23;
          }

          v17 = &v29;
          v18 = 36;
          while (!*(&v27.msgh_bits + v18 + 3))
          {
            v18 += 12;
            if (v18 == 420)
            {
              v19 = v59[1];
              if (v59[1] > 0x20u)
              {
                break;
              }

              v16 = -300;
              if (v59[1] <= (v27.msgh_size - 424) >> 2)
              {
                v21 = (4 * v59[1]);
                v22 = v21 + 424;
                if (v27.msgh_size >= (v21 + 424))
                {
                  v23 = v27.msgh_size - v21;
                  if (v59[1] <= (v27.msgh_size - v21 - 424) >> 2 && v23 >= v22)
                  {
                    v24 = v23 - v21;
                    if (v59[1] <= (v24 - 424) >> 2 && v24 == v22)
                    {
                      v25 = &v27 + v21 - 128;
                      memmove(masks, &v59[2], (4 * v59[1]));
                      *masksCnt = v19;
                      if (v19)
                      {
                        do
                        {
                          v26 = *v17;
                          v17 += 3;
                          *old_handlers++ = v26;
                          --v19;
                        }

                        while (v19);
                      }

                      memmove(old_behaviors, v25 + 552, v21);
                      memmove(old_flavors, &v25[v21 + 552], v21);
                      return 0;
                    }
                  }
                }
              }

              goto LABEL_23;
            }
          }
        }

        else if (v27.msgh_size == 36)
        {
          v16 = -300;
          if (v30)
          {
            if (v27.msgh_remote_port)
            {
              v16 = -300;
            }

            else
            {
              v16 = v30;
            }
          }

          goto LABEL_23;
        }

        v16 = -300;
      }

      else
      {
        v16 = -301;
      }

LABEL_23:
      mach_msg_destroy(&v27);
      return v16;
    }

    mig_dealloc_reply_port(v27.msgh_local_port);
  }

  return v16;
}

kern_return_t task_policy_get(task_policy_get_t task, task_policy_flavor_t flavor, task_policy_t policy_info, mach_msg_type_number_t *policy_infoCnt, BOOLean_t *get_default)
{
  v21 = NDR_record;
  v9 = *policy_infoCnt;
  if (*policy_infoCnt >= 0x10)
  {
    v9 = 16;
  }

  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v22 = flavor;
  v23 = v9;
  v24 = *get_default;
  reply_port = mig_get_reply_port();
  *&v20.msgh_bits = 0x2C00001513;
  *&v20.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v20.msgh_voucher_port = 0xD5D00000000;
  v11 = mach_msg2_internal(&v20, 0x200000003, 0x2C00001513, __PAIR64__(reply_port, task), 0xD5D00000000, (reply_port << 32), 0x74, 0);
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    return v12;
  }

  if (v11)
  {
    mig_dealloc_reply_port(v20.msgh_local_port);
    return v12;
  }

  if (v20.msgh_id == 71)
  {
    v12 = -308;
LABEL_24:
    mach_msg_destroy(&v20);
    return v12;
  }

  if (v20.msgh_id != 3521)
  {
    v12 = -301;
    goto LABEL_24;
  }

  if ((v20.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (v20.msgh_size - 109 <= 0xFFFFFFBE)
  {
    if (v22)
    {
      v13 = v20.msgh_remote_port == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13 && v20.msgh_size == 36)
    {
      v12 = v22;
    }

    else
    {
      v12 = -300;
    }

    goto LABEL_24;
  }

  if (v20.msgh_remote_port)
  {
    goto LABEL_23;
  }

  v12 = v22;
  if (v22)
  {
    goto LABEL_24;
  }

  v16 = v23;
  if (v23 > 0x10)
  {
LABEL_23:
    v12 = -300;
    goto LABEL_24;
  }

  v12 = -300;
  if (v23 > (v20.msgh_size - 44) >> 2)
  {
    goto LABEL_24;
  }

  v17 = 4 * v23;
  if (v20.msgh_size != v17 + 44)
  {
    goto LABEL_24;
  }

  v18 = *policy_infoCnt;
  if (v23 <= v18)
  {
    v19 = &v20 + v17;
    memmove(policy_info, &v24, v17);
    v12 = 0;
    *policy_infoCnt = v16;
    *get_default = *(v19 + 10);
  }

  else
  {
    memmove(policy_info, &v24, 4 * v18);
    *policy_infoCnt = v16;
    return -307;
  }

  return v12;
}

kern_return_t task_map_corpse_info_64(task_t task, task_read_t corspe_task, mach_vm_address_t *kcd_addr_begin, mach_vm_size_t *kcd_size)
{
  *v16 = 0x13000000000000;
  *&v16[8] = 0;
  v17 = 0;
  *&v16[16] = 0;
  v14 = 1;
  v15 = corspe_task;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x2880001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v13.msgh_voucher_port = 0xD7A00000000;
  v8 = mach_msg2_internal(&v13, 0x200000003, 0x2880001513, __PAIR64__(reply_port, task), 0xD7A00000000, ((reply_port << 32) | 1), 0x3C, 0);
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

    else if (v13.msgh_id == 3550)
    {
      if ((v13.msgh_bits & 0x80000000) == 0)
      {
        if (v13.msgh_size == 52)
        {
          if (!v13.msgh_remote_port)
          {
            v9 = *v16;
            if (!*v16)
            {
              *kcd_addr_begin = *&v16[4];
              *kcd_size = *&v16[12];
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
            v11 = *v16 == 0;
          }

          if (v11)
          {
            v9 = -300;
          }

          else
          {
            v9 = *v16;
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

kern_return_t task_identity_token_get_task_port(task_id_token_t token, task_flavor_t flavor, mach_port_t *task_port)
{
  v14 = 0;
  v13 = 0;
  v11 = NDR_record;
  v12 = flavor;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x2400001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, token);
  *&v10.msgh_voucher_port = 0xD8200000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x2400001513, __PAIR64__(reply_port, token), 0xD8200000000, (reply_port << 32), 0x30, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (v10.msgh_id == 71)
      {
        v7 = -308;
      }

      else if (v10.msgh_id == 3558)
      {
        if ((v10.msgh_bits & 0x80000000) != 0)
        {
          v7 = -300;
          if (*&v11.mig_vers == 1 && *&v10.msgh_size == 40 && WORD1(v13) << 16 == 1114112)
          {
            v7 = 0;
            *task_port = *&v11.int_rep;
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

uint64_t system_override(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_system_override, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t prepare_times_array_and_attrs(__darwin_time_t *a1, _OWORD *a2, void *a3, _DWORD *a4)
{
  v7 = a1[1];
  v8 = a1[3];
  if (v7 == -1)
  {
    if (v8 == -1)
    {
      *a4 |= 0x400u;
    }

LABEL_8:
    v12.tv_sec = 0;
    *&v12.tv_usec = 0;
    if (__commpage_gettimeofday_internal(&v12, 0))
    {
      __gettimeofday(&v12, 0);
    }

    tv_sec = v12.tv_sec;
    v10 = 1000 * v12.tv_usec;
    if (a1[1] == -1)
    {
      *a1 = v12.tv_sec;
      a1[1] = v10;
    }

    if (a1[3] == -1)
    {
      a1[2] = tv_sec;
      a1[3] = v10;
    }

    goto LABEL_14;
  }

  if (v7 == -2 && v8 == -2)
  {
    return 0;
  }

  if (v8 == -1)
  {
    goto LABEL_8;
  }

LABEL_14:
  *a3 = 0;
  if (a1[3] == -2)
  {
    result = 0;
  }

  else
  {
    *a2++ = *(a1 + 1);
    *a3 += 16;
    result = 1024;
  }

  if (a1[1] != -2)
  {
    result = result | 0x1000;
    *a2 = *a1;
    *a3 += 16;
  }

  return result;
}

uint64_t os_channel_destroy(unsigned int *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *a1;
  if (v9 != -1)
  {
    guarded_close_np(v9, a1 + 2, a3, a4, a5, a6, a7, a8);
  }

  result = *(a1 + 2);
  v11 = _libkernel_functions;
  if (result)
  {
    v12 = *(_libkernel_functions + 24);
    if (v12)
    {
      v13 = *(_libkernel_functions + 24);
      result = v12();
      v11 = _libkernel_functions;
    }

    *(a1 + 2) = 0;
  }

  v14 = *(v11 + 24);
  if (v14)
  {

    return v14(a1);
  }

  return result;
}

uint64_t os_channel_attr_destroy(uint64_t a1)
{
  result = *(a1 + 40);
  v3 = _libkernel_functions;
  if (result)
  {
    v4 = *(_libkernel_functions + 24);
    if (v4)
    {
      v5 = *(_libkernel_functions + 24);
      result = v4();
      v3 = _libkernel_functions;
    }

    *(a1 + 40) = 0;
  }

  v6 = *(v3 + 24);
  if (v6)
  {

    return v6(a1);
  }

  return result;
}

kern_return_t mach_vm_read(vm_map_read_t target_task, mach_vm_address_t address, mach_vm_size_t size, vm_offset_t *data, mach_msg_type_number_t *dataCnt)
{
  v7 = _kernelrpc_mach_vm_read(target_task, address, size, data, dataCnt);
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

int audit_session_port(au_asid_t asid, mach_port_name_t *portname)
{
  result = mac_syscall(SYS_audit_session_port, asid, portname);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t _kernelrpc_mach_vm_read(unsigned int a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
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

uint64_t _kernelrpc_mach_port_set_context(unsigned int a1, unsigned int a2, uint64_t a3)
{
  v10 = NDR_record;
  v11 = a2;
  v12 = a3;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x2C00001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v9.msgh_voucher_port = 0xC9D00000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x2C00001513, __PAIR64__(reply_port, a1), 0xC9D00000000, (reply_port << 32), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = 4294966988;
    }

    else if (v9.msgh_id == 3329)
    {
      v6 = 4294966996;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v6 = v11;
        if (!v11)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = 4294966995;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

uint64_t _kernelrpc_mach_port_assert_attributes(unsigned int a1, unsigned int a2, int a3, void *__src, unsigned int a5)
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
  *&v12.msgh_voucher_port = 0xCAA00000000;
  v10 = mach_msg2_internal(&v12, 0x200000003, (((((v8 + 44) >> 2) & 0x1FFFFFFF) << 34) | 0x1513), __PAIR64__(reply_port, a1), 0xCAA00000000, (reply_port << 32), 0x2C, 0);
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

    else if (v12.msgh_id == 3342)
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

uint64_t __sfi_ctl(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_sfi_ctl, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

unint64_t os_cpu_copy_in_cksum(uint32x4_t *a1, uint32x4_t *a2, uint64_t a3, unint64_t a4, int8x16_t a5, int8x16_t a6, __n128 a7, uint64x2_t a8)
{
  v8 = 0;
  v9 = 0;
  if (a3)
  {
    if ((a1 & 1) == 0 || (v10 = a1->u8[0], a1 = (a1 + 1), a2->i8[0] = v10, a2 = (a2 + 1), v8 = v10 << 8, --a3, v9 = 1, a3))
    {
      v12 = veorq_s8(a5, a5);
      v11 = veorq_s8(a6, a6);
      v12.i64[0] = v8;
      if (a3 >= 128)
      {
        v13 = *a1;
        a1 += 8;
        v14 = v13;
        v15 = veorq_s8(a7, a7);
        v16 = a1[-7];
        v17 = veorq_s8(a8, a8);
        v18 = a1[-6];
        v19 = a1[-5];
        v20 = a1[-4];
        v21 = a1[-3];
        v22 = a1[-2];
        v23 = a1[-1];
        v24 = a3 < 256;
        for (i = a3 - 256; !v24; i -= 128)
        {
          *a2 = v14;
          a2 += 8;
          v26 = vpadalq_u32(v12, v14);
          a2[-7] = v16;
          v27 = vpadalq_u32(v11, v16);
          v28 = *a1;
          a1 += 8;
          v14 = v28;
          v16 = a1[-7];
          a2[-6] = v18;
          v29 = vpadalq_u32(v15, v18);
          a2[-5] = v19;
          v30 = vpadalq_u32(v17, v19);
          v18 = a1[-6];
          v19 = a1[-5];
          a2[-4] = v20;
          v12 = vpadalq_u32(v26, v20);
          a2[-3] = v21;
          v11 = vpadalq_u32(v27, v21);
          v20 = a1[-4];
          v21 = a1[-3];
          a2[-2] = v22;
          v15 = vpadalq_u32(v29, v22);
          a2[-1] = v23;
          v17 = vpadalq_u32(v30, v23);
          v22 = a1[-2];
          v23 = a1[-1];
          v24 = i < 128;
        }

        *a2 = v14;
        a2 += 8;
        a2[-7] = v16;
        a2[-6] = v18;
        a2[-5] = v19;
        a2[-4] = v20;
        a2[-3] = v21;
        a2[-2] = v22;
        a7 = vpadalq_u32(vpadalq_u32(v15, v18), v22);
        a2[-1] = v23;
        a8 = vpadalq_u32(vpadalq_u32(v17, v19), v23);
        a3 = i + 128;
        v12 = vaddq_s64(vpadalq_u32(vpadalq_u32(v12, v14), v20), a7);
        v11 = vaddq_s64(vpadalq_u32(vpadalq_u32(v11, v16), v21), a8);
      }

      if (a3 >= 64)
      {
        v31 = *a1;
        a1 += 4;
        v32 = a1[-3];
        *a2 = v31;
        a2 += 4;
        a2[-3] = v32;
        v33 = vpadalq_u32(v11, v32);
        a7 = a1[-2];
        a8 = a1[-1];
        a2[-2] = a7;
        v12 = vpadalq_u32(vpadalq_u32(v12, v31), a7);
        a2[-1] = a8;
        v11 = vpadalq_u32(v33, a8);
        a3 -= 64;
      }

      if (a3 >= 32)
      {
        v34 = *a1;
        a1 += 2;
        a7 = v34;
        a8 = a1[-1];
        *a2 = v34;
        a2 += 2;
        v12 = vpadalq_u32(v12, v34);
        a2[-1] = a8;
        v11 = vpadalq_u32(v11, a8);
        a3 -= 32;
      }

      v35 = vaddq_s64(v12, v11);
      if (a3 >= 16)
      {
        v36 = *a1++;
        a7 = v36;
        *a2++ = v36;
        v35 = vpadalq_u32(v35, v36);
        LOBYTE(a3) = a3 - 16;
      }

      v37 = veorq_s8(v11, v11);
      v38 = veorq_s8(a7, a7);
      v39 = veorq_s8(a8, a8);
      if ((a3 & 8) != 0)
      {
        v40 = a1->i64[0];
        a1 = (a1 + 8);
        v37.i64[0] = v40;
        a2->i64[0] = v40;
        a2 = (a2 + 8);
      }

      if ((a3 & 4) != 0)
      {
        v41 = a1->i32[0];
        a1 = (a1 + 4);
        v38.i32[0] = v41;
        a2->i32[0] = v41;
        a2 = (a2 + 4);
      }

      v42 = vpadalq_u32(v35, v37);
      v43 = veorq_s8(v37, v37);
      if ((a3 & 2) != 0)
      {
        v44 = a1->i16[0];
        a1 = (a1 + 2);
        v39.i16[0] = v44;
        a2->i16[0] = v44;
        a2 = (a2 + 2);
      }

      if (a3)
      {
        v43.i8[0] = a1->i8[0];
        a2->i8[0] = a1->i8[0];
      }

      v45 = vaddvq_s64(vpadalq_u32(vpadalq_u32(v42, v43), vpadalq_u32(v38, v39)));
      v8 = (v45 + WORD2(v45)) + ((v45 + HIDWORD(v45)) >> 16);
    }
  }

  if (v9)
  {
    v8 = (v8 << 8) + (v8 >> 24);
  }

  v46 = a4 + (a4 >> 16) + (v8 >> 16);
  v47 = (v46 + v8) + ((v46 + v8) >> 16);
  return v47 + (v47 >> 16);
}

uint64_t ____sigwait_nocancel(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___sigwait_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __abort_with_payload(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_abort_with_payload, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t accept_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_accept_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t aio_suspend_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_aio_suspend_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __channel_get_opt(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___channel_get_opt, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __channel_set_opt(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___channel_set_opt, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __chmod_extended(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_chmod_extended, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __copyfile(const char *a1, const char *a2, _copyfile_state *a3, copyfile_flags_t a4)
{
  result = mac_syscall(SYS_copyfile, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __crossarch_trap(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_crossarch_trap, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __csrctl(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_csrctl, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __debug_syscall_reject(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_debug_syscall_reject, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __debug_syscall_reject_config(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_debug_syscall_reject_config, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __delete(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_delete, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __execve(const char *a1, char *const *a2, char *const *a3)
{
  result = mac_syscall(SYS_execve, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

void _exit(int a1)
{
  mac_syscall(SYS_exit, a1);
  if (v1)
  {
    cerror_nocancel(v2);
  }
}

uint64_t __fs_snapshot(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_fs_snapshot, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __fstat_extended(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_fstat_extended, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t fsync_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_fsync_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __gethostuuid(unsigned __int8 *a1, const timespec *a2)
{
  result = mac_syscall(SYS_gethostuuid, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

char *__getlogin()
{
  result = mac_syscall(SYS_getlogin);
  if (v0)
  {
    return cerror(result);
  }

  return result;
}

int getsgroups_np(int *a1, uuid_t a2)
{
  v9 = mac_syscall(SYS_getsgroups, a1, a2, v3, v4, v5, v6, v7, v8);
  if (v2)
  {
    LODWORD(v9) = cerror_nocancel(v9);
  }

  return v9;
}

int getwgroups_np(int *a1, uuid_t a2)
{
  v9 = mac_syscall(SYS_getwgroups, a1, a2, v3, v4, v5, v6, v7, v8);
  if (v2)
  {
    LODWORD(v9) = cerror_nocancel(v9);
  }

  return v9;
}

uint64_t __identitysvc(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_identitysvc, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __kdebug_trace(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_kdebug_trace, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int lchown(const char *a1, uid_t a2, gid_t a3)
{
  result = mac_syscall(SYS_lchown, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __log_data(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_log_data, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __lstat_extended(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_lstat_extended, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __sandbox_me(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___mac_execve, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __mac_get_fd(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___mac_get_fd, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __mac_get_file(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___mac_get_file, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __mac_get_link(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___mac_get_link, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __mac_get_mount(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___mac_get_mount, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __mac_get_pid(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___mac_get_pid, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __mac_get_proc(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___mac_get_proc, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __mac_getfsstat(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___mac_getfsstat, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __sandbox_mm(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___mac_mount, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __mac_set_fd(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___mac_set_fd, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __mac_set_file(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___mac_set_file, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __mac_set_link(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___mac_set_link, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __sandbox_msp(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___mac_set_proc, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __mach_bridge_remote_time(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___mach_bridge_remote_time, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __mach_eventlink_signal(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_mach_eventlink_signal, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __mach_eventlink_signal_wait_until(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_mach_eventlink_signal_wait_until, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __mach_eventlink_wait_until(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_mach_eventlink_wait_until, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __map_with_linking_np(const mwl_region regions[], uint32_t regionCount, const mwl_info_hdr *blob, uint32_t blobSize)
{
  result = mac_syscall(SYS_map_with_linking_np, regions, regionCount, blob, blobSize);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __mkdir_extended(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_mkdir_extended, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __mkfifo_extended(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_mkfifo_extended, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int msgctl(int a1, int a2, __msqid_ds_new *a3)
{
  result = mac_syscall(SYS_msgctl, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t msgrcv_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_msgrcv_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t msgsnd_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_msgsnd_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __msgsys(int a1, void *a2, void *a3)
{
  result = mac_syscall(SYS_msgsys, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t msync_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_msync_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __nexus_create(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___nexus_create, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __nexus_deregister(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___nexus_deregister, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __nexus_destroy(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___nexus_destroy, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __nexus_get_opt(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___nexus_get_opt, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __nexus_open(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___nexus_open, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __nexus_register(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___nexus_register, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __open_extended(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_open_extended, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __openat_dprotected_np(int a1, const char *a2, int a3, int a4, int a5)
{
  result = mac_syscall(SYS_openat_dprotected_np, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __oslog_coproc(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(68, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __oslog_coproc_reg(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(67, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t poll_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_poll_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t preadv_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_preadv_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __pselect_nocancel(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_pselect_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __psynch_rw_downgrade(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_rw_downgrade, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __psynch_rw_longrdlock(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_rw_longrdlock, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __psynch_rw_unlock2(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_rw_unlock2, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __psynch_rw_upgrade(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_rw_upgrade, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __psynch_rw_yieldwrlock(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_rw_yieldwrlock, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __pthread_canceled(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___pthread_canceled, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __pthread_markcancel(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___pthread_markcancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int ptrace(int _request, pid_t _pid, caddr_t _addr, int _data)
{
  errno = 0;
  result = mac_syscall(SYS_ptrace, _request, _pid, _addr, _data);
  if (v4)
  {
    return cerror(result);
  }

  return result;
}

uint64_t pwrite_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_pwrite_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t pwritev_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_pwritev_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t readv_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_readv_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __reboot(int a1)
{
  result = mac_syscall(SYS_reboot, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __record_system_event(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_record_system_event, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t recvmsg_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_recvmsg_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __renameatx_np(int a1, const char *a2, int a3, const char *a4, unsigned int a5)
{
  result = mac_syscall(SYS_renameatx_np, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t sem_wait_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_sem_wait_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __semctl(int a1, int a2, int a3)
{
  result = mac_syscall(SYS_semctl, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __semsys(int a1, void *a2, void *a3)
{
  result = mac_syscall(SYS_semsys, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int setregid(gid_t a1, gid_t a2)
{
  result = mac_syscall(SYS_setregid, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int setreuid(uid_t a1, uid_t a2)
{
  result = mac_syscall(SYS_setreuid, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __settid_with_pid(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_settid_with_pid, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __settimeofday(const timeval *a1, const timezone *a2)
{
  result = mac_syscall(SYS_settimeofday, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __sfi_pidctl(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_sfi_pidctl, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __shared_region_check_np(uint64_t *a1)
{
  result = mac_syscall(SYS_shared_region_check_np, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __shared_region_map_and_slide_2_np(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_shared_region_map_and_slide_2_np, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int shmctl(int a1, int a2, __shmid_ds_new *a3)
{
  result = mac_syscall(SYS_shmctl, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __shmsys(int a1, void *a2, void *a3)
{
  result = mac_syscall(SYS_shmsys, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __sigsuspend(const sigset_t *a1)
{
  result = mac_syscall(SYS_sigsuspend, a1);
  if (v1)
  {
    return cerror(result);
  }

  return result;
}

int __sigwait(const sigset_t *a1, int *a2)
{
  result = mac_syscall(SYS___sigwait, a1, a2);
  if (v2)
  {
    return cerror(result);
  }

  return result;
}

uint64_t __stack_snapshot_with_config(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_stack_snapshot_with_config, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __stat_extended(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_stat_extended, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int syscall(int a1, ...)
{
  va_start(va, a1);
  v3 = va_arg(va, void *);
  v4 = va_arg(va, void *);
  v5 = va_arg(va, void *);
  v6 = va_arg(va, void *);
  v7 = va_arg(va, void *);
  v8 = va_arg(va, void *);
  v9 = va_arg(va, void *);
  result = mac_syscall(SYS_syscall, a1, v3, v4, v5, v6, v7, v8, v9);
  if (v1)
  {
    return cerror(result);
  }

  return result;
}

int __sysctlbyname(const char *a1, void *a2, size_t *a3, void *a4, size_t a5)
{
  result = mac_syscall(SYS_sysctlbyname, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __telemetry(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_telemetry, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __terminate_with_payload(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_terminate_with_payload, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __umask_extended(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_umask_extended, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int64_t __vfork(uint64_t a1, int a2)
{
  do
  {
    v2 = __ldxr(&_current_pid);
    v3 = v2 != 0;
    v4 = v2 - 1;
    if (v4 < 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = -1;
    }
  }

  while (__stxr(v5, &_current_pid));
  result = mac_syscall(SYS_vfork);
  if (v3)
  {
    cerror(result);
    result = 0xFFFFFFFFLL;
  }

  else if (a2)
  {
    return 0;
  }

  do
  {
    v7 = __ldxr(&_current_pid);
  }

  while (__stxr(v7 + 1, &_current_pid));
  return result;
}

uint64_t waitid_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_waitid_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t writev_NOCANCEL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_writev_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int acct(const char *a1)
{
  result = mac_syscall(SYS_acct, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int adjtime(const timeval *a1, timeval *a2)
{
  result = mac_syscall(SYS_adjtime, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int aio_cancel(int fd, aiocb *aiocbp)
{
  result = mac_syscall(SYS_aio_cancel, fd, aiocbp);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int aio_error(const aiocb *aiocbp)
{
  result = mac_syscall(SYS_aio_error, aiocbp);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int aio_fsync(int op, aiocb *aiocbp)
{
  result = mac_syscall(SYS_aio_fsync, op, aiocbp);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int aio_read(aiocb *aiocbp)
{
  result = mac_syscall(SYS_aio_read, aiocbp);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

ssize_t aio_return(aiocb *aiocbp)
{
  result = mac_syscall(SYS_aio_return, aiocbp);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int aio_suspend(const aiocb *const aiocblist[], int nent, const timespec *timeoutp)
{
  result = mac_syscall(SYS_aio_suspend, aiocblist, nent, timeoutp);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

int aio_write(aiocb *aiocbp)
{
  result = mac_syscall(SYS_aio_write, aiocbp);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int audit(const void *a1, int a2)
{
  result = mac_syscall(SYS_audit, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

au_asid_t audit_session_join(mach_port_name_t port)
{
  result = mac_syscall(SYS_audit_session_join, port);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

mach_port_name_t audit_session_self(void)
{
  result = mac_syscall(SYS_audit_session_self);
  if (v0)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int auditctl(const char *a1)
{
  result = mac_syscall(SYS_auditctl, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int auditon(int a1, void *a2, int a3)
{
  result = mac_syscall(SYS_auditon, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int chflags(const char *a1, __uint32_t a2)
{
  result = mac_syscall(SYS_chflags, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int chroot(const char *a1)
{
  result = mac_syscall(SYS_chroot, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t coalition_policy_get(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(557, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t coalition_policy_set(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_MAXSYSCALL, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int disconnectx(int a1, sae_associd_t a2, sae_connid_t a3)
{
  result = mac_syscall(SYS_disconnectx, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

int dup2(int a1, int a2)
{
  result = mac_syscall(SYS_dup2, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int exchangedata(const char *a1, const char *a2, unsigned int a3)
{
  result = mac_syscall(SYS_exchangedata, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t fdatasync(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_fdatasync, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror(result);
  }

  return result;
}

int fhopen(const fhandle *a1, int a2)
{
  result = mac_syscall(SYS_fhopen, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int fmount(const char *a1, int a2, int a3, void *a4)
{
  result = mac_syscall(SYS_fmount, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t fpathconf(int a1, int a2)
{
  result = mac_syscall(SYS_fpathconf, a1, a2);
  if (v2)
  {
    return cerror(result);
  }

  return result;
}

ssize_t freadlink(int a1, char *a2, size_t a3)
{
  result = mac_syscall(SYS_freadlink, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int fremovexattr(int fd, const char *name, int options)
{
  result = mac_syscall(SYS_fremovexattr, fd, name, options);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t fsgetpath_ext(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_fsgetpath_ext, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t funmount(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(164, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int futimes(int a1, const timeval *a2)
{
  result = mac_syscall(SYS_futimes, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getattrlistat(int a1, const char *a2, void *a3, void *a4, size_t a5, unint64_t a6)
{
  result = mac_syscall(SYS_getattrlistat, a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getaudit_addr(auditinfo_addr *a1, int a2)
{
  result = mac_syscall(SYS_getaudit_addr, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getauid(au_id_t *a1)
{
  result = mac_syscall(SYS_getauid, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getdirentries(int a1, char *a2, int a3, uint64_t *a4)
{
  result = mac_syscall(SYS_getdirentries, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getdirentriesattr(int a1, void *a2, void *a3, size_t a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int a8)
{
  result = mac_syscall(SYS_getdirentriesattr, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getdtablesize(void)
{
  result = mac_syscall(SYS_getdtablesize);
  if (v0)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getfh(const char *a1, fhandle_t *a2)
{
  result = mac_syscall(SYS_getfh, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getgroups(int a1, gid_t a2[])
{
  result = mac_syscall(SYS_getgroups, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getitimer(int a1, itimerval *a2)
{
  result = mac_syscall(SYS_getitimer, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

pid_t getpgid(pid_t a1)
{
  result = mac_syscall(SYS_getpgid, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

pid_t getpgrp(void)
{
  result = mac_syscall(SYS_getpgrp);
  if (v0)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getpriority(int a1, id_t a2)
{
  result = mac_syscall(SYS_getpriority, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

pid_t getsid(pid_t a1)
{
  result = mac_syscall(SYS_getsid, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t grab_pgo_data(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_grab_pgo_data, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t graftdmg(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_graftdmg, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t guarded_kqueue_np(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_guarded_kqueue_np, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t guarded_write_np(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_guarded_write_np, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t guarded_writev_np(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_guarded_writev_np, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t kas_info(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_kas_info, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int kevent64(int kq, const kevent64_s *changelist, int nchanges, kevent64_s *eventlist, int nevents, unsigned int flags, const timespec *timeout)
{
  result = mac_syscall(SYS_kevent64, kq, changelist, nchanges, eventlist, nevents, flags, timeout);
  if (v7)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t ledger(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_ledger, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int link(const char *a1, const char *a2)
{
  result = mac_syscall(SYS_link, a1, a2);
  if (v2)
  {
    return cerror(result);
  }

  return result;
}

int linkat(int a1, const char *a2, int a3, const char *a4, int a5)
{
  result = mac_syscall(SYS_linkat, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror(result);
  }

  return result;
}

int lio_listio(int mode, aiocb *const aiocblist[], int nent, sigevent *sigp)
{
  result = mac_syscall(SYS_lio_listio, mode, aiocblist, nent, sigp);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t memorystatus_get_level(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_memorystatus_get_level, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int minherit(void *a1, size_t a2, int a3)
{
  result = mac_syscall(SYS_minherit, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int mkfifo(const char *a1, mode_t a2)
{
  result = mac_syscall(SYS_mkfifo, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int mkfifoat(int a1, const char *a2, mode_t a3)
{
  result = mac_syscall(SYS_mkfifoat, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int mknod(const char *a1, mode_t a2, dev_t a3)
{
  result = mac_syscall(SYS_mknod, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int mknodat(int a1, const char *a2, mode_t a3, dev_t a4)
{
  result = mac_syscall(SYS_mknodat, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int mlockall(int a1)
{
  result = mac_syscall(SYS_mlockall, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int mount(const char *a1, const char *a2, int a3, void *a4)
{
  result = mac_syscall(SYS_mount, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t mremap_encrypted(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_mremap_encrypted, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int msgget(key_t a1, int a2)
{
  result = mac_syscall(SYS_msgget, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

ssize_t msgrcv(int a1, void *a2, size_t a3, uint64_t a4, int a5)
{
  result = mac_syscall(SYS_msgrcv, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror(result);
  }

  return result;
}

int msgsnd(int a1, const void *a2, size_t a3, int a4)
{
  result = mac_syscall(SYS_msgsnd, a1, a2, a3, a4);
  if (v4)
  {
    return cerror(result);
  }

  return result;
}

int munlockall(void)
{
  result = mac_syscall(SYS_munlockall);
  if (v0)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t necp_match_policy(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_necp_match_policy, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t necp_session_action(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_necp_session_action, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t necp_session_open(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_necp_session_open, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t net_qos_guideline(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_net_qos_guideline, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t netagent_trigger(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_netagent_trigger, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int nfssvc(int a1, void *a2)
{
  result = mac_syscall(SYS_nfssvc, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int ntp_adjtime(timex *a1)
{
  result = mac_syscall(SYS_ntp_adjtime, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int ntp_gettime(ntptimeval *a1)
{
  result = mac_syscall(SYS_ntp_gettime, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int panic_with_data(uuid_t uuid, void *addr, uint32_t len, uint32_t flags, const char *msg)
{
  result = mac_syscall(SYS_panic_with_data, uuid, addr, len, flags, msg);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t peeloff(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_peeloff, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror(result);
  }

  return result;
}

uint64_t pivot_root(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_pivot_root, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int poll(pollfd *a1, nfds_t a2, int a3)
{
  result = mac_syscall(SYS_poll, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

ssize_t preadv(int a1, const iovec *a2, int a3, off_t a4)
{
  result = mac_syscall(SYS_preadv, a1, a2, a3, a4);
  if (v4)
  {
    return cerror(result);
  }

  return result;
}

uint64_t proc_trace_log(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_proc_trace_log, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t proc_uuid_policy(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_proc_uuid_policy, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

ssize_t pwritev(int a1, const iovec *a2, int a3, off_t a4)
{
  result = mac_syscall(SYS_pwritev, a1, a2, a3, a4);
  if (v4)
  {
    return cerror(result);
  }

  return result;
}

ssize_t readlinkat(int a1, const char *a2, char *a3, size_t a4)
{
  result = mac_syscall(SYS_readlinkat, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

ssize_t readv(int a1, const iovec *a2, int a3)
{
  result = mac_syscall(SYS_readv, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

uint64_t recvmsg_x(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_recvmsg_x, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t register_uexc_handler(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_register_uexc_handler, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int revoke(const char *a1)
{
  result = mac_syscall(SYS_revoke, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int searchfs(const char *a1, fssearchblock *a2, unint64_t *a3, unsigned int a4, unsigned int a5, searchstate *a6)
{
  result = mac_syscall(SYS_searchfs, a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int sem_post(sem_t *a1)
{
  result = mac_syscall(SYS_sem_post, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int sem_trywait(sem_t *a1)
{
  result = mac_syscall(SYS_sem_trywait, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int sem_unlink(const char *a1)
{
  result = mac_syscall(SYS_sem_unlink, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int sem_wait(sem_t *a1)
{
  result = mac_syscall(SYS_sem_wait, a1);
  if (v1)
  {
    return cerror(result);
  }

  return result;
}

int semget(key_t a1, int a2, int a3)
{
  result = mac_syscall(SYS_semget, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int semop(int a1, sembuf *a2, size_t a3)
{
  result = mac_syscall(SYS_semop, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

int sendfile(int a1, int a2, off_t a3, off_t *a4, sf_hdtr *a5, int a6)
{
  result = mac_syscall(SYS_sendfile, a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t sendmsg_x(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_sendmsg_x, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int setaudit_addr(const auditinfo_addr *a1, int a2)
{
  result = mac_syscall(SYS_setaudit_addr, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int setauid(const au_id_t *a1)
{
  result = mac_syscall(SYS_setauid, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int setegid(gid_t a1)
{
  result = mac_syscall(SYS_setegid, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int seteuid(uid_t a1)
{
  result = mac_syscall(SYS_seteuid, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int setgroups(int a1, const gid_t *a2)
{
  result = mac_syscall(SYS_setgroups, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int setitimer(int a1, const itimerval *a2, itimerval *a3)
{
  result = mac_syscall(SYS_setitimer, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int setpgid(pid_t a1, pid_t a2)
{
  result = mac_syscall(SYS_setpgid, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t setprivexec(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_setprivexec, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

void *__cdecl shmat(int a1, const void *a2, int a3)
{
  result = mac_syscall(SYS_shmat, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int shmdt(const void *a1)
{
  result = mac_syscall(SYS_shmdt, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int shmget(key_t a1, size_t a2, int a3)
{
  result = mac_syscall(SYS_shmget, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int sigpending(sigset_t *a1)
{
  result = mac_syscall(SYS_sigpending, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t socket_delegate(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_socket_delegate, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int swapon(const char *a1)
{
  result = mac_syscall(SYS_swapon, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int symlinkat(const char *a1, int a2, const char *a3)
{
  result = mac_syscall(SYS_symlinkat, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

uint64_t task_inspect_for_pid(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_task_inspect_for_pid, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t task_read_for_pid(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_task_read_for_pid, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t thread_selfcounts(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_thread_selfcounts, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int truncate(const char *a1, off_t a2)
{
  result = mac_syscall(SYS_truncate, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int undelete(const char *a1)
{
  result = mac_syscall(SYS_undelete, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t ungraftdmg(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_ungraftdmg, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int unmount(const char *a1, int a2)
{
  result = mac_syscall(SYS_unmount, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int usrctl(uint32_t flags)
{
  result = mac_syscall(SYS_usrctl, flags);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t vfs_purge(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_vfs_purge, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t vm_pressure_monitor(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_vm_pressure_monitor, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int waitid(idtype_t a1, id_t a2, siginfo_t *a3, int a4)
{
  result = mac_syscall(SYS_waitid, a1, a2, a3, a4);
  if (v4)
  {
    return cerror(result);
  }

  return result;
}

void *__cdecl malloc(size_t __size)
{
  v1 = *(_libkernel_functions + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(_libkernel_functions + 16);
  return v1(__size);
}

void *__cdecl reallocf(void *__ptr, size_t __size)
{
  v3 = *(_libkernel_functions + 32);
  if (v3)
  {
    v4 = *(_libkernel_functions + 32);
    v5 = v3(__ptr, __size);
    if (!__ptr)
    {
      return v5;
    }
  }

  else
  {
    v5 = 0;
    if (!__ptr)
    {
      return v5;
    }
  }

  if (!v5)
  {
    v6 = *(_libkernel_functions + 24);
    if (v6)
    {
      v6(__ptr);
    }
  }

  return v5;
}

uint64_t _libkernel_strlen(_BYTE *a1)
{
  v1 = a1;
  if ((a1 & 7) != 0)
  {
    if (*a1)
    {
      v1 = &a1[-(a1 & 7) + 8];
      v2 = a1 + 1;
      v3 = a1;
      do
      {
        if (((v3 + 1) & 7) == 0)
        {
          goto LABEL_7;
        }

        v4 = *v2++;
        ++v3;
      }

      while (v4);
    }

    else
    {
      v3 = a1;
    }

    return v3 - a1;
  }

  else
  {
LABEL_7:
    while (1)
    {
      v5 = *v1;
      if (((*v1 - 0x101010101010101) & 0x8080808080808080) != 0)
      {
        if (!*v1)
        {
          return v1 - a1;
        }

        if ((v5 & 0xFF00) == 0)
        {
          return v1 - a1 + 1;
        }

        if ((v5 & 0xFF0000) == 0)
        {
          return v1 - a1 + 2;
        }

        if ((v5 & 0xFF000000) == 0)
        {
          return v1 - a1 + 3;
        }

        if ((v5 & 0xFF00000000) == 0)
        {
          return v1 - a1 + 4;
        }

        if ((v5 & 0xFF0000000000) == 0)
        {
          return v1 - a1 + 5;
        }

        if ((v5 & 0xFF000000000000) == 0)
        {
          return v1 - a1 + 6;
        }

        if (!HIBYTE(v5))
        {
          break;
        }
      }

      v1 += 8;
    }

    return v1 - a1 + 7;
  }
}

uint64_t __libkernel_init_late(uint64_t result)
{
  if (*result >= 3uLL && *(result + 10) == 1)
  {
    posix_spawn_with_filter = _posix_spawn_with_filter;
    execve_with_filter = _execve_with_filter;
  }

  return result;
}

uint64_t __libkernel_init_after_boot_tasks(uint64_t result)
{
  if (*result)
  {
    if (*(result + 8) == 1)
    {
      posix_spawn_with_filter = _posix_spawn_with_filter;
      execve_with_filter = _execve_with_filter;
    }
  }

  return result;
}

char *_libkernel_strchr(char *result, char a2)
{
  v2 = *result;
  if (a2 != v2)
  {
    while (v2)
    {
      v3 = *++result;
      LOBYTE(v2) = v3;
      if (a2 == v3)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t _libkernel_strcmp(unsigned __int8 *a1, unsigned __int8 *a2)
{
  while (1)
  {
    v2 = *a1;
    v3 = v2 - *a2;
    if (v3)
    {
      break;
    }

    ++a2;
    ++a1;
    if (!v2)
    {
      return 0;
    }
  }

  return v3;
}

unsigned __int8 *_libkernel_memset(unsigned __int8 *result, unsigned __int8 a2, unint64_t a3)
{
  if (a3 > 0xB)
  {
    v9 = result & 3;
    if ((result & 3) != 0)
    {
      v10 = 4 - v9;
      v11 = v9 | 0xFFFFFFFFFFFFFFFCLL;
      v12 = result;
      do
      {
        *v12++ = a2;
      }

      while (!__CFADD__(v11++, 1));
      a3 -= v10;
    }

    else
    {
      v12 = result;
    }

    v14 = a3 >> 2;
    do
    {
      *v12 = a2 | (a2 << 8);
      v12 += 4;
      --v14;
    }

    while (v14);
    if ((a3 & 3) != 0)
    {
      v15 = vdupq_n_s64((a3 & 3) - 1);
      v16 = vmovn_s64(vcgeq_u64(v15, xmmword_22CE349D0));
      if (vuzp1_s16(v16, *v15.i8).u8[0])
      {
        *v12 = a2;
      }

      if (vuzp1_s16(v16, *&v15).i8[2])
      {
        v12[1] = a2;
      }

      v17 = vmovn_s64(vcgeq_u64(v15, xmmword_22CE349E0));
      if (vuzp1_s16(v17, v17).i32[1])
      {
        v12[2] = a2;
        v12[3] = a2;
      }
    }
  }

  else if (a3)
  {
    v3 = 0;
    v4 = vdupq_n_s64(a3 - 1);
    v5 = (a3 + 3) & 0x1C;
    v6 = result + 3;
    do
    {
      v7 = vdupq_n_s64(v3);
      v8 = vmovn_s64(vcgeq_u64(v4, vorrq_s8(v7, xmmword_22CE349D0)));
      if (vuzp1_s16(v8, *v4.i8).u8[0])
      {
        *(v6 - 3) = a2;
      }

      if (vuzp1_s16(v8, *&v4).i8[2])
      {
        *(v6 - 2) = a2;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, vorrq_s8(v7, xmmword_22CE349E0)))).i32[1])
      {
        *(v6 - 1) = a2;
        *v6 = a2;
      }

      v3 += 4;
      v6 += 4;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

char *_libkernel_memmove(char *result, char *a2, unint64_t a3)
{
  if (result != a2 && a3)
  {
    if (result >= a2)
    {
      v8 = &a2[a3];
      v9 = &result[a3];
      if ((((a2 + a3) | (result + a3)) & 3) != 0)
      {
        v10 = ((v8 ^ v9) & 3) == 0 && a3 >= 5;
        v11 = v8 & 3;
        if (!v10)
        {
          v11 = a3;
        }

        v12 = v11;
        do
        {
          v13 = *--v8;
          *--v9 = v13;
          --v12;
        }

        while (v12);
        a3 -= v11;
      }

      if (a3 >= 4)
      {
        v14 = a3 >> 2;
        do
        {
          v15 = *(v8 - 1);
          v8 -= 4;
          *(v9 - 1) = v15;
          v9 -= 4;
          --v14;
        }

        while (v14);
      }

      v16 = a3 & 3;
      if ((a3 & 3) != 0)
      {
        v17 = v9 - 1;
        v18 = v8 - 1;
        do
        {
          v19 = *v18--;
          *v17-- = v19;
          --v16;
        }

        while (v16);
      }
    }

    else
    {
      if (((a2 | result) & 3) != 0)
      {
        v3 = 4 - (a2 & 3);
        if (((a2 ^ result) & 3) != 0 || a3 < 4)
        {
          v3 = a3;
        }

        v5 = result;
        v6 = v3;
        do
        {
          v7 = *a2++;
          *v5++ = v7;
          --v6;
        }

        while (v6);
        a3 -= v3;
      }

      else
      {
        v5 = result;
      }

      if (a3 >= 4)
      {
        v20 = a3 >> 2;
        do
        {
          v21 = *a2;
          a2 += 4;
          *v5 = v21;
          v5 += 4;
          --v20;
        }

        while (v20);
      }

      v22 = a3 & 3;
      if ((a3 & 3) != 0)
      {
        do
        {
          v23 = *a2++;
          *v5++ = v23;
          --v22;
        }

        while (v22);
      }
    }
  }

  return result;
}

char *_libkernel_strcpy(char *a1, char *a2)
{
  v4 = _libkernel_strlen(a2) + 1;

  return _libkernel_memmove(a1, a2, v4);
}

BOOL _posix_spawn_with_filter(pid_t *a1, const char *a2, const posix_spawnattr_t *a3, void *a4, __int128 *a5, int *a6)
{
  v109 = a2;
  if (a4 && (v11 = *a4) != 0)
  {
    v12 = a4 + 1;
    while ((*(_libkernel_string_functions + 12))(v11) < 0x20 || (*(_libkernel_string_functions + 3))(v11, "POSIX_SPAWN_FILTERING_RULES_PATH", 32) || *(v11 + 32) != 61)
    {
      v13 = *v12++;
      v11 = v13;
      if (!v13)
      {
        goto LABEL_8;
      }
    }

    v14 = (v11 + 33);
  }

  else
  {
LABEL_8:
    if (can_access("/private/var/mobile/Library/posix_spawn_filtering_rules"))
    {
      v14 = "/private/var/mobile/Library/posix_spawn_filtering_rules";
    }

    else
    {
      v14 = 0;
    }
  }

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = "/usr/local/share/posix_spawn_filtering_rules";
  }

  bzero(v122, 0x400uLL);
  memset(v121, 0, sizeof(v121));
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v17 = *(StatusReg + 8);
  if (!v17)
  {
    v17 = &errno;
  }

  v18 = *v17;
  result = can_access(v15);
  if (result)
  {
    v102 = a5;
    while (1)
    {
      v25 = __open_nocancel(v15, 0x1000000, 0, v20, v21, v22, v23, v24);
      if ((v25 & 0x80000000) == 0)
      {
        break;
      }

      v26 = *(StatusReg + 8);
      if (!v26)
      {
        v26 = &errno;
      }

      if (*v26 != 4)
      {
        result = 0;
        *v26 = v18;
        return result;
      }
    }

    v104 = v25;
    v99 = a6;
    v100 = StatusReg;
    v101 = v18;
    v96 = a4;
    v97 = a1;
    v98 = a3;
    v27 = v109;
    do
    {
      v28 = v27;
      v29 = (*(_libkernel_string_functions + 7))(v27, 47);
      v27 = (v29 + 1);
    }

    while (v29);
    v105 = 0;
    v103 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v122;
    v106 = v121;
    v107 = 0;
    v33 = 16;
    v108 = 1024;
    while (1)
    {
      bzero(&v123 + v31, 1024 - v31);
      NOCANCEL = read_NOCANCEL(v104, &v123 + v31, (1024 - v31), v34, v35, v36, v37, v38);
      if (!NOCANCEL)
      {
        goto LABEL_59;
      }

      v31 += NOCANCEL;
      if (!v31)
      {
        goto LABEL_58;
      }

      v111 = v33;
      do
      {
        v47 = (*(_libkernel_string_functions + 2))(&v123, 10, v31);
        if (!v47)
        {
          break;
        }

        v48 = v47;
        *v47 = 0;
        if ((*(_libkernel_string_functions + 3))(&v123, "binary_name:", 12))
        {
          if ((*(_libkernel_string_functions + 3))(&v123, "path_start:", 11))
          {
            if ((*(_libkernel_string_functions + 3))(&v123, "add_env:", 8))
            {
              v49 = (*(_libkernel_string_functions + 3))(&v123, "binpref:", 8);
              v50 = *(_libkernel_string_functions + 3);
              if (v49)
              {
                v51 = v50(&v123, "alt_rosetta:", 12);
                v52 = *(_libkernel_string_functions + 3);
                if (v51)
                {
                  if (!v52(&v123, "has_sec_transition:", 19))
                  {
                    v103 |= (*(_libkernel_string_functions + 3))(&v124 + 3, "1", 2) == 0;
                  }
                }

                else
                {
                  v64 = v52((&v123 + 12), "1", 2);
                  v65 = v105;
                  if (!v64)
                  {
                    v65 = v105 | 2;
                  }

                  v105 = v65;
                }
              }

              else
              {
                v61 = v50((&v123 + 8), "x86_64", 7);
                if (v61)
                {
                  v62 = HIDWORD(v107);
                }

                else
                {
                  v62 = 16777223;
                }

                v63 = v107;
                if (!v61)
                {
                  v63 = -1;
                }

                v107 = __PAIR64__(v62, v63);
              }
            }

            else
            {
              v110 = v30;
              v55 = v28;
              v56 = (*(_libkernel_string_functions + 12))(&v123 + 8) + 1;
              v57 = v108 - v56;
              v58 = v111;
              if (v108 >= v56 && v111 != 0)
              {
                memmove(v32, &v123 + 8, v56);
                v60 = v106;
                *v106 = v32;
                v106 = v60 + 1;
                v111 = v58 - 1;
                v32 += v56;
                v108 = v57;
              }

              v28 = v55;
              v30 = v110;
            }

            goto LABEL_40;
          }

          v54 = (*(_libkernel_string_functions + 12))(&v123 + 11);
          v53 = (*(_libkernel_string_functions + 13))(v109, &v123 + 11, v54);
        }

        else
        {
          v53 = (*(_libkernel_string_functions + 8))(v28, &v123 + 12);
        }

        v30 |= v53 == 0;
LABEL_40:
        memmove(&v123, v48 + 1, 1024 - (v48 - &v123));
        v31 += ~(v48 - &v123);
      }

      while (v31);
      v33 = v111;
LABEL_58:
      if (v31 == 1024)
      {
LABEL_59:
        close_NOCANCEL(v104, v40, v41, v42, v43, v44, v45, v46);
        v66 = *(v100 + 8);
        if (!v66)
        {
          v66 = &errno;
        }

        *v66 = v101;
        if ((v30 & 1) == 0)
        {
          return 0;
        }

        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v112 = 0u;
        v125 = 0uLL;
        memset(v133, 0, sizeof(v133));
        v132 = 0u;
        v129 = 0u;
        LODWORD(v127) = 0;
        v128 = 0u;
        v124 = 0u;
        v123 = 0u;
        *&v130 = -1;
        *(&v130 + 1) = -1;
        *(&v127 + 4) = -1;
        *(&v126 + 1) = 1;
        *&v126 = 0;
        HIDWORD(v127) = -1;
        DWORD2(v128) = 0;
        BYTE8(v129) = 0;
        HIDWORD(v129) = 0;
        BYTE8(v133[0]) = 0;
        v131 = 0uLL;
        DWORD2(v132) = 0;
        *&v132 = 0;
        v134 = 0;
        if (v102)
        {
          v67 = v102[7];
          v118 = v102[6];
          v119 = v67;
          v120 = v102[8];
          v68 = v102[3];
          v114 = v102[2];
          v115 = v68;
          v69 = v102[5];
          v116 = v102[4];
          v117 = v69;
          v70 = v102[1];
          v112 = *v102;
          v113 = v70;
          if (*(&v112 + 1))
          {
            v71 = **(&v112 + 1);
            v72 = *(*(&v112 + 1) + 16);
            v73 = *(*(&v112 + 1) + 32);
            v126 = *(*(&v112 + 1) + 48);
            v125 = v73;
            v124 = v72;
            v123 = v71;
            v74 = *(*(&v112 + 1) + 64);
            v75 = *(*(&v112 + 1) + 80);
            v76 = *(*(&v112 + 1) + 96);
            v130 = *(*(&v112 + 1) + 112);
            v129 = v76;
            v128 = v75;
            v127 = v74;
            v77 = *(*(&v112 + 1) + 128);
            v78 = *(*(&v112 + 1) + 144);
            v79 = *(*(&v112 + 1) + 160);
            v133[1] = *(*(&v112 + 1) + 176);
            v133[0] = v79;
            v132 = v78;
            v131 = v77;
            v80 = *(*(&v112 + 1) + 192);
            v81 = *(*(&v112 + 1) + 208);
            v82 = *(*(&v112 + 1) + 224);
            v134 = *(*(&v112 + 1) + 240);
            v133[4] = v82;
            v133[3] = v81;
            v133[2] = v80;
          }
        }

        *(&v112 + 1) = &v123;
        v83 = v99;
        v85 = v96;
        v84 = v97;
        if (HIDWORD(v107))
        {
          *(&v130 + 1) = -1;
          v124 = HIDWORD(v107);
          *&v130 = v107 | 0xFFFFFFFF00000000;
        }

        if (v105)
        {
          LODWORD(v131) = v131 | v105;
        }

        if (v103)
        {
          WORD5(v133[0]) |= 1u;
        }

        if (*v96)
        {
          v86 = 0;
          do
          {
            v87 = v86 + 1;
          }

          while (v96[++v86]);
        }

        else
        {
          v87 = 0;
        }

        for (i = 0; i != 16; ++i)
        {
          if (!v121[i])
          {
            break;
          }
        }

        v90 = 8 * (v87 + i);
        v91 = &v95 - ((v90 + 23) & 0xFFFFFFFFFFFFFFF0);
        v92 = v90 + 8;
        if ((v90 + 8) >= 0x200)
        {
          v93 = 512;
        }

        else
        {
          v93 = v90 + 8;
        }

        bzero(v91, v93);
        bzero(v91, v92);
        memmove(v91, v121, 8 * i);
        memmove(&v91[8 * i], v85, 8 * v87);
        *v83 = __posix_spawn(v84, v109, &v112, v98, v91, v94);
        return 1;
      }
    }
  }

  return result;
}

BOOL can_access(const char *a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 8);
  if (!v2)
  {
    v2 = &errno;
  }

  v3 = *v2;
  v4 = access(a1, 4);
  if (v4)
  {
    v5 = *(StatusReg + 8);
    if (!v5)
    {
      v5 = &errno;
    }

    *v5 = v3;
  }

  return v4 == 0;
}

uint64_t _execve_with_filter(const char *a1, char *const *a2, char **a3)
{
  v26 = 0;
  memset(&v25[1], 0, 128);
  memset(v20, 0, sizeof(v20));
  v14 = 0u;
  v15 = 0u;
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v16 = -1;
  v17 = -1;
  v12 = -1;
  v9 = 0;
  v10 = 1;
  v22 = 0u;
  v21 = 0u;
  v13 = -1;
  DWORD2(v14) = 0;
  BYTE8(v15) = 0;
  HIDWORD(v15) = 0;
  LOBYTE(v20[1]) = 0;
  v18 = 0uLL;
  v19 = 0uLL;
  v23 = 0;
  v24 = 0;
  LOWORD(v8[0]) = 64;
  *&v25[0] = 248;
  *(&v25[0] + 1) = v8;
  if (!_posix_spawn_with_filter(0, a1, a2, a3, v25, &v26))
  {
    return __execve(a1, a2, a3);
  }

  if (!v26)
  {
    return 0;
  }

  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v6)
  {
    v6 = &errno;
  }

  *v6 = v26;
  return 0xFFFFFFFFLL;
}

unint64_t _libkernel_strlcpy(char *a1, char *a2, unint64_t a3)
{
  v6 = _libkernel_strlen(a2);
  v7 = v6;
  if (v6 >= a3)
  {
    if (a3)
    {
      v8 = a3 - 1;
      _libkernel_memmove(a1, a2, v8);
      a1[v8] = 0;
    }
  }

  else
  {
    _libkernel_memmove(a1, a2, v6 + 1);
  }

  return v7;
}

uint64_t mach_host_special_port_description(unsigned int a1)
{
  if (a1 <= 0x23)
  {
    return mach_host_special_port_description_hsp_descs[a1];
  }

  else
  {
    return 0;
  }
}

uint64_t mach_task_special_port_description(unsigned int a1)
{
  if (a1 <= 0xB)
  {
    return mach_task_special_port_description_tsp_descs[a1];
  }

  else
  {
    return 0;
  }
}

uint64_t mach_thread_special_port_description(unsigned int a1)
{
  if (a1 <= 3)
  {
    return mach_thread_special_port_description_tsp_descs[a1];
  }

  else
  {
    return 0;
  }
}

uint64_t port_for_id_internal(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a1)
  {
    v5 = 0;
    v6 = a3;
    while (1)
    {
      v7 = *(a2 + 8 * v5);
      if (v7)
      {
        if (!(*(_libkernel_string_functions + 8))(v7, a1))
        {
          break;
        }
      }

      if (v6 == ++v5)
      {
        v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        if (!v8)
        {
          v8 = &errno;
        }

        v9 = 2;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v8)
    {
      v8 = &errno;
    }

    v9 = 22;
LABEL_12:
    *v8 = v9;
    return 0xFFFFFFFFLL;
  }

  return v5;
}

uint64_t os_packet_set_headroom(uint64_t a1, unsigned int a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFF0;
  if (*((a1 & 0xFFFFFFFFFFFFFFF0) + 0x3C) <= a2)
  {
    return 34;
  }

  result = 0;
  *(v2 + 82) = a2;
  return result;
}

uint64_t os_packet_set_link_header_length(uint64_t a1, unsigned int a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFF0;
  if (*((a1 & 0xFFFFFFFFFFFFFFF0) + 0x3C) < a2)
  {
    return 34;
  }

  result = 0;
  *(v2 + 83) = a2;
  return result;
}

uint64_t os_packet_get_service_class(uint64_t a1)
{
  result = 0;
  v3 = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x14);
  if (v3 <= 2621727)
  {
    if (v3 <= 1048703)
    {
      v4 = v3 == 0;
      v5 = 524432;
    }

    else
    {
      v4 = v3 == 1048704 || v3 == 1572880;
      v5 = 2097184;
    }
  }

  else if (v3 > 3670319)
  {
    v4 = v3 == 3670320 || v3 == 4718992;
    v5 = 4194688;
  }

  else
  {
    v4 = v3 == 2621728 || v3 == 3146000;
    v5 = 3670272;
  }

  if (v4 || v3 == v5)
  {
    return v3;
  }

  return result;
}

uint64_t os_packet_get_compression_generation_count(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 22;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x5C);
  if (!v2)
  {
    return 2;
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t os_packet_set_traffic_class(uint64_t a1, int a2)
{
  if ((a2 & 0x1FFFFFFu) > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_22CE34A00[a2 & 0x1FFFFFF];
  }

  *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x14) = v2;
  return 0;
}

uint64_t os_packet_get_traffic_class(uint64_t a1)
{
  result = 0;
  v3 = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x14);
  if (v3 <= 2621727)
  {
    if (v3 <= 1048703)
    {
      v4 = v3 == 0;
      v5 = 524432;
    }

    else
    {
      v4 = v3 == 1048704 || v3 == 1572880;
      v5 = 2097184;
    }
  }

  else if (v3 > 3670319)
  {
    v4 = v3 == 3670320 || v3 == 4718992;
    v5 = 4194688;
  }

  else
  {
    v4 = v3 == 2621728 || v3 == 3146000;
    v5 = 3670272;
  }

  if (v4 || v3 == v5)
  {
    return v3 >> 7;
  }

  return result;
}

uint64_t os_packet_clear_flow_uuid(uint64_t result)
{
  v1 = (result & 0xFFFFFFFFFFFFFFF0);
  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t os_packet_get_expire_time(uint64_t a1, void *a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFF0;
  if ((*((a1 & 0xFFFFFFFFFFFFFFF0) + 0x68) & 0x400000000) == 0)
  {
    return 2;
  }

  if (!a2)
  {
    return 22;
  }

  result = 0;
  *a2 = *(v2 + 128);
  return result;
}

uint64_t os_packet_set_expire_time(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFF0;
  *(v2 + 104) = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x68) & 0xFFFFFFFBFFFFFFFFLL | ((a2 != 0) << 34);
  *(v2 + 128) = a2;
  return 0;
}

uint64_t os_packet_get_expiry_action(uint64_t a1, _DWORD *a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFF0;
  if ((*((a1 & 0xFFFFFFFFFFFFFFF0) + 0x68) & 0x200000000000) == 0)
  {
    return 2;
  }

  if (!a2)
  {
    return 22;
  }

  result = 0;
  *a2 = *(v2 + 149);
  return result;
}

uint64_t os_packet_set_expiry_action(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x68) | 0x200000000000;
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x68) & 0xFFFFDFFFFFFFFFFFLL;
  }

  *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x68) = v2;
  *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x95) = a2;
  return 0;
}

uint64_t os_packet_get_token(uint64_t a1, void *__dst, _WORD *a3)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF0;
  if ((*((a1 & 0xFFFFFFFFFFFFFFF0) + 0x68) & 0x800000000) == 0)
  {
    return 2;
  }

  result = 22;
  if (__dst)
  {
    if (a3)
    {
      v6 = *(v3 + 146);
      if (v6 <= *a3)
      {
        if (v6 >= 0x11)
        {
          v8 = *(v3 + 146);
          qword_27D9EE798 = "assertion failed: tlen <= 16";
          __break(1u);
        }

        else
        {
          v7 = *(v3 + 148) != 1;
          memmove(__dst, (v3 + 112), *(v3 + 146));
          *a3 = v6;
          return (2 * v7);
        }
      }
    }
  }

  return result;
}

uint64_t os_packet_set_token(uint64_t a1, void *a2, size_t __n)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF0;
  if (!__n)
  {
    *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x70) = 0;
    *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x78) = 0;
    *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x92) = 0;
    *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x94) = 0;
    v6 = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x68) & 0xFFFFFFF7FFFFFFFFLL;
LABEL_8:
    result = 0;
    *(v3 + 104) = v6;
    return result;
  }

  result = 22;
  if (a2)
  {
    v5 = __n;
    if (__n <= 0x10)
    {
      if ((a2 & 7) != 0)
      {
        memmove((v3 + 112), a2, __n);
      }

      else
      {
        *(v3 + 112) = *a2;
        *(v3 + 120) = a2[1];
      }

      *(v3 + 146) = v5;
      *(v3 + 148) = 1;
      v6 = *(v3 + 104) | 0x800000000;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t os_packet_get_packetid(uint64_t a1, void *__dst)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFF0;
  if ((*((a1 & 0xFFFFFFFFFFFFFFF0) + 0x68) & 0x800000000) == 0)
  {
    return 2;
  }

  result = 22;
  if (__dst)
  {
    v4 = *(v2 + 146);
    if (v4 <= 0x10)
    {
      v5 = *(v2 + 148);
      memmove(__dst, (v2 + 112), *(v2 + 146));
      if (v4 == 16 && v5 == 2)
      {
        return 0;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t os_packet_set_packetid(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  v2 = a1 & 0xFFFFFFFFFFFFFFF0;
  if ((a2 & 7) != 0)
  {
    *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x70) = *a2;
  }

  else
  {
    *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x70) = *a2;
    *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x78) = *(a2 + 8);
  }

  result = 0;
  *(v2 + 146) = 16;
  *(v2 + 148) = 2;
  *(v2 + 104) |= 0x800000000uLL;
  return result;
}

uint64_t os_packet_set_vlan_tag(uint64_t a1, __int16 a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFF0;
  *(v2 + 104) = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x68) | 0x40000000000;
  *(v2 + 144) = a2;
  return 0;
}

uint64_t os_packet_get_vlan_tag(uint64_t a1, _WORD *a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFF0;
  if ((*((a1 & 0xFFFFFFFFFFFFFFF0) + 0x68) & 0x40000000000) == 0)
  {
    return 2;
  }

  result = 0;
  if (a2)
  {
    *a2 = *(v2 + 144);
  }

  return result;
}

uint64_t os_packet_set_app_metadata(uint64_t a1, int a2, char a3)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF0;
  if (a2 == 1)
  {
    result = 0;
    *(v3 + 151) = a3;
    *(v3 + 104) |= 0x400000000000uLL;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x68) &= ~0x400000000000uLL;
    result = 22;
  }

  *(v3 + 150) = v5;
  return result;
}

uint64_t os_packet_add_buflet(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = 22;
  if (a3)
  {
    v5 = a1 & 0xFFFFFFFFFFFFFFF0;
    if (v5)
    {
      if (a3 != a2)
      {
        v6 = *(v5 + 154);
        if (v6 < *(v5 + 152) && (a2 || !*(v5 + 154)))
        {
          result = 0;
          v7 = v5 + 32;
          if (a2)
          {
            v7 = a2;
          }

          *v7 = a3;
          *(v7 + 24) = *(a3 + 16);
          *(v5 + 154) = v6 + 1;
        }
      }
    }
  }

  return result;
}

uint64_t os_packet_set_tx_timestamp(uint64_t result, uint64_t a2)
{
  v2 = result & 0xFFFFFFFFFFFFFFF0;
  *(v2 + 136) = a2;
  *(v2 + 104) = *((result & 0xFFFFFFFFFFFFFFF0) + 0x68) | 0x1000000000000;
  return result;
}

uint64_t os_copy_and_inet_checksum(uint32x4_t *a1, uint32x4_t *a2, uint64_t a3, unint64_t a4, int8x16_t a5, int8x16_t a6, __n128 a7, uint64x2_t a8)
{
  v8 = os_cpu_copy_in_cksum(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = -65535 * ((-65535 * HIWORD(v8) + v8) >> 16) + -65535 * HIWORD(v8) + v8;
  return ~(v9 + HIWORD(v9));
}

uint64_t internal_catch_exception_raise_state_identity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = internal_catch_exception_raise_state_identity_exc_raise_state_identity_func;
  if (internal_catch_exception_raise_state_identity_exc_raise_state_identity_func == -1 && _dlsym != 0)
  {
    v22 = a2;
    v14 = a8;
    v15 = a7;
    v16 = a6;
    v17 = a5;
    v18 = a4;
    v19 = a3;
    v20 = _dlsym(-2, "catch_exception_raise_state_identity");
    a2 = v22;
    a3 = v19;
    a4 = v18;
    a5 = v17;
    a6 = v16;
    a7 = v15;
    a8 = v14;
    v12 = v20;
    internal_catch_exception_raise_state_identity_exc_raise_state_identity_func = v20;
  }

  if (!v12)
  {
    abort();
  }

  return v12(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t internal_catch_exception_raise_state(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = internal_catch_exception_raise_state_exc_raise_state_func;
  if (internal_catch_exception_raise_state_exc_raise_state_func == -1 && _dlsym != 0)
  {
    v17 = _dlsym(-2, "catch_exception_raise_state");
    internal_catch_exception_raise_state_exc_raise_state_func = v17;
  }

  if (!v17)
  {
    abort();
  }

  return (v17)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t internal_catch_exception_raise(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = internal_catch_exception_raise_exc_raise_func;
  if (internal_catch_exception_raise_exc_raise_func == -1 && _dlsym != 0)
  {
    v12 = _dlsym(-2, "catch_exception_raise");
    internal_catch_exception_raise_exc_raise_func = v12;
  }

  if (!v12)
  {
    abort();
  }

  return (v12)(a1, a2, a3, a4, a5, a6);
}

size_t fprintf_stderr(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = &a9;
  if (vprintf_stderr_func)
  {
    return vprintf_stderr_func(a1, v12);
  }

  v9 = _mach_vsnprintf(__buf, 1024, a1, v12);
  write(2, __buf, v9);
  return v9;
}

char *__cdecl mach_error_type(mach_error_t error_value)
{
  v15 = error_value;
  do_compat(&v15);
  v1 = &_mach_errors + 40 * (v15 >> 26);
  v2 = (v15 >> 14) & 0xFFF;
  v3 = *(v1 + 3);
  if (v3)
  {
    v4 = *(v1 + 8);
    if (v4 < 1)
    {
      return "(?/?)";
    }

    v5 = 0;
    v6 = (v3 + 4);
    result = "(?/?)";
    while (1)
    {
      v8 = *(v6 - 1);
      v9 = *v6;
      v10 = v2 - v8;
      v11 = v2 >= v8 && v9 >= v2;
      v12 = !v11;
      v13 = v9 - v8;
      v14 = v12 ? v13 + 1 : v10;
      v5 += v14;
      if (!v12)
      {
        break;
      }

      v6 += 2;
      if (!--v4)
      {
        return result;
      }
    }

    v2 = v5;
  }

  if (v2 < *v1)
  {
    return *(*(v1 + 2) + 40 * v2);
  }

  return "(?/?)";
}

void mach_error(const char *str, mach_error_t error_value)
{
  v17 = 0;
  mach_error_string_int(error_value, &v17);
  if (v17)
  {
    v11 = mach_error_type(error_value);
    _mach_snprintf(v18, 1024, "%s %s (%x)", v12, v13, v14, v15, v16, v11);
  }

  fprintf_stderr("%s %s\n", v4, v5, v6, v7, v8, v9, v10, str);
}

uint64_t mach_init()
{
  if ((mach_init_mach_init_inited & 1) == 0)
  {
    mach_init_doit();
    mach_init_mach_init_inited = 1;
  }

  return 0;
}

int64_t exclaves_endpoint_call(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (a4 != 512)
  {
    return 4;
  }

  *a3 = *a5;
  result = _exclaves_ctl_trap(a1, 0x1000000, a2, a3, 0x200, 0, 0, 0);
  *a5 = *a3;
  *a6 = a3[63];
  return result;
}

int64_t exclaves_launch_conclave(void *a1, uint64_t a2, uint64_t a3)
{
  result = 4;
  if (!a2 && !a3)
  {
    return _exclaves_ctl_trap(a1, 0x6000000, 0, 0, 0, 0, 0, 0);
  }

  return result;
}

int64_t exclaves_lookup_service(void *a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  (*(_libkernel_string_functions + 11))(v6, a2, 128);
  *&v7 = 0;
  result = _exclaves_ctl_trap(a1, 0x7000000, 0, v6, 0x98, 0, 0, 0);
  if (a3)
  {
    if (!result)
    {
      *a3 = *(&v7 + 1);
    }
  }

  return result;
}

int64_t exclaves_indicator_min_on_time(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  result = 4;
  if (a3 && a4 && a5)
  {
    v11 = xmmword_22CE35498;
    v12 = unk_22CE354A8;
    result = _exclaves_ctl_trap(a1, 0x12000000, a2, &v11, 0x20, 0, 0, 0);
    if (!result)
    {
      v10 = v12;
      *a3 = *(&v11 + 1);
      *a4 = v10;
      *a5 = *(&v12 + 1);
    }
  }

  return result;
}

int64_t exclaves_notification_create(void *a1, uint64_t a2, void *a3)
{
  result = 4;
  if (a2 && a3)
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    (*(_libkernel_string_functions + 11))(v6);
    result = _exclaves_ctl_trap(a1, 0xE000000, 0, v6, 0x98, 0, 0, 0);
    if (!result)
    {
      *a3 = v7;
    }
  }

  return result;
}

void mach_msg_server_consume_unsent_message(mach_msg_header_t *a1)
{
  msgh_local_port = a1->msgh_local_port;
  if (msgh_local_port - 1 <= 0xFFFFFFFD && ((a1->msgh_bits >> 8) & 0x1F) - 17 <= 1)
  {
    mach_port_deallocate(mach_task_self_, msgh_local_port);
    a1->msgh_local_port = 0;
  }

  mach_msg_destroy(a1);
}

mach_msg_return_t mach_msg_server(BOOLean_t (__cdecl *a1)(mach_msg_header_t *, mach_msg_header_t *), mach_msg_size_t a2, mach_port_t a3, mach_msg_options_t a4)
{
  v8 = mach_task_self_;
  v9 = a2 + 68;
  if ((a4 & 0x20000) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = a2;
  }

  v11 = (v10 + 0xFFFFFFFFLL + vm_page_size) & -vm_page_size;
  address = 0;
  v12 = mach_vm_allocate(mach_task_self_, &address, (v10 - 1 + vm_page_size) & -vm_page_size, 335544321);
  if (!v12)
  {
    v39 = a1;
    v13 = address;
    v14 = HIBYTE(a4) & 0xF;
    size = v11;
    v36 = v11;
    if (v14 > 4)
    {
      v33 = 68;
    }

    else
    {
      v33 = dword_22CE354B8[v14];
      v9 = v33 + a2;
    }

    v15 = 0;
    v16 = 0;
    v37 = a4;
    v38 = a4 & 0xFFFFF7FC;
    v17 = (vm_page_size + v9 - 1) & -vm_page_size;
    if ((a4 & 4) != 0)
    {
      v18 = (vm_page_size + v9 - 1) & -vm_page_size;
    }

    else
    {
      v18 = v9;
    }

    target = v8;
    while (1)
    {
      if (v16 < v17)
      {
        address = v15;
        v19 = mach_vm_allocate(v8, &address, v17, 335544321);
        if (v19)
        {
          v12 = v19;
          goto LABEL_55;
        }

        v15 = address;
        v16 = v17;
      }

LABEL_15:
      v12 = mach_msg_overwrite(v15, v38 | 0x802, 0, v18, a3, 0, 0, 0, v32);
      while (!v12)
      {
        v20 = _libkernel_voucher_functions[3];
        if (v20)
        {
          v21 = v20(v15);
        }

        else
        {
          v21 = -1;
        }

        *v13 = 0;
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        (v39)(v15, v13);
        if ((*v13 & 0x80000000) == 0)
        {
          v22 = *(v13 + 32);
          if (v22)
          {
            if (v22 == -305)
            {
              *(v13 + 8) = 0;
            }

            else
            {
              v15->msgh_remote_port = 0;
              mach_msg_destroy(v15);
            }
          }
        }

        if (!*(v13 + 8))
        {
          goto LABEL_47;
        }

        if ((*v13 & 0x1F) == 0x12)
        {
          v23 = 2307;
        }

        else
        {
          v23 = 2323;
        }

        if (v16 == v36)
        {
          v24 = 0;
        }

        else
        {
          v24 = v15;
        }

        if (v16 == v36)
        {
          v25 = v13;
        }

        else
        {
          v25 = v15;
        }

        if (v16 == v36)
        {
          v26 = v15;
        }

        else
        {
          v26 = v13;
        }

        v27 = mach_msg_overwrite(v13, v23 | v37, *(v13 + 4), v18, a3, 0, 0, v24, v32);
        if ((v27 - 268435459) <= 4 && ((1 << (v27 - 3)) & 0x13) != 0)
        {
          mach_msg_server_consume_unsent_message(v13);
LABEL_46:
          v15 = v25;
          v13 = v26;
LABEL_47:
          v30 = _libkernel_voucher_functions[4];
          if (v30)
          {
            v30(v21);
          }

          goto LABEL_15;
        }

        v12 = v27;
        if (v27 == 268451843)
        {
          goto LABEL_46;
        }

        v29 = _libkernel_voucher_functions[4];
        v15 = v25;
        v13 = v26;
        if (v29)
        {
          v29(v21);
          v15 = v25;
          v13 = v26;
        }
      }

      v8 = target;
      if (v12 != 268451844)
      {
        break;
      }

      if ((v37 & 4) == 0)
      {
        v12 = 268451844;
        break;
      }

      v18 = (vm_page_size + v15->msgh_size + v33 - 1) & -vm_page_size;
      mach_vm_deallocate(target, v15, v16);
      v17 = v18;
    }

    mach_vm_deallocate(target, v15, v16);
LABEL_55:
    mach_vm_deallocate(v8, v13, size);
  }

  return v12;
}