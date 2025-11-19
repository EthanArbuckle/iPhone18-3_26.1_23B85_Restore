void __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::_swift_taskGroup_cancel_unlocked(swift::TaskGroup *,swift::AsyncTask *)::$_0>(swift::AsyncTask *,swift::_swift_taskGroup_cancel_unlocked(swift::TaskGroup *,swift::AsyncTask *)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>(atomic_ullong ****a1)
{
  v1 = ***a1;
  swift::TaskGroup::statusCancel(v1);
  for (i = *(swift::TaskGroup::getTaskRecord(v1) + 16); i; i = *(i + 23))
  {
    if (swift_task_cancel::Override == 1)
    {
      swift_task_cancelImpl(i);
    }

    else if (swift_task_cancel::Override)
    {
      swift_task_cancel::Override(i, swift_task_cancelImpl);
    }

    else
    {
      swift_task_cancelSlow(i);
    }
  }
}

uint64_t swift::TaskGroup::addChildTask(uint64_t this, swift::AsyncTask *a2)
{
  v2 = *(this + 32);
  *(this + 32) = a2;
  if (*(this + 24))
  {
    *(v2 + 184) = a2;
  }

  else
  {
    *(this + 24) = a2;
  }

  return this;
}

uint64_t swift::TaskGroup::removeChildTask(uint64_t this, swift::AsyncTask *a2)
{
  v2 = *(this + 24);
  if (v2 == a2)
  {
    v4 = *(a2 + 23);
    *(this + 24) = v4;
    if (!v4)
    {
      *(this + 32) = 0;
    }
  }

  else
  {
    while (v2)
    {
      v3 = v2;
      v2 = *(v2 + 23);
      if (v2 == a2)
      {
        *(v3 + 23) = *(a2 + 23);
        if (*(this + 32) == a2)
        {
          *(this + 32) = v3;
        }

        return this;
      }
    }
  }

  return this;
}

uint64_t swift_taskGroup_initialize(uint64_t a1, uint64_t a2)
{
  v4 = swift_taskGroup_initialize::Override;
  if (swift_taskGroup_initialize::Override == 1)
  {
    v5 = swift_taskGroup_initializeWithFlags::Override;
    if (swift_taskGroup_initializeWithFlags::Override == 1)
    {
      v8[1] = v2;
      v8[2] = v3;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *(a1 + 40) = 0;
      *(a1 + 8) = 2;
      *(a1 + 112) = a2;
      *a1 = &unk_1EEF5F960;
      v7 = v8;
      v8[0] = a1;
      return swift::addStatusRecordToSelf(a1 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v7);
    }

    else if (swift_taskGroup_initializeWithFlags::Override)
    {

      return v5(0, a1, a2, swift_taskGroup_initializeWithFlagsImpl);
    }

    else
    {

      return swift_taskGroup_initializeWithFlagsSlow(0, a1, a2);
    }
  }

  else if (swift_taskGroup_initialize::Override)
  {

    return v4(a1, a2, swift_taskGroup_initializeImpl);
  }

  else
  {

    return swift_taskGroup_initializeSlow(a1, a2);
  }
}

uint64_t swift_taskGroup_initializeImpl(uint64_t a1, uint64_t a2)
{
  v4 = swift_taskGroup_initializeWithFlags::Override;
  if (swift_taskGroup_initializeWithFlags::Override == 1)
  {
    v7[1] = v2;
    v7[2] = v3;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *(a1 + 40) = 0;
    *(a1 + 8) = 2;
    *(a1 + 112) = a2;
    *a1 = &unk_1EEF5F960;
    v6 = v7;
    v7[0] = a1;
    return swift::addStatusRecordToSelf(a1 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v6);
  }

  else if (swift_taskGroup_initializeWithFlags::Override)
  {

    return v4(0, a1, a2, swift_taskGroup_initializeWithFlagsImpl);
  }

  else
  {

    return swift_taskGroup_initializeWithFlagsSlow(0, a1, a2);
  }
}

uint64_t swift_taskGroup_initializeSlow(uint64_t a1, uint64_t a2)
{
  Override_taskGroup_initialize = swift::getOverride_taskGroup_initialize(a1);
  if (Override_taskGroup_initialize)
  {
    swift_taskGroup_initialize::Override = Override_taskGroup_initialize;

    return (Override_taskGroup_initialize)(a1, a2, swift_taskGroup_initializeImpl);
  }

  else
  {
    swift_taskGroup_initialize::Override = 1;
    v6 = swift_taskGroup_initializeWithFlags::Override;
    if (swift_taskGroup_initializeWithFlags::Override == 1)
    {
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *(a1 + 40) = 0;
      *(a1 + 8) = 2;
      *(a1 + 112) = a2;
      *a1 = &unk_1EEF5F960;
      v7 = &v8;
      v8 = a1;
      return swift::addStatusRecordToSelf(a1 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v7);
    }

    else if (swift_taskGroup_initializeWithFlags::Override)
    {

      return v6(0, a1, a2, swift_taskGroup_initializeWithFlagsImpl);
    }

    else
    {

      return swift_taskGroup_initializeWithFlagsSlow(0, a1, a2);
    }
  }
}

uint64_t swift_taskGroup_initializeWithFlags(swift *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_taskGroup_initializeWithFlags::Override;
  if (swift_taskGroup_initializeWithFlags::Override == 1)
  {
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    if ((a1 & 0x100) != 0)
    {
      v6 = &unk_1EEF5F8E0;
    }

    else
    {
      v6 = &unk_1EEF5F960;
    }

    v9[1] = v3;
    v9[2] = v4;
    *(a2 + 8) = 2;
    *(a2 + 112) = a3;
    *a2 = v6;
    v8 = v9;
    v9[0] = a2;
    return swift::addStatusRecordToSelf(a2 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v8);
  }

  else if (swift_taskGroup_initializeWithFlags::Override)
  {

    return v5(a1, a2, a3, swift_taskGroup_initializeWithFlagsImpl);
  }

  else
  {

    return swift_taskGroup_initializeWithFlagsSlow(a1, a2, a3);
  }
}

uint64_t swift_taskGroup_initializeWithFlagsImpl(__int16 a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  if ((a1 & 0x100) != 0)
  {
    v5 = &unk_1EEF5F8E0;
  }

  else
  {
    v5 = &unk_1EEF5F960;
  }

  v8[1] = v3;
  v8[2] = v4;
  *(a2 + 8) = 2;
  *(a2 + 112) = a3;
  *a2 = v5;
  v7 = v8;
  v8[0] = a2;
  return swift::addStatusRecordToSelf(a2 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v7);
}

uint64_t swift_taskGroup_initializeWithFlagsSlow(swift *a1, uint64_t a2, uint64_t a3)
{
  Override_taskGroup_initializeWithFlags = swift::getOverride_taskGroup_initializeWithFlags(a1);
  if (Override_taskGroup_initializeWithFlags)
  {
    swift_taskGroup_initializeWithFlags::Override = Override_taskGroup_initializeWithFlags;

    return (Override_taskGroup_initializeWithFlags)(a1, a2, a3, swift_taskGroup_initializeWithFlagsImpl);
  }

  else
  {
    swift_taskGroup_initializeWithFlags::Override = 1;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    if ((a1 & 0x100) != 0)
    {
      v8 = &unk_1EEF5F8E0;
    }

    else
    {
      v8 = &unk_1EEF5F960;
    }

    *(a2 + 8) = 2;
    *(a2 + 112) = a3;
    *a2 = v8;
    v9 = &v10;
    v10 = a2;
    return swift::addStatusRecordToSelf(a2 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v9);
  }
}

void *swift_taskGroup_initializeWithOptions(swift *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_taskGroup_initializeWithOptions::Override;
  if (swift_taskGroup_initializeWithOptions::Override == 1)
  {
    if (!a4)
    {
LABEL_5:
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(a2 + 40) = 0;
      if ((a1 & 0x100) != 0)
      {
        v5 = &unk_1EEF5F8E0;
      }

      else
      {
        v5 = &unk_1EEF5F960;
      }

      *(a2 + 8) = 2;
      *(a2 + 112) = a3;
      *a2 = v5;
      v7 = &v8;
      v8 = a2;
      return swift::addStatusRecordToSelf(a2 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v7);
    }

    while (*a4 != 4)
    {
      a4 = *(a4 + 8);
      if (!a4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!swift_taskGroup_initializeWithOptions::Override)
  {
LABEL_14:

    return swift_taskGroup_initializeWithOptionsSlow(a1, a2, a3, a4);
  }

  return v4(a1, a2, a3, a4, swift_taskGroup_initializeWithOptionsImpl);
}

uint64_t swift_taskGroup_initializeWithOptionsImpl(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    while (*a4 != 4)
    {
      a4 = *(a4 + 8);
      if (!a4)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_4:
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    if ((result & 0x100) != 0)
    {
      v4 = &unk_1EEF5F8E0;
    }

    else
    {
      v4 = &unk_1EEF5F960;
    }

    *(a2 + 8) = 2;
    *(a2 + 112) = a3;
    *a2 = v4;
    v5 = &v6;
    v6 = a2;
    return swift::addStatusRecordToSelf(a2 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v5);
  }

  return result;
}

void *swift_taskGroup_initializeWithOptionsSlow(swift *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift::getOverride_taskGroup_initializeWithOptions(a1);
  if (result)
  {
    swift_taskGroup_initializeWithOptions::Override = result;

    return (result)(a1, a2, a3, a4, swift_taskGroup_initializeWithOptionsImpl);
  }

  else
  {
    swift_taskGroup_initializeWithOptions::Override = 1;
    if (a4)
    {
      while (*a4 != 4)
      {
        a4 = *(a4 + 8);
        if (!a4)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(a2 + 40) = 0;
      if ((a1 & 0x100) != 0)
      {
        v9 = &unk_1EEF5F8E0;
      }

      else
      {
        v9 = &unk_1EEF5F960;
      }

      *(a2 + 8) = 2;
      *(a2 + 112) = a3;
      *a2 = v9;
      v10 = &v11;
      v11 = a2;
      return swift::addStatusRecordToSelf(a2 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v10);
    }
  }

  return result;
}

uint64_t swift_taskGroup_destroy(swift *a1)
{
  if (swift_taskGroup_destroy::Override == 1)
  {
    return (*(*a1 + 16))();
  }

  if (swift_taskGroup_destroy::Override)
  {
    return swift_taskGroup_destroy::Override(a1, swift_taskGroup_destroyImpl);
  }

  return swift_taskGroup_destroySlow(a1);
}

uint64_t swift_taskGroup_destroySlow(swift *a1)
{
  Override_taskGroup_destroy = swift::getOverride_taskGroup_destroy(a1);
  if (Override_taskGroup_destroy)
  {
    swift_taskGroup_destroy::Override = Override_taskGroup_destroy;

    return (Override_taskGroup_destroy)(a1, swift_taskGroup_destroyImpl);
  }

  else
  {
    swift_taskGroup_destroy::Override = 1;
    v4 = *(*a1 + 16);

    return v4(a1);
  }
}

uint64_t swift_taskGroup_wait_next_throwing(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (swift_taskGroup_wait_next_throwing::Override == 1)
  {
    return swift_taskGroup_wait_next_throwingImpl(a1, a2, a3, a4);
  }

  if (swift_taskGroup_wait_next_throwing::Override)
  {
    return swift_taskGroup_wait_next_throwing::Override(a1, a2, a3, a4, swift_taskGroup_wait_next_throwingImpl);
  }

  return swift_taskGroup_wait_next_throwingSlow(a1, a2, a3, a4);
}

uint64_t swift_taskGroup_wait_next_throwingImpl(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v57 = v4;
  Current = swift_task_getCurrent();
  Current[7] = task_group_wait_resume_adapter;
  v10 = Current + 8;
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0;
  }

  *v10 = v11;
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  a4[1] = v12;
  v53 = (Current + 7);
  if (v4)
  {
    v13 = v4;
  }

  else
  {
    v13 = 0;
  }

  *a4 = v13;
  a4[2] = 0;
  a4[3] = a1;
  os_unfair_lock_lock((a2 + 40));
  v14 = atomic_fetch_or_explicit((a2 + 48), 0x4000000000000000uLL, memory_order_acquire);
  v15 = (*(*a2 + 24))(a2);
  v16 = 0x7FFFFFFFLL;
  if (v15)
  {
    v16 = 0x3FFFFFFFFFFFFFFFLL;
  }

  if ((v16 & v14) != 0)
  {
    explicit = atomic_load_explicit((a2 + 56), memory_order_acquire);
    if ((v14 & 0x3FFFFFFF80000000) == 0)
    {
LABEL_20:
      if (*MEMORY[0x1E69E7CF0])
      {
        (*MEMORY[0x1E69E7CF0])(Current);
      }

      v23 = swift::_swift_task_alloc_specific(Current, 0x30);
      _X2 = 0;
      _X3 = 0;
      *v23 = 0;
      *(v23 + 8) = 0;
      *(v23 + 32) = 3;
      *(v23 + 40) = Current;
      *(v23 + 16) = a2;
      Current[20] = v23;
      __asm { CASP            X2, X3, X2, X3, [X8] }

      v55[1] = 0;
      v56 = v23;
      v54[0] = &v56;
      v54[1] = v55;
      v55[0] = _X2;
      swift::addStatusRecord(Current, v23, v55, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, v54);
      swift_task_exitThreadLocalContext();
      swift::restoreTaskVoucher(Current, v31);
      v32 = explicit;
      atomic_compare_exchange_strong((a2 + 56), &v32, Current);
      if (v32 != explicit)
      {
        v33 = v32;
        do
        {
          atomic_compare_exchange_strong((a2 + 56), &v33, Current);
          _ZF = v33 == v32;
          v32 = v33;
        }

        while (!_ZF);
      }

      os_unfair_lock_unlock((a2 + 40));
      return swift::_swift_task_clearCurrent(v34);
    }

    v18 = v14 | 0x4000000000000000;
    v19 = v14 | 0x4000000000000000;
    while (1)
    {
      v22 = (*(*a2 + 24))(a2) ? 0xBFFFFFFFFFFFFFFFLL : 0xBFFFFFFF7FFFFFFFLL;
      atomic_compare_exchange_strong((a2 + 48), &v19, v22 + v18);
      if (v19 == v18)
      {
        break;
      }

      v18 = v19;
      if ((v19 & 0x3FFFFFFF80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    v39 = *(a2 + 104);
    if (v39)
    {
      v40 = *(a2 + 72);
      v41 = *(*(v40 + ((*(a2 + 96) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a2 + 96) & 0x1FFLL));
      v42 = *(a2 + 96) + 1;
      *(a2 + 96) = v42;
      *(a2 + 104) = v39 - 1;
      if (v42 >= 0x400)
      {
        MEMORY[0x1865D4B40](*v40, 4096, 7);
        *(a2 + 72) += 8;
        *(a2 + 96) -= 512;
      }

      if ((v41 & 3) == 1)
      {
        swift::swift_Concurrency_fatalError(0, "accumulating task group should never use raw-errors!", v20, v21);
      }

      v43 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
      v44 = *((v41 & 0xFFFFFFFFFFFFFFFCLL) + 32);
      v45 = 192;
      if ((v44 & 0x1000000) == 0)
      {
        v45 = 176;
      }

      if ((v41 & 3) != 0)
      {
        v46 = v43 + v45 + ((v44 >> 23) & 8);
        if ((v41 & 3) == 3)
        {
          v47 = *(v46 + 16);
          if (*MEMORY[0x1E69E7CE8])
          {
            (*MEMORY[0x1E69E7CE8])(v43);
          }

          os_unfair_lock_unlock((a2 + 40));
          a4[2] = v47;
          MEMORY[0x1865D4960](v47);
        }

        else
        {
          v49 = *(v46 + 8);
          v50 = *(*(v49 - 8) + 80);
          v51 = v50 + v46 + 24;
          if (*MEMORY[0x1E69E7CE8])
          {
            (*MEMORY[0x1E69E7CE8])(v43);
          }

          os_unfair_lock_unlock((a2 + 40));
          v52 = a4[3];
          (*(*(v49 - 8) + 16))(v52, v51 & ~v50, v49);
          (*(*(v49 - 8) + 56))(v52, 0, 1, v49);
        }

        swift::_swift_taskGroup_detachChild(a2, v43, v48);

        goto LABEL_29;
      }
    }
  }

  else
  {
    atomic_fetch_and_explicit((a2 + 48), 0xBFFFFFFFFFFFFFFFLL, memory_order_release);
  }

  v36 = *(a2 + 112);
  os_unfair_lock_unlock((a2 + 40));
  (*(*(v36 - 8) + 56))(a4[3], 1, 1, v36);
LABEL_29:
  v37 = *v53;
  if (*v10)
  {
    v38 = *v10;
  }

  return v37();
}

uint64_t swift_taskGroup_wait_next_throwingSlow(swift *a1, uint64_t a2, uint64_t a3, void *a4)
{
  Override_taskGroup_wait_next_throwing = swift::getOverride_taskGroup_wait_next_throwing(a1);
  if (Override_taskGroup_wait_next_throwing)
  {
    swift_taskGroup_wait_next_throwing::Override = Override_taskGroup_wait_next_throwing;

    return (Override_taskGroup_wait_next_throwing)(a1, a2, a3, a4, swift_taskGroup_wait_next_throwingImpl);
  }

  else
  {
    swift_taskGroup_wait_next_throwing::Override = 1;

    return swift_taskGroup_wait_next_throwingImpl(a1, a2, a3, a4);
  }
}

uint64_t swift_taskGroup_isEmpty(swift *a1)
{
  v2 = swift_taskGroup_isEmpty::Override;
  if (swift_taskGroup_isEmpty::Override == 1)
  {
    v3 = *(a1 + 6);
    v4 = (*(*a1 + 24))(a1);
    v5 = 0x7FFFFFFFLL;
    if (v4)
    {
      v5 = 0x3FFFFFFFFFFFFFFFLL;
    }

    return (v5 & v3) == 0;
  }

  else if (swift_taskGroup_isEmpty::Override)
  {

    return v2(a1, swift_taskGroup_isEmptyImpl);
  }

  else
  {

    return swift_taskGroup_isEmptySlow(a1);
  }
}

BOOL swift_taskGroup_isEmptyImpl(swift::TaskGroup *a1)
{
  v1 = *(a1 + 6);
  v2 = (*(*a1 + 24))(a1);
  v3 = 0x7FFFFFFFLL;
  if (v2)
  {
    v3 = 0x3FFFFFFFFFFFFFFFLL;
  }

  return (v3 & v1) == 0;
}

uint64_t swift_taskGroup_isEmptySlow(swift *a1)
{
  isEmpty = swift::getOverride_taskGroup_isEmpty(a1);
  if (isEmpty)
  {
    swift_taskGroup_isEmpty::Override = isEmpty;

    return (isEmpty)(a1, swift_taskGroup_isEmptyImpl);
  }

  else
  {
    swift_taskGroup_isEmpty::Override = 1;
    v4 = *(a1 + 6);
    v5 = (*(*a1 + 24))(a1);
    v6 = 0x7FFFFFFFLL;
    if (v5)
    {
      v6 = 0x3FFFFFFFFFFFFFFFLL;
    }

    return (v6 & v4) == 0;
  }
}

uint64_t swift_taskGroup_isCancelled(swift *a1)
{
  if (swift_taskGroup_isCancelled::Override == 1)
  {
    return *(a1 + 6) >> 63;
  }

  if (swift_taskGroup_isCancelled::Override)
  {
    return swift_taskGroup_isCancelled::Override(a1, swift_taskGroup_isCancelledImpl);
  }

  return swift_taskGroup_isCancelledSlow(a1);
}

uint64_t swift_taskGroup_isCancelledSlow(swift *a1)
{
  isCancelled = swift::getOverride_taskGroup_isCancelled(a1);
  if (isCancelled)
  {
    swift_taskGroup_isCancelled::Override = isCancelled;

    return (isCancelled)(a1, swift_taskGroup_isCancelledImpl);
  }

  else
  {
    swift_taskGroup_isCancelled::Override = 1;
    return *(a1 + 6) >> 63;
  }
}

swift::TaskGroup *swift_taskGroup_cancelAll(atomic_ullong *a1)
{
  v2 = swift_taskGroup_cancelAll::Override;
  if (swift_taskGroup_cancelAll::Override == 1)
  {
    result = swift_task_getCurrent();
    if ((atomic_fetch_or_explicit(a1 + 6, 0x8000000000000000, memory_order_relaxed) & 0x8000000000000000) == 0)
    {

      return swift::_swift_taskGroup_cancel_unlocked(a1, result, v4);
    }
  }

  else if (swift_taskGroup_cancelAll::Override)
  {

    return v2(a1, swift_taskGroup_cancelAllImpl);
  }

  else
  {

    return swift_taskGroup_cancelAllSlow(a1);
  }

  return result;
}

swift::TaskGroup *swift_taskGroup_cancelAllImpl(atomic_ullong *a1)
{
  result = swift_task_getCurrent();
  if ((atomic_fetch_or_explicit(a1 + 6, 0x8000000000000000, memory_order_relaxed) & 0x8000000000000000) == 0)
  {

    return swift::_swift_taskGroup_cancel_unlocked(a1, result, v3);
  }

  return result;
}

swift::TaskGroup *swift_taskGroup_cancelAllSlow(atomic_ullong *a1)
{
  Override_taskGroup_cancelAll = swift::getOverride_taskGroup_cancelAll(a1);
  if (Override_taskGroup_cancelAll)
  {
    swift_taskGroup_cancelAll::Override = Override_taskGroup_cancelAll;

    return (Override_taskGroup_cancelAll)(a1, swift_taskGroup_cancelAllImpl);
  }

  else
  {
    swift_taskGroup_cancelAll::Override = 1;
    result = swift_task_getCurrent();
    if ((atomic_fetch_or_explicit(a1 + 6, 0x8000000000000000, memory_order_relaxed) & 0x8000000000000000) == 0)
    {

      return swift::_swift_taskGroup_cancel_unlocked(a1, result, v4);
    }
  }

  return result;
}

uint64_t swift_taskGroup_addPending(atomic_ullong *a1, char a2)
{
  if (swift_taskGroup_addPending::Override == 1)
  {
    return swift_taskGroup_addPendingImpl(a1, a2 & 1);
  }

  if (swift_taskGroup_addPending::Override)
  {
    return swift_taskGroup_addPending::Override(a1, a2 & 1, swift_taskGroup_addPendingImpl);
  }

  return swift_taskGroup_addPendingSlow(a1, a2 & 1);
}

BOOL swift_taskGroup_addPendingImpl(atomic_ullong *a1, char a2)
{
  v4 = atomic_fetch_add_explicit(a1 + 6, 1uLL, memory_order_relaxed) + 1;
  if ((*(*a1 + 24))(a1))
  {
    v5 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0x7FFFFFFFLL;
  }

  v6 = v5 & v4;
  if ((*(*a1 + 24))(a1))
  {
    v7 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0x7FFFFFFFLL;
  }

  if (v6 == v7)
  {
    (*(*a1 + 24))(a1);
    memset(&v18, 0, sizeof(v18));
    std::string::append(&v18, "TaskGroupStatus{ ");
    std::string::append(&v18, "C:");
    if (v4 >= 0)
    {
      v9 = "n";
    }

    else
    {
      v9 = "y";
    }

    std::string::append(&v18, v9);
    std::string::append(&v18, " W:");
    if ((v4 & 0x4000000000000000) != 0)
    {
      v10 = "y";
    }

    else
    {
      v10 = "n";
    }

    std::string::append(&v18, v10);
    if (((*(*a1 + 24))(a1) & 1) == 0)
    {
      std::string::append(&v18, " R:");
      std::to_string(&v17, (v4 >> 31) & 0x7FFFFFFF);
      v11 = (v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v17 : v17.__r_.__value_.__r.__words[0];
      v12 = (v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v17.__r_.__value_.__r.__words[2]) : v17.__r_.__value_.__l.__size_;
      std::string::append(&v18, v11, v12);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }
    }

    std::string::append(&v18, " P:");
    v13 = (*(*a1 + 24))(a1);
    v14 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = 0x7FFFFFFFLL;
    }

    std::to_string(&v17, v14 & v4);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v17;
    }

    else
    {
      v15 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    std::string::append(&v18, v15, size);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  if ((a2 & 1) == 0 && v4 < 0)
  {
    v4 = atomic_fetch_add_explicit(a1 + 6, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) - 1;
  }

  return v4 >= 0;
}

uint64_t swift_taskGroup_addPendingSlow(swift *a1, char a2)
{
  Override_taskGroup_addPending = swift::getOverride_taskGroup_addPending(a1);
  if (Override_taskGroup_addPending)
  {
    swift_taskGroup_addPending::Override = Override_taskGroup_addPending;

    return (Override_taskGroup_addPending)(a1, a2 & 1, swift_taskGroup_addPendingImpl);
  }

  else
  {
    swift_taskGroup_addPending::Override = 1;

    return swift_taskGroup_addPendingImpl(a1, a2 & 1);
  }
}

void swift_taskGroup_waitAll(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (swift_taskGroup_waitAll::Override == 1)
  {
    swift_taskGroup_waitAllImpl(a1, a2, a3, a4, a5);
  }

  else if (swift_taskGroup_waitAll::Override)
  {
    swift_taskGroup_waitAll::Override(a1, a2, a3, a4, a5, swift_taskGroup_waitAllImpl);
  }

  else
  {
    swift_taskGroup_waitAllSlow(a1, a2, a3, a4, a5);
  }
}

void swift_taskGroup_waitAllImpl(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v50 = v5;
  Current = swift_task_getCurrent();
  os_unfair_lock_lock(a2 + 10);
  Current[7] = task_group_wait_resume_adapter;
  v12 = Current + 8;
  if (a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = 0;
  }

  *v12 = v13;
  if (a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = 0;
  }

  a5[1] = v14;
  v46 = (Current + 7);
  if (v5)
  {
    v15 = v5;
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
  a5[2] = 0;
  a5[3] = a1;
  v16 = *&a2[28]._os_unfair_lock_opaque;
  explicit = atomic_load_explicit(&a2[12], memory_order_acquire);
  v18 = (*(*&a2->_os_unfair_lock_opaque + 24))(a2);
  v19 = 0x7FFFFFFFLL;
  if (v18)
  {
    v19 = 0x3FFFFFFFFFFFFFFFLL;
  }

  if ((v19 & explicit) != 0)
  {
    if (a3 && (*(*&a2->_os_unfair_lock_opaque + 24))(a2) && !*&a2[26]._os_unfair_lock_opaque)
    {
    }

    v20 = atomic_load_explicit(&a2[14], memory_order_acquire);
    if (*MEMORY[0x1E69E7CF0])
    {
      (*MEMORY[0x1E69E7CF0])(Current);
    }

    v21 = swift::_swift_task_alloc_specific(Current, 0x30);
    _X2 = 0;
    _X3 = 0;
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 32) = 3;
    *(v21 + 40) = Current;
    *(v21 + 16) = a2;
    Current[20] = v21;
    __asm { CASP            X2, X3, X2, X3, [X8] }

    v48[1] = 0;
    v49 = v21;
    v47[0] = &v49;
    v47[1] = v48;
    v48[0] = _X2;
    swift::addStatusRecord(Current, v21, v48, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, v47);
    swift_task_exitThreadLocalContext();
    v30 = swift::restoreTaskVoucher(Current, v29);
    v31 = v20;
    atomic_compare_exchange_strong(&a2[14], &v31, Current);
    if (v31 != v20)
    {
      v32 = v31;
      do
      {
        atomic_compare_exchange_strong(&a2[14], &v32, Current);
        _ZF = v32 == v31;
        v31 = v32;
      }

      while (!_ZF);
    }

    atomic_fetch_or_explicit(&a2[12], 0x4000000000000000uLL, memory_order_release);
    swift::_swift_task_clearCurrent(v30);
    os_unfair_lock_unlock(a2 + 10);
    return;
  }

  if (!(*(*&a2->_os_unfair_lock_opaque + 24))(a2))
  {
    goto LABEL_33;
  }

  v33 = *&a2[26]._os_unfair_lock_opaque;
  if (!v33)
  {
    goto LABEL_33;
  }

  v34 = *&a2[18]._os_unfair_lock_opaque;
  v35 = *(*(v34 + ((*&a2[24]._os_unfair_lock_opaque >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*&a2[24]._os_unfair_lock_opaque & 0x1FFLL));
  v36 = *&a2[24]._os_unfair_lock_opaque + 1;
  *&a2[24]._os_unfair_lock_opaque = v36;
  *&a2[26]._os_unfair_lock_opaque = v33 - 1;
  if (v36 >= 0x400)
  {
    MEMORY[0x1865D4B40](*v34, 4096, 7);
    *&a2[18]._os_unfair_lock_opaque += 8;
    *&a2[24]._os_unfair_lock_opaque -= 512;
  }

  if ((v35 & 3) == 1)
  {
    v37 = 0;
    v41 = v35 & 0xFFFFFFFFFFFFFFFCLL;
    goto LABEL_37;
  }

  if ((v35 & 3) != 3)
  {
LABEL_33:
    v41 = 0;
    v37 = 0;
    v42 = 0;
    if (!a3)
    {
      goto LABEL_38;
    }

LABEL_34:
    a5[2] = a3;
    MEMORY[0x1865D4960](a3, v41);
    if (!v37)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v37 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
  v38 = *((v35 & 0xFFFFFFFFFFFFFFFCLL) + 32);
  v39 = 192;
  if ((v38 & 0x1000000) == 0)
  {
    v39 = 176;
  }

  v40 = v37 + v39 + ((v38 >> 23) & 8);
  v16 = *(v40 + 8);
  v41 = *(v40 + 16);
LABEL_37:
  v42 = 3;
  if (a3)
  {
    goto LABEL_34;
  }

LABEL_38:
  if (v42 > 1)
  {
    a5[2] = v41;
    MEMORY[0x1865D4960](v41);
    if (!v37)
    {
      goto LABEL_43;
    }
  }

  else
  {
    (*(*(v16 - 8) + 56))(a5[3], 1, 1, v16);
    if (!v37)
    {
      goto LABEL_43;
    }
  }

LABEL_42:
  swift::_swift_taskGroup_detachChild(a2, v37, v43);

LABEL_43:
  os_unfair_lock_unlock(a2 + 10);
  v44 = *v46;
  if (*v12)
  {
    v45 = *v12;
  }

  v44();
}

void swift_taskGroup_waitAllSlow(swift *a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, void *a5)
{
  Override_taskGroup_waitAll = swift::getOverride_taskGroup_waitAll(a1);
  if (Override_taskGroup_waitAll)
  {
    swift_taskGroup_waitAll::Override = Override_taskGroup_waitAll;

    (Override_taskGroup_waitAll)(a1, a2, a3, a4, a5, swift_taskGroup_waitAllImpl);
  }

  else
  {
    swift_taskGroup_waitAll::Override = 1;

    swift_taskGroup_waitAllImpl(a1, a2, a3, a4, a5);
  }
}

uint64_t swift_task_cancel_group_child_tasks(swift *a1)
{
  v2 = swift_task_cancel_group_child_tasks::Override;
  if (swift_task_cancel_group_child_tasks::Override == 1)
  {
    Current = swift_task_getCurrent();

    return swift::_swift_taskGroup_cancel_unlocked(a1, Current, v4);
  }

  else if (swift_task_cancel_group_child_tasks::Override)
  {

    return v2(a1, swift_task_cancel_group_child_tasksImpl);
  }

  else
  {

    return swift_task_cancel_group_child_tasksSlow(a1);
  }
}

uint64_t swift_task_cancel_group_child_tasksImpl(swift::TaskGroup *a1)
{
  Current = swift_task_getCurrent();

  return swift::_swift_taskGroup_cancel_unlocked(a1, Current, v3);
}

uint64_t swift_task_cancel_group_child_tasksSlow(swift *a1)
{
  Override_task_cancel_group_child_tasks = swift::getOverride_task_cancel_group_child_tasks(a1);
  if (Override_task_cancel_group_child_tasks)
  {
    swift_task_cancel_group_child_tasks::Override = Override_task_cancel_group_child_tasks;

    return (Override_task_cancel_group_child_tasks)(a1, swift_task_cancel_group_child_tasksImpl);
  }

  else
  {
    swift_task_cancel_group_child_tasks::Override = 1;
    Current = swift_task_getCurrent();

    return swift::_swift_taskGroup_cancel_unlocked(a1, Current, v5);
  }
}

void anonymous namespace::DiscardingTaskGroup::~DiscardingTaskGroup(_anonymous_namespace_::DiscardingTaskGroup *this)
{

  JUMPOUT(0x1865D4B40);
}

uint64_t anonymous namespace::DiscardingTaskGroup::destroy(uint64_t (***this)(_anonymous_namespace_::DiscardingTaskGroup *), uint64_t a2, uint64_t a3)
{
  swift::removeStatusRecordFromSelf((this + 1), 0, a3);
  v4 = **this;

  return v4(this);
}

void anonymous namespace::DiscardingTaskGroup::offer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 40));
  explicit = atomic_load_explicit((a1 + 48), memory_order_acquire);
  v7 = *(a3 - 8);
  v8 = atomic_fetch_add_explicit((a1 + 48), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) - 1;
  if (!v7)
  {
    if ((v8 & 0x4000000000000000) == 0)
    {
      goto LABEL_14;
    }

    v13 = (*(*a1 + 24))(a1);
    v14 = 0x7FFFFFFFLL;
    if (v13)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if ((v14 & v8) != 0)
    {
      goto LABEL_14;
    }

    v15 = atomic_exchange_explicit((a1 + 56), 0, memory_order_acquire);
    if (v15)
    {
      v22 = *(a1 + 104);
      if (!v22)
      {
        os_unfair_lock_unlock((a1 + 40));
        if (!v34)
        {
          return;
        }

        v33 = v34;
        goto LABEL_42;
      }

      v23 = *(a1 + 72);
      v18 = *(*(v23 + ((*(a1 + 96) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 96) & 0x1FFLL));
      v24 = *(a1 + 96) + 1;
      *(a1 + 96) = v24;
      *(a1 + 104) = v22 - 1;
      if (v24 >= 0x400)
      {
        MEMORY[0x1865D4B40](*v23, 4096, 7);
        *(a1 + 72) += 8;
        *(a1 + 96) -= 512;
      }

      swift::_swift_taskGroup_detachChild(a1, a2, v6);
      if ((v18 & 3) != 3)
      {
        if ((v18 & 3) != 1)
        {
          swift::swift_Concurrency_fatalError(0, "only errors can be stored by a discarding task group, yet it wasn't an error! 2", v25, v26);
        }

        goto LABEL_31;
      }

LABEL_32:
      v27 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 32);
      v28 = 192;
      if ((v27 & 0x1000000) == 0)
      {
        v28 = 176;
      }

      *(*(v15 + 64) + 16) = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + v28 + ((v27 >> 23) & 8) + 16);
      MEMORY[0x1865D4960]();
      swift::_swift_taskGroup_detachChild(a1, (v18 & 0xFFFFFFFFFFFFFFFCLL), v29);
      if ((*(*a1 + 24))(a1))
      {
      }

      goto LABEL_39;
    }

LABEL_48:
    swift::swift_Concurrency_fatalError(0, "Claimed NULL waitingTask!", v6, v11);
  }

  v9 = *(a2 + 176);
  if ((atomic_fetch_or_explicit((a1 + 48), 0x8000000000000000, memory_order_relaxed) & 0x8000000000000000) == 0)
  {
    swift::_swift_taskGroup_cancel_unlocked(a1, v9, v6);
  }

  if ((v8 & 0x4000000000000000) == 0)
  {
    goto LABEL_52;
  }

  v10 = (*(*a1 + 24))(a1, v9);
  v12 = 0x7FFFFFFFLL;
  if (v10)
  {
    v12 = 0x3FFFFFFFFFFFFFFFLL;
  }

  if ((v12 & v8) != 0)
  {
LABEL_52:
    if (!*(a1 + 104))
    {
      (*(*a1 + 40))(a1, a2, 1);
LABEL_15:

      os_unfair_lock_unlock((a1 + 40));
      return;
    }

LABEL_14:
    swift::_swift_taskGroup_detachChild(a1, a2, v6);
    goto LABEL_15;
  }

  v15 = atomic_exchange_explicit((a1 + 56), 0, memory_order_acquire);
  if (!v15)
  {
    goto LABEL_48;
  }

  v16 = *(a1 + 104);
  if (!v16)
  {
    swift::_swift_taskGroup_detachChild(a1, a2, v6);
    v30 = *(a2 + 32);
    v31 = 192;
    if ((v30 & 0x1000000) == 0)
    {
      v31 = 176;
    }

    *(*(v15 + 64) + 16) = *(a2 + v31 + ((v30 >> 23) & 8) + 16);
    MEMORY[0x1865D4960]();
    swift::_swift_taskGroup_detachChild(a1, a2, v32);
    (*(*a1 + 24))(a1);
    goto LABEL_39;
  }

  v17 = *(a1 + 72);
  v18 = *(*(v17 + ((*(a1 + 96) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 96) & 0x1FFLL));
  v19 = *(a1 + 96) + 1;
  *(a1 + 96) = v19;
  *(a1 + 104) = v16 - 1;
  if (v19 >= 0x400)
  {
    MEMORY[0x1865D4B40](*v17, 4096, 7);
    *(a1 + 72) += 8;
    *(a1 + 96) -= 512;
  }

  swift::_swift_taskGroup_detachChild(a1, a2, v6);
  if ((v18 & 3) == 3)
  {
    goto LABEL_32;
  }

  if ((v18 & 3) != 1)
  {
    swift::swift_Concurrency_fatalError(0, "only errors can be stored by a discarding task group, yet it wasn't an error! 1", v20, v21);
  }

LABEL_31:
  *(*(v15 + 64) + 16) = v18 & 0xFFFFFFFFFFFFFFFCLL;
  MEMORY[0x1865D4960]();
LABEL_39:
  if (*MEMORY[0x1E69E7CE8])
  {
    (*MEMORY[0x1E69E7CE8])(v15);
  }

  os_unfair_lock_unlock((a1 + 40));
  v33 = v15;
LABEL_42:

  swift::AsyncTask::flagAsAndEnqueueOnExecutor(v33, 0, 0);
}

uint64_t *anonymous namespace::DiscardingTaskGroup::enqueueCompletedTask(uint64_t *this, unint64_t a2, int a3)
{
  if (a3)
  {
    v3 = this;
  }

  return this;
}

void anonymous namespace::TaskGroupBase::~TaskGroupBase(_anonymous_namespace_::TaskGroupBase *this)
{
  *this = &unk_1EEF5F920;
  v2 = *(this + 9);
  v3 = *(this + 10);
  *(this + 13) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      MEMORY[0x1865D4B40](*v2, 4096, 7);
      v3 = *(this + 10);
      v2 = (*(this + 9) + 8);
      *(this + 9) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(this + 12) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      MEMORY[0x1865D4B40](v6, 4096, 7);
    }

    while (v2 != v3);
    v8 = *(this + 9);
    v7 = *(this + 10);
    if (v7 != v8)
    {
      *(this + 10) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v9 = *(this + 8);
  if (v9)
  {
    MEMORY[0x1865D4B40](v9, *(this + 11) - v9, 7);
  }
}

uint64_t anonymous namespace::TaskGroupBase::prepareWaitingTaskWithTask(swift *a1, uint64_t a2, unsigned int *a3, uint64_t *a4, int a5, char a6, int a7)
{
  if ((a6 & 1) == 0)
  {
    v18 = (a1 + 48);
    for (i = (*(*a1 + 24))(a1) == 0; ; i = (*(*a1 + 24))(a1) == 0)
    {
      v20 = i ? 0xBFFFFFFF7FFFFFFFLL : 0xBFFFFFFFFFFFFFFFLL;
      v21 = *a4;
      v22 = v20 + *a4;
      v23 = *a4;
      atomic_compare_exchange_strong_explicit(v18, &v23, v22, memory_order_relaxed, memory_order_relaxed);
      if (v23 == v21)
      {
        break;
      }

      *a4 = v23;
      v18 = (a1 + 48);
    }
  }

  v12 = a3[8];
  v13 = 48;
  if ((v12 & 0x1000000) == 0)
  {
    v13 = 44;
  }

  v14 = &a3[v13] + ((v12 >> 23) & 8);
  if (a5)
  {
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
  }

  else
  {
    v16 = *(v14 + 8);
    v15 = (*(*(v16 - 8) + 80) + v14 + 24) & ~*(*(v16 - 8) + 80);
  }

  v24 = *(a2 + 64);
  if (v24)
  {
    v25 = *(a2 + 64);
  }

  if (a5)
  {
    *(v24 + 16) = v15;
    MEMORY[0x1865D4960](v15);
  }

  else
  {
    v27 = *(v24 + 24);
    (*(*(v16 - 8) + 16))(v27, v15, v16);
    (*(*(v16 - 8) + 56))(v27, 0, 1, v16);
  }

  swift::_swift_taskGroup_detachChild(a1, a3, v26);
  if ((*(*a1 + 24))(a1))
  {
    v28 = a7 == 0;
  }

  else
  {
    v28 = 1;
  }

  if (!v28 && a5 != 0)
  {
  }

  if (*MEMORY[0x1E69E7CE8])
  {
    (*MEMORY[0x1E69E7CE8])(a2);
  }

  return a2;
}

uint64_t *anonymous namespace::NaiveTaskGroupQueue<anonymous namespace::TaskGroupBase::ReadyQueueItem>::enqueue(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v4 - v5) << 6) - 1;
  }

  v8 = result[4];
  if (v7 != result[5] + v8)
  {
    goto LABEL_72;
  }

  v9 = v8 >= 0x200;
  v10 = v8 - 512;
  if (v9)
  {
    result[4] = v10;
    v103 = *v5;
    result[1] = (v5 + 8);
LABEL_8:
    goto LABEL_72;
  }

  v11 = result[3];
  v12 = &v11[-*result];
  if (v6 < v12)
  {
    result = swift_slowAlloc();
    v13 = result;
    if (v11 != v4)
    {
      v14 = v3[2];
      if (v14 != v3[3])
      {
LABEL_71:
        *v14 = v13;
        v3[2] += 8;
        goto LABEL_72;
      }

      v15 = v3[1];
      v16 = &v15[-*v3];
      if (v15 > *v3)
      {
        v17 = ((v16 >> 3) + 1) / 2;
        v18 = ((v16 >> 3) + 1) / -2;
        v19 = &v15[-8 * v17];
        v20 = v14 - v15;
        if (v14 != v15)
        {
          result = memmove(&v15[-8 * v17], v15, v14 - v15);
          v15 = v3[1];
        }

        v14 = &v19[v20];
        v3[1] = &v15[8 * v18];
        v3[2] = &v19[v20];
        goto LABEL_71;
      }

      v61 = &v14[-*v3] >> 2;
      if (v14 == *v3)
      {
        v61 = 1;
      }

      v62 = v61 >> 2;
      v63 = v61;
      result = swift_slowAlloc();
      v64 = &result[v62];
      v65 = v3[1];
      v14 = v64;
      v66 = v3[2] - v65;
      if (v66)
      {
        v14 = &v64[v66];
        v67 = v66 - 8;
        if ((v66 - 8) < 0x38)
        {
          v68 = &result[v62];
          do
          {
LABEL_68:
            v86 = *v65++;
            *v68 = v86;
            v68 += 8;
          }

          while (v68 != v14);
          goto LABEL_69;
        }

        v78 = &result[v62];
        v68 = v78;
        if ((v78 - v65) < 0x20)
        {
          goto LABEL_68;
        }

        v79 = (v67 >> 3) + 1;
        v80 = v79 & 0x3FFFFFFFFFFFFFFCLL;
        v68 = &v64[v80 * 8];
        v81 = &v65[v80];
        v82 = (v65 + 2);
        v83 = v78 + 2;
        v84 = v79 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v85 = *v82;
          *(v83 - 1) = *(v82 - 1);
          *v83 = v85;
          v82 += 2;
          v83 += 2;
          v84 -= 4;
        }

        while (v84);
        v65 = v81;
        if (v79 != (v79 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_68;
        }
      }

LABEL_69:
      v87 = *v3;
      *v3 = result;
      v3[1] = v64;
      v88 = v3[3];
      v3[2] = v14;
      v3[3] = &result[v63];
      if (v87)
      {
        result = MEMORY[0x1865D4B40](v87, v88 - v87, 7);
        v14 = v3[2];
      }

      goto LABEL_71;
    }

    v27 = v3[1];
    if (v27 != *v3)
    {
      v28 = v3[1];
LABEL_80:
      *(v28 - 1) = v13;
      v101 = v3[1];
      v3[1] = v101 - 8;
      v103 = *(v101 - 8);
      v3[1] = v101;
      goto LABEL_8;
    }

    v58 = v3[2];
    v59 = v3[3];
    if (v58 < v59)
    {
      v60 = (((v59 - v58) >> 3) + 1) / 2;
      v28 = &v27[8 * v60];
      if (v58 != v27)
      {
        memmove(&v27[8 * v60], v27, v58 - v27);
        v58 = v3[2];
      }

      v3[1] = v28;
      v3[2] = &v58[8 * v60];
      goto LABEL_80;
    }

    v69 = (v59 - v27) >> 2;
    if (v59 == v27)
    {
      v69 = 1;
    }

    v70 = (v69 + 3) >> 2;
    v71 = 8 * v69;
    v72 = swift_slowAlloc();
    v28 = (v72 + 8 * v70);
    v73 = v3[1];
    v74 = v28;
    v75 = v3[2] - v73;
    if (v75)
    {
      v74 = &v28[v75];
      v76 = v75 - 8;
      if ((v75 - 8) < 0x38)
      {
        v77 = (v72 + 8 * v70);
        do
        {
LABEL_77:
          v98 = *v73++;
          *v77 = v98;
          v77 += 8;
        }

        while (v77 != v74);
        goto LABEL_78;
      }

      v90 = 8 * v70 + v72;
      v77 = v90;
      if (v90 - v73 < 0x20)
      {
        goto LABEL_77;
      }

      v91 = (v76 >> 3) + 1;
      v92 = v91 & 0x3FFFFFFFFFFFFFFCLL;
      v77 = &v28[v92 * 8];
      v93 = &v73[v92];
      v94 = (v73 + 2);
      v95 = (v90 + 16);
      v96 = v91 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v97 = *v94;
        *(v95 - 1) = *(v94 - 1);
        *v95 = v97;
        v94 += 2;
        v95 += 2;
        v96 -= 4;
      }

      while (v96);
      v73 = v93;
      if (v91 != (v91 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_77;
      }
    }

LABEL_78:
    v99 = *v3;
    *v3 = v72;
    v3[1] = v28;
    v100 = v3[3];
    v3[2] = v74;
    v3[3] = v72 + v71;
    if (v99)
    {
      MEMORY[0x1865D4B40](v99, v100 - v99, 7);
      v28 = v3[1];
    }

    goto LABEL_80;
  }

  v21 = 2 * v12;
  if (v11 == *result)
  {
    v22 = 8;
  }

  else
  {
    v22 = v21;
  }

  v23 = swift_slowAlloc();
  v24 = (v23 + v6);
  v25 = (v23 + v22);
  v26 = swift_slowAlloc();
  v102 = a2;
  if (v6 == v22)
  {
    if (v6 < 1)
    {
      if (v4 == v5)
      {
        v29 = 1;
      }

      else
      {
        v29 = v6 >> 2;
      }

      v30 = 8 * v29;
      v31 = v26;
      v32 = swift_slowAlloc();
      v24 = (v32 + 8 * (v29 >> 2));
      v25 = (v32 + v30);
      MEMORY[0x1865D4B40](v23, v6, 7);
      v26 = v31;
      v23 = v32;
    }

    else
    {
      v24 = (v24 - (((v6 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }
  }

  *v24 = v26;
  v33 = v24 + 1;
  v34 = v3[2];
  if (v34 != v3[1])
  {
    while (v24 != v23)
    {
      v37 = v24;
LABEL_33:
      v38 = *(v34 - 8);
      v34 -= 8;
      *(v37 - 1) = v38;
      v35 = v37 - 1;
      v24 = v35;
      if (v34 == v3[1])
      {
        goto LABEL_30;
      }
    }

    if (v33 < v25)
    {
      v37 = &v24[(v25 - v33 + 1 + ((v25 - v33 + 1) >> 63)) >> 1];
      v40 = v33 - v24;
      v39 = v33 == v24;
      v33 += (v25 - v33 + 1 + ((v25 - v33 + 1) >> 63)) >> 1;
      if (!v39)
      {
        memmove(v37, v24, v40);
      }

      goto LABEL_33;
    }

    v41 = v25 - v24;
    v42 = (v25 - v24) >> 2;
    if (v25 == v24)
    {
      v42 = 1;
    }

    v43 = (v42 + 3) >> 2;
    v44 = 8 * v42;
    v45 = swift_slowAlloc();
    v46 = v45;
    v37 = (v45 + 8 * v43);
    v47 = v33 - v24;
    v39 = v33 == v24;
    v33 = v37;
    if (!v39)
    {
      v33 = (v37 + v47);
      v48 = v47 - 8;
      if (v48 >= 0x18 && 8 * v43 + v45 - v24 >= 0x20)
      {
        v52 = (v48 >> 3) + 1;
        v53 = v52 & 0x3FFFFFFFFFFFFFFCLL;
        v49 = &v37[v53];
        v50 = &v24[v53];
        v54 = (v24 + 2);
        v55 = (v45 + 8 * v43 + 16);
        v56 = v52 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v57 = *v54;
          *(v55 - 1) = *(v54 - 1);
          *v55 = v57;
          v54 += 2;
          v55 += 2;
          v56 -= 4;
        }

        while (v56);
        if (v52 == (v52 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v49 = (v45 + 8 * v43);
        v50 = v24;
      }

      do
      {
        v51 = *v50++;
        *v49++ = v51;
      }

      while (v49 != v33);
    }

LABEL_45:
    v25 = (v45 + v44);
    MEMORY[0x1865D4B40](v23, v41, 7);
    v23 = v46;
    goto LABEL_33;
  }

  v35 = v24;
LABEL_30:
  result = *v3;
  *v3 = v23;
  v3[1] = v35;
  v36 = v3[3];
  v3[2] = v33;
  v3[3] = v25;
  a2 = v102;
  if (result)
  {
    result = MEMORY[0x1865D4B40](result, v36 - result, 7);
  }

LABEL_72:
  v89 = v3[5] + v3[4];
  *(*(v3[1] + ((v89 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v89 & 0x1FF)) = a2;
  ++v3[5];
  return result;
}

uint64_t *std::__split_buffer<anonymous namespace::TaskGroupBase::ReadyQueueItem *,swift::cxx_allocator<anonymous namespace::TaskGroupBase::ReadyQueueItem *>>::emplace_back<anonymous namespace::TaskGroupBase::ReadyQueueItem *&>(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 != result[3])
  {
    goto LABEL_18;
  }

  v5 = result[1];
  v6 = &v5[-*result];
  if (v5 > *result)
  {
    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
    v3[2] = &v9[v10];
    goto LABEL_18;
  }

  v11 = &v4[-*result] >> 2;
  if (v4 == *result)
  {
    v11 = 1;
  }

  v12 = v11 >> 2;
  v13 = v11;
  result = swift_slowAlloc();
  v14 = &result[v12];
  v15 = v3[1];
  v4 = v14;
  v16 = v3[2] - v15;
  if (v16)
  {
    v4 = &v14[v16];
    v17 = v16 - 8;
    if ((v16 - 8) < 0x38)
    {
      v18 = &result[v12];
      do
      {
LABEL_15:
        v27 = *v15++;
        *v18 = v27;
        v18 += 8;
      }

      while (v18 != v4);
      goto LABEL_16;
    }

    v19 = &result[v12];
    v18 = v19;
    if ((v19 - v15) < 0x20)
    {
      goto LABEL_15;
    }

    v20 = (v17 >> 3) + 1;
    v21 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    v18 = &v14[v21 * 8];
    v22 = &v15[v21];
    v23 = (v15 + 2);
    v24 = v19 + 2;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v15 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v28 = *v3;
  *v3 = result;
  v3[1] = v14;
  v29 = v3[3];
  v3[2] = v4;
  v3[3] = &result[v13];
  if (v28)
  {
    result = MEMORY[0x1865D4B40](v28, v29 - v28, 7);
    v4 = v3[2];
  }

LABEL_18:
  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void anonymous namespace::AccumulatingTaskGroup::~AccumulatingTaskGroup(_anonymous_namespace_::AccumulatingTaskGroup *this)
{

  JUMPOUT(0x1865D4B40);
}

uint64_t anonymous namespace::AccumulatingTaskGroup::destroy(uint64_t (***this)(_anonymous_namespace_::AccumulatingTaskGroup *), uint64_t a2, uint64_t a3)
{
  swift::removeStatusRecordFromSelf((this + 1), 0, a3);
  v4 = **this;

  return v4(this);
}

void anonymous namespace::AccumulatingTaskGroup::offer(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 40));
  v11 = atomic_fetch_add_explicit((a1 + 48), 0x80000000uLL, memory_order_acquire) + 0x80000000;
  v8 = *(a3 - 8);
  if ((v11 & 0x4000000000000000) != 0)
  {
    v9 = atomic_exchange_explicit((a1 + 56), 0, memory_order_acquire);
    if (!v9)
    {
      swift::swift_Concurrency_fatalError(0, "Claimed NULL waitingTask!", v6, v7);
    }

    os_unfair_lock_unlock((a1 + 40));
    if (v10)
    {

      swift::AsyncTask::flagAsAndEnqueueOnExecutor(v10, 0, 0);
    }
  }

  else
  {
    (*(*a1 + 40))(a1, a2, v8 != 0);

    os_unfair_lock_unlock((a1 + 40));
  }
}

uint64_t *anonymous namespace::AccumulatingTaskGroup::enqueueCompletedTask(_anonymous_namespace_::AccumulatingTaskGroup *this, unint64_t a2, int a3)
{

  v6 = 2;
  if (a3)
  {
    v6 = 3;
  }
}

uint64_t __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x100) != 0)
  {
    atomic_fetch_or_explicit((**a1 + 48), 0x8000000000000000, memory_order_relaxed);
  }

  return 1;
}

uint64_t task_group_wait_resume_adapter()
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

void *swift::TaskLocal::Storage::initializeLinkParent(void *this, swift::AsyncTask *a2, swift::AsyncTask *a3)
{
  v3 = *(a3 + 17);
  if (v3)
  {
    v5 = this;
    v6 = swift::_swift_task_alloc_specific(a2, 8);
    *v6 = 4;
    *v5 = v6;
    v18 = 0;
    v19 = 0;
    v17 = &v18;
    while (1)
    {
      v9 = *v3;
      v10 = (*v3 >> 1) & 3;
      if (v10 != 1)
      {
        break;
      }

      v11 = v18;
      v12 = &v18;
      v13 = &v18;
      if (v18)
      {
        v14 = *(v3 + 1);
        while (1)
        {
          while (1)
          {
            v13 = v11;
            v15 = v11[4];
            if (v14 >= v15)
            {
              break;
            }

            v11 = *v13;
            v12 = v13;
            if (!*v13)
            {
              goto LABEL_3;
            }
          }

          if (v15 >= v14)
          {
            break;
          }

          v11 = v13[1];
          if (!v11)
          {
            v12 = v13 + 1;
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        v7 = swift_slowAlloc();
        v7[4] = *(v3 + 1);
        *v7 = 0;
        v7[1] = 0;
        v7[2] = v13;
        *v12 = v7;
        if (*v17)
        {
          v17 = *v17;
          v8 = *v12;
        }

        else
        {
          v8 = v7;
        }

        std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v18, v8);
        ++v19;
        swift::TaskLocal::ValueItem::copyTo(v3, a2);
        v9 = *v3;
      }

      v3 = (v9 & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        goto LABEL_22;
      }
    }

    if (v10 == 2)
    {
      v3 = (v9 & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
LABEL_22:
        v16 = 0;
        goto LABEL_23;
      }

      v9 = *v3;
    }

    if ((~v9 & 6) != 0)
    {
      v16 = v3;
    }

    else
    {
      v16 = 0;
    }

LABEL_23:
    *v6 = *v6 & 7 | v16;
    return std::__tree<swift::HeapObject const*,std::less<swift::HeapObject const*>,swift::cxx_allocator<swift::HeapObject const*>>::destroy(&v17, v18);
  }

  return this;
}

uint64_t swift::TaskLocal::ValueItem::copyTo(swift::TaskLocal::ValueItem *this, swift::AsyncTask *a2)
{
  v4 = *(this + 2);
  if (a2)
  {
    v5 = (a2 + 136);
  }

  else
  {
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 840);
  }

  v6 = *(this + 1);
  v7 = *v5;
  v8 = (*(*(v4 - 8) + 80) + 24) & ~*(*(v4 - 8) + 80);
  v9 = *(*(v4 - 8) + 64);
  if (a2)
  {
    v10 = swift::_swift_task_alloc_specific(a2, (v8 + v9));
  }

  else
  {
    v10 = malloc_type_malloc(v8 + v9, 0x1F0241C1uLL);
  }

  v11 = v10;
  *v10 = v7 & 0xFFFFFFFFFFFFFFF9;
  v10[1] = v6;
  v10[2] = v4;
  result = (*(*(*(this + 2) - 8) + 16))(v10 + ((*(*(v4 - 8) + 80) + 24) & ~*(*(v4 - 8) + 80)), this + ((*(*(*(this + 2) - 8) + 80) + 24) & ~*(*(*(this + 2) - 8) + 80)));
  *(a2 + 17) = v11;
  return result;
}

void swift::TaskLocal::Storage::destroy(uint64_t **this, swift::AsyncTask *a2, const char *a3, char *a4)
{
  v5 = *this;
  *this = 0;
  while (v5)
  {
    v6 = *v5;
    v7 = (*v5 >> 1) & 3;
    if (v7 >= 2)
    {
      v8 = v7 == 2;
      if (a2)
      {
        goto LABEL_8;
      }

LABEL_2:
      free(v5);
      v5 = (v6 & 0xFFFFFFFFFFFFFFF8);
      if (v8)
      {
        return;
      }
    }

    else
    {
      (*(*(v5[2] - 8) + 8))(v5 + ((*(*(v5[2] - 8) + 80) + 24) & ~*(*(v5[2] - 8) + 80)));
      v8 = 0;
      if (!a2)
      {
        goto LABEL_2;
      }

LABEL_8:
      swift::_swift_task_dealloc_specific(a2, v5, a3, a4);
      v5 = (v6 & 0xFFFFFFFFFFFFFFF8);
      if (v8)
      {
        return;
      }
    }
  }
}

uint64_t swift::TaskLocal::Storage::pushValue(swift *a1, swift *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  hasTaskGroupStatusRecord = swift_task_hasTaskGroupStatusRecord(a1);
  if (a2)
  {
    v11 = (a2 + 136);
  }

  else
  {
    v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 840);
  }

  v12 = *v11;
  v13 = (*(*(a5 - 8) + 80) + 24) & ~*(*(a5 - 8) + 80);
  v14 = *(*(a5 - 8) + 64);
  if (a2)
  {
    v15 = swift::_swift_task_alloc_specific(a2, (v13 + v14));
  }

  else
  {
    v15 = malloc_type_malloc(v13 + v14, 0x1F0241C1uLL);
  }

  v16 = v15;
  v17 = 2;
  if ((hasTaskGroupStatusRecord & 1) == 0)
  {
    v17 = 0;
  }

  *v15 = v12 & 0xFFFFFFFFFFFFFFF9 | v17;
  v15[1] = a3;
  v15[2] = a5;
  result = (*(*(a5 - 8) + 32))(v15 + ((*(*(a5 - 8) + 80) + 24) & ~*(*(a5 - 8) + 80)), a4, a5);
  *a1 = v16;
  return result;
}

uint64_t swift::TaskLocal::Storage::copyTo(swift::TaskLocal::ValueItem **this, swift::AsyncTask *a2)
{
  v15 = 0;
  v16 = 0;
  v14 = &v15;
  v2 = *this;
  if (*this)
  {
    do
    {
      v4 = *v2;
      if ((*v2 & 4) != 0)
      {
        if ((~v4 & 6) == 0)
        {
          break;
        }
      }

      else
      {
        v5 = v15;
        v6 = &v15;
        v7 = &v15;
        if (v15)
        {
          v8 = *(v2 + 1);
          while (1)
          {
            while (1)
            {
              v7 = v5;
              v9 = v5[4];
              if (v8 >= v9)
              {
                break;
              }

              v5 = *v7;
              v6 = v7;
              if (!*v7)
              {
                goto LABEL_13;
              }
            }

            if (v9 >= v8)
            {
              break;
            }

            v5 = v7[1];
            if (!v5)
            {
              v6 = v7 + 1;
              goto LABEL_13;
            }
          }
        }

        else
        {
LABEL_13:
          v10 = swift_slowAlloc();
          v10[4] = *(v2 + 1);
          *v10 = 0;
          v10[1] = 0;
          v10[2] = v7;
          *v6 = v10;
          if (*v14)
          {
            v14 = *v14;
            v11 = *v6;
          }

          else
          {
            v11 = v10;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v15, v11);
          ++v16;
          swift::TaskLocal::ValueItem::copyTo(v2, a2);
          v4 = *v2;
        }
      }

      v2 = (v4 & 0xFFFFFFFFFFFFFFF8);
    }

    while ((v4 & 0xFFFFFFFFFFFFFFF8) != 0);
    v12 = v15;
  }

  else
  {
    v12 = 0;
  }

  return std::__tree<swift::HeapObject const*,std::less<swift::HeapObject const*>,swift::cxx_allocator<swift::HeapObject const*>>::destroy(&v14, v12);
}

swift::TaskLocal::StopLookupScope *swift::TaskLocal::StopLookupScope::StopLookupScope(swift::TaskLocal::StopLookupScope *this)
{
  Current = swift_task_getCurrent();
  *this = Current;
  if (Current)
  {
    v3 = (Current + 136);
    *(this + 1) = Current + 136;
    v4 = (this + 8);
  }

  else
  {
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 840);
    *(this + 1) = v3;
    v4 = (this + 8);
    if (!v3)
    {
      return this;
    }
  }

  v5 = *v3;
  if (*v3)
  {
    v6 = swift::_swift_task_alloc_specific(Current, 8);
    *v6 = v5 | 6;
    *v3 = v6;
  }

  else
  {
    *v4 = 0;
  }

  return this;
}

void swift::TaskLocal::StopLookupScope::~StopLookupScope(swift::TaskLocal::StopLookupScope *this, uint64_t a2, const char *a3, char *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    v5 = *this;
    v6 = *v4;
    v7 = **v4;
    *v4 = v7 & 0xFFFFFFFFFFFFFFF8;
    if ((v7 & 4) == 0)
    {
      (*(*(*(v6 + 2) - 8) + 8))(v6 + ((*(*(*(v6 + 2) - 8) + 80) + 24) & ~*(*(*(v6 + 2) - 8) + 80)));
    }

    if (v5)
    {
      swift::_swift_task_dealloc_specific(v5, v6, a3, a4);
    }

    else
    {
      free(v6);
    }
  }
}

uint64_t swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroup(unsigned __int8 *a1, const char *a2, char a3, uint64_t a4)
{
  v5 = swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroup::Override;
  if (swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroup::Override == 1)
  {
    swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroupImpl(a1, a2, 0, a4);
  }

  if (swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroup::Override)
  {
    v6 = a3 & 1;

    return v5(a1, a2, v6, a4, swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroupImpl);
  }

  else
  {
    v8 = a3 & 1;

    return swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroupSlow(a1, a2, v8, a4);
  }
}

void swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroupImpl(const unsigned __int8 *a1, const char *a2, BOOL a3, uint64_t a4)
{
  v9 = 0;
  swift_asprintf(&v9, a2, a2, a1, a4);
  shouldReportFatalErrorsToDebugger = _swift_shouldReportFatalErrorsToDebugger();
  v5 = v9;
  if (shouldReportFatalErrorsToDebugger)
  {
    memset(&v7[2], 0, 48);
    v8 = 0;
    v7[0] = xmmword_1E6A180B0;
    v7[1] = *&off_1E6A180C0;
    MEMORY[0x1865D44A0](1, v9, v7);
  }

  v6 = MEMORY[0x1E69E9848];
  fputs(v5, *MEMORY[0x1E69E9848]);
  fflush(*v6);
  asl_log(0, 0, 3, "%s", v5);
  free(v5);
  abort();
}

uint64_t swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroupSlow(swift *a1, const char *a2, char a3, uint64_t a4)
{
  Override_task_reportIllegalTaskLocalBindingWithinWithTaskGroup = swift::getOverride_task_reportIllegalTaskLocalBindingWithinWithTaskGroup(a1);
  if (!Override_task_reportIllegalTaskLocalBindingWithinWithTaskGroup)
  {
    swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroup::Override = 1;
    swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroupImpl(a1, a2, 0, a4);
  }

  swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroup::Override = Override_task_reportIllegalTaskLocalBindingWithinWithTaskGroup;

  return (Override_task_reportIllegalTaskLocalBindingWithinWithTaskGroup)(a1, a2, a3 & 1, a4, swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroupImpl);
}

uint64_t swift_task_localValuePush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_task_localValuePush::Override == 1)
  {
    return swift_task_localValuePushImpl(a1, a2, a3);
  }

  if (swift_task_localValuePush::Override)
  {
    return swift_task_localValuePush::Override(a1, a2, a3, swift_task_localValuePushImpl);
  }

  return swift_task_localValuePushSlow(a1, a2, a3);
}

uint64_t swift_task_localValuePushImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    v7 = Current;
    v8 = (Current + 136);

    return swift::TaskLocal::Storage::pushValue(v8, v7, a1, a2, a3);
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = *(StatusReg + 840);
    if (!v11)
    {
      Current = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
      v11 = Current;
      *Current = 0;
      *(StatusReg + 840) = Current;
    }

    hasTaskGroupStatusRecord = swift_task_hasTaskGroupStatusRecord(Current);
    v13 = **(StatusReg + 840);
    v14 = malloc_type_malloc(((*(*(a3 - 8) + 80) + 24) & ~*(*(a3 - 8) + 80)) + *(*(a3 - 8) + 64), 0x1F0241C1uLL);
    v15 = v14;
    v16 = 2;
    if ((hasTaskGroupStatusRecord & 1) == 0)
    {
      v16 = 0;
    }

    *v14 = v13 & 0xFFFFFFFFFFFFFFF9 | v16;
    v14[1] = a1;
    v14[2] = a3;
    result = (*(*(a3 - 8) + 32))(v14 + ((*(*(a3 - 8) + 80) + 24) & ~*(*(a3 - 8) + 80)), a2, a3);
    *v11 = v15;
  }

  return result;
}

uint64_t swift_task_localValuePushSlow(swift *a1, uint64_t a2, uint64_t a3)
{
  Override_task_localValuePush = swift::getOverride_task_localValuePush(a1);
  if (Override_task_localValuePush)
  {
    swift_task_localValuePush::Override = Override_task_localValuePush;

    return (Override_task_localValuePush)(a1, a2, a3, swift_task_localValuePushImpl);
  }

  else
  {
    swift_task_localValuePush::Override = 1;

    return swift_task_localValuePushImpl(a1, a2, a3);
  }
}

char *swift_task_localValueGet(uint64_t a1)
{
  if (swift_task_localValueGet::Override == 1)
  {
    return swift_task_localValueGetImpl(a1);
  }

  if (swift_task_localValueGet::Override)
  {
    return swift_task_localValueGet::Override(a1, swift_task_localValueGetImpl);
  }

  return swift_task_localValueGetSlow(a1);
}

char *swift_task_localValueGetImpl(uint64_t a1)
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    v3 = *(Current + 136);
    if (v3)
    {
      do
      {
        while (1)
        {
          v5 = *v3;
          if ((*v3 & 4) == 0)
          {
            break;
          }

          v3 = (v5 & 0xFFFFFFFFFFFFFFF8);
          if ((~v5 & 6) == 0 || v3 == 0)
          {
            return 0;
          }
        }

        if (v3[1] == a1)
        {
          return v3 + ((*(*(v3[2] - 8) + 80) + 24) & ~*(*(v3[2] - 8) + 80));
        }

        v3 = (v5 & 0xFFFFFFFFFFFFFFF8);
      }

      while ((v5 & 0xFFFFFFFFFFFFFFF8) != 0);
    }

    return 0;
  }

  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 840);
  if (!v6)
  {
    return 0;
  }

  v3 = *v6;
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    while (1)
    {
      v8 = *v3;
      if ((*v3 & 4) == 0)
      {
        break;
      }

      v3 = (v8 & 0xFFFFFFFFFFFFFFF8);
      if ((~v8 & 6) == 0 || v3 == 0)
      {
        return 0;
      }
    }

    if (v3[1] == a1)
    {
      break;
    }

    v3 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((v8 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      return 0;
    }
  }

  return v3 + ((*(*(v3[2] - 8) + 80) + 24) & ~*(*(v3[2] - 8) + 80));
}

char *swift_task_localValueGetSlow(swift *a1)
{
  v2 = swift::getOverride_task_localValueGet(a1);
  if (v2)
  {
    swift_task_localValueGet::Override = v2;

    return (v2)(a1, swift_task_localValueGetImpl);
  }

  else
  {
    swift_task_localValueGet::Override = 1;

    return swift_task_localValueGetImpl(a1);
  }
}

void swift_task_localValuePop(swift *a1)
{
  if (swift_task_localValuePop::Override == 1)
  {
    swift_task_localValuePopImpl();
  }

  else if (swift_task_localValuePop::Override)
  {
    swift_task_localValuePop::Override(swift_task_localValuePopImpl);
  }

  else
  {
    swift_task_localValuePopSlow(a1);
  }
}

void swift_task_localValuePopImpl(void)
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    v3 = *(Current + 17);
    v4 = *v3;
    *(Current + 17) = *v3 & 0xFFFFFFFFFFFFFFF8;
    if ((v4 & 4) == 0)
    {
      v5 = Current;
      (*(*(*(v3 + 2) - 8) + 8))(v3 + ((*(*(*(v3 + 2) - 8) + 80) + 24) & ~*(*(*(v3 + 2) - 8) + 80)));
      Current = v5;
    }

    swift::_swift_task_dealloc_specific(Current, v3, v1, v2);
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = *(StatusReg + 840);
    if (v7)
    {
      v8 = *v7;
      v9 = **v7;
      *v7 = v9 & 0xFFFFFFFFFFFFFFF8;
      if ((v9 & 4) == 0)
      {
        (*(*(v8[2] - 8) + 8))(v8 + ((*(*(v8[2] - 8) + 80) + 24) & ~*(*(v8[2] - 8) + 80)));
      }

      free(v8);
      if (!*v7)
      {
        *(StatusReg + 840) = 0;

        free(v7);
      }
    }
  }
}

void swift_task_localValuePopSlow(swift *a1)
{
  Override_task_localValuePop = swift::getOverride_task_localValuePop(a1);
  if (Override_task_localValuePop)
  {
    swift_task_localValuePop::Override = Override_task_localValuePop;

    (Override_task_localValuePop)(swift_task_localValuePopImpl);
  }

  else
  {
    swift_task_localValuePop::Override = 1;

    swift_task_localValuePopImpl();
  }
}

swift::TaskLocal::ValueItem **swift_task_localsCopyTo(swift::AsyncTask *a1)
{
  v2 = swift_task_localsCopyTo::Override;
  if (swift_task_localsCopyTo::Override == 1)
  {
    Current = swift_task_getCurrent();
    if (Current)
    {
      result = (Current + 136);
    }

    else
    {
      result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 840);
      if (!result)
      {
        return result;
      }
    }

    return swift::TaskLocal::Storage::copyTo(result, a1);
  }

  else if (swift_task_localsCopyTo::Override)
  {

    return v2(a1, swift_task_localsCopyToImpl);
  }

  else
  {

    return swift_task_localsCopyToSlow(a1);
  }
}

swift::TaskLocal::ValueItem **swift_task_localsCopyToImpl(swift::AsyncTask *a1)
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    result = (Current + 136);
  }

  else
  {
    result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 840);
    if (!result)
    {
      return result;
    }
  }

  return swift::TaskLocal::Storage::copyTo(result, a1);
}

swift::TaskLocal::ValueItem **swift_task_localsCopyToSlow(swift *a1)
{
  Override_task_localsCopyTo = swift::getOverride_task_localsCopyTo(a1);
  if (Override_task_localsCopyTo)
  {
    swift_task_localsCopyTo::Override = Override_task_localsCopyTo;

    return (Override_task_localsCopyTo)(a1, swift_task_localsCopyToImpl);
  }

  else
  {
    swift_task_localsCopyTo::Override = 1;
    Current = swift_task_getCurrent();
    if (Current)
    {
      result = (Current + 136);
    }

    else
    {
      result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 840);
      if (!result)
      {
        return result;
      }
    }

    return swift::TaskLocal::Storage::copyTo(result, a1);
  }
}

uint64_t std::__tree<swift::HeapObject const*,std::less<swift::HeapObject const*>,swift::cxx_allocator<swift::HeapObject const*>>::destroy(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
    std::__tree<swift::HeapObject const*,std::less<swift::HeapObject const*>,swift::cxx_allocator<swift::HeapObject const*>>::destroy(result, *a2);
    std::__tree<swift::HeapObject const*,std::less<swift::HeapObject const*>,swift::cxx_allocator<swift::HeapObject const*>>::destroy(v2, a2[1]);

    JUMPOUT(0x1865D4B40);
  }

  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v10 = a2[2];
          }

          else
          {
            v10 = v2[1];
            v11 = *v10;
            v2[1] = *v10;
            v12 = v2;
            if (v11)
            {
              v11[2] = v2;
              v3 = v2[2];
              v12 = *v3;
            }

            v10[2] = v3;
            v3[v12 != v2] = v10;
            *v10 = v2;
            v2[2] = v10;
            v3 = v10[2];
            v4 = *v3;
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v13 = *v2;
          if (*v2 == a2)
          {
            v14 = v13[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v13[2] = v3;
            v3[*v3 != v2] = v13;
            v13[1] = v2;
            v2[2] = v13;
            v3 = v13[2];
          }

          else
          {
            v13 = a2[2];
          }

          *(v13 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

os_log_t swift::concurrency::trace::setupLogs(swift::concurrency::trace *this, void *a2)
{
  swift::concurrency::trace::TracingEnabled = 1;
  swift::concurrency::trace::ActorLog = os_log_create("com.apple.swift.concurrency", "Actor");
  swift::concurrency::trace::TaskLog = os_log_create("com.apple.swift.concurrency", "Task");
  result = os_log_create("com.apple.swift.concurrency", "PotentialPriorityInversion");
  swift::concurrency::trace::PotentialPriorityInversionLog = result;
  return result;
}

uint64_t swift_dispatchEnqueueGlobal(void *a1, uint64_t a2, const char *a3, char *a4)
{
  v4 = *(a1 + 33);
  if (v4 >= 0x22)
  {
    swift::swift_Concurrency_fatalError(0, "invalid job priority %#zx", a3, a4, *(a1 + 33));
  }

  if (!globalQueueCache[v4])
  {
    if (!concurrencyEnableCooperativeQueues() || (global_queue = dispatch_get_global_queue(v4, 4uLL)) == 0)
    {
      global_queue = dispatch_get_global_queue(v4, 0);
    }

    globalQueueCache[v4] = global_queue;
  }

  a1[3] = 1;
  v6 = dispatchEnqueueFunc;

  return v6();
}

void swift_dispatchEnqueueWithDeadline(char a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, NSObject *context)
{
  if (a1)
  {
    v9 = BYTE1(context[4].isa);
    if (v9 >= 0x22)
    {
      swift::swift_Concurrency_fatalError(0, "invalid job priority %#zx", a3, a4, BYTE1(context[4].isa));
    }

    global_queue = globalQueueCache[v9];
    if (global_queue)
    {
      context[3].isa = 1;
      if ((a2 & 0x8000000000000000) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v21 = a2;
      v22 = a3;
      v23 = a6;
      v24 = a5;
      if (!concurrencyEnableCooperativeQueues() || (global_queue = dispatch_get_global_queue(v9, 4uLL)) == 0)
      {
        global_queue = dispatch_get_global_queue(v9, 0);
      }

      globalQueueCache[v9] = global_queue;
      a5 = v24;
      a6 = v23;
      a3 = v22;
      a2 = v21;
      context[3].isa = 1;
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    global_queue = MEMORY[0x1E69E96A0];
    context[3].isa = MEMORY[0x1E69E96A0];
    if ((a2 & 0x8000000000000000) != 0)
    {
LABEL_9:
      v11 = 0;
LABEL_10:
      if (a6 == 2)
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 | 0x8000000000000000;
      }

      goto LABEL_13;
    }
  }

  if (!a2 && a3 < 0)
  {
    goto LABEL_9;
  }

  if (!is_mul_ok(a2, 0x3B9ACA00uLL))
  {
    v12 = -1;
    goto LABEL_13;
  }

  v11 = a3 + 1000000000 * a2;
  if (__CFADD__(a3, 1000000000 * a2))
  {
    v14 = (a3 >> 63) + 1;
  }

  else
  {
    v14 = a3 >> 63;
  }

  v15 = v14 << 63 >> 63;
  v12 = -1;
  if (v15 == v14 && (v15 & 0x8000000000000000) == 0)
  {
    if (v11)
    {
      if (v11 > 0x7FFFFFFFFFFFFFFELL)
      {
        goto LABEL_13;
      }

      if (v11 < 0x5555555555555555)
      {
        v11 = 3 * v11 / 0x7D;
      }

      else
      {
        v11 = 3 * (v11 / 0x7D);
      }
    }

    goto LABEL_10;
  }

LABEL_13:
  if (a5 == -1)
  {

    dispatch_after_f(v12, global_queue, context, __swift_run_job);
  }

  else
  {
    if ((a4 & 0x8000000000000000) != 0 || !a4 && a5 < 0)
    {
      v13 = 0;
    }

    else
    {
      if (!is_mul_ok(a4, 0x3B9ACA00uLL))
      {
        goto LABEL_24;
      }

      v16 = 1000000000 * a4;
      v17 = a5 >> 63;
      v13 = a5 + 1000000000 * a4;
      if (__CFADD__(a5, v16))
      {
        ++v17;
      }

      v18 = v17 << 63 >> 63;
      if (v18 != v17 || v18 < 0)
      {
LABEL_24:
        v13 = -1;
      }
    }

    v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, global_queue);
    dispatch_source_set_timer(v19, v12, 0xFFFFFFFFFFFFFFFFLL, v13);
    v20 = swift_job_alloc(context, 16);
    *v20 = v19;
    v20[1] = context;
    dispatch_set_context(v19, v20);
    dispatch_source_set_event_handler_f(v19, _swift_run_job_leeway);

    dispatch_activate(v19);
  }
}

uint64_t _swift_run_job_leeway(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  swift_job_dealloc(v2, a1);
  v3 = *(*v2 + 48);

  return v3(v2, 0, 0);
}

uint64_t swift_dispatchEnqueueMain(void *a1)
{
  v2 = *(a1 + 33);
  v3 = MEMORY[0x1E69E96A0];
  a1[3] = MEMORY[0x1E69E96A0];
  return dispatchEnqueueFunc(v3, a1, v2);
}

uint64_t swift_task_enqueueOnDispatchQueue(void *a1, dispatch_queue_s *a2)
{
  v2 = *(a1 + 33);
  a1[3] = a2;
  return dispatchEnqueueFunc(a2, a1, v2);
}

uint64_t swift_task_checkIsolatedImpl(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    swift_getObjectType();
    TypeName = swift_getTypeName();
    swift::swift_Concurrency_fatalError(0, "Incorrect actor executor assumption; expected '%.*s' executor.\n", v8, v9, v7, TypeName);
  }

  ObjectType = swift_getObjectType();

  return _swift_task_checkIsolatedSwift(a1, ObjectType, a2 & 0xFFFFFFFFFFFFFFF8);
}

uint64_t swift_task_isIsolatingCurrentContextImpl(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 255;
  }

  ObjectType = swift_getObjectType();

  return _swift_task_isIsolatingCurrentContextSwift(a1, ObjectType, a2 & 0xFFFFFFFFFFFFFFF8);
}

uint64_t swift_task_isMainExecutorImpl(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();

  return _swift_task_isMainExecutorSwift(a1, ObjectType, a2 & 0xFFFFFFFFFFFFFFF8);
}

void swift_defaultActor_destroy_cold_1(unint64_t **a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(v4);
  if (TypeContextDescriptor)
  {
    v8 = (TypeContextDescriptor + 8 + *(TypeContextDescriptor + 8));
  }

  else
  {
    v8 = "<unknown>";
  }

  swift::swift_Concurrency_fatalError(0, "Object %p of class %s deallocated with non-zero retain count %zd. This object's deinit, or something called from it, may have created a strong reference to self which outlived deinit, resulting in a dangling reference.\n", v6, v7, a1, v8, a2);
}

void swift_task_alloc_cold_1(void *a1)
{
  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_0_0(v2, v3);
    OUTLINED_FUNCTION_1_2(v4, v5, &dword_1815A3000);
    __cxa_guard_release(&_MergedGlobals_0);
  }

  *a1 = &qword_1ED42EB78;
}

uint64_t _assertionFailure(_:_:file:line:flags:)()
{
  return MEMORY[0x1EEE6A998]();
}

{
  return MEMORY[0x1EEE6A9A0]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}