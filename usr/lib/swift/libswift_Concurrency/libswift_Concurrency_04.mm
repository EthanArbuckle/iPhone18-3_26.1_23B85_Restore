uint64_t swift::AsyncTask::flagAsRunning(swift::AsyncTask *this)
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASP            X0, X1, X0, X1, [X8] }

  v25[0] = _X0;
  v25[1] = 0;
  if ((_X0 & 0x4000) != 0)
  {
    v17 = *(this + 20);
    swift::removeStatusRecord(this, v17, v25, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsRunning(void)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, &v24);
    swift::_swift_task_dealloc_specific(this, v17, v18, v19);
    *(this + 20) = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v21 = *(StatusReg + 832);
    v22 = *(this + 5);
    if (*(StatusReg + 224) != v22)
    {
      v22 = voucher_adopt();
    }

    *(this + 5) = -1;
    if (*(v21 + 48))
    {
      if (v22 + 1 >= 2)
      {
        os_release(v22);
      }
    }

    else
    {
      *(v21 + 40) = v22;
      *(v21 + 48) = 1;
    }

    return swift_task_enterThreadLocalContext();
  }

  else
  {
    _X4 = _X0 & 0xFFFFA3FF | 0x800;
    _X3 = 0;
    __asm { CASP            X2, X3, X4, X5, [X8] }

    if (_X2 != _X0)
    {
      do
      {
        _X0 = _X2 & 0xFFFFE3FF | 0x800;
        _X5 = 0;
        __asm { CASP            X4, X5, X0, X1, [X8] }

        _ZF = _X4 == _X2;
        LODWORD(_X0) = _X2;
        _X2 = _X4;
      }

      while (!_ZF);
    }

    swift::concurrency::trace::task_status_changed(this, _X0, (_X0 >> 8) & 1, 0, 1, 1, 0);
    v14 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = *(v14 + 832);
    v16 = *(this + 5);
    if (*(v14 + 224) != v16)
    {
      v16 = voucher_adopt();
    }

    *(this + 5) = -1;
    if (*(v15 + 48))
    {
      if (v16 + 1 >= 2)
      {
        os_release(v16);
      }
    }

    else
    {
      *(v15 + 40) = v16;
      *(v15 + 48) = 1;
    }

    return swift_task_enterThreadLocalContext();
  }
}

unint64_t swift::concurrency::trace::job_run_begin(uint64_t a1)
{
  v1 = 0;
  if (a1 && !*(a1 + 32))
  {
    if (qword_1ED42EA38 != -1)
    {
      v10 = a1;
      swift::runJobInEstablishedExecutorContext(a1);
      a1 = v10;
    }

    if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy == 1)
    {
      v2 = a1;
      inited = _os_trace_lazy_init_completed_4swift();
      a1 = v2;
      if (!inited)
      {
        return 0;
      }
    }

    if (swift::concurrency::trace::LogsToken != -1)
    {
      v11 = a1;
      swift::runJobInEstablishedExecutorContext();
      a1 = v11;
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v4 = a1;
      v5 = os_signpost_id_generate(swift::concurrency::trace::TaskLog);
      TaskId = swift::AsyncTask::getTaskId(v4);
      v1 = TaskId;
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = TaskId;
        v8 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v12 = 134217984;
          v13 = v7;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "job_run", "task=%lld", &v12, 0xCu);
        }

        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t swift::restoreTaskVoucher(swift *this, swift::AsyncTask *a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 832);
  result = *(v4 + 40);
  if (*(StatusReg + 224) != result)
  {
    result = voucher_adopt();
  }

  *(this + 5) = result;
  if (*(v4 + 48) == 1)
  {
    *(v4 + 48) = 0;
  }

  return result;
}

uint64_t swift::_swift_task_clearCurrent(swift *this)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  result = *(StatusReg + 824);
  *(StatusReg + 824) = 0;
  return result;
}

uint64_t swift::_swift_task_setCurrent(uint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 824);
  *(StatusReg + 824) = a1;
  return v2;
}

uint64_t _swift_getActiveExecutor()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 832);
  if (v0)
  {
    if (v0[1])
    {
      v1 = 1;
    }

    else
    {
      v1 = *v0 == 0;
    }

    if (v1)
    {
      return *v0;
    }

    else
    {
      return 0;
    }
  }

  else if (pthread_main_np())
  {
    return swift_getMainExecutor();
  }

  else
  {
    return 0;
  }
}

uint64_t _swift_getCurrentTaskExecutor()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 832);
  if (!v0)
  {
    return 0;
  }

  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

swift::AsyncTask *_swift_getPreferredTaskExecutor()
{
  result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 824);
  if (result)
  {
    return swift::AsyncTask::getPreferredTaskExecutor(result);
  }

  return result;
}

swift::AsyncTask *swift_task_getCurrentTaskName()
{
  result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 824);
  if (result)
  {
    return swift::AsyncTask::getTaskName(result);
  }

  return result;
}

uint64_t swift_bincompat_selectDefaultIsCurrentExecutorCheckingMode(void)
{
  if (swift_bincompat_useLegacyNonCrashingExecutorChecks())
  {
    v0 = 0;
  }

  else
  {
    v0 = 8;
  }

  IsCurrentExecutorLegacyModeOverride = concurrencyIsCurrentExecutorLegacyModeOverride();
  if (IsCurrentExecutorLegacyModeOverride)
  {
    v2 = IsCurrentExecutorLegacyModeOverride;
    if (*IsCurrentExecutorLegacyModeOverride)
    {
      if (!strcmp(IsCurrentExecutorLegacyModeOverride, "nocrash") || !strcmp(v2, "legacy"))
      {
        return 0;
      }

      else if (!strcmp(v2, "crash") || !strcmp(v2, "swift6"))
      {
        return 8;
      }
    }
  }

  return v0;
}

void swift_task_reportUnexpectedExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[0] = a5;
  v21[1] = a6;
  if (swift_task_reportUnexpectedExecutor::logLevelToken != -1)
  {
    swift_task_reportUnexpectedExecutor_cold_1();
  }

  if (unexpectedExecutorLogLevel)
  {
    v9 = unexpectedExecutorLogLevel != 1;
    isMainExecutor = swift::SerialExecutorRef::isMainExecutor(v21);
    v12 = "actor-isolated function";
    if (isMainExecutor)
    {
      v12 = "@MainActor function";
    }

    v13 = "the same actor";
    if (isMainExecutor)
    {
      v13 = "the main thread";
    }

    v20 = 0;
    v14 = "warning";
    if (v9)
    {
      v14 = "error";
    }

    swift_asprintf(&v20, v11, v14, v12, a2, a1, a4, v13);
    shouldReportFatalErrorsToDebugger = _swift_shouldReportFatalErrorsToDebugger();
    v16 = v20;
    if (shouldReportFatalErrorsToDebugger)
    {
      memset(&v18[2], 0, 48);
      v19 = 0;
      v18[0] = xmmword_1E6A17FE8;
      v18[1] = *&off_1E6A17FF8;
      MEMORY[0x1865D44A0](v9, v20, v18);
    }

    v17 = MEMORY[0x1E69E9848];
    fputs(v16, *MEMORY[0x1E69E9848]);
    fflush(*v17);
    asl_log(0, 0, 3, "%s", v16);
    free(v16);
    if (v9)
    {
      abort();
    }
  }
}

unint64_t checkUnexpectedExecutorLogLevel(void *a1)
{
  result = getenv("SWIFT_UNEXPECTED_EXECUTOR_LOG_LEVEL");
  if (result)
  {
    result = strtol(result, 0, 0);
    if (result <= 2)
    {
      v2 = result;
      result = swift_bincompat_selectDefaultIsCurrentExecutorCheckingMode();
      if ((result & 8) != 0)
      {
        v3 = 2;
      }

      else
      {
        v3 = v2;
      }

      unexpectedExecutorLogLevel = v3;
    }
  }

  return result;
}

void swift_asprintf(char **a1, const char *a2, ...)
{
  va_start(va, a2);
  v3 = vsnprintf(0, 0, "%s: data race detected: %s at %.*s:%d was not called on %s\n", va);
  *a1 = 0;
  if ((v3 & 0x80000000) == 0)
  {
    v4 = (v3 + 1);
    v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      if (vsnprintf(v5, v4, "%s: data race detected: %s at %.*s:%d was not called on %s\n", va) < 0)
      {
        free(v6);
      }

      else
      {
        *a1 = v6;
      }
    }
  }
}

{
  va_start(va, a2);
  v3 = vsnprintf(0, 0, "error: %sTaskGroup: detected pending task count overflow, in task group %p! Status: %s", va);
  *a1 = 0;
  if ((v3 & 0x80000000) == 0)
  {
    v4 = (v3 + 1);
    v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      if (vsnprintf(v5, v4, "error: %sTaskGroup: detected pending task count overflow, in task group %p! Status: %s", va) < 0)
      {
        free(v6);
      }

      else
      {
        *a1 = v6;
      }
    }
  }
}

{
  va_start(va, a2);
  v3 = vsnprintf(0, 0, "error: task-local: detected illegal task-local value binding at %.*s:%d.\nTask-local values must only be set in a structured-context, such as: around any (synchronous or asynchronous function invocation), around an 'async let' declaration, or around a 'with(Throwing)TaskGroup(...){ ... }' invocation. Notably, binding a task-local value is illegal *within the body* of a withTaskGroup invocation.\n\nThe following example is illegal:\n\n    await withTaskGroup(...) { group in \n        await <task-local>.withValue(1234) {\n            group.addTask { ... }\n        }\n    }\n\nAnd should be replaced by, either: setting the value for the entire group:\n\n    // bind task-local for all tasks spawned within the group\n    await <task-local>.withValue(1234) {\n        await withTaskGroup(...) { group in\n            group.addTask { ... }\n        }\n    }\n\nor, inside the specific task-group child task:\n\n    // bind-task-local for only specific child-task\n    await withTaskGroup(...) { group in\n        group.addTask {\n            await <task-local>.withValue(1234) {\n                ... \n            }\n        }\n\n        group.addTask { ... }\n    }\n", va);
  *a1 = 0;
  if ((v3 & 0x80000000) == 0)
  {
    v4 = (v3 + 1);
    v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      if (vsnprintf(v5, v4, "error: task-local: detected illegal task-local value binding at %.*s:%d.\nTask-local values must only be set in a structured-context, such as: around any (synchronous or asynchronous function invocation), around an 'async let' declaration, or around a 'with(Throwing)TaskGroup(...){ ... }' invocation. Notably, binding a task-local value is illegal *within the body* of a withTaskGroup invocation.\n\nThe following example is illegal:\n\n    await withTaskGroup(...) { group in \n        await <task-local>.withValue(1234) {\n            group.addTask { ... }\n        }\n    }\n\nAnd should be replaced by, either: setting the value for the entire group:\n\n    // bind task-local for all tasks spawned within the group\n    await <task-local>.withValue(1234) {\n        await withTaskGroup(...) { group in\n            group.addTask { ... }\n        }\n    }\n\nor, inside the specific task-group child task:\n\n    // bind-task-local for only specific child-task\n    await withTaskGroup(...) { group in\n        group.addTask {\n            await <task-local>.withValue(1234) {\n                ... \n            }\n        }\n\n        group.addTask { ... }\n    }\n", va) < 0)
      {
        free(v6);
      }

      else
      {
        *a1 = v6;
      }
    }
  }
}

void swift_defaultActor_initialize(const void *a1)
{
  _X2 = 0;
  *(a1 + 16) = 0;
  v2 = *(a1 + 4);
  do
  {
    _X7 = *(a1 + 5);
    __asm { CASP            X6, X7, X2, X3, [X8] }

    _ZF = _X6 == v2;
    v2 = _X6;
  }

  while (!_ZF);
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 4) = 0u;
  swift::concurrency::trace::actor_create(a1);
}

uint64_t swift_defaultActor_destroy(unint64_t **a1)
{
  v2 = swift_retainCount();
  if (v2 >= 2)
  {
    swift_defaultActor_destroy_cold_1(a1, v2);
  }

  _X0 = 0;
  _X1 = 0;
  __asm { CASPA           X0, X1, X0, X1, [X8] }

  return result;
}

void swift_defaultActor_enqueue(uint64_t a1, unsigned __int8 *ptr)
{
  v38 = *(a1 + 33);
  swift::concurrency::trace::actor_enqueue(ptr, a1);
  v4 = ptr;
  if (*ptr)
  {
    v5 = *ptr;
  }

  else
  {
    v5 = 0;
  }

  do
  {
    v6 = *(v5 + 64);
    if (v6)
    {
      v7 = *(v5 + 64);
      if (*(v6 + 3))
      {
        break;
      }
    }

    v8 = *(v5 + 8);
    if (!v8)
    {
      break;
    }

    v5 = *(v5 + 8);
  }

  while ((*(v8 + 32) & 2) != 0);
  _X22 = 0;
  _X23 = 0;
  v11 = 0;
  v37 = ptr[16];
  __asm { CASP            X22, X23, X22, X23, [X8] }

  v43 = v38 << 8;
  LODWORD(_X26) = _X22;
  v44 = ptr;
  while (1)
  {
    *(a1 + 16) = 0;
    if ((_X26 & 7) != 0)
    {
      if (BYTE1(_X26) >= v38)
      {
        v17 = _X26;
      }

      else
      {
        v17 = v43 | _X26 & 0xFFFF00FF | 0x10;
      }

      if ((_X26 & 7) == 1)
      {
        v18 = 0;
        v19 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v17 = v43 | _X26 & 0xFFFF00E8 | 1;
    }

    v19 = (v17 & 7) == 1;
    v18 = 1;
LABEL_17:
    v42 = _X26 & 7;
    v20 = BYTE1(v17);
    v21 = v17 & 7;
    _ZF = BYTE1(_X26) != BYTE1(v17) && v21 == 2;
    v23 = _ZF;
    if (v19 || v23)
    {
      PreferredTaskExecutor = 0;
      if (a1)
      {
        v25 = 0;
        if (!*(a1 + 32))
        {
          v40 = v11;
          PreferredTaskExecutor = swift::AsyncTask::getPreferredTaskExecutor(a1);
          v20 = BYTE1(v17);
          v11 = v40;
          v4 = v44;
          v25 = v26 & 0xFFFFFFFFFFFFFFF8;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      PreferredTaskExecutor = 0;
      v25 = 0;
    }

    v39 = v25;
    v41 = PreferredTaskExecutor;
    if (v21 == 1)
    {
      v27 = v18;
    }

    else
    {
      v27 = 0;
    }

    if (BYTE1(_X26) == v20)
    {
      v27 = 1;
    }

    if (((v27 | v11) & 1) == 0)
    {
      v28 = v20;

      v20 = v28;
      v4 = v44;
      v11 = 1;
    }

    v29 = _X22 & 0xFFFFFFFF00000000 | _X26;
    _X20 = v17;
    _X27 = 0;
    __asm { CASPL           X26, X27, X20, X21, [X8] }

    if (_X26 == v29)
    {
      break;
    }

    _X22 = _X26;
  }

  v32 = v11;
  v33 = a1;
  v34 = v20;
  swift::concurrency::trace::actor_state_changed(v4, v33, (0xFFFFFFFF03020100 >> (8 * v21)), v37, (v17 >> 4) & 1, v20);
  if (v42 == 1 || v21 != 1)
  {
LABEL_43:
    if ((v32 & 1) == 0)
    {
      return;
    }

    goto LABEL_44;
  }

  v35 = swift_slowAlloc();
  *v35 = swift::jobHeapMetadataPtr;
  v35[1] = 3;
  *(v35 + 8) = (v34 << 8) | 0xC1;
  *(v35 + 44) = 0;
  *(v35 + 36) = 0;
  *(v35 + 13) = 0;
  v35[5] = voucher_copy();
  v35[8] = v44;
  if (v41)
  {
    ObjectType = swift_getObjectType();
    _swift_task_enqueueOnTaskExecutor(v35, v41, ObjectType, v39);
    goto LABEL_43;
  }

  swift_task_enqueueGlobal(v35);
  if (v32)
  {
LABEL_44:
  }
}

void *swift_defaultActor_deallocate(void *result)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  if ((_X2 & 7) == 2)
  {
    v8 = HIDWORD(_X2);
    while (1)
    {
      _X4 = _X2 | 3;
      v10 = _X2 | (v8 << 32);
      _X3 = 0;
      __asm { CASP            X2, X3, X4, X5, [X8] }

      if (_X2 == v10)
      {
        break;
      }

      v8 = HIDWORD(_X2);
      if ((_X2 & 7) != 2)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = result;
    swift::concurrency::trace::actor_deallocate(result);
    v13 = *(*v12 + 48);
    v14 = *(*v12 + 52);

    return swift_deallocClassInstance();
  }

  return result;
}

void *swift_defaultActor_deallocateResilient(void *result)
{
  if (*result)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  while (1)
  {
    v3 = *(v2 + 64);
    if (v3)
    {
      v4 = *(v2 + 64);
      if (*(v3 + 3))
      {
        break;
      }
    }

    v5 = *(v2 + 8);
    if (v5)
    {
      v2 = *(v2 + 8);
      if ((*(v5 + 32) & 2) != 0)
      {
        continue;
      }
    }

    v6 = *(v1 + 48);
    v7 = *(v1 + 52);

    return MEMORY[0x1EEE6BDD0](result, v6, v7);
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  if ((_X2 & 7) == 2)
  {
    v15 = HIDWORD(_X2);
    while (1)
    {
      _X4 = _X2 | 3;
      v17 = _X2 | (v15 << 32);
      _X3 = 0;
      __asm { CASP            X2, X3, X4, X5, [X8] }

      if (_X2 == v17)
      {
        break;
      }

      v15 = HIDWORD(_X2);
      if ((_X2 & 7) != 2)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v19 = result;
    swift::concurrency::trace::actor_deallocate(result);
    v20 = *(*v19 + 48);
    v21 = *(*v19 + 52);

    return swift_deallocClassInstance();
  }

  return result;
}

void swift::swift_executor_escalate(unsigned __int8 *ptr, uint64_t a2, swift::AsyncTask *a3, unint64_t a4)
{
  if (ptr && !a2)
  {
    v5 = *ptr ? *ptr : 0;
    do
    {
      v6 = *(v5 + 64);
      if (v6)
      {
        v7 = *(v5 + 64);
        if (*(v6 + 3))
        {
          break;
        }
      }

      v8 = *(v5 + 8);
      if (!v8)
      {
        break;
      }

      v5 = *(v5 + 8);
    }

    while ((*(v8 + 32) & 2) != 0);
    _X26 = 0;
    v23 = ptr[16];
    _X27 = 0;
    __asm { CASP            X26, X27, X26, X27, [X8] }

    if ((_X26 & 7) != 0)
    {
      v16 = HIDWORD(_X26);
      v17 = a4 << 8;
      while (1)
      {
        v18 = BYTE1(_X26) >= a4 ? _X26 : v17 | _X26 & 0xFFFF00FF | 0x10;
        v19 = BYTE1(_X26) >= a4 ? v16 << 32 : 0;
        if (_X26 == v18)
        {
          break;
        }

        if ((v18 & 7) == 1 && a3 && !*(a3 + 32))
        {
          swift::AsyncTask::getPreferredTaskExecutor(a3);
        }

        _X2 = v19 | v18;
        _X1 = 0;
        __asm { CASP            X0, X1, X2, X3, [X8] }

        if (_X0 == (_X26 | (v16 << 32)))
        {
          swift::concurrency::trace::actor_state_changed(ptr, 0, (0xFFFFFFFF03020100 >> (8 * (v18 & 7u))), v23, (v18 >> 4) & 1, BYTE1(v18));
          if ((_X26 & 7) == 0)
          {
            return;
          }
        }

        else
        {
          v16 = HIDWORD(_X0);
          LODWORD(_X26) = _X0;
          if ((_X0 & 7) == 0)
          {
            return;
          }
        }
      }
    }
  }
}

void swift_task_enqueue(uint64_t a1, unsigned __int8 *ptr, uint64_t a3)
{
  if (swift_task_enqueue::Override == 1)
  {
    swift_task_enqueueImpl(a1, ptr, a3);
  }

  else if (swift_task_enqueue::Override)
  {
    swift_task_enqueue::Override(a1, ptr, a3, swift_task_enqueueImpl);
  }

  else
  {
    swift_task_enqueueSlow(a1, ptr, a3);
  }
}

void swift_task_enqueueImpl(uint64_t a1, unsigned __int8 *ptr, uint64_t a3)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (*MEMORY[0x1E69E7CF0])
  {
    (*MEMORY[0x1E69E7CF0])(a1);
  }

  if (ptr)
  {
    if (a3)
    {
      ObjectType = swift_getObjectType();

      _swift_task_enqueueOnExecutor(a1, ptr, ObjectType, a3 & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {

      swift_defaultActor_enqueue(a1, ptr);
    }
  }

  else if (*(a1 + 32) || (PreferredTaskExecutor = swift::AsyncTask::getPreferredTaskExecutor(a1)) == 0)
  {

    swift_task_enqueueGlobal(a1);
  }

  else
  {
    v9 = v8;
    v10 = PreferredTaskExecutor;
    v11 = swift_getObjectType();

    _swift_task_enqueueOnTaskExecutor(a1, v10, v11, v9 & 0xFFFFFFFFFFFFFFF8);
  }
}

void swift_task_enqueueSlow(swift *a1, unsigned __int8 *a2, uint64_t a3)
{
  Override_task_enqueue = swift::getOverride_task_enqueue(a1);
  if (Override_task_enqueue)
  {
    swift_task_enqueue::Override = Override_task_enqueue;

    (Override_task_enqueue)(a1, a2, a3, swift_task_enqueueImpl);
  }

  else
  {
    swift_task_enqueue::Override = 1;

    swift_task_enqueueImpl(a1, a2, a3);
  }
}

void swift_job_run(swift::AsyncTask *a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{
  if (swift_job_run::Override == 1)
  {
    swift_job_runImpl(a1, a2, a3);
  }

  else if (swift_job_run::Override)
  {
    swift_job_run::Override(a1, a2, a3, swift_job_runImpl);
  }

  else
  {
    swift_job_runSlow(a1, a2, a3);
  }
}

void swift_job_runImpl(swift::AsyncTask *a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{
  v15 = 1;
  LOBYTE(v16) = 0;
  v17 = 0;
  v3 = 0;
  if (a2)
  {
    v4 = 0;
    v15 = 0;
  }

  else if (a1)
  {
    v4 = 0;
    if (!*(a1 + 32))
    {
      v5 = a1;
      v6 = a3;
      PreferredTaskExecutor = swift::AsyncTask::getPreferredTaskExecutor(a1);
      a3 = v6;
      v3 = PreferredTaskExecutor;
      a1 = v5;
      v4 = v8;
      a2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = a2;
  v12 = a3;
  v13 = v3;
  v14 = v4;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v18 = *(StatusReg + 832);
  *(StatusReg + 832) = &v11;
  swift::runJobInEstablishedExecutorContext(a1);
  if (v17 == 1)
  {
    v10 = v16;
    if (*(StatusReg + 224) != v16)
    {
      v10 = voucher_adopt();
    }

    if (v10 + 1 >= 2)
    {
      os_release(v10);
    }

    if (v17 == 1)
    {
      v17 = 0;
    }
  }

  *(StatusReg + 832) = v18;
  if (v15 == 1 && v11 && !v12)
  {
  }
}

void swift_job_runSlow(swift *a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{
  Override_job_run = swift::getOverride_job_run(a1);
  if (Override_job_run)
  {
    swift_job_run::Override = Override_job_run;

    (Override_job_run)(a1, a2, a3, swift_job_runImpl);
  }

  else
  {
    swift_job_run::Override = 1;

    swift_job_runImpl(a1, a2, a3);
  }
}

void swift_job_run_on_task_executor(swift *a1, uint64_t a2, uint64_t a3)
{
  if (swift_job_run_on_task_executor::Override == 1)
  {
    if (swift_job_run_on_serial_and_task_executor::Override == 1)
    {
      swift_job_run_on_serial_and_task_executorImpl(a1, 0, 0, a2, a3);
    }

    else if (swift_job_run_on_serial_and_task_executor::Override)
    {
      swift_job_run_on_serial_and_task_executor::Override(a1, 0, 0, a2, a3, swift_job_run_on_serial_and_task_executorImpl);
    }

    else
    {
      swift_job_run_on_serial_and_task_executorSlow(a1, 0, 0, a2, a3);
    }
  }

  else if (swift_job_run_on_task_executor::Override)
  {
    swift_job_run_on_task_executor::Override(a1, a2, a3, swift_job_run_on_task_executorImpl);
  }

  else
  {
    swift_job_run_on_task_executorSlow(a1, a2, a3);
  }
}

void swift_job_run_on_task_executorImpl(swift *a1, uint64_t a2, uint64_t a3)
{
  if (swift_job_run_on_serial_and_task_executor::Override == 1)
  {
    swift_job_run_on_serial_and_task_executorImpl(a1, 0, 0, a2, a3);
  }

  else if (swift_job_run_on_serial_and_task_executor::Override)
  {
    swift_job_run_on_serial_and_task_executor::Override(a1, 0, 0, a2, a3, swift_job_run_on_serial_and_task_executorImpl);
  }

  else
  {
    swift_job_run_on_serial_and_task_executorSlow(a1, 0, 0, a2, a3);
  }
}

void swift_job_run_on_task_executorSlow(swift *a1, uint64_t a2, uint64_t a3)
{
  Override_job_run_on_task_executor = swift::getOverride_job_run_on_task_executor(a1);
  if (Override_job_run_on_task_executor)
  {
    swift_job_run_on_task_executor::Override = Override_job_run_on_task_executor;

    (Override_job_run_on_task_executor)(a1, a2, a3, swift_job_run_on_task_executorImpl);
  }

  else
  {
    swift_job_run_on_task_executor::Override = 1;
    v7 = swift_job_run_on_serial_and_task_executor::Override;
    if (swift_job_run_on_serial_and_task_executor::Override == 1)
    {

      swift_job_run_on_serial_and_task_executorImpl(a1, 0, 0, a2, a3);
    }

    else if (swift_job_run_on_serial_and_task_executor::Override)
    {

      v7(a1, 0, 0, a2, a3, swift_job_run_on_serial_and_task_executorImpl);
    }

    else
    {

      swift_job_run_on_serial_and_task_executorSlow(a1, 0, 0, a2, a3);
    }
  }
}

void swift_job_run_on_serial_and_task_executor(uint64_t a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_job_run_on_serial_and_task_executor::Override == 1)
  {
    swift_job_run_on_serial_and_task_executorImpl(a1, a2, a3, a4, a5);
  }

  else if (swift_job_run_on_serial_and_task_executor::Override)
  {
    swift_job_run_on_serial_and_task_executor::Override(a1, a2, a3, a4, a5, swift_job_run_on_serial_and_task_executorImpl);
  }

  else
  {
    swift_job_run_on_serial_and_task_executorSlow(a1, a2, a3, a4, a5);
  }
}

void swift_job_run_on_serial_and_task_executorImpl(uint64_t a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v12) = 0;
  v13 = 0;
  v11 = 0;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v14 = *(StatusReg + 832);
  *(StatusReg + 832) = &v7;
  swift::runJobInEstablishedExecutorContext(a1);
  if (v13 == 1)
  {
    v6 = v12;
    if (*(StatusReg + 224) != v12)
    {
      v6 = voucher_adopt();
    }

    if (v6 + 1 >= 2)
    {
      os_release(v6);
    }

    if (v13 == 1)
    {
      v13 = 0;
    }
  }

  *(StatusReg + 832) = v14;
  if (v11 == 1 && v7 && !v8)
  {
  }
}

void swift_job_run_on_serial_and_task_executorSlow(swift *a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Override_job_run_on_serial_and_task_executor = swift::getOverride_job_run_on_serial_and_task_executor(a1);
  if (Override_job_run_on_serial_and_task_executor)
  {
    swift_job_run_on_serial_and_task_executor::Override = Override_job_run_on_serial_and_task_executor;

    (Override_job_run_on_serial_and_task_executor)(a1, a2, a3, a4, a5, swift_job_run_on_serial_and_task_executorImpl);
  }

  else
  {
    swift_job_run_on_serial_and_task_executor::Override = 1;

    swift_job_run_on_serial_and_task_executorImpl(a1, a2, a3, a4, a5);
  }
}

uint64_t swift_task_getCurrentExecutor(swift *a1)
{
  if (swift_task_getCurrentExecutor::Override == 1)
  {
    v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 832);
    if (v1)
    {
      result = *v1;
      v3 = v1[1];
    }

    else
    {
      return 0;
    }
  }

  else if (swift_task_getCurrentExecutor::Override)
  {
    return swift_task_getCurrentExecutor::Override(swift_task_getCurrentExecutorImpl);
  }

  else
  {
    return swift_task_getCurrentExecutorSlow(a1);
  }

  return result;
}

uint64_t swift_task_getCurrentExecutorImpl(void)
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 832);
  if (!v0)
  {
    return 0;
  }

  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t swift_task_getCurrentExecutorSlow(swift *a1)
{
  CurrentExecutor = swift::getOverride_task_getCurrentExecutor(a1);
  if (CurrentExecutor)
  {
    swift_task_getCurrentExecutor::Override = CurrentExecutor;

    return (CurrentExecutor)(swift_task_getCurrentExecutorImpl);
  }

  else
  {
    swift_task_getCurrentExecutor::Override = 1;
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 832);
    if (v3)
    {
      result = *v3;
      v4 = v3[1];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t swift_task_isCurrentExecutor(swift *a1, uint64_t a2)
{
  v3 = swift_task_isCurrentExecutor::Override;
  if (swift_task_isCurrentExecutor::Override == 1)
  {
    if (qword_1ED42EA48 != -1)
    {
      v7 = a2;
      v8 = a1;
      swift_task_isCurrentExecutor_cold_1(a1);
      a1 = v8;
      a2 = v7;
    }

    v4 = _MergedGlobals;
    v5 = swift_task_isCurrentExecutorWithFlags::Override;
    if (swift_task_isCurrentExecutorWithFlags::Override == 1)
    {

      return swift_task_isCurrentExecutorWithFlagsImpl(a1, a2, v4);
    }

    else if (swift_task_isCurrentExecutorWithFlags::Override)
    {

      return v5(a1, a2, v4, swift_task_isCurrentExecutorWithFlagsImpl);
    }

    else
    {

      return swift_task_isCurrentExecutorWithFlagsSlow(a1, a2, v4);
    }
  }

  else if (swift_task_isCurrentExecutor::Override)
  {

    return v3(a1, a2, swift_task_isCurrentExecutorImpl);
  }

  else
  {

    return swift_task_isCurrentExecutorSlow(a1, a2);
  }
}

uint64_t swift_task_isCurrentExecutorImpl(swift *a1, uint64_t a2)
{
  if (qword_1ED42EA48 != -1)
  {
    v6 = a2;
    v7 = a1;
    swift_task_isCurrentExecutor_cold_1(a1);
    a1 = v7;
    a2 = v6;
  }

  v3 = _MergedGlobals;
  v4 = swift_task_isCurrentExecutorWithFlags::Override;
  if (swift_task_isCurrentExecutorWithFlags::Override == 1)
  {

    return swift_task_isCurrentExecutorWithFlagsImpl(a1, a2, v3);
  }

  else if (swift_task_isCurrentExecutorWithFlags::Override)
  {

    return v4(a1, a2, v3, swift_task_isCurrentExecutorWithFlagsImpl);
  }

  else
  {

    return swift_task_isCurrentExecutorWithFlagsSlow(a1, a2, v3);
  }
}

uint64_t swift_task_isCurrentExecutorSlow(swift *a1, uint64_t a2)
{
  isCurrentExecutor = swift::getOverride_task_isCurrentExecutor(a1);
  if (isCurrentExecutor)
  {
    swift_task_isCurrentExecutor::Override = isCurrentExecutor;

    return (isCurrentExecutor)(a1, a2, swift_task_isCurrentExecutorImpl);
  }

  else
  {
    swift_task_isCurrentExecutor::Override = 1;
    if (qword_1ED42EA48 != -1)
    {
      dispatch_once_f(&qword_1ED42EA48, &_MergedGlobals, swift_task_setDefaultExecutorCheckingFlags);
    }

    v6 = _MergedGlobals;
    v7 = swift_task_isCurrentExecutorWithFlags::Override;
    if (swift_task_isCurrentExecutorWithFlags::Override == 1)
    {

      return swift_task_isCurrentExecutorWithFlagsImpl(a1, a2, v6);
    }

    else if (swift_task_isCurrentExecutorWithFlags::Override)
    {

      return v7(a1, a2, v6, swift_task_isCurrentExecutorWithFlagsImpl);
    }

    else
    {

      return swift_task_isCurrentExecutorWithFlagsSlow(a1, a2, v6);
    }
  }
}

uint64_t swift_task_isCurrentExecutorWithFlags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_task_isCurrentExecutorWithFlags::Override == 1)
  {
    return swift_task_isCurrentExecutorWithFlagsImpl(a1, a2, a3);
  }

  if (swift_task_isCurrentExecutorWithFlags::Override)
  {
    return swift_task_isCurrentExecutorWithFlags::Override(a1, a2, a3, swift_task_isCurrentExecutorWithFlagsImpl);
  }

  return swift_task_isCurrentExecutorWithFlagsSlow(a1, a2, a3);
}

uint64_t swift_task_isCurrentExecutorWithFlagsImpl(uint64_t a1, uint64_t a2, char a3)
{
  v20 = a1;
  v21 = a2;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 832);
  if (!v4)
  {
    if (!swift::SerialExecutorRef::isMainExecutor(&v20) || !pthread_main_np())
    {
      isIsolatingCurrentContext = swift_task_isIsolatingCurrentContext(v20, v21);
      result = swift::getIsIsolatingCurrentContextDecisionFromInt(isIsolatingCurrentContext, v16, v17, v18);
      if (result == 1)
      {
        return result;
      }

      if (!result)
      {
        return 0;
      }

LABEL_24:
      if ((a3 & 8) == 0)
      {
        return 0;
      }

      swift_task_checkIsolated(v20, v21);
      return 1;
    }

    return 1;
  }

  v19 = *v4;
  if (v19 == a1 || swift::SerialExecutorRef::isMainExecutor(&v19) && (swift::SerialExecutorRef::isMainExecutor(&v20) & 1) != 0)
  {
    return 1;
  }

  if ((a3 & 8) != 0)
  {
LABEL_10:
    v6 = v20;
    if ((v21 & 7) != 1 || !v19 || !*(&v19 + 1) || !v20 || (v7 = swift_compareWitnessTables(), v6 = v20, (v7 & 1) == 0))
    {
LABEL_17:
      v11 = swift_task_isIsolatingCurrentContext(v6, v21);
      result = swift::getIsIsolatingCurrentContextDecisionFromInt(v11, v12, v13, v14);
      if (result == 1)
      {
        return result;
      }

      if (!result)
      {
        return 0;
      }

      goto LABEL_24;
    }

    v8 = v19;
    v9 = v20;
    ObjectType = swift_getObjectType();
    if ((_task_serialExecutor_isSameExclusiveExecutionContext(v8, v9, ObjectType, v21 & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
    {
      v6 = v20;
      goto LABEL_17;
    }

    return 1;
  }

  if (!swift::SerialExecutorRef::isMainExecutor(&v20) || (result = swift::SerialExecutorRef::isMainExecutor(&v19), result))
  {
    if (swift::SerialExecutorRef::isMainExecutor(&v20) & 1) == 0 && (swift::SerialExecutorRef::isMainExecutor(&v19))
    {
      return 0;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t swift_task_isCurrentExecutorWithFlagsSlow(swift *a1, uint64_t a2, uint64_t a3)
{
  isCurrentExecutorWithFlags = swift::getOverride_task_isCurrentExecutorWithFlags(a1);
  if (isCurrentExecutorWithFlags)
  {
    swift_task_isCurrentExecutorWithFlags::Override = isCurrentExecutorWithFlags;

    return (isCurrentExecutorWithFlags)(a1, a2, a3, swift_task_isCurrentExecutorWithFlagsImpl);
  }

  else
  {
    swift_task_isCurrentExecutorWithFlags::Override = 1;

    return swift_task_isCurrentExecutorWithFlagsImpl(a1, a2, a3);
  }
}

void swift_task_switch(void (*a1)(void), _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{
  if (swift_task_switch::Override == 1)
  {
    swift_task_switchImpl(a1, a2, a3);
  }

  else if (swift_task_switch::Override)
  {
    swift_task_switch::Override(a1, a2, a3, swift_task_switchImpl);
  }

  else
  {
    swift_task_switchSlow(a1, a2, a3);
  }
}

void swift_task_switchImpl(void (*a1)(void), _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{
  v32 = v3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = StatusReg[103];
  v8 = StatusReg[104];
  if (v8)
  {
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  PreferredTaskExecutor = swift::AsyncTask::getPreferredTaskExecutor(v7);
  if (v9 == a2 && PreferredTaskExecutor == v11)
  {
    v13 = a1;

LABEL_8:
    v13();
    return;
  }

  if (v3)
  {
    v14 = v3;
  }

  else
  {
    v14 = 0;
  }

  v7[8] = v14;
  v15 = v7 + 7;
  if (a1)
  {
    *v15 = a1;
    if (v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *v15 = 0;
    if (v11)
    {
      goto LABEL_31;
    }
  }

  if (v8 && *(v8 + 32) != 1)
  {
    goto LABEL_31;
  }

  if (v9)
  {
    if (v10)
    {
      goto LABEL_31;
    }
  }

  else if ((v10 & 7) == 2)
  {
    goto LABEL_31;
  }

  if (a2)
  {
    {
      goto LABEL_25;
    }

LABEL_31:
    StatusReg[103] = 0;

    swift::AsyncTask::flagAsAndEnqueueOnExecutor(v7, a2, a3);
    return;
  }

  if (PreferredTaskExecutor)
  {
    goto LABEL_31;
  }

LABEL_25:
  if (v9)
  {
  }

  if (v8)
  {
    *v8 = a2;
    *(v8 + 8) = a3;
    *(v8 + 16) = swift::AsyncTask::getPreferredTaskExecutor(v7);
    *(v8 + 24) = v16;
    v13 = v7[7];
    if (v7[8])
    {
      v17 = v7[8];
    }

    goto LABEL_8;
  }

  v28 = 1;
  LOBYTE(v29) = 0;
  v30 = 0;
  v24 = a2;
  v25 = a3;
  v26 = swift::AsyncTask::getPreferredTaskExecutor(v7);
  v27 = v18;
  v31 = StatusReg[104];
  StatusReg[104] = &v24;
  if (v7[8])
  {
    v19 = v7[8];
  }

  v7[7]();
  v20 = v24;
  v21 = v25;
  if (v30 == 1)
  {
    v22 = v29;
    if (StatusReg[28] != v29)
    {
      v22 = voucher_adopt();
    }

    if (v22 + 1 >= 2)
    {
      os_release(v22);
    }

    if (v30 == 1)
    {
      v30 = 0;
    }
  }

  StatusReg[104] = v31;
  if (v20 && !v21)
  {
  }
}

void swift_task_switchSlow(swift *a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{
  Override_task_switch = swift::getOverride_task_switch(a1);
  if (Override_task_switch)
  {
    swift_task_switch::Override = Override_task_switch;

    (Override_task_switch)(a1, a2, a3, swift_task_switchImpl);
  }

  else
  {
    swift_task_switch::Override = 1;

    swift_task_switchImpl(a1, a2, a3);
  }
}

void swift_task_deinitOnExecutor(swift *a1, void (*a2)(swift *), swift *a3, uint64_t a4, uint64_t a5)
{
  if (swift_task_deinitOnExecutor::Override == 1)
  {
    swift_task_deinitOnExecutorImpl(a1, a2, a3, a4);
  }

  else if (swift_task_deinitOnExecutor::Override)
  {
    swift_task_deinitOnExecutor::Override(a1, a2, a3, a4, a5, swift_task_deinitOnExecutorImpl);
  }

  else
  {
    swift_task_deinitOnExecutorSlow(a1, a2, a3, a4, a5);
  }
}

void swift_task_deinitOnExecutorImpl(swift *a1, void (*a2)(swift *), swift *a3, uint64_t a4)
{
  if (swift_task_isCurrentExecutorWithFlags::Override == 1)
  {
    if (swift_task_isCurrentExecutorWithFlagsImpl(a3, a4, 0))
    {
LABEL_3:
      swift::TaskLocal::StopLookupScope::StopLookupScope(v22);
      a2(a1);
      swift::TaskLocal::StopLookupScope::~StopLookupScope(v22, v9, v10, v11);
      return;
    }
  }

  else if (swift_task_isCurrentExecutorWithFlags::Override)
  {
    if (swift_task_isCurrentExecutorWithFlags::Override(a3, a4, 0, swift_task_isCurrentExecutorWithFlagsImpl))
    {
      goto LABEL_3;
    }
  }

  else if (swift_task_isCurrentExecutorWithFlagsSlow(a3, a4, 0))
  {
    goto LABEL_3;
  }

  {
    v23 = 1;
    LOBYTE(v24) = 0;
    v25 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22[0] = a3;
    memset(&v22[1], 0, 24);
    v26 = *(StatusReg + 832);
    *(StatusReg + 832) = v22;
    swift::TaskLocal::StopLookupScope::StopLookupScope(v21);
    a2(a1);
    swift::TaskLocal::StopLookupScope::~StopLookupScope(v21, v13, v14, v15);
    if (v25 == 1)
    {
      v16 = v24;
      if (*(StatusReg + 224) != v24)
      {
        v16 = voucher_adopt();
      }

      if (v16 + 1 >= 2)
      {
        os_release(v16);
      }

      if (v25 == 1)
      {
        v25 = 0;
      }
    }

    *(StatusReg + 832) = v26;
  }

  else
  {
    if (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 824))
    {
      v17 = swift_task_currentPriority();
    }

    else
    {
      v17 = qos_class_self();
    }

    v18 = swift_slowAlloc();
    *v18 = swift::jobHeapMetadataPtr;
    *(v18 + 8) = 3;
    *(v18 + 32) = (v17 << 8) | 0xC4;
    *(v18 + 44) = 0;
    *(v18 + 36) = 0;
    *(v18 + 52) = 0;
    *(v18 + 40) = voucher_copy();
    *(v18 + 64) = a1;
    if (a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = 0;
    }

    *(v18 + 72) = v19;
    v20 = swift_task_enqueue::Override;
    if (swift_task_enqueue::Override == 1)
    {

      swift_task_enqueueImpl(v18, a3, a4);
    }

    else if (swift_task_enqueue::Override)
    {

      v20(v18, a3, a4, swift_task_enqueueImpl);
    }

    else
    {

      swift_task_enqueueSlow(v18, a3, a4);
    }
  }
}

void swift_task_deinitOnExecutorSlow(swift *a1, void (*a2)(swift *), swift *a3, uint64_t a4, uint64_t a5)
{
  Override_task_deinitOnExecutor = swift::getOverride_task_deinitOnExecutor(a1);
  if (Override_task_deinitOnExecutor)
  {
    swift_task_deinitOnExecutor::Override = Override_task_deinitOnExecutor;

    (Override_task_deinitOnExecutor)(a1, a2, a3, a4, a5, swift_task_deinitOnExecutorImpl);
  }

  else
  {
    swift_task_deinitOnExecutor::Override = 1;

    swift_task_deinitOnExecutorImpl(a1, a2, a3, a4);
  }
}

void swift_task_immediate(swift *a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{
  if (swift_task_immediate::Override == 1)
  {
    swift_task_immediateImpl(a1, a2, a3);
  }

  else if (swift_task_immediate::Override)
  {
    swift_task_immediate::Override(a1, a2, a3, swift_task_immediateImpl);
  }

  else
  {
    swift_task_immediateSlow(a1, a2, a3);
  }
}

void swift_task_immediateImpl(swift *a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{

  v6 = a2;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 824);
  if (!v6)
  {
    *(StatusReg + 824) = a1;
    v9 = swift_job_run::Override;
    if (swift_job_run::Override == 1)
    {
      v10 = a1;
      v6 = 0;
      v11 = 2;
      goto LABEL_6;
    }

    if (!swift_job_run::Override)
    {
      swift_job_runSlow(a1, 0, 2);
      goto LABEL_7;
    }

    v12 = a1;
    v6 = 0;
    v13 = 2;
LABEL_12:
    v9(v12, v6, v13, swift_job_runImpl);
    goto LABEL_7;
  }

  *(StatusReg + 824) = 0;
  v9 = swift_job_run::Override;
  if (swift_job_run::Override != 1)
  {
    if (!swift_job_run::Override)
    {
      swift_job_runSlow(a1, v6, a3);
      goto LABEL_7;
    }

    v12 = a1;
    v13 = a3;
    goto LABEL_12;
  }

  v10 = a1;
  v11 = a3;
LABEL_6:
  swift_job_runImpl(v10, v6, v11);
LABEL_7:
  *(StatusReg + 824) = v8;
}

void swift_task_immediateSlow(swift *a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{
  Override_task_immediate = swift::getOverride_task_immediate(a1);
  if (Override_task_immediate)
  {
    swift_task_immediate::Override = Override_task_immediate;

    (Override_task_immediate)(a1, a2, a3, swift_task_immediateImpl);
  }

  else
  {
    swift_task_immediate::Override = 1;

    swift_task_immediateImpl(a1, a2, a3);
  }
}

uint64_t swift_distributedActor_remote_initialize(void *a1)
{
  v1 = a1;
  if ((*a1 - 2048) >= 0xFFFFFFFFFFFFF801)
  {
    v1 = a1[1];
  }

  v2 = *(v1 + 12);
  v3 = *(v1 + 26);
  v4 = swift_allocObject();
  bzero((v4 + 16), *(v1 + 12) - 16);
  while (1)
  {
    v5 = v1[8];
    if (v5)
    {
      v6 = v1[8];
      if (*(v5 + 3))
      {
        break;
      }
    }

    v7 = v1[1];
    if (v7)
    {
      v1 = v1[1];
      if ((*(v7 + 32) & 2) != 0)
      {
        continue;
      }
    }

    *(v4 + 16) = 1;
    goto LABEL_9;
  }

  _X0 = 0;
  *(v4 + 16) = 1;
  v10 = *(v4 + 32);
  do
  {
    _X5 = *(v4 + 40);
    __asm { CASP            X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v10;
    v10 = _X4;
  }

  while (!_ZF);
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 64) = 0u;
LABEL_9:
  swift::concurrency::trace::actor_create(v4);
  return v4;
}

uint64_t swift_distributed_actor_is_remote(uint64_t *a1)
{
  if (*a1)
  {
    v1 = *a1;
  }

  else
  {
    v1 = 0;
  }

  do
  {
    v2 = *(v1 + 64);
    if (v2)
    {
      v3 = *(v1 + 64);
      if (*(v2 + 3))
      {
        break;
      }
    }

    v4 = *(v1 + 8);
    if (!v4)
    {
      break;
    }

    v1 = *(v1 + 8);
  }

  while ((*(v4 + 32) & 2) != 0);
  return *(a1 + 16);
}

void swift::concurrency::trace::task_status_changed(swift::concurrency::trace *this, swift::AsyncTask *a2, int a3, int a4, int a5, int a6, int a7)
{
  v12 = a2;
  v13 = this;
  if (a6)
  {
    TaskId = swift::AsyncTask::getTaskId(this);
    this = MEMORY[0x1865D4740](TaskId);
  }

  if (qword_1ED42EA38 != -1)
  {
    swift::runJobInEstablishedExecutorContext(this);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v15 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, v13);
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v16 = v15;
        v17 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v18 = 134219520;
          v19 = swift::AsyncTask::getTaskId(v13);
          v20 = 2048;
          ResumeFunctionForLogging = swift::AsyncTask::getResumeFunctionForLogging(v13, a5);
          v22 = 1024;
          v23 = v12;
          v24 = 1024;
          v25 = a3;
          v26 = 1024;
          v27 = a4;
          v28 = 1024;
          v29 = a6;
          v30 = 1024;
          v31 = a7;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v17, OS_SIGNPOST_EVENT, v16, "task_status_changed", "task=%lld resumefn=%p maxPriority=%u, isCancelled=%{BOOL}d isEscalated=%{BOOL}d, isRunning=%{BOOL}d, isEnqueued=%{BOOL}d", &v18, 0x34u);
        }
      }
    }
  }
}

uint64_t swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::__invoke(BOOL *a1)
{
  getpid();
  result = csops();
  *a1 = result != 0;
  return result;
}

{
  getpid();
  result = csops();
  *a1 = result != 0;
  return result;
}

{
  getpid();
  result = csops();
  *a1 = result != 0;
  return result;
}

{
  getpid();
  result = csops();
  *a1 = result != 0;
  return result;
}

void swift::concurrency::trace::actor_create(const void *a1)
{
  if (qword_1ED42EA38 != -1)
  {
    swift::runJobInEstablishedExecutorContext(a1);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1 && os_signpost_enabled(swift::concurrency::trace::ActorLog))
    {
      swift_getObjectType();
      TypeName = swift_getTypeName();
      v4 = v3;
      v5 = os_signpost_id_make_with_pointer(swift::concurrency::trace::ActorLog, a1);
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = v5;
        v7 = swift::concurrency::trace::ActorLog;
        if (os_signpost_enabled(swift::concurrency::trace::ActorLog))
        {
          v8 = 134218498;
          v9 = a1;
          v10 = 1040;
          v11 = v4;
          v12 = 2080;
          v13 = TypeName;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v6, "actor_lifetime", "actor=%p typeName:%.*s", &v8, 0x1Cu);
        }
      }
    }
  }
}

uint64_t swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 > 0x7FF)
  {
    LODWORD(v1) = 0;
  }

  if (v1 > 514)
  {
    if (v1 == 515 || v1 == 516)
    {
      v2 = a1[1];
      if (v2)
      {
        return v2;
      }

      return 0;
    }
  }

  else
  {
    if ((v1 - 512) < 3)
    {
      v2 = a1[1];
      if (v2)
      {
        return v2;
      }

      return 0;
    }

    if (!v1)
    {
      if ((a1[4] & 2) != 0)
      {
        v2 = a1[8];
        if (v2)
        {
          return v2;
        }
      }

      return 0;
    }
  }

  return 0;
}

void swift::concurrency::trace::actor_enqueue(void *ptr, swift::AsyncTask *a2)
{
  if (a2 && !*(a2 + 32))
  {
    if (qword_1ED42EA38 != -1)
    {
      swift::runJobInEstablishedExecutorContext(ptr);
    }

    if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
    {
      if (swift::concurrency::trace::LogsToken != -1)
      {
        swift::runJobInEstablishedExecutorContext();
      }

      if (swift::concurrency::trace::TracingEnabled == 1)
      {
        v4 = os_signpost_id_make_with_pointer(swift::concurrency::trace::ActorLog, ptr);
        if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v5 = v4;
          v6 = swift::concurrency::trace::ActorLog;
          if (os_signpost_enabled(swift::concurrency::trace::ActorLog))
          {
            v7 = 134218240;
            v8 = ptr;
            v9 = 2048;
            TaskId = swift::AsyncTask::getTaskId(a2);
            _os_signpost_emit_with_name_impl(&dword_1815A3000, v6, OS_SIGNPOST_EVENT, v5, "actor_enqueue", "actor=%p task=%lld", &v7, 0x16u);
          }
        }
      }
    }
  }
}

void swift::concurrency::trace::actor_state_changed(void *ptr, uint64_t a2, int a3, int a4, int a5, int a6)
{
  if (qword_1ED42EA38 != -1)
  {
    swift::runJobInEstablishedExecutorContext(ptr);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v12 = os_signpost_id_make_with_pointer(swift::concurrency::trace::ActorLog, ptr);
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = v12;
        v14 = swift::concurrency::trace::ActorLog;
        if (os_signpost_enabled(swift::concurrency::trace::ActorLog))
        {
          v15 = 134219264;
          v16 = ptr;
          v17 = 1024;
          v18 = a2 != 0;
          v19 = 1024;
          v20 = a3;
          v21 = 1024;
          v22 = a4;
          v23 = 1024;
          v24 = a5;
          v25 = 1024;
          v26 = a6;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v14, OS_SIGNPOST_EVENT, v13, "actor_state_changed", "actor=%p needsPreprocessing=%d state=%u isDistributedRemote=%{BOOL}d isPriorityEscalated=%{BOOL}d, maxPriority=%u", &v15, 0x2Au);
        }
      }
    }
  }
}

void anonymous namespace::ProcessOutOfLineJob::process(uint64_t a1)
{
  v1 = *(a1 + 64);
  if ((*(a1 + 40) + 1) >= 2)
  {
    v2 = a1;
    os_release(*(a1 + 40));
    a1 = v2;
  }

  MEMORY[0x1865D4B40](a1, 80, 15);
  v31 = 1;
  LOBYTE(v32) = 0;
  v33 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v27 = v1;
  v28 = 0;
  PreferredTaskExecutor = 0;
  v30 = 0;
  v34 = *(StatusReg + 832);
  *(StatusReg + 832) = &v27;
  v4 = MEMORY[0x1E69E7CE8];
  while (1)
  {
    v5 = *(v1 + 8);
    if (v5)
    {
      break;
    }

    {
      goto LABEL_46;
    }

LABEL_36:
    if (*v1)
    {
      v14 = *v1;
    }

    else
    {
      v14 = 0;
    }

    do
    {
      v15 = *(v14 + 64);
      if (v15)
      {
        v16 = *(v14 + 64);
        if (*(v15 + 3))
        {
          break;
        }
      }

      v17 = *(v14 + 8);
      if (!v17)
      {
        break;
      }

      v14 = *(v14 + 8);
    }

    while ((*(v17 + 32) & 2) != 0);
    _X22 = 0;
    v19 = *(v1 + 16);
    _X23 = 0;
    __asm { CASP            X22, X23, X22, X23, [X8] }

    if (*v4)
    {
      (*v4)(v1);
    }
  }

  v6 = *(v5 + 33);
  if (v6 > 9)
  {
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  if (v6 > 0x11)
  {
    v7 = 2;
  }

  if (v6 > 0x15)
  {
    v7 = 1;
  }

  if (v6 <= 0x19)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v5 + 16);
  *(v1 + 8) = v9;
  if (!v9)
  {
    goto LABEL_31;
  }

  v10 = *(v9 + 33);
  if (v10 > 0x19)
  {
    if (!v8)
    {
      goto LABEL_32;
    }

LABEL_31:
    *(v1 + v8 + 9) = 0;
    goto LABEL_32;
  }

  if (v10 <= 0x15)
  {
    if (v10 > 9)
    {
      v11 = 3;
    }

    else
    {
      v11 = 4;
    }

    if (v10 <= 0x11)
    {
      v12 = v11;
    }

    else
    {
      v12 = 2;
    }

    if (v8 != v12)
    {
      goto LABEL_31;
    }
  }

  else if (v8 != 1)
  {
    goto LABEL_31;
  }

LABEL_32:
  swift::concurrency::trace::actor_dequeue(v1, v5);
  if (!*(v5 + 32))
  {
    PreferredTaskExecutor = swift::AsyncTask::getPreferredTaskExecutor(v5);
    v30 = v13;
  }

  swift::runJobInEstablishedExecutorContext(v5);
  v1 = v27;
  if (v27 && !v28)
  {
    goto LABEL_36;
  }

LABEL_46:
  if (v33 == 1)
  {
    v26 = v32;
    if (*(StatusReg + 224) != v32)
    {
      v26 = voucher_adopt();
    }

    if (v26 + 1 >= 2)
    {
      os_release(v26);
    }
  }

  *(StatusReg + 832) = v34;
}

uint64_t anonymous namespace::DefaultActorImpl::tryLock(_anonymous_namespace_::DefaultActorImpl *this, int a2)
{
  if (*this)
  {
    v4 = *this;
  }

  else
  {
    v4 = 0;
  }

  do
  {
    v5 = *(v4 + 64);
    if (v5)
    {
      v6 = *(v4 + 64);
      if (*(v5 + 3))
      {
        break;
      }
    }

    v7 = *(v4 + 8);
    if (!v7)
    {
      break;
    }

    v4 = *(v4 + 8);
  }

  while ((*(v7 + 32) & 2) != 0);
  _X22 = 0;
  _X23 = 0;
  v10 = *(this + 16);
  __asm { CASP            X22, X23, X22, X23, [X8] }

  _X0 = _X22;
  v17 = _X22;
  if (a2)
  {
LABEL_10:
    while (1)
    {
      _X24 = v17 & 0xFFFFFFE8 | 2;
      v19 = _X0 & 0xFFFFFFFF00000000 | v17;
      _X1 = 0;
      __asm { CASPA           X0, X1, X24, X25, [X9] }

      if (_X0 == v19)
      {
        break;
      }

      v17 = _X0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    if (*MEMORY[0x1E69E7CE8])
    {
      (*MEMORY[0x1E69E7CE8])(this);
    }

    swift::concurrency::trace::actor_state_changed(this, 0, 2, v10, 0, BYTE1(v17));
    if (a2)
    {
    }

    return 1;
  }

  else
  {
LABEL_9:
    if ((v17 & 7) - 1 >= 2)
    {
      goto LABEL_10;
    }

    return 0;
  }
}

uint64_t anonymous namespace::DefaultActorImpl::unlock(_anonymous_namespace_::DefaultActorImpl *this, int a2)
{
  if (*this)
  {
    v4 = *this;
  }

  else
  {
    v4 = 0;
  }

  do
  {
    v5 = *(v4 + 64);
    if (v5)
    {
      v6 = *(v4 + 64);
      if (*(v5 + 3))
      {
        break;
      }
    }

    v7 = *(v4 + 8);
    if (!v7)
    {
      break;
    }

    v4 = *(v4 + 8);
  }

  while ((*(v7 + 32) & 2) != 0);
  _X26 = 0;
  _X27 = 0;
  v10 = *(this + 16);
  __asm { CASP            X26, X27, X26, X27, [X8] }

  v16 = MEMORY[0x1E69E7CF0];
  if (*MEMORY[0x1E69E7CF0])
  {
    (*MEMORY[0x1E69E7CF0])(this);
  }

  if ((_X26 & 7) == 3)
  {
LABEL_17:
    swift::concurrency::trace::actor_deallocate(this);
    v21 = *(*this + 48);
    v22 = *(*this + 52);
    swift_deallocClassInstance();
  }

  else
  {
    while (1)
    {
      if (*(this + 8))
      {
        if (!a2)
        {
          return 0;
        }

        v17 = _X26 & 0xFFFFFFE8 | 1;
      }

      else
      {
        v17 = _X26 & 0xFFFF00E8;
      }

      v18 = _X26;
      _X22 = v17;
      _X27 = 0;
      __asm { CASPL           X26, X27, X22, X23, [X10] }

      if (_X26 == v18)
      {
        break;
      }

      if ((_X26 & 7) == 3)
      {
        goto LABEL_17;
      }
    }

    if (*v16)
    {
      (*v16)(this, 0);
    }

    v24 = v17 & 7;
    v25 = 255;
    if (v24 > 1)
    {
      if (v24 == 3)
      {
        v28 = 3;
      }

      else
      {
        v28 = 255;
      }

      if (v24 == 2)
      {
        v25 = 2;
      }

      else
      {
        v25 = v28;
      }
    }

    else if ((v17 & 7) != 0)
    {
      if (v24 == 1)
      {
        swift::concurrency::trace::actor_state_changed(this, 0, 1, v10, 0, BYTE1(v17));
        v26 = swift_slowAlloc();
        *v26 = swift::jobHeapMetadataPtr;
        *(v26 + 8) = 3;
        *(v26 + 32) = v17 & 0xFF00 | 0xC1;
        *(v26 + 44) = 0;
        *(v26 + 36) = 0;
        *(v26 + 52) = 0;
        v27 = v26;
        *(v26 + 40) = voucher_copy();
        v27[8] = this;
        swift_task_enqueueGlobal(v27);
        return 1;
      }
    }

    else
    {
      v25 = 0;
    }

    swift::concurrency::trace::actor_state_changed(this, 0, v25, v10, 0, BYTE1(v17));
  }

  return 1;
}

uint64_t anonymous namespace::DefaultActorImpl::handleUnprioritizedJobs(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    do
    {
      v3 = v2;
      v2 = a2;
      a2 = *(a2 + 16);
      *(v2 + 16) = v3;
    }

    while (a2);
    v4 = *(v2 + 33);
    if (v4 > 9)
    {
      LODWORD(v5) = 3;
    }

    else
    {
      LODWORD(v5) = 4;
    }

    if (v4 > 0x11)
    {
      LODWORD(v5) = 2;
    }

    if (v4 > 0x15)
    {
      LODWORD(v5) = 1;
    }

    if (v4 <= 0x19)
    {
      v5 = v5;
    }

    else
    {
      v5 = 0;
    }

    v6 = result + 72;
    while (1)
    {
      v7 = *(v2 + 16);
      v8 = v7 == 0;
      v9 = v2;
      if (v7)
      {
        break;
      }

      v10 = 0;
      v12 = 0x80000000;
      v9 = v2;
LABEL_32:
      v14 = v10;
      v10 = v9;
      if ((v5 & 0x80000000) != 0)
      {
LABEL_36:
        *(v10 + 16) = *(result + 64);
        *(result + 64) = v2;
        *(v6 + 8 * v5) = v10;
        v2 = v14;
        v5 = v12;
        if (v8)
        {
          return result;
        }
      }

      else
      {
LABEL_33:
        v15 = v5;
        while (1)
        {
          v16 = *(v6 + 8 * v15);
          v17 = v15;
          if (v16)
          {
            break;
          }

          --v15;
          if (v17 <= 0)
          {
            goto LABEL_36;
          }
        }

        *(v10 + 16) = *(v16 + 16);
        *(*(v6 + 8 * v15) + 16) = v2;
        v2 = v14;
        *(v6 + 8 * v5) = v10;
        v5 = v12;
        if (v8)
        {
          return result;
        }
      }
    }

    do
    {
      v10 = v7;
      v11 = *(v7 + 33);
      if (v11 <= 0x19)
      {
        if (v11 > 9)
        {
          v13 = 3;
        }

        else
        {
          v13 = 4;
        }

        if (v11 > 0x11)
        {
          v13 = 2;
        }

        if (v11 <= 0x15)
        {
          v12 = v13;
        }

        else
        {
          v12 = 1;
        }

        if (v12 != v5)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v12 = 0;
        if (v5)
        {
          goto LABEL_32;
        }
      }

      v7 = *(v10 + 16);
      v9 = v10;
    }

    while (v7);
    v14 = 0;
    v8 = 1;
    v12 = v5;
    goto LABEL_33;
  }

  return result;
}

void swift::concurrency::trace::actor_dequeue(void *ptr, swift::AsyncTask *a2)
{
  if (a2 && !*(a2 + 32))
  {
    v21 = v2;
    v22 = v3;
    if (qword_1ED42EA38 != -1)
    {
      v13 = ptr;
      v14 = a2;
      swift::runJobInEstablishedExecutorContext(ptr);
      a2 = v14;
      ptr = v13;
    }

    if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || (v4 = ptr, v5 = a2, inited = _os_trace_lazy_init_completed_4swift(), a2 = v5, v7 = inited, ptr = v4, v7))
    {
      if (swift::concurrency::trace::LogsToken != -1)
      {
        v15 = ptr;
        v16 = a2;
        swift::runJobInEstablishedExecutorContext();
        a2 = v16;
        ptr = v15;
      }

      if (swift::concurrency::trace::TracingEnabled == 1)
      {
        v8 = ptr;
        v9 = a2;
        v10 = os_signpost_id_make_with_pointer(swift::concurrency::trace::ActorLog, ptr);
        if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v11 = v10;
          v12 = swift::concurrency::trace::ActorLog;
          if (os_signpost_enabled(swift::concurrency::trace::ActorLog))
          {
            v17 = 134218240;
            v18 = v8;
            v19 = 2048;
            TaskId = swift::AsyncTask::getTaskId(v9);
            _os_signpost_emit_with_name_impl(&dword_1815A3000, v12, OS_SIGNPOST_EVENT, v11, "actor_dequeue", "actor=%p task=%lld", &v17, 0x16u);
          }
        }
      }
    }
  }
}

void swift::concurrency::trace::actor_note_job_queue(const void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_1ED42EA38 != -1)
  {
    swift::runJobInEstablishedExecutorContext(a1);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v6 = swift::concurrency::trace::ActorLog;
      if (os_signpost_enabled(swift::concurrency::trace::ActorLog))
      {
        if (a2)
        {
          v7 = a2;
          v8 = 0;
          do
          {
            if (!*(v7 + 32))
            {
              ++v8;
            }

            v7 = a3();
          }

          while (v7);
          v6 = swift::concurrency::trace::ActorLog;
        }

        else
        {
          v8 = 0;
        }

        v9 = os_signpost_id_make_with_pointer(v6, a1);
        if (v9 - 1 < 0xFFFFFFFFFFFFFFFELL)
        {
          v10 = v9;
          v11 = swift::concurrency::trace::ActorLog;
          if (os_signpost_enabled(swift::concurrency::trace::ActorLog))
          {
            v12 = 134218240;
            v13 = a1;
            v14 = 1024;
            v15 = v8;
            _os_signpost_emit_with_name_impl(&dword_1815A3000, v11, OS_SIGNPOST_EVENT, v10, "actor_job_queue", "actor=%p jobCount=%u", &v12, 0x12u);
          }
        }
      }
    }
  }
}

void swift::concurrency::trace::actor_deallocate(void *ptr)
{
  if (qword_1ED42EA38 != -1)
  {
    swift::runJobInEstablishedExecutorContext(ptr);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v2 = os_signpost_id_make_with_pointer(swift::concurrency::trace::ActorLog, ptr);
      if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v3 = v2;
        v4 = swift::concurrency::trace::ActorLog;
        if (os_signpost_enabled(swift::concurrency::trace::ActorLog))
        {
          v5 = 134217984;
          v6 = ptr;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v4, OS_SIGNPOST_EVENT, v3, "actor_deallocate", "actor=%p", &v5, 0xCu);
        }
      }
    }
  }
}

uint64_t swift_task_setDefaultExecutorCheckingFlags(void *a1)
{
  result = swift_bincompat_selectDefaultIsCurrentExecutorCheckingMode();
  if (result)
  {
    *a1 = result;
  }

  return result;
}

void swift::AsyncTask::flagAsAndEnqueueOnExecutor(swift *this, unsigned __int8 *a2, uint64_t a3)
{
  _X0 = 0;
  _X1 = 0;
  v24 = a2;
  v25 = a3;
  __asm { CASP            X0, X1, X0, X1, [X8] }

  v23[0] = _X0;
  v23[1] = 0;
  if ((_X0 & 0x4800) == 0x4000)
  {
    v12 = *(this + 20);
    v21[0] = &v22;
    v21[1] = &v24;
    v22 = v12;
    swift::updateStatusRecord(this, v12, __swift::__runtime::llvm::function_ref<void ()(void)>::callback_fn<swift::AsyncTask::flagAsAndEnqueueOnExecutor(swift::SerialExecutorRef)::{lambda(void)#1}>, v21, v23, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsAndEnqueueOnExecutor(swift::SerialExecutorRef)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, &v20);
  }

  else
  {
    v14 = swift::_swift_task_alloc_specific(this, 0x30);
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 32) = 4;
    *(v14 + 40) = this;
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    *(this + 20) = v14;
    swift::addStatusRecord(this, v14, v23, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsAndEnqueueOnExecutor(swift::SerialExecutorRef)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#2}>, v21);
    if ((BYTE1(v23[0]) & 8) != 0)
    {
      swift_task_exitThreadLocalContext();
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v16 = *(StatusReg + 832);
      v17 = *(v16 + 40);
      if (*(StatusReg + 224) != v17)
      {
        v17 = voucher_adopt();
      }

      *(this + 5) = v17;
      if (*(v16 + 48) == 1)
      {
        *(v16 + 48) = 0;
      }
    }
  }

  v18 = *(this + 8);
  v19 = LOBYTE(v23[0]);
  *(this + 33) = v23[0];
  swift::concurrency::trace::task_flags_changed(this, v19, HIBYTE(v18) & 1, (v18 >> 25) & 1, (v18 >> 26) & 1, (v18 >> 28) & 1);
  if (swift_task_enqueue::Override == 1)
  {
    swift_task_enqueueImpl(this, v24, v25);
  }

  else if (swift_task_enqueue::Override)
  {
    swift_task_enqueue::Override(this, v24, v25, swift_task_enqueueImpl);
  }

  else
  {
    swift_task_enqueueSlow(this, v24, v25);
  }
}

void swift::concurrency::trace::task_flags_changed(swift::concurrency::trace *this, swift::AsyncTask *a2, int a3, int a4, int a5, int a6)
{
  v10 = a2;
  if (qword_1ED42EA38 != -1)
  {
    swift::runJobInEstablishedExecutorContext(this);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v12 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, this);
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = v12;
        v14 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v15 = 134219264;
          TaskId = swift::AsyncTask::getTaskId(this);
          v17 = 1024;
          v18 = v10;
          v19 = 1024;
          v20 = a3;
          v21 = 1024;
          v22 = a4;
          v23 = 1024;
          v24 = a5;
          v25 = 1024;
          v26 = a6;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v14, OS_SIGNPOST_EVENT, v13, "task_flags_changed", "task=%lld jobPriority=%u isChildTask=%{BOOL}d, isFuture=%{BOOL}d isGroupChildTask=%{BOOL}d isAsyncLetTask=%{BOOL}d", &v15, 0x2Au);
        }
      }
    }
  }
}

__n128 __swift::__runtime::llvm::function_ref<void ()(void)>::callback_fn<swift::AsyncTask::flagAsAndEnqueueOnExecutor(swift::SerialExecutorRef)::{lambda(void)#1}>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = **a1;
  v2[2].n128_u32[0] = 4;
  result = *v1;
  v2[1] = *v1;
  return result;
}

uint64_t anonymous namespace::IsolatedDeinitJob::process(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (*(a1 + 72))
  {
    v4 = *(a1 + 72);
  }

  else
  {
    v4 = 0;
  }

  if ((*(a1 + 40) + 1) >= 2)
  {
    v2 = a1;
    os_release(*(a1 + 40));
    a1 = v2;
  }

  MEMORY[0x1865D4B40](a1, 80, 15);

  return v4(v1);
}

uint64_t _GLOBAL__sub_I_Actor_cpp()
{
  result = swift_bincompat_selectDefaultIsCurrentExecutorCheckingMode();
  if (result)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  unexpectedExecutorLogLevel = v1;
  return result;
}

uint64_t swift::asyncLet_addImpl(unint64_t this, swift::AsyncTask *a2, swift::AsyncLet *a3)
{
  *a2 = 1;
  *(a2 + 1) = 0;
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  *(a2 + 2) = this;
  *(a2 + 3) = v3 | this & 0xFFFFFFFFFFFFFFF3;
  v5 = &v6;
  v6 = this;
  return swift::addStatusRecordToSelf(a2, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::asyncLet_addImpl(swift::AsyncTask *,swift::AsyncLet *,BOOL)::$_0>, &v5);
}

uint64_t swift_asyncLet_start(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v6[1] = a2;
  v6[2] = a1;
  v6[0] = 2;
  return swift_task_create(0x1000uLL, v6, a3, a4, a5);
}

uint64_t swift_asyncLet_begin(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a1;
  v7[3] = a6;
  v7[0] = 3;
  v7[1] = a2;
  return swift_task_create(0x1000uLL, v7, a3, a4, a5);
}

uint64_t swift_asyncLet_wait(swift *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  if (swift_asyncLet_wait::Override == 1)
  {
    return swift_task_future_wait(a1, (*(a2 + 24) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  }

  if (swift_asyncLet_wait::Override)
  {
    return swift_asyncLet_wait::Override(a1, a2, a3, a4, swift_asyncLet_waitImpl);
  }

  return swift_asyncLet_waitSlow(a1, a2, a3, a4);
}

uint64_t swift_asyncLet_waitSlow(swift *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  Override_asyncLet_wait = swift::getOverride_asyncLet_wait(a1);
  if (Override_asyncLet_wait)
  {
    swift_asyncLet_wait::Override = Override_asyncLet_wait;

    return (Override_asyncLet_wait)(a1, a2, a3, a4, swift_asyncLet_waitImpl);
  }

  else
  {
    swift_asyncLet_wait::Override = 1;

    return swift_asyncLet_waitImpl(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_wait_throwing(swift *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (swift_asyncLet_wait_throwing::Override == 1)
  {
    return swift_task_future_wait_throwing(a1, (*(a2 + 24) & 0xFFFFFFFFFFFFFFF0), a3, v4);
  }

  if (swift_asyncLet_wait_throwing::Override)
  {
    return swift_asyncLet_wait_throwing::Override(a1, a2, a3, a4, swift_asyncLet_wait_throwingImpl);
  }

  return swift_asyncLet_wait_throwingSlow(a1, a2, a3, a4);
}

uint64_t swift_asyncLet_wait_throwingSlow(swift *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  Override_asyncLet_wait_throwing = swift::getOverride_asyncLet_wait_throwing(a1);
  if (Override_asyncLet_wait_throwing)
  {
    swift_asyncLet_wait_throwing::Override = Override_asyncLet_wait_throwing;

    return (Override_asyncLet_wait_throwing)(a1, a2, a3, a4, swift_asyncLet_wait_throwingImpl);
  }

  else
  {
    swift_asyncLet_wait_throwing::Override = 1;

    return swift_asyncLet_wait_throwingImpl(a1, a2, a3);
  }
}

void swift_asyncLet_end(swift *a1)
{
  v2 = swift_asyncLet_end::Override;
  if (swift_asyncLet_end::Override == 1)
  {
    v3 = *(a1 + 3);
    swift_task_cancel((v3 & 0xFFFFFFFFFFFFFFF0));
    swift::removeStatusRecordFromSelf(a1, 0, v5);
    Current = swift_task_getCurrent();

    swift::_swift_task_dealloc_specific(Current, (v3 & 0xFFFFFFFFFFFFFFF0), v7, v8);
  }

  else if (swift_asyncLet_end::Override)
  {

    v2(a1, swift_asyncLet_endImpl);
  }

  else
  {

    swift_asyncLet_endSlow(a1);
  }
}

void swift_asyncLet_endImpl(swift::AsyncLet *a1)
{
  v2 = *(a1 + 3);
  swift_task_cancel((v2 & 0xFFFFFFFFFFFFFFF0));
  swift::removeStatusRecordFromSelf(a1, 0, v3);
  Current = swift_task_getCurrent();

  swift::_swift_task_dealloc_specific(Current, (v2 & 0xFFFFFFFFFFFFFFF0), v5, v6);
}

void swift_asyncLet_endSlow(swift *a1)
{
  Override_asyncLet_end = swift::getOverride_asyncLet_end(a1);
  if (Override_asyncLet_end)
  {
    swift_asyncLet_end::Override = Override_asyncLet_end;

    (Override_asyncLet_end)(a1, swift_asyncLet_endImpl);
  }

  else
  {
    swift_asyncLet_end::Override = 1;
    v3 = *(a1 + 3);
    swift_task_cancel((v3 & 0xFFFFFFFFFFFFFFF0));
    swift::removeStatusRecordFromSelf(a1, 0, v4);
    Current = swift_task_getCurrent();

    swift::_swift_task_dealloc_specific(Current, (v3 & 0xFFFFFFFFFFFFFFF0), v6, v7);
  }
}

uint64_t swift_asyncLet_get(swift *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  if (swift_asyncLet_get::Override == 1)
  {
    v4 = *(a1 + 3);
    if ((v4 & 4) != 0)
    {
      return a3();
    }

    else
    {
      *(a1 + 3) = v4 | 4;
      return swift_task_future_wait(a2, (v4 & 0xFFFFFFFFFFFFFFF0), a3, a4);
    }
  }

  else if (swift_asyncLet_get::Override)
  {
    return swift_asyncLet_get::Override(a1, a2, a3, a4, swift_asyncLet_getImpl);
  }

  else
  {
    return swift_asyncLet_getSlow(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_getImpl(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v4 = *(a1 + 24);
  if ((v4 & 4) != 0)
  {
    return a3();
  }

  *(a1 + 24) = v4 | 4;
  return swift_task_future_wait(a2, (v4 & 0xFFFFFFFFFFFFFFF0), a3, a4);
}

uint64_t swift_asyncLet_getSlow(swift *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v8 = swift::getOverride_asyncLet_get(a1);
  if (v8)
  {
    swift_asyncLet_get::Override = v8;

    return (v8)(a1, a2, a3, a4, swift_asyncLet_getImpl);
  }

  else
  {
    swift_asyncLet_get::Override = 1;

    return swift_asyncLet_getImpl(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_get_throwing(swift *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  if (swift_asyncLet_get_throwing::Override == 1)
  {
    v5 = *(a1 + 3);
    if ((v5 & 4) != 0)
    {
      return a3();
    }

    v6 = (a4 + 1);
    if (a3)
    {
      *v6 = a3;
      if (v4)
      {
LABEL_5:
        v7 = v4;
LABEL_9:
        *a4 = v7;
        a4[2] = a1;
        return swift_task_future_wait_throwing(a2, (v5 & 0xFFFFFFFFFFFFFFF0), _asyncLet_get_throwing_continuation, a1 + 4);
      }
    }

    else
    {
      *v6 = 0;
      if (v4)
      {
        goto LABEL_5;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  if (swift_asyncLet_get_throwing::Override)
  {
    return swift_asyncLet_get_throwing::Override(a1, a2, a3, a4, swift_asyncLet_get_throwingImpl);
  }

  else
  {
    return swift_asyncLet_get_throwingSlow(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_get_throwingImpl(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v5 = *(a1 + 24);
  if ((v5 & 4) != 0)
  {
    return a3();
  }

  v6 = (a4 + 1);
  if (!a3)
  {
    *v6 = 0;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  *v6 = a3;
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = v4;
LABEL_8:
  *a4 = v7;
  a4[2] = a1;
  return swift_task_future_wait_throwing(a2, (v5 & 0xFFFFFFFFFFFFFFF0), _asyncLet_get_throwing_continuation, (a1 + 32));
}

uint64_t swift_asyncLet_get_throwingSlow(swift *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  throwing = swift::getOverride_asyncLet_get_throwing(a1);
  if (throwing)
  {
    swift_asyncLet_get_throwing::Override = throwing;

    return (throwing)(a1, a2, a3, a4, swift_asyncLet_get_throwingImpl);
  }

  else
  {
    swift_asyncLet_get_throwing::Override = 1;

    return swift_asyncLet_get_throwingImpl(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_consume(swift *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  if (swift_asyncLet_consume::Override == 1)
  {
    v5 = *(a1 + 3);
    if ((v5 & 4) != 0)
    {
      return asyncLet_finish_after_task_completion(a1, a3, a3);
    }

    else
    {
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = 0;
      }

      *a4 = v6;
      if (a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = 0;
      }

      a4[1] = v8;
      a4[2] = a1;
      return swift_task_future_wait(a2, (v5 & 0xFFFFFFFFFFFFFFF0), _asyncLet_consume_continuation, a1 + 4);
    }
  }

  else if (swift_asyncLet_consume::Override)
  {
    return swift_asyncLet_consume::Override(a1, a2, a3, a4, swift_asyncLet_consumeImpl);
  }

  else
  {
    return swift_asyncLet_consumeSlow(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_consumeImpl(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v5 = *(a1 + 24);
  if ((v5 & 4) != 0)
  {
    return asyncLet_finish_after_task_completion(a1, a3, a3);
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  *a4 = v6;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  a4[1] = v8;
  a4[2] = a1;
  return swift_task_future_wait(a2, (v5 & 0xFFFFFFFFFFFFFFF0), _asyncLet_consume_continuation, (a1 + 32));
}

uint64_t swift_asyncLet_consumeSlow(swift *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  Override_asyncLet_consume = swift::getOverride_asyncLet_consume(a1);
  if (Override_asyncLet_consume)
  {
    swift_asyncLet_consume::Override = Override_asyncLet_consume;

    return (Override_asyncLet_consume)(a1, a2, a3, a4, swift_asyncLet_consumeImpl);
  }

  else
  {
    swift_asyncLet_consume::Override = 1;

    return swift_asyncLet_consumeImpl(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_consume_throwing(swift *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  if (swift_asyncLet_consume_throwing::Override == 1)
  {
    v5 = *(a1 + 3);
    if ((v5 & 4) != 0)
    {
      return asyncLet_finish_after_task_completion(a1, a3, a3);
    }

    v6 = (a4 + 1);
    if (a3)
    {
      *v6 = a3;
      if (v4)
      {
LABEL_5:
        v7 = v4;
LABEL_9:
        *a4 = v7;
        a4[2] = a1;
        return swift_task_future_wait_throwing(a2, (v5 & 0xFFFFFFFFFFFFFFF0), _asyncLet_consume_throwing_continuation, a1 + 4);
      }
    }

    else
    {
      *v6 = 0;
      if (v4)
      {
        goto LABEL_5;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  if (swift_asyncLet_consume_throwing::Override)
  {
    return swift_asyncLet_consume_throwing::Override(a1, a2, a3, a4, swift_asyncLet_consume_throwingImpl);
  }

  else
  {
    return swift_asyncLet_consume_throwingSlow(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_consume_throwingImpl(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v5 = *(a1 + 24);
  if ((v5 & 4) != 0)
  {
    return asyncLet_finish_after_task_completion(a1, a3, a3);
  }

  v6 = (a4 + 1);
  if (!a3)
  {
    *v6 = 0;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  *v6 = a3;
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = v4;
LABEL_8:
  *a4 = v7;
  a4[2] = a1;
  return swift_task_future_wait_throwing(a2, (v5 & 0xFFFFFFFFFFFFFFF0), _asyncLet_consume_throwing_continuation, (a1 + 32));
}

uint64_t swift_asyncLet_consume_throwingSlow(swift *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  Override_asyncLet_consume_throwing = swift::getOverride_asyncLet_consume_throwing(a1);
  if (Override_asyncLet_consume_throwing)
  {
    swift_asyncLet_consume_throwing::Override = Override_asyncLet_consume_throwing;

    return (Override_asyncLet_consume_throwing)(a1, a2, a3, a4, swift_asyncLet_consume_throwingImpl);
  }

  else
  {
    swift_asyncLet_consume_throwing::Override = 1;

    return swift_asyncLet_consume_throwingImpl(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_finish(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  if (swift_asyncLet_finish::Override == 1)
  {
    return swift_asyncLet_finishImpl(a1, a2, a3, a4);
  }

  if (swift_asyncLet_finish::Override)
  {
    return swift_asyncLet_finish::Override(a1, a2, a3, a4, swift_asyncLet_finishImpl);
  }

  return swift_asyncLet_finishSlow(a1, a2, a3, a4);
}

uint64_t swift_asyncLet_finishImpl(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v8 = *(a1 + 24);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF0);
  if ((v8 & 4) != 0)
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFFF0) + 0x20);
    v13 = 192;
    if ((v12 & 0x1000000) == 0)
    {
      v13 = 176;
    }

    (*(*(*(v9 + v13 + ((v12 >> 23) & 8) + 8) - 8) + 8))(a2);

    return asyncLet_finish_after_task_completion(a1, a3, v14);
  }

  else
  {
    swift_task_cancel(v9);
    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    *a4 = v11;
    if (a3)
    {
      v16 = a3;
    }

    else
    {
      v16 = 0;
    }

    a4[1] = v16;
    a4[2] = a1;
    a4[3] = a2;
    v17 = (*(a1 + 24) & 0xFFFFFFFFFFFFFFF0);

    return swift_task_future_wait_throwing(a2, v17, _asyncLet_finish_continuation, (a1 + 32));
  }
}

uint64_t swift_asyncLet_finishSlow(swift *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  Override_asyncLet_finish = swift::getOverride_asyncLet_finish(a1);
  if (Override_asyncLet_finish)
  {
    swift_asyncLet_finish::Override = Override_asyncLet_finish;

    return (Override_asyncLet_finish)(a1, a2, a3, a4, swift_asyncLet_finishImpl);
  }

  else
  {
    swift_asyncLet_finish::Override = 1;

    return swift_asyncLet_finishImpl(a1, a2, a3, a4);
  }
}

uint64_t _asyncLet_get_throwing_continuation()
{
  if (!v0)
  {
    *(v1[2] + 24) |= 4uLL;
  }

  if (v1[1])
  {
    v2 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  v3 = *v1;
  return v2();
}

uint64_t asyncLet_finish_after_task_completion(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = *(a1 + 24);
  swift::removeStatusRecordFromSelf(a1, 0, a3);
  swift::AsyncTask::~AsyncTask((v4 & 0xFFFFFFFFFFFFFFF0));
  if ((*(a1 + 24) & 8) != 0)
  {
    v4 & 0xFFFFFFFFFFFFFFF0;
  }

  return a2();
}

uint64_t _asyncLet_consume_continuation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3)
  {
    v5 = v3[1];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    return asyncLet_finish_after_task_completion(v3[2], v6, a3);
  }

  v4 = *v3;
  v5 = v3[1];
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = v5;
  return asyncLet_finish_after_task_completion(v3[2], v6, a3);
}

uint64_t _asyncLet_consume_throwing_continuation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3)
  {
    v5 = v3[1];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    return asyncLet_finish_after_task_completion(v3[2], v6, a3);
  }

  v4 = *v3;
  v5 = v3[1];
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = v5;
  return asyncLet_finish_after_task_completion(v3[2], v6, a3);
}

uint64_t _asyncLet_finish_continuation()
{
  v2 = v0;
  v3 = v1[2];
  if (v2)
  {
    MEMORY[0x1865D4950]();
    if (*v1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = v1[1];
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v7 = *((*(v3 + 24) & 0xFFFFFFFFFFFFFFF0) + 0x20);
  v8 = 192;
  if ((v7 & 0x1000000) == 0)
  {
    v8 = 176;
  }

  (*(*(*((((*(v3 + 24) & 0xFFFFFFFFFFFFFFF0) + v8) | (v7 >> 23) & 8) + 8) - 8) + 8))(v1[3]);
  if (!*v1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = v1[1];
  if (v5)
  {
LABEL_4:
    v6 = v5;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:

  return asyncLet_finish_after_task_completion(v3, v6, v4);
}

uint64_t swift_get_time(__darwin_time_t *a1, uint64_t *a2, const char *a3, char *a4)
{
  if (a3 == 2)
  {
    v6 = _CLOCK_UPTIME_RAW;
  }

  else
  {
    if (a3 != 1)
    {
      swift::swift_Concurrency_fatalError(0, "Fatal error: invalid clock ID %d\n", a3, a4, a3);
    }

    v6 = _CLOCK_MONOTONIC_RAW;
  }

  result = clock_gettime(v6, &__tp);
  tv_nsec = __tp.tv_nsec;
  *a1 = __tp.tv_sec;
  *a2 = tv_nsec;
  return result;
}

uint64_t swift_get_clock_res(__darwin_time_t *a1, uint64_t *a2, const char *a3, char *a4)
{
  if (a3 == 2)
  {
    v6 = _CLOCK_UPTIME_RAW;
  }

  else
  {
    if (a3 != 1)
    {
      swift::swift_Concurrency_fatalError(0, "Fatal error: invalid clock ID %d\n", a3, a4, a3);
    }

    v6 = _CLOCK_MONOTONIC_RAW;
  }

  result = clock_getres(v6, &__res);
  tv_nsec = __res.tv_nsec;
  *a1 = __res.tv_sec;
  *a2 = tv_nsec;
  return result;
}

int *swift_sleep(__darwin_time_t a1, uint64_t a2)
{
  v3.tv_sec = a1;
  v3.tv_nsec = a2;
  do
  {
    result = nanosleep(&v3, &v3);
    if (result != -1)
    {
      break;
    }

    result = __error();
  }

  while (*result == 4);
  return result;
}

uint64_t swift_task_invokeSwiftCheckIsolated(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    ObjectType = swift_getObjectType();
    _task_serialExecutor_checkIsolated(a1, ObjectType, a2 & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t swift_task_invokeSwiftIsIsolatingCurrentContext(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();

  return _task_serialExecutor_isIsolatingCurrentContext(a1, ObjectType, a2 & 0xFFFFFFFFFFFFFFF8);
}

unint64_t swift_task_getJobTaskId(uint64_t a1)
{
  if (!a1 || *(a1 + 32))
  {
    return *(a1 + 36);
  }

  else
  {
    return swift::AsyncTask::getTaskId(a1);
  }
}

uint64_t swift::getIsIsolatingCurrentContextDecisionFromInt(uint64_t this, signed __int8 a2, const char *a3, char *a4)
{
  if ((this + 1) >= 3)
  {
    swift::swift_Concurrency_fatalError(0, "Unexpected IsIsolatingCurrentContextDecision value", a3, a4, v4, v5);
  }

  return this;
}

uint64_t swift_task_enqueueGlobal(void *ptr)
{
  if (*MEMORY[0x1E69E7CF0])
  {
    (*MEMORY[0x1E69E7CF0])(ptr);
  }

  swift::concurrency::trace::job_enqueue_global(ptr);
  v2 = swift_task_enqueueGlobal_hook;
  if (swift_task_enqueueGlobal_hook)
  {

    return v2(ptr, swift_task_enqueueGlobalOrig);
  }

  else
  {

    return swift_task_enqueueGlobalImpl(ptr);
  }
}

void swift::concurrency::trace::job_enqueue_global(void *ptr)
{
  if (ptr && !*(ptr + 32))
  {
    if (qword_1ED42EA58 != -1)
    {
      swift::concurrency::trace::job_enqueue_global(ptr);
    }

    if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
    {
      if (swift::concurrency::trace::LogsToken != -1)
      {
        swift::runJobInEstablishedExecutorContext();
      }

      if (swift::concurrency::trace::TracingEnabled == 1)
      {
        v2 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, ptr);
        if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v3 = v2;
          v4 = swift::concurrency::trace::TaskLog;
          if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
          {
            v5 = 134217984;
            TaskId = swift::AsyncTask::getTaskId(ptr);
            _os_signpost_emit_with_name_impl(&dword_1815A3000, v4, OS_SIGNPOST_EVENT, v3, "job_enqueue_global", "task=%lld", &v5, 0xCu);
          }
        }
      }
    }
  }
}

uint64_t swift_task_enqueueGlobalWithDelay(unint64_t a1, void *a2)
{
  swift::concurrency::trace::job_enqueue_global_with_delay(a1, a2);
  v4 = swift_task_enqueueGlobalWithDelay_hook;
  if (swift_task_enqueueGlobalWithDelay_hook)
  {

    return v4(a1, a2, swift_task_enqueueGlobalWithDelayOrig);
  }

  else
  {

    return swift_task_enqueueGlobalWithDelayImpl(a1, a2);
  }
}

void swift::concurrency::trace::job_enqueue_global_with_delay(uint64_t a1, void *ptr)
{
  if (ptr && !*(ptr + 32))
  {
    if (qword_1ED42EA58 != -1)
    {
      swift::concurrency::trace::job_enqueue_global(a1);
    }

    if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
    {
      if (swift::concurrency::trace::LogsToken != -1)
      {
        swift::runJobInEstablishedExecutorContext();
      }

      if (swift::concurrency::trace::TracingEnabled == 1)
      {
        v4 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, ptr);
        if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v5 = v4;
          v6 = swift::concurrency::trace::TaskLog;
          if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
          {
            v7 = 134218240;
            TaskId = swift::AsyncTask::getTaskId(ptr);
            v9 = 2048;
            v10 = a1;
            _os_signpost_emit_with_name_impl(&dword_1815A3000, v6, OS_SIGNPOST_EVENT, v5, "job_enqueue_global_with_delay", "task=%lld delay=%llu", &v7, 0x16u);
          }
        }
      }
    }
  }
}

uint64_t swift_task_enqueueGlobalWithDeadline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (swift_task_enqueueGlobalWithDeadline_hook)
  {
    return swift_task_enqueueGlobalWithDeadline_hook(a1, a2, a3, a4, a5, a6, swift_task_enqueueGlobalWithDeadlineOrig);
  }

  else
  {
    return swift_task_enqueueGlobalWithDeadlineImpl(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t swift_task_checkIsolated(uint64_t a1, uint64_t a2)
{
  if (swift_task_checkIsolated_hook)
  {
    return swift_task_checkIsolated_hook(a1, a2, &swift_task_checkIsolatedOrig);
  }

  else
  {
    return swift_task_checkIsolatedImpl(a1, a2);
  }
}

uint64_t swift_task_isIsolatingCurrentContext(uint64_t a1, uint64_t a2)
{
  if (swift_task_isIsolatingCurrentContext_hook)
  {
    return swift_task_isIsolatingCurrentContext_hook(a1, a2, &swift_task_isIsolatingCurrentContextOrig);
  }

  else
  {
    return swift_task_isIsolatingCurrentContextImpl(a1, a2);
  }
}

uint64_t swift_task_isOnExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_isOnExecutor_hook;
  if (swift_task_isOnExecutor_hook)
  {

    return v4(a1, a2, a3, swift_task_isOnExecutorImpl);
  }

  else
  {
    ExecutorRef = _task_serialExecutor_getExecutorRef(a1, a2, a3);

    return swift_task_isCurrentExecutor(ExecutorRef, v6);
  }
}

uint64_t swift_task_isOnExecutorImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ExecutorRef = _task_serialExecutor_getExecutorRef(a1, a2, a3);

  return swift_task_isCurrentExecutor(ExecutorRef, v4);
}

uint64_t swift_task_enqueueMainExecutor(void *a1)
{
  swift::concurrency::trace::job_enqueue_main_executor(a1);
  v2 = swift_task_enqueueMainExecutor_hook;
  if (swift_task_enqueueMainExecutor_hook)
  {

    return v2(a1, swift_task_enqueueMainExecutorOrig);
  }

  else
  {

    return swift_task_enqueueMainExecutorImpl(a1);
  }
}

void swift::concurrency::trace::job_enqueue_main_executor(void *ptr)
{
  if (ptr && !*(ptr + 32))
  {
    if (qword_1ED42EA58 != -1)
    {
      swift::concurrency::trace::job_enqueue_global(ptr);
    }

    if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
    {
      if (swift::concurrency::trace::LogsToken != -1)
      {
        swift::runJobInEstablishedExecutorContext();
      }

      if (swift::concurrency::trace::TracingEnabled == 1)
      {
        v2 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, ptr);
        if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v3 = v2;
          v4 = swift::concurrency::trace::TaskLog;
          if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
          {
            v5 = 134217984;
            TaskId = swift::AsyncTask::getTaskId(ptr);
            _os_signpost_emit_with_name_impl(&dword_1815A3000, v4, OS_SIGNPOST_EVENT, v3, "job_enqueue_main_executor", "task=%lld", &v5, 0xCu);
          }
        }
      }
    }
  }
}

uint64_t swift_task_getMainExecutor()
{
  if (swift_task_getMainExecutor_hook)
  {
    return swift_task_getMainExecutor_hook(swift_task_getMainExecutorOrig);
  }

  else
  {
    return swift_task_getMainExecutorImpl();
  }
}

uint64_t swift_task_isMainExecutor(uint64_t a1, uint64_t a2)
{
  if (swift_task_isMainExecutor_hook)
  {
    return swift_task_isMainExecutor_hook(a1, a2, &swift_task_isMainExecutorOrig);
  }

  else
  {
    return swift_task_isMainExecutorImpl(a1, a2);
  }
}

uint64_t swift_task_donateThreadToGlobalExecutorUntil(uint64_t a1, uint64_t a2)
{
  if (swift_task_donateThreadToGlobalExecutorUntil_hook)
  {
    return swift_task_donateThreadToGlobalExecutorUntil_hook(a1, a2, swift_task_donateThreadToGlobalExecutorUntilOrig);
  }

  else
  {
    return swift_task_donateThreadToGlobalExecutorUntilImpl(a1, a2);
  }
}

void swift_createDefaultExecutorsOnce()
{
  if (swift_createDefaultExecutorsOnce::createExecutorsOnce != -1)
  {
    swift_createDefaultExecutorsOnce_cold_1();
  }
}

uint64_t swift_getDispatchQueueForExecutor(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFF8) != &protocol witness table for DispatchQueueShim)
  {
    return 0;
  }

  return result;
}

unint64_t swift::AsyncTask::waitFuture(swift::AsyncTask *a1, swift::AsyncTask *this, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 8);
  v9 = 192;
  if ((v8 & 0x1000000) == 0)
  {
    v9 = 176;
  }

  v10 = a1 + v9;
  v11 = (v8 >> 23) & 8;
  explicit = atomic_load_explicit((a1 + v9 + v11), memory_order_acquire);
  v13 = explicit & 3;
  if (v13 - 1 < 2)
  {
    v14 = 0;
    goto LABEL_23;
  }

  v15 = a3 + 1;
  v16 = MEMORY[0x1E69E7CF0];
  if (v13 != 3)
  {
    v17 = a6;
    v18 = a4;
    v19 = a5;
    v20 = a3;
    if (*MEMORY[0x1E69E7CF0])
    {
      (*MEMORY[0x1E69E7CF0])(this);
    }

    swift::concurrency::trace::task_wait(this, a1, 0);
    a3 = v20;
    a5 = v19;
    a4 = v18;
    a6 = v17;
    v16 = MEMORY[0x1E69E7CF0];
  }

  a3[2] = 0;
  a3[3] = a6;
  if (a4)
  {
    *v15 = a4;
    if (a5)
    {
LABEL_11:
      v21 = a5;
      goto LABEL_14;
    }
  }

  else
  {
    *v15 = 0;
    if (a5)
    {
      goto LABEL_11;
    }
  }

  v21 = 0;
LABEL_14:
  *a3 = v21;
  v22 = swift::_swift_task_alloc_specific(this, 0x30);
  _X2 = 0;
  _X3 = 0;
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 32) = 1;
  *(v22 + 40) = this;
  *(v22 + 16) = a1;
  *(this + 20) = v22;
  v37 = v22;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  v36[0] = _X2;
  v36[1] = 0;
  v35[0] = &v37;
  v35[1] = v36;
  swift::addStatusRecord(this, v22, v36, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, v35);
  swift_task_exitThreadLocalContext();
  v31 = swift::restoreTaskVoucher(this, v30);
  *(this + 2) = explicit & 0xFFFFFFFFFFFFFFFCLL;
  v32 = explicit;
  atomic_compare_exchange_strong(&v10[v11], &v32, this);
  if (v32 == explicit)
  {
LABEL_15:
    swift::_swift_task_clearCurrent(v31);
    return 0;
  }

  while (1)
  {
    v13 = v32 & 3;
    if ((v32 & 3) == 0)
    {
      if (*v16)
      {
        (*v16)(this);
      }

      swift::concurrency::trace::task_wait(this, a1, 0);
      goto LABEL_17;
    }

    if (v13 != 3)
    {
      break;
    }

LABEL_17:
    *(this + 2) = v32 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = v32;
    atomic_compare_exchange_strong(&v10[v11], &v33, this);
    _ZF = v33 == v32;
    v32 = v33;
    if (_ZF)
    {
      goto LABEL_15;
    }
  }

  v14 = 1;
LABEL_23:
  if (*MEMORY[0x1E69E7CE8])
  {
    (*MEMORY[0x1E69E7CE8])(a1);
  }

  if (v14)
  {
    swift::AsyncTask::flagAsRunning(this);
  }

  return v13;
}

void swift::concurrency::trace::task_wait(swift::concurrency::trace *this, swift::AsyncTask *a2, swift::AsyncTask *a3)
{
  v5 = this;
  if (a2)
  {
    this = MEMORY[0x1865D4750](*(a2 + 9) | (*(a2 + 36) << 32));
  }

  if (qword_1ED42EB60 != -1)
  {
    swift::concurrency::trace::task_wait(this);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v6 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, v5);
      v7 = v6;
      if (a2)
      {
        v8 = *(a2 + 9) | (*(a2 + 36) << 32);
      }

      else
      {
        v8 = 0;
      }

      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v10 = v5[9] | (v5[36] << 32);
          v11 = 134218496;
          v12 = v10;
          v13 = 2048;
          v14 = v8;
          v15 = 2048;
          v16 = a3;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "task_wait", "task=%lld waitingOnTask=%lld status=0x%lx", &v11, 0x20u);
        }
      }
    }
  }
}

void swift::NullaryContinuationJob::process(uint64_t a1)
{
  v1 = *(a1 + 72);
  if ((*(a1 + 40) + 1) >= 2)
  {
    v2 = a1;
    os_release(*(a1 + 40));
    a1 = v2;
  }

  MEMORY[0x1865D4B40](a1, 80, 15);
  *(*(v1 + 8) + 32) = 0;

  swift_continuation_resume(v1, v3);
}

void swift_continuation_resume(continuationChecking *this, swift::AsyncTask *a2)
{
  v3 = swift_continuation_resume::Override;
  if (swift_continuation_resume::Override == 1)
  {
    continuationChecking::willResume(this, a2);
    if (*(this + 8))
    {
      v4 = *(this + 8);
    }

    else
    {
      v4 = 0;
    }

    swift::concurrency::trace::task_continuation_resume(v4, 0);
    explicit = atomic_load_explicit(v4 + 3, memory_order_acquire);
    if (*MEMORY[0x1E69E7CF0])
    {
      (*MEMORY[0x1E69E7CF0])(this);
    }

    if (explicit || (v6 = 0, atomic_compare_exchange_strong(v4 + 3, &v6, 2uLL), v6))
    {
      v7 = v4[6];
      v8 = v4[7];

      swift::AsyncTask::flagAsAndEnqueueOnExecutor(this, v7, v8);
    }
  }

  else if (swift_continuation_resume::Override)
  {

    v3(this, swift_continuation_resumeImpl);
  }

  else
  {

    swift_continuation_resumeSlow(this);
  }
}

void swift::AsyncTask::completeFuture(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = 192;
  if ((v3 & 0x1000000) == 0)
  {
    v4 = 176;
  }

  v5 = (a1 + v4 + ((v3 >> 23) & 8));
  v6 = *(a2 - 8);
  v5[2] = v6;
  if (*MEMORY[0x1E69E7CF0])
  {
    (*MEMORY[0x1E69E7CF0])(a1);
  }

  v7 = 1;
  if (v6)
  {
    v7 = 2;
  }

  v8 = atomic_exchange(v5, v7);
  v9 = *(a1 + 32);
  if ((v9 & 0x4000000) != 0)
  {
    v10 = (v9 & 0x1000000) == 0;
    v11 = 192;
    if (v10)
    {
      v11 = 176;
    }

    swift::TaskGroup::offer(*(a1 + v11));
  }

  v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  if ((v8 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v13 = MEMORY[0x1E69E7CE8];
    do
    {
      v14 = v12;
      v15 = *(v12 + 64);
      v12 = *(v12 + 16);
      if (v15)
      {
        v16 = v15;
        if (!v6)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v16 = 0;
        if (!v6)
        {
LABEL_22:
          (*(*(v5[1] - 8) + 16))(*(v16 + 24), (v5 + *(*(v5[1] - 8) + 80) + 24) & ~*(*(v5[1] - 8) + 80));
          v17 = *v13;
          if (!*v13)
          {
            goto LABEL_18;
          }

LABEL_17:
          v17(v14);
          goto LABEL_18;
        }
      }

      *(v16 + 16) = v5[2];
      MEMORY[0x1865D4960]();
      v17 = *v13;
      if (*v13)
      {
        goto LABEL_17;
      }

LABEL_18:
      v18 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, v14);
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v19 = v18;
        v20 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v21 = v14[9] | (v14[36] << 32);
          *buf = 134217984;
          v23 = v21;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v20, OS_SIGNPOST_INTERVAL_END, v19, "task_wait", "task=%lld", buf, 0xCu);
        }
      }

      swift::AsyncTask::flagAsAndEnqueueOnExecutor(v14, 0, 0);
    }

    while (v12);
  }
}

void swift::AsyncTask::~AsyncTask(swift::AsyncTask *this, uint64_t a2, const char *a3, char *a4)
{
  v5 = *(this + 8);
  if ((v5 & 0x2000000) != 0)
  {
    v6 = 192;
    if ((v5 & 0x1000000) == 0)
    {
      v6 = 176;
    }

    v7 = (this + v6 + ((v5 >> 23) & 8));
    v8 = atomic_load_explicit(v7, memory_order_acquire) & 3;
    if (v8 <= 1)
    {
      if (v8 != 1)
      {
        __break(1u);
        return;
      }

      (*(*(v7[1] - 8) + 8))((v7 + *(*(v7[1] - 8) + 80) + 24) & ~*(*(v7[1] - 8) + 80));
    }

    else if (v8 == 2)
    {
      MEMORY[0x1865D4950](v7[2]);
    }
  }

  swift::StackAllocator<984ul,&swift::TaskAllocatorSlabMetadata>::~StackAllocator(this + 112, a2, a3, a4);
  swift::concurrency::trace::task_destroy(this, v9);
  v10 = *(this + 5);
  if (v10 + 1 >= 2)
  {
    os_release(v10);
  }
}

void swift::concurrency::trace::task_destroy(swift::concurrency::trace *this, swift::AsyncTask *a2)
{
  if (qword_1ED42EB60 != -1)
  {
    swift::concurrency::trace::task_wait(this);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v3 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, this);
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v4 = v3;
        v5 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v6 = *(this + 9) | (*(this + 36) << 32);
          v7 = 134217984;
          v8 = v6;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v5, OS_SIGNPOST_INTERVAL_END, v4, "task_lifetime", "task=%lld", &v7, 0xCu);
        }
      }
    }
  }
}

void jobInvoke(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3 == 1)
  {
    v3 = 0;
    v4 = 0;
  }

  else if (v3 == MEMORY[0x1E69E96A0])
  {
    v5 = a1;
    MainExecutor = swift_task_getMainExecutor();
    a1 = v5;
    v4 = v7;
    v3 = MainExecutor;
  }

  else
  {
    if (v3)
    {
      v4 = &protocol witness table for DispatchQueueShim;
    }

    else
    {
      v4 = 0;
    }
  }

  swift_job_run(a1, v3, v4);
}

void destroyTask(uint64_t a1, uint64_t a2, const char *a3, char *a4)
{
  swift::AsyncTask::~AsyncTask(v4, a2, a3, a4);

  free(v5);
}

uint64_t task_wait_throwing_resume_adapter()
{
  if (v0[1])
  {
    v1 = v0[1];
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[2];
  v3 = *v0;
  return v1();
}

uint64_t task_future_wait_resume_adapter()
{
  if (*v0)
  {
    v1 = *v0;
  }

  return (v0[1])();
}

uint64_t swift::AsyncTask::getResumeFunctionForLogging(swift::AsyncTask *this, int a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 7);
  if (v2 == non_future_adapter || v2 == future_adapter)
  {
    v4 = *(*(this + 8) - 24);
    if (!a2)
    {
      return v4;
    }
  }

  else
  {
    v4 = *(this + 7);
    if (!a2)
    {
      return v4;
    }
  }

  if (v2 == task_wait_throwing_resume_adapter || v2 == task_future_wait_resume_adapter)
  {
    if (*(*(this + 8) + 8))
    {
      return *(*(this + 8) + 8);
    }

    return 0;
  }

  return v4;
}

uint64_t swift_task_currentPriority()
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  return _X2;
}

uint64_t swift_task_create(unint64_t a1, unsigned __int8 *a2, uint64_t a3, int *a4, uint64_t a5)
{
  if ((a1 & 0x4000) != 0)
  {
    v6 = a4 + *a4;
    v7 = a4[1];
    v8 = swift_task_create_common::Override;
    if (swift_task_create_common::Override == 1)
    {
      return swift_task_create_commonImpl(a1, a2, a3, v6, a5, v7);
    }
  }

  else
  {
    v6 = a4 + *a4;
    v7 = a4[1];
    v8 = swift_task_create_common::Override;
    if (swift_task_create_common::Override == 1)
    {
      return swift_task_create_commonImpl(a1, a2, a3, v6, a5, v7);
    }
  }

  if (v8)
  {
    return v8();
  }

  else
  {
    return swift_task_create_commonSlow(a1, a2, a3, v6, a5, v7);
  }
}

uint64_t swift_task_create_common(unint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (swift_task_create_common::Override == 1)
  {
    return swift_task_create_commonImpl(a1, a2, a3, a4, a5, a6);
  }

  if (swift_task_create_common::Override)
  {
    return swift_task_create_common::Override(a1, a2, a3, a4, a5, a6, swift_task_create_commonImpl);
  }

  return swift_task_create_commonSlow(a1, a2, a3, a4, a5, a6);
}

unint64_t swift_task_future_wait_throwingImpl(uint64_t a1, unsigned int *a2, uint64_t (*a3)(void), void *a4)
{
  Current = swift_task_getCurrent();
  *(Current + 7) = task_wait_throwing_resume_adapter;
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = 0;
  }

  *(Current + 8) = v9;
  result = swift::AsyncTask::waitFuture(a2, Current, a4, a3, v4, a1);
  if (result == 2)
  {
    v14 = a2[8];
    v15 = 48;
    if ((v14 & 0x1000000) == 0)
    {
      v15 = 44;
    }

    MEMORY[0x1865D4960](*(&a2[v15 + 4] + ((v14 >> 23) & 8)));
  }

  else
  {
    if (result != 1)
    {
      return result;
    }

    v11 = a2[8];
    v12 = 48;
    if ((v11 & 0x1000000) == 0)
    {
      v12 = 44;
    }

    v13 = &a2[v12] + ((v11 >> 23) & 8);
    (*(*(*(v13 + 8) - 8) + 16))(a1, (*(*(*(v13 + 8) - 8) + 80) + v13 + 24) & ~*(*(*(v13 + 8) - 8) + 80));
  }

  return a3();
}

uint64_t swift_task_isCancelled()
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  return (_X2 >> 8) & 1;
}

uint64_t swift_task_create_commonImpl(unint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (a1 << 16) & 0x1000000;
  if (!a2)
  {
    goto LABEL_28;
  }

  v8 = a2;
  v9 = 0;
  v10 = 0;
  a2 = 0;
  TaskExecutorRef = 0;
  v12 = 0;
  v13 = 0;
  v80 = 0;
  v14 = 0;
  v79 = 0;
  v15 = 0;
  while (1)
  {
    v16 = *v8;
    if (v16 <= 3)
    {
      if (*v8 > 1u)
      {
        if (v16 == 2)
        {
          v14 = *(v8 + 2);
          v7 |= 0x11000000u;
        }

        else if (v16 == 3)
        {
          v14 = *(v8 + 2);
          v7 |= 0x11000000u;
          v79 = 1;
        }
      }

      else if (*v8)
      {
        v80 = *(v8 + 2);
        v7 |= 0x4000000u;
      }

      else
      {
        v10 = *(v8 + 2);
        v9 = *(v8 + 3);
      }

      goto LABEL_4;
    }

    if (*v8 > 6u)
    {
      if (v16 == 7)
      {
        v12 = *(v8 + 2);
        v7 |= 0x40000000u;
      }

      else if (v16 == 255)
      {
        v15 = v8;
      }

      goto LABEL_4;
    }

    if (v16 == 5)
    {
      v13 = 0;
      TaskExecutorRef = *(v8 + 2);
      a2 = *(v8 + 3);
      v7 |= 0x20000000u;
      goto LABEL_4;
    }

    if (v16 == 6)
    {
      v17 = *(v8 + 2);
      if (v17)
      {
        v18 = *(v8 + 2);
        ObjectType = swift_getObjectType();
        TaskExecutorRef = _task_taskExecutor_getTaskExecutorRef(v17, ObjectType, *(v8 + 3));
      }

      else
      {
        TaskExecutorRef = 0;
        a2 = 0;
      }

      v7 |= 0x20000000u;
      v13 = 1;
      goto LABEL_4;
    }

    if (v16 == 4)
    {
      break;
    }

LABEL_4:
    v8 = *(v8 + 1);
    if (!v8)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_28:
  v15 = 0;
  v79 = 0;
  v14 = 0;
  v80 = 0;
  v13 = 0;
  v12 = 0;
  TaskExecutorRef = 0;
  v10 = 0;
  v9 = 0;
LABEL_29:
  v77 = v15;
  v67 = v13;
  v69 = a2;
  v70 = TaskExecutorRef;
  if (a3)
  {
    v20 = v7 | 0x2000000;
  }

  else
  {
    v20 = v7;
  }

  Current = swift_task_getCurrent();
  v22 = Current;
  if ((v20 & 0x1000000) != 0)
  {
    v23 = Current;
  }

  else
  {
    v23 = 0;
  }

  if ((a1 & 0x2000) != 0 && v80)
  {
    swift_taskGroup_addPending(v80, 1);
  }

  if ((a1 & 0x200) != 0)
  {
    CurrentThreadPriority = swift_task_getCurrentThreadPriority();
  }

  else
  {
    CurrentThreadPriority = a1;
    v25 = v20 & 0x14000000;
    if ((a1 & 0x400) != 0 || v25)
    {
      if (v25)
      {
        if (!a1)
        {
          if (*(v23 + 19) == 33)
          {
            CurrentThreadPriority = 25;
          }

          else
          {
            CurrentThreadPriority = *(v23 + 19);
          }
        }
      }

      else if (!a1)
      {
        CurrentThreadPriority = v22 ? *(v22 + 152) : swift_task_getCurrentThreadPriority();
        if (CurrentThreadPriority == 33)
        {
          CurrentThreadPriority = 25;
        }
      }
    }
  }

  v26 = 21;
  if (CurrentThreadPriority)
  {
    v26 = CurrentThreadPriority;
  }

  v71 = v26;
  v27 = 192;
  if (!v23)
  {
    v27 = 176;
  }

  if (v80)
  {
    v28 = v27 | 8;
  }

  else
  {
    v28 = v27;
  }

  v68 = v10;
  if (a3)
  {
    v29 = *(*(a3 - 8) + 64) + ((*(*(a3 - 8) + 80) + v28 + 24) & ~*(*(a3 - 8) + 80)) + 32;
  }

  else
  {
    v29 = v28 + 24;
  }

  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v30 + a6;
  v66 = v30 + a6;
  if (v14)
  {
    if (((swift::AsyncLet::getSizeOfPreallocatedSpace(CurrentThreadPriority) >= v31) & v79) != 0)
    {
      PreallocatedSpace = swift::AsyncLet::getPreallocatedSpace(v14);
      v73 = swift::AsyncLet::getSizeOfPreallocatedSpace(PreallocatedSpace) - v31;
      v79 = 1;
      goto LABEL_67;
    }

    PreallocatedSpace = swift::_swift_task_alloc_specific(v23, (v31 + 512));
    v79 = 0;
LABEL_65:
    v33 = 512;
  }

  else
  {
    if (!v77 || (PreallocatedSpace = *(v77 + 2)) == 0)
    {
      PreallocatedSpace = malloc_type_malloc(v30 + a6, 0x78C967FuLL);
      goto LABEL_65;
    }

    v33 = *(v77 + 6) - v31;
  }

  v73 = v33;
LABEL_67:
  v34 = (PreallocatedSpace + v30);
  v35 = (a1 >> 14) & 1;
  if (!a3)
  {
    LODWORD(v35) = 1;
  }

  if (v35)
  {
    v36 = non_future_adapter;
  }

  else
  {
    v36 = future_adapter;
  }

  *(v34 - 3) = a4;
  *(v34 - 2) = a5;
  if ((v20 & 0x20000000) == 0)
  {
    if (v23)
    {
      PreferredTaskExecutor = swift::AsyncTask::getPreferredTaskExecutor(v23);
      if (PreferredTaskExecutor)
      {
        v20 |= 0x20000000u;
        v69 = v38;
        v70 = PreferredTaskExecutor;
      }
    }
  }

  v75 = v12;
  v39 = (a1 & 0x600) != 0;
  if ((v20 & 0x14000000) != 0)
  {
    v39 = 1;
  }

  v40 = v9;
  if (v14)
  {
    v41 = a1;
    *PreallocatedSpace = swift::taskHeapMetadataPtr;
    *(PreallocatedSpace + 8) = 0x80000004FFFFFFFFLL;
    *(PreallocatedSpace + 32) = v20;
    *(PreallocatedSpace + 36) = 0;
    v42 = (PreallocatedSpace + 36);
    *(PreallocatedSpace + 44) = 0;
    *(PreallocatedSpace + 52) = 0;
    *(PreallocatedSpace + 56) = v36;
    if (v39)
    {
      *(PreallocatedSpace + 40) = voucher_copy();
    }

    *(PreallocatedSpace + 64) = v34;
    do
    {
      add_explicit = atomic_fetch_add_explicit(&swift::AsyncTask::setTaskId(void)::NextId, 1uLL, memory_order_relaxed);
    }

    while (!add_explicit);
  }

  else
  {
    v41 = a1;
    *PreallocatedSpace = swift::taskHeapMetadataPtr;
    *(PreallocatedSpace + 8) = 3;
    *(PreallocatedSpace + 32) = v20;
    *(PreallocatedSpace + 36) = 0;
    v42 = (PreallocatedSpace + 36);
    *(PreallocatedSpace + 44) = 0;
    *(PreallocatedSpace + 52) = 0;
    *(PreallocatedSpace + 56) = v36;
    if (v39)
    {
      *(PreallocatedSpace + 40) = voucher_copy();
    }

    *(PreallocatedSpace + 64) = v34;
    do
    {
      add_explicit = atomic_fetch_add_explicit(&swift::AsyncTask::setTaskId(void)::NextId, 1uLL, memory_order_relaxed);
    }

    while (!add_explicit);
  }

  *v42 = add_explicit;
  *(PreallocatedSpace + 144) = HIDWORD(add_explicit);
  if (v23)
  {
    *(PreallocatedSpace + 176) = v23;
    *(PreallocatedSpace + 184) = 0;
  }

  if (v80)
  {
    v44 = 192;
    if ((*(PreallocatedSpace + 32) & 0x1000000) == 0)
    {
      v44 = 176;
    }

    *(PreallocatedSpace + v44) = v80;
  }

  if (a3)
  {
    v45 = *(PreallocatedSpace + 32);
    v46 = 192;
    if ((v45 & 0x1000000) == 0)
    {
      v46 = 176;
    }

    v47 = (PreallocatedSpace + v46 + ((v45 >> 23) & 8));
    *v47 = 0;
    v47[1] = a3;
    v47[2] = 0;
    *(v34 - 4) = (v47 + *(*(a3 - 8) + 80) + 24) & ~*(*(a3 - 8) + 80);
  }

  *v34 = 0;
  if (!v77)
  {
    if (!v14)
    {
      if (v41 < 0 || !a5)
      {
        v50 = completeTaskAndRelease;
      }

      else
      {
        v50 = completeTaskWithClosure;
      }

      v34[1] = v50;
LABEL_119:
      *(PreallocatedSpace + 112) = 0;
      *(PreallocatedSpace + 120) = 0;
      *(PreallocatedSpace + 128) = 0;
      *(PreallocatedSpace + 136) = 0;
      *(PreallocatedSpace + 80) = 0;
      *(PreallocatedSpace + 88) = 0;
      goto LABEL_120;
    }

    v34[1] = completeTask;
LABEL_107:
    v48 = v73;
    if (!v73)
    {
      goto LABEL_119;
    }

    goto LABEL_108;
  }

  v34[1] = completeInlineTask;
  if (v14)
  {
    goto LABEL_107;
  }

  v48 = v73;
  if (!*(v77 + 2) || !v73)
  {
    goto LABEL_119;
  }

LABEL_108:
  *(PreallocatedSpace + 112) = 0;
  *(PreallocatedSpace + 120) = 0;
  *(PreallocatedSpace + 128) = 0;
  *(PreallocatedSpace + 80) = 0;
  *(PreallocatedSpace + 88) = 0;
  if (v48 >= 0x21)
  {
    v49 = (PreallocatedSpace + v66 + 15) & 0xFFFFFFFFFFFFFFF0;
    *v49 = &swift::TaskAllocatorSlabMetadata;
    *(v49 + 8) = 0;
    *(v49 + 16) = PreallocatedSpace + v66 + v48 - v49 - 32;
    *(v49 + 20) = 0;
    *(PreallocatedSpace + 120) = v49;
    *(PreallocatedSpace + 128) = 1;
  }

  *(PreallocatedSpace + 136) = 0;
LABEL_120:
  _X0 = v71;
  *(PreallocatedSpace + 160) = 0;
  *(PreallocatedSpace + 168) = 0;
  *(PreallocatedSpace + 152) = v71;
  v52 = *(PreallocatedSpace + 96);
  v53 = *(PreallocatedSpace + 104);
  do
  {
    _X5 = *(PreallocatedSpace + 104);
    __asm { CASP            X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v52;
    v52 = _X4;
  }

  while (!_ZF);
  if (v23)
  {
    if (v80 && (swift::TaskGroup::isCancelled(v80) & 1) != 0)
    {
      goto LABEL_127;
    }

    _X0 = 0;
    _X1 = 0;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    if ((_X0 & 0x100) != 0)
    {
LABEL_127:
      swift_task_cancel(PreallocatedSpace);
    }

    swift::TaskLocal::Storage::initializeLinkParent((PreallocatedSpace + 136), PreallocatedSpace, v23);
  }

  v63 = *(PreallocatedSpace + 32);
  swift::concurrency::trace::task_create(PreallocatedSpace, v23, v80, v14, BYTE1(v63), HIBYTE(v63) & 1, (v63 >> 25) & 1, (v63 >> 26) & 1, (v63 & 0x10000000) != 0, (v41 & 0x4000) != 0, (v63 & 0x20000000) != 0, v65, v75);
  if (v80)
  {
    swift_taskGroup_attachChild(v80, PreallocatedSpace);
  }

  if ((v41 & 0x400) != 0)
  {
    swift_task_localsCopyTo(PreallocatedSpace);
  }

  if (v14)
  {
    swift::asyncLet_addImpl(PreallocatedSpace, v14, ((v79 & 1) == 0));
  }

  if ((v20 & 0x20000000) == 0)
  {
    if ((v20 & 0x40000000) == 0)
    {
      goto LABEL_137;
    }

LABEL_141:
    swift::AsyncTask::pushInitialTaskName(PreallocatedSpace, v75);
    if ((v41 & 0x1000) == 0)
    {
      return PreallocatedSpace;
    }

LABEL_138:

    swift::AsyncTask::flagAsAndEnqueueOnExecutor(PreallocatedSpace, v68, v40);
    return PreallocatedSpace;
  }

  swift::AsyncTask::pushInitialTaskExecutorPreference(PreallocatedSpace, v70, v69, v67 & 1);
  if ((v20 & 0x40000000) != 0)
  {
    goto LABEL_141;
  }

LABEL_137:
  if ((v41 & 0x1000) != 0)
  {
    goto LABEL_138;
  }

  return PreallocatedSpace;
}

uint64_t swift_task_create_commonSlow(swift *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  common = swift::getOverride_task_create_common(a1);
  if (common)
  {
    swift_task_create_common::Override = common;

    return (common)(a1, a2, a3, a4, a5, a6, swift_task_create_commonImpl);
  }

  else
  {
    swift_task_create_common::Override = 1;

    return swift_task_create_commonImpl(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t swift_task_future_wait(uint64_t a1, unsigned int *a2, uint64_t (*a3)(void), void *a4)
{
  if (swift_task_future_wait::Override == 1)
  {
    return swift_task_future_waitImpl(a1, a2, a3, a4);
  }

  if (swift_task_future_wait::Override)
  {
    return swift_task_future_wait::Override(a1, a2, a3, a4, swift_task_future_waitImpl);
  }

  return swift_task_future_waitSlow(a1, a2, a3, a4);
}

unint64_t swift_task_future_waitImpl(uint64_t a1, unsigned int *a2, uint64_t (*a3)(void), void *a4)
{
  Current = swift_task_getCurrent();
  *(Current + 7) = task_future_wait_resume_adapter;
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = 0;
  }

  *(Current + 8) = v9;
  result = swift::AsyncTask::waitFuture(a2, Current, a4, a3, v4, a1);
  if (result == 1)
  {
    v13 = a2[8];
    v14 = 48;
    if ((v13 & 0x1000000) == 0)
    {
      v14 = 44;
    }

    v15 = &a2[v14] + ((v13 >> 23) & 8);
    (*(*(*(v15 + 8) - 8) + 16))(a1, (*(*(*(v15 + 8) - 8) + 80) + v15 + 24) & ~*(*(*(v15 + 8) - 8) + 80));

    return a3();
  }

  else if (result == 2)
  {
    swift::swift_Concurrency_fatalError(0, "future reported an error, but wait cannot throw", v11, v12);
  }

  return result;
}

unint64_t swift_task_future_waitSlow(swift *a1, unsigned int *a2, uint64_t (*a3)(void), void *a4)
{
  Override_task_future_wait = swift::getOverride_task_future_wait(a1);
  if (Override_task_future_wait)
  {
    swift_task_future_wait::Override = Override_task_future_wait;

    return (Override_task_future_wait)(a1, a2, a3, a4, swift_task_future_waitImpl);
  }

  else
  {
    swift_task_future_wait::Override = 1;

    return swift_task_future_waitImpl(a1, a2, a3, a4);
  }
}

uint64_t swift_task_future_wait_throwing(uint64_t a1, unsigned int *a2, uint64_t (*a3)(void), void *a4)
{
  if (swift_task_future_wait_throwing::Override == 1)
  {
    return swift_task_future_wait_throwingImpl(a1, a2, a3, a4);
  }

  if (swift_task_future_wait_throwing::Override)
  {
    return swift_task_future_wait_throwing::Override(a1, a2, a3, a4, swift_task_future_wait_throwingImpl);
  }

  return swift_task_future_wait_throwingSlow(a1, a2, a3, a4);
}

unint64_t swift_task_future_wait_throwingSlow(swift *a1, unsigned int *a2, uint64_t (*a3)(void), void *a4)
{
  Override_task_future_wait_throwing = swift::getOverride_task_future_wait_throwing(a1);
  if (Override_task_future_wait_throwing)
  {
    swift_task_future_wait_throwing::Override = Override_task_future_wait_throwing;

    return (Override_task_future_wait_throwing)(a1, a2, a3, a4, swift_task_future_wait_throwingImpl);
  }

  else
  {
    swift_task_future_wait_throwing::Override = 1;

    return swift_task_future_wait_throwingImpl(a1, a2, a3, a4);
  }
}

void swift_continuation_resumeImpl(swift::AsyncTask *a1, swift::AsyncTask *a2)
{
  continuationChecking::willResume(a1, a2);
  if (*(a1 + 8))
  {
    v3 = *(a1 + 8);
  }

  else
  {
    v3 = 0;
  }

  swift::concurrency::trace::task_continuation_resume(v3, 0);
  explicit = atomic_load_explicit(v3 + 3, memory_order_acquire);
  if (*MEMORY[0x1E69E7CF0])
  {
    (*MEMORY[0x1E69E7CF0])(a1);
  }

  if (explicit || (v5 = 0, atomic_compare_exchange_strong(v3 + 3, &v5, 2uLL), v5))
  {
    v6 = v3[6];
    v7 = v3[7];

    swift::AsyncTask::flagAsAndEnqueueOnExecutor(a1, v6, v7);
  }
}

void swift_continuation_resumeSlow(swift *a1)
{
  Override_continuation_resume = swift::getOverride_continuation_resume(a1);
  if (Override_continuation_resume)
  {
    swift_continuation_resume::Override = Override_continuation_resume;

    (Override_continuation_resume)(a1, swift_continuation_resumeImpl);
  }

  else
  {
    swift_continuation_resume::Override = 1;
    continuationChecking::willResume(a1, v3);
    if (*(a1 + 8))
    {
      v4 = *(a1 + 8);
    }

    else
    {
      v4 = 0;
    }

    swift::concurrency::trace::task_continuation_resume(v4, 0);
    explicit = atomic_load_explicit(v4 + 3, memory_order_acquire);
    if (*MEMORY[0x1E69E7CF0])
    {
      (*MEMORY[0x1E69E7CF0])(a1);
    }

    if (explicit || (v6 = 0, atomic_compare_exchange_strong(v4 + 3, &v6, 2uLL), v6))
    {
      v7 = v4[6];
      v8 = v4[7];

      swift::AsyncTask::flagAsAndEnqueueOnExecutor(a1, v7, v8);
    }
  }
}

void swift_continuation_throwingResume(continuationChecking *this, swift::AsyncTask *a2)
{
  v3 = swift_continuation_throwingResume::Override;
  if (swift_continuation_throwingResume::Override == 1)
  {
    continuationChecking::willResume(this, a2);
    if (*(this + 8))
    {
      v4 = *(this + 8);
    }

    else
    {
      v4 = 0;
    }

    swift::concurrency::trace::task_continuation_resume(v4, 0);
    explicit = atomic_load_explicit(v4 + 3, memory_order_acquire);
    if (*MEMORY[0x1E69E7CF0])
    {
      (*MEMORY[0x1E69E7CF0])(this);
    }

    if (explicit || (v6 = 0, atomic_compare_exchange_strong(v4 + 3, &v6, 2uLL), v6))
    {
      v7 = v4[6];
      v8 = v4[7];

      swift::AsyncTask::flagAsAndEnqueueOnExecutor(this, v7, v8);
    }
  }

  else if (swift_continuation_throwingResume::Override)
  {

    v3(this, swift_continuation_throwingResumeImpl);
  }

  else
  {

    swift_continuation_throwingResumeSlow(this);
  }
}

void swift_continuation_throwingResumeImpl(swift::AsyncTask *a1, swift::AsyncTask *a2)
{
  continuationChecking::willResume(a1, a2);
  if (*(a1 + 8))
  {
    v3 = *(a1 + 8);
  }

  else
  {
    v3 = 0;
  }

  swift::concurrency::trace::task_continuation_resume(v3, 0);
  explicit = atomic_load_explicit(v3 + 3, memory_order_acquire);
  if (*MEMORY[0x1E69E7CF0])
  {
    (*MEMORY[0x1E69E7CF0])(a1);
  }

  if (explicit || (v5 = 0, atomic_compare_exchange_strong(v3 + 3, &v5, 2uLL), v5))
  {
    v6 = v3[6];
    v7 = v3[7];

    swift::AsyncTask::flagAsAndEnqueueOnExecutor(a1, v6, v7);
  }
}

void swift_continuation_throwingResumeSlow(swift *a1)
{
  Override_continuation_throwingResume = swift::getOverride_continuation_throwingResume(a1);
  if (Override_continuation_throwingResume)
  {
    swift_continuation_throwingResume::Override = Override_continuation_throwingResume;

    (Override_continuation_throwingResume)(a1, swift_continuation_throwingResumeImpl);
  }

  else
  {
    swift_continuation_throwingResume::Override = 1;
    continuationChecking::willResume(a1, v3);
    if (*(a1 + 8))
    {
      v4 = *(a1 + 8);
    }

    else
    {
      v4 = 0;
    }

    swift::concurrency::trace::task_continuation_resume(v4, 0);
    explicit = atomic_load_explicit(v4 + 3, memory_order_acquire);
    if (*MEMORY[0x1E69E7CF0])
    {
      (*MEMORY[0x1E69E7CF0])(a1);
    }

    if (explicit || (v6 = 0, atomic_compare_exchange_strong(v4 + 3, &v6, 2uLL), v6))
    {
      v7 = v4[6];
      v8 = v4[7];

      swift::AsyncTask::flagAsAndEnqueueOnExecutor(a1, v7, v8);
    }
  }
}

void swift_continuation_throwingResumeWithError(continuationChecking *this, swift::AsyncTask *a2)
{
  v4 = swift_continuation_throwingResumeWithError::Override;
  if (swift_continuation_throwingResumeWithError::Override == 1)
  {
    continuationChecking::willResume(this, a2);
    if (*(this + 8))
    {
      v5 = *(this + 8);
    }

    else
    {
      v5 = 0;
    }

    swift::concurrency::trace::task_continuation_resume(v5, 1);
    v5[4] = a2;
    explicit = atomic_load_explicit(v5 + 3, memory_order_acquire);
    if (*MEMORY[0x1E69E7CF0])
    {
      (*MEMORY[0x1E69E7CF0])(this);
    }

    if (explicit || (v7 = 0, atomic_compare_exchange_strong(v5 + 3, &v7, 2uLL), v7))
    {
      v8 = v5[6];
      v9 = v5[7];

      swift::AsyncTask::flagAsAndEnqueueOnExecutor(this, v8, v9);
    }
  }

  else if (swift_continuation_throwingResumeWithError::Override)
  {

    v4(this, a2, swift_continuation_throwingResumeWithErrorImpl);
  }

  else
  {

    swift_continuation_throwingResumeWithErrorSlow(this, a2);
  }
}

void swift_continuation_throwingResumeWithErrorImpl(swift *a1, swift::AsyncTask *a2)
{
  continuationChecking::willResume(a1, a2);
  if (*(a1 + 8))
  {
    v4 = *(a1 + 8);
  }

  else
  {
    v4 = 0;
  }

  swift::concurrency::trace::task_continuation_resume(v4, 1);
  v4[4] = a2;
  explicit = atomic_load_explicit(v4 + 3, memory_order_acquire);
  if (*MEMORY[0x1E69E7CF0])
  {
    (*MEMORY[0x1E69E7CF0])(a1);
  }

  if (explicit || (v6 = 0, atomic_compare_exchange_strong(v4 + 3, &v6, 2uLL), v6))
  {
    v7 = v4[6];
    v8 = v4[7];

    swift::AsyncTask::flagAsAndEnqueueOnExecutor(a1, v7, v8);
  }
}

void swift_continuation_throwingResumeWithErrorSlow(swift *a1, atomic_ullong a2)
{
  Override_continuation_throwingResumeWithError = swift::getOverride_continuation_throwingResumeWithError(a1);
  if (Override_continuation_throwingResumeWithError)
  {
    swift_continuation_throwingResumeWithError::Override = Override_continuation_throwingResumeWithError;

    (Override_continuation_throwingResumeWithError)(a1, a2, swift_continuation_throwingResumeWithErrorImpl);
  }

  else
  {
    swift_continuation_throwingResumeWithError::Override = 1;
    continuationChecking::willResume(a1, v5);
    if (*(a1 + 8))
    {
      v6 = *(a1 + 8);
    }

    else
    {
      v6 = 0;
    }

    swift::concurrency::trace::task_continuation_resume(v6, 1);
    v6[4] = a2;
    explicit = atomic_load_explicit(v6 + 3, memory_order_acquire);
    if (*MEMORY[0x1E69E7CF0])
    {
      (*MEMORY[0x1E69E7CF0])(a1);
    }

    if (explicit || (v8 = 0, atomic_compare_exchange_strong(v6 + 3, &v8, 2uLL), v8))
    {
      v9 = v6[6];
      v10 = v6[7];

      swift::AsyncTask::flagAsAndEnqueueOnExecutor(a1, v9, v10);
    }
  }
}

uint64_t swift_task_addCancellationHandler(swift *a1, uint64_t a2)
{
  v4 = swift_task_addCancellationHandler::Override;
  if (swift_task_addCancellationHandler::Override == 1)
  {
    v5 = swift_task_alloc(32);
    v6 = v5;
    v7 = a1;
    *v5 = 3;
    v5[1] = 0;
    if (a1)
    {
      v7 = a1;
    }

    v5[2] = v7;
    v5[3] = a2;
    v12 = 0;
    v11 = &v12;
    v8 = swift::addStatusRecordToSelf(v5, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_addCancellationHandlerImpl(void({swiftcall}*)(void * {swift_context}),void *)::$_0>, &v11);
    if (v12 == 1)
    {
      v9 = *(v6 + 24);
      (*(v6 + 16))(v8);
      v6;
      return 0;
    }

    return v6;
  }

  else if (swift_task_addCancellationHandler::Override)
  {

    return v4(a1, a2, swift_task_addCancellationHandlerImpl);
  }

  else
  {

    return swift_task_addCancellationHandlerSlow(a1, a2);
  }
}

uint64_t swift_task_addCancellationHandlerImpl(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc(32);
  v5 = v4;
  v6 = a1;
  *v4 = 3;
  v4[1] = 0;
  if (a1)
  {
    v6 = a1;
  }

  v4[2] = v6;
  v4[3] = a2;
  v11 = 0;
  v10 = &v11;
  v7 = swift::addStatusRecordToSelf(v4, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_addCancellationHandlerImpl(void({swiftcall}*)(void * {swift_context}),void *)::$_0>, &v10);
  if (v11 == 1)
  {
    v8 = *(v5 + 24);
    (*(v5 + 16))(v7);
    v5;
    return 0;
  }

  return v5;
}

uint64_t swift_task_addCancellationHandlerSlow(swift *a1, uint64_t a2)
{
  Override_task_addCancellationHandler = swift::getOverride_task_addCancellationHandler(a1);
  if (Override_task_addCancellationHandler)
  {
    swift_task_addCancellationHandler::Override = Override_task_addCancellationHandler;

    return (Override_task_addCancellationHandler)(a1, a2, swift_task_addCancellationHandlerImpl);
  }

  else
  {
    swift_task_addCancellationHandler::Override = 1;
    v6 = swift_task_alloc(32);
    v7 = v6;
    v8 = a1;
    *v6 = 3;
    v6[1] = 0;
    if (a1)
    {
      v8 = a1;
    }

    v6[2] = v8;
    v6[3] = a2;
    v12 = 0;
    v11 = &v12;
    v9 = swift::addStatusRecordToSelf(v6, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_addCancellationHandlerImpl(void({swiftcall}*)(void * {swift_context}),void *)::$_0>, &v11);
    if (v12 == 1)
    {
      v10 = *(v7 + 24);
      (*(v7 + 16))(v9);
      v7;
      return 0;
    }

    return v7;
  }
}

void swift_task_removeCancellationHandler(swift *a1)
{
  v2 = swift_task_removeCancellationHandler::Override;
  if (swift_task_removeCancellationHandler::Override == 1)
  {
    if (a1)
    {
      Current = swift_task_getCurrent();
      if (swift::popStatusRecordOfType<swift::CancellationNotificationStatusRecord>(Current))
      {

        a1;
      }
    }
  }

  else if (swift_task_removeCancellationHandler::Override)
  {

    v2(a1, swift_task_removeCancellationHandlerImpl);
  }

  else
  {

    swift_task_removeCancellationHandlerSlow(a1);
  }
}

void swift_task_removeCancellationHandlerImpl(uint64_t a1)
{
  if (a1)
  {
    Current = swift_task_getCurrent();
    if (swift::popStatusRecordOfType<swift::CancellationNotificationStatusRecord>(Current))
    {

      a1;
    }
  }
}

void swift_task_removeCancellationHandlerSlow(swift *a1)
{
  v2 = swift::getOverride_task_removeCancellationHandler(a1);
  if (v2)
  {
    swift_task_removeCancellationHandler::Override = v2;

    (v2)(a1, swift_task_removeCancellationHandlerImpl);
  }

  else
  {
    swift_task_removeCancellationHandler::Override = 1;
    if (a1)
    {
      Current = swift_task_getCurrent();
      if (swift::popStatusRecordOfType<swift::CancellationNotificationStatusRecord>(Current))
      {

        a1;
      }
    }
  }
}

uint64_t swift_task_addPriorityEscalationHandler(swift *a1, uint64_t a2)
{
  v4 = swift_task_addPriorityEscalationHandler::Override;
  if (swift_task_addPriorityEscalationHandler::Override == 1)
  {
    v5 = swift_task_alloc(32);
    v6 = a1;
    *v5 = 4;
    v5[1] = 0;
    if (a1)
    {
      v6 = a1;
    }

    v5[2] = v6;
    v5[3] = a2;
    v7 = v5;
    swift::addStatusRecordToSelf(v5, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_addPriorityEscalationHandlerImpl(void({swiftcall}*)(unsigned char,unsigned char,void * {swift_context}),void *)::$_0>, &v9);
    return v7;
  }

  else if (swift_task_addPriorityEscalationHandler::Override)
  {

    return v4(a1, a2, swift_task_addPriorityEscalationHandlerImpl);
  }

  else
  {

    return swift_task_addPriorityEscalationHandlerSlow(a1, a2);
  }
}

void *swift_task_addPriorityEscalationHandlerImpl(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc(32);
  v5 = a1;
  *v4 = 4;
  v4[1] = 0;
  if (a1)
  {
    v5 = a1;
  }

  v4[2] = v5;
  v4[3] = a2;
  v6 = v4;
  swift::addStatusRecordToSelf(v4, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_addPriorityEscalationHandlerImpl(void({swiftcall}*)(unsigned char,unsigned char,void * {swift_context}),void *)::$_0>, &v8);
  return v6;
}

uint64_t swift_task_addPriorityEscalationHandlerSlow(swift *a1, uint64_t a2)
{
  Override_task_addPriorityEscalationHandler = swift::getOverride_task_addPriorityEscalationHandler(a1);
  if (Override_task_addPriorityEscalationHandler)
  {
    swift_task_addPriorityEscalationHandler::Override = Override_task_addPriorityEscalationHandler;

    return (Override_task_addPriorityEscalationHandler)(a1, a2, swift_task_addPriorityEscalationHandlerImpl);
  }

  else
  {
    swift_task_addPriorityEscalationHandler::Override = 1;
    v6 = swift_task_alloc(32);
    v7 = a1;
    *v6 = 4;
    v6[1] = 0;
    if (a1)
    {
      v7 = a1;
    }

    v6[2] = v7;
    v6[3] = a2;
    v8 = v6;
    swift::addStatusRecordToSelf(v6, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_addPriorityEscalationHandlerImpl(void({swiftcall}*)(unsigned char,unsigned char,void * {swift_context}),void *)::$_0>, &v9);
    return v8;
  }
}

void swift_task_removePriorityEscalationHandler(swift *a1)
{
  v2 = swift_task_removePriorityEscalationHandler::Override;
  if (swift_task_removePriorityEscalationHandler::Override == 1)
  {
    swift::removeStatusRecordFromSelf(a1, 0, 1);

    a1;
  }

  else if (swift_task_removePriorityEscalationHandler::Override)
  {

    v2(a1, swift_task_removePriorityEscalationHandlerImpl);
  }

  else
  {

    swift_task_removePriorityEscalationHandlerSlow(a1);
  }
}

void swift_task_removePriorityEscalationHandlerImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift::removeStatusRecordFromSelf(a1, 0, a3);

  a1;
}

void swift_task_removePriorityEscalationHandlerSlow(swift *a1)
{
  v2 = swift::getOverride_task_removePriorityEscalationHandler(a1);
  if (v2)
  {
    swift_task_removePriorityEscalationHandler::Override = v2;

    (v2)(a1, swift_task_removePriorityEscalationHandlerImpl);
  }

  else
  {
    swift_task_removePriorityEscalationHandler::Override = 1;
    swift::removeStatusRecordFromSelf(a1, 0, v3);

    a1;
  }
}

uint64_t swift_task_createNullaryContinuationJob(swift *a1, uint64_t a2)
{
  v3 = a1;
  v4 = swift_task_createNullaryContinuationJob::Override;
  if (swift_task_createNullaryContinuationJob::Override == 1)
  {
    Current = swift_task_getCurrent();
    v6 = swift_slowAlloc();
    *v6 = swift::jobHeapMetadataPtr;
    *(v6 + 8) = 3;
    *(v6 + 32) = (v3 << 8) | 0xC3;
    *(v6 + 44) = 0;
    *(v6 + 36) = 0;
    *(v6 + 52) = 0;
    *(v6 + 56) = swift::NullaryContinuationJob::process;
    v7 = v6;
    *(v6 + 40) = voucher_copy();
    *(v7 + 64) = Current;
    *(v7 + 72) = a2;
    return v7;
  }

  else if (swift_task_createNullaryContinuationJob::Override)
  {

    return v4(a1, a2, swift_task_createNullaryContinuationJobImpl);
  }

  else
  {

    return swift_task_createNullaryContinuationJobSlow(a1, a2);
  }
}

uint64_t swift_task_createNullaryContinuationJobImpl(int a1, swift::AsyncTask *a2)
{
  Current = swift_task_getCurrent();
  v5 = swift_slowAlloc();
  *v5 = swift::jobHeapMetadataPtr;
  *(v5 + 8) = 3;
  *(v5 + 32) = (a1 << 8) | 0xC3;
  *(v5 + 44) = 0;
  *(v5 + 36) = 0;
  *(v5 + 52) = 0;
  *(v5 + 56) = swift::NullaryContinuationJob::process;
  v6 = v5;
  *(v5 + 40) = voucher_copy();
  *(v6 + 64) = Current;
  *(v6 + 72) = a2;
  return v6;
}

uint64_t swift_task_createNullaryContinuationJobSlow(swift *a1, uint64_t a2)
{
  NullaryContinuationJob = swift::getOverride_task_createNullaryContinuationJob(a1);
  if (NullaryContinuationJob)
  {
    swift_task_createNullaryContinuationJob::Override = NullaryContinuationJob;

    return (NullaryContinuationJob)(a1, a2, swift_task_createNullaryContinuationJobImpl);
  }

  else
  {
    swift_task_createNullaryContinuationJob::Override = 1;
    Current = swift_task_getCurrent();
    v7 = swift_slowAlloc();
    *v7 = swift::jobHeapMetadataPtr;
    *(v7 + 8) = 3;
    *(v7 + 32) = (a1 << 8) | 0xC3;
    *(v7 + 44) = 0;
    *(v7 + 36) = 0;
    *(v7 + 52) = 0;
    *(v7 + 56) = swift::NullaryContinuationJob::process;
    v8 = v7;
    *(v7 + 40) = voucher_copy();
    *(v8 + 64) = Current;
    *(v8 + 72) = a2;
    return v8;
  }
}

void swift_task_asyncMainDrainQueue()
{
  swift_once();
  v0 = swift_task_asyncMainDrainQueue_hook;
  v1 = swift_task_asyncMainDrainQueue::Override;
  if (!swift_task_asyncMainDrainQueue_hook)
  {
    if (swift_task_asyncMainDrainQueue::Override)
    {
      swift_task_asyncMainDrainQueue::Override(swift_task_asyncMainDrainQueueImpl);
    }

    swift_task_asyncMainDrainQueueImpl();
  }

  v0(swift_task_asyncMainDrainQueueImpl, v1);
  abort();
}

uint64_t swift_task_suspend(swift *a1)
{
  v3 = swift_task_suspend::Override;
  if (swift_task_suspend::Override == 1)
  {
    v18[3] = v1;
    v18[4] = v2;
    Current = swift_task_getCurrent();
    v5 = swift::_swift_task_alloc_specific(Current, 0x30);
    _X2 = 0;
    _X3 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
    *(v5 + 32) = 2;
    *(v5 + 40) = Current;
    *(Current + 20) = v5;
    v18[0] = v5;
    __asm { CASP            X2, X3, X2, X3, [X8] }

    v17[0] = _X2;
    v17[1] = 0;
    v16[0] = v18;
    v16[1] = v17;
    swift::addStatusRecord(Current, v5, v17, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, v16);
    swift_task_exitThreadLocalContext();
    v14 = swift::restoreTaskVoucher(Current, v13);
    swift::_swift_task_clearCurrent(v14);
    return Current;
  }

  else if (swift_task_suspend::Override)
  {

    return v3(swift_task_suspendImpl);
  }

  else
  {

    return swift_task_suspendSlow(a1);
  }
}

swift *swift_task_suspendImpl(void)
{
  Current = swift_task_getCurrent();
  v1 = swift::_swift_task_alloc_specific(Current, 0x30);
  _X2 = 0;
  _X3 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  *(v1 + 32) = 2;
  *(v1 + 40) = Current;
  *(Current + 20) = v1;
  v14 = v1;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  v13[0] = _X2;
  v13[1] = 0;
  v12[0] = &v14;
  v12[1] = v13;
  swift::addStatusRecord(Current, v1, v13, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, v12);
  swift_task_exitThreadLocalContext();
  v10 = swift::restoreTaskVoucher(Current, v9);
  swift::_swift_task_clearCurrent(v10);
  return Current;
}

uint64_t swift_task_suspendSlow(swift *a1)
{
  Override_task_suspend = swift::getOverride_task_suspend(a1);
  if (Override_task_suspend)
  {
    swift_task_suspend::Override = Override_task_suspend;

    return (Override_task_suspend)(swift_task_suspendImpl);
  }

  else
  {
    swift_task_suspend::Override = 1;
    Current = swift_task_getCurrent();
    v4 = swift::_swift_task_alloc_specific(Current, 0x30);
    _X2 = 0;
    _X3 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *v4 = 0;
    *(v4 + 32) = 2;
    *(v4 + 40) = Current;
    *(Current + 20) = v4;
    v16 = v4;
    __asm { CASP            X2, X3, X2, X3, [X8] }

    v15[0] = _X2;
    v15[1] = 0;
    v14[0] = &v16;
    v14[1] = v15;
    swift::addStatusRecord(Current, v4, v15, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, v14);
    swift_task_exitThreadLocalContext();
    v13 = swift::restoreTaskVoucher(Current, v12);
    swift::_swift_task_clearCurrent(v13);
    return Current;
  }
}

void swift_task_enqueueTaskOnExecutor(swift *this, unsigned __int8 *a2, uint64_t a3)
{
  if (swift_task_enqueueTaskOnExecutor::Override == 1)
  {
    swift::AsyncTask::flagAsAndEnqueueOnExecutor(this, a2, a3);
  }

  else if (swift_task_enqueueTaskOnExecutor::Override)
  {
    swift_task_enqueueTaskOnExecutor::Override(this, a2, a3, &swift_task_enqueueTaskOnExecutorImpl);
  }

  else
  {
    swift_task_enqueueTaskOnExecutorSlow(this, a2, a3);
  }
}

void swift_task_enqueueTaskOnExecutorSlow(swift *a1, unsigned __int8 *a2, uint64_t a3)
{
  Override_task_enqueueTaskOnExecutor = swift::getOverride_task_enqueueTaskOnExecutor(a1);
  if (Override_task_enqueueTaskOnExecutor)
  {
    swift_task_enqueueTaskOnExecutor::Override = Override_task_enqueueTaskOnExecutor;

    (Override_task_enqueueTaskOnExecutor)(a1, a2, a3, &swift_task_enqueueTaskOnExecutorImpl);
  }

  else
  {
    swift_task_enqueueTaskOnExecutor::Override = 1;

    swift::AsyncTask::flagAsAndEnqueueOnExecutor(a1, a2, a3);
  }
}

swift *swift_continuation_init(void *a1, unint64_t a2)
{
  if (swift_continuation_init::Override == 1)
  {
    return swift_continuation_initImpl(a1, a2);
  }

  if (swift_continuation_init::Override)
  {
    return swift_continuation_init::Override(a1, a2, swift_continuation_initImpl);
  }

  return swift_continuation_initSlow(a1, a2);
}

swift *swift_continuation_initImpl(void *a1, unint64_t a2)
{
  v2 = a2;
  a1[2] = a2 & 1 | (2 * ((a2 >> 3) & 1));
  a1[4] = 0;
  if ((a2 & 2) == 0)
  {
    a1[6] = 0;
    a1[7] = 0;
  }

  a1[3] = (a2 >> 2) & 1;
  Current = swift_task_getCurrent();
  v5 = Current;
  if ((v2 & 4) != 0)
  {
    v6 = swift::_swift_task_alloc_specific(Current, 0x30);
    _X2 = 0;
    _X3 = 0;
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 32) = 2;
    *(v6 + 40) = v5;
    *(v6 + 16) = a1;
    *(v5 + 20) = v6;
    v26 = v6;
    __asm { CASP            X2, X3, X2, X3, [X8] }

    v25[0] = _X2;
    v25[1] = 0;
    v24[0] = &v26;
    v24[1] = v25;
    swift::addStatusRecord(v5, v6, v25, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, v24);
    swift_task_exitThreadLocalContext();
    v15 = swift::restoreTaskVoucher(v5, v14);
    swift::_swift_task_clearCurrent(v15);
  }

  *(v5 + 8) = a1;
  v16 = a1[1];
  if (v16)
  {
    v17 = a1[1];
  }

  *(v5 + 7) = v16;
  v25[0] = v5;
  v18 = continuationChecking::CurrentState;
  if (!continuationChecking::CurrentState)
  {
    if (concurrencyValidateUncheckedContinuations())
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    continuationChecking::CurrentState = v18;
  }

  if (v18 == 1)
  {
    os_unfair_lock_lock(&continuationChecking::ActiveContinuationsLock);
    if (qword_1EA82E900 != -1)
    {
      swift_continuation_initImpl(v19);
    }

    std::__hash_table<swift::AsyncTask *,std::hash<swift::AsyncTask *>,std::equal_to<swift::AsyncTask *>,std::allocator<swift::AsyncTask *>>::__emplace_unique_key_args<swift::AsyncTask *,swift::AsyncTask * const&>(&continuationChecking::ActiveContinuations, v25);
    if ((v22 & 1) == 0)
    {
      swift::swift_Concurrency_fatalError(0, "Initializing continuation for task %p that was already initialized.\n", v20, v21, v25[0]);
    }

    os_unfair_lock_unlock(&continuationChecking::ActiveContinuationsLock);
  }

  swift::concurrency::trace::task_continuation_init(v5, a1);
  return v5;
}

swift *swift_continuation_initSlow(swift *a1, unint64_t a2)
{
  Override_continuation_init = swift::getOverride_continuation_init(a1);
  if (Override_continuation_init)
  {
    swift_continuation_init::Override = Override_continuation_init;

    return (Override_continuation_init)(a1, a2, swift_continuation_initImpl);
  }

  else
  {
    swift_continuation_init::Override = 1;

    return swift_continuation_initImpl(a1, a2);
  }
}

void swift_continuation_await(uint64_t a1)
{
  if (swift_continuation_await::Override == 1)
  {
    swift_continuation_awaitImpl(a1);
  }

  else if (swift_continuation_await::Override)
  {
    swift_continuation_await::Override(a1, swift_continuation_awaitImpl);
  }

  else
  {
    swift_continuation_awaitSlow(a1);
  }
}

void swift_continuation_awaitImpl(uint64_t a1)
{
  swift::concurrency::trace::task_continuation_await(a1);
  explicit = atomic_load_explicit((a1 + 24), memory_order_acquire);
  if (explicit == 2)
  {
    v3 = *(a1 + 8);
    if ((*(a1 + 16) & 2) != 0)
    {
      if (v3)
      {
LABEL_4:
        v4 = v3;
LABEL_13:
        v17 = *(a1 + 48);
        v18 = *(a1 + 56);

        swift_task_switch(v4, v17, v18);
        return;
      }

LABEL_12:
      v4 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    Current = swift_task_getCurrent();
    v6 = swift::_swift_task_alloc_specific(Current, 0x30);
    _X2 = 0;
    _X3 = 0;
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 32) = 2;
    *(v6 + 40) = Current;
    *(v6 + 16) = a1;
    *(Current + 20) = v6;
    v21 = v6;
    __asm { CASP            X2, X3, X2, X3, [X8] }

    v20[0] = _X2;
    v20[1] = 0;
    v19[0] = &v21;
    v19[1] = v20;
    swift::addStatusRecord(Current, v6, v20, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, v19);
    swift_task_exitThreadLocalContext();
    v15 = swift::restoreTaskVoucher(Current, v14);
    v16 = explicit;
    atomic_compare_exchange_strong((a1 + 24), &v16, 1uLL);
    if (v16 == explicit)
    {
      swift::_swift_task_clearCurrent(v15);
      return;
    }

    swift::AsyncTask::flagAsRunning(Current);
    v3 = *(a1 + 8);
    if ((*(a1 + 16) & 2) != 0)
    {
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v3();
}

void swift_continuation_awaitSlow(swift *a1)
{
  Override_continuation_await = swift::getOverride_continuation_await(a1);
  if (Override_continuation_await)
  {
    swift_continuation_await::Override = Override_continuation_await;

    (Override_continuation_await)(a1, swift_continuation_awaitImpl);
  }

  else
  {
    swift_continuation_await::Override = 1;

    swift_continuation_awaitImpl(a1);
  }
}

uint64_t swift_task_startOnMainActor(swift::AsyncTask *a1)
{
  if (swift_task_startOnMainActor::Override == 1)
  {
    return swift_task_startOnMainActorImpl(a1);
  }

  if (swift_task_startOnMainActor::Override)
  {
    return swift_task_startOnMainActor::Override(a1, swift_task_startOnMainActorImpl);
  }

  return swift_task_startOnMainActorSlow(a1);
}

uint64_t swift_task_startOnMainActorImpl(swift::AsyncTask *a1)
{
  v2 = swift::_swift_task_clearCurrent(a1);
  MainExecutor = swift_task_getMainExecutor();
  v5 = v4;
  if ((swift_task_isCurrentExecutor(MainExecutor, v4) & 1) == 0)
  {
    swift::swift_Concurrency_fatalError(0, "Not on the main executor", v6, v7);
  }

  swift_job_run(a1, MainExecutor, v5);

  return swift::_swift_task_setCurrent(v2);
}

uint64_t swift_task_startOnMainActorSlow(swift *a1)
{
  Override_task_startOnMainActor = swift::getOverride_task_startOnMainActor(a1);
  if (Override_task_startOnMainActor)
  {
    swift_task_startOnMainActor::Override = Override_task_startOnMainActor;

    return (Override_task_startOnMainActor)(a1, swift_task_startOnMainActorImpl);
  }

  else
  {
    swift_task_startOnMainActor::Override = 1;

    return swift_task_startOnMainActorImpl(a1);
  }
}

uint64_t __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = *a4;
  *a4 = *a4 & 0xFFFFB3FF | 0x4000;
  swift::TaskDependencyStatusRecord::performEscalationAction(**a1, **(a1 + 8), v4);
  return 1;
}

uint64_t swift::StackAllocator<984ul,&swift::TaskAllocatorSlabMetadata>::~StackAllocator(uint64_t a1, uint64_t a2, const char *a3, char *a4)
{
  if (*a1)
  {
    swift::swift_Concurrency_fatalError(0, "not all allocations are deallocated", a3, a4);
  }

  v5 = a1;
  if (*(a1 + 16))
  {
    memset_s(*(a1 + 8), 8uLL, 0, 8uLL);
    v5 = a1;
    if (*(a1 + 16))
    {
      v5 = *(a1 + 8);
    }
  }

  v6 = *(v5 + 8);
  *(v5 + 8) = 0;
  if (v6)
  {
    do
    {
      v7 = v6[1];
      memset_s(v6, 8uLL, 0, 8uLL);
      free(v6);
      *(a1 + 16) -= 2;
      v6 = v7;
    }

    while (v7);
  }

  return a1;
}

void completeInlineTask(swift *a1)
{
  v2 = swift::_swift_task_clearCurrent(a1);
  v3 = v2;
  *(v1 - 8) = 0;
  v4 = *(v2 + 8);
  if ((v4 & 0x40000000) != 0)
  {
    swift::AsyncTask::dropInitialTaskNameRecord(v2);
    v4 = *(v3 + 32);
  }

  if ((v4 & 0x20000000) != 0)
  {
    swift::AsyncTask::dropInitialTaskExecutorPreferenceRecord(v3);
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  _X4 = _X2 & 0xFFFFC3FF | 0x2000;
  _X1 = 0;
  __asm { CASP            X0, X1, X4, X5, [X8] }

  if (_X0 != _X2)
  {
    do
    {
      _X2 = (_X0 & 0xFFFFC3FF | 0x2000);
      _X5 = 0;
      __asm { CASP            X4, X5, X2, X3, [X8] }

      v17 = _X4 ^ _X0;
      _X0 = _X4;
    }

    while (v17);
  }

  swift::TaskLocal::Storage::destroy((v3 + 136), v3, _X2, 0);
  if ((*(v3 + 35) & 2) != 0)
  {

    swift::AsyncTask::completeFuture(v3, v1);
  }
}

void completeTask(swift *a1)
{
  v3 = swift::_swift_task_clearCurrent(a1);
  v4 = v3;
  *(v2 - 8) = v1;
  v5 = *(v3 + 8);
  if ((v5 & 0x40000000) != 0)
  {
    swift::AsyncTask::dropInitialTaskNameRecord(v3);
    v5 = *(v4 + 32);
  }

  if ((v5 & 0x20000000) != 0)
  {
    swift::AsyncTask::dropInitialTaskExecutorPreferenceRecord(v4);
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  _X4 = _X2 & 0xFFFFC3FF | 0x2000;
  _X1 = 0;
  __asm { CASP            X0, X1, X4, X5, [X8] }

  if (_X0 != _X2)
  {
    do
    {
      _X2 = (_X0 & 0xFFFFC3FF | 0x2000);
      _X5 = 0;
      __asm { CASP            X4, X5, X2, X3, [X8] }

      v18 = _X4 ^ _X0;
      _X0 = _X4;
    }

    while (v18);
  }

  swift::TaskLocal::Storage::destroy((v4 + 136), v4, _X2, 0);
  if ((*(v4 + 35) & 2) != 0)
  {

    swift::AsyncTask::completeFuture(v4, v2);
  }
}

uint64_t completeTaskWithClosure()
{
  v2 = *(v1 - 16);

  v4 = swift::_swift_task_clearCurrent(v3);
  v5 = v4;
  *(v1 - 8) = v0;
  v6 = *(v4 + 8);
  if ((v6 & 0x40000000) != 0)
  {
    swift::AsyncTask::dropInitialTaskNameRecord(v4);
    v6 = *(v5 + 32);
  }

  if ((v6 & 0x20000000) != 0)
  {
    swift::AsyncTask::dropInitialTaskExecutorPreferenceRecord(v5);
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  _X4 = _X2 & 0xFFFFC3FF | 0x2000;
  _X1 = 0;
  __asm { CASP            X0, X1, X4, X5, [X8] }

  if (_X0 != _X2)
  {
    do
    {
      _X2 = (_X0 & 0xFFFFC3FF | 0x2000);
      _X5 = 0;
      __asm { CASP            X4, X5, X2, X3, [X8] }

      v19 = _X4 ^ _X0;
      _X0 = _X4;
    }

    while (v19);
  }

  swift::TaskLocal::Storage::destroy((v5 + 136), v5, _X2, 0);
  if ((*(v5 + 35) & 2) != 0)
  {
    swift::AsyncTask::completeFuture(v5, v1);
  }
}

uint64_t completeTaskAndRelease(swift *a1)
{
  v3 = swift::_swift_task_clearCurrent(a1);
  *(v2 - 8) = v1;
  swift::AsyncTask::OpaquePrivateStorage::complete((v3 + 80), v3);
  if ((*(v3 + 35) & 2) != 0)
  {
    swift::AsyncTask::completeFuture(v3, v2);
  }
}

void swift::concurrency::trace::task_create(uint64_t (**this)(), swift::AsyncTask *a2, swift::AsyncTask *a3, swift::TaskGroup *a4, swift::AsyncLet *a5, int a6, int a7, int a8, BOOL a9, BOOL a10, BOOL a11, BOOL a12, const char *a13)
{
  v16 = a5;
  if (qword_1ED42EB60 != -1)
  {
    swift::concurrency::trace::task_wait(this);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v21 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, this);
      v22 = v21;
      if (a2)
      {
        a2 = (*(a2 + 9) | (*(a2 + 36) << 32));
      }

      if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v23 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v24 = this[7];
          v25 = *(this + 9) | (*(this + 36) << 32);
          if (!v24)
          {
            goto LABEL_21;
          }

          v26 = this[7];
          if (v24 == non_future_adapter || v24 == future_adapter)
          {
            v27 = *(this[8] - 3);
          }

          else
          {
            v27 = this[7];
          }

          if (v24 != task_wait_throwing_resume_adapter && v24 != task_future_wait_resume_adapter)
          {
            goto LABEL_22;
          }

          if (*(this[8] + 1))
          {
            v27 = *(this[8] + 1);
          }

          else
          {
LABEL_21:
            v27 = 0;
          }

LABEL_22:
          v28 = 134221058;
          v29 = v25;
          v30 = 2048;
          v31 = v27;
          v32 = 1024;
          v33 = v16;
          v34 = 1024;
          v35 = a6;
          v36 = 1024;
          v37 = a7;
          v38 = 1024;
          v39 = a8;
          v40 = 1024;
          v41 = a9;
          v42 = 2048;
          v43 = a2;
          v44 = 2048;
          v45 = a3;
          v46 = 2048;
          v47 = a4;
          v48 = 1024;
          v49 = a10;
          v50 = 1024;
          v51 = a11;
          v52 = 2082;
          v53 = a13;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v22, "task_lifetime", "task=%lld resumefn=%p jobPriority=%u isChildTask=%{BOOL}d, isFuture=%{BOOL}d isGroupChildTask=%{BOOL}d isAsyncLetTask=%{BOOL}d parent=%lld group=%p asyncLet=%p isDiscardingTask=%{BOOL}d hasInitialTaskExecutorPreference=%{BOOL}d taskName=%{public}s", &v28, 0x68u);
        }
      }
    }
  }
}

void swift::AsyncTask::OpaquePrivateStorage::complete(uint64_t **this, swift::AsyncTask *a2)
{
  v4 = *(a2 + 8);
  if ((v4 & 0x40000000) != 0)
  {
    swift::AsyncTask::dropInitialTaskNameRecord(a2);
    v4 = *(a2 + 8);
  }

  if ((v4 & 0x20000000) != 0)
  {
    swift::AsyncTask::dropInitialTaskExecutorPreferenceRecord(a2);
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  _X4 = _X2 & 0xFFFFC3FF | 0x2000;
  _X1 = 0;
  __asm { CASP            X0, X1, X4, X5, [X8] }

  if (_X0 != _X2)
  {
    do
    {
      _X2 = (_X0 & 0xFFFFC3FF | 0x2000);
      _X5 = 0;
      __asm { CASP            X4, X5, X2, X3, [X8] }

      v17 = _X4 ^ _X0;
      _X0 = _X4;
    }

    while (v17);
  }

  swift::TaskLocal::Storage::destroy(this + 7, a2, _X2, 0);
}

void continuationChecking::willResume(unint64_t this, swift::AsyncTask *a2)
{
  v3 = continuationChecking::CurrentState;
  if (!continuationChecking::CurrentState)
  {
    if (concurrencyValidateUncheckedContinuations())
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    continuationChecking::CurrentState = v3;
  }

  if (v3 == 1)
  {
    os_unfair_lock_lock(&continuationChecking::ActiveContinuationsLock);
    if (qword_1EA82E900 != -1)
    {
      continuationChecking::willResume(v4);
    }

    if (!qword_1EA82E8E0)
    {
      goto LABEL_25;
    }

    v7 = 0x9DDFEA08EB382D69 * ((8 * (this & 0x1FFFFFFF) + 8) ^ HIDWORD(this));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(this) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    v10 = vcnt_s8(qword_1EA82E8E0);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = v9;
      if (v9 >= qword_1EA82E8E0)
      {
        v11 = v9 % qword_1EA82E8E0;
      }
    }

    else
    {
      v11 = (qword_1EA82E8E0 - 1) & v9;
    }

    v12 = *(continuationChecking::ActiveContinuations + 8 * v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_25:
      swift::swift_Concurrency_fatalError(0, "Resuming continuation for task %p that is not awaited (may have already been resumed).\n", v5, v6, this);
    }

    while (1)
    {
      v14 = v13[1];
      if (v14 == v9)
      {
        if (v13[2] == this)
        {
          std::__hash_table<swift::AsyncTask *,std::hash<swift::AsyncTask *>,std::equal_to<swift::AsyncTask *>,std::allocator<swift::AsyncTask *>>::remove(&continuationChecking::ActiveContinuations, v13, &__p);
          v15 = __p;
          __p = 0;
          if (v15)
          {
            operator delete(v15);
          }

          os_unfair_lock_unlock(&continuationChecking::ActiveContinuationsLock);
          return;
        }
      }

      else
      {
        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= qword_1EA82E8E0)
          {
            v14 %= qword_1EA82E8E0;
          }
        }

        else
        {
          v14 &= qword_1EA82E8E0 - 1;
        }

        if (v14 != v11)
        {
          goto LABEL_25;
        }
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_25;
      }
    }
  }
}

void swift::concurrency::trace::task_continuation_resume(void *ptr, int a2)
{
  if (qword_1ED42EB60 != -1)
  {
    swift::concurrency::trace::task_wait(ptr);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v4 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, ptr);
      if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v5 = v4;
        v6 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v7 = 134218240;
          v8 = ptr;
          v9 = 1024;
          v10 = a2;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v6, OS_SIGNPOST_INTERVAL_END, v5, "task_continuation", "context=%p error=%{BOOL}d", &v7, 0x12u);
        }
      }
    }
  }
}

double swift::Lazy<std::unordered_set<swift::AsyncTask *>>::defaultInitCallback(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  return result;
}

void *std::__hash_table<swift::AsyncTask *,std::hash<swift::AsyncTask *>,std::equal_to<swift::AsyncTask *>,std::allocator<swift::AsyncTask *>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

BOOL __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_addCancellationHandlerImpl(void({swiftcall}*)(void * {swift_context}),void *)::$_0>(_BYTE **a1, __int16 a2)
{
  if ((a2 & 0x100) != 0)
  {
    **a1 = 1;
  }

  return (a2 & 0x100) == 0;
}

void *swift_task_asyncMainDrainQueue::$_0::__invoke(swift_task_asyncMainDrainQueue::$_0 *this, void *a2)
{
  result = swift::getOverride_task_asyncMainDrainQueue(this);
  swift_task_asyncMainDrainQueue::Override = result;
  return result;
}

void swift::concurrency::trace::task_continuation_init(uint64_t a1, void *ptr)
{
  if (qword_1ED42EB60 != -1)
  {
    swift::concurrency::trace::task_wait(a1);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v4 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, ptr);
      if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v5 = v4;
        v6 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v7 = *(a1 + 36) | (*(a1 + 144) << 32);
          v8 = 134218240;
          v9 = v7;
          v10 = 2048;
          v11 = ptr;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "task_continuation", "task=%lld context=%p", &v8, 0x16u);
        }
      }
    }
  }
}

void *std::__hash_table<swift::AsyncTask *,std::hash<swift::AsyncTask *>,std::equal_to<swift::AsyncTask *>,std::allocator<swift::AsyncTask *>>::__emplace_unique_key_args<swift::AsyncTask *,swift::AsyncTask * const&>(void *a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (result = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = result[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_11:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != *a2)
  {
    goto LABEL_11;
  }

  return result;
}

void std::__hash_table<swift::AsyncTask *,std::hash<swift::AsyncTask *>,std::equal_to<swift::AsyncTask *>,std::allocator<swift::AsyncTask *>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void swift::concurrency::trace::task_continuation_await(void *ptr)
{
  if (qword_1ED42EB60 != -1)
  {
    swift::concurrency::trace::task_wait(ptr);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v2 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, ptr);
      if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v3 = v2;
        v4 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v5 = 134217984;
          v6 = ptr;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v4, OS_SIGNPOST_EVENT, v3, "task_continuation_await", "context=%p", &v5, 0xCu);
        }
      }
    }
  }
}

void _GLOBAL__sub_I_Task_cpp()
{
  if (destroyJob)
  {
    v0 = destroyJob;
  }

  else
  {
    v0 = 0;
  }

  jobHeapMetadata = 0;
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  qword_1ED42EA70 = v1;
  *algn_1ED42EA78 = 0;
  qword_1ED42EA80 = 1283;
  unk_1ED42EA88 = v6;
  unk_1ED42EA98 = v7;
  qword_1ED42EAA8 = 1;
  if (jobInvoke)
  {
    v2 = jobInvoke;
  }

  else
  {
    v2 = 0;
  }

  qword_1ED42EAB0 = v2;
  if (destroyTask)
  {
    v3 = destroyTask;
  }

  else
  {
    v3 = 0;
  }

  taskHeapMetadata = 0;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  qword_1ED42EAC0 = v4;
  *algn_1ED42EAC8 = 0;
  qword_1ED42EAD0 = 1282;
  unk_1ED42EAD8 = v6;
  unk_1ED42EAE8 = v7;
  qword_1ED42EAF8 = 1;
  if (jobInvoke)
  {
    v5 = jobInvoke;
  }

  else
  {
    v5 = 0;
  }

  qword_1ED42EB00 = v5;
}

uint64_t swift_task_alloc(uint64_t a1)
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    v3 = (Current + 112);
  }

  else if (atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire))
  {
    v3 = &qword_1ED42EB78;
  }

  else
  {
    swift_task_alloc_cold_1(&v9);
    v3 = v9;
  }

  v4 = (a1 + 15) & 0xFFFFFFFFFFFFFFF0;
  SlabForAllocation = swift::StackAllocator<984ul,&swift::TaskAllocatorSlabMetadata>::getSlabForAllocation(v3, v4);
  v6 = *(SlabForAllocation + 5);
  v7 = SlabForAllocation + v6;
  *(v7 + 4) = *v3;
  *(v7 + 5) = SlabForAllocation;
  *(SlabForAllocation + 5) = v4 + v6 + 16;
  *v3 = SlabForAllocation + v6 + 32;
  return SlabForAllocation + v6 + 48;
}

uint64_t swift::_swift_task_alloc_specific(swift *this, swift::AsyncTask *a2)
{
  if (this)
  {
    v2 = (this + 112);
  }

  else if (atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire))
  {
    v2 = &qword_1ED42EB78;
  }

  else
  {
    v8 = a2;
    swift_task_alloc_cold_1(&v9);
    a2 = v8;
    v2 = v9;
  }

  v3 = (a2 + 15) & 0xFFFFFFF0;
  SlabForAllocation = swift::StackAllocator<984ul,&swift::TaskAllocatorSlabMetadata>::getSlabForAllocation(v2, (a2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(SlabForAllocation + 5);
  v6 = SlabForAllocation + v5;
  *(v6 + 4) = *v2;
  *(v6 + 5) = SlabForAllocation;
  *(SlabForAllocation + 5) = v3 + v5 + 16;
  *v2 = SlabForAllocation + v5 + 32;
  return SlabForAllocation + v5 + 48;
}

void swift_task_dealloc(uint64_t a1)
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    v5 = (Current + 112);
  }

  else if (atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire))
  {
    v5 = &qword_1ED42EB78;
  }

  else
  {
    swift_task_alloc_cold_1(&v9);
    v5 = v9;
  }

  v6 = *v5;
  if (*v5)
  {
    v7 = *v5 + 16 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    swift::swift_Concurrency_fatalError(0, "freed pointer was not the last allocation", v3, v4);
  }

  v8 = *v6;
  *(v6[1] + 20) = v6 - v6[1] - 32;
  *v5 = v8;
}

void swift::_swift_task_dealloc_specific(swift *this, swift::AsyncTask *a2, const char *a3, char *a4)
{
  if (this)
  {
    v4 = (this + 112);
  }

  else if (atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire))
  {
    v4 = &qword_1ED42EB78;
  }

  else
  {
    v8 = a2;
    swift_task_alloc_cold_1(&v9);
    a2 = v8;
    v4 = v9;
  }

  v5 = *v4;
  if (*v4)
  {
    v6 = *v4 + 16 == a2;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    swift::swift_Concurrency_fatalError(0, "freed pointer was not the last allocation", a3, a4);
  }

  v7 = *v5;
  *(v5[1] + 20) = v5 - v5[1] - 32;
  *v4 = v7;
}

void swift_task_dealloc_through(void *a1)
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    v5 = (Current + 112);
  }

  else if (atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire))
  {
    v5 = &qword_1ED42EB78;
  }

  else
  {
    swift_task_alloc_cold_1(&v10);
    v5 = v10;
  }

  v6 = *v5;
  do
  {
    if (!v6)
    {
      swift::swift_Concurrency_fatalError(0, "freed pointer not among allocations", v3, v4);
    }

    v7 = v6 + 2;
    v8 = v6[1];
    v9 = v6 - v8;
    v6 = *v6;
    *(v8 + 20) = v9 - 32;
    *v5 = v6;
  }

  while (v7 != a1);
}

uint64_t swift_job_allocate(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    return 0;
  }

  v3 = (a2 + 15) & 0xFFFFFFF0;
  SlabForAllocation = swift::StackAllocator<984ul,&swift::TaskAllocatorSlabMetadata>::getSlabForAllocation((a1 + 112), (a2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(SlabForAllocation + 5);
  v7 = SlabForAllocation + v6;
  *(v7 + 4) = *(a1 + 112);
  *(v7 + 5) = SlabForAllocation;
  *(SlabForAllocation + 5) = v3 + v6 + 16;
  *(a1 + 112) = SlabForAllocation + v6 + 32;
  return SlabForAllocation + v6 + 48;
}

uint64_t swift_job_deallocate(uint64_t result, uint64_t *a2, const char *a3, char *a4)
{
  if (!*(result + 32))
  {
    v6 = *(result + 112);
    if (v6)
    {
      v7 = v6 + 2 == a2;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      swift::swift_Concurrency_fatalError(0, "freed pointer was not the last allocation", a3, a4, v4, v5);
    }

    v8 = *v6;
    *(v6[1] + 20) = v6 - v6[1] - 32;
    *(result + 112) = v8;
  }

  return result;
}

uint64_t *swift::StackAllocator<984ul,&swift::TaskAllocatorSlabMetadata>::getSlabForAllocation(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  if (!*a1)
  {
    v3 = a1;
  }

  v4 = v3[1];
  if (v4)
  {
    if (a2 + 16 + *(v4 + 5) <= *(v4 + 4))
    {
      return v4;
    }

    v5 = v4[1];
    if (v5)
    {
      if (a2 + 16 + *(v5 + 20) <= *(v5 + 16))
      {
        return v4[1];
      }

      v6 = a2;
      v7 = 0;
      v4[1] = 0;
      do
      {
        v8 = *(v5 + 8);
        v7 += *(v5 + 16);
        memset_s(v5, 8uLL, 0, 8uLL);
        free(v5);
        *(a1 + 4) -= 2;
        v5 = v8;
      }

      while (v8);
      if (v7 <= v6)
      {
        a2 = v6;
      }

      else
      {
        a2 = v7;
      }
    }
  }

  else
  {
    v4 = a1;
  }

  if (a2 + 16 <= 0x3D8)
  {
    v9 = 984;
  }

  else
  {
    v9 = a2 + 16;
  }

  v10 = malloc_type_malloc(v9 + 32, 0xF006C5ADuLL);
  *v10 = &swift::TaskAllocatorSlabMetadata;
  v10[1] = 0;
  *(v10 + 4) = v9;
  *(v10 + 5) = 0;
  v4[1] = v10;
  *(a1 + 4) += 2;
  return v10;
}

void OUTLINED_FUNCTION_0_0(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = (a2 & 0xFFFFFFFFFFFFFFF0);
  *v4 = v2;
  v4[1] = 0;
  v4[2] = (a1 - v4 + 504);
  *(v3 + 16) = v4;
  *(v3 + 24) = 1;
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1, void *a2, void *a3)
{
}

uint64_t swift::addStatusRecord(swift::concurrency::trace *a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t, unint64_t, unint64_t *), uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v24 = a2;
  LODWORD(_X8) = *a3;
  if ((*a3 & 0x200) != 0)
  {
    _X8 = *a3;
    _X9 = a3[1];
LABEL_10:
    v23 = 0;
    v19 = &v24;
    v20 = &v23;
    v21 = &v25;
    withStatusRecordLock(a1, _X8, _X9, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::addStatusRecord(swift::AsyncTask *,swift::TaskStatusRecord *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>, &v22, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::addStatusRecord(swift::AsyncTask *,swift::TaskStatusRecord *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>, &v19);
    v12 = v23;
  }

  else
  {
    _X9 = a3[1];
    v9 = MEMORY[0x1E69E7CF0];
    while (1)
    {
      v10 = v24;
      *(v24 + 8) = _X9;
      v19 = _X8;
      v20 = v10;
      v11 = v25(v26, *a3, a3[1], &v19);
      v12 = v11;
      if (!v11)
      {
        break;
      }

      if (*v9)
      {
        (*v9)(a1);
      }

      _X0 = v19;
      _X9 = a3[1];
      __asm { CASPL           X8, X9, X0, X1, [X10] }

      if (_X8 == *a3)
      {
        swift::concurrency::trace::task_status_changed(a1, v19, (v19 >> 8) & 1, (v19 >> 10) & 1, 0, (v19 >> 11) & 1, (v19 >> 12) & 1);
        return v12 & 1;
      }

      *a3 = _X8;
      a3[1] = _X9;
      if ((_X8 & 0x200) != 0)
      {
        goto LABEL_10;
      }
    }
  }

  return v12 & 1;
}

uint64_t withStatusRecordLock(swift::concurrency::trace *a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t, uint64_t), uint64_t a5, void (*a6)(uint64_t, unint64_t, uint64_t, unint64_t *), uint64_t a7)
{
  _X25 = a3;
  _X26 = a2;
  os_unfair_recursive_lock_lock_with_options();
  if ((_X26 & 0x200) != 0)
  {
    _X24 = 0;
    _X25 = 0;
    __asm { CASP            X24, X25, X24, X25, [X8] }

    LODWORD(_X26) = _X24;
    v13 = HIDWORD(_X24);
    if ((_X24 & 0x200) != 0)
    {
      v25 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v13 = HIDWORD(_X26);
  }

  _X24 = _X26 | 0x200;
  _X3 = _X25;
  __asm { CASP            X2, X3, X24, X25, [X8] }

  if (_X2 != (_X26 | (v13 << 32)))
  {
    v23 = _X2;
    do
    {
      LODWORD(_X26) = v23;
      _X24 = v23 | 0x200;
      __asm { CASP            X2, X3, X24, X25, [X8] }

      _ZF = _X2 == v23;
      v23 = _X2;
    }

    while (!_ZF);
  }

  swift::concurrency::trace::task_status_changed(a1, _X26, (_X26 >> 8) & 1, (_X26 >> 10) & 1, 0, (_X26 >> 11) & 1, (_X26 >> 12) & 1);
  v25 = 0;
  v13 = 0;
  LODWORD(_X26) = _X24;
LABEL_10:
  a4(a5, _X26 | (v13 << 32), _X25);
  if (!v25)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (a6)
  {
    v31 = __PAIR64__(v13, _X26);
    v32 = _X25;
LABEL_14:
    v27 = (v13 << 32) | _X26;
    a6(a7, v27, _X25, &v31);
    _X0 = v31;
    while (1)
    {
      _X27 = _X25;
      __asm { CASP            X26, X27, X0, X1, [X8] }

      if (_X26 == v27)
      {
        break;
      }

      v13 = HIDWORD(_X26);
      if (v25)
      {
        goto LABEL_11;
      }

LABEL_13:
      _X0 = _X26 & 0xFFFFFDFF;
      v31 = _X0;
      v32 = _X25;
      if (a6)
      {
        goto LABEL_14;
      }

      v27 = _X26 | (v13 << 32);
    }

    swift::concurrency::trace::task_status_changed(a1, _X0, (_X0 >> 8) & 1, (_X0 >> 10) & 1, 0, (_X0 >> 11) & 1, (_X0 >> 12) & 1);
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t swift::addStatusRecordToSelf(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, unint64_t *), uint64_t a3)
{
  Current = swift_task_getCurrent();
  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  v15[0] = _X2;
  v15[1] = 0;
  return swift::addStatusRecord(Current, a1, v15, a2, a3) & 1;
}

void swift::removeStatusRecord(swift::concurrency::trace *this, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t, unint64_t, unint64_t, unint64_t *), uint64_t a5)
{
  v27[0] = a4;
  v27[1] = a5;
  v26 = a2;
  v7 = *a3;
  if ((*a3 & 0x200) == 0)
  {
    _X3 = a3[1];
    while (_X3 == a2)
    {
      v12 = *(a2 + 8);
      _X0 = v7;
      v23 = v7;
      v24 = v12;
      v14 = *a3;
      v15 = a3[1];
      if (a4)
      {
        a4(a5, *a3, a3[1], &v23);
        v7 = v23;
        v14 = *a3;
        v15 = a3[1];
        _X0 = v23;
      }

      _X3 = v15;
      __asm { CASP            X2, X3, X0, X1, [X9] }

      if (_X2 == v14)
      {
        swift::concurrency::trace::task_status_changed(this, v7, (v7 >> 8) & 1, (v7 >> 10) & 1, 0, (v7 >> 11) & 1, (v7 >> 12) & 1);
        return;
      }

      *a3 = _X2;
      a3[1] = v15;
      v7 = _X2;
      if ((_X2 & 0x200) != 0)
      {
        break;
      }
    }
  }

  v21 = *a3;
  v22 = a3[1];
  v23 = &v26;
  v24 = v27;
  v25 = &v26;
  withStatusRecordLock(this, v21, v22, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::removeStatusRecord(swift::AsyncTask *,swift::TaskStatusRecord *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>, &v25, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::removeStatusRecord(swift::AsyncTask *,swift::TaskStatusRecord *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>, &v23);
}

void swift::removeStatusRecordFromSelf(uint64_t a1, void (*a2)(uint64_t, unint64_t, unint64_t, unint64_t *), uint64_t a3)
{
  Current = swift_task_getCurrent();
  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  v14[0] = _X2;
  v14[1] = 0;
  swift::removeStatusRecord(Current, a1, v14, a2, a3);
}

uint64_t swift::updateStatusRecord(swift::concurrency::trace *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t, unint64_t, uint64_t, unint64_t *), uint64_t a7)
{
  v11[0] = a3;
  v11[1] = a4;
  v7 = *a5;
  v8 = a5[1];
  v10 = v11;
  return withStatusRecordLock(a1, v7, v8, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::updateStatusRecord(swift::AsyncTask *,swift::TaskStatusRecord *,__swift::__runtime::llvm::function_ref<void ()(void)>,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>, &v10, a6, a7);
}

uint64_t swift::AsyncTask::getPreferredTaskExecutor(swift::AsyncTask *this)
{
  if ((*(this + 35) & 0x20) != 0)
  {
    goto LABEL_3;
  }

  _X2 = 0;
  _X3 = 0;
  v3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X9] }

  if ((_X2 & 0x8000) != 0)
  {
LABEL_3:
    _X6 = 0;
    _X7 = 0;
    v14[0] = 0;
    v14[1] = 0;
    v13 = v14;
    __asm { CASP            X6, X7, X6, X7, [X8] }

    v15 = &v13;
    withStatusRecordLock(this, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0>(swift::AsyncTask*,swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v15, 0, _X6);
    return v14[0];
  }

  return v3;
}

uint64_t swift::popStatusRecordOfType<swift::CancellationNotificationStatusRecord>(swift::concurrency::trace *a1)
{
  _X8 = 0;
  _X9 = 0;
  v10 = 0;
  v9[0] = &v10;
  v9[1] = &v11;
  __asm { CASP            X8, X9, X8, X9, [X10] }

  v16[0] = __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>::callback_fn<swift::CancellationNotificationStatusRecord * swift::popStatusRecordOfType<swift::CancellationNotificationStatusRecord>(swift::AsyncTask *)::{lambda(swift::ActiveTaskStatus,swift::TaskStatusRecord *)#1}>;
  v16[1] = v9;
  v15 = 0;
  v14 = 0;
  v13[0] = v16;
  v13[1] = &v14;
  v11 = 0;
  v12[0] = &v14;
  v12[1] = &v15;
  withStatusRecordLock(a1, _X8, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>, v13, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>, v12);
  return v11;
}

uint64_t swift::AsyncTask::pushInitialTaskExecutorPreference(swift *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = swift::_swift_task_alloc_specific(a1, 0x28);
  *v8 = 5;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  if (a4)
  {
    *(v8 + 16) = 1;
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  v18[0] = _X2;
  v18[1] = 0;
  return swift::addStatusRecord(a1, v8, v18, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::pushInitialTaskExecutorPreference(swift::TaskExecutorRef,BOOL)::$_0>, &v17);
}

void swift::AsyncTask::dropInitialTaskExecutorPreferenceRecord(swift::AsyncTask *this)
{
  _X8 = 0;
  _X9 = 0;
  v14 = 0;
  v13[0] = &v14;
  v13[1] = &v15;
  __asm { CASP            X8, X9, X8, X9, [X10] }

  v20[0] = __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>::callback_fn<swift::TaskExecutorPreferenceStatusRecord * swift::popStatusRecordOfType<swift::TaskExecutorPreferenceStatusRecord>(swift::AsyncTask *)::{lambda(swift::ActiveTaskStatus,swift::TaskStatusRecord *)#1}>;
  v20[1] = v13;
  v19 = 0;
  v18 = 0;
  v17[0] = v20;
  v17[1] = &v18;
  v15 = 0;
  v16[0] = &v18;
  v16[1] = &v19;
  withStatusRecordLock(this, _X8, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>, v17, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>, v16);
  v11 = v15;
  if (*(v15 + 16))
  {
    v12 = *(v15 + 3);
    swift_unknownObjectRelease();
  }

  swift::_swift_task_dealloc_specific(this, v11, v9, v10);
}

uint64_t swift::AsyncTask::pushInitialTaskName(swift::AsyncTask *this, const char *a2)
{
  v4 = swift::_swift_task_alloc_specific(this, 0x18);
  v5 = strlen(a2);
  v6 = swift::_swift_task_alloc_specific(this, (v5 + 1));
  v7 = strncpy(v6, a2, v5);
  _X2 = 0;
  _X3 = 0;
  v7[v5] = 0;
  *v4 = 6;
  v4[1] = 0;
  v4[2] = v7;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  v17[0] = _X2;
  v17[1] = 0;
  return swift::addStatusRecord(this, v4, v17, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::pushInitialTaskName(char const*)::$_0>, &v16);
}

void swift::AsyncTask::dropInitialTaskNameRecord(swift::AsyncTask *this)
{
  if ((*(this + 35) & 0x40) != 0)
  {
    _X8 = 0;
    _X9 = 0;
    v15 = 0;
    v14[0] = &v15;
    v14[1] = &v16;
    __asm { CASP            X8, X9, X8, X9, [X10] }

    v21[0] = __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>::callback_fn<swift::TaskNameStatusRecord * swift::popStatusRecordOfType<swift::TaskNameStatusRecord>(swift::AsyncTask *)::{lambda(swift::ActiveTaskStatus,swift::TaskStatusRecord *)#1}>;
    v21[1] = v14;
    v20 = 0;
    v19 = 0;
    v18[0] = v21;
    v18[1] = &v19;
    v16 = 0;
    v17[0] = &v19;
    v17[1] = &v20;
    withStatusRecordLock(this, _X8, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>, v18, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>, v17);
    v9 = v16;
    swift::_swift_task_dealloc_specific(this, v16[2], v10, v11);
    swift::_swift_task_dealloc_specific(this, v9, v12, v13);
  }
}

uint64_t swift::AsyncTask::getTaskName(swift::AsyncTask *this)
{
  if ((*(this + 35) & 0x40) == 0)
  {
    return 0;
  }

  v13[1] = v1;
  v13[2] = v2;
  _X6 = 0;
  _X7 = 0;
  v11 = &v12;
  v12 = 0;
  __asm { CASP            X6, X7, X6, X7, [X8] }

  v13[0] = &v11;
  withStatusRecordLock(this, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::AsyncTask::getTaskName(void)::$_0>(swift::AsyncTask*,swift::AsyncTask::getTaskName(void)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, v13, 0, _X6);
  return v12;
}

uint64_t swift::updateNewChildWithParentAndGroupState(uint64_t result, __int16 a2, int a3, swift::TaskGroup *this)
{
  _X20 = 0;
  _X21 = 0;
  __asm { CASP            X20, X21, X20, X21, [X8] }

  v11 = _X20;
  if ((a2 & 0x100) != 0 || this && (v12 = result, v13 = a2, isCancelled = swift::TaskGroup::isCancelled(this), LOBYTE(a2) = v13, v15 = isCancelled, result = v12, v15))
  {
    v11 = _X20 | 0x100;
  }

  v16 = a2;
  if (a2 == 33)
  {
    v16 = 25;
  }

  _X20 = v11 & 0xFFFFFF00 | v16;
  v18 = *(result + 96);
  do
  {
    _X5 = *(result + 104);
    __asm { CASP            X4, X5, X20, X21, [X8] }

    _ZF = _X4 == v18;
    v18 = _X4;
  }

  while (!_ZF);
  return result;
}

uint64_t swift::_swift_taskGroup_detachChild(swift *this, swift::TaskGroup *a2, swift::AsyncTask *a3)
{
  _X6 = 0;
  _X7 = 0;
  v14 = this;
  v5 = *(a2 + 22);
  v12[0] = &v14;
  v12[1] = &v13;
  v13 = a2;
  __asm { CASP            X6, X7, X6, X7, [X8] }

  v15 = v12;
  return withStatusRecordLock(v5, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::_swift_taskGroup_detachChild(swift::TaskGroup *,swift::AsyncTask *)::$_0>(swift::AsyncTask *,swift::_swift_taskGroup_detachChild(swift::TaskGroup *,swift::AsyncTask *)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v15, 0, _X6);
}

void swift_task_cancel(swift::AsyncTask *this)
{
  if (swift_task_cancel::Override == 1)
  {
    swift_task_cancelImpl(this);
  }

  else if (swift_task_cancel::Override)
  {
    swift_task_cancel::Override(this, swift_task_cancelImpl);
  }

  else
  {
    swift_task_cancelSlow(this);
  }
}

uint64_t swift::_swift_taskGroup_cancel_unlocked(swift *this, swift::TaskGroup *a2, swift::AsyncTask *a3)
{
  v13 = this;
  result = swift::TaskGroup::getTaskRecord(this);
  if (*(result + 16))
  {
    _X6 = 0;
    _X7 = 0;
    v12 = &v13;
    __asm { CASP            X6, X7, X6, X7, [X8] }

    v14 = &v12;
    return withStatusRecordLock(a2, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::_swift_taskGroup_cancel_unlocked(swift::TaskGroup *,swift::AsyncTask *)::$_0>(swift::AsyncTask *,swift::_swift_taskGroup_cancel_unlocked(swift::TaskGroup *,swift::AsyncTask *)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v14, 0, _X6);
  }

  return result;
}

void swift::TaskDependencyStatusRecord::performEscalationAction(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3 == 4)
  {
    swift::swift_executor_escalate(*(a1 + 16), *(a1 + 24), *(a1 + 40), a3);
  }

  else if (v3 == 1)
  {
    v4 = *(a1 + 16);
    if (swift_task_escalate::Override == 1)
    {
      swift_task_escalateImpl(v4, a3);
    }

    else if (swift_task_escalate::Override)
    {
      swift_task_escalate::Override(v4, a3, swift_task_escalateImpl);
    }

    else
    {
      swift_task_escalateSlow(v4, a3);
    }
  }
}

uint64_t swift_task_escalate(swift::concurrency::trace *a1, unint64_t a2)
{
  if (swift_task_escalate::Override == 1)
  {
    return swift_task_escalateImpl(a1, a2);
  }

  if (swift_task_escalate::Override)
  {
    return swift_task_escalate::Override(a1, a2, swift_task_escalateImpl);
  }

  return swift_task_escalateSlow(a1, a2);
}

uint64_t swift_taskGroup_attachChild(swift *a1, uint64_t a2)
{
  v4 = swift_taskGroup_attachChild::Override;
  if (swift_taskGroup_attachChild::Override == 1)
  {
    v17[1] = v2;
    v17[2] = v3;
    _X6 = 0;
    _X7 = 0;
    v16 = a1;
    v7 = *(a2 + 176);
    v14[0] = &v16;
    v14[1] = &v15;
    v15 = a2;
    __asm { CASP            X6, X7, X6, X7, [X8] }

    v17[0] = v14;
    return withStatusRecordLock(v7, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift_taskGroup_attachChildImpl(swift::TaskGroup *,swift::AsyncTask *)::$_0>(swift::AsyncTask *,swift_taskGroup_attachChildImpl(swift::TaskGroup *,swift::AsyncTask *)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, v17, 0, _X6);
  }

  else if (swift_taskGroup_attachChild::Override)
  {

    return v4(a1, a2, swift_taskGroup_attachChildImpl);
  }

  else
  {

    return swift_taskGroup_attachChildSlow(a1, a2);
  }
}

uint64_t swift_taskGroup_attachChildImpl(swift::TaskGroup *a1, swift::AsyncTask *a2)
{
  _X6 = 0;
  _X7 = 0;
  v13 = a1;
  v4 = *(a2 + 22);
  v11[0] = &v13;
  v11[1] = &v12;
  v12 = a2;
  __asm { CASP            X6, X7, X6, X7, [X8] }

  v14 = v11;
  return withStatusRecordLock(v4, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift_taskGroup_attachChildImpl(swift::TaskGroup *,swift::AsyncTask *)::$_0>(swift::AsyncTask *,swift_taskGroup_attachChildImpl(swift::TaskGroup *,swift::AsyncTask *)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v14, 0, _X6);
}

uint64_t swift_taskGroup_attachChildSlow(swift *a1, uint64_t a2)
{
  Override_taskGroup_attachChild = swift::getOverride_taskGroup_attachChild(a1);
  if (Override_taskGroup_attachChild)
  {
    swift_taskGroup_attachChild::Override = Override_taskGroup_attachChild;

    return (Override_taskGroup_attachChild)(a1, a2, swift_taskGroup_attachChildImpl);
  }

  else
  {
    _X6 = 0;
    _X7 = 0;
    swift_taskGroup_attachChild::Override = 1;
    v15 = a2;
    v16 = a1;
    v8 = *(a2 + 176);
    v14[0] = &v16;
    v14[1] = &v15;
    __asm { CASP            X6, X7, X6, X7, [X8] }

    v17 = v14;
    return withStatusRecordLock(v8, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift_taskGroup_attachChildImpl(swift::TaskGroup *,swift::AsyncTask *)::$_0>(swift::AsyncTask *,swift_taskGroup_attachChildImpl(swift::TaskGroup *,swift::AsyncTask *)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v17, 0, _X6);
  }
}

uint64_t swift_task_hasTaskGroupStatusRecord(swift *a1)
{
  v3 = swift_task_hasTaskGroupStatusRecord::Override;
  if (swift_task_hasTaskGroupStatusRecord::Override == 1)
  {
    v16[1] = v1;
    v16[2] = v2;
    Current = swift_task_getCurrent();
    if (Current)
    {
      _X6 = 0;
      _X7 = 0;
      v15 = 0;
      v14 = &v15;
      __asm { CASP            X6, X7, X6, X7, [X8] }

      v16[0] = &v14;
      withStatusRecordLock(Current, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift_task_hasTaskGroupStatusRecordImpl(void)::$_0>(swift::AsyncTask *,swift_task_hasTaskGroupStatusRecordImpl(void)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, v16, 0, _X6);
      v12 = v15;
    }

    else
    {
      v12 = 0;
    }

    return v12 & 1;
  }

  else if (swift_task_hasTaskGroupStatusRecord::Override)
  {

    return v3(swift_task_hasTaskGroupStatusRecordImpl);
  }

  else
  {

    return swift_task_hasTaskGroupStatusRecordSlow(a1);
  }
}

uint64_t swift_task_hasTaskGroupStatusRecordImpl(void)
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    _X6 = 0;
    _X7 = 0;
    v11 = 0;
    v10 = &v11;
    __asm { CASP            X6, X7, X6, X7, [X8] }

    v12 = &v10;
    withStatusRecordLock(Current, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift_task_hasTaskGroupStatusRecordImpl(void)::$_0>(swift::AsyncTask *,swift_task_hasTaskGroupStatusRecordImpl(void)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v12, 0, _X6);
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t swift_task_hasTaskGroupStatusRecordSlow(swift *a1)
{
  hasTaskGroupStatusRecord = swift::getOverride_task_hasTaskGroupStatusRecord(a1);
  if (hasTaskGroupStatusRecord)
  {
    swift_task_hasTaskGroupStatusRecord::Override = hasTaskGroupStatusRecord;

    return (hasTaskGroupStatusRecord)(swift_task_hasTaskGroupStatusRecordImpl);
  }

  else
  {
    swift_task_hasTaskGroupStatusRecord::Override = 1;
    Current = swift_task_getCurrent();
    if (Current)
    {
      _X6 = 0;
      _X7 = 0;
      v13 = 0;
      v12 = &v13;
      __asm { CASP            X6, X7, X6, X7, [X8] }

      v14 = &v12;
      withStatusRecordLock(Current, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift_task_hasTaskGroupStatusRecordImpl(void)::$_0>(swift::AsyncTask *,swift_task_hasTaskGroupStatusRecordImpl(void)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v14, 0, _X6);
      v11 = v13;
    }

    else
    {
      v11 = 0;
    }

    return v11 & 1;
  }
}

void swift_task_cancelImpl(swift::AsyncTask *this)
{
  _X22 = 0;
  _X23 = 0;
  __asm { CASP            X22, X23, X22, X23, [X8] }

  if ((_X22 & 0x100) == 0)
  {
    v8 = HIDWORD(_X22);
    while (1)
    {
      _X20 = _X22 | 0x100;
      _X3 = 0;
      __asm { CASP            X2, X3, X20, X21, [X8] }

      if (_X2 == (_X22 | (v8 << 32)))
      {
        break;
      }

      v8 = HIDWORD(_X2);
      LODWORD(_X22) = _X2;
      if ((_X2 & 0x100) != 0)
      {
        return;
      }
    }

    if (*MEMORY[0x1E69E7CE8])
    {
      (*MEMORY[0x1E69E7CE8])(this);
    }

    swift::concurrency::trace::task_status_changed(this, _X22, 1, (_X22 >> 10) & 1, 0, (_X22 >> 11) & 1, (_X22 >> 12) & 1);
  }
}

uint64_t swift_task_cancelSlow(swift *a1)
{
  Override_task_cancel = swift::getOverride_task_cancel(a1);
  if (Override_task_cancel)
  {
    swift_task_cancel::Override = Override_task_cancel;

    return (Override_task_cancel)(a1, swift_task_cancelImpl);
  }

  else
  {
    swift_task_cancel::Override = 1;

    return swift_task_cancelImpl(a1);
  }
}

uint64_t swift_task_escalateImpl(swift::concurrency::trace *a1, unint64_t a2)
{
  _X22 = 0;
  v18 = a2;
  _X23 = 0;
  __asm { CASP            X22, X23, X22, X23, [X8] }

  v9 = _X22;
  if (_X22 < a2)
  {
    v10 = HIDWORD(_X22);
    while (1)
    {
      if ((_X22 & 0x1800) != 0)
      {
        v11 = _X22 & 0xFFFFFF00 | a2 | 0x400;
      }

      else
      {
        if ((_X22 & 0x2000) != 0)
        {
          return v9;
        }

        v11 = _X22 & 0xFFFFC700 | a2;
      }

      _X20 = v11;
      _X3 = 0;
      __asm { CASP            X2, X3, X20, X21, [X10] }

      if (_X2 == (_X22 | (v10 << 32)))
      {
        break;
      }

      v10 = HIDWORD(_X2);
      v9 = _X2;
      LODWORD(_X22) = _X2;
      if (_X2 >= a2)
      {
        return v9;
      }
    }

    v17 = v9;
    if (*MEMORY[0x1E69E7CE8])
    {
      v15 = a1;
      (*MEMORY[0x1E69E7CE8])();
      a1 = v15;
    }

    if ((v11 & 0x1800) == 0x1000)
    {
      swift::concurrency::trace::priority_inversion_enqueued_task(a1, _X22, v11);
    }

    return v11;
  }

  return v9;
}

uint64_t swift_task_escalateSlow(swift *a1, uint64_t a2)
{
  Override_task_escalate = swift::getOverride_task_escalate(a1);
  if (Override_task_escalate)
  {
    swift_task_escalate::Override = Override_task_escalate;

    return (Override_task_escalate)(a1, a2, swift_task_escalateImpl);
  }

  else
  {
    swift_task_escalate::Override = 1;

    return swift_task_escalateImpl(a1, a2);
  }
}

swift::concurrency::trace *swift_task_getPreferredTaskExecutor(swift *a1)
{
  v3 = swift_task_getPreferredTaskExecutor::Override;
  if (swift_task_getPreferredTaskExecutor::Override == 1)
  {
    v17[1] = v1;
    v17[2] = v2;
    result = swift_task_getCurrent();
    if (result)
    {
      if ((*(result + 35) & 0x20) != 0)
      {
        goto LABEL_6;
      }

      _X2 = 0;
      _X3 = 0;
      __asm { CASP            X2, X3, X2, X3, [X8] }

      if ((_X2 & 0x8000) != 0)
      {
LABEL_6:
        _X6 = 0;
        _X7 = 0;
        v16[0] = 0;
        v16[1] = 0;
        v15 = v16;
        __asm { CASP            X6, X7, X6, X7, [X8] }

        v17[0] = &v15;
        withStatusRecordLock(result, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0>(swift::AsyncTask*,swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, v17, 0, _X6);
        return v16[0];
      }

      else
      {
        return 0;
      }
    }
  }

  else if (swift_task_getPreferredTaskExecutor::Override)
  {

    return v3(swift_task_getPreferredTaskExecutorImpl);
  }

  else
  {

    return swift_task_getPreferredTaskExecutorSlow(a1);
  }

  return result;
}

swift::concurrency::trace *swift_task_getPreferredTaskExecutorImpl(void)
{
  result = swift_task_getCurrent();
  if (result)
  {
    if ((*(result + 35) & 0x20) != 0)
    {
      goto LABEL_5;
    }

    _X2 = 0;
    _X3 = 0;
    __asm { CASP            X2, X3, X2, X3, [X8] }

    if ((_X2 & 0x8000) != 0)
    {
LABEL_5:
      _X6 = 0;
      _X7 = 0;
      v12[0] = 0;
      v12[1] = 0;
      v11 = v12;
      __asm { CASP            X6, X7, X6, X7, [X8] }

      v13 = &v11;
      withStatusRecordLock(result, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0>(swift::AsyncTask*,swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v13, 0, _X6);
      return v12[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

swift::concurrency::trace *swift_task_getPreferredTaskExecutorSlow(swift *a1)
{
  PreferredTaskExecutor = swift::getOverride_task_getPreferredTaskExecutor(a1);
  if (PreferredTaskExecutor)
  {
    swift_task_getPreferredTaskExecutor::Override = PreferredTaskExecutor;

    return (PreferredTaskExecutor)(swift_task_getPreferredTaskExecutorImpl);
  }

  else
  {
    swift_task_getPreferredTaskExecutor::Override = 1;
    result = swift_task_getCurrent();
    if (result)
    {
      if ((*(result + 35) & 0x20) != 0)
      {
        goto LABEL_9;
      }

      _X2 = 0;
      _X3 = 0;
      __asm { CASP            X2, X3, X2, X3, [X8] }

      if ((_X2 & 0x8000) != 0)
      {
LABEL_9:
        _X6 = 0;
        _X7 = 0;
        v14[0] = 0;
        v14[1] = 0;
        v13 = v14;
        __asm { CASP            X6, X7, X6, X7, [X8] }

        v15 = &v13;
        withStatusRecordLock(result, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0>(swift::AsyncTask*,swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v15, 0, _X6);
        return v14[0];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t swift_task_pushTaskExecutorPreference(swift *a1, uint64_t a2)
{
  v4 = swift_task_pushTaskExecutorPreference::Override;
  if (swift_task_pushTaskExecutorPreference::Override == 1)
  {
    Current = swift_task_getCurrent();
    if (!Current)
    {
      return 0;
    }

    v6 = Current;
    v7 = swift::_swift_task_alloc_specific(Current, 0x28);
    _X0 = 0;
    _X1 = 0;
    *v7 = 5;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = a1;
    *(v7 + 32) = a2;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    v17[0] = _X0;
    v17[1] = 0;
    swift::addStatusRecord(v6, v7, v17, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_pushTaskExecutorPreferenceImpl(swift::TaskExecutorRef)::$_0>, &v16);
    return v7;
  }

  else if (swift_task_pushTaskExecutorPreference::Override)
  {

    return v4(a1, a2, swift_task_pushTaskExecutorPreferenceImpl);
  }

  else
  {

    return swift_task_pushTaskExecutorPreferenceSlow(a1, a2);
  }
}

uint64_t swift_task_pushTaskExecutorPreferenceImpl(uint64_t a1, uint64_t a2)
{
  Current = swift_task_getCurrent();
  if (!Current)
  {
    return 0;
  }

  v5 = Current;
  v6 = swift::_swift_task_alloc_specific(Current, 0x28);
  _X0 = 0;
  _X1 = 0;
  *v6 = 5;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  __asm { CASP            X0, X1, X0, X1, [X8] }

  v16[0] = _X0;
  v16[1] = 0;
  swift::addStatusRecord(v5, v6, v16, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_pushTaskExecutorPreferenceImpl(swift::TaskExecutorRef)::$_0>, &v15);
  return v6;
}

uint64_t swift_task_pushTaskExecutorPreferenceSlow(swift *a1, uint64_t a2)
{
  Override_task_pushTaskExecutorPreference = swift::getOverride_task_pushTaskExecutorPreference(a1);
  if (Override_task_pushTaskExecutorPreference)
  {
    swift_task_pushTaskExecutorPreference::Override = Override_task_pushTaskExecutorPreference;

    return (Override_task_pushTaskExecutorPreference)(a1, a2, swift_task_pushTaskExecutorPreferenceImpl);
  }

  else
  {
    swift_task_pushTaskExecutorPreference::Override = 1;
    Current = swift_task_getCurrent();
    if (!Current)
    {
      return 0;
    }

    v7 = Current;
    v8 = swift::_swift_task_alloc_specific(Current, 0x28);
    _X0 = 0;
    _X1 = 0;
    *v8 = 5;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *(v8 + 24) = a1;
    *(v8 + 32) = a2;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    v17[0] = _X0;
    v17[1] = 0;
    swift::addStatusRecord(v7, v8, v17, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_pushTaskExecutorPreferenceImpl(swift::TaskExecutorRef)::$_0>, &v16);
    return v8;
  }
}

void swift_task_popTaskExecutorPreference(uint64_t a1)
{
  if (swift_task_popTaskExecutorPreference::Override == 1)
  {
    swift_task_popTaskExecutorPreferenceImpl(a1);
  }

  else if (swift_task_popTaskExecutorPreference::Override)
  {
    swift_task_popTaskExecutorPreference::Override(a1, swift_task_popTaskExecutorPreferenceImpl);
  }

  else
  {
    swift_task_popTaskExecutorPreferenceSlow(a1);
  }
}

void swift_task_popTaskExecutorPreferenceImpl(uint64_t a1)
{
  v12 = a1;
  v11 = 0;
  Current = swift_task_getCurrent();
  if (Current)
  {
    _X8 = 0;
    _X9 = 0;
    v10[0] = &v11;
    v10[1] = &v12;
    v9 = &v11;
    __asm { CASP            X8, X9, X8, X9, [X10] }

    v17[0] = __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>::callback_fn<swift_task_popTaskExecutorPreferenceImpl(swift::TaskExecutorPreferenceStatusRecord *)::$_0>;
    v17[1] = v10;
    v16[0] = __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_popTaskExecutorPreferenceImpl(swift::TaskExecutorPreferenceStatusRecord *)::$_1>;
    v16[1] = &v9;
    v15 = 0;
    v14[0] = v17;
    v14[1] = &v15;
    v13[0] = &v15;
    v13[1] = v16;
    withStatusRecordLock(Current, _X8, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>, v14, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>, v13);
    v12;
  }
}

void swift_task_popTaskExecutorPreferenceSlow(swift *a1)
{
  Override_task_popTaskExecutorPreference = swift::getOverride_task_popTaskExecutorPreference(a1);
  if (Override_task_popTaskExecutorPreference)
  {
    swift_task_popTaskExecutorPreference::Override = Override_task_popTaskExecutorPreference;

    (Override_task_popTaskExecutorPreference)(a1, swift_task_popTaskExecutorPreferenceImpl);
  }

  else
  {
    swift_task_popTaskExecutorPreference::Override = 1;

    swift_task_popTaskExecutorPreferenceImpl(a1);
  }
}

uint64_t __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift_taskGroup_attachChildImpl(swift::TaskGroup *,swift::AsyncTask *)::$_0>(swift::AsyncTask *,swift_taskGroup_attachChildImpl(swift::TaskGroup *,swift::AsyncTask *)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>(uint64_t ***a1, __int16 a2)
{
  v3 = *a1;
  swift::TaskGroup::addChildTask(***a1, *(*a1)[1]);
  _X20 = 0;
  v5 = *v3;
  v6 = *v3[1];
  v7 = *v5;
  _X21 = 0;
  __asm { CASP            X20, X21, X20, X21, [X8] }

  v14 = _X20;
  if ((a2 & 0x100) != 0 || v7 && swift::TaskGroup::isCancelled(v7))
  {
    v14 = _X20 | 0x100;
  }

  v15 = a2;
  if (a2 == 33)
  {
    v15 = 25;
  }

  _X20 = v14 & 0xFFFFFF00 | v15;
  result = *(v6 + 96);
  do
  {
    _X3 = *(v6 + 104);
    __asm { CASP            X2, X3, X20, X21, [X8] }

    _ZF = _X2 == result;
    result = _X2;
  }

  while (!_ZF);
  return result;
}

_BYTE ***__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift_task_hasTaskGroupStatusRecordImpl(void)::$_0>(swift::AsyncTask *,swift_task_hasTaskGroupStatusRecordImpl(void)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>(_BYTE ***result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    while (*a3 != 2)
    {
      a3 = *(a3 + 8);
      if (!a3)
      {
        return result;
      }
    }

    ***result = 1;
  }

  return result;
}

void __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift_task_cancelImpl(swift::AsyncTask *)::$_0>(int a1, int a2, swift::TaskGroupTaskStatusRecord *this)
{
  if (this)
  {
    v3 = this;
    do
    {
      v5 = *v3;
      switch(v5)
      {
        case 3:
          v4 = *(v3 + 3);
          (*(v3 + 2))();
          break;
        case 2:
          Group = swift::TaskGroupTaskStatusRecord::getGroup(v3);
          swift::TaskGroup::statusCancel(Group);
          for (i = *(swift::TaskGroup::getTaskRecord(Group) + 16); i; i = *(i + 23))
          {
            if (swift_task_cancel::Override == 1)
            {
              swift_task_cancelImpl(i);
            }

            else if (swift_task_cancel::Override)
            {
              (swift_task_cancel::Override)(i, swift_task_cancelImpl);
            }

            else
            {
              swift_task_cancelSlow(i);
            }
          }

          break;
        case 1:
          for (j = *(v3 + 2); j; j = *(j + 23))
          {
            if (swift_task_cancel::Override == 1)
            {
              swift_task_cancelImpl(j);
            }

            else if (swift_task_cancel::Override)
            {
              (swift_task_cancel::Override)(j, swift_task_cancelImpl);
            }

            else
            {
              swift_task_cancelSlow(j);
            }
          }

          break;
      }

      v3 = *(v3 + 1);
    }

    while (v3);
  }
}

void swift::concurrency::trace::priority_inversion_enqueued_task(swift::concurrency::trace *this, swift::AsyncTask *a2, uint64_t a3)
{
  if (qword_1ED42EDB8 != -1)
  {
    swift::concurrency::trace::priority_inversion_enqueued_task(this);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v6 = swift::concurrency::trace::PotentialPriorityInversionLog;
      if (os_signpost_enabled(swift::concurrency::trace::PotentialPriorityInversionLog))
      {
        v7 = 134218496;
        TaskId = swift::AsyncTask::getTaskId(this);
        v9 = 2048;
        v10 = a2;
        v11 = 2048;
        v12 = a3;
        _os_signpost_emit_with_name_impl(&dword_1815A3000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "enqueued_task_inversion", " enableTelemetry=YES task=%llx oldPriority=%zu newPriority=%zu", &v7, 0x20u);
      }
    }
  }
}

void __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift_task_escalateImpl(swift::AsyncTask *,swift::JobPriority)::$_0>(unsigned __int8 **a1, uint64_t a2, unsigned __int8 *a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      v5 = *a1[1];
      v6 = *v3;
      if (v6 > 1)
      {
        if (v6 == 2)
        {
          for (i = *(v3 + 2); i; i = *(i + 23))
          {
            if (swift_task_escalate::Override == 1)
            {
              swift_task_escalateImpl(i, v5);
            }

            else if (swift_task_escalate::Override)
            {
              (swift_task_escalate::Override)(i, v5, swift_task_escalateImpl);
            }

            else
            {
              swift_task_escalateSlow(i, v5);
            }
          }
        }

        else if (v6 == 4)
        {
          v8 = *(v3 + 3);
          (*(v3 + 2))(**a1, *a1[1]);
        }
      }

      else if (*v3)
      {
        if (v6 == 1)
        {
          for (j = *(v3 + 2); j; j = *(j + 23))
          {
            if (swift_task_escalate::Override == 1)
            {
              swift_task_escalateImpl(j, v5);
            }

            else if (swift_task_escalate::Override)
            {
              (swift_task_escalate::Override)(j, v5, swift_task_escalateImpl);
            }

            else
            {
              swift_task_escalateSlow(j, v5);
            }
          }
        }
      }

      else
      {
        v9 = *(v3 + 8);
        if (v9 == 4)
        {
          swift::swift_executor_escalate(*(v3 + 2), *(v3 + 3), *(v3 + 5), *a1[1]);
        }

        else if (v9 == 1)
        {
          v10 = *(v3 + 2);
          if (swift_task_escalate::Override == 1)
          {
            swift_task_escalateImpl(v10, *a1[1]);
          }

          else if (swift_task_escalate::Override)
          {
            (swift_task_escalate::Override)(v10, *a1[1], swift_task_escalateImpl);
          }

          else
          {
            swift_task_escalateSlow(v10, *a1[1]);
          }
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3);
  }
}

BOOL __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>::callback_fn<swift_task_popTaskExecutorPreferenceImpl(swift::TaskExecutorPreferenceStatusRecord *)::$_0>(int **a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*a4 == 5 && (v4 = **a1, **a1 = v4 + 1, !v4))
  {
    return *a1[1] == a4;
  }

  else
  {
    return 0;
  }
}

_DWORD **__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_popTaskExecutorPreferenceImpl(swift::TaskExecutorPreferenceStatusRecord *)::$_1>(_DWORD **result, uint64_t a2, uint64_t a3, void *a4)
{
  if (**result == 1)
  {
    *a4 = *a4 & 0xFFFF7FFF;
  }

  return result;
}

double __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::addStatusRecord(swift::AsyncTask *,swift::TaskStatusRecord *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  *(**a1 + 8) = a4[1];
  v7 = *v6;
  *&v10 = *a4;
  *(&v10 + 1) = v7;
  v8 = (**(a1 + 16))(*(*(a1 + 16) + 8), *a4, a4[1], &v10);
  **(a1 + 8) = v8;
  if (v8)
  {
    result = *&v10;
    *a4 = v10;
  }

  return result;
}

uint64_t **__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::removeStatusRecord(swift::AsyncTask *,swift::TaskStatusRecord *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>(uint64_t **result, uint64_t a2, uint64_t a3)
{
  v3 = **result;
  if (v3 != a3)
  {
    while (a3)
    {
      v4 = a3;
      a3 = *(a3 + 8);
      if (a3 == v3)
      {
        *(v4 + 8) = *(v3 + 8);
        return result;
      }
    }
  }

  return result;
}

uint64_t __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::removeStatusRecord(swift::AsyncTask *,swift::TaskStatusRecord *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = **result;
  if (a4[1] == v4)
  {
    v5 = *(v4 + 8);
    *a4 = *a4;
    a4[1] = v5;
  }

  v6 = *(result + 8);
  if (*v6)
  {
    return (*v6)(*(v6 + 8));
  }

  return result;
}

uint64_t __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = a3;
    do
    {
      result = (**v5)(*(*v5 + 1), a2, a3, v6);
      if (result)
      {
        if (v6 == a3)
        {
          *v5[1] = 1;
        }

        else
        {
          v7 = a3;
          while (v7)
          {
            v8 = v7;
            v7 = *(v7 + 8);
            if (v7 == v6)
            {
              *(v8 + 8) = *(v6 + 8);
              break;
            }
          }
        }
      }

      v6 = *(v6 + 8);
    }

    while (v6);
  }

  return result;
}

uint64_t __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (**result == 1)
  {
    v4 = *(a4[1] + 8);
    *a4 = *a4;
    a4[1] = v4;
  }

  v5 = *(result + 8);
  if (*v5)
  {
    return (*v5)(*(v5 + 8));
  }

  return result;
}

__n128 __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0>(swift::AsyncTask*,swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>(__n128 ***a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    while (*a3 != 5)
    {
      a3 = *(a3 + 8);
      if (!a3)
      {
        return result;
      }
    }

    result = *(a3 + 24);
    ***a1 = result;
  }

  return result;
}

uint64_t __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>::callback_fn<swift::CancellationNotificationStatusRecord * swift::popStatusRecordOfType<swift::CancellationNotificationStatusRecord>(swift::AsyncTask *)::{lambda(swift::ActiveTaskStatus,swift::TaskStatusRecord *)#1}>(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ((**a1 & 1) != 0 || *a4 != 3)
  {
    return 0;
  }

  **(a1 + 8) = a4;
  v4 = *a1;
  result = 1;
  *v4 = 1;
  return result;
}

uint64_t __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>::callback_fn<swift::TaskExecutorPreferenceStatusRecord * swift::popStatusRecordOfType<swift::TaskExecutorPreferenceStatusRecord>(swift::AsyncTask *)::{lambda(swift::ActiveTaskStatus,swift::TaskStatusRecord *)#1}>(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ((**a1 & 1) != 0 || *a4 != 5)
  {
    return 0;
  }

  **(a1 + 8) = a4;
  v4 = *a1;
  result = 1;
  *v4 = 1;
  return result;
}

uint64_t __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>::callback_fn<swift::TaskNameStatusRecord * swift::popStatusRecordOfType<swift::TaskNameStatusRecord>(swift::AsyncTask *)::{lambda(swift::ActiveTaskStatus,swift::TaskStatusRecord *)#1}>(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ((**a1 & 1) != 0 || *a4 != 6)
  {
    return 0;
  }

  **(a1 + 8) = a4;
  v4 = *a1;
  result = 1;
  *v4 = 1;
  return result;
}

void ***__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::AsyncTask::getTaskName(void)::$_0>(swift::AsyncTask*,swift::AsyncTask::getTaskName(void)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>(void ***result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    while (*a3 != 6)
    {
      a3 = *(a3 + 8);
      if (!a3)
      {
        return result;
      }
    }

    ***result = *(a3 + 16);
  }

  return result;
}