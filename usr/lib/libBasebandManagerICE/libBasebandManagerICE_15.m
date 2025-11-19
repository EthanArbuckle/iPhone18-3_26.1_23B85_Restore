void ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = a1[5];
  if (v10)
  {
    v11 = a1[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a3;
      if (*a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v13 = *a3;
      if (*a3)
      {
LABEL_8:
        v14 = _Block_copy(v13);
        v15 = v7[10];
        if (!v15)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = v7[10];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_12:
    v16 = v7[9];
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = operator new(0x28uLL);
    v20 = v19;
    *v19 = v10;
    v19[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[2] = v7;
    v19[3] = v12;
    v21 = xpc_null_create();
    v20[4] = v14;
    v22 = v7[11];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = operator new(0x18uLL);
    *v23 = v20;
    v23[1] = v16;
    v23[2] = v18;
    dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    xpc_release(v21);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

uint64_t __copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9AWDModuleEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9AWDModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_6(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = a1[5];
  if (v10)
  {
    v11 = a1[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a3;
      if (*a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v13 = *a3;
      if (*a3)
      {
LABEL_8:
        v14 = _Block_copy(v13);
        v15 = v7[10];
        if (!v15)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = v7[10];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_12:
    v16 = v7[9];
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = operator new(0x28uLL);
    v20 = v19;
    *v19 = v10;
    v19[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[2] = v7;
    v19[3] = v12;
    v21 = xpc_null_create();
    v20[4] = v14;
    v22 = v7[11];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = operator new(0x18uLL);
    *v23 = v20;
    v23[1] = v16;
    v23[2] = v18;
    dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    xpc_release(v21);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_10(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = a1[5];
  if (v10)
  {
    v11 = a1[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a3;
      if (*a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v13 = *a3;
      if (*a3)
      {
LABEL_8:
        v14 = _Block_copy(v13);
        v15 = v7[10];
        if (!v15)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = v7[10];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_12:
    v16 = v7[9];
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = operator new(0x28uLL);
    v20 = v19;
    *v19 = v10;
    v19[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[2] = v7;
    v19[3] = v12;
    v21 = xpc_null_create();
    v20[4] = v14;
    v22 = v7[11];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = operator new(0x18uLL);
    *v23 = v20;
    v23[1] = v16;
    v23[2] = v18;
    dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    xpc_release(v21);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_14(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = a1[5];
  if (v10)
  {
    v11 = a1[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a3;
      if (*a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v13 = *a3;
      if (*a3)
      {
LABEL_8:
        v14 = _Block_copy(v13);
        v15 = v7[10];
        if (!v15)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = v7[10];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_12:
    v16 = v7[9];
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = operator new(0x28uLL);
    v20 = v19;
    *v19 = v10;
    v19[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[2] = v7;
    v19[3] = v12;
    v21 = xpc_null_create();
    v20[4] = v14;
    v22 = v7[11];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = operator new(0x18uLL);
    *v23 = v20;
    v23[1] = v16;
    v23[2] = v18;
    dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    xpc_release(v21);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void AWDModule::sendPayload_sync(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 112);
  if (v6)
  {
    v9 = a2[1];
    v17 = *a2;
    v18 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 1174405120;
    v14[2] = ___ZN9AWDModule16sendPayload_syncENSt3__110shared_ptrIN3awd10AppContextEEENS2_11PayloadTypeERKNS0_6vectorIhNS0_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v14[3] = &__block_descriptor_tmp_19_0;
    v10 = *a5;
    if (*a5)
    {
      v10 = _Block_copy(v10);
    }

    v15 = v10;
    aBlock = _Block_copy(v14);
    (*(*v6 + 8))(v6, &v17, a3, a4, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v11 = v18;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      v12 = v15;
      if (!v15)
      {
        return;
      }
    }

    else
    {
      v12 = v15;
      if (!v15)
      {
        return;
      }
    }

    _Block_release(v12);
  }

  else
  {
    v13 = *(a1 + 104);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297476000, v13, OS_LOG_TYPE_ERROR, "Cannot send payload because driver is unavailable", buf, 2u);
    }

    (*(*a5 + 16))();
  }
}

void sub_297538128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, char a15)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void AWDModule::enableMetricSubmission_sync(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 112);
  if (v5)
  {
    v7 = a2[1];
    v15 = *a2;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 1174405120;
    v12[2] = ___ZN9AWDModule27enableMetricSubmission_syncENSt3__110shared_ptrIN3awd10AppContextEEEbN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v12[3] = &__block_descriptor_tmp_22_1;
    v8 = *a4;
    if (*a4)
    {
      v8 = _Block_copy(v8);
    }

    v13 = v8;
    aBlock = _Block_copy(v12);
    (**v5)(v5, &v15, a3, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v9 = v16;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v10 = v13;
      if (!v13)
      {
        return;
      }
    }

    else
    {
      v10 = v13;
      if (!v13)
      {
        return;
      }
    }

    _Block_release(v10);
  }

  else
  {
    v11 = *(a1 + 104);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297476000, v11, OS_LOG_TYPE_ERROR, "Cannot enable metric submission because driver is unavailable", buf, 2u);
    }

    (*(*a4 + 16))();
  }
}

void sub_297538338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, char a15)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void AWDModule::clearConfiguration_sync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = a2[1];
    v13 = *a2;
    v14 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN9AWDModule23clearConfiguration_syncENSt3__110shared_ptrIN3awd10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v10[3] = &__block_descriptor_tmp_25;
    v6 = *a3;
    if (*a3)
    {
      v6 = _Block_copy(v6);
    }

    v11 = v6;
    aBlock = _Block_copy(v10);
    (*(*v4 + 16))(v4, &v13, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v7 = v14;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v8 = v11;
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v8 = v11;
      if (!v11)
      {
        return;
      }
    }

    _Block_release(v8);
  }

  else
  {
    v9 = *(a1 + 104);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297476000, v9, OS_LOG_TYPE_ERROR, "Cannot clear configuration because driver is unavailable", buf, 2u);
    }

    (*(*a3 + 16))();
  }
}

void sub_297538534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, char a15)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void AWDModule::updateProperties_sync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = a2[1];
    v13 = *a2;
    v14 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN9AWDModule21updateProperties_syncENSt3__110shared_ptrIN3awd10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v10[3] = &__block_descriptor_tmp_28_3;
    v6 = *a3;
    if (*a3)
    {
      v6 = _Block_copy(v6);
    }

    v11 = v6;
    aBlock = _Block_copy(v10);
    (*(*v4 + 24))(v4, &v13, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v7 = v14;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v8 = v11;
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v8 = v11;
      if (!v11)
      {
        return;
      }
    }

    _Block_release(v8);
  }

  else
  {
    v9 = *(a1 + 104);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297476000, v9, OS_LOG_TYPE_ERROR, "Cannot update properties because driver is unavailable", buf, 2u);
    }

    (*(*a3 + 16))();
  }
}

void sub_297538730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, char a15)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void AWDModule::queryMetric_sync(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 112);
  if (v6)
  {
    v9 = a2[1];
    v17 = *a2;
    v18 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 1174405120;
    v14[2] = ___ZN9AWDModule16queryMetric_syncENSt3__110shared_ptrIN3awd10AppContextEEENS2_10MetricInfoENS2_11TriggerInfoEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v14[3] = &__block_descriptor_tmp_31_1;
    v10 = *a5;
    if (*a5)
    {
      v10 = _Block_copy(v10);
    }

    v15 = v10;
    aBlock = _Block_copy(v14);
    (*(*v6 + 40))(v6, &v17, a3, a4, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v11 = v18;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      v12 = v15;
      if (!v15)
      {
        return;
      }
    }

    else
    {
      v12 = v15;
      if (!v15)
      {
        return;
      }
    }

    _Block_release(v12);
  }

  else
  {
    v13 = *(a1 + 104);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297476000, v13, OS_LOG_TYPE_ERROR, "Cannot query metric because driver is unavailable", buf, 2u);
    }

    (*(*a5 + 16))();
  }
}

void sub_297538948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, char a15)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void AWDModule::appCheckIn_sync(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  v51 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 80);
  if (!v5 || (v7 = *(a1 + 72), (v8 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0x58uLL);
  v11 = v10;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = &unk_2A1E46E98;
  v12 = v10 + 24;
  v13 = *(a1 + 88);
  if (v13)
  {
    dispatch_retain(*(a1 + 88));
    *(v11 + 3) = v13;
    dispatch_retain(v13);
    *(v11 + 33) = 0;
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    v11[32] = a2;
    dispatch_release(v13);
  }

  else
  {
    *(v10 + 3) = 0;
    *(v10 + 33) = 0;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 72) = 0u;
    v10[32] = a2;
  }

  *a3 = v12;
  a3[1] = v11;
  atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
  v15 = (a1 + 136);
  v14 = *(a1 + 136);
  if (v14)
  {
    while (1)
    {
      while (1)
      {
        v16 = v14;
        v17 = *(v14 + 32);
        if (v17 <= a2)
        {
          break;
        }

        v14 = *v16;
        v15 = v16;
        if (!*v16)
        {
          goto LABEL_15;
        }
      }

      if (v17 >= a2)
      {
        break;
      }

      v14 = v16[1];
      if (!v14)
      {
        v15 = v16 + 1;
        goto LABEL_15;
      }
    }

    v21 = v16;
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    v20 = v16[6];
    v21[5] = v12;
    v21[6] = v11;
    if (!v20)
    {
LABEL_21:
      v22 = *(a1 + 104);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v16 = (a1 + 136);
LABEL_15:
    v18 = operator new(0x38uLL);
    *(v18 + 32) = a2;
    *(v18 + 5) = 0;
    *(v18 + 6) = 0;
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = v16;
    *v15 = v18;
    v19 = **(a1 + 128);
    if (v19)
    {
      *(a1 + 128) = v19;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 136), v18);
    ++*(a1 + 144);
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    v20 = *(v18 + 6);
    *(v18 + 5) = v12;
    *(v18 + 6) = v11;
    if (!v20)
    {
      goto LABEL_21;
    }
  }

  if (atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_21;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  v22 = *(a1 + 104);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
LABEL_22:
    v23 = awd::asString();
    *buf = 136315138;
    v50 = v23;
    _os_log_impl(&dword_297476000, v22, OS_LOG_TYPE_DEFAULT, "#I New app checking-in: %s", buf, 0xCu);
  }

LABEL_23:
  v24 = *a3;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_35;
  aBlock[4] = a1;
  aBlock[5] = v7;
  v47 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v48 = _Block_copy(aBlock);
  awd::AppContext::setHandler();
  if (v48)
  {
    _Block_release(v48);
  }

  v41[0] = MEMORY[0x29EDCA5F8];
  v41[1] = 1174405120;
  v41[2] = ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_36;
  v41[3] = &__block_descriptor_tmp_38_0;
  v41[4] = a1;
  v41[5] = v7;
  v42 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v43 = v12;
  v44 = v11;
  atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
  v45 = _Block_copy(v41);
  awd::AppContext::setHandler();
  if (v45)
  {
    _Block_release(v45);
  }

  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 1174405120;
  v36[2] = ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_39;
  v36[3] = &__block_descriptor_tmp_43;
  v36[4] = a1;
  v36[5] = v7;
  v37 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v38 = v12;
  v39 = v11;
  atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
  v40 = _Block_copy(v36);
  awd::AppContext::setHandler();
  if (v40)
  {
    _Block_release(v40);
  }

  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 1174405120;
  v31[2] = ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_44;
  v31[3] = &__block_descriptor_tmp_48_1;
  v31[4] = a1;
  v31[5] = v7;
  v32 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v33 = v12;
  v34 = v11;
  atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
  v35 = _Block_copy(v31);
  awd::AppContext::setHandler();
  if (v35)
  {
    _Block_release(v35);
  }

  if (*(a1 + 112))
  {
    v25 = a3[1];
    v30 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    awd::AwdCommandDriver::checkIn();
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
      v26 = v34;
      if (!v34)
      {
        goto LABEL_41;
      }

LABEL_40:
      std::__shared_weak_count::__release_weak(v26);
      goto LABEL_41;
    }

LABEL_39:
    v26 = v34;
    if (!v34)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v27 = *(a1 + 104);
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_39;
  }

  v29 = awd::asString();
  *buf = 136315138;
  v50 = v29;
  _os_log_error_impl(&dword_297476000, v27, OS_LOG_TYPE_ERROR, "Cannot check in context of app %s because driver is unavailable", buf, 0xCu);
  v26 = v34;
  if (v34)
  {
    goto LABEL_40;
  }

LABEL_41:
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_weak(v39);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_weak(v47);
  }

  std::__shared_weak_count::__release_weak(v11);
  std::__shared_weak_count::__release_weak(v9);
  v28 = *MEMORY[0x29EDCA608];
}

void sub_297538FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_weak(a39);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_weak(a37);
  }

  v44 = *(v42 - 160);
  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  std::__shared_weak_count::__release_weak(v40);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v41);
  std::__shared_weak_count::__release_weak(v39);
  _Unwind_Resume(a1);
}

void sub_2975390DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 104);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v9 = awd::asString();
          _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Client state: %s", buf, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_36(void *a1, uint64_t a2, int *a3)
{
  v50 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_58;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v47 = v8;
  if (!v8)
  {
    goto LABEL_58;
  }

  if (!a1[5])
  {
    goto LABEL_56;
  }

  v9 = *(v7 + 104);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a3;
    *buf = 67109120;
    *&buf[4] = v10;
    _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Received trigger 0x%x", buf, 8u);
  }

  *buf = 0;
  v49 = 0;
  v11 = a1[8];
  if (v11)
  {
    v49 = std::__shared_weak_count::lock(v11);
    if (v49)
    {
      *buf = a1[7];
    }
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v12) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v12);
      v13 = v12;
    }

    else
    {
      v13 = xpc_null_create();
    }
  }

  else
  {
    v13 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  AppID = awd::AppContext::getAppID(*buf);
  v15 = xpc_int64_create(AppID);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF8B0], v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_int64_create(a3[1]);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE5E8], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = xpc_int64_create(a3[2]);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE680], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v21 = xpc_int64_create(*a3);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE5A0], v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = xpc_int64_create(*(a3 + 2));
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE678], v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  v25 = xpc_int64_create(*(a2 + 12));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE6D8], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = xpc_int64_create(*(a2 + 8));
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE640], v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  v29 = *MEMORY[0x29EDBE538];
  v30 = strlen(*MEMORY[0x29EDBE538]);
  if (v30 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v31 = v30;
  if (v30 >= 0x17)
  {
    if ((v30 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v30 | 7) + 1;
    }

    v32 = operator new(v34);
    __dst[1] = v31;
    v45 = v34 | 0x8000000000000000;
    __dst[0] = v32;
LABEL_38:
    memmove(v32, v29, v31);
    *(v31 + v32) = 0;
    object = v13;
    if (v13)
    {
      goto LABEL_33;
    }

LABEL_39:
    object = xpc_null_create();
    goto LABEL_40;
  }

  HIBYTE(v45) = v30;
  v32 = __dst;
  if (v30)
  {
    goto LABEL_38;
  }

  LOBYTE(__dst[0]) = 0;
  object = v13;
  if (!v13)
  {
    goto LABEL_39;
  }

LABEL_33:
  xpc_retain(v13);
LABEL_40:
  xpc::bridge(&cf, &object, v33);
  v35 = cf;
  if (cf && (v36 = CFGetTypeID(cf), v36 == CFDictionaryGetTypeID()))
  {
    v43 = v35;
    CFRetain(v35);
  }

  else
  {
    v43 = 0;
  }

  aBlock = 0;
  Service::broadcastEvent(v7, __dst, &v43, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst[0]);
  }

  xpc_release(v13);
  v37 = v49;
  if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  v8 = v47;
  if (v47)
  {
LABEL_56:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v38 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v38);
    }
  }

LABEL_58:
  v39 = *MEMORY[0x29EDCA608];
}

void sub_297539764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, xpc_object_t object, char a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *__copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9AWDModuleEE56c41_ZTSNSt3__18weak_ptrIN3awd10AppContextEEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9AWDModuleEE56c41_ZTSNSt3__18weak_ptrIN3awd10AppContextEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_39(void *a1, int *a2, unsigned int a3, uint64_t a4)
{
  v62 = *MEMORY[0x29EDCA608];
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_70;
  }

  v9 = a1[4];
  v10 = std::__shared_weak_count::lock(v5);
  v59 = v10;
  if (!v10)
  {
    goto LABEL_70;
  }

  if (!a1[5])
  {
    goto LABEL_68;
  }

  v11 = *(v9 + 104);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a2[1];
    *buf = 67109376;
    *&buf[4] = a3;
    LOWORD(v61) = 1024;
    *(&v61 + 2) = v12;
    _os_log_impl(&dword_297476000, v11, OS_LOG_TYPE_DEFAULT, "#I Received segment %d of metric 0x%x", buf, 0xEu);
  }

  v13 = xpc_dictionary_create(0, 0, 0);
  if (v13 || (v13 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v13) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v13);
      v14 = v13;
    }

    else
    {
      v14 = xpc_null_create();
    }
  }

  else
  {
    v14 = xpc_null_create();
    v13 = 0;
  }

  xpc_release(v13);
  *buf = 0;
  v61 = 0;
  v15 = a1[8];
  if (v15)
  {
    v15 = std::__shared_weak_count::lock(v15);
    v61 = v15;
    if (v15)
    {
      v15 = a1[7];
      *buf = v15;
    }
  }

  AppID = awd::AppContext::getAppID(v15);
  v17 = xpc_int64_create(AppID);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBF8B0], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = xpc_int64_create(a2[3]);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE5E8], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v21 = xpc_int64_create(*a2);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE570], v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = xpc_int64_create(a2[1]);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE520], v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  v25 = xpc_BOOL_create(*(a2 + 20));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE4D0], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = xpc_BOOL_create(*(a2 + 21));
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE6C8], v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  if (*(a2 + 28) == 1)
  {
    v29 = xpc_int64_create(a2[6]);
    if (!v29)
    {
      v29 = xpc_null_create();
    }

    xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE6C0], v29);
    v30 = xpc_null_create();
    xpc_release(v29);
    xpc_release(v30);
  }

  v31 = xpc_data_create(*a4, *(a4 + 8) - *a4);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE4D8], v31);
  v32 = xpc_null_create();
  xpc_release(v31);
  xpc_release(v32);
  v33 = xpc_int64_create(a2[2]);
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE640], v33);
  v34 = xpc_null_create();
  xpc_release(v33);
  xpc_release(v34);
  v35 = xpc_int64_create(a2[3]);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE6D8], v35);
  v36 = xpc_null_create();
  xpc_release(v35);
  xpc_release(v36);
  v37 = xpc_int64_create(a3);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE860], v37);
  v38 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v38);
  v39 = xpc_int64_create(a2[4]);
  if (!v39)
  {
    v39 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE5A0], v39);
  v40 = xpc_null_create();
  xpc_release(v39);
  xpc_release(v40);
  v41 = *MEMORY[0x29EDBE518];
  v42 = strlen(*MEMORY[0x29EDBE518]);
  if (v42 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v43 = v42;
  if (v42 >= 0x17)
  {
    if ((v42 | 7) == 0x17)
    {
      v46 = 25;
    }

    else
    {
      v46 = (v42 | 7) + 1;
    }

    v44 = operator new(v46);
    __dst[1] = v43;
    v57 = v46 | 0x8000000000000000;
    __dst[0] = v44;
LABEL_50:
    memmove(v44, v41, v43);
    *(v43 + v44) = 0;
    object = v14;
    if (v14)
    {
      goto LABEL_45;
    }

LABEL_51:
    object = xpc_null_create();
    goto LABEL_52;
  }

  HIBYTE(v57) = v42;
  v44 = __dst;
  if (v42)
  {
    goto LABEL_50;
  }

  LOBYTE(__dst[0]) = 0;
  object = v14;
  if (!v14)
  {
    goto LABEL_51;
  }

LABEL_45:
  xpc_retain(v14);
LABEL_52:
  xpc::bridge(&cf, &object, v45);
  v47 = cf;
  if (cf && (v48 = CFGetTypeID(cf), v48 == CFDictionaryGetTypeID()))
  {
    v55 = v47;
    CFRetain(v47);
  }

  else
  {
    v55 = 0;
  }

  aBlock = 0;
  Service::broadcastEvent(v9, __dst, &v55, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__dst[0]);
  }

  v49 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v49->__on_zero_shared)(v49);
    std::__shared_weak_count::__release_weak(v49);
  }

  xpc_release(v14);
  v10 = v59;
  if (v59)
  {
LABEL_68:
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v50 = v10;
      (v10->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v50);
    }
  }

LABEL_70:
  v51 = *MEMORY[0x29EDCA608];
}

void sub_29753A010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, xpc_object_t object, char a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_44(void *a1, int *a2)
{
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v39 = v6;
  if (!v6)
  {
    return;
  }

  if (!a1[5])
  {
LABEL_50:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v29 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v29);
    }

    return;
  }

  v7 = *(v5 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Received end of metric submission", buf, 2u);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v8) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  *buf = 0;
  v37 = 0;
  v10 = a1[8];
  if (v10)
  {
    v10 = std::__shared_weak_count::lock(v10);
    v37 = v10;
    if (v10)
    {
      v10 = a1[7];
      *buf = v10;
    }
  }

  AppID = awd::AppContext::getAppID(v10);
  v12 = xpc_int64_create(AppID);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBF8B0], v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = xpc_int64_create(a2[2]);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBE640], v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = xpc_int64_create(a2[3]);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBE6D8], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = xpc_int64_create(a2[4]);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBE5A0], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = *MEMORY[0x29EDBEFE8];
  v21 = strlen(*MEMORY[0x29EDBEFE8]);
  if (v21 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    if ((v21 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v21 | 7) + 1;
    }

    v23 = operator new(v25);
    __dst[1] = v22;
    v35 = v25 | 0x8000000000000000;
    __dst[0] = v23;
LABEL_32:
    memmove(v23, v20, v22);
    *(v22 + v23) = 0;
    object = v9;
    if (v9)
    {
      goto LABEL_27;
    }

LABEL_33:
    object = xpc_null_create();
    goto LABEL_34;
  }

  HIBYTE(v35) = v21;
  v23 = __dst;
  if (v21)
  {
    goto LABEL_32;
  }

  LOBYTE(__dst[0]) = 0;
  object = v9;
  if (!v9)
  {
    goto LABEL_33;
  }

LABEL_27:
  xpc_retain(v9);
LABEL_34:
  xpc::bridge(&cf, &object, v24);
  v26 = cf;
  if (cf && (v27 = CFGetTypeID(cf), v27 == CFDictionaryGetTypeID()))
  {
    v33 = v26;
    CFRetain(v26);
  }

  else
  {
    v33 = 0;
  }

  aBlock = 0;
  Service::broadcastEvent(v5, __dst, &v33, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst[0]);
  }

  v28 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  xpc_release(v9);
  v6 = v39;
  if (v39)
  {
    goto LABEL_50;
  }
}

void sub_29753A64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, xpc_object_t object, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a13);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a12);
  xpc_release(object);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a20);
  xpc_release(v20);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v21 - 64);
  _Unwind_Resume(a1);
}

atomic_ullong *std::shared_ptr<AWDModule>::shared_ptr[abi:ne200100]<AWDModule,std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E46CC0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 72) = a2;
      *(a2 + 80) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 72) = a2;
  *(a2 + 80) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_29753A848(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule*)#1}::operator() const(AWDModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AWDModule *,std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule *)#1},std::allocator<AWDModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<AWDModule *,std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule *)#1},std::allocator<AWDModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI9AWDModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI9AWDModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI9AWDModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI9AWDModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule*)#1}::operator() const(AWDModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(*a1);
    std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void ___ZNK3ctu20SharedSynchronizableI9AWDModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = *(**(a1 + 40) + 104);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_297476000, v1, OS_LOG_TYPE_DEFAULT, "#I Initializing", v2, 2u);
  }
}

uint64_t __copy_helper_block_e8_40c37_ZTSNSt3__110shared_ptrIK9AWDModuleEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c37_ZTSNSt3__110shared_ptrIK9AWDModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<AWDModule>::execute_wrapped<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  AWDModule::registerCommandHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_29753ABF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<AWDModule>::execute_wrapped<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(void *__p)
{
  v2 = *__p;
  if (*__p)
  {
    v3 = v2[1];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v2[1];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v2);
  }

  v5 = __p[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = __p;
  }

  else
  {
    v6 = __p;
  }

  operator delete(v6);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = -534716414;
  if (MEMORY[0x29C272BA0](*(v1 + 24)) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBF8B0]);
    __p = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      __p = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(&__p, 0xFFFFFFFFLL);
    xpc_release(__p);
    if (v13 != 1)
    {
      if (v13)
      {
        if ((v13 - 2) > 3u)
        {
          goto LABEL_2;
        }
      }

      else if ((capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v14) & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    v42 = 0;
    v43 = 0;
    v15 = *(v2 + 136);
    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = v2 + 136;
    do
    {
      v17 = *(v15 + 32);
      v18 = v17 >= v13;
      v19 = v17 < v13;
      if (v18)
      {
        v16 = v15;
      }

      v15 = *(v15 + 8 * v19);
    }

    while (v15);
    if (v16 != v2 + 136 && *(v16 + 32) <= v13)
    {
      v21 = *(v16 + 40);
      v20 = *(v16 + 48);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_32:
      AWDModule::appCheckIn_sync(v2, v13, &__p);
      v21 = __p;
      v20 = v31;
    }

    v42 = v21;
    v43 = v20;
    if (v21)
    {
      *(v45 + 6) = -534716416;
      v22 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE650]);
      __p = v22;
      if (v22)
      {
        xpc_retain(v22);
      }

      else
      {
        __p = xpc_null_create();
      }

      v23 = xpc::dyn_cast_or_default(&__p, 0xFFFFFFFFLL);
      xpc_release(__p);
      memset(object, 170, sizeof(object));
      v24 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE4D8]);
      v40[0] = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        v40[0] = xpc_null_create();
      }

      __p = 0;
      v31 = 0;
      v32 = 0;
      xpc::dyn_cast_or_default();
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      xpc_release(v40[0]);
      v25 = object[0];
      if (object[1] != object[0] && v23 <= 2u)
      {
        v40[0] = v21;
        v40[1] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        __p = MEMORY[0x29EDCA5F8];
        v31 = 1174405120;
        v32 = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb_ENK3__3clEv_block_invoke;
        v33 = &unk_2A1E46D78;
        v35 = v2;
        v26 = *(v1 + 32);
        if (v26)
        {
          v26 = _Block_copy(v26);
        }

        aBlock = v26;
        v37 = v21;
        v38 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = &v44;
        v27 = _Block_copy(&__p);
        v39 = v27;
        AWDModule::sendPayload_sync(v2, v40, v23, object, &v39);
        if (v27)
        {
          _Block_release(v27);
        }

        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v28 = v38;
        if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        v25 = object[0];
      }

      if (v25)
      {
        object[1] = v25;
        operator delete(v25);
      }

      v20 = v43;
    }

    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_2:
  v3 = v45;
  if (*(v45 + 6) == -534716414)
  {
    v4 = xpc_null_create();
    v5 = *(v1 + 32);
    v6 = *(v3 + 6);
    object[0] = v4;
    v7 = xpc_null_create();
    (*(v5 + 16))(v5, v6, object);
    xpc_release(object[0]);
    xpc_release(v7);
  }

  _Block_object_dispose(&v44, 8);
  if (v1)
  {
    v8 = *(v1 + 32);
    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v9 = *(v1 + 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(v1);
  }

  v10 = a1;
  if (a1)
  {
    v11 = a1[2];
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = a1;
      }
    }

    operator delete(v10);
  }
}

void sub_29753B1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *aBlock, uint64_t a19, uint64_t a20, uint64_t a21, xpc_object_t object, uint64_t a23, void *__p, uint64_t a25)
{
  if (v25)
  {
    _Block_release(v25);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v26 + 56);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&object);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v27 - 112);
  _Block_object_dispose((v27 - 96), 8);
  _ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb_ENK3__3clEv_block_invoke(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1[5];
    v4 = a1[8];
    v15[0] = a1[7];
    v15[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb_ENK3__3clEv_block_invoke_2;
    aBlock[3] = &unk_2A1E46D40;
    aBlock[4] = a1[4];
    v13 = 1;
    v5 = a1[6];
    if (v5)
    {
      v5 = _Block_copy(v5);
    }

    v12 = v5;
    v6 = _Block_copy(aBlock);
    v14 = v6;
    AWDModule::enableMetricSubmission_sync(v3, v15, 1, &v14);
    if (v6)
    {
      _Block_release(v6);
    }

    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v7 = v12;
      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = v12;
      if (v12)
      {
LABEL_11:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v8 = xpc_null_create();
    v9 = a1[6];
    v16 = v8;
    v10 = xpc_null_create();
    (*(v9 + 16))(v9, 3760250880, &v16);
    xpc_release(v16);
    xpc_release(v10);
  }
}

void sub_29753B4E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock)
{
  xpc_release(*(v16 - 40));
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb_ENK3__3clEv_block_invoke_2(uint64_t a1, unsigned __int8 a2)
{
  if ((*(a1 + 48) & a2) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = -534716416;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  v5 = xpc_null_create();
  v6 = *(a1 + 40);
  v7 = *(v4 + 24);
  object = v5;
  v8 = xpc_null_create();
  (*(v6 + 16))(v6, v7, &object);
  xpc_release(object);
  xpc_release(v8);
}

void sub_29753B5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE56c44_ZTSNSt3__110shared_ptrIN3awd10AppContextEEE(void *a1, void *a2)
{
  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = a2[7];
  v5 = a2[8];
  a1[6] = result;
  a1[7] = v6;
  a1[8] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE56c44_ZTSNSt3__110shared_ptrIN3awd10AppContextEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  _Block_release(v2);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = -534716414;
  if (MEMORY[0x29C272BA0](*(v1 + 24)) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBF8B0]);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(object, 0xFFFFFFFFLL);
    xpc_release(object[0]);
    if (v13 != 1)
    {
      if (v13)
      {
        if (v13 - 2 > 3)
        {
          goto LABEL_2;
        }
      }

      else if ((capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v14) & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    v15 = v2[17];
    if (v15)
    {
      v16 = v2 + 17;
      do
      {
        v17 = *(v15 + 32);
        v18 = v17 >= v13;
        v19 = v17 < v13;
        if (v18)
        {
          v16 = v15;
        }

        v15 = *(v15 + 8 * v19);
      }

      while (v15);
      if (v16 != v2 + 17 && *(v16 + 32) <= v13)
      {
        *(v30 + 6) = -534716416;
        v20 = v16[6];
        v28[0] = v16[5];
        v28[1] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        object[0] = MEMORY[0x29EDCA5F8];
        object[1] = 1174405120;
        object[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb0_ENK3__4clEv_block_invoke;
        object[3] = &unk_2A1E46DE8;
        object[5] = v2;
        v21 = *(v1 + 32);
        if (v21)
        {
          v21 = _Block_copy(v21);
        }

        aBlock = v21;
        v26 = v16;
        object[4] = &v29;
        v22 = _Block_copy(object);
        v27 = v22;
        AWDModule::clearConfiguration_sync(v2, v28, &v27);
        if (v22)
        {
          _Block_release(v22);
        }

        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }
    }
  }

LABEL_2:
  v3 = v30;
  if (*(v30 + 6) == -534716414)
  {
    v4 = xpc_null_create();
    v5 = *(v1 + 32);
    v6 = *(v3 + 6);
    v33 = v4;
    v7 = xpc_null_create();
    (*(v5 + 16))(v5, v6, &v33);
    xpc_release(v33);
    xpc_release(v7);
  }

  _Block_object_dispose(&v29, 8);
  if (v1)
  {
    v8 = *(v1 + 32);
    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v9 = *(v1 + 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(v1);
  }

  v10 = a1;
  if (a1)
  {
    v11 = a1[2];
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = a1;
      }
    }

    operator delete(v10);
  }
}

void sub_29753BA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *aBlock, uint64_t a18, uint64_t a19, char a20)
{
  if (v20)
  {
    _Block_release(v20);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a20);
  _Block_object_dispose((v21 - 88), 8);
  _ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb0_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb0_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb0_ENK3__4clEv_block_invoke(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1[5];
    v4 = a1[7];
    v5 = *(v4 + 48);
    v16[0] = *(v4 + 40);
    v16[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb0_ENK3__4clEv_block_invoke_2;
    aBlock[3] = &unk_2A1E46DB0;
    aBlock[4] = a1[4];
    v14 = 1;
    v6 = a1[6];
    if (v6)
    {
      v6 = _Block_copy(v6);
    }

    v13 = v6;
    v7 = _Block_copy(aBlock);
    v15 = v7;
    AWDModule::enableMetricSubmission_sync(v3, v16, 0, &v15);
    if (v7)
    {
      _Block_release(v7);
    }

    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v8 = v13;
      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = v13;
      if (v13)
      {
LABEL_11:
        _Block_release(v8);
      }
    }
  }

  else
  {
    v9 = xpc_null_create();
    v10 = a1[6];
    v17 = v9;
    v11 = xpc_null_create();
    (*(v10 + 16))(v10, 3760250880, &v17);
    xpc_release(v17);
    xpc_release(v11);
  }
}

void sub_29753BCC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock)
{
  xpc_release(*(v16 - 40));
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb0_ENK3__4clEv_block_invoke_2(uint64_t a1, unsigned __int8 a2)
{
  if ((*(a1 + 48) & a2) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = -534716416;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  v5 = xpc_null_create();
  v6 = *(a1 + 40);
  v7 = *(v4 + 24);
  object = v5;
  v8 = xpc_null_create();
  (*(v6 + 16))(v6, v7, &object);
  xpc_release(object);
  xpc_release(v8);
}

void sub_29753BDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v50 = 0;
  v51 = &v50;
  v52 = 0x2000000000;
  v53 = -534716414;
  if (MEMORY[0x29C272BA0](*(v1 + 24)) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBF8B0]);
    aBlock[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      aBlock[0] = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(aBlock, 0xFFFFFFFFLL);
    xpc_release(aBlock[0]);
    if (v13 <= 5u && (((1 << v13) & 0x36) != 0 || !v13 && capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v14)))
    {
      v15 = *(v2 + 136);
      if (v15)
      {
        v16 = v2 + 136;
        do
        {
          v17 = *(v15 + 32);
          v18 = v17 >= v13;
          v19 = v17 < v13;
          if (v18)
          {
            v16 = v15;
          }

          v15 = *(v15 + 8 * v19);
        }

        while (v15);
        if (v16 != v2 + 136 && *(v16 + 32) <= v13)
        {
          *(v51 + 6) = -534716416;
          v20 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE5E8]);
          aBlock[0] = v20;
          if (v20)
          {
            xpc_retain(v20);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v21 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v22 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE680]);
          aBlock[0] = v22;
          if (v22)
          {
            xpc_retain(v22);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v23 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v24 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE5A0]);
          aBlock[0] = v24;
          if (v24)
          {
            xpc_retain(v24);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v25 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v26 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE570]);
          aBlock[0] = v26;
          if (v26)
          {
            xpc_retain(v26);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v27 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v28 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE520]);
          aBlock[0] = v28;
          if (v28)
          {
            xpc_retain(v28);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v29 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v30 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE6D8]);
          aBlock[0] = v30;
          if (v30)
          {
            xpc_retain(v30);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v31 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v32 = *(v16 + 40);
          v33 = *(v16 + 48);
          v49[0] = v32;
          v49[1] = v33;
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          object = __PAIR64__(v29, v27);
          v43 = 0;
          v44 = v31;
          v45 = 0;
          v46 = -1431699456;
          v47 = -1431655936;
          v48 = -1431655936;
          v40[0] = v25;
          v40[1] = v21;
          v40[2] = v23;
          v40[3] = -1431655766;
          v41 = 0;
          aBlock[0] = MEMORY[0x29EDCA5F8];
          aBlock[1] = 1174405120;
          aBlock[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb1_ENK3__5clEv_block_invoke;
          aBlock[3] = &unk_2A1E46E20;
          aBlock[4] = &v50;
          v34 = *(v1 + 32);
          if (v34)
          {
            v34 = _Block_copy(v34);
          }

          v38 = v34;
          v35 = _Block_copy(aBlock);
          v39 = v35;
          AWDModule::queryMetric_sync(v2, v49, &object, v40, &v39);
          if (v35)
          {
            _Block_release(v35);
          }

          if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
          }

          if (v38)
          {
            _Block_release(v38);
          }
        }
      }
    }
  }

  v3 = v51;
  if (*(v51 + 6) == -534716414)
  {
    v4 = xpc_null_create();
    v5 = *(v1 + 32);
    v6 = *(v3 + 6);
    object = v4;
    v7 = xpc_null_create();
    (*(v5 + 16))(v5, v6, &object);
    xpc_release(object);
    xpc_release(v7);
  }

  _Block_object_dispose(&v50, 8);
  if (v1)
  {
    v8 = *(v1 + 32);
    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v9 = *(v1 + 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(v1);
  }

  v10 = a1;
  if (a1)
  {
    v11 = a1[2];
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = a1;
      }
    }

    operator delete(v10);
  }
}

void sub_29753C30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *aBlock, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, xpc_object_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (v26)
  {
    _Block_release(v26);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a26);
  _Block_object_dispose((v27 - 120), 8);
  _ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb1_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb1_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb1_ENK3__5clEv_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -534716416;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  v5 = xpc_null_create();
  v6 = *(a1 + 40);
  v7 = *(v4 + 24);
  object = v5;
  v8 = xpc_null_create();
  (*(v6 + 16))(v6, v7, &object);
  xpc_release(object);
  xpc_release(v8);
}

void sub_29753C584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = -534716414;
  if (MEMORY[0x29C272BA0](*(v1 + 24)) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBF8B0]);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(object, 0xFFFFFFFFLL);
    xpc_release(object[0]);
    if (v13 <= 5u && (((1 << v13) & 0x36) != 0 || !v13 && capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v14)))
    {
      v15 = *(v2 + 136);
      if (v15)
      {
        v16 = v2 + 136;
        do
        {
          v17 = *(v15 + 32);
          v18 = v17 >= v13;
          v19 = v17 < v13;
          if (v18)
          {
            v16 = v15;
          }

          v15 = *(v15 + 8 * v19);
        }

        while (v15);
        if (v16 != v2 + 136 && *(v16 + 32) <= v13)
        {
          *(v34 + 6) = -534716416;
          v20 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE910]);
          object[0] = v20;
          if (v20)
          {
            xpc_retain(v20);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          v21 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(object[0]);
          v22 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE5D0]);
          object[0] = v22;
          if (v22)
          {
            xpc_retain(v22);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          v23 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(object[0]);
          LOWORD(v37) = -21846;
          BYTE2(v37) = -86;
          LOBYTE(v37) = awd::AppContext::getProperties(*(v16 + 40));
          BYTE1(v37) = v23;
          BYTE2(v37) = v21;
          v24 = *(v16 + 40);
          awd::AppContext::setProperties();
          v25 = *(v16 + 48);
          v32[0] = *(v16 + 40);
          v32[1] = v25;
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          object[0] = MEMORY[0x29EDCA5F8];
          object[1] = 1174405120;
          object[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb2_ENK3__6clEv_block_invoke;
          object[3] = &unk_2A1E46E58;
          object[4] = &v33;
          v26 = *(v1 + 32);
          if (v26)
          {
            v26 = _Block_copy(v26);
          }

          aBlock = v26;
          v27 = _Block_copy(object);
          v31 = v27;
          AWDModule::updateProperties_sync(v2, v32, &v31);
          if (v27)
          {
            _Block_release(v27);
          }

          if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v25->__on_zero_shared)(v25);
            std::__shared_weak_count::__release_weak(v25);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }
        }
      }
    }
  }

  v3 = v34;
  if (*(v34 + 6) == -534716414)
  {
    v4 = xpc_null_create();
    v5 = *(v1 + 32);
    v6 = *(v3 + 6);
    v37 = v4;
    v7 = xpc_null_create();
    (*(v5 + 16))(v5, v6, &v37);
    xpc_release(v37);
    xpc_release(v7);
  }

  _Block_object_dispose(&v33, 8);
  if (v1)
  {
    v8 = *(v1 + 32);
    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v9 = *(v1 + 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(v1);
  }

  v10 = a1;
  if (a1)
  {
    v11 = a1[2];
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = a1;
      }
    }

    operator delete(v10);
  }
}

void sub_29753C990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *aBlock, uint64_t a17, char a18, uint64_t a19, char a20)
{
  if (v20)
  {
    _Block_release(v20);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
  _Block_object_dispose(&a20, 8);
  _ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb2_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb2_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb2_ENK3__6clEv_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -534716416;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  v5 = xpc_null_create();
  v6 = *(a1 + 40);
  v7 = *(v4 + 24);
  object = v5;
  v8 = xpc_null_create();
  (*(v6 + 16))(v6, v7, &object);
  xpc_release(object);
  xpc_release(v8);
}

void sub_29753CB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<awd::AppContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E46E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<awd::AppContext>::__on_zero_shared(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = a1[3];
  if (v8)
  {

    dispatch_release(v8);
  }
}

uint64_t __cxx_global_var_init_49()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297476000);
  }

  return result;
}

void antenna::Service::Internal::create(uint64_t a1@<X0>, NSObject **a2@<X1>, antenna::Service::Internal **a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x218uLL);
  if (*a1)
  {
    v7 = _Block_copy(*a1);
    v8 = *(a1 + 8);
    v17 = v7;
    v18 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  v8 = *(a1 + 8);
  v17 = 0;
  v18 = v8;
  if (v8)
  {
LABEL_3:
    dispatch_retain(v8);
  }

LABEL_4:
  v9 = *a2;
  v16 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  antenna::Service::Internal::Internal(v6, &v17, &v16);
  *a3 = v6;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0x20uLL);
  v10[1] = 0;
  v11 = v10 + 1;
  *v10 = &unk_2A1E47038;
  v10[2] = 0;
  v10[3] = v6;
  a3[1] = v10;
  v12 = *(v6 + 1);
  if (!v12)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
    *v6 = v6;
    *(v6 + 1) = v10;
    if (atomic_fetch_add(v11, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v12->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
    *v6 = v6;
    *(v6 + 1) = v10;
    v13 = v10;
    std::__shared_weak_count::__release_weak(v12);
    v10 = v13;
    if (!atomic_fetch_add(v11, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_13:
      v14 = v10;
      (*(*v10 + 16))();
      std::__shared_weak_count::__release_weak(v14);
    }
  }

LABEL_14:
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  v15 = *a3;
  if (*a3)
  {

    antenna::Service::Internal::init(v15);
  }
}

void sub_29753CEEC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<antenna::Service::Internal> ctu::SharedSynchronizable<antenna::Service::Internal>::make_shared_ptr<antenna::Service::Internal>(antenna::Service::Internal*)::{lambda(antenna::Service::Internal*)#1}::operator() const(antenna::Service::Internal*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_29753CF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  if (v3)
  {
    dispatch_release(v3);
  }

  dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(va);
  _Unwind_Resume(a1);
}

uint64_t dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void antenna::Service::Internal::init(antenna::Service::Internal *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 2);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::init(void)::$_0>(antenna::Service::Internal::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::init(void)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::init(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void *antenna::Service::Internal::Internal(void *a1, uint64_t a2, dispatch_object_t *a3)
{
  v5 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  ctu::OsLogContext::OsLogContext(v29, "com.apple.telephony.abm", "antenna.svc");
  if (v5)
  {
    dispatch_retain(v5);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v7 = dispatch_queue_create_with_target_V2("antenna.svc", initially_inactive, v5);
  dispatch_set_qos_class_floor(v7, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[3] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  if (v7)
  {
    dispatch_release(v7);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 4, v30);
  MEMORY[0x29C270D60](v30);
  ctu::OsLogContext::~OsLogContext(v29);
  if (v5)
  {
    dispatch_release(v5);
  }

  v8 = *a2;
  if (*a2)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a2 + 8);
  a1[5] = v8;
  a1[6] = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  a1[7] = 0;
  a1[8] = 0;
  *(a1 + 81) = 0;
  *(a1 + 83) = 0;
  a1[12] = 0;
  a1[14] = 0;
  *(a1 + 128) = 0;
  v10 = xpc_null_create();
  a1[18] = 0;
  a1[17] = v10;
  a1[21] = 0;
  a1[25] = 0;
  a1[19] = 0;
  *(a1 + 160) = 0;
  a1[22] = 0;
  *(a1 + 46) = 0;
  a1[24] = a1 + 25;
  a1[28] = 0;
  a1[29] = 0;
  a1[26] = 0;
  a1[27] = a1 + 28;
  *(a1 + 60) = 0;
  *(a1 + 122) = 0;
  *(a1 + 66) = 255;
  a1[34] = 0;
  *(a1 + 280) = 0;
  a1[36] = 0;
  a1[37] = 0;
  v11 = *MEMORY[0x29EDBF878];
  v12 = strlen(*MEMORY[0x29EDBF878]);
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = v12;
  v14 = a1 + 38;
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v12 | 7) + 1;
    }

    v14 = operator new(v15);
    a1[39] = v13;
    a1[40] = v15 | 0x8000000000000000;
    a1[38] = v14;
    goto LABEL_27;
  }

  *(a1 + 327) = v12;
  if (v12)
  {
LABEL_27:
    memmove(v14, v11, v13);
  }

  *(v14 + v13) = 0;
  v16 = strlen(v11);
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v16;
  v18 = a1 + 41;
  if (v16 >= 0x17)
  {
    if ((v16 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v16 | 7) + 1;
    }

    v18 = operator new(v19);
    a1[42] = v17;
    a1[43] = v19 | 0x8000000000000000;
    a1[41] = v18;
    goto LABEL_36;
  }

  *(a1 + 351) = v16;
  if (v16)
  {
LABEL_36:
    memmove(v18, v11, v17);
  }

  *(v18 + v17) = 0;
  a1[45] = 0;
  a1[46] = 0;
  a1[44] = a1 + 45;
  *(a1 + 388) = 0;
  *(a1 + 98) = 0;
  *(a1 + 396) = 0;
  *(a1 + 25) = 0u;
  *(a1 + 26) = 0u;
  *(a1 + 108) = 255;
  v20 = strlen(v11);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    a1[56] = v21;
    a1[57] = v23 | 0x8000000000000000;
    a1[55] = v22;
    goto LABEL_45;
  }

  *(a1 + 463) = v20;
  v22 = a1 + 55;
  if (v20)
  {
LABEL_45:
    memmove(v22, v11, v21);
  }

  *(v22 + v21) = 0;
  *(a1 + 232) = 0;
  *(a1 + 468) = 0xFFFFFFFF00000001;
  a1[61] = 0;
  a1[62] = 0;
  a1[60] = a1 + 61;
  v24 = strlen(v11);
  if (v24 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v25 = v24;
  if (v24 >= 0x17)
  {
    if ((v24 | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (v24 | 7) + 1;
    }

    v26 = operator new(v27);
    a1[65] = v27 | 0x8000000000000000;
    a1[63] = v26;
    a1[64] = v25;
  }

  else
  {
    v26 = a1 + 63;
    *(a1 + 527) = v24;
    if (!v24)
    {
      goto LABEL_55;
    }
  }

  memmove(v26, v11, v25);
LABEL_55:
  *(v26 + v25) = 0;
  *(a1 + 529) = 0;
  return a1;
}

void antenna::Service::Internal::shutdown(antenna::Service::Internal *this)
{
  v2 = *(this + 36);
  if (v2)
  {
    IOKitEventNotifier::shutdown(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    v4 = *v3;
    ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>(v4, &v4);
  }

  if (*(this + 7))
  {
    antenna::CommandDriver::registerHandler();
  }
}

void sub_29753D724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void antenna::Service::Internal::setupTxPower_sync(antenna::Service::Internal *this)
{
  if (*(this + 73) == 1)
  {
    antenna::Service::Internal::configTxPower_sync(this, 1u);
    if (*(this + 528))
    {
LABEL_3:
      if (*(this + 72) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*(this + 528))
  {
    goto LABEL_3;
  }

  antenna::Service::Internal::configTxPower_sync(this, 2u);
  if (*(this + 72) != 1)
  {
LABEL_4:
    if (*(this + 73))
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_8:
  antenna::Service::Internal::configTxPower_sync(this, 3u);
  if (*(this + 73))
  {
    goto LABEL_13;
  }

LABEL_9:
  if (*(this + 72) != 1)
  {
    *(this + 128) = 0;
    *(this + 83) = 0;
    if (*(this + 80) == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_13:
  antenna::Service::Internal::enableTxPowerCapping_sync(this, 1);
  antenna::Service::Internal::enableTxPowerCappingNotification_sync(this, 1);
  antenna::Service::Internal::enableTxPowerCappingIndication_sync(this);
  *(this + 128) = 0;
  *(this + 83) = 0;
  if (*(this + 80) == 1)
  {
LABEL_14:
    antenna::Service::Internal::sendVideoAccessory_sync(this, *(this + 81));
    if (*(this + 76))
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

LABEL_11:
  if (*(this + 76))
  {
    goto LABEL_19;
  }

LABEL_15:
  if (*(this + 78) != 1)
  {
    if (*(this + 84) != 1)
    {
      goto LABEL_17;
    }

LABEL_23:
    antenna::Service::Internal::sendPowerSource_sync(this);
    if (*(this + 85) != 1)
    {
      return;
    }

    goto LABEL_24;
  }

LABEL_19:
  if (*(this + 104) == 1)
  {
    v2 = *(this + 50);
    if (v2)
    {
      ctu::iokit::IOHIDController::queryHIDEventTrigger(v2);
    }
  }

  antenna::Service::Internal::sendAccessoryStatus_sync(this);
  if (*(this + 84) == 1)
  {
    goto LABEL_23;
  }

LABEL_17:
  if (*(this + 85) != 1)
  {
    return;
  }

LABEL_24:
  if (!*(this + 62))
  {
    config::hw::deviceMaterial(this);
    if ((this + 480) != &v3)
    {
      std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>(this + 60, v3, &v4);
    }

    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v4);
  }

  antenna::Service::Internal::sendDeviceMaterial_sync(this);
}

void antenna::Service::Internal::configTxPower_sync(uint64_t a1, unsigned int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = *(a1 + 32);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v23 = a2;
    _os_log_debug_impl(&dword_297476000, v6, OS_LOG_TYPE_DEBUG, "#D  Configuration tx power for %d", buf, 8u);
  }

  v7 = xpc_int64_create(a2);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDC9060], v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = xpc_string_create(*MEMORY[0x29EDC9080]);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDC8FA8], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  if ((a2 & 0xFFFFFFFD) == 1)
  {
    v11 = xpc_int64_create(*(a1 + 248));
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    xpc_dictionary_set_value(v5, *MEMORY[0x29EDC90D8], v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
  }

  else if (a2 == 2)
  {
    v13 = xpc_int64_create(*(a1 + 376));
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    xpc_dictionary_set_value(v5, *MEMORY[0x29EDC90E8], v13);
    v14 = xpc_null_create();
    xpc_release(v13);
    xpc_release(v14);
    v15 = xpc_int64_create(*(a1 + 380));
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    xpc_dictionary_set_value(v5, *MEMORY[0x29EDC90E0], v15);
    v16 = xpc_null_create();
    xpc_release(v15);
    xpc_release(v16);
    v17 = xpc_int64_create(*(a1 + 384));
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    xpc_dictionary_set_value(v5, *MEMORY[0x29EDC90F8], v17);
    v18 = xpc_null_create();
    xpc_release(v17);
    xpc_release(v18);
  }

  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  v20[0] = 0;
  v20[1] = 0;
  antenna::Service::Internal::performCommandDriver_sync(a1, &object, v20);
  xpc_release(object);
  object = 0;
  xpc_release(v5);
  v19 = *MEMORY[0x29EDCA608];
}

void sub_29753DC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void antenna::Service::Internal::enableTxPowerCapping_sync(antenna::Service::Internal *this, BOOL a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = xpc_string_create(*MEMORY[0x29EDC9078]);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDC8FA8], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = xpc_BOOL_create(a2);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDC9050], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  if (*(this + 72) == 1)
  {
    v10 = xpc_int64_create(1);
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    xpc_dictionary_set_value(v5, *MEMORY[0x29EDC9060], v10);
    v11 = xpc_null_create();
    xpc_release(v10);
    xpc_release(v11);
  }

  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  v12[0] = 0;
  v12[1] = 0;
  antenna::Service::Internal::performCommandDriver_sync(this, &object, v12);
  xpc_release(object);
  object = 0;
  xpc_release(v5);
}

void sub_29753DF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object)
{
  dispatch::callback<void({block_pointer})(xpc::object)>::~callback(&a10);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  _Unwind_Resume(a1);
}

void antenna::Service::Internal::enableTxPowerCappingNotification_sync(antenna::Service::Internal *this, BOOL a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = xpc_string_create(*MEMORY[0x29EDC90C0]);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDC8FA8], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = xpc_BOOL_create(a2);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDC9088], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  if (config::hw::watch(v10))
  {
    v11 = xpc_string_create(*MEMORY[0x29EDC90B0]);
    if (!v11)
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_string_create(*MEMORY[0x29EDC90A8]);
    if (!v11)
    {
      v11 = xpc_null_create();
    }
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDC90A0], v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  if (*(this + 72) == 1)
  {
    v13 = xpc_int64_create(1);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    xpc_dictionary_set_value(v5, *MEMORY[0x29EDC9060], v13);
    v14 = xpc_null_create();
    xpc_release(v13);
    xpc_release(v14);
  }

  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  v15[0] = 0;
  v15[1] = 0;
  antenna::Service::Internal::performCommandDriver_sync(this, &object, v15);
  xpc_release(object);
  object = 0;
  xpc_release(v5);
}

void sub_29753E280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object)
{
  dispatch::callback<void({block_pointer})(xpc::object)>::~callback(&a10);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  _Unwind_Resume(a1);
}

void antenna::Service::Internal::enableTxPowerCappingIndication_sync(antenna::Service::Internal *this)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v2) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v2);
      v3 = v2;
    }

    else
    {
      v3 = xpc_null_create();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  v4 = xpc_string_create(*MEMORY[0x29EDC90F0]);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  xpc_dictionary_set_value(v3, *MEMORY[0x29EDC8FA8], v4);
  v5 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v5);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  v6[0] = 0;
  v6[1] = 0;
  antenna::Service::Internal::performCommandDriver_sync(this, &object, v6);
  xpc_release(object);
  object = 0;
  xpc_release(v3);
}

void sub_29753E430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object)
{
  dispatch::callback<void({block_pointer})(xpc::object)>::~callback(&a10);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  _Unwind_Resume(a1);
}

void antenna::Service::Internal::sendVideoAccessory_sync(antenna::Service::Internal *this, int a2)
{
  if (*(this + 81) != a2)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    if (v4 || (v4 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v4);
        v5 = v4;
      }

      else
      {
        v5 = xpc_null_create();
      }
    }

    else
    {
      v5 = xpc_null_create();
      v4 = 0;
    }

    xpc_release(v4);
    v6 = xpc_string_create(*MEMORY[0x29EDC8FF8]);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    xpc_dictionary_set_value(v5, *MEMORY[0x29EDC8FA8], v6);
    v7 = xpc_null_create();
    xpc_release(v6);
    xpc_release(v7);
    if (capabilities::radio::maverick(v8))
    {
      v9 = *(this + 4);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (a2)
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Video link started", buf, 2u);
        }

        v11 = xpc_int64_create(1);
        if (!v11)
        {
          v11 = xpc_null_create();
        }

        xpc_dictionary_set_value(v5, *MEMORY[0x29EDC9038], v11);
        v12 = xpc_null_create();
        xpc_release(v11);
        xpc_release(v12);
        v13 = xpc_int64_create(0);
        if (!v13)
        {
          v13 = xpc_null_create();
        }
      }

      else
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Video link stopped or terminated", buf, 2u);
        }

        v16 = xpc_int64_create(0);
        if (!v16)
        {
          v16 = xpc_null_create();
        }

        xpc_dictionary_set_value(v5, *MEMORY[0x29EDC9038], v16);
        v17 = xpc_null_create();
        xpc_release(v16);
        xpc_release(v17);
        v13 = xpc_int64_create(1);
        if (!v13)
        {
          v13 = xpc_null_create();
        }
      }

      xpc_dictionary_set_value(v5, *MEMORY[0x29EDC9070], v13);
      v18 = xpc_null_create();
      xpc_release(v13);
      xpc_release(v18);
    }

    else
    {
      v14 = xpc_BOOL_create(a2);
      if (!v14)
      {
        v14 = xpc_null_create();
      }

      xpc_dictionary_set_value(v5, *MEMORY[0x29EDC9058], v14);
      v15 = xpc_null_create();
      xpc_release(v14);
      xpc_release(v15);
    }

    *(this + 81) = a2;
    object = v5;
    if (v5)
    {
      xpc_retain(v5);
    }

    else
    {
      object = xpc_null_create();
    }

    v19[0] = 0;
    v19[1] = 0;
    antenna::Service::Internal::performCommandDriver_sync(this, &object, v19);
    xpc_release(object);
    object = 0;
    xpc_release(v5);
  }
}

void sub_29753E83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object)
{
  dispatch::callback<void({block_pointer})(xpc::object)>::~callback(&a10);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  _Unwind_Resume(a1);
}

void antenna::Service::Internal::sendAccessoryStatus_sync(NSObject **this)
{
  v43 = *MEMORY[0x29EDCA608];
  AccessoryState_sync = antenna::Service::Internal::getAccessoryState_sync(this);
  if (*(this + 83) == 1)
  {
    v3 = this[4];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Ignore sending accessory status to BB in low power mode", buf, 2u);
    }
  }

  else
  {
    v4 = AccessoryState_sync;
    v5 = HIDWORD(AccessoryState_sync);
    v6 = MEMORY[0x29EDCAA00];
    v7 = MEMORY[0x29EDC8FA8];
    v8 = MEMORY[0x29EDC9020];
    if ((*(this + 76) & 1) != 0 || *(this + 104) == 1)
    {
      v9 = xpc_dictionary_create(0, 0, 0);
      if (v9 || (v9 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C272BA0](v9) == v6)
        {
          xpc_retain(v9);
          v10 = v9;
        }

        else
        {
          v10 = xpc_null_create();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v9 = 0;
      }

      xpc_release(v9);
      v11 = xpc_string_create(*MEMORY[0x29EDC90B8]);
      if (!v11)
      {
        v11 = xpc_null_create();
      }

      xpc_dictionary_set_value(v10, *v7, v11);
      v12 = xpc_null_create();
      xpc_release(v11);
      xpc_release(v12);
      v13 = xpc_int64_create(v4 & 1);
      if (!v13)
      {
        v13 = xpc_null_create();
      }

      xpc_dictionary_set_value(v10, *v8, v13);
      v14 = xpc_null_create();
      xpc_release(v13);
      xpc_release(v14);
      v15 = this[4];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        ctu::iokit::asString();
        if (v40 >= 0)
        {
          v16 = buf;
        }

        else
        {
          v16 = *buf;
        }

        *v41 = 136315138;
        v42 = v16;
        _os_log_impl(&dword_297476000, v15, OS_LOG_TYPE_DEFAULT, "#I Sending accessory attachment for RF: %s", v41, 0xCu);
        if (v40 < 0)
        {
          operator delete(*buf);
        }

        v15 = this[4];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (*(this + 465))
        {
          v17 = "CLOSED";
        }

        else
        {
          v17 = "OPENED";
        }

        *buf = 136315138;
        *&buf[4] = v17;
        _os_log_impl(&dword_297476000, v15, OS_LOG_TYPE_DEFAULT, "#I Smart Keyboard Cover: %s", buf, 0xCu);
      }

      if ((v4 & 1) != 0 && ((*(this + 77) & 1) != 0 || *(this + 104) == 1))
      {
        v18 = xpc_int64_create(v5);
        if (!v18)
        {
          v18 = xpc_null_create();
        }

        xpc_dictionary_set_value(v10, *MEMORY[0x29EDC8FE8], v18);
        v19 = xpc_null_create();
        xpc_release(v18);
        xpc_release(v19);
        v20 = this[4];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          ctu::iokit::asString();
          v21 = v40 >= 0 ? buf : *buf;
          *v41 = 136315138;
          v42 = v21;
          _os_log_impl(&dword_297476000, v20, OS_LOG_TYPE_DEFAULT, "#I Sending accessory type for RF: %s", v41, 0xCu);
          if (v40 < 0)
          {
            operator delete(*buf);
          }
        }
      }

      object = v10;
      if (v10)
      {
        xpc_retain(v10);
      }

      else
      {
        object = xpc_null_create();
      }

      v37[0] = 0;
      v37[1] = 0;
      antenna::Service::Internal::performCommandDriver_sync(this, &object, v37);
      xpc_release(object);
      object = 0;
      xpc_release(v10);
    }

    if ((*(this + 78) & 1) != 0 || *(this + 104) == 1)
    {
      v22 = xpc_dictionary_create(0, 0, 0);
      if (v22 || (v22 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C272BA0](v22) == v6)
        {
          xpc_retain(v22);
          v23 = v22;
        }

        else
        {
          v23 = xpc_null_create();
        }
      }

      else
      {
        v23 = xpc_null_create();
        v22 = 0;
      }

      xpc_release(v22);
      v24 = xpc_string_create(*MEMORY[0x29EDC90C8]);
      if (!v24)
      {
        v24 = xpc_null_create();
      }

      xpc_dictionary_set_value(v23, *v7, v24);
      v25 = xpc_null_create();
      xpc_release(v24);
      xpc_release(v25);
      v26 = xpc_int64_create(v4 & 1);
      if (!v26)
      {
        v26 = xpc_null_create();
      }

      xpc_dictionary_set_value(v23, *v8, v26);
      v27 = xpc_null_create();
      xpc_release(v26);
      xpc_release(v27);
      v28 = this[4];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        ctu::iokit::asString();
        v33 = v40 >= 0 ? buf : *buf;
        *v41 = 136315138;
        v42 = v33;
        _os_log_debug_impl(&dword_297476000, v28, OS_LOG_TYPE_DEBUG, "#D Sending accessory attachment for ARTD: %s", v41, 0xCu);
        if (v40 < 0)
        {
          operator delete(*buf);
        }
      }

      if ((v4 & 1) != 0 && ((*(this + 77) & 1) != 0 || *(this + 104) == 1))
      {
        v29 = xpc_int64_create(v5);
        if (!v29)
        {
          v29 = xpc_null_create();
        }

        xpc_dictionary_set_value(v23, *MEMORY[0x29EDC8FE8], v29);
        v30 = xpc_null_create();
        xpc_release(v29);
        xpc_release(v30);
        v31 = this[4];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          ctu::iokit::asString();
          v34 = v40 >= 0 ? buf : *buf;
          *v41 = 136315138;
          v42 = v34;
          _os_log_debug_impl(&dword_297476000, v31, OS_LOG_TYPE_DEBUG, "#D Sending accessory type for ARTD: %s", v41, 0xCu);
          if (v40 < 0)
          {
            operator delete(*buf);
          }
        }
      }

      v36 = v23;
      if (v23)
      {
        xpc_retain(v23);
      }

      else
      {
        v36 = xpc_null_create();
      }

      v35[0] = 0;
      v35[1] = 0;
      antenna::Service::Internal::performCommandDriver_sync(this, &v36, v35);
      xpc_release(v36);
      v36 = 0;
      xpc_release(v23);
    }

    antenna::Service::Internal::reportAccessory_sync(this, v4);
  }

  v32 = *MEMORY[0x29EDCA608];
}

void sub_29753EF1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, char a12, uint64_t a13, xpc_object_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void antenna::Service::Internal::sendPowerSource_sync(antenna::Service::Internal *this)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v2) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v2);
      v3 = v2;
    }

    else
    {
      v3 = xpc_null_create();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  if (*(this + 118) == -1 || (v4 = this + 472, (TelephonyUtilIsInternalBuild() & 1) == 0) && (TelephonyUtilIsCarrierBuild() & 1) == 0)
  {
    v4 = this + 468;
  }

  v5 = *v4;
  v6 = xpc_string_create(*MEMORY[0x29EDC9048]);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v3, *MEMORY[0x29EDC8FA8], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = xpc_int64_create(v5);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v3, *MEMORY[0x29EDC8FF0], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  v10 = *(this + 4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    ctu::iokit::asString();
    v11 = v16 >= 0 ? &__p : __p;
    *buf = 136315138;
    v18 = v11;
    _os_log_impl(&dword_297476000, v10, OS_LOG_TYPE_DEFAULT, "#I Sending power source state: %s\n", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(__p);
      object = v3;
      if (v3)
      {
        goto LABEL_21;
      }

LABEL_23:
      object = xpc_null_create();
      goto LABEL_24;
    }
  }

  object = v3;
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_21:
  xpc_retain(v3);
LABEL_24:
  v13[0] = 0;
  v13[1] = 0;
  antenna::Service::Internal::performCommandDriver_sync(this, &object, v13);
  xpc_release(object);
  object = 0;
  xpc_release(v3);
  v12 = *MEMORY[0x29EDCA608];
}

void sub_29753F2C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void antenna::Service::Internal::sendDeviceMaterial_sync(antenna::Service::Internal *this)
{
  v50 = *MEMORY[0x29EDCA608];
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xdict = v2;
  }

  else
  {
    v3 = xpc_null_create();
    xdict = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  xdict = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_string_create(*MEMORY[0x29EDC9010]);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDC8FA8], v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v7 = (this + 488);
  v8 = *(this + 61);
  v9 = (this + 488);
  v10 = (this + 488);
  if (v8)
  {
    while (1)
    {
      while (1)
      {
        v10 = v8;
        v11 = *(v8 + 7);
        if (v11 < 2)
        {
          break;
        }

        v8 = *v10;
        v9 = v10;
        if (!*v10)
        {
          goto LABEL_18;
        }
      }

      if (v11)
      {
        break;
      }

      v8 = v10[1];
      if (!v8)
      {
        v9 = v10 + 1;
        goto LABEL_18;
      }
    }

    v12 = v10;
  }

  else
  {
LABEL_18:
    v12 = operator new(0x28uLL);
    *(v12 + 28) = 1;
    *v12 = 0;
    v12[1] = 0;
    v12[2] = v10;
    *v9 = v12;
    v13 = **(this + 60);
    if (v13)
    {
      *(this + 60) = v13;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 61), v12);
    ++*(this + 62);
  }

  v14 = xpc_int64_create(*(v12 + 8));
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDC9000], v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = *v7;
  v17 = (this + 488);
  v18 = (this + 488);
  if (*v7)
  {
    while (1)
    {
      while (1)
      {
        v18 = v16;
        v19 = *(v16 + 7);
        if (v19 < 3)
        {
          break;
        }

        v16 = *v18;
        v17 = v18;
        if (!*v18)
        {
          goto LABEL_31;
        }
      }

      if (v19 == 2)
      {
        break;
      }

      v16 = v18[1];
      if (!v16)
      {
        v17 = v18 + 1;
        goto LABEL_31;
      }
    }

    v20 = v18;
  }

  else
  {
LABEL_31:
    v20 = operator new(0x28uLL);
    *(v20 + 28) = 2;
    *v20 = 0;
    v20[1] = 0;
    v20[2] = v18;
    *v17 = v20;
    v21 = **(this + 60);
    if (v21)
    {
      *(this + 60) = v21;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 61), v20);
    ++*(this + 62);
  }

  v22 = xpc_int64_create(*(v20 + 8));
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDC8FD8], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  v24 = *v7;
  v25 = (this + 488);
  v26 = (this + 488);
  if (*v7)
  {
    while (1)
    {
      while (1)
      {
        v26 = v24;
        v27 = *(v24 + 7);
        if (v27 < 4)
        {
          break;
        }

        v24 = *v26;
        v25 = v26;
        if (!*v26)
        {
          goto LABEL_44;
        }
      }

      if (v27 == 3)
      {
        break;
      }

      v24 = v26[1];
      if (!v24)
      {
        v25 = v26 + 1;
        goto LABEL_44;
      }
    }

    v28 = v26;
  }

  else
  {
LABEL_44:
    v28 = operator new(0x28uLL);
    *(v28 + 28) = 3;
    *v28 = 0;
    v28[1] = 0;
    v28[2] = v26;
    *v25 = v28;
    v29 = **(this + 60);
    if (v29)
    {
      *(this + 60) = v29;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 61), v28);
    ++*(this + 62);
  }

  v30 = xpc_int64_create(*(v28 + 8));
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDC8FC0], v30);
  v31 = xpc_null_create();
  xpc_release(v30);
  xpc_release(v31);
  v32 = *v7;
  v33 = (this + 488);
  if (*v7)
  {
    while (1)
    {
      while (1)
      {
        v33 = v32;
        v34 = *(v32 + 7);
        if (v34 < 5)
        {
          break;
        }

        v32 = *v33;
        v7 = v33;
        if (!*v33)
        {
          goto LABEL_57;
        }
      }

      if (v34 == 4)
      {
        break;
      }

      v32 = v33[1];
      if (!v32)
      {
        v7 = v33 + 1;
        goto LABEL_57;
      }
    }

    v35 = v33;
  }

  else
  {
LABEL_57:
    v35 = operator new(0x28uLL);
    *(v35 + 28) = 4;
    *v35 = 0;
    v35[1] = 0;
    v35[2] = v33;
    *v7 = v35;
    v36 = **(this + 60);
    if (v36)
    {
      *(this + 60) = v36;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 61), v35);
    ++*(this + 62);
  }

  v37 = xpc_int64_create(*(v35 + 8));
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  v38 = xdict;
  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDC8FB8], v37);
  v39 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v39);
  v40 = *(this + 4);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(__p, &xdict);
    if (v46 >= 0)
    {
      v41 = __p;
    }

    else
    {
      v41 = __p[0];
    }

    *buf = 136315138;
    v49 = v41;
    _os_log_impl(&dword_297476000, v40, OS_LOG_TYPE_DEFAULT, "#I Sending device material: %s\n", buf, 0xCu);
    if (v46 < 0)
    {
      operator delete(__p[0]);
    }

    v38 = xdict;
  }

  v44 = v38;
  if (v38)
  {
    xpc_retain(v38);
  }

  else
  {
    v38 = xpc_null_create();
    v44 = v38;
  }

  v43[0] = 0;
  v43[1] = 0;
  antenna::Service::Internal::performCommandDriver_sync(this, &v44, v43);
  xpc_release(v38);
  v44 = 0;
  xpc_release(xdict);
  v42 = *MEMORY[0x29EDCA608];
}

void sub_29753F8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t antenna::Service::Internal::configuration_sync(antenna::Service::Internal *this)
{
  *(this + 27) = capabilities::txpower::supportedControlInput(this);
  v2 = capabilities::txpower::operator&();
  if (v2)
  {
    v3 = *(this + 27);
    v2 = capabilities::txpower::operator&();
    v4 = v2 != 0;
  }

  else
  {
    v4 = 0;
  }

  *(this + 72) = v4;
  v5 = capabilities::txpower::supportsMotion(v2);
  *(this + 73) = v5;
  v6 = capabilities::txpower::supportsAntennaFreeSpaceConfig(v5);
  *(this + 74) = v6;
  v7 = capabilities::txpower::supportsMotionAlways(v6);
  *(this + 75) = v7;
  v8 = capabilities::radio::supportsAccessoryDetection(v7);
  *(this + 76) = v8;
  v9 = capabilities::radio::supportsAccessoryTypeDetectionForRF(v8);
  *(this + 77) = v9;
  v10 = capabilities::radio::supportsAccessoryDetectionForARTD(v9);
  *(this + 78) = v10;
  v11 = capabilities::radio::supportsAccessoryTypeDetectionForARTD(v10);
  *(this + 79) = v11;
  v12 = capabilities::txpower::supportsVideoAntennaSwitching(v11);
  *(this + 80) = v12;
  v13 = capabilities::txpower::timeoutConfig(v12);
  v15 = (this + 224);
  v14 = *(this + 28);
  *(this + 31) = v13;
  *(this + 32) = v16;
  *(this + 47) = 0x7F0000007FLL;
  *(this + 96) = 0x7FFF;
  v17 = (this + 224);
  v18 = this + 224;
  if (v14)
  {
    v19 = v14;
    while (1)
    {
      while (1)
      {
        v18 = v19;
        v20 = *(v19 + 28);
        if (v20 < 1)
        {
          break;
        }

        v19 = *v18;
        v17 = v18;
        if (!*v18)
        {
          goto LABEL_11;
        }
      }

      if ((v20 & 0x80000000) == 0)
      {
        break;
      }

      v19 = *(v18 + 1);
      if (!v19)
      {
        v17 = v18 + 8;
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v21 = v18;
    v18 = operator new(0x28uLL);
    *(v18 + 7) = 0;
    v18[32] = 0;
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = v21;
    *v17 = v18;
    v22 = **(this + 27);
    if (v22)
    {
      *(this + 27) = v22;
    }

    v13 = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 28), v18);
    v14 = *(this + 28);
    ++*(this + 29);
  }

  v18[32] = 0;
  v23 = (this + 224);
  v24 = this + 224;
  if (v14)
  {
    while (1)
    {
      while (1)
      {
        v24 = v14;
        v25 = *(v14 + 28);
        if (v25 < 2)
        {
          break;
        }

        v14 = *v24;
        v23 = v24;
        if (!*v24)
        {
          goto LABEL_21;
        }
      }

      if (v25 == 1)
      {
        break;
      }

      v14 = *(v24 + 1);
      if (!v14)
      {
        v23 = v24 + 8;
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    v26 = v24;
    v24 = operator new(0x28uLL);
    *(v24 + 7) = 1;
    v24[32] = 0;
    *v24 = 0;
    *(v24 + 1) = 0;
    *(v24 + 2) = v26;
    *v23 = v24;
    v27 = **(this + 27);
    if (v27)
    {
      *(this + 27) = v27;
    }

    v13 = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 28), v24);
    ++*(this + 29);
  }

  v24[32] = 0;
  v28 = *v15;
  v29 = (this + 224);
  v30 = this + 224;
  if (*v15)
  {
    v31 = *v15;
    while (1)
    {
      while (1)
      {
        v30 = v31;
        v32 = *(v31 + 28);
        if (v32 < 4)
        {
          break;
        }

        v31 = *v30;
        v29 = v30;
        if (!*v30)
        {
          goto LABEL_31;
        }
      }

      if (v32 == 3)
      {
        break;
      }

      v31 = *(v30 + 1);
      if (!v31)
      {
        v29 = v30 + 8;
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_31:
    v33 = v30;
    v30 = operator new(0x28uLL);
    *(v30 + 7) = 3;
    v30[32] = 0;
    *v30 = 0;
    *(v30 + 1) = 0;
    *(v30 + 2) = v33;
    *v29 = v30;
    v34 = **(this + 27);
    if (v34)
    {
      *(this + 27) = v34;
    }

    v13 = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 28), v30);
    v28 = *(this + 28);
    ++*(this + 29);
  }

  v30[32] = 0;
  v35 = (this + 224);
  v36 = this + 224;
  if (v28)
  {
    while (1)
    {
      while (1)
      {
        v36 = v28;
        v37 = *(v28 + 28);
        if (v37 < 1)
        {
          break;
        }

        v28 = *v36;
        v35 = v36;
        if (!*v36)
        {
          goto LABEL_41;
        }
      }

      if ((v37 & 0x80000000) == 0)
      {
        break;
      }

      v28 = *(v36 + 1);
      if (!v28)
      {
        v35 = v36 + 8;
        goto LABEL_41;
      }
    }
  }

  else
  {
LABEL_41:
    v38 = v36;
    v36 = operator new(0x28uLL);
    *(v36 + 7) = 0;
    v36[32] = 0;
    *v36 = 0;
    *(v36 + 1) = 0;
    *(v36 + 2) = v38;
    *v35 = v36;
    v39 = **(this + 27);
    if (v39)
    {
      *(this + 27) = v39;
    }

    v13 = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 28), v36);
    ++*(this + 29);
  }

  v40 = v36[32];
  v42 = (this + 200);
  v41 = *(this + 25);
  v43 = (this + 200);
  v44 = this + 200;
  if (v41)
  {
    while (1)
    {
      while (1)
      {
        v44 = v41;
        v45 = *(v41 + 28);
        if (v45 < 1)
        {
          break;
        }

        v41 = *v44;
        v43 = v44;
        if (!*v44)
        {
          goto LABEL_51;
        }
      }

      if ((v45 & 0x80000000) == 0)
      {
        break;
      }

      v41 = *(v44 + 1);
      if (!v41)
      {
        v43 = v44 + 8;
        goto LABEL_51;
      }
    }
  }

  else
  {
LABEL_51:
    v46 = v44;
    v44 = operator new(0x28uLL);
    *(v44 + 7) = 0;
    v44[32] = 0;
    *v44 = 0;
    *(v44 + 1) = 0;
    *(v44 + 2) = v46;
    *v43 = v44;
    v47 = **(this + 24);
    if (v47)
    {
      *(this + 24) = v47;
    }

    v13 = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v44);
    ++*(this + 26);
  }

  v44[32] = v40;
  v48 = *v15;
  v49 = (this + 224);
  v50 = this + 224;
  if (*v15)
  {
    while (1)
    {
      while (1)
      {
        v50 = v48;
        v51 = *(v48 + 28);
        if (v51 < 2)
        {
          break;
        }

        v48 = *v50;
        v49 = v50;
        if (!*v50)
        {
          goto LABEL_61;
        }
      }

      if (v51 == 1)
      {
        break;
      }

      v48 = *(v50 + 1);
      if (!v48)
      {
        v49 = v50 + 8;
        goto LABEL_61;
      }
    }
  }

  else
  {
LABEL_61:
    v52 = v50;
    v50 = operator new(0x28uLL);
    *(v50 + 7) = 1;
    v50[32] = 0;
    *v50 = 0;
    *(v50 + 1) = 0;
    *(v50 + 2) = v52;
    *v49 = v50;
    v53 = **(this + 27);
    if (v53)
    {
      *(this + 27) = v53;
    }

    v13 = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 28), v50);
    ++*(this + 29);
  }

  v54 = v50[32];
  v55 = *v42;
  v56 = (this + 200);
  v57 = this + 200;
  if (*v42)
  {
    while (1)
    {
      while (1)
      {
        v57 = v55;
        v58 = *(v55 + 28);
        if (v58 < 2)
        {
          break;
        }

        v55 = *v57;
        v56 = v57;
        if (!*v57)
        {
          goto LABEL_71;
        }
      }

      if (v58 == 1)
      {
        break;
      }

      v55 = *(v57 + 1);
      if (!v55)
      {
        v56 = v57 + 8;
        goto LABEL_71;
      }
    }
  }

  else
  {
LABEL_71:
    v59 = v57;
    v57 = operator new(0x28uLL);
    *(v57 + 7) = 1;
    v57[32] = 0;
    *v57 = 0;
    *(v57 + 1) = 0;
    *(v57 + 2) = v59;
    *v56 = v57;
    v60 = **(this + 24);
    if (v60)
    {
      *(this + 24) = v60;
    }

    v13 = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v57);
    ++*(this + 26);
  }

  v57[32] = v54;
  v61 = *v15;
  v62 = (this + 224);
  if (*v15)
  {
    while (1)
    {
      while (1)
      {
        v62 = v61;
        v63 = *(v61 + 28);
        if (v63 < 4)
        {
          break;
        }

        v61 = *v62;
        v15 = v62;
        if (!*v62)
        {
          goto LABEL_81;
        }
      }

      if (v63 == 3)
      {
        break;
      }

      v61 = v62[1];
      if (!v61)
      {
        v15 = v62 + 1;
        goto LABEL_81;
      }
    }
  }

  else
  {
LABEL_81:
    v64 = v62;
    v62 = operator new(0x28uLL);
    *(v62 + 7) = 3;
    *(v62 + 32) = 0;
    *v62 = 0;
    v62[1] = 0;
    v62[2] = v64;
    *v15 = v62;
    v65 = **(this + 27);
    if (v65)
    {
      *(this + 27) = v65;
    }

    v13 = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 28), v62);
    ++*(this + 29);
  }

  v66 = *(v62 + 32);
  v67 = *v42;
  v68 = (this + 200);
  if (*v42)
  {
    while (1)
    {
      while (1)
      {
        v68 = v67;
        v69 = *(v67 + 28);
        if (v69 < 4)
        {
          break;
        }

        v67 = *v68;
        v42 = v68;
        if (!*v68)
        {
          goto LABEL_91;
        }
      }

      if (v69 == 3)
      {
        break;
      }

      v67 = v68[1];
      if (!v67)
      {
        v42 = v68 + 1;
        goto LABEL_91;
      }
    }
  }

  else
  {
LABEL_91:
    v70 = v68;
    v68 = operator new(0x28uLL);
    *(v68 + 7) = 3;
    *(v68 + 32) = 0;
    *v68 = 0;
    v68[1] = 0;
    v68[2] = v70;
    *v42 = v68;
    v71 = **(this + 24);
    if (v71)
    {
      *(this + 24) = v71;
    }

    v13 = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v68);
    ++*(this + 26);
  }

  *(v68 + 32) = v66;
  *(this + 15) = 0xFF00000004;
  v72 = capabilities::txpower::supportsPowerSourceDetection(v13);
  *(this + 84) = v72;
  v73 = capabilities::radio::supportsDeviceMaterial(v72);
  *(this + 85) = v73;
  CPMSVariant = capabilities::abs::getCPMSVariant(v73);
  *(this + 528) = CPMSVariant;
  v75 = capabilities::txpower::supportsKeyboard(CPMSVariant);
  *(this + 104) = v75;
  v76 = capabilities::txpower::supportedFaceID(v75);
  *(this + 22) = v76;
  result = capabilities::txpower::supportsFrontCamera(v76);
  *(this + 92) = result;
  return result;
}

void antenna::Service::Internal::stopService_sync(antenna::Service::Internal *this)
{
  antenna::Service::Internal::enableTxPowerCappingNotification_sync(this, 0);

  antenna::Service::Internal::stopTxPowerCapping_sync(this);
}

void antenna::Service::Internal::stopTxPowerCapping_sync(antenna::Service::Internal *this)
{
  if (*(this + 72) == 1)
  {
    v2 = *(this + 4);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Tx Power Capping Stop", buf, 2u);
      v3 = *(this + 14);
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(this + 14);
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    dispatch_source_cancel(v3);
    v4 = *(this + 14);
    *(this + 14) = 0;
    if (v4)
    {
      dispatch_release(v4);
    }

LABEL_8:
    *(this + 245) = 0;
    antenna::Service::Internal::stopMotionDetection_sync(this);
    antenna::Service::Internal::stopHandDetection_sync(this);
    *(this + 108) = 255;
    if (*(this + 73) != 1)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  if (*(this + 73) != 1)
  {
LABEL_3:
    *(this + 128) = 0;
    return;
  }

LABEL_9:
  v5 = *(this + 4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_297476000, v5, OS_LOG_TYPE_DEBUG, "#D iPad Tx Power Capping based on Motion Sensor Stop", v8, 2u);
    antenna::Service::Internal::stopMotionDetection_sync(this);
    v6 = *(this + 34);
    if (v6)
    {
LABEL_11:
      dispatch_source_cancel(v6);
      v7 = *(this + 34);
      *(this + 34) = 0;
      if (v7)
      {
        dispatch_release(v7);
      }
    }
  }

  else
  {
    antenna::Service::Internal::stopMotionDetection_sync(this);
    v6 = *(this + 34);
    if (v6)
    {
      goto LABEL_11;
    }
  }

  *(this + 66) = 255;
  *(this + 128) = 0;
}

void antenna::Service::Internal::stopService(antenna::Service::Internal *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 2);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::stopService(void)::$_0>(antenna::Service::Internal::stopService(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::stopService(void)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::stopService(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void antenna::Service::Internal::startService(antenna::Service::Internal *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 2);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::startService(void)::$_0>(antenna::Service::Internal::startService(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::startService(void)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::startService(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void antenna::Service::Internal::enterLowPower(antenna::Service::Internal *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 2);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::enterLowPower(void)::$_0>(antenna::Service::Internal::enterLowPower(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::enterLowPower(void)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::enterLowPower(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void antenna::Service::Internal::exitLowPower(antenna::Service::Internal *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 2);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::exitLowPower(void)::$_0>(antenna::Service::Internal::exitLowPower(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::exitLowPower(void)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::exitLowPower(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void antenna::Service::Internal::performCommandDriver_sync(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = a1[1];
  if (!v4 || (v7 = *a1, (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (MEMORY[0x29C272BA0](*a2) == MEMORY[0x29EDCAA00])
  {
    v10 = a1[7];
    v23 = *a2;
    if (v23)
    {
      xpc_retain(v23);
    }

    else
    {
      v23 = xpc_null_create();
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN7antenna7Service8Internal25performCommandDriver_syncEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvNS2_6objectEEEE_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_36_1;
    aBlock[4] = a1;
    aBlock[5] = v7;
    v17 = v9;
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v11 = *a2;
    v18 = v11;
    if (v11)
    {
      xpc_retain(v11);
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v18 = xpc_null_create();
      v12 = *a3;
      if (!*a3)
      {
LABEL_14:
        v13 = *(a3 + 8);
        v19 = v12;
        object = v13;
        if (v13)
        {
          dispatch_retain(v13);
        }

        v14 = _Block_copy(aBlock);
        v15 = a1[2];
        if (v15)
        {
          dispatch_retain(v15);
        }

        v21 = v14;
        v22 = v15;
        (**v10)(v10, &v23, &v21);
        if (v22)
        {
          dispatch_release(v22);
        }

        if (v21)
        {
          _Block_release(v21);
        }

        xpc_release(v23);
        v23 = 0;
        if (object)
        {
          dispatch_release(object);
        }

        if (v19)
        {
          _Block_release(v19);
        }

        xpc_release(v18);
        v18 = 0;
        if (v17)
        {
          std::__shared_weak_count::__release_weak(v17);
        }

        goto LABEL_28;
      }
    }

    v12 = _Block_copy(v12);
    goto LABEL_14;
  }

LABEL_28:
  std::__shared_weak_count::__release_weak(v9);
}

void sub_2975407E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, xpc_object_t object)
{
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(v19 - 72);
  dispatch::callback<void({block_pointer})(xpc::object)>::~callback(v18 + 64);
  xpc_release(object);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  xpc_release(*(v19 - 56));
  *(v19 - 56) = 0;
  std::__shared_weak_count::__release_weak(v17);
  _Unwind_Resume(a1);
}

uint64_t dispatch::callback<void({block_pointer})(xpc::object)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void antenna::Service::Internal::transmitStateHandler(uint64_t *a1, int a2, int a3)
{
  v4 = a1[1];
  if (!v4 || (v7 = *a1, (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x10uLL);
  *v10 = a1;
  v10[2] = a2;
  v10[3] = a3;
  v11 = a1[2];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0>(antenna::Service::Internal::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void antenna::Service::Internal::createTransmitStateDict_sync(int a1@<W1>, int a2@<W2>, xpc_object_t *a3@<X8>)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v6) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  if (a1 == 1)
  {
    v8 = xpc_string_create(*MEMORY[0x29EDBF668]);
    if (!v8)
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    if (a1)
    {
      *a3 = xpc_null_create();
      goto LABEL_35;
    }

    v8 = xpc_string_create(*MEMORY[0x29EDBF308]);
    if (!v8)
    {
      v8 = xpc_null_create();
    }
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBF2A0], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v10 = xpc_string_create(*MEMORY[0x29EDBF300]);
      if (!v10)
      {
        v10 = xpc_null_create();
      }

      goto LABEL_31;
    }

    if (a2 == 3)
    {
      v10 = xpc_string_create(*MEMORY[0x29EDBF0E8]);
      if (!v10)
      {
        v10 = xpc_null_create();
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (!a2)
    {
      v10 = xpc_string_create(*MEMORY[0x29EDBF430]);
      if (!v10)
      {
        v10 = xpc_null_create();
      }

      goto LABEL_31;
    }

    if (a2 == 1)
    {
      v10 = xpc_string_create(*MEMORY[0x29EDBF238]);
      if (!v10)
      {
        v10 = xpc_null_create();
      }

LABEL_31:
      xpc_dictionary_set_value(v7, *MEMORY[0x29EDBF488], v10);
      v11 = xpc_null_create();
      xpc_release(v10);
      xpc_release(v11);
    }
  }

  v12 = xpc_string_create(*MEMORY[0x29EDBEBE8]);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBEC68], v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  *a3 = v7;
  v7 = xpc_null_create();
LABEL_35:
  xpc_release(v7);
}

void antenna::Service::Internal::startTxPowerCapping_sync(antenna::Service::Internal *this)
{
  if ((*(this + 128) & 1) == 0 && (*(this + 83) & 1) == 0)
  {
    *(this + 128) = 1;
    if (*(this + 72) != 1)
    {
      goto LABEL_18;
    }

    v2 = *(this + 4);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13[0]) = 0;
      _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Tx Power Capping Start", v13, 2u);
      pthread_mutex_lock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
      v3 = unk_2A18CAF68;
      if (!unk_2A18CAF68)
      {
LABEL_6:
        v4 = operator new(1uLL);
        v5 = operator new(0x20uLL);
        *v5 = &unk_2A1E4FD98;
        v5[1] = 0;
        v5[2] = 0;
        v5[3] = v4;
        v6 = off_2A18CAF70;
        unk_2A18CAF68 = v4;
        off_2A18CAF70 = v5;
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        v3 = unk_2A18CAF68;
      }
    }

    else
    {
      pthread_mutex_lock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
      v3 = unk_2A18CAF68;
      if (!unk_2A18CAF68)
      {
        goto LABEL_6;
      }
    }

    v7 = off_2A18CAF70;
    v13[0] = v3;
    v13[1] = off_2A18CAF70;
    if (off_2A18CAF70)
    {
      atomic_fetch_add_explicit(off_2A18CAF70 + 1, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
    isCMHandDetectionSupported = Capabilities::isCMHandDetectionSupported(v3);
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = isCMHandDetectionSupported;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      isCMHandDetectionSupported = v9;
    }

    if (isCMHandDetectionSupported)
    {
      antenna::Service::Internal::processHandDetection_sync(this);
      antenna::Service::Internal::checkStartHandDetection_sync(this);
    }

    antenna::Service::Internal::startTxPowerCappingIPhone_sync(this);
LABEL_18:
    if (*(this + 73) != 1)
    {
      return;
    }

    v10 = *(this + 4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13[0]) = 0;
      _os_log_debug_impl(&dword_297476000, v10, OS_LOG_TYPE_DEBUG, "#D iPad Tx Power Capping based on Motion Sensor Start", v13, 2u);
      if (*(this + 160))
      {
LABEL_21:
        v11 = *(this + 34);
        if (!v11)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }

    else if (*(this + 160))
    {
      goto LABEL_21;
    }

    antenna::Service::Internal::startMotionDetection_sync(this);
    v11 = *(this + 34);
    if (!v11)
    {
LABEL_29:
      antenna::Service::Internal::sendTxPowerCappingIPadMode_sync(this);
      antenna::Service::Internal::startTxPowerCappingIPadWithMotionTimer_sync(this);
      return;
    }

LABEL_27:
    dispatch_source_cancel(v11);
    v12 = *(this + 34);
    *(this + 34) = 0;
    if (v12)
    {
      dispatch_release(v12);
    }

    goto LABEL_29;
  }
}

void sub_297541008(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  _Unwind_Resume(a1);
}

void antenna::Service::Internal::processHandDetection_sync(antenna::Service::Internal *this)
{
  v19 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  v2 = unk_2A18CAF68;
  if (!unk_2A18CAF68)
  {
    v3 = operator new(1uLL);
    v4 = operator new(0x20uLL);
    *v4 = &unk_2A1E4FD98;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v3;
    v5 = off_2A18CAF70;
    unk_2A18CAF68 = v3;
    off_2A18CAF70 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = unk_2A18CAF68;
  }

  v6 = off_2A18CAF70;
  *&v18 = v2;
  *(&v18 + 1) = off_2A18CAF70;
  if (off_2A18CAF70)
  {
    atomic_fetch_add_explicit(off_2A18CAF70 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  isCMHandDetectionSupported = Capabilities::isCMHandDetectionSupported(v2);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = isCMHandDetectionSupported;
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (!v13)
    {
      goto LABEL_27;
    }
  }

  else if (!isCMHandDetectionSupported)
  {
    goto LABEL_27;
  }

  v8 = (this + 440);
  v9 = *(this + 463);
  v10 = this + 440;
  if (v9 < 0)
  {
    v10 = *v8;
  }

  v11 = strlen(*MEMORY[0x29EDBF878]);
  if (!strncasecmp(v10, *MEMORY[0x29EDBF878], v11))
  {
    isHandednessCondition = antenna::Service::Internal::isHandednessCondition(this);
    v15 = *(this + 4);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (isHandednessCondition)
    {
      if (v16)
      {
        LOWORD(v18) = 0;
        _os_log_debug_impl(&dword_297476000, v15, OS_LOG_TYPE_DEBUG, "#D Handedness condition is met", &v18, 2u);
      }

      antenna::Service::Internal::sendMotionHandDetectionState_sync(this, *(this + 108));
    }

    else
    {
      if (v16)
      {
        LOWORD(v18) = 0;
        _os_log_debug_impl(&dword_297476000, v15, OS_LOG_TYPE_DEBUG, "#D Handedness condition is not met. Default handedness state is sending.", &v18, 2u);
      }

      antenna::Service::Internal::sendMotionHandDetectionState_sync(this, 0);
    }
  }

  else
  {
    v12 = *(this + 4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      if (v9 < 0)
      {
        v8 = *v8;
      }

      LODWORD(v18) = 136315138;
      *(&v18 + 4) = v8;
      _os_log_debug_impl(&dword_297476000, v12, OS_LOG_TYPE_DEBUG, "#D Hand Detection Overriding Mode is %s, and sending is skipped", &v18, 0xCu);
    }
  }

LABEL_27:
  v17 = *MEMORY[0x29EDCA608];
}

void sub_297541300(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  _Unwind_Resume(a1);
}

void antenna::Service::Internal::checkStartHandDetection_sync(antenna::Service::Internal *this)
{
  pthread_mutex_lock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  v2 = unk_2A18CAF68;
  if (!unk_2A18CAF68)
  {
    v3 = operator new(1uLL);
    v4 = operator new(0x20uLL);
    *v4 = &unk_2A1E4FD98;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v3;
    v5 = off_2A18CAF70;
    unk_2A18CAF68 = v3;
    off_2A18CAF70 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = unk_2A18CAF68;
  }

  v6 = off_2A18CAF70;
  v10[0] = v2;
  v10[1] = off_2A18CAF70;
  if (off_2A18CAF70)
  {
    atomic_fetch_add_explicit(off_2A18CAF70 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  if (Capabilities::isCMHandDetectionSupported(v2))
  {
    v7 = *(this + 52);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    if (v7)
    {
      if (*(this + 464) == 1)
      {
        v10[0] = **(this + 52);
        ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::start(void)::{lambda(void)#1}>(v10[0], v10);
        v8 = *(this + 4);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v10[0]) = 0;
          _os_log_debug_impl(&dword_297476000, v8, OS_LOG_TYPE_DEBUG, "#D Hand Detection Started!", v10, 2u);
        }
      }

      else
      {
        v9 = *(this + 4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v10[0]) = 0;
          _os_log_debug_impl(&dword_297476000, v9, OS_LOG_TYPE_DEBUG, "#D Uncovered prox is detected. Set the detection state as default.", v10, 2u);
        }

        antenna::Service::Internal::processHandDetection_sync(this);
        antenna::Service::Internal::stopHandDetection_sync(this);
      }
    }
  }

  else if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_2975415C8(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  _Unwind_Resume(a1);
}

void antenna::Service::Internal::startTxPowerCappingIPhone_sync(antenna::Service::Internal *this)
{
  v37 = *MEMORY[0x29EDCA608];
  v2 = *(this + 27);
  if (capabilities::txpower::operator&())
  {
    if ((*(this + 75) & 1) == 0)
    {
      v4 = (this + 200);
      v3 = *(this + 25);
      v5 = (this + 200);
      v6 = this + 200;
      if (v3)
      {
        while (1)
        {
          while (1)
          {
            v6 = v3;
            v7 = *(v3 + 28);
            if (v7 < 2)
            {
              break;
            }

            v3 = *v6;
            v5 = v6;
            if (!*v6)
            {
              goto LABEL_10;
            }
          }

          if (v7 == 1)
          {
            break;
          }

          v3 = *(v6 + 1);
          if (!v3)
          {
            v5 = v6 + 8;
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        v8 = v6;
        v6 = operator new(0x28uLL);
        *(v6 + 7) = 1;
        v6[32] = 0;
        *v6 = 0;
        *(v6 + 1) = 0;
        *(v6 + 2) = v8;
        *v5 = v6;
        v9 = **(this + 24);
        if (v9)
        {
          *(this + 24) = v9;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v6);
        ++*(this + 26);
      }

      if ((v6[32] & 1) == 0)
      {
        v10 = *v4;
        v11 = (this + 200);
        if (*v4)
        {
          while (1)
          {
            while (1)
            {
              v11 = v10;
              v12 = *(v10 + 28);
              if (v12 < 4)
              {
                break;
              }

              v10 = *v11;
              v4 = v11;
              if (!*v11)
              {
                goto LABEL_21;
              }
            }

            if (v12 == 3)
            {
              break;
            }

            v10 = v11[1];
            if (!v10)
            {
              v4 = v11 + 1;
              goto LABEL_21;
            }
          }
        }

        else
        {
LABEL_21:
          v13 = v11;
          v11 = operator new(0x28uLL);
          *(v11 + 7) = 3;
          *(v11 + 32) = 0;
          *v11 = 0;
          v11[1] = 0;
          v11[2] = v13;
          *v4 = v11;
          v14 = **(this + 24);
          if (v14)
          {
            *(this + 24) = v14;
          }

          std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v11);
          ++*(this + 26);
        }

        if (*(v11 + 32) != 1)
        {
          antenna::Service::Internal::stopMotionDetection_sync(this);
          v15 = *(this + 14);
          if (!v15)
          {
            goto LABEL_29;
          }

          goto LABEL_27;
        }
      }
    }

    antenna::Service::Internal::startMotionDetection_sync(this);
  }

  v15 = *(this + 14);
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_27:
  dispatch_source_cancel(v15);
  v15 = *(this + 14);
  *(this + 14) = 0;
  if (v15)
  {
    dispatch_release(v15);
  }

LABEL_29:
  if (config::hw::watch(v15))
  {
    TxPowerCappingForWatch = antenna::Service::Internal::getTxPowerCappingForWatch(this);
  }

  else if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild() || (TxPowerCappingForWatch = *(this + 30), TxPowerCappingForWatch == 4))
  {
    if ((antenna::Service::Internal::isAudioReceiverOutputOnlyActive(this) & 1) != 0 || antenna::Service::Internal::isAudioAnyOutputActive(this) && !*(this + 41) || *(this + 75) == 1 && (antenna::Service::Internal::isAudioAnyOutputActive(this) & 1) == 0 && !*(this + 41))
    {
      TxPowerCappingForWatch = 2;
    }

    else
    {
      TxPowerCappingForWatch = 3;
    }
  }

  v17 = xpc_dictionary_create(0, 0, 0);
  if (v17 || (v17 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v17) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v17);
      v18 = v17;
    }

    else
    {
      v18 = xpc_null_create();
    }
  }

  else
  {
    v18 = xpc_null_create();
    v17 = 0;
  }

  xpc_release(v17);
  v19 = xpc_string_create(*MEMORY[0x29EDC9018]);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(v18, *MEMORY[0x29EDC8FA8], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v21 = xpc_BOOL_create(1);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v18, *MEMORY[0x29EDC9040], v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = xpc_int64_create(TxPowerCappingForWatch);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(v18, *MEMORY[0x29EDC90D0], v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  v25 = *(this + 4);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    memset(&v34, 0, sizeof(v34));
    if (TxPowerCappingForWatch - 1 < 3)
    {
      std::string::__assign_external(&v34, **(&unk_29EE6BAC8 + TxPowerCappingForWatch - 1));
    }

    v30 = &v34;
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = v34.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v36 = v30;
    _os_log_debug_impl(&dword_297476000, v25, OS_LOG_TYPE_DEBUG, "#D Tx Power Capping: %s", buf, 0xCu);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 74) == 1)
  {
    if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild() || (v26 = *(this + 31), v26 == 255))
    {
      v26 = (antenna::Service::Internal::isAudioReceiverOutputOnlyActive(this) & 1) != 0 || *(this + 41) != 0;
    }

    v27 = xpc_int64_create(v26);
    if (!v27)
    {
      v27 = xpc_null_create();
    }

    xpc_dictionary_set_value(v18, *MEMORY[0x29EDC9100], v27);
    v28 = xpc_null_create();
    xpc_release(v27);
    xpc_release(v28);
    v29 = *(this + 4);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v34.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(v34.__r_.__value_.__r.__words[0]) = v26;
      _os_log_debug_impl(&dword_297476000, v29, OS_LOG_TYPE_DEBUG, "#D iPhone Tx Power Free Space: 0x%x", &v34, 8u);
      object = v18;
      if (v18)
      {
        goto LABEL_66;
      }

LABEL_76:
      object = xpc_null_create();
      goto LABEL_77;
    }
  }

  object = v18;
  if (!v18)
  {
    goto LABEL_76;
  }

LABEL_66:
  xpc_retain(v18);
LABEL_77:
  v32[0] = 0;
  v32[1] = 0;
  antenna::Service::Internal::performCommandDriver_sync(this, &object, v32);
  xpc_release(object);
  object = 0;
  antenna::Service::Internal::startTxPowerCappingIPhoneTimer_sync(this);
  if (*(this + 244) == 1 && *(this + 245) == 1)
  {
    AudioServicesPlaySystemSound(0x452u);
    *(this + 245) = 0;
  }

  xpc_release(v18);
  v31 = *MEMORY[0x29EDCA608];
}

void sub_297541BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void antenna::Service::Internal::startTxPowerCappingIPadWithMotion_sync(NSObject **this)
{
  if ((this[20] & 1) == 0)
  {
    antenna::Service::Internal::startMotionDetection_sync(this);
  }

  v2 = this[34];
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = this[34];
    this[34] = 0;
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  antenna::Service::Internal::sendTxPowerCappingIPadMode_sync(this);

  antenna::Service::Internal::startTxPowerCappingIPadWithMotionTimer_sync(this);
}

void antenna::Service::Internal::stopTxPowerCappingIPhone_sync(antenna::Service::Internal *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 14);
    *(this + 14) = 0;
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  *(this + 245) = 0;
  antenna::Service::Internal::stopMotionDetection_sync(this);
  antenna::Service::Internal::stopHandDetection_sync(this);
  *(this + 108) = 255;
}

void antenna::Service::Internal::stopTxPowerCappingIPadWithMotion_sync(NSObject **this)
{
  antenna::Service::Internal::stopMotionDetection_sync(this);
  v2 = this[34];
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = this[34];
    this[34] = 0;
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  *(this + 66) = 255;
}

void antenna::Service::Internal::setMaxPower_sync(antenna::Service::Internal *this, xpc_object_t *a2)
{
  v4 = *MEMORY[0x29EDBE8B8];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE8B8]))
  {
    value = xpc_dictionary_get_value(*a2, v4);
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    v6 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    if (v6 <= 0x3E8)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFF;
    }

    *(this + 94) = v7;
  }

  v8 = *MEMORY[0x29EDBEA90];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEA90]))
  {
    v9 = xpc_dictionary_get_value(*a2, v8);
    object = v9;
    if (v9)
    {
      xpc_retain(v9);
    }

    else
    {
      object = xpc_null_create();
    }

    v10 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    if (v10 <= 0x3E8)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFF;
    }

    *(this + 95) = v11;
  }

  v12 = *MEMORY[0x29EDBE698];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE698]))
  {
    v13 = xpc_dictionary_get_value(*a2, v12);
    object = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      object = xpc_null_create();
    }

    *(this + 96) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  if (!*(this + 528))
  {
    antenna::Service::Internal::configTxPower_sync(this, 2u);
  }
}

unint64_t antenna::Service::Internal::calculateTxValue(antenna::Service::Internal *this, int a2, int a3)
{
  result = 0x7FFFLL;
  if (a3 != 0x7FFF)
  {
    return (a3 * a2) / 0x64uLL;
  }

  return result;
}

void antenna::Service::Internal::setMaxPower_sync(antenna::Service::Internal *this)
{
  if (!*(this + 528))
  {
    antenna::Service::Internal::configTxPower_sync(this, 2u);
  }
}

void antenna::Service::Internal::callActive(antenna::Service::Internal *this)
{
  v2 = *(this + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Call Active!", v3, 2u);
  }

  *(this + 82) = 1;
}

void antenna::Service::Internal::callInactive(antenna::Service::Internal *this)
{
  v2 = *(this + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Call Inactive!", v3, 2u);
  }

  *(this + 82) = 0;
}

uint64_t antenna::Service::Internal::isAudioReceiverOutputOnlyActive(antenna::Service::Internal *this)
{
  v3 = (this + 200);
  v2 = *(this + 25);
  v4 = (this + 200);
  v5 = this + 200;
  if (v2)
  {
    while (1)
    {
      while (1)
      {
        v5 = v2;
        v6 = *(v2 + 28);
        if (v6 < 1)
        {
          break;
        }

        v2 = *v5;
        v4 = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      if ((v6 & 0x80000000) == 0)
      {
        break;
      }

      v2 = *(v5 + 1);
      if (!v2)
      {
        v4 = v5 + 8;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v7 = v5;
    v5 = operator new(0x28uLL);
    *(v5 + 7) = 0;
    v5[32] = 0;
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = v7;
    *v4 = v5;
    v8 = **(this + 24);
    if (v8)
    {
      *(this + 24) = v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v5);
    ++*(this + 26);
  }

  if (v5[32] != 1)
  {
    return 0;
  }

  v9 = *v3;
  v10 = v3;
  v11 = v3;
  if (*v3)
  {
    while (1)
    {
      while (1)
      {
        v11 = v9;
        v12 = *(v9 + 28);
        if (v12 < 2)
        {
          break;
        }

        v9 = *v11;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_19;
        }
      }

      if (v12 == 1)
      {
        break;
      }

      v9 = v11[1];
      if (!v9)
      {
        v10 = v11 + 1;
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    v13 = v11;
    v11 = operator new(0x28uLL);
    *(v11 + 7) = 1;
    *(v11 + 32) = 0;
    *v11 = 0;
    v11[1] = 0;
    v11[2] = v13;
    *v10 = v11;
    v14 = **(this + 24);
    if (v14)
    {
      *(this + 24) = v14;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v11);
    ++*(this + 26);
  }

  if (v11[4])
  {
    return 0;
  }

  v16 = *v3;
  v17 = v3;
  if (*v3)
  {
    while (1)
    {
      while (1)
      {
        v17 = v16;
        v18 = *(v16 + 28);
        if (v18 < 4)
        {
          break;
        }

        v16 = *v17;
        v3 = v17;
        if (!*v17)
        {
          goto LABEL_31;
        }
      }

      if (v18 == 3)
      {
        break;
      }

      v16 = v17[1];
      if (!v16)
      {
        v3 = v17 + 1;
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_31:
    v19 = v17;
    v17 = operator new(0x28uLL);
    *(v17 + 7) = 3;
    *(v17 + 32) = 0;
    *v17 = 0;
    v17[1] = 0;
    v17[2] = v19;
    *v3 = v17;
    v20 = **(this + 24);
    if (v20)
    {
      *(this + 24) = v20;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v17);
    ++*(this + 26);
  }

  return (*(v17 + 32) ^ 1) & 1;
}

uint64_t antenna::Service::Internal::isAudioAnyOutputActive(antenna::Service::Internal *this)
{
  v3 = (this + 200);
  v2 = *(this + 25);
  v4 = (this + 200);
  v5 = this + 200;
  if (v2)
  {
    while (1)
    {
      while (1)
      {
        v5 = v2;
        v6 = *(v2 + 28);
        if (v6 < 1)
        {
          break;
        }

        v2 = *v5;
        v4 = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      if ((v6 & 0x80000000) == 0)
      {
        break;
      }

      v2 = *(v5 + 1);
      if (!v2)
      {
        v4 = v5 + 8;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v7 = v5;
    v5 = operator new(0x28uLL);
    *(v5 + 7) = 0;
    v5[32] = 0;
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = v7;
    *v4 = v5;
    v8 = **(this + 24);
    if (v8)
    {
      *(this + 24) = v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v5);
    ++*(this + 26);
  }

  if (v5[32])
  {
    return 1;
  }

  v9 = *v3;
  v10 = v3;
  v11 = v3;
  if (*v3)
  {
    while (1)
    {
      while (1)
      {
        v11 = v9;
        v12 = *(v9 + 28);
        if (v12 < 2)
        {
          break;
        }

        v9 = *v11;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_19;
        }
      }

      if (v12 == 1)
      {
        break;
      }

      v9 = v11[1];
      if (!v9)
      {
        v10 = v11 + 1;
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    v13 = v11;
    v11 = operator new(0x28uLL);
    *(v11 + 7) = 1;
    *(v11 + 32) = 0;
    *v11 = 0;
    v11[1] = 0;
    v11[2] = v13;
    *v10 = v11;
    v14 = **(this + 24);
    if (v14)
    {
      *(this + 24) = v14;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v11);
    ++*(this + 26);
  }

  if (v11[4])
  {
    return 1;
  }

  v16 = *v3;
  v17 = v3;
  if (*v3)
  {
    while (1)
    {
      while (1)
      {
        v17 = v16;
        v18 = *(v16 + 28);
        if (v18 < 4)
        {
          break;
        }

        v16 = *v17;
        v3 = v17;
        if (!*v17)
        {
          goto LABEL_31;
        }
      }

      if (v18 == 3)
      {
        break;
      }

      v16 = v17[1];
      if (!v16)
      {
        v3 = v17 + 1;
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_31:
    v19 = v17;
    v17 = operator new(0x28uLL);
    *(v17 + 7) = 3;
    *(v17 + 32) = 0;
    *v17 = 0;
    v17[1] = 0;
    v17[2] = v19;
    *v3 = v17;
    v20 = **(this + 24);
    if (v20)
    {
      *(this + 24) = v20;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v17);
    ++*(this + 26);
  }

  return v17[4] & 1;
}

uint64_t antenna::Service::Internal::isAudioOtherOutputActive(antenna::Service::Internal *this)
{
  v3 = (this + 200);
  v2 = *(this + 25);
  if (v2)
  {
    while (1)
    {
      while (1)
      {
        v4 = v2;
        v5 = *(v2 + 28);
        if (v5 < 2)
        {
          break;
        }

        v2 = *v4;
        v3 = v4;
        if (!*v4)
        {
          goto LABEL_8;
        }
      }

      if (v5 == 1)
      {
        break;
      }

      v2 = *(v4 + 1);
      if (!v2)
      {
        v3 = v4 + 8;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v4 = this + 200;
LABEL_8:
    v6 = v4;
    v4 = operator new(0x28uLL);
    *(v4 + 7) = 1;
    v4[32] = 0;
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = v6;
    *v3 = v4;
    v7 = **(this + 24);
    if (v7)
    {
      *(this + 24) = v7;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v4);
    ++*(this + 26);
  }

  return v4[32];
}

uint64_t antenna::Service::Internal::isAudioSpeakerOutputActive(antenna::Service::Internal *this)
{
  v3 = (this + 200);
  v2 = *(this + 25);
  if (v2)
  {
    while (1)
    {
      while (1)
      {
        v4 = v2;
        v5 = *(v2 + 28);
        if (v5 < 4)
        {
          break;
        }

        v2 = *v4;
        v3 = v4;
        if (!*v4)
        {
          goto LABEL_8;
        }
      }

      if (v5 == 3)
      {
        break;
      }

      v2 = *(v4 + 1);
      if (!v2)
      {
        v3 = v4 + 8;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v4 = this + 200;
LABEL_8:
    v6 = v4;
    v4 = operator new(0x28uLL);
    *(v4 + 7) = 3;
    v4[32] = 0;
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = v6;
    *v3 = v4;
    v7 = **(this + 24);
    if (v7)
    {
      *(this + 24) = v7;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v4);
    ++*(this + 26);
  }

  return v4[32];
}

uint64_t antenna::Service::Internal::isAudioReceiverOutputActive(antenna::Service::Internal *this)
{
  v3 = (this + 200);
  v2 = *(this + 25);
  if (v2)
  {
    while (1)
    {
      while (1)
      {
        v4 = v2;
        v5 = *(v2 + 28);
        if (v5 < 1)
        {
          break;
        }

        v2 = *v4;
        v3 = v4;
        if (!*v4)
        {
          goto LABEL_8;
        }
      }

      if ((v5 & 0x80000000) == 0)
      {
        break;
      }

      v2 = *(v4 + 1);
      if (!v2)
      {
        v3 = v4 + 8;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v4 = this + 200;
LABEL_8:
    v6 = v4;
    v4 = operator new(0x28uLL);
    *(v4 + 7) = 0;
    v4[32] = 0;
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = v6;
    *v3 = v4;
    v7 = **(this + 24);
    if (v7)
    {
      *(this + 24) = v7;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v4);
    ++*(this + 26);
  }

  return v4[32];
}

void antenna::Service::Internal::setAudioState(uint64_t *a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v4 = a1[1];
    if (!v4)
    {
LABEL_9:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v4 = a1[1];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  v5 = *a1;
  v6 = std::__shared_weak_count::lock(v4);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = xpc_null_create();
  v10 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::setAudioState(xpc::dict)::$_0>(antenna::Service::Internal::setAudioState(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::setAudioState(xpc::dict)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::setAudioState(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  xpc_release(v9);
}

uint64_t antenna::Service::Internal::setTxPowerPlayAlert_sync(uint64_t result, int a2)
{
  *(result + 245) = 0;
  if (*(result + 244) == 1)
  {
    v3 = result;
    result = TelephonyUtilIsInternalBuild();
    if ((result & 1) == 0 && (result = TelephonyUtilIsCarrierBuild(), !result) || (v4 = *(v3 + 120), v4 == 4))
    {
      result = antenna::Service::Internal::isAudioReceiverOutputOnlyActive(v3);
      if (result)
      {
        goto LABEL_6;
      }

      result = antenna::Service::Internal::isAudioAnyOutputActive(v3);
      if (result)
      {
        if (!*(v3 + 164))
        {
          goto LABEL_6;
        }
      }

      if (*(v3 + 75) == 1)
      {
        result = antenna::Service::Internal::isAudioAnyOutputActive(v3);
        if ((result & 1) != 0 || *(v3 + 164))
        {
          if (a2 == 3)
          {
            return result;
          }

LABEL_17:
          *(v3 + 245) = 1;
          return result;
        }

LABEL_6:
        if (a2 == 2)
        {
          return result;
        }

        goto LABEL_17;
      }

      v4 = 3;
    }

    if (v4 == a2)
    {
      return result;
    }

    goto LABEL_17;
  }

  return result;
}

uint64_t antenna::Service::Internal::getTxPowerCappingForIPhone(antenna::Service::Internal *this)
{
  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild() || (result = *(this + 30), result == 4))
  {
    if ((antenna::Service::Internal::isAudioReceiverOutputOnlyActive(this) & 1) != 0 || antenna::Service::Internal::isAudioAnyOutputActive(this) && !*(this + 41) || *(this + 75) == 1 && (antenna::Service::Internal::isAudioAnyOutputActive(this) & 1) == 0 && !*(this + 41))
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

void antenna::Service::Internal::stopTxMotionCallbackTimer_sync(antenna::Service::Internal *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 21);
    *(this + 21) = 0;
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void antenna::Service::Internal::startTxMotionCallbackTimer_sync(dispatch_queue_t *this)
{
  v2 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, this[2]);
  v3 = this[21];
  this[21] = v2;
  if (v3)
  {
    dispatch_release(v3);
    v2 = this[21];
  }

  v4 = dispatch_time(0, 5120000000);
  dispatch_source_set_timer(v2, v4, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  v5 = this[1];
  if (!v5 || (v6 = *this, (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v10 = this[21];
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 1174405120;
  handler[2] = ___ZN7antenna7Service8Internal31startTxMotionCallbackTimer_syncEv_block_invoke;
  handler[3] = &__block_descriptor_tmp_30;
  handler[4] = this;
  handler[5] = v6;
  v12 = v8;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  dispatch_source_set_event_handler(v10, handler);
  dispatch_activate(this[21]);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::__release_weak(v8);
}

void ___ZN7antenna7Service8Internal31startTxMotionCallbackTimer_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        antenna::Service::Internal::handleMotionCallbackTimerExpiry_sync(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);

        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void antenna::Service::Internal::handleMotionCallbackTimerExpiry_sync(antenna::Service::Internal *this)
{
  v2 = *(this + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I WARNING - Motion callback missing", v7, 2u);
  }

  v3 = *(this + 21);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(this + 21);
    *(this + 21) = 0;
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  ++*(this + 22);
  *(this + 41) = 1;
  antenna::Service::Internal::startTxMotionCallbackTimer_sync(this);
  if (*(this + 73) == 1)
  {
    if ((*(this + 160) & 1) == 0)
    {
      antenna::Service::Internal::startMotionDetection_sync(this);
    }

    v5 = *(this + 34);
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = *(this + 34);
      *(this + 34) = 0;
      if (v6)
      {
        dispatch_release(v6);
      }
    }

    antenna::Service::Internal::sendTxPowerCappingIPadMode_sync(this);
    antenna::Service::Internal::startTxPowerCappingIPadWithMotionTimer_sync(this);
  }
}

uint64_t __copy_helper_block_e8_40c50_ZTSNSt3__18weak_ptrIN7antenna7Service8InternalEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c50_ZTSNSt3__18weak_ptrIN7antenna7Service8InternalEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void antenna::Service::Internal::setMotionThresholds(CMOnBodyDelegate **a1, ctu **a2)
{
  if (a1[18] && CMOnBodyDelegate::isSupported(a1))
  {
    ctu::xpc_to_cf(&cf, *a2, v4);
    v5 = cf;
    if (cf && (v6 = CFGetTypeID(cf), v6 == CFDictionaryGetTypeID()))
    {
      v9 = v5;
      CFRetain(v5);
      v7 = cf;
      if (!cf)
      {
LABEL_9:
        CMOnBodyDelegate::setThresholds(a1[18], v5);
        if (v5)
        {
          CFRelease(v5);
        }

        return;
      }
    }

    else
    {
      v5 = 0;
      v9 = 0;
      v7 = cf;
      if (!cf)
      {
        goto LABEL_9;
      }
    }

    CFRelease(v7);
    goto LABEL_9;
  }
}

void sub_297542E20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void antenna::Service::Internal::startMotionDetection_sync(antenna::Service::Internal *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v2 = *(this + 21);
    *(this + 21) = 0;
    if (v2)
    {
      dispatch_release(v2);
    }
  }

  if (*(this + 128) == 1)
  {
    if (CMOnBodyDelegate::isSupported(v2))
    {
      if ((*(this + 160) & 1) == 0)
      {
        v3 = *(this + 18);
        if (v3)
        {
          *(this + 160) = 1;
          *(this + 41) = 1;
          CMOnBodyDelegate::startMotionDetection(v3);
          antenna::Service::Internal::startTxMotionCallbackTimer_sync(this);
          v4 = *(this + 4);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
          {
            *v5 = 0;
            _os_log_debug_impl(&dword_297476000, v4, OS_LOG_TYPE_DEBUG, "#D Motion Detection has been started!", v5, 2u);
          }
        }
      }
    }
  }
}

void antenna::Service::Internal::stopMotionDetection_sync(antenna::Service::Internal *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v2 = *(this + 21);
    *(this + 21) = 0;
    if (v2)
    {
      dispatch_release(v2);
    }
  }

  if (*(this + 160) == 1 && *(this + 18) && CMOnBodyDelegate::isSupported(v2) && (*(this + 160) = 0, CMOnBodyDelegate::stopMotionDetection(*(this + 18)), *(this + 22) = 0, v3 = *(this + 4), os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG)))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_297476000, v3, OS_LOG_TYPE_DEBUG, "#D Motion Detection has been stopped!", v4, 2u);
    *(this + 41) = 1;
  }

  else
  {
    *(this + 41) = 1;
  }
}

void antenna::Service::Internal::motionDetectCallback_sync(uint64_t a1, int a2)
{
  if (*(a1 + 160) != 1)
  {
    return;
  }

  v18 = v2;
  v19 = v3;
  v6 = *(a1 + 168);
  if (v6)
  {
    dispatch_source_cancel(v6);
    v7 = *(a1 + 168);
    *(a1 + 168) = 0;
    if (v7)
    {
      dispatch_release(v7);
    }
  }

  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild() || (v8 = *(a1 + 120), v8 == 4))
  {
    if ((antenna::Service::Internal::isAudioReceiverOutputOnlyActive(a1) & 1) != 0 || antenna::Service::Internal::isAudioAnyOutputActive(a1) && !*(a1 + 164))
    {
LABEL_9:
      v8 = 2;
      if (*(a1 + 72) != 1)
      {
        goto LABEL_36;
      }

      goto LABEL_20;
    }

    if (*(a1 + 75) == 1)
    {
      if ((antenna::Service::Internal::isAudioAnyOutputActive(a1) & 1) != 0 || *(a1 + 164))
      {
        v8 = 3;
        if (*(a1 + 72) != 1)
        {
          goto LABEL_36;
        }

        goto LABEL_20;
      }

      goto LABEL_9;
    }

    v8 = 3;
  }

  if (*(a1 + 72) != 1)
  {
    goto LABEL_36;
  }

LABEL_20:
  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild() || (v8 = *(a1 + 120), v8 == 4))
  {
    if ((antenna::Service::Internal::isAudioReceiverOutputOnlyActive(a1) & 1) != 0 || antenna::Service::Internal::isAudioAnyOutputActive(a1) && !*(a1 + 164))
    {
      goto LABEL_24;
    }

    if (*(a1 + 75) != 1)
    {
      v8 = 3;
      goto LABEL_36;
    }

    if ((antenna::Service::Internal::isAudioAnyOutputActive(a1) & 1) != 0 || *(a1 + 164))
    {
      v8 = 3;
      v9 = *(a1 + 32);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (a2)
      {
        goto LABEL_37;
      }
    }

    else
    {
LABEL_24:
      v8 = 2;
      v9 = *(a1 + 32);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (a2)
      {
        goto LABEL_37;
      }
    }

LABEL_25:
    if (!v10)
    {
      v11 = 0;
      if (*(a1 + 72) == 1)
      {
        goto LABEL_39;
      }

      goto LABEL_50;
    }

    *buf = 0;
    _os_log_debug_impl(&dword_297476000, v9, OS_LOG_TYPE_DEBUG, "#D Motion On Table Detected.", buf, 2u);
    v11 = 0;
    if (*(a1 + 72) != 1)
    {
      goto LABEL_50;
    }

LABEL_39:
    *(a1 + 245) = 0;
    if (*(a1 + 244) == 1)
    {
      if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild() || (v12 = *(a1 + 120), v12 == 4))
      {
        if ((antenna::Service::Internal::isAudioReceiverOutputOnlyActive(a1) & 1) == 0 && (!antenna::Service::Internal::isAudioAnyOutputActive(a1) || *(a1 + 164)) && (*(a1 + 75) != 1 || (antenna::Service::Internal::isAudioAnyOutputActive(a1) & 1) != 0 || *(a1 + 164)))
        {
          if (v8 == 3)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

        v12 = 2;
      }

      if (v12 != v8)
      {
LABEL_46:
        *(a1 + 245) = 1;
      }
    }

LABEL_47:
    v13 = *(a1 + 108);
    if (capabilities::txpower::operator&() && v11 != *(a1 + 164))
    {
      antenna::Service::Internal::processHandDetection_sync(a1);
    }

    goto LABEL_50;
  }

LABEL_36:
  v9 = *(a1 + 32);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_37:
  if (v10)
  {
    *v16 = 0;
    _os_log_debug_impl(&dword_297476000, v9, OS_LOG_TYPE_DEBUG, "#D Motion Other Position Detected.", v16, 2u);
    v11 = 1;
    if (*(a1 + 72) != 1)
    {
      goto LABEL_50;
    }

    goto LABEL_39;
  }

  v11 = 1;
  if (*(a1 + 72) == 1)
  {
    goto LABEL_39;
  }

LABEL_50:
  if (*(a1 + 73) == 1 && *(a1 + 164) != v11)
  {
    if ((*(a1 + 160) & 1) == 0)
    {
      antenna::Service::Internal::startMotionDetection_sync(a1);
    }

    v14 = *(a1 + 272);
    if (v14)
    {
      dispatch_source_cancel(v14);
      v15 = *(a1 + 272);
      *(a1 + 272) = 0;
      if (v15)
      {
        dispatch_release(v15);
      }
    }

    antenna::Service::Internal::sendTxPowerCappingIPadMode_sync(a1);
    antenna::Service::Internal::startTxPowerCappingIPadWithMotionTimer_sync(a1);
  }

  *(a1 + 164) = v11;
  antenna::Service::Internal::startTxMotionCallbackTimer_sync(a1);
}

void antenna::Service::Internal::sendMotionHandDetectionState_sync(uint64_t *a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = xpc_string_create(*MEMORY[0x29EDC9068]);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDC8FA8], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = xpc_int64_create(a2);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDC9028], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  v12[0] = 0;
  v12[1] = 0;
  antenna::Service::Internal::performCommandDriver_sync(a1, &object, v12);
  xpc_release(object);
  object = 0;
  v10 = a1[4];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v15 = a2;
    _os_log_impl(&dword_297476000, v10, OS_LOG_TYPE_DEFAULT, "#I Sent Hand Detection: %d", buf, 8u);
  }

  xpc_release(v5);
  v11 = *MEMORY[0x29EDCA608];
}

void sub_29754352C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t antenna::Service::Internal::isHandednessCondition(antenna::Service::Internal *this)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (this + 200);
    v3 = *(this + 25);
    v5 = *(this + 128);
    if (v3)
    {
      while (1)
      {
        while (1)
        {
          v6 = v3;
          v7 = *(v3 + 28);
          if (v7 < 1)
          {
            break;
          }

          v3 = *v6;
          v4 = v6;
          if (!*v6)
          {
            goto LABEL_9;
          }
        }

        if ((v7 & 0x80000000) == 0)
        {
          break;
        }

        v3 = *(v6 + 1);
        if (!v3)
        {
          v4 = v6 + 8;
          goto LABEL_9;
        }
      }
    }

    else
    {
      v6 = this + 200;
LABEL_9:
      v8 = v6;
      v6 = operator new(0x28uLL);
      *(v6 + 7) = 0;
      v6[32] = 0;
      *v6 = 0;
      *(v6 + 1) = 0;
      *(v6 + 2) = v8;
      *v4 = v6;
      v9 = **(this + 24);
      if (v9)
      {
        *(this + 24) = v9;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v6);
      ++*(this + 26);
    }

    v10 = v6[32];
    v11 = *(this + 41);
    v12 = *(this + 464);
    v21[0] = 67109888;
    v21[1] = v5;
    v22 = 1024;
    v23 = v10;
    v24 = 1024;
    v25 = v11;
    v26 = 1024;
    v27 = v12;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I HandedCondition: fTxPowerTransmitStarted: %u, isAudioReceiverOutputActive(): %u, fMotionState: %u, fHandDetectionProxCovered: %u", v21, 0x1Au);
  }

  if (*(this + 128) != 1)
  {
    goto LABEL_28;
  }

  v14 = (this + 200);
  v13 = *(this + 25);
  if (v13)
  {
    while (1)
    {
      while (1)
      {
        v15 = v13;
        v16 = *(v13 + 7);
        if (v16 < 1)
        {
          break;
        }

        v13 = *v15;
        v14 = v15;
        if (!*v15)
        {
          goto LABEL_21;
        }
      }

      if ((v16 & 0x80000000) == 0)
      {
        break;
      }

      v13 = *(v15 + 1);
      if (!v13)
      {
        v14 = v15 + 8;
        goto LABEL_21;
      }
    }

    if (v15[32] != 1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v15 = this + 200;
LABEL_21:
    v17 = operator new(0x28uLL);
    v17[7] = 0;
    *(v17 + 32) = 0;
    *v17 = 0;
    *(v17 + 1) = 0;
    *(v17 + 2) = v15;
    *v14 = v17;
    v18 = **(this + 24);
    if (v18)
    {
      *(this + 24) = v18;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v17);
    ++*(this + 26);
    if (*(v17 + 32) != 1)
    {
      goto LABEL_28;
    }
  }

  if (!*(this + 41) || (*(this + 464) & 1) == 0)
  {
LABEL_28:
    result = 0;
    goto LABEL_29;
  }

  result = 1;
LABEL_29:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void antenna::Service::Internal::handDetectCallback(uint64_t *a1, int a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[2] = a2;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::handDetectCallback(CMHandDetectionDelegate::CMHandDetectionResult)::$_0>(antenna::Service::Internal::handDetectCallback(CMHandDetectionDelegate::CMHandDetectionResult)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::handDetectCallback(CMHandDetectionDelegate::CMHandDetectionResult)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::handDetectCallback(CMHandDetectionDelegate::CMHandDetectionResult)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void antenna::Service::Internal::stopHandDetection_sync(antenna::Service::Internal *this)
{
  pthread_mutex_lock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  v2 = unk_2A18CAF68;
  if (!unk_2A18CAF68)
  {
    v3 = operator new(1uLL);
    v4 = operator new(0x20uLL);
    *v4 = &unk_2A1E4FD98;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v3;
    v5 = off_2A18CAF70;
    unk_2A18CAF68 = v3;
    off_2A18CAF70 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = unk_2A18CAF68;
  }

  v6 = off_2A18CAF70;
  v9[0] = v2;
  v9[1] = off_2A18CAF70;
  if (off_2A18CAF70)
  {
    atomic_fetch_add_explicit(off_2A18CAF70 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  if (Capabilities::isCMHandDetectionSupported(v2))
  {
    v7 = *(this + 52);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    if (v7)
    {
      v9[0] = **(this + 52);
      ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>(v9[0], v9);
      v8 = *(this + 4);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v9[0]) = 0;
        _os_log_debug_impl(&dword_297476000, v8, OS_LOG_TYPE_DEBUG, "#D Hand Detection Stopped!", v9, 2u);
      }
    }
  }

  else if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_297543AF0(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  _Unwind_Resume(a1);
}

void antenna::Service::Internal::stopTxPowerCappingIPhoneTimer_sync(antenna::Service::Internal *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 14);
    *(this + 14) = 0;
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

uint64_t antenna::Service::Internal::getTxPowerCappingForWatch(antenna::Service::Internal *this)
{
  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild() || (result = *(this + 30), result == 4))
  {
    v4 = (this + 200);
    v3 = *(this + 25);
    if (v3)
    {
      while (1)
      {
        while (1)
        {
          v5 = v3;
          v6 = *(v3 + 28);
          if (v6 < 4)
          {
            break;
          }

          v3 = *v5;
          v4 = v5;
          if (!*v5)
          {
            goto LABEL_11;
          }
        }

        if (v6 == 3)
        {
          break;
        }

        v3 = *(v5 + 1);
        if (!v3)
        {
          v4 = v5 + 8;
          goto LABEL_11;
        }
      }
    }

    else
    {
      v5 = this + 200;
LABEL_11:
      v7 = v5;
      v5 = operator new(0x28uLL);
      *(v5 + 7) = 3;
      v5[32] = 0;
      *v5 = 0;
      *(v5 + 1) = 0;
      *(v5 + 2) = v7;
      *v4 = v5;
      v8 = **(this + 24);
      if (v8)
      {
        *(this + 24) = v8;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v5);
      ++*(this + 26);
    }

    result = 2;
    if (v5[32] == 1)
    {
      if (*(this + 82))
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

std::string *antenna::Service::Internal::getTxPowerCappingIPhoneModeString_sync@<X0>(_DWORD *a1@<X1>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *a1 - 1;
  if (v3 < 4)
  {
    return std::string::__assign_external(a2, **(&unk_29EE6BB00 + v3));
  }

  return result;
}

void sub_297543CCC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t antenna::Service::Internal::getTxPowerCappingAntennaFreeSpaceMode(antenna::Service::Internal *this)
{
  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild())
  {
    return (antenna::Service::Internal::isAudioReceiverOutputOnlyActive(this) & 1) != 0 || *(this + 41) != 0;
  }

  result = *(this + 31);
  if (result == 255)
  {
    return (antenna::Service::Internal::isAudioReceiverOutputOnlyActive(this) & 1) != 0 || *(this + 41) != 0;
  }

  return result;
}

void antenna::Service::Internal::startTxPowerCappingIPhoneTimer_sync(antenna::Service::Internal *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 14);
    *(this + 14) = 0;
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(this + 2));
  v5 = *(this + 14);
  *(this + 14) = v4;
  if (v5)
  {
    dispatch_release(v5);
    v4 = *(this + 14);
  }

  v6 = dispatch_time(0, 2000000000);
  dispatch_source_set_timer(v4, v6, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  v7 = *(this + 1);
  if (!v7 || (v8 = *this, (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  p_shared_weak_owners = &v9->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
  }

  v12 = *(this + 14);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 1174405120;
  handler[2] = ___ZN7antenna7Service8Internal35startTxPowerCappingIPhoneTimer_syncEv_block_invoke;
  handler[3] = &__block_descriptor_tmp_6_4;
  handler[4] = this;
  handler[5] = v8;
  v14 = v10;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  dispatch_source_set_event_handler(v12, handler);
  dispatch_activate(*(this + 14));
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v10);
}

void ___ZN7antenna7Service8Internal35startTxPowerCappingIPhoneTimer_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5] && *(v3 + 128) == 1)
      {
        antenna::Service::Internal::startTxPowerCappingIPhone_sync(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);

        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void antenna::Service::Internal::handleTxPowerCappingIPhoneTimerExpiry_sync(antenna::Service::Internal *this)
{
  if (*(this + 128) == 1)
  {
    antenna::Service::Internal::startTxPowerCappingIPhone_sync(this);
  }
}

void antenna::Service::Internal::setTxPowerCappingIPhoneMode_sync(antenna::Service::Internal *this, xpc_object_t *a2)
{
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF838]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, &object, "", v4);
  xpc_release(object);
  if (__s1[2] >= 0)
  {
    v5 = (__s1 + HIBYTE(__s1[2]));
  }

  else
  {
    v5 = (__s1[0] + __s1[1]);
  }

  if (__s1[2] >= 0)
  {
    v6 = __s1;
  }

  else
  {
    v6 = __s1[0];
  }

  for (; v6 != v5; v6 = (v6 + 1))
  {
    *v6 = __toupper(*v6);
  }

  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild() || (v7 = *(this + 30), v7 == 4))
  {
    if ((antenna::Service::Internal::isAudioReceiverOutputOnlyActive(this) & 1) != 0 || antenna::Service::Internal::isAudioAnyOutputActive(this) && !*(this + 41) || *(this + 75) == 1 && (antenna::Service::Internal::isAudioAnyOutputActive(this) & 1) == 0 && !*(this + 41))
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  v8 = strlen(*MEMORY[0x29EDBEF98]);
  v9 = v8;
  v10 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v8 != -1)
    {
      v11 = __s1;
      v12 = SHIBYTE(__s1[2]);
      goto LABEL_28;
    }

LABEL_98:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v8 == -1)
  {
    goto LABEL_98;
  }

  v11 = __s1[0];
  v12 = __s1[1];
LABEL_28:
  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  if (!memcmp(v11, *MEMORY[0x29EDBEF98], v13) && v12 == v9)
  {
    v20 = 1;
    goto LABEL_78;
  }

  v15 = *MEMORY[0x29EDBF878];
  v16 = strlen(*MEMORY[0x29EDBF878]);
  v17 = v16;
  if ((v10 & 0x80000000) != 0)
  {
    if (v16 != -1)
    {
      v18 = __s1[1];
      if (__s1[1] >= v16)
      {
        v21 = v16;
      }

      else
      {
        v21 = __s1[1];
      }

      if (memcmp(__s1[0], v15, v21))
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

LABEL_99:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v16 == -1)
  {
    goto LABEL_99;
  }

  v18 = v10;
  if (v10 >= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v10;
  }

  if (memcmp(__s1, v15, v19))
  {
    goto LABEL_50;
  }

LABEL_48:
  if (v18 == v17)
  {
    v20 = 4;
    goto LABEL_78;
  }

LABEL_50:
  v22 = *MEMORY[0x29EDBF0B8];
  v23 = strlen(*MEMORY[0x29EDBF0B8]);
  v24 = v23;
  if ((v10 & 0x80000000) == 0)
  {
    if (v23 != -1)
    {
      v25 = v10;
      if (v10 >= v23)
      {
        v26 = v23;
      }

      else
      {
        v26 = v10;
      }

      if (memcmp(__s1, v22, v26))
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

LABEL_100:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v23 == -1)
  {
    goto LABEL_100;
  }

  v25 = __s1[1];
  if (__s1[1] >= v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = __s1[1];
  }

  if (!memcmp(__s1[0], v22, v27))
  {
LABEL_62:
    if (v25 != v24)
    {
      goto LABEL_64;
    }

    v20 = 3;
LABEL_78:
    *(this + 30) = v20;
    goto LABEL_79;
  }

LABEL_64:
  v28 = *MEMORY[0x29EDBF0C0];
  v29 = strlen(*MEMORY[0x29EDBF0C0]);
  v30 = v29;
  if ((v10 & 0x80000000) == 0)
  {
    if (v29 != -1)
    {
      if (v10 >= v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = v10;
      }

      if (memcmp(__s1, v28, v31))
      {
        goto LABEL_79;
      }

      goto LABEL_76;
    }

LABEL_101:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == -1)
  {
    goto LABEL_101;
  }

  v10 = __s1[1];
  if (__s1[1] >= v29)
  {
    v32 = v29;
  }

  else
  {
    v32 = __s1[1];
  }

  if (!memcmp(__s1[0], v28, v32))
  {
LABEL_76:
    if (v10 != v30)
    {
      goto LABEL_79;
    }

    v20 = 2;
    goto LABEL_78;
  }

LABEL_79:
  *(this + 245) = 0;
  if (*(this + 244) != 1)
  {
    goto LABEL_96;
  }

  if ((TelephonyUtilIsInternalBuild() & 1) != 0 || TelephonyUtilIsCarrierBuild())
  {
    v33 = *(this + 30);
    if (v33 != 4)
    {
LABEL_94:
      if (v33 == v7)
      {
        goto LABEL_96;
      }

      goto LABEL_95;
    }
  }

  if ((antenna::Service::Internal::isAudioReceiverOutputOnlyActive(this) & 1) != 0 || antenna::Service::Internal::isAudioAnyOutputActive(this) && !*(this + 41))
  {
LABEL_84:
    if (v7 == 2)
    {
      goto LABEL_96;
    }

LABEL_95:
    *(this + 245) = 1;
    goto LABEL_96;
  }

  if (*(this + 75) != 1)
  {
    v33 = 3;
    goto LABEL_94;
  }

  if ((antenna::Service::Internal::isAudioAnyOutputActive(this) & 1) == 0 && !*(this + 41))
  {
    goto LABEL_84;
  }

  if (v7 != 3)
  {
    goto LABEL_95;
  }

LABEL_96:
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }
}

void antenna::Service::Internal::copyTxPowerCappingIPhoneMode_sync(antenna::Service::Internal *this@<X0>, xpc_object_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  v6 = MEMORY[0x29EDCAA00];
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v7 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v5) == v6)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  *a2 = v7;
LABEL_9:
  xpc_release(v5);
  v8 = *a2;
  if (MEMORY[0x29C272BA0](*a2) == v6)
  {
    memset(&v25, 0, sizeof(v25));
    v9 = *(this + 30) - 1;
    if (v9 < 4)
    {
      std::string::__assign_external(&v25, **(&unk_29EE6BB00 + v9));
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v25;
    }

    else
    {
      v10 = v25.__r_.__value_.__r.__words[0];
    }

    v11 = xpc_string_create(v10);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, *MEMORY[0x29EDBF838], v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (((TelephonyUtilIsInternalBuild() & 1) != 0 || TelephonyUtilIsCarrierBuild()) && *(this + 72) == 1)
    {
      v13 = xpc_dictionary_create(0, 0, 0);
      if (v13 || (v13 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C272BA0](v13) == v6)
        {
          xpc_retain(v13);
          v14 = v13;
        }

        else
        {
          v14 = xpc_null_create();
        }
      }

      else
      {
        v14 = xpc_null_create();
        v13 = 0;
      }

      xpc_release(v13);
      if (MEMORY[0x29C272BA0](v14) == v6)
      {
        v15 = xpc_string_create(*MEMORY[0x29EDBEF98]);
        if (!v15)
        {
          v15 = xpc_null_create();
        }

        xpc_dictionary_set_value(v14, *MEMORY[0x29EDBF4A8], v15);
        v16 = xpc_null_create();
        xpc_release(v15);
        xpc_release(v16);
        v17 = xpc_string_create(*MEMORY[0x29EDBF878]);
        if (!v17)
        {
          v17 = xpc_null_create();
        }

        xpc_dictionary_set_value(v14, *MEMORY[0x29EDBF538], v17);
        v18 = xpc_null_create();
        xpc_release(v17);
        xpc_release(v18);
        v19 = xpc_string_create(*MEMORY[0x29EDBF0B8]);
        if (!v19)
        {
          v19 = xpc_null_create();
        }

        xpc_dictionary_set_value(v14, *MEMORY[0x29EDBF540], v19);
        v20 = xpc_null_create();
        xpc_release(v19);
        xpc_release(v20);
        v21 = xpc_string_create(*MEMORY[0x29EDBF0C0]);
        if (!v21)
        {
          v21 = xpc_null_create();
        }

        xpc_dictionary_set_value(v14, *MEMORY[0x29EDBF548], v21);
        v22 = xpc_null_create();
        xpc_release(v21);
        xpc_release(v22);
        if (v14)
        {
          xpc_retain(v14);
          v23 = v14;
        }

        else
        {
          v23 = xpc_null_create();
        }

        xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF840], v23);
        v24 = xpc_null_create();
        xpc_release(v23);
        xpc_release(v24);
      }

      xpc_release(v14);
    }
  }
}