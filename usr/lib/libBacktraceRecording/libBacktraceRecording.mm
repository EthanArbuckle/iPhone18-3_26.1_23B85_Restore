uint64_t __introspection_dispatch_get_queues(int a1, mach_vm_address_t *a2, mach_vm_size_t *a3)
{
  *a2 = 0;
  *a3 = 0;
  v3 = off_C090;
  if (!off_C090)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    if (a1 <= 2)
    {
      if (a1 != 1)
      {
        if (a1 != 2)
        {
          goto LABEL_20;
        }

        v10 = atomic_load(v3 + 11);
        v11 = atomic_load(v3 + 12);
        if (((v11 + v10) < 0) ^ __OFADD__(v11, v10) | (v11 + v10 == 0))
        {
          goto LABEL_20;
        }
      }

      goto LABEL_17;
    }

    switch(a1)
    {
      case 5:
        v12 = atomic_load(v3 + 11);
        v13 = atomic_load(v3 + 12);
        if (v12 + v13)
        {
          goto LABEL_20;
        }

LABEL_17:
        v15 = strlen(v3 + 52) + 33;
        v16 = 8 - (v15 & 7);
        ++v8;
        if ((v15 & 7) == 0)
        {
          v16 = 0;
        }

        v7 += (v16 + v15);
        goto LABEL_20;
      case 4:
        v9 = (v3 + 11);
        break;
      case 3:
        v9 = (v3 + 12);
        break;
      default:
        goto LABEL_20;
    }

    v14 = atomic_load(v9);
    if (v14 > 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v3 = *v3;
  }

  while (v3);
  if (!v8)
  {
    return v8;
  }

  address = 0;
  if (mach_vm_allocate(mach_task_self_, &address, v7, 1))
  {
    fwrite("libBacktraceRecording: can't allocate VM for dispatch queues list\n", 0x42uLL, 1uLL, __stderrp);
    return 0;
  }

  v38 = a2;
  v39 = a3;
  v18 = address;
  v19 = off_C090;
  if (!off_C090)
  {
    goto LABEL_55;
  }

  while (2)
  {
    if (a1 <= 2)
    {
      if (a1 != 1)
      {
        if (a1 != 2)
        {
          goto LABEL_53;
        }

        v21 = atomic_load(v19 + 11);
        v22 = atomic_load(v19 + 12);
        if (((v22 + v21) < 0) ^ __OFADD__(v22, v21) | (v22 + v21 == 0))
        {
          goto LABEL_53;
        }
      }

      goto LABEL_41;
    }

    if (a1 == 5)
    {
      v23 = atomic_load(v19 + 11);
      v24 = atomic_load(v19 + 12);
      if (v23 + v24)
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    }

    if (a1 != 4)
    {
      if (a1 == 3)
      {
        v20 = (v19 + 12);
        goto LABEL_40;
      }

      goto LABEL_53;
    }

    v20 = (v19 + 11);
LABEL_40:
    v25 = atomic_load(v20);
    if (v25 > 0)
    {
LABEL_41:
      v26 = *(v19 + 4);
      *(v18 + 8) = *(v19 + 3);
      *(v18 + 16) = v26;
      LODWORD(v26) = atomic_load(v19 + 11);
      if ((v26 & 0x80000000) != 0)
      {
        v27 = 0;
      }

      else
      {
        v27 = atomic_load(v19 + 11);
      }

      *(v18 + 24) = v27;
      v28 = atomic_load(v19 + 12);
      if ((v28 & 0x80000000) != 0)
      {
        v29 = 0;
      }

      else
      {
        v29 = atomic_load(v19 + 12);
      }

      *(v18 + 28) = v29;
      v30 = strlen(v19 + 52);
      v31 = v30 + 33;
      v32 = 8 - ((v30 + 33) & 7u);
      v33 = (v30 + 33) & 7;
      v34 = v30 + 1;
      v40 = v18;
      v35 = (v18 + 32);
      if (v33)
      {
        v36 = 8 - ((v30 + 33) & 7);
      }

      else
      {
        v36 = 0;
      }

      memcpy(v35, v19 + 13, v34);
      if (v33)
      {
        bzero(&v35[v34], v32);
      }

      v37 = (v36 + v31);
      *v40 = v37;
      v18 = v40 + v37;
    }

LABEL_53:
    v19 = *v19;
    if (v19)
    {
      continue;
    }

    break;
  }

  v18 = address;
LABEL_55:
  *v38 = v18;
  *v39 = v7;
  return v8;
}

uint64_t __introspection_dispatch_queue_get_pending_items(uint64_t a1, mach_vm_address_t *a2, uint64_t *a3)
{
  *a2 = 0;
  *a3 = 0;
  v5 = dispatch_queue_serialnum(a1);
  v6 = off_C0F8;
  if (!off_C0F8)
  {
    return 0;
  }

  v7 = v5;
  v8 = 0;
  do
  {
    if (*(*(v6 + 15) + 32) == v5)
    {
      ++v8;
    }

    v6 = *v6;
  }

  while (v6);
  if (v8)
  {
    address = 0;
    if (mach_vm_allocate(mach_task_self_, &address, (16 * v8) | 8, 1))
    {
      fwrite("libBacktraceRecording: can't allocate VM for work items list\n", 0x3DuLL, 1uLL, __stderrp);
      return 0;
    }

    v10 = address;
    *address = 0x1000000001;
    v11 = off_C0F8;
    if (off_C0F8)
    {
      v12 = (v10 + 8);
      do
      {
        if (*(*(v11 + 15) + 32) == v7)
        {
          *v12 = v11;
          v12[1] = *(v11 + 7);
          v12 += 2;
        }

        v11 = *v11;
      }

      while (v11);
    }

    *a2 = v10;
    *a3 = (16 * v8) | 8;
  }

  return v8;
}

void *__introspection_dispatch_queue_item_get_info(void *result, mach_vm_address_t *a2, mach_vm_size_t *a3)
{
  *a2 = 0;
  *a3 = 0;
  if (result)
  {
    v5 = result;
    v6 = *(result + 23);
    v7 = strlen((result[13] + 40)) + 1;
    v8 = strlen((v5[14] + 52)) + 1;
    v9 = strlen((v5[15] + 52)) + 1;
    v10 = v7 + 8 * v6 + v8 + v9 + 56;
    address = 0;
    if (mach_vm_allocate(mach_task_self_, &address, v10, 1))
    {
      return fwrite("libBacktraceRecording: can't allocate VM for item info\n", 0x37uLL, 1uLL, __stderrp);
    }

    else
    {
      v11 = address;
      *address = v5[16];
      *(v11 + 8) = v5[7];
      *(v11 + 44) = *(v5 + 36);
      v12 = v5[14];
      *(v11 + 16) = *(v5[13] + 24);
      *(v11 + 24) = *(v12 + 32);
      *(v11 + 32) = *(v5[15] + 32);
      *(v11 + 40) = *(v5 + 23);
      *(v11 + 48) = *(v5 + 34);
      *(v11 + 52) = *(v5 + 35);
      ptrSized_stack_frames_for_uniqued_stack(backtrace_uniquing_table, v5[12], v11 + 56, *(v5 + 23));
      memcpy((v11 + 56 + 8 * v6), (v5[13] + 40), v7);
      v13 = (v11 + 56 + 8 * v6 + v7);
      memcpy(v13, (v5[14] + 52), v8);
      result = memcpy(&v13[v8], (v5[15] + 52), v9);
      *a2 = v11;
      *a3 = v10;
    }
  }

  return result;
}

void *__introspection_dispatch_thread_get_item_info(void *result, mach_vm_address_t *a2, mach_vm_size_t *a3)
{
  *a2 = 0;
  *a3 = 0;
  v3 = &qword_C028;
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (v3[3] == result)
    {
      result = v3[14];
      if (result)
      {
        return __introspection_dispatch_queue_item_get_info(result, a2, a3);
      }

      return result;
    }
  }

  return result;
}

atomic_uint *current_thread_info()
{
  result = pthread_getspecific(thread_info_key);
  if (!result)
  {

    return add_thread_info_to_list();
  }

  return result;
}

void *dispatch_queue_label()
{
  result = dispatch_queue_get_label_ptr();
  if (!result)
  {
    return &unk_6572;
  }

  return result;
}

uint64_t dispatch_queue_serialnum(uint64_t a1)
{
  v1 = *(dispatch_queue_offsets + 12);
  if (v1 == 8)
  {
    return *(a1 + *(dispatch_queue_offsets + 10));
  }

  if (v1 == 4)
  {
    return *(a1 + *(dispatch_queue_offsets + 10));
  }

  return 0;
}

atomic_uint *add_thread_info_to_list()
{
  entry_from_free_list = pthread_getspecific(thread_info_key);
  if (!entry_from_free_list)
  {
    v18 = 0;
    v17 = 0u;
    v15 = 0u;
    memset(v16, 0, sizeof(v16));
    __src = 0u;
    v1 = pthread_self();
    *&v16[0] = v1;
    BYTE8(v16[0]) = 0;
    pthread_getname_np(v1, v16 + 8, 0x40uLL);
    *thread_info_out = 0;
    v12 = 0;
    v13 = 0;
    thread_info_outCnt = 6;
    v2 = pthread_mach_thread_np(v1);
    v3 = thread_info(v2, 4u, thread_info_out, &thread_info_outCnt);
    v4 = *thread_info_out;
    if (v3)
    {
      v4 = 0;
    }

    *(&v15 + 1) = v4;
    *(&v17 + 1) = 0;
    v18 = 0;
    entry_from_free_list = get_entry_from_free_list(&thread_lists, &__src, 1);
    atomic_fetch_add(entry_from_free_list + 5, 1u);
    if (debug_printing == 1)
    {
      v5 = pthread_getspecific(thread_info_key);
      if (v5)
      {
        v6 = v5;
        v7 = __stderrp;
        v8 = getpid();
        fprintf(v7, "pid %d add_thread_info_to_list() called for thread %p;  thread_info should be NULL but is %p\n", v8, v1, v6);
      }
    }

    pthread_setspecific(thread_info_key, entry_from_free_list);
    if (debug_trace_threads == 1)
    {
      print_thread_summary(entry_from_free_list, "thread added to list: ", &unk_6572);
    }
  }

  return entry_from_free_list;
}

unsigned int *get_entry_from_free_list(uint64_t a1, void *__src, int a3)
{
  if (a3)
  {
    os_unfair_lock_lock_with_options();
  }

  v6 = *(a1 + 80);
  if (!v6)
  {
    address = 0;
    v7 = *(a1 + 8);
    v8 = (vm_page_size + (v7 << 7) - 1) & -vm_page_size;
    if (mach_vm_allocate(mach_task_self_, &address, v8, 167772161))
    {
      get_entry_from_free_list_cold_1();
    }

    *(a1 + 16) += v8;
    v9 = address;
    *(a1 + 96) += v8 / v7;
    if ((v8 / v7))
    {
      v10 = 0;
      v11 = *(a1 + 8);
      v12 = *(a1 + 88);
      do
      {
        *(v9 + 16) = 0;
        *v9 = 0;
        *(v9 + 8) = v12;
        *v12 = v9;
        v12 = v9;
        *(a1 + 88) = v9;
        v9 += v11;
        ++v10;
      }

      while (v10 < (v8 / v7));
    }

    v6 = *(a1 + 80);
  }

  v13 = *v6;
  v14 = *(v6 + 1);
  v15 = (a1 + 88);
  if (*v6)
  {
    v15 = (*v6 + 8);
  }

  *v15 = v14;
  *v14 = v13;
  --*(a1 + 96);
  memcpy(v6, __src, *(a1 + 8));
  v6[4] = 1;
  atomic_store(0, v6 + 5);
  v16 = *(a1 + 40);
  *v6 = 0;
  *(v6 + 1) = v16;
  *v16 = v6;
  *(a1 + 40) = v6;
  ++*(a1 + 48);
  if (a3)
  {
    os_unfair_lock_unlock((a1 + 24));
  }

  return v6;
}

size_t __library_initializer()
{
  v0 = dlopen("/usr/lib/system/introspection/libdispatch.dylib", 16);
  if (v0)
  {
    v1 = v0;
    v2 = dlsym(v0, "dispatch_introspection_versions");
    if (v2 && v2[1] > 1uLL)
    {
      gcd_hook_install_ptr = dlsym(v1, "dispatch_introspection_hooks_install");
      if (gcd_hook_install_ptr)
      {
        dispatch_get_current_queue_ptr = dlsym(v1, "dispatch_get_current_queue");
        dispatch_queue_get_label_ptr = dlsym(v1, "dispatch_queue_get_label");
        dispatch_queue_offsets = dlsym(v1, "dispatch_queue_offsets");
        size = 0;
        address = dispatch_get_current_queue_ptr;
        v17 = 0;
        *info = 0u;
        v16 = 0u;
        object_name = 0;
        infoCnt = 9;
        if (!mach_vm_region(mach_task_self_, &address, &size, 9, info, &infoCnt, &object_name))
        {
          v8 = address;
          v9 = (address + size - 1);
          if (v9 >= address)
          {
            do
            {
              memset(&v12, 0, sizeof(v12));
              if (dladdr(v9, &v12))
              {
                if (!v12.dli_sname)
                {
                  break;
                }

                v10 = strcmp(v12.dli_sname, "_dispatch_queue_override_invoke_owning");
                dli_saddr = v12.dli_saddr;
                if (!v10)
                {
                  goto LABEL_20;
                }

                v9 = v12.dli_saddr - 2;
              }

              else
              {
                --v9;
              }
            }

            while (v9 >= v8);
          }
        }

        dli_saddr = 0;
LABEL_20:
        _dispatch_queue_override_invoke_owning_ptr = dli_saddr;
        pthread_atfork(fork_prepare_handler, fork_parent_process_handler, fork_child_process_handler);
        enable_hooks = 1;
        dispatch_introspection_hooks = gcd_queue_create_hook;
        off_C1A8 = gcd_queue_dispose_hook;
        off_C1B0 = gcd_queue_item_enqueue_hook;
        off_C1B8 = gcd_queue_item_dequeue_hook;
        off_C1C0 = gcd_queue_item_complete_hook;
        gcd_hook_install_ptr();
        previous_pthread_hook = pthread_introspection_hook_install(pthread_introspection_hook);
        if (debug_printing == 1)
        {
          initialize_debug_printing();
        }

        pthread_key_create(&thread_info_key, thread_terminating);
        resetDyldInsertLibraries("libBacktraceRecording.dylib");
        backtrace_uniquing_table = create_backtrace_uniquing_table(0x4000u, 4);
        return dlclose(v1);
      }

      fwrite("dlsym did not find dispatch_introspection_hooks_install() in /usr/lib/system/introspection/libdispatch.dylib\n", 0x6DuLL, 1uLL, __stderrp);
      v3 = __stderrp;
      v4 = "Process must be launched with DYLD_LIBRARY_PATH=/usr/lib/system/introspection to get libdispatch introspection\n";
      v5 = 111;
    }

    else
    {
      v3 = __stderrp;
      v4 = "Need a more recent version of /usr/lib/system/introspection/libdispatch.dylib -- missing suppport for the queue_item_complete hook function.\n";
      v5 = 141;
    }

    fwrite(v4, v5, 1uLL, v3);
    return dlclose(v1);
  }

  v7 = __stderrp;

  return fwrite("Process must be launched with DYLD_LIBRARY_PATH=/usr/lib/system/introspection to get libdispatch introspection\n", 0x6FuLL, 1uLL, v7);
}

uint64_t fork_prepare_handler()
{
  os_unfair_lock_lock_with_options();
  os_unfair_lock_lock_with_options();
  result = os_unfair_lock_lock_with_options();
  enable_hooks = 0;
  return result;
}

void fork_parent_process_handler()
{
  enable_hooks = 1;
  os_unfair_lock_unlock(&dword_C020);
  os_unfair_lock_unlock(&dword_C088);

  os_unfair_lock_unlock(&dword_C0F0);
}

void fork_child_process_handler()
{
  enable_hooks = 0;
  dword_C020 = 0;
  dword_C088 = 0;
  dword_C0F0 = 0;
}

atomic_uint *pthread_introspection_hook(atomic_uint *result, atomic_uint *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (previous_pthread_hook)
  {
    result = previous_pthread_hook(result, a2, a3, a4);
  }

  if (enable_hooks == 1)
  {
    if (debug_printing == 1)
    {
      result = print_pthread_event();
    }

    switch(v5)
    {
      case 4:
        result = pthread_self();
        if (result == a2)
        {
          v10 = thread_info_key;

          return pthread_getspecific(v10);
        }

        break;
      case 3:
        result = pthread_getspecific(thread_info_key);
        if (result)
        {
          v6 = result;
          if (debug_trace_threads == 1)
          {
            v7 = __stderrp;
            v8 = getpid();
            fprintf(v7, "pid %d PTHREAD_INTROSPECTION_THREAD_TERMINATE event received for thread %p;  thread_info would normally be NULL but is %p  thread_id %llu\n", v8, a2, v6, *(v6 + 3));
          }

          thread_terminating(v6);
          v9 = thread_info_key;

          return pthread_setspecific(v9, 0);
        }

        break;
      case 2:

        return add_thread_info_to_list();
    }
  }

  return result;
}

void thread_terminating(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (*a1 + 8);
  if (!*a1)
  {
    v4 = &off_C030;
  }

  *v4 = v3;
  *v3 = v2;
  --dword_C038;
  *(a1 + 16) = 3;
  v5 = off_C048;
  *a1 = 0;
  *(a1 + 8) = v5;
  *v5 = a1;
  off_C048 = a1;
  ++dword_C050;
  v6 = decrement_entry_refcount(&thread_lists, a1);
  if (debug_trace_threads == 1)
  {
    if (v6)
    {
      strcpy(__str, "  removed from list");
      print_thread_summary(a1, "thread terminating ", __str);
    }

    else
    {
      v7 = atomic_load((a1 + 20));
      snprintf(__str, 0x100uLL, "  NOT removed from list - refcount %d", v7);
      print_thread_summary(a1, "thread terminating ", __str);
      if (dword_C050 > thread_terminating_max_remaining)
      {
        thread_terminating_max_remaining = dword_C050;
        fprintf(__stderrp, "    %u threads completed but still referenced:\n", dword_C050);
        print_list(0, &qword_C040, &__block_literal_global_59);
      }
    }
  }

  os_unfair_lock_unlock(&dword_C020);
}

unsigned int *gcd_queue_create_hook(unsigned int *result)
{
  v1 = result;
  if (dispatch_introspection_hooks)
  {
    result = dispatch_introspection_hooks(result);
  }

  if (enable_hooks == 1)
  {
    if (debug_printing == 1)
    {
      print_gcd_queue_create_dispose();
    }

    v2 = *(v1 + 2);
    if (!v2 || (result = strcmp(*(v1 + 2), "source"), result))
    {
      v3 = *v1;
      v4 = *(v1 + 3);

      return add_queue_info_to_list(v3, v4, v2, 1);
    }
  }

  return result;
}

void gcd_queue_dispose_hook(uint64_t a1)
{
  if (off_C1A8)
  {
    off_C1A8(a1);
  }

  if (enable_hooks == 1)
  {
    if (debug_printing == 1)
    {
      print_gcd_queue_create_dispose();
    }

    os_unfair_lock_lock_with_options();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v10 = __gcd_queue_dispose_hook_block_invoke;
    v11 = &__block_descriptor_tmp;
    v12 = a1;
    v2 = &off_C090;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if ((v10)(v9, v2))
      {
        v3 = *v2;
        v4 = v2[1];
        v5 = (*v2 + 2);
        if (!*v2)
        {
          v5 = &off_C098;
        }

        *v5 = v4;
        *v4 = v3;
        --dword_C0A0;
        *(v2 + 4) = 3;
        v6 = off_C0B0;
        *v2 = 0;
        v2[1] = v6;
        *v6 = v2;
        off_C0B0 = v2;
        ++dword_C0B8;
        v7 = decrement_entry_refcount(&queue_lists, v2);
        if (debug_trace_queues == 1)
        {
          if (v7)
          {
            strcpy(__str, "  removed from list");
            print_queue_summary(v2, "queue disposed: ", __str);
          }

          else
          {
            v8 = atomic_load(v2 + 5);
            snprintf(__str, 0x100uLL, "  NOT removed from list - refcount %d", v8);
            print_queue_summary(v2, "queue disposed: ", __str);
            if (dword_C0B8 > gcd_queue_dispose_hook_max_remaining)
            {
              gcd_queue_dispose_hook_max_remaining = dword_C0B8;
              fprintf(__stderrp, "    %u queues completed but still referenced:\n", dword_C0B8);
              print_list(0, &qword_C0A8, &__block_literal_global);
            }
          }
        }

        break;
      }
    }

    os_unfair_lock_unlock(&dword_C088);
  }
}

void gcd_queue_item_enqueue_hook()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  if (off_C1B0)
  {
    off_C1B0(v0, v1);
  }

  if (enable_hooks == 1)
  {
    if (is_interesting_event(v3, v2))
    {
      os_unfair_lock_lock_with_options();
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 0x40000000;
      v31 = __gcd_queue_item_enqueue_hook_block_invoke;
      v32 = &__block_descriptor_tmp_39;
      v33 = v2;
      v4 = &off_C0F8;
      do
      {
        v4 = *v4;
        v5 = v4 == 0;
      }

      while (v4 && !(v31)(v30, v4));
      v6 = v4 != 0;
      os_unfair_lock_unlock(&dword_C0F0);
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    if (debug_printing == 1)
    {
      print_gcd_queue_item_enqueue_dequeue("enqueued", v3, v2, v5, v6);
    }

    if (v5)
    {
      v7 = os_unfair_lock_lock_with_options();
      current_queue_ptr = dispatch_get_current_queue_ptr(v7);
      queue_info = *(current_thread_info() + 13);
      if (!queue_info || *(queue_info + 3) != current_queue_ptr)
      {
        queue_info = find_or_create_queue_info(current_queue_ptr, 0);
      }

      atomic_fetch_add(queue_info + 5, 1u);
      v10 = *(v2 + 16);
      v11 = queue_info;
      if (v10 != current_queue_ptr)
      {
        v11 = find_or_create_queue_info(v10, 0);
      }

      atomic_fetch_add(v11 + 5, 1u);
      os_unfair_lock_unlock(&dword_C088);
      memset(&v25[16], 0, 64);
      v28 = 0u;
      v26 = 0u;
      v27 = 0u;
      __src = 0u;
      *v25 = 0u;
      v12 = *(v2 + 16);
      *&v25[8] = *v2;
      *&v25[24] = v12;
      v13 = *(v2 + 48);
      *&v25[40] = *(v2 + 32);
      v29 = 0;
      *&v25[56] = v13;
      if (*(queue_info + 40) == 1 && ((v11[10] & 1) != 0 || (*(v11 + 41) & 1) != 0) || *(queue_info + 41) == 1 && *(v11 + 40) == 1)
      {
        v25[74] = 1;
      }

      memset(v36, 0, 496);
      *v35 = 0u;
      v14 = backtrace(v35, 512);
      v15 = v14 - 1;
      if (v35[v15] >= vm_page_size)
      {
        LODWORD(v15) = v14;
      }

      if (v15 <= 2)
      {
        LODWORD(v15) = 2;
      }

      v16 = v15 - 2;
      v23 = 0;
      enter_ptrSized_stack_in_backtrace_uniquing_table(backtrace_uniquing_table, &v23, v36, (v15 - 2));
      *&v25[76] = v16;
      *&v26 = v23;
      *(&v26 + 1) = current_thread_info();
      *&v27 = queue_info;
      atomic_fetch_add((*(&v26 + 1) + 20), 1u);
      *(&v27 + 1) = v11;
      v28 = 0uLL;
      LODWORD(v29) = 0;
      v17 = current_thread_info();
      v18 = *(v17 + 14);
      if (v18)
      {
        v19 = 0;
        v20 = *(v17 + 14);
        do
        {
          ++v19;
          v20 = *(v20 + 128);
        }

        while (v20);
        if (debug_maxlevels == 1 && v19 > gcd_queue_item_enqueue_hook_max_levels)
        {
          gcd_queue_item_enqueue_hook_max_levels = v19;
          print_logical_backtrace(&unk_6572);
        }

        if (v19 < 0x33 || debug_maxlevels == 1)
        {
          *&v28 = v18;
          atomic_fetch_add((v18 + 20), 1u);
        }

        else
        {
          v22 = 0;
          *&v28 = 0;
          do
          {
            v22 += *(v18 + 136) + *(v18 + 140) + 1;
            v18 = *(v18 + 128);
          }

          while (v18);
          HIDWORD(v28) = v22;
          if (debug_printing == 1 && (gcd_queue_item_enqueue_hook_printed & 1) == 0)
          {
            gcd_queue_item_enqueue_hook_printed = 1;
            fwrite("PLEASE FILE A BUG REPORT AGAINST libBacktraceRecording / X WITH THE FOLLOWING BACKTRACE OUTPUT\n", 0x5FuLL, 1uLL, __stderrp);
            snprintf(__str, 0x400uLL, "Cutting long chain of %u unique enqueuings (non-repeating, non-looping), %u total elided\n", v19, v22);
            print_logical_backtrace(__str);
          }
        }
      }

      atomic_fetch_add(get_entry_from_free_list(&work_item_lists, &__src, 1) + 5, 1u);
      atomic_fetch_add(v11 + 12, 1u);
      if (debug_printing == 1 && dword_C108 > gcd_queue_item_enqueue_hook_max_enqueued)
      {
        gcd_queue_item_enqueue_hook_max_enqueued = dword_C108;
        locked_print_dispatch_info();
      }
    }
  }
}

void gcd_queue_item_dequeue_hook(const void *a1, uint64_t *a2)
{
  if (off_C1B8)
  {
    off_C1B8(a1, a2);
  }

  if (enable_hooks == 1)
  {
    if (is_interesting_event(a1, a2))
    {
      v4 = *(current_thread_info() + 14);
      if (v4)
      {
        v5 = *(v4 + 32);
        v6 = a2[1];
        v7 = v5 == v6;
        v8 = v5 != v6;
      }

      else
      {
        v7 = 0;
        v8 = 1;
      }
    }

    else
    {
      v4 = 0;
      v7 = 0;
      v8 = 0;
    }

    if (debug_printing == 1)
    {
      print_gcd_queue_item_enqueue_dequeue("dequeued", a1, a2, v8, v7);
    }

    if (v8)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 0x40000000;
      v19 = __gcd_queue_item_dequeue_hook_block_invoke;
      v20 = &__block_descriptor_tmp_46;
      v21 = a2;
      os_unfair_lock_lock_with_options();
      v9 = &off_C0F8;
      while (1)
      {
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        if ((v19)(v18, v9))
        {
          v10 = *v9;
          v11 = v9[1];
          v12 = (*v9 + 2);
          if (!*v9)
          {
            v12 = &off_C100;
          }

          *v12 = v11;
          *v11 = v10;
          --dword_C108;
          *(v9 + 4) = 3;
          v13 = off_C118;
          *v9 = 0;
          v9[1] = v13;
          *v13 = v9;
          off_C118 = v9;
          ++dword_C120;
          os_unfair_lock_unlock(&dword_C0F0);
          if (v4)
          {
            if (debug_printing == 1)
            {
              print_gcd_item_conflict();
            }

            gcd_queue_item_complete_hook(*(v4 + 32));
          }

          *(v9 + 4) = 2;
          atomic_fetch_add(v9[15] + 12, 0xFFFFFFFF);
          atomic_fetch_add(v9[15] + 11, 1u);
          current_queue_ptr = dispatch_get_current_queue_ptr(v14);
          queue_info = v9[15];
          if (*(queue_info + 3) != current_queue_ptr)
          {
            queue_info = find_or_create_queue_info(current_queue_ptr, 1);
          }

          v17 = current_thread_info();
          *(v17 + 13) = queue_info;
          *(v17 + 14) = v9;
          collapse_enqueuing_recursion(v9);
          return;
        }
      }

      os_unfair_lock_unlock(&dword_C0F0);
      if (showEnqueueDequeue == 1)
      {
        fprintf(__stderrp, "LOGICAL ERROR!! dequeued continuation %p that was not enqueued\n", a2[1]);
      }
    }
  }
}

void gcd_queue_item_complete_hook(uint64_t a1)
{
  if (off_C1C0)
  {
    off_C1C0(a1);
  }

  if (enable_hooks == 1)
  {
    v1 = *(current_thread_info() + 14);
    if (v1)
    {
      if ((*(v1 + 24) - 17) <= 1)
      {
        if (debug_printing == 1)
        {
          print_gcd_queue_item_complete();
        }

        atomic_fetch_add((*(v1 + 120) + 44), 0xFFFFFFFF);
        v2 = current_thread_info();
        *(v2 + 13) = 0;
        *(v2 + 14) = 0;
        *(v1 + 16) = 3;
        v3 = atomic_load((v1 + 20));
        if (v3 >= 2 && *(v1 + 89) == 1)
        {
          collapse_enqueuing_recursion(v1);
        }

        os_unfair_lock_lock_with_options();
        decrement_work_item_refcount(v1);

        os_unfair_lock_unlock(&dword_C0F0);
      }
    }
  }
}

unsigned int *add_queue_info_to_list(uint64_t a1, unint64_t a2, char *__s1, int a4)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v12 = 0;
  v11 = 0u;
  v13 = a1;
  v14 = a2;
  atomic_store(0, &v14 + 3);
  atomic_store(0, v15);
  if (*dispatch_queue_offsets <= 4u)
  {
    if (is_root_dispatch_queue_prefix_length)
    {
      v6 = 22;
    }

    else
    {
      v6 = 0;
    }

    if ((is_root_dispatch_queue_prefix_length & 1) == 0)
    {
      is_root_dispatch_queue_prefix_length = 1;
      v6 = 22;
    }

    if (!__s1)
    {
      WORD4(v14) = 0;
LABEL_19:
      BYTE4(v15[0]) = 0;
      goto LABEL_20;
    }

    BYTE9(v14) = strncmp(__s1, "com.apple.root.", v6) == 0;
    BYTE8(v14) = 0;
  }

  else
  {
    BYTE9(v14) = *(a1 + *(dispatch_queue_offsets + 26)) == 0;
    BYTE8(v14) = 0;
    if (!__s1)
    {
      goto LABEL_19;
    }
  }

  __strlcpy_chk();
  if (add_queue_info_to_list_prefix_length)
  {
    v7 = 22;
  }

  else
  {
    v7 = 0;
  }

  if ((add_queue_info_to_list_prefix_length & 1) == 0)
  {
    add_queue_info_to_list_prefix_length = 1;
    v7 = 22;
  }

  if (!strncmp(v15 + 4, "com.apple.libdispatch-", v7))
  {
    BYTE8(v14) = 1;
  }

LABEL_20:
  entry_from_free_list = get_entry_from_free_list(&queue_lists, &v11, a4);
  v9 = entry_from_free_list;
  atomic_fetch_add(entry_from_free_list + 5, 1u);
  if (debug_trace_queues == 1)
  {
    print_queue_summary(entry_from_free_list, "queue added to list: ", &unk_6572);
  }

  return v9;
}

uint64_t decrement_entry_refcount(uint64_t a1, atomic_uint *a2)
{
  if (atomic_fetch_add(a2 + 5, 0xFFFFFFFF) != 1 || a2[4] != 3)
  {
    return 0;
  }

  v2 = *a2;
  v3 = *(a2 + 1);
  v4 = (a1 + 64);
  if (*a2)
  {
    v4 = (*a2 + 8);
  }

  *v4 = v3;
  *v3 = v2;
  v6 = *(a1 + 80);
  v5 = a1 + 80;
  --*(v5 - 8);
  a2[4] = 0;
  *a2 = v6;
  v7 = (v6 + 8);
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = (v5 + 8);
  }

  *v8 = a2;
  *v5 = a2;
  *(a2 + 1) = v5;
  ++*(v5 + 16);
  return 1;
}

uint64_t is_interesting_event(uint64_t a1, uint64_t a2)
{
  if ((*a2 - 17) > 1)
  {
    return 0;
  }

  if ((*(a2 + 56) & 2) != 0)
  {
    return 0;
  }

  result = 0;
  if ((*(a2 + 56) & 4) != 0 || *(a2 + 48))
  {
    return result;
  }

  v5 = libdispatchManagerQueue;
  if (!libdispatchManagerQueue)
  {
    label_ptr = dispatch_queue_get_label_ptr(a1);
    if (!label_ptr)
    {
      label_ptr = &unk_6572;
    }

    result = strcmp(label_ptr, "com.apple.libdispatch-manager");
    if (!result)
    {
      libdispatchManagerQueue = a1;
      return result;
    }

    v8 = dispatch_queue_get_label_ptr(*(a2 + 16));
    if (!v8)
    {
      v8 = &unk_6572;
    }

    if (!strcmp(v8, "com.apple.libdispatch-manager"))
    {
      v5 = *(a2 + 16);
      libdispatchManagerQueue = v5;
    }

    else
    {
      v5 = libdispatchManagerQueue;
    }
  }

  if (v5 == a1 || *(a2 + 16) == v5 || *a2 == 18 && _dispatch_queue_override_invoke_owning_ptr && *(a2 + 32) == _dispatch_queue_override_invoke_owning_ptr)
  {
    return 0;
  }

  v6 = dispatch_queue_get_label_ptr(a1);
  if (!v6)
  {
    v6 = &unk_6572;
  }

  return strcmp(v6, "source") != 0;
}

unsigned int *find_or_create_queue_info(uint64_t a1, int a2)
{
  if (a2)
  {
    os_unfair_lock_lock_with_options();
  }

  v4 = *(dispatch_queue_offsets + 12);
  if (v4 == 8)
  {
    v5 = *(a1 + *(dispatch_queue_offsets + 10));
  }

  else if (v4 == 4)
  {
    v5 = *(a1 + *(dispatch_queue_offsets + 10));
  }

  else
  {
    v5 = 0;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v11 = __find_or_create_queue_info_block_invoke;
  v12 = &__block_descriptor_tmp_44;
  v13 = v5;
  v6 = &off_C090;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if ((v11)(v10, v6))
    {
      if (!a2)
      {
        return v6;
      }

      goto LABEL_12;
    }
  }

  label_ptr = dispatch_queue_get_label_ptr(a1);
  if (label_ptr)
  {
    v9 = label_ptr;
  }

  else
  {
    v9 = &unk_6572;
  }

  v6 = add_queue_info_to_list(a1, v5, v9, 0);
  if (a2)
  {
LABEL_12:
    os_unfair_lock_unlock(&dword_C088);
  }

  return v6;
}

void collapse_enqueuing_recursion(uint64_t a1)
{
  *(a1 + 89) = 0;
  v1 = *(a1 + 128);
  if (v1)
  {
    v3 = 0;
    for (i = 1; ; ++i)
    {
      if (*(v1 + 16) != 3 && (*(v1 + 90) & 1) == 0)
      {
        *(a1 + 89) = 1;
        return;
      }

      v3 += *(v1 + 140) + *(v1 + 136) + 1;
      if (i == 1 && (*(v1 + 90) & 1) != 0)
      {
        break;
      }

      if (*(a1 + 56) == *(v1 + 56) && *(a1 + 96) == *(v1 + 96))
      {
        break;
      }

      v1 = *(v1 + 128);
      if (!v1)
      {
        return;
      }
    }

    os_unfair_lock_lock_with_options();
    if (debug_recursion == 1)
    {
      fputc(10, __stderrp);
      if (*(v1 + 90))
      {
        v5 = "INTERNAL ITEM";
      }

      else
      {
        v5 = &unk_6572;
      }

      snprintf(__str, 0x80uLL, "RECURSION COLLAPSING -- WILL REPARENT %u LEVELS  %s\n", i, v5);
      print_logical_backtrace(__str);
    }

    if (i == 1 && (*(v1 + 90) & 1) == 0)
    {
      v6 = *(v1 + 136) + 1;
      v3 -= v6;
      *(a1 + 136) += v6;
    }

    *(a1 + 140) += v3;
    v7 = *(a1 + 128);
    v8 = *(v1 + 128);
    *(a1 + 128) = v8;
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
    }

    decrement_work_item_refcount(v7);
    if (debug_recursion == 1)
    {
      *(a1 + 88) = 0;
      snprintf(__str, 0x80uLL, "RECURSION COLLAPSING -- DID REPARENT %u LEVELS\n", i);
      print_logical_backtrace(__str);
    }

    os_unfair_lock_unlock(&dword_C0F0);
  }
}

void decrement_work_item_refcount(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      if (!decrement_entry_refcount(&work_item_lists, v1))
      {
        break;
      }

      remove_stack_from_backtrace_uniquing_table(backtrace_uniquing_table, *(v1 + 96));
      os_unfair_lock_lock_with_options();
      v2 = *(v1 + 104);
      if (decrement_entry_refcount(&thread_lists, v2) && (debug_trace_threads & 1) != 0)
      {
        print_thread_summary(v2, "thread became unreferenced, moved to free list: ", &unk_6572);
      }

      os_unfair_lock_unlock(&dword_C020);
      os_unfair_lock_lock_with_options();
      v3 = *(v1 + 112);
      if (v3 && decrement_entry_refcount(&queue_lists, v3) && (debug_trace_queues & 1) != 0)
      {
        print_queue_summary(*(v1 + 112), "queue became unreferenced, moved to free list: ", &unk_6572);
      }

      if (decrement_entry_refcount(&queue_lists, *(v1 + 120)))
      {
        if (debug_trace_queues)
        {
          print_queue_summary(*(v1 + 120), "queue became unreferenced, moved to free list: ", &unk_6572);
        }
      }

      v4 = *(v1 + 128);
      *(v1 + 128) = 0;
      os_unfair_lock_unlock(&dword_C088);
      v1 = v4;
    }

    while (v4);
  }
}

char *resetDyldInsertLibraries(const char *a1)
{
  result = getenv("DYLD_INSERT_LIBRARIES");
  if (result)
  {
    v3 = result;
    strlen(result);
    v4 = __chkstk_darwin();
    v5 = &v16 - ((v4 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v5, v4 + 1);
    v6 = *v3;
    if (!*v3)
    {
      return unsetenv("DYLD_INSERT_LIBRARIES");
    }

    v7 = v5;
    do
    {
      v8 = 0;
      for (i = v6; i; i = v3[++v8])
      {
        if (i == 58)
        {
          break;
        }
      }

      if (v8)
      {
        v10 = v8;
        while (v3[v10] != 47)
        {
          if (!--v10)
          {
            goto LABEL_11;
          }
        }

        v11 = &v3[v10];
        v6 = 47;
      }

      else
      {
LABEL_11:
        v11 = v3;
      }

      v12 = v6 == 47;
      v13 = v6 == 47;
      if (v12)
      {
        v14 = v11 + 1;
      }

      else
      {
        v14 = v11;
      }

      if (&v3[v8] != v14 && strncmp(v14, a1, v3 - v11 - v13 + v8))
      {
        if (v7 != v5)
        {
          *v7++ = 58;
        }

        v7 = stpncpy(v7, v3, v8);
        i = v3[v8];
      }

      if (i == 58)
      {
        v15 = v3 + 1;
      }

      else
      {
        v15 = v3;
      }

      v3 = &v15[v8];
      v6 = v15[v8];
    }

    while (v6);
    if (v7 > v5)
    {
      *v7 = 0;
      return setenv("DYLD_INSERT_LIBRARIES", v5, 1);
    }

    else
    {
      return unsetenv("DYLD_INSERT_LIBRARIES");
    }
  }

  return result;
}

uint64_t print_thread_summary(uint64_t a1, const char *a2, const char *a3)
{
  __str[0] = 0;
  v6 = atomic_load((a1 + 20));
  if (v6 >= 1)
  {
    v7 = atomic_load((a1 + 20));
    snprintf(__str, 0x100uLL, " refcount %d", v7);
  }

  v8 = __stderrp;
  v9 = getpid();
  v10 = &unk_6572;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = &unk_6572;
  }

  if (a3)
  {
    v10 = a3;
  }

  return fprintf(v8, "pid %d %sthread %p thread_id %llu;  thread_info %p  %s%s%s\n", v9, v11, *(a1 + 32), *(a1 + 24), a1, (a1 + 40), __str, v10);
}

uint64_t print_queue_summary(uint64_t a1, const char *a2, const char *a3)
{
  __str[0] = 0;
  v6 = atomic_load((a1 + 20));
  if (v6 >= 1)
  {
    v7 = atomic_load((a1 + 20));
    snprintf(__str, 0x100uLL, " refcount %d", v7);
  }

  v8 = &unk_6572;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = &unk_6572;
  }

  if (a3)
  {
    v8 = a3;
  }

  return fprintf(__stderrp, "%squeue_info %p  queue %p serialnum %llu %s%s%s\n", v9, a1, *(a1 + 24), *(a1 + 32), (a1 + 52), __str, v8);
}

uint64_t print_logical_backtrace(const char *a1)
{
  result = active_work_item();
  if (!result)
  {
    return result;
  }

  v3 = result;
  if ((*(result + 24) - 17) > 1 || (showAll & 1) == 0 && *(result + 40) == libdispatchManagerQueue)
  {
    return result;
  }

  if (*(result + 88))
  {
    return result;
  }

  pthread_setspecific(allow_malloc_logging_key, 0);
  v4 = backtrace_contains_function();
  if (v4)
  {
    print_logical_backtrace_address_of_os_trace_function = v4;
    v5 = allow_malloc_logging_key;

    return pthread_setspecific(v5, &dword_0 + 1);
  }

  LODWORD(v6) = 0;
  v7 = 0;
  *(v3 + 88) = 1;
  v8 = v3;
  do
  {
    v8 = *(v8 + 128);
    ++v7;
    v6 = (v6 + 0x8000);
  }

  while (v8);
  atomic_fetch_add_explicit(print_logical_backtrace_logical_backtrace_count, 1u, memory_order_relaxed);
  atomic_fetch_add_explicit(&print_logical_backtrace_total_enqueuing_levels, v7, memory_order_relaxed);
  v9 = malloc_type_malloc(v6, 0x100004077774924uLL);
  v10 = atomic_load(print_logical_backtrace_logical_backtrace_count);
  v11 = atomic_load(&print_logical_backtrace_total_enqueuing_levels);
  v12 = v11;
  v13 = v6 - 1;
  LODWORD(v11) = atomic_load(print_logical_backtrace_logical_backtrace_count);
  v14 = snprintf(v9, v13, "logical backtrace %d  depth %d  average depth %.1f\n", v10, v7, (v12 / v11));
  if ((v14 & 0x80000000) != 0 || v13 <= v14)
  {
    fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", v13, v14);
    v15 = v9;
  }

  else
  {
    v15 = &v9[v14];
    v13 -= v14;
  }

  if (v7 - 1 >= print_logical_backtrace_max_levels)
  {
    print_logical_backtrace_max_levels = v7;
    v16 = snprintf(v15, v13, "NEW MAX ENQUEUING LEVEL: %d\n", v7);
    if ((v16 & 0x80000000) != 0 || v13 <= v16)
    {
      fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", v13, v16);
    }

    else
    {
      v15 += v16;
      v13 -= v16;
    }
  }

  v40[0] = 0;
  v17 = pthread_self();
  pthread_getname_np(v17, v40, 0x40uLL);
  v18 = dispatch_queue_label();
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = &unk_6572;
  }

  v20 = *(v3 + 24);
  if (v20 <= 65)
  {
    if (v20 == 17)
    {
      v21 = "block";
      goto LABEL_36;
    }

    if (v20 == 18)
    {
      v21 = "function";
      goto LABEL_36;
    }
  }

  else
  {
    switch(v20)
    {
      case 66:
        v21 = "source";
        goto LABEL_36;
      case 256:
        v21 = "object";
        goto LABEL_36;
      case 257:
        v21 = "queue";
        goto LABEL_36;
    }
  }

  v21 = "unknown-type";
LABEL_36:
  v22 = pthread_self();
  v23 = snprintf(v15, v13, "%s  %s on pthread %p %s  queue %p %s\n", a1, v21, v22, v40, *(v3 + 40), v19);
  if ((v23 & 0x80000000) == 0 && v13 > v23)
  {
    v15 += v23;
    v13 -= v23;
    v23 = get_and_print_backtrace();
    if ((v23 & 0x80000000) == 0 && v13 > v23)
    {
      v15 += v23;
      v13 -= v23;
      v24 = 1;
      while (1)
      {
        __str[0] = 0;
        snprintf(__str, 0x40uLL, "  (LEVEL %d)", v24);
        v25 = &unk_6572;
        if (v24 == 1)
        {
          v26 = &unk_6572;
        }

        else
        {
          v26 = "----\n";
        }

        v27 = *(v3 + 16);
        if (v27 <= 3)
        {
          v25 = off_8490[v27];
        }

        v28 = *(v3 + 56);
        memset(&v38, 0, sizeof(v38));
        v29 = dladdr(v28, &v38);
        dli_sname = v38.dli_sname;
        if (!v29)
        {
          dli_sname = 0;
        }

        if (!dli_sname)
        {
          dli_sname = &unk_6572;
        }

        v31 = atomic_load((v3 + 20));
        v33 = *(v3 + 112);
        v32 = *(v3 + 120);
        v34 = *(v32 + 24);
        v35 = (v32 + 52);
        LODWORD(v32) = atomic_load((v32 + 20));
        v36 = *(v33 + 24);
        v37 = (v33 + 52);
        LODWORD(v33) = atomic_load((v33 + 20));
        v23 = snprintf(v15, v13, "%sITEM_INFO %p %s block/function %p %s refcount %d  %s\n    TARGET QUEUE %p %s refcount %d\n      FROM QUEUE %p %s refcount %d\n", v26, v3, v25, v28, dli_sname, v31, __str, v34, v35, v32, v36, v37, v33);
        if ((v23 & 0x80000000) != 0 || v13 <= v23)
        {
          break;
        }

        v15 += v23;
        v13 -= v23;
        if (*(v3 + 136))
        {
          v23 = snprintf(v15, v13, "    repeated_enqueuings_count: %u\n", *(v3 + 136));
          if ((v23 & 0x80000000) != 0 || v13 <= v23)
          {
            break;
          }

          v15 += v23;
          v13 -= v23;
        }

        if (*(v3 + 140))
        {
          v23 = snprintf(v15, v13, "    elided_enqueuings_count: %u\n", *(v3 + 140));
          if ((v23 & 0x80000000) != 0 || v13 <= v23)
          {
            break;
          }

          v15 += v23;
          v13 -= v23;
        }

        if (showAll == 1)
        {
          v23 = print_queue_item(v15, v13, v3 + 24, (*(v3 + 120) + 52));
          if ((v23 & 0x80000000) != 0 || v13 <= v23)
          {
            break;
          }

          v15 += v23;
          v13 -= v23;
        }

        v23 = print_item_backtrace();
        if ((v23 & 0x80000000) != 0 || v13 <= v23)
        {
          break;
        }

        v15 += v23;
        v13 -= v23;
        v3 = *(v3 + 128);
        ++v24;
        if (!v3)
        {
          goto LABEL_69;
        }
      }
    }
  }

  fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", v13, v23);
LABEL_69:
  snprintf(v15, v13 + 1, "\n");
  fputs(v9, __stderrp);
  free(v9);
  return pthread_setspecific(allow_malloc_logging_key, &dword_0 + 1);
}

void *backtrace_contains_function()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v45 = 0u;
  v44 = 0u;
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
  *v14 = 0u;
  v4 = backtrace(v14, 512);
  v5 = v4;
  if (v2)
  {
    if (v4 >= 1)
    {
      v6 = v4;
      for (i = v14; *i != v2; ++i)
      {
        if (!--v6)
        {
          return 0;
        }
      }

      return v2;
    }

    return 0;
  }

  snprintf(__str, 0x400uLL, " %s + ", v3);
  v8 = backtrace_symbols(v14, v5);
  if (v5 < 1)
  {
    return 0;
  }

  v9 = v8;
  v10 = v5;
  v11 = v14;
  while (!strstr(*v9, __str))
  {
    ++v11;
    ++v9;
    if (!--v10)
    {
      return 0;
    }
  }

  return *v11;
}

uint64_t get_and_print_backtrace()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v8 = backtrace(v10, 512);
  if (v8 <= v4)
  {
    return snprintf(v7, v6, "NO BACKTRACE (%d frames after skipping %d)\n", v8 - v4, v4);
  }

  else
  {
    return print_backtrace(v7, v6, &v10[v4], v8 - v4, v2);
  }
}

uint64_t print_queue_item(char *__str, size_t __size, uint64_t a3, const char *a4)
{
  v8 = *a3;
  if (*a3 <= 65)
  {
    if (v8 == 17)
    {
      v30 = *(a3 + 8);
      v31 = *(a3 + 16);
      v32 = *(a3 + 24);
      memset(&v63, 0, sizeof(v63));
      v33 = dladdr(v32, &v63);
      dli_sname = v63.dli_sname;
      if (!v33)
      {
        dli_sname = 0;
      }

      v35 = *(a3 + 32);
      if (dli_sname)
      {
        v36 = dli_sname;
      }

      else
      {
        v36 = &unk_6572;
      }

      memset(&v63, 0, sizeof(v63));
      v37 = dladdr(v35, &v63);
      v38 = v63.dli_sname;
      if (!v37)
      {
        v38 = 0;
      }

      if (!v38)
      {
        v38 = &unk_6572;
      }

      v39 = snprintf(__str, __size, "    BLOCK continuation %p\n    target_queue %p %s\n    block %p %s\n    block_invoke %p %s\n", v30, v31, a4, v32, v36, v35, v38);
      v10 = v39;
      if ((v39 & 0x80000000) != 0 || __size <= v39)
      {
        v44 = __stderrp;
LABEL_56:
        fprintf(v44, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n");
        return v10;
      }

      v40 = &__str[v39];
      v41 = __size - v39;
      if (*(a3 + 40))
      {
        v42 = snprintf(v40, v41, "    group %p\n", *(a3 + 40));
        v10 = v42 + v10;
        if ((v42 & 0x80000000) != 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v42 = 0;
      }

      if (v41 > v42)
      {
        v51 = &v40[v42];
        v52 = v41 - v42;
        if (*(a3 + 48))
        {
          v53 = snprintf(v51, v52, "    waiter %p\n", *(a3 + 48));
          v10 = v53 + v10;
          if ((v53 & 0x80000000) != 0)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v53 = 0;
        }

        if (v52 > v53)
        {
          v56 = v53;
          v57 = v52 - v53;
          if ((*(a3 + 56) & 7) != 0)
          {
            v58 = "BARRIER   ";
            if ((*(a3 + 56) & 1) == 0)
            {
              v58 = &unk_6572;
            }

            v59 = "SYNC   ";
            if ((*(a3 + 56) & 2) == 0)
            {
              v59 = &unk_6572;
            }

            if ((*(a3 + 56) & 4) != 0)
            {
              v60 = "APPLY   ";
            }

            else
            {
              v60 = &unk_6572;
            }

LABEL_88:
            v61 = snprintf(&v51[v56], v57, "    %s%s%s\n", v58, v59, v60);
            v10 = v61 + v10;
            if ((v61 & 0x80000000) != 0)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          }

LABEL_90:
          v61 = 0;
LABEL_91:
          if (v57 > v61)
          {
            return v10;
          }
        }
      }
    }

    else
    {
      if (v8 != 18)
      {
        goto LABEL_41;
      }

      v12 = *(a3 + 8);
      v13 = *(a3 + 16);
      v15 = *(a3 + 24);
      v14 = *(a3 + 32);
      memset(&v63, 0, sizeof(v63));
      v16 = dladdr(v14, &v63);
      v17 = v63.dli_sname;
      if (!v16)
      {
        v17 = 0;
      }

      if (!v17)
      {
        v17 = &unk_6572;
      }

      v18 = snprintf(__str, __size, "    FUNCTION continuation %p\n    target_queue %p %s\n    context %p\n    function %p %s\n", v12, v13, a4, v15, v14, v17);
      v10 = v18;
      if ((v18 & 0x80000000) != 0 || __size <= v18)
      {
LABEL_55:
        v44 = __stderrp;
        goto LABEL_56;
      }

      v19 = &__str[v18];
      v20 = __size - v18;
      if (*(a3 + 40))
      {
        v21 = snprintf(v19, v20, "    group %p\n", *(a3 + 40));
        v10 = v21 + v10;
        if ((v21 & 0x80000000) != 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v21 = 0;
      }

      if (v20 > v21)
      {
        v51 = &v19[v21];
        v54 = v20 - v21;
        if (*(a3 + 48))
        {
          v55 = snprintf(v51, v54, "    waiter %p\n", *(a3 + 48));
          v10 = v55 + v10;
          if ((v55 & 0x80000000) != 0)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v55 = 0;
        }

        if (v54 > v55)
        {
          v56 = v55;
          v57 = v54 - v55;
          if ((*(a3 + 56) & 7) != 0)
          {
            v58 = "BARRIER   ";
            if ((*(a3 + 56) & 1) == 0)
            {
              v58 = &unk_6572;
            }

            v59 = "SYNC   ";
            if ((*(a3 + 56) & 2) == 0)
            {
              v59 = &unk_6572;
            }

            if ((*(a3 + 56) & 4) != 0)
            {
              v60 = "APPLY   ";
            }

            else
            {
              v60 = &unk_6572;
            }

            goto LABEL_88;
          }

          goto LABEL_90;
        }
      }
    }

LABEL_92:
    fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n");
    return v10;
  }

  switch(v8)
  {
    case 66:
      v22 = *(a3 + 8);
      v23 = *(a3 + 24);
      v62 = *(a3 + 16);
      if ((v23 + 22) > 0x28)
      {
        v24 = "unknown type";
      }

      else
      {
        v24 = off_8328[v23 + 22];
      }

      v46 = *(a3 + 32);
      v45 = *(a3 + 40);
      v47 = *(a3 + 48);
      memset(&v63, 0, sizeof(v63));
      v48 = dladdr(v47, &v63);
      v49 = v63.dli_sname;
      if (!v48)
      {
        v49 = 0;
      }

      if (!v49)
      {
        v49 = &unk_6572;
      }

      v50 = snprintf(__str, __size, "    SOURCE %p\n    target_queue %p %s\n    type (kevent filter) %ld  %s\n    handle %lu\n    context %p\n    handler %p %s\n    suspend_count %u\n", v22, v62, a4, v23, v24, v46, v45, v47, v49, *(a3 + 56));
      v10 = v50;
      if ((v50 & 0x80000000) == 0 && __size > v50)
      {
        if ((*(a3 + 60) & 0xF) != 0)
        {
          v11 = snprintf(&__str[v50], __size - v50, "    %s%s%s%s\n");
          return (v11 + v10);
        }

        return v10;
      }

      goto LABEL_55;
    case 256:
      v25 = *(a3 + 8);
      v26 = *(a3 + 16);
      v27 = *(a3 + 24);
      memset(&v63, 0, sizeof(v63));
      v28 = dladdr(v27, &v63);
      v29 = v63.dli_sname;
      if (!v28)
      {
        v29 = 0;
      }

      if (!v29)
      {
        v29 = &unk_6572;
      }

      return snprintf(__str, __size, "    OBJECT %p\n    target_queue %p %s\n    type %p %s\n    kind %s\n", v25, v26, a4, v27, v29, *(a3 + 32));
    case 257:
      v9 = snprintf(__str, __size, "    QUEUE %p %s\n    target_queue %p %s\n    serialnum %lu\n    width %u\n    suspend_count %u\n", *(a3 + 8), &unk_6572, *(a3 + 16), a4, *(a3 + 32), *(a3 + 40), *(a3 + 44));
      v10 = v9;
      if ((v9 & 0x80000000) == 0 && __size > v9)
      {
        if ((*(a3 + 48) & 0x1F) != 0)
        {
          v11 = snprintf(&__str[v9], __size - v9, "    %s%s%s%s%s\n");
          return (v11 + v10);
        }

        return v10;
      }

      goto LABEL_55;
  }

LABEL_41:

  return snprintf(__str, __size, "    unknown dispatch introspection item!!!\n");
}

uint64_t print_item_backtrace()
{
  v0 = __chkstk_darwin();
  v3 = v2;
  v4 = v0;
  memset(v9, 0, 512);
  v5 = *(v1 + 92);
  if (v5 >= 0x200)
  {
    v6 = 512;
  }

  else
  {
    v6 = v5;
  }

  v7 = ptrSized_stack_frames_for_uniqued_stack(backtrace_uniquing_table, *(v1 + 96), v9, v6);
  return print_backtrace(v4, v3, v9, v7, 1);
}

uint64_t print_queue_item_and_current_backtrace(char *__str, size_t __size, uint64_t a3, const char *a4)
{
  if (!a4)
  {
    v7 = *(a3 + 16);
    a4 = dispatch_queue_label();
  }

  v8 = print_queue_item(__str, __size, a3, a4);
  v9 = v8;
  if ((v8 & 0x80000000) == 0 && __size > v8)
  {
    return get_and_print_backtrace() + v8;
  }

  fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", __size, v8);
  return v9;
}

uint64_t print_gcd_queue_create_dispose()
{
  result = __chkstk_darwin();
  if (showLogicalBacktraces == 1)
  {
    v2 = v1;
    v3 = result;
    if (*(v1 + 16))
    {
      v4 = *(v1 + 16);
    }

    else
    {
      v4 = &unk_6572;
    }

    if (showAll)
    {
      pthread_setspecific(allow_malloc_logging_key, 0);
      v5 = *v2;
      v6 = pthread_self();
      v7 = snprintf(__str, 0x3FFFuLL, "%s queue %p %s  (on pthread %p)\n", v3, v5, v4, v6);
      if (v7 >= 0x3FFF)
      {
        v9 = 0x3FFFLL;
        fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", 0x3FFFuLL, v7);
        v8 = __str;
      }

      else
      {
        v8 = &__str[v7];
        v9 = 0x3FFFLL - v7;
        v10 = get_and_print_backtrace();
        if ((v10 & 0x80000000) != 0 || v9 <= v10)
        {
          fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", v9, v10);
        }

        else
        {
          v8 += v10;
          v9 -= v10;
        }
      }

      snprintf(v8, v9 + 1, "\n");
      fputs(__str, __stderrp);
      return pthread_setspecific(allow_malloc_logging_key, &dword_0 + 1);
    }

    else
    {
      result = active_work_item();
      if (result)
      {
        snprintf(__str, 0x4000uLL, "%s queue %p %s", v3, *v2, v4);
        return print_logical_backtrace(__str);
      }
    }
  }

  return result;
}

const char *print_gcd_queue_item_enqueue_dequeue(const char *result, const void *a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if ((showAll & 1) == 0 && (showEnqueueDequeue & a4) == 0)
  {
    return result;
  }

  pthread_setspecific(allow_malloc_logging_key, 0);
  v10 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  v11 = "IGNORING ";
  if (a5)
  {
    v11 = "IGNORING BECAUSE ALREADY HAPPENED ";
  }

  if (a4)
  {
    v12 = &unk_6572;
  }

  else
  {
    v12 = v11;
  }

  v13 = *a3;
  if (*a3 <= 65)
  {
    if (v13 == 17)
    {
      v14 = "block";
      goto LABEL_20;
    }

    if (v13 == 18)
    {
      v14 = "function";
      goto LABEL_20;
    }

LABEL_19:
    v14 = "unknown-type";
    goto LABEL_20;
  }

  if (v13 == 66)
  {
    v14 = "source";
    goto LABEL_20;
  }

  if (v13 == 256)
  {
    v14 = "object";
    goto LABEL_20;
  }

  if (v13 != 257)
  {
    goto LABEL_19;
  }

  v14 = "queue";
LABEL_20:
  v15 = dispatch_queue_label();
  v16 = pthread_self();
  v17 = snprintf(v10, 0x1FFFFuLL, "%s%s %s %p on queue %p %s  (on pthread %p)\n", v12, v9, v14, a3, a2, v15, v16);
  if (v17 >= 0x1FFFF)
  {
    v19 = 0x1FFFFLL;
    fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", 0x1FFFFuLL, v17);
    v18 = v10;
  }

  else
  {
    v18 = &v10[v17];
    v19 = 0x1FFFFLL - v17;
    active = active_work_item();
    if (active)
    {
      v21 = active;
      if (*(active + 32) != a3[1] && ((showAll & 1) != 0 || *(active + 40) != libdispatchManagerQueue))
      {
        v22 = snprintf(v18, v19, "EVENT OCCURRED WHILE AN ASYNC OPERATION IS EXECUTING;  DETAILS OF THAT OPERATION:\n");
        if ((v22 & 0x80000000) != 0 || v19 <= v22 || (v18 += v22, v19 -= v22, v22 = print_queue_item(v18, v19, v21 + 24, (*(v21 + 120) + 52)), (v22 & 0x80000000) != 0) || v19 <= v22 || (v18 += v22, v19 -= v22, v22 = snprintf(v18, v19, "DETAILS FOR NEW EVENT:\n"), (v22 & 0x80000000) != 0) || v19 <= v22)
        {
          fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", v19, v22);
        }

        else
        {
          v18 += v22;
          v19 -= v22;
        }
      }
    }

    v23 = print_queue_item_and_current_backtrace(v18, v19, a3, 0);
    if ((v23 & 0x80000000) != 0 || v19 <= v23)
    {
      fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", v19, v23);
    }

    else
    {
      v18 += v23;
      v19 -= v23;
    }
  }

  snprintf(v18, v19 + 1, "\n");
  fputs(v10, __stderrp);
  free(v10);
  v24 = allow_malloc_logging_key;

  return pthread_setspecific(v24, &dword_0 + 1);
}

uint64_t print_gcd_item_conflict()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v11[0] = 0;
  v4 = pthread_self();
  pthread_getname_np(v4, v11, 0x40uLL);
  v5 = pthread_self();
  v6 = snprintf(__str, 0x7FFFuLL, "LOGICAL ERROR! new work item %p conflicts with currently-running %p on pthread %p %s\n", v3, v2, v5, v11);
  if (v6 >= 0x7FFF)
  {
    v8 = 0x7FFFLL;
    fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", 0x7FFFuLL, v6);
    v7 = __str;
  }

  else
  {
    v7 = &__str[v6];
    v8 = 0x7FFFLL - v6;
    v9 = snprintf(v7, v8, "NEW WORK ITEM %p:\n", v3);
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    if (v8 <= v9)
    {
      goto LABEL_16;
    }

    v7 += v9;
    v8 -= v9;
    v9 = print_queue_item(v7, v8, (v3 + 3), (v3[15] + 52));
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    if (v8 <= v9)
    {
      goto LABEL_16;
    }

    v7 += v9;
    v8 -= v9;
    v9 = print_item_backtrace();
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    if (v8 <= v9)
    {
      goto LABEL_16;
    }

    v7 += v9;
    v8 -= v9;
    v9 = snprintf(v7, v8, "PREVIOUS (CURRENTLY RUNNING) ITEM %p:\n", v2);
    if ((v9 & 0x80000000) != 0 || v8 <= v9 || (v7 += v9, v8 -= v9, v9 = print_queue_item(v7, v8, (v2 + 3), (v2[15] + 52)), (v9 & 0x80000000) != 0) || v8 <= v9 || (v7 += v9, v8 -= v9, v9 = print_item_backtrace(), (v9 & 0x80000000) != 0) || v8 <= v9)
    {
LABEL_16:
      fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", v8, v9);
    }

    else
    {
      v7 += v9;
      v8 -= v9;
    }
  }

  snprintf(v7, v8 + 1, "\n");
  return fputs(__str, __stderrp);
}

uint64_t print_gcd_queue_item_complete()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  pthread_setspecific(allow_malloc_logging_key, 0);
  if (showLogicalBacktraces == 1)
  {
    v4 = *(v2 + 32);
    if (v4 != v3)
    {
      v5 = *(v2 + 16);
      if (v5 > 3)
      {
        v6 = &unk_6572;
      }

      else
      {
        v6 = off_8490[v5];
      }

      v13 = *(v2 + 48);
      v14 = *(v2 + 56);
      v15 = pthread_self();
      v16 = snprintf(__str, 0x3FFFuLL, "LOGICAL ERROR!! irrelevant(?) continuation %p complete;  item_info %p  state %s, continuation %p, context %p function %p  NO MATCH (on pthread %p)\n", v3, v2, v6, v4, v13, v14, v15);
      v9 = v16;
      if (v16 >= 0x3FFF)
      {
        v11 = 0x3FFFLL;
        fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", 0x3FFFuLL, v16);
        v10 = __str;
      }

      else
      {
        v10 = &__str[v16];
        v11 = 0x3FFFLL - v16;
        v17 = print_queue_item_and_current_backtrace(v10, v11, v2 + 24, (*(v2 + 120) + 52));
        v9 = v17;
        if ((v17 & 0x80000000) != 0 || v11 <= v17)
        {
          fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", v11, v17);
        }

        else
        {
          v10 += v17;
          v11 -= v17;
        }
      }

      if (*(v2 + 16) != 2)
      {
        goto LABEL_22;
      }

      v12 = snprintf(v10, v11, "    marking item_info %p as complete\n", v2);
      goto LABEL_18;
    }
  }

  if (showEnqueueDequeue != 1)
  {
    return pthread_setspecific(allow_malloc_logging_key, &dword_0 + 1);
  }

  v7 = pthread_self();
  v8 = snprintf(__str, 0x3FFFuLL, "queue item %p complete;  completed_continuation %p  MATCHED, SO CLEARING  (on pthread %p)\n", v2, v3, v7);
  v9 = v8;
  if (v8 < 0x3FFF)
  {
    v10 = &__str[v8];
    v11 = 0x3FFFLL - v8;
    v12 = get_and_print_backtrace();
LABEL_18:
    v9 = v12;
    if ((v12 & 0x80000000) != 0 || v11 <= v12)
    {
      fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", v11, v12);
    }

    else
    {
      v10 += v12;
      v11 -= v12;
    }

    goto LABEL_22;
  }

  v11 = 0x3FFFLL;
  fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", 0x3FFFuLL, v8);
  v10 = __str;
LABEL_22:
  if (v9 >= 1)
  {
    snprintf(v10, v11 + 1, "\n");
    fputs(__str, __stderrp);
  }

  return pthread_setspecific(allow_malloc_logging_key, &dword_0 + 1);
}

uint64_t print_pthread_event()
{
  result = __chkstk_darwin();
  if (showLogicalBacktraces == 1)
  {
    v4 = v3;
    v5 = v2;
    v6 = v1;
    v7 = result;
    if (showAll)
    {
      pthread_setspecific(allow_malloc_logging_key, 0);
      v8 = v7 - 1;
      if (v8 > 3)
      {
        v9 = "pthread unknown event";
      }

      else
      {
        v9 = off_8470[v8];
      }

      v11 = pthread_self();
      v12 = snprintf(__str, 0x3FFFuLL, "%s: pthread %p, stack %p-%p[%zx]  (on pthread %p)\n", v9, v6, v5, &v5[v4], v4, v11);
      if (v12 >= 0x3FFF)
      {
        v14 = 0x3FFFLL;
        fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", 0x3FFFuLL, v12);
        v13 = __str;
      }

      else
      {
        v13 = &__str[v12];
        v14 = 0x3FFFLL - v12;
        if (v8 <= 3)
        {
          v15 = dword_6480[v8];
        }

        v16 = get_and_print_backtrace();
        if ((v16 & 0x80000000) != 0 || v14 <= v16)
        {
          fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", v14, v16);
        }

        else
        {
          v13 += v16;
          v14 -= v16;
        }
      }

      snprintf(v13, v14 + 1, "\n");
      fputs(__str, __stderrp);
      return pthread_setspecific(allow_malloc_logging_key, &dword_0 + 1);
    }

    else
    {
      result = pthread_self();
      if (result != v6)
      {
        result = active_work_item();
        if (result)
        {
          if ((v7 - 1) > 3)
          {
            v10 = "pthread unknown event";
          }

          else
          {
            v10 = off_8470[v7 - 1];
          }

          snprintf(__str, 0x4000uLL, "%s: pthread %p, stack %p-%p[%zx]", v10, v6, v5, &v5[v4], v4);
          return print_logical_backtrace(__str);
        }
      }
    }
  }

  return result;
}

uint64_t print_list(const char *a1, void **a2, uint64_t a3)
{
  if (a1)
  {
    fprintf(__stderrp, "%s:\n", a1);
  }

  v5 = *a2;
  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = v6 + 1;
      fprintf(__stderrp, "%4u  ", v6);
      (*(a3 + 16))(a3, v5);
      v5 = *v5;
      v6 = v7;
    }

    while (v5);
  }

  v8 = __stderrp;

  return fputc(10, v8);
}

void locked_print_dispatch_info()
{
  if (exerciseAPI == 1 && os_unfair_lock_trylock(&dword_C020))
  {
    if (os_unfair_lock_trylock(&dword_C088))
    {
      if (os_unfair_lock_trylock(&dword_C0F0))
      {
        print_dispatch_info();
        os_unfair_lock_unlock(&dword_C0F0);
      }

      os_unfair_lock_unlock(&dword_C088);
    }

    os_unfair_lock_unlock(&dword_C020);
  }
}

const char *initialize_debug_printing()
{
  result = getenv("BacktraceRecordingOptions");
  if (result)
  {
    v1 = result;
    if (strcasestr(result, "api"))
    {
      exerciseAPI = 1;
    }

    if (strcasestr(v1, "logical"))
    {
      showLogicalBacktraces = 1;
    }

    if (strcasestr(v1, "all"))
    {
      showAll = 1;
    }

    if (strcasestr(v1, "nocompress"))
    {
      nocompress = 1;
    }

    if (strcasestr(v1, "enqueue"))
    {
      showEnqueueDequeue = 1;
    }

    if (strcasestr(v1, "threads"))
    {
      debug_trace_threads = 1;
    }

    if (strcasestr(v1, "queues"))
    {
      debug_trace_queues = 1;
    }

    if (strcasestr(v1, "recursion"))
    {
      debug_recursion = 1;
    }

    if (strcasestr(v1, "maxlevels"))
    {
      debug_maxlevels = 1;
    }

    result = strcasestr(v1, "none");
    if (result)
    {
      debug_printing = 0;
    }

    if (showAll == 1)
    {
      showEnqueueDequeue = 1;
    }
  }

  if (showLogicalBacktraces == 1)
  {
    pthread_key_create(&allow_malloc_logging_key, 0);
    result = pthread_setspecific(allow_malloc_logging_key, &dword_0 + 1);
    previous_malloc_logger = malloc_logger;
    malloc_logger = my_malloc_logger;
  }

  return result;
}

void *my_malloc_logger(void *result)
{
  v1 = result;
  if (previous_malloc_logger)
  {
    result = previous_malloc_logger(result);
  }

  if (v1 == 10)
  {
    result = pthread_getspecific(allow_malloc_logging_key);
    if (result)
    {
      pthread_setspecific(allow_malloc_logging_key, 0);
      if (my_malloc_logger_finished_setlocale)
      {
LABEL_6:
        snprintf(__str, 0x80uLL, "malloc_logger event type %u", 10);
        print_logical_backtrace(__str);
        return pthread_setspecific(allow_malloc_logging_key, &dword_0 + 1);
      }

      v2 = backtrace_contains_function();
      if (!v2)
      {
        v4 = my_malloc_logger_malloc_count;
        v5 = ++my_malloc_logger_malloc_count;
        if (v4 >= 1000)
        {
          fprintf(__stderrp, "setting finished_setlocale, malloc_count %d\n", v5);
          my_malloc_logger_finished_setlocale = 1;
        }

        goto LABEL_6;
      }

      if ((my_malloc_logger_printed & 1) == 0)
      {
        my_malloc_logger_printed = 1;
      }

      my_malloc_logger_address_of_setlocale_function = v2;
      v3 = allow_malloc_logging_key;

      return pthread_setspecific(v3, &dword_0 + 1);
    }
  }

  return result;
}

uint64_t print_backtrace(char *__str, size_t __size, void **a3, int a4, char a5)
{
  v6 = __size;
  v7 = __str;
  if (a4 <= 0)
  {
    return snprintf(__str, __size, "NO BACKTRACE (%d frames)\n", a4);
  }

  v8 = a5 & ~nocompress;
  v9 = a3[a4 - 1];
  v10 = v9 >= 0x1000;
  v11 = v9 < 0x1000;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = -1;
  }

  v13 = a4 - v11;
  v14 = backtrace_symbols(a3, a4 - v11);
  v15 = v14;
  v16 = v8 ^ 1;
  if (v13 < 3)
  {
    v16 = 1;
  }

  if (v16)
  {
LABEL_11:
    v17 = v13;
  }

  else
  {
    v17 = a4 + v12 - 2;
    v18 = &v14[v13 - 3];
    while (strstr(*v18, " libdispatch.dylib "))
    {
      --v17;
      --v18;
      if (v17 <= 0)
      {
        goto LABEL_11;
      }
    }
  }

  if (v13 >= 1)
  {
    v19 = 0;
    v20 = 0;
    while (1)
    {
      if (v8)
      {
        if (strstr(v15[v19], " libdispatch.dylib "))
        {
          v8 = 1;
          goto LABEL_30;
        }

        if (v19 >= 1)
        {
          v21 = snprintf(v7, v6, "%s\n", v15[v19 - 1]);
          if ((v21 & 0x80000000) != 0 || v6 <= v21)
          {
LABEL_33:
            fprintf(__stderrp, "BUFSIZ CHECK FAILED bufsiz %zu printed_count %d\n\n\n", v6, v21);
            goto LABEL_35;
          }

          v7 += v21;
          v6 -= v21;
          v20 = v21 + v20;
        }
      }

      v21 = snprintf(v7, v6, "%s\n", v15[v19]);
      if ((v21 & 0x80000000) != 0 || v6 <= v21)
      {
        goto LABEL_33;
      }

      v7 += v21;
      v6 -= v21;
      v20 = v21 + v20;
      if (v19 == v17)
      {
        if (v17 >= v13 - 2)
        {
          v8 = 0;
          v19 = v17;
        }

        else
        {
          v21 = snprintf(v7, v6, "...");
          if ((v21 & 0x80000000) != 0 || v6 <= v21)
          {
            goto LABEL_33;
          }

          v8 = 0;
          v7 += v21;
          v6 -= v21;
          v20 = v21 + v20;
          v19 = v13 - 2;
        }
      }

      else
      {
        v8 = 0;
      }

LABEL_30:
      if (++v19 >= v13)
      {
        goto LABEL_35;
      }
    }
  }

  v20 = 0;
LABEL_35:
  free(v15);
  return v20;
}

_DWORD *create_backtrace_uniquing_table(unsigned int a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x108uLL, 0x1080040AD5D41FBuLL);
  v5 = v4;
  if ((a2 & 2) != 0)
  {
    v6 = 24;
  }

  else
  {
    v6 = 16;
  }

  v4[10] = v6;
  if (a1)
  {
    if (a1 <= 0x400)
    {
      v7 = 1024;
    }

    else
    {
      v7 = a1;
    }

    v8 = (v6 * v7);
    v9 = vm_page_size;
    v10 = (((v8 + vm_page_size - 1) & -vm_page_size) / vm_page_size);
  }

  else
  {
    v9 = vm_page_size;
    v10 = 512;
  }

  *(v4 + 1) = v10;
  *(v4 + 2) = (v9 * v10 / v6) & 0xFFFFFFFFFFFFFFELL;
  *(v4 + 3) = v9 * v10;
  address = 0;
  if (mach_vm_allocate(mach_task_self_, &address, v9 * v10, 167772161))
  {
    create_backtrace_uniquing_table_cold_1();
  }

  *v5 = address;
  *(v5 + 4) = 0;
  v5[14] = ((a2 & 6) == 0) | a2;
  v5[11] = 10;
  v11 = *(v5 + 2);
  if (v11 >= 0x401)
  {
    v12 = 10;
    do
    {
      v11 >>= 2;
      v12 += 3;
    }

    while (v11 > 0x400);
    v5[11] = v12;
  }

  pthread_rwlock_init((v5 + 16), 0);
  return v5;
}

uint64_t enter_stack_in_backtrace_uniquing_table()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v30 = 0;
  pthread_rwlock_wrlock((v0 + 64));
  v8 = _enter_frames_in_table_while_locked(v7, &v30, v4, v2);
  pthread_rwlock_unlock((v7 + 64));
  if (v8)
  {
    result = 1;
  }

  else
  {
    v28 = v6;
    v29 = v2;
    while (1)
    {
      v10 = 4 * *(v7 + 8);
      v11 = *(v7 + 44);
      pthread_rwlock_wrlock((v7 + 64));
      v12 = *(v7 + 16);
      v13 = vm_page_size * v10;
      v14 = vm_page_size * v10 / *(v7 + 40);
      v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
      if (HIDWORD(v14))
      {
        fprintf(__stderrp, "can't expand backtrace uniquing table from %llu nodes to %llu nodes (exceeds maximum %u)\n");
        goto LABEL_32;
      }

      v16 = *v7;
      v17 = *(v7 + 24);
      address[0] = 0;
      if (mach_vm_allocate(mach_task_self_, address, vm_page_size * v10, 167772161))
      {
        create_backtrace_uniquing_table_cold_1();
      }

      v18 = address[0];
      if (!address[0])
      {
        break;
      }

      *v7 = address[0];
      *(v7 + 8) = v10;
      *(v7 + 16) = v15;
      *(v7 + 24) = v13;
      *(v7 + 32) = v12;
      *(v7 + 44) = v11 + 3;
      v19 = *(v7 + 56);
      if (v19)
      {
        *(v7 + 48) = 0;
      }

      else if ((v19 & 4) != 0)
      {
        if (mach_vm_copy(mach_task_self_, v16, v17, v18))
        {
          printf("(BacktraceUniquing) expandUniquingTable(): VMCopyFailed");
        }
      }

      else if ((v19 & 2) != 0)
      {
        *(v7 + 48) = 0;
        if (v12)
        {
          for (i = 0; i != v12; ++i)
          {
            v21 = *(v7 + 40);
            v22 = v16 + i * v21;
            v23 = *(v22 + 16);
            if (v23)
            {
              v24 = *(v22 + 8);
              if (v24 == -1)
              {
                v26 = 0;
              }

              else
              {
                v25 = 0;
                do
                {
                  address[v25] = *v22;
                  v26 = v25 + 1;
                  v22 = v16 + (v24 * v21);
                  v24 = *(v22 + 8);
                  ++v25;
                }

                while (v24 != -1);
              }

              address[v26] = *v22;
              v31 = 0;
              if (_enter_frames_in_table_while_locked(v7, &v31, address, v26 + 1))
              {
                *(*v7 + v31 * *(v7 + 40) + 16) = v23;
              }

              else
              {
                fwrite("unable to reinsert node when expanding backtrace uniquing table - bad hashing function?\n", 0x58uLL, 1uLL, __stderrp);
              }
            }
          }
        }
      }

      if (mach_vm_deallocate(mach_task_self_, v16, v17))
      {
        printf("(BacktraceUniquing) expandUniquingTable(): mach_vm_deallocate failed. [%p]\n", *v7);
      }

      pthread_rwlock_unlock((v7 + 64));
      pthread_rwlock_wrlock((v7 + 64));
      v27 = _enter_frames_in_table_while_locked(v7, &v30, v4, v29);
      pthread_rwlock_unlock((v7 + 64));
      if (v27)
      {
        result = 1;
        goto LABEL_33;
      }
    }

    fprintf(__stderrp, "failed to expand uniquing table to %llu bytes\n");
LABEL_32:
    pthread_rwlock_unlock((v7 + 64));
    result = 0;
    v30 = -1;
LABEL_33:
    v6 = v28;
  }

  *v6 = v30;
  return result;
}

uint64_t remove_stack_from_backtrace_uniquing_table(uint64_t a1, uint64_t a2)
{
  pthread_rwlock_wrlock((a1 + 64));
  if (a2 != -1)
  {
    v4 = a2;
    do
    {
      v5 = *(a1 + 40);
      v6 = (*a1 + (v5 * v4));
      v7 = v6[2];
      if (*v6)
      {
        v8 = 0;
      }

      else
      {
        v8 = v7 == 0;
      }

      if (v8)
      {
        break;
      }

      v9 = v6[3];
      if (v9 != -1)
      {
        v10 = v9 - 1;
        v6[3] = v10;
        if (!v10)
        {
          bzero(v6, v5);
          --*(a1 + 48);
          if (v4 == a2)
          {
            --*(a1 + 52);
          }
        }
      }

      v4 = v7;
    }

    while (v7 != -1);
  }

  return pthread_rwlock_unlock((a1 + 64));
}

uint64_t stack_frames_for_uniqued_stack(uint64_t a1, int a2, uint64_t a3, int a4)
{
  pthread_rwlock_rdlock((a1 + 64));
  v8 = 0;
  if (a4 && a2 != -1)
  {
    v8 = 0;
    v9 = *(a1 + 40);
    v10 = vm_page_size;
    while (1)
    {
      if (v10 * *(a1 + 8) <= (v9 + v9 * a2))
      {
        fprintf(__stderrp, "(BacktraceUniquing): Invalid parent node %#x\n");
        goto LABEL_14;
      }

      v11 = *a1 + (v9 * a2);
      a2 = *(v11 + 8);
      if (!*v11 && a2 == 0)
      {
        break;
      }

      *(a3 + 8 * v8) = *v11;
      v13 = v8++;
      if (a4 - 1 == v13 || a2 == -1)
      {
        goto LABEL_14;
      }
    }

    fprintf(__stderrp, "(BacktraceUniquing): Invalid PC 0x%llx\n");
  }

LABEL_14:
  pthread_rwlock_unlock((a1 + 64));
  return v8;
}

uint64_t _enter_frames_in_table_while_locked(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 44);
  v7 = (v4 - v5) / ((2 * v6) | 1uLL);
  v8 = a4;
  v9 = -1;
  while (1)
  {
    v10 = v9;
    if (v8 < 1)
    {
      break;
    }

    if (v6)
    {
      --v8;
      v11 = *(a3 + 8 * v8);
      v9 = ((16 * v9) ^ (v11 >> 2)) % (v4 - v5 - 1) + v5;
      v12 = (v6 - 1) * v7 + 1;
      v13 = v6;
      while (1)
      {
        v14 = *a1 + *(a1 + 40) * v9;
        if (!*v14 && !*(v14 + 8))
        {
          break;
        }

        if (*v14 == v11 && *(v14 + 8) == v10)
        {
          v19 = *(v14 + 12);
          v18 = (v14 + 12);
          v17 = v19;
          if (v19 == -1)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        v15 = v9 + v12;
        if (v4 <= v15)
        {
          v16 = v5 - v4;
        }

        else
        {
          v16 = 0;
        }

        v12 -= v7;
        v9 = v15 + v16;
        if (!--v13)
        {
          return 0;
        }
      }

      *v14 = v11;
      *(v14 + 8) = v10;
      *(v14 + 12) = 1;
      ++*(a1 + 48);
      if (v8)
      {
        goto LABEL_19;
      }

      v17 = *(a1 + 52);
      v18 = (a1 + 52);
LABEL_18:
      *v18 = v17 + 1;
LABEL_19:
      if (v13 >= 1)
      {
        continue;
      }
    }

    return 0;
  }

  *a2 = v9;
  return 1;
}

uint64_t print_dispatch_info()
{
  act_list = 0;
  act_listCnt[0] = 0;
  if (!task_threads(mach_task_self_, &act_list, act_listCnt))
  {
    if (act_listCnt[0])
    {
      v0 = 0;
      do
      {
        v1 = pthread_from_mach_thread_np(act_list[v0]);
        print_logical_backtrace_0(0, v1);
        ++v0;
      }

      while (v0 < act_listCnt[0]);
      if (act_listCnt[0])
      {
        v2 = 0;
        do
        {
          mach_port_deallocate(mach_task_self_, act_list[v2++]);
        }

        while (v2 < act_listCnt[0]);
        mach_vm_deallocate(mach_task_self_, act_list, 4 * act_listCnt[0]);
      }
    }

    fflush(__stdoutp);
  }

  *act_listCnt = 0;
  act_list = 0;
  result = __introspection_dispatch_get_queues(3, &act_list, act_listCnt);
  if (result)
  {
    v4 = result;
    puts("--------------------------------------------------------------------------------");
    printf("NUMBER OF QUEUES WITH PENDING ITEMS:  %llu\n", v4);
    putchar(10);
    v5 = 0;
    v6 = act_list;
    do
    {
      size = 0;
      address = 0;
      pending_items = __introspection_dispatch_queue_get_pending_items(*(v6 + 1), &address, &size);
      printf("QUEUE %p SERIALNUM %llu %s\n", *(v6 + 1), *(v6 + 2), v6 + 32);
      printf("number of pending items in list: %llu   recorded pending count: %d  running count: %d\n", pending_items, v6[7], v6[6]);
      if (address)
      {
        printf("pending items array version %u  pending items array entry size %u\n", *address, *(address + 4));
        v8 = address;
        if (pending_items)
        {
          v9 = 0;
          v10 = (address + 8);
          do
          {
            printf("QUEUE %p PENDING ITEM %zu:  item_ref %p  function_or_block %p\n", *(v6 + 1), v9, *v10, v10[1]);
            v11 = *v10;
            v10 += 2;
            print_logical_backtrace_0(v11, 0);
            ++v9;
          }

          while (pending_items != v9);
          v8 = address;
        }

        mach_vm_deallocate(mach_task_self_, v8, size);
      }

      v6 = (v6 + *v6);
      ++v5;
    }

    while (v5 != v4);
    mach_vm_deallocate(mach_task_self_, act_list, *act_listCnt);
    return fflush(__stdoutp);
  }

  return result;
}

void *print_logical_backtrace_0(unint64_t a1, pthread_t a2)
{
  v2 = a2;
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    v22 = 0;
    pthread_threadid_np(a2, &v22);
    result = __introspection_dispatch_thread_get_item_info(v22, &v24, &v23);
    if (!v24)
    {
      return result;
    }

    LOBYTE(v25.dli_fname) = 0;
    pthread_getname_np(v2, &v25, 0x40uLL);
    puts("================================================================================");
    printf("THREAD WITH ACTIVE ITEM:  ID %llu %s\n", v22, &v25);
    v2 = v24;
  }

  v5 = a1 != 0;
  if (a1 | v2)
  {
    v6 = 0;
    do
    {
      if (v5)
      {
        __introspection_dispatch_queue_item_get_info(a1, &v24, &v23);
        v2 = v24;
      }

      printf("  LEVEL %d:\n", v6);
      v7 = *(v2 + 8);
      memset(&v25, 0, sizeof(v25));
      v8 = dladdr(v7, &v25);
      dli_sname = v25.dli_sname;
      if (!v8)
      {
        dli_sname = 0;
      }

      if (!dli_sname)
      {
        dli_sname = &unk_6572;
      }

      printf("    Target function/block %p %s\n", v7, dli_sname);
      v10 = v2 + __introspection_dispatch_item_info_data_offset;
      v11 = (v10 + 8 * *(v2 + 40));
      v12 = &v11[strlen(v11) + 1];
      v13 = strlen(v12);
      printf("    Target queue serialnum %llu %s\n", *(v2 + 32), &v12[v13 + 1]);
      printf("    Enqueuing thread id %llu %s\n", *(v2 + 16), v11);
      printf("    Enqueuing queue serialnum %llu %s\n", *(v2 + 24), v12);
      printf("    stop_id %u\n", *(v2 + 44));
      if (*(v2 + 48))
      {
        printf("    repeated_enqueuings_count %u\n", *(v2 + 48));
      }

      if (*(v2 + 52))
      {
        printf("    elided_enqueuings_count %u\n", *(v2 + 52));
      }

      if (*(v2 + 40))
      {
        v14 = 0;
        do
        {
          v15 = *(v10 + 8 * v14);
          memset(&v25, 0, sizeof(v25));
          v16 = dladdr(v15, &v25);
          v17 = v25.dli_sname;
          if (!v16)
          {
            v17 = 0;
          }

          v18 = *(v10 + 8 * v14);
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = &unk_6572;
          }

          memset(&v25, 0, sizeof(v25));
          if (dladdr(v18, &v25))
          {
            v20 = v25.dli_fname == 0;
          }

          else
          {
            v20 = 1;
          }

          v21 = &unk_6572;
          if (!v20)
          {
            v21 = strrchr(v25.dli_fname, 47) + 1;
          }

          printf("    %3d  %p %s (in %s)\n", v14++, v15, v19, v21);
        }

        while (v14 < *(v2 + 40));
      }

      a1 = *v2;
      ++v6;
      mach_vm_deallocate(mach_task_self_, v24, v23);
      v2 = 0;
      v24 = 0;
      v5 = 1;
    }

    while (a1);
  }

  return putchar(10);
}