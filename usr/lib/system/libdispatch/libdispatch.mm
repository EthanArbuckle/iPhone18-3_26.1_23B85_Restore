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
    return &off_1ED3F3BC0;
  }
}

uint64_t *_dispatch_queue_attr_to_info(uint64_t *result)
{
  if (result)
  {
    v1 = result - &_dispatch_queue_attr_concurrent;
    if (result < &_dispatch_queue_attr_concurrent || result >= qword_1F3A43240)
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
        v9 = dword_1BB5811E4[v7];
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
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: do_invoke called";
  qword_1EBC5B9B0 = v1;
  __break(1u);
}

void _dispatch_object_no_dispose(uint64_t a1)
{
  v1 = *(*a1 + 40);
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: do_dispose called";
  qword_1EBC5B9B0 = v1;
  __break(1u);
}

void _dispatch_queue_no_activate(uint64_t a1)
{
  v1 = *(*a1 + 40);
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: dq_activate called";
  qword_1EBC5B9B0 = v1;
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
  v4 = *MEMORY[0x1E69E9840];
  *v3 = 0x4100000001;
  v2 = 16;
  result = sysctl(v3, 2u, &_dispatch_build, &v2, 0, 0);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _dispatch_fault(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v5 = *MEMORY[0x1E69E9840];
  result = vsnprintf(__str, 0x400uLL, __format, va);
  if (_dispatch_mode)
  {
    qword_1EBC5B998 = __str;
  }

  else if ((_dispatch_mode & 2) == 0)
  {
    result = _dispatch_fault_cold_1(__str);
  }

  v3 = *MEMORY[0x1E69E9840];
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
  v15 = *MEMORY[0x1E69E9840];
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
      v7 = _dispatch_objc_debug(a1, v14, 2048);
    }

    else
    {
      v7 = (*(v5 + 56))();
    }

    v8 = v7 + 2;
    *&v14[v7] = 8250;
    v14[v7 + 2] = 0;
  }

  else
  {
    v8 = __strlcpy_chk();
  }

  v11 = vsnprintf(&v14[v8], 2048 - v8, a2, a3);
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
      _dispatch_log_file(v14, v12);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
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
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: unexpected receipt of port-destroyed";
  qword_1EBC5B9B0 = a2;
  __break(1u);
}

void _dispatch_mach_notify_no_senders(uint64_t a1, unsigned int a2)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: unexpected receipt of no-more-senders";
  qword_1EBC5B9B0 = a2;
  __break(1u);
}

void _dispatch_mach_default_async_reply_handler()
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: _dispatch_mach_default_async_reply_handler called";
  qword_1EBC5B9B0 = _dispatch_mach_xpc_hooks;
  __break(1u);
}

uint64_t _dispatch_logv_init()
{
  v10 = *MEMORY[0x1E69E9840];
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
    goto LABEL_20;
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
        v6 = &unk_1BB5822E3;
      }

      v7 = getpid();
      result = dprintf(v4, "=== log file opened for %s[%u] at %ld.%06u ===\n", v6, v7, __str[0].tv_sec, __str[0].tv_usec);
    }
  }

LABEL_20:
  v8 = *MEMORY[0x1E69E9840];
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
  v7 = *MEMORY[0x1E69E9840];
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

  v5 = *MEMORY[0x1E69E9840];
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
    qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }

  return result;
}

uint64_t _os_object_retain_internal_n(uint64_t result, unsigned int a2)
{
  if (*(result + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((result + 8), a2, memory_order_relaxed) <= 0)
  {
    qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
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
        qword_1EBC5B980 = "API MISUSE: Over-release of an object";
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
        qword_1EBC5B980 = "API MISUSE: Over-release of an object";
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
    qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }

  return result;
}

uint64_t _os_object_retain_with_resurrect(uint64_t result)
{
  if (*(result + 12) == 0x7FFFFFFF || (add_explicit = atomic_fetch_add_explicit((result + 12), 1u, memory_order_relaxed), (add_explicit & 0x80000000) != 0))
  {
    qword_1EBC5B980 = "API MISUSE: Resurrection of an over-released object";
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
        qword_1EBC5B980 = "API MISUSE: Over-release of an object";
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
        qword_1EBC5B980 = "API MISUSE: Over-release of an object";
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
  if (a1[5])
  {
    v3 = a1[5];
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[4];
  v8 = 1;
  v5 = a1 + 2;
  if (a1[2] != -1985229329)
  {
    _dispatch_dispose_cold_1(v5);
  }

  if (v2)
  {
    if (v2[8].isa == 22)
    {
      v6 = &unk_1ED3F3B40;
    }

    else
    {
      v6 = v2;
    }
  }

  else
  {
    v6 = 0;
  }

  (*(*a1 + 48))(a1, &v8);
  if (v8 == 1)
  {
    objc_destructInstance(a1);
    free(a1);
  }

  if (v3 && v4)
  {
    dispatch_channel_async_f(v6, v4, v3);
  }

  if (v6)
  {
    _os_object_release_internal(v6, v7);
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
          v9 = &unk_1ED3F3B40;
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
  v3 = *ymmword_1F3A43388;
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

void *_dispatch_block_create(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v21 = 0;
  v20 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1174405120;
  v9[2] = ___dispatch_block_create_block_invoke;
  v9[3] = &__block_descriptor_tmp_3;
  v10 = 3512316172;
  v11 = a1;
  v12 = 0;
  v13 = 0;
  v14 = a3;
  v15 = a2;
  group = 0;
  v18 = 0;
  aBlocka = 0;
  v19 = 0;
  if ((a2 + 1) < 2)
  {
    if (!aBlock)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  voucher_retain(a2);
  if (aBlock)
  {
LABEL_3:
    aBlocka = _dispatch_Block_copy(aBlock);
  }

LABEL_4:
  v6 = _dispatch_Block_copy(v9);
  if (v10 == 3512316172)
  {
    v7 = group;
    if (group)
    {
      if (!v13)
      {
        dispatch_group_leave(group);
        v7 = group;
      }

      _os_object_release_without_xref_dispose(v7, v5);
    }

    if (v18)
    {
      _os_object_release_internal_n(v18, 2);
    }

    if (aBlocka)
    {
      _Block_release(aBlocka);
    }

    if ((v15 + 1) >= 2)
    {
      voucher_release(v15);
    }
  }

  return v6;
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
  if ((v5 + 1) >= 2)
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

uint64_t __destroy_helper_block_8_32c35_ZTS29dispatch_block_private_data_s(uint64_t result, const char *a2)
{
  if (*(result + 32) == 3512316172)
  {
    v3 = result;
    v4 = *(result + 80);
    if (v4)
    {
      if (!*(v3 + 52))
      {
        dispatch_group_leave(v4);
        v4 = *(v3 + 80);
      }

      _os_object_release_without_xref_dispose(v4, a2);
    }

    v5 = *(v3 + 88);
    if (v5)
    {
      _os_object_release_internal_n(v5, 2);
    }

    v6 = *(v3 + 72);
    if (v6)
    {
      _Block_release(v6);
    }

    result = *(v3 + 64);
    if ((result + 1) >= 2)
    {

      return voucher_release(result);
    }
  }

  return result;
}

uint64_t _dispatch_sema4_create_slow(atomic_uint *a1, int policy)
{
  semaphore = 0;
  if (_dispatch_unsafe_fork)
  {
    if (policy)
    {
LABEL_3:
      v4 = MEMORY[0x1E69E9A60];
      result = semaphore_create(*MEMORY[0x1E69E9A60], &semaphore, policy, 0);
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

      v6 = 0;
      v7 = semaphore;
      atomic_compare_exchange_strong_explicit(a1, &v6, semaphore, memory_order_relaxed, memory_order_relaxed);
      if (v6)
      {
        result = semaphore_destroy(*v4, v7);
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

  v9 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v9, result, memory_order_relaxed, memory_order_relaxed);
  if (v9)
  {
    v10 = result;
    result = *(StatusReg + 72);
    *(StatusReg + 72) = v10;
    if (result)
    {

      return MEMORY[0x1EEE73E50]();
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
    result = semaphore_destroy(*MEMORY[0x1E69E9A60], v3);
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

      return MEMORY[0x1EEE73E50]();
    }
  }

  return result;
}

uint64_t _dispatch_sema4_signal(unsigned int *a1, uint64_t a2)
{
  do
  {
    result = MEMORY[0x1BFB10020](*a1);
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

uint64_t _dispatch_sema4_wait(unsigned int *a1)
{
  while (1)
  {
    result = MEMORY[0x1BFB10040](*a1);
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
  result[3].isa = &unk_1ED3F3B40;
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
  result[3].isa = &unk_1ED3F3B40;
  return result;
}

uint64_t _dispatch_group_create_and_enter()
{
  result = _dispatch_object_alloc(OS_dispatch_group, 72);
  *(result + 16) = -1985229329;
  *(result + 24) = &unk_1ED3F3B40;
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
  v2 = add_explicit & 0xFFFFFFFC;
  if ((add_explicit & 0xFFFFFFFC) == 0xFFFFFFFC)
  {
    v3 = (add_explicit + 4);
    do
    {
      v4 = v3;
      if ((v3 & 0xFFFFFFFC) != 0)
      {
        v5 = -3;
      }

      else
      {
        v5 = 0xFFFFFFFF00000000;
      }

      v6 = v5 & v4;
      if (v4 == (v5 & v4))
      {
        break;
      }

      v3 = v4;
      atomic_compare_exchange_strong_explicit(&group[6], &v3, v6, memory_order_relaxed, memory_order_relaxed);
    }

    while (v3 != v4);

    _dispatch_group_wake(group, v4, 1);
  }

  else if (!v2)
  {
    dispatch_group_leave_cold_1(v2);
  }
}

uint64_t _dispatch_group_wake(uint64_t result, const char *a2, int a3)
{
  v4 = result;
  if ((a2 & 2) != 0)
  {
    v14 = a2;
    v5 = *(result + 56);
    if (!v5)
    {
      v5 = _dispatch_wait_for_enqueuer((result + 56));
    }

    *(v4 + 56) = 0;
    v6 = atomic_exchange_explicit((v4 + 64), 0, memory_order_release) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 48);
        if (v5 == v6)
        {
          v5 = 0;
        }

        else
        {
          v5 = *(v5 + 16);
          if (!v5)
          {
            v5 = _dispatch_wait_for_enqueuer((v7 + 16));
          }
        }

        v9 = __clz(__rbit32((*(v7 + 8) >> 8) & 0x3FFF));
        v10 = ((*(v7 + 8) >> 8) & 0x3FFF) != 0 ? v9 + 1 : 0;
        result = (*(*v8 + 88))(v8, v7, v10);
        if (v8[2] != 0x7FFFFFFF)
        {
          add_explicit = atomic_fetch_add_explicit(v8 + 2, 0xFFFFFFFF, memory_order_release);
          if (add_explicit <= 1)
          {
            break;
          }
        }

        if (!v5)
        {
          goto LABEL_19;
        }
      }

      if (add_explicit != 1)
      {
        qword_1EBC5B980 = "API MISUSE: Over-release of an object";
        __break(1u);
        goto LABEL_33;
      }

      result = _os_object_dispose(v8, v11);
    }

    while (v5);
LABEL_19:
    if (a3)
    {
      LOWORD(a3) = 2;
    }

    else
    {
      LOWORD(a3) = 1;
    }

    a2 = v14;
  }

  if (a2)
  {
    result = _dispatch_wake_by_address();
  }

  if (a3)
  {
    if (*(v4 + 8) != 0x7FFFFFFF)
    {
      v13 = atomic_fetch_add_explicit((v4 + 8), -a3, memory_order_release) - a3;
      if (v13 <= 0)
      {
        if (v13 < 0)
        {
LABEL_33:
          qword_1EBC5B980 = "API MISUSE: Over-release of an object";
          __break(1u);
        }

        else
        {

          return _os_object_dispose(v4, a2);
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
  v9 = StatusReg[22];
  if (v9)
  {
    StatusReg[22] = *(v9 + 2);
  }

  else
  {
    v9 = _dispatch_continuation_alloc_from_heap();
  }

  *v9 = 260;
  *(v9 + 4) = work;
  *(v9 + 5) = context;
  v10 = StatusReg[4] & 0xFFFFFFLL;
  v11 = 4351;
  if (v10 < 0x10FF)
  {
    v11 = StatusReg[4] & 0xFFFFFFLL;
  }

  v12 = StatusReg[28];
  if (v12 && atomic_fetch_add_explicit((v12 + 12), 1u, memory_order_relaxed) <= 0)
  {
    goto LABEL_29;
  }

  *(v9 + 3) = v12;
  if (v10)
  {
    v13 = (HIDWORD(queue[10].isa) >> 30) & 1;
    if ((HIDWORD(queue[10].isa) & 0xFFF) == 0)
    {
      v13 = 1;
    }

    if (!v13)
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  *(v9 + 1) = v11;
  *(v9 + 6) = queue;
  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
    __break(1u);
LABEL_29:
    qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
    __break(1u);
LABEL_30:
    qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
    __break(1u);
    return;
  }

  *(v9 + 2) = 0;
  StatusReg[122] = group + 8;
  v14 = atomic_exchange_explicit(&group[8], v9, memory_order_release);
  if (v14)
  {
    *(v14 + 16) = v9;
    StatusReg[122] = 0;
    return;
  }

  if (LODWORD(group[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&group[1], 1u, memory_order_relaxed) <= 0)
  {
    goto LABEL_30;
  }

  group[7].isa = v9;
  StatusReg[122] = 0;
  isa = group[6].isa;
  while (1)
  {
    v16 = (isa | 2);
    if (!isa)
    {
      break;
    }

    v17 = isa;
    atomic_compare_exchange_strong_explicit(&group[6], &v17, v16, memory_order_release, memory_order_relaxed);
    v18 = v17 == isa;
    isa = v17;
    if (v18)
    {
      return;
    }
  }

  _dispatch_group_wake(group, v16, 0);
}

void dispatch_group_notify(dispatch_group_t group, dispatch_queue_t queue, dispatch_block_t block)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = StatusReg[22];
  if (v7)
  {
    StatusReg[22] = v7[2];
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

LABEL_19:
    *v7 = 276;
    v7[5] = v8;
    _dispatch_continuation_init_slow(v7, queue, 0);
    goto LABEL_15;
  }

  if (!_dispatch_block_special_invoke)
  {
    goto LABEL_19;
  }

LABEL_5:
  *v7 = 276;
  v7[4] = _dispatch_call_block_and_release;
  v7[5] = v8;
  v10 = StatusReg[4] & 0xFFFFFFLL;
  v11 = 4351;
  if (v10 < 0x10FF)
  {
    v11 = StatusReg[4] & 0xFFFFFFLL;
  }

  v12 = StatusReg[28];
  if (v12 && atomic_fetch_add_explicit((v12 + 12), 1u, memory_order_relaxed) <= 0)
  {
    [OS_voucher retain];
  }

  v7[3] = v12;
  if (v10)
  {
    v13 = (HIDWORD(queue[10].isa) >> 30) & 1;
    if ((HIDWORD(queue[10].isa) & 0xFFF) == 0)
    {
      v13 = 1;
    }

    if (!v13)
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v7[1] = v11;
LABEL_15:
  v7[6] = queue;
  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_group_notify_cold_3(v7, group, StatusReg);
}

void dispatch_group_async_f(dispatch_group_t group, dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = StatusReg[22];
  if (v9)
  {
    StatusReg[22] = v9[2];
  }

  else
  {
    v9 = _dispatch_continuation_alloc_from_heap();
  }

  *v9 = 268;
  v9[4] = work;
  v9[5] = context;
  v10 = StatusReg[4] & 0xFFFFFFLL;
  v11 = 4351;
  if (v10 < 0x10FF)
  {
    v11 = StatusReg[4] & 0xFFFFFFLL;
  }

  v12 = StatusReg[28];
  if (v12 && atomic_fetch_add_explicit((v12 + 12), 1u, memory_order_relaxed) <= 0)
  {
    qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
    __break(1u);
  }

  else
  {
    v9[3] = v12;
    if (v10 && ((isa_high = HIDWORD(queue[10].isa), (isa_high & 0x40000000) != 0) || (isa_high & 0xFFF) == 0))
    {
      v14 = __clz(__rbit32(v11 >> 8)) + 1;
    }

    else
    {
      v14 = 0;
      v11 = 0;
    }

    v9[1] = v11;
    dispatch_group_enter(group);
    v9[6] = group;
    v15 = *(queue->isa + 11);

    v15(queue, v9, v14);
  }
}

void dispatch_group_async(dispatch_group_t group, dispatch_queue_t queue, dispatch_block_t block)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = StatusReg[22];
  if (v7)
  {
    StatusReg[22] = v7[2];
  }

  else
  {
    v7 = _dispatch_continuation_alloc_from_heap();
  }

  v8 = _dispatch_Block_copy(block);
  v9 = *(block + 2);
  if (!v9)
  {
    if (_dispatch_block_special_invoke)
    {
      goto LABEL_5;
    }

LABEL_19:
    *v7 = 284;
    v7[5] = v8;
    inited = _dispatch_continuation_init_slow(v7, queue, 0);
    goto LABEL_15;
  }

  if (_dispatch_block_special_invoke == v9)
  {
    goto LABEL_19;
  }

LABEL_5:
  *v7 = 284;
  v7[4] = _dispatch_call_block_and_release;
  v7[5] = v8;
  v10 = StatusReg[4] & 0xFFFFFFLL;
  v11 = 4351;
  if (v10 < 0x10FF)
  {
    v11 = StatusReg[4] & 0xFFFFFFLL;
  }

  v12 = StatusReg[28];
  if (v12 && atomic_fetch_add_explicit((v12 + 12), 1u, memory_order_relaxed) <= 0)
  {
    [OS_voucher retain];
  }

  v7[3] = v12;
  if (v10 && ((isa_high = HIDWORD(queue[10].isa), (isa_high & 0x40000000) != 0) || (isa_high & 0xFFF) == 0))
  {
    inited = (__clz(__rbit32(v11 >> 8)) + 1);
  }

  else
  {
    inited = 0;
    v11 = 0;
  }

  v7[1] = v11;
LABEL_15:
  dispatch_group_enter(group);
  v7[6] = group;
  v15 = *(queue->isa + 11);

  v15(queue, v7, inited);
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

uint64_t _dispatch_once_callout(atomic_ullong *a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = _dispatch_client_callout(a2, a3);
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC;
  v6 = atomic_exchange_explicit(a1, (4 * MEMORY[0xFFFFFC180]) | 2, memory_order_release);
  if (v5 != v6)
  {

    return _dispatch_gate_broadcast_slow(a1, v6);
  }

  return result;
}

void _os_eventlink_dispose(uint64_t a1)
{
  if (*(a1 + 24))
  {
    free(*(a1 + 16));
  }

  v2 = *(a1 + 32);
  if (v2 + 1 >= 2)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
  }

  v3 = *(a1 + 36);
  if (v3 + 1 >= 2)
  {
    v4 = *MEMORY[0x1E69E9A60];

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
    v2 = *MEMORY[0x1E69E9A60];
    v3 = mach_eventlink_create();
    result = 0xFFFFFFFFLL;
    if (v3 <= 13)
    {
      if (v3)
      {
        if (v3 == 4)
        {
          result = 22;
        }

        else
        {
          if (v3 != 13)
          {
            return result;
          }

          result = 37;
        }
      }

      else
      {
        v6 = 0;
        atomic_compare_exchange_strong_explicit((a1 + 32), &v6, 0, memory_order_relaxed, memory_order_relaxed);
        if (v6)
        {
          return 22;
        }

        result = 0;
      }

      goto LABEL_22;
    }

    if (v3 > 36)
    {
      if (v3 != 37)
      {
        if (v3 != 49)
        {
          return result;
        }

        result = 60;
        goto LABEL_22;
      }
    }

    else
    {
      if (v3 == 14)
      {
        result = 53;
        goto LABEL_22;
      }

      if (v3 != 15)
      {
        return result;
      }
    }

    result = 89;
LABEL_22:
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    goto LABEL_23;
  }

  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  result = 89;
LABEL_23:
  *v5 = result;
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

    if (mach_port_mod_refs(*MEMORY[0x1E69E9A60], a2, 0, 1))
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
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], v5, 0, -1);
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
      if (mach_port_mod_refs(*MEMORY[0x1E69E9A60], v1, 0, 1))
      {
        os_eventlink_create_with_port_cold_1();
      }

      return MEMORY[0x1EEE727C8](v1);
    }
  }

  return result;
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
  v3 = &unk_1BB5822E3;
  v5 = 0;
  if (a2)
  {
    v2 = &unk_1BB5822E3;
  }

  if (a1[9])
  {
    v3 = a1[9];
  }

  asprintf(&v5, "%sBlock was %sexpected to execute on queue [%s (%p)]", "BUG IN CLIENT OF LIBDISPATCH: Assertion failed: ", v2, v3, a1);
  v4 = v5;
  _dispatch_log("%s", v5);
  qword_1EBC5B980 = v4;
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
    v1 = &unk_1BB5822E3;
  }

  v3 = 0;
  asprintf(&v3, "%sBlock was expected to act as a barrier on queue [%s (%p)]", "BUG IN CLIENT OF LIBDISPATCH: Assertion failed: ", v1, a1);
  v2 = v3;
  _dispatch_log("%s", v3);
  qword_1EBC5B980 = v2;
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

  if (((qword_1ED3F3678 ^ *(StatusReg + 24)) & 0xFFFFFFFC) == 0)
  {
    qword_1EBC5B980 = "BUG IN LIBDISPATCH: Changing the QoS while on the manager queue";
    qword_1EBC5B9B0 = v6 | a1;
    __break(1u);
LABEL_25:

    _dispatch_bug(230, a1);
    return;
  }

  if ((a1 & 0x2000000) != 0)
  {
    v3 = v6 | a1;
    qword_1EBC5B980 = "BUG IN LIBDISPATCH: Cannot raise oneself to manager";
    qword_1EBC5B9B0 = v6 | a1;
    __break(1u);
    goto LABEL_29;
  }

  if ((v3 & 0x2000000) != 0)
  {
LABEL_29:
    qword_1EBC5B980 = "BUG IN LIBDISPATCH: Cannot turn a manager thread into a normal one";
    qword_1EBC5B9B0 = v3;
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
      qword_1EBC5B980 = "BUG IN LIBDISPATCH: _pthread_set_properties_self failed";
      qword_1EBC5B9B0 = v5;
      __break(1u);
    }

    if (a1)
    {
      goto LABEL_25;
    }
  }
}

void _dispatch_set_priority_and_voucher_slow(uint64_t a1, uint64_t a2, char a3)
{
  if (a2 == -1)
  {
    goto LABEL_8;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 224);
  if ((a3 & 2) == 0 || v5 != a2)
  {
    if (a2 && (a3 & 4) == 0 && atomic_fetch_add_explicit((a2 + 12), 1u, memory_order_relaxed) <= 0)
    {
      qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
      __break(1u);
LABEL_33:
      qword_1EBC5B980 = "API MISUSE: Voucher over-release";
      __break(1u);
      return;
    }

    if (v5 == a2)
    {
      goto LABEL_16;
    }

    *(StatusReg + 224) = a2;
    if (a2)
    {
      v6 = *(a2 + 32);
      if (v5)
      {
LABEL_15:
        v7 = *(v5 + 32);
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0;
      if (v5)
      {
        goto LABEL_15;
      }
    }

    v7 = 0;
LABEL_26:
    if (v6 == v7)
    {
      v6 = -1;
    }

    if ((a3 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v5 = -1;
  v6 = -1;
  if (a2 && (a3 & 4) != 0 && atomic_fetch_add_explicit((a2 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    qword_1EBC5B980 = "API MISUSE: Voucher over-release";
    __break(1u);
LABEL_8:
    v5 = -1;
LABEL_16:
    v6 = -1;
  }

  if ((a3 & 8) == 0)
  {
LABEL_18:
    _dispatch_set_priority_and_mach_voucher_slow(a1, v6);
  }

LABEL_19:
  if (v5 != -1 && (a3 & 2) != 0)
  {
    if (v5)
    {
      add_explicit = atomic_fetch_add_explicit((v5 + 12), 0xFFFFFFFF, memory_order_relaxed);
      if (add_explicit <= 1)
      {
        if (add_explicit == 1)
        {
          _voucher_xref_dispose(v5);
          return;
        }

        goto LABEL_33;
      }
    }
  }
}

void _dispatch_async_redirect_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (v5)
  {
    v9 = a3 & 0xFCFFFFFF | v5;
  }

  else
  {
    v9 = a3;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v12 = (StatusReg + 20);
  v11 = StatusReg[20];
  if (v6)
  {
    v13 = StatusReg[25];
    v14 = *(v6 + 84);
    v15 = v14 & 0xFFF0FFFF | ((WORD1(v13) & 0xF) << 16);
    StatusReg[20] = v6;
    v16 = *(v7 + 84);
    if (v15)
    {
      if ((v16 & 0xFFF) != 0)
      {
        v17 = v14 & 0x88000000 | ((WORD1(v13) & 0xF) << 16) & 0x880F0000;
        v18 = v14 & 0xFFF;
        if (v18 <= (*(v7 + 84) & 0xFFFu))
        {
          v18 = *(v7 + 84) & 0xFFF;
        }

LABEL_13:
        if (v16 >> 12 <= v18 >> 8)
        {
          v19 = 0x40000000;
        }

        else
        {
          v19 = 1140912128;
        }

        v20 = v17 | v18 | v19 & v16;
        goto LABEL_24;
      }

      if ((v14 & 0xFFF) != 0)
      {
        v21 = v15 | 0x40000000;
      }

      else
      {
        v21 = v14 & 0xFFF0FFFF | ((WORD1(v13) & 0xF) << 16);
      }

      goto LABEL_22;
    }

LABEL_60:
    v20 = v16 & 0xFFF0FFFF;
    goto LABEL_24;
  }

  v16 = *(v7 + 84);
  v13 = StatusReg[25];
  if (!v13)
  {
    goto LABEL_60;
  }

  v18 = *(v7 + 84) & 0xFFF;
  if ((v16 & 0xFFF) != 0)
  {
    v17 = v13 & 0x880F0000;
    if ((v13 & 0xFFFu) > v18)
    {
      v18 = v13 & 0xFFF;
    }

    goto LABEL_13;
  }

  v21 = v13 | 0x40000000;
  if ((v13 & 0xFFF) == 0)
  {
    v21 = StatusReg[25];
  }

LABEL_22:
  v22 = v16 >> 12;
  v20 = v21 & 0xFFFF0FFF | v16 & 0x400F000;
  if (v22 <= ((v21 >> 8) & 0xF))
  {
    v20 = v21;
  }

LABEL_24:
  StatusReg[25] = v20;
  v38 = *v12;
  StatusReg[20] = v7;
  StatusReg[21] = &v38;
  v23 = *(a1 + 24);
  *(a1 + 24) = -1;
  v24 = *(a1 + 8);
  if (v24 == -1)
  {
    v31 = 0;
  }

  else
  {
    v25 = StatusReg[25];
    if (((v25 >> 8) & 0xF) != 0)
    {
      v26 = 1 << ((BYTE1(v25) & 0xFu) + 7);
    }

    else
    {
      v26 = 0;
    }

    v27 = v26 | StatusReg[25];
    v28 = v24 & 0xFFFFFF;
    if ((v24 & 0xFFFFFF) != 0)
    {
      v29 = v26 & 0xFFFFFF00;
      if ((v25 & 0x44000000) == 0 && (*(a1 + 8) & 0x10000000) == 0)
      {
        v31 = v27;
      }

      else
      {
        v31 = v24 & 0xFFFFFF;
      }

      if (v28 < v29)
      {
        v31 = v27;
      }
    }

    else if (v25 >> 12)
    {
      v31 = (256 << ((v25 >> 12) - 1)) | 0xFF;
    }

    else
    {
      v31 = v26 | StatusReg[25];
    }
  }

  v32 = v31 & 0x7FFFFFFF02FFFFFFLL;
  v33 = StatusReg[4];
  if ((v33 & 0x1000000) != 0)
  {
    if (v32)
    {
LABEL_70:
      _dispatch_set_priority_and_voucher_slow(v32, v23, 6);
      goto LABEL_45;
    }

    v32 = v33 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v32 == (v33 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_41;
  }

  if (v32)
  {
    goto LABEL_70;
  }

LABEL_41:
  if (v23 == -1)
  {
    goto LABEL_45;
  }

  if (StatusReg[28] != v23)
  {
    v32 = 0;
    goto LABEL_70;
  }

  if (v23 && atomic_fetch_add_explicit((v23 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    _dispatch_async_redirect_invoke_cold_1();
  }

LABEL_45:
  v34 = StatusReg[22];
  if (v34)
  {
    v35 = *(v34 + 8) + 1;
  }

  else
  {
    v35 = 1;
  }

  if (v35 > _dispatch_continuation_cache_limit)
  {
    _dispatch_continuation_pop(v8, a2, v9, v7);
    _dispatch_continuation_free_to_cache_limit(a1);
  }

  else
  {
    *(a1 + 16) = v34;
    *(a1 + 8) = v35;
    StatusReg[22] = a1;
    _dispatch_continuation_pop(v8, a2, v9, v7);
  }

  *v12 = v38;
  if (v6)
  {
    *v12 = v11;
  }

  StatusReg[25] = StatusReg[25] & 0xF0000 | v13 & 0xFFF0FFFF;
  v36 = *(v7 + 24);
  if (*(v36 + 24) && v36 != v11)
  {
    do
    {
      _dispatch_lane_non_barrier_complete(v36, 0);
      v36 = *(v36 + 24);
      if (*(v36 + 24))
      {
        v37 = v36 == v11;
      }

      else
      {
        v37 = 1;
      }
    }

    while (!v37);
  }

  _dispatch_lane_non_barrier_complete(v7, 1);
}

void _dispatch_workloop_stealer_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 24);
  *(a1 + 24) = -1;
  v7 = *(a1 + 8);
  if (v7 == -1)
  {
    v15 = 0;
  }

  else
  {
    v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 200);
    if (((v8 >> 8) & 0xF) != 0)
    {
      v9 = 1 << ((BYTE1(v8) & 0xFu) + 7);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9 | v8;
    v11 = v7 & 0xFFFFFF;
    if ((v7 & 0xFFFFFF) != 0)
    {
      v12 = v9 & 0xFFFFFF00;
      v13 = v7 & 0x10000000;
      if ((v8 & 0x44000000) == 0 && v13 == 0)
      {
        v15 = v10;
      }

      else
      {
        v15 = v11;
      }

      if (v11 < v12)
      {
        v15 = v10;
      }
    }

    else if (v8 >> 12)
    {
      v15 = (256 << ((v8 >> 12) - 1)) | 0xFF;
    }

    else
    {
      v15 = v9 | v8;
    }
  }

  v16 = v15 & 0x7FFFFFFF02FFFFFFLL;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v18 = StatusReg[4];
  if ((v18 & 0x1000000) != 0)
  {
    if (v16)
    {
LABEL_40:
      _dispatch_set_priority_and_voucher_slow(v16, v6, 6);
      goto LABEL_22;
    }

    v16 = v18 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v16 == (v18 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_18;
  }

  if (v16)
  {
    goto LABEL_40;
  }

LABEL_18:
  if (v6 == -1)
  {
    goto LABEL_22;
  }

  if (StatusReg[28] != v6)
  {
    v16 = 0;
    goto LABEL_40;
  }

  if (v6 && atomic_fetch_add_explicit((v6 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    _dispatch_async_redirect_invoke_cold_1();
  }

LABEL_22:
  v19 = StatusReg[22];
  if (v19)
  {
    v20 = *(v19 + 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  v21 = a1;
  if (v20 <= _dispatch_continuation_cache_limit)
  {
    v21 = 0;
    *(a1 + 16) = v19;
    *(a1 + 8) = v20;
    StatusReg[22] = a1;
  }

  (*(**(a1 + 48) + 64))(*(a1 + 48), a2, a3 | 1u);
  if (v21)
  {

    _dispatch_continuation_free_to_cache_limit(v21);
  }
}

void _dispatch_queue_override_invoke(void *a1, uint64_t a2, unsigned int a3)
{
  v5 = a1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = StatusReg[20];
  v9 = a1[6];
  v8 = a1[7];
  v10 = StatusReg[25];
  StatusReg[25] = *(v8 + 84) & 0xFFF0FFFF | ((WORD1(v10) & 0xF) << 16);
  StatusReg[20] = v8;
  v11 = *(*a1 + 40) == 1792;
  v12 = a1[3];
  a1[3] = -1;
  v13 = a1[1];
  if (v13 == -1)
  {
    v20 = 0;
  }

  else
  {
    v14 = StatusReg[25];
    if (((v14 >> 8) & 0xF) != 0)
    {
      v15 = 1 << ((BYTE1(v14) & 0xFu) + 7);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 | StatusReg[25];
    v17 = v13 & 0xFFFFFF;
    if ((v13 & 0xFFFFFF) != 0)
    {
      v18 = v15 & 0xFFFFFF00;
      if ((v14 & 0x44000000) == 0 && (a1[1] & 0x10000000) == 0)
      {
        v20 = v16;
      }

      else
      {
        v20 = v13 & 0xFFFFFF;
      }

      if (v17 < v18)
      {
        v20 = v16;
      }
    }

    else if (v14 >> 12)
    {
      v20 = (256 << ((v14 >> 12) - 1)) | 0xFF;
    }

    else
    {
      v20 = v15 | StatusReg[25];
    }
  }

  v21 = v20 & 0x7FFFFFFF02FFFFFFLL;
  v22 = StatusReg[4];
  if ((v22 & 0x1000000) != 0)
  {
    if (v21)
    {
LABEL_73:
      _dispatch_set_priority_and_voucher_slow(v21, v12, 6);
      goto LABEL_22;
    }

    v21 = v22 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v21 == (v22 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_18;
  }

  if (v21)
  {
    goto LABEL_73;
  }

LABEL_18:
  if (v12 == -1)
  {
    goto LABEL_22;
  }

  if (StatusReg[28] != v12)
  {
    v21 = 0;
    goto LABEL_73;
  }

  if (v12 && atomic_fetch_add_explicit((v12 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    _dispatch_async_redirect_invoke_cold_1();
  }

LABEL_22:
  v23 = StatusReg[22];
  if (v23)
  {
    v24 = *(v23 + 8) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v24 <= _dispatch_continuation_cache_limit)
  {
    *(v5 + 16) = v23;
    *(v5 + 8) = v24;
    StatusReg[22] = v5;
    v5 = 0;
  }

  v25 = *v9;
  if (*v9 < 0x1000uLL)
  {
    if ((a3 & 0x1000000) != 0)
    {
      v27 = objc_autoreleasePoolPush();
      v25 = *v9;
    }

    v28 = v9[3];
    if ((v25 & 4) != 0)
    {
      v9[3] = -1;
    }

    v29 = v25 & 4;
    v30 = v9[1];
    if (v30 == -1)
    {
      v31 = 0;
    }

    else
    {
      v32 = StatusReg[25];
      if (((v32 >> 8) & 0xF) != 0)
      {
        v33 = 1 << ((BYTE1(v32) & 0xFu) + 7);
      }

      else
      {
        v33 = 0;
      }

      v31 = v33 | StatusReg[25];
      if ((v30 & 0xFFFFFF) != 0)
      {
        if ((v30 & 0xFFFFFFuLL) >= (v33 & 0xFFFFFF00) && ((v32 & 0x44000000) != 0 || (v9[1] & 0x10000000) != 0))
        {
          v31 = v30 & 0xFFFFFF;
        }
      }

      else if (v32 >> 12)
      {
        v31 = (256 << ((v32 >> 12) - 1)) | 0xFF;
      }
    }

    v35 = v31 & 0x7FFFFFFF02FFFFFFLL;
    v36 = StatusReg[4];
    if ((v36 & 0x1000000) != 0)
    {
      if (v35)
      {
        goto LABEL_83;
      }

      v35 = v36 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v35 == (v36 & 0xFFFFFFFF76FFFFFFLL))
    {
LABEL_51:
      if (v28 == -1)
      {
        goto LABEL_52;
      }

      if (StatusReg[28] == v28)
      {
        if ((v25 & 4) != 0 && v28)
        {
          if (atomic_fetch_add_explicit((v28 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
          {
            _dispatch_async_redirect_invoke_cold_1();
          }

LABEL_58:
          v37 = StatusReg[22];
          if (v37)
          {
            v38 = *(v37 + 8) + 1;
          }

          else
          {
            v38 = 1;
          }

          if (v38 <= _dispatch_continuation_cache_limit)
          {
            v9[2] = v37;
            *(v9 + 2) = v38;
            StatusReg[22] = v9;
          }

LABEL_63:
          _dispatch_queue_override_invoke_cold_3();
          if (!v5)
          {
            goto LABEL_32;
          }

LABEL_64:
          _dispatch_continuation_free_to_cache_limit(v5);
          goto LABEL_32;
        }

LABEL_52:
        if (!v29)
        {
          goto LABEL_63;
        }

        goto LABEL_58;
      }

      v35 = 0;
LABEL_83:
      _dispatch_set_priority_and_voucher_slow(v35, v28, v29 | 2);
      goto LABEL_52;
    }

    if (v35)
    {
      goto LABEL_83;
    }

    goto LABEL_51;
  }

  v26 = *v9;
  if (*(v25 + 40) == 1)
  {
    (*(v25 + 48))(v9, 0, (a3 >> 21) & 1);
  }

  else
  {
    (*(v25 + 64))(v9, a2, v11 | a3);
  }

  if (v5)
  {
    goto LABEL_64;
  }

LABEL_32:
  StatusReg[25] = StatusReg[25] & 0xF0000 | v10 & 0xFFF0FFFF;
  StatusReg[20] = v7;
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

void _dispatch_continuation_pop(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = StatusReg[24];
  if (v9)
  {
    (*v9)(a4);
  }

  v10 = *a1;
  if (*a1 < 0x1000uLL)
  {
    if ((a3 & 0x1000000) != 0)
    {
      v12 = objc_autoreleasePoolPush();
      v10 = *a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a1 + 24);
    if ((v10 & 4) != 0)
    {
      *(a1 + 24) = -1;
    }

    v14 = v10 & 4;
    v15 = *(a1 + 8);
    if (v15 == -1)
    {
      v18 = 0;
    }

    else
    {
      v16 = StatusReg[25];
      if (((v16 >> 8) & 0xF) != 0)
      {
        v17 = 1 << ((BYTE1(v16) & 0xFu) + 7);
      }

      else
      {
        v17 = 0;
      }

      v18 = v17 | StatusReg[25];
      if ((v15 & 0xFFFFFF) != 0)
      {
        if ((v15 & 0xFFFFFFuLL) >= (v17 & 0xFFFFFF00) && ((v16 & 0x44000000) != 0 || (*(a1 + 8) & 0x10000000) != 0))
        {
          v18 = v15 & 0xFFFFFF;
        }
      }

      else if (v16 >> 12)
      {
        v18 = (256 << ((v16 >> 12) - 1)) | 0xFF;
      }
    }

    v20 = v18 & 0x7FFFFFFF02FFFFFFLL;
    add_explicit = StatusReg[4];
    if ((add_explicit & 0x1000000) != 0)
    {
      goto LABEL_33;
    }

    if (v20 != (add_explicit & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_35;
    }

    while (v13 != -1)
    {
      if (StatusReg[28] != v13)
      {
        v20 = 0;
LABEL_41:
        _dispatch_set_priority_and_voucher_slow(v20, v13, v14 | 2);
        break;
      }

      if ((v10 & 4) == 0 || !v13)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit((v13 + 12), 0xFFFFFFFF, memory_order_relaxed);
      if (add_explicit > 1)
      {
        goto LABEL_43;
      }

      qword_1EBC5B980 = "API MISUSE: Voucher over-release";
      __break(1u);
LABEL_33:
      if (!v20)
      {
        v20 = add_explicit & 0xFFFFFFFFFEFFFFFFLL;
LABEL_35:
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_41;
    }

    if ((v10 & 4) == 0)
    {
      goto LABEL_48;
    }

LABEL_43:
    v22 = StatusReg[22];
    if (v22)
    {
      v23 = *(v22 + 8) + 1;
    }

    else
    {
      v23 = 1;
    }

    v14 = a1;
    if (v23 <= _dispatch_continuation_cache_limit)
    {
      v14 = 0;
      *(a1 + 16) = v22;
      *(a1 + 8) = v23;
      StatusReg[22] = a1;
    }

LABEL_48:
    if ((v10 & 8) != 0)
    {
      v25 = *(a1 + 48);
      v26 = *(v25->isa + 5);
      if (v26 != 514)
      {
        qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected object type";
        qword_1EBC5B9B0 = v26;
        __break(1u);
        return;
      }

      _dispatch_client_callout(*(a1 + 40), *(a1 + 32));
      dispatch_group_leave(v25);
      if (!v14)
      {
LABEL_50:
        if (!v12)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }
    }

    else
    {
      _dispatch_client_callout(*(a1 + 40), *(a1 + 32));
      if (!v14)
      {
        goto LABEL_50;
      }
    }

    _dispatch_continuation_free_to_cache_limit(v14);
    if (!v12)
    {
      goto LABEL_52;
    }

LABEL_51:
    objc_autoreleasePoolPop(v12);
    goto LABEL_52;
  }

  v11 = *a1;
  if (*(v10 + 40) == 1)
  {
    (*(v10 + 48))(a1, 0, (a3 >> 21) & 1);
  }

  else
  {
    (*(v10 + 64))(a1, a2, a3 & 0xFFFF0000);
  }

LABEL_52:
  if (v9)
  {
    v24 = v9[1];

    v24(a4);
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

    return _dispatch_block_create(v5, v6, v7, block);
  }

  v6 = 0;
  v7 = 0;
  return _dispatch_block_create(v5, v6, v7, block);
}

dispatch_block_t dispatch_block_create_with_qos_class(dispatch_block_flags_t flags, dispatch_qos_class_t qos_class, int relative_priority, dispatch_block_t block)
{
  if ((flags & 0xFFFFFF00) != 0 || qos_class > QOS_CLASS_USER_INTERACTIVE || ((1 << qos_class) & 0x202220221) == 0 || relative_priority != 0 && relative_priority < 0xFFFFFFF1)
  {
    return 0;
  }

  v5 = flags;
  v6 = flags | 0x40000000;
  v7 = _pthread_qos_class_encode();
  v8 = 0;
  if ((v5 & 0x20) != 0)
  {
    v9 = v6 & 0xFFFFFFFF400000EFLL;
  }

  else
  {
    v9 = v6;
  }

  if ((v9 & 2) != 0)
  {
    goto LABEL_15;
  }

  if ((v9 & 0x40) != 0)
  {
    v8 = -1;
LABEL_15:
    v9 |= 0x80000000uLL;
    return _dispatch_block_create(v9, v8, v7, block);
  }

  if ((v9 & 4) != 0)
  {
    v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
    goto LABEL_15;
  }

  v8 = 0;
  return _dispatch_block_create(v9, v8, v7, block);
}

void *dispatch_block_create_with_voucher(uint64_t a1, uint64_t a2, void *aBlock)
{
  if ((a1 & 0xFFFFFF00) != 0)
  {
    return 0;
  }

  v5 = 3221225472;
  if ((a1 & 0xA) == 0)
  {
    v5 = 0x80000000;
  }

  if ((a1 & 0x20) != 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFEFLL | a1 & 0xFFFFFFFF000000AFLL;
  }

  else
  {
    v6 = v5 | a1 & 0xFFFFFFFF000000BFLL;
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

  return _dispatch_block_create(v6, a2, v8, aBlock);
}

void *dispatch_block_create_with_voucher_and_qos_class(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, void *a5)
{
  if ((a1 & 0xFFFFFF00) != 0 || a3 > 0x21 || ((1 << a3) & 0x202220221) == 0 || a4 != 0 && a4 < 0xFFFFFFF1)
  {
    return 0;
  }

  v7 = a1;
  v8 = a1 & 0xFFFFFFFF000000B7 | 0xC0000000;
  v9 = _pthread_qos_class_encode();
  if ((v7 & 0x20) != 0)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFEFLL;
  }

  else
  {
    v10 = v8;
  }

  if (a2 == -3)
  {
    a2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  }

  return _dispatch_block_create(v10, a2, v9, a5);
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

  if ((v2 & 1) == 0)
  {
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
        goto LABEL_46;
      }

      v5 = v13 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v5 == (v13 & 0xFFFFFFFF76FFFFFFLL))
    {
LABEL_17:
      if (v11 == -1)
      {
        goto LABEL_21;
      }

      if (StatusReg[28] == v11)
      {
        if (v11 && atomic_fetch_add_explicit((v11 + 12), 1u, memory_order_relaxed) <= 0)
        {
          [OS_voucher retain];
        }

LABEL_21:
        *(a1 + 64) = StatusReg[3];
        if (*(*(a1 + 40) + 16))
        {
          v14 = *(*(a1 + 40) + 16);
        }

        else
        {
          v14 = 0;
        }

        _dispatch_client_callout(*(a1 + 40), v14);
        v15 = StatusReg[4];
        if ((v15 & 0x1000000) != 0)
        {
          if (v4)
          {
            goto LABEL_48;
          }

          v4 = v15 & 0xFFFFFFFFFEFFFFFFLL;
        }

        else if (v4 == (v15 & 0xFFFFFFFF76FFFFFFLL))
        {
LABEL_26:
          if (v11 == -1)
          {
            goto LABEL_30;
          }

          if (StatusReg[28] == v11)
          {
            if (v11 && atomic_fetch_add_explicit((v11 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
            {
              _dispatch_async_redirect_invoke_cold_1();
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

          goto LABEL_31;
        }

        if (v4)
        {
          goto LABEL_48;
        }

        goto LABEL_26;
      }

      v5 = 0;
LABEL_46:
      _dispatch_set_priority_and_voucher_slow(v5, v11, 0);
      v11 = v17;
      goto LABEL_21;
    }

    if (v5)
    {
      goto LABEL_46;
    }

    goto LABEL_17;
  }

LABEL_30:
  if ((v2 & 8) != 0)
  {
    return;
  }

LABEL_31:
  if (!atomic_fetch_add_explicit((a1 + 20), 1u, memory_order_relaxed))
  {
    v16 = *(a1 + 48);

    dispatch_group_leave(v16);
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
    goto LABEL_20;
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
      goto LABEL_36;
    }

    v12 = v13 & 0xFFFFFFFFFEFFFFFFLL;
    goto LABEL_33;
  }

  if (v12 != (v13 & 0xFFFFFFFF76FFFFFFLL))
  {
LABEL_33:
    if (v12)
    {
      goto LABEL_36;
    }
  }

  if (v5 == -1)
  {
    goto LABEL_16;
  }

  if (StatusReg[28] == v5)
  {
    if (v5 && atomic_fetch_add_explicit((v5 + 12), 1u, memory_order_relaxed) <= 0)
    {
      [OS_voucher retain];
    }

    goto LABEL_16;
  }

  v12 = 0;
LABEL_36:
  _dispatch_set_priority_and_voucher_slow(v12, *(a1 + 64), 0);
  v5 = v18;
LABEL_16:
  (*(*(a1 + 72) + 16))();
  v14 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v15 = *(v14 + 32);
  if ((v15 & 0x1000000) != 0)
  {
    v16 = v15 & 0xFFFFFFFFFEFFFFFFLL;
    if ((v15 & 0xFFFFFFFFFEFFFFFFLL) != 0)
    {
      goto LABEL_19;
    }
  }

  if ((_dispatch_block_sync_invoke_cold_4(v5, v14) & 1) == 0)
  {
    v16 = 0;
LABEL_19:
    _dispatch_set_priority_and_voucher_slow(v16, v5, 6);
  }

LABEL_20:
  if ((v4 & 8) == 0 && !atomic_fetch_add_explicit((a1 + 52), 1u, memory_order_relaxed))
  {
    dispatch_group_leave(*(a1 + 80));
  }

  __swp(a2, (a1 + 88));
  if (a2 && a2[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(a2 + 2, 0xFFFFFFFE, memory_order_release);
    if (add_explicit <= 2)
    {
      _dispatch_block_sync_invoke_cold_5(add_explicit, a2);
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
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_1EBC5B9B0 = v8;
      __break(1u);
      goto LABEL_42;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = v7[1];
  v11 = *result;
  if (a2[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(a2 + 2, 2u, memory_order_relaxed);
    v13 = add_explicit == 0;
    if (add_explicit <= 0)
    {
      qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
      __break(1u);
      goto LABEL_38;
    }
  }

  v14 = 0;
  atomic_compare_exchange_strong_explicit(v7 + 7, &v14, a2, memory_order_relaxed, memory_order_relaxed);
  if (v14)
  {
    if (a2[2] != 0x7FFFFFFF)
    {
      v15 = atomic_fetch_add_explicit(a2 + 2, 0xFFFFFFFE, memory_order_release);
      v13 = v15 == 2;
      if (v15 <= 2)
      {
LABEL_38:
        if (v13)
        {
          _os_object_dispose(a2, a2);
          goto LABEL_9;
        }

LABEL_42:
        qword_1EBC5B980 = "API MISUSE: Over-release of an object";
        __break(1u);
        return result;
      }
    }
  }

LABEL_9:
  v16 = _dispatch_block_async_invoke_and_release;
  if ((v11 & 4) == 0)
  {
    v16 = _dispatch_block_async_invoke;
  }

  v5[4] = v16;
  if ((v10 & 0x40000000) != 0)
  {
    v17 = v7[3];
LABEL_16:
    v18 = v17 & 0xFFFFFF;
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if ((a3 & 0x40000000) != 0)
  {
    v18 = 0;
    goto LABEL_25;
  }

  v17 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
  if ((v17 >> 8) <= 0x10uLL)
  {
    goto LABEL_16;
  }

  v18 = 4351;
LABEL_17:
  if (((v10 | a3) & 0x20) != 0)
  {
    v18 |= 0x10000000uLL;
  }

  else
  {
    v19 = (a2[21] >> 30) & 1;
    if ((a2[21] & 0xFFF) == 0)
    {
      v19 = 1;
    }

    if (!v19)
    {
      v18 = 0;
    }
  }

LABEL_25:
  v5[1] = v18;
  if ((v10 & 0x80000000) == 0)
  {
    if (((v10 | a3) & 0x40) != 0)
    {
      goto LABEL_33;
    }

    v20 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
    if (!v20 || atomic_fetch_add_explicit((v20 + 12), 1u, memory_order_relaxed) > 0)
    {
      goto LABEL_34;
    }

    qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
    __break(1u);
  }

  v20 = v7[4];
  if ((v20 + 1) < 2 || atomic_fetch_add_explicit((v20 + 12), 1u, memory_order_relaxed) > 0)
  {
    goto LABEL_34;
  }

  qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
  __break(1u);
LABEL_33:
  v20 = 0;
LABEL_34:
  v5[3] = v20;
  *v5 = v11 | (2 * (v10 & 1)) | 0x20;
  v21 = __clz(__rbit32((*(v5 + 2) >> 8) & 0x3FFF));
  if (((*(v5 + 2) >> 8) & 0x3FFF) != 0)
  {
    return (v21 + 1);
  }

  else
  {
    return 0;
  }
}

void dispatch_barrier_async_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg[22];
  if (v5)
  {
    StatusReg[22] = v5[2];
    *v5 = 262;
    v5[4] = work;
    v5[5] = context;
    v6 = StatusReg[4] & 0xFFFFFFLL;
    v7 = 4351;
    if (v6 < 0x10FF)
    {
      v7 = StatusReg[4] & 0xFFFFFFLL;
    }

    v8 = StatusReg[28];
    if (v8 && atomic_fetch_add_explicit((v8 + 12), 1u, memory_order_relaxed) <= 0)
    {
      qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
      __break(1u);
    }

    else
    {
      v5[3] = v8;
      if (!v6 || (isa_high = HIDWORD(queue[10].isa), (isa_high & 0x40000000) == 0) && (isa_high & 0xFFF) != 0)
      {
        v7 = 0;
      }

      v5[1] = v7;
      (*(queue->isa + 11))();
    }
  }

  else
  {
    _dispatch_async_f_slow(queue, context, work, 0, 6);
  }
}

uint64_t _dispatch_async_f_slow(_DWORD *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = _dispatch_continuation_alloc_from_heap();
  *v10 = a5 | 0x100;
  v10[4] = a3;
  v10[5] = a2;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v12 = *(StatusReg + 32) & 0xFFFFFFLL;
  v13 = 4351;
  if (v12 < 0x10FF)
  {
    v13 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  if ((a4 & 0x40) != 0)
  {
    goto LABEL_7;
  }

  v14 = *(StatusReg + 224);
  if (v14 && atomic_fetch_add_explicit((v14 + 12), 1u, memory_order_relaxed) <= 0)
  {
    qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
    __break(1u);
LABEL_7:
    v14 = 0;
  }

  v10[3] = v14;
  if (!v12)
  {
LABEL_12:
    v16 = 0;
    v13 = 0;
    goto LABEL_15;
  }

  if ((a4 & 0x20) != 0)
  {
    v13 |= 0x10000000uLL;
  }

  else
  {
    v15 = a1[21];
    if ((v15 & 0x40000000) == 0 && (v15 & 0xFFF) != 0)
    {
      goto LABEL_12;
    }
  }

  v16 = __clz(__rbit32(v13 >> 8)) + 1;
LABEL_15:
  v10[1] = v13;
  v17 = *(*a1 + 88);

  return v17(a1, v10, v16);
}

uint64_t _dispatch_barrier_async_detached_f(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *v7 = xmmword_1BB581210;
  v8 = *(*a1 + 88);

  return v8(a1);
}

void dispatch_barrier_async(dispatch_queue_t queue, dispatch_block_t block)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg[22];
  if (v5)
  {
    StatusReg[22] = v5[2];
  }

  else
  {
    v5 = _dispatch_continuation_alloc_from_heap();
  }

  v6 = _dispatch_Block_copy(block);
  v7 = *(block + 2);
  if (!v7)
  {
    if (_dispatch_block_special_invoke)
    {
      goto LABEL_5;
    }

LABEL_19:
    *v5 = 278;
    v5[5] = v6;
    inited = _dispatch_continuation_init_slow(v5, queue, 0);
    goto LABEL_15;
  }

  if (_dispatch_block_special_invoke == v7)
  {
    goto LABEL_19;
  }

LABEL_5:
  *v5 = 278;
  v5[4] = _dispatch_call_block_and_release;
  v5[5] = v6;
  v8 = StatusReg[4] & 0xFFFFFFLL;
  v9 = 4351;
  if (v8 < 0x10FF)
  {
    v9 = StatusReg[4] & 0xFFFFFFLL;
  }

  v10 = StatusReg[28];
  if (v10 && atomic_fetch_add_explicit((v10 + 12), 1u, memory_order_relaxed) <= 0)
  {
    [OS_voucher retain];
  }

  v5[3] = v10;
  if (v8 && ((isa_high = HIDWORD(queue[10].isa), (isa_high & 0x40000000) != 0) || (isa_high & 0xFFF) == 0))
  {
    inited = (__clz(__rbit32(v9 >> 8)) + 1);
  }

  else
  {
    inited = 0;
    v9 = 0;
  }

  v5[1] = v9;
LABEL_15:
  v13 = *(queue->isa + 11);

  v13(queue, v5, inited);
}

void dispatch_channel_async_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg[22];
  if (v5)
  {
    StatusReg[22] = v5[2];
    *v5 = 260;
    v5[4] = work;
    v5[5] = context;
    v6 = StatusReg[4] & 0xFFFFFFLL;
    v7 = 4351;
    if (v6 < 0x10FF)
    {
      v7 = StatusReg[4] & 0xFFFFFFLL;
    }

    v8 = StatusReg[28];
    if (v8 && atomic_fetch_add_explicit((v8 + 12), 1u, memory_order_relaxed) <= 0)
    {
      qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
      __break(1u);
    }

    else
    {
      v5[3] = v8;
      if (!v6 || (isa_high = HIDWORD(queue[10].isa), (isa_high & 0x40000000) == 0) && (isa_high & 0xFFF) != 0)
      {
        v7 = 0;
      }

      v5[1] = v7;
      (*(queue->isa + 11))();
    }
  }

  else
  {
    _dispatch_async_f_slow(queue, context, work, 0, 4);
  }
}

_DWORD *dispatch_async_enforce_qos_class_f(_DWORD *result, uint64_t a2, uint64_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg[22];
  if (!v5)
  {
    return _dispatch_async_f_slow(result, a2, a3, 32, 4);
  }

  StatusReg[22] = v5[2];
  *v5 = 260;
  v5[4] = a3;
  v5[5] = a2;
  v6 = StatusReg[4] & 0xFFFFFFLL;
  v7 = 4351;
  if (v6 < 0x10FF)
  {
    v7 = StatusReg[4] & 0xFFFFFFLL;
  }

  v8 = StatusReg[28];
  if (v8 && atomic_fetch_add_explicit((v8 + 12), 1u, memory_order_relaxed) <= 0)
  {
    qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
    __break(1u);
  }

  else
  {
    v5[3] = v8;
    if (v6)
    {
      v9 = v7 | 0x10000000;
    }

    else
    {
      v9 = 0;
    }

    v5[1] = v9;
    return (*(*result + 88))();
  }

  return result;
}

void dispatch_channel_async(dispatch_queue_t queue, dispatch_block_t block)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg[22];
  if (v5)
  {
    StatusReg[22] = v5[2];
  }

  else
  {
    v5 = _dispatch_continuation_alloc_from_heap();
  }

  v6 = _dispatch_Block_copy(block);
  v7 = *(block + 2);
  if (!v7)
  {
    if (_dispatch_block_special_invoke)
    {
      goto LABEL_5;
    }

LABEL_19:
    *v5 = 276;
    v5[5] = v6;
    inited = _dispatch_continuation_init_slow(v5, queue, 0);
    goto LABEL_15;
  }

  if (_dispatch_block_special_invoke == v7)
  {
    goto LABEL_19;
  }

LABEL_5:
  *v5 = 276;
  v5[4] = _dispatch_call_block_and_release;
  v5[5] = v6;
  v8 = StatusReg[4] & 0xFFFFFFLL;
  v9 = 4351;
  if (v8 < 0x10FF)
  {
    v9 = StatusReg[4] & 0xFFFFFFLL;
  }

  v10 = StatusReg[28];
  if (v10 && atomic_fetch_add_explicit((v10 + 12), 1u, memory_order_relaxed) <= 0)
  {
    [OS_voucher retain];
  }

  v5[3] = v10;
  if (v8 && ((isa_high = HIDWORD(queue[10].isa), (isa_high & 0x40000000) != 0) || (isa_high & 0xFFF) == 0))
  {
    inited = (__clz(__rbit32(v9 >> 8)) + 1);
  }

  else
  {
    inited = 0;
    v9 = 0;
  }

  v5[1] = v9;
LABEL_15:
  v13 = *(queue->isa + 11);

  v13(queue, v5, inited);
}

atomic_ullong *_dispatch_barrier_trysync_or_async_f(atomic_ullong *a1, uint64_t a2, uint64_t (*a3)(void), char a4)
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v5 = *(a1 + 40) << 41;
  v6 = v4 & 0xFFFFFFFC | ((a4 & 1) << 58);
  v7 = a1[7];
  do
  {
    if (v7 != (v7 & 0x3000000000) - v5 + 0x20000000000000)
    {
      return _dispatch_barrier_async_detached_f(a1, a2, a3);
    }

    v8 = v7;
    atomic_compare_exchange_strong_explicit(a1 + 7, &v8, v7 & 0x3000000000 | v6 | 0x60000000000002, memory_order_acquire, memory_order_acquire);
    v9 = v8 == v7;
    v7 = v8;
  }

  while (!v9);
  if ((a4 & 1) == 0 || *(a1 + 2) == 0x7FFFFFFF || atomic_fetch_add_explicit(a1 + 2, 2u, memory_order_relaxed) > 0)
  {
    return _dispatch_barrier_trysync_or_async_f_complete(a1, a2, a3, a4);
  }

  qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
  __break(1u);
  return a1;
}

uint64_t _dispatch_barrier_trysync_or_async_f_complete(atomic_ullong *a1, uint64_t a2, uint64_t (*a3)(void), char a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v9;
  _dispatch_client_callout(a2, a3);
  *(StatusReg + 160) = v9;
  v7 = 4;
  if (a4)
  {
    if (atomic_fetch_add_explicit(a1 + 7, 0xFC00000000000000, memory_order_relaxed) >> 55 == 8)
    {
      v7 = 5;
    }

    else
    {
      v7 = 4;
    }
  }

  return (*(*a1 + 80))(a1, 0, v7);
}

void dispatch_barrier_sync_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (*(queue->isa + 40) != 17 || (v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), v4 = queue[10].isa, (v4 & 0x1000000) != 0) && (v4 = queue[10].isa, (v4 & 0x40000) != 0))
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Queue type doesn't support dispatch_sync";
    __break(1u);
LABEL_12:
    _dispatch_sync_recurse(queue, context, work, 2uLL);
  }

  else
  {
    v5 = v4 << 41;
    v6 = v3 & 0xFFFFFFFC;
    isa = queue[7].isa;
    do
    {
      if (isa != ((isa & 0x3000000000) - v5 + 0x20000000000000))
      {
        _dispatch_sync_f_slow(queue, context, work, 2uLL, queue, 2);
        return;
      }

      v8 = isa;
      atomic_compare_exchange_strong_explicit(&queue[7], &v8, v6 | isa & 0x3000000000 | 0x60000000000002, memory_order_acquire, memory_order_acquire);
      v9 = v8 == isa;
      isa = v8;
    }

    while (!v9);
    if (*(queue[3].isa + 3))
    {
      goto LABEL_12;
    }

    _dispatch_lane_barrier_sync_invoke_and_complete(queue, context, work);
  }
}

void dispatch_sync_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (LOWORD(queue[10].isa) == 1)
  {
    _dispatch_barrier_sync_f(queue, context, work, 0);
  }

  else if (*(queue->isa + 40) != 17 || (queue[10].isa & 0x1000000) != 0 && (queue[10].isa & 0x40000) != 0)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Queue type doesn't support dispatch_sync";
    __break(1u);
LABEL_15:
    _dispatch_sync_recurse(queue, context, work, 0);
  }

  else
  {
    if (!queue[6].isa)
    {
      isa = queue[7].isa;
      while ((isa & 0xFFC0018000000000) == 0)
      {
        v4 = isa;
        atomic_compare_exchange_strong_explicit(&queue[7], &v4, isa + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        v5 = v4 == isa;
        isa = v4;
        if (v5)
        {
          if (*(queue[3].isa + 3))
          {
            goto LABEL_15;
          }

          _dispatch_sync_invoke_and_complete(queue, context, work);
          return;
        }
      }
    }

    _dispatch_sync_f_slow(queue, context, work, 0, queue, 0);
  }
}

void dispatch_barrier_sync(dispatch_queue_t queue, dispatch_block_t block)
{
  v2 = *(block + 2);
  if (v2)
  {
    v3 = *(block + 2);
    if (_dispatch_block_special_invoke == v2)
    {
      goto LABEL_7;
    }

LABEL_6:
    _dispatch_barrier_sync_f(queue, block, v3, 18);
    return;
  }

  if (_dispatch_block_special_invoke)
  {
    v3 = 0;
    goto LABEL_6;
  }

LABEL_7:
  _dispatch_sync_block_with_privdata(queue, block, 18);
}

void _dispatch_sync_block_with_privdata(atomic_uint *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(a2 + 16);
  }

  if (v6 == _dispatch_block_special_invoke)
  {
    v8 = (a2 + 32);
    add_explicit = *(a2 + 32);
    if (add_explicit != 3512316172)
    {
LABEL_61:
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_1EBC5B9B0 = add_explicit;
      __break(1u);
      goto LABEL_62;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = 0;
  v11 = v8[1];
  if (v11)
  {
    v12 = 34;
  }

  else
  {
    v12 = 32;
  }

  if ((v11 & 0x40000000) != 0)
  {
    v13 = 0;
    if ((v8[1] & 0x30) != 0x10)
    {
      v14 = v8[3];
      v15 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) & 0xFFFFFFLL;
      v16 = v15 != 0;
      v17 = v15 < (v14 & 0xFFFFFFuLL);
      v18 = v14 & 0xFFFFFFFF02FFFFFFLL;
      if (v16 && v17)
      {
        v10 = v15;
      }

      else
      {
        v10 = 0;
      }

      if (v16 && v17)
      {
        v13 = v18;
      }

      else
      {
        v13 = 0;
      }
    }

    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = 0;
    if ((v11 & 0x80000000) == 0)
    {
LABEL_18:
      v19 = -1;
      goto LABEL_21;
    }
  }

  v19 = v8[4];
LABEL_21:
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v21 = *(StatusReg + 32);
  if ((v21 & 0x1000000) != 0)
  {
    if (v13)
    {
      goto LABEL_52;
    }

    v13 = v21 & 0xFFFFFFFFFEFFFFFFLL;
LABEL_44:
    if (v13)
    {
      goto LABEL_52;
    }

    goto LABEL_23;
  }

  if (v13 != (v21 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_44;
  }

LABEL_23:
  if (v19 != -1)
  {
    if (*(StatusReg + 224) != v19)
    {
      goto LABEL_51;
    }

    if (v19)
    {
      add_explicit = atomic_fetch_add_explicit((v19 + 12), 1u, memory_order_relaxed);
      if (add_explicit <= 0)
      {
        qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
        __break(1u);
LABEL_60:
        qword_1EBC5B980 = "API MISUSE: Voucher over-release";
        __break(1u);
        goto LABEL_61;
      }
    }
  }

  while (a1[2] != 0x7FFFFFFF && atomic_fetch_add_explicit(a1 + 2, 2u, memory_order_relaxed) <= 0)
  {
    qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
    __break(1u);
LABEL_51:
    v13 = 0;
LABEL_52:
    _dispatch_set_priority_and_voucher_slow(v13, v19, 0);
    v19 = v26;
  }

  v22 = 0;
  atomic_compare_exchange_strong_explicit(v8 + 7, &v22, a1, memory_order_relaxed, memory_order_relaxed);
  if (v22)
  {
    if (a1[2] != 0x7FFFFFFF)
    {
      v23 = atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFE, memory_order_release);
      if (v23 <= 2)
      {
        if (v23 != 2)
        {
LABEL_62:
          qword_1EBC5B980 = "API MISUSE: Over-release of an object";
          __break(1u);
          return;
        }

        _os_object_dispose(a1, a2);
      }
    }
  }

  v24 = v12 | a3;
  if (((v12 | a3) & 2) != 0)
  {
    _dispatch_barrier_sync_f(a1, a2, _dispatch_block_sync_invoke, v24);
  }

  else
  {
    _dispatch_sync_f(a1, a2, _dispatch_block_sync_invoke, v24);
  }

  v25 = *(StatusReg + 32);
  if ((v25 & 0x1000000) != 0)
  {
    if (v10)
    {
      goto LABEL_54;
    }

    v10 = v25 & 0xFFFFFFFFFEFFFFFFLL;
    goto LABEL_48;
  }

  if (v10 != (v25 & 0xFFFFFFFF76FFFFFFLL))
  {
LABEL_48:
    if (v10)
    {
      goto LABEL_54;
    }
  }

  if (v19 == -1)
  {
    return;
  }

  if (*(StatusReg + 224) == v19)
  {
    if (!v19)
    {
      return;
    }

    add_explicit = atomic_fetch_add_explicit((v19 + 12), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit > 1)
    {
      return;
    }

    goto LABEL_60;
  }

  v10 = 0;
LABEL_54:

  _dispatch_set_priority_and_voucher_slow(v10, v19, 6);
}

double _dispatch_barrier_sync_f(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*(*a1 + 40) != 17 || (v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), v5 = *(a1 + 80), (v5 & 0x1000000) != 0) && (v5 = *(a1 + 80), (v5 & 0x40000) != 0))
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Queue type doesn't support dispatch_sync";
    __break(1u);
    return _dispatch_sync_recurse(a1, a2, a3, a4 | 2);
  }

  else
  {
    v6 = v5 << 41;
    v7 = v4 & 0xFFFFFFFC;
    v8 = *(a1 + 56);
    do
    {
      if (v8 != (v8 & 0x3000000000) - v6 + 0x20000000000000)
      {
        return _dispatch_sync_f_slow(a1, a2, a3, 2uLL, a1, a4 | 2);
      }

      v9 = v8;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v9, v7 | v8 & 0x3000000000 | 0x60000000000002, memory_order_acquire, memory_order_acquire);
      v10 = v9 == v8;
      v8 = v9;
    }

    while (!v10);
    if (*(*(a1 + 24) + 24))
    {
      return _dispatch_sync_recurse(a1, a2, a3, a4 | 2);
    }

    _dispatch_lane_barrier_sync_invoke_and_complete(a1, a2, a3);
  }

  return result;
}

void dispatch_sync(dispatch_queue_t queue, dispatch_block_t block)
{
  v2 = *(block + 2);
  if (v2)
  {
    v3 = *(block + 2);
    if (_dispatch_block_special_invoke == v2)
    {
      goto LABEL_7;
    }

LABEL_6:
    _dispatch_sync_f(queue, block, v3, 0x10uLL);
    return;
  }

  if (_dispatch_block_special_invoke)
  {
    v3 = 0;
    goto LABEL_6;
  }

LABEL_7:
  _dispatch_sync_block_with_privdata(queue, block, 16);
}

double _dispatch_sync_f(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t a4)
{
  if (*(a1 + 80) == 1)
  {
    return _dispatch_barrier_sync_f(a1, a2, a3, a4);
  }

  if (*(*a1 + 40) != 17 || (*(a1 + 80) & 0x1000000) != 0 && (*(a1 + 80) & 0x40000) != 0)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Queue type doesn't support dispatch_sync";
    __break(1u);
    return _dispatch_sync_recurse(a1, a2, a3, a4);
  }

  else
  {
    if (!*(a1 + 48))
    {
      v5 = *(a1 + 56);
      while ((v5 & 0xFFC0018000000000) == 0)
      {
        v6 = v5;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v6, v5 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        v7 = v6 == v5;
        v5 = v6;
        if (v7)
        {
          if (*(*(a1 + 24) + 24))
          {
            return _dispatch_sync_recurse(a1, a2, a3, a4);
          }

          _dispatch_sync_invoke_and_complete(a1, a2, a3);
          return result;
        }
      }
    }

    return _dispatch_sync_f_slow(a1, a2, a3, 0, a1, a4);
  }
}

void dispatch_async_and_wait_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (queue[3].isa)
  {
    if (LOWORD(queue[10].isa) == 1)
    {
      v3 = 130;
    }

    else
    {
      v3 = 128;
    }

    _dispatch_async_and_wait_f(queue, context, work, v3);
  }

  else
  {
    _dispatch_sync_function_invoke(queue, context, work);
  }
}

double _dispatch_sync_function_invoke(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v5;
  _dispatch_client_callout(a2, a3);
  result = *&v5;
  *(StatusReg + 160) = v5;
  return result;
}

void _dispatch_async_and_wait_f(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 32);
  v6 = *(StatusReg + 24);
  v10 = 0;
  v7[0] = a4;
  v7[1] = v5 | 0x10000000;
  v7[2] = 0;
  v7[3] = *(StatusReg + 224);
  v7[4] = _dispatch_async_and_wait_invoke;
  v7[5] = v7;
  v7[6] = 0;
  v7[7] = a1;
  v7[8] = a3;
  v7[9] = a2;
  v7[10] = 0;
  v7[11] = 0;
  v8 = 0;
  v9 = v6;
  _dispatch_async_and_wait_recurse(a1, v7, v6, a4);
}

void dispatch_barrier_async_and_wait_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (queue[3].isa)
  {
    _dispatch_async_and_wait_f(queue, context, work, 0x82uLL);
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

  v2 = *(block + 2);
  if (v2)
  {
    v3 = *(block + 2);
    if (_dispatch_block_special_invoke == v2)
    {
      goto LABEL_9;
    }

LABEL_7:
    _dispatch_async_and_wait_f(queue, block, v3, 0x92uLL);
    return;
  }

  if (_dispatch_block_special_invoke)
  {
    v3 = 0;
    goto LABEL_7;
  }

LABEL_9:
  _dispatch_async_and_wait_block_with_privdata(queue, block, 146);
}

void _dispatch_async_and_wait_block_with_privdata(atomic_uint *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(a2 + 16);
  }

  if (v6 == _dispatch_block_special_invoke)
  {
    v8 = (a2 + 32);
    v9 = *(a2 + 32);
    if (v9 != 3512316172)
    {
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_1EBC5B9B0 = v9;
      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v8[1];
  if ((v10 & 0x40000000) == 0 || (v8[1] & 0x30) == 0x10 || ((v11 = v8[3], (v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) & 0xFFFFFFLL) != 0) ? (v13 = v12 >= (v11 & 0xFFFFFFuLL)) : (v13 = 1), v13))
  {
    v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
  }

  v14 = (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (v10 < 0)
  {
    v14 = v8 + 4;
  }

  v15 = *v14;
  if (a1[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(a1 + 2, 2u, memory_order_relaxed);
    v17 = add_explicit == 0;
    if (add_explicit <= 0)
    {
      qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
      __break(1u);
      goto LABEL_25;
    }
  }

  v18 = 0;
  atomic_compare_exchange_strong_explicit(v8 + 7, &v18, a1, memory_order_relaxed, memory_order_relaxed);
  if (v18)
  {
    if (a1[2] != 0x7FFFFFFF)
    {
      v19 = atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFE, memory_order_release);
      v17 = v19 == 2;
      if (v19 <= 2)
      {
LABEL_25:
        if (v17)
        {
          _os_object_dispose(a1, a2);
          goto LABEL_21;
        }

LABEL_29:
        qword_1EBC5B980 = "API MISUSE: Over-release of an object";
        __break(1u);
        return;
      }
    }
  }

LABEL_21:
  v20 = 34;
  if ((v10 & 1) == 0)
  {
    v20 = 32;
  }

  v21 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v22[0] = v20 | a3;
  v22[1] = v11 | 0x10000000;
  v22[2] = 0;
  v22[3] = v15;
  v22[4] = _dispatch_async_and_wait_invoke;
  v22[5] = v22;
  v22[6] = 0;
  v22[7] = a1;
  v22[8] = _dispatch_block_sync_invoke;
  v22[9] = a2;
  v22[10] = 0;
  v22[11] = 0;
  v23 = 0;
  v24 = v21;
  v25 = 0;
  _dispatch_async_and_wait_recurse(a1, v22, v21, v20 | a3);
}

void dispatch_async_and_wait(dispatch_queue_t queue, dispatch_block_t block)
{
  if (queue[3].isa)
  {
    if (LOWORD(queue[10].isa) == 1)
    {
      v2 = 146;
    }

    else
    {
      v2 = 144;
    }

    v3 = *(block + 2);
    if (v3)
    {
      v4 = *(block + 2);
      if (_dispatch_block_special_invoke != v3)
      {
LABEL_7:
        _dispatch_async_and_wait_f(queue, block, v4, v2);
        return;
      }
    }

    else if (_dispatch_block_special_invoke)
    {
      v4 = 0;
      goto LABEL_7;
    }

    _dispatch_async_and_wait_block_with_privdata(queue, block, v2);
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
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Queue doesn't support dispatch_queue_set_specific";
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
      _dispatch_barrier_async_detached_f(&unk_1ED3F3B40, v13[1], v16);
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
    if (!v8 || v4[8] == 22)
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
        _dispatch_queue_compute_priority_and_wlh_cold_1();
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
        _dispatch_queue_compute_priority_and_wlh_cold_1();
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
      v6 = (relative_priority - 1) | dword_1BB581244[v4] | 0x40000000;
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

  result[1] = dword_1BB581244[v10] | (a3 - 1);
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
    v6 = dword_1BB581244[v4] | (a3 - 1);
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
    v4 = dword_1BB581264[v2];
  }

  *(a1 + 84) = *(a1 + 84) & 0xFBFF0FFF | v4;
  result = *(a1 + 56);
  if ((~result & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(result);
  }

  return result;
}

uint64_t _dispatch_lane_create_with_target(const char *a1, uint64_t *a2, __objc2_class **a3, unsigned __int8 a4)
{
  result = _dispatch_queue_attr_to_info(a2);
  v8 = result;
  v9 = result;
  v10 = WORD1(result) & 3;
  if (a3 && v10)
  {
    if (!a3[3])
    {
      goto LABEL_6;
    }

    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Cannot specify both overcommit and a non-global target queue";
    qword_1EBC5B9B0 = a3;
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
  if ((*a3)[1].isa == 328465)
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
LABEL_70:
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
      qword_1EBC5B9B0 = add_explicit;
      __break(1u);
      goto LABEL_71;
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
    result = _dispatch_object_alloc(v16, 120);
    v19 = result;
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
      *(result + 8) += 2;
      if (*(*result + 40) == 19)
      {
        ++*(result + 8);
      }
    }

    else
    {
      v21 = 0;
    }

    *(result + 16) = -1985229329;
    *(result + 80) = v15 | v20;
    *(result + 56) = v21 - (v20 << 41) + 0x20000000000000;
    *(result + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
    *(result + 72) = v18;
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

    *(result + 84) = v22;
    if ((v8 & 0x200000) == 0)
    {
      _dispatch_queue_priority_inherit_from_target(result, a3);
      result = _dispatch_lane_inherit_wlh_from_target(v19, a3);
    }

    if (*(a3 + 2) == 0x7FFFFFFF || (add_explicit = atomic_fetch_add_explicit(a3 + 2, 1u, memory_order_relaxed), add_explicit > 0))
    {
      *(v19 + 24) = a3;
      return v19;
    }

    qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
    __break(1u);
    goto LABEL_70;
  }

  if ((*(a3 + 87) & 8) != 0)
  {
LABEL_71:
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target object to cooperative root queue - not implemented";
    qword_1EBC5B9B0 = a3;
    __break(1u);
    goto LABEL_72;
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

LABEL_72:
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Cannot specify an overcommit attribute and use this kind of target queue";
  qword_1EBC5B9B0 = a3;
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
        qword_1EBC5B980 = "API MISUSE: Over-release of an object";
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
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Too many nested calls to dispatch_suspend()";
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
        return _os_object_release_internal_n(a1, 2);
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
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Corrupt activation state";
    qword_1EBC5B9B0 = a1;
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

    qword_1EBC5B980 = "API MISUSE: Over-release of an object";
    __break(1u);
LABEL_54:
    if ((~add_explicit & 0x180000000000000) != 0)
    {
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Over-resume of an object";
      qword_1EBC5B9B0 = a1;
      __break(1u);
    }

    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Over-resume of an inactive object";
    qword_1EBC5B9B0 = a1;
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
      queue = &off_1ED3F3BC0;
    }
  }

  if (queue[9].isa)
  {
    return queue[9].isa;
  }

  else
  {
    return &unk_1BB5822E3;
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
    return dword_1BB581284[v5];
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

atomic_ullong *dispatch_queue_set_width(atomic_ullong *a1, uint64_t a2)
{
  if (*(*a1 + 40) != 17)
  {
    dispatch_queue_set_width_cold_1(*(*a1 + 40));
  }

  if (*(*a1 + 40) != 529)
  {
    dispatch_queue_set_width_cold_2(*(*a1 + 40));
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
  v8 = atomic_exchange_explicit((v3 + 100), 0, memory_order_release);
  if (v8 != v7)
  {
    _dispatch_lane_legacy_set_target_queue_cold_2(v3 + 100, v8, StatusReg);
  }

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
  v36 = (a1 + 48);
  if (!*(a1 + 48))
  {
    return;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v39 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v39;
  if ((a3 & 0x10) != 0 && *(StatusReg + 40))
  {
    _dispatch_return_to_kernel();
  }

  v9 = *(a1 + 104);
  if (!v9)
  {
    v9 = _dispatch_wait_for_enqueuer((a1 + 104));
  }

  if (!(*(a1 + 56) >> 55))
  {
    do
    {
      if (v5 != *(a1 + 24))
      {
        break;
      }

      if (*v9 <= 0xFFFuLL && (a3 & 0x80000) == 0 && (*v9 & 1) != 0)
      {
        v34 = a2;
        *(a2 + 8) = v9;
        if ((a3 & 8) == 0)
        {
          goto LABEL_93;
        }

        qword_1EBC5B980 = "BUG IN LIBDISPATCH: Deferred continuation on source, mach channel or mgr";
        __break(1u);
        goto LABEL_104;
      }

      v10 = *(v9 + 16);
      *(a1 + 104) = v10;
      if (!v10)
      {
        v27 = *v36;
        while (v9 == (v27 & 0xFFFFFFFFFFFFFFF8))
        {
          v28 = v27;
          atomic_compare_exchange_strong_explicit(v36, &v28, 0, memory_order_release, memory_order_relaxed);
          v22 = v28 == v27;
          v27 = v28;
          if (v22)
          {
            goto LABEL_11;
          }
        }

        v10 = *(v9 + 16);
        if (!v10)
        {
          v10 = _dispatch_wait_for_enqueuer((v9 + 16));
        }

        *(a1 + 104) = v10;
      }

LABEL_11:
      v11 = *(StatusReg + 192);
      if (v11)
      {
        (*v11)(a1);
      }

      v12 = *v9;
      if (*v9 >= 0x1000uLL)
      {
        v13 = *v9;
        if (*(v12 + 40) == 1)
        {
          (*(v12 + 48))(v9, 0, (a3 >> 21) & 1);
        }

        else
        {
          (*(v12 + 64))(v9, a2, a3 & 0xFFFD0000);
        }

        goto LABEL_67;
      }

      if ((a3 & 0x1000000) != 0)
      {
        v14 = objc_autoreleasePoolPush();
        v12 = *v9;
      }

      else
      {
        v14 = 0;
      }

      v15 = *(v9 + 24);
      if ((v12 & 4) != 0)
      {
        *(v9 + 24) = -1;
      }

      v16 = *(v9 + 8);
      if (v16 == -1)
      {
        v19 = 0;
      }

      else
      {
        v17 = *(StatusReg + 200);
        if (((v17 >> 8) & 0xF) != 0)
        {
          v18 = 1 << ((BYTE1(v17) & 0xFu) + 7);
        }

        else
        {
          v18 = 0;
        }

        v19 = v18 | *(StatusReg + 200);
        v20 = v16 & 0xFFFFFF;
        if ((v16 & 0xFFFFFF) != 0)
        {
          v21 = v18 & 0xFFFFFF00;
          v22 = (v17 & 0x44000000) == 0 && (*(v9 + 8) & 0x10000000) == 0;
          if (v22)
          {
            v23 = v19;
          }

          else
          {
            v23 = v16 & 0xFFFFFF;
          }

          if (v20 >= v21)
          {
            v19 = v23;
          }
        }

        else if (v17 >> 12)
        {
          v19 = (256 << ((v17 >> 12) - 1)) | 0xFF;
        }
      }

      v24 = v12 & 4;
      v25 = v19 & 0x7FFFFFFF02FFFFFFLL;
      v26 = *(StatusReg + 32);
      if ((v26 & 0x1000000) != 0)
      {
        if (v25)
        {
          goto LABEL_56;
        }

        v25 = v26 & 0xFFFFFFFFFEFFFFFFLL;
      }

      else if (v25 == (v26 & 0xFFFFFFFF76FFFFFFLL))
      {
        goto LABEL_39;
      }

      if (v25)
      {
        goto LABEL_56;
      }

LABEL_39:
      if (v15 == -1)
      {
        goto LABEL_57;
      }

      if (*(StatusReg + 224) != v15)
      {
        v25 = 0;
LABEL_56:
        _dispatch_set_priority_and_voucher_slow(v25, v15, v24 | 2);
        goto LABEL_57;
      }

      if ((v12 & 4) != 0 && v15)
      {
        if (atomic_fetch_add_explicit((v15 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
        {
          qword_1EBC5B980 = "API MISUSE: Voucher over-release";
          __break(1u);
          return;
        }

LABEL_58:
        v29 = *(StatusReg + 176);
        if (v29)
        {
          v30 = *(v29 + 8) + 1;
        }

        else
        {
          v30 = 1;
        }

        v24 = v9;
        if (v30 <= _dispatch_continuation_cache_limit)
        {
          v24 = 0;
          *(v9 + 16) = v29;
          *(v9 + 8) = v30;
          *(StatusReg + 176) = v9;
        }

        goto LABEL_63;
      }

LABEL_57:
      if ((v12 & 4) != 0)
      {
        goto LABEL_58;
      }

LABEL_63:
      if ((v12 & 8) != 0)
      {
        v31 = *(v9 + 48);
        v32 = *(v31->isa + 5);
        if (v32 != 514)
        {
          qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected object type";
          qword_1EBC5B9B0 = v32;
          __break(1u);
          return;
        }

        _dispatch_client_callout(*(v9 + 40), *(v9 + 32));
        dispatch_group_leave(v31);
        if (!v24)
        {
LABEL_65:
          if (!v14)
          {
            goto LABEL_67;
          }

LABEL_66:
          objc_autoreleasePoolPop(v14);
          goto LABEL_67;
        }
      }

      else
      {
        _dispatch_client_callout(*(v9 + 40), *(v9 + 32));
        if (!v24)
        {
          goto LABEL_65;
        }
      }

      _dispatch_continuation_free_to_cache_limit(v24);
      if (v14)
      {
        goto LABEL_66;
      }

LABEL_67:
      if (v11)
      {
        v11[1](a1);
      }

      v9 = v10;
      if (!v10)
      {
        if (!*v36)
        {
          v34 = (*(a1 + 80) << 41) + 0x40000000000000;
          goto LABEL_98;
        }

        v9 = *(a1 + 104);
        if (!v9)
        {
          v9 = _dispatch_wait_for_enqueuer((a1 + 104));
        }
      }

      if (*(StatusReg + 40))
      {
        _dispatch_return_to_kernel();
      }
    }

    while (*(a1 + 80) == 1 && ((a3 & 0x4000000) != 0 || (*(StatusReg + 960) & 1) == 0) && ((a3 & 0x100000) == 0 || (*(*(StatusReg + 216) + 60) & 7u) <= *(*(StatusReg + 216) + 100)) && !(*(a1 + 56) >> 55));
  }

  v33 = *(a1 + 80);
  v34 = (v33 << 41) + 0x40000000000000;
  if (!v9)
  {
LABEL_98:
    *a4 = *a4 & 0x4000000001 | v34;
    *(StatusReg + 160) = v39;
    return;
  }

  if (v33 >= 2)
  {
    v4 = *v9;
    if (*v9 < 0x1000uLL)
    {
LABEL_104:
      if ((v4 & 2) == 0)
      {
        goto LABEL_91;
      }
    }

    else if ((*(v4 + 40) & 0xF0) != 0x10 || (*(v9 + 80) & 0x80000) == 0)
    {
      goto LABEL_91;
    }

    v34 = 0x40010000000000;
  }

LABEL_91:
  *a4 = *a4 & 0x4000000001 | v34;
LABEL_93:
  *(StatusReg + 160) = v39;
  v35 = *(a1 + 24);
}

void *_dispatch_queue_invoke_finish(atomic_ullong *a1, uint64_t a2, __objc2_class **a3, uint64_t a4)
{
  v6 = *(a2 + 8);
  if (!v6)
  {
    return _dispatch_queue_invoke_finish_cold_1(a3, a1, a4);
  }

  v7 = *(a2 + 16);
  *(v6 + 106) |= 0x80u;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v7)
  {

    return _dispatch_workloop_drain_barrier_waiter(a1, v6, v7, 1, a4 & 0x4000000001);
  }

  else
  {
    v9 = a4 & 0x4000000001;

    return _dispatch_lane_drain_barrier_waiter(a1, v6, 1, v9);
  }
}

uint64_t _dispatch_workloop_drain_barrier_waiter(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 100) & 0xFFFFFFFC;
  v9 = *(a2 + 16);
  v10 = a3 - 1;
  *(a1 + 104 + 8 * (a3 - 1)) = v9;
  if (!v9)
  {
    v20 = v10;
    v21 = *(a1 + 8 * v10 + 152);
    v22 = (a1 + 8 * v10 + 152);
    while ((v21 & 0xFFFFFFFFFFFFFFF8) == a2)
    {
      v23 = v21;
      atomic_compare_exchange_strong_explicit(v22, &v23, 0, memory_order_release, memory_order_relaxed);
      v24 = v23 == v21;
      v21 = v23;
      if (v24)
      {
        goto LABEL_2;
      }
    }

    v25 = a5;
    v9 = *(a2 + 16);
    if (!v9)
    {
      v9 = _dispatch_wait_for_enqueuer((a2 + 16));
    }

    *(a1 + 104 + 8 * v20) = v9;
    a5 = v25;
  }

LABEL_2:
  v11 = v9 != 0;
  v12 = v8 - a5;
LABEL_3:
  if (v11)
  {
    v11 = 1;
  }

  else
  {
    v13 = 0;
    do
    {
      v11 = v13 != -48;
      if (v13 == -48)
      {
        break;
      }

      v14 = *(a1 + 192 + v13);
      v13 -= 8;
    }

    while (!v14);
  }

  v15 = *(a1 + 56);
  do
  {
    v16 = v15;
    if ((v15 & 0x2000000000) != 0)
    {
      v18 = 0xFFFFFF7700000000;
      if ((v16 & 2) != 0)
      {
        if ((v16 & 0x800000001) != 0)
        {
          _dispatch_event_loop_ensure_ownership(a1);
          atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
          goto LABEL_3;
        }
      }

      else
      {
        v18 = 0xFFFFFF7700000001;
      }

      v17 = v16 & v18 | v8;
      if (!v11)
      {
        if ((v16 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          goto LABEL_3;
        }

        v17 &= 0xFFFFFF70FFFFFFFCLL;
      }
    }

    else
    {
      v17 = v12 + (v15 & 0xFFFFFF5700000001);
    }

    v15 = v16;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v15, v17, memory_order_release, memory_order_relaxed);
  }

  while (v15 != v16);

  return _dispatch_barrier_waiter_redirect_or_wake(a1, a2, a4, v16, v17);
}

uint64_t _dispatch_lane_drain_barrier_waiter(atomic_ullong *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = *(a2 + 100) & 0xFFFFFFFC;
  v8 = *(a2 + 16);
  a1[13] = v8;
  if (!v8)
  {
    v15 = a1[6];
    while ((v15 & 0xFFFFFFFFFFFFFFF8) == a2)
    {
      v16 = v15;
      atomic_compare_exchange_strong_explicit(a1 + 6, &v16, 0, memory_order_release, memory_order_relaxed);
      v17 = v16 == v15;
      v15 = v16;
      if (v17)
      {
        goto LABEL_2;
      }
    }

    v18 = a4;
    v8 = *(a2 + 16);
    if (!v8)
    {
      v8 = _dispatch_wait_for_enqueuer((a2 + 16));
    }

    a1[13] = v8;
    a4 = v18;
  }

LABEL_2:
  v9 = v7 - a4;
LABEL_3:
  v10 = a1[7];
  do
  {
    v11 = v10;
    if ((v10 & 0x2000000000) != 0)
    {
      v13 = 0xFFFFFF7700000000;
      if ((v11 & 2) != 0)
      {
        if ((v11 & 0x800000001) != 0)
        {
          _dispatch_event_loop_ensure_ownership(a1);
          atomic_fetch_and_explicit(a1 + 7, 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
          goto LABEL_3;
        }
      }

      else
      {
        v13 = 0xFFFFFF7700000001;
      }

      v12 = v11 & v13 | v7;
      if (!v8)
      {
        if ((v11 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit(a1 + 7, 0x8000000000uLL, memory_order_acquire);
          v8 = a1[13];
          goto LABEL_3;
        }

        v12 &= 0xFFFFFF70FFFFFFFCLL;
      }
    }

    else
    {
      v12 = v9 + (v10 & 0xFFFFFF5700000001);
    }

    v10 = v11;
    atomic_compare_exchange_strong_explicit(a1 + 7, &v10, v12, memory_order_release, memory_order_relaxed);
  }

  while (v10 != v11);

  return _dispatch_barrier_waiter_redirect_or_wake(a1, a2, a3, v11, v12);
}

unint64_t _dispatch_lane_activate(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 84);
  v4 = (v3 >> 8) & 0xF;
  if (v3 >> 12 <= v4 || (v3 & 0x40000000) == 0 && v4)
  {
    *(a1 + 84) = v3 & 0xFBFF0FFF;
  }

  v5 = _dispatch_queue_priority_inherit_from_target(a1, v2);

  return _dispatch_lane_inherit_wlh_from_target(a1, v5);
}

__objc2_class **_dispatch_queue_priority_inherit_from_target(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 84);
  v4 = a2 >= &_dispatch_root_queues && a2 < &_dispatch_queue_serial_numbers;
  if ((v2 & 0x20000000) != 0 || (v2 & 0x44000FFF) == 0)
  {
    if (v4)
    {
      v2 = *(a2 + 84) | 0x20000000;
    }

    else if ((v2 & 0x20000000) != 0)
    {
      v2 &= 0xFBFF0FFF;
    }

    *(a1 + 84) = v2;
  }

  else if (v4)
  {
    if (((v2 >> 8) & 0xF) != 0)
    {
      v5 = (v2 >> 8) & 0xF;
    }

    else
    {
      v5 = 4;
    }

    if (v5 - 7 <= 0xFFFFFFF9)
    {
      _dispatch_queue_priority_inherit_from_target_cold_1(v5);
    }

    return &_dispatch_root_queues + 16 * (3 * v5 + (v2 >> 31) - 3);
  }

  return a2;
}

unint64_t _dispatch_lane_inherit_wlh_from_target(uint64_t a1, unint64_t a2)
{
  if (*(*a2 + 42))
  {
    if (*(*a1 + 40) == 133137 || (*(*a1 + 40) != 19 || (*(*(a1 + 88) + 29) & 0x20) != 0) && *(a1 + 80) == 1 && (a2 >= &_dispatch_root_queues ? (v6 = &_dispatch_queue_serial_numbers > a2) : (v6 = 0), v6))
    {
      v5 = 0x2000000000;
      v4 = 1;
    }

    else
    {
      v4 = 0;
      v5 = 0x1000000000;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v7 = *(a1 + 56);
  while (1)
  {
    v8 = v7;
    result = v7 & 0xFFFFFFCFFFFFFFFFLL | v5;
    if (v7 == result)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit((a1 + 56), &v7, result, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v8)
    {
      goto LABEL_16;
    }
  }

  result = v7;
LABEL_16:
  if ((v8 & 0x2000000000) == 0)
  {
    v4 = 1;
  }

  if ((v4 & 1) == 0)
  {
    v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
    if (v10)
    {
      if (*(v10 + 24) == a1)
      {
        result = _dispatch_event_loop_leave_immediate(result);
      }
    }
  }

  if ((*(*a2 + 40) & 0x10000) == 0)
  {
    if (*(*a2 + 40) == 18)
    {
      v11 = *(a2 + 24);
      if (v11 < &_dispatch_root_queues || v11 >= &_dispatch_queue_serial_numbers)
      {
        v13 = *(a2 + 200);
        v14 = 0x1000000;
        if (v13)
        {
          if ((*v13 & 0x40) != 0)
          {
            v14 = 17039360;
          }

          else
          {
            v14 = 0x1000000;
          }
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = *(a2 + 80);
      do
      {
        v16 = v15 & 0xFFAFFFFF | 0x100000;
        if (v16 == v15)
        {
          break;
        }

        v17 = v15;
        atomic_compare_exchange_strong_explicit((a2 + 80), &v17, v16, memory_order_relaxed, memory_order_relaxed);
        v18 = v17 == v15;
        v15 = v17;
      }

      while (!v18);
    }

    else
    {
      v14 = *(a2 + 80) & 0x1000000;
      if (v14)
      {
        v14 = *(a2 + 80) & 0x1040000;
      }

      atomic_fetch_or_explicit((a2 + 80), 0x100000u, memory_order_relaxed);
    }

    if (v14)
    {
      atomic_fetch_or_explicit((a1 + 80), v14, memory_order_relaxed);
    }
  }

  return result;
}

void *_dispatch_lane_invoke(uint64_t a1, void *a2, unsigned int a3)
{
  v57 = 0;
  if ((a3 & 3) == 0)
  {
    *(a1 + 16) = -1985229329;
  }

  if ((a3 & 2) != 0)
  {
    v57 = 0x40020000000001;
    v6 = a3 & 0x40000;
  }

  else
  {
    v36 = (*(a1 + 80) << 41) - 0x20000000000;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v38 = *(StatusReg + 24) & 0xFFFFFFFCLL;
    v6 = a3 & 0x40000;
    if ((a3 & 0x40000) != 0)
    {
      v39 = 0x4000000000;
    }

    else
    {
      v39 = 1;
    }

    if ((a3 & 0x40001) == 0x40000)
    {
      v40 = 0xFFE00000FFFFFFFCLL;
    }

    else
    {
      v40 = 0xFFE00040FFFFFFFCLL;
    }

    v41 = *(StatusReg + 200);
    v42 = (v41 >> 8) & 0xF;
    v43 = v41 >> 12;
    v44 = HIWORD(v41) & 0xF;
    if (v42 <= v43)
    {
      v42 = v43;
    }

    if (v42 > v44)
    {
      v44 = v42;
    }

LABEL_68:
    for (i = *(a1 + 56); ; i = v50)
    {
      while ((i & v40) != 0)
      {
        if (a3)
        {
          return _os_object_release_internal_n(a1, 2);
        }

        v51 = i;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v51, i ^ v39, memory_order_acquire, memory_order_acquire);
        if (v51 == i)
        {
          return _os_object_release_internal_n(a1, 2);
        }

        i = v51;
      }

      if ((i & 0x1000000000) != 0)
      {
        v46 = HIDWORD(i) & 7;
        if (v46 > v44)
        {
          v52 = *(StatusReg + 24);
          v55 = v36;
          _pthread_workqueue_override_start_direct();
          v36 = v55;
          v53 = *(StatusReg + 200);
          v44 = v46;
          if ((HIWORD(v53) & 0xF) < v46)
          {
            *(StatusReg + 200) = v53 & 0xFFF0FFFF | (v46 << 16);
            v44 = v46;
          }

          goto LABEL_68;
        }
      }

      v47 = (i >> 40) & 1;
      if (!((v36 + i) >> 53))
      {
        LODWORD(v47) = 1;
      }

      v48 = v47 ? 0x60000000000000 : 0x20000000000000;
      v49 = i & 0x7700000001 | v38 | v48;
      v50 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v50, v49, memory_order_acquire, memory_order_acquire);
      if (v50 == i)
      {
        break;
      }
    }

    v54 = 0x60000000000000;
    if ((a3 & 1) == 0)
    {
      v54 = v39 | 0x60000000000000;
    }

    v57 = (v49 & v54) - (i & 0x3FFE0000000000);
    if (!v57)
    {
      return _os_object_release_internal_n(a1, 2);
    }
  }

  if (!v6)
  {
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

        v14 = v10 & 0x880F0000 | v12 | v13 & v8;
      }

      else
      {
        v15 = v10 | 0x40000000;
        if ((v10 & 0xFFF) == 0)
        {
          v15 = *(v9 + 200);
        }

        v14 = v15 & 0xFFFF0FFF | v8 & 0x400F000;
        if (v11 <= ((v15 >> 8) & 0xF))
        {
          v14 = v15;
        }
      }
    }

    else
    {
      v14 = v8 & 0xFFF0FFFF;
    }

    *(v9 + 200) = v14;
    v7 = v10 & 0xFFF0FFFF;
    if ((a3 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v7 = 0;
  if ((a3 & 0x100000) != 0)
  {
LABEL_21:
    if ((*(a1 + 80) & 0x400000) != 0)
    {
      atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
    }
  }

LABEL_23:
  v16 = (*(a1 + 80) << 8) & 0x3000000 | a3 & 0xFCFFFFFF;
  if (((*(a1 + 80) << 8) & 0x3000000) == 0)
  {
    v16 = a3;
  }

  v17 = v16 | 0x10;
  v18 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_26:
  v20 = v16;
  if ((v16 & 0x1000002) == 2)
  {
    v21 = v17;
    _dispatch_last_resort_autorelease_pool_push(a2);
    v22 = *(a1 + 24);
    v23 = (v18 + 160);
    if (*(v18 + 160) == v22)
    {
      if (*(a1 + 80) == 1)
      {
        _dispatch_lane_serial_drain(a1, a2, v20, &v57);
      }

      else
      {
        _dispatch_lane_concurrent_drain(a1, a2, v20, &v57);
      }

      v22 = v24;
    }

    v56 = *v23;
    *(v18 + 160) = a1;
    *(v18 + 168) = &v56;
    _dispatch_last_resort_autorelease_pool_pop(a2);
    *v23 = v56;
    v17 = v21;
  }

  else
  {
    v22 = *(a1 + 24);
    if (*(v19 + 160) == v22)
    {
      if (*(a1 + 80) == 1)
      {
        _dispatch_lane_serial_drain(a1, a2, v16, &v57);
      }

      else
      {
        _dispatch_lane_concurrent_drain(a1, a2, v16, &v57);
      }

      v22 = v25;
    }
  }

  if (v22 + 1 <= 1)
  {
    v26 = v57;
    v27 = *(a1 + 56);
    while (1)
    {
      v28 = v27;
      v29 = v27 - v26;
      v30 = v29 & 0xFFFFFFF700000001;
      if (!(v28 >> 55))
      {
        if ((v28 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          v22 = *(v19 + 160);
          v16 = v17;
          if (a3)
          {
            goto LABEL_26;
          }

          v16 = v17;
          if (((*v22)[1].isa & 0x10000) != 0)
          {
            goto LABEL_26;
          }

          break;
        }

        if (v22)
        {
          v30 = v29 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v30 = v29 & 0xFFFFFFF000000001;
        }
      }

      v27 = v28;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v27, v30, memory_order_release, memory_order_relaxed);
      if (v27 == v28)
      {
        if ((~v28 & 0x1800000000) == 0)
        {
          v31 = HIDWORD(v28) & 7;
          v32 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v33 = *(v32 + 200);
          if ((HIWORD(v33) & 0xF) < v31)
          {
            *(v32 + 200) = v33 & 0xFFF0FFFF | (v31 << 16);
          }
        }

        v22 = 0;
        v57 = 0;
        break;
      }
    }
  }

  if ((v20 & 0x40000) == 0)
  {
    v34 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v34 + 200) = *(v34 + 200) & 0xF0000 | v7;
  }

  if (v22)
  {
    return _dispatch_queue_invoke_finish(a1, a2, v22, v57);
  }

  return _os_object_release_internal_n(a1, 2);
}

uint64_t dispatch_workloop_copy_current()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 216);
  v1 = v0 == -4 || v0 == 0;
  if (v1 || *(*v0 + 40) != 18)
  {
    return 0;
  }

  _os_object_retain_with_resurrect(v0);
  return v0;
}

BOOL _dispatch_workloop_should_yield_4NW()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 216);
  v1 = v0 == -4 || v0 == 0;
  return !v1 && *(*v0 + 40) == 18 && (*(v0 + 60) & 7u) > *(v0 + 100);
}

uint64_t _dispatch_workloop_create(const char *a1, uint64_t a2)
{
  v3 = 65537;
  if (a1)
  {
    v5 = _dispatch_strdup_if_mutable(a1);
    if (v5 == a1)
    {
      v3 = 65537;
    }

    else
    {
      v3 = 2162689;
    }
  }

  else
  {
    v5 = 0;
  }

  result = _dispatch_object_alloc(OS_dispatch_workloop, 208);
  if ((a2 & 0x180000000000000) != 0)
  {
    *(result + 8) += 2;
    if (*(*result + 40) == 19)
    {
      ++*(result + 8);
    }
  }

  *(result + 16) = -1985229329;
  *(result + 80) = v3;
  *(result + 56) = a2 | 0x1FFE2000000000;
  *(result + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(result + 72) = v5;
  *(result + 24) = &off_1ED3F3BC0;
  if ((a2 & 0x180000000000000) == 0)
  {
    *(result + 84) = -2080358400;
  }

  return result;
}

void dispatch_workloop_set_autorelease_frequency(dispatch_workloop_t workloop, dispatch_autorelease_frequency_t frequency)
{
  isa_low = LODWORD(workloop[10].isa);
  if (frequency == DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM)
  {
    do
    {
      v3 = isa_low & 0xFFFCFFFF | 0x10000;
      if (v3 == isa_low)
      {
        break;
      }

      v4 = isa_low;
      atomic_compare_exchange_strong_explicit(&workloop[10], &v4, v3, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == isa_low;
      isa_low = v4;
    }

    while (!v5);
  }

  else
  {
    do
    {
      v6 = isa_low & 0xFFFCFFFF | 0x20000;
      if (v6 == isa_low)
      {
        break;
      }

      v7 = isa_low;
      atomic_compare_exchange_strong_explicit(&workloop[10], &v7, v6, memory_order_relaxed, memory_order_relaxed);
      v5 = v7 == isa_low;
      isa_low = v7;
    }

    while (!v5);
  }

  isa = workloop[7].isa;
  if ((~isa & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(isa);
  }
}

_DWORD *dispatch_workloop_set_scheduler_priority(uint64_t a1, int a2, char a3)
{
  v4 = *(a1 + 56);
  if ((~v4 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v4);
  }

  result = *(a1 + 200);
  if (result)
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_8:
    result[2] = 0;
    v8 = *result & 0xFFFFFFFE;
    if ((a3 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    result[4] = 2;
    v9 = v8 | 2;
    goto LABEL_10;
  }

  result = _dispatch_calloc_typed(1uLL, 0x38uLL, 0x10A00404B3B3801uLL);
  *(a1 + 200) = result;
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  result[2] = a2;
  v8 = *result | 1;
  if (a3)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = v8 & 0xFFFFFFFD;
LABEL_10:
  *result = v9;
  return result;
}

uint64_t dispatch_workloop_set_uses_bound_thread(uint64_t a1)
{
  if (_dispatch_workloop_bound_thread_pred != -1)
  {
    dispatch_workloop_set_uses_bound_thread_cold_1();
  }

  if (_dispatch_thread_bound_kqwl_enabled != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 56);
  if ((~v2 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v2);
  }

  v3 = *(a1 + 200);
  if (!v3)
  {
    v3 = _dispatch_calloc_typed(1uLL, 0x38uLL, 0x10A00404B3B3801uLL);
    *(a1 + 200) = v3;
  }

  v4 = 0;
  *v3 |= 0x40u;
  return v4;
}

void dispatch_workloop_set_os_workgroup(dispatch_workloop_t workloop, os_workgroup_t workgroup)
{
  isa = workloop[7].isa;
  if ((~isa & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(isa);
  }

  v5 = workloop[25].isa;
  if (!v5)
  {
    v5 = _dispatch_calloc_typed(1uLL, 0x38uLL, 0x10A00404B3B3801uLL);
    workloop[25].isa = v5;
  }

  v6 = *(v5 + 4);
  if (v6)
  {
    _os_object_release(v6, workgroup);
  }

  _os_object_retain(workgroup);
  *(workloop[25].isa + 4) = workgroup;
}

_BYTE *dispatch_workloop_set_cpupercent(uint64_t a1, char a2, int a3)
{
  v4 = *(a1 + 56);
  if ((~v4 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v4);
  }

  result = *(a1 + 200);
  if (!result)
  {
    result = _dispatch_calloc_typed(1uLL, 0x38uLL, 0x10A00404B3B3801uLL);
    *(a1 + 200) = result;
  }

  v8 = *result;
  if ((*result & 9) == 0)
  {
    dispatch_workloop_set_cpupercent_cold_2();
  }

  result[20] = a2;
  *(result + 6) = a3;
  *result = v8 | 4;
  return result;
}

__n128 _dispatch_workloop_set_observer_hooks_4IOHID(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 56);
  if ((~v3 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v3);
  }

  v5 = *(a1 + 200);
  if (!v5)
  {
    v5 = _dispatch_calloc_typed(1uLL, 0x38uLL, 0x10A00404B3B3801uLL);
    *(a1 + 200) = v5;
  }

  result = *a2;
  *(v5 + 40) = *a2;
  **(a1 + 200) |= 0x20u;
  return result;
}

void _dispatch_workloop_dispose(void *obj, char *a2)
{
  v3 = obj[7];
  if (v3 != 0x1FFE2000000000)
  {
    _dispatch_workloop_dispose_cold_1(v3);
  }

  for (i = 0; i != 6; ++i)
  {
    v6 = &obj[i];
    v7 = obj[i + 19];
    if (v7)
    {
      _dispatch_workloop_dispose_cold_2(v7);
    }

    *(v6 + 19) = 512;
    *(v6 + 13) = 512;
  }

  v8 = obj[6];
  if (v8)
  {
    free(v8);
    obj[6] = 0;
  }

  v9 = obj[25];
  if (v9)
  {
    if ((*v9 & 0x10) != 0)
    {
      v10 = _pthread_workloop_destroy();
      if (v10)
      {
        _dispatch_bug(4623, v10);
      }
    }

    v11 = obj[25];
    if (v11)
    {
      if (v11[4])
      {
        _os_object_release(v11[4], a2);
        v11 = obj[25];
      }

      free(v11);
    }
  }

  _dispatch_queue_dispose(obj, a2);
}

uint64_t _dispatch_workloop_activate(uint64_t result)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = (result + 56);
  if ((~atomic_fetch_and_explicit((result + 56), 0xFEFFFFFFFFFFFFFFLL, memory_order_relaxed) & 0x180000000000000) == 0)
  {
    v2 = result;
    v3 = (result + 200);
    v4 = *(result + 200);
    if (!v4)
    {
LABEL_21:
      result = _dispatch_workloop_activate_cold_4(v2, v1);
      goto LABEL_22;
    }

    memset(&v14, 0, sizeof(v14));
    pthread_attr_init(&v14);
    v5 = *v4;
    if ((*v4 & 8) != 0)
    {
      *(v2 + 84) |= v4[1] | 0x40000000;
    }

    if (v5)
    {
      pthread_attr_setschedparam(&v14, v4 + 1);
      *(v2 + 24) = &_dispatch_custom_workloop_root_queue;
    }

    v6 = *(v4 + 4);
    if (v6)
    {
      *(v2 + 24) = &_dispatch_custom_workloop_root_queue;
      if (_os_workgroup_get_backing_workinterval(v6))
      {
        pthread_attr_setworkinterval_np();
      }
    }

    v7 = *v4;
    if ((*v4 & 0x40) != 0)
    {
      if (_dispatch_root_queues_pred != -1)
      {
        _dispatch_workloop_activate_cold_1();
      }

      *(v2 + 24) = &_dispatch_custom_workloop_overcommit_root_queue;
      v7 = *v4;
      if ((*v4 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_17;
    }

    pthread_attr_setschedpolicy(&v14, v4[4]);
    v7 = *v4;
LABEL_17:
    if ((v7 & 4) != 0)
    {
      v8 = *(v4 + 20);
      v9 = v4[6];
      pthread_attr_setcpupercent_np();
    }

    v10 = *v3;
    if (*v3)
    {
      if ((v10->sched_priority & 0x47) != 0 || (v12 = v10[4]) != 0 && _os_workgroup_get_backing_workinterval(v12))
      {
        v13 = _pthread_workloop_create();
        if (v13 <= 44)
        {
          if (v13)
          {
            if (v13 == 33)
            {
              _dispatch_workloop_activate_cold_2(v2);
            }
          }

          else
          {
            *v4 |= 0x10u;
          }
        }

        else if (v13 == 45)
        {
          _dispatch_workloop_activate_cold_3(v3, v2);
        }

        else if (v13 == 78)
        {
          _dispatch_workloop_activate_simulator_fallback(v2, &v14.__sig);
        }
      }
    }

    pthread_attr_destroy(&v14);
    goto LABEL_21;
  }

LABEL_22:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _dispatch_workloop_wakeup(atomic_ullong *a1, uint64_t a2, char a3)
{
  if ((a3 & 4) == 0)
  {
    if ((a3 & 1) == 0)
    {
      _dispatch_workloop_wakeup_cold_4(a3);
    }

    if ((a3 & 8) == 0)
    {
      v4 = a1[7];
      v5 = a2 << 32;
      do
      {
        v6 = v4;
        v7 = v4 & 0x700000000;
        v8 = v6 & 0xFFFFFFF8FFFFFFFFLL | v5;
        if (v6 & 0x1000000000 | v5 & 0x1000000000)
        {
          v8 |= 0x800000000uLL;
        }

        if (v7 < v5)
        {
          v9 = v8;
        }

        else
        {
          v9 = v6;
        }

        v10 = v9 | ((v9 & 0x700000000) != 0);
        if ((a3 & 2) != 0)
        {
          v10 |= 0x8000000000uLL;
        }

        else if (v10 == v6)
        {
          goto LABEL_27;
        }

        v4 = v6;
        atomic_compare_exchange_strong_explicit(a1 + 7, &v4, v10, memory_order_release, memory_order_relaxed);
      }

      while (v4 != v6);
      if (v6 >> 55)
      {
        _dispatch_workloop_wakeup_cold_3(v6);
      }

      v11 = v10 ^ v6;
      if (v11)
      {
        if ((v10 & 0x2000000000) == 0)
        {
          return _dispatch_workloop_wakeup_cold_1(a1, v10);
        }

        return _dispatch_event_loop_poke(a1, v10, 1);
      }

      result = _dispatch_workloop_wakeup_cold_2(v11, v10, a1, a3);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

LABEL_27:

    return _os_object_release_internal_n(a1, 2);
  }

  return _dispatch_workloop_barrier_complete(a1, a2, a3);
}

void *_dispatch_workloop_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if ((a3 & 3) == 0)
  {
    *(a1 + 16) = -1985229329;
  }

  if ((a3 & 2) != 0)
  {
    v5 = a3 & 0x40000;
    v6 = 0x40020000000001;
  }

  else
  {
    v83 = (*(a1 + 80) << 41) - 0x20000000000;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v86 = *(StatusReg + 24);
    v85 = (StatusReg + 24);
    v87 = v86 & 0xFFFFFFFC;
    v5 = a3 & 0x40000;
    if ((a3 & 0x40000) != 0)
    {
      v88 = 0x4000000000;
    }

    else
    {
      v88 = 1;
    }

    v89 = a3;
    if ((a3 & 0x40001) == 0x40000)
    {
      v90 = 0xFFE00000FFFFFFFCLL;
    }

    else
    {
      v90 = 0xFFE00040FFFFFFFCLL;
    }

    v91 = v85[44];
    v92 = (v91 >> 8) & 0xF;
    v93 = v91 >> 12;
    v94 = HIWORD(v91) & 0xF;
    if (v92 <= v93)
    {
      v92 = v93;
    }

    if (v92 > v94)
    {
      v94 = v92;
    }

LABEL_222:
    for (i = *(a1 + 56); ; i = v100)
    {
      while ((i & v90) != 0)
      {
        if (v89)
        {
          return _os_object_release_internal_n(a1, 2);
        }

        v101 = i;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v101, i ^ v88, memory_order_acquire, memory_order_acquire);
        if (v101 == i)
        {
          return _os_object_release_internal_n(a1, 2);
        }

        i = v101;
      }

      if ((i & 0x1000000000) != 0)
      {
        v96 = HIDWORD(i) & 7;
        if (v96 > v94)
        {
          v111 = v83;
          _dispatch_workloop_invoke_cold_1(v85);
          v83 = v111;
          v94 = v96;
          goto LABEL_222;
        }
      }

      v97 = (i >> 40) & 1;
      if (!((v83 + i) >> 53))
      {
        LODWORD(v97) = 1;
      }

      v98 = v97 ? 0x60000000000000 : 0x20000000000000;
      v99 = i & 0x7700000001 | v87 | v98;
      v100 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v100, v99, memory_order_acquire, memory_order_acquire);
      if (v100 == i)
      {
        break;
      }
    }

    v102 = 0x60000000000000;
    if ((v89 & 1) == 0)
    {
      v102 = v88 | 0x60000000000000;
    }

    v103 = v99 & v102;
    v104 = i & 0x3FFE0000000000;
    v6 = v103 - v104;
    v3 = a2;
    if (v103 == v104)
    {
      return _os_object_release_internal_n(a1, 2);
    }

    a3 = v89;
  }

  if (!v5)
  {
    v7 = *(a1 + 84);
    v8 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = *(v8 + 200);
    if (v9)
    {
      v10 = v7 >> 12;
      v11 = v7 & 0xFFF;
      if ((v7 & 0xFFF) != 0)
      {
        if ((v9 & 0xFFFu) > v11)
        {
          v11 = v9 & 0xFFF;
        }

        if (v10 <= v11 >> 8)
        {
          v12 = 0x40000000;
        }

        else
        {
          v12 = 1140912128;
        }

        v13 = v12 & v7;
        v14 = v9 & 0x880F0000 | v11;
      }

      else
      {
        v15 = v9 | 0x40000000;
        if ((v9 & 0xFFF) == 0)
        {
          v15 = *(v8 + 200);
        }

        if (v10 <= ((v15 >> 8) & 0xF))
        {
          goto LABEL_20;
        }

        v14 = v15 & 0xFFFF0FFF;
        v13 = v7 & 0x400F000;
      }

      v15 = v14 | v13;
    }

    else
    {
      v15 = v7 & 0xFFF0FFFF;
    }

LABEL_20:
    *(v8 + 200) = v15;
    v106 = v9 & 0xFFF0FFFF;
    goto LABEL_21;
  }

  v106 = 0;
LABEL_21:
  v105 = a3;
  if ((*(a1 + 80) & 0x400000) != 0)
  {
    atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
  }

  if (((*(a1 + 80) << 8) & 0x3000000) != 0)
  {
    v16 = (*(a1 + 80) << 8) & 0x3000000 | a3 & 0xFCEDFFFF | 0x100000;
  }

  else
  {
    v16 = a3 & 0xFFEDFFFF | 0x100000;
  }

  v108 = a1 + 152;
  v17 = a1 + 104;
  v18 = v16 & 0x1000002;
  v110 = (v16 >> 21) & 1;
  v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v20 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_27:
  v107 = v6;
  if (v18 == 2)
  {
    _dispatch_last_resort_autorelease_pool_push(v3);
    v21 = *(a1 + 200);
    if (v21 && (*v21 & 0x20) != 0)
    {
      *(v20 + 192) = v21 + 40;
    }

    v112 = *(v19 + 160);
    *(v19 + 160) = a1;
    *(v19 + 168) = &v112;
LABEL_32:
    v22 = 6;
    while (1)
    {
      v23 = v22;
      if (!v22)
      {
        break;
      }

      --v22;
      if (*(v108 + 8 * (v23 - 1)))
      {
        v24 = v23;
        v25 = v23 << 32;
        v26 = *(a1 + 56);
        while (1)
        {
          if ((v26 & 0x700000000uLL) <= v25)
          {
            goto LABEL_41;
          }

          if ((v26 & 0x8000000000) != 0)
          {
            break;
          }

          v27 = v26;
          atomic_compare_exchange_strong_explicit((a1 + 56), &v27, v26 & 0xFFFFFF78FFFFFFFFLL | v25, memory_order_relaxed, memory_order_relaxed);
          v40 = v27 == v26;
          v26 = v27;
          if (v40)
          {
            _dispatch_workloop_invoke_cold_2(v19 + 232);
LABEL_41:
            *(a1 + 100) = v23;
            v28 = (v17 + 8 * v22);
            v29 = *v28;
            if (!*v28)
            {
              v29 = _dispatch_wait_for_enqueuer(v28);
            }

            v3 = a2;
            while (2)
            {
              if ((*v29 & 0xFFFFFFFFFFFFF001) == 1)
              {
                *(v3 + 16) = v24;
                *(v3 + 8) = v29;
                *(a1 + 100) = 0;
                *(v19 + 160) = v112;
                *(v19 + 192) = 0;
                v23 = *(a1 + 24);
                v6 = v107;
                goto LABEL_187;
              }

              v30 = v29[2];
              v31 = v24 - 1;
              *(v17 + 8 * v31) = v30;
              if (!v30)
              {
                v46 = *(v108 + 8 * v31);
                while (v29 == (v46 & 0xFFFFFFFFFFFFFFF8))
                {
                  v47 = v46;
                  atomic_compare_exchange_strong_explicit((v108 + 8 * v31), &v47, 0, memory_order_release, memory_order_relaxed);
                  v40 = v47 == v46;
                  v46 = v47;
                  if (v40)
                  {
                    goto LABEL_46;
                  }
                }

                v30 = v29[2];
                if (!v30)
                {
                  v30 = _dispatch_wait_for_enqueuer(v29 + 2);
                }

                *(v17 + 8 * v31) = v30;
              }

LABEL_46:
              if (*(v19 + 40))
              {
                _dispatch_return_to_kernel();
              }

              v32 = *(v19 + 192);
              if (v32)
              {
                (*v32)(a1);
              }

              v33 = *v29;
              if (*v29 >= 0x1000uLL)
              {
                v34 = *v29;
                if (*(v33 + 40) == 1)
                {
                  (*(v33 + 48))(v29, 0, v110);
                }

                else
                {
                  (*(v33 + 64))(v29, v3, v16 & 0xFEFD0000);
                }

                if (v32)
                {
LABEL_55:
                  v32[1](a1);
                }

LABEL_56:
                if (!v30)
                {
                  goto LABEL_32;
                }

                v24 = *(a1 + 100);
                v29 = v30;
                if ((*(a1 + 60) & 7u) > v24)
                {
                  goto LABEL_32;
                }

                continue;
              }

              break;
            }

            v35 = v29[3];
            if ((v33 & 4) != 0)
            {
              v29[3] = -1;
            }

            v36 = v29[1];
            if (v36 == -1)
            {
              v37 = 0;
            }

            else
            {
              v38 = *(v19 + 200);
              if (((v38 >> 8) & 0xF) != 0)
              {
                v39 = 1 << ((BYTE1(v38) & 0xFu) + 7);
              }

              else
              {
                v39 = 0;
              }

              v37 = v39 | *(v19 + 200);
              if ((v36 & 0xFFFFFF) != 0)
              {
                if ((v36 & 0xFFFFFFuLL) >= (v39 & 0xFFFFFF00))
                {
                  v40 = (v38 & 0x44000000) == 0 && (v29[1] & 0x10000000) == 0;
                  if (!v40)
                  {
                    v37 = v36 & 0xFFFFFF;
                  }
                }
              }

              else if (v38 >> 12)
              {
                v37 = (256 << ((v38 >> 12) - 1)) | 0xFF;
              }
            }

            v41 = v37 & 0x7FFFFFFF02FFFFFFLL;
            v42 = *(v19 + 32);
            if ((v42 & 0x1000000) != 0)
            {
              if (!v41)
              {
                v41 = v42 & 0xFFFFFFFFFEFFFFFFLL;
                goto LABEL_95;
              }

LABEL_104:
              _dispatch_set_priority_and_voucher_slow(v41, v35, v33 & 4 | 2);
            }

            else
            {
              if (v41 == (v42 & 0xFFFFFFFF76FFFFFFLL))
              {
                goto LABEL_75;
              }

LABEL_95:
              if (v41)
              {
                goto LABEL_104;
              }

LABEL_75:
              if (v35 != -1)
              {
                if (*(v19 + 224) != v35)
                {
                  v41 = 0;
                  goto LABEL_104;
                }

                if ((v33 & 4) != 0 && v35)
                {
                  if (atomic_fetch_add_explicit((v35 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
                  {
                    _dispatch_async_redirect_invoke_cold_1();
                  }

LABEL_82:
                  v44 = *(v19 + 176);
                  if (v44)
                  {
                    v45 = *(v44 + 8) + 1;
                  }

                  else
                  {
                    v45 = 1;
                  }

                  v3 = a2;
                  v43 = v29;
                  if (v45 <= _dispatch_continuation_cache_limit)
                  {
                    v43 = 0;
                    v29[2] = v44;
                    *(v29 + 2) = v45;
                    *(v19 + 176) = v29;
                  }

                  goto LABEL_87;
                }
              }
            }

            if ((v33 & 4) != 0)
            {
              goto LABEL_82;
            }

            v43 = 0;
            v3 = a2;
LABEL_87:
            _dispatch_workloop_invoke_cold_7(v29, v43, v33);
            if (v32)
            {
              goto LABEL_55;
            }

            goto LABEL_56;
          }
        }

        atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
        goto LABEL_32;
      }
    }

    v6 = v107 & 1 | 0x40020000000000;
    *(v19 + 160) = v112;
    *(v19 + 192) = 0;
    v3 = a2;
LABEL_187:
    v112 = *(v19 + 160);
    *(v19 + 160) = a1;
    *(v19 + 168) = &v112;
    _dispatch_last_resort_autorelease_pool_pop(v3);
    *(v19 + 160) = v112;
  }

  else
  {
    v48 = *(a1 + 200);
    if (v48 && (*v48 & 0x20) != 0)
    {
      *(v20 + 192) = v48 + 40;
    }

    v112 = *(v20 + 160);
    *(v20 + 160) = a1;
    *(v20 + 168) = &v112;
LABEL_110:
    v49 = 6;
    while (v49)
    {
      v50 = v49--;
      if (*(v108 + 8 * v49))
      {
        v51 = v50;
        v52 = v50 << 32;
        v53 = *(a1 + 56);
        while (1)
        {
          if ((v53 & 0x700000000uLL) <= v52)
          {
            goto LABEL_119;
          }

          if ((v53 & 0x8000000000) != 0)
          {
            break;
          }

          v54 = v53;
          atomic_compare_exchange_strong_explicit((a1 + 56), &v54, v53 & 0xFFFFFF78FFFFFFFFLL | v52, memory_order_relaxed, memory_order_relaxed);
          v40 = v54 == v53;
          v53 = v54;
          if (v40)
          {
            _dispatch_workloop_invoke_cold_2(v20 + 232);
LABEL_119:
            *(a1 + 100) = v50;
            v55 = (v17 + 8 * v49);
            v56 = *v55;
            if (!*v55)
            {
              v56 = _dispatch_wait_for_enqueuer(v55);
            }

            v3 = a2;
            while (2)
            {
              if ((*v56 & 0xFFFFFFFFFFFFF001) == 1)
              {
                *(v3 + 16) = v51;
                *(v3 + 8) = v56;
                *(a1 + 100) = 0;
                *(v20 + 160) = v112;
                *(v20 + 192) = 0;
                v23 = *(a1 + 24);
                v6 = v107;
                goto LABEL_189;
              }

              v57 = v56[2];
              v58 = v51 - 1;
              *(v17 + 8 * v58) = v57;
              if (!v57)
              {
                v72 = *(v108 + 8 * v58);
                while (v56 == (v72 & 0xFFFFFFFFFFFFFFF8))
                {
                  v73 = v72;
                  atomic_compare_exchange_strong_explicit((v108 + 8 * v58), &v73, 0, memory_order_release, memory_order_relaxed);
                  v40 = v73 == v72;
                  v72 = v73;
                  if (v40)
                  {
                    goto LABEL_124;
                  }
                }

                v57 = v56[2];
                if (!v57)
                {
                  v57 = _dispatch_wait_for_enqueuer(v56 + 2);
                }

                *(v17 + 8 * v58) = v57;
              }

LABEL_124:
              if (*(v20 + 40))
              {
                _dispatch_return_to_kernel();
              }

              v59 = *(v20 + 192);
              if (v59)
              {
                (*v59)(a1);
              }

              v60 = *v56;
              if (*v56 >= 0x1000uLL)
              {
                v61 = *v56;
                if (*(v60 + 40) == 1)
                {
                  (*(v60 + 48))(v56, 0, v110);
                }

                else
                {
                  (*(v60 + 64))(v56, v3, v16 & 0xFFFD0000);
                }

                if (v59)
                {
LABEL_133:
                  v59[1](a1);
                }

LABEL_134:
                if (!v57)
                {
                  goto LABEL_110;
                }

                v51 = *(a1 + 100);
                v56 = v57;
                if ((*(a1 + 60) & 7u) > v51)
                {
                  goto LABEL_110;
                }

                continue;
              }

              break;
            }

            if ((v16 & 0x1000000) != 0)
            {
              objc_autoreleasePoolPush();
              v60 = *v56;
            }

            v62 = v56[3];
            if ((v60 & 4) != 0)
            {
              v56[3] = -1;
            }

            v63 = v56[1];
            if (v63 == -1)
            {
              v64 = 0;
            }

            else
            {
              v65 = *(v20 + 200);
              if (((v65 >> 8) & 0xF) != 0)
              {
                v66 = 1 << ((BYTE1(v65) & 0xFu) + 7);
              }

              else
              {
                v66 = 0;
              }

              v64 = v66 | *(v20 + 200);
              if ((v63 & 0xFFFFFF) != 0)
              {
                if ((v63 & 0xFFFFFFuLL) >= (v66 & 0xFFFFFF00) && ((v65 & 0x44000000) != 0 || (v56[1] & 0x10000000) != 0))
                {
                  v64 = v63 & 0xFFFFFF;
                }
              }

              else if (v65 >> 12)
              {
                v64 = (256 << ((v65 >> 12) - 1)) | 0xFF;
              }
            }

            v68 = v64 & 0x7FFFFFFF02FFFFFFLL;
            v69 = *(v20 + 32);
            if ((v69 & 0x1000000) != 0)
            {
              if (!v68)
              {
                v68 = v69 & 0xFFFFFFFFFEFFFFFFLL;
                goto LABEL_175;
              }

LABEL_184:
              _dispatch_set_priority_and_voucher_slow(v68, v62, v60 & 4 | 2);
            }

            else
            {
              if (v68 == (v69 & 0xFFFFFFFF76FFFFFFLL))
              {
                goto LABEL_155;
              }

LABEL_175:
              if (v68)
              {
                goto LABEL_184;
              }

LABEL_155:
              if (v62 != -1)
              {
                if (*(v20 + 224) != v62)
                {
                  v68 = 0;
                  goto LABEL_184;
                }

                if ((v60 & 4) != 0 && v62)
                {
                  if (atomic_fetch_add_explicit((v62 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
                  {
                    _dispatch_async_redirect_invoke_cold_1();
                  }

LABEL_162:
                  v70 = *(v20 + 176);
                  if (v70)
                  {
                    v71 = *(v70 + 8) + 1;
                  }

                  else
                  {
                    v71 = 1;
                  }

                  v3 = a2;
                  if (v71 <= _dispatch_continuation_cache_limit)
                  {
                    v56[2] = v70;
                    *(v56 + 2) = v71;
                    *(v20 + 176) = v56;
                  }

                  goto LABEL_167;
                }
              }
            }

            if ((v60 & 4) != 0)
            {
              goto LABEL_162;
            }

            v3 = a2;
LABEL_167:
            _dispatch_workloop_invoke_cold_4();
            if (v59)
            {
              goto LABEL_133;
            }

            goto LABEL_134;
          }
        }

        atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
        goto LABEL_110;
      }
    }

    v23 = 0;
    v6 = v107 & 1 | 0x40020000000000;
    *(v20 + 160) = v112;
    *(v20 + 192) = 0;
    v3 = a2;
  }

LABEL_189:
  if ((v23 + 1) > 1)
  {
LABEL_206:
    if ((v16 & 0x40000) == 0)
    {
LABEL_207:
      v81 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      *(v81 + 200) = *(v81 + 200) & 0xF0000 | v106;
    }
  }

  else
  {
    v74 = *(a1 + 56);
    do
    {
      v75 = v74;
      v76 = v74 - v6;
      v77 = v76 & 0xFFFFFFF700000001;
      if (!(v75 >> 55))
      {
        if ((v75 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          v23 = *(v20 + 160);
          v18 = v16 & 0x1000002;
          if ((v105 & 1) != 0 || (*(*v23 + 40) & 0x10000) != 0)
          {
            goto LABEL_27;
          }

          goto LABEL_206;
        }

        if (v23)
        {
          v77 = v76 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v77 = v76 & 0xFFFFFFF000000001;
        }
      }

      v74 = v75;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v74, v77, memory_order_release, memory_order_relaxed);
    }

    while (v74 != v75);
    if ((~v75 & 0x1800000000) == 0)
    {
      v78 = HIDWORD(v75) & 7;
      v79 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v80 = *(v79 + 200);
      if ((HIWORD(v80) & 0xF) < v78)
      {
        v6 = 0;
        v23 = 0;
        *(v79 + 200) = v80 & 0xFFF0FFFF | (v78 << 16);
        goto LABEL_206;
      }
    }

    v6 = 0;
    v23 = 0;
    if ((v16 & 0x40000) == 0)
    {
      goto LABEL_207;
    }
  }

  if (v23)
  {
    return _dispatch_queue_invoke_finish(a1, v3, v23, v6);
  }

  return _os_object_release_internal_n(a1, 2);
}