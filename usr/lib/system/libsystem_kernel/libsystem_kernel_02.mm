uint64_t mach_msg_priority_encode(int a1, int a2, __int16 a3)
{
  v3 = ((a3 << 8) - 256) & 0xFF00 | (a2 << 16);
  if ((a2 - 1) > 5)
  {
    v3 = 0;
  }

  if ((a1 - 1) >= 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1 << 20;
  }

  return v3 | v4;
}

uint64_t mach_msg_priority_overide_qos(unsigned int a1)
{
  v1 = (a1 >> 20) & 0xF;
  if (v1 >= 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t mach_msg_priority_qos(unsigned int a1)
{
  v1 = HIWORD(a1) & 0xF;
  if (v1 >= 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t mach_msg_priority_relpri(unsigned int a1)
{
  if ((HIWORD(a1) & 0xF) - 7 >= 0xFFFFFFFA)
  {
    return ((a1 >> 8) + 1);
  }

  else
  {
    return 0;
  }
}

void mig_allocate(vm_address_t *a1, vm_size_t a2)
{
  address = *a1;
  v3 = mach_vm_allocate(mach_task_self_, &address, a2, 335544321);
  *a1 = address;
  if (v3)
  {
    *a1 = 0;
  }
}

void panic(const char *a1, ...)
{
  v6 = _mach_snprintf(__buf, 1024, "panic: %s\n", v1, v2, v3, v4, v5, a1);
  write(2, __buf, v6);
  host_reboot(master_host_port, 4096);
  abort();
}

void port_obj_init(int a1)
{
  address = port_obj_table;
  v1 = mach_vm_allocate(mach_task_self_, &address, 16 * a1, 1);
  port_obj_table = address;
  if (v1)
  {
    panic("port_obj_init: can't vm_allocate");
  }
}

uint64_t _mach_vsnprintf(_BYTE *a1, int a2, unsigned __int8 *a3, unsigned int *a4)
{
  v4 = a2 - 1;
  if (a2 > 1)
  {
    do
    {
      v5 = *a3;
      if (v5 == 37)
      {
        v6 = a3 + 2;
        v7 = a3[1];
        if (v7 == 120)
        {
          v16 = a4;
          a4 += 2;
          v17 = *v16;
          if (v17)
          {
            v28 = 0;
            v18 = &v28;
            do
            {
              *--v18 = hex[v17 & 0xF];
              v13 = v17 > 0xF;
              v17 >>= 4;
            }

            while (v13);
            v19 = 0;
            v20 = v4;
            v21 = v18;
            do
            {
              v22 = v19;
              --v20;
              v23 = *++v21;
              ++v19;
            }

            while (v23);
            if (v21 - v18 >= 1)
            {
              v24 = 0;
              v25 = v22 + 1;
              do
              {
                *a1++ = v18[v24++];
              }

              while (v25 != v24);
              v4 = v20;
            }
          }
        }

        else if (v7 == 115)
        {
          v8 = a4;
          a4 += 2;
          v9 = *v8;
          if (v9)
          {
            v10 = v9 - 1;
              ;
            }

            v12 = v10 - v9;
            v13 = v12 < 1 || v4 < 1;
            if (!v13)
            {
              do
              {
                v14 = *v9++;
                *a1++ = v14;
                v15 = v4 - 1;
                if (v12 < 2)
                {
                  break;
                }

                --v12;
                v13 = v4-- > 1;
              }

              while (v13);
              v4 = v15;
            }
          }
        }
      }

      else
      {
        if (!*a3)
        {
          break;
        }

        v6 = a3 + 1;
        *a1++ = v5;
        --v4;
      }

      a3 = v6;
    }

    while (v4 > 0);
  }

  if (a2 >= 1)
  {
    *a1 = 0;
  }

  return (~v4 + a2);
}

uint64_t pselect_DARWIN_EXTSN_NOCANCEL(void *a1, void *a2, void *a3, void *a4, uint64_t *a5, void *a6, void *a7, void *a8)
{
  v9 = a5;
  v17 = __pselect_nocancel(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v17 == -1)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = *(StatusReg + 8);
    if (!v19)
    {
      v19 = &errno;
    }

    if (*v19 == 78)
    {
      v28 = 0;
      v29 = 0;
      if (v9)
      {
        v20 = v9[1];
        v28 = *v9;
        LODWORD(v29) = v20 / 1000;
        v9 = &v28;
      }

      v30 = 0;
      if (a6)
      {
        v17 = __pthread_sigmask(3, a6, &v30);
        if (!v17)
        {
          v17 = select_DARWIN_EXTSN_NOCANCEL(a1, a2, a3, a4, v9, v21, v22, v23);
          v24 = *(StatusReg + 8);
          if (!v24)
          {
            v24 = &errno;
          }

          v25 = *v24;
          __pthread_sigmask(3, &v30, 0);
          v26 = *(StatusReg + 8);
          if (!v26)
          {
            v26 = &errno;
          }

          *v26 = v25;
        }
      }

      else
      {
        return select_DARWIN_EXTSN_NOCANCEL(a1, a2, a3, a4, v9, v14, v15, v16);
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v17;
}

uint64_t mach_right_recv_construct(unsigned int a1, mach_port_name_t *a2, mach_port_context_t a3)
{
  name = 0;
  *&v5.flags = xmmword_22CE354E8;
  v5.reserved[1] = 0;
  if ((a1 & 7) != 0)
  {
    v5.flags = ((16 * a1) & 0x20 | a1 & 1 | (((a1 >> 2) & 1) << 7)) ^ 1;
  }

  if (a2)
  {
    v5.flags = ((16 * a1) & 0x20 | a1 & 1 | (((a1 >> 2) & 1) << 7)) ^ 1 | 0x10;
    result = mach_port_construct(mach_task_self_, &v5, a3, &name);
    if (!result)
    {
      result = name;
      *a2 = name;
      return result;
    }

    goto LABEL_9;
  }

  result = mach_port_construct(mach_task_self_, &v5, a3, &name);
  if (result)
  {
LABEL_9:
    qword_27D9EE798 = "construct recv right failed";
    qword_27D9EE7C8 = result;
    __break(1u);
    return result;
  }

  return name;
}

uint64_t mach_right_recv_destruct(uint64_t name, unsigned int *a2, mach_port_context_t guard)
{
  if (a2)
  {
    v4 = *a2;
    if (v4 != name)
    {
      goto LABEL_7;
    }

    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  name = mach_port_destruct(mach_task_self_, name, v5, guard);
  if (!name)
  {
    return name;
  }

  v4 = name;
  qword_27D9EE798 = "destruct recv right failed";
  qword_27D9EE7C8 = name;
  __break(1u);
LABEL_7:
  qword_27D9EE798 = "api misuse: bad send right";
  qword_27D9EE7C8 = v4;
  __break(1u);
  return name;
}

uint64_t mach_right_send_create(uint64_t name)
{
  result = mach_port_insert_right(mach_task_self_, name, name, 0x14u);
  if (!result)
  {
    return name;
  }

  qword_27D9EE798 = "create send right failed";
  qword_27D9EE7C8 = result;
  __break(1u);
  return result;
}

uint64_t mach_right_send_retain(uint64_t name)
{
  v1 = name;
  result = mach_port_mod_refs(mach_task_self_, name, 0, 1);
  if (!result)
  {
    return v1;
  }

  if (result == 17)
  {
    return 0xFFFFFFFFLL;
  }

  qword_27D9EE798 = "retain send right failed";
  qword_27D9EE7C8 = result;
  __break(1u);
  return result;
}

uint64_t mach_right_send_release(mach_port_name_t name)
{
  result = mach_port_mod_refs(mach_task_self_, name, 0, -1);
  if (result)
  {
    if (result == 17)
    {
      result = mach_port_mod_refs(mach_task_self_, name, 4u, -1);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      qword_27D9EE798 = "release send right failed";
      qword_27D9EE7C8 = result;
      __break(1u);
    }

    qword_27D9EE798 = "release dead name failed";
    qword_27D9EE7C8 = result;
    __break(1u);
  }

  return result;
}

uint64_t mach_right_send_once_create(unsigned int a1)
{
  v2 = 0;
  result = _kernelrpc_mach_port_extract_right(mach_task_self_, a1, 0x15u, &v2, &v3);
  if (!result)
  {
    return v2;
  }

  qword_27D9EE798 = "create send-once right failed";
  qword_27D9EE7C8 = result;
  __break(1u);
  return result;
}

uint64_t mach_right_send_once_consume(mach_port_name_t name)
{
  result = mach_port_mod_refs(mach_task_self_, name, 2u, -1);
  if (result)
  {
    if (result == 17)
    {
      result = mach_port_mod_refs(mach_task_self_, name, 4u, -1);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      qword_27D9EE798 = "consume send-once right failed";
      qword_27D9EE7C8 = result;
      __break(1u);
    }

    qword_27D9EE798 = "release dead name failed";
    qword_27D9EE7C8 = result;
    __break(1u);
  }

  return result;
}

uint64_t mach_vm_reclaim_ring_allocate(void *a1, unsigned int a2, unsigned int a3)
{
  result = 536887297;
  v10 = 0;
  if (a1 && a2 - 1 < a3)
  {
    if (a3 <= 0x7FFFF9)
    {
      v9 = 0;
      *a1 = 0;
      result = mach_vm_deferred_reclamation_buffer_allocate(mach_task_self_, &v10, &v9, a2, a3);
      if (!result)
      {
        v7 = v10;
        v8 = mach_absolute_time();
        result = 0;
        *(v7 + 56) = v8;
        atomic_store(0, (v7 + 64));
        atomic_store(0, (v7 + 72));
        *(v7 + 16) = a2;
        *(v7 + 20) = a3;
        *(v7 + 48) = v9;
        *a1 = v7;
      }
    }

    else
    {
      return 536887300;
    }
  }

  return result;
}

uint64_t mach_vm_reclaim_ring_resize(uint64_t a1, unsigned int a2)
{
  v2 = 536887300;
  v14 = 0;
  if (!a1)
  {
    return 536887303;
  }

  if (a2 && *(a1 + 20) >= a2)
  {
    v2 = mach_vm_deferred_reclamation_buffer_resize(mach_task_self_, a2, &v14);
    if (!v2)
    {
      *(a1 + 16) = a2;
      *(a1 + 56) = mach_absolute_time();
    }

    v5 = v14;
    _X8 = atomic_fetch_add_explicit((a1 + 64), -v14, memory_order_relaxed) - v5;
    _X9 = a1 + 72;
    __asm { LDUMIN          X8, X8, [X9] }
  }

  return v2;
}

uint64_t mach_vm_reclaim_round_capacity(unsigned int a1)
{
  result = 8388601;
  if (a1 <= 0x7FFFF9)
  {
    v3 = (~vm_page_mask & (vm_page_mask + 16 * a1 + 112)) - 112;
    if (v3 >> 36)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return (v3 >> 4);
    }
  }

  return result;
}

uint64_t mach_vm_reclaim_try_enter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5, _BYTE *a6)
{
  result = 536887299;
  v8 = *(a1 + 16);
  *a6 = 0;
  if (!a5)
  {
    return 536887301;
  }

  if (HIDWORD(a3))
  {
    *a5 = -1;
    return result;
  }

  v10 = a1 + 112;
  v11 = *a5;
  *a5 = -1;
  if (v11 == -1)
  {
    v11 = *(a1 + 96);
    v13 = *(a1 + 80);
    v14 = v11 % v8;
    if (v11 > v13 && v14 == v13 % v8)
    {
      return 0;
    }

    v15 = (v10 + 16 * v14);
    *v15 = a2;
    v15[1] = a3 | (a4 << 32);
    __dmb(0xBu);
    atomic_fetch_add_explicit((a1 + 96), 1uLL, memory_order_relaxed);
    goto LABEL_16;
  }

  if (v11 < *(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 96);
  if (v11 >= v12)
  {
    qword_27D9EE798 = "mach_vm_reclaim_mark_free_with_id failed";
    qword_27D9EE7C8 = v12;
    __break(1u);
LABEL_20:
    qword_27D9EE798 = "mach_vm_reclaim_try_enter failed";
    qword_27D9EE7C8 = v8;
    __break(1u);
    return result;
  }

  *(a1 + 96) = v11;
  __dmb(0xBu);
  if (v11 < *(a1 + 88))
  {
    result = 0;
    *(a1 + 96) = v12;
    return result;
  }

  v16 = v10 + 16 * (v11 % v8);
  v8 = *v16;
  if (*v16 || *(v16 + 8))
  {
    goto LABEL_20;
  }

  *v16 = a2;
  *(v16 + 8) = a3 | (a4 << 32);
  __dmb(0xBu);
  *(a1 + 96) = v12;
LABEL_16:
  *a5 = v11;
  _X8 = atomic_fetch_add_explicit((a1 + 64), a3, memory_order_relaxed) + a3;
  _X9 = a1 + 72;
  __asm { LDUMIN          X8, X8, [X9] }

  if (mach_absolute_time() - *(a1 + 56) < *(a1 + 48))
  {
    return 0;
  }

  result = 0;
  *a6 = 1;
  return result;
}

uint64_t mach_vm_reclaim_try_cancel(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, int *a6, _BYTE *a7)
{
  result = 536887297;
  if (a2 == -1)
  {
    return 536887301;
  }

  if (a6 && a7)
  {
    v11 = *(a1 + 16);
    *a7 = 0;
    if (HIDWORD(a4))
    {
      return 536887299;
    }

    if (*(a1 + 80) > a2)
    {
      if (a5 == 2)
      {
        v12 = 3;
      }

      else
      {
        if (a5 != 1)
        {
          return result;
        }

        v12 = 2;
      }

      goto LABEL_20;
    }

    v13 = *(a1 + 96);
    if (v13 <= a2)
    {
      qword_27D9EE798 = "mach_vm_reclaim_mark_used failed";
      qword_27D9EE7C8 = v13;
      __break(1u);
    }

    else
    {
      *(a1 + 96) = a2;
      __dmb(0xBu);
      if (*(a1 + 88) > a2)
      {
        *(a1 + 96) = v13;
        v12 = 4;
LABEL_20:
        result = 0;
        *a6 = v12;
        return result;
      }

      v14 = a1 + 112 + 16 * (a2 % v11);
      v11 = *(v14 + 8);
      if (v11 == a4)
      {
        v11 = *v14;
        if (*v14 == a3)
        {
          v11 = *(v14 + 12);
          if (v11 == a5)
          {
            *v14 = 0;
            *(v14 + 8) = 0;
            __dmb(0xBu);
            *(a1 + 96) = v13;
            _X8 = atomic_fetch_add_explicit((a1 + 64), -a4, memory_order_relaxed) - a4;
            _X9 = a1 + 72;
            __asm { LDUMIN          X8, X8, [X9] }

            v22 = mach_absolute_time();
            v12 = 1;
            if (v22 - *(a1 + 56) >= *(a1 + 48))
            {
              *a7 = 1;
            }

            goto LABEL_20;
          }

LABEL_25:
          qword_27D9EE798 = "mach_vm_reclaim_mark_used failed";
          qword_27D9EE7C8 = v11;
          __break(1u);
          return result;
        }

LABEL_24:
        qword_27D9EE798 = "mach_vm_reclaim_mark_used failed";
        qword_27D9EE7C8 = v11;
        __break(1u);
        goto LABEL_25;
      }
    }

    qword_27D9EE798 = "mach_vm_reclaim_mark_used failed";
    qword_27D9EE7C8 = v11;
    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t mach_vm_reclaim_query_state(uint64_t a1, unint64_t a2, int a3, int *a4)
{
  result = 536887297;
  if (!a1)
  {
    return 536887303;
  }

  if (a2 == -1)
  {
    return 536887301;
  }

  if (*(a1 + 80) <= a2)
  {
    if (*(a1 + 88) <= a2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 4;
    }
  }

  else if (a3 == 1)
  {
    v6 = 2;
  }

  else
  {
    if (a3 != 2)
    {
      return result;
    }

    v6 = 3;
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t mach_vm_reclaim_ring_capacity(uint64_t a1, _DWORD *a2)
{
  result = 536887297;
  if (!a1)
  {
    return 536887303;
  }

  if (a2)
  {
    result = 0;
    *a2 = *(a1 + 16);
  }

  return result;
}

uint64_t mach_vm_reclaim_ring_flush(uint64_t a1, unsigned int a2)
{
  result = 536887297;
  if (!a1)
  {
    return 536887303;
  }

  if (a2)
  {
    v12 = 0;
    result = mach_vm_deferred_reclamation_buffer_flush(mach_task_self_, a2, &v12);
    if (!result)
    {
      v4 = v12;
      _X8 = atomic_fetch_add_explicit((a1 + 64), -v12, memory_order_relaxed) - v4;
      _X9 = a1 + 72;
      __asm { LDUMINL         X8, X8, [X9] }
    }
  }

  return result;
}

uint64_t mach_vm_reclaim_get_rings_for_task(unsigned int a1, _BOOL8 *a2, _BOOL4 *a3)
{
  v3 = 536887297;
  if (a3)
  {
    v10 = 0;
    v11 = 0;
    v6 = mach_vm_deferred_reclamation_buffer_query(a1, &v11, &v10);
    if (v6 <= 3)
    {
      if (v6)
      {
        if (v6 != 1)
        {
          return v6;
        }
      }

      else
      {
        v7 = v11;
        if (a2)
        {
          if (v11)
          {
            if (*a3)
            {
              v8 = v10;
              *a2 = v11;
              a2[1] = v8;
            }

            v7 = 1;
          }

          v3 = 0;
        }

        else
        {
          v3 = 0;
          v7 = v11;
        }

        *a3 = v7;
      }
    }

    else if (v6 != 4)
    {
      if (v6 == 46)
      {
        return 536887298;
      }

      if (v6 != 16)
      {
        return v6;
      }
    }
  }

  return v3;
}

uint64_t mach_vm_reclaim_ring_copy(vm_map_t src_task, mach_vm_address_t *a2, mach_vm_address_t *a3)
{
  v5 = 536887297;
  target_address = 0;
  v6 = mach_vm_remap(mach_task_self_, &target_address, a2[1], 0, 1, src_task, *a2, 1, &cur_protection, &v12, 1u);
  if (v6 > 3)
  {
    if (v6 != 4 && v6 != 16)
    {
      return v6;
    }
  }

  else if (v6)
  {
    if (v6 != 1)
    {
      return v6;
    }
  }

  else
  {
    v8 = a2[1];
    v5 = 536887303;
    if (v8 >= 0x70)
    {
      v9 = target_address;
      v10 = 16 * *(target_address + 20) + 112;
      *(target_address + 104) = v8;
      if (v10 <= v8)
      {
        v5 = 0;
        *a3 = v9;
      }
    }
  }

  return v5;
}

uint64_t mach_vm_reclaim_copied_ring_free(mach_vm_address_t *a1)
{
  result = mach_vm_deallocate(mach_task_self_, *a1, *(*a1 + 104));
  if (!result)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t mach_vm_reclaim_copied_ring_query(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  result = 536887297;
  v5 = *a1;
  if (!*a1)
  {
    return 536887303;
  }

  if (a3)
  {
    v6 = *(v5 + 80);
    v7 = *(v5 + 96);
    if (v7 >= v6)
    {
      LODWORD(v7) = v7 - v6;
      if (a2)
      {
        v7 = *a3 >= v7 ? v7 : *a3;
        if (v7)
        {
          v8 = 0;
          v9 = *(v5 + 16);
          v10 = *(v5 + 20);
          v11 = v5 + 112;
          while (1)
          {
            v12 = (v6 + v8) % v9;
            if (v12 > v10)
            {
              break;
            }

            v13 = v11 + 16 * v12;
            v14 = *(v13 + 8);
            *a2 = *v13;
            *(a2 + 8) = v14;
            *(a2 + 16) = *(v13 + 12);
            a2 += 24;
            if (v7 == ++v8)
            {
              goto LABEL_15;
            }
          }

          result = 536887300;
          LODWORD(v7) = v8;
          goto LABEL_16;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

LABEL_15:
    result = 0;
LABEL_16:
    *a3 = v7;
  }

  return result;
}

uint64_t proc_piddynkqueueinfo(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  LODWORD(result) = __proc_info(0xD, a1, a2, a3, a4, a5, a7, a8);
  if (result == -1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t proc_current_thread_schedinfo(void *a1, unint64_t a2)
{
  if (a2 < 8)
  {
    v2 = 12;
LABEL_7:
    v16 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v16)
    {
      v16 = &errno;
    }

    *v16 = v2;
    goto LABEL_10;
  }

  if (a2 != 8)
  {
    v2 = 84;
    goto LABEL_7;
  }

  v4 = getpid();
  v12 = __thread_selfid(v4, v5, v6, v7, v8, v9, v10, v11);
  if (__proc_info(2, v4, 0x21, v12, a1, 8, v13, v14) != -1)
  {
    return 0;
  }

LABEL_10:
  v17 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v17)
  {
    v17 = &errno;
  }

  return *v17;
}

int proc_libversion(int *major, int *minor)
{
  if (major)
  {
    *major = 1;
  }

  if (minor)
  {
    *minor = 1;
  }

  return 0;
}

int proc_setpcontrol(const int control)
{
  if (control > 3)
  {
    return 22;
  }

  v3 = getpid();
  v6 = __proc_info(5, v3, 1, control, 0, 0, v4, v5);
  result = 0;
  if (v6 == -1)
  {
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v7)
    {
      v7 = &errno;
    }

    return *v7;
  }

  return result;
}

uint64_t proc_signal_delegate(_OWORD *a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v8 = a1[1];
  v13[0] = *a1;
  v13[1] = v8;
  v9 = a2[1];
  v13[2] = *a2;
  v13[3] = v9;
  v10 = __proc_info(0x13, 0, a3, 0, v13, 0x40, a7, a8);
  result = 0;
  if (v10 == -1)
  {
    v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v12)
    {
      v12 = &errno;
    }

    return *v12;
  }

  return result;
}

uint64_t proc_terminate_delegate(_OWORD *a1, _OWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v8 = a1[1];
  v15[0] = *a1;
  v15[1] = v8;
  v9 = a2[1];
  v15[2] = *a2;
  v15[3] = v9;
  if (!a3)
  {
    return 22;
  }

  v11 = __proc_info(0x14, 0, 0, 0, v15, 0x40, a7, a8);
  if (v11 == -1)
  {
    v14 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v14)
    {
      v14 = &errno;
    }

    return *v14;
  }

  else
  {
    v12 = v11;
    result = 0;
    *a3 = v12;
  }

  return result;
}

uint64_t proc_signal_with_audittoken(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v8 = __proc_info(0x11, 0, a2, 0, a1, 0x20, a7, a8);
  result = 0;
  if (v8 == -1)
  {
    v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v10)
    {
      v10 = &errno;
    }

    return *v10;
  }

  return result;
}

uint64_t proc_terminate_with_audittoken(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  if (!a2)
  {
    return 22;
  }

  v9 = __proc_info(0x12, 0, 0, 0, a1, 0x20, a7, a8);
  if (v9 == -1)
  {
    v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v12)
    {
      v12 = &errno;
    }

    return *v12;
  }

  else
  {
    v10 = v9;
    result = 0;
    *a2 = v10;
  }

  return result;
}

int proc_terminate_all_rsr(int sig)
{
  if (sig != 15 && sig != 9)
  {
    return 22;
  }

  v3 = __proc_info(0x10, 0, 0, sig, 0, 0, v1, v2);
  result = 0;
  if (v3 == -1)
  {
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v5)
    {
      v5 = &errno;
    }

    return *v5;
  }

  return result;
}

uint64_t proc_set_cpumon_params(void *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9[0] = 5;
  v9[1] = a2;
  v10 = a3;
  v11 = 0;
  return __process_policy(1, 0xA, 4, 3, v9, a1, 0, a8);
}

uint64_t proc_get_cpumon_params(void *a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  result = __process_policy(1, 0xB, 4, 3, &v16, a1, 0, a8);
  v11 = result == 0;
  v12 = v16 == 5;
  v13 = !v11 || !v12;
  if (v11 && v12)
  {
    v14 = HIDWORD(v16);
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v17;
  }

  *a2 = v14;
  *a3 = v15;
  return result;
}

uint64_t proc_set_cpumon_params_fatal(void *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a2 < 1 || a3 <= 0)
  {
    v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v12)
    {
      v12 = &errno;
    }

    v13 = 22;
    goto LABEL_12;
  }

  v22 = 0uLL;
  v23 = 0;
  if (!__process_policy(1, 0xB, 4, 3, &v22, a1, 0, a8) && v22 == 5 && *(&v22 + 4))
  {
    v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v12)
    {
      v12 = &errno;
    }

    v13 = 16;
LABEL_12:
    *v12 = v13;
    return 0xFFFFFFFFLL;
  }

  LODWORD(v22) = 5;
  DWORD1(v22) = a2;
  *(&v22 + 1) = a3;
  v23 = 0;
  v14 = __process_policy(1, 0xA, 4, 3, &v22, a1, 0, v11);
  if (!v14)
  {
    v14 = proc_rlimit_control(a1, 2, 0x1000, v16, v17, v18, v19, v20);
    if (v14)
    {
      v22 = 0xFF00000005uLL;
      v23 = 0;
      __process_policy(1, 0xA, 4, 3, &v22, a1, 0, v21);
    }
  }

  return v14;
}

uint64_t proc_set_wakemon_params(void *a1, int a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9[0] = 1;
  v9[1] = a2;
  return proc_rlimit_control(a1, 1, v9, a4, a5, a6, a7, a8);
}

uint64_t proc_get_wakemon_params(void *a1, _DWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v12 = 4;
  result = proc_rlimit_control(a1, 1, &v12, a4, a5, a6, a7, a8);
  if (!result)
  {
    v11 = v12;
    *a2 = HIDWORD(v12);
    *a3 = v11;
  }

  return result;
}

uint64_t proc_setcpu_percentage(void *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = 0;
  v12 = 0;
  v10[0] = a2;
  v10[1] = a3;
  if (__process_policy(1, 1, 4, 3, v10, a1, 0, a8) != -1)
  {
    return 0;
  }

  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v9)
  {
    v9 = &errno;
  }

  return *v9;
}

uint64_t proc_clear_cpulimits(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (__process_policy(1, 2, 4, 3, 0, a1, 0, a8) != -1)
  {
    return 0;
  }

  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v9)
  {
    v9 = &errno;
  }

  return *v9;
}

uint64_t proc_setcpu_deadline(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10[1] = 0;
  v10[0] = a2;
  v10[2] = a3;
  if (__process_policy(1, 1, 4, 3, v10, a1, 0, a8) != -1)
  {
    return 0;
  }

  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v9)
  {
    v9 = &errno;
  }

  return *v9;
}

uint64_t proc_setcpu_percentage_withdeadline(void *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10[0] = a2;
  v10[1] = a3;
  v11 = 0;
  v12 = a4;
  if (__process_policy(1, 1, 4, 3, v10, a1, 0, a8) != -1)
  {
    return 0;
  }

  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v9)
  {
    v9 = &errno;
  }

  return *v9;
}

uint64_t proc_appstate(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = 0;
  if (__process_policy(1, 0xB, 5, 1, &v11, a1, 0, a8) == -1)
  {
    v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v10)
    {
      v10 = &errno;
    }

    return *v10;
  }

  else
  {
    result = 0;
    if (a2)
    {
      *a2 = v11;
    }
  }

  return result;
}

uint64_t proc_setappstate(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = a2;
  if (a2 > 4)
  {
    return 22;
  }

  if (__process_policy(1, 1, 5, 1, &v10, a1, 0, a8) != -1)
  {
    return 0;
  }

  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v9)
  {
    v9 = &errno;
  }

  return *v9;
}

uint64_t proc_devstatusnotify(int a1)
{
  v5 = a1;
  if ((a1 - 1) > 1)
  {
    return 22;
  }

  v1 = getpid();
  if (__process_policy(1, 1, 5, 2, &v5, v1, 0, v2) != -1)
  {
    return 0;
  }

  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v4)
  {
    v4 = &errno;
  }

  return *v4;
}

uint64_t proc_donate_importance_boost()
{
  v0 = getpid();
  result = __process_policy(1, 5, 6, 6, 0, v0, 0, v1);
  if (result)
  {
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v3)
    {
      v3 = &errno;
    }

    return *v3;
  }

  return result;
}

uint64_t proc_importance_assertion_begin_with_msg(int *a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 22;
  }

  v4 = *a1;
  if ((*a1 & 0x201F0000) != 0x20000000)
  {
    return 5;
  }

  if ((v4 & 0x10000000) == 0)
  {
    result = 0;
    *a1 = v4 | 0x10000000;
LABEL_11:
    *a3 = &important_boost_assertion_token;
    return result;
  }

  v7 = getpid();
  result = __process_policy(1, 0xE, 7, 1, 0, v7, 0, v8);
  if (!result)
  {
    goto LABEL_11;
  }

  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v9)
  {
    v9 = &errno;
  }

  return *v9;
}

uint64_t proc_importance_assertion_complete(uint64_t result)
{
  if (result)
  {
    if (result == &important_boost_assertion_token)
    {
      v1 = getpid();
      result = __process_policy(1, 0xF, 7, 1, 0, v1, 0, v2);
      if (result)
      {
        v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        if (!v3)
        {
          v3 = &errno;
        }

        return *v3;
      }
    }

    else
    {
      return 5;
    }
  }

  return result;
}

int proc_set_no_smt(void)
{
  v0 = getpid();
  v2 = __process_policy(1, 1, 8, 0, 0, v0, 0, v1);
  result = 0;
  if (v2 == -1)
  {
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v4)
    {
      v4 = &errno;
    }

    return *v4;
  }

  return result;
}

int proc_setthread_no_smt(void)
{
  v8 = __thread_selfid(v0, v1, v2, v3, v4, v5, v6, v7);
  v10 = __process_policy(2, 1, 8, 0, 0, 0, v8, v9);
  result = 0;
  if (v10 == -1)
  {
    v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v12)
    {
      v12 = &errno;
    }

    return *v12;
  }

  return result;
}

int proc_set_csm(uint32_t flags)
{
  if (flags > 7)
  {
    return 22;
  }

  v1 = flags;
  if ((flags & 3) == 0 || (v2 = getpid(), __process_policy(1, 1, 8, 0, 0, v2, 0, v3) != -1))
  {
    if ((v1 & 5) == 0)
    {
      return 0;
    }

    v4 = getpid();
    if (__process_policy(1, 1, 9, 0, 0, v4, 0, v5) != -1)
    {
      return 0;
    }
  }

  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v7)
  {
    v7 = &errno;
  }

  return *v7;
}

int gethostuuid(uuid_t a1, const timespec *a2)
{
  result = __gethostuuid(a1, a2);
  if (result != -1)
  {
    return result;
  }

  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v4)
  {
    v4 = &errno;
  }

  if (*v4 != 1)
  {
    return -1;
  }

  v5 = _gethostuuid_callback;
  if (!_gethostuuid_callback)
  {
    *a1 = 0;
    return -1;
  }

  return v5(a1);
}

uint64_t _register_gethostuuid_callback(unint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong(&_gethostuuid_callback, &v1, a1);
  if (v1)
  {
    return 22;
  }

  else
  {
    return 0;
  }
}

int nfsclnt(unint64_t request, void *argstructp)
{
  v4 = __open("/dev/nfsclnt", 0, 0);
  if (v4 < 0)
  {
    v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v8)
    {
      v8 = &errno;
    }

    return *v8;
  }

  else
  {
    v5 = v4;
    v6 = ioctl(v4, request, argstructp);
    close(v5);
    return v6;
  }
}

unint64_t mach_eventlink_wait_until(void *a1, void **a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = __mach_eventlink_wait_until(a1, *a2, a5, a4, a3, a6, a7, a8);
  *a2 = (v9 & 0xFFFFFFFFFFFFFFLL);
  return HIBYTE(v9);
}

unint64_t mach_eventlink_signal_wait_until(void *a1, void **a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = __mach_eventlink_signal_wait_until(a1, *a2, a3, a6, a5, a4, a7, a8);
  *a2 = (v9 & 0xFFFFFFFFFFFFFFLL);
  return HIBYTE(v9);
}

int futimens(int __fd, const timespec __times[2])
{
  if (__times)
  {
    v3 = *__times;
    v4 = __times[1];
  }

  else
  {
    v3 = times_now;
    v4 = unk_22CE35510;
  }

  v11[0] = v3;
  v11[1] = v4;
  v10 = 0;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v6 = xmmword_22CE35520;
  v7 = 0;
  DWORD1(v6) = prepare_times_array_and_attrs(v11, v8, &v9, &v10);
  return fsetattrlist(__fd, &v6, v8, v9, 0);
}

kern_return_t thread_get_register_pointer_values(thread_t thread, uintptr_t *sp, size_t *length, uintptr_t *values)
{
  if (!length)
  {
    return 4;
  }

  v7 = *length;
  if (!values && v7)
  {
    return 4;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *old_state = 0u;
  v18 = 0u;
  old_stateCnt = 68;
  result = thread_get_state(thread, 6, old_state, &old_stateCnt);
  if (!result)
  {
    if (sp)
    {
      v9 = *(&v32 + 1) - 128;
      if (*(&v32 + 1) < 0x80uLL)
      {
        v9 = 0;
      }

      *sp = v9;
    }

    if (v32 && (BYTE12(v33) & 3) == 0)
    {
      v10 = v32;
    }

    else
    {
      v10 = v32;
    }

    v11 = vm_page_size;
    if (v10 <= vm_page_size)
    {
      v12 = 0;
    }

    else
    {
      v12 = 1;
      if (values && v7)
      {
        *values = v32;
        v11 = vm_page_size;
        v12 = 1;
      }
    }

    for (i = 0; i != 58; i += 2)
    {
      v14 = *&old_state[i];
      if (v14 > v11)
      {
        if (values && v12 < v7)
        {
          values[v12] = v14;
          v11 = vm_page_size;
        }

        ++v12;
      }
    }

    *length = v12;
    if (v12 > v7 || v7 == 0)
    {
      return 52;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int renameatx_np(int a1, const char *a2, int a3, const char *a4, unsigned int a5)
{
  result = __renameatx_np(a1, a2, a3, a4, a5);
  if (!result)
  {
    atomic_fetch_add(&__remove_counter, 1u);
  }

  return result;
}

int renamex_np(const char *a1, const char *a2, unsigned int a3)
{
  result = __renameatx_np(-2, a1, -2, a2, a3);
  if (!result)
  {
    atomic_fetch_add(&__remove_counter, 1u);
  }

  return result;
}

uint64_t rename_ext(const char *a1, const char *a2, unsigned int a3)
{
  result = __renameatx_np(-2, a1, -2, a2, a3);
  if (!result)
  {
    atomic_fetch_add(&__remove_counter, 1u);
  }

  return result;
}

uint64_t fstatfs_ext(int a1, statfs *a2, unsigned int a3)
{
  if (a1 < 0)
  {
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v4)
    {
      v4 = &errno;
    }

    v5 = 9;
  }

  else
  {
    if (a2)
    {
      return __statfs_ext_impl(0, a1, a2, a3);
    }

    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v4)
    {
      v4 = &errno;
    }

    v5 = 14;
  }

  *v4 = v5;
  return 0xFFFFFFFFLL;
}

uint64_t __statfs_ext_impl(const char *a1, int a2, statfs *a3, unsigned int a4)
{
  bzero(a3, 0x878uLL);
  if (a4 >= 2)
  {
    v13 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v13)
    {
      v13 = &errno;
    }

    *v13 = 22;
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
LABEL_17:
    if (a1)
    {
      return statfs64(a1, a3);
    }

    else
    {
      return fstatfs64(a2, a3);
    }
  }

  v24 = 0;
  v23 = xmmword_22CE35538;
  v8 = *(_libkernel_functions + 16);
  if (!v8 || (v9 = *(_libkernel_functions + 16), (v10 = v8(2140)) == 0))
  {
    v15 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v15)
    {
      v15 = &errno;
    }

    *v15 = 12;
    goto LABEL_14;
  }

  v11 = v10;
  bzero(v10, 0x85CuLL);
  if (a1)
  {
    v12 = getattrlist(a1, &v23, v11, 0x85CuLL, 0x201u);
  }

  else
  {
    v12 = fgetattrlist(a2, &v23, v11, 0x85CuLL, 0x200u);
  }

  v14 = v12;
  if ((v12 & 0x80000000) == 0)
  {
    if ((v11->val[1] & 4) != 0)
    {
      a3->f_fsid = v11[3];
    }

    v19 = v11[1].val[0];
    if ((v19 & 0x400000) != 0)
    {
      a3->f_owner = v11[9].val[0];
      if ((v19 & 1) == 0)
      {
LABEL_28:
        if ((v19 & 0x4000) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_44;
      }
    }

    else if ((v19 & 1) == 0)
    {
      goto LABEL_28;
    }

    a3->f_type = v11[4].val[0];
    if ((v19 & 0x4000) == 0)
    {
LABEL_29:
      if ((v19 & 0x200000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_44:
    a3->f_flags = v11[5].val[1];
    if ((v19 & 0x200000) == 0)
    {
LABEL_31:
      if ((v19 & 0x100000) != 0)
      {
        (*(_libkernel_string_functions + 11))(a3->f_fstypename, &v11[7] + v11[7].val[1] + 4, 16);
        v19 = v11[1].val[0];
        if ((v19 & 0x1000) == 0)
        {
LABEL_33:
          if ((v19 & 0x8000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_48;
        }
      }

      else if ((v19 & 0x1000) == 0)
      {
        goto LABEL_33;
      }

      (*(_libkernel_string_functions + 11))(a3->f_mntonname, &v11[4] + v11[4].val[1] + 4, 1024);
      v19 = v11[1].val[0];
      if ((v19 & 0x8000) == 0)
      {
LABEL_34:
        if ((v19 & 0x80000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

LABEL_48:
      (*(_libkernel_string_functions + 11))(a3->f_mntfromname, &v11[6] + v11[6].val[0], 1024);
      if ((v11[1].val[0] & 0x80000) == 0)
      {
LABEL_36:
        v20 = *(_libkernel_functions + 24);
        if (v20)
        {
          v21 = *(_libkernel_functions + 24);
          v20(v11);
        }

        return v14;
      }

LABEL_35:
      a3->f_flags_ext = v11[7].val[0];
      goto LABEL_36;
    }

LABEL_30:
    a3->f_fssubtype = v11[8].val[1];
    goto LABEL_31;
  }

  v22 = *(_libkernel_functions + 24);
  if (v22)
  {
    v22(v11);
  }

  if (v14 == -1)
  {
LABEL_14:
    v16 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v16)
    {
      v16 = &errno;
    }

    if (*v16 == 22)
    {
      goto LABEL_17;
    }

    return 0xFFFFFFFFLL;
  }

  return v14;
}

uint64_t statfs_ext(const char *a1, statfs *a2, unsigned int a3)
{
  if (a1 && a2)
  {
    return __statfs_ext_impl(a1, -1, a2, a3);
  }

  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v4)
  {
    v4 = &errno;
  }

  *v4 = 14;
  return 0xFFFFFFFFLL;
}

int posix_spawnattr_getsigdefault(const posix_spawnattr_t *a1, sigset_t *a2)
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
  *a2 = v2[1];
  return result;
}

int posix_spawnattr_getpgroup(const posix_spawnattr_t *a1, pid_t *a2)
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
  *a2 = v2[3];
  return result;
}

int posix_spawnattr_getsigmask(const posix_spawnattr_t *a1, sigset_t *a2)
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
  *a2 = v2[2];
  return result;
}

int posix_spawnattr_getbinpref_np(const posix_spawnattr_t *a1, size_t a2, cpu_type_t *a3, size_t *a4)
{
  if (!a1)
  {
    return 22;
  }

  result = 22;
  if (a3)
  {
    v6 = *a1;
    if (v6)
    {
      if (a2)
      {
        v7 = (v6 + 16);
        v8 = a2 - 1;
        if (a2 - 1 >= 3)
        {
          v8 = 3;
        }

        v9 = v8 + 1;
        do
        {
          v10 = *v7++;
          *a3++ = v10;
          --v9;
        }

        while (v9);
        v11 = v8 + 1;
      }

      else
      {
        v11 = 0;
      }

      result = 0;
      if (a4)
      {
        *a4 = v11;
      }
    }
  }

  return result;
}

int posix_spawnattr_getarchpref_np(const posix_spawnattr_t *a1, size_t a2, cpu_type_t *a3, cpu_subtype_t *a4, size_t *a5)
{
  if (!a1)
  {
    return 22;
  }

  result = 22;
  if (a4)
  {
    if (a3)
    {
      v7 = *a1;
      if (v7)
      {
        if (a2)
        {
          v8 = (v7 + 112);
          v9 = a2 - 1;
          if (a2 - 1 >= 3)
          {
            v9 = 3;
          }

          v10 = v9 + 1;
          do
          {
            *a3++ = *(v8 - 24);
            v11 = *v8++;
            *a4++ = v11;
            --v10;
          }

          while (v10);
          v12 = v9 + 1;
        }

        else
        {
          v12 = 0;
        }

        result = 0;
        if (a5)
        {
          *a5 = v12;
        }
      }
    }
  }

  return result;
}

uint64_t posix_spawnattr_getpcontrol_np(uint64_t *a1, _DWORD *a2)
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
  *a2 = *(v2 + 32);
  return result;
}

uint64_t posix_spawnattr_getprocesstype_np(uint64_t *a1, _DWORD *a2)
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
  *a2 = *(v2 + 36);
  return result;
}

int posix_spawnattr_setpgroup(posix_spawnattr_t *a1, pid_t a2)
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
  v2[3] = a2;
  return result;
}

int posix_spawnattr_setbinpref_np(posix_spawnattr_t *a1, size_t a2, cpu_type_t *a3, size_t *a4)
{
  if (!a1)
  {
    return 22;
  }

  result = 22;
  if (a3)
  {
    v6 = *a1;
    if (v6)
    {
      if (a2)
      {
        v7 = v6 + 112;
        v8 = a2 - 1;
        if (a2 - 1 >= 3)
        {
          v8 = 3;
        }

        v9 = v8 + 1;
        do
        {
          v10 = *a3++;
          *(v7 - 24) = v10;
          *v7++ = -1;
          --v9;
        }

        while (v9);
        v11 = v8 + 1;
        v12 = v8 + 1;
        if (!a4)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v11 = 0;
        v12 = 0;
        if (!a4)
        {
          goto LABEL_11;
        }
      }

      *a4 = v12;
LABEL_11:
      if (v11 <= 3)
      {
        v13 = v11 - 4;
        v14 = &v6[4 * v11 + 112];
        do
        {
          *(v14 - 24) = 0;
          *v14 = -1;
          v14 += 4;
        }

        while (!__CFADD__(v13++, 1));
      }

      return 0;
    }
  }

  return result;
}

int posix_spawnattr_setarchpref_np(posix_spawnattr_t *a1, size_t a2, cpu_type_t *a3, cpu_subtype_t *a4, size_t *a5)
{
  if (!a1)
  {
    return 22;
  }

  result = 22;
  if (a4)
  {
    if (a3)
    {
      v7 = *a1;
      if (v7)
      {
        if (a2)
        {
          v8 = v7 + 112;
          v9 = a2 - 1;
          if (a2 - 1 >= 3)
          {
            v9 = 3;
          }

          v10 = v9 + 1;
          do
          {
            v11 = *a3++;
            *(v8 - 24) = v11;
            v12 = *a4++;
            *v8++ = v12;
            --v10;
          }

          while (v10);
          v13 = v9 + 1;
          v14 = v9 + 1;
          if (!a5)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v13 = 0;
          v14 = 0;
          if (!a5)
          {
            goto LABEL_12;
          }
        }

        *a5 = v14;
LABEL_12:
        if (v13 <= 3)
        {
          v15 = v13 - 4;
          v16 = &v7[4 * v13 + 112];
          do
          {
            *(v16 - 24) = 0;
            *v16 = -1;
            v16 += 4;
          }

          while (!__CFADD__(v15++, 1));
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t posix_spawnattr_setpcontrol_np(uint64_t *a1, int a2)
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
  *(v2 + 32) = a2;
  return result;
}

uint64_t posix_spawnattr_set_use_sec_transition_shims_np(uint64_t *a1, unsigned int a2)
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
  *(v2 + 170) = (((a2 & 0x402) == 0) | (((a2 >> 8) & 1) << 9)) ^ 0x200 | a2;
  return result;
}

uint64_t posix_spawnattr_set_subsystem_root_path_np(uint64_t *a1, uint64_t a2)
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

  if (a2)
  {
    v4 = *(_libkernel_functions + 16);
    if (!v4)
    {
      return 12;
    }

    v5 = v4(1024);
    if (!v5)
    {
      return 12;
    }

    v6 = v5;
    if ((*(_libkernel_string_functions + 11))(v5, a2, 1024) >= 0x400)
    {
      v7 = *(_libkernel_functions + 24);
      if (v7)
      {
        v7(v6);
      }

      return 63;
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = *(v2 + 232);
  *(v2 + 232) = v6;
  v10 = *(_libkernel_functions + 24);
  if (v10)
  {
    v10(v9);
  }

  return 0;
}

uint64_t posix_spawnattr_set_platform_np(uint64_t *a1, int a2)
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
  *(v2 + 108) = a2;
  return result;
}

uint64_t posix_spawnattr_disable_ptr_auth_a_keys_np(uint64_t *a1)
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
  *(v1 + 128) |= 1u;
  return result;
}

uint64_t posix_spawnattr_set_alt_rosetta_np(uint64_t *a1)
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
  *(v1 + 128) |= 2u;
  return result;
}

int posix_spawnattr_setexceptionports_np(posix_spawnattr_t *a1, exception_mask_t a2, mach_port_t a3, exception_behavior_t a4, thread_state_flavor_t a5)
{
  LODWORD(v6) = 1;
  DWORD1(v6) = a2;
  DWORD2(v6) = a3;
  HIDWORD(v6) = a4;
  v7 = a5;
  v8 = 0;
  return posix_spawn_appendportaction_np(a1, &v6);
}

int posix_spawnattr_setauditsessionport_np(posix_spawnattr_t *a1, mach_port_t a2)
{
  *&v3 = 2;
  *(&v3 + 1) = a2;
  v4 = 0;
  return posix_spawn_appendportaction_np(a1, &v3);
}

int posix_spawn_file_actions_addclose(posix_spawn_file_actions_t *a1, int a2)
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

  if (a2 >> 11 > 4)
  {
    return 9;
  }

  v6 = v3[1];
  if (v6 == *v3)
  {
    if (_posix_spawn_file_actions_grow(a1))
    {
      return 12;
    }

    v3 = *a1;
    v6 = *(*a1 + 1);
  }

  result = 0;
  v7 = &v3[260 * v6];
  v3[1] = v6 + 1;
  v7[2] = 1;
  v7[3] = a2;
  return result;
}

int posix_spawn_file_actions_adddup2(posix_spawn_file_actions_t *a1, int a2, int a3)
{
  if (!a1)
  {
    return 22;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 9;
  if (a2 >> 11 <= 4 && a3 >> 11 <= 4)
  {
    v8 = v4[1];
    if (v8 == *v4)
    {
      if (_posix_spawn_file_actions_grow(a1))
      {
        return 12;
      }

      v4 = *a1;
      v8 = *(*a1 + 1);
    }

    result = 0;
    v9 = &v4[260 * v8];
    v4[1] = v8 + 1;
    v9[2] = 2;
    v9[3] = a2;
    v9[4] = a3;
  }

  return result;
}

uint64_t posix_spawn_file_actions_add_fileportdup2_np(int **a1, int a2, unsigned int a3)
{
  if (!a1)
  {
    return 22;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 9;
  if ((a2 + 1) >= 2 && a3 >> 11 <= 4)
  {
    v8 = v4[1];
    if (v8 == *v4)
    {
      if (_posix_spawn_file_actions_grow(a1))
      {
        return 12;
      }

      v4 = *a1;
      v8 = (*a1)[1];
    }

    result = 0;
    v9 = &v4[260 * v8];
    v4[1] = v8 + 1;
    v9[2] = 4;
    v9[3] = a2;
    v9[4] = a3;
  }

  return result;
}

int posix_spawn_file_actions_addinherit_np(posix_spawn_file_actions_t *a1, int a2)
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

  if (a2 >> 11 > 4)
  {
    return 9;
  }

  v6 = v3[1];
  if (v6 == *v3)
  {
    if (_posix_spawn_file_actions_grow(a1))
    {
      return 12;
    }

    v3 = *a1;
    v6 = *(*a1 + 1);
  }

  result = 0;
  v7 = &v3[260 * v6];
  v3[1] = v6 + 1;
  v7[2] = 3;
  v7[3] = a2;
  return result;
}

uint64_t posix_spawn_file_actions_addchdir(int **a1, uint64_t a2)
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

  v5 = v3[1];
  if (v5 == *v3)
  {
    if (_posix_spawn_file_actions_grow(a1))
    {
      return 12;
    }

    v3 = *a1;
    v5 = (*a1)[1];
  }

  v7 = &v3[260 * v5];
  v3[1] = v5 + 1;
  v7[2] = 5;
  if ((*(_libkernel_string_functions + 11))(v7 + 4, a2, 1024) < 0x400)
  {
    return 0;
  }

  --(*a1)[1];
  return 63;
}

uint64_t posix_spawn_file_actions_addfchdir(int **a1, unsigned int a2)
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

  if (a2 >> 11 > 4)
  {
    return 9;
  }

  v6 = v3[1];
  if (v6 == *v3)
  {
    if (_posix_spawn_file_actions_grow(a1))
    {
      return 12;
    }

    v3 = *a1;
    v6 = (*a1)[1];
  }

  result = 0;
  v7 = &v3[260 * v6];
  v3[1] = v6 + 1;
  v7[2] = 6;
  v7[3] = a2;
  return result;
}

uint64_t posix_spawnattr_setcpumonitor(uint64_t *a1, uint64_t a2, uint64_t a3)
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
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t posix_spawnattr_getcpumonitor(uint64_t *a1, void *a2, void *a3)
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
  *a2 = *(v3 + 40);
  *a3 = *(v3 + 48);
  return result;
}

uint64_t posix_spawnattr_setjetsam(uint64_t *a1, __int16 a2, int a3, int a4)
{
  if (!a1)
  {
    return 22;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 22;
  }

  result = 0;
  *(v4 + 64) = a2 & 0x7FF7 | (2 * a2) & 8 | 0x8000;
  *(v4 + 68) = a3;
  *(v4 + 72) = a4;
  *(v4 + 76) = a4;
  return result;
}

uint64_t posix_spawnattr_set_registered_ports_np(uint64_t *a1, unsigned int *a2, unsigned int a3)
{
  if (a3 > 3)
  {
    return 22;
  }

  if (!a3)
  {
    return 0;
  }

  v14 = v6;
  v15 = v5;
  v16 = v3;
  v17 = v4;
  v10 = a3;
  while (1)
  {
    *&v12 = 4;
    v11 = *a2++;
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

uint64_t posix_spawnattr_set_ptrauth_task_port_np(uint64_t *a1, unsigned int a2)
{
  *&v3 = 5;
  *(&v3 + 1) = a2;
  v4 = 0;
  return posix_spawn_appendportaction_np(a1, &v3);
}

uint64_t posix_spawnattr_getmacpolicyinfo_np(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  if (!a1)
  {
    return 22;
  }

  result = 22;
  if (a3)
  {
    if (a2)
    {
      v8 = *a1;
      if (v8)
      {
        v9 = *(v8 + 200);
        if (v9 && (v10 = *(v9 + 4), v10 >= 1))
        {
          for (i = v9 + 8; (*(_libkernel_string_functions + 8))(i, a2); i += 144)
          {
            if (!--v10)
            {
              return 3;
            }
          }

          *a3 = *(i + 128);
          result = 0;
          if (a4)
          {
            *a4 = *(i + 136);
          }
        }

        else
        {
          return 3;
        }
      }
    }
  }

  return result;
}

uint64_t posix_spawnattr_set_qos_clamp_np(uint64_t *a1, unint64_t a2)
{
  if (!a1)
  {
    return 22;
  }

  result = 22;
  if (a2 <= 3)
  {
    v4 = *a1;
    if (v4)
    {
      result = 0;
      *(v4 + 80) = a2;
    }
  }

  return result;
}

uint64_t posix_spawnattr_get_qos_clamp_np(uint64_t *a1, void *a2)
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
  *a2 = *(v2 + 80);
  return result;
}

uint64_t posix_spawnattr_get_darwin_role_np(uint64_t *a1, void *a2)
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
  *a2 = *(v2 + 88);
  return result;
}

int posix_spawnattr_setnosmt_np(const posix_spawnattr_t *attr)
{
  if (!attr)
  {
    return 22;
  }

  v1 = *attr;
  if (!*attr)
  {
    return 22;
  }

  result = 0;
  v1[104] = 1;
  return result;
}

int posix_spawnattr_set_csm_np(const posix_spawnattr_t *attr, uint32_t flags)
{
  if (!attr)
  {
    return 22;
  }

  result = 22;
  if (flags <= 7)
  {
    v4 = *attr;
    if (v4)
    {
      if ((flags & 5) != 0)
      {
        v4[105] = 1;
      }

      result = 0;
      if ((flags & 3) != 0)
      {
        v4[104] = 1;
      }
    }
  }

  return result;
}

uint64_t posix_spawnattr_set_conclave_id_np(uint64_t *a1, uint64_t a2)
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

  if ((*(_libkernel_string_functions + 12))(a2) > 0x7F)
  {
    return 34;
  }

  if (*(v2 + 240))
  {
    goto LABEL_8;
  }

  v4 = *(_libkernel_functions + 16);
  if (v4)
  {
    v5 = *(_libkernel_functions + 16);
    v6 = v4(128);
    if (v6)
    {
      *(v2 + 240) = v6;
LABEL_8:
      (*(_libkernel_string_functions + 11))();
      return 0;
    }
  }

  return 12;
}

uint64_t posix_spawnattr_set_conclavememlimit_ext(uint64_t *a1, int a2)
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
  *(v2 + 188) = a2;
  return result;
}

uint64_t posix_spawnattr_set_jetsam_ttr_np(uint64_t *a1, unsigned int a2, unsigned int *a3)
{
  if (!a1)
  {
    return 22;
  }

  result = 22;
  if (a2)
  {
    v5 = *a1;
    if (v5)
    {
      v6 = 0;
      v7 = -1;
      v15 = 0;
      v8 = -1;
      result = a2;
      do
      {
        v10 = *a3++;
        v9 = v10;
        v11 = v10 > 0x2710;
        if (v10 <= 0x2710)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        if (v11)
        {
          v13 = &v15;
        }

        else
        {
          v13 = &v15 + 1;
        }

        if (v9 > 0x1388)
        {
          v14 = *v13;
        }

        else
        {
          v12 = 0;
          v14 = v6;
        }

        if (v9 < 0x1389)
        {
          v6 = v14 + 1;
        }

        else
        {
          *v13 = v14 + 1;
        }

        if (v14 >= v8)
        {
          v7 = v12;
          v8 = v14 + 1;
        }

        --result;
      }

      while (result);
      *(v5 + 64) |= posix_spawnattr_set_jetsam_ttr_np_relaunch_jetsam_flags[2 * v7];
    }
  }

  return result;
}

int execve(const char *__file, char *const *__argv, char *const *__envp)
{
  if (execve_with_filter)
  {
    return _execve_with_filter(__file, __argv, __envp);
  }

  else
  {
    return __execve(__file, __argv, __envp);
  }
}

uint64_t stackshot_config_create()
{
  v0 = *(_libkernel_functions + 16);
  if (!v0)
  {
    return 0;
  }

  v1 = *(_libkernel_functions + 16);
  result = v0(64);
  if (result)
  {
    *result = -1;
    *(result + 56) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    *(result + 32) = 0;
  }

  return result;
}

uint64_t stackshot_config_set_pid(_DWORD *a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  result = 0;
  *a1 = a2;
  return result;
}

uint64_t stackshot_config_set_flags(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 22;
  }

  result = 0;
  *(a1 + 8) = a2;
  return result;
}

uint64_t stackshot_capture_with_config(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (!a1)
  {
    return 22;
  }

  v8 = a1 + 3;
  if (a1[3])
  {
    return 22;
  }

  v10 = a1 + 4;
  a1[5] = v8;
  a1[6] = a1 + 4;
  result = __stack_snapshot_with_config(1, a1, 0x40, a4, a5, a6, a7, a8);
  if (result)
  {
    v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v11)
    {
      v11 = &errno;
    }

    result = *v11;
    *v8 = 0;
    *v10 = 0;
  }

  return result;
}

uint64_t stackshot_config_set_size_hint(uint64_t a1, int a2)
{
  if (!a1 || *(a1 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 32) = a2;
  return result;
}

uint64_t stackshot_config_set_delta_timestamp(uint64_t a1, uint64_t a2)
{
  if (!a1 || *(a1 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 16) = a2;
  return result;
}

uint64_t stackshot_config_set_pagetable_mask(uint64_t a1, unsigned int a2)
{
  if (!a1 || *(a1 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 56) = a2;
  return result;
}

uint64_t stackshot_config_dealloc_buffer(uint64_t a1)
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

  result = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t os_channel_write_attr(unsigned int *a1, _DWORD *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(a1 + 2);
  v11 = a2 + 12;
  if (v10[80] != a2[12] || v10[81] != a2[13])
  {
    result = __channel_set_opt(*a1, 1, v11, 8, a5, a6, a7, a8);
    if (result)
    {
      return result;
    }

    *(*(a1 + 2) + 320) = *v11;
    v10 = *(a1 + 2);
  }

  if (v10[82] == a2[14] && v10[83] == a2[15])
  {
    return 0;
  }

  result = __channel_set_opt(*a1, 2, a2 + 14, 8, a5, a6, a7, a8);
  if (!result)
  {
    *(*(a1 + 2) + 328) = *(a2 + 7);
  }

  return result;
}

uint64_t os_channel_read_nexus_extension_info(uint64_t a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 16);
  if (a2)
  {
    *a2 = *(v3 + 132);
  }

  if (a3)
  {
    *a3 = *(v3 + 184);
  }

  return 0;
}

uint64_t os_channel_flow_adv_get_feedback(void *a1, unsigned __int8 *a2, unsigned int a3, _DWORD *a4, uint64_t a5, _DWORD *a6)
{
  v6 = *(*a1 + 40);
  if (!v6)
  {
    return 6;
  }

  if (*(a1[2] + 30) != 1 || *(*(*a1 + 16) + 196) <= a3)
  {
    return 22;
  }

  v7 = (v6 + 32 * a3);
  if (*(v7 + 6))
  {
    if ((a2 & 7) == 0)
    {
      if (*v7 == *a2 && *(v7 + 1) == *(a2 + 1))
      {
        goto LABEL_8;
      }

      return 2;
    }

    if ((a2 & 3) != 0)
    {
      if (*v7 == *a2 && v7[1] == a2[1] && v7[2] == a2[2] && v7[3] == a2[3] && v7[4] == a2[4] && v7[5] == a2[5] && v7[6] == a2[6] && v7[7] == a2[7] && v7[8] == a2[8] && v7[9] == a2[9] && v7[10] == a2[10] && v7[11] == a2[11] && v7[12] == a2[12] && v7[13] == a2[13] && v7[14] == a2[14])
      {
        v9 = v7[15];
        v10 = a2[15];
LABEL_16:
        if (v9 == v10)
        {
LABEL_8:
          result = 0;
          *a4 = *(v7 + 4);
          *a6 = *(v7 + 5);
          return result;
        }
      }
    }

    else if (*v7 == *a2 && *(v7 + 1) == *(a2 + 1) && *(v7 + 2) == *(a2 + 2))
    {
      v9 = *(v7 + 3);
      v10 = *(a2 + 3);
      goto LABEL_16;
    }
  }

  return 2;
}

uint64_t os_channel_attr_clone(__int128 *a1)
{
  v2 = os_channel_attr_create();
  v3 = v2;
  if (a1)
  {
    if (v2)
    {
      v4 = a1[3];
      v5 = a1[4];
      v6 = a1[1];
      *(v2 + 32) = a1[2];
      v7 = *a1;
      *(v2 + 48) = v4;
      *(v2 + 64) = v5;
      *v2 = v7;
      *(v2 + 16) = v6;
      v8 = a1[5];
      v9 = a1[6];
      v10 = a1[7];
      *(v2 + 128) = *(a1 + 16);
      *(v2 + 96) = v9;
      *(v2 + 112) = v10;
      *(v2 + 80) = v8;
      *(v2 + 40) = 0;
      *(v2 + 32) = 0;
      v11 = *(a1 + 5);
      if (v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          if (os_channel_attr_set_key(v2, v11, v12))
          {
            os_channel_attr_destroy(v3);
            return 0;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t os_channel_attr_get_key(uint64_t a1, void *__dst, _DWORD *a3)
{
  if (!a3)
  {
    return 22;
  }

  v4 = *(a1 + 40);
  if (__dst)
  {
    if (v4)
    {
      v5 = (a1 + 32);
      if (*a3 < *(a1 + 32))
      {
        return 12;
      }

      memmove(__dst, v4, *(a1 + 32));
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    v5 = (a1 + 32);
LABEL_10:
    LODWORD(v4) = *v5;
  }

  result = 0;
  *a3 = v4;
  return result;
}

uint64_t os_channel_buflet_free(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if ((*(*(result + 16) + 16) & 8) == 0)
  {
    return 45;
  }

  v8 = result;
  if ((*(*(result + 24) + 304) & 0x7FFFFFFE) == 0)
  {
    return 45;
  }

  v10 = result + 96 * *(result + 67);
  v11 = *(v10 + 88);
  v12 = *v11;
  if (v12 == v11[1] && (result = __channel_sync(*result, 2, 2, a4, a5, a6, a7, a8), result) && (*(*(v8 + 24) + 4) & 0x80000000) != 0)
  {
    qword_27D9EE798 = "buflet pool free sync failed";
    qword_27D9EE7C8 = result;
    __break(1u);
  }

  else if (v12 != v11[1])
  {
    goto LABEL_5;
  }

  v13 = *(*(v8 + 24) + 4);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_5:
    v13 = *(a2 + 16);
    if (*(v10 + 152) + v13 * *(*(v10 + 88) + 26) == a2)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  qword_27D9EE798 = "no ring space in buflet free ring";
  __break(1u);
LABEL_18:
  if ((**(v10 + 80) & 0x80000000) != 0)
  {
    qword_27D9EE798 = "bad buflet handle";
    qword_27D9EE7C8 = v13;
    __break(1u);
    return result;
  }

LABEL_6:
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

uint64_t os_channel_get_next_event_handle(uint64_t a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = 22;
  if (a2 && a3 && a4)
  {
    v5 = *(a1 + 16);
    if ((*(v5 + 16) & 0x40) == 0)
    {
      return 45;
    }

    v6 = *(a1 + 24);
    *a2 = 0;
    v7 = a1 + 96 * (*(v5 + 308) - (*(v5 + 304) + *(v5 + 312)) + *(v5 + 316) + 2 * *(v6 + 304) + 2);
    v8 = *(v7 + 88);
    v9 = *v8;
    v10 = v8[1];
    if (v9 != v10)
    {
      v11 = v7 + 72;
      v12 = *(v11 + 24) + 8 * v9;
      if ((*(v12 + 4) & 1) != 0 || (v15 = **(v11 + 8), (v15 & 0x80000000) == 0))
      {
        v13 = *v12 * *(v8 + 12);
        v14 = (*(v11 + 64) + v13);
        v16 = *v14;
        v10 = v14 + 2;
        v15 = v16;
        if (v16 == ((v13 + 16) ^ __os_ch_md_redzone_cookie))
        {
          goto LABEL_8;
        }
      }

      else
      {
        qword_27D9EE798 = "Slot descriptor has no metadata";
        __break(1u);
      }

      if ((**(v11 + 8) & 0x80000000) != 0)
      {
        qword_27D9EE798 = "Metadata redzone corrupted";
        qword_27D9EE7C8 = v15;
        __break(1u);
        goto LABEL_49;
      }

LABEL_8:
      *v12 = -1;
      *(*(v11 + 24) + 8 * v9 + 4) &= ~1u;
      v17 = *(v10 + 77);
      v12 = *(v10 + 76);
      if (*(v10 + 77))
      {
        v18 = v12 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        if (*(v11 + 88) >= v12)
        {
          if (v17 <= v12)
          {
            v12 = *(v11 + 16);
            if (*(v10 + 13) != -1)
            {
              v19 = v10 + 4;
              goto LABEL_16;
            }

LABEL_53:
            v19 = *(v10 + 14);
            if (v19 == -1 || (v19 = (*(v11 + 80) + v19 * *(v12 + 26))) == 0)
            {
              qword_27D9EE798 = "bad packet: no buflet";
              __break(1u);
LABEL_56:
              qword_27D9EE798 = "invalid buflet count";
              qword_27D9EE7C8 = v17;
              __break(1u);
LABEL_57:
              qword_27D9EE798 = "non terminating buflet chain";
              __break(1u);
            }

            v10[4] = v19;
            v10[5] = 0;
LABEL_16:
            v20 = 0;
            v21 = v19;
            do
            {
              v22 = *(v21 + 5);
              if (v22 == -1)
              {
                v27 = 0;
              }

              else
              {
                v23 = *(v21 + 20);
                v24 = (v23 & 2) == 0;
                if ((v23 & 2) != 0)
                {
                  v25 = 20;
                }

                else
                {
                  v25 = 16;
                }

                if (v24)
                {
                  v26 = 48;
                }

                else
                {
                  v26 = 56;
                }

                v27 = *(v11 + v26) + (*(v12 + v25) * v22);
              }

              v21[1] = v27;
              v28 = *(v21 + 6);
              if (v28 == -1)
              {
                *v21 = 0;
                v12 = (v20 + 1);
                if (v12 != v17)
                {
                  goto LABEL_56;
                }

                v30 = v19[1];
                v4 = 6;
                if (v30)
                {
                  v31 = *(v19 + 16);
                  *a2 = v10;
                  v32 = (v30 + v31);
                  *a3 = *v32;
                  *a4 = v32[1];
                  if (v9 + 1 == v8[3])
                  {
                    v33 = 0;
                  }

                  else
                  {
                    v33 = v9 + 1;
                  }

                  *v8 = v33;
                  if (*(*(a1 + 24) + 4) >= 0)
                  {
                    return 6;
                  }

                  else
                  {
                    return 0;
                  }
                }

                return v4;
              }

              v29 = (*(v11 + 80) + v28 * *(v12 + 26));
              *v21 = v29;
              if (++v20 >= v17)
              {
                break;
              }

              v21 = v29;
            }

            while (v29);
            v17 = **(v11 + 8);
            if ((v17 & 0x80000000) != 0)
            {
              goto LABEL_57;
            }

            return 6;
          }

LABEL_52:
          qword_27D9EE798 = "Invalid bufcnt";
          qword_27D9EE7C8 = v17;
          __break(1u);
          goto LABEL_53;
        }

LABEL_51:
        v17 = v12;
        qword_27D9EE798 = "Invalid max bufcnt";
        qword_27D9EE7C8 = v12;
        __break(1u);
        goto LABEL_52;
      }

LABEL_49:
      if ((**(v11 + 8) & 0x80000000) == 0)
      {
        return 6;
      }

      qword_27D9EE798 = "bad bufcnt";
      __break(1u);
      goto LABEL_51;
    }

    if (*(v6 + 4) < 0)
    {
      return 96;
    }

    else
    {
      return 6;
    }
  }

  return v4;
}

uint64_t os_channel_get_interface_advisory(uint64_t a1, uint32x4_t *a2, int8x16_t a3, int8x16_t a4, __n128 a5, uint64x2_t a6)
{
  v6 = *(a1 + 48);
  if (!v6)
  {
    return 2;
  }

  v8 = *(v6 + 4);
  if ((v8 - 3) < 0xFFFFFFFE)
  {
    v14 = 2;
LABEL_7:
    if (*(*(a1 + 24) + 4) < 0)
    {
      return v14;
    }

    else
    {
      return 6;
    }
  }

  v9 = v8 == 2;
  v10 = 32;
  if (v9)
  {
    v10 = 16;
  }

  v11 = *(v6 + v10);
  v12 = os_cpu_copy_in_cksum((v6 + v10 + 8), a2, 96, 0, a3, a4, a5, a6);
  result = 0;
  if (v11 != v12)
  {
    v14 = 35;
    goto LABEL_7;
  }

  return result;
}

uint64_t os_channel_buflet_alloc(uint64_t result, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if ((*(*(result + 16) + 16) & 8) == 0)
  {
    return 45;
  }

  v8 = result;
  if ((*(*(result + 24) + 304) & 0x7FFFFFFE) == 0)
  {
    return 45;
  }

  v10 = result + 96 * *(result + 66);
  v11 = *(v10 + 88);
  v12 = *v11;
  if (v12 == v11[1])
  {
    result = __channel_sync(*result, 2, 0xA, a4, a5, a6, a7, a8);
    if (result)
    {
      if ((*(*(v8 + 24) + 4) & 0x80000000) == 0)
      {
        return result;
      }

      qword_27D9EE798 = "buflet pool alloc sync failed";
      qword_27D9EE7C8 = result;
      __break(1u);
      goto LABEL_24;
    }
  }

  if (v12 == v11[1])
  {
LABEL_24:
    if (*(*(v8 + 24) + 4) < 0)
    {
      return 12;
    }

    else
    {
      return 6;
    }
  }

  v13 = *(v10 + 96) + 8 * v12;
  if ((*(v13 + 4) & 1) == 0 && (**(v10 + 80) & 0x80000000) != 0)
  {
    qword_27D9EE798 = "Slot descriptor has no metadata";
    __break(1u);
LABEL_29:
    qword_27D9EE798 = "buflet alloc with NULL buffer";
    qword_27D9EE7C8 = v13;
    __break(1u);
LABEL_30:
    if ((*(*(v8 + 24) + 4) & 0x80000000) == 0)
    {
      return 6;
    }

    qword_27D9EE798 = "buflet alloc with invalid nidx";
    qword_27D9EE7C8 = v13;
    __break(1u);
    return result;
  }

  v14 = *(v10 + 152) + *v13 * *(v11 + 13);
  *v13 = -1;
  *(*(v10 + 96) + 8 * v12 + 4) &= ~1u;
  v13 = *(v14 + 20);
  v15 = 56;
  if ((*(v14 + 40) & 2) == 0)
  {
    v15 = 48;
  }

  v16 = *(v10 + 72 + v15);
  if ((*(v14 + 40) & 2) != 0)
  {
    v17 = 5;
  }

  else
  {
    v17 = 4;
  }

  v18 = v16 + v11[v17] * v13;
  *(v14 + 8) = v18;
  if (!v18)
  {
    goto LABEL_29;
  }

  v13 = *(v14 + 24);
  if (v13 != -1)
  {
    goto LABEL_30;
  }

  if (v12 + 1 == v11[3])
  {
    v19 = 0;
  }

  else
  {
    v19 = v12 + 1;
  }

  *v11 = v19;
  *a2 = v14;
  if (*(*(v8 + 24) + 4) >= 0)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t os_channel_get_upp_buffer_stats(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 24);
  *a2 = *(v3 + 288);
  *a3 = *(v3 + 280);
  return 0;
}

int sem_destroy(sem_t *a1)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v1)
  {
    v1 = &errno;
  }

  *v1 = 78;
  return -1;
}

int sem_getvalue(sem_t *a1, int *a2)
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v2)
  {
    v2 = &errno;
  }

  *v2 = 78;
  return -1;
}

int sem_init(sem_t *a1, int a2, unsigned int a3)
{
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v3)
  {
    v3 = &errno;
  }

  *v3 = 78;
  return -1;
}

uint64_t coalition_info_debug_info(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = a3;
  v10 = a1;
  return __coalition_info(4, &v10, a2, &v9, a5, a6, a7, a8);
}

uint64_t coalition_info_set_efficiency(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = a1;
  v9 = 8;
  v10 = a2;
  return __coalition_info(3, &v11, &v10, &v9, a5, a6, a7, a8);
}

uint64_t debug_syscall_reject_config(_BYTE *a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (supported)
  {
    return 0;
  }

  if (a2 > 0x12)
  {
    v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v9)
    {
      v9 = &errno;
    }

    *v9 = 7;
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = -64;
    v13 = 64;
    while (1)
    {
      v14 = v12 + 64;
      if (v12 < 0xFFFFFFFFFFFFFFC0)
      {
        break;
      }

      v15 = *a1 & 0x7F;
      v10 |= v15 << v14;
      if (v14 >= 0x3A)
      {
        v16 = v15 >> v13;
LABEL_14:
        v11 |= v16;
      }

      v13 -= 7;
      v12 += 7;
      ++a1;
      if (!--a2)
      {
        goto LABEL_18;
      }
    }

    v16 = (*a1 & 0x7F) << v12;
    goto LABEL_14;
  }

  v11 = 0;
  v10 = 0;
LABEL_18:
  result = __debug_syscall_reject_config(v10, v11, a3, a4, a5, a6, a7, a8);
  if (result == -1)
  {
    v17 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v17)
    {
      v17 = &errno;
    }

    if (*v17 != 45)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0;
    *v17 = 0;
    supported = 1;
  }

  return result;
}

uint64_t kdebug_timestamp()
{
  if ((MEMORY[0xFFFFFC100] & 4) != 0)
  {
    return mach_continuous_time();
  }

  else
  {
    return mach_absolute_time();
  }
}

uint64_t kdebug_timestamp_from_absolute(uint64_t result)
{
  if ((MEMORY[0xFFFFFC100] & 4) != 0)
  {
    result += MEMORY[0xFFFFFC098];
  }

  return result;
}

uint64_t kdebug_timestamp_from_continuous(uint64_t result)
{
  if ((MEMORY[0xFFFFFC100] & 4) == 0)
  {
    result -= MEMORY[0xFFFFFC098];
  }

  return result;
}

int pselect(int a1, fd_set *a2, fd_set *a3, fd_set *a4, const timespec *a5, const sigset_t *a6)
{
  if (a1 >= 1025)
  {
    v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v6)
    {
      v6 = &errno;
    }

    *v6 = 22;
    return -1;
  }

  p_tv_sec = a5;
  v7 = __pselect(a1, a2, a3, a4, a5, a6);
  if (v7 != -1)
  {
    return v7;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v16 = *(StatusReg + 8);
  if (!v16)
  {
    v16 = &errno;
  }

  if (*v16 != 78)
  {
    return -1;
  }

  tv_sec = 0;
  v22 = 0;
  if (p_tv_sec)
  {
    tv_nsec = p_tv_sec->tv_nsec;
    tv_sec = p_tv_sec->tv_sec;
    LODWORD(v22) = tv_nsec / 1000;
    p_tv_sec = &tv_sec;
  }

  v23 = 0;
  if (!a6)
  {
    return select_DARWIN_EXTSN(a1, a2, a3, a4, p_tv_sec);
  }

  v7 = __pthread_sigmask(3, a6, &v23);
  if (!v7)
  {
    v7 = select_DARWIN_EXTSN(a1, a2, a3, a4, p_tv_sec);
    v18 = *(StatusReg + 8);
    if (!v18)
    {
      v18 = &errno;
    }

    v19 = *v18;
    __pthread_sigmask(3, &v23, 0);
    v20 = *(StatusReg + 8);
    if (!v20)
    {
      v20 = &errno;
    }

    *v20 = v19;
  }

  return v7;
}

uint64_t pselect_NOCANCEL(void *a1, void *a2, void *a3, void *a4, uint64_t *a5, void *a6, void *a7, void *a8)
{
  if (a1 >= 1025)
  {
    v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v8)
    {
      v8 = &errno;
    }

    *v8 = 22;
    return 0xFFFFFFFFLL;
  }

  v11 = a5;
  v9 = __pselect_nocancel(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v9 != -1)
  {
    return v9;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v21 = *(StatusReg + 8);
  if (!v21)
  {
    v21 = &errno;
  }

  if (*v21 != 78)
  {
    return 0xFFFFFFFFLL;
  }

  v29 = 0;
  v30 = 0;
  if (v11)
  {
    v22 = v11[1];
    v29 = *v11;
    LODWORD(v30) = v22 / 1000;
    v11 = &v29;
  }

  v31 = 0;
  if (!a6)
  {
    return select_DARWIN_EXTSN_NOCANCEL(a1, a2, a3, a4, v11, v16, v17, v18);
  }

  v9 = __pthread_sigmask(3, a6, &v31);
  if (!v9)
  {
    v9 = select_DARWIN_EXTSN_NOCANCEL(a1, a2, a3, a4, v11, v23, v24, v25);
    v26 = *(StatusReg + 8);
    if (!v26)
    {
      v26 = &errno;
    }

    v27 = *v26;
    __pthread_sigmask(3, &v31, 0);
    v28 = *(StatusReg + 8);
    if (!v28)
    {
      v28 = &errno;
    }

    *v28 = v27;
  }

  return v9;
}

uint64_t os_nexus_attr_create()
{
  v0 = *(_libkernel_functions + 16);
  if (!v0)
  {
    return 0;
  }

  v1 = *(_libkernel_functions + 16);
  v2 = v0(176);
  v3 = v2;
  if (v2)
  {
    (*(_libkernel_string_functions + 1))(v2, 176);
  }

  return v3;
}

__n128 os_nexus_attr_clone(__int128 *a1)
{
  v2 = os_nexus_attr_create();
  if (a1)
  {
    if (v2)
    {
      v4 = *a1;
      v5 = a1[2];
      *(v2 + 16) = a1[1];
      *(v2 + 32) = v5;
      *v2 = v4;
      v6 = a1[3];
      v7 = a1[4];
      v8 = a1[6];
      *(v2 + 80) = a1[5];
      *(v2 + 96) = v8;
      *(v2 + 48) = v6;
      *(v2 + 64) = v7;
      result = a1[7];
      v9 = a1[8];
      v10 = a1[10];
      *(v2 + 144) = a1[9];
      *(v2 + 160) = v10;
      *(v2 + 112) = result;
      *(v2 + 128) = v9;
    }
  }

  return result;
}

uint64_t os_nexus_attr_set(void *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return 22;
  }

  result = 45;
  switch(a2)
  {
    case 0:
      result = 0;
      *a1 |= 1uLL;
      a1[1] = a3;
      break;
    case 1:
      result = 0;
      *a1 |= 2uLL;
      a1[2] = a3;
      break;
    case 2:
      result = 0;
      *a1 |= 4uLL;
      a1[3] = a3;
      break;
    case 3:
      result = 0;
      *a1 |= 8uLL;
      a1[4] = a3;
      break;
    case 4:
      result = 0;
      *a1 |= 0x10uLL;
      a1[5] = a3;
      break;
    case 5:
    case 10:
    case 11:
    case 12:
    case 14:
    case 15:
    case 16:
      return result;
    case 6:
      result = 0;
      *a1 |= 0x80uLL;
      a1[8] = a3;
      break;
    case 7:
      result = 0;
      *a1 |= 0x400uLL;
      a1[11] = a3;
      break;
    case 8:
      result = 0;
      *a1 |= 0x100uLL;
      a1[9] = a3;
      break;
    case 9:
      result = 0;
      *a1 |= 0x200uLL;
      a1[10] = a3;
      break;
    case 13:
      result = 0;
      *a1 |= 0x1000uLL;
      a1[14] = a3;
      break;
    case 17:
      result = 0;
      *a1 |= 0x40000uLL;
      a1[18] = a3;
      break;
    case 18:
      result = 0;
      *a1 |= 0x80000uLL;
      a1[19] = a3;
      break;
    case 19:
      result = 0;
      *a1 |= 0x100000uLL;
      a1[20] = a3 != 0;
      break;
    case 20:
      result = 0;
      *a1 |= 0x200000uLL;
      a1[21] = a3;
      break;
    default:
      return 22;
  }

  return result;
}

uint64_t os_nexus_attr_get(uint64_t a1, unsigned int a2, void *a3)
{
  result = 22;
  if (a1 && a3 && a2 <= 0x14)
  {
    result = 0;
    *a3 = *(a1 + qword_22CE35560[a2]);
  }

  return result;
}

uint64_t os_nexus_attr_destroy()
{
  v0 = *(_libkernel_functions + 24);
  if (v0)
  {
    v1 = *(_libkernel_functions + 24);
    return v0();
  }

  return result;
}

uint64_t os_nexus_controller_create()
{
  v19 = 0;
  v20 = 0;
  (*(_libkernel_string_functions + 1))(&v19, 16);
  LODWORD(v19) = 1;
  v6 = __nexus_open(&v19, 0x10, v0, v1, v2, v3, v4, v5);
  if (v6 == -1)
  {
    return 0;
  }

  v13 = v6;
  v14 = *(_libkernel_functions + 16);
  if (!v14 || (v15 = *(_libkernel_functions + 16), (v16 = v14(16)) == 0))
  {
    guarded_close_np(v13, &v20, v7, v8, v9, v10, v11, v12);
    return 0;
  }

  v17 = v16;
  (*(_libkernel_string_functions + 1))(v16, 16);
  *v17 = v13;
  *(v17 + 8) = v20;
  return v17;
}

uint64_t os_nexus_controller_register_provider(unsigned int *a1, uint64_t a2, int a3, uint64_t *a4, void *a5)
{
  v32 = 0u;
  vars0 = 0u;
  memset(v30, 0, sizeof(v30));
  (*(_libkernel_string_functions + 1))(v30, 256);
  LODWORD(v30[0]) = 1;
  if (!(*(_libkernel_string_functions + 11))(&vars0, a2, 64))
  {
    return 22;
  }

  if (!a4)
  {
    return __nexus_register(*a1, v30, 0x100, a5, 0x10, v10, v11, v12);
  }

  v13 = *a4;
  if (*a4)
  {
    v15 = a4[1];
    DWORD1(v30[0]) |= 1u;
    DWORD2(v32) = v15;
    if ((v13 & 2) == 0)
    {
LABEL_5:
      if ((v13 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_5;
  }

  v16 = a4[2];
  DWORD1(v30[0]) |= 2u;
  if ((v13 & 4) == 0)
  {
LABEL_6:
    if ((v13 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v17 = a4[3];
  DWORD1(v30[0]) |= 4u;
  if ((v13 & 8) == 0)
  {
LABEL_7:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v18 = a4[4];
  DWORD1(v30[0]) |= 8u;
  if ((v13 & 0x10) == 0)
  {
LABEL_8:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v19 = a4[5];
  DWORD1(v30[0]) |= 0x10u;
  if ((v13 & 0x80) == 0)
  {
LABEL_9:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  a4[8];
  DWORD1(v30[0]) |= 0x80u;
  if ((v13 & 0x100) == 0)
  {
LABEL_10:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v20 = a4[9];
  DWORD1(v30[0]) |= 0x100u;
  if ((v13 & 0x200) == 0)
  {
LABEL_11:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v22 = a4[11];
    DWORD1(v30[0]) |= 0x400u;
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_23:
  v21 = a4[10];
  DWORD1(v30[0]) |= 0x200u;
  if ((v13 & 0x400) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v13 & 0x1000) == 0)
  {
LABEL_13:
    if ((v13 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    if (a3 != 2)
    {
      return 22;
    }

    v14 = DWORD1(v30[0]);
    goto LABEL_29;
  }

LABEL_25:
  if (a3 != 2 || a4[14] == 2 && DWORD2(v32) != 4)
  {
    return 22;
  }

  v14 = DWORD1(v30[0]) | 0x1000;
  DWORD1(v30[0]) |= 0x1000u;
  if ((v13 & 0x20000) != 0)
  {
LABEL_29:
    v23 = v14 | 0x20000;
    v24 = a4[12];
    DWORD1(v30[0]) = v23;
  }

LABEL_30:
  if ((v13 & 0x40000) != 0)
  {
    v25 = a4[18] != 0;
    DWORD1(v30[0]) |= 0x40000u;
  }

  if ((v13 & 0x80000) == 0)
  {
    goto LABEL_35;
  }

  if ((a3 - 4) < 0xFFFFFFFE)
  {
    return 22;
  }

  v26 = a4[19];
  DWORD1(v30[0]) |= 0x80000u;
LABEL_35:
  if ((v13 & 0x100000) != 0)
  {
    if (a3)
    {
      return 22;
    }

    v28 = a4[20] != 0;
    DWORD1(v30[0]) |= 0x100000u;
  }

  if ((v13 & 0x200000) != 0)
  {
    v29 = a4[21];
    DWORD1(v30[0]) |= 0x200000u;
  }

  return __nexus_register(*a1, v30, 0x100, a5, 0x10, v10, v11, v12);
}

uint64_t os_nexus_controller_bind_provider_instance(unsigned int *a1, _OWORD *a2, __int16 a3, int a4, _OWORD *a5, uint64_t a6, int a7, char a8)
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v23[0] = 0;
  v23[1] = 0;
  (*(_libkernel_string_functions + 1))(v21, 56);
  if (a2)
  {
    v21[0] = *a2;
  }

  if (a5 && (*(_libkernel_string_functions + 3))(a5, v23, 16))
  {
    *(&v21[1] + 8) = *a5;
  }

  LOWORD(v21[1]) = a3;
  HIDWORD(v22) = a4;
  if ((a8 & 1) == 0)
  {
    if ((a8 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    DWORD1(v21[1]) |= 2u;
    if ((a8 & 4) == 0)
    {
      return __nexus_set_opt(*a1, 0x15, v21, 0x38, v16, v17, v18, v19);
    }

    goto LABEL_9;
  }

  DWORD1(v21[1]) |= 1u;
  if ((a8 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((a8 & 4) != 0)
  {
LABEL_9:
    DWORD1(v21[1]) |= 4u;
    *(&v21[2] + 1) = a6;
    LODWORD(v22) = a7;
  }

  return __nexus_set_opt(*a1, 0x15, v21, 0x38, v16, v17, v18, v19);
}

uint64_t os_nexus_controller_unbind_provider_instance(unsigned int *a1, __int128 *a2, __int16 a3)
{
  v12 = 0;
  v11 = 0uLL;
  (*(_libkernel_string_functions + 1))(&v11, 18);
  if (a2)
  {
    v11 = *a2;
  }

  v12 = a3;
  return __nexus_set_opt(*a1, 0x16, &v11, 0x12, v6, v7, v8, v9);
}

uint64_t os_nexus_controller_read_provider_attr(unsigned int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24)
{
  HIDWORD(vars8) = 256;
  if (!a3)
  {
    return 22;
  }

  a23 = 0u;
  a24 = 0u;
  a21 = 0u;
  a22 = 0u;
  a19 = 0u;
  a20 = 0u;
  a17 = 0u;
  a18 = 0u;
  a15 = 0u;
  a16 = 0u;
  a13 = 0u;
  a14 = 0u;
  a11 = 0u;
  a12 = 0u;
  a9 = 0u;
  a10 = 0u;
  (*(_libkernel_string_functions + 1))(&a9, 256);
  a9 = *a2;
  result = __nexus_get_opt(*a1, 2, &a9, &vars8 + 4, v27, v28, v29, v30);
  if (!result)
  {
    (*(_libkernel_string_functions + 1))(a3, 176);
    result = 0;
    v32 = a19;
    *&v33 = DWORD2(a18);
    *(&v33 + 1) = HIDWORD(a18);
    *(a3 + 8) = v33;
    *&v33 = v32;
    *(&v33 + 1) = HIDWORD(v32);
    *(a3 + 24) = v33;
    *&v33 = DWORD2(a19);
    *(&v33 + 1) = HIDWORD(a19);
    *(a3 + 40) = v33;
    v34 = a18;
    v35 = a18 & 1;
    *(a3 + 56) = a20;
    *(a3 + 64) = v35;
    *&v33 = DWORD1(a20);
    *(&v33 + 1) = DWORD2(a20);
    *(a3 + 72) = v33;
    *&v33 = HIDWORD(a20);
    *(&v33 + 1) = a21;
    *(a3 + 88) = v33;
    v36 = *(&a21 + 4);
    v37 = a22;
    v38 = (HIDWORD(a21) >> 1) & 1;
    *(a3 + 120) = BYTE12(a21) & 1;
    *(a3 + 128) = v38;
    *&v33 = v36;
    *(&v33 + 1) = HIDWORD(v36);
    *(a3 + 104) = v33;
    *(a3 + 136) = v37;
    *(a3 + 144) = (v34 >> 1) & 1;
    v39 = DWORD2(a22) != 0;
    *(a3 + 152) = DWORD1(a22);
    *(a3 + 160) = v39;
    *(a3 + 168) = HIDWORD(a22);
  }

  return result;
}

uint64_t os_nexus_controller_add_traffic_rule(int *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, char a5, _OWORD *a6)
{
  if (*a4 != 1)
  {
    return 45;
  }

  v24 = v6;
  v25 = v7;
  if (*(a4 + 2) != 12)
  {
    return 22;
  }

  v14 = *a3;
  if (v14 == 1)
  {
    if (*(a3 + 1) == 17)
    {
      v21 = 0u;
      memset(v22, 0, 20);
      v19 = 0u;
      v20 = 0u;
      (*(_libkernel_string_functions + 1))(&v19, 68);
      if (a2)
      {
        (*(_libkernel_string_functions + 11))(&v19, a2, 16);
      }

      v20 = *a3;
      LOBYTE(v21) = a3[16];
      *(&v21 + 1) = *a4;
      *(&v21 + 9) = *(a4 + 8);
      if (a5)
      {
        LODWORD(v22[0]) |= 1u;
      }

      if ((ioctl(*a1, 0xC0446E04uLL, &v19) & 0x80000000) == 0)
      {
        result = 0;
        v17 = *(v22 + 4);
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    return 22;
  }

  if (v14 != 2)
  {
    return 45;
  }

  if (*(a3 + 1) != 48)
  {
    return 22;
  }

  v23 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v19 = 0u;
  v20 = 0u;
  (*(_libkernel_string_functions + 1))(&v19, 96);
  if (a2)
  {
    (*(_libkernel_string_functions + 11))(&v19, a2, 16);
  }

  v15 = *(a3 + 1);
  v20 = *a3;
  v21 = v15;
  v22[0] = *(a3 + 2);
  *&v22[1] = *a4;
  DWORD2(v22[1]) = *(a4 + 8);
  if (a5)
  {
    HIDWORD(v22[1]) |= 1u;
  }

  if ((ioctl(*a1, 0xC0606E01uLL, &v19) & 0x80000000) == 0)
  {
    result = 0;
    v17 = v23;
LABEL_20:
    *a6 = v17;
    return result;
  }

LABEL_23:
  v18 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v18)
  {
    v18 = &errno;
  }

  return *v18;
}

uint64_t os_nexus_controller_remove_traffic_rule(int *a1, __int128 *a2)
{
  v6 = 0uLL;
  (*(_libkernel_string_functions + 1))(&v6, 16);
  v6 = *a2;
  if ((ioctl(*a1, 0x80106E02uLL, &v6) & 0x80000000) == 0)
  {
    return 0;
  }

  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v5)
  {
    v5 = &errno;
  }

  return *v5;
}

uint64_t os_nexus_controller_iterate_traffic_rules(int *a1)
{
  v2 = 0;
  v13 = 0;
  v14 = 0;
  v3 = 1;
  v15 = 0;
  while (1)
  {
    v4 = v3;
    v5 = &traffic_rule_types + 24 * v2;
    (*(_libkernel_string_functions + 1))(&v13, 24);
    LOBYTE(v13) = *v5;
    v6 = *(v5 + 1);
    HIDWORD(v13) = v6;
    LODWORD(v14) = 512;
    v7 = *(_libkernel_functions + 16);
    if (!v7)
    {
      return 12;
    }

    v15 = v7((v6 << 9));
    if (!v15)
    {
      return 12;
    }

    if (ioctl(*a1, 0xC0186E03uLL, &v13) < 0)
    {
      break;
    }

    if (v14)
    {
      (*(v5 + 2))(v15);
    }

    v8 = *(_libkernel_functions + 24);
    if (v8)
    {
      v8(v15);
    }

    v3 = 0;
    v2 = 1;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v11)
  {
    v11 = &errno;
  }

  v9 = *v11;
  v12 = *(_libkernel_functions + 24);
  if (v12)
  {
    v12(v15);
  }

  return v9;
}

uint64_t eth_rule_iterate(uint64_t result, unsigned int a2, uint64_t (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  if (a2)
  {
    v7 = result;
    v8 = 1;
    do
    {
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      (*(_libkernel_string_functions + 1))(&v10, 48);
      *&v10 = v7;
      *(&v10 + 1) = v7 + 16;
      *&v11 = v7 + 80;
      *(&v11 + 1) = v7 + 96;
      *&v12 = v7 + 113;
      result = a3(a4, &v10);
      if (!result)
      {
        break;
      }

      v7 += 125;
    }

    while (v8++ < a2);
  }

  return result;
}

uint64_t inet_rule_iterate(uint64_t result, unsigned int a2, uint64_t (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  if (a2)
  {
    v7 = result;
    v8 = 1;
    do
    {
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      (*(_libkernel_string_functions + 1))(&v10, 48);
      *&v10 = v7;
      *(&v10 + 1) = v7 + 16;
      *&v11 = v7 + 80;
      *(&v11 + 1) = v7 + 96;
      *&v12 = v7 + 144;
      result = a3(a4, &v10);
      if (!result)
      {
        break;
      }

      v7 += 156;
    }

    while (v8++ < a2);
  }

  return result;
}

uint64_t os_nexus_controller_destroy(unsigned int *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = *a1;
  if (result != -1)
  {
    result = guarded_close_np(result, a1 + 2, a3, a4, a5, a6, a7, a8);
  }

  v10 = *(_libkernel_functions + 24);
  if (v10)
  {
    v11 = *(_libkernel_functions + 24);

    return v10(a1);
  }

  return result;
}

double __os_nexus_ifattach(unsigned int *a1, __int128 *a2, uint64_t a3, _OWORD *a4, int a5, _OWORD *a6)
{
  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, 88);
  (*(_libkernel_string_functions + 1))(v17, 88);
  if (a3)
  {
    (*(_libkernel_string_functions + 11))(v17, a3, 64);
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17[0] = *a4;
  LODWORD(v17[4]) |= 1u;
  if (a5)
  {
LABEL_3:
    LODWORD(v17[4]) |= 2u;
  }

LABEL_4:
  (*(_libkernel_string_functions + 1))(&v18, 32);
  if (a2)
  {
    v18 = *a2;
  }

  *&v19 = 0x5800000000;
  *(&v19 + 1) = v17;
  if (!__nexus_set_opt(*a1, 0x28, &v18, 0x20, v12, v13, v14, v15))
  {
    result = *(&v17[4] + 4);
    *a6 = *(&v17[4] + 4);
  }

  return result;
}

uint64_t __os_nexus_ifdetach(unsigned int *a1, __int128 *a2, _OWORD *a3)
{
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, 88);
  (*(_libkernel_string_functions + 1))(v11, 88);
  *(&v11[4] + 4) = *a3;
  (*(_libkernel_string_functions + 1))(&v12, 32);
  if (a2)
  {
    v12 = *a2;
  }

  *&v13 = 0x5800000001;
  *(&v13 + 1) = v11;
  return __nexus_set_opt(*a1, 0x28, &v12, 0x20, v6, v7, v8, v9);
}

uint64_t __os_nexus_flow_add(unsigned int *a1, __int128 *a2, uint64_t a3)
{
  v11 = 0u;
  v12 = 0u;
  (*(_libkernel_string_functions + 1))(&v11, 32);
  if (a2)
  {
    v11 = *a2;
  }

  *&v12 = 0x21000000014;
  *(&v12 + 1) = a3;
  return __nexus_set_opt(*a1, 0x28, &v11, 0x20, v6, v7, v8, v9);
}

uint64_t __os_nexus_flow_del(unsigned int *a1, __int128 *a2, uint64_t a3)
{
  v11 = 0u;
  v12 = 0u;
  (*(_libkernel_string_functions + 1))(&v11, 32);
  if (a2)
  {
    v11 = *a2;
  }

  *&v12 = 0x21000000015;
  *(&v12 + 1) = a3;
  return __nexus_set_opt(*a1, 0x28, &v11, 0x20, v6, v7, v8, v9);
}

uint64_t __os_nexus_config_flow(__int128 *a1, uint64_t a2)
{
  v9 = 0u;
  v10 = 0u;
  (*(_libkernel_string_functions + 1))(&v9, 32);
  if (a1)
  {
    v9 = *a1;
  }

  *&v10 = 0x21000000016;
  *(&v10 + 1) = a2;
  return __nexus_set_opt(0xFFFFFFFFLL, 0x28, &v9, 0x20, v4, v5, v6, v7);
}

uint64_t __os_nexus_get_llink_info(uint64_t result, __int128 *a2, uint64_t a3, unint64_t a4)
{
  if (HIDWORD(a4))
  {
    vars0 = v4;
    vars8 = v5;
    qword_27D9EE798 = "assertion failed: arg_len <= UINT32_MAX";
    __break(1u);
  }

  else
  {
    v6 = a4;
    v9 = result;
    v14 = 0u;
    v15 = 0u;
    (*(_libkernel_string_functions + 1))(&v14, 32);
    if (a2)
    {
      v14 = *a2;
    }

    LODWORD(v15) = 40;
    DWORD1(v15) = v6;
    *(&v15 + 1) = a3;
    return __nexus_set_opt(*v9, 0x28, &v14, 0x20, v10, v11, v12, v13);
  }

  return result;
}

uint64_t os_nexus_flow_set_connection_idle(__int128 *a1, uint64_t a2, int a3)
{
  bzero(v8, 0x210uLL);
  (*(_libkernel_string_functions + 4))(&v9, a2, 16);
  if (a3)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0x20000;
  }

  v8[18] = v6;
  return __os_nexus_config_flow(a1, v8);
}

int sigsuspend(const sigset_t *a1)
{
  if (a1)
  {
    a1 = *a1;
  }

  return __sigsuspend(a1);
}

uint64_t work_interval_notify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v11 = a6;
  if (a1)
  {
    if ((*(a1 + 16) & 0x20) != 0)
    {
      return 0;
    }

    else
    {
      v12 = *(a1 + 16);
      return __work_interval_ctl(3, *(a1 + 8), v10, 0x28, a5, a6, a7, a8);
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

uint64_t work_interval_notify_simple(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = mach_absolute_time();

  return work_interval_notify(a1, a2, v8, a3, a4, 0, v9, v10);
}

uint64_t work_interval_instance_free()
{
  v0 = *(_libkernel_functions + 24);
  if (v0)
  {
    v1 = *(_libkernel_functions + 24);
    return v0();
  }

  return result;
}

uint64_t work_interval_instance_get_start(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t work_interval_instance_get_deadline(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return *(a1 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t work_interval_instance_get_finish(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return *(a1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t work_interval_instance_get_complexity(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return *(a1 + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t work_interval_destroy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (!a1)
  {
    goto LABEL_13;
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    v9 = __work_interval_ctl(2, *(a1 + 8), 0, 0, a5, a6, a7, a8);
    *(a1 + 8) = 0;
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
    v14 = *(_libkernel_functions + 24);
    if (v14)
    {
      v15 = *(_libkernel_functions + 24);
      v14(a1);
      v11 = *(StatusReg + 8);
    }

    if (!v11)
    {
      v11 = &errno;
    }

    *v11 = v13;
    return v9;
  }

  if (!mach_port_deallocate(mach_task_self_, *(a1 + 20)))
  {
    v18 = *(_libkernel_functions + 24);
    if (v18)
    {
      v19 = *(_libkernel_functions + 24);
      v18(a1);
    }

    return 0;
  }

  else
  {
LABEL_13:
    v16 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v16)
    {
      v16 = &errno;
    }

    *v16 = 22;
    return 0xFFFFFFFFLL;
  }
}

int openat_dprotected_np(int a1, const char *a2, int a3, int a4, int a5, ...)
{
  if ((a5 & 4) == 0)
  {
    return __openat_dprotected_np(a1, a2, a3, a4, a5);
  }

  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v5)
  {
    v5 = &errno;
  }

  *v5 = 22;
  return -1;
}

int openat_authenticated_np(int a1, const char *a2, int a3, int a4)
{
  if ((a3 & 0x200) != 0)
  {
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v4)
    {
      v4 = &errno;
    }

    v5 = 22;
    goto LABEL_9;
  }

  if (a4 <= -2)
  {
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v4)
    {
      v4 = &errno;
    }

    v5 = 9;
LABEL_9:
    *v4 = v5;
    return -1;
  }

  return __openat_dprotected_np(a1, a2, a3, -1, 4);
}

uint64_t os_channel_event_get_next_event(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  *a3 = 0;
  if (a1)
  {
    v3 = (a1 & 0xFFFFFFFFFFFFFFF0) + 32;
    if (*((a1 & 0xFFFFFFFFFFFFFFF0) + 0x28) || (v3 = *((a1 & 0xFFFFFFFFFFFFFFF0) + 0x20)) != 0)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        v5 = *(v3 + 36);
        v6 = v4 + *(v3 + 32);
        if (!a2)
        {
          v8 = v6 + 8;
          goto LABEL_9;
        }

        if ((*(a2 + 4) & 1) == 0)
        {
          return 96;
        }

        v8 = a2 + *(a2 + 10) + 12;
        if (v8 >= v6 + 8)
        {
LABEL_9:
          if (v8 + *(v8 + 10) <= v6 + v5)
          {
            result = 0;
            *a3 = v8;
            return result;
          }
        }
      }

      return 6;
    }
  }

  return 22;
}

uint64_t os_channel_event_get_event_data(uint64_t a1, uint64_t a2)
{
  result = 22;
  if (a1 && a2)
  {
    if ((*a1 - 3) < 0xFFFFFFFE)
    {
      return 6;
    }

    else
    {
      result = 0;
      *a2 = *a1;
      *(a2 + 4) = *(a1 + 4) & 1;
      *(a2 + 8) = *(a1 + 10);
      *(a2 + 16) = a1 + 12;
    }
  }

  return result;
}

uint64_t mach_sync_ipc_link_monitoring_start(mach_port_name_t *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1 = -1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  special_reply_port = *(StatusReg + 64);
  if (special_reply_port - 1 >= 0xFFFFFFFE)
  {
    special_reply_port = thread_get_special_reply_port(a1, a2, a3, a4, a5, a6, a7, a8);
    *(StatusReg + 64) = special_reply_port;
  }

  v11 = mach_port_mod_refs(mach_task_self_, special_reply_port, 0, 1);
  if (!v11)
  {
    v11 = _kernelrpc_mach_port_special_reply_port_reset_link(mach_task_self_, special_reply_port, &v13);
    if (v11)
    {
      mach_port_deallocate(mach_task_self_, special_reply_port);
    }

    else
    {
      *a1 = special_reply_port;
    }
  }

  return v11;
}

uint64_t mach_sync_ipc_link_monitoring_stop(unsigned int a1, _DWORD *a2)
{
  v6 = 1;
  v4 = _kernelrpc_mach_port_special_reply_port_reset_link(mach_task_self_, a1, &v6);
  *a2 = v6 == 0;
  mach_port_deallocate(mach_task_self_, a1);
  return v4;
}

kern_return_t mach_voucher_extract_attr_recipe(ipc_voucher_t voucher, mach_voucher_attr_key_t key, mach_voucher_attr_raw_recipe_t recipe, mach_msg_type_number_t *recipeCnt)
{
  result = mach_voucher_extract_attr_recipe_trap(voucher, key, recipe, recipeCnt);
  if (result == 268435459)
  {

    return _kernelrpc_mach_voucher_extract_attr_recipe(voucher, key, recipe, recipeCnt);
  }

  return result;
}

kern_return_t mach_vm_remap(vm_map_t target_task, mach_vm_address_t *target_address, mach_vm_size_t size, mach_vm_offset_t mask, int flags, vm_map_t src_task, mach_vm_address_t src_address, BOOLean_t copy, vm_prot_t *cur_protection, vm_prot_t *max_protection, vm_inherit_t inheritance)
{
  v15 = _kernelrpc_mach_vm_remap(target_task, target_address, size, mask, flags, src_task, src_address, copy, cur_protection, max_protection, inheritance);
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

kern_return_t vm_remap_new(vm_map_t target_task, vm_address_t *target_address, vm_size_t size, vm_address_t mask, int flags, vm_map_read_t src_task, vm_address_t src_address, BOOLean_t copy, vm_prot_t *cur_protection, vm_prot_t *max_protection, vm_inherit_t inheritance)
{
  v15 = _kernelrpc_vm_remap_new(target_task, target_address, size, mask, flags, src_task, src_address, copy, cur_protection, max_protection, inheritance);
  if (__syscall_logger)
  {
    __syscall_logger(flags & 0xFF000000 | 0x90, target_task, size, 0, *target_address, 0);
  }

  return v15;
}

const char *mach_vm_tag_describe(unsigned int a1)
{
  if (a1 > 0xFF)
  {
    return "Invalid Tag (?)";
  }

  else
  {
    return (&vm_tag_descriptions)[a1];
  }
}

int getaudit(auditinfo *a1)
{
  memset(&v4, 0, sizeof(v4));
  result = getaudit_addr(&v4, 48);
  if (!result)
  {
    a1->ai_auid = v4.ai_auid;
    a1->ai_mask = v4.ai_mask;
    v3 = v4.ai_termid.at_addr[0];
    a1->ai_termid.port = v4.ai_termid.at_port;
    a1->ai_termid.machine = v3;
    a1->ai_asid = v4.ai_asid;
  }

  return result;
}

int setaudit(const auditinfo *a1)
{
  memset(&v5, 0, sizeof(v5));
  result = getaudit_addr(&v5, 48);
  if (!result)
  {
    v5.ai_auid = a1->ai_auid;
    v5.ai_mask = a1->ai_mask;
    machine = a1->ai_termid.machine;
    v5.ai_termid.at_port = a1->ai_termid.port;
    v5.ai_termid.at_type = 4;
    ai_asid = a1->ai_asid;
    v5.ai_termid.at_addr[0] = machine;
    v5.ai_asid = ai_asid;
    result = setaudit_addr(&v5, 48);
    if (!result)
    {
      a1->ai_asid = v5.ai_asid;
    }
  }

  return result;
}

uint64_t kpersona_dealloc(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v10 = a1;
  v9 = 1;
  return __persona(3, 0, 0, &v10, &v9, 0, a7, a8);
}

uint64_t kpersona_getpath(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v10 = a1;
  v9 = 1;
  return __persona(8, 0, 0, &v10, &v9, a2, a7, a8);
}

uint64_t __carbon_delete(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = __delete(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    atomic_fetch_add(&__remove_counter, 1u);
  }

  return result;
}

kern_return_t clock_set_time(clock_ctrl_t clock_ctrl, mach_timespec_t new_time)
{
  v11 = 0;
  v9 = NDR_record;
  v10 = new_time;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2800001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, clock_ctrl);
  *&v8.msgh_voucher_port = 0x4B000000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2800001513, __PAIR64__(reply_port, clock_ctrl), 0x4B000000000, (reply_port << 32), 0x2C, 0);
  tv_sec = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return tv_sec;
    }

    if (v8.msgh_id == 71)
    {
      tv_sec = -308;
    }

    else if (v8.msgh_id == 1300)
    {
      tv_sec = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        tv_sec = v10.tv_sec;
        if (!v10.tv_sec)
        {
          return tv_sec;
        }
      }
    }

    else
    {
      tv_sec = -301;
    }

    mach_msg_destroy(&v8);
  }

  return tv_sec;
}

kern_return_t clock_set_attributes(clock_ctrl_t clock_ctrl, clock_flavor_t flavor, clock_attr_t clock_attr, mach_msg_type_number_t clock_attrCnt)
{
  v12 = NDR_record;
  v13 = flavor;
  if (clock_attrCnt > 1)
  {
    return -307;
  }

  v15 = 0;
  memmove(&v15, clock_attr, 4 * clock_attrCnt);
  v14 = clock_attrCnt;
  v7 = (4 * clock_attrCnt) | 0x28;
  reply_port = mig_get_reply_port();
  v11.msgh_bits = 5395;
  v11.msgh_size = v7;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, clock_ctrl);
  *&v11.msgh_voucher_port = 0x4B100000000;
  v9 = mach_msg2_internal(&v11, 0x200000003, ((((v7 >> 2) & 0x1FFFFFFF) << 34) | 0x1513), __PAIR64__(reply_port, clock_ctrl), 0x4B100000000, (reply_port << 32), 0x2C, 0);
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

    else if (v11.msgh_id == 1301)
    {
      v4 = -300;
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
      v4 = -301;
    }

    mach_msg_destroy(&v11);
  }

  return v4;
}

kern_return_t clock_alarm_reply(clock_reply_t alarm_port, mach_msg_type_name_t alarm_portPoly, kern_return_t alarm_code, alarm_type_t alarm_type, mach_timespec_t alarm_time)
{
  v8 = NDR_record;
  v9 = alarm_code;
  v10 = alarm_type;
  v11 = alarm_time;
  msg.msgh_bits = alarm_portPoly;
  msg.msgh_size = 0;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 3125107;
  msg.msgh_remote_port = alarm_port;
  msg.msgh_local_port = 0;
  return mach_msg_overwrite(&msg, 1, 0x30u, 0, 0, 0, 0, 0, v6);
}

kern_return_t clock_get_attributes(clock_serv_t clock_serv, clock_flavor_t flavor, clock_attr_t clock_attr, mach_msg_type_number_t *clock_attrCnt)
{
  v17 = NDR_record;
  v7 = *clock_attrCnt;
  v20 = 0;
  v21 = 0;
  v18 = flavor;
  v19 = v7 != 0;
  reply_port = mig_get_reply_port();
  *&v16.msgh_bits = 0x2800001513;
  *&v16.msgh_remote_port = __PAIR64__(reply_port, clock_serv);
  *&v16.msgh_voucher_port = 0x3E900000000;
  v9 = mach_msg2_internal(&v16, 0x200000003, 0x2800001513, __PAIR64__(reply_port, clock_serv), 0x3E900000000, (reply_port << 32), 0x34, 0);
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

    else if (v16.msgh_id == 1101)
    {
      if ((v16.msgh_bits & 0x80000000) == 0)
      {
        if (v16.msgh_size - 45 <= 0xFFFFFFFA)
        {
          if (v18)
          {
            v12 = v16.msgh_remote_port == 0;
          }

          else
          {
            v12 = 0;
          }

          if (v12 && v16.msgh_size == 36)
          {
            v10 = v18;
          }

          else
          {
            v10 = -300;
          }

          goto LABEL_25;
        }

        if (!v16.msgh_remote_port)
        {
          v10 = v18;
          if (v18)
          {
            goto LABEL_25;
          }

          v15 = v19;
          if (v19 <= 1 && v19 <= (v16.msgh_size - 40) >> 2 && v16.msgh_size == ((4 * v19) | 0x28))
          {
            if (v19 <= *clock_attrCnt)
            {
              memmove(clock_attr, &v19 + 4, 4 * v19);
              v10 = 0;
              *clock_attrCnt = v15;
            }

            else
            {
              *clock_attrCnt = v19;
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

LABEL_25:
    mach_msg_destroy(&v16);
  }

  return v10;
}

kern_return_t clock_alarm(clock_serv_t clock_serv, alarm_type_t alarm_type, mach_timespec_t alarm_time, clock_reply_t alarm_port)
{
  v10 = 1;
  v11 = alarm_port;
  v12 = 0x15000000000000;
  v13 = NDR_record;
  v14 = alarm_type;
  v15 = alarm_time;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x3C80001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, clock_serv);
  *&v9.msgh_voucher_port = 0x3EA00000000;
  v6 = mach_msg2_internal(&v9, 0x200000003, 0x3C80001513, __PAIR64__(reply_port, clock_serv), 0x3EA00000000, ((reply_port << 32) | 1), 0x2C, 0);
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

    else if (v9.msgh_id == 1102)
    {
      v7 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
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

kern_return_t exception_raise(mach_port_t exception_port, mach_port_t thread, mach_port_t task, exception_type_t exception, exception_data_t code, mach_msg_type_number_t codeCnt)
{
  v16 = 0u;
  v19 = 0u;
  v14 = 2;
  v15 = thread;
  DWORD1(v16) = 1245184;
  DWORD2(v16) = task;
  v17 = 1245184;
  v18 = NDR_record;
  LODWORD(v19) = exception;
  if (codeCnt > 2)
  {
    return -307;
  }

  v9 = 4 * codeCnt;
  memmove(&v19 + 8, code, 4 * codeCnt);
  DWORD1(v19) = codeCnt;
  reply_port = mig_get_reply_port();
  v13.msgh_bits = -2147478253;
  v13.msgh_size = v9 + 68;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, exception_port);
  *&v13.msgh_voucher_port = 0x96100000000;
  v11 = mach_msg2_internal(&v13, 0x200000003, (((((v9 + 68) >> 2) & 0x1FFFFFFF) << 34) | 0x80001513), __PAIR64__(reply_port, exception_port), 0x96100000000, ((reply_port << 32) | 2), 0x2C, 0);
  v6 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (v11)
    {
      mig_dealloc_reply_port(v13.msgh_local_port);
      return v6;
    }

    if (v13.msgh_id == 71)
    {
      v6 = -308;
    }

    else if (v13.msgh_id == 2501)
    {
      v6 = -300;
      if ((v13.msgh_bits & 0x80000000) == 0 && v13.msgh_size == 36 && !v13.msgh_remote_port)
      {
        v6 = v16;
        if (!v16)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = -301;
    }

    mach_msg_destroy(&v13);
  }

  return v6;
}

kern_return_t exception_raise_state(mach_port_t exception_port, exception_type_t exception, const exception_data_t code, mach_msg_type_number_t codeCnt, int *flavor, const thread_state_t old_state, mach_msg_type_number_t old_stateCnt, thread_state_t new_state, mach_msg_type_number_t *new_stateCnt)
{
  memset(v29, 0, 480);
  memset(&reply_port, 0, sizeof(reply_port));
  v28 = NDR_record;
  LODWORD(v29[0]) = exception;
  if (codeCnt > 2)
  {
    return -307;
  }

  v15 = 4 * codeCnt;
  memmove(v29 + 8, code, v15);
  DWORD1(v29[0]) = codeCnt;
  v16 = &reply_port + v15;
  *(&reply_port + v15 + 40) = *flavor;
  if (old_stateCnt > 0x510)
  {
    return -307;
  }

  v19 = v16 - 8;
  memmove(v16 + 48, old_state, 4 * old_stateCnt);
  *(v19 + 13) = old_stateCnt;
  v20 = v15 + 4 * old_stateCnt + 48;
  v21 = mig_get_reply_port();
  reply_port.msgh_bits = 5395;
  reply_port.msgh_size = v20;
  *&reply_port.msgh_remote_port = __PAIR64__(v21, exception_port);
  *&reply_port.msgh_voucher_port = 0x96200000000;
  v22 = mach_msg2_internal(&reply_port, 0x200000003, ((v20 << 32) | 0x1513), __PAIR64__(v21, exception_port), 0x96200000000, (v21 << 32), 0x1474, 0);
  v17 = v22;
  if ((v22 - 268435458) > 0xE || ((1 << (v22 - 2)) & 0x4003) == 0)
  {
    if (v22)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v17;
    }

    if (reply_port.msgh_id == 71)
    {
      v17 = -308;
    }

    else if (reply_port.msgh_id == 2502)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size - 5229 <= 0xFFFFEBBE)
        {
          if (LODWORD(v29[0]))
          {
            v23 = reply_port.msgh_remote_port == 0;
          }

          else
          {
            v23 = 0;
          }

          if (v23 && reply_port.msgh_size == 36)
          {
            v17 = v29[0];
          }

          else
          {
            v17 = -300;
          }

          goto LABEL_26;
        }

        if (!reply_port.msgh_remote_port)
        {
          v17 = v29[0];
          if (LODWORD(v29[0]))
          {
            goto LABEL_26;
          }

          v25 = DWORD2(v29[0]);
          if (DWORD2(v29[0]) <= 0x510 && DWORD2(v29[0]) <= (reply_port.msgh_size - 44) >> 2)
          {
            v26 = 4 * DWORD2(v29[0]);
            if (reply_port.msgh_size == 4 * DWORD2(v29[0]) + 44)
            {
              *flavor = DWORD1(v29[0]);
              memmove(new_state, v29 + 12, v26);
              v17 = 0;
              *new_stateCnt = v25;
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

LABEL_26:
    mach_msg_destroy(&reply_port);
  }

  return v17;
}

kern_return_t exception_raise_state_identity(mach_port_t exception_port, mach_port_t thread, mach_port_t task, exception_type_t exception, exception_data_t code, mach_msg_type_number_t codeCnt, int *flavor, thread_state_t old_state, mach_msg_type_number_t old_stateCnt, thread_state_t new_state, mach_msg_type_number_t *new_stateCnt)
{
  memset(v33, 0, 448);
  v29 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v27 = 2;
  v28 = thread;
  DWORD1(v29) = 1245184;
  DWORD2(v29) = task;
  v30 = 1245184;
  v31 = NDR_record;
  v32 = exception;
  if (codeCnt > 2)
  {
    return -307;
  }

  v15 = 4 * codeCnt;
  memmove(v33 + 4, code, v15);
  LODWORD(v33[0]) = codeCnt;
  v16 = &reply_port + v15;
  *(&reply_port + v15 + 68) = *flavor;
  if (old_stateCnt > 0x510)
  {
    return -307;
  }

  v19 = v16 - 8;
  memmove(v16 + 76, old_state, 4 * old_stateCnt);
  *(v19 + 20) = old_stateCnt;
  v20 = mig_get_reply_port();
  reply_port.msgh_bits = -2147478253;
  reply_port.msgh_size = v15 + 4 * old_stateCnt + 76;
  *&reply_port.msgh_remote_port = __PAIR64__(v20, exception_port);
  *&reply_port.msgh_voucher_port = 0x96300000000;
  v21 = mach_msg2_internal(&reply_port, 0x200000003, ((reply_port.msgh_size << 32) | 0x80001513), __PAIR64__(v20, exception_port), 0x96300000000, (v27 | (v20 << 32)), 0x1474, 0);
  v17 = v21;
  if ((v21 - 268435458) > 0xE || ((1 << (v21 - 2)) & 0x4003) == 0)
  {
    if (v21)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v17;
    }

    if (reply_port.msgh_id == 71)
    {
      v17 = -308;
    }

    else if (reply_port.msgh_id == 2503)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size - 5229 <= 0xFFFFEBBE)
        {
          if (v29)
          {
            v22 = reply_port.msgh_remote_port == 0;
          }

          else
          {
            v22 = 0;
          }

          if (v22 && reply_port.msgh_size == 36)
          {
            v17 = v29;
          }

          else
          {
            v17 = -300;
          }

          goto LABEL_26;
        }

        if (!reply_port.msgh_remote_port)
        {
          v17 = v29;
          if (v29)
          {
            goto LABEL_26;
          }

          v24 = DWORD2(v29);
          if (DWORD2(v29) <= 0x510 && DWORD2(v29) <= (reply_port.msgh_size - 44) >> 2)
          {
            v25 = 4 * DWORD2(v29);
            if (reply_port.msgh_size == 4 * DWORD2(v29) + 44)
            {
              *flavor = DWORD1(v29);
              memmove(new_state, &v29 + 12, v25);
              v17 = 0;
              *new_stateCnt = v24;
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

LABEL_26:
    mach_msg_destroy(&reply_port);
  }

  return v17;
}

uint64_t _Xexception_raise_state_identity(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(result + 4);
  if (*(result + 24) != 2 || v3 - 5269 < 0xFFFFEBB7)
  {
    goto LABEL_6;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 50) << 16 != 1114112)
  {
    v5 = -300;
    goto LABEL_7;
  }

  v6 = *(result + 64);
  if (v6 > 2)
  {
    goto LABEL_6;
  }

  v5 = -304;
  if (v6 > (v3 - 76) >> 2)
  {
    goto LABEL_7;
  }

  v7 = 4 * v6;
  if (v3 < 4 * v6 + 76)
  {
    goto LABEL_7;
  }

  v8 = result + v7;
  v9 = *(v8 + 72);
  if (v9 > 0x510 || (v10 = v3 - v7, v9 > (v10 - 76) >> 2) || v10 != 4 * v9 + 76)
  {
LABEL_6:
    v5 = -304;
LABEL_7:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = 1296;
  v11 = v8 - 8;
  LODWORD(v12) = v9;
  result = internal_catch_exception_raise_state_identity(*(result + 12), *(result + 28), *(result + 40), *(result + 60), result + 68, v6, v8 + 68, v8 + 76, v12, a2 + 44, a2 + 40);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 36) = *(v11 + 76);
    *(a2 + 4) = 4 * *(a2 + 40) + 44;
  }

  return result;
}

_DWORD *_Xexception_raise_state(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  v3 = result[1];
  if (v3 - 5241 < 0xFFFFEBB7)
  {
    goto LABEL_14;
  }

  v4 = result[9];
  if (v4 > 2)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = v4 <= (v3 - 48) >> 2 && v3 >= ((4 * v4) | 0x30u);
  if (v6 && (v7 = &result[v5], v8 = *(v7 + 11), v8 <= 0x510) && ((v9 = v3 - v5 * 4, v8 <= (v9 - 48) >> 2) ? (v10 = v9 == 4 * v8 + 48) : (v10 = 0), v10))
  {
    v11 = v7 - 8;
    *(a2 + 40) = 1296;
    result = internal_catch_exception_raise_state(result[3], result[8], (result + 10), v4, (v7 + 40), (v7 + 48), v8, a2 + 44, a2 + 40);
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 36) = *(v11 + 12);
      *(a2 + 4) = 4 * *(a2 + 40) + 44;
    }
  }

  else
  {
LABEL_14:
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

uint64_t _Xexception_raise(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 4);
  if (*(a1 + 24) != 2 || (v3 - 77) < 0xFFFFFFF7)
  {
    goto LABEL_6;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 50) << 16 != 1114112)
  {
    result = 4294966996;
    goto LABEL_7;
  }

  v6 = *(a1 + 64);
  if (v6 <= 2 && v6 <= (v3 - 68) >> 2 && v3 == 4 * v6 + 68)
  {
    result = internal_catch_exception_raise(*(a1 + 12), *(a1 + 28), *(a1 + 40), *(a1 + 60), a1 + 68, v6);
  }

  else
  {
LABEL_6:
    result = 4294966992;
  }

LABEL_7:
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t (*exc_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 2404) >= 0xFFFFFFFD)
  {
    return internal_catch_exc_subsystem[5 * (v1 - 2401) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t exc_server(_DWORD *a1, uint64_t a2)
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
  if ((v4 - 2404) >= 0xFFFFFFFD && (v5 = internal_catch_exc_subsystem[5 * (v4 - 2401) + 5]) != 0)
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

kern_return_t host_get_boot_info(host_priv_t host_priv, kernel_boot_info_t boot_info)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x1800001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v13.msgh_voucher_port = 0x19000000000;
  v5 = mach_msg2_internal(&v13, 0x200000003, 0x1800001513, __PAIR64__(reply_port, host_priv), 0x19000000000, (reply_port << 32), 0x1034, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    return v6;
  }

  if (v5)
  {
    mig_dealloc_reply_port(v13.msgh_local_port);
    return v6;
  }

  if (v13.msgh_id == 71)
  {
    v6 = -308;
LABEL_22:
    mach_msg_destroy(&v13);
    return v6;
  }

  if (v13.msgh_id != 500)
  {
    v6 = -301;
    goto LABEL_22;
  }

  if ((v13.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  if (v13.msgh_size - 4141 <= 0xFFFFEFFE)
  {
    if (DWORD2(v14))
    {
      v7 = v13.msgh_remote_port == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7 && v13.msgh_size == 36)
    {
      v6 = DWORD2(v14);
    }

    else
    {
      v6 = -300;
    }

    goto LABEL_22;
  }

  if (v13.msgh_remote_port)
  {
LABEL_21:
    v6 = -300;
    goto LABEL_22;
  }

  v6 = DWORD2(v14);
  if (DWORD2(v14))
  {
    goto LABEL_22;
  }

  v6 = -300;
  if (LODWORD(v15[0]) > 0x1000 || v13.msgh_size - 44 < LODWORD(v15[0]) || v13.msgh_size != ((LOWORD(v15[0]) + 3) & 0x3FFC) + 44)
  {
    goto LABEL_22;
  }

  v10 = v15 + 4;
  v11 = 4095;
  while (1)
  {
    v12 = *v10;
    *boot_info = v12;
    if (!v12)
    {
      break;
    }

    ++boot_info;
    ++v10;
    if (!--v11)
    {
      v6 = 0;
      *boot_info = 0;
      return v6;
    }
  }

  return 0;
}

kern_return_t host_reboot(host_priv_t host_priv, int options)
{
  v11 = 0;
  v9 = NDR_record;
  v10 = options;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2400001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v8.msgh_voucher_port = 0x19100000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2400001513, __PAIR64__(reply_port, host_priv), 0x19100000000, (reply_port << 32), 0x2C, 0);
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

    else if (v8.msgh_id == 501)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v10;
        if (!v10)
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

kern_return_t host_priv_statistics(host_priv_t host_priv, host_flavor_t flavor, host_info_t host_info_out, mach_msg_type_number_t *host_info_outCnt)
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
  *&v16.msgh_voucher_port = 0x19200000000;
  v9 = mach_msg2_internal(&v16, 0x200000003, 0x2800001513, __PAIR64__(reply_port, host_priv), 0x19200000000, (reply_port << 32), 0x140, 0);
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

    else if (v16.msgh_id == 502)
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

kern_return_t host_default_memory_manager(host_priv_t host_priv, memory_object_default_t *default_manager, memory_object_cluster_size_t cluster_size)
{
  v5 = *default_manager;
  v11 = 1;
  v12 = v5;
  v13 = 0x14000000000000;
  v14 = NDR_record;
  v15 = cluster_size;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3480001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v10.msgh_voucher_port = 0x19300000000;
  v7 = mach_msg2_internal(&v10, 0x200000003, 0x3480001513, __PAIR64__(reply_port, host_priv), 0x19300000000, ((reply_port << 32) | 1), 0x30, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v10.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v10.msgh_id == 503)
      {
        if ((v10.msgh_bits & 0x80000000) == 0)
        {
          if (v10.msgh_size == 36)
          {
            v8 = -300;
            if (v13)
            {
              if (v10.msgh_remote_port)
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

          goto LABEL_21;
        }

        v8 = -300;
        if (v11 == 1 && v10.msgh_size == 40 && !v10.msgh_remote_port && HIWORD(v13) << 16 == 1114112)
        {
          v8 = 0;
          *default_manager = v12;
          return v8;
        }
      }

      else
      {
        v8 = -301;
      }

LABEL_21:
      mach_msg_destroy(&v10);
      return v8;
    }

    mig_dealloc_reply_port(v10.msgh_local_port);
  }

  return v8;
}

kern_return_t vm_wire(host_priv_t host_priv, vm_map_t task, vm_address_t address, vm_size_t size, vm_prot_t desired_access)
{
  v11 = 1;
  v12 = task;
  v13 = 0x13000000000000;
  v14 = NDR_record;
  v15 = address;
  v16 = size;
  v17 = desired_access;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x4480001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v10.msgh_voucher_port = 0x19400000000;
  v7 = mach_msg2_internal(&v10, 0x200000003, 0x4480001513, __PAIR64__(reply_port, host_priv), 0x19400000000, ((reply_port << 32) | 1), 0x2C, 0);
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

    else if (v10.msgh_id == 504)
    {
      v8 = -300;
      if ((v10.msgh_bits & 0x80000000) == 0 && v10.msgh_size == 36 && !v10.msgh_remote_port)
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

kern_return_t thread_wire(host_priv_t host_priv, thread_act_t thread, BOOLean_t wired)
{
  v10 = 1;
  v11 = thread;
  v12 = 0x13000000000000;
  v13 = NDR_record;
  v14 = wired;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x3480001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v9.msgh_voucher_port = 0x19500000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x3480001513, __PAIR64__(reply_port, host_priv), 0x19500000000, ((reply_port << 32) | 1), 0x2C, 0);
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

    else if (v9.msgh_id == 505)
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

kern_return_t vm_allocate_cpm(host_priv_t host_priv, vm_map_t task, vm_address_t *address, vm_size_t size, int flags)
{
  v14 = 1;
  v15 = task;
  *&v16 = 0x13000000000000;
  v7 = *address;
  *(&v16 + 1) = NDR_record;
  v17 = v7;
  v18 = size;
  v19 = flags;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x4480001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v13.msgh_voucher_port = 0x19600000000;
  v9 = mach_msg2_internal(&v13, 0x200000003, 0x4480001513, __PAIR64__(reply_port, host_priv), 0x19600000000, ((reply_port << 32) | 1), 0x34, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (v13.msgh_id == 71)
      {
        v10 = -308;
      }

      else if (v13.msgh_id == 506)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 44)
          {
            if (!v13.msgh_remote_port)
            {
              v10 = v16;
              if (!v16)
              {
                *address = *(&v16 + 4);
                return v10;
              }

              goto LABEL_20;
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
              v11 = v16 == 0;
            }

            if (v11)
            {
              v10 = -300;
            }

            else
            {
              v10 = v16;
            }

            goto LABEL_20;
          }
        }

        v10 = -300;
      }

      else
      {
        v10 = -301;
      }

LABEL_20:
      mach_msg_destroy(&v13);
      return v10;
    }

    mig_dealloc_reply_port(v13.msgh_local_port);
  }

  return v10;
}

kern_return_t host_processors(host_priv_t host_priv, processor_array_t *out_processor_list, mach_msg_type_number_t *out_processor_listCnt)
{
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x1800001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v12.msgh_voucher_port = 0x19700000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x1800001513, __PAIR64__(reply_port, host_priv), 0x19700000000, (reply_port << 32), 0x40, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v12.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v12.msgh_id == 507)
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
              *out_processor_list = *(&v13 + 4);
              *out_processor_listCnt = v10;
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

kern_return_t host_get_clock_control(host_priv_t host_priv, clock_id_t clock_id, clock_ctrl_t *clock_ctrl)
{
  v14 = 0;
  v13 = 0;
  v11 = NDR_record;
  v12 = clock_id;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x2400001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v10.msgh_voucher_port = 0x19800000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x2400001513, __PAIR64__(reply_port, host_priv), 0x19800000000, (reply_port << 32), 0x30, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (v10.msgh_id == 71)
      {
        v7 = -308;
      }

      else if (v10.msgh_id == 508)
      {
        if ((v10.msgh_bits & 0x80000000) != 0)
        {
          v7 = -300;
          if (*&v11.mig_vers == 1 && *&v10.msgh_size == 40 && WORD1(v13) << 16 == 1114112)
          {
            v7 = 0;
            *clock_ctrl = *&v11.int_rep;
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

kern_return_t kmod_create(host_priv_t host_priv, vm_address_t info, kmod_t *module)
{
  v13 = info;
  v14 = 0;
  v12 = NDR_record;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x2800001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v11.msgh_voucher_port = 0x19900000000;
  v6 = mach_msg2_internal(&v11, 0x200000003, 0x2800001513, __PAIR64__(reply_port, host_priv), 0x19900000000, (reply_port << 32), 0x30, 0);
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
      v7 = -308;
    }

    else if (v11.msgh_id == 509)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 40)
        {
          if (!v11.msgh_remote_port)
          {
            v7 = v13;
            if (!v13)
            {
              *module = HIDWORD(v13);
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
            v7 = -300;
          }

          else
          {
            v7 = v13;
          }

          goto LABEL_23;
        }
      }

      v7 = -300;
    }

    else
    {
      v7 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v11);
  }

  return v7;
}

kern_return_t kmod_destroy(host_priv_t host_priv, kmod_t module)
{
  v11 = 0;
  v9 = NDR_record;
  v10 = module;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2400001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v8.msgh_voucher_port = 0x19A00000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2400001513, __PAIR64__(reply_port, host_priv), 0x19A00000000, (reply_port << 32), 0x2C, 0);
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

    else if (v8.msgh_id == 510)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v10;
        if (!v10)
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

kern_return_t kmod_control(host_priv_t host_priv, kmod_t module, kmod_control_flavor_t flavor, kmod_args_t *data, mach_msg_type_number_t *dataCnt)
{
  v15 = 1;
  v16 = *data;
  v8 = *dataCnt;
  v17 = 16777472;
  v18 = v8;
  v19 = NDR_record;
  v20 = module;
  v21 = flavor;
  v22 = v8;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x4080001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v14.msgh_voucher_port = 0x19B00000000;
  v10 = mach_msg2_internal(&v14, 0x200000003, 0x4080001513, __PAIR64__(reply_port, host_priv), 0x19B00000000, ((reply_port << 32) | 1), 0x40, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (v14.msgh_id == 71)
      {
        v11 = -308;
      }

      else if (v14.msgh_id == 511)
      {
        if ((v14.msgh_bits & 0x80000000) == 0)
        {
          if (v14.msgh_size == 36)
          {
            v11 = -300;
            if (HIDWORD(v16))
            {
              if (v14.msgh_remote_port)
              {
                v11 = -300;
              }

              else
              {
                v11 = HIDWORD(v16);
              }
            }
          }

          else
          {
            v11 = -300;
          }

          goto LABEL_21;
        }

        v11 = -300;
        if (v15 == 1 && *&v14.msgh_size == 56 && HIBYTE(v17) == 1)
        {
          v12 = v18;
          if (v18 == v20)
          {
            v11 = 0;
            *data = v16;
            *dataCnt = v12;
            return v11;
          }
        }
      }

      else
      {
        v11 = -301;
      }

LABEL_21:
      mach_msg_destroy(&v14);
      return v11;
    }

    mig_dealloc_reply_port(v14.msgh_local_port);
  }

  return v11;
}

kern_return_t host_set_special_port(host_priv_t host_priv, int which, mach_port_t port)
{
  v10 = 1;
  v11 = port;
  v12 = 0x13000000000000;
  v13 = NDR_record;
  v14 = which;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x3480001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v9.msgh_voucher_port = 0x19D00000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x3480001513, __PAIR64__(reply_port, host_priv), 0x19D00000000, ((reply_port << 32) | 1), 0x2C, 0);
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

    else if (v9.msgh_id == 513)
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

kern_return_t host_set_exception_ports(host_priv_t host_priv, exception_mask_t exception_mask, mach_port_t new_port, exception_behavior_t behavior, thread_state_flavor_t new_flavor)
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
  *&v10.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v10.msgh_voucher_port = 0x19E00000000;
  v7 = mach_msg2_internal(&v10, 0x200000003, 0x3C80001513, __PAIR64__(reply_port, host_priv), 0x19E00000000, ((reply_port << 32) | 1), 0x2C, 0);
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

    else if (v10.msgh_id == 514)
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

kern_return_t host_get_exception_ports(host_priv_t host_priv, exception_mask_t exception_mask, exception_mask_array_t masks, mach_msg_type_number_t *masksCnt, exception_handler_array_t old_handlers, exception_behavior_array_t old_behaviors, exception_flavor_array_t old_flavors)
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
  *&v26.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v26.msgh_voucher_port = 0x19F00000000;
  v14 = mach_msg2_internal(&v26, 0x200000003, 0x2400001513, __PAIR64__(reply_port, host_priv), 0x19F00000000, (reply_port << 32), 0x330, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (v26.msgh_id == 71)
      {
        v15 = -308;
      }

      else if (v26.msgh_id == 515)
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

kern_return_t host_swap_exception_ports(host_priv_t host_priv, exception_mask_t exception_mask, mach_port_t new_port, exception_behavior_t behavior, thread_state_flavor_t new_flavor, exception_mask_array_t masks, mach_msg_type_number_t *masksCnt, exception_handler_array_t old_handlerss, exception_behavior_array_t old_behaviors, exception_flavor_array_t old_flavors)
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
  *&v27.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v27.msgh_voucher_port = 0x1A000000000;
  v15 = mach_msg2_internal(&v27, 0x200000003, 0x3C80001513, __PAIR64__(reply_port, host_priv), 0x1A000000000, ((reply_port << 32) | 1), 0x330, 0);
  v16 = v15;
  if ((v15 - 268435458) > 0xE || ((1 << (v15 - 2)) & 0x4003) == 0)
  {
    if (!v15)
    {
      if (v27.msgh_id == 71)
      {
        v16 = -308;
      }

      else if (v27.msgh_id == 516)
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
                          *old_handlerss++ = v26;
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

kern_return_t mach_vm_wire(host_priv_t host_priv, vm_map_t task, mach_vm_address_t address, mach_vm_size_t size, vm_prot_t desired_access)
{
  v11 = 1;
  v12 = task;
  v13 = 0x13000000000000;
  v14 = NDR_record;
  v15 = address;
  v16 = size;
  v17 = desired_access;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x4480001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v10.msgh_voucher_port = 0x1A200000000;
  v7 = mach_msg2_internal(&v10, 0x200000003, 0x4480001513, __PAIR64__(reply_port, host_priv), 0x1A200000000, ((reply_port << 32) | 1), 0x2C, 0);
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

    else if (v10.msgh_id == 518)
    {
      v8 = -300;
      if ((v10.msgh_bits & 0x80000000) == 0 && v10.msgh_size == 36 && !v10.msgh_remote_port)
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

kern_return_t host_set_UNDServer(host_priv_t host, UNDServerRef server)
{
  v11 = 0x13000000000000;
  v9 = 1;
  v10 = server;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2880001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v8.msgh_voucher_port = 0x1A700000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2880001513, __PAIR64__(reply_port, host), 0x1A700000000, ((reply_port << 32) | 1), 0x2C, 0);
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

    else if (v8.msgh_id == 523)
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

kern_return_t host_get_UNDServer(host_priv_t host, UNDServerRef *server)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x1800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v9.msgh_voucher_port = 0x1A800000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x1800001513, __PAIR64__(reply_port, host), 0x1A800000000, (reply_port << 32), 0x30, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (v9.msgh_id == 71)
      {
        v6 = -308;
      }

      else if (v9.msgh_id == 524)
      {
        if ((v9.msgh_bits & 0x80000000) != 0)
        {
          v6 = -300;
          if (v10 == 1 && *&v9.msgh_size == 40 && HIWORD(v11) << 16 == 1114112)
          {
            v6 = 0;
            *server = HIDWORD(v10);
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

kern_return_t host_security_create_task_token(host_security_t host_security, task_t parent_task, security_token_t sec_token, audit_token_t *audit_token, host_t host, ledger_array_t ledgers, mach_msg_type_number_t ledgersCnt, BOOLean_t inherit_memory, task_t *child_task)
{
  v10 = *&audit_token->val[4];
  v26 = *audit_token->val;
  v18 = 0x13000000000000;
  v16 = 3;
  v17 = parent_task;
  v19 = host;
  v20 = 1245184;
  v21 = ledgers;
  v22 = 34799616;
  v23 = ledgersCnt;
  v24 = NDR_record;
  v25 = sec_token;
  v27 = v10;
  v28 = ledgersCnt;
  v29 = inherit_memory;
  reply_port = mig_get_reply_port();
  *&v15.msgh_bits = 0x7C80001513;
  *&v15.msgh_remote_port = __PAIR64__(reply_port, host_security);
  *&v15.msgh_voucher_port = 0x25800000000;
  v12 = mach_msg2_internal(&v15, 0x200000003, 0x7C80001513, __PAIR64__(reply_port, host_security), 0x25800000000, ((reply_port << 32) | 3), 0x30, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (v15.msgh_id == 71)
      {
        v13 = -308;
      }

      else if (v15.msgh_id == 700)
      {
        if ((v15.msgh_bits & 0x80000000) == 0)
        {
          if (v15.msgh_size == 36)
          {
            v13 = -300;
            if (v18)
            {
              if (v15.msgh_remote_port)
              {
                v13 = -300;
              }

              else
              {
                v13 = v18;
              }
            }
          }

          else
          {
            v13 = -300;
          }

          goto LABEL_20;
        }

        v13 = -300;
        if (v16 == 1 && *&v15.msgh_size == 40 && HIWORD(v18) << 16 == 1114112)
        {
          v13 = 0;
          *child_task = v17;
          return v13;
        }
      }

      else
      {
        v13 = -301;
      }

LABEL_20:
      mach_msg_destroy(&v15);
      return v13;
    }

    mig_dealloc_reply_port(v15.msgh_local_port);
  }

  return v13;
}

kern_return_t host_security_set_task_token(host_security_t host_security, task_t target_task, security_token_t sec_token, audit_token_t *audit_token, host_t host)
{
  v6 = *&audit_token->val[4];
  v19 = *audit_token->val;
  v14 = 0x13000000000000;
  v12 = 2;
  v13 = target_task;
  v15 = host;
  v16 = 1245184;
  v17 = NDR_record;
  v18 = sec_token;
  v20 = v6;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x6480001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, host_security);
  *&v11.msgh_voucher_port = 0x25900000000;
  v8 = mach_msg2_internal(&v11, 0x200000003, 0x6480001513, __PAIR64__(reply_port, host_security), 0x25900000000, ((reply_port << 32) | 2), 0x2C, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v9;
    }

    if (v11.msgh_id == 71)
    {
      v9 = -308;
    }

    else if (v11.msgh_id == 701)
    {
      v9 = -300;
      if ((v11.msgh_bits & 0x80000000) == 0 && v11.msgh_size == 36 && !v11.msgh_remote_port)
      {
        v9 = v14;
        if (!v14)
        {
          return v9;
        }
      }
    }

    else
    {
      v9 = -301;
    }

    mach_msg_destroy(&v11);
  }

  return v9;
}

kern_return_t host_kernel_version(host_t host, kernel_version_t kernel_version)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x1800001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v13.msgh_voucher_port = 0xC900000000;
  v5 = mach_msg2_internal(&v13, 0x200000003, 0x1800001513, __PAIR64__(reply_port, host), 0xC900000000, (reply_port << 32), 0x234, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    return v6;
  }

  if (v5)
  {
    mig_dealloc_reply_port(v13.msgh_local_port);
    return v6;
  }

  if (v13.msgh_id == 71)
  {
    v6 = -308;
LABEL_22:
    mach_msg_destroy(&v13);
    return v6;
  }

  if (v13.msgh_id != 301)
  {
    v6 = -301;
    goto LABEL_22;
  }

  if ((v13.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  if (v13.msgh_size - 557 <= 0xFFFFFDFE)
  {
    if (DWORD2(v14))
    {
      v7 = v13.msgh_remote_port == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7 && v13.msgh_size == 36)
    {
      v6 = DWORD2(v14);
    }

    else
    {
      v6 = -300;
    }

    goto LABEL_22;
  }

  if (v13.msgh_remote_port)
  {
LABEL_21:
    v6 = -300;
    goto LABEL_22;
  }

  v6 = DWORD2(v14);
  if (DWORD2(v14))
  {
    goto LABEL_22;
  }

  v6 = -300;
  if (LODWORD(v15[0]) > 0x200 || v13.msgh_size - 44 < LODWORD(v15[0]) || v13.msgh_size != ((LOWORD(v15[0]) + 3) & 0x7FC) + 44)
  {
    goto LABEL_22;
  }

  v10 = v15 + 4;
  v11 = 511;
  while (1)
  {
    v12 = *v10;
    *kernel_version = v12;
    if (!v12)
    {
      break;
    }

    ++kernel_version;
    ++v10;
    if (!--v11)
    {
      v6 = 0;
      *kernel_version = 0;
      return v6;
    }
  }

  return 0;
}

kern_return_t _host_page_size(host_t host, vm_size_t *out_page_size)
{
  v11 = 0;
  v12 = 0uLL;
  v13 = 0;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x1800001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v10.msgh_voucher_port = 0xCA00000000;
  v5 = mach_msg2_internal(&v10, 0x200000003, 0x1800001513, __PAIR64__(reply_port, host), 0xCA00000000, (reply_port << 32), 0x34, 0);
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

    else if (v10.msgh_id == 302)
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
              *out_page_size = *(&v12 + 4);
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

kern_return_t mach_memory_object_memory_entry(host_t host, BOOLean_t internal, vm_size_t size, vm_prot_t permission, memory_object_t pager, mach_port_t *entry_handle)
{
  v13 = 1;
  v14 = pager;
  v15 = 0x13000000000000;
  v16 = NDR_record;
  v17 = internal;
  v18 = size;
  v19 = permission;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x4080001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v12.msgh_voucher_port = 0xCB00000000;
  v9 = mach_msg2_internal(&v12, 0x200000003, 0x4080001513, __PAIR64__(reply_port, host), 0xCB00000000, ((reply_port << 32) | 1), 0x30, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (v12.msgh_id == 71)
      {
        v10 = -308;
      }

      else if (v12.msgh_id == 303)
      {
        if ((v12.msgh_bits & 0x80000000) == 0)
        {
          if (v12.msgh_size == 36)
          {
            v10 = -300;
            if (v15)
            {
              if (v12.msgh_remote_port)
              {
                v10 = -300;
              }

              else
              {
                v10 = v15;
              }
            }
          }

          else
          {
            v10 = -300;
          }

          goto LABEL_20;
        }

        v10 = -300;
        if (v13 == 1 && *&v12.msgh_size == 40 && HIWORD(v15) << 16 == 1114112)
        {
          v10 = 0;
          *entry_handle = v14;
          return v10;
        }
      }

      else
      {
        v10 = -301;
      }

LABEL_20:
      mach_msg_destroy(&v12);
      return v10;
    }

    mig_dealloc_reply_port(v12.msgh_local_port);
  }

  return v10;
}

kern_return_t host_processor_info(host_t host, processor_flavor_t flavor, natural_t *out_processor_count, processor_info_array_t *out_processor_info, mach_msg_type_number_t *out_processor_infoCnt)
{
  v18 = 0u;
  v17 = 0u;
  *v16 = NDR_record;
  *&v16[8] = flavor;
  reply_port = mig_get_reply_port();
  *&v15.msgh_bits = 0x2400001513;
  *&v15.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v15.msgh_voucher_port = 0xCC00000000;
  v10 = mach_msg2_internal(&v15, 0x200000003, 0x2400001513, __PAIR64__(reply_port, host), 0xCC00000000, (reply_port << 32), 0x44, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (v15.msgh_id == 71)
      {
        v11 = -308;
      }

      else if (v15.msgh_id == 304)
      {
        if ((v15.msgh_bits & 0x80000000) != 0)
        {
          v11 = -300;
          if (*v16 == 1 && v15.msgh_size == 60 && !v15.msgh_remote_port && BYTE3(v17) == 1)
          {
            v13 = DWORD1(v17) >> 2;
            if (DWORD1(v17) >> 2 == DWORD1(v18))
            {
              v11 = 0;
              *out_processor_count = v18;
              *out_processor_info = *&v16[4];
              *out_processor_infoCnt = v13;
              return v11;
            }
          }
        }

        else if (v15.msgh_size == 36)
        {
          v11 = -300;
          if (*&v16[8])
          {
            if (v15.msgh_remote_port)
            {
              v11 = -300;
            }

            else
            {
              v11 = *&v16[8];
            }
          }
        }

        else
        {
          v11 = -300;
        }
      }

      else
      {
        v11 = -301;
      }

      mach_msg_destroy(&v15);
      return v11;
    }

    mig_dealloc_reply_port(v15.msgh_local_port);
  }

  return v11;
}

kern_return_t kmod_get_info(host_t host, kmod_args_t *modules, mach_msg_type_number_t *modulesCnt)
{
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x1800001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v12.msgh_voucher_port = 0xCF00000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x1800001513, __PAIR64__(reply_port, host), 0xCF00000000, (reply_port << 32), 0x40, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v12.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v12.msgh_id == 307)
      {
        if ((v12.msgh_bits & 0x80000000) != 0)
        {
          v8 = -300;
          if (v13 == 1 && *&v12.msgh_size == 56 && HIBYTE(v13) == 1)
          {
            v10 = v14;
            if (v14 == HIDWORD(v14))
            {
              v8 = 0;
              *modules = *(&v13 + 4);
              *modulesCnt = v10;
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

kern_return_t host_virtual_physical_table_info(host_t host, hash_info_bucket_array_t *info, mach_msg_type_number_t *infoCnt)
{
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x1800001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v12.msgh_voucher_port = 0xD100000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x1800001513, __PAIR64__(reply_port, host), 0xD100000000, (reply_port << 32), 0x40, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v12.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v12.msgh_id == 309)
      {
        if ((v12.msgh_bits & 0x80000000) != 0)
        {
          v8 = -300;
          if (v13 == 1 && *&v12.msgh_size == 56 && HIBYTE(v13) == 1)
          {
            v10 = v14 >> 2;
            if (v14 >> 2 == HIDWORD(v14))
            {
              v8 = 0;
              *info = *(&v13 + 4);
              *infoCnt = v10;
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

kern_return_t processor_set_default(host_t host, processor_set_name_t *default_set)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x1800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v9.msgh_voucher_port = 0xD500000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x1800001513, __PAIR64__(reply_port, host), 0xD500000000, (reply_port << 32), 0x30, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (v9.msgh_id == 71)
      {
        v6 = -308;
      }

      else if (v9.msgh_id == 313)
      {
        if ((v9.msgh_bits & 0x80000000) != 0)
        {
          v6 = -300;
          if (v10 == 1 && *&v9.msgh_size == 40 && HIWORD(v11) << 16 == 1114112)
          {
            v6 = 0;
            *default_set = HIDWORD(v10);
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

kern_return_t processor_set_create(host_t host, processor_set_t *new_set, processor_set_name_t *new_name)
{
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x1800001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v12.msgh_voucher_port = 0xD600000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x1800001513, __PAIR64__(reply_port, host), 0xD600000000, (reply_port << 32), 0x3C, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v12.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v12.msgh_id == 314)
      {
        if ((v12.msgh_bits & 0x80000000) != 0)
        {
          v8 = -300;
          if (v13 == 2 && *&v12.msgh_size == 52 && HIWORD(v13) << 16 == 1114112 && WORD5(v14) << 16 == 1114112)
          {
            v8 = 0;
            v10 = v14;
            *new_set = DWORD1(v13);
            *new_name = v10;
            return v8;
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

kern_return_t mach_memory_object_memory_entry_64(host_t host, BOOLean_t internal, memory_object_size_t size, vm_prot_t permission, memory_object_t pager, mach_port_t *entry_handle)
{
  v13 = 1;
  v14 = pager;
  v15 = 0x13000000000000;
  v16 = NDR_record;
  v17 = internal;
  v18 = size;
  v19 = permission;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x4080001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v12.msgh_voucher_port = 0xD700000000;
  v9 = mach_msg2_internal(&v12, 0x200000003, 0x4080001513, __PAIR64__(reply_port, host), 0xD700000000, ((reply_port << 32) | 1), 0x30, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (v12.msgh_id == 71)
      {
        v10 = -308;
      }

      else if (v12.msgh_id == 315)
      {
        if ((v12.msgh_bits & 0x80000000) == 0)
        {
          if (v12.msgh_size == 36)
          {
            v10 = -300;
            if (v15)
            {
              if (v12.msgh_remote_port)
              {
                v10 = -300;
              }

              else
              {
                v10 = v15;
              }
            }
          }

          else
          {
            v10 = -300;
          }

          goto LABEL_20;
        }

        v10 = -300;
        if (v13 == 1 && *&v12.msgh_size == 40 && HIWORD(v15) << 16 == 1114112)
        {
          v10 = 0;
          *entry_handle = v14;
          return v10;
        }
      }

      else
      {
        v10 = -301;
      }

LABEL_20:
      mach_msg_destroy(&v12);
      return v10;
    }

    mig_dealloc_reply_port(v12.msgh_local_port);
  }

  return v10;
}

kern_return_t host_lockgroup_info(host_t host, lockgroup_info_array_t *lockgroup_info, mach_msg_type_number_t *lockgroup_infoCnt)
{
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x1800001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v12.msgh_voucher_port = 0xDA00000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x1800001513, __PAIR64__(reply_port, host), 0xDA00000000, (reply_port << 32), 0x40, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v12.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v12.msgh_id == 318)
      {
        if ((v12.msgh_bits & 0x80000000) != 0)
        {
          v8 = -300;
          if (v13 == 1 && *&v12.msgh_size == 56 && HIBYTE(v13) == 1)
          {
            v10 = v14 / 0x108;
            if (v14 / 0x108 == HIDWORD(v14))
            {
              v8 = 0;
              *lockgroup_info = *(&v13 + 4);
              *lockgroup_infoCnt = v10;
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

kern_return_t mach_zone_info(mach_port_t host, mach_zone_name_array_t *names, mach_msg_type_number_t *namesCnt, mach_zone_info_array_t *info, mach_msg_type_number_t *infoCnt)
{
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  reply_port = mig_get_reply_port();
  *&v17.msgh_bits = 0x1800001513;
  *&v17.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v17.msgh_voucher_port = 0xDC00000000;
  v11 = mach_msg2_internal(&v17, 0x200000003, 0x1800001513, __PAIR64__(reply_port, host), 0xDC00000000, (reply_port << 32), 0x54, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (v17.msgh_id == 71)
      {
        v12 = -308;
      }

      else if (v17.msgh_id == 320)
      {
        if ((v17.msgh_bits & 0x80000000) != 0)
        {
          v12 = -300;
          if (v18 == 2 && v17.msgh_size == 76 && !v17.msgh_remote_port && HIBYTE(v18) == 1 && HIBYTE(v19) == 1)
          {
            v14 = v19 / 0x50;
            if (v19 / 0x50 == v20[3])
            {
              v15 = v20[0] >> 6;
              if (v20[0] >> 6 == v20[4])
              {
                v12 = 0;
                *names = *(&v18 + 4);
                *namesCnt = v14;
                *info = *(&v19 + 4);
                *infoCnt = v15;
                return v12;
              }
            }
          }
        }

        else if (v17.msgh_size == 36)
        {
          v12 = -300;
          if (DWORD2(v18))
          {
            if (v17.msgh_remote_port)
            {
              v12 = -300;
            }

            else
            {
              v12 = DWORD2(v18);
            }
          }
        }

        else
        {
          v12 = -300;
        }
      }

      else
      {
        v12 = -301;
      }

      mach_msg_destroy(&v17);
      return v12;
    }

    mig_dealloc_reply_port(v17.msgh_local_port);
  }

  return v12;
}

uint64_t mach_zone_force_gc(unsigned int a1)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001513;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v7.msgh_voucher_port = 0xDD00000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001513, __PAIR64__(reply_port, a1), 0xDD00000000, (reply_port << 32), 0x2C, 0);
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

    else if (v7.msgh_id == 321)
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

uint64_t _kernelrpc_host_create_mach_voucher(unsigned int a1, const void *a2, size_t __n, _DWORD *a4)
{
  v13 = NDR_record;
  if (__n > 0x1400)
  {
    return 4294966989;
  }

  v6 = __n;
  memset(v15, 0, 476);
  memmove(v15, a2, __n);
  v14 = v6;
  v8 = ((v6 + 3) & 0x3FFCu) + 36;
  reply_port = mig_get_reply_port();
  v12.msgh_bits = 5395;
  v12.msgh_size = v8;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v12.msgh_voucher_port = 0xDE00000000;
  v10 = mach_msg2_internal(&v12, 0x200000003, ((((v8 >> 2) & 0x1FFF) << 34) | 0x1513), __PAIR64__(reply_port, a1), 0xDE00000000, (reply_port << 32), 0x30, 0);
  v4 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (v12.msgh_id == 71)
      {
        v4 = 4294966988;
      }

      else if (v12.msgh_id == 322)
      {
        if ((v12.msgh_bits & 0x80000000) != 0)
        {
          v4 = 4294966996;
          if (*&v13.mig_vers == 1 && v12.msgh_size == 40 && !v12.msgh_remote_port && WORD1(v15[0]) << 16 == 1114112)
          {
            v4 = 0;
            *a4 = *&v13.int_rep;
            return v4;
          }
        }

        else if (v12.msgh_size == 36)
        {
          v4 = 4294966996;
          if (v14)
          {
            if (v12.msgh_remote_port)
            {
              v4 = 4294966996;
            }

            else
            {
              v4 = v14;
            }
          }
        }

        else
        {
          v4 = 4294966996;
        }
      }

      else
      {
        v4 = 4294966995;
      }

      mach_msg_destroy(&v12);
      return v4;
    }

    mig_dealloc_reply_port(v12.msgh_local_port);
  }

  return v4;
}

kern_return_t host_register_mach_voucher_attr_manager(host_t host, mach_voucher_attr_manager_t attr_manager, mach_voucher_attr_value_handle_t default_value, mach_voucher_attr_key_t *new_key, ipc_voucher_attr_control_t *new_attr_control)
{
  v14 = 1;
  v15 = attr_manager;
  v16 = 0x13000000000000;
  v17 = NDR_record;
  v19 = 0;
  v18 = default_value;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x3880001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v13.msgh_voucher_port = 0xDF00000000;
  v9 = mach_msg2_internal(&v13, 0x200000003, 0x3880001513, __PAIR64__(reply_port, host), 0xDF00000000, ((reply_port << 32) | 1), 0x3C, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (v13.msgh_id == 71)
      {
        v10 = -308;
      }

      else if (v13.msgh_id == 323)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 36)
          {
            v10 = -300;
            if (v16)
            {
              if (v13.msgh_remote_port)
              {
                v10 = -300;
              }

              else
              {
                v10 = v16;
              }
            }
          }

          else
          {
            v10 = -300;
          }

          goto LABEL_20;
        }

        v10 = -300;
        if (v14 == 1 && *&v13.msgh_size == 52 && HIWORD(v16) << 16 == 1114112)
        {
          v10 = 0;
          v11 = v15;
          *new_key = v18;
          *new_attr_control = v11;
          return v10;
        }
      }

      else
      {
        v10 = -301;
      }

LABEL_20:
      mach_msg_destroy(&v13);
      return v10;
    }

    mig_dealloc_reply_port(v13.msgh_local_port);
  }

  return v10;
}

kern_return_t host_register_well_known_mach_voucher_attr_manager(host_t host, mach_voucher_attr_manager_t attr_manager, mach_voucher_attr_value_handle_t default_value, mach_voucher_attr_key_t key, ipc_voucher_attr_control_t *new_attr_control)
{
  v12 = 1;
  v13 = attr_manager;
  v14 = 0x13000000000000;
  v15 = NDR_record;
  v16 = default_value;
  v17 = key;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x3C80001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v11.msgh_voucher_port = 0xE000000000;
  v8 = mach_msg2_internal(&v11, 0x200000003, 0x3C80001513, __PAIR64__(reply_port, host), 0xE000000000, ((reply_port << 32) | 1), 0x30, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v11.msgh_id == 71)
      {
        v9 = -308;
      }

      else if (v11.msgh_id == 324)
      {
        if ((v11.msgh_bits & 0x80000000) == 0)
        {
          if (v11.msgh_size == 36)
          {
            v9 = -300;
            if (v14)
            {
              if (v11.msgh_remote_port)
              {
                v9 = -300;
              }

              else
              {
                v9 = v14;
              }
            }
          }

          else
          {
            v9 = -300;
          }

          goto LABEL_20;
        }

        v9 = -300;
        if (v12 == 1 && *&v11.msgh_size == 40 && HIWORD(v14) << 16 == 1114112)
        {
          v9 = 0;
          *new_attr_control = v13;
          return v9;
        }
      }

      else
      {
        v9 = -301;
      }

LABEL_20:
      mach_msg_destroy(&v11);
      return v9;
    }

    mig_dealloc_reply_port(v11.msgh_local_port);
  }

  return v9;
}

kern_return_t host_set_atm_diagnostic_flag(host_t host, uint32_t diagnostic_flag)
{
  v11 = 0;
  v9 = NDR_record;
  v10 = diagnostic_flag;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2400001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v8.msgh_voucher_port = 0xE100000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2400001513, __PAIR64__(reply_port, host), 0xE100000000, (reply_port << 32), 0x2C, 0);
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

    else if (v8.msgh_id == 325)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v10;
        if (!v10)
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

kern_return_t mach_memory_info(mach_port_t host, mach_zone_name_array_t *names, mach_msg_type_number_t *namesCnt, mach_zone_info_array_t *info, mach_msg_type_number_t *infoCnt, mach_memory_info_array_t *memory_info, mach_msg_type_number_t *memory_infoCnt)
{
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  reply_port = mig_get_reply_port();
  *&v22.msgh_bits = 0x1800001513;
  *&v22.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v22.msgh_voucher_port = 0xE300000000;
  v15 = mach_msg2_internal(&v22, 0x200000003, 0x1800001513, __PAIR64__(reply_port, host), 0xE300000000, (reply_port << 32), 0x68, 0);
  v16 = v15;
  if ((v15 - 268435458) > 0xE || ((1 << (v15 - 2)) & 0x4003) == 0)
  {
    if (!v15)
    {
      if (v22.msgh_id == 71)
      {
        v16 = -308;
      }

      else if (v22.msgh_id == 327)
      {
        if ((v22.msgh_bits & 0x80000000) != 0)
        {
          v16 = -300;
          if (v23 == 3 && v22.msgh_size == 96 && !v22.msgh_remote_port && HIBYTE(v23) == 1 && HIBYTE(v24) == 1 && HIBYTE(v25) == 1)
          {
            v18 = v24 / 0x50;
            if (v24 / 0x50 == HIDWORD(v26))
            {
              v19 = v25 >> 6;
              if (v25 >> 6 == v27)
              {
                v20 = v26 / 0xB0;
                if (v26 / 0xB0 == DWORD1(v27))
                {
                  v16 = 0;
                  *names = *(&v23 + 4);
                  *namesCnt = v18;
                  *info = *(&v24 + 4);
                  *infoCnt = v19;
                  *memory_info = *(&v25 + 4);
                  *memory_infoCnt = v20;
                  return v16;
                }
              }
            }
          }
        }

        else if (v22.msgh_size == 36)
        {
          v16 = -300;
          if (DWORD2(v23))
          {
            if (v22.msgh_remote_port)
            {
              v16 = -300;
            }

            else
            {
              v16 = DWORD2(v23);
            }
          }
        }

        else
        {
          v16 = -300;
        }
      }

      else
      {
        v16 = -301;
      }

      mach_msg_destroy(&v22);
      return v16;
    }

    mig_dealloc_reply_port(v22.msgh_local_port);
  }

  return v16;
}

kern_return_t host_set_multiuser_config_flags(host_priv_t host_priv, uint32_t multiuser_flags)
{
  v11 = 0;
  v9 = NDR_record;
  v10 = multiuser_flags;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2400001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, host_priv);
  *&v8.msgh_voucher_port = 0xE400000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2400001513, __PAIR64__(reply_port, host_priv), 0xE400000000, (reply_port << 32), 0x2C, 0);
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

    else if (v8.msgh_id == 328)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v10;
        if (!v10)
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

kern_return_t mach_zone_info_for_zone(host_priv_t host, mach_zone_name_t *name, mach_zone_info_t *info)
{
  v15 = NDR_record;
  v5 = *&name->mzn_name[48];
  *&v16[32] = *&name->mzn_name[32];
  *&v16[48] = v5;
  *&v16[64] = *&name->mzn_name[64];
  v6 = *&name->mzn_name[16];
  *v16 = *name->mzn_name;
  *&v16[16] = v6;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x7000001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, host);
  *&v14.msgh_voucher_port = 0xE700000000;
  v8 = mach_msg2_internal(&v14, 0x200000003, 0x7000001513, __PAIR64__(reply_port, host), 0xE700000000, (reply_port << 32), 0x6C, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v14.msgh_id == 71)
      {
        v9 = -308;
      }

      else if (v14.msgh_id == 331)
      {
        if ((v14.msgh_bits & 0x80000000) == 0)
        {
          if (v14.msgh_size == 100)
          {
            if (!v14.msgh_remote_port)
            {
              v9 = *v16;
              if (!*v16)
              {
                v12 = *&v16[20];
                *&info->mzi_count = *&v16[4];
                *&info->mzi_max_size = v12;
                v13 = *&v16[52];
                *&info->mzi_alloc_size = *&v16[36];
                *&info->mzi_exhaustible = v13;
                return v9;
              }

              goto LABEL_20;
            }
          }

          else if (v14.msgh_size == 36)
          {
            if (v14.msgh_remote_port)
            {
              v10 = 1;
            }

            else
            {
              v10 = *v16 == 0;
            }

            if (v10)
            {
              v9 = -300;
            }

            else
            {
              v9 = *v16;
            }

            goto LABEL_20;
          }
        }

        v9 = -300;
      }

      else
      {
        v9 = -301;
      }

LABEL_20:
      mach_msg_destroy(&v14);
      return v9;
    }

    mig_dealloc_reply_port(v14.msgh_local_port);
  }

  return v9;
}

uint64_t mach_zone_info_for_largest_zone(unsigned int a1, _OWORD *a2, _OWORD *a3)
{
  v16 = 0;
  memset(&v15[24], 0, 160);
  reply_port = mig_get_reply_port();
  *v15 = 0x1800001513;
  *&v15[8] = __PAIR64__(reply_port, a1);
  *&v15[16] = 0xE800000000;
  v7 = mach_msg2_internal(v15, 0x200000003, 0x1800001513, __PAIR64__(reply_port, a1), 0xE800000000, (reply_port << 32), 0xBC, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[20] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[20] == 332)
      {
        if ((*v15 & 0x80000000) == 0)
        {
          if (*&v15[4] == 180)
          {
            if (!*&v15[8])
            {
              v8 = *&v15[32];
              if (!*&v15[32])
              {
                v11 = *&v15[52];
                v12 = *&v15[84];
                a2[2] = *&v15[68];
                a2[3] = v12;
                a2[4] = *&v15[100];
                *a2 = *&v15[36];
                a2[1] = v11;
                v13 = *&v15[164];
                a3[2] = *&v15[148];
                a3[3] = v13;
                v14 = *&v15[132];
                *a3 = *&v15[116];
                a3[1] = v14;
                return v8;
              }

              goto LABEL_20;
            }
          }

          else if (*&v15[4] == 36)
          {
            if (*&v15[8])
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[32] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[32];
            }

            goto LABEL_20;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(v15);
      return v8;
    }

    mig_dealloc_reply_port(*&v15[12]);
  }

  return v8;
}

uint64_t mach_zone_get_zlog_zones(unsigned int a1, void *a2, unsigned int *a3)
{
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x1800001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v12.msgh_voucher_port = 0xE900000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x1800001513, __PAIR64__(reply_port, a1), 0xE900000000, (reply_port << 32), 0x40, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v12.msgh_id == 71)
      {
        v8 = 4294966988;
      }

      else if (v12.msgh_id == 333)
      {
        if ((v12.msgh_bits & 0x80000000) != 0)
        {
          v8 = 4294966996;
          if (v13 == 1 && *&v12.msgh_size == 56 && HIBYTE(v13) == 1)
          {
            v10 = v14 / 0x50;
            if (v14 / 0x50 == HIDWORD(v14))
            {
              v8 = 0;
              *a2 = *(&v13 + 4);
              *a3 = v10;
              return v8;
            }
          }
        }

        else if (v12.msgh_size == 36)
        {
          v8 = 4294966996;
          if (DWORD2(v13))
          {
            if (v12.msgh_remote_port)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = DWORD2(v13);
            }
          }
        }

        else
        {
          v8 = 4294966996;
        }
      }

      else
      {
        v8 = 4294966995;
      }

      mach_msg_destroy(&v12);
      return v8;
    }

    mig_dealloc_reply_port(v12.msgh_local_port);
  }

  return v8;
}