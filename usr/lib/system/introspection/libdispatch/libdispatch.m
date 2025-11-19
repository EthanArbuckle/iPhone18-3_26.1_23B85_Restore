void _os_eventlink_dispose(uint64_t a1)
{
  if (*(a1 + 24))
  {
    free(*(a1 + 16));
  }

  v2 = *(a1 + 32);
  if (v2 + 1 >= 2)
  {
    mach_port_deallocate(mach_task_self_, v2);
  }

  v3 = *(a1 + 36);
  if (v3 + 1 >= 2)
  {
    v4 = mach_task_self_;

    mach_port_deallocate(v4, v3);
  }
}

_DWORD *os_eventlink_create(const char *a1)
{
  v2 = _os_object_alloc(OS_os_eventlink, 48);
  if (v2)
  {
    if (a1)
    {
      v3 = _dispatch_strdup_if_mutable(a1);
      if (v3 != a1)
      {
        *(v2 + 3) |= 1uLL;
      }

      *(v2 + 2) = v3;
    }
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
  }

  return v2;
}

uint64_t os_eventlink_activate(uint64_t a1)
{
  if ((*(a1 + 32) + 1) > 1)
  {
    return 0;
  }

  if ((*(a1 + 24) & 2) == 0)
  {
    v2 = mach_eventlink_create();
    result = 0xFFFFFFFFLL;
    if (v2 <= 13)
    {
      if (v2)
      {
        if (v2 == 4)
        {
          result = 22;
        }

        else
        {
          if (v2 != 13)
          {
            return result;
          }

          result = 37;
        }
      }

      else
      {
        v5 = 0;
        atomic_compare_exchange_strong_explicit((a1 + 32), &v5, 0, memory_order_relaxed, memory_order_relaxed);
        if (v5)
        {
          return 22;
        }

        result = 0;
      }

      goto LABEL_22;
    }

    if (v2 > 36)
    {
      if (v2 != 37)
      {
        if (v2 != 49)
        {
          return result;
        }

        result = 60;
        goto LABEL_22;
      }
    }

    else
    {
      if (v2 == 14)
      {
        result = 53;
        goto LABEL_22;
      }

      if (v2 != 15)
      {
        return result;
      }
    }

    result = 89;
LABEL_22:
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    goto LABEL_23;
  }

  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  result = 89;
LABEL_23:
  *v4 = result;
  return result;
}

uint64_t os_eventlink_extract_remote_port(uint64_t a1, _DWORD *a2)
{
  if (!*(a1 + 32))
  {
LABEL_7:
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    result = 22;
    goto LABEL_8;
  }

  if ((*(a1 + 24) & 2) == 0)
  {
    v2 = (a1 + 36);
    __swp(v2, v2);
    if ((a1 + 35) < 0xFFFFFFFE)
    {
      result = 0;
      *a2 = v2;
      return result;
    }

    goto LABEL_7;
  }

  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  result = 89;
LABEL_8:
  *v4 = result;
  return result;
}

_DWORD *os_eventlink_create_with_port(const char *a1, mach_port_name_t a2)
{
  v4 = _os_object_alloc(OS_os_eventlink, 48);
  if (v4)
  {
    if (a1)
    {
      v5 = _dispatch_strdup_if_mutable(a1);
      if (v5 != a1)
      {
        *(v4 + 3) |= 1uLL;
      }

      *(v4 + 2) = v5;
    }

    if (mach_port_mod_refs(mach_task_self_, a2, 0, 1))
    {
      os_eventlink_create_with_port_cold_1();
    }

    if (v4[8])
    {
      os_eventlink_create_with_port_cold_1();
    }

    v4[8] = a2;
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
  }

  return v4;
}

_DWORD *os_eventlink_create_remote_with_eventlink(const char *a1, uint64_t a2)
{
  v7 = 0;
  v3 = os_eventlink_extract_remote_port(a2, &v7);
  if (v3)
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = v3;
    return 0;
  }

  else
  {
    v5 = v7;
    v6 = os_eventlink_create_with_port(a1, v7);
    mach_port_mod_refs(mach_task_self_, v5, 0, -1);
    return v6;
  }
}

uint64_t os_eventlink_associate(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 32))
  {
    result = 22;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_25:
    **(StatusReg + 8) = result;
    return result;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    result = 89;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    goto LABEL_25;
  }

  if (a2 != 1)
  {
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  }

  v5 = mach_eventlink_associate();
  result = 0xFFFFFFFFLL;
  if (v5 <= 13)
  {
    if (v5)
    {
      if (v5 == 4)
      {
        result = 22;
      }

      else
      {
        if (v5 != 13)
        {
          return result;
        }

        result = 37;
      }
    }

    else
    {
      result = 0;
    }

    goto LABEL_24;
  }

  if (v5 > 36)
  {
    if (v5 != 37)
    {
      if (v5 != 49)
      {
        return result;
      }

      result = 60;
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v5 == 14)
  {
    result = 53;
    goto LABEL_24;
  }

  if (v5 == 15)
  {
LABEL_20:
    result = 89;
LABEL_24:
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    goto LABEL_25;
  }

  return result;
}

uint64_t os_eventlink_disassociate(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if ((*(a1 + 24) & 2) == 0)
    {
      result = mach_eventlink_disassociate();
      if (result <= 13)
      {
        switch(result)
        {
          case 0:
            goto LABEL_20;
          case 4:
            result = 22;
            goto LABEL_20;
          case 0xD:
            result = 37;
            goto LABEL_20;
        }

        return 0xFFFFFFFFLL;
      }

      if (result <= 36)
      {
        if (result == 14)
        {
          result = 53;
          goto LABEL_20;
        }

        if (result == 15)
        {
          result = 89;
LABEL_20:
          v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
          goto LABEL_21;
        }

        return 0xFFFFFFFFLL;
      }

      if (result != 37)
      {
        if (result == 49)
        {
          result = 60;
          goto LABEL_20;
        }

        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }

  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  result = 22;
LABEL_21:
  *v2 = result;
  return result;
}

uint64_t os_eventlink_wait_until(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2 != 32)
  {
    a3 = 0;
  }

  v8 = mach_absolute_time() + a3;

  return os_eventlink_wait_until_internal(a1, a2, v8, a4);
}

uint64_t os_eventlink_wait_until_internal(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2 != 32)
  {
    os_eventlink_create_with_port_cold_1();
  }

  if (!*(a1 + 32))
  {
    result = 22;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    goto LABEL_11;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    result = 89;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    goto LABEL_11;
  }

  v6 = *(a1 + 40);
  v7 = mach_eventlink_wait_until();
  v8 = v7;
  if (a4 && !v7)
  {
    *a4 = *(a1 + 40) - v6;
LABEL_7:
    result = 0;
LABEL_8:
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_11:
    **(StatusReg + 8) = result;
    return result;
  }

  result = 0xFFFFFFFFLL;
  if (v8 <= 13)
  {
    switch(v8)
    {
      case 0:
        goto LABEL_7;
      case 4:
        result = 22;
        goto LABEL_8;
      case 13:
        result = 37;
        goto LABEL_8;
    }
  }

  else if (v8 > 36)
  {
    if (v8 == 37)
    {
LABEL_26:
      result = 89;
      goto LABEL_8;
    }

    if (v8 == 49)
    {
      result = 60;
      goto LABEL_8;
    }
  }

  else
  {
    if (v8 == 14)
    {
      result = 53;
      goto LABEL_8;
    }

    if (v8 == 15)
    {
      if ((*(a1 + 24) & 2) == 0)
      {
        os_eventlink_create_with_port_cold_1();
      }

      goto LABEL_26;
    }
  }

  return result;
}

uint64_t os_eventlink_signal(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    result = 22;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_22:
    **(StatusReg + 8) = result;
    return result;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    result = 89;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    goto LABEL_22;
  }

  v1 = mach_eventlink_signal();
  result = 0xFFFFFFFFLL;
  if (v1 <= 13)
  {
    if (v1)
    {
      if (v1 == 4)
      {
        result = 22;
      }

      else
      {
        if (v1 != 13)
        {
          return result;
        }

        result = 37;
      }
    }

    else
    {
      result = 0;
    }

    goto LABEL_21;
  }

  if (v1 > 36)
  {
    if (v1 != 37)
    {
      if (v1 != 49)
      {
        return result;
      }

      result = 60;
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (v1 == 14)
  {
    result = 53;
    goto LABEL_21;
  }

  if (v1 == 15)
  {
LABEL_17:
    result = 89;
LABEL_21:
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    goto LABEL_22;
  }

  return result;
}

uint64_t os_eventlink_signal_and_wait_until_internal(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2 != 32)
  {
    os_eventlink_create_with_port_cold_1();
  }

  if (!*(a1 + 32))
  {
    result = 22;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    goto LABEL_11;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    result = 89;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    goto LABEL_11;
  }

  v6 = *(a1 + 40);
  v7 = mach_eventlink_signal_wait_until();
  v8 = v7;
  if (a4 && !v7)
  {
    *a4 = *(a1 + 40) - v6;
LABEL_7:
    result = 0;
LABEL_8:
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_11:
    **(StatusReg + 8) = result;
    return result;
  }

  result = 0xFFFFFFFFLL;
  if (v8 <= 13)
  {
    switch(v8)
    {
      case 0:
        goto LABEL_7;
      case 4:
        result = 22;
        goto LABEL_8;
      case 13:
        result = 37;
        goto LABEL_8;
    }
  }

  else if (v8 > 36)
  {
    if (v8 == 37)
    {
LABEL_26:
      result = 89;
      goto LABEL_8;
    }

    if (v8 == 49)
    {
      result = 60;
      goto LABEL_8;
    }
  }

  else
  {
    if (v8 == 14)
    {
      result = 53;
      goto LABEL_8;
    }

    if (v8 == 15)
    {
      if ((*(a1 + 24) & 2) == 0)
      {
        os_eventlink_create_with_port_cold_1();
      }

      goto LABEL_26;
    }
  }

  return result;
}

uint64_t os_eventlink_signal_and_wait_until(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2 != 32)
  {
    a3 = 0;
  }

  v8 = mach_absolute_time() + a3;

  return os_eventlink_signal_and_wait_until_internal(a1, a2, v8, a4);
}

uint64_t os_eventlink_cancel(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    atomic_fetch_or_explicit((result + 24), 2uLL, memory_order_relaxed);
    v1 = *(result + 32);
    if ((v1 - 1) <= 0xFFFFFFFD)
    {
      if (mach_port_mod_refs(mach_task_self_, v1, 0, 1))
      {
        os_eventlink_create_with_port_cold_1();
      }

      return _mach_eventlink_destroy(v1);
    }
  }

  return result;
}

void _os_workgroup_xref_dispose(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v1[1](*v1);

    free(v1);
  }
}

uint64_t _os_workgroup_interval_xref_dispose(uint64_t result)
{
  if ((*(result + 24) & 8) != 0)
  {
    _os_workgroup_interval_xref_dispose_cold_1();
  }

  return result;
}

void _os_workgroup_dispose(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 40);
  if (v3)
  {
    if (mach_port_mod_refs(mach_task_self_, v3, 0, -1))
    {
      _os_assumes_log();
      if ((v2 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 32);
    if (work_interval_destroy())
    {
      _os_assumes_log();
    }
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v5 = *(a1 + 16);

    free(v5);
  }
}

uint64_t _os_workgroup_tsd_cleanup(uint64_t result)
{
  if (result)
  {
    _os_workgroup_tsd_cleanup_cold_1(v1, result);
  }

  return result;
}

void _os_workgroup_join_token_tsd_cleanup(void *a1, const char *a2)
{
  if (a1)
  {
    if (a1[1])
    {
      os_eventlink_create_with_port_cold_1();
    }

    _os_workgroup_leave_update_wg(a1[2], a2);

    free(a1);
  }
}

void *_os_workgroup_leave_update_wg(uint64_t a1, const char *a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (*(StatusReg + 928) != a1)
  {
    os_eventlink_create_with_port_cold_1();
  }

  if (!atomic_fetch_add_explicit((a1 + 60), 0xFFFFFFFF, memory_order_relaxed))
  {
    _os_workgroup_leave_update_wg_cold_2();
  }

  result = *(StatusReg + 928);
  *(StatusReg + 928) = 0;
  if (result)
  {

    return _os_object_release_internal(result, a2);
  }

  return result;
}

uint64_t _os_workgroup_get_backing_workinterval(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t os_workgroup_interval_data_set_flags(_DWORD *a1, unsigned int a2)
{
  if (!a1)
  {
    return 22;
  }

  result = 22;
  if (a2 <= 1 && *a1 == 1386695757)
  {
    result = 0;
    a1[1] = a2;
  }

  return result;
}

uint64_t os_workgroup_interval_data_set_complexity(uint64_t a1, int a2, uint64_t a3)
{
  if (a1 && *a1 == 1386695757)
  {
    switch(a2)
    {
      case 2:
LABEL_9:
        v3 = 0;
        *(a1 + 24) = a3;
        return v3;
      case 1:
        a3 = 1;
        goto LABEL_9;
      case 0:
        a3 = 0;
        goto LABEL_9;
    }
  }

  return 22;
}

uint64_t os_workgroup_interval_data_set_telemetry(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1 && a4 == 40)
  {
    result = 0;
    *(a1 + 16) = 2621441;
    *(a1 + 8) = a3;
  }

  else
  {
    result = 22;
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
  }

  return result;
}

uint64_t os_workgroup_attr_set_interval_type(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  v3 = *a1 == 799564740 || *a1 == 799564724;
  if (!v3 || (a2 - 1) > 9)
  {
    return 22;
  }

  result = 0;
  *(a1 + 8) = a2;
  return result;
}

uint64_t os_workgroup_attr_set_flags(_DWORD *a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  if (*a1 != 799564740 && *a1 != 799564724)
  {
    return 22;
  }

  result = 0;
  a1[1] = a2;
  return result;
}

uint64_t os_workgroup_attr_set_telemetry_flavor(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  v3 = *a1 == 799564740 || *a1 == 799564724;
  if (!v3 || a2 != 1)
  {
    return 22;
  }

  result = 0;
  *(a1 + 10) = 1;
  return result;
}

void *os_workgroup_interval_copy_current_4AudioToolbox()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 928);
  if (v0 && v0[28] - 3 <= 1)
  {
    return os_retain(v0);
  }

  else
  {
    return 0;
  }
}

_DWORD *os_workgroup_create(const char *a1, __int128 *a2)
{
  if (a2)
  {
    if (*a2 != 799564740 && *a2 != 799564724)
    {
      goto LABEL_17;
    }

    v4 = a2[1];
    v13 = *a2;
    v14 = v4;
    v5 = a2[3];
    v15 = a2[2];
    v16 = v5;
    v6 = v13 == 799564724 || v13 == 799564740;
    if (!v6 || (LODWORD(v13) = 2015762650, WORD4(v13)))
    {
LABEL_17:
      v7 = 0;
      v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      v9 = 22;
LABEL_20:
      *v8 = v9;
      return v7;
    }
  }

  else
  {
    v13 = _os_workgroup_attr_default;
    v14 = unk_44FE0;
    v15 = xmmword_44FF0;
    v16 = unk_45000;
  }

  if ((BYTE4(v13) & 2) == 0 || WORD5(v13))
  {
    v7 = 0;
    v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    v9 = 45;
    goto LABEL_20;
  }

  work_interval = _os_workgroup_create_work_interval(&v13);
  if (!work_interval)
  {
    return 0;
  }

  v12 = work_interval;
  v7 = _os_object_alloc(OS_os_workgroup, 64);
  *(v7 + 4) = v12;
  v7[10] = 0;
  *(v7 + 3) = 1;
  *(v7 + 28) = 0;
  _os_workgroup_set_name(v7, a1);
  return v7;
}

uint64_t _os_workgroup_create_work_interval(uint64_t a1)
{
  v2 = _wg_type_to_wi_flags(*(a1 + 8));
  if ((*(a1 + 4) & 4) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  v4 = v3 | v2 | ((*(a1 + 12) & 1) << 7) | 0x100;
  *(a1 + 10);
  v5 = work_interval_create();
  result = 0;
  if (!v5)
  {
    v7 = work_interval_copy_port();
    result = 0;
    if (v7 < 0)
    {
      work_interval_destroy();
      return 0;
    }
  }

  return result;
}

void _os_workgroup_set_name(uint64_t a1, const char *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = _dispatch_strdup_if_mutable(a2);
    if (v4 != v2)
    {
      *(a1 + 24) |= 4uLL;
      v2 = v4;
    }
  }

  *(a1 + 16) = v2;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = (*(a1 + 24) & 1) == 0;
    *(a1 + 24);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if (v5 == -1)
    {
      _os_workgroup_set_name_cold_1();
    }

    if (v2)
    {
      if (__strlcpy_chk())
      {
        v7 = *(a1 + 40);
        if (__work_interval_ctl() == -1)
        {
          v8 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
          if (v8)
          {
            _dispatch_bug(544, v8);
          }
        }
      }
    }
  }
}

_DWORD *os_workgroup_interval_create(const char *a1, int a2, __int128 *a3)
{
  if (a3)
  {
    if (*a3 != 799564740 && *a3 != 799564724)
    {
      goto LABEL_22;
    }

    v6 = a3[1];
    v16 = *a3;
    v17 = v6;
    v7 = a3[3];
    v18 = a3[2];
    v19 = v7;
    if (v16 == 799564724)
    {
      v9 = DWORD1(v16);
      if (!DWORD1(v16))
      {
        v9 = 2;
      }

      DWORD1(v16) = v9;
      if (WORD4(v16) <= 1u)
      {
        v8 = 1;
      }

      else
      {
        v8 = WORD4(v16);
      }

      WORD4(v16) = v8;
    }

    else
    {
      if (v16 != 799564740)
      {
        goto LABEL_22;
      }

      v8 = WORD4(v16);
    }

    LODWORD(v16) = 2015762650;
    if ((v8 - 1) >= 0xA)
    {
LABEL_22:
      v10 = 0;
      v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      v12 = 22;
      goto LABEL_23;
    }
  }

  else
  {
    v16 = _os_workgroup_interval_attr_default;
    v17 = unk_45020;
    v18 = xmmword_45030;
    v19 = unk_45040;
    LOWORD(v8) = 1;
  }

  if ((BYTE4(v16) & 4) != 0)
  {
    goto LABEL_22;
  }

  if ((BYTE4(v16) & 2) == 0)
  {
    v10 = 0;
    v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    v12 = 45;
LABEL_23:
    *v11 = v12;
    return v10;
  }

  work_interval = _os_workgroup_create_work_interval(&v16);
  if (!work_interval)
  {
    return 0;
  }

  v15 = work_interval;
  v10 = _os_object_alloc(OS_os_workgroup_interval, 80);
  *(v10 + 4) = v15;
  v10[10] = 0;
  v10[16] = a2;
  *(v10 + 9) = work_interval_instance_alloc();
  v10[17] = 0;
  *(v10 + 28) = v8;
  *(v10 + 3) = 1;
  *(v10 + 22) = WORD5(v16);
  _os_workgroup_set_name(v10, a1);
  return v10;
}

_DWORD *os_workgroup_create_with_workload_id(const char *a1, char *a2, __int128 *a3)
{
  if (a3)
  {
    if (*a3 != 799564740 && *a3 != 799564724)
    {
      goto LABEL_32;
    }

    v6 = a3[1];
    v19 = *a3;
    v20 = v6;
    v7 = a3[3];
    v21 = a3[2];
    v22 = v7;
    if (v19 != 799564740)
    {
      if (v19 != 799564724)
      {
LABEL_32:
        os_workgroup_create_with_workload_id_cold_1();
        return 0;
      }

      v8 = DWORD1(v19);
      if (!DWORD1(v19))
      {
        v8 = 2;
      }

      DWORD1(v19) = v8;
    }

    LODWORD(v19) = 2015762650;
  }

  else
  {
    v19 = _os_workgroup_with_workload_id_attr_default;
    v20 = unk_45060;
    v21 = xmmword_45070;
    v22 = unk_45080;
  }

  LOWORD(v18) = 0;
  v9 = _os_workgroup_lookup_type_from_workload_id(a2, &v19 + 3, &v18);
  if (v9)
  {
    if (!WORD4(v19) || WORD4(v19) == v18)
    {
      WORD4(v19) = v9;
    }

    else if (v9 != WORD4(v19))
    {
      _dispatch_log("BUG IN CLIENT of %s: Mismatched workload ID and attribute interval type: %s vs %hd", "os_workgroup_create_with_workload_id", a2, WORD4(v19));
      v10 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_31:
      v12 = *(StatusReg + 8);
      v13 = 22;
      goto LABEL_24;
    }
  }

  if (DWORD1(v19) != 2)
  {
    os_workgroup_create_with_workload_id_cold_2(SDWORD1(v19));
    return 0;
  }

  if (WORD4(v19))
  {
    _dispatch_log("BUG IN CLIENT of %s: Non-default workload type: %s (%hd)", "os_workgroup_create_with_workload_id", a2, WORD4(v19));
    v10 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    goto LABEL_31;
  }

  if (!WORD5(v19))
  {
    v18 = 0;
    work_interval = _os_workgroup_create_work_interval(&v19);
    if (work_interval)
    {
      v15 = work_interval;
      v10 = _os_object_alloc(OS_os_workgroup, 64);
      *(v10 + 4) = v15;
      v10[10] = v18;
      *(v10 + 3) = 1;
      *(v10 + 28) = 0;
      if (!_os_workgroup_set_work_interval_workload_id(v10, a2, SHIDWORD(v19)))
      {
        _os_workgroup_set_name(v10, a1);
        return v10;
      }

      _os_object_release(v10, v16);
    }

    return 0;
  }

  v10 = 0;
  v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  v13 = 45;
LABEL_24:
  *v12 = v13;
  return v10;
}

uint64_t _os_workgroup_set_work_interval_workload_id(uint64_t a1, const char *a2, int a3)
{
  v4 = *(a1 + 40);
  if (v4 + 1 <= 1)
  {
    _os_workgroup_set_work_interval_workload_id_cold_1(v4);
  }

  if (!a3)
  {
    return 0;
  }

  v6 = a3 & 0xFFFFFFFE;
  __strlcpy_chk();
  _wg_type_to_wi_flags(*(a1 + 56));
  v7 = *(a1 + 40);
  v8 = __work_interval_ctl();
  if (v8)
  {
    if (v8 != -1)
    {
      v10 = 0;
      v9 = v8;
      goto LABEL_12;
    }

    v9 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (v9)
    {
      _dispatch_bug(586, v9);
      v10 = 0;
      LODWORD(v8) = v9;
      goto LABEL_12;
    }
  }

  v10 = v6;
  if (v6)
  {
    LODWORD(v8) = 0;
    v9 = 37;
LABEL_12:
    _dispatch_log("BUG IN CLIENT of %s: Unable to set kernel workload ID: %s (0x%x) -> %d (0x%x)", "_os_workgroup_set_work_interval_workload_id", a2, v6, v8, v10);
    return v9;
  }

  v9 = 0;
  *(a1 + 24) |= 0x10uLL;
  return v9;
}

_DWORD *os_workgroup_interval_create_with_workload_id(const char *a1, char *a2, int a3, __int128 *a4)
{
  if (a4)
  {
    if (*a4 != 799564740 && *a4 != 799564724)
    {
      goto LABEL_33;
    }

    v8 = a4[1];
    v21 = *a4;
    v22 = v8;
    v9 = a4[3];
    v23 = a4[2];
    v24 = v9;
    if (v21 != 799564740)
    {
      if (v21 != 799564724)
      {
LABEL_33:
        os_workgroup_interval_create_with_workload_id_cold_1();
        return 0;
      }

      v10 = DWORD1(v21);
      if (!DWORD1(v21))
      {
        v10 = 2;
      }

      DWORD1(v21) = v10;
      v11 = WORD4(v21);
      if (WORD4(v21) <= 1u)
      {
        v11 = 1;
      }

      WORD4(v21) = v11;
    }

    LODWORD(v21) = 2015762650;
  }

  else
  {
    v21 = _os_workgroup_interval_attr_default;
    v22 = unk_45020;
    v23 = xmmword_45030;
    v24 = unk_45040;
  }

  LOWORD(v20) = 0;
  v12 = _os_workgroup_lookup_type_from_workload_id(a2, &v21 + 3, &v20);
  if (v12)
  {
    if (WORD4(v21) == 1 || WORD4(v21) == v20)
    {
      WORD4(v21) = v12;
    }

    else if (v12 != WORD4(v21))
    {
      _dispatch_log("BUG IN CLIENT of %s: Mismatched workload ID and attribute interval type: %s vs %hd", "os_workgroup_interval_create_with_workload_id", a2, WORD4(v21));
      v13 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_31:
      **(StatusReg + 8) = 22;
      return v13;
    }
  }

  if (DWORD1(v21) == 2)
  {
    v15 = WORD4(v21);
    if (WORD4(v21) - 1 >= 0xA)
    {
      _dispatch_log("BUG IN CLIENT of %s: Invalid workload interval type: %s (%hd)", "os_workgroup_interval_create_with_workload_id", a2, WORD4(v21));
      v13 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      goto LABEL_31;
    }

    v20 = 0;
    work_interval = _os_workgroup_create_work_interval(&v21);
    if (work_interval)
    {
      v17 = work_interval;
      v13 = _os_object_alloc(OS_os_workgroup_interval, 80);
      *(v13 + 4) = v17;
      v13[10] = v20;
      v13[16] = a3;
      *(v13 + 9) = work_interval_instance_alloc();
      v13[17] = 0;
      *(v13 + 28) = v15;
      *(v13 + 3) = 1;
      *(v13 + 22) = WORD5(v21);
      if (!_os_workgroup_set_work_interval_workload_id(v13, a2, SHIDWORD(v21)))
      {
        _os_workgroup_set_name(v13, a1);
        return v13;
      }

      _os_object_release(v13, v18);
    }
  }

  else
  {
    os_workgroup_interval_create_with_workload_id_cold_2(SDWORD1(v21));
  }

  return 0;
}

int os_workgroup_join(os_workgroup_t wg, os_workgroup_join_token_t token_out)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (*(StatusReg + 928))
  {
    v3 = *(StatusReg + 8);
    result = 37;
LABEL_9:
    *v3 = result;
    return result;
  }

  isa = wg[3].super.super.isa;
  if ((isa & 2) != 0)
  {
    v3 = *(StatusReg + 8);
    result = 22;
    goto LABEL_9;
  }

  if (LODWORD(wg[5].super.super.isa))
  {
    if (isa)
    {
      v8 = wg[4].super.super.isa;
      if (work_interval_join())
      {
        return **(StatusReg + 8);
      }
    }

    else if (work_interval_join_port())
    {
      return **(StatusReg + 8);
    }
  }

  _os_workgroup_join_update_wg(wg, token_out);
  return 0;
}

void os_workgroup_leave(os_workgroup_t wg, os_workgroup_join_token_t token)
{
  if (token->sig != 1298094680)
  {
    os_workgroup_leave_cold_1();
  }

  v2 = *token->opaque;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (v2 != *(StatusReg + 24))
  {
    os_workgroup_leave_cold_2();
  }

  v5 = *(StatusReg + 928);
  if (v5 != wg || *&token->opaque[12] != v5)
  {
    os_workgroup_leave_cold_3();
  }

  if (*&token->opaque[4])
  {
    os_eventlink_create_with_port_cold_1();
  }

  if (LODWORD(wg[5].super.super.isa) && work_interval_leave())
  {
    os_workgroup_leave_cold_5();
  }

  _os_workgroup_leave_update_wg(wg, token);
}

os_workgroup_parallel_t os_workgroup_parallel_create(const char *name, os_workgroup_attr_t attr)
{
  if (!attr)
  {
    goto LABEL_19;
  }

  sig = attr->sig;
  if (attr->sig != 799564724 && sig != 799564740)
  {
    goto LABEL_15;
  }

  v5 = *attr->opaque;
  if (sig != 799564740)
  {
    if (sig != 799564724)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      LOBYTE(v5) = 6;
    }

    if (!*&attr->opaque[4])
    {
LABEL_13:
      if ((v5 & 2) == 0 || *&attr->opaque[6])
      {
        v6 = 0;
        v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        v8 = 45;
        goto LABEL_18;
      }

LABEL_19:
      v6 = _os_object_alloc(OS_os_workgroup_parallel, 64);
      v6[4].super.super.isa = 0;
      v6[3].super.super.isa = (&dword_0 + 1);
      LOWORD(v6[7].super.super.isa) = 64;
      _os_workgroup_set_name(v6, name);
      return v6;
    }
  }

  if (*&attr->opaque[4] == 64)
  {
    goto LABEL_13;
  }

LABEL_15:
  v6 = 0;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  v8 = 22;
LABEL_18:
  *v7 = v8;
  return v6;
}

int os_workgroup_copy_port(os_workgroup_t wg, mach_port_t *mach_port_out)
{
  if (!wg)
  {
    os_eventlink_create_with_port_cold_1();
  }

  if (!mach_port_out)
  {
    os_eventlink_create_with_port_cold_1();
  }

  *mach_port_out = 0;
  if ((wg[3].super.super.isa & 2) != 0)
  {
    return 22;
  }

  isa = wg[5].super.super.isa;
  if (!isa)
  {
    return 22;
  }

  result = mach_port_mod_refs(mach_task_self_, isa, 0, 1);
  if (result)
  {
    os_workgroup_copy_port_cold_1();
    return 12;
  }

  else
  {
    *mach_port_out = wg[5].super.super.isa;
  }

  return result;
}

os_workgroup_t os_workgroup_create_with_port(const char *name, mach_port_t mach_port)
{
  if (mach_port - 1 >= 0xFFFFFFFE)
  {
    v4 = 0;
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
  }

  else
  {
    if (!work_interval_get_flags_from_port())
    {
      if (!mach_port_mod_refs(mach_task_self_, mach_port, 0, 1))
      {
        v4 = _os_object_alloc(OS_os_workgroup, 64);
        v4[10] = mach_port;
        *(v4 + 28) = 0;
        _os_workgroup_set_name(v4, name);
        return v4;
      }

      os_workgroup_create_with_port_cold_1();
    }

    return 0;
  }

  return v4;
}

_DWORD *os_workgroup_create_with_workload_id_and_port(const char *a1, char *a2, mach_port_name_t a3)
{
  if (a3 - 1 >= 0xFFFFFFFE)
  {
    os_workgroup_create_with_workload_id_and_port_cold_1(a3);
    return 0;
  }

  v16 = 0;
  if (work_interval_get_flags_from_port())
  {
    _dispatch_log("BUG IN CLIENT of %s: Invalid mach port 0x%x", "os_workgroup_create_with_workload_id_and_port", a3);
    return 0;
  }

  v6 = v16;
  v7 = v16 >> 28;
  if (v16 >> 28 > 3)
  {
    if (v16 >> 28 > 5)
    {
      if (v7 == 6)
      {
        v8 = 9;
        goto LABEL_22;
      }

      if (v7 == 7)
      {
        v8 = 10;
        goto LABEL_22;
      }
    }

    else
    {
      if (v7 == 4)
      {
        v8 = 7;
        goto LABEL_22;
      }

      if (v7 == 5)
      {
        v8 = 8;
        goto LABEL_22;
      }
    }

LABEL_36:
    os_workgroup_create_with_port_cold_2(v17, v16);
  }

  if (v16 >> 28 > 1)
  {
    if (v7 == 2)
    {
      v8 = 5;
      goto LABEL_22;
    }

    if (v7 == 3)
    {
      v8 = 2;
      goto LABEL_22;
    }

    goto LABEL_36;
  }

  if (!v7)
  {
    v8 = 0;
    goto LABEL_22;
  }

  if (v7 != 1)
  {
    goto LABEL_36;
  }

  v8 = 4;
LABEL_22:
  v17[0] = 0;
  LOWORD(v16) = 0;
  v9 = _os_workgroup_lookup_type_from_workload_id(a2, v17, &v16);
  if (v9)
  {
    v10 = v9;
    v11 = v6 & 0xF0000000;
    if ((_wg_type_to_wi_flags(v16) & 0x70000000) != v11 && (_wg_type_to_wi_flags(v10) & 0x70000000) != v11)
    {
      _dispatch_log("BUG IN CLIENT of %s: Mismatched workload ID and port interval type: %s vs %hd", "os_workgroup_create_with_workload_id_and_port", a2, v8);
      v12 = 0;
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
      return v12;
    }
  }

  if (mach_port_mod_refs(mach_task_self_, a3, 0, 1))
  {
    os_workgroup_create_with_workload_id_and_port_cold_2(a3);
    return 0;
  }

  v12 = _os_object_alloc(OS_os_workgroup, 64);
  v12[10] = a3;
  *(v12 + 28) = v8;
  v13 = _os_workgroup_set_work_interval_workload_id(v12, a2, v17[0]);
  if (v13 && v13 != 37)
  {
    _os_object_release(v12, v14);
    return 0;
  }

  _os_workgroup_set_name(v12, a1);
  return v12;
}

os_workgroup_t os_workgroup_create_with_workgroup(const char *name, os_workgroup_t wg)
{
  if ((wg[3].super.super.isa & 2) != 0)
  {
    v4 = 0;
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return v4;
  }

  v4 = _os_object_alloc(OS_os_workgroup, 64);
  LOWORD(v4[7].super.super.isa) = wg[7].super.super.isa;
  isa = wg[5].super.super.isa;
  if (!isa)
  {
LABEL_7:
    _os_workgroup_set_name(v4, name);
    return v4;
  }

  if (!mach_port_mod_refs(mach_task_self_, isa, 0, 1))
  {
    LODWORD(v4[5].super.super.isa) = wg[5].super.super.isa;
    goto LABEL_7;
  }

  free(v4);
  return 0;
}

_DWORD *os_workgroup_create_with_workload_id_and_workgroup(const char *a1, char *a2, uint64_t a3)
{
  if ((*(a3 + 24) & 2) != 0)
  {
    os_workgroup_create_with_workload_id_and_workgroup_cold_1();
    return 0;
  }

  v17 = 0;
  v6 = _wg_type_to_wi_flags(*(a3 + 56));
  v18 = 0;
  v7 = _os_workgroup_lookup_type_from_workload_id(a2, &v17, &v18);
  if (v7)
  {
    v8 = v7;
    v9 = v6 & 0x70000000;
    if ((_wg_type_to_wi_flags(v18) & 0x70000000) != v9 && (_wg_type_to_wi_flags(v8) & 0x70000000) != v9)
    {
      _dispatch_log("BUG IN CLIENT of %s: Mismatched workload ID and workgroup interval type: %s vs %hd", "os_workgroup_create_with_workload_id_and_workgroup", a2, *(a3 + 56));
      v10 = 0;
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
      return v10;
    }
  }

  v10 = _os_object_alloc(OS_os_workgroup, 64);
  *(v10 + 28) = *(a3 + 56);
  v11 = *(a3 + 40);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = mach_port_mod_refs(mach_task_self_, v11, 0, 1);
  v13 = *(a3 + 40);
  if (v12)
  {
    _dispatch_log("BUG IN CLIENT of %s: Invalid workgroup port 0x%x", "os_workgroup_create_with_workload_id_and_workgroup", v13);
    free(v10);
    return 0;
  }

  v10[10] = v13;
  v14 = _os_workgroup_set_work_interval_workload_id(v10, a2, v17);
  if (v14 && v14 != 37)
  {
    _os_object_release(v10, v15);
    return 0;
  }

LABEL_9:
  _os_workgroup_set_name(v10, a1);
  return v10;
}

int os_workgroup_max_parallel_threads(os_workgroup_t wg, os_workgroup_mpt_attr_t attr)
{
  if (!wg)
  {
    os_eventlink_create_with_port_cold_1();
  }

  if (LOWORD(wg[7].super.super.isa) - 3 > 1)
  {

    return pthread_qos_max_parallelism();
  }

  else
  {

    return _pthread_time_constraint_max_parallelism(0, attr);
  }
}

void *_os_workgroup_join_update_wg(uint64_t a1, uint64_t a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (*(StatusReg + 928))
  {
    _os_workgroup_join_update_wg_cold_1();
  }

  atomic_fetch_add_explicit((a1 + 60), 1u, memory_order_relaxed);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v4 = *(StatusReg + 24);
  *a2 = 1298094680;
  *(a2 + 4) = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  if (a1)
  {
    _os_object_retain_internal(a1);
  }

  result = *(StatusReg + 928);
  *(StatusReg + 928) = a1;
  if (result)
  {

    return _os_object_release_internal(result, a2);
  }

  return result;
}

int os_workgroup_set_working_arena(os_workgroup_t wg, void *arena, uint32_t max_workers, os_workgroup_working_arena_destructor_t destructor)
{
  _X0 = malloc_type_calloc(4 * max_workers + 24, 1uLL, 0x80929B4BuLL);
  if (_X0)
  {
    _X0[4] = max_workers;
    *_X0 = arena;
    *(_X0 + 1) = destructor;
    _X2 = wg[6].super.super.isa;
    do
    {
      if (wg[7].super.super.isa >> 32)
      {
        free(_X0);
        v17 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        result = 16;
        goto LABEL_9;
      }

      v10 = _X2;
      _X3 = wg[7].super.super.isa;
      __asm { CASP            X2, X3, X0, X1, [X9] }
    }

    while (_X2 != v10);
    if (v10)
    {
      (*(v10 + 1))(*v10);
      free(v10);
    }

    return 0;
  }

  else
  {
    v17 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    result = 12;
LABEL_9:
    *v17 = result;
  }

  return result;
}

void *__cdecl os_workgroup_get_working_arena(os_workgroup_t wg, os_workgroup_index *index_out)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (*(StatusReg + 928) != wg)
  {
    os_workgroup_get_working_arena_cold_1();
  }

  isa = wg[6].super.super.isa;
  if (!isa)
  {
    return 0;
  }

  if (index_out)
  {
    v4 = *(isa + 4);
    if (!v4)
    {
      os_workgroup_get_working_arena_cold_3();
    }

    v5 = 0;
    v6 = isa + 24;
    while (*&v6[4 * v5] != *(StatusReg + 24))
    {
      if (v4 == ++v5)
      {
        LODWORD(v5) = atomic_fetch_add_explicit(isa + 5, 1u, memory_order_relaxed);
        if (v5 >= v4)
        {
          os_workgroup_get_working_arena_cold_2();
        }

        *&v6[4 * v5] = *(StatusReg + 24);
        break;
      }
    }

    *index_out = v5;
  }

  return *isa;
}

int os_workgroup_interval_start(os_workgroup_interval_t wg, uint64_t start, uint64_t deadline, os_workgroup_interval_data_t data)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (*(StatusReg + 928) != wg)
  {
    os_workgroup_get_working_arena_cold_1();
  }

  if (data && *&data->opaque[12] == 1 && WORD2(wg[5].super.super.isa) != 1 || deadline < start || LODWORD(wg[8].super.super.isa) == 32 && mach_absolute_time() < start)
  {
    v7 = *(StatusReg + 8);
    v8 = 22;
LABEL_7:
    *v7 = v8;
    return v8;
  }

  if (!os_unfair_lock_trylock(&wg[8].super.super.isa + 1))
  {
    v7 = *(StatusReg + 8);
    v8 = 16;
    goto LABEL_7;
  }

  if (data && data->sig == 1386695757)
  {
    if (data->opaque[0])
    {
      v10 = 1;
    }

    else
    {
      v10 = *&data->opaque[20];
    }
  }

  else
  {
    v10 = 0;
  }

  isa = wg[3].super.super.isa;
  while (1)
  {
    if ((isa & 0xA) != 0)
    {
      v8 = 22;
LABEL_34:
      os_unfair_lock_unlock(&wg[8].super.super.isa + 1);
      v7 = *(StatusReg + 8);
      goto LABEL_7;
    }

    if ((isa & 1) == 0)
    {
      v8 = 1;
      goto LABEL_34;
    }

    if (v10 && (isa & 0x10) == 0)
    {
      break;
    }

    v12 = isa;
    atomic_compare_exchange_strong_explicit(&wg[3], &v12, isa | 8, memory_order_relaxed, memory_order_relaxed);
    v13 = v12 == isa;
    isa = v12;
    if (v13)
    {
      goto LABEL_25;
    }
  }

  **(StatusReg + 8) = 22;
LABEL_25:
  v14 = wg[9].super.super.isa;
  work_interval_instance_clear();
  work_interval_instance_set_start();
  work_interval_instance_set_deadline();
  work_interval_instance_set_complexity();
  v8 = work_interval_instance_start();
  if (v8)
  {
    atomic_fetch_and_explicit(&wg[3], 0xFFFFFFFFFFFFFFF7, memory_order_relaxed);
  }

  else if (data && *&data->opaque[12] == 1)
  {
    _os_workgroup_interval_copy_telemetry_data(wg, data);
  }

  os_unfair_lock_unlock(&wg[8].super.super.isa + 1);
  return v8;
}

double _os_workgroup_interval_copy_telemetry_data(uint64_t a1, uint64_t a2)
{
  memset(v6, 0, 40);
  v3 = *(a1 + 72);
  work_interval_instance_get_telemetry_data();
  if (*(a2 + 16) == 1)
  {
    v5 = *(a2 + 8);
    *v5 = *&v6[0];
    *(v5 + 24) = *(&v6[1] + 8);
    result = *(v6 + 1);
    *(v5 + 8) = *(v6 + 8);
  }

  return result;
}

int os_workgroup_interval_update(os_workgroup_interval_t wg, uint64_t deadline, os_workgroup_interval_data_t data)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (*(StatusReg + 928) != wg)
  {
    os_workgroup_get_working_arena_cold_1();
  }

  v4 = data;
  if (!data)
  {
    v6 = &wg[8].super.super.isa + 1;
    if (os_unfair_lock_trylock(&wg[8].super.super.isa + 1))
    {
      goto LABEL_10;
    }

LABEL_13:
    v9 = *(StatusReg + 8);
    LODWORD(v4) = 16;
    goto LABEL_19;
  }

  if (*&data->opaque[12] == 1 && WORD2(wg[5].super.super.isa) != 1)
  {
    goto LABEL_18;
  }

  v6 = &wg[8].super.super.isa + 1;
  if (!os_unfair_lock_trylock(&wg[8].super.super.isa + 1))
  {
    goto LABEL_13;
  }

  if (v4->sig != 1386695757)
  {
LABEL_10:
    v7 = 0;
LABEL_11:
    isa = wg[3].super.super.isa;
    if ((isa & 1) == 0)
    {
LABEL_12:
      os_unfair_lock_unlock(v6);
      v9 = *(StatusReg + 8);
      LODWORD(v4) = 1;
LABEL_19:
      *v9 = v4;
      return v4;
    }

    if (v7 && (isa & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((v4->opaque[0] & 1) == 0)
  {
    v7 = *&v4->opaque[20];
    goto LABEL_11;
  }

  isa = wg[3].super.super.isa;
  if ((isa & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((isa & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_16:
  if ((isa & 8) == 0)
  {
LABEL_17:
    os_unfair_lock_unlock(v6);
LABEL_18:
    v9 = *(StatusReg + 8);
    LODWORD(v4) = 22;
    goto LABEL_19;
  }

  v11 = wg[9].super.super.isa;
  work_interval_instance_set_deadline();
  work_interval_instance_set_complexity();
  if (work_interval_instance_update())
  {
    LODWORD(v4) = **(StatusReg + 8);
  }

  else if (v4)
  {
    if (*&v4->opaque[12] == 1)
    {
      _os_workgroup_interval_copy_telemetry_data(wg, v4);
    }

    LODWORD(v4) = 0;
  }

  os_unfair_lock_unlock(v6);
  return v4;
}

int os_workgroup_interval_finish(os_workgroup_interval_t wg, os_workgroup_interval_data_t data)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (*(StatusReg + 928) != wg)
  {
    os_workgroup_get_working_arena_cold_1();
  }

  v3 = data;
  if (!data)
  {
    v5 = &wg[8].super.super.isa + 1;
    if (os_unfair_lock_trylock(&wg[8].super.super.isa + 1))
    {
      goto LABEL_10;
    }

LABEL_13:
    v8 = *(StatusReg + 8);
    LODWORD(v3) = 16;
    goto LABEL_19;
  }

  if (*&data->opaque[12] == 1 && WORD2(wg[5].super.super.isa) != 1)
  {
    goto LABEL_18;
  }

  v5 = &wg[8].super.super.isa + 1;
  if (!os_unfair_lock_trylock(&wg[8].super.super.isa + 1))
  {
    goto LABEL_13;
  }

  if (v3->sig != 1386695757)
  {
LABEL_10:
    v6 = 0;
LABEL_11:
    isa = wg[3].super.super.isa;
    if ((isa & 1) == 0)
    {
LABEL_12:
      os_unfair_lock_unlock(v5);
      v8 = *(StatusReg + 8);
      LODWORD(v3) = 1;
LABEL_19:
      *v8 = v3;
      return v3;
    }

    v9 = &wg[3];
    if (v6 && (isa & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((v3->opaque[0] & 1) == 0)
  {
    v6 = *&v3->opaque[20];
    goto LABEL_11;
  }

  isa = wg[3].super.super.isa;
  if ((isa & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = &wg[3];
  if ((isa & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_16:
  if ((isa & 8) == 0)
  {
LABEL_17:
    os_unfair_lock_unlock(v5);
LABEL_18:
    v8 = *(StatusReg + 8);
    LODWORD(v3) = 22;
    goto LABEL_19;
  }

  v11 = wg[9].super.super.isa;
  if (LODWORD(wg[8].super.super.isa) == 32)
  {
    mach_absolute_time();
  }

  work_interval_instance_set_finish();
  work_interval_instance_set_complexity();
  if (work_interval_instance_finish())
  {
    LODWORD(v3) = **(StatusReg + 8);
  }

  else
  {
    atomic_fetch_and_explicit(v9, 0xFFFFFFFFFFFFFFF7, memory_order_relaxed);
    if (v3)
    {
      if (*&v3->opaque[12] == 1)
      {
        _os_workgroup_interval_copy_telemetry_data(wg, v3);
      }

      LODWORD(v3) = 0;
    }
  }

  os_unfair_lock_unlock(v5);
  return v3;
}

uint64_t _os_workgroup_pthread_create_with_workgroup(pthread_t *a1, void *a2, const pthread_attr_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = _dispatch_calloc_typed(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
  _os_object_retain_internal(a2);
  *v10 = a2;
  v10[1] = a4;
  v10[2] = a5;
  v12 = pthread_create(a1, a3, _os_workgroup_pthread_start, v10);
  if (v12)
  {
    _os_object_release_internal(a2, v11);
    free(v10);
  }

  return v12;
}

uint64_t _os_workgroup_pthread_start(OS_os_workgroup **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  free(a1);
  memset(&v8, 0, sizeof(v8));
  v4 = os_workgroup_join(v1, &v8);
  if (v4)
  {
    _os_workgroup_pthread_start_cold_1(v4);
  }

  v5 = (v2)(v3);
  os_workgroup_leave(v1, &v8);
  _os_object_release_internal(v1, v6);
  return v5;
}

uint64_t _wg_type_to_wi_flags(unsigned int a1)
{
  if (a1 >= 0xB)
  {
    _wg_type_to_wi_flags_cold_1();
  }

  return dword_45090[a1];
}

uint64_t _os_workgroup_lookup_type_from_workload_id(char *a1, unsigned int *a2, _WORD *a3)
{
  if (!a1)
  {
    _os_workgroup_lookup_type_from_workload_id_cold_2();
  }

  v6 = 0;
  v7 = &dword_5010C;
  while (strcasecmp(a1, *(v7 - 3)))
  {
    ++v6;
    v7 += 4;
    if (v6 == 4)
    {
      v8 = 0;
      result = 0;
      goto LABEL_8;
    }
  }

  result = *(v7 - 2);
  if (!*(v7 - 2))
  {
    _os_workgroup_lookup_type_from_workload_id_cold_1(v6);
  }

  v8 = *v7 & 0xFFFFFFFA | 1;
LABEL_8:
  if (v8 <= 1)
  {
    v8 = 1;
  }

  *a2 = v8;
  *a3 = result;
  return result;
}

uint64_t dispatch_atfork_prepare()
{
  _voucher_atfork_prepare();

  return _os_object_atfork_prepare();
}

uint64_t dispatch_atfork_parent()
{
  _os_object_atfork_parent();

  return _voucher_atfork_parent();
}

void dispatch_atfork_child()
{
  _os_object_atfork_child();
  _voucher_atfork_child();
  _dispatch_event_loop_atfork_child();
  if (_dispatch_unsafe_fork)
  {
    _dispatch_child_of_unsafe_fork = 1;
  }

  _dispatch_queue_atfork_child();
  _dispatch_unsafe_fork = 0;
}

uint64_t _dispatch_sigmask()
{
  v3 = -67116761;
  v0 = pthread_sigmask(1, &v3, 0);
  v1 = v0;
  if (v0)
  {
    _dispatch_bug(108, v0);
  }

  return v1;
}

dispatch_queue_t dispatch_get_current_queue(void)
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
  if (v0)
  {
    return v0;
  }

  else
  {
    return &off_713C0;
  }
}

uint64_t *_dispatch_queue_attr_to_info(uint64_t *result)
{
  if (result)
  {
    v1 = result - &_dispatch_queue_attr_concurrent;
    if (result < &_dispatch_queue_attr_concurrent || result >= qword_64400)
    {
      _dispatch_queue_attr_to_info_cold_1(result);
    }

    v3 = (((v1 >> 4) >> 6) * 0x2492492492492493uLL) >> 64;
    v4 = (((v1 >> 4) >> 6) * 0xC30C30C30C30C31uLL) >> 64;
    return (((v1 << 15) & 0x100000 | (((v1 >> 4) & 1) << 21) | -(((v1 >> 4) << 6) & 0xF00) & 0xFF00 | (((v1 >> 4) >> 6) - 7 * v3) | ((v3 - 3 * ((v3 * 0x5555555555555556uLL) >> 64)) << 18) | ((v4 - 3 * ((v4 * 0x5555555555555556uLL) >> 64)) << 16)) ^ 0x100000);
  }

  return result;
}

dispatch_queue_attr_t dispatch_queue_attr_make_with_qos_class(dispatch_queue_attr_t attr, dispatch_qos_class_t qos_class, int relative_priority)
{
  if (qos_class <= QOS_CLASS_USER_INTERACTIVE)
  {
    v3 = relative_priority;
    if (((1 << qos_class) & 0x202220221) != 0 && (relative_priority == 0 || relative_priority >= 0xFFFFFFF1))
    {
      v6 = _dispatch_queue_attr_to_info(attr);
      HIDWORD(v8) = qos_class - 5;
      LODWORD(v8) = qos_class - 5;
      v7 = v8 >> 2;
      if (v7 > 7)
      {
        v9 = 0;
      }

      else
      {
        v9 = dword_45124[v7];
      }

      v10 = v6 & 0x3F0000 | (v3 << 8) | v9;

      return _dispatch_queue_attr_from_info(v10);
    }
  }

  return attr;
}

dispatch_queue_attr_t dispatch_queue_attr_make_initially_inactive(dispatch_queue_attr_t attr)
{
  v1 = _dispatch_queue_attr_to_info(attr) | 0x200000;

  return _dispatch_queue_attr_from_info(v1);
}

__objc2_class **dispatch_queue_attr_make_with_overcommit(uint64_t *a1, int a2)
{
  v3 = _dispatch_queue_attr_to_info(a1) & 0x3CFFFF;
  if (a2)
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0x20000;
  }

  return _dispatch_queue_attr_from_info(v3 | v4);
}

dispatch_queue_attr_t dispatch_queue_attr_make_with_autorelease_frequency(dispatch_queue_attr_t attr, dispatch_autorelease_frequency_t frequency)
{
  v2 = _dispatch_queue_attr_to_info(attr) & 0x33FFFF | ((frequency & 3) << 18);

  return _dispatch_queue_attr_from_info(v2);
}

void _dispatch_object_no_invoke(uint64_t a1)
{
  v1 = *(*a1 + 40);
  qword_6D1C0 = "BUG IN LIBDISPATCH: do_invoke called";
  qword_6D1F0 = v1;
  __break(1u);
}

void _dispatch_object_no_dispose(uint64_t a1)
{
  v1 = *(*a1 + 40);
  qword_6D1C0 = "BUG IN LIBDISPATCH: do_dispose called";
  qword_6D1F0 = v1;
  __break(1u);
}

void _dispatch_queue_no_activate(uint64_t a1)
{
  v1 = *(*a1 + 40);
  qword_6D1C0 = "BUG IN LIBDISPATCH: dq_activate called";
  qword_6D1F0 = v1;
  __break(1u);
}

BOOL _dispatch_getenv_BOOL(const char *a1, uint64_t a2)
{
  v3 = getenv(a1);
  if (!v3)
  {
    return a2;
  }

  return _dispatch_parse_BOOL(v3);
}

uint64_t _dispatch_build_init()
{
  *v2 = 0x4100000001;
  v1 = 16;
  return sysctl(v2, 2u, &_dispatch_build, &v1, 0, 0);
}

uint64_t _dispatch_fault(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  result = vsnprintf(__str, 0x400uLL, __format, va);
  if (_dispatch_mode)
  {
    qword_6D1D8 = __str;
  }

  else if ((_dispatch_mode & 2) == 0)
  {
    return _dispatch_fault_cold_1(__str);
  }

  return result;
}

uint64_t _dispatch_continuation_get_function_symbol(void *a1)
{
  if ((*a1 & 0x20) != 0)
  {
    v2 = a1[5];
    v3 = *(v2 + 32);
    if (v3 != 3512316172)
    {
      _dispatch_continuation_get_function_symbol_cold_1(v3);
    }

    v4 = *(v2 + 72);
  }

  else
  {
    if ((*a1 & 0x10) == 0)
    {
      return a1[4];
    }

    v4 = a1[5];
  }

  if (*(v4 + 16))
  {
    return *(v4 + 16);
  }

  else
  {
    return 0;
  }
}

void _dispatch_debugv(unint64_t *a1, const char *a2, va_list a3)
{
  if (a1)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = (*a1 & 1) == 0;
      *a1;
    }

    else
    {
      v6 = 0;
    }

    if (!v6 || ((v9 = *a1, v5 >= OS_dispatch_object) ? (v10 = v5 >= OS_object) : (v10 = 1), v10))
    {
      v7 = _dispatch_objc_debug(a1, v13, 2048);
    }

    else
    {
      v7 = (*(v5 + 56))();
    }

    v8 = v7 + 2;
    *&v13[v7] = 8250;
    v13[v7 + 2] = 0;
  }

  else
  {
    v8 = __strlcpy_chk();
  }

  v11 = vsnprintf(&v13[v8], 2048 - v8, a2, a3);
  if (v8 + (v11 & ~(v11 >> 31)) >= 0x7FF)
  {
    v12 = 2047;
  }

  else
  {
    v12 = v8 + (v11 & ~(v11 >> 31));
  }

  if (_dispatch_logv_pred != -1)
  {
    dispatch_once_f(&_dispatch_logv_pred, 0, _dispatch_logv_init);
  }

  if ((dispatch_log_disabled & 1) == 0)
  {
    if (dispatch_logfile == -1)
    {
      _simple_asl_log();
    }

    else
    {
      _dispatch_log_file(v13, v12);
    }
  }
}

void *_dispatch_calloc_typed(size_t a1, size_t a2, malloc_type_id_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  while (1)
  {
    result = malloc_type_calloc(a1, a2, a3);
    if (result)
    {
      break;
    }

    _dispatch_temporary_resource_shortage();
    a1 = v5;
    a2 = v4;
    a3 = v3;
  }

  return result;
}

const char *_dispatch_strdup_if_mutable(const char *a1)
{
  v1 = a1;
  v2 = strlen(a1);
  if (_dyld_is_memory_immutable())
  {
    return v1;
  }

  v4 = malloc_type_malloc(v2 + 1, 0x100004077774924uLL);
  if (!v4)
  {
    _dispatch_strdup_if_mutable_cold_1();
    return 0;
  }

  return memcpy(v4, v1, v2 + 1);
}

void *_dispatch_Block_copy(void *aBlock)
{
  if (!aBlock)
  {
    _dispatch_Block_copy_cold_1();
  }

  while (1)
  {
    result = _Block_copy(aBlock);
    if (result)
    {
      break;
    }

    _dispatch_temporary_resource_shortage();
  }

  return result;
}

void _dispatch_call_block_and_release(void (**a1)(void))
{
  a1[2]();

  _Block_release(a1);
}

uint64_t dispatch_mach_msg_get_context(uint64_t a1)
{
  v1 = a1 + ((*(a1 + 4) + 3) & 0x1FFFFFFFCLL);
  if (*(v1 + 4) < 0x3Cu)
  {
    return 0;
  }

  else
  {
    return *(v1 + 52);
  }
}

void _dispatch_mach_notify_port_destroyed(uint64_t a1, unsigned int a2)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: unexpected receipt of port-destroyed";
  qword_6D1F0 = a2;
  __break(1u);
}

void _dispatch_mach_notify_no_senders(uint64_t a1, unsigned int a2)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: unexpected receipt of no-more-senders";
  qword_6D1F0 = a2;
  __break(1u);
}

void _dispatch_mach_default_async_reply_handler()
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: _dispatch_mach_default_async_reply_handler called";
  qword_6D1F0 = _dispatch_mach_xpc_hooks;
  __break(1u);
}

uint64_t _dispatch_logv_init()
{
  result = getenv("LIBDISPATCH_LOG");
  if (!result)
  {
    goto LABEL_9;
  }

  v1 = result;
  result = strcmp(result, "YES");
  if (!result)
  {
    goto LABEL_9;
  }

  if (*v1 == 78 && *(v1 + 1) == 79 && !*(v1 + 2))
  {
    dispatch_log_disabled = 1;
    return result;
  }

  result = strcmp(v1, "syslog");
  if (!result)
  {
    goto LABEL_9;
  }

  result = strcmp(v1, "file");
  if (result)
  {
    result = strcmp(v1, "stderr");
    if (result)
    {
LABEL_9:
      v2 = 0;
      goto LABEL_10;
    }

    dispatch_logfile = 2;
  }

  v2 = 1;
LABEL_10:
  if ((dispatch_log_disabled & 1) == 0)
  {
    result = dispatch_logfile;
    if (dispatch_logfile != -1)
    {
      v2 = 0;
    }

    if (v2 == 1)
    {
      v3 = getpid();
      snprintf(__str, 0x400uLL, "/var/tmp/libdispatch.%d.log", v3);
      result = open_NOCANCEL();
      dispatch_logfile = result;
    }

    if (result != -1)
    {
      __str[0].tv_sec = 0;
      *&__str[0].tv_usec = 0;
      gettimeofday(__str, 0);
      v4 = dispatch_logfile;
      v5 = getprogname();
      if (v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = "";
      }

      v7 = getpid();
      return dprintf(v4, "=== log file opened for %s[%u] at %ld.%06u ===\n", v6, v7, __str[0].tv_sec, __str[0].tv_usec);
    }
  }

  return result;
}

uint64_t _dispatch_log_file(uint64_t a1, uint64_t a2)
{
  *(a1 + a2) = 10;
  do
  {
    result = write_NOCANCEL();
    if (result != -1)
    {
      break;
    }

    result = _dispatch_log_file_cold_1();
  }

  while ((result & 1) != 0);
  return result;
}

uint64_t _dispatch_logv_file(char *__format, va_list a2)
{
  result = vsnprintf(__str, 0x800uLL, __format, a2);
  if ((result & 0x80000000) == 0)
  {
    if (result >= 0x7FF)
    {
      v3 = 2047;
    }

    else
    {
      v3 = result;
    }

    __str[v3] = 10;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      result = write_NOCANCEL();
    }

    while (result == -1 && **(StatusReg + 8) == 4);
  }

  return result;
}

uint64_t _os_object_retain_count(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1 == 0x7FFFFFFF)
  {
    return -1;
  }

  return v1;
}

uint64_t _os_object_retain_internal(uint64_t result)
{
  if (*(result + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed) <= 0)
  {
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }

  return result;
}

uint64_t _os_object_retain_internal_n(uint64_t result, unsigned int a2)
{
  if (*(result + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((result + 8), a2, memory_order_relaxed) <= 0)
  {
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }

  return result;
}

void *_os_object_release_internal(void *a1, const char *a2)
{
  if (*(a1 + 2) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      if (add_explicit == 1)
      {
        return _os_object_dispose(a1, a2);
      }

      else
      {
        qword_6D1C0 = "API MISUSE: Over-release of an object";
        __break(1u);
      }
    }
  }

  return a1;
}

void *_os_object_release_internal_n(void *a1, const char *a2)
{
  if (*(a1 + 2) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(a1 + 2, -a2, memory_order_release);
    v3 = __OFSUB__(add_explicit, a2);
    v4 = add_explicit - a2;
    if ((v4 < 0) ^ v3 | (v4 == 0))
    {
      if (v4 < 0)
      {
        qword_6D1C0 = "API MISUSE: Over-release of an object";
        __break(1u);
      }

      else
      {
        return _os_object_dispose(a1, a2);
      }
    }
  }

  return a1;
}

uint64_t _os_object_retain(uint64_t result)
{
  if (*(result + 12) != 0x7FFFFFFF && atomic_fetch_add_explicit((result + 12), 1u, memory_order_relaxed) <= 0)
  {
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }

  return result;
}

uint64_t _os_object_retain_with_resurrect(uint64_t result)
{
  if (*(result + 12) == 0x7FFFFFFF || (add_explicit = atomic_fetch_add_explicit((result + 12), 1u, memory_order_relaxed), (add_explicit & 0x80000000) != 0))
  {
    qword_6D1C0 = "API MISUSE: Resurrection of an over-released object";
    __break(1u);
    return _os_object_retain_internal(result);
  }

  if (!add_explicit)
  {
    return _os_object_retain_internal(result);
  }

  return result;
}

void *_os_object_release(void *a1, const char *a2)
{
  if (*(a1 + 3) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(a1 + 3, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      if (add_explicit == 1)
      {
        return _os_object_xref_dispose(a1, a2);
      }

      else
      {
        qword_6D1C0 = "API MISUSE: Over-release of an object";
        __break(1u);
      }
    }
  }

  return a1;
}

void *_os_object_release_without_xref_dispose(void *a1, const char *a2)
{
  if (*(a1 + 3) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(a1 + 3, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      if (add_explicit == 1)
      {
        return _os_object_release_internal(a1, a2);
      }

      else
      {
        qword_6D1C0 = "API MISUSE: Over-release of an object";
        __break(1u);
      }
    }
  }

  return a1;
}

uint64_t _os_object_retain_weak(uint64_t a1)
{
  v1 = *(a1 + 12);
  while (1)
  {
    if (v1 == 0x7FFFFFFF)
    {
      return 1;
    }

    if (!v1)
    {
      break;
    }

    if ((v1 & 0x80000000) != 0)
    {
      _os_object_retain_weak_cold_1();
    }

    v2 = v1;
    atomic_compare_exchange_strong_explicit((a1 + 12), &v2, v1 + 1, memory_order_relaxed, memory_order_relaxed);
    v3 = v2 == v1;
    v1 = v2;
    if (v3)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _os_object_allows_weak_reference(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1 < 0)
  {
    _os_object_retain_weak_cold_1();
  }

  return v1 != 0;
}

void dispatch_retain(dispatch_object_t object)
{
  isa = object->isa;
  if ((object->isa & 1) != 0 || !isa || ((v2 = object->isa, isa >= OS_dispatch_object) ? (v3 = isa >= OS_object) : (v3 = 1), v3))
  {
    _dispatch_objc_retain(object);
  }

  else
  {
    _os_object_retain(object);
  }
}

void dispatch_release(dispatch_object_t object)
{
  isa = object->isa;
  if ((object->isa & 1) != 0 || !isa || ((v4 = object->isa, isa >= OS_dispatch_object) ? (v5 = isa >= OS_object) : (v5 = 1), v5))
  {

    _dispatch_objc_release(object);
  }

  else if (HIDWORD(object[1].isa) != 0x7FFFFFFF)
  {
    v6 = &object[1].isa + 1;
    add_explicit = atomic_fetch_add_explicit(&object[1].isa + 1, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      dispatch_release_cold_1(add_explicit, v6, object);
    }
  }
}

void *_dispatch_xref_dispose(void *a1, const char *a2)
{
  if ((*(*a1 + 40) & 0xF0) == 0x10)
  {
    _dispatch_queue_xref_dispose(a1);
    v3 = *(*a1 + 40);
    if (v3 > 786)
    {
      if (v3 == 787)
      {
        if ((*(a1 + 58) & 0x10) != 0)
        {
          *(a1[11] + 48) = 195952365;
        }
      }

      else if (v3 == 395025)
      {
        _dispatch_runloop_queue_xref_dispose(a1);
      }
    }

    else if (v3 == 275)
    {
      _dispatch_source_xref_dispose(a1);
    }

    else if (v3 == 531)
    {
      _dispatch_channel_xref_dispose(a1);
    }
  }

  return _os_object_release_internal(a1, a2);
}

void _dispatch_dispose(uint64_t *a1)
{
  v2 = a1[3];
  v3 = _dispatch_object_finalizer(a1);
  v4 = a1[4];
  v6 = 1;
  if (a1[2] != -1985229329)
  {
    _dispatch_dispose_cold_1(a1 + 2);
  }

  if (v2 && v2[8].isa == (&dword_14 + 2))
  {
    v2 = &off_71340;
  }

  (*(*a1 + 48))(a1, &v6);
  if (v6 == 1)
  {
    objc_destructInstance(a1);
    free(a1);
  }

  if (v3 && v4)
  {
    dispatch_channel_async_f(v2, v4, v3);
  }

  if (v2)
  {
    _os_object_release_internal(v2, v5);
  }
}

void dispatch_set_target_queue(dispatch_object_t object, dispatch_queue_t queue)
{
  isa = object->isa;
  if ((object->isa & 1) != 0 || !isa || ((v5 = object->isa, isa >= OS_dispatch_object) ? (v6 = isa >= OS_object) : (v6 = 1), v6))
  {

    _dispatch_objc_set_target_queue(object, queue);
  }

  else if (LODWORD(object[1].isa) != 0x7FFFFFFF)
  {
    v7 = *(isa + 5);
    if ((v7 & 0x30000) == 0)
    {
      if (queue && (HIBYTE(queue[10].isa) & 8) != 0 && isa >= 0x1000 && v7 != 1)
      {
        if (*(isa + 5) != 19 || !_dispatch_source_is_timer(object))
        {
          dispatch_set_target_queue_cold_1(object);
        }

        isa = object->isa;
      }

      v8 = *(isa + 5);
      if ((v8 & 0xF0) == 0x10)
      {

        _dispatch_lane_set_target_queue(object, queue);
      }

      else if (v8 == 4)
      {

        _dispatch_io_set_target_queue(object, queue);
      }

      else
      {
        if (queue)
        {
          v9 = queue;
        }

        else
        {
          v9 = &off_71340;
        }

        if (LODWORD(v9[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&v9[1], 1u, memory_order_relaxed) <= 0)
        {
          dispatch_set_target_queue_cold_2();
        }

        dispatch_set_target_queue_cold_3(object, v9);
      }
    }
  }
}

void dispatch_suspend(dispatch_object_t object)
{
  isa = object->isa;
  if ((object->isa & 1) != 0 || !isa || ((v3 = object->isa, isa >= OS_dispatch_object) ? (v4 = isa >= OS_object) : (v4 = 1), v4))
  {

    _dispatch_objc_suspend();
  }

  else if (LODWORD(object[1].isa) != 0x7FFFFFFF && (*(isa + 5) & 0x300F0) == 0x10)
  {
    if ((*(isa + 5) & 0x1FLL) == 0x12 && _dispatch_workloop_uses_bound_thread(object))
    {
      dispatch_suspend_cold_1();
    }

    _dispatch_lane_suspend(object);
  }
}

void dispatch_resume(dispatch_object_t object)
{
  isa = object->isa;
  if ((object->isa & 1) != 0 || !isa || ((v3 = object->isa, isa >= OS_dispatch_object) ? (v4 = isa >= OS_object) : (v4 = 1), v4))
  {

    _dispatch_objc_resume();
  }

  else if (LODWORD(object[1].isa) != 0x7FFFFFFF && (*(isa + 5) & 0x300F0) == 0x10)
  {
    if ((*(isa + 5) & 0x1FLL) == 0x12 && _dispatch_workloop_uses_bound_thread(object))
    {
      dispatch_resume_cold_1();
    }

    _dispatch_lane_resume(object, 0);
  }
}

const char *_os_object_init()
{
  _objc_init();
  v3 = off_64548;
  _Block_use_RR2(&v3);
  v0 = getenv("OBJC_DEBUG_MISSING_POOLS");
  if (v0)
  {
    _os_object_debug_missing_pools = _dispatch_parse_BOOL(v0);
  }

  v1 = getenv("DISPATCH_DEBUG_MISSING_POOLS");
  if (v1)
  {
    _os_object_debug_missing_pools = _dispatch_parse_BOOL(v1);
  }

  result = getenv("LIBDISPATCH_DEBUG_MISSING_POOLS");
  if (result)
  {
    result = _dispatch_parse_BOOL(result);
    _os_object_debug_missing_pools = result;
  }

  return result;
}

id _os_object_alloc_bridged(objc_class *a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 - 8;
  while (1)
  {
    result = class_createInstance(a1, v3);
    if (result)
    {
      break;
    }

    _dispatch_temporary_resource_shortage();
    a1 = v2;
  }

  return result;
}

_DWORD *_os_object_alloc_realized(objc_class *a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 - 8;
  while (1)
  {
    result = class_createInstance(a1, v3);
    if (result)
    {
      break;
    }

    _dispatch_temporary_resource_shortage();
    a1 = v2;
  }

  result[2] = 1;
  result[3] = 1;
  return result;
}

_DWORD *_os_object_alloc(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_class();

  return _os_object_alloc_realized(v3, a2);
}

id _dispatch_objc_alloc(objc_class *a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 - 8;
  while (1)
  {
    result = class_createInstance(a1, v3);
    if (result)
    {
      break;
    }

    _dispatch_temporary_resource_shortage();
    a1 = v2;
  }

  return result;
}

uint64_t _dispatch_wait_for_enqueuer(unint64_t *a1)
{
  v1 = -10;
  while (1)
  {
    v2 = __ldxr(a1);
    if (v2)
    {
      break;
    }

    __wfe();
    if (__CFADD__(v1++, 1))
    {
      return __DISPATCH_WAIT_FOR_ENQUEUER__(a1);
    }
  }

  __clrex();
  return v2;
}

uint64_t __DISPATCH_WAIT_FOR_ENQUEUER__(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = 1;
    do
    {
      _pthread_yield_to_enqueuer_4dispatch();
      result = *a1;
      ++v3;
    }

    while (!*a1);
  }

  return result;
}

void *_dispatch_block_create(uint64_t a1, void *a2, uint64_t a3, void *aBlock)
{
  v20 = 0;
  v21 = a1;
  v22 = 0;
  v23 = 0;
  v24 = a3;
  v25 = a2;
  v26 = aBlock;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = ___dispatch_block_create_block_invoke;
  v9[3] = &__block_descriptor_tmp_3;
  v10 = 3512316172;
  v11 = a1;
  v12 = 0;
  v13 = 0;
  v14 = a3;
  object = a2;
  aBlocka = 0;
  group = 0;
  v19 = 0;
  v18 = 0;
  if (a2 + 1 < 2)
  {
    if (!aBlock)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  voucher_retain(a2);
  aBlock = v26;
  if (v26)
  {
LABEL_3:
    aBlocka = _dispatch_Block_copy(aBlock);
  }

LABEL_4:
  v5 = _dispatch_Block_copy(v9);
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_block_create_cold_1();
  }

  if (v10 == 3512316172)
  {
    v6 = group;
    if (group)
    {
      if (!v13)
      {
        dispatch_group_leave(group);
        v6 = group;
      }

      _os_object_release_without_xref_dispose(v6, v4);
    }

    if (v18)
    {
      _os_object_release_internal_n(v18, &dword_0 + 2);
    }

    if (aBlocka)
    {
      _Block_release(aBlocka);
    }

    if (object + 1 >= 2)
    {
      voucher_release(object);
    }
  }

  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_block_create_cold_2();
  }

  if (v20 == 3512316172)
  {
    v7 = v27;
    if (v27)
    {
      if (!v23)
      {
        dispatch_group_leave(v27);
        v7 = v27;
      }

      _os_object_release_without_xref_dispose(v7, v4);
    }

    if (v28)
    {
      _os_object_release_internal_n(v28, &dword_0 + 2);
    }

    if (v26)
    {
      _Block_release(v26);
    }

    if (v25 + 1 >= 2)
    {
      voucher_release(v25);
    }
  }

  return v5;
}

void *__copy_helper_block_8_32c35_ZTS29dispatch_block_private_data_s(uint64_t a1, void *a2)
{
  v4 = a2[5];
  v6 = a2[7];
  v5 = a2[8];
  *(a1 + 72) = 0;
  *(a1 + 32) = 3512316172;
  *(a1 + 40) = v4;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = v6;
  *(a1 + 64) = v5;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  if (v5 + 1 >= 2)
  {
    voucher_retain(v5);
  }

  result = a2[9];
  if (result)
  {
    result = _dispatch_Block_copy(result);
    *(a1 + 72) = result;
  }

  if (a2[4])
  {
    result = _dispatch_group_create_and_enter();
    *(a1 + 80) = result;
  }

  return result;
}

void __destroy_helper_block_8_32c35_ZTS29dispatch_block_private_data_s(uint64_t a1, const char *a2)
{
  if (MEMORY[0xFFFFFC100])
  {
    __destroy_helper_block_8_32c35_ZTS29dispatch_block_private_data_s_cold_1();
  }

  if (*(a1 + 32) == 3512316172)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      if (!*(a1 + 52))
      {
        dispatch_group_leave(v3);
        v3 = *(a1 + 80);
      }

      _os_object_release_without_xref_dispose(v3, a2);
    }

    v4 = *(a1 + 88);
    if (v4)
    {
      _os_object_release_internal_n(v4, &dword_0 + 2);
    }

    v5 = *(a1 + 72);
    if (v5)
    {
      _Block_release(v5);
    }

    v6 = *(a1 + 64);
    if (v6 + 1 >= 2)
    {

      voucher_release(v6);
    }
  }
}

uint64_t _dispatch_sema4_create_slow(atomic_uint *a1, int policy)
{
  semaphore = 0;
  if (_dispatch_unsafe_fork)
  {
    if (policy)
    {
LABEL_3:
      result = semaphore_create(mach_task_self_, &semaphore, policy, 0);
      if (result == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      if (result)
      {
        if (result == 15)
        {
          _dispatch_sema4_create_slow_cold_2();
        }

        _dispatch_sema4_create_slow_cold_4(result);
      }

      v5 = 0;
      v6 = semaphore;
      atomic_compare_exchange_strong_explicit(a1, &v5, semaphore, memory_order_relaxed, memory_order_relaxed);
      if (v5)
      {
        result = semaphore_destroy(mach_task_self_, v6);
        if (result == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        if (result)
        {
          if (result == 15)
          {
            _dispatch_sema4_create_slow_cold_2();
          }

          _dispatch_sema4_create_slow_cold_4(result);
        }
      }

      return result;
    }
  }

  else
  {
    _dispatch_sema4_create_slow_cold_1();
    if (policy)
    {
      goto LABEL_3;
    }
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  result = *(StatusReg + 72);
  if (result)
  {
    *(StatusReg + 72) = 0;
  }

  else
  {
    result = _os_semaphore_create();
  }

  v8 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v8, result, memory_order_relaxed, memory_order_relaxed);
  if (v8)
  {
    v9 = result;
    result = *(StatusReg + 72);
    *(StatusReg + 72) = v9;
    if (result)
    {

      return __os_semaphore_dispose();
    }
  }

  return result;
}

uint64_t _dispatch_sema4_dispose_slow(_DWORD *a1, int a2)
{
  v3 = *a1;
  *a1 = -1;
  if (a2)
  {
    result = semaphore_destroy(mach_task_self_, v3);
    if (result == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (result)
    {
      if (result == 15)
      {
        _dispatch_sema4_create_slow_cold_2();
      }

      _dispatch_sema4_create_slow_cold_4(result);
    }
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    result = *(StatusReg + 72);
    *(StatusReg + 72) = v3;
    if (result)
    {

      return __os_semaphore_dispose();
    }
  }

  return result;
}

uint64_t _dispatch_sema4_signal(semaphore_t *a1, uint64_t a2)
{
  do
  {
    result = semaphore_signal(*a1);
    if (result == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (result)
    {
      if (result == 15)
      {
        _dispatch_sema4_create_slow_cold_2();
      }

      _dispatch_sema4_create_slow_cold_4(result);
    }

    --a2;
  }

  while (a2);
  return result;
}

uint64_t _dispatch_sema4_wait(semaphore_t *a1)
{
  while (1)
  {
    result = semaphore_wait(*a1);
    if (result <= 13)
    {
      break;
    }

    if (result != 14)
    {
      if (result == 15)
      {
        _dispatch_sema4_create_slow_cold_2();
      }

      goto LABEL_8;
    }
  }

  if (result == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (result)
  {
LABEL_8:
    _dispatch_sema4_create_slow_cold_4(result);
  }

  return result;
}

uint64_t _dispatch_wait_on_address(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v6 = _dispatch_timeout(a3);
  if (v6 == -1)
  {

    return _dlock_wait(a1, a2, 0);
  }

  else if (v6)
  {
    while (1)
    {
      v7 = v6 == 1000 * (v6 / 0x3E8) ? v6 / 0x3E8 : v6 / 0x3E8 + 1;
      v8 = v7 >= 0xFFFFFFFF ? -1 : v7;
      result = _dlock_wait(a1, a2, v8);
      if (v7 < 0xFFFFFFFF || result != 60)
      {
        break;
      }

      v6 = _dispatch_timeout(a3);
      if (!v6)
      {
        return 60;
      }
    }
  }

  else
  {
    return 60;
  }

  return result;
}

uint64_t _dispatch_thread_event_wait_slow(atomic_uint *a1)
{
  while (1)
  {
    result = atomic_load_explicit(a1, memory_order_acquire);
    if (!result)
    {
      break;
    }

    if (result != -1)
    {
      _dispatch_thread_event_wait_slow_cold_1(result);
    }

    _dlock_wait(a1, 0xFFFFFFFF, 0);
  }

  return result;
}

uint64_t _dispatch_unfair_lock_lock_slow(uint64_t result)
{
  v1 = result;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  for (i = v2 & 0xFFFFFFFC; ; i |= result == 66)
  {
    v4 = *v1;
    while (1)
    {
      v5 = v4;
      v6 = i;
      if (v4 >= 4)
      {
        v6 = v4 | 1;
        if ((v4 | 1) == v4)
        {
          break;
        }
      }

      atomic_compare_exchange_strong_explicit(v1, &v4, v6, memory_order_acquire, memory_order_acquire);
      if (v4 == v5)
      {
        goto LABEL_8;
      }
    }

    v6 = v4;
LABEL_8:
    if ((v5 ^ v2) <= 3)
    {
      _dispatch_unfair_lock_lock_slow_cold_1();
    }

    if (v6 == i)
    {
      break;
    }

    result = _dlock_wait(v1, v6, 0);
  }

  return result;
}

uint64_t _dispatch_unfair_lock_unlock_slow(uint64_t a1, unsigned int a2)
{
  if ((*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) ^ a2) >= 4)
  {
    _dispatch_unfair_lock_unlock_slow_cold_1(a2);
  }

  if (a2)
  {

    return _dlock_wake();
  }

  return result;
}

uint64_t _dispatch_once_wait(atomic_ullong *a1)
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
LABEL_2:
  result = *a1;
  do
  {
    if (result == -1)
    {
      break;
    }

    v4 = _dispatch_once_wait_cold_1(result, a1, v2, &v5);
    if (v4 == 1)
    {
      goto LABEL_2;
    }

    result = v5;
  }

  while (v4);
  return result;
}

uint64_t _dispatch_gate_broadcast_slow(uint64_t a1, unsigned int a2)
{
  if ((*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) ^ a2) >= 4)
  {
    _dispatch_unfair_lock_unlock_slow_cold_1(a2);
  }

  return _dlock_wake();
}

uint64_t _dlock_wait(uint64_t a1, unsigned int a2, int a3)
{
  v4 = a2;
  while (1)
  {
    result = __ulock_wait();
    if (result > 0)
    {
      return 66;
    }

    if (result != -4)
    {
      break;
    }

    if (a3)
    {
      return -result;
    }
  }

  if (result <= -15)
  {
    if (result != -60)
    {
      if (result == -105)
      {
        _dlock_wait_cold_1(v4);
      }

LABEL_16:
      _dlock_wait_cold_2(result);
    }

    return -result;
  }

  if (result == -14)
  {
    return -result;
  }

  if (result)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t _dlock_wake()
{
  result = __ulock_wake();
  if (result)
  {
    if (result != -2)
    {
      _dlock_wake_cold_1(result);
    }
  }

  return result;
}

dispatch_semaphore_t dispatch_semaphore_create(intptr_t value)
{
  if (value < 0)
  {
    return 0;
  }

  result = _dispatch_object_alloc(OS_dispatch_semaphore, 72);
  result[2].isa = -1985229329;
  result[3].isa = &off_71340;
  result[6].isa = value;
  LODWORD(result[8].isa) = 0;
  result[7].isa = value;
  return result;
}

_DWORD *_dispatch_semaphore_dispose(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 48) < v2)
  {
    _dispatch_semaphore_dispose_cold_1((a1 + 48), v2);
  }

  v4 = *(a1 + 64);
  result = (a1 + 64);
  if (v4)
  {

    return _dispatch_sema4_dispose_slow(result, 0);
  }

  return result;
}

uint64_t _dispatch_semaphore_signal_slow(uint64_t a1)
{
  v1 = (a1 + 64);
  if (!*(a1 + 64))
  {
    _dispatch_sema4_create_slow((a1 + 64), 0);
  }

  _dispatch_sema4_signal(v1, 1);
  return 1;
}

intptr_t dispatch_semaphore_signal(dispatch_semaphore_t dsema)
{
  if ((atomic_fetch_add_explicit(&dsema[6], 1uLL, memory_order_release) & 0x8000000000000000) != 0)
  {
    return _dispatch_semaphore_signal_slow(dsema);
  }

  else
  {
    return 0;
  }
}

intptr_t dispatch_semaphore_wait(dispatch_semaphore_t dsema, dispatch_time_t timeout)
{
  if (atomic_fetch_add_explicit(&dsema[6], 0xFFFFFFFFFFFFFFFFLL, memory_order_acquire) <= 0)
  {
    return _dispatch_semaphore_wait_slow(dsema, timeout);
  }

  else
  {
    return 0;
  }
}

uint64_t _dispatch_semaphore_wait_slow(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + 64);
  if (!*(a1 + 64))
  {
    _dispatch_sema4_create_slow((a1 + 64), 0);
  }

  if (a2 != -1)
  {
    if (a2 && !_dispatch_sema4_timedwait(v4, a2))
    {
      return 0;
    }

    v5 = *(a1 + 48);
    result = 49;
    while (v5 < 0)
    {
      v7 = v5;
      atomic_compare_exchange_strong_explicit((a1 + 48), &v7, v5 + 1, memory_order_relaxed, memory_order_relaxed);
      v8 = v7 == v5;
      v5 = v7;
      if (v8)
      {
        return result;
      }
    }
  }

  _dispatch_sema4_wait(v4);
  return 0;
}

dispatch_group_t dispatch_group_create(void)
{
  result = _dispatch_object_alloc(OS_dispatch_group, 72);
  result[2].isa = -1985229329;
  result[3].isa = &off_71340;
  return result;
}

uint64_t _dispatch_group_create_and_enter()
{
  result = _dispatch_object_alloc(OS_dispatch_group, 72);
  *(result + 16) = -1985229329;
  *(result + 24) = &off_71340;
  *(result + 48) = -4;
  if (*(result + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  return result;
}

uint64_t _dispatch_group_dispose(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    _dispatch_group_dispose_cold_1(result);
  }

  return result;
}

uint64_t _dispatch_group_wait_slow(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = (a1 + 52);
  v6 = 49;
  while (1)
  {
    v7 = _dispatch_wait_on_address(v5, a2, a3);
    if (atomic_load_explicit(v5, memory_order_acquire) != a2)
    {
      break;
    }

    if (v7 == 60)
    {
      return v6;
    }
  }

  return 0;
}

void dispatch_group_leave(dispatch_group_t group)
{
  add_explicit = atomic_fetch_add_explicit(&group[6], 4uLL, memory_order_release);
  v3 = add_explicit & 0xFFFFFFFC;
  if ((add_explicit & 0xFFFFFFFC) == 0xFFFFFFFC)
  {
    v4 = (add_explicit + 4);
    do
    {
      v5 = v4;
      if ((v4 & 0xFFFFFFFC) != 0)
      {
        v6 = -3;
      }

      else
      {
        v6 = 0xFFFFFFFF00000000;
      }

      v7 = v6 & v5;
      if (v5 == (v6 & v5))
      {
        break;
      }

      v4 = v5;
      atomic_compare_exchange_strong_explicit(&group[6], &v4, v7, memory_order_relaxed, memory_order_relaxed);
    }

    while (v4 != v5);

    _dispatch_group_wake(group, v5, 1, v1);
  }

  else if (!v3)
  {
    dispatch_group_leave_cold_1(v3);
  }
}

unint64_t *_dispatch_group_wake(unint64_t *result, const char *a2, int a3, int8x16_t a4)
{
  v5 = result;
  if ((a2 & 2) != 0)
  {
    v15 = a2;
    v6 = result[7];
    if (!v6)
    {
      v6 = _dispatch_wait_for_enqueuer(result + 7);
    }

    v5[7] = 0;
    v16 = v5;
    v7 = atomic_exchange_explicit(v5 + 8, 0, memory_order_release) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 48);
        if (v6 == v7)
        {
          v6 = 0;
        }

        else
        {
          v6 = *(v6 + 16);
          if (!v6)
          {
            v6 = _dispatch_wait_for_enqueuer((v8 + 16));
          }
        }

        v10 = __clz(__rbit32((*(v8 + 8) >> 8) & 0x3FFF));
        if (((*(v8 + 8) >> 8) & 0x3FFF) != 0)
        {
          v11 = v10 + 1;
        }

        else
        {
          v11 = 0;
        }

        if ((*(v8 + 1) & 2) == 0)
        {
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_trace_item_push_internal(v9, v8, a4);
          }

          _dispatch_introspection_queue_item_enqueue(v9, v8);
        }

        result = (*(*v9 + 88))(v9, v8, v11);
        if (*(v9 + 8) != 0x7FFFFFFF)
        {
          add_explicit = atomic_fetch_add_explicit((v9 + 8), 0xFFFFFFFF, memory_order_release);
          if (add_explicit <= 1)
          {
            break;
          }
        }

        if (!v6)
        {
          goto LABEL_23;
        }
      }

      if (add_explicit != 1)
      {
        qword_6D1C0 = "API MISUSE: Over-release of an object";
        __break(1u);
        goto LABEL_37;
      }

      result = _os_object_dispose(v9, v12);
    }

    while (v6);
LABEL_23:
    if (a3)
    {
      LOWORD(a3) = 2;
    }

    else
    {
      LOWORD(a3) = 1;
    }

    a2 = v15;
    v5 = v16;
  }

  if (a2)
  {
    result = _dispatch_wake_by_address();
  }

  if (a3)
  {
    if (*(v5 + 2) != 0x7FFFFFFF)
    {
      v14 = atomic_fetch_add_explicit(v5 + 2, -a3, memory_order_release) - a3;
      if (v14 <= 0)
      {
        if (v14 < 0)
        {
LABEL_37:
          qword_6D1C0 = "API MISUSE: Over-release of an object";
          __break(1u);
        }

        else
        {

          return _os_object_dispose(v5, a2);
        }
      }
    }
  }

  return result;
}

void dispatch_group_enter(dispatch_group_t group)
{
  add_explicit = atomic_fetch_add_explicit(&group[6], 0xFFFFFFFC, memory_order_acquire);
  if ((add_explicit & 0xFFFFFFFC) != 0)
  {
    if ((add_explicit & 0xFFFFFFFC) == 4)
    {
      dispatch_group_enter_cold_1(add_explicit);
    }
  }

  else if (LODWORD(group[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&group[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }
}

void dispatch_group_notify_f(dispatch_group_t group, dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = *(StatusReg + 176);
  if (v10)
  {
    *(StatusReg + 176) = *(v10 + 2);
  }

  else
  {
    v10 = _dispatch_continuation_alloc_from_heap();
  }

  *v10 = 260;
  *(v10 + 4) = work;
  *(v10 + 5) = context;
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
    os_retain(*(StatusReg + 224));
  }

  *(v10 + 3) = v13;
  if (v13 != -1)
  {
    if (v13)
    {
      v14 = *(v13 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      goto LABEL_34;
    }
  }

  if (!v11)
  {
    goto LABEL_35;
  }

LABEL_13:
  v15 = (HIDWORD(queue[10].isa) >> 30) & 1;
  if ((HIDWORD(queue[10].isa) & 0xFFF) == 0)
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  while (1)
  {
    *(v10 + 1) = v16;
    *(v10 + 6) = queue;
    if (LODWORD(queue[1].isa) == 0x7FFFFFFF || atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) > 0)
    {
      break;
    }

    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
LABEL_34:
    kdebug_trace();
    if (v11)
    {
      goto LABEL_13;
    }

LABEL_35:
    v16 = 0;
  }

  *(v10 + 2) = 0;
  *(StatusReg + 976) = group + 8;
  v17 = atomic_exchange_explicit(&group[8], v10, memory_order_release);
  if (v17)
  {
    *(v17 + 16) = v10;
    *(StatusReg + 976) = 0;
  }

  else if (LODWORD(group[1].isa) == 0x7FFFFFFF || atomic_fetch_add_explicit(&group[1], 1u, memory_order_relaxed) > 0)
  {
    group[7].isa = v10;
    *(StatusReg + 976) = 0;
    isa = group[6].isa;
    while (1)
    {
      v19 = (isa | 2);
      if (!isa)
      {
        break;
      }

      v20 = isa;
      atomic_compare_exchange_strong_explicit(&group[6], &v20, v19, memory_order_release, memory_order_relaxed);
      v21 = v20 == isa;
      isa = v20;
      if (v21)
      {
        return;
      }
    }

    _dispatch_group_wake(group, v19, 0, v4);
  }

  else
  {
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }
}

void dispatch_group_notify(dispatch_group_t group, dispatch_queue_t queue, dispatch_block_t block)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 176);
  if (v7)
  {
    *(StatusReg + 176) = v7[2];
  }

  else
  {
    v7 = _dispatch_continuation_alloc_from_heap();
  }

  v8 = _dispatch_Block_copy(block);
  v9 = *(block + 2);
  if (v9)
  {
    if (_dispatch_block_special_invoke != v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    *v7 = 276;
    v7[5] = v8;
    _dispatch_continuation_init_slow(v7, queue, 0);
    goto LABEL_6;
  }

  if (!_dispatch_block_special_invoke)
  {
    goto LABEL_10;
  }

LABEL_5:
  dispatch_group_notify_cold_1(v7, v8, StatusReg, queue);
LABEL_6:
  v7[6] = queue;
  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_group_notify_cold_3(v7, group, StatusReg, v10);
}

void dispatch_group_async_f(dispatch_group_t group, dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg + 176);
  if (v9)
  {
    *(StatusReg + 176) = v9[2];
  }

  else
  {
    v9 = _dispatch_continuation_alloc_from_heap();
  }

  v9->isa = (&stru_108 + 4);
  v9[4].isa = work;
  v9[5].isa = context;
  v10 = *(StatusReg + 32) & 0xFFFFFFLL;
  if (v10 >= 0x10FF)
  {
    v11 = 4351;
  }

  else
  {
    v11 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  v12 = *(StatusReg + 224);
  if (v12)
  {
    os_retain(*(StatusReg + 224));
  }

  v9[3].isa = v12;
  if (v12 != -1)
  {
    if (v12)
    {
      v13 = v12[8];
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (v10)
      {
        goto LABEL_13;
      }

LABEL_15:
      v15 = 0;
      v11 = 0;
      goto LABEL_17;
    }
  }

  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_13:
  isa_high = HIDWORD(queue[10].isa);
  if ((isa_high & 0x40000000) == 0 && (isa_high & 0xFFF) != 0)
  {
    goto LABEL_15;
  }

  v15 = __clz(__rbit32(v11 >> 8)) + 1;
LABEL_17:
  v9[1].isa = v11;
  dispatch_group_enter(group);
  v9[6].isa = group;
  if ((BYTE1(v9->isa) & 2) == 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(queue, v9, v16);
    }

    _dispatch_introspection_queue_item_enqueue(queue, v9);
  }

  v17 = *(queue->isa + 11);

  v17(queue, v9, v15);
}

void dispatch_group_async(dispatch_group_t group, dispatch_queue_t queue, dispatch_block_t block)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 176);
  if (v7)
  {
    *(StatusReg + 176) = v7[2];
  }

  else
  {
    v7 = _dispatch_continuation_alloc_from_heap();
  }

  v8 = _dispatch_Block_copy(block);
  v9 = *(block + 2);
  if (v9)
  {
    if (_dispatch_block_special_invoke != v9)
    {
      goto LABEL_5;
    }
  }

  else if (_dispatch_block_special_invoke)
  {
LABEL_5:
    v7->isa = (&stru_108 + 20);
    v7[4].isa = _dispatch_call_block_and_release;
    v7[5].isa = v8;
    v10 = *(StatusReg + 32) & 0xFFFFFFLL;
    if (v10 >= 0x10FF)
    {
      v11 = 4351;
    }

    else
    {
      v11 = *(StatusReg + 32) & 0xFFFFFFLL;
    }

    v12 = *(StatusReg + 224);
    if (v12)
    {
      os_retain(*(StatusReg + 224));
    }

    v7[3].isa = v12;
    if (v12 == -1)
    {
      goto LABEL_14;
    }

    if (v12)
    {
      v13 = v12[8];
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_14:
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    isa_high = HIDWORD(queue[10].isa);
    if ((isa_high & 0x40000000) != 0 || (isa_high & 0xFFF) == 0)
    {
      inited = (__clz(__rbit32(v11 >> 8)) + 1);
      goto LABEL_19;
    }

LABEL_17:
    inited = 0;
    v11 = 0;
LABEL_19:
    v7[1].isa = v11;
    goto LABEL_20;
  }

  v7->isa = (&stru_108 + 20);
  v7[5].isa = v8;
  inited = _dispatch_continuation_init_slow(v7, queue, 0);
LABEL_20:
  dispatch_group_enter(group);
  v7[6].isa = group;
  if ((BYTE1(v7->isa) & 2) == 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(queue, v7, v16);
    }

    _dispatch_introspection_queue_item_enqueue(queue, v7);
  }

  v17 = *(queue->isa + 11);

  v17(queue, v7, inited);
}

void dispatch_once_f(dispatch_once_t *predicate, void *context, dispatch_function_t function)
{
  explicit = atomic_load_explicit(predicate, memory_order_acquire);
  if (explicit != -1)
  {
    if ((explicit & 3) == 2)
    {
      if (4 * MEMORY[0xFFFFFC180] - explicit - 14 <= 0xFFFFFFFFFFFFFFEFLL)
      {
        *predicate = -1;
      }
    }

    else
    {
      v4 = 0;
      atomic_compare_exchange_strong_explicit(predicate, &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFCLL, memory_order_relaxed, memory_order_relaxed);
      if (v4)
      {
        _dispatch_once_wait(predicate);
      }

      else
      {
        _dispatch_once_callout(predicate, context, function);
      }
    }
  }
}

void _dispatch_once_callout(atomic_ullong *a1, void *context, uint64_t (*function)(void))
{
  v6 = function;
  if (context)
  {
    v6 = function;
    if (function == _dispatch_call_block_and_release)
    {
      if (context[2])
      {
        v6 = context[2];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  _dispatch_introspection_callout_entry(context, v6);
  _dispatch_client_callout(context, function);
  _dispatch_introspection_callout_return(context, v6);
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC;
  v8 = atomic_exchange_explicit(a1, (4 * MEMORY[0xFFFFFC180]) | 2, memory_order_release);
  if (v7 != v8)
  {

    _dispatch_gate_broadcast_slow(a1, v8);
  }
}

void dispatch_assert_queue_V2(dispatch_queue_t queue)
{
  v2 = *(queue->isa + 40);
  if ((v2 - 19) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    dispatch_assert_queue_V2_cold_2(v2);
  }

  isa = queue[7].isa;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (((isa ^ *(StatusReg + 24)) & 0xFFFFFFFC) != 0)
  {
    dispatch_assert_queue_V2_cold_1(StatusReg, queue);
  }
}

void _dispatch_assert_queue_fail(void *a1, int a2)
{
  v2 = "not ";
  v3 = "";
  v5 = 0;
  if (a2)
  {
    v2 = "";
  }

  if (a1[9])
  {
    v3 = a1[9];
  }

  asprintf(&v5, "%sBlock was %sexpected to execute on queue [%s (%p)]", "BUG IN CLIENT OF LIBDISPATCH: Assertion failed: ", v2, v3, a1);
  v4 = v5;
  _dispatch_log("%s", v5);
  qword_6D1C0 = v4;
  __break(1u);
}

void dispatch_assert_queue_not_V2(dispatch_queue_t queue)
{
  if (*(queue->isa + 40) - 19 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    dispatch_assert_queue_not_V2_cold_1(*(queue->isa + 40));
  }

  isa = queue[7].isa;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (((isa ^ *(StatusReg + 24)) & 0xFFFFFFFC) == 0)
  {
    goto LABEL_20;
  }

  v3 = *(StatusReg + 160);
  v4 = v3 == 0;
  if (v3)
  {
    v5 = v3 == queue;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *(StatusReg + 168);
    do
    {
      v7 = v3[3].isa;
      if (v6)
      {
        if (!v7)
        {
          v7 = *v6;
LABEL_13:
          v6 = v6[1];
          goto LABEL_14;
        }

        if (v3 == *v6)
        {
          goto LABEL_13;
        }
      }

LABEL_14:
      v4 = v7 == 0;
      if (v7)
      {
        v8 = v7 == queue;
      }

      else
      {
        v8 = 1;
      }

      v3 = v7;
    }

    while (!v8);
  }

  if (!v4)
  {
LABEL_20:
    _dispatch_assert_queue_fail(queue, 0);
  }
}

void dispatch_assert_queue_barrier(dispatch_queue_t queue)
{
  dispatch_assert_queue_V2(queue);
  if (LOWORD(queue[10].isa) != 1)
  {
    dispatch_assert_queue_barrier_cold_1(queue);
  }
}

void _dispatch_assert_queue_barrier_fail(void *a1)
{
  v1 = a1[9];
  if (!v1)
  {
    v1 = "";
  }

  v3 = 0;
  asprintf(&v3, "%sBlock was expected to act as a barrier on queue [%s (%p)]", "BUG IN CLIENT OF LIBDISPATCH: Assertion failed: ", v1, a1);
  v2 = v3;
  _dispatch_log("%s", v3);
  qword_6D1C0 = v2;
  __break(1u);
}

uint64_t dispatch_verify_current_queue_4swiftonly(void *a1)
{
  if (*(*a1 + 40) - 19 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    dispatch_verify_current_queue_4swiftonly_cold_1(*(*a1 + 40));
  }

  v1 = a1[7];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (((v1 ^ *(StatusReg + 24)) & 0xFFFFFFFC) == 0)
  {
    return 1;
  }

  v5 = *(StatusReg + 160);
  v3 = v5 != 0;
  if (v5 != a1 && v5 != 0)
  {
    v7 = *(StatusReg + 168);
    do
    {
      v8 = v5[3];
      if (v7)
      {
        if (!v8)
        {
          v8 = *v7;
LABEL_16:
          v7 = v7[1];
          goto LABEL_17;
        }

        if (v5 == *v7)
        {
          goto LABEL_16;
        }
      }

LABEL_17:
      v3 = v8 != 0;
      v9 = v8 == a1 || v8 == 0;
      v5 = v8;
    }

    while (!v9);
  }

  return v3;
}

void _dispatch_set_priority_and_mach_voucher_slow(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_13;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 32);
  if (v3 == a1)
  {
    v4 = 0;
    v5 = a1;
    goto LABEL_13;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v6 = *(StatusReg + 200) & 0x80000000;
    v4 = 16;
  }

  else
  {
    v4 = 0;
    v6 = *(StatusReg + 32) & 0x88000000;
  }

  v5 = v6 | a1;
  if ((v3 & 0xFFFFFF) != 0)
  {
    ++v4;
  }

  if (((qword_70E78 ^ *(StatusReg + 24)) & 0xFFFFFFFC) == 0)
  {
    qword_6D1C0 = "BUG IN LIBDISPATCH: Changing the QoS while on the manager queue";
    qword_6D1F0 = v6 | a1;
    __break(1u);
LABEL_25:

    _dispatch_bug(230, a1);
    return;
  }

  if ((a1 & 0x2000000) != 0)
  {
    v3 = v6 | a1;
    qword_6D1C0 = "BUG IN LIBDISPATCH: Cannot raise oneself to manager";
    qword_6D1F0 = v6 | a1;
    __break(1u);
    goto LABEL_29;
  }

  if ((v3 & 0x2000000) != 0)
  {
LABEL_29:
    qword_6D1C0 = "BUG IN LIBDISPATCH: Cannot turn a manager thread into a normal one";
    qword_6D1F0 = v3;
    __break(1u);
    return;
  }

LABEL_13:
  if (a2 == -1)
  {
    v7 = v4;
  }

  else
  {
    v7 = v4 | 2;
  }

  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  if (v8 && (*(v8 + 53) & 2) != 0)
  {
    _dispatch_event_loop_drain(1);
  }

  if (v7)
  {
    LODWORD(a1) = _pthread_set_properties_self();
    if (a1 == 22)
    {
      qword_6D1C0 = "BUG IN LIBDISPATCH: _pthread_set_properties_self failed";
      qword_6D1F0 = v5;
      __break(1u);
    }

    if (a1)
    {
      goto LABEL_25;
    }
  }
}

uint64_t _dispatch_set_priority_and_voucher_slow(uint64_t a1, int *object, char a3)
{
  if (object == -1)
  {
    v7 = -1;
    goto LABEL_15;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 224);
  if ((a3 & 2) == 0 || v7 != object)
  {
    if (object && (a3 & 4) == 0)
    {
      os_retain(object);
    }

    if (v7 == object)
    {
      goto LABEL_15;
    }

    *(StatusReg + 224) = object;
    if (object)
    {
      v9 = object[8];
      if (v7)
      {
LABEL_14:
        v10 = *(v7 + 32);
        goto LABEL_26;
      }
    }

    else
    {
      v9 = 0;
      if (v7)
      {
        goto LABEL_14;
      }
    }

    v10 = 0;
LABEL_26:
    if (v9 == v10)
    {
      v8 = -1;
    }

    else
    {
      v8 = v9;
    }

    if ((a3 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v7 = -1;
  v8 = -1;
  if (object && (a3 & 4) != 0)
  {
    os_release(object);
LABEL_15:
    v8 = -1;
  }

  if ((a3 & 8) == 0)
  {
LABEL_17:
    _dispatch_set_priority_and_mach_voucher_slow(a1, v8);
  }

LABEL_18:
  if (v7 != -1 && (a3 & 2) != 0)
  {
    if (v7)
    {
      os_release(v7);
    }

    return -1;
  }

  return v7;
}

void _dispatch_continuation_free_to_cache_limit(uint64_t a1)
{
  _dispatch_continuation_free_to_heap(a1);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 176);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3 - _dispatch_continuation_cache_limit >= 1)
    {
      v4 = _dispatch_continuation_cache_limit - v3 + 1;
      do
      {
        v5 = v2;
        v2 = *(v2 + 16);
        _dispatch_continuation_free_to_heap(v5);
        if (!v4)
        {
          break;
        }

        ++v4;
      }

      while (v2);
      *(StatusReg + 176) = v2;
    }
  }
}

void _dispatch_continuation_pop(NSObject *a1, uint64_t a2, unsigned int a3, NSObject *a4, int8x16_t a5)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = StatusReg[24];
  if (v10)
  {
    (*v10)(a4);
  }

  isa = a1->isa;
  if (a1->isa < ".A.dylib")
  {
    if ((a3 & 0x1000000) != 0)
    {
      v13 = objc_autoreleasePoolPush();
      isa = a1->isa;
    }

    else
    {
      v13 = 0;
    }

    v14 = a1[3].isa;
    if ((isa & 4) != 0)
    {
      a1[3].isa = -1;
    }

    if (v14 != -1)
    {
      if (v14)
      {
        v15 = v14[8];
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v16 = a1[1].isa;
    if (v16 == -1)
    {
      v19 = 0;
    }

    else
    {
      v17 = StatusReg[25];
      if (((v17 >> 8) & 0xF) != 0)
      {
        v18 = 1 << ((BYTE1(v17) & 0xFu) + 7);
      }

      else
      {
        v18 = 0;
      }

      v19 = v18 | StatusReg[25];
      if ((v16 & 0xFFFFFF) != 0)
      {
        if ((v16 & 0xFFFFFF) >= (v18 & 0xFFFFFF00) && ((v17 & 0x44000000) != 0 || (a1[1].isa & 0x10000000) != 0))
        {
          v19 = v16 & 0xFFFFFF;
        }
      }

      else if (v17 >> 12)
      {
        v19 = (256 << ((v17 >> 12) - 1)) | 0xFF;
      }
    }

    v21 = v19 & 0x7FFFFFFF02FFFFFFLL;
    v22 = StatusReg[4];
    if ((v22 & 0x1000000) != 0)
    {
      if (v21)
      {
        goto LABEL_77;
      }

      v21 = v22 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v21 == (v22 & 0xFFFFFFFF76FFFFFFLL))
    {
LABEL_32:
      if (v14 == -1)
      {
        goto LABEL_37;
      }

      if (StatusReg[28] == v14)
      {
        if ((isa & 4) != 0 && v14)
        {
          os_release(v14);
        }

LABEL_37:
        if ((isa & 0x200) != 0)
        {
          goto LABEL_41;
        }

LABEL_38:
        if (MEMORY[0xFFFFFC100])
        {
          _dispatch_trace_item_pop_internal(a4, a1, a5);
        }

        _dispatch_introspection_queue_item_dequeue(a4, a1);
LABEL_41:
        if ((isa & 4) != 0)
        {
          v24 = StatusReg[22];
          if (v24)
          {
            v25 = *(v24 + 2) + 1;
          }

          else
          {
            v25 = 1;
          }

          v23 = a1;
          if (v25 <= _dispatch_continuation_cache_limit)
          {
            v23 = 0;
            a1[2].isa = v24;
            LODWORD(a1[1].isa) = v25;
            StatusReg[22] = a1;
          }
        }

        else
        {
          v23 = 0;
        }

        if ((isa & 8) != 0)
        {
          v30 = a1[6].isa;
          v31 = *(v30->isa + 5);
          if (v31 != 514)
          {
            qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected object type";
            qword_6D1F0 = v31;
            __break(1u);
            return;
          }

          v32 = a1[4].isa;
          v33 = a1[5].isa;
          v34 = v32;
          if (v33)
          {
            v34 = a1[4].isa;
            if (v32 == _dispatch_call_block_and_release)
            {
              if (v33[2])
              {
                v34 = v33[2];
              }

              else
              {
                v34 = 0;
              }
            }
          }

          _dispatch_introspection_callout_entry(v33, v34);
          _dispatch_client_callout(v33, v32);
          _dispatch_introspection_callout_return(v33, v34);
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          _dispatch_introspection_queue_item_complete(a1);
          dispatch_group_leave(v30);
          if (!v23)
          {
LABEL_57:
            if (!v13)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          }
        }

        else
        {
          v27 = a1[4].isa;
          v26 = a1[5].isa;
          v28 = v27;
          if (v26)
          {
            v28 = a1[4].isa;
            if (v27 == _dispatch_call_block_and_release)
            {
              if (v26[2])
              {
                v28 = v26[2];
              }

              else
              {
                v28 = 0;
              }
            }
          }

          _dispatch_introspection_callout_entry(v26, v28);
          _dispatch_client_callout(v26, v27);
          _dispatch_introspection_callout_return(v26, v28);
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          _dispatch_introspection_queue_item_complete(a1);
          if (!v23)
          {
            goto LABEL_57;
          }
        }

        _dispatch_continuation_free_to_cache_limit(v23);
        if (!v13)
        {
          goto LABEL_59;
        }

LABEL_58:
        objc_autoreleasePoolPop(v13);
        goto LABEL_59;
      }

      v21 = 0;
LABEL_77:
      _dispatch_set_priority_and_voucher_slow(v21, v14, isa & 4 | 2);
      if ((isa & 0x200) != 0)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v21)
    {
      goto LABEL_77;
    }

    goto LABEL_32;
  }

  v12.isa = a1->isa;
  if (*(isa + 5) == 1)
  {
    (*(isa + 6))(a1, 0, (a3 >> 21) & 1);
  }

  else
  {
    (*(isa + 8))(a1, a2, a3 & 0xFFFF0000);
  }

LABEL_59:
  if (v10)
  {
    v29 = v10[1];

    v29(a4);
  }
}

dispatch_block_t dispatch_block_create(dispatch_block_flags_t flags, dispatch_block_t block)
{
  if ((flags & 0xFFFFFF00) != 0)
  {
    return 0;
  }

  v4 = flags | 0x40000000;
  if ((flags & 0xA) == 0)
  {
    v4 = flags;
  }

  if ((v4 & 0x20) != 0)
  {
    v5 = v4 & 0xFFFFFFFF400000EFLL;
  }

  else
  {
    v5 = v4;
  }

  if ((v5 & 2) != 0)
  {
    v6 = 0;
    goto LABEL_15;
  }

  if ((v5 & 0x40) != 0)
  {
    v6 = -1;
    goto LABEL_15;
  }

  if ((v5 & 4) != 0)
  {
    v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
LABEL_15:
    if ((v5 & 0x40000004) == 4)
    {
      v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) & 0xFFFFFFLL;
      if (v8 >= 0x10FF)
      {
        v7 = 4351;
      }

      else
      {
        v7 = v8;
      }

      v5 |= 0xC0000000uLL;
    }

    else
    {
      v7 = 0;
      v5 |= 0x80000000uLL;
    }

    goto LABEL_21;
  }

  v6 = 0;
  v7 = 0;
LABEL_21:
  v2 = _dispatch_block_create(v5, v6, v7, block);
  *(block + 2);
  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  return v2;
}

dispatch_block_t dispatch_block_create_with_qos_class(dispatch_block_flags_t flags, dispatch_qos_class_t qos_class, int relative_priority, dispatch_block_t block)
{
  if ((flags & 0xFFFFFF00) != 0)
  {
    return 0;
  }

  v4 = 0;
  if (qos_class > QOS_CLASS_USER_INTERACTIVE || ((1 << qos_class) & 0x202220221) == 0)
  {
    return v4;
  }

  if (relative_priority != 0 && relative_priority < 0xFFFFFFF1)
  {
    return 0;
  }

  v6 = flags;
  v7 = flags | 0x40000000;
  v8 = _pthread_qos_class_encode();
  v9 = 0;
  if ((v6 & 0x20) != 0)
  {
    v10 = v7 & 0xFFFFFFFF400000EFLL;
  }

  else
  {
    v10 = v7;
  }

  if ((v10 & 2) == 0)
  {
    if ((v10 & 0x40) != 0)
    {
      v9 = -1;
    }

    else
    {
      if ((v10 & 4) == 0)
      {
        v9 = 0;
        goto LABEL_17;
      }

      v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
    }
  }

  v10 |= 0x80000000uLL;
LABEL_17:
  v4 = _dispatch_block_create(v10, v9, v8, block);
  *(block + 2);
  v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
  if (MEMORY[0xFFFFFC100])
  {
    v13 = v4;
    kdebug_trace();
    return v13;
  }

  return v4;
}

void *dispatch_block_create_with_voucher(uint64_t a1, void *a2, void *aBlock)
{
  if ((a1 & 0xFFFFFF00) != 0)
  {
    return 0;
  }

  v5 = a1 & 0xFFFFFFFF000000BFLL | 0xC0000000;
  if ((a1 & 0xA) == 0)
  {
    v5 = a1 & 0xFFFFFFFF000000BFLL | 0x80000000;
  }

  if ((v5 & 0x20) != 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFEFLL;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == -3)
  {
    a2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  }

  if ((v6 & 0x40000004) == 4)
  {
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) & 0xFFFFFFLL;
    if (v7 >= 0x10FF)
    {
      v8 = 4351;
    }

    else
    {
      v8 = v7;
    }

    v6 |= 0x40000000uLL;
  }

  else
  {
    v8 = 0;
  }

  v3 = _dispatch_block_create(v6, a2, v8, aBlock);
  *(aBlock + 2);
  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  return v3;
}

void *dispatch_block_create_with_voucher_and_qos_class(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, void *a5)
{
  if ((a1 & 0xFFFFFF00) != 0)
  {
    return 0;
  }

  v5 = 0;
  if (a3 <= 0x21 && ((1 << a3) & 0x202220221) != 0)
  {
    if (a4 != 0 && a4 < 0xFFFFFFF1)
    {
      return 0;
    }

    else
    {
      v8 = a1;
      v9 = a1 & 0xFFFFFFFF000000B7 | 0xC0000000;
      v10 = _pthread_qos_class_encode();
      if ((v8 & 0x20) != 0)
      {
        v11 = v9 & 0xFFFFFFFFFFFFFFEFLL;
      }

      else
      {
        v11 = v9;
      }

      if (a2 == -3)
      {
        a2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
      }

      v5 = _dispatch_block_create(v11, a2, v10, a5);
      a5[2];
      v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
      if (MEMORY[0xFFFFFC100])
      {
        v13 = v5;
        kdebug_trace();
        return v13;
      }
    }
  }

  return v5;
}

void dispatch_block_perform(dispatch_block_flags_t flags, dispatch_block_t block)
{
  if ((flags & 0xFFFFFF00) != 0)
  {
    dispatch_block_perform_cold_1(flags);
  }

  v2 = flags | 0x40000000;
  if ((flags & 0xA) == 0)
  {
    v2 = flags;
  }

  if ((v2 & 0x20) != 0)
  {
    v2 &= 0xFFFFFFFF400000EFLL;
  }

  v4[0] = 3512316172;
  v4[1] = v2 | ((v2 & 2) << 30);
  v5 = 8;
  v6 = 0;
  if ((v2 & 2) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  v7 = 0;
  v8 = v3;
  v11 = 0;
  v12 = 0;
  v9 = block;
  v10 = 0;
  _dispatch_block_invoke_direct(v4);
}

void _dispatch_block_invoke_direct(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    _dispatch_block_invoke_direct_cold_1(*(a1 + 16));
  }

  if (v2)
  {
LABEL_30:
    if ((v2 & 8) != 0)
    {
      return;
    }

    goto LABEL_31;
  }

  v4 = 0;
  if ((v1 & 0x40000000) != 0)
  {
    v5 = 0;
    if ((v1 & 0x30) != 0x10)
    {
      v6 = *(a1 + 24);
      v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) & 0xFFFFFFLL;
      v8 = v7 != 0;
      v9 = v7 < (v6 & 0xFFFFFFuLL);
      v10 = v6 & 0xFFFFFFFF02FFFFFFLL;
      if (v8 && v9)
      {
        v4 = v7;
      }

      else
      {
        v4 = 0;
      }

      if (v8 && v9)
      {
        v5 = v10;
      }

      else
      {
        v5 = 0;
      }
    }

    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    if ((v1 & 0x80000000) == 0)
    {
LABEL_12:
      v11 = -1;
      goto LABEL_15;
    }
  }

  v11 = *(a1 + 32);
LABEL_15:
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v13 = StatusReg[4];
  if ((v13 & 0x1000000) != 0)
  {
    if (v5)
    {
LABEL_46:
      v11 = _dispatch_set_priority_and_voucher_slow(v5, v11, 0);
      goto LABEL_21;
    }

    v5 = v13 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v5 == (v13 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_17;
  }

  if (v5)
  {
    goto LABEL_46;
  }

LABEL_17:
  if (v11 == -1)
  {
    goto LABEL_21;
  }

  if (StatusReg[28] != v11)
  {
    v5 = 0;
    goto LABEL_46;
  }

  if (v11)
  {
    os_retain(v11);
  }

LABEL_21:
  *(a1 + 64) = StatusReg[3];
  v14 = *(a1 + 40);
  if (v14[2])
  {
    v15 = *(*(a1 + 40) + 16);
  }

  else
  {
    v15 = 0;
  }

  _dispatch_introspection_callout_entry(v14, v15);
  _dispatch_client_callout(v14, v15);
  _dispatch_introspection_callout_return(v14, v15);
  v16 = StatusReg[4];
  if ((v16 & 0x1000000) != 0)
  {
    if (v4)
    {
      goto LABEL_48;
    }

    v4 = v16 & 0xFFFFFFFFFEFFFFFFLL;
LABEL_43:
    if (v4)
    {
      goto LABEL_48;
    }

    goto LABEL_26;
  }

  if (v4 != (v16 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_43;
  }

LABEL_26:
  if (v11 == -1)
  {
    goto LABEL_30;
  }

  if (StatusReg[28] == v11)
  {
    if (v11)
    {
      os_release(v11);
    }

    goto LABEL_30;
  }

  v4 = 0;
LABEL_48:
  _dispatch_set_priority_and_voucher_slow(v4, v11, 6);
  if ((v2 & 8) != 0)
  {
    return;
  }

LABEL_31:
  if (!atomic_fetch_add_explicit((a1 + 20), 1u, memory_order_relaxed))
  {
    v17 = *(a1 + 48);

    dispatch_group_leave(v17);
  }
}

void _dispatch_block_sync_invoke(uint64_t a1, atomic_uint *a2)
{
  v3 = *(a1 + 32);
  if (v3 != 3512316172)
  {
    _dispatch_continuation_get_function_symbol_cold_1(v3);
  }

  v4 = *(a1 + 48);
  if ((v4 & 4) != 0)
  {
    _dispatch_block_invoke_direct_cold_1(*(a1 + 48));
  }

  if (v4)
  {
LABEL_21:
    if ((v4 & 8) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if ((*(a1 + 40) & 0x80000000) == 0)
  {
    v5 = -1;
    goto LABEL_16;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = StatusReg[25];
  v8 = 1 << ((BYTE1(v7) & 0xFu) + 7);
  if (((v7 >> 8) & 0xF) == 0)
  {
    v8 = 0;
  }

  v9 = (v7 >> 12) - 1;
  v10 = v7 >> 12 == 0;
  v5 = *(a1 + 64);
  v11 = v8 | StatusReg[25];
  if (!v10)
  {
    v11 = (256 << v9) | 0xFF;
  }

  v12 = v11 & 0x7FFFFFFF02FFFFFFLL;
  v13 = StatusReg[4];
  if ((v13 & 0x1000000) != 0)
  {
    if (v12)
    {
LABEL_40:
      v5 = _dispatch_set_priority_and_voucher_slow(v12, *(a1 + 64), 0);
      goto LABEL_16;
    }

    v12 = v13 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v12 == (v13 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_12;
  }

  if (v12)
  {
    goto LABEL_40;
  }

LABEL_12:
  if (v5 == -1)
  {
    goto LABEL_16;
  }

  if (StatusReg[28] != v5)
  {
    v12 = 0;
    goto LABEL_40;
  }

  if (v5)
  {
    os_retain(*(a1 + 64));
  }

LABEL_16:
  (*(*(a1 + 72) + 16))();
  v14 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v15 = *(v14 + 32);
  if ((v15 & 0x1000000) == 0 || (v17 = v15 & 0xFFFFFFFFFEFFFFFFLL, (v15 & 0xFFFFFFFFFEFFFFFFLL) == 0))
  {
    if (v5 == -1)
    {
      goto LABEL_21;
    }

    if (*(v14 + 224) == v5)
    {
      if (v5)
      {
        os_release(v5);
      }

      goto LABEL_21;
    }

    v17 = 0;
  }

  _dispatch_set_priority_and_voucher_slow(v17, v5, 6);
  if ((v4 & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (!atomic_fetch_add_explicit((a1 + 52), 1u, memory_order_relaxed))
  {
    dispatch_group_leave(*(a1 + 80));
  }

LABEL_24:
  __swp(a2, (a1 + 88));
  if (a2 && a2[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(a2 + 2, 0xFFFFFFFE, memory_order_release);
    if (add_explicit <= 2)
    {
      _dispatch_block_sync_invoke_cold_3(add_explicit, a2);
    }
  }
}

void dispatch_block_cancel(dispatch_block_t block)
{
  v1 = *(block + 2);
  if (v1)
  {
    v2 = *(block + 2);
  }

  if (v1 != _dispatch_block_special_invoke)
  {
    dispatch_block_cancel_cold_1();
  }

  if (*(block + 4) != 3512316172)
  {
    _dispatch_continuation_get_function_symbol_cold_1(*(block + 4));
  }

  atomic_fetch_or_explicit(block + 12, 1u, memory_order_relaxed);
}

intptr_t dispatch_block_testcancel(dispatch_block_t block)
{
  v1 = *(block + 2);
  if (v1)
  {
    v2 = *(block + 2);
  }

  if (v1 != _dispatch_block_special_invoke)
  {
    dispatch_block_testcancel_cold_1();
  }

  if (*(block + 4) != 3512316172)
  {
    _dispatch_continuation_get_function_symbol_cold_1(*(block + 4));
  }

  return *(block + 12) & 1;
}

intptr_t dispatch_block_wait(dispatch_block_t block, dispatch_time_t timeout)
{
  v5 = *(block + 2);
  if (v5)
  {
    v6 = *(block + 2);
  }

  if (v5 != _dispatch_block_special_invoke)
  {
    dispatch_block_wait_cold_1();
  }

  v7 = *(block + 4);
  if (v7 != 3512316172)
  {
    _dispatch_continuation_get_function_symbol_cold_1(v7);
  }

  v8 = atomic_fetch_or_explicit(block + 12, 2u, memory_order_relaxed);
  if ((v8 & 6) != 0)
  {
    dispatch_block_wait_cold_3(v8);
  }

  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
  __swp(v2, block + 22);
  if (v2)
  {
    v10 = *v2 + 80;
    v11 = __clz(__rbit32((v9 >> 8) & 0x3FFF));
    if (((v9 >> 8) & 0x3FFF) != 0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 0;
    }

    (*(*v2 + 80))(v2, v12, 9);
  }

  v13 = *(block + 24);
  if (v13)
  {
    v14 = *(block + 24);
    _pthread_qos_override_start_direct();
    v15 = v2 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = *(block + 13);
  if (!v15 || v16 >= 2)
  {
    dispatch_block_wait_cold_4(v16);
  }

  v17 = dispatch_group_wait(*(block + 10), timeout);
  if (v13)
  {
    _pthread_qos_override_end_direct();
  }

  v18 = (block + 48);
  if (v17)
  {
    atomic_fetch_and_explicit(v18, 0xFFFFFFFD, memory_order_relaxed);
  }

  else
  {
    atomic_fetch_or_explicit(v18, 4u, memory_order_relaxed);
  }

  return v17;
}

void dispatch_block_notify(dispatch_block_t block, dispatch_queue_t queue, dispatch_block_t notification_block)
{
  v3 = *(block + 2);
  if (v3)
  {
    v4 = *(block + 2);
  }

  if (v3 != _dispatch_block_special_invoke)
  {
    dispatch_block_notify_cold_1(block);
  }

  if (*(block + 4) != 3512316172)
  {
    _dispatch_continuation_get_function_symbol_cold_1(*(block + 4));
  }

  if (*(block + 13) >= 2)
  {
    dispatch_block_notify_cold_3(*(block + 13));
  }

  v5 = *(block + 10);

  dispatch_group_notify(v5, queue, notification_block);
}

uint64_t *_dispatch_continuation_init_slow(uint64_t *result, atomic_uint *a2, int a3)
{
  v5 = result;
  v6 = result[5];
  if (*(v6 + 16) == _dispatch_block_special_invoke)
  {
    v9 = *(v6 + 32);
    v7 = (v6 + 32);
    v8 = v9;
    if (v9 != 3512316172)
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_6D1F0 = v8;
      __break(1u);
      goto LABEL_44;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = v7[1];
  v11 = *result;
  if (a2[2] == 0x7FFFFFFF || atomic_fetch_add_explicit(a2 + 2, 2u, memory_order_relaxed) > 0)
  {
    v12 = 0;
    atomic_compare_exchange_strong_explicit(v7 + 7, &v12, a2, memory_order_relaxed, memory_order_relaxed);
    if (!v12 || a2[2] == 0x7FFFFFFF || (add_explicit = atomic_fetch_add_explicit(a2 + 2, 0xFFFFFFFE, memory_order_release), add_explicit > 2))
    {
LABEL_9:
      v14 = _dispatch_block_async_invoke_and_release;
      if ((v11 & 4) == 0)
      {
        v14 = _dispatch_block_async_invoke;
      }

      v5[4] = v14;
      if ((v10 & 0x40000000) != 0)
      {
        v15 = v7[3];
      }

      else
      {
        if ((a3 & 0x40000000) != 0)
        {
          v16 = 0;
          goto LABEL_25;
        }

        v15 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
        if ((v15 >> 8) > 0x10uLL)
        {
          v16 = 4351;
LABEL_17:
          if (((v10 | a3) & 0x20) != 0)
          {
            v16 |= 0x10000000uLL;
          }

          else
          {
            v17 = (a2[21] >> 30) & 1;
            if ((a2[21] & 0xFFF) == 0)
            {
              v17 = 1;
            }

            if (!v17)
            {
              v16 = 0;
            }
          }

LABEL_25:
          v5[1] = v16;
          if ((v10 & 0x80000000) != 0)
          {
            v18 = v7[4];
            if (v18 + 1 < 2)
            {
LABEL_32:
              v5[3] = v18;
              if (v18 == -1)
              {
                goto LABEL_36;
              }

              if (v18)
              {
                v19 = v18[8];
              }

              if (!MEMORY[0xFFFFFC100])
              {
                goto LABEL_36;
              }

              goto LABEL_40;
            }
          }

          else
          {
            if (((v10 | a3) & 0x40) != 0)
            {
              v18 = 0;
              goto LABEL_32;
            }

            v18 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
            if (!v18)
            {
              goto LABEL_32;
            }
          }

          os_retain(v18);
          goto LABEL_32;
        }
      }

      v16 = v15 & 0xFFFFFF;
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (add_explicit == 2)
    {
      _os_object_dispose(a2, a2);
      goto LABEL_9;
    }

LABEL_44:
    qword_6D1C0 = "API MISUSE: Over-release of an object";
    __break(1u);
    return result;
  }

  qword_6D1C0 = "API MISUSE: Resurrection of an object";
  __break(1u);
LABEL_40:
  kdebug_trace();
LABEL_36:
  *v5 = v11 | (2 * (v10 & 1)) | 0x20;
  v20 = __clz(__rbit32((*(v5 + 2) >> 8) & 0x3FFF));
  if (((*(v5 + 2) >> 8) & 0x3FFF) != 0)
  {
    return (v20 + 1);
  }

  else
  {
    return 0;
  }
}

void dispatch_barrier_async_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 176);
  if (v6)
  {
    *(StatusReg + 176) = v6[2];
    *v6 = 262;
    v6[4] = work;
    v6[5] = context;
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

    v6[3] = v9;
    if (v9 == -1)
    {
      goto LABEL_11;
    }

    if (v9)
    {
      v10 = *(v9 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_11:
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    isa_high = HIDWORD(queue[10].isa);
    if ((isa_high & 0x40000000) != 0 || (isa_high & 0xFFF) == 0)
    {
      v12 = __clz(__rbit32(v8 >> 8)) + 1;
      goto LABEL_16;
    }

LABEL_14:
    v12 = 0;
    v8 = 0;
LABEL_16:
    v6[1] = v8;
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(queue, v6, v3);
    }

    _dispatch_introspection_queue_item_enqueue(queue, v6);
    v13 = *(queue->isa + 11);

    v13(queue, v6, v12);
    return;
  }

  _dispatch_async_f_slow(queue, context, work, 0, 6);
}

uint64_t _dispatch_async_f_slow(uint64_t a1, objc_class *a2, objc_class *a3, char a4, uint64_t a5)
{
  v10 = _dispatch_continuation_alloc_from_heap();
  v10->isa = (a5 | 0x100);
  v10[4].isa = a3;
  v10[5].isa = a2;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v13 = *(StatusReg + 32) & 0xFFFFFFLL;
  if (v13 >= 0x10FF)
  {
    v14 = 4351;
  }

  else
  {
    v14 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  if ((a4 & 0x40) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(StatusReg + 224);
    if (v15)
    {
      os_retain(*(StatusReg + 224));
    }
  }

  v10[3].isa = v15;
  if (v15 == -1)
  {
    goto LABEL_12;
  }

  if (v15)
  {
    v16 = v15[8];
  }

  if (!MEMORY[0xFFFFFC100])
  {
LABEL_12:
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_16:
    v18 = 0;
    v14 = 0;
    goto LABEL_19;
  }

  kdebug_trace();
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_13:
  if ((a4 & 0x20) != 0)
  {
    v14 |= 0x10000000uLL;
  }

  else
  {
    v17 = *(a1 + 84);
    if ((v17 & 0x40000000) == 0 && (v17 & 0xFFF) != 0)
    {
      goto LABEL_16;
    }
  }

  v18 = __clz(__rbit32(v14 >> 8)) + 1;
LABEL_19:
  v10[1].isa = v14;
  if ((BYTE1(v10->isa) & 2) == 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(a1, v10, v11);
    }

    _dispatch_introspection_queue_item_enqueue(a1, v10);
  }

  v19 = *(*a1 + 88);

  return v19(a1, v10, v18);
}

uint64_t _dispatch_barrier_async_detached_f(NSObject *a1, uint64_t a2, uint64_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 176);
  if (v7)
  {
    *(StatusReg + 176) = v7[2];
  }

  else
  {
    v7 = _dispatch_continuation_alloc_from_heap();
  }

  v7[4] = a3;
  v7[5] = a2;
  v7[3] = -1;
  *v7 = xmmword_45150;
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_trace_item_push_internal(a1, v7, xmmword_45150);
  }

  _dispatch_introspection_queue_item_enqueue(a1, v7);
  v8 = *(a1->isa + 11);

  return v8(a1, v7, 0);
}

void dispatch_barrier_async(dispatch_queue_t queue, dispatch_block_t block)
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

  v6 = _dispatch_Block_copy(block);
  v8 = *(block + 2);
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
    *v5 = 278;
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

    isa_high = HIDWORD(queue[10].isa);
    if ((isa_high & 0x40000000) != 0 || (isa_high & 0xFFF) == 0)
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

  *v5 = 278;
  v5[5] = v6;
  inited = _dispatch_continuation_init_slow(v5, queue, 0);
LABEL_20:
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_trace_item_push_internal(queue, v5, v7);
  }

  _dispatch_introspection_queue_item_enqueue(queue, v5);
  v15 = *(queue->isa + 11);

  v15(queue, v5, inited);
}

void dispatch_channel_async_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 176);
  if (v6)
  {
    *(StatusReg + 176) = *(v6 + 16);
    *v6 = 260;
    *(v6 + 32) = work;
    *(v6 + 40) = context;
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

    *(v6 + 24) = v9;
    if (v9 == -1)
    {
      goto LABEL_11;
    }

    if (v9)
    {
      v10 = *(v9 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_11:
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    isa_high = HIDWORD(queue[10].isa);
    if ((isa_high & 0x40000000) != 0 || (isa_high & 0xFFF) == 0)
    {
      v12 = __clz(__rbit32(v8 >> 8)) + 1;
      goto LABEL_16;
    }

LABEL_14:
    v12 = 0;
    v8 = 0;
LABEL_16:
    *(v6 + 8) = v8;
    if ((*(v6 + 1) & 2) == 0)
    {
      if (MEMORY[0xFFFFFC100])
      {
        _dispatch_trace_item_push_internal(queue, v6, v3);
      }

      _dispatch_introspection_queue_item_enqueue(queue, v6);
    }

    v13 = *(queue->isa + 11);

    v13(queue, v6, v12);
    return;
  }

  _dispatch_async_f_slow(queue, context, work, 0, 4);
}

uint64_t dispatch_async_enforce_qos_class_f(NSObject *a1, objc_class *a2, objc_class *a3, int8x16_t a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 176);
  if (v6)
  {
    *(StatusReg + 176) = *(v6 + 16);
    *v6 = 260;
    *(v6 + 32) = a3;
    *(v6 + 40) = a2;
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

    *(v6 + 24) = v9;
    if (v9 != -1)
    {
      if (v9)
      {
        v10 = *(v9 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v11 = v8 | 0x10000000;
    v12 = __clz(__rbit32((v8 | 0x10000000uLL) >> 8));
    if (v7)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 0;
    }

    if (!v7)
    {
      v11 = 0;
    }

    *(v6 + 8) = v11;
    if ((*(v6 + 1) & 2) == 0)
    {
      if (MEMORY[0xFFFFFC100])
      {
        _dispatch_trace_item_push_internal(a1, v6, a4);
      }

      _dispatch_introspection_queue_item_enqueue(a1, v6);
    }

    v14 = *(a1->isa + 11);

    return v14(a1, v6, v13);
  }

  else
  {

    return _dispatch_async_f_slow(a1, a2, a3, 32, 4);
  }
}

void dispatch_channel_async(dispatch_queue_t queue, dispatch_block_t block)
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

  v6 = _dispatch_Block_copy(block);
  v8 = *(block + 2);
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
    v5->isa = (&stru_108 + 12);
    v5[4].isa = _dispatch_call_block_and_release;
    v5[5].isa = v6;
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

    v5[3].isa = v11;
    if (v11 == -1)
    {
      goto LABEL_14;
    }

    if (v11)
    {
      v12 = v11[8];
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

    isa_high = HIDWORD(queue[10].isa);
    if ((isa_high & 0x40000000) != 0 || (isa_high & 0xFFF) == 0)
    {
      inited = (__clz(__rbit32(v10 >> 8)) + 1);
      goto LABEL_19;
    }

LABEL_17:
    inited = 0;
    v10 = 0;
LABEL_19:
    v5[1].isa = v10;
    goto LABEL_20;
  }

  v5->isa = (&stru_108 + 12);
  v5[5].isa = v6;
  inited = _dispatch_continuation_init_slow(v5, queue, 0);
LABEL_20:
  if ((BYTE1(v5->isa) & 2) == 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(queue, v5, v7);
    }

    _dispatch_introspection_queue_item_enqueue(queue, v5);
  }

  v15 = *(queue->isa + 11);

  v15(queue, v5, inited);
}

atomic_ullong *_dispatch_barrier_trysync_or_async_f(atomic_ullong *a1, void *context, uint64_t (*function)(void), char a4)
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v5 = *(a1 + 40) << 41;
  v6 = v4 & 0xFFFFFFFC | ((a4 & 1) << 58);
  v7 = a1[7];
  do
  {
    if (v7 != (v7 & 0x3000000000) - v5 + 0x20000000000000)
    {
      return _dispatch_barrier_async_detached_f(a1, context, function);
    }

    v8 = v7;
    atomic_compare_exchange_strong_explicit(a1 + 7, &v8, v7 & 0x3000000000 | v6 | 0x60000000000002, memory_order_acquire, memory_order_acquire);
    v9 = v8 == v7;
    v7 = v8;
  }

  while (!v9);
  if ((a4 & 1) == 0 || *(a1 + 2) == 0x7FFFFFFF || atomic_fetch_add_explicit(a1 + 2, 2u, memory_order_relaxed) > 0)
  {
    return _dispatch_barrier_trysync_or_async_f_complete(a1, context, function, a4);
  }

  qword_6D1C0 = "API MISUSE: Resurrection of an object";
  __break(1u);
  return a1;
}

uint64_t _dispatch_barrier_trysync_or_async_f_complete(atomic_ullong *a1, void *context, uint64_t (*function)(void), char a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v12 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v12;
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
  *(StatusReg + 160) = v12;
  v10 = 4;
  if (a4)
  {
    if (atomic_fetch_add_explicit(a1 + 7, 0xFC00000000000000, memory_order_relaxed) >> 55 == 8)
    {
      v10 = 5;
    }

    else
    {
      v10 = 4;
    }
  }

  return (*(*a1 + 80))(a1, 0, v10);
}

void dispatch_barrier_sync_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (*(queue->isa + 40) != 17 || (v3 = work, v5 = context, v4 = queue, v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), v8 = queue[10].isa, (v8 & 0x1000000) != 0) && (v8 = queue[10].isa, (v8 & 0x40000) != 0))
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Queue type doesn't support dispatch_sync";
    __break(1u);
LABEL_18:

    _dispatch_sync_recurse(v4, v5, v3, 2uLL, v6);
  }

  else
  {
    v9 = v8 << 41;
    v10 = v7 & 0xFFFFFFFC;
    isa = queue[7].isa;
    do
    {
      if (isa != ((isa & 0x3000000000) - v9 + 0x20000000000000))
      {

        _dispatch_sync_f_slow(queue, context, work, 2uLL, queue, 2, v6);
        return;
      }

      v12 = isa;
      atomic_compare_exchange_strong_explicit(&queue[7], &v12, v10 | isa & 0x3000000000 | 0x60000000000002, memory_order_acquire, memory_order_acquire);
      v13 = v12 == isa;
      isa = v12;
    }

    while (!v13);
    if (*(queue[3].isa + 3))
    {
      goto LABEL_18;
    }

    if (byte_6D338 == 1)
    {
      _dispatch_introspection_order_record(queue);
    }

    v14 = _dispatch_introspection_queue_fake_sync_push_pop(v4, v5, v3, 2);

    _dispatch_lane_barrier_sync_invoke_and_complete(v4, v5, v3, v14);
  }
}

void dispatch_sync_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (LOWORD(queue[10].isa) == 1)
  {

    _dispatch_barrier_sync_f(queue, context, work, 0, v3);
  }

  else if (*(queue->isa + 40) != 17 || (queue[10].isa & 0x1000000) != 0 && (queue[10].isa & 0x40000) != 0)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Queue type doesn't support dispatch_sync";
    __break(1u);
LABEL_23:

    _dispatch_sync_recurse(queue, context, work, 0, v3);
  }

  else
  {
    if (!queue[6].isa)
    {
      isa = queue[7].isa;
      while ((isa & 0xFFC0018000000000) == 0)
      {
        v5 = isa;
        atomic_compare_exchange_strong_explicit(&queue[7], &v5, isa + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        v6 = v5 == isa;
        isa = v5;
        if (v6)
        {
          if (*(queue[3].isa + 3))
          {
            goto LABEL_23;
          }

          if (byte_6D338 == 1)
          {
            v7 = work;
            v8 = context;
            v9 = queue;
            _dispatch_introspection_order_record(queue);
            queue = v9;
            context = v8;
            work = v7;
          }

          v10 = context;
          v11 = work;
          v12 = queue;
          v13 = _dispatch_introspection_queue_fake_sync_push_pop(queue, context, work, 0);

          _dispatch_sync_invoke_and_complete(v12, v10, v11, v13);
          return;
        }
      }
    }

    _dispatch_sync_f_slow(queue, context, work, 0, queue, 0, v3);
  }
}

void dispatch_barrier_sync(dispatch_queue_t queue, dispatch_block_t block)
{
  v3 = *(block + 2);
  if (v3)
  {
    v4 = *(block + 2);
    if (_dispatch_block_special_invoke == v3)
    {
      goto LABEL_7;
    }

LABEL_6:
    _dispatch_barrier_sync_f(queue, block, v4, 18, v2);
    return;
  }

  if (_dispatch_block_special_invoke)
  {
    v4 = 0;
    goto LABEL_6;
  }

LABEL_7:
  _dispatch_sync_block_with_privdata(queue, block, 18, v2);
}

void _dispatch_sync_block_with_privdata(atomic_uint *a1, uint64_t a2, uint64_t a3, int8x16_t a4)
{
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(a2 + 16);
  }

  if (v7 == _dispatch_block_special_invoke)
  {
    v9 = (a2 + 32);
    v10 = *(a2 + 32);
    if (v10 != 3512316172)
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_6D1F0 = v10;
      __break(1u);
      goto LABEL_62;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
  v12 = v9[1];
  if (v12)
  {
    v13 = 34;
  }

  else
  {
    v13 = 32;
  }

  if ((v12 & 0x40000000) != 0)
  {
    v14 = 0;
    if ((v9[1] & 0x30) != 0x10)
    {
      v15 = v9[3];
      v16 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) & 0xFFFFFFLL;
      v17 = v16 != 0;
      v18 = v16 < (v15 & 0xFFFFFFuLL);
      v19 = v15 & 0xFFFFFFFF02FFFFFFLL;
      if (v17 && v18)
      {
        v11 = v16;
      }

      else
      {
        v11 = 0;
      }

      if (v17 && v18)
      {
        v14 = v19;
      }

      else
      {
        v14 = 0;
      }
    }

    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = 0;
    if ((v12 & 0x80000000) == 0)
    {
LABEL_18:
      v20 = -1;
      goto LABEL_21;
    }
  }

  v20 = v9[4];
LABEL_21:
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v22 = *(StatusReg + 32);
  if ((v22 & 0x1000000) != 0)
  {
    if (v14)
    {
      goto LABEL_54;
    }

    v14 = v22 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v14 == (v22 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_23;
  }

  if (v14)
  {
    goto LABEL_54;
  }

LABEL_23:
  if (v20 != -1)
  {
    if (*(StatusReg + 224) != v20)
    {
      goto LABEL_53;
    }

    if (v20)
    {
      os_retain(v20);
    }
  }

  while (a1[2] != 0x7FFFFFFF && atomic_fetch_add_explicit(a1 + 2, 2u, memory_order_relaxed) <= 0)
  {
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
LABEL_53:
    v14 = 0;
LABEL_54:
    v20 = _dispatch_set_priority_and_voucher_slow(v14, v20, 0);
  }

  v23 = 0;
  atomic_compare_exchange_strong_explicit(v9 + 7, &v23, a1, memory_order_relaxed, memory_order_relaxed);
  if (v23)
  {
    if (a1[2] != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFE, memory_order_release);
      if (add_explicit <= 2)
      {
        if (add_explicit == 2)
        {
          _os_object_dispose(a1, a2);
          goto LABEL_32;
        }

LABEL_62:
        qword_6D1C0 = "API MISUSE: Over-release of an object";
        __break(1u);
        return;
      }
    }
  }

LABEL_32:
  v25 = v13 | a3;
  if (((v13 | a3) & 2) != 0)
  {
    _dispatch_barrier_sync_f(a1, a2, _dispatch_block_sync_invoke, v25, a4);
  }

  else
  {
    _dispatch_sync_f(a1, a2, _dispatch_block_sync_invoke, v25, a4);
  }

  v26 = *(StatusReg + 32);
  if ((v26 & 0x1000000) != 0)
  {
    if (v11)
    {
      goto LABEL_56;
    }

    v11 = v26 & 0xFFFFFFFFFEFFFFFFLL;
    goto LABEL_50;
  }

  if (v11 != (v26 & 0xFFFFFFFF76FFFFFFLL))
  {
LABEL_50:
    if (v11)
    {
      goto LABEL_56;
    }
  }

  if (v20 == -1)
  {
    return;
  }

  if (*(StatusReg + 224) == v20)
  {
    if (v20)
    {

      os_release(v20);
    }

    return;
  }

  v11 = 0;
LABEL_56:

  _dispatch_set_priority_and_voucher_slow(v11, v20, 6);
}

double _dispatch_barrier_sync_f(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, int8x16_t a5)
{
  if (*(*a1 + 40) != 17 || (v8 = a4, v5 = a3, v7 = a2, v6 = a1, v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), v10 = *(a1 + 80), (v10 & 0x1000000) != 0) && (v10 = *(a1 + 80), (v10 & 0x40000) != 0))
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Queue type doesn't support dispatch_sync";
    __break(1u);
LABEL_18:

    return _dispatch_sync_recurse(v6, v7, v5, v8 | 2, a5);
  }

  else
  {
    v11 = v10 << 41;
    v12 = v9 & 0xFFFFFFFC;
    v13 = *(a1 + 56);
    do
    {
      if (v13 != (v13 & 0x3000000000) - v11 + 0x20000000000000)
      {

        return _dispatch_sync_f_slow(a1, a2, a3, 2uLL, a1, a4 | 2, a5);
      }

      v14 = v13;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v14, v12 | v13 & 0x3000000000 | 0x60000000000002, memory_order_acquire, memory_order_acquire);
      v15 = v14 == v13;
      v13 = v14;
    }

    while (!v15);
    if (*(*(a1 + 24) + 24))
    {
      goto LABEL_18;
    }

    if (byte_6D338 == 1)
    {
      _dispatch_introspection_order_record(a1);
    }

    v16 = _dispatch_introspection_queue_fake_sync_push_pop(v6, v7, v5, v8 | 2);

    _dispatch_lane_barrier_sync_invoke_and_complete(v6, v7, v5, v16);
  }

  return result;
}

void dispatch_sync(dispatch_queue_t queue, dispatch_block_t block)
{
  v3 = *(block + 2);
  if (v3)
  {
    v4 = *(block + 2);
    if (_dispatch_block_special_invoke == v3)
    {
      goto LABEL_7;
    }

LABEL_6:
    _dispatch_sync_f(queue, block, v4, 0x10uLL, v2);
    return;
  }

  if (_dispatch_block_special_invoke)
  {
    v4 = 0;
    goto LABEL_6;
  }

LABEL_7:
  _dispatch_sync_block_with_privdata(queue, block, 16, v2);
}

double _dispatch_sync_f(uint64_t a1, void *a2, uint64_t (*a3)(void), unint64_t a4, int8x16_t a5)
{
  v5 = a4;
  if (*(a1 + 80) == 1)
  {

    return _dispatch_barrier_sync_f(a1, a2, a3, a4, a5);
  }

  else if (*(*a1 + 40) != 17 || (*(a1 + 80) & 0x1000000) != 0 && (*(a1 + 80) & 0x40000) != 0)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Queue type doesn't support dispatch_sync";
    __break(1u);
LABEL_23:

    return _dispatch_sync_recurse(a1, a2, a3, a4, a5);
  }

  else
  {
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
          if (*(*(a1 + 24) + 24))
          {
            goto LABEL_23;
          }

          if (byte_6D338 == 1)
          {
            v17 = a3;
            v11 = a2;
            v12 = a1;
            _dispatch_introspection_order_record(a1);
            a1 = v12;
            a2 = v11;
            v5 = a4;
            a3 = v17;
          }

          v13 = a2;
          v14 = a3;
          v15 = a1;
          v16 = _dispatch_introspection_queue_fake_sync_push_pop(a1, a2, a3, v5);

          _dispatch_sync_invoke_and_complete(v15, v13, v14, v16);
          return result;
        }
      }
    }

    return _dispatch_sync_f_slow(a1, a2, a3, 0, a1, a4, a5);
  }
}

void dispatch_async_and_wait_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (queue[3].isa)
  {
    if (LOWORD(queue[10].isa) == 1)
    {
      v4 = 130;
    }

    else
    {
      v4 = 128;
    }

    _dispatch_async_and_wait_f(queue, context, work, v4, v3);
  }

  else
  {
    _dispatch_sync_function_invoke(queue, context, work);
  }
}

double _dispatch_sync_function_invoke(uint64_t a1, void *context, uint64_t (*function)(void))
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v8;
  v6 = function;
  if (context)
  {
    v6 = function;
    if (function == _dispatch_call_block_and_release)
    {
      if (context[2])
      {
        v6 = context[2];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  _dispatch_introspection_callout_entry(context, v6);
  _dispatch_client_callout(context, function);
  _dispatch_introspection_callout_return(context, v6);
  result = *&v8;
  *(StatusReg + 160) = v8;
  return result;
}

void _dispatch_async_and_wait_f(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int8x16_t a5)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 32);
  v7 = *(StatusReg + 24);
  v11 = 0;
  v8[0] = a4;
  v8[1] = v6 | 0x10000000;
  v8[2] = 0;
  v8[3] = *(StatusReg + 224);
  v8[4] = _dispatch_async_and_wait_invoke;
  v8[5] = v8;
  v8[6] = 0;
  v8[7] = a1;
  v8[8] = a3;
  v8[9] = a2;
  v8[10] = 0;
  v8[11] = 0;
  v9 = 0;
  v10 = v7;
  _dispatch_async_and_wait_recurse(a1, v8, v7, a4, a5);
}

void dispatch_barrier_async_and_wait_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (queue[3].isa)
  {
    _dispatch_async_and_wait_f(queue, context, work, 0x82uLL, v3);
  }

  else
  {
    _dispatch_sync_function_invoke(queue, context, work);
  }
}

void dispatch_barrier_async_and_wait(dispatch_queue_t queue, dispatch_block_t block)
{
  if (!queue[3].isa)
  {
    dispatch_barrier_sync(queue, block);
    return;
  }

  v3 = *(block + 2);
  if (v3)
  {
    v4 = *(block + 2);
    if (_dispatch_block_special_invoke == v3)
    {
      goto LABEL_9;
    }

LABEL_7:
    _dispatch_async_and_wait_f(queue, block, v4, 0x92uLL, v2);
    return;
  }

  if (_dispatch_block_special_invoke)
  {
    v4 = 0;
    goto LABEL_7;
  }

LABEL_9:
  _dispatch_async_and_wait_block_with_privdata(queue, block, 146, v2);
}

void _dispatch_async_and_wait_block_with_privdata(atomic_uint *a1, uint64_t a2, uint64_t a3, int8x16_t a4)
{
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(a2 + 16);
  }

  if (v7 == _dispatch_block_special_invoke)
  {
    v9 = (a2 + 32);
    v10 = *(a2 + 32);
    if (v10 != 3512316172)
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_6D1F0 = v10;
      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = v9[1];
  if ((v11 & 0x40000000) == 0 || (v9[1] & 0x30) == 0x10 || ((v12 = v9[3], (v13 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) & 0xFFFFFFLL) != 0) ? (v14 = v13 >= (v12 & 0xFFFFFFuLL)) : (v14 = 1), v14))
  {
    v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
  }

  v15 = (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (v11 < 0)
  {
    v15 = v9 + 4;
  }

  v16 = *v15;
  if (a1[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(a1 + 2, 2u, memory_order_relaxed);
    v18 = add_explicit == 0;
    if (add_explicit <= 0)
    {
      qword_6D1C0 = "API MISUSE: Resurrection of an object";
      __break(1u);
      goto LABEL_25;
    }
  }

  v19 = 0;
  atomic_compare_exchange_strong_explicit(v9 + 7, &v19, a1, memory_order_relaxed, memory_order_relaxed);
  if (v19)
  {
    if (a1[2] != 0x7FFFFFFF)
    {
      v20 = atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFE, memory_order_release);
      v18 = v20 == 2;
      if (v20 <= 2)
      {
LABEL_25:
        if (v18)
        {
          _os_object_dispose(a1, a2);
          goto LABEL_21;
        }

LABEL_29:
        qword_6D1C0 = "API MISUSE: Over-release of an object";
        __break(1u);
        return;
      }
    }
  }

LABEL_21:
  v21 = 34;
  if ((v11 & 1) == 0)
  {
    v21 = 32;
  }

  v22 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v23[0] = v21 | a3;
  v23[1] = v12 | 0x10000000;
  v23[2] = 0;
  v23[3] = v16;
  v23[4] = _dispatch_async_and_wait_invoke;
  v23[5] = v23;
  v23[6] = 0;
  v23[7] = a1;
  v23[8] = _dispatch_block_sync_invoke;
  v23[9] = a2;
  v23[10] = 0;
  v23[11] = 0;
  v24 = 0;
  v25 = v22;
  v26 = 0;
  _dispatch_async_and_wait_recurse(a1, v23, v22, v21 | a3, a4);
}

void dispatch_async_and_wait(dispatch_queue_t queue, dispatch_block_t block)
{
  if (queue[3].isa)
  {
    if (LOWORD(queue[10].isa) == 1)
    {
      v3 = 146;
    }

    else
    {
      v3 = 144;
    }

    v4 = *(block + 2);
    if (v4)
    {
      v5 = *(block + 2);
      if (_dispatch_block_special_invoke != v4)
      {
LABEL_7:
        _dispatch_async_and_wait_f(queue, block, v5, v3, v2);
        return;
      }
    }

    else if (_dispatch_block_special_invoke)
    {
      v5 = 0;
      goto LABEL_7;
    }

    _dispatch_async_and_wait_block_with_privdata(queue, block, v3, v2);
  }

  else
  {
    dispatch_sync(queue, block);
  }
}

void dispatch_queue_set_specific(dispatch_queue_t queue, const void *key, void *context, dispatch_function_t destructor)
{
  if (!key)
  {
    return;
  }

  isa = queue[11].isa;
  v9 = *(queue->isa + 5);
  if (v9 == 17)
  {
    if (v9 != 394769 && (v9 & 0x20000) != 0)
    {
      goto LABEL_12;
    }
  }

  else if (v9 != 18)
  {
LABEL_12:
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Queue doesn't support dispatch_queue_set_specific";
    __break(1u);
    goto LABEL_13;
  }

  if (!context || isa)
  {
LABEL_13:
    if (!isa)
    {
      return;
    }

    goto LABEL_14;
  }

  _dispatch_queue_init_specific(queue);
  isa = queue[11].isa;
LABEL_14:
  v11 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(isa, &v11, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v11)
  {
    _dispatch_unfair_lock_lock_slow(isa);
  }

  v13 = *(isa + 1);
  if (v13)
  {
    while (*v13 != key)
    {
      v13 = v13[3];
      if (!v13)
      {
        goto LABEL_19;
      }
    }

    v16 = v13[2];
    if (v16)
    {
      _dispatch_barrier_async_detached_f(&off_71340, v13[1], v16);
    }

    if (context)
    {
      v13[1] = context;
      v13[2] = destructor;
    }

    else
    {
      v17 = v13[3];
      v18 = v13[4];
      v19 = (isa + 16);
      if (v17)
      {
        v19 = v17 + 32;
      }

      *v19 = v18;
      *v18 = v17;
      free(v13);
    }
  }

  else
  {
LABEL_19:
    if (context)
    {
      v14 = _dispatch_calloc_typed(1uLL, 0x28uLL, 0xE0040DC662491uLL);
      *v14 = key;
      v14[1] = context;
      v14[2] = destructor;
      v14[3] = 0;
      v15 = *(isa + 2);
      v14[4] = v15;
      *v15 = v14;
      *(isa + 2) = v14 + 3;
    }
  }

  v20 = *(StatusReg + 24) & 0xFFFFFFFC;
  v21 = atomic_exchange_explicit(isa, 0, memory_order_release);
  if (v21 != v20)
  {

    _dispatch_unfair_lock_unlock_slow(isa, v21);
  }
}

void _dispatch_queue_init_specific(uint64_t a1)
{
  v2 = _dispatch_calloc_typed(1uLL, 0x18uLL, 0x10A0040FC6C5850uLL);
  v3 = 0;
  v2[1] = 0;
  v2[2] = v2 + 1;
  atomic_compare_exchange_strong_explicit((a1 + 88), &v3, v2, memory_order_release, memory_order_relaxed);
  if (v3)
  {

    _dispatch_queue_specific_head_dispose(v2);
  }
}

void *__cdecl dispatch_queue_get_specific(dispatch_queue_t queue, const void *key)
{
  v2 = key;
  if (key)
  {
    isa = queue[11].isa;
    v4 = *(queue->isa + 5);
    v5 = v4;
    v7 = (v4 & 0x20000) == 0 || v4 == 394769;
    if (v5 != 17)
    {
      v7 = v5 == 18;
    }

    if (!v7 || isa == 0)
    {
      return 0;
    }

    else
    {
      v9 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit(isa, &v9, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
      if (v9)
      {
        _dispatch_unfair_lock_lock_slow(isa);
      }

      v11 = *(isa + 1);
      if (v11)
      {
        while (*v11 != v2)
        {
          v11 = v11[3];
          if (!v11)
          {
            goto LABEL_19;
          }
        }

        v2 = v11[1];
      }

      else
      {
LABEL_19:
        v2 = 0;
      }

      v12 = *(StatusReg + 24) & 0xFFFFFFFC;
      v13 = atomic_exchange_explicit(isa, 0, memory_order_release);
      if (v13 != v12)
      {
        _dispatch_unfair_lock_unlock_slow(isa, v13);
      }
    }
  }

  return v2;
}

void *__cdecl dispatch_get_specific(const void *key)
{
  v1 = 0;
  if (key)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    for (i = *(StatusReg + 160); i; i = i[3])
    {
      v5 = i[11];
      v6 = *(*i + 40);
      v7 = v6;
      v9 = (v6 & 0x20000) == 0 || v6 == 394769;
      if (v7 != 17)
      {
        v9 = v7 == 18;
      }

      if (!v9 || v5 == 0)
      {
        v1 = 0;
      }

      else
      {
        v11 = 0;
        atomic_compare_exchange_strong_explicit(v5, &v11, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
        if (v11)
        {
          _dispatch_unfair_lock_lock_slow(v5);
        }

        v12 = *(v5 + 8);
        if (v12)
        {
          while (*v12 != key)
          {
            v12 = *(v12 + 24);
            if (!v12)
            {
              goto LABEL_20;
            }
          }

          v1 = *(v12 + 8);
        }

        else
        {
LABEL_20:
          v1 = 0;
        }

        v13 = *(StatusReg + 24) & 0xFFFFFFFC;
        v14 = atomic_exchange_explicit(v5, 0, memory_order_release);
        if (v14 != v13)
        {
          _dispatch_unfair_lock_unlock_slow(v5, v14);
        }
      }

      if (v1)
      {
        break;
      }
    }
  }

  return v1;
}

uint64_t dispatch_queue_set_label_nocopy(uint64_t result, uint64_t a2)
{
  if (*(result + 8) != 0x7FFFFFFF)
  {
    if ((*(result + 80) & 0x200000) != 0)
    {
      dispatch_queue_set_label_nocopy_cold_1(result);
    }

    *(result + 72) = a2;
  }

  return result;
}

uint64_t _dispatch_queue_compute_priority_and_wlh(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 84);
  v3 = v2 >> 12;
  v4 = *(a1 + 24);
  v5 = -4;
  if ((*(a1 + 56) & 0x2000000000) != 0)
  {
    v5 = a1;
  }

  isa = (*v4)[1].isa;
  if ((isa & 0x10000) != 0)
  {
    v7 = *(a1 + 84) & 0xFFF;
LABEL_5:
    v8 = v4 < &_dispatch_root_queues || v4 >= &_dispatch_queue_serial_numbers;
    if (!v8 || v4[8] == (&dword_14 + 2))
    {
      v9 = *(v4 + 21);
      v10 = v9 >> 12;
      if (v3)
      {
        v10 = v3;
      }

      v11 = v9 & 0xFFF;
      if (v7 > v11)
      {
        v11 = v7;
      }

      result = v11 | v9 & 0x88000000;
      if ((v2 & 0x40000000) != 0 || (v2 & 0xFFF) == 0)
      {
        v13 = result | v2 & 0x40000000;
        if (v10 > ((v11 >> 8) & 0xF))
        {
          result = v13 | ((v10 & 0xF) << 12) | 0x4000000;
        }

        else
        {
          result = v13;
        }
      }

      if (a2)
      {
        *a2 = v5;
      }

      return result;
    }
  }

  else
  {
    v7 = *(a1 + 84) & 0xFFF;
    while (v4 != &_dispatch_mgr_q)
    {
      if ((v4[10] & 0x40000) != 0 && (v4[10] & 0x1000000) == 0)
      {
        if (a2)
        {
          *a2 = -4;
        }

        return *(v4 + 21);
      }

      if (v4[7] >> 55)
      {
        _dispatch_queue_compute_priority_and_wlh_cold_1(a1);
        return v17;
      }

      if ((v4[7] & 0x2000000000) != 0)
      {
        v5 = v4;
        if (isa == 18)
        {
          atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
          v5 = v4;
        }
      }

      else if ((v4[10] & 0x400000) != 0)
      {
        _dispatch_queue_compute_priority_and_wlh_cold_1(a1);
        return v16;
      }

      v14 = *(v4 + 21);
      v4 = v4[3];
      if ((v14 & 0x20000000) == 0)
      {
        if (!v3)
        {
          v3 = v14 >> 12;
        }

        v15 = v14 & 0xFFF;
        if (v7 <= v15)
        {
          v7 = v15;
        }

        isa = (*v4)[1].isa;
        if ((isa & 0x10000) == 0)
        {
          continue;
        }
      }

      goto LABEL_5;
    }
  }

  if (a2)
  {
    *a2 = -4;
  }

  return 0x2000000;
}

void dispatch_set_qos_class_floor(dispatch_object_t object, dispatch_qos_class_t qos_class, int relative_priority)
{
  v3 = *(object->isa + 5);
  if ((v3 & 0xF0) != 0x10)
  {
    dispatch_set_qos_class_floor_cold_1();
  }

  if ((v3 & 0x1F) == 0x12)
  {

    dispatch_workloop_set_qos_class_floor(object, qos_class, relative_priority, 0);
  }

  else
  {
    HIDWORD(v5) = qos_class - 5;
    LODWORD(v5) = qos_class - 5;
    v4 = v5 >> 2;
    if (v4 <= 7 && ((0xBBu >> v4) & 1) != 0)
    {
      v6 = (relative_priority - 1) | dword_45184[v4] | 0x40000000;
    }

    else
    {
      v6 = 0;
    }

    HIDWORD(object[10].isa) = v6 | HIDWORD(object[10].isa) & 0xBFFFF000;
    isa = object[7].isa;
    if ((~isa & 0x180000000000000) != 0)
    {
      dispatch_set_qos_class_floor_cold_2(isa);
    }
  }
}

_DWORD *dispatch_workloop_set_qos_class_floor(uint64_t a1, int a2, char a3, char a4)
{
  v5 = *(a1 + 56);
  if ((~v5 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v5);
  }

  result = *(a1 + 200);
  if (!result)
  {
    result = _dispatch_calloc_typed(1uLL, 0x38uLL, 0x10A00404B3B3801uLL);
    *(a1 + 200) = result;
  }

  HIDWORD(v11) = a2 - 5;
  LODWORD(v11) = a2 - 5;
  v10 = v11 >> 2;
  if (v10 > 7 || ((0xBBu >> v10) & 1) == 0)
  {
    result[1] = 0;
    v12 = *result & 0xFFFFFFF7;
    if (a4)
    {
      goto LABEL_7;
    }

LABEL_9:
    v13 = v12 & 0xFFFFFFFD;
    goto LABEL_10;
  }

  result[1] = dword_45184[v10] | (a3 - 1);
  v12 = *result | 8;
  if ((a4 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  result[4] = 2;
  v13 = v12 | 2;
LABEL_10:
  *result = v13;
  return result;
}

uint64_t dispatch_set_qos_class(uint64_t a1, int a2, char a3)
{
  if ((*(*a1 + 40) & 0xF0) != 0x10 || (*(*a1 + 40) & 0x1FLL) == 18)
  {
    dispatch_set_qos_class_cold_2();
  }

  HIDWORD(v5) = a2 - 5;
  LODWORD(v5) = a2 - 5;
  v4 = v5 >> 2;
  if (v4 <= 7 && ((0xBBu >> v4) & 1) != 0)
  {
    v6 = dword_45184[v4] | (a3 - 1);
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 84) = *(a1 + 84) & 0xBFFFF000 | v6;
  result = *(a1 + 56);
  if ((~result & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(result);
  }

  return result;
}

uint64_t dispatch_set_qos_class_fallback(uint64_t a1, int a2)
{
  if ((*(*a1 + 40) & 0xF0) != 0x10)
  {
    dispatch_set_qos_class_fallback_cold_1();
  }

  HIDWORD(v3) = a2 - 5;
  LODWORD(v3) = a2 - 5;
  v2 = v3 >> 2;
  if (v2 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_451A4[v2];
  }

  *(a1 + 84) = *(a1 + 84) & 0xFBFF0FFF | v4;
  result = *(a1 + 56);
  if ((~result & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(result);
  }

  return result;
}

NSObject *_dispatch_lane_create_with_target(uint64_t a1, uint64_t *a2, __objc2_class **a3, unsigned __int8 a4)
{
  result = _dispatch_queue_attr_to_info(a2);
  v8 = result;
  v9 = result;
  v10 = (result >> 16) & 3;
  if (a3 && v10)
  {
    if (!a3[3])
    {
      goto LABEL_6;
    }

    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Cannot specify both overcommit and a non-global target queue";
    qword_6D1F0 = a3;
    __break(1u);
  }

  if (!a3)
  {
    if ((result & 0x100000) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    if (!v10)
    {
      v10 = v12;
    }

    goto LABEL_28;
  }

LABEL_6:
  if ((*a3)[1].isa == (off_50310 + 1))
  {
    if (v10)
    {
      if (!result)
      {
LABEL_29:
        LODWORD(add_explicit) = (*(a3 + 21) >> 8) & 0xF;
        goto LABEL_30;
      }
    }

    else
    {
      if (*(a3 + 21) < 0)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      if (!result)
      {
        goto LABEL_29;
      }
    }

LABEL_28:
    LODWORD(add_explicit) = result;
LABEL_30:
    if (add_explicit)
    {
      add_explicit = add_explicit;
    }

    else
    {
      add_explicit = 4;
    }

    if ((add_explicit - 7) <= 0xFFFFFFF9)
    {
      goto LABEL_75;
    }

    v14 = 3 * add_explicit;
    if (v10 == 1)
    {
      ++v14;
    }

    a3 = &_dispatch_root_queues + 16 * (v14 - 3);
LABEL_38:
    if ((((result & 0x2C0000) == 0) & a4) != 0)
    {
      v15 = 0x400000;
    }

    else
    {
      v15 = 0;
    }

    if ((result & 0x100000) != 0)
    {
      v16 = OS_dispatch_queue_concurrent;
    }

    else
    {
      v16 = OS_dispatch_queue_serial;
    }

    v17 = (result >> 18) & 3;
    if (v17 == 1)
    {
      v15 |= 0x10000u;
      if (a1)
      {
LABEL_48:
        v18 = _dispatch_strdup_if_mutable(a1);
        if (v18 != a1)
        {
          v15 |= 0x200000u;
        }

        goto LABEL_52;
      }
    }

    else
    {
      if (v17 == 2)
      {
        v15 |= 0x20000u;
      }

      if (a1)
      {
        goto LABEL_48;
      }
    }

    v18 = 0;
LABEL_52:
    v19 = _dispatch_object_alloc(v16, 120);
    a1 = v19;
    if ((v8 & 0x100000) != 0)
    {
      v20 = 4094;
    }

    else
    {
      v20 = 1;
    }

    v21 = 0x180000000000000;
    if ((v8 & 0x200000) != 0)
    {
      *(v19 + 8) += 2;
      if (*(*v19 + 40) == 19)
      {
        ++*(v19 + 8);
      }
    }

    else
    {
      v21 = 0;
    }

    *(v19 + 16) = -1985229329;
    *(v19 + 80) = v15 | v20;
    *(v19 + 56) = v21 - (v20 << 41) + 0x20000000000000;
    *(v19 + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
    *(v19 + 72) = v18;
    if (v9)
    {
      v22 = (BYTE1(v8) - 1) | ((v9 & 0xF) << 8);
    }

    else
    {
      v22 = 0;
    }

    if (v10 == 1)
    {
      v22 |= 0x80000000;
    }

    *(v19 + 84) = v22;
    if ((v8 & 0x200000) == 0)
    {
      _dispatch_queue_priority_inherit_from_target(v19, a3);
      _dispatch_lane_inherit_wlh_from_target(a1, a3);
    }

    if (*(a3 + 2) == 0x7FFFFFFF || (add_explicit = atomic_fetch_add_explicit(a3 + 2, 1u, memory_order_relaxed), add_explicit > 0))
    {
      v8 = 0xFFFFFC100;
      *(a1 + 24) = a3;
      if (!MEMORY[0xFFFFFC100])
      {
        return _dispatch_introspection_queue_create(a1);
      }

      if (*(a1 + 72))
      {
        v23 = *(a1 + 72);
      }

      else
      {
        v23 = "";
      }

      strncpy(__dst, v23, 0x20uLL);
      *(a1 + 84);
LABEL_76:
      v24 = *(a1 + 64);
      if (!*v8)
      {
        goto LABEL_77;
      }

      goto LABEL_80;
    }

    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
LABEL_75:
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_6D1F0 = add_explicit;
    __break(1u);
    goto LABEL_76;
  }

  if ((*(a3 + 87) & 8) != 0)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target object to cooperative root queue - not implemented";
    qword_6D1F0 = a3;
    __break(1u);
LABEL_80:
    kdebug_trace();
LABEL_77:
    if (*v8)
    {
      kdebug_trace();
    }

    return _dispatch_introspection_queue_create(a1);
  }

  if (a3[3])
  {
    if ((result & 0x100000) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    if (!v10)
    {
      v10 = v11;
    }

    goto LABEL_38;
  }

  if (!v10)
  {
    goto LABEL_38;
  }

  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Cannot specify an overcommit attribute and use this kind of target queue";
  qword_6D1F0 = a3;
  __break(1u);
  return result;
}

void _dispatch_lane_class_dispose(uint64_t *a1, _BYTE *a2)
{
  if (a1[6])
  {
    _dispatch_lane_class_dispose_cold_1(a1 + 6);
  }

  a1[13] = 512;
  a1[6] = 512;
  v2 = a1[7];
  v3 = 0x20000000000000 - (*(a1 + 40) << 41);
  if (*(*a1 + 42))
  {
    v3 = 0x60000000000000;
  }

  if ((v2 & 0xFFFFFF48FFFFFFFFLL) != v3)
  {
    _dispatch_lane_class_dispose_cold_2(v2);
  }

  _dispatch_queue_dispose(a1, a2);
}

void _dispatch_queue_dispose(id obj, _BYTE *a2)
{
  v4 = *(obj + 9);
  if (v4 && (*(obj + 20) & 0x200000) != 0)
  {
    free(v4);
  }

  __swp(v4, obj + 22);
  if (v4)
  {
    _dispatch_queue_specific_head_dispose(v4);
  }

  if (*(obj + 24))
  {
    _dispatch_object_finalize(obj);
    *a2 = 0;
    *(obj + 9) = "<released queue, pending free>";
    *(obj + 4) = 0;
    *(obj + 5) = 0;
    *(obj + 3) = 0;
    add_explicit = atomic_fetch_add_explicit(obj + 24, 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 0)
    {
      if (add_explicit < 0)
      {
        qword_6D1C0 = "API MISUSE: Over-release of an object";
        __break(1u);
      }

      else
      {
        *(obj + 7) = 0xDEAD000000000000;

        _dispatch_object_dealloc(obj);
      }
    }
  }

  else
  {
    *(obj + 7) = 0xDEAD000000000000;
  }
}

void _dispatch_lane_dispose(NSObject *a1, _BYTE *a2)
{
  isa = a1[8].isa;
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_lane_dispose_cold_1(isa);
  }

  _dispatch_introspection_queue_dispose(a1);

  _dispatch_lane_class_dispose(a1, a2);
}

unint64_t _dispatch_queue_xref_dispose(uint64_t a1)
{
  result = *(a1 + 56);
  if (result >> 55)
  {
    _dispatch_queue_xref_dispose_cold_1(result);
  }

  atomic_fetch_or_explicit((a1 + 80), 0x800000u, memory_order_relaxed);
  return result;
}

uint64_t _dispatch_lane_suspend(uint64_t result)
{
  v1 = *(result + 56);
  while (v1 < 0xFC00000000000000)
  {
    v2 = v1;
    atomic_compare_exchange_strong_explicit((result + 56), &v1, v1 + 0x400000000000000, memory_order_relaxed, memory_order_relaxed);
    if (v1 == v2)
    {
      if (!(v2 >> 55) && *(result + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((result + 8), 2u, memory_order_relaxed) <= 0)
      {
        dispatch_set_target_queue_cold_2();
      }

      return result;
    }
  }

  return _dispatch_lane_suspend_slow(result);
}

uint64_t _dispatch_lane_suspend_slow(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 100);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((result + 100), &v2, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = _dispatch_unfair_lock_lock_slow(result + 100);
  }

  v5 = *(v1 + 112);
  v6 = 0x7C00000000000000;
  if (!v5)
  {
    v6 = 0x7A00000000000000;
  }

  v7 = *(v1 + 56);
  do
  {
    if (v7 < v6)
    {
      v11 = *(StatusReg + 24) & 0xFFFFFFFC;
      v12 = atomic_exchange_explicit(v3, 0, memory_order_release);
      if (v12 != v11)
      {
        v13 = v3;
        v14 = v12;
        _dispatch_unfair_lock_unlock_slow(v13, v12);
        if ((v14 & 2) != 0 && (*(StatusReg + 200) & 0xF0000) == 0)
        {
          *(StatusReg + 200) = *(StatusReg + 200) & 0xFFF0FFFFLL | 0x10000;
        }
      }

      return _dispatch_lane_suspend(v1);
    }

    v8 = v7;
    atomic_compare_exchange_strong_explicit((v1 + 56), &v8, v7 - v6, memory_order_relaxed, memory_order_relaxed);
    v9 = v8 == v7;
    v7 = v8;
  }

  while (!v9);
  *(v1 + 112) = v5 + 32;
  if (v5 >= 0xFFFFFFE0)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Too many nested calls to dispatch_suspend()";
    __break(1u);
  }

  else
  {
    v10 = *(StatusReg + 24) & 0xFFFFFFFC;
    LODWORD(v1) = atomic_exchange_explicit(v3, 0, memory_order_release);
    if (v1 == v10)
    {
      return result;
    }
  }

  result = _dispatch_unfair_lock_unlock_slow(v3, v1);
  if ((v1 & 2) != 0 && (*(StatusReg + 200) & 0xF0000) == 0)
  {
    *(StatusReg + 200) = *(StatusReg + 200) & 0xFFF0FFFFLL | 0x10000;
  }

  return result;
}

uint64_t _dispatch_lane_resume(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (a2 == 2)
  {
    v7 = *(a1 + 56);
    do
    {
      if ((v7 & 0x180000000000000) == 0)
      {
        return _os_object_release_internal_n(a1, &dword_0 + 2);
      }

      add_explicit = v7;
      v8 = v7 - 0x80000000000000;
      v9 = v8 >> 53;
      v10 = add_explicit & 0x1FFFF000000001;
      v11 = v8 | 0x8000000000;
      if ((add_explicit & 0xFFFFFFFC) != 0)
      {
        v10 = v11;
      }

      if (v9)
      {
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }

      v7 = add_explicit;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v7, v6, memory_order_release, memory_order_relaxed);
    }

    while (v7 != add_explicit);
    if ((v6 & 0x180000000000000) == 0)
    {
      goto LABEL_19;
    }

    add_explicit = a1;
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Corrupt activation state";
    qword_6D1F0 = a1;
    __break(1u);
LABEL_52:
    if ((add_explicit & 0x200000000000000) != 0)
    {
      return _dispatch_lane_resume_slow(a1);
    }

    goto LABEL_54;
  }

  if (a2 == 1)
  {
    v3 = *(a1 + 56);
    while ((~v3 & 0x180000000000000) == 0)
    {
      add_explicit = v3;
      if (v3 >> 58)
      {
        v5 = 0xFF80000000000000;
      }

      else
      {
        v5 = 0xFF00000000000000;
      }

      v6 = v3 + v5;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v3, v6, memory_order_relaxed, memory_order_relaxed);
      if (v3 == add_explicit)
      {
        goto LABEL_19;
      }
    }

    return a1;
  }

  v12 = (*(a1 + 80) << 41) - 0x20000000000;
  v13 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFCLL;
  v14 = *(v2 + 40);
  v15 = *(a1 + 56);
  a2 = 0x7700000001;
  v16 = v13 | 0x60000000000002;
  do
  {
    add_explicit = v15;
    if (v14 == 19 && (v15 & 0xFF80000000000000) == 0x180000000000000)
    {
      v6 = v15 - 0x100000000000000;
    }

    else
    {
      v17 = v15 - 0x400000000000000;
      if (v15 < 0x400000000000000)
      {
        goto LABEL_52;
      }

      if ((v17 & 0x180000000000000) == 0x100000000000000)
      {
        v6 = v15 - 0x480000000000000;
      }

      else if (v17 >> 53 || (v15 & 0xFFFFFFFC) != 0)
      {
        v6 = v17 | 0x8000000000;
      }

      else if (v14 == 19 || (v17 & 0x10000000000) == 0 && (v12 + v17) >> 53)
      {
        v6 = v17 & 0x1FFFF000000001;
      }

      else
      {
        v6 = v16 | v17 & 0x7700000001;
      }
    }

    atomic_compare_exchange_strong_explicit((a1 + 56), &v15, v6, memory_order_release, memory_order_relaxed);
  }

  while (v15 != add_explicit);
LABEL_19:
  if ((v6 & 0x180000000000000) == 0x80000000000000)
  {
    return _dispatch_lane_resume_activate(a1);
  }

  if (!(v6 >> 55))
  {
    if (((add_explicit ^ v6) & 0x40000000000000) != 0)
    {
      v18 = 5;
      return (*(*a1 + 80))(a1, HIDWORD(add_explicit) & 7, v18);
    }

    if (!(v6 >> 53))
    {
      v18 = 1;
      return (*(*a1 + 80))(a1, HIDWORD(add_explicit) & 7, v18);
    }

    if (*(a1 + 8) == 0x7FFFFFFF)
    {
      return a1;
    }

    add_explicit = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFE, memory_order_release);
    if (add_explicit > 2)
    {
      return a1;
    }

    if (add_explicit == 2)
    {
      return _os_object_dispose(a1, a2);
    }

    qword_6D1C0 = "API MISUSE: Over-release of an object";
    __break(1u);
LABEL_54:
    if ((~add_explicit & 0x180000000000000) != 0)
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Over-resume of an object";
      qword_6D1F0 = a1;
      __break(1u);
    }

    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Over-resume of an inactive object";
    qword_6D1F0 = a1;
    __break(1u);
  }

  return a1;
}

uint64_t _dispatch_lane_resume_slow(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 100);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((result + 100), &v2, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = _dispatch_unfair_lock_lock_slow(result + 100);
  }

  v5 = *(v1 + 112);
  if (v5)
  {
    v6 = 0x7C00000000000000;
    v7 = v5 - 32;
    if (!v7)
    {
      v6 = 0x7A00000000000000;
    }

    v8 = *(v1 + 56);
    while (!__CFADD__(v8, v6))
    {
      v9 = v8;
      atomic_compare_exchange_strong_explicit((v1 + 56), &v9, v8 + v6, memory_order_relaxed, memory_order_relaxed);
      v10 = v9 == v8;
      v8 = v9;
      if (v10)
      {
        *(v1 + 112) = v7;
        v11 = *(StatusReg + 24) & 0xFFFFFFFC;
        v12 = atomic_exchange_explicit((v1 + 100), 0, memory_order_release);
        if (v12 != v11)
        {
          result = _dispatch_unfair_lock_unlock_slow(v3, v12);
          if ((v12 & 2) != 0 && (*(StatusReg + 200) & 0xF0000) == 0)
          {
            *(StatusReg + 200) = *(StatusReg + 200) & 0xFFF0FFFFLL | 0x10000;
          }
        }

        return result;
      }
    }
  }

  v13 = *(StatusReg + 24) & 0xFFFFFFFC;
  v14 = atomic_exchange_explicit(v3, 0, memory_order_release);
  if (v14 != v13)
  {
    v15 = v3;
    v16 = v14;
    _dispatch_unfair_lock_unlock_slow(v15, v14);
    if ((v16 & 2) != 0 && (*(StatusReg + 200) & 0xF0000) == 0)
    {
      *(StatusReg + 200) = *(StatusReg + 200) & 0xFFF0FFFFLL | 0x10000;
    }
  }

  return _dispatch_lane_resume(v1, 0);
}

uint64_t _dispatch_lane_resume_activate(uint64_t a1)
{
  v2 = *(*a1 + 72);
  if (v2)
  {
    v3 = *(*a1 + 72);
    v2(a1);
  }

  return _dispatch_lane_resume(a1, 2);
}

const char *__cdecl dispatch_queue_get_label(dispatch_queue_t queue)
{
  if (!queue)
  {
    v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
    if (v2)
    {
      queue = v2;
    }

    else
    {
      queue = &off_713C0;
    }
  }

  if (queue[9].isa)
  {
    return queue[9].isa;
  }

  else
  {
    return "";
  }
}

dispatch_qos_class_t dispatch_queue_get_qos_class(dispatch_queue_t queue, int *relative_priority_ptr)
{
  isa_high = HIDWORD(queue[10].isa);
  v3 = (isa_high >> 8) & 0xF;
  if (relative_priority_ptr)
  {
    if ((isa_high & 0xF00) != 0)
    {
      v4 = isa_high + 1;
    }

    else
    {
      v4 = 0;
    }

    if (!v3)
    {
      v4 = 0;
    }

    *relative_priority_ptr = v4;
  }

  v5 = v3 - 1;
  if (v5 > 5)
  {
    return 0;
  }

  else
  {
    return dword_451C4[v5];
  }
}

uint64_t dispatch_queue_get_threadid_4wdt(void *a1, __uint64_t *a2)
{
  *a2 = 0;
  v2 = *(*a1 + 40);
  if (v2 != 273 && v2 != 394769 && v2 != 131090)
  {
    return 22;
  }

  v5 = a1[7];
  if (v5 < 4)
  {
    return 3;
  }

  v7 = pthread_from_mach_thread_np(v5 | 3);
  if (!v7)
  {
    return 3;
  }

  return pthread_threadid_np(v7, a2);
}

atomic_ullong *dispatch_queue_set_width(NSObject *a1, uint64_t a2)
{
  if (*(a1->isa + 5) != 17)
  {
    dispatch_queue_set_width_cold_1(*(a1->isa + 5));
  }

  if (*(a1->isa + 5) != 529)
  {
    dispatch_queue_set_width_cold_2(*(a1->isa + 5));
  }

  if ((a2 & 0x80000000) != 0)
  {

    return _dispatch_barrier_async_detached_f(a1, a2, _dispatch_lane_set_width);
  }

  else
  {

    return _dispatch_barrier_trysync_or_async_f(a1, a2, _dispatch_lane_set_width, 1);
  }
}

atomic_uint *_dispatch_lane_set_target_queue(uint64_t a1, char *a2)
{
  if (!a2)
  {
    v2 = 1152;
    if (*(a1 + 80) == 1)
    {
      v2 = 1280;
    }

    a2 = &_dispatch_root_queues + v2;
  }

  v3 = *(a1 + 56);
  do
  {
    if ((~v3 & 0x180000000000000) != 0)
    {
      return _dispatch_lane_set_target_queue_cold_1(a1, a2);
    }

    v4 = v3;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v3, v3 + 0x400000000000000, memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v4);
  if ((v4 & 0x200000000000000) != 0)
  {
    _dispatch_lane_set_target_queue_cold_2();
  }

  if (*(a2 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  return _dispatch_lane_set_target_queue_cold_4(a1, a2);
}

void *_dispatch_lane_legacy_set_target_queue(unint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 160);
  v4 = *(v3 + 24);
  if ((*(v3 + 80) & 0x100000) != 0)
  {
    v10 = *(v3 + 24);
    v11 = *(StatusReg + 160);
    _dispatch_lane_legacy_set_target_queue_cold_1();
  }

  v5 = _dispatch_queue_priority_inherit_from_target(v3, a1);
  _dispatch_lane_inherit_wlh_from_target(v3, v5);
  v6 = 0;
  atomic_compare_exchange_strong_explicit((v3 + 100), &v6, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    _dispatch_unfair_lock_lock_slow(v3 + 100);
  }

  if ((*(v3 + 80) & 0x400000) == 0)
  {
    _dispatch_lane_legacy_set_target_queue_cold_3();
  }

  *(v3 + 24) = v5;
  v7 = *(StatusReg + 24) & 0xFFFFFFFC;
  if (atomic_exchange_explicit((v3 + 100), 0, memory_order_release) != v7)
  {
    _dispatch_lane_legacy_set_target_queue_cold_2();
  }

  _dispatch_introspection_target_queue_changed(v3);

  return _os_object_release_internal(v4, v8);
}

void _dispatch_return_to_kernel()
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v1 = *(StatusReg + 232);
  if (!v1 || *(v1 + 24) == -4)
  {
    *(StatusReg + 40) = 0;
  }

  else
  {
    _dispatch_event_loop_drain(1);
  }
}

void _dispatch_lane_serial_drain(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v5 = *(a1 + 24);
  v40 = (a1 + 48);
  if (!*(a1 + 48))
  {
    return;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg + 160);
  v45 = v9;
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v45;
  if ((a3 & 0x10) != 0 && *(StatusReg + 40))
  {
    _dispatch_return_to_kernel();
  }

  v10 = *(a1 + 104);
  if (!v10)
  {
    v10 = _dispatch_wait_for_enqueuer((a1 + 104));
  }

  if (!(*(a1 + 56) >> 55))
  {
    v43 = v5;
    while (1)
    {
      if (v5 != *(a1 + 24))
      {
        goto LABEL_114;
      }

      if (*v10 <= 0xFFFuLL && (a3 & 0x80000) == 0 && (*v10 & 1) != 0)
      {
        v37 = a2;
        *(a2 + 8) = v10;
        if ((a3 & 8) == 0)
        {
          goto LABEL_118;
        }

        qword_6D1C0 = "BUG IN LIBDISPATCH: Deferred continuation on source, mach channel or mgr";
        __break(1u);
        goto LABEL_129;
      }

      v11 = *(v10 + 16);
      *(a1 + 104) = v11;
      if (!v11)
      {
        v30 = *v40;
        while (v10 == (v30 & 0xFFFFFFFFFFFFFFF8))
        {
          v31 = v30;
          atomic_compare_exchange_strong_explicit(v40, &v31, 0, memory_order_release, memory_order_relaxed);
          v21 = v31 == v30;
          v30 = v31;
          if (v21)
          {
            goto LABEL_12;
          }
        }

        v11 = *(v10 + 16);
        if (!v11)
        {
          v11 = _dispatch_wait_for_enqueuer((v10 + 16));
        }

        *(a1 + 104) = v11;
      }

LABEL_12:
      v12 = *(StatusReg + 192);
      if (v12)
      {
        (*v12)(a1);
      }

      v13 = *v10;
      if (*v10 >= 0x1000uLL)
      {
        v14 = *v10;
        if (*(v13 + 40) == 1)
        {
          (*(v13 + 48))(v10, 0, (a3 >> 21) & 1);
        }

        else
        {
          (*(v13 + 64))(v10, a2, a3 & 0xFFFD0000);
        }

        goto LABEL_71;
      }

      if ((a3 & 0x1000000) != 0)
      {
        v44 = objc_autoreleasePoolPush();
        v13 = *v10;
      }

      else
      {
        v44 = 0;
      }

      v15 = *(v10 + 24);
      if ((v13 & 4) != 0)
      {
        *(v10 + 24) = -1;
      }

      if (v15 != -1)
      {
        if (v15)
        {
          v16 = v15[8];
        }

        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }
      }

      v17 = *(v10 + 8);
      if (v17 == -1)
      {
        v20 = 0;
      }

      else
      {
        v18 = *(StatusReg + 200);
        v19 = ((v18 >> 8) & 0xF) != 0 ? 1 << ((BYTE1(v18) & 0xFu) + 7) : 0;
        v20 = v19 | *(StatusReg + 200);
        if ((v17 & 0xFFFFFF) != 0)
        {
          if ((v17 & 0xFFFFFFuLL) >= (v19 & 0xFFFFFF00))
          {
            v21 = (v18 & 0x44000000) == 0 && (*(v10 + 8) & 0x10000000) == 0;
            if (!v21)
            {
              v20 = v17 & 0xFFFFFF;
            }
          }
        }

        else if (v18 >> 12)
        {
          v20 = (256 << ((v18 >> 12) - 1)) | 0xFF;
        }
      }

      v22 = v20 & 0x7FFFFFFF02FFFFFFLL;
      v23 = *(StatusReg + 32);
      if ((v23 & 0x1000000) != 0)
      {
        break;
      }

      if (v22 != (v23 & 0xFFFFFFFF76FFFFFFLL))
      {
        goto LABEL_92;
      }

LABEL_43:
      if (v15 == -1)
      {
        goto LABEL_48;
      }

      if (*(StatusReg + 224) == v15)
      {
        if ((v13 & 4) != 0 && v15)
        {
          os_release(v15);
        }

LABEL_48:
        if ((v13 & 0x200) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_52;
      }

      v22 = 0;
LABEL_105:
      _dispatch_set_priority_and_voucher_slow(v22, v15, v13 & 4 | 2);
      if ((v13 & 0x200) == 0)
      {
LABEL_49:
        if (MEMORY[0xFFFFFC100])
        {
          _dispatch_trace_item_pop_internal(a1, v10, v9);
        }

        _dispatch_introspection_queue_item_dequeue(a1, v10);
      }

LABEL_52:
      if ((v13 & 4) != 0)
      {
        v25 = *(StatusReg + 176);
        if (v25)
        {
          v26 = *(v25 + 8) + 1;
        }

        else
        {
          v26 = 1;
        }

        v24 = v10;
        if (v26 <= _dispatch_continuation_cache_limit)
        {
          v24 = 0;
          *(v10 + 16) = v25;
          *(v10 + 8) = v26;
          *(StatusReg + 176) = v10;
        }
      }

      else
      {
        v24 = 0;
      }

      if ((v13 & 8) != 0)
      {
        v32 = *(**(v10 + 48) + 40);
        if (v32 != 514)
        {
          qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected object type";
          qword_6D1F0 = v32;
          __break(1u);
          return;
        }

        v33 = *(v10 + 32);
        v34 = *(v10 + 40);
        v35 = v33;
        if (v34)
        {
          v35 = *(v10 + 32);
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

        group = *(v10 + 48);
        _dispatch_introspection_callout_entry(v34, v35);
        _dispatch_client_callout(v34, v33);
        _dispatch_introspection_callout_return(v34, v35);
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }

        _dispatch_introspection_queue_item_complete(v10);
        dispatch_group_leave(group);
      }

      else
      {
        v27 = *(v10 + 32);
        v28 = *(v10 + 40);
        v29 = v27;
        if (v28)
        {
          v29 = *(v10 + 32);
          if (v27 == _dispatch_call_block_and_release)
          {
            if (v28[2])
            {
              v29 = v28[2];
            }

            else
            {
              v29 = 0;
            }
          }
        }

        _dispatch_introspection_callout_entry(v28, v29);
        _dispatch_client_callout(v28, v27);
        _dispatch_introspection_callout_return(v28, v29);
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }

        _dispatch_introspection_queue_item_complete(v10);
      }

      v5 = v43;
      if (!v24)
      {
        if (!v44)
        {
          goto LABEL_71;
        }

LABEL_70:
        objc_autoreleasePoolPop(v44);
        goto LABEL_71;
      }

      _dispatch_continuation_free_to_cache_limit(v24);
      if (v44)
      {
        goto LABEL_70;
      }

LABEL_71:
      if (v12)
      {
        v12[1](a1);
      }

      v10 = v11;
      if (!v11)
      {
        if (!*v40)
        {
          v37 = (*(a1 + 80) << 41) + 0x40000000000000;
          goto LABEL_123;
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

      if (*(a1 + 80) != 1 || (a3 & 0x4000000) == 0 && (*(StatusReg + 960) & 1) != 0 || (a3 & 0x100000) != 0 && (*(*(StatusReg + 216) + 60) & 7u) > *(*(StatusReg + 216) + 100) || *(a1 + 56) >> 55)
      {
        goto LABEL_114;
      }
    }

    if (v22)
    {
      goto LABEL_105;
    }

    v22 = v23 & 0xFFFFFFFFFEFFFFFFLL;
LABEL_92:
    if (v22)
    {
      goto LABEL_105;
    }

    goto LABEL_43;
  }

LABEL_114:
  v36 = *(a1 + 80);
  v37 = (v36 << 41) + 0x40000000000000;
  if (!v10)
  {
LABEL_123:
    *a4 = *a4 & 0x4000000001 | v37;
    *(StatusReg + 160) = v45;
    return;
  }

  if (v36 >= 2)
  {
    v4 = *v10;
    if (*v10 < 0x1000uLL)
    {
LABEL_129:
      if ((v4 & 2) == 0)
      {
        goto LABEL_116;
      }
    }

    else if ((*(v4 + 40) & 0xF0) != 0x10 || (*(v10 + 80) & 0x80000) == 0)
    {
      goto LABEL_116;
    }

    v37 = 0x40010000000000;
  }

LABEL_116:
  *a4 = *a4 & 0x4000000001 | v37;
LABEL_118:
  *(StatusReg + 160) = v45;
  v38 = *(a1 + 24);
}