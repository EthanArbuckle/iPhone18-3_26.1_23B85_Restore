dispatch_io_t dispatch_io_create(dispatch_io_type_t type, dispatch_fd_t fd, dispatch_queue_t queue, void *cleanup_handler)
{
  if (type > 1)
  {
    return 0;
  }

  v4 = _dispatch_io_create(type);
  *(v4 + 31) = fd;
  *(v4 + 32) = fd;
  dispatch_suspend(v4[6]);
  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  if (*(v4 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __dispatch_io_create_block_invoke;
  v10[3] = &unk_1E7FB14E8;
  v10[6] = type;
  v10[7] = queue;
  v10[4] = cleanup_handler;
  v10[5] = v4;
  _dispatch_fd_entry_init_async(fd, v10);
  return v4;
}

void *_dispatch_io_create(uint64_t a1)
{
  v2 = _dispatch_object_alloc(OS_dispatch_io, 152);
  v2[2] = -1985229329;
  v2[3] = &off_1ED3F3BC0;
  v3 = dispatch_io_defaults * qword_1EBC5B900;
  v2[9] = a1;
  v2[10] = v3;
  v2[11] = -1;
  v2[6] = dispatch_queue_create("com.apple.libdispatch-io.channelq", 0);
  return v2;
}

void _dispatch_fd_entry_init_async(int a1, uint64_t a2)
{
  if (_dispatch_io_init_pred != -1)
  {
    _dispatch_fd_entry_init_async_cold_1();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___dispatch_fd_entry_init_async_block_invoke;
  v4[3] = &unk_1E7FB1CA0;
  v5 = a1;
  v4[4] = a2;
  dispatch_channel_async(_dispatch_io_fds_lockq, v4);
}

void *__dispatch_io_create_block_invoke(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    v5 = *(a2 + 36) & 0xF000;
    if (v5 == 0x4000)
    {
      v4 = 21;
    }

    else if (*(a1[5] + 72) != 1 || (v4 = 29, v5 != 4096) && v5 != 49152)
    {
      if (a1[6] == 1)
      {
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        do
        {
          v7 = lseek(*a2, 0, 1);
          if (v7 != -1)
          {
            goto LABEL_12;
          }

          v4 = **(StatusReg + 8);
        }

        while (v4 == 4);
        if (!v4)
        {
LABEL_12:
          v4 = 0;
          *(a1[5] + 136) = v7;
          goto LABEL_15;
        }

        _dispatch_bug(389, v4);
      }

      else
      {
        v4 = 0;
      }
    }
  }

LABEL_15:
  *(a1[5] + 144) = v4;
  dispatch_suspend(*(a2 + 64));
  _dispatch_io_init(a1[5], a2, a1[7], v4, a1[4]);
  dispatch_resume(*(a1[5] + 48));
  v8 = a1[5];
  if (v8[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v8 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v8);
    }
  }

  return __dispatch_io_create_block_invoke_cold_2(a1 + 7);
}

dispatch_group_t _dispatch_io_init(void *a1, NSObject **a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a5)
  {
    if (*(a3 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a3 + 8), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    v7 = a2 + 8;
    if (a4)
    {
      v7 = (a1 + 6);
    }

    v8 = *v7;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___dispatch_io_init_block_invoke;
    block[3] = &unk_1E7FB1A58;
    block[4] = a5;
    block[5] = a3;
    v11 = a4;
    dispatch_channel_async(v8, block);
  }

  if (a2)
  {
    a1[14] = a2;
    dispatch_retain(a2[9]);
    dispatch_retain(a2[10]);
    result = a2[10];
    a1[7] = a2[9];
  }

  else
  {
    a1[7] = dispatch_queue_create("com.apple.libdispatch-io.barrierq", 0);
    result = dispatch_group_create();
  }

  a1[8] = result;
  return result;
}

dispatch_io_t dispatch_io_create_f(dispatch_io_type_t a1, dispatch_fd_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v6 = v8;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __dispatch_io_create_f_block_invoke;
    v8[3] = &__block_descriptor_tmp_2;
    v8[4] = a5;
    v8[5] = a4;
  }

  else
  {
    v6 = 0;
  }

  return dispatch_io_create(a1, a2, a3, v6);
}

dispatch_io_t dispatch_io_create_with_path(dispatch_io_type_t type, const char *path, int oflag, mode_t mode, dispatch_queue_t queue, void *cleanup_handler)
{
  if (type > 1)
  {
    return 0;
  }

  if (*path != 47)
  {
    return 0;
  }

  v12 = strlen(path);
  v13 = malloc_type_malloc(v12 + 25, 0x1020040A7FD358CuLL);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = _dispatch_io_create(type);
  *(v15 + 124) = -1;
  *v14 = v15;
  v14[2] = oflag;
  *(v14 + 6) = mode;
  *(v14 + 2) = v12;
  memcpy(v14 + 6, path, v12 + 1);
  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  if (*(v15 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit(v15 + 2, 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  v16 = v15[6];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = __dispatch_io_create_with_path_block_invoke;
  v18[3] = &unk_1E7FB1558;
  v18[6] = v15;
  v18[7] = queue;
  v18[4] = cleanup_handler;
  v18[5] = v14;
  dispatch_channel_async(v16, v18);
  return v15;
}

void __dispatch_io_create_with_path_block_invoke(uint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  memset(&v25, 0, sizeof(v25));
  do
  {
    v3 = *(a1 + 40);
    v4 = (v3 + 24);
    if ((*(v3 + 9) & 0x2001) != 0)
    {
      v5 = lstat(v4, &v25);
    }

    else
    {
      v5 = stat(v4, &v25);
    }

    if (v5 != -1)
    {
      goto LABEL_8;
    }

    v6 = **(StatusReg + 8);
  }

  while (v6 == 4);
  if (v6)
  {
    v9 = *(a1 + 40);
    if ((*(v9 + 9) & 2) != 0)
    {
      v10 = *(v9 + 16);
      if (*(v9 + v10 + 23) != 47)
      {
        while (1)
        {
          v11 = v10 - 1;
          if (v10 < 1)
          {
            break;
          }

          v12 = *(v9 + v10-- + 23);
          if (v12 == 47)
          {
            v13 = (v9 + v11 + 24);
            goto LABEL_19;
          }
        }

        v13 = 0;
LABEL_19:
        *v13 = 0;
        do
        {
          if (stat((*(a1 + 40) + 24), &v25) != -1)
          {
            goto LABEL_23;
          }

          v14 = **(StatusReg + 8);
        }

        while (v14 == 4);
        if (!v14)
        {
LABEL_23:
          v25.st_mode = 0x8000;
          *v13 = 47;
          v8 = *(a1 + 48);
          goto LABEL_24;
        }

        *v13 = 47;
        *(*(a1 + 48) + 144) = v6;
        goto LABEL_30;
      }
    }

LABEL_29:
    *(*(a1 + 48) + 144) = v6;
LABEL_30:
    free(*(a1 + 40));
    v18 = *(a1 + 56);
    v17 = (a1 + 56);
    _dispatch_io_init(*(v17 - 1), 0, v18, v6, *(v17 - 3));
    v19 = *(v17 - 1);
    if (v19[2] != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(v19 + 2, 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v19);
      }
    }

    __dispatch_io_create_with_path_block_invoke_cold_3(v17);
    return;
  }

LABEL_8:
  v7 = v25.st_mode & 0xF000;
  if (v7 == 0x4000)
  {
    v6 = 21;
    goto LABEL_29;
  }

  v8 = *(a1 + 48);
  if (*(v8 + 72) == 1)
  {
    v6 = 29;
    if (v7 == 4096 || v7 == 49152)
    {
      goto LABEL_29;
    }
  }

LABEL_24:
  *(v8 + 144) = 0;
  dispatch_suspend(*(v8 + 48));
  if (_dispatch_io_init_pred != -1)
  {
    __dispatch_io_create_with_path_block_invoke_cold_1();
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 0x40000000;
  v21[2] = __dispatch_io_create_with_path_block_invoke_2;
  v21[3] = &unk_1E7FB1530;
  v22 = v25;
  v15 = *(a1 + 56);
  v23 = *(a1 + 48);
  v24 = v15;
  v16 = *(a1 + 40);
  v21[4] = *(a1 + 32);
  v21[5] = v16;
  dispatch_channel_async(_dispatch_io_devs_lockq, v21);
}

dispatch_queue_t _dispatch_io_queues_init()
{
  _dispatch_io_fds_lockq = dispatch_queue_create("com.apple.libdispatch-io.fd_lockq", 0);
  result = dispatch_queue_create("com.apple.libdispatch-io.dev_lockq", 0);
  _dispatch_io_devs_lockq = result;
  return result;
}

void *__dispatch_io_create_with_path_block_invoke_2(uint64_t a1)
{
  v2 = _dispatch_fd_entry_create_with_path(*(a1 + 40), *(a1 + 48), *(a1 + 52));
  v4 = *(a1 + 200);
  v3 = (a1 + 200);
  _dispatch_io_init(*(v3 - 1), v2, v4, 0, *(v3 - 21));
  dispatch_resume(*(*(v3 - 1) + 48));
  v5 = *(v3 - 1);
  if (v5[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v5 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v5);
    }
  }

  return __dispatch_io_create_block_invoke_cold_2(v3);
}

NSObject *_dispatch_fd_entry_create_with_path(objc_class *a1, unsigned int a2, __int16 a3)
{
  v6 = _dispatch_fd_entry_create(*(*a1 + 48));
  v7 = v6;
  if ((a3 & 0xF000) == 0x8000)
  {
    _dispatch_disk_init(v6, HIBYTE(a2));
  }

  else
  {
    _dispatch_stream_init(v6);
  }

  LODWORD(v7->isa) = -1;
  LODWORD(v7[2].isa) = -1;
  v7[1].isa = a1;
  LODWORD(v7[4].isa) = a2;
  WORD2(v7[4].isa) = a3;
  v7[9].isa = dispatch_queue_create("com.apple.libdispatch-io.barrierq", 0);
  v7[10].isa = dispatch_group_create();
  isa = v7[8].isa;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___dispatch_fd_entry_create_with_path_block_invoke;
  block[3] = &__block_descriptor_tmp_79;
  block[4] = v7;
  dispatch_channel_async(isa, block);
  v9 = v7[8].isa;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___dispatch_fd_entry_create_with_path_block_invoke_2;
  v11[3] = &__block_descriptor_tmp_80;
  v11[4] = v7;
  dispatch_channel_async(v9, v11);
  return v7;
}

dispatch_io_t dispatch_io_create_with_path_f(dispatch_io_type_t a1, const char *a2, int a3, mode_t a4, NSObject *a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v8 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __dispatch_io_create_with_path_f_block_invoke;
    v10[3] = &__block_descriptor_tmp_6;
    v10[4] = a7;
    v10[5] = a6;
  }

  else
  {
    v8 = 0;
  }

  return dispatch_io_create_with_path(a1, a2, a3, a4, a5, v8);
}

dispatch_io_t dispatch_io_create_with_io(dispatch_io_type_t type, dispatch_io_t io, dispatch_queue_t queue, void *cleanup_handler)
{
  if (type > 1)
  {
    return 0;
  }

  v4 = _dispatch_io_create(type);
  dispatch_suspend(v4[6]);
  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  if (*(v4 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  if (LODWORD(io[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&io[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  isa = io[6].isa;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __dispatch_io_create_with_io_block_invoke;
  block[3] = &unk_1E7FB15F0;
  block[6] = v4;
  block[7] = queue;
  block[4] = cleanup_handler;
  block[5] = io;
  block[8] = type;
  dispatch_channel_async(isa, block);
  return v4;
}

void __dispatch_io_create_with_io_block_invoke(void *a1)
{
  v3 = a1 + 5;
  v2 = a1[5];
  if ((*(v2 + 120) & 3) != 0)
  {
    v4 = 89;
  }

  else
  {
    v4 = *(v2 + 144);
    if (!v4)
    {
      v5 = *(v2 + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __dispatch_io_create_with_io_block_invoke_2;
      block[3] = &unk_1E7FB15C8;
      v7 = a1[7];
      v6 = a1[8];
      block[6] = a1[6];
      block[7] = v6;
      block[8] = v7;
      block[4] = a1[4];
      block[5] = v2;
      dispatch_channel_async(v5, block);
      return;
    }
  }

  v9 = a1 + 7;
  v8 = a1[7];
  v10 = a1[6];
  *(v10 + 144) = v4;
  _dispatch_io_init(v10, 0, v8, v4, *(v9 - 3));
  dispatch_resume(*(*(v9 - 1) + 48));
  v11 = *(v9 - 1);
  if (v11[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v11 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v11);
    }
  }

  __dispatch_io_create_with_io_block_invoke_cold_2(v3);
}

void *__dispatch_io_create_with_io_block_invoke_2(void *a1)
{
  v3 = a1 + 5;
  v2 = a1[5];
  if ((*(v2 + 120) & 3) != 0)
  {
    v4 = 89;
    goto LABEL_7;
  }

  v4 = *(v2 + 144);
  if (v4)
  {
    goto LABEL_7;
  }

  v5 = *(v2 + 112);
  v4 = *(v5 + 24);
  if (v4)
  {
    goto LABEL_7;
  }

  v6 = *(v5 + 36) & 0xF000;
  if (v6 == 0x4000)
  {
    v4 = 21;
LABEL_7:
    v8 = a1[8];
    v7 = a1 + 8;
    v9 = *(v7 - 2);
    *(v9 + 144) = v4;
    _dispatch_io_init(v9, 0, v8, v4, *(v7 - 4));
    dispatch_resume(*(*(v7 - 2) + 48));
    v10 = *(v7 - 2);
    if (v10[2] != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(v10 + 2, 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        _dispatch_worker_thread_cold_1(add_explicit, v10);
      }
    }

    return __dispatch_io_create_with_io_block_invoke_2_cold_5(v3);
  }

  v13 = a1[6];
  if (*(v13 + 72) == 1)
  {
    v4 = 29;
    if (v6 == 4096 || v6 == 49152)
    {
      goto LABEL_7;
    }
  }

  if (a1[7] == 1 && *(v2 + 124) != -1)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v15 = lseek(**(*v3 + 112), 0, 1);
      if (v15 != -1)
      {
        goto LABEL_20;
      }

      v4 = **(StatusReg + 8);
    }

    while (v4 == 4);
    if (!v4)
    {
LABEL_20:
      v2 = a1[5];
      v13 = a1[6];
      *(v13 + 136) = v15;
      goto LABEL_21;
    }

    _dispatch_bug(590, v4);
    goto LABEL_7;
  }

LABEL_21:
  *(v13 + 144) = 0;
  v16 = *(v2 + 124);
  if (v16 == -1)
  {
    *(v13 + 124) = -1;
    v17 = *(v2 + 112);
    v18 = *(v17 + 36);
    v19 = *(v17 + 32);
    v20 = *(*(v17 + 8) + 16);
    v21 = malloc_type_malloc(v20 + 25, 0x414A21A5uLL);
    memcpy(v21, *(*(a1[5] + 112) + 8), v20 + 25);
    v22 = a1[6];
    *v21 = v22;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __dispatch_io_create_with_io_block_invoke_3;
    block[3] = &unk_1E7FB15A0;
    v31 = v19;
    v32 = v18;
    v23 = a1[8];
    block[6] = v22;
    block[7] = v23;
    block[4] = a1[4];
    block[5] = v21;
    dispatch_channel_async(_dispatch_io_devs_lockq, block);
  }

  else
  {
    v24 = *(v2 + 112);
    v25 = *(v2 + 128);
    *(v13 + 124) = v16;
    *(v13 + 128) = v25;
    dispatch_suspend(v24[8]);
    v27 = a1[8];
    v26 = a1 + 8;
    _dispatch_io_init(*(v26 - 2), v24, v27, 0, *(v26 - 4));
    dispatch_resume(*(*(v26 - 2) + 48));
    v28 = *(v26 - 2);
    if (v28[2] != 0x7FFFFFFF)
    {
      v29 = atomic_fetch_add_explicit(v28 + 2, 0xFFFFFFFF, memory_order_release);
      if (v29 <= 1)
      {
        _dispatch_worker_thread_cold_1(v29, v28);
      }
    }

    __dispatch_io_create_block_invoke_cold_2(v26);
  }

  return __dispatch_io_create_with_path_block_invoke_cold_3(v3);
}

void *__dispatch_io_create_with_io_block_invoke_3(uint64_t a1)
{
  v2 = _dispatch_fd_entry_create_with_path(*(a1 + 40), *(a1 + 64), *(a1 + 68));
  v4 = *(a1 + 56);
  v3 = (a1 + 56);
  _dispatch_io_init(*(v3 - 1), v2, v4, 0, *(v3 - 3));
  dispatch_resume(*(*(v3 - 1) + 48));
  v5 = *(v3 - 1);
  if (v5[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v5 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v5);
    }
  }

  return __dispatch_io_create_block_invoke_cold_2(v3);
}

dispatch_io_t dispatch_io_create_with_io_f(dispatch_io_type_t a1, NSObject *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v6 = v8;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __dispatch_io_create_with_io_f_block_invoke;
    v8[3] = &__block_descriptor_tmp_10;
    v8[4] = a5;
    v8[5] = a4;
  }

  else
  {
    v6 = 0;
  }

  return dispatch_io_create_with_io(a1, a2, a3, v6);
}

void dispatch_io_set_high_water(dispatch_io_t channel, size_t high_water)
{
  if (LODWORD(channel[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&channel[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_io_set_high_water_cold_2(channel, v2);
}

uint64_t __dispatch_io_set_high_water_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 80) > v2)
  {
    *(v1 + 80) = v2;
    v2 = *(result + 40);
  }

  if (v2 <= 1)
  {
    v2 = 1;
  }

  *(v1 + 88) = v2;
  if (*(v1 + 8) != 0x7FFFFFFF)
  {
    result = atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release);
    if (result <= 1)
    {
      return _dispatch_worker_thread_cold_1(result, v1);
    }
  }

  return result;
}

void dispatch_io_set_low_water(dispatch_io_t channel, size_t low_water)
{
  if (LODWORD(channel[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&channel[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_io_set_low_water_cold_2(channel, v2);
}

uint64_t __dispatch_io_set_low_water_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 88) < v2)
  {
    *(v1 + 88) = v2;
    v2 = *(result + 40);
  }

  *(v1 + 80) = v2;
  if (*(v1 + 8) != 0x7FFFFFFF)
  {
    result = atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release);
    if (result <= 1)
    {
      return _dispatch_worker_thread_cold_1(result, v1);
    }
  }

  return result;
}

void dispatch_io_set_interval(dispatch_io_t channel, uint64_t interval, dispatch_io_interval_flags_t flags)
{
  if (LODWORD(channel[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&channel[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_io_set_interval_cold_2(channel, v3);
}

uint64_t __dispatch_io_set_interval_block_invoke(uint64_t result)
{
  v1 = 0x7FFFFFFFFFFFFFFFLL;
  v2 = *(result + 32);
  if (*(result + 40) < 0x7FFFFFFFFFFFFFFFuLL)
  {
    v1 = *(result + 40);
  }

  v3 = *(result + 48);
  *(v2 + 96) = v1;
  *(v2 + 104) = v3;
  if (*(v2 + 8) != 0x7FFFFFFF)
  {
    result = atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release);
    if (result <= 1)
    {
      return _dispatch_worker_thread_cold_1(result, v2);
    }
  }

  return result;
}

void _dispatch_io_set_target_queue(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  _dispatch_io_set_target_queue_cold_2(a1, v2);
}

void *___dispatch_io_set_target_queue_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (a1 + 32);
  v3 = *(v1 + 24);
  *(v1 + 24) = *(a1 + 40);
  if (v3[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v3);
    }
  }

  return __dispatch_io_create_block_invoke_cold_2(v2);
}

dispatch_fd_t dispatch_io_get_descriptor(dispatch_io_t channel)
{
  if ((channel[15].isa & 3) != 0)
  {
    return -1;
  }

  result = channel[16].isa;
  if (result == -1)
  {
    if (!LODWORD(channel[18].isa))
    {
      v3 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 184;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if (*(v3 + 8) == "io")
        {
          if (*(v3 + 16) != channel)
          {
            return -1;
          }

          _dispatch_fd_entry_open(channel[14].isa, channel);
          return channel[16].isa;
        }
      }
    }

    return -1;
  }

  return result;
}

uint64_t _dispatch_fd_entry_open(uint64_t a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v2 = *(a1 + 24);
      if (v2)
      {
        return v2;
      }

      v6 = *(v4 + 8) & 0xFFFFFFFB | (4 * (*(a1 + 56) == 0));
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      while (1)
      {
        v8 = *(*(a1 + 8) + 12);
        v9 = guarded_open_np();
        if (v9 != -1)
        {
          break;
        }

        **(StatusReg + 8) = 0;
        v9 = open_NOCANCEL();
        if (v9 != -1)
        {
          goto LABEL_11;
        }

        v2 = **(StatusReg + 8);
        if (v2 != 4)
        {
          v10 = 0;
          atomic_compare_exchange_strong_explicit((a1 + 24), &v10, v2, memory_order_relaxed, memory_order_relaxed);
          return v2;
        }
      }

      *(a1 + 28) = 15;
LABEL_11:
      v11 = -1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v9, memory_order_relaxed, memory_order_relaxed);
      if (v11 == -1)
      {
        v2 = 0;
        *(a2 + 128) = v9;
        return v2;
      }

      if (*(a1 + 28))
      {
        guarded_close_np();
      }

      else
      {
        close_NOCANCEL();
      }
    }

    return 0;
  }

  return 0;
}

void dispatch_io_close(dispatch_io_t channel, dispatch_io_close_flags_t flags)
{
  isa = channel[15].isa;
  if (flags)
  {
    if ((isa & 2) == 0)
    {
      atomic_fetch_or_explicit(&channel[15], 2u, memory_order_relaxed);
      if (LODWORD(channel[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&channel[1], 1u, memory_order_relaxed) <= 0)
      {
        dispatch_set_target_queue_cold_2();
      }

      dispatch_io_close_cold_2(channel, v4);
    }
  }

  else if ((isa & 3) == 0)
  {
    if (LODWORD(channel[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&channel[1], 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    dispatch_io_close_cold_4(channel, v3);
  }
}

void __dispatch_io_close_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __dispatch_io_close_block_invoke_2;
  block[3] = &__block_descriptor_tmp_16;
  block[4] = v1;
  dispatch_channel_async(v2, block);
}

void __dispatch_io_close_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 120) & 3) == 0)
  {
    atomic_fetch_or_explicit((v1 + 120), 1u, memory_order_relaxed);
    v1 = *(a1 + 32);
    v3 = *(v1 + 112);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        *v4 = 0;
        v1 = *(a1 + 32);
      }

      *(v1 + 112) = 0;
      dispatch_resume(*(v3 + 64));
      v1 = *(a1 + 32);
    }
  }

  if (*(v1 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v1);
    }
  }
}

void dispatch_io_barrier(dispatch_io_t channel, dispatch_block_t barrier)
{
  if (LODWORD(channel[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&channel[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_io_barrier_cold_2(channel, v2);
}

void __dispatch_io_barrier_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __dispatch_io_barrier_block_invoke_2;
  block[3] = &unk_1E7FB1720;
  v4 = *(v1 + 56);
  v5 = v2;
  v6 = v1;
  block[4] = *(a1 + 32);
  dispatch_channel_async(v4, block);
}

void __dispatch_io_barrier_block_invoke_2(uint64_t a1)
{
  dispatch_suspend(*(a1 + 40));
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __dispatch_io_barrier_block_invoke_3;
  block[3] = &unk_1E7FB16F8;
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  block[5] = v4;
  block[6] = v5;
  dispatch_group_notify(v2, v3, block);
}

void __dispatch_io_barrier_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6[1] = "io";
  v6[2] = v2;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6[0] = *(StatusReg + 184);
  *(StatusReg + 184) = v6;
  (*(*(a1 + 32) + 16))();
  *(StatusReg + 184) = v6[0];
  dispatch_resume(*(a1 + 48));
  v4 = *(a1 + 40);
  if (v4[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v4);
    }
  }
}

void dispatch_io_barrier_f(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __dispatch_io_barrier_f_block_invoke;
  v3[3] = &__block_descriptor_tmp_21;
  v3[4] = a3;
  v3[5] = a2;
  dispatch_io_barrier(a1, v3);
}

void dispatch_io_read(dispatch_io_t channel, off_t offset, size_t length, dispatch_queue_t queue, dispatch_io_handler_t io_handler)
{
  if (LODWORD(channel[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&channel[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  isa = channel[6].isa;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __dispatch_io_read_block_invoke;
  block[3] = &unk_1E7FB17B0;
  block[6] = offset;
  block[7] = length;
  block[8] = queue;
  block[4] = io_handler;
  block[5] = channel;
  dispatch_channel_async(isa, block);
}

void *__dispatch_io_read_block_invoke(uint64_t a1)
{
  v2 = (a1 + 64);
  v3 = _dispatch_operation_create(0, *(a1 + 40), *(a1 + 48), *(a1 + 56), &_dispatch_data_empty, *(a1 + 64), *(a1 + 32));
  if (v3)
  {
    v4 = *(*(a1 + 40) + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __dispatch_io_read_block_invoke_2;
    block[3] = &__block_descriptor_tmp_22;
    block[4] = v3;
    dispatch_channel_async(v4, block);
  }

  v5 = *(a1 + 40);
  if (v5[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v5 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v5);
    }
  }

  return __dispatch_io_create_with_path_block_invoke_cold_3(v2);
}

uint64_t _dispatch_operation_create(int a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, uint64_t a6, void *a7)
{
  if ((*(a2 + 120) & 3) != 0)
  {
    v12 = 89;
LABEL_5:
    _dispatch_objc_retain(a5);
    if (*(a6 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a6 + 8), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    if (*(a2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    v14 = *(a2 + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___dispatch_operation_create_block_invoke;
    block[3] = &unk_1E7FB1B48;
    v19 = a1;
    v20 = v12;
    block[4] = a7;
    block[5] = a6;
    block[6] = a5;
    block[7] = a2;
    dispatch_channel_async(v14, block);
    return 0;
  }

  v12 = *(a2 + 144);
  if (!a4 || v12)
  {
    goto LABEL_5;
  }

  v15 = _dispatch_object_alloc(OS_dispatch_operation, 272);
  *(v15 + 16) = -1985229329;
  *(v15 + 12) = 0;
  *(v15 + 48) = dispatch_queue_create_with_target_V2("com.apple.libdispatch-io.opq", 0, a6);
  *(v15 + 160) = 0;
  *(v15 + 56) = a1;
  *(v15 + 104) = *(a2 + 136) + a3;
  *(v15 + 112) = a4;
  *(v15 + 128) = _dispatch_Block_copy(a7);
  if (*(a2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  _dispatch_operation_create_cold_4(v15, a2);
  return v15;
}

void _dispatch_operation_enqueue(uint64_t a1, unsigned int a2, id a3)
{
  _dispatch_objc_retain(a3);
  v6 = *(a1 + 136);
  if ((*(v6 + 120) & 3) != 0)
  {
    v7 = 89;
    goto LABEL_4;
  }

  v7 = *(v6 + 144);
  if (v7)
  {
LABEL_4:
    v8 = *(a1 + 128);
    v9 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___dispatch_operation_enqueue_block_invoke;
    block[3] = &unk_1E7FB1B70;
    v20 = a2;
    v21 = v7;
    block[4] = v8;
    block[5] = a3;
    dispatch_channel_async(v9, block);
    if (*(a1 + 8) != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, a1);
      }
    }

    return;
  }

  v11 = *(v6 + 112);
  *(a1 + 144) = v11;
  dispatch_suspend(*(v11 + 64));
  dispatch_group_enter(*(*(a1 + 144) + 80));
  v12 = *(a1 + 144);
  v13 = *(v12 + 56);
  if (v13)
  {
    v14 = *(v13 + 72);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = ___dispatch_operation_enqueue_block_invoke_3;
    v17[3] = &__block_descriptor_tmp_62;
    v17[4] = v13;
    v17[5] = a1;
    v17[6] = a3;
    v15 = v17;
  }

  else
  {
    v16 = *(v12 + 8 * a2 + 40);
    v14 = *v16;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = ___dispatch_operation_enqueue_block_invoke_2;
    v18[3] = &__block_descriptor_tmp_61;
    v18[4] = v16;
    v18[5] = a1;
    v18[6] = a3;
    v15 = v18;
  }

  dispatch_channel_async(v14, v15);
}

void dispatch_io_read_f(NSObject *a1, off_t a2, size_t a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __dispatch_io_read_f_block_invoke;
  v6[3] = &__block_descriptor_tmp_25;
  v6[4] = a6;
  v6[5] = a5;
  dispatch_io_read(a1, a2, a3, a4, v6);
}

void dispatch_io_write(dispatch_io_t channel, off_t offset, dispatch_data_t data, dispatch_queue_t queue, dispatch_io_handler_t io_handler)
{
  _dispatch_objc_retain(data);
  if (LODWORD(channel[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&channel[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  isa = channel[6].isa;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __dispatch_io_write_block_invoke;
  block[3] = &unk_1E7FB1818;
  block[6] = offset;
  block[7] = data;
  block[8] = queue;
  block[4] = io_handler;
  block[5] = channel;
  dispatch_channel_async(isa, block);
}

void *__dispatch_io_write_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  size = dispatch_data_get_size(v4);
  v6 = _dispatch_operation_create(1, v2, v3, size, v4, *(a1 + 64), *(a1 + 32));
  if (v6)
  {
    v7 = *(*(a1 + 40) + 56);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __dispatch_io_write_block_invoke_2;
    v12[3] = &__block_descriptor_tmp_26;
    v8 = *(a1 + 56);
    v12[4] = v6;
    v12[5] = v8;
    dispatch_channel_async(v7, v12);
  }

  else
  {
    _dispatch_objc_release(*(a1 + 56));
  }

  v9 = *(a1 + 40);
  if (v9[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v9 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v9);
    }
  }

  return __dispatch_io_create_with_path_block_invoke_cold_3((a1 + 64));
}

void __dispatch_io_write_block_invoke_2(uint64_t a1)
{
  _dispatch_operation_enqueue(*(a1 + 32), 1u, *(a1 + 40));
  v2 = *(a1 + 40);

  _dispatch_objc_release(v2);
}

void dispatch_io_write_f(NSObject *a1, off_t a2, NSObject *a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __dispatch_io_write_f_block_invoke;
  v6[3] = &__block_descriptor_tmp_28;
  v6[4] = a6;
  v6[5] = a5;
  dispatch_io_write(a1, a2, a3, a4, v6);
}

void dispatch_read(dispatch_fd_t fd, size_t length, dispatch_queue_t queue, void *handler)
{
  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __dispatch_read_block_invoke;
  v4[3] = &unk_1E7FB1900;
  v4[4] = handler;
  v4[5] = queue;
  v5 = fd;
  v4[6] = length;
  _dispatch_fd_entry_init_async(fd, v4);
}

void __dispatch_read_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __dispatch_read_block_invoke_2;
    block[3] = &unk_1E7FB1860;
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    block[4] = v5;
    v21 = v3;
    dispatch_channel_async(v4, block);
    v6 = *(a1 + 40);
    if (v6[2] != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(v6 + 2, 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v6);
      }
    }
  }

  else
  {
    v9 = *(a2 + 88);
    if (!v9)
    {
      v9 = _dispatch_io_create(0);
      v10 = *(a1 + 56);
      *(v9 + 31) = v10;
      *(v9 + 32) = v10;
      v9[14] = a2;
      dispatch_retain(*(a2 + 72));
      dispatch_retain(*(a2 + 80));
      *(v9 + 7) = *(a2 + 72);
      *(a2 + 88) = v9;
    }

    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2000000000;
    v19[3] = &_dispatch_data_empty;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2000000000;
    v18 = 0;
    v11 = *(a2 + 64);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __dispatch_read_block_invoke_3;
    v16[3] = &unk_1E7FB18B0;
    v12 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v16[5] = v19;
    v16[6] = v17;
    v16[7] = v12;
    dispatch_channel_async(v11, v16);
    v13 = *(a1 + 48);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = __dispatch_read_block_invoke_5;
    v15[3] = &unk_1E7FB18D8;
    v15[4] = v19;
    v15[5] = v17;
    v14 = _dispatch_operation_create(0, v9, 0, v13, &_dispatch_data_empty, &unk_1ED3F3B40, v15);
    if (v14)
    {
      _dispatch_operation_enqueue(v14, 0, &_dispatch_data_empty);
    }

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(v19, 8);
  }
}

void __dispatch_read_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __dispatch_read_block_invoke_4;
  block[3] = &unk_1E7FB1888;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  dispatch_channel_async(v2, block);
  v3 = *(a1 + 56);
  if (v3[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v3);
    }
  }
}

void __dispatch_read_block_invoke_4(void *a1)
{
  v2 = *(*(a1[5] + 8) + 24);
  v3 = *(*(a1[6] + 8) + 24);
  (*(a1[4] + 16))();
  v4 = *(*(a1[5] + 8) + 24);

  _dispatch_objc_release(v4);
}

void __dispatch_read_block_invoke_5(uint64_t a1, int a2, dispatch_data_t data2, int a4)
{
  if (data2)
  {
    concat = dispatch_data_create_concat(*(*(*(a1 + 32) + 8) + 24), data2);
    _dispatch_objc_release(*(*(*(a1 + 32) + 8) + 24));
    *(*(*(a1 + 32) + 8) + 24) = concat;
  }

  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a4;
  }
}

void dispatch_read_f(dispatch_fd_t a1, size_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __dispatch_read_f_block_invoke;
  v5[3] = &__block_descriptor_tmp_35;
  v5[4] = a5;
  v5[5] = a4;
  dispatch_read(a1, a2, a3, v5);
}

void dispatch_write(dispatch_fd_t fd, dispatch_data_t data, dispatch_queue_t queue, void *handler)
{
  _dispatch_objc_retain(data);
  if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __dispatch_write_block_invoke;
  v8[3] = &unk_1E7FB19E8;
  v8[4] = handler;
  v8[5] = queue;
  v9 = fd;
  v8[6] = data;
  _dispatch_fd_entry_init_async(fd, v8);
}

void __dispatch_write_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __dispatch_write_block_invoke_2;
    block[3] = &unk_1E7FB1948;
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    block[4] = v5;
    v22 = v3;
    dispatch_channel_async(v4, block);
    v6 = *(a1 + 40);
    if (v6[2] != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(v6 + 2, 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v6);
      }
    }
  }

  else
  {
    v9 = *(a2 + 88);
    if (!v9)
    {
      v9 = _dispatch_io_create(0);
      v10 = *(a1 + 56);
      *(v9 + 31) = v10;
      *(v9 + 32) = v10;
      v9[14] = a2;
      dispatch_retain(*(a2 + 72));
      dispatch_retain(*(a2 + 80));
      *(v9 + 7) = *(a2 + 72);
      *(a2 + 88) = v9;
    }

    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2000000000;
    v20[3] = 0;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2000000000;
    v19 = 0;
    v11 = *(a2 + 64);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = __dispatch_write_block_invoke_3;
    v17[3] = &unk_1E7FB1998;
    v12 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v17[5] = v20;
    v17[6] = v18;
    v17[7] = v12;
    dispatch_channel_async(v11, v17);
    v13 = *(a1 + 48);
    size = dispatch_data_get_size(v13);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __dispatch_write_block_invoke_5;
    v16[3] = &unk_1E7FB19C0;
    v16[4] = v20;
    v16[5] = v18;
    v15 = _dispatch_operation_create(1, v9, 0, size, v13, &unk_1ED3F3B40, v16);
    if (v15)
    {
      _dispatch_operation_enqueue(v15, 1u, *(a1 + 48));
    }

    _dispatch_objc_release(*(a1 + 48));
    _Block_object_dispose(v18, 8);
    _Block_object_dispose(v20, 8);
  }
}

void __dispatch_write_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __dispatch_write_block_invoke_4;
  block[3] = &unk_1E7FB1970;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  dispatch_channel_async(v2, block);
  v3 = *(a1 + 56);
  if (v3[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v3);
    }
  }
}

void __dispatch_write_block_invoke_4(void *a1)
{
  v2 = *(*(a1[5] + 8) + 24);
  v3 = *(*(a1[6] + 8) + 24);
  (*(a1[4] + 16))();
  v4 = *(*(a1[5] + 8) + 24);
  if (v4)
  {

    _dispatch_objc_release(v4);
  }
}

id __dispatch_write_block_invoke_5(id result, int a2, id a3, int a4)
{
  if (a2)
  {
    v6 = result;
    if (a3)
    {
      result = _dispatch_objc_retain(a3);
      *(*(*(v6 + 32) + 8) + 24) = a3;
    }

    *(*(*(v6 + 40) + 8) + 24) = a4;
  }

  return result;
}

void dispatch_write_f(dispatch_fd_t a1, NSObject *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __dispatch_write_f_block_invoke;
  v5[3] = &__block_descriptor_tmp_41;
  v5[4] = a5;
  v5[5] = a4;
  dispatch_write(a1, a2, a3, v5);
}

void _dispatch_operation_dispose(uint64_t a1)
{
  if (*(a1 + 144))
  {
    _dispatch_operation_deliver_data(a1, 2);
    dispatch_group_leave(*(*(a1 + 144) + 80));
    dispatch_resume(*(*(a1 + 144) + 64));
  }

  v2 = *(a1 + 136);
  if (v2)
  {
    if (v2[2] != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        _dispatch_worker_thread_cold_1(add_explicit, v2);
      }
    }
  }

  _dispatch_operation_dispose_cold_2(a1);
}

void _dispatch_operation_deliver_data(uint64_t a1, int a2)
{
  v4 = *(a1 + 200);
  v5 = v4 + *(a1 + 208);
  if ((a2 & 3) != 0)
  {
    *(a1 + 184) = 0;
LABEL_7:
    v8 = *(a1 + 120);
    if (v8)
    {
LABEL_11:
      v7 = 1;
      goto LABEL_12;
    }

    if ((*(*(a1 + 136) + 120) & 2) != 0)
    {
      v8 = 89;
      *(a1 + 120) = 89;
      goto LABEL_11;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_11;
  }

  v6 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v6)
  {
    goto LABEL_7;
  }

  if (v5 >= *(a1 + 72))
  {
    goto LABEL_9;
  }

  if (v4 < *(a1 + 192))
  {
    return;
  }

  v7 = 0;
  v8 = 0;
LABEL_12:
  v9 = *(a1 + 56);
  if (v9 == 1)
  {
    if (v7)
    {
      subrange = dispatch_data_create_subrange(*(a1 + 232), v4, *(a1 + 112));
    }

    else
    {
      subrange = 0;
    }

    v12 = *(a1 + 224);
    if (v12 && *(a1 + 200) == *(a1 + 192))
    {
      _dispatch_objc_release(v12);
      *(a1 + 224) = 0;
      *(a1 + 176) = 0;
      *(a1 + 200) = 0;
      if (v7)
      {
        _dispatch_objc_retain(subrange);
        v13 = subrange;
      }

      else
      {
        v13 = dispatch_data_create_subrange(*(a1 + 232), *(a1 + 192), *(a1 + 112));
      }

      _dispatch_objc_release(*(a1 + 232));
      *(a1 + 232) = v13;
      if (!v7)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (v9)
    {
      return;
    }

    if (v4)
    {
      v10 = dispatch_data_create(*(a1 + 176), v4, 0, &__block_literal_global);
      *(a1 + 176) = 0;
      *(a1 + 200) = 0;
      subrange = dispatch_data_create_concat(*(a1 + 232), v10);
      _dispatch_objc_release(*(a1 + 232));
      _dispatch_objc_release(v10);
    }

    else
    {
      subrange = *(a1 + 232);
    }

    v14 = &_dispatch_data_empty;
    if (!v7)
    {
      v14 = subrange;
    }

    *(a1 + 232) = v14;
  }

  if (!v7)
  {
LABEL_35:
    *(a1 + 208) = v5;
    return;
  }

LABEL_28:
  if ((a2 & 8) != 0 && !dispatch_data_get_size(subrange))
  {
    goto LABEL_35;
  }

  *(a1 + 208) = 0;
  v15 = *(a1 + 56);
  v16 = *(a1 + 128);
  v17 = *(a1 + 144);
  dispatch_suspend(*(v17 + 64));
  v18 = *(a1 + 136);
  if (*(v18 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v18 + 8), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  v19 = *(a1 + 48);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v20[2] = ___dispatch_operation_deliver_data_block_invoke;
  v20[3] = &unk_1E7FB1DA8;
  v21 = a2;
  v22 = v15;
  v23 = v8;
  v20[4] = v16;
  v20[5] = subrange;
  v20[6] = v18;
  v20[7] = v17;
  dispatch_channel_async(v19, v20);
}

void _dispatch_disk_dispose(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 120);
  if (v1)
  {
    *(v1 + 120) = v2;
  }

  *v2 = v1;
  dispatch_release(*(a1 + 72));
}

void ___dispatch_io_init_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___dispatch_io_init_block_invoke_2;
  v5[3] = &unk_1E7FB1A30;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  dispatch_channel_async(v2, v5);
  v3 = *(a1 + 40);
  if (v3[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v3);
    }
  }
}

void ___dispatch_io_stop_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___dispatch_io_stop_block_invoke_2;
  block[3] = &__block_descriptor_tmp_53;
  block[4] = v1;
  dispatch_channel_async(v2, block);
}

void ___dispatch_io_stop_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  if (v3)
  {
    _dispatch_fd_entry_cleanup_operations(*(v2 + 112), v2);
    v4 = *(a1 + 32);
    if ((*(v4 + 120) & 1) == 0)
    {
      v5 = *(v3 + 8);
      if (v5)
      {
        *v5 = 0;
        v4 = *(a1 + 32);
      }

      *(v4 + 112) = 0;
      dispatch_resume(*(v3 + 64));
    }
  }

  else if (*(v2 + 124) != -1)
  {
    if (*(v2 + 8) != 0x7FFFFFFF)
    {
      if (atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed) < 1)
      {
        dispatch_set_target_queue_cold_2();
      }

      v2 = *(a1 + 32);
    }

    ___dispatch_io_stop_block_invoke_2_cold_2(block, v2);
  }

  v6 = *(a1 + 32);
  if (v6[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v6 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v6);
    }
  }
}

void _dispatch_fd_entry_cleanup_operations(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    if (a2 && *(a2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    _dispatch_fd_entry_cleanup_operations_cold_2(a1, a1 + 56, v10, a2);
  }

  else
  {
    v5 = 1;
    do
    {
      v6 = v5;
      v7 = *(a1 + 40 + 8 * v4);
      if (v7)
      {
        if (a2 && *(a2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed) <= 0)
        {
          dispatch_set_target_queue_cold_2();
        }

        dispatch_suspend(*(a1 + 64));
        v8 = *v7;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___dispatch_fd_entry_cleanup_operations_block_invoke_2;
        block[3] = &__block_descriptor_tmp_56;
        block[4] = v7;
        block[5] = a2;
        block[6] = a1;
        dispatch_channel_async(v8, block);
      }

      v5 = 0;
      v4 = 1;
    }

    while ((v6 & 1) != 0);
  }
}

void ___dispatch_io_stop_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[31];
  v4 = _dispatch_io_fds[v3 & 0x3F];
  if (v4)
  {
    while (*v4 != v3)
    {
      v4 = *(v4 + 112);
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    _dispatch_fd_entry_cleanup_operations(v4, v2);
    v2 = *(a1 + 32);
  }

LABEL_6:
  if (v2[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v2);
    }
  }
}

void ___dispatch_fd_entry_cleanup_operations_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4 = *(v3 + 48);
  if (v4)
  {
    v5 = *(a1 + 40);
    do
    {
      while (1)
      {
        v6 = v4;
        v4 = *(v4 + 240);
        if ((*(v6 + 160) & 1) == 0 && (!v5 || *(v6 + 136) == v5))
        {
          break;
        }

        if (!v4)
        {
          goto LABEL_9;
        }
      }

      _dispatch_disk_complete_operation(v3, v6);
    }

    while (v4);
LABEL_9:
    v2 = *(a1 + 32);
  }

  dispatch_resume(*(v2 + 64));
  v7 = *(a1 + 40);
  if (v7 && v7[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v7 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v7);
    }
  }
}

void ___dispatch_fd_entry_cleanup_operations_block_invoke_2(uint64_t *a1)
{
  _dispatch_stream_cleanup_operations(a1[4], a1[5]);
  dispatch_resume(*(a1[6] + 64));
  v2 = a1[5];
  if (v2 && v2[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v2);
    }
  }
}

void _dispatch_stream_cleanup_operations(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    do
    {
      v5 = *(v4 + 240);
      if (!a2 || *(v4 + 136) == a2)
      {
        _dispatch_stream_complete_operation(a1, v4);
      }

      v4 = v5;
    }

    while (v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    do
    {
      v7 = *(v6 + 240);
      if (!a2 || *(v6 + 136) == a2)
      {
        _dispatch_stream_complete_operation(a1, v6);
      }

      v6 = v7;
    }

    while (v7);
  }

  if (*(a1 + 24) == 1 && !*(a1 + 48) && !*(a1 + 32))
  {
    dispatch_suspend(*(a1 + 8));
    *(a1 + 24) = 0;
  }
}

void _dispatch_disk_complete_operation(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == a2)
  {
    *(a1 + 64) = **(*(a2 + 248) + 8);
  }

  if (!*(a2 + 64))
  {
    v3 = *(a2 + 256);
    v4 = *(a2 + 264);
    if (v3)
    {
      v3[33] = v4;
      *v4 = v3;
      v3[30] = 0;
      v5 = *(a1 + 56);
      v3[31] = v5;
      *v5 = v3;
      *(a1 + 56) = v3 + 30;
    }

    else
    {
      *(*(a2 + 144) + 104) = v4;
      *v4 = 0;
    }
  }

  v6 = *(a2 + 240);
  v7 = *(a2 + 248);
  v8 = (a1 + 56);
  if (v6)
  {
    v8 = (v6 + 248);
  }

  *v8 = v7;
  *v7 = v6;
  v9 = *(a2 + 152);
  if (v9)
  {
    dispatch_source_cancel(v9);
  }

  if (*(a2 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((a2 + 8), 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, a2);
    }
  }
}

void _dispatch_stream_complete_operation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 240);
  v4 = *(a2 + 248);
  if (v3)
  {
    v5 = (v3 + 248);
  }

  else
  {
    v5 = (a1 + 16 * *(a2 + 64) + 40);
  }

  *v5 = v4;
  *v4 = v3;
  if (*(a1 + 16) == a2)
  {
    *(a1 + 16) = 0;
  }

  v6 = *(a2 + 152);
  if (v6)
  {
    dispatch_source_cancel(v6);
  }

  if (*(a2 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((a2 + 8), 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, a2);
    }
  }
}

void ___dispatch_operation_create_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___dispatch_operation_create_block_invoke_2;
  v5[3] = &unk_1E7FB1B20;
  v7 = *(a1 + 64);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  dispatch_channel_async(v2, v5);
  v3 = *(a1 + 40);
  if (v3[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_2(add_explicit, v3);
    }
  }
}

void ___dispatch_operation_create_block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 60);
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (!v3)
  {
    v5 = v8;
  }

  if (v3 == 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  (*(v4 + 16))(v4, 1, v9);
  v10 = *(a1 + 48);
  if (v10[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v10 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v10);
    }
  }

  v12 = *(a1 + 40);

  _dispatch_objc_release(v12);
}

void ___dispatch_operation_enqueue_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 52);
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (!v3)
  {
    v5 = v8;
  }

  if (v3 == 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  (*(v4 + 16))(v4, 1, v9);
  v10 = *(a1 + 40);

  _dispatch_objc_release(v10);
}

void ___dispatch_operation_enqueue_block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (_dispatch_operation_should_enqueue(v2, *v3, *(a1 + 48)))
  {
    v4 = *(v3 + 48) || *(v3 + 32) != 0;
    v2[30] = 0;
    v5 = v3 + 16 * v2[8];
    v6 = *(v5 + 40);
    v2[31] = v6;
    *v6 = v2;
    *(v5 + 40) = v2 + 30;
    if (!v4)
    {
      dispatch_channel_async_f(*v3, *v3, _dispatch_stream_queue_handler);
    }
  }

  v7 = *(a1 + 48);

  _dispatch_objc_release(v7);
}

void ___dispatch_operation_enqueue_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (_dispatch_operation_should_enqueue(v3, *(v2 + 72), *(a1 + 48)))
  {
    if (v3[8])
    {
      v3[30] = 0;
      v4 = *(v2 + 56);
      v3[31] = v4;
      *v4 = v3;
      *(v2 + 56) = v3 + 30;
    }

    else
    {
      v5 = v3[18];
      if (!*(v5 + 96))
      {
        v3[30] = 0;
        v6 = *(v2 + 56);
        v3[31] = v6;
        *v6 = v3;
        *(v2 + 56) = v3 + 30;
        v5 = v3[18];
      }

      v7 = *(v5 + 104);
      v3[32] = 0;
      v3[33] = v7;
      *v7 = v3;
      *(v3[18] + 104) = v3 + 32;
    }

    _dispatch_disk_handler(v2);
  }

  v8 = *(a1 + 48);

  _dispatch_objc_release(v8);
}

uint64_t _dispatch_operation_should_enqueue(uint64_t a1, NSObject *a2, id a3)
{
  _dispatch_objc_retain(a3);
  *(a1 + 232) = a3;
  v6 = *(*(a1 + 136) + 120);
  if ((v6 & 3) != 0)
  {
    if ((v6 & 2) != 0)
    {
      v7 = 89;
LABEL_5:
      *(a1 + 120) = v7;
      if (*(a1 + 8) != 0x7FFFFFFF)
      {
        add_explicit = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release);
        if (add_explicit <= 1)
        {
          _dispatch_worker_thread_cold_1(add_explicit, a1);
        }
      }

      return 0;
    }
  }

  else
  {
    v7 = *(*(a1 + 144) + 24);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  if (*(a1 + 88))
  {
    _dispatch_operation_should_enqueue_cold_2(a1, a2, (a1 + 88));
  }

  return 1;
}

void _dispatch_stream_queue_handler(NSObject *a1)
{
  context = dispatch_get_context(a1);
  if (context)
  {

    _dispatch_stream_handler(context);
  }
}

void ___dispatch_operation_timer_block_invoke(uint64_t a1)
{
  if (!dispatch_source_testcancel(*(a1 + 32)))
  {
    v2 = *(a1 + 40);
    v3 = *(v2 + 96) & 1;
    if (*(v2 + 160) == 1)
    {
      v4 = v3 == 0;
      *(v2 + 96);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {

      _dispatch_operation_deliver_data(v2, v3);
    }

    else
    {
      *(v2 + 184) = 1;
    }
  }
}

void _dispatch_stream_handler(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        if (v3 != 1)
        {
          return;
        }

        v2 = *(v2 + 240);
        if (!v2)
        {
          v2 = *(a1 + 48);
          if (!v2)
          {
            return;
          }
        }
      }
    }

    else
    {
      v4 = *(a1 + 32);
      if (!(*(a1 + 48) | v4))
      {
        return;
      }

      v2 = v4 ? *(a1 + 32) : *(a1 + 48);
      if (!v2)
      {
        return;
      }
    }

    v5 = *(*(v2 + 136) + 120);
    if ((v5 & 3) != 0)
    {
      break;
    }

    v7 = *(v2 + 144);
    v6 = *(v7 + 24);
    if (!v6)
    {
      goto LABEL_18;
    }

LABEL_16:
    *(v2 + 120) = v6;
    _dispatch_stream_complete_operation(a1, v2);
  }

  if ((v5 & 2) != 0)
  {
    v6 = 89;
    goto LABEL_16;
  }

  v7 = *(v2 + 144);
LABEL_18:
  *(a1 + 16) = v2;
  dispatch_suspend(*(v7 + 64));
  if (!*(v2 + 216) && byte_1EBC5B910 == 1)
  {
    _dispatch_operation_deliver_data(v2, 1);
  }

  v8 = _dispatch_operation_perform(v2);
  if (v8 <= 3)
  {
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        _dispatch_operation_deliver_data(v2, 0);
        goto LABEL_42;
      }

      if (v8 != 3)
      {
        goto LABEL_49;
      }

      _dispatch_operation_deliver_data(v2, 9);
    }

    _dispatch_stream_complete_operation(a1, v2);
LABEL_42:
    if (*(a1 + 48) || *(a1 + 32))
    {
      dispatch_channel_async_f(*a1, *a1, _dispatch_stream_queue_handler);
    }

    goto LABEL_49;
  }

  if (v8 > 5)
  {
    if (v8 == 6)
    {
      _dispatch_stream_cleanup_operations(a1, *(v2 + 136));
    }

    else if (v8 == 7)
    {
      dispatch_suspend(*(v7 + 64));
      v9 = *(v7 + 72);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = ___dispatch_stream_handler_block_invoke;
      v14[3] = &__block_descriptor_tmp_64;
      v14[4] = v7;
      dispatch_channel_async(v9, v14);
    }
  }

  else
  {
    if (v8 == 4)
    {
      _dispatch_stream_complete_operation(a1, v2);
    }

    if (*(a1 + 48) || *(a1 + 32))
    {
      *(a1 + 24) = 1;
      v10 = *(a1 + 8);
      if (!v10)
      {
        v11 = *(v2 + 56);
        if (v11)
        {
          if (v11 == 1)
          {
            v12 = &_dispatch_source_type_write;
            goto LABEL_46;
          }

          v10 = 0;
        }

        else
        {
          v12 = &_dispatch_source_type_read;
LABEL_46:
          v10 = dispatch_source_create(v12, **(v2 + 144), 0, *a1);
          dispatch_set_context(v10, a1);
          dispatch_source_set_event_handler_f(v10, _dispatch_stream_source_handler);
          v13 = *(*(v2 + 144) + 64);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 0x40000000;
          v15[2] = ___dispatch_stream_source_block_invoke;
          v15[3] = &__block_descriptor_tmp_67;
          v15[4] = v13;
          dispatch_source_set_mandatory_cancel_handler(v10, v15);
          *(a1 + 8) = v10;
        }
      }

      dispatch_resume(v10);
    }
  }

LABEL_49:
  dispatch_resume(*(v7 + 64));
}

uint64_t _dispatch_operation_perform(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*(a1 + 136) + 120);
    if ((v2 & 3) == 0)
    {
      v3 = *(a1 + 144) + 24;
      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v2) = MEMORY[0x78];
    if ((MEMORY[0x78] & 3) == 0)
    {
      v3 = 144;
LABEL_8:
      v4 = *v3;
      if (*v3)
      {
        goto LABEL_36;
      }

      goto LABEL_9;
    }
  }

  if ((v2 & 2) != 0)
  {
    *(a1 + 120) = 89;
    return 6;
  }

LABEL_9:
  if (*(a1 + 176))
  {
    goto LABEL_10;
  }

  v19 = *(a1 + 80);
  v20 = dispatch_io_defaults;
  v21 = *(a1 + 56);
  if (v21 == 1)
  {
    if (dispatch_io_defaults >= v19)
    {
      v29 = *(a1 + 80);
    }

    else
    {
      v29 = dispatch_io_defaults;
    }

    *(a1 + 192) = 0;
    v30 = *(a1 + 232);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 0x40000000;
    v33[2] = ___dispatch_operation_perform_block_invoke;
    v33[3] = &__block_descriptor_tmp_66;
    v33[4] = a1;
    v33[5] = v29;
    dispatch_data_apply(v30, v33);
    v31 = *(a1 + 192);
    if (v31 > v19)
    {
      *(a1 + 192) = v19;
      v31 = v19;
    }

    subrange = dispatch_data_create_subrange(*(a1 + 232), 0, v31);
    *(a1 + 224) = dispatch_data_create_map(subrange, (a1 + 176), 0);
    _dispatch_objc_release(subrange);
    goto LABEL_10;
  }

  if (v21)
  {
    goto LABEL_10;
  }

  size = dispatch_data_get_size(*(a1 + 232));
  if (v19 - size >= v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = v19 - size;
  }

  v24 = *(a1 + 112);
  if (v24 != -1)
  {
    v25 = v24 - *(a1 + 216);
    if (v25 < v23)
    {
      v23 = v25;
    }
  }

  *(a1 + 192) = v23;
  v4 = malloc_type_posix_memalign((a1 + 176), *MEMORY[0x1E69E9AC8], v23, 0xB41883A9uLL);
  if (!v4)
  {
LABEL_10:
    v5 = *(a1 + 144);
    if (*v5 == -1)
    {
      v4 = _dispatch_fd_entry_open(v5, *(a1 + 136));
      if (v4)
      {
        goto LABEL_36;
      }
    }

    v6 = *(a1 + 176);
    v7 = *(a1 + 192) - *(a1 + 200);
    v8 = *(a1 + 104);
    v9 = *(a1 + 216);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v11 = *(a1 + 56);
      if (v11 == 1)
      {
        v15 = *(a1 + 64);
        if (v15 == 1)
        {
          v18 = **(a1 + 144);
          NOCANCEL = pwrite_NOCANCEL();
        }

        else
        {
          if (v15)
          {
            goto LABEL_23;
          }

          v16 = **(a1 + 144);
          NOCANCEL = write_NOCANCEL();
        }
      }

      else
      {
        if (v11)
        {
          goto LABEL_23;
        }

        v12 = *(a1 + 64);
        if (v12 == 1)
        {
          v17 = **(a1 + 144);
          NOCANCEL = pread_NOCANCEL();
        }

        else
        {
          if (v12)
          {
            goto LABEL_23;
          }

          v13 = **(a1 + 144);
          NOCANCEL = read_NOCANCEL();
        }
      }

      if (NOCANCEL != -1)
      {
        if (!NOCANCEL)
        {
          return 3;
        }

        *(a1 + 200) += NOCANCEL;
        v28 = *(a1 + 216) + NOCANCEL;
        *(a1 + 216) = v28;
        if (v28 == *(a1 + 112))
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

LABEL_23:
      v4 = **(StatusReg + 8);
    }

    while (v4 == 4);
  }

LABEL_36:
  if (v4 != 35)
  {
    *(a1 + 120) = v4;
    if (v4 != 89)
    {
      if (v4 != 9)
      {
        return 1;
      }

      v27 = 0;
      atomic_compare_exchange_strong_explicit((*(a1 + 144) + 24), &v27, 9u, memory_order_relaxed, memory_order_relaxed);
      return 7;
    }

    return 6;
  }

  if (!*(a1 + 56) && *(a1 + 216) && *(a1 + 136) == *(*(a1 + 144) + 88))
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

void ___dispatch_stream_handler_block_invoke(uint64_t a1)
{
  _dispatch_fd_entry_cleanup_operations(*(a1 + 32), 0);
  v2 = *(*(a1 + 32) + 64);

  dispatch_resume(v2);
}

BOOL ___dispatch_operation_perform_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 192);
  v7 = v6 + a5;
  if (!v6 || (v8 = *(a1 + 40), v7 <= v8))
  {
    *(v5 + 192) = v7;
    v8 = *(a1 + 40);
  }

  return v7 < v8;
}

uint64_t _dispatch_stream_source_handler(uint64_t a1)
{
  dispatch_suspend(*(a1 + 8));
  *(a1 + 24) = 0;

  return _dispatch_stream_handler(a1);
}

void _dispatch_disk_handler(void *context)
{
  if ((*(context + 108) & 1) == 0)
  {
    v3 = context[10];
    v2 = context[11];
    v4 = v2;
    if (v2 <= v3)
    {
      v4 = context[16] + v2;
    }

    if (v3 <= v4)
    {
      v5 = (context + 17);
      while (1)
      {
        v6 = v3 % context[16];
        if (*&v5[8 * v6] || (v7 = context[6]) == 0)
        {
LABEL_27:
          v2 = context[11];
          break;
        }

        v8 = context[8];
        v9 = v8;
        if (v8)
        {
          do
          {
            if (*(v9 + 240))
            {
              v9 = *(v9 + 240);
            }

            else
            {
              v9 = context[6];
            }

            v10 = *(v9 + 160);
          }

          while (v9 != v8 && (*(v9 + 160) & 1) != 0);
          if (*(v9 + 160))
          {
            goto LABEL_27;
          }
        }

        else
        {
          v9 = context[6];
          if (*(v7 + 160))
          {
            goto LABEL_27;
          }
        }

        context[8] = v9;
        v11 = *(*(v9 + 136) + 120);
        if ((v11 & 3) != 0)
        {
          if ((v11 & 2) == 0)
          {
            goto LABEL_22;
          }

          v12 = 89;
        }

        else
        {
          v12 = *(*(v9 + 144) + 24);
          if (!v12)
          {
LABEL_22:
            if (*(v9 + 8) != 0x7FFFFFFF)
            {
              if (atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed) < 1)
              {
                dispatch_set_target_queue_cold_2();
              }

              v6 = v3 % context[16];
            }

            *&v5[8 * v6] = v9;
            *(v9 + 160) = 1;
            ++v3;
            goto LABEL_26;
          }
        }

        *(v9 + 120) = v12;
        _dispatch_disk_complete_operation(context, v9);
LABEL_26:
        if (v3 > v4)
        {
          goto LABEL_27;
        }
      }
    }

    context[10] = v3 % context[16];
    v13 = context[v2 + 17];
    if (v13)
    {
      *(context + 108) = 1;
      v14 = *(v13 + 24);

      dispatch_channel_async_f(v14, context, _dispatch_disk_perform);
    }
  }
}

void _dispatch_disk_perform(void *a1)
{
  v2 = dispatch_io_defaults;
  v3 = a1[12];
  v4 = a1[10];
  if (v4 <= v3)
  {
    v4 += a1[16];
  }

  v5 = a1 + 17;
  v6 = MEMORY[0x1E69E9AC8];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v8 = v3 % a1[16];
    v9 = v5[v8];
    if (!v9)
    {
      break;
    }

    if (*(v9 + 56) != 1)
    {
      v10 = *(v9 + 144);
      if (*v10 != -1 || !_dispatch_fd_entry_open(v10, *(v9 + 136)))
      {
        if (!*(v9 + 216) && byte_1EBC5B910 == 1)
        {
          _dispatch_operation_deliver_data(v9, 1);
        }

        if (v4 - v3 == 1 && !v5[a1[10]])
        {
          v2 <<= *(v9 + 168) == 0;
        }

        v11 = *(*(v9 + 136) + 120);
        if ((v11 & 3) != 0)
        {
          if ((v11 & 2) == 0)
          {
            goto LABEL_21;
          }
        }

        else if (!*(*(v9 + 144) + 24))
        {
LABEL_21:
          v29 = 0;
          v12 = *(v9 + 168);
          v13 = *v6;
          v14 = *(v9 + 104) + v2;
          if (v12 <= (v14 + *(v9 + 216) + *v6))
          {
            if (v12)
            {
              v15 = v2;
            }

            else
            {
              v16 = v14 % v13;
              v17 = v13 - v14 % v13;
              if (v16)
              {
                v18 = v17;
              }

              else
              {
                v18 = 0;
              }

              v15 = v18 + v2;
              v12 = *(v9 + 104);
            }

            LODWORD(v29) = v15;
            v28 = v12;
            *(v9 + 168) = v12 + v15;
            while (1)
            {
              v19 = **(v9 + 144);
              if (fcntl_NOCANCEL() != -1)
              {
                break;
              }

              v20 = **(StatusReg + 8);
              if (v20 != 4)
              {
                if (v20 > 0x2D || ((1 << v20) & 0x200008000001) == 0)
                {
                  _dispatch_bug(2308, v20);
                }

                break;
              }
            }
          }
        }
      }
    }

    if (++v3 >= v4)
    {
      v8 = v3 % a1[16];
      break;
    }
  }

  a1[12] = v8;
  v22 = v5[a1[11]];
  v23 = _dispatch_operation_perform(v22);
  v24 = a1[11];
  v5[v24] = 0;
  a1[11] = (v24 + 1) % a1[16];
  v25 = a1[9];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___dispatch_disk_perform_block_invoke;
  block[3] = &__block_descriptor_tmp_68;
  v27 = v23;
  block[4] = v22;
  block[5] = a1;
  dispatch_channel_async(v25, block);
}

uint64_t ___dispatch_disk_perform_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 6)
      {
        _dispatch_disk_cleanup_operations(*(a1 + 40), *(*(a1 + 32) + 136));
      }

      else if (v2 == 7)
      {
        v3 = *(a1 + 40);
        v4 = *(v3 + 48);
        if (v4)
        {
          do
          {
            v5 = *(v4 + 240);
            _dispatch_disk_complete_operation(v3, v4);
            v4 = v5;
          }

          while (v5);
        }
      }

      goto LABEL_14;
    }

    _dispatch_operation_deliver_data(*(a1 + 32), 9);
LABEL_12:
    _dispatch_disk_complete_operation(*(a1 + 40), *(a1 + 32));
    goto LABEL_14;
  }

  if (v2 == 1)
  {
    goto LABEL_12;
  }

  if (v2 == 2)
  {
    _dispatch_operation_deliver_data(*(a1 + 32), 0);
  }

LABEL_14:
  v6 = *(a1 + 40);
  *(*(a1 + 32) + 160) = 0;
  v6[108] = 0;
  result = _dispatch_disk_handler(v6);
  v8 = *(a1 + 32);
  if (v8[2] != 0x7FFFFFFF)
  {
    result = atomic_fetch_add_explicit(v8 + 2, 0xFFFFFFFF, memory_order_release);
    if (result <= 1)
    {
      return _dispatch_worker_thread_cold_1(result, v8);
    }
  }

  return result;
}

void _dispatch_disk_cleanup_operations(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    do
    {
      v5 = *(v3 + 240);
      if (!a2 || *(v3 + 136) == a2)
      {
        _dispatch_disk_complete_operation(a1, v3);
      }

      v3 = v5;
    }

    while (v5);
  }
}

void ___dispatch_fd_entry_init_async_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (&_dispatch_io_fds + 8 * (v2 & 0x3F));
  v4 = *v3;
  if (*v3)
  {
    while (*v4 != v2)
    {
      v4 = v4[14];
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    dispatch_suspend(v4[8]);
  }

  else
  {
LABEL_4:
    v5 = _dispatch_fd_entry_create(_dispatch_io_fds_lockq);
    v4 = v5;
    *v5 = v2;
    v6 = *v3;
    v5[14] = *v3;
    if (v6)
    {
      v6[15] = v5 + 14;
    }

    *v3 = v5;
    v5[15] = v3;
    v5[9] = dispatch_queue_create("com.apple.libdispatch-io.barrierq", 0);
    v4[10] = dispatch_group_create();
    v7 = v4[9];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___dispatch_fd_entry_create_with_fd_block_invoke;
    block[3] = &__block_descriptor_tmp_72;
    v16 = v2;
    block[4] = v4;
    dispatch_channel_async(v7, block);
    v8 = v4[8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = ___dispatch_fd_entry_create_with_fd_block_invoke_3;
    v14[3] = &__block_descriptor_tmp_74;
    v14[4] = v4;
    dispatch_channel_async(v8, v14);
    v9 = v4[8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = ___dispatch_fd_entry_create_with_fd_block_invoke_5;
    v12[3] = &__block_descriptor_tmp_75;
    v12[4] = v4;
    v13 = v2;
    dispatch_channel_async(v9, v12);
  }

  v10 = v4[9];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___dispatch_fd_entry_init_async_block_invoke_2;
  v11[3] = &unk_1E7FB1C78;
  v11[4] = *(a1 + 32);
  v11[5] = v4;
  dispatch_channel_async(v10, v11);
}

void ___dispatch_fd_entry_init_async_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 64);

  dispatch_resume(v3);
}

void *_dispatch_fd_entry_create(NSObject *a1)
{
  v2 = _dispatch_calloc_typed(1uLL, 0x80uLL, 0x10A00401D52844BuLL);
  v3 = dispatch_queue_create_with_target_V2("com.apple.libdispatch-io.closeq", 0, a1);
  v2[8] = v3;
  dispatch_suspend(v3);
  return v2;
}

void ___dispatch_fd_entry_create_with_fd_block_invoke(uint64_t a1)
{
  memset(&v27.st_uid, 0, 128);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *&v27.st_dev = *&v27.st_blksize;
  while (fstat(*(a1 + 40), &v27) == -1)
  {
    v3 = **(StatusReg + 8);
    if (v3 != 4)
    {
      if (v3)
      {
        *(*(a1 + 32) + 24) = v3;
        return;
      }

      break;
    }
  }

  v4 = *(a1 + 32);
  *(v4 + 32) = v27.st_dev;
  *(v4 + 36) = v27.st_mode;
  v5 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v6 = *(a1 + 40);
    v7 = fcntl_NOCANCEL();
    if (v7 != -1)
    {
      break;
    }

    v8 = **(v5 + 8);
    if (v8 != 4)
    {
      if (v8)
      {
        _dispatch_bug(1471, v8);
      }

      break;
    }
  }

  if ((v27.st_mode & 0xF000) == 0x1000)
  {
    v9 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v10 = *(a1 + 40);
      if (fcntl_NOCANCEL() != -1)
      {
        v13 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        do
        {
          v14 = *(a1 + 40);
          v15 = fcntl_NOCANCEL();
          if (v15 != -1)
          {
            v16 = v15;
            goto LABEL_22;
          }

          v11 = **(v13 + 8);
        }

        while (v11 == 4);
        if (!v11)
        {
          goto LABEL_21;
        }

        v12 = 1484;
        goto LABEL_42;
      }

      v11 = **(v9 + 8);
    }

    while (v11 == 4);
    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = 1477;
LABEL_42:
    _dispatch_bug(v12, v11);
  }

LABEL_21:
  v16 = -1;
LABEL_22:
  if ((v27.st_mode & 0xF000) == 0x8000)
  {
    if (v7 != -1)
    {
      v17 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      while (1)
      {
        v18 = *(a1 + 40);
        if (fcntl_NOCANCEL() != -1)
        {
          break;
        }

        v19 = **(v17 + 8);
        if (v19 != 4)
        {
          if (v19)
          {
            _dispatch_bug(1496, v19);
            v7 = -1;
          }

          break;
        }
      }
    }

    st_dev_high = HIBYTE(v27.st_dev);
    dispatch_suspend(*(*(a1 + 32) + 72));
    if (_dispatch_io_init_pred != -1)
    {
      __dispatch_io_create_with_path_block_invoke_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___dispatch_fd_entry_create_with_fd_block_invoke_2;
    block[3] = &__block_descriptor_tmp_71;
    block[4] = *(a1 + 32);
    v26 = st_dev_high;
    dispatch_channel_async(_dispatch_io_devs_lockq, block);
  }

  else
  {
    if (v7 != -1)
    {
      v21 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      while (1)
      {
        v22 = *(a1 + 40);
        if (fcntl_NOCANCEL() != -1)
        {
          break;
        }

        v23 = **(v21 + 8);
        if (v23 != 4)
        {
          if (v23)
          {
            _dispatch_bug(1516, v23);
            v7 = -1;
          }

          break;
        }
      }
    }

    _dispatch_stream_init(*(a1 + 32));
  }

  v24 = *(a1 + 32);
  *(v24 + 16) = v7;
  *(v24 + 20) = v16;
}

void ___dispatch_fd_entry_create_with_fd_block_invoke_2(uint64_t a1)
{
  _dispatch_disk_init(*(a1 + 32), *(a1 + 40));
  v2 = *(*(a1 + 32) + 72);

  dispatch_resume(v2);
}

dispatch_queue_t _dispatch_disk_init(dispatch_queue_t result, int a2)
{
  v2 = result;
  v9 = *MEMORY[0x1E69E9840];
  v3 = (&_dispatch_io_devs + 8 * (a2 & 0x3F));
  v4 = *v3;
  if (*v3)
  {
    while (*(v4 + 104) != a2)
    {
      v4 = *(v4 + 112);
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    if (*(v4 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }
  }

  else
  {
LABEL_4:
    result = _dispatch_disk_init_cold_2(a2, v8, v3, &v7);
    v4 = v7;
  }

  v2[12].isa = 0;
  v5 = v2 + 12;
  v5[-5].isa = v4;
  v5[1].isa = v5;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void _dispatch_stream_init(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 40;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = _dispatch_calloc_typed(1uLL, 0x40uLL, 0x10A0040C5C49CBAuLL);
    v6 = dispatch_queue_create_with_target_V2("com.apple.libdispatch-io.streamq", 0, &unk_1ED3F3B40);
    *v5 = v6;
    dispatch_set_context(v6, v5);
    v3 = 0;
    v5[6] = 0;
    v5[7] = v5 + 6;
    v5[4] = 0;
    v5[5] = v5 + 4;
    *(v2 + 8 * v1) = v5;
    v1 = 1;
  }

  while ((v4 & 1) != 0);
}

void ___dispatch_fd_entry_create_with_fd_block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___dispatch_fd_entry_create_with_fd_block_invoke_4;
    block[3] = &__block_descriptor_tmp_73;
    block[4] = v2;
    dispatch_channel_async(_dispatch_io_devs_lockq, block);
  }

  else
  {
    _dispatch_stream_dispose(*(a1 + 32), 0);
    _dispatch_stream_dispose(*(a1 + 32), 1u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  if (v4)
  {
    *(v4 + 120) = *(v3 + 120);
    v3 = *(a1 + 32);
    v4 = *(v3 + 112);
  }

  **(v3 + 120) = v4;
}

void _dispatch_stream_dispose(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8 * a2 + 40);
  if (v2)
  {
    if (v2[1])
    {
      dispatch_suspend(*(a1 + 64));
      dispatch_source_cancel(v2[1]);
      dispatch_resume(v2[1]);
      dispatch_release(v2[1]);
    }

    dispatch_set_context(*v2, 0);
    dispatch_release(*v2);

    free(v2);
  }
}

uint64_t ___dispatch_fd_entry_create_with_fd_block_invoke_4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1[2] != 0x7FFFFFFF)
  {
    result = atomic_fetch_add_explicit(v1 + 2, 0xFFFFFFFF, memory_order_release);
    if (result <= 1)
    {
      return _dispatch_worker_thread_cold_1(result, v1);
    }
  }

  return result;
}

void ___dispatch_fd_entry_create_with_fd_block_invoke_5(uint64_t a1)
{
  dispatch_release(*(*(a1 + 32) + 64));
  dispatch_release(*(*(a1 + 32) + 72));
  dispatch_release(*(*(a1 + 32) + 80));
  v2 = *(a1 + 32);
  if (*(v2 + 16) != -1)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v4 = *(a1 + 40);
      v8 = *(*(a1 + 32) + 16);
    }

    while (fcntl_NOCANCEL() == -1 && **(StatusReg + 8) == 4);
    v2 = *(a1 + 32);
  }

  if (*(v2 + 20) != -1)
  {
    v5 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v6 = *(a1 + 40);
      v9 = *(*(a1 + 32) + 20);
    }

    while (fcntl_NOCANCEL() == -1 && **(v5 + 8) == 4);
    v2 = *(a1 + 32);
  }

  v7 = *(v2 + 88);
  if (v7)
  {
    *(v7 + 112) = 0;
    dispatch_release(*(*(a1 + 32) + 88));
    v2 = *(a1 + 32);
  }

  free(v2);
}

uint64_t ___dispatch_fd_entry_create_with_path_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 7))
  {
    _dispatch_stream_dispose(*(a1 + 32), 0);
    _dispatch_stream_dispose(*(a1 + 32), 1u);
    v2 = *(a1 + 32);
  }

  result = *v2;
  if (result != -1)
  {
    if (v2[7])
    {
      result = guarded_close_np();
    }

    else
    {
      result = close_NOCANCEL();
    }
  }

  v4 = **(*(a1 + 32) + 8);
  if (v4)
  {
    *(v4 + 112) = 0;
  }

  return result;
}

void ___dispatch_fd_entry_create_with_path_block_invoke_2(uint64_t a1)
{
  dispatch_release(*(*(a1 + 32) + 64));
  dispatch_release(*(*(a1 + 32) + 72));
  dispatch_release(*(*(a1 + 32) + 80));
  free(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);

  free(v2);
}

void ___dispatch_operation_deliver_data_block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 40);
  if ((*(a1 + 64) & 2) != 0)
  {
    v4 = *(a1 + 68);
    if (v4 == 1)
    {
      *(a1 + 72);
    }

    else if (!v4 && *(a1 + 72) && dispatch_data_get_size(*(a1 + 40)))
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  v5 = *(a1 + 72);
  (*(*(a1 + 32) + 16))();
  v6 = *(a1 + 48);
  if (v6[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(v6 + 2, 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _dispatch_worker_thread_cold_1(add_explicit, v6);
    }
  }

  ___dispatch_operation_deliver_data_block_invoke_cold_2(a1, v2);
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t result, void *a2)
{
  v2 = *(result + 48);
  *a2 = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t *a1)
{
  result = *a1;
  v2 = *(result + 8);
  return result;
}

void OUTLINED_FUNCTION_8_1(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X8>)
{
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = a1;
  a2[5] = a3;

  dispatch_channel_async(a4, a2);
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t *a1)
{
  result = *a1;
  v2 = *(result + 8);
  return result;
}

void _dispatch_data_init_with_bytes(void *a1, mach_vm_address_t a2, mach_vm_size_t a3, void *aBlock)
{
  v4 = a3;
  v5 = a2;
  if (!a2 || !a3)
  {
    if (aBlock)
    {
      v7 = _dispatch_Block_copy(aBlock);
      _dispatch_data_destroy_buffer(v5, v4, 0, v7);
    }

    v5 = 0;
    v4 = 0;
    aBlock = &__block_literal_global_4130;
  }

  a1[5] = aBlock;
  a1[6] = v4;
  a1[4] = v5;
}

void _dispatch_data_destroy_buffer(mach_vm_address_t address, mach_vm_size_t size, NSObject *a3, void *context)
{
  if (&__block_literal_global == context)
  {
    free(address);
  }

  else if (&__block_literal_global_4130 != context)
  {
    if (&__block_literal_global_4134 == context)
    {
      mach_vm_deallocate(*MEMORY[0x1E69E9A60], address, size);
    }

    else
    {
      if (a3)
      {
        v4 = a3;
      }

      else
      {
        v4 = &unk_1ED3F3B40;
      }

      dispatch_channel_async_f(v4, context, _dispatch_call_block_and_release);
    }
  }
}

dispatch_data_t dispatch_data_create(const void *buffer, size_t size, dispatch_queue_t queue, dispatch_block_t destructor)
{
  v7 = buffer;
  if (buffer && size)
  {
    if (destructor)
    {
      if (&__block_literal_global_4138 != destructor)
      {
        v8 = _dispatch_object_alloc_bridged(OS_dispatch_data, 64);
        v8[7].isa = 0;
        v9 = _dispatch_Block_copy(destructor);
        goto LABEL_13;
      }

      v8 = _dispatch_object_alloc_bridged(OS_dispatch_data, size + 64);
      v8[7].isa = 0;
      v12 = v8 + 8;
      memcpy(&v8[8], v7, size);
      v13 = &_dispatch_data_destructor_none;
    }

    else
    {
      v11 = malloc_type_malloc(size, 0x4B848A0EuLL);
      if (!v11)
      {
        return 0;
      }

      v12 = v11;
      memcpy(v11, v7, size);
      v8 = _dispatch_object_alloc_bridged(OS_dispatch_data, 64);
      v8[7].isa = 0;
      v13 = &_dispatch_data_destructor_free;
    }

    v9 = *v13;
    v7 = v12;
LABEL_13:
    v8[5].isa = v9;
    v8[6].isa = size;
    v8[4].isa = v7;
    if (queue)
    {
      if (LODWORD(queue[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&queue[1], 1u, memory_order_relaxed) <= 0)
      {
        dispatch_set_target_queue_cold_2();
      }

      v8[1].isa = queue;
    }

    return v8;
  }

  if (destructor)
  {
    v10 = _dispatch_Block_copy(destructor);
    _dispatch_data_destroy_buffer(v7, size, queue, v10);
  }

  return &_dispatch_data_empty;
}

dispatch_data_t dispatch_data_create_f(const void *a1, size_t a2, NSObject *a3, void *a4)
{
  if (a4)
  {
    if (&__block_literal_global != a4 && &__block_literal_global_4130 != a4 && &__block_literal_global_4134 != a4 && &__block_literal_global_4138 != a4)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 0x40000000;
      v8[2] = __dispatch_data_create_f_block_invoke;
      v8[3] = &__block_descriptor_tmp_1;
      v8[4] = a4;
      v8[5] = a1;
      a4 = v8;
    }
  }

  return dispatch_data_create(a1, a2, a3, a4);
}

void _dispatch_data_dispose(void *a1)
{
  if (a1[7])
  {
    v2 = 0;
    v3 = (a1 + 8);
    do
    {
      v4 = *v3;
      v3 += 3;
      _dispatch_objc_release(v4);
      ++v2;
    }

    while (a1[7] > v2);
    v5 = a1[4];

    free(v5);
  }

  else
  {
    v7 = a1[5];
    v6 = a1[6];
    v8 = a1[1];
    v9 = a1[4];

    _dispatch_data_destroy_buffer(v9, v6, v8, v7);
  }
}

atomic_uint *_dispatch_data_set_target_queue(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    a2 = &unk_1ED3F3B40;
  }

  if (a2[2] != 0x7FFFFFFF && atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  return dispatch_set_target_queue_cold_3(a1, a2);
}

dispatch_data_t dispatch_data_create_concat(dispatch_data_t data1, dispatch_data_t data2)
{
  v2 = data2;
  isa = data1[6].isa;
  if (!isa)
  {
    goto LABEL_15;
  }

  v5 = data2[6].isa;
  if (!v5)
  {
    v2 = data1;
LABEL_15:
    _dispatch_objc_retain(v2);
    return v2;
  }

  v6 = data1[7].isa;
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = data1[7].isa;
  }

  v8 = data2[7].isa;
  if (v8 <= 1)
  {
    v8 = 1;
  }

  v9 = 0;
  v10 = v7 + v8;
  if (!__CFADD__(v7, v8))
  {
    if (is_mul_ok(v10, 0x18uLL) && 24 * v10 < 0xFFFFFFFFFFFFFFC0)
    {
      v9 = _dispatch_object_alloc_bridged(OS_dispatch_data, 24 * v10 + 64);
      v9[7].isa = v10;
      v5 = v2[6].isa;
      isa = data1[6].isa;
      v6 = data1[7].isa;
    }

    v9[6].isa = (isa + v5);
    v11 = v9 + 8;
    if (v6)
    {
      memcpy(&v9[8], &data1[8], 24 * v6);
    }

    else
    {
      v12 = data1[6].isa;
      v9[9].isa = 0;
      v9[10].isa = v12;
      v9[8].isa = data1;
    }

    v13 = v2[7].isa;
    v14 = data1[7].isa;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    if (v13)
    {
      memcpy(&v11[3 * v14], &v2[8], 24 * v13);
    }

    else
    {
      v15 = v2[6].isa;
      v16 = &v11[3 * v14];
      v16[1] = 0;
      v16[2] = v15;
      *v16 = v2;
    }

    v17 = 0;
    v18 = 8;
    do
    {
      _dispatch_objc_retain(v9[v18].isa);
      v17 = (v17 + 1);
      v18 += 3;
    }

    while (v9[7].isa > v17);
  }

  return v9;
}

dispatch_data_t dispatch_data_create_subrange(dispatch_data_t data, size_t offset, size_t length)
{
  v3 = &_dispatch_data_empty;
  if (!length)
  {
    return v3;
  }

  v5 = data;
  isa = data[6].isa;
  while (1)
  {
    if (isa <= offset)
    {
      return v3;
    }

    v7 = isa - offset;
    if (isa - offset >= length)
    {
      v7 = length;
      if (isa == length)
      {
        v3 = v5;
        goto LABEL_18;
      }
    }

    v8 = v5[7].isa;
    if (!v8)
    {
      v3 = _dispatch_object_alloc_bridged(OS_dispatch_data, 88);
      v3[6].isa = v7;
      v3[7].isa = 1;
      v3[9].isa = offset;
      v3[10].isa = v7;
      v3[8].isa = v5;
LABEL_18:
      _dispatch_objc_retain(v5);
      return v3;
    }

    v9 = 0;
    v10 = v5 + 16;
    v11 = offset;
    while (1)
    {
      v12 = v10[-6].isa;
      if (v11 < v12)
      {
        break;
      }

      ++v9;
      v10 += 3;
      v11 -= v12;
      if (v8 == v9)
      {
        dispatch_data_create_subrange_cold_1(v8);
      }
    }

    v13 = (v11 + v7 - v12);
    if (v11 + v7 > v12)
    {
      break;
    }

    if (!v7)
    {
      return v3;
    }

    v5 = v10[-8].isa;
    offset = v10[-7].isa + v11;
    isa = v5[6].isa;
    length = v7;
  }

  v14 = v8 - v9;
  if ((v7 + offset) == isa)
  {
    v13 = 0;
    v15 = v8 - v9;
  }

  else if (v9 + 1 >= v8)
  {
    v15 = 1;
  }

  else
  {
    v16 = v10[-3].isa;
    v15 = 2;
    if (v13 > v16)
    {
      p_isa = &v10->isa;
      do
      {
        if (v14 == v15)
        {
          dispatch_data_create_subrange_cold_1(v8);
        }

        v13 = (v13 - v16);
        ++v15;
        v18 = *p_isa;
        p_isa += 3;
        v16 = v18;
      }

      while (v13 > v18);
    }
  }

  v19 = v10 - 8;
  v3 = _dispatch_object_alloc_bridged(OS_dispatch_data, 24 * v15 + 64);
  v3[6].isa = v7;
  v3[7].isa = v15;
  memcpy(&v3[8], v19, 24 * v15);
  if (v11)
  {
    v20 = (v3[10].isa - v11);
    v3[9].isa = (v3[9].isa + v11);
    v3[10].isa = v20;
  }

  if ((v7 + offset) != isa)
  {
    v3[3 * v15 + 7].isa = v13;
  }

  if (v15)
  {
    v21 = 8;
    do
    {
      _dispatch_objc_retain(v3[v21].isa);
      v21 += 3;
      --v15;
    }

    while (v15);
  }

  return v3;
}

void *_dispatch_data_flatten(uint64_t a1)
{
  v2 = malloc_type_malloc(*(a1 + 48), 0x3AE70BEEuLL);
  v3 = v2;
  if (v2)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = ___dispatch_data_flatten_block_invoke;
    applier[3] = &__block_descriptor_tmp_12_0;
    applier[4] = v2;
    dispatch_data_apply(a1, applier);
  }

  return v3;
}

uint64_t dispatch_data_apply_f(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[6];
  if (v3)
  {
    return _dispatch_data_apply(a1, 0, 0, v3, a2, a3);
  }

  else
  {
    return 1;
  }
}

uint64_t _dispatch_data_apply(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  v10 = a1[7];
  if (v10 == 1)
  {
    v12 = a1[8];
    v11 = a1[9];
    if (!v12[7])
    {
      goto LABEL_3;
    }

LABEL_9:
    v13 = v12[4];
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  v11 = 0;
  v12 = a1;
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_3:
  v13 = v12[4];
LABEL_4:
  if (v13)
  {

    return _dispatch_data_apply_client_callout(a5, a1, a2, v13 + v11 + a3, a4);
  }

LABEL_10:
  v15 = a1 + 10;
  v16 = 1;
  do
  {
    result = _dispatch_data_apply(*(v15 - 2), v8, *(v15 - 1), *v15, a5, a6);
    if (a1[7] <= v16)
    {
      break;
    }

    v17 = *v15;
    v15 += 3;
    v8 += v17;
    ++v16;
  }

  while ((result & 1) != 0);
  return result;
}

BOOL dispatch_data_apply(dispatch_data_t data, dispatch_data_applier_t applier)
{
  isa = data[6].isa;
  if (!isa)
  {
    return 1;
  }

  if (*(applier + 2))
  {
    v3 = *(applier + 2);
  }

  else
  {
    v3 = 0;
  }

  return _dispatch_data_apply(data, 0, 0, isa, applier, v3);
}

dispatch_data_t dispatch_data_copy_region(dispatch_data_t data, size_t location, size_t *offset_ptr)
{
  isa = data[6].isa;
  if (isa <= location)
  {
    *offset_ptr = isa;
    return &_dispatch_data_empty;
  }

  else
  {
    v4 = data;
    v5 = 0;
    v6 = 0;
    *offset_ptr = 0;
    v7 = v4[6].isa;
LABEL_4:
    if (v4[6].isa == v7)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }

LABEL_7:
    v9 = v4[7].isa;
    if (v9 == 1)
    {
      v15 = v4 + 8;
      v4 = v4[8].isa;
      v6 = (v6 + v15[1].isa);
      v9 = v4[7].isa;
    }

    if (!v4[4].isa)
    {
      v10 = 0;
      if (v9 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v9;
      }

      for (i = v4 + 10; ; i += 3)
      {
        v13 = i->isa;
        if (v6 >= i->isa)
        {
          v6 = (v6 - i->isa);
        }

        else
        {
          v7 = (v13 - v6);
          v14 = v13 - v6 + v10;
          if (v14 > location)
          {
            v4 = i[-2].isa;
            v6 = (v6 + i[-1].isa);
            v5 += v10;
            *offset_ptr = v5;
            location -= v10;
            if (!v6)
            {
              goto LABEL_4;
            }

            v8 = 0;
            goto LABEL_7;
          }

          v6 = 0;
          v10 = v14;
        }

        if (!--v11)
        {
          dispatch_data_copy_region_cold_1(v5, v10);
        }
      }
    }

    if (v8)
    {
      _dispatch_objc_retain(v8);
    }

    else
    {
      _dispatch_objc_retain(v4);
      if (v6 || v4[6].isa != v7)
      {
        v8 = _dispatch_object_alloc_bridged(OS_dispatch_data, 88);
        v8[6].isa = v7;
        v8[7].isa = 1;
        v8[9].isa = v6;
        v8[10].isa = v7;
        v8[8].isa = v4;
      }

      else
      {
        return v4;
      }
    }
  }

  return v8;
}

uint64_t dispatch_data_make_memory_entry(NSObject *a1)
{
  object_handle = 0;
  size = 0;
  isa = a1[6].isa;
  v3 = a1[5].isa != &__block_literal_global_4134;
  v4 = MEMORY[0x1E69E9AC8];
  v5 = MEMORY[0x1E69E9A60];
  while (1)
  {
    v6 = v3;
    if (v3)
    {
      address = *v4;
      v7 = mach_vm_allocate(*v5, &address, isa, 1);
      if (v7)
      {
        if (v7 == 3)
        {
          return object_handle;
        }

        v11 = 704;
        goto LABEL_16;
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = __dispatch_data_make_memory_entry_block_invoke;
      v13[3] = &__block_descriptor_tmp_9_0;
      v13[4] = address;
      dispatch_data_apply(a1, v13);
      v8 = address;
    }

    else
    {
      v8 = a1[4].isa;
      address = v8;
    }

    size = isa;
    memory_entry_64 = mach_make_memory_entry_64(*v5, &size, v8, 2097219, &object_handle, 0);
    if (memory_entry_64 == 18)
    {
      memory_entry_64 = mach_make_memory_entry_64(*v5, &size, address, 67, &object_handle, 0);
    }

    if (memory_entry_64)
    {
      break;
    }

    if (size >= isa)
    {
      goto LABEL_18;
    }

    v10 = mach_port_deallocate(*v5, object_handle);
    if (v10)
    {
      _dispatch_bug(731, v10);
    }

    v3 = 1;
    if (v6)
    {
      object_handle = 0;
      goto LABEL_19;
    }
  }

  _dispatch_bug(726, memory_entry_64);
  object_handle = 0;
LABEL_18:
  if (v6)
  {
LABEL_19:
    v7 = mach_vm_deallocate(*v5, address, isa);
    if (!v7)
    {
      return object_handle;
    }

    v11 = 740;
LABEL_16:
    _dispatch_bug(v11, v7);
  }

  return object_handle;
}

NSObject *dispatch_data_create_with_transform(NSObject *a1, uint64_t *a2, void *a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *a2;
  if (*a2 == 16)
  {
    v14 = 0;
    v7 = _dispatch_data_subrange_map(a1, &v14, 0, 2uLL);
    if (!v7)
    {
      return 0;
    }

    v8 = *v14;
    if (v8 == 65534)
    {
      v9 = &_dispatch_data_format_type_utf16be;
    }

    else
    {
      v9 = &_dispatch_data_format_type_utf8;
    }

    dispatch_release(v7);
    if (v8 == 65279)
    {
      v4 = &_dispatch_data_format_type_utf16le;
    }

    else
    {
      v4 = v9;
    }

    v6 = *v4;
  }

  if ((v6 & ~a3[1]) != 0 || (*a3 & ~v4[2]) != 0)
  {
    return 0;
  }

  if (dispatch_data_get_size(v5))
  {
    v11 = v4[3];
    if (v11)
    {
      v5 = v11(v5);
      if (!v5)
      {
        return v5;
      }
    }

    else
    {
      dispatch_retain(v5);
    }

    v12 = a3[4];
    if (v12)
    {
      v13 = v12(v5);
    }

    else
    {
      dispatch_retain(v5);
      v13 = v5;
    }

    dispatch_release(v5);
    return v13;
  }

  return v5;
}

uint64_t _dispatch_transform_from_base64(NSObject *a1)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v11[3] = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v10[3] = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v9[3] = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = &_dispatch_data_empty;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___dispatch_transform_from_base64_block_invoke;
  v4[3] = &unk_1E7FB1E80;
  v4[4] = v10;
  v4[5] = v9;
  v4[6] = v11;
  v4[7] = &v5;
  v1 = dispatch_data_apply(a1, v4);
  v2 = v6[3];
  if (!v1)
  {
    dispatch_release(v6[3]);
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v11, 8);
  return v2;
}

dispatch_data_t _dispatch_transform_to_base64(NSObject *a1)
{
  size = dispatch_data_get_size(a1);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v12[3] = 0;
  if (size == 3 * (size / 3))
  {
    v3 = size / 3;
  }

  else
  {
    v3 = size / 3 + 1;
  }

  if (v3 >> 62 || (v4 = size, v5 = 4 * v3, (v6 = malloc_type_malloc(4 * v3, 0x100004077774924uLL)) == 0))
  {
    v8 = 0;
  }

  else
  {
    v7 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2000000000;
    v11[3] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = ___dispatch_transform_to_base64_block_invoke;
    v10[3] = &unk_1E7FB1EA8;
    v10[4] = v12;
    v10[5] = v11;
    v10[6] = a1;
    v10[7] = v4;
    if (dispatch_data_apply(a1, v10))
    {
      v8 = dispatch_data_create(v7, v5, 0, &__block_literal_global);
    }

    else
    {
      free(v7);
      v8 = 0;
    }

    _Block_object_dispose(v11, 8);
  }

  _Block_object_dispose(v12, 8);
  return v8;
}

dispatch_data_t _dispatch_transform_to_utf8_without_bom(NSObject *a1)
{
  v1 = a1;
  v7 = 0;
  v2 = _dispatch_data_subrange_map(a1, &v7, 0, 3uLL);
  if (v2 && (*v7 == 48111 ? (v3 = v7[2] == 191) : (v3 = 0), v3 ? (v4 = 0) : (v4 = 1), dispatch_release(v2), !v4))
  {
    size = dispatch_data_get_size(v1);
    return dispatch_data_create_subrange(v1, 3uLL, size - 3);
  }

  else
  {
    dispatch_retain(v1);
  }

  return v1;
}

dispatch_data_t _dispatch_data_subrange_map(NSObject *a1, const void **a2, size_t offset, size_t length)
{
  subrange = dispatch_data_create_subrange(a1, offset, length);
  if (dispatch_data_get_size(subrange) == length)
  {
    map = dispatch_data_create_map(subrange, a2, 0);
  }

  else
  {
    map = 0;
  }

  dispatch_release(subrange);
  return map;
}

uint64_t _dispatch_transform_from_base32_with_table(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v13[3] = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v12[3] = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v11[3] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = &_dispatch_data_empty;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___dispatch_transform_from_base32_with_table_block_invoke;
  v6[3] = &unk_1E7FB1E30;
  v6[8] = a3;
  v6[9] = a2;
  v6[4] = v12;
  v6[5] = v11;
  v6[6] = v13;
  v6[7] = &v7;
  v3 = dispatch_data_apply(a1, v6);
  v4 = v8[3];
  if (!v3)
  {
    dispatch_release(v8[3]);
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);
  return v4;
}

uint64_t ___dispatch_transform_from_base32_with_table_block_invoke(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v5 = a5;
  v8 = a5 >> 3;
  if ((a5 & 7) != 0)
  {
    ++v8;
  }

  result = malloc_type_malloc(5 * v8, 0x100004077774924uLL);
  if (result)
  {
    v10 = result;
    if (v5)
    {
      v10 = result;
      do
      {
        v12 = *a4++;
        v11 = v12;
        v13 = (1 << v12) & 0x100000600;
        if (v12 > 0x20 || v13 == 0)
        {
          if (a1[8] <= v11 || (v15 = a1[9], *(v15 + v11) == 255))
          {
            free(result);
            return 0;
          }

          ++*(*(a1[4] + 8) + 24);
          v16 = *(v15 + v11);
          if (v16 == 254)
          {
            LOBYTE(v16) = 0;
            ++*(*(a1[5] + 8) + 24);
          }

          *(*(a1[6] + 8) + 24) *= 32;
          *(*(a1[6] + 8) + 24) += v16;
          if ((*(*(a1[4] + 8) + 24) & 7) == 0)
          {
            *v10 = *(*(a1[6] + 8) + 28);
            v10[1] = BYTE3(*(*(a1[6] + 8) + 24));
            v10[2] = BYTE2(*(*(a1[6] + 8) + 24));
            v10[3] = BYTE1(*(*(a1[6] + 8) + 24));
            v10[4] = *(*(a1[6] + 8) + 24);
            v10 += 5;
          }
        }

        --v5;
      }

      while (v5);
    }

    v17 = &v10[-result];
    v18 = *(*(a1[5] + 8) + 24);
    v19 = (v17 - 3);
    v20 = v17 - 4;
    if (v18 != 6)
    {
      v20 = v17;
    }

    if (v18 != 4)
    {
      v19 = v20;
    }

    v21 = v17 - 1;
    if (v18 == 3)
    {
      v17 -= 2;
    }

    if (v18 == 1)
    {
      v17 = v21;
    }

    if (v18 <= 3)
    {
      v22 = v17;
    }

    else
    {
      v22 = v19;
    }

    v23 = dispatch_data_create(result, v22, 0, &__block_literal_global);
    concat = dispatch_data_create_concat(*(*(a1[7] + 8) + 24), v23);
    dispatch_release(v23);
    dispatch_release(*(*(a1[7] + 8) + 24));
    *(*(a1[7] + 8) + 24) = concat;
    return 1;
  }

  return result;
}

dispatch_data_t _dispatch_transform_to_base32_with_table(NSObject *a1, uint64_t a2)
{
  size = dispatch_data_get_size(a1);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v14[3] = 0;
  if (size == 5 * (size / 5))
  {
    v5 = size / 5;
  }

  else
  {
    v5 = size / 5 + 1;
  }

  if (v5 >> 61 || (v6 = size, v7 = 8 * v5, (v8 = malloc_type_malloc(8 * v5, 0x100004077774924uLL)) == 0))
  {
    v10 = 0;
  }

  else
  {
    v9 = v8;
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2000000000;
    v13[3] = v8;
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = ___dispatch_transform_to_base32_with_table_block_invoke;
    applier[3] = &unk_1E7FB1E58;
    applier[4] = v14;
    applier[5] = v13;
    applier[6] = a1;
    applier[7] = a2;
    applier[8] = v6;
    if (dispatch_data_apply(a1, applier))
    {
      v10 = dispatch_data_create(v9, v7, 0, &__block_literal_global);
    }

    else
    {
      free(v9);
      v10 = 0;
    }

    _Block_object_dispose(v13, 8);
  }

  _Block_object_dispose(v14, 8);
  return v10;
}

BOOL ___dispatch_transform_to_base32_with_table_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *(a4 + v10);
      v12 = *(*(*(a1 + 32) + 8) + 24);
      if (0xCCCCCCCCCCCCCCCDLL * v12 < 0x3333333333333334)
      {
        v13 = 0;
      }

      else if (v10)
      {
        v13 = *(a4 + v10 - 1);
      }

      else
      {
        v50 = 0;
        v14 = _dispatch_data_subrange_map(*(a1 + 48), &v50, a3 - 1, 1uLL);
        if (!v14)
        {
          return v9;
        }

        v13 = *v50;
        dispatch_release(v14);
        v12 = *(*(*(a1 + 32) + 8) + 24);
      }

      v15 = v12 % 5;
      v16 = *(a1 + 56);
      if (v15 > 1)
      {
        break;
      }

      if (v15)
      {
        v25 = *(v16 + ((4 * (v13 & 7u)) | (v11 >> 6)));
        v26 = *(*(a1 + 40) + 8);
        v27 = *(v26 + 24);
        *(v26 + 24) = v27 + 1;
        *v27 = v25;
        v16 = *(a1 + 56);
        v20 = (v11 >> 1) & 0x1F;
LABEL_18:
        v21 = (v16 + v20);
        goto LABEL_19;
      }

      v21 = (v16 + (v11 >> 3));
LABEL_19:
      v28 = *v21;
      v29 = *(*(a1 + 40) + 8);
      v30 = *(v29 + 24);
      *(v29 + 24) = v30 + 1;
      *v30 = v28;
      ++v10;
      ++*(*(*(a1 + 32) + 8) + 24);
      v9 = v10 >= a5;
      if (a5 == v10)
      {
        goto LABEL_20;
      }
    }

    if (v15 == 2)
    {
      v20 = (v11 >> 4) & 0xFFFFFFEF | (16 * (v13 & 1));
    }

    else if (v15 == 3)
    {
      v17 = *(v16 + ((v11 >> 7) & 0xFFFFFFE1 | (2 * (v13 & 0xF))));
      v18 = *(*(a1 + 40) + 8);
      v19 = *(v18 + 24);
      *(v18 + 24) = v19 + 1;
      *v19 = v17;
      v16 = *(a1 + 56);
      v20 = (v11 >> 2) & 0x1F;
    }

    else
    {
      v22 = *(v16 + ((v11 >> 5) & 0xFFFFFFE7 | (8 * (v13 & 3))));
      v23 = *(*(a1 + 40) + 8);
      v24 = *(v23 + 24);
      *(v23 + 24) = v24 + 1;
      *v24 = v22;
      v16 = *(a1 + 56);
      v20 = v11 & 0x1F;
    }

    goto LABEL_18;
  }

LABEL_20:
  if (a5 + a3 == *(a1 + 64))
  {
    v31 = *(*(*(a1 + 32) + 8) + 24);
    v32 = ~(5 * (v31 / 5)) + v31;
    if (v32 <= 3)
    {
      v33 = *(*(a1 + 56) + ((*(a4 + a5 - 1) << qword_1BB5817F8[v32]) & qword_1BB581818[v32]));
      v34 = *(*(a1 + 40) + 8);
      v35 = *(v34 + 24);
      *(v34 + 24) = v35 + 1;
      *v35 = v33;
    }

    v36 = *(*(*(a1 + 32) + 8) + 24) % 5uLL;
    v9 = 1;
    if (v36 > 2)
    {
      if (v36 != 3)
      {
        if (v36 != 4)
        {
          return v9;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (v36 == 1)
      {
        v37 = *(*(a1 + 40) + 8);
        v38 = *(v37 + 24);
        *(v37 + 24) = v38 + 1;
        *v38 = 61;
        v39 = *(*(a1 + 40) + 8);
        v40 = *(v39 + 24);
        *(v39 + 24) = v40 + 1;
        *v40 = 61;
      }

      else if (v36 != 2)
      {
        return v9;
      }

      v41 = *(*(a1 + 40) + 8);
      v42 = *(v41 + 24);
      *(v41 + 24) = v42 + 1;
      *v42 = 61;
    }

    v43 = *(*(a1 + 40) + 8);
    v44 = *(v43 + 24);
    *(v43 + 24) = v44 + 1;
    *v44 = 61;
    v45 = *(*(a1 + 40) + 8);
    v46 = *(v45 + 24);
    *(v45 + 24) = v46 + 1;
    *v46 = 61;
LABEL_34:
    v47 = *(*(a1 + 40) + 8);
    v48 = *(v47 + 24);
    *(v47 + 24) = v48 + 1;
    *v48 = 61;
    return v9;
  }

  return 1;
}

uint64_t ___dispatch_transform_from_base64_block_invoke(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v5 = a5;
  v8 = a5 >> 2;
  if ((a5 & 3) != 0)
  {
    ++v8;
  }

  result = malloc_type_malloc(3 * v8, 0x100004077774924uLL);
  if (result)
  {
    v10 = result;
    if (!v5)
    {
LABEL_18:
      v16 = dispatch_data_create(result, &v10[-result - *(*(a1[5] + 8) + 24)], 0, &__block_literal_global);
      concat = dispatch_data_create_concat(*(*(a1[7] + 8) + 24), v16);
      dispatch_release(v16);
      dispatch_release(*(*(a1[7] + 8) + 24));
      *(*(a1[7] + 8) + 24) = concat;
      return 1;
    }

    v10 = result;
    while (1)
    {
      v12 = *a4++;
      v11 = v12;
      v13 = (1 << v12) & 0x100000600;
      if (v12 > 0x20 || v13 == 0)
      {
        if (v11 > 0x7A || (v15 = base64_decode_table[v11], v15 == 255))
        {
          free(result);
          return 0;
        }

        ++*(*(a1[4] + 8) + 24);
        if (v11 == 61)
        {
          LOBYTE(v15) = 0;
          ++*(*(a1[5] + 8) + 24);
        }

        *(*(a1[6] + 8) + 24) <<= 6;
        *(*(a1[6] + 8) + 24) += v15;
        if ((*(*(a1[4] + 8) + 24) & 3) == 0)
        {
          *v10 = BYTE2(*(*(a1[6] + 8) + 24));
          v10[1] = BYTE1(*(*(a1[6] + 8) + 24));
          v10[2] = *(*(a1[6] + 8) + 24);
          v10 += 3;
        }
      }

      if (!--v5)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

BOOL ___dispatch_transform_to_base64_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v8 = 0;
    v9 = 0;
    v10 = a3 - 1;
    do
    {
      v11 = *(a4 + v9);
      v12 = *(*(*(a1 + 32) + 8) + 24);
      if (0xAAAAAAAAAAAAAAABLL * v12 < 0x5555555555555556)
      {
        v13 = 0;
      }

      else if (v9)
      {
        v13 = *(a4 + v9 - 1);
      }

      else
      {
        v38 = 0;
        v14 = _dispatch_data_subrange_map(*(a1 + 48), &v38, v10, 1uLL);
        if (!v14)
        {
          return v8;
        }

        v13 = *v38;
        dispatch_release(v14);
        v12 = *(*(*(a1 + 32) + 8) + 24);
      }

      v15 = v12 % 3;
      if (v15 == 2)
      {
        v17 = base64_encode_table[(4 * (v13 & 0xFu)) | (v11 >> 6)];
        v18 = *(*(a1 + 40) + 8);
        v19 = *(v18 + 24);
        *(v18 + 24) = v19 + 1;
        *v19 = v17;
        v16 = v11 & 0x3F;
      }

      else if (v15 == 1)
      {
        v16 = (v11 >> 4) & 0xFFFFFFCF | (16 * (v13 & 3));
      }

      else
      {
        v16 = v11 >> 2;
      }

      v20 = base64_encode_table[v16];
      v21 = *(*(a1 + 40) + 8);
      v22 = *(v21 + 24);
      *(v21 + 24) = v22 + 1;
      *v22 = v20;
      ++v9;
      ++*(*(*(a1 + 32) + 8) + 24);
      v8 = v9 >= a5;
    }

    while (a5 != v9);
  }

  if (a5 + a3 == *(a1 + 56))
  {
    v23 = *(*(*(a1 + 32) + 8) + 24) % 3uLL;
    if (v23 == 2)
    {
      v31 = base64_encode_table[4 * (*(a4 + a5 - 1) & 0xF)];
      v32 = *(*(a1 + 40) + 8);
      v33 = *(v32 + 24);
      *(v32 + 24) = v33 + 1;
      *v33 = v31;
      v34 = *(*(a1 + 40) + 8);
      v35 = *(v34 + 24);
      *(v34 + 24) = v35 + 1;
      *v35 = 61;
    }

    else if (v23 == 1)
    {
      v24 = base64_encode_table[16 * (*(a4 + a5 - 1) & 3)];
      v25 = *(*(a1 + 40) + 8);
      v26 = *(v25 + 24);
      *(v25 + 24) = v26 + 1;
      *v26 = v24;
      v27 = *(*(a1 + 40) + 8);
      v28 = *(v27 + 24);
      *(v27 + 24) = v28 + 1;
      *v28 = 61;
      v29 = *(*(a1 + 40) + 8);
      v30 = *(v29 + 24);
      *(v29 + 24) = v30 + 1;
      *v30 = 61;
    }
  }

  return 1;
}

uint64_t _dispatch_transform_from_utf16(NSObject *a1, int a2)
{
  v11[2] = 0x2000000000;
  v8 = 0x3800000000;
  v9 = xmmword_1E7FB1EF0;
  v10 = unk_1E7FB1F00;
  v11[0] = 0;
  v11[1] = v11;
  v11[3] = 0;
  v6 = 0;
  v7 = &v6;
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 0x40000000;
  applier[2] = ___dispatch_transform_from_utf16_block_invoke;
  applier[3] = &unk_1E7FB1ED0;
  applier[4] = &v6;
  applier[5] = v11;
  applier[6] = a1;
  v5 = a2;
  if (dispatch_data_apply(a1, applier))
  {
    v2 = v7[3];
  }

  else
  {
    _dispatch_transform_buffer_new((v7 + 3), 0, 0);
    dispatch_release(v7[3]);
    v2 = 0;
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v11, 8);
  return v2;
}

size_t ___dispatch_transform_from_utf16_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  if (!a3)
  {
    v9 = a5 == 3 * (a5 / 3) ? a5 / 3 : a5 / 3 + 1;
    result = _dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 2 * v9, 0);
    if (!result)
    {
      return result;
    }
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 24);
  if (v12 >= v5)
  {
    *(v11 + 24) = v12 - v5;
    return 1;
  }

  if (v12)
  {
    a4 += v12;
    v5 -= v12;
    *(v11 + 24) = 0;
  }

  v13 = (v5 & 1) + (v5 >> 1);
  if (!v13)
  {
LABEL_56:
    _dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 0, 0);
    return 1;
  }

  v14 = 0;
  while (1)
  {
    if ((v5 & 1) != 0 && v14 == v13 - 1)
    {
      v33 = 0;
      result = _dispatch_data_subrange_map(*(a1 + 48), &v33, a3 + 2 * (v13 - 1), 2uLL);
      if (!result)
      {
        return result;
      }

      v15 = bswap32(*v33) >> 16;
      LOWORD(v16) = *(a1 + 56) == 1 ? *v33 : v15;
      dispatch_release(result);
      ++*(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      v17 = bswap32(*(a4 + 2 * v14)) >> 16;
      LOWORD(v16) = *(a1 + 56) == 1 ? *(a4 + 2 * v14) : v17;
    }

    if (!(v14 | a3) && v16 == 65534)
    {
      return 0;
    }

    v16 = v16;
    if (v14 | a3 || v16 != 65279)
    {
      if ((v16 & 0xFC00) == 0xD800)
      {
        if (++v14 >= v13)
        {
          v33 = 0;
          result = _dispatch_data_subrange_map(*(a1 + 48), &v33, a3 + 2 * v14, 2uLL);
          if (!result)
          {
            return result;
          }

          v20 = bswap32(*v33) >> 16;
          if (*(a1 + 56) == 1)
          {
            v19 = *v33;
          }

          else
          {
            v19 = v20;
          }

          dispatch_release(result);
          *(*(*(a1 + 40) + 8) + 24) += 2;
        }

        else
        {
          v18 = bswap32(*(a4 + 2 * v14)) >> 16;
          if (*(a1 + 56) == 1)
          {
            v19 = *(a4 + 2 * v14);
          }

          else
          {
            v19 = v18;
          }
        }

        if (v19 >> 10 != 55)
        {
          return 0;
        }

        v16 = (v16 << 10) + (v19 & 0x3FF) - 56557568;
      }

      else if ((v16 & 0xFC00) == 0xDC00)
      {
        return 0;
      }

      if ((v13 - v14) < 0)
      {
        return 0;
      }

      v21 = 2 * (v13 - v14);
      if (v16 > 0x7F)
      {
        if (v16 > 0x7FF)
        {
          v23 = *(*(a1 + 32) + 8) + 24;
          if (HIWORD(v16))
          {
            result = _dispatch_transform_buffer_new(v23, 4uLL, v21);
            if (!result)
            {
              return result;
            }

            v25 = *(*(a1 + 32) + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = v26 + 1;
            *v26 = (v16 >> 18) | 0xF0;
            v24 = (v16 >> 12) & 0x3F | 0x80;
          }

          else
          {
            result = _dispatch_transform_buffer_new(v23, 3uLL, v21);
            if (!result)
            {
              return result;
            }

            v24 = (v16 >> 12) | 0xE0;
          }

          v27 = *(*(a1 + 32) + 8);
          v28 = *(v27 + 40);
          *(v27 + 40) = v28 + 1;
          *v28 = v24;
          v22 = (v16 >> 6) & 0x3F | 0x80;
        }

        else
        {
          result = _dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 2uLL, v21);
          if (!result)
          {
            return result;
          }

          v22 = (v16 >> 6) | 0xC0;
        }

        v29 = *(*(a1 + 32) + 8);
        v30 = *(v29 + 40);
        *(v29 + 40) = v30 + 1;
        *v30 = v22;
        LOBYTE(v16) = v16 & 0x3F | 0x80;
      }

      else
      {
        result = _dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 1uLL, v21);
        if (!result)
        {
          return result;
        }
      }

      v31 = *(*(a1 + 32) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v32 + 1;
      *v32 = v16;
      ++v14;
    }

    else
    {
      v14 = 1;
    }

    if (v14 >= v13)
    {
      goto LABEL_56;
    }
  }
}

size_t _dispatch_transform_buffer_new(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (a2 && v6 + *(a1 + 24) - *(a1 + 16) >= a2)
  {
    return 1;
  }

  if (v6)
  {
    v7 = *(a1 + 16);
    if (v7 <= v6)
    {
      free(v6);
    }

    else
    {
      v8 = dispatch_data_create(v6, v7 - v6, 0, &__block_literal_global);
      concat = dispatch_data_create_concat(*a1, v8);
      dispatch_release(v8);
      dispatch_release(*a1);
      *a1 = concat;
    }
  }

  *(a1 + 8) = 0;
  result = a3 + a2;
  *(a1 + 24) = a3 + a2;
  if (!(a3 + a2))
  {
    goto LABEL_11;
  }

  if (result > 0x6400000)
  {
    return 0;
  }

  result = malloc_type_malloc(result, 0x100004077774924uLL);
  *(a1 + 8) = result;
  if (result)
  {
LABEL_11:
    *(a1 + 16) = result;
    return 1;
  }

  return result;
}

uint64_t _dispatch_transform_to_utf16(NSObject *a1, int a2)
{
  v11[2] = 0x2000000000;
  v8 = 0x3800000000;
  v9 = xmmword_1E7FB1EF0;
  v10 = unk_1E7FB1F00;
  v11[0] = 0;
  v11[1] = v11;
  v11[3] = 0;
  v6 = 0;
  v7 = &v6;
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 0x40000000;
  applier[2] = ___dispatch_transform_to_utf16_block_invoke;
  applier[3] = &unk_1E7FB1F18;
  v5 = a2;
  applier[4] = &v6;
  applier[5] = v11;
  applier[6] = a1;
  if (dispatch_data_apply(a1, applier))
  {
    v2 = v7[3];
  }

  else
  {
    _dispatch_transform_buffer_new((v7 + 3), 0, 0);
    dispatch_release(v7[3]);
    v2 = 0;
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v11, 8);
  return v2;
}

size_t ___dispatch_transform_to_utf16_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, size_t a5)
{
  v5 = a5;
  if (!a3)
  {
    result = 0;
    if ((a5 & 0x8000000000000000) != 0)
    {
      return result;
    }

    if (2 * a5 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return result;
    }

    result = _dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 2 * a5 + 2, 0);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 56) == 1)
    {
      v27 = -257;
    }

    else
    {
      v27 = -2;
    }

    v28 = *(*(a1 + 32) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v29 + 1;
    *v29 = v27;
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 24);
  if (v10 >= v5)
  {
    *(v9 + 24) = v10 - v5;
    return 1;
  }

  if (!v10)
  {
    goto LABEL_6;
  }

  *(v9 + 24) = 0;
  v5 -= v10;
  if (!v5)
  {
LABEL_35:
    _dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 0, 0);
    return 1;
  }

  a4 += v10;
LABEL_6:
  v11 = 0;
  while (1)
  {
    v12 = *a4;
    if (v12 < 0)
    {
      if ((v12 & 0xE0) == 0xC0)
      {
        v13 = 2;
      }

      else if ((v12 & 0xF0) == 0xE0)
      {
        v13 = 3;
      }

      else
      {
        if ((v12 & 0xF8) != 0xF0)
        {
          return 0;
        }

        v13 = 4;
      }
    }

    else
    {
      v13 = 1;
    }

    if (v13 + v11 <= v5)
    {
      utf8_sequence = _dispatch_transform_read_utf8_sequence(a4);
      v11 += v13;
    }

    else
    {
      v30 = 0;
      result = _dispatch_data_subrange_map(*(a1 + 48), &v30, v11 + a3, v13);
      if (!result)
      {
        return result;
      }

      v15 = result;
      utf8_sequence = _dispatch_transform_read_utf8_sequence(v30);
      *(*(*(a1 + 40) + 8) + 24) += v11 - v5 + v13;
      dispatch_release(v15);
      v11 = v5;
    }

    if ((v5 - v11) < 0)
    {
      return 0;
    }

    if (utf8_sequence != 65279 || v11 + a3 != 3)
    {
      if (utf8_sequence - 55296 < 0x7FF)
      {
        return 0;
      }

      v17 = 2 * (v5 - v11);
      v18 = *(*(a1 + 32) + 8) + 24;
      if (utf8_sequence < 0x10000)
      {
        result = _dispatch_transform_buffer_new(v18, 2uLL, v17);
        if (!result)
        {
          return result;
        }

        v23 = utf8_sequence;
      }

      else
      {
        result = _dispatch_transform_buffer_new(v18, 4uLL, v17);
        if (!result)
        {
          return result;
        }

        v19 = bswap32(((utf8_sequence + 983040) >> 10) & 0x3FF | 0xFFFFD800) >> 16;
        if (*(a1 + 56) == 1)
        {
          v20 = ((utf8_sequence + 983040) >> 10) & 0x3FF | 0xD800;
        }

        else
        {
          v20 = v19;
        }

        v21 = *(*(a1 + 32) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v22 + 1;
        *v22 = v20;
        v23 = utf8_sequence & 0x3FF | 0xFFFFDC00;
      }

      v24 = bswap32(v23) >> 16;
      if (*(a1 + 56) != 1)
      {
        LOWORD(v23) = v24;
      }

      v25 = *(*(a1 + 32) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v26 + 1;
      *v26 = v23;
    }

    a4 += v13;
    if (v5 <= v11)
    {
      goto LABEL_35;
    }
  }
}

uint64_t _dispatch_transform_read_utf8_sequence(unsigned __int8 *a1)
{
  v2 = *a1;
  result = *a1;
  if (v2 < 0)
  {
    v4 = result & 0xE0;
    v5 = (result & 0x1F) << 6;
    v6 = result & 0xF0;
    v7 = (result & 0xF) << 6;
    v8 = (result & 7) << 6;
    if ((result & 0xF8) == 0xF0)
    {
      v9 = 3;
    }

    else
    {
      v9 = 255;
    }

    if ((result & 0xF8) != 0xF0)
    {
      v8 = 0;
    }

    v10 = v6 == 224;
    if (v6 == 224)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9;
    }

    if (!v10)
    {
      v7 = v8;
    }

    v12 = v4 == 192;
    if (v4 == 192)
    {
      v13 = 1;
    }

    else
    {
      v13 = v11;
    }

    if (!v12)
    {
      v5 = v7;
    }

    v14 = (a1 + 1);
    do
    {
      v15 = *v14++;
      result = v5 | v15 & 0x3Fu;
      --v13;
      v5 = result << 6;
    }

    while (v13);
  }

  return result;
}

uint64_t _dispatch_time_init()
{
  info = 0;
  v0 = mach_timebase_info(&info);
  if (v0)
  {
    _dispatch_bug(86, v0);
  }

  result = info.numer;
  if (info.numer != 125 || info.denom != 3)
  {
    return _dispatch_time_init_cold_1(info.numer, info.denom);
  }

  return result;
}

dispatch_time_t dispatch_time(dispatch_time_t when, int64_t delta)
{
  if (when > -2)
  {
    if (when == -1)
    {
      return when;
    }

    if (when)
    {
      goto LABEL_8;
    }

    when = mach_absolute_time();
    v3 = 0;
LABEL_11:
    if (when == -1)
    {
      return when;
    }

    goto LABEL_12;
  }

  if (when == 0x8000000000000000)
  {
    v3 = 1;
    when = mach_continuous_time();
    goto LABEL_11;
  }

  if (when == -2)
  {
    when = clock_gettime_nsec_np(_CLOCK_REALTIME);
    v3 = 2;
    goto LABEL_11;
  }

LABEL_8:
  if ((when & 0x8000000000000000) != 0)
  {
    if ((when & 0x4000000000000000) == 0)
    {
      when &= 0x3FFFFFFFFFFFFFFFuLL;
      v3 = 1;
      goto LABEL_21;
    }

    when = -when;
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if (when >> 62)
  {
    return -1;
  }

LABEL_12:
  if (v3 == 2)
  {
    v4 = when + delta;
    if (delta < 0)
    {
      if (v4 < 1)
      {
        v4 = 2;
        return -v4;
      }

      if (v4 <= 0x3FFFFFFFFFFFFFFELL)
      {
        return -v4;
      }
    }

    else if ((v4 - 0x3FFFFFFFFFFFFFFFLL) >= 0xC000000000000002)
    {
      return -v4;
    }

    return -1;
  }

LABEL_21:
  if ((delta & 0x8000000000000000) == 0)
  {
    if (_dispatch_host_time_nano2mach)
    {
      v11 = when;
      delta = _dispatch_host_time_nano2mach(delta);
      when = v11;
    }

    else if (delta && delta != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (delta > 0x5555555555555554)
      {
        delta = 3 * (delta / 0x7DuLL);
      }

      else
      {
        v5 = ((3 * delta) * 0x624DD2F1A9FBE77uLL) >> 64;
        delta = (v5 + ((3 * delta - v5) >> 1)) >> 6;
      }
    }

    v6 = delta + when;
    if (delta + when - 0x3FFFFFFFFFFFFFFFLL < 0xC000000000000002)
    {
      return -1;
    }

LABEL_37:
    if (v3 == 1)
    {
      return v6 | 0x8000000000000000;
    }

    else
    {
      return v6;
    }
  }

  v7 = -delta;
  if (_dispatch_host_time_nano2mach)
  {
    v10 = when;
    v9 = _dispatch_host_time_nano2mach(v7);
    when = v10;
  }

  else if (v7 > 0x7FFFFFFFFFFFFFFELL)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if (v7 > 0x5555555555555554)
  {
    v9 = 3 * (v7 / 0x7D);
  }

  else
  {
    v8 = ((-3 * delta) * 0x624DD2F1A9FBE77uLL) >> 64;
    v9 = (v8 + ((-3 * delta - v8) >> 1)) >> 6;
  }

  v6 = when - v9;
  if (v6 > 0)
  {
    if (v6 > 0x3FFFFFFFFFFFFFFELL)
    {
      return -1;
    }

    goto LABEL_37;
  }

  if (v3 == 1)
  {
    return 0x8000000000000001;
  }

  else
  {
    return 1;
  }
}

dispatch_time_t dispatch_walltime(const timespec *when, int64_t delta)
{
  if (when)
  {
    v3 = when->tv_nsec + 1000000000 * when->tv_sec;
  }

  else
  {
    v3 = clock_gettime_nsec_np(_CLOCK_REALTIME);
  }

  v4 = v3 + delta;
  v5 = -2;
  if (delta >= 0)
  {
    v5 = -1;
  }

  if (v4 >= 2)
  {
    return -v4;
  }

  else
  {
    return v5;
  }
}

void *_dispatch_continuation_alloc_from_heap()
{
  if (_dispatch_continuation_alloc_init_pred != -1)
  {
    _dispatch_continuation_alloc_from_heap_cold_1();
  }

  if (_dispatch_use_dispatch_alloc == 1)
  {

    return _dispatch_alloc_continuation_alloc();
  }

  else
  {
    while (1)
    {
      result = malloc_type_calloc(1uLL, 0x40uLL, 0x6C65818FuLL);
      if (result)
      {
        break;
      }

      _dispatch_temporary_resource_shortage();
    }
  }

  return result;
}

unint64_t _dispatch_alloc_continuation_alloc()
{
  if (!_dispatch_main_heap)
  {
    goto LABEL_11;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
  v1 = _dispatch_main_heap;
  v2 = *(_dispatch_main_heap + ((StatusReg & 0xFFF) << 20) + 8);
  if (v2)
  {
    v3 = 0;
    while (2)
    {
      v4 = (v2 + 8 * v3);
      v5 = *v4;
      while (v5 != -1)
      {
        v6 = __clz(__rbit64(~v5));
        v7 = v5;
        atomic_compare_exchange_strong_explicit(v4, &v7, (1 << v6) | v5, memory_order_relaxed, memory_order_relaxed);
        v8 = v7 == v5;
        v5 = v7;
        if (v8)
        {
          v10 = (v4 & 0xFFFFF) - 64;
          v11 = v10 >> 3;
          v12 = (v10 >> 9) & 0x3FFFFFF;
          result = (((v4 & 0xFFFFFFFFFFF00000) + (v12 << 18)) & 0xFFFFFFFFFFFC0FFFLL | ((v11 & 0x3F) << 12)) + (v6 << 6) + 0x4000;
          v13 = v4 & 0xFFFFFFFFFFF00000 | 0x10;
          v14 = 1 << v11;
          v15 = *(v13 + 8 * v12);
          v16 = (v13 + 8 * v12);
          do
          {
            if (*v4 != -1)
            {
              break;
            }

            v17 = v15;
            atomic_compare_exchange_strong_explicit(v16, &v17, v15 | v14, memory_order_relaxed, memory_order_relaxed);
            v8 = v17 == v15;
            v15 = v17;
          }

          while (!v8);
          return result;
        }
      }

      if (++v3 != 4)
      {
        continue;
      }

      break;
    }

    v1 = _dispatch_main_heap;
  }

  result = _dispatch_alloc_continuation_from_heap(v1);
  if (!result)
  {
LABEL_11:

    return _dispatch_alloc_continuation_from_heap_slow();
  }

  return result;
}

void _dispatch_continuation_free_to_heap(uint64_t a1)
{
  if (_dispatch_use_dispatch_alloc == 1)
  {
    _dispatch_alloc_continuation_free(a1);
  }

  else
  {
    free(a1);
  }
}

void _dispatch_alloc_continuation_free(uint64_t a1)
{
  *a1 = 0;
  v1 = a1 - (a1 & 0xFFFFFFFFFFF00000);
  v2 = (v1 - 0x4000) >> 6;
  v3 = ((v1 - 0x4000) >> 18) & 0xFFFFF;
  v4 = (a1 & 0xFFFFFFFFFFF00000) + 8 * v3 + 16;
  v5 = (a1 & 0xFFFFFFFFFFF00000) + (v3 << 9) + 8 * ((v2 >> 6) & 0x3F) + 64;
  v6 = (v1 - 1664) >> 6;
  v7 = v6 >> 6;
  if ((a1 & 0xFC000) != 0)
  {
    v8 = v4;
  }

  else
  {
    v5 = (a1 & 0xFFFFFFFFFFF00000) + 8 * v7 + 1600;
    v8 = 0;
  }

  if ((a1 & 0xFC000) != 0)
  {
    LOBYTE(v7) = (v2 >> 6) & 0x3F;
  }

  else
  {
    LOBYTE(v2) = v6;
  }

  v9 = 1 << v2;
  if ((v9 & *v5) != 0)
  {
    v5 = atomic_fetch_and_explicit(v5, ~v9, memory_order_release);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *v5;
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Corruption: failed to clear bit exclusively";
    qword_1EBC5B9B0 = v8;
    __break(1u);
  }

  atomic_fetch_and_explicit(v8, ~(1 << v7), memory_order_release);
  if ((v5 & ~v9) == 0)
  {
    _dispatch_alloc_maybe_madvise_page(a1);
  }
}

uint64_t _dispatch_continuation_alloc_init()
{
  v0 = malloc_engaged_nano() == 0;
  v1 = getenv("LIBDISPATCH_CONTINUATION_ALLOCATOR");
  if (v1)
  {
    v0 = atoi(v1) != 0;
  }

  result = sub_1BB57FF98();
  _dispatch_use_dispatch_alloc = (result ^ 1) & v0;
  return result;
}

uint64_t _dispatch_alloc_continuation_from_heap(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + ((_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) & 0xFFF) << 20);
  v3 = v2 + 1600;
  while (2)
  {
    v4 = *(v3 + 8 * v1);
    while (v4 != -1)
    {
      v5 = __clz(__rbit64(~v4));
      v6 = v4;
      atomic_compare_exchange_strong_explicit((v3 + 8 * v1), &v6, (1 << v5) | v4, memory_order_relaxed, memory_order_relaxed);
      v7 = v6 == v4;
      v4 = v6;
      if (v7)
      {
        v9 = (v1 & 0x3FFFFFF) << 6;
        return v2 + ((v9 | v5) << 6) + 1664;
      }
    }

    if (++v1 != 3)
    {
      continue;
    }

    break;
  }

  v8 = *(v2 + 1624);
  v9 = 192;
  while (v8 != -1)
  {
    v5 = __clz(__rbit64(~v8));
    if (v5 > 0x25)
    {
      break;
    }

    v10 = v8;
    atomic_compare_exchange_strong_explicit((v2 + 1624), &v10, (1 << v5) | v8, memory_order_relaxed, memory_order_relaxed);
    v7 = v10 == v8;
    v8 = v10;
    if (v7)
    {
      return v2 + ((v9 | v5) << 6) + 1664;
    }
  }

  v12 = 0;
  v13 = v2 + 16;
  do
  {
    if (*(v13 + 8 * v12) != -1)
    {
      v14 = 0;
      while (2)
      {
        v15 = v2 + 64 + (v12 << 9) + 8 * v14;
        v16 = *v15;
        while (v16 != -1)
        {
          v17 = __clz(__rbit64(~v16));
          v18 = v16;
          atomic_compare_exchange_strong_explicit(v15, &v18, (1 << v17) | v16, memory_order_relaxed, memory_order_relaxed);
          v7 = v18 == v16;
          v16 = v18;
          if (v7)
          {
            StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
            *(_dispatch_main_heap + ((StatusReg & 0xFFF) << 20) + 8) = v15 & 0xFFFFFFFFFFFFFFE0;
            v20 = *(v13 + 8 * v12);
            v21 = (v13 + 8 * v12);
            do
            {
              if (*v15 != -1)
              {
                break;
              }

              v22 = v20;
              atomic_compare_exchange_strong_explicit(v21, &v22, v20 | (1 << v14), memory_order_relaxed, memory_order_relaxed);
              v7 = v22 == v20;
              v20 = v22;
            }

            while (!v7);
            return v2 + (v12 << 18) + (v14 << 12) + (v17 << 6) + 0x4000;
          }
        }

        if (++v14 != 64)
        {
          continue;
        }

        break;
      }
    }

    result = 0;
    ++v12;
  }

  while (v12 != 3);
  return result;
}

uint64_t _dispatch_alloc_continuation_from_heap_slow()
{
  for (i = &_dispatch_main_heap; ; i = *i)
  {
    v1 = *i;
    if (!*i)
    {
      _dispatch_alloc_try_create_heap(i);
      v1 = *i;
    }

    result = _dispatch_alloc_continuation_from_heap(v1);
    if (result)
    {
      break;
    }
  }

  return result;
}

void _dispatch_alloc_try_create_heap(atomic_ullong *a1)
{
  v2 = MEMORY[0xFFFFFC036] << 20;
  v3 = MEMORY[0x1E69E9AC8];
  v4 = MEMORY[0x1E69E9A60];
  while (1)
  {
    address = *v3;
    v5 = mach_vm_map(*v4, &address, v2, 0xFFFFFuLL, 1241513985, 0, 0, 0, 3, 7, 1u);
    if (!v5)
    {
      break;
    }

    if (v5 != 3)
    {
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Could not allocate heap";
      qword_1EBC5B9B0 = v5;
      __break(1u);
LABEL_9:
      _dispatch_bug(450, v5);
      return;
    }

    _dispatch_temporary_resource_shortage();
  }

  v6 = 0;
  v7 = address;
  atomic_compare_exchange_strong_explicit(a1, &v6, address, memory_order_relaxed, memory_order_relaxed);
  if (v6)
  {
    v5 = munmap(v7, MEMORY[0xFFFFFC036] << 20);
    if (v5)
    {
      goto LABEL_9;
    }
  }
}

void _dispatch_alloc_maybe_madvise_page(uint64_t a1)
{
  if ((a1 & 0xFC000) != 0)
  {
    v2 = (a1 & 0xFFFFFFFFFFFFC000);
    if (v2)
    {
      v3 = 0;
      v4 = a1 & 0xFFFFFFFFFFF00000;
      v5 = v2 - v4 - 0x4000;
      v6 = v5 >> 12;
      v7 = (v5 >> 12) & 0x3F;
      v8 = (v5 >> 18) & 0xFFFFF;
      v9 = (((v4 + (v8 << 9)) & 0xFFFFFFFFFFFFFE07 | (8 * (v6 & 0x3F))) + 64);
      while (!v9[v3])
      {
        if (++v3 == 4)
        {
          v10 = 0;
          v16 = v7;
          v17 = v4;
          v15 = v8;
          while (1)
          {
            v11 = 0;
            atomic_compare_exchange_strong_explicit(&v9[v10], &v11, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
            if (v11)
            {
              break;
            }

            if (++v10 == 4)
            {
              v12 = madvise(v2, 0x4000uLL, 5);
              if (v12)
              {
                _dispatch_bug(586, v12);
              }

              v10 = 4;
LABEL_14:
              v13 = v10 + 1;
              v14 = ((v15 << 9) + 8 * v10 + 8 * v16 + v17 + 56);
              do
              {
                *v14-- = 0;
                --v13;
              }

              while (v13 > 2);
              goto LABEL_16;
            }
          }

          if (v10 >= 2)
          {
            goto LABEL_14;
          }

          if (v10)
          {
LABEL_16:
            *v9 = 0;
            return;
          }

          return;
        }
      }
    }
  }
}

uint64_t _dispatch_benchmark_init(unsigned int *a1)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = *(a1 + 4);
  mach_timebase_info(a1);
  mach_absolute_time();
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  do
  {
    v3(v2);
    --v5;
  }

  while (v5);
  mach_absolute_time();
  v7 = *a1;
  v6 = a1[1];
  __udivti3();
  result = __udivti3();
  *(a1 + 1) = result;
  return result;
}

uint64_t _dispatch_send_wakeup_runloop_thread(mach_port_t a1, mach_msg_timeout_t timeout)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x4E00000000;
  v2 = mach_msg(&msg, 17, 0x18u, 0, 0, timeout, 0);
  if (v2 == 268435460)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _dispatch_send_consume_send_once_right(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 18;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x4F00000000;
  return mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
}

uint64_t (*libdispatch_internal_protocol_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 80) >= 0xFFFFFFF0)
  {
    return _dispatch_libdispatch_internal_protocol_subsystem[5 * (v1 - 64) + 5];
  }

  else
  {
    return 0;
  }
}

_DWORD *_Xmach_notify_port_deleted(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _dispatch_mach_notify_port_deleted(result[3], result[8]);
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_Xmach_notify_send_possible(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _dispatch_mach_notify_send_possible(result[3], result[8]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _Xmach_notify_port_destroyed(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 40)
  {
    if (*(result + 38) << 16 == 0x100000)
    {
      _dispatch_mach_notify_port_destroyed(*(result + 12), *(result + 28));
    }

    v2 = -300;
  }

  else
  {
    v2 = -304;
  }

  *(a2 + 32) = v2;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_Xmach_notify_no_senders(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && result[1] == 36)
  {
    _dispatch_mach_notify_no_senders(result[3], result[8]);
  }

  *(a2 + 32) = -304;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_Xmach_notify_send_once(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    v3 = result[3];
    result = _dispatch_wakeup_runloop_thread();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_Xmach_notify_dead_name(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _dispatch_mach_notify_dead_name(result[3], result[8]);
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_Xwakeup_runloop_thread(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    v3 = result[3];
    result = _dispatch_wakeup_runloop_thread();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_Xconsume_send_once_right(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    v3 = result[3];
    result = _dispatch_wakeup_runloop_thread();
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t libdispatch_internal_protocol_server(_DWORD *a1, uint64_t a2)
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
  if ((v4 - 80) >= 0xFFFFFFF0 && (v5 = _dispatch_libdispatch_internal_protocol_subsystem[5 * (v4 - 64) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t firehose_send_register(int a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, int a7, uint64_t a8)
{
  v11 = 0u;
  v18 = 0u;
  v10 = 0u;
  DWORD2(v11) = a2;
  v12 = 1114112;
  v13 = a4;
  v14 = 0x100000;
  v15 = a5;
  v16 = 0x100000;
  v17 = a6;
  DWORD1(v18) = 1310720;
  DWORD2(v18) = a7;
  v19 = 1114112;
  v20 = *MEMORY[0x1E69E99E0];
  v21 = a3;
  v22 = a8;
  v9 = -2147483629;
  DWORD1(v10) = a1;
  *&v11 = 0x500002D50;
  return mach_msg(&v9, 1, 0x70u, 0, 0, 0, 0);
}

uint64_t firehose_send_push_and_wait(int a1, _OWORD *a2, _DWORD *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(&msg_16[4], 0, 44);
  msg_4 = 0;
  msg_8 = a1;
  msg_12 = mig_get_special_reply_port();
  msg = 5395;
  *msg_16 = 0x2D5100000000;
  v5 = mach_msg(&msg, 3162115, 0x18u, 0x40u, msg_12, 0, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (*&msg_16[4] == 71)
      {
        v6 = 4294966988;
      }

      else if (*&msg_16[4] == 11701)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (msg_4 == 56)
          {
            if (!msg_8)
            {
              v6 = *&msg_16[16];
              if (!*&msg_16[16])
              {
                *a2 = *&msg_16[20];
                *a3 = *&msg_16[36];
                goto LABEL_21;
              }

              goto LABEL_20;
            }
          }

          else if (msg_4 == 36)
          {
            if (msg_8)
            {
              v7 = 1;
            }

            else
            {
              v7 = *&msg_16[16] == 0;
            }

            if (v7)
            {
              v6 = 4294966996;
            }

            else
            {
              v6 = *&msg_16[16];
            }

            goto LABEL_20;
          }
        }

        v6 = 4294966996;
      }

      else
      {
        v6 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&msg);
      goto LABEL_21;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_21:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t firehose_send_push_async(mach_port_t a1, int a2, mach_msg_timeout_t timeout)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 11602;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  v3 = mach_msg(&msg, 17, 0x24u, 0, 0, timeout, 0);
  if (v3 == 268435460)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v3;
}

uint64_t firehose_send_get_logging_prefs(int a1, _DWORD *a2, void *a3)
{
  memset(v12, 0, sizeof(v12));
  *&v11[4] = 0u;
  LODWORD(v9) = 0;
  HIDWORD(v9) = a1;
  special_reply_port = mig_get_special_reply_port();
  v8 = 5395;
  *v11 = 0x2D5300000000;
  v5 = mach_msg(&v8, 3162115, 0x18u, 0x40u, special_reply_port, 0, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (*&v11[4] == 71)
      {
        v6 = 4294966988;
      }

      else if (*&v11[4] == 11703)
      {
        if ((v8 & 0x80000000) == 0)
        {
          if (v9 == 36)
          {
            v6 = 4294966996;
            if (*&v11[16])
            {
              if (HIDWORD(v9))
              {
                v6 = 4294966996;
              }

              else
              {
                v6 = *&v11[16];
              }
            }
          }

          else
          {
            v6 = 4294966996;
          }

          goto LABEL_20;
        }

        v6 = 4294966996;
        if (*&v11[8] == 1 && v9 == 56 && HIWORD(v12[0]) << 16 == 1114112)
        {
          v6 = 0;
          *a2 = *&v11[12];
          *a3 = *&v12[3];
          return v6;
        }
      }

      else
      {
        v6 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&v8);
      return v6;
    }

    mig_dealloc_special_reply_port();
  }

  return v6;
}

uint64_t firehose_send_should_send_strings(int a1, _DWORD *a2)
{
  memset(&v11[4], 0, 28);
  v8 = 0;
  v9 = a1;
  special_reply_port = mig_get_special_reply_port();
  v7 = 5395;
  *v11 = 0x2D5400000000;
  v3 = mach_msg(&v7, 3162115, 0x18u, 0x30u, special_reply_port, 0, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (!v3)
    {
      if (*&v11[4] == 71)
      {
        v4 = 4294966988;
      }

      else if (*&v11[4] == 11704)
      {
        if ((v7 & 0x80000000) == 0)
        {
          if (v8 == 40)
          {
            if (!v9)
            {
              v4 = *&v11[16];
              if (!*&v11[16])
              {
                *a2 = *&v11[20];
                return v4;
              }

              goto LABEL_20;
            }
          }

          else if (v8 == 36)
          {
            if (v9)
            {
              v5 = 1;
            }

            else
            {
              v5 = *&v11[16] == 0;
            }

            if (v5)
            {
              v4 = 4294966996;
            }

            else
            {
              v4 = *&v11[16];
            }

            goto LABEL_20;
          }
        }

        v4 = 4294966996;
      }

      else
      {
        v4 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&v7);
      return v4;
    }

    mig_dealloc_special_reply_port();
  }

  return v4;
}

uint64_t (*firehoseReply_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 11705) >= 0xFFFFFFFB)
  {
    return firehose_client_firehoseReply_subsystem[5 * (v1 - 11700) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t _Xpush_reply(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && *(result + 4) == 56)
  {
    v2 = *(result + 52);
    v3 = *(result + 36);
    v4 = *(result + 44);
    firehose_client_push_reply(*(result + 12), *(result + 32));
  }

  *(a2 + 32) = -304;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _Xpush_notify_async(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 52)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = firehose_client_push_notify_async(*(result + 12), *(result + 32), *(result + 40), *(result + 48));
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t firehoseReply_server(_DWORD *a1, uint64_t a2)
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
  if ((v4 - 11705) >= 0xFFFFFFFB && (v5 = firehose_client_firehoseReply_subsystem[5 * (v4 - 11700) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

void _dispatch_bug(uint64_t a1, uint64_t a2)
{
  if (_dispatch_build_pred != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v6, v7, v8);
  }

  v5 = _dispatch_bug_db_last_seen;
  _dispatch_bug_db_last_seen = v2;
  if (v2 != v5)
  {
    _dispatch_log("BUG in libdispatch: %s - %lu - 0x%lx", _dispatch_build, a1, a2);
  }
}

void _dispatch_log(char *__format, ...)
{
  va_start(va, __format);
  if (_dispatch_logv_pred != -1)
  {
    dispatch_once_f(&_dispatch_logv_pred, 0, _dispatch_logv_init);
  }

  if ((dispatch_log_disabled & 1) == 0)
  {
    if (dispatch_logfile == -1)
    {
      v2 = 0;
      vasprintf(&v2, __format, va);
      if (v2)
      {
        _simple_asl_log();
        free(v2);
      }
    }

    else
    {
      _dispatch_logv_file(__format, va);
    }
  }
}

void _dispatch_bug_mach_client(const char *a1, mach_error_t error_value)
{
  v3 = _dispatch_bug_mach_client_dbmc_last_seen;
  _dispatch_bug_mach_client_dbmc_last_seen = v2;
  if (v2 != v3)
  {
    v6 = mach_error_string(error_value);
    _dispatch_log("BUG in libdispatch client: %s %s - 0x%x", a1, v6, error_value);
    v7 = mach_error_string(error_value);
    _dispatch_fault("LIBDISPATCH_STRICT: _dispatch_bug_mach_client", "BUG in libdispatch client: %s %s - 0x%x", a1, v7, error_value);
    OUTLINED_FUNCTION_1();
    if (v8)
    {
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_mach_client";
      __break(1u);
    }
  }
}

void _dispatch_bug_kevent_client(const char *a1, const char *a2, const char *a3, int __errnum, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  LODWORD(v11) = __errnum;
  if (a7)
  {
    v15 = *(*~*(a7 + 8) + 40);
    if (v15 == 787)
    {
      if (*(a7 + 40))
      {
        function_symbol = *(a7 + 40);
        goto LABEL_11;
      }
    }

    else if (v15 == 275)
    {
      v16 = *(a7 + 40);
      if (v16)
      {
        function_symbol = _dispatch_continuation_get_function_symbol(v16);
        goto LABEL_11;
      }
    }

    function_symbol = 0;
LABEL_11:
    a2 = **a7;
    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  function_symbol = 0;
  if (!a3)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (v11)
  {
    v19 = _dispatch_bug_kevent_client_dbkc_last_seen_1;
    _dispatch_bug_kevent_client_dbkc_last_seen_1 = v7;
    if (v7 == v19)
    {
      return;
    }

    strerror(v11);
    OUTLINED_FUNCTION_3();
    v8 = "BUG in libdispatch client: %s %s: %s - 0x%x { 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }";
    _dispatch_log("BUG in libdispatch client: %s %s: %s - 0x%x { 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }", a1, v27, v29, v31, v33, v35, v37, v39, v41);
    strerror(v11);
    OUTLINED_FUNCTION_3();
    _dispatch_fault("LIBDISPATCH_STRICT: _dispatch_bug_kevent_client", "BUG in libdispatch client: %s %s: %s - 0x%x { 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }", a1, v28, v30, v32, v34, v36, v38, v40, v42);
    OUTLINED_FUNCTION_1();
    if ((v20 & 1) == 0)
    {
      return;
    }

    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_kevent_client";
    __break(1u);
  }

LABEL_16:
  v21 = v8;
  if (a3)
  {
    v22 = _dispatch_bug_kevent_client_dbkc_last_seen_2;
    _dispatch_bug_kevent_client_dbkc_last_seen_2 = v8;
    if (v8 == v22)
    {
      return;
    }

    v11 = "BUG in libdispatch client: %s %s{ 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }";
    _dispatch_log("BUG in libdispatch client: %s %s{ 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }", a1, a3, a6, a2, a5, a5, function_symbol);
    _dispatch_fault("LIBDISPATCH_STRICT: _dispatch_bug_kevent_client", "BUG in libdispatch client: %s %s{ 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }", a1, a3, a6, a2, a5, a5, function_symbol);
    OUTLINED_FUNCTION_1();
    if ((v21 & 1) == 0)
    {
      return;
    }

    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_kevent_client";
    __break(1u);
  }

  v23 = _dispatch_bug_kevent_client_dbkc_last_seen_3;
  _dispatch_bug_kevent_client_dbkc_last_seen_3 = v21;
  if (v21 != v23)
  {
    v24 = strerror(v11);
    _dispatch_log("BUG in libdispatch: %s: %s - 0x%x{ 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }", a1, v24, v11, a6, a2, a5, a5, function_symbol);
    v25 = strerror(v11);
    _dispatch_fault("LIBDISPATCH_STRICT: _dispatch_bug_kevent_client", "BUG in libdispatch: %s: %s - 0x%x{ 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }", a1, v25, v11, a6, a2, a5, a5, function_symbol);
    OUTLINED_FUNCTION_1();
    if (v26)
    {
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_kevent_client";
      __break(1u);
    }
  }
}

void _dispatch_bug_kevent_vanished(uint64_t **a1)
{
  v3 = ~a1[1];
  v4 = *(*v3 + 40);
  if (v4 == 787)
  {
    if (a1[5])
    {
      v6 = a1[5];
    }
  }

  else if (v4 == 275)
  {
    v5 = a1[5];
    if (v5)
    {
      _dispatch_continuation_get_function_symbol(v5);
    }
  }

  v7 = _dispatch_bug_kevent_vanished_dbkv_last_seen;
  _dispatch_bug_kevent_vanished_dbkv_last_seen = v1;
  if (v1 != v7)
  {
    v8 = **a1;
    v9 = *(v3 + 72);
    OUTLINED_FUNCTION_2();
    _dispatch_log("BUG in libdispatch client: %s, monitored resource vanished before the source cancel handler was invoked { %p[%s], ident: %d / 0x%x, handler: %p }", v13, v15, v17, v19, v21, v23);
    v10 = **a1;
    v11 = *(v3 + 72);
    OUTLINED_FUNCTION_2();
    _dispatch_fault("LIBDISPATCH_STRICT: _dispatch_bug_kevent_vanished", "BUG in libdispatch client: %s, monitored resource vanished before the source cancel handler was invoked { %p[%s], ident: %d / 0x%x, handler: %p }", v14, v16, v18, v20, v22, v24);
    OUTLINED_FUNCTION_1();
    if (v12)
    {
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_kevent_vanished";
      __break(1u);
    }
  }
}

void _dispatch_bug_deprecated(const char *a1)
{
  v2 = _dispatch_bug_deprecated_dbd_last_seen;
  _dispatch_bug_deprecated_dbd_last_seen = v1;
  if (v1 != v2)
  {
    _dispatch_log("DEPRECATED USE in libdispatch client: %s; set a breakpoint on _dispatch_bug_deprecated to debug", a1);
    _dispatch_fault("LIBDISPATCH_STRICT: _dispatch_bug_deprecated", "DEPRECATED USE in libdispatch client: %s; set a breakpoint on _dispatch_bug_deprecated to debug", a1);
    OUTLINED_FUNCTION_1();
    if (v4)
    {
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_deprecated";
      __break(1u);
    }
  }
}

void _dispatch_queue_attr_to_info_cold_1(uint64_t *a1)
{
  if (*a1)
  {
    v1 = *a1;
  }

  else
  {
    v1 = 0;
  }

  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid queue attribute";
  qword_1EBC5B9B0 = v1;
  __break(1u);
}

void _dispatch_continuation_get_function_symbol_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void *__cdecl dispatch_get_context(dispatch_object_t object)
{
  isa = object->isa;
  if ((object->isa & 1) != 0 || !isa)
  {
    return _dispatch_objc_get_context();
  }

  v2 = object->isa;
  if (isa < OS_dispatch_object || isa >= OS_object)
  {
    return _dispatch_objc_get_context();
  }

  if ((*(isa + 42) & 4) != 0)
  {
    return 0;
  }

  return object[4].isa;
}

void dispatch_set_context(dispatch_object_t object, void *context)
{
  isa = object->isa;
  if ((object->isa & 1) != 0 || !isa || ((v3 = object->isa, isa >= OS_dispatch_object) ? (v4 = isa >= OS_object) : (v4 = 1), v4))
  {
    _dispatch_objc_set_context(object, context);
  }

  else if ((*(isa + 42) & 4) == 0)
  {
    object[4].isa = context;
  }
}

void dispatch_set_finalizer_f(dispatch_object_t object, dispatch_function_t finalizer)
{
  isa = object->isa;
  if ((object->isa & 1) != 0 || !isa || ((v3 = object->isa, isa >= OS_dispatch_object) ? (v4 = isa >= OS_object) : (v4 = 1), v4))
  {
    _dispatch_objc_set_finalizer_f(object, finalizer);
  }

  else if ((*(isa + 42) & 4) == 0)
  {
    if (finalizer)
    {
      v5 = finalizer;
    }

    else
    {
      v5 = 0;
    }

    object[5].isa = v5;
  }
}

void dispatch_activate(dispatch_object_t object)
{
  isa = object->isa;
  if ((object->isa & 1) != 0 || !isa || ((v2 = object->isa, isa >= OS_dispatch_object) ? (v3 = isa >= OS_object) : (v3 = 1), v3))
  {
    _dispatch_objc_activate();
  }

  else if (LODWORD(object[1].isa) != 0x7FFFFFFF)
  {
    v4 = *(isa + 40);
    if (v4 == 18)
    {
      _dispatch_workloop_activate(object);
    }

    else if ((v4 & 0xF0) == 0x10)
    {
      _dispatch_lane_resume(object, 1);
    }
  }
}

size_t _dispatch_object_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v4 = snprintf(__str, __size, "xref = %d, ref = %d, ", *(a1 + 12), *(a1 + 8));
  v5 = v4;
  if (v4 >= __size)
  {
    v5 = __size;
  }

  if (v4 >= 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void *dispatch_release_cold_1(void *result, atomic_uint *a2, void *a3)
{
  if (result == 1)
  {
    atomic_load_explicit(a2, memory_order_acquire);
    return _dispatch_xref_dispose(a3, a2);
  }

  else
  {
    qword_1EBC5B980 = "API MISUSE: Over-release of an object";
    __break(1u);
  }

  return result;
}

void _dispatch_dispose_cold_1(uint64_t *a1)
{
  v1 = *a1;
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Release while enqueued";
  qword_1EBC5B9B0 = v1;
  __break(1u);
}

void dispatch_set_target_queue_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

atomic_uint *dispatch_set_target_queue_cold_3(uint64_t a1, const char *a2)
{
  result = atomic_exchange_explicit((a1 + 24), a2, memory_order_release);
  if (result)
  {
    if (result[2] != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        if (add_explicit == 1)
        {
          return _os_object_dispose(result, a2);
        }

        else
        {
          qword_1EBC5B980 = "API MISUSE: Over-release of an object";
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t _dispatch_objc_debug(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v5 = [a1 debugDescription];
  [v5 getBytes:a2 maxLength:a3 - 1 usedLength:&v7 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v5, "length"), 0}];
  result = v7;
  if (v7)
  {
    *(a2 + v7) = 0;
  }

  return result;
}

void *_dispatch_last_resort_autorelease_pool_push(void *result)
{
  if ((_os_object_debug_missing_pools & 1) == 0)
  {
    v1 = result;
    result = objc_autoreleasePoolPush();
    v1[3] = result;
  }

  return result;
}

void _dispatch_last_resort_autorelease_pool_pop(uint64_t a1)
{
  if ((_os_object_debug_missing_pools & 1) == 0)
  {
    objc_autoreleasePoolPop(*(a1 + 24));
    *(a1 + 24) = 0;
  }
}

uint64_t _dispatch_sema4_timedwait(semaphore_t *a1, unint64_t a2)
{
  do
  {
    v4 = _dispatch_timeout(a2);
    v6.tv_sec = v4 / 0x3B9ACA00;
    v6.tv_nsec = v4 % 0x3B9ACA00;
    result = semaphore_timedwait(*a1, v6);
  }

  while (result == 14);
  if (result == 49)
  {
    return result == 49;
  }

  if (result == -301)
  {
    qword_1EBC5B980 = "MIG_REPLY_MISMATCH";
    qword_1EBC5B9B0 = -301;
    __break(1u);
  }

  if (!result)
  {
    return result == 49;
  }

  if (result == 15)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
    qword_1EBC5B9B0 = 15;
    __break(1u);
  }

  qword_1EBC5B980 = "BUG IN LIBDISPATCH: mach semaphore API failure";
  qword_1EBC5B9B0 = result;
  __break(1u);
  return result;
}

void _dispatch_sema4_create_slow_cold_2()
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
  qword_1EBC5B9B0 = 15;
  __break(1u);
}

void _dispatch_sema4_create_slow_cold_3()
{
  qword_1EBC5B980 = "MIG_REPLY_MISMATCH";
  qword_1EBC5B9B0 = -301;
  __break(1u);
}

void _dispatch_sema4_create_slow_cold_4(int a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: mach semaphore API failure";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_thread_event_wait_slow_cold_1(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Corrupt thread event value";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_unfair_lock_unlock_slow_cold_1(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: lock not owned by current thread";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

uint64_t _dispatch_once_wait_cold_1(uint64_t a1, atomic_ullong *a2, int a3, void *a4)
{
  if ((a1 & 3) == 2)
  {
    __dmb(9u);
    if ((4 * MEMORY[0xFFFFFC180] - a1 - 14) > 0xFFFFFFFFFFFFFFEFLL)
    {
      return 0;
    }

    else
    {
      result = 0;
      *a2 = -1;
    }
  }

  else
  {
    v5 = a1;
    if ((a1 | 1) == a1 || (v6 = a1, atomic_compare_exchange_strong_explicit(a2, &v6, a1 | 1, memory_order_relaxed, memory_order_relaxed), *a4 = v6, v5 = a1 | 1, v6 == a1))
    {
      if (((a1 ^ a3) & 0xFFFFFFFC) != 0)
      {
        _dlock_wait(a2, v5, 0);
        return 1;
      }

      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: trying to lock recursively";
      __break(1u);
    }

    return 2;
  }

  return result;
}

void _dlock_wait_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Owner in ulock is unknown - possible memory corruption";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dlock_wait_cold_2(int a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: ulock_wait() failed";
  qword_1EBC5B9B0 = -a1;
  __break(1u);
}

void _dlock_wake_cold_1(int a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: ulock_wake() failed";
  qword_1EBC5B9B0 = -a1;
  __break(1u);
}

size_t _dispatch_semaphore_debug(uint64_t a1, char *a2, size_t a3)
{
  ClassName = object_getClassName(a1);
  v7 = snprintf(a2, a3, "%s[%p] = { ", ClassName + 12, a1);
  v8 = v7;
  if (v7 >= a3)
  {
    v8 = a3;
  }

  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 + _dispatch_object_debug_attr(a1, &a2[v9], a3 - v9);
  v11 = snprintf(&a2[v10], a3 - v10, "port = 0x%x, ", *(a1 + 64));
  v12 = v11;
  if (a3 - v10 < v11)
  {
    v12 = a3 - v10;
  }

  if (v11 < 0)
  {
    v12 = 0;
  }

  v13 = v12 + v10;
  v14 = a3 - (v12 + v10);
  v15 = *(a1 + 48);
  v16 = snprintf(&a2[v13], v14, "value = %ld, orig = %ld }", v15, *(a1 + 56));
  v17 = v16;
  if (v14 < v16)
  {
    v17 = v14;
  }

  if (v16 < 0)
  {
    v17 = 0;
  }

  return v17 + v13;
}

size_t _dispatch_group_debug(void *a1, char *a2, size_t a3)
{
  v6 = a1[6];
  ClassName = object_getClassName(a1);
  v8 = snprintf(a2, a3, "%s[%p] = { ", ClassName + 12, a1);
  v9 = v8;
  if (v8 >= a3)
  {
    v9 = a3;
  }

  if (v8 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 + _dispatch_object_debug_attr(a1, &a2[v10], a3 - v10);
  v12 = a3 - v11;
  v13 = snprintf(&a2[v11], v12, "count = %u, gen = %d, waiters = %d, notifs = %d }", -(v6 & 0xFFFFFFFC) >> 2, HIDWORD(v6), v6 & 1, (v6 >> 1) & 1);
  v14 = v13;
  if (v12 < v13)
  {
    v14 = v12;
  }

  if (v13 < 0)
  {
    v14 = 0;
  }

  return v14 + v11;
}

intptr_t dispatch_group_wait(dispatch_group_t group, dispatch_time_t timeout)
{
  isa = group[6].isa;
  result = 49;
  while ((isa & 0xFFFFFFFC) != 0)
  {
    if (!timeout)
    {
      return result;
    }

    v5 = isa;
    if ((isa & 1) == 0)
    {
      atomic_compare_exchange_strong_explicit(&group[6], &isa, isa | 1, memory_order_relaxed, memory_order_relaxed);
      if (isa != v5)
      {
        continue;
      }
    }

    return _dispatch_group_wait_slow(group, HIDWORD(v5), timeout);
  }

  result = 0;
  __dmb(9u);
  return result;
}

void _dispatch_semaphore_dispose_cold_1(void *a1, uint64_t a2)
{
  v2 = a2 - *a1;
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Semaphore object deallocated while in use (current value < original value)";
  qword_1EBC5B9B0 = v2;
  __break(1u);
}

void _dispatch_group_dispose_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Group object deallocated while in use";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_group_leave_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Unbalanced call to dispatch_group_leave()";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_group_enter_cold_1(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Too many nested calls to dispatch_group_enter()";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

unint64_t dispatch_group_notify_cold_3(unint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 16) = 0;
  *(a3 + 976) = a2 + 64;
  v3 = atomic_exchange_explicit((a2 + 64), result, memory_order_release);
  if (v3)
  {
    *(v3 + 16) = result;
    *(a3 + 976) = 0;
  }

  else if (*(a2 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed) > 0)
  {
    *(a2 + 56) = result;
    *(a3 + 976) = 0;
    v4 = *(a2 + 48);
    while (1)
    {
      v5 = (v4 | 2);
      if (!v4)
      {
        break;
      }

      v6 = v4;
      atomic_compare_exchange_strong_explicit((a2 + 48), &v6, v5, memory_order_release, memory_order_relaxed);
      v7 = v6 == v4;
      v4 = v6;
      if (v7)
      {
        return result;
      }
    }

    return _dispatch_group_wake(a2, v5, 0);
  }

  else
  {
    qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }

  return result;
}

void os_eventlink_create_with_port_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

unint64_t _dispatch_lane_set_width(int a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 160);
  if (a1 < 0)
  {
    v9 = (*(StatusReg + 32) >> 8) & 0x3FFF;
    v10 = __clz(__rbit32(v9));
    if (a1 == -1)
    {
      if (!v9)
      {
        goto LABEL_27;
      }

      if (v10 <= 5)
      {
        v12 = dword_1BB581284[v10];
      }

      a1 = pthread_qos_max_parallelism();
      if (a1 <= 0)
      {
LABEL_27:
        a1 = MEMORY[0xFFFFFC036];
      }

      if (a1 >= MEMORY[0xFFFFFC034])
      {
        a1 = MEMORY[0xFFFFFC034];
      }
    }

    else if (a1 == -2)
    {
      if (!v9)
      {
        goto LABEL_25;
      }

      if (v10 <= 5)
      {
        v11 = dword_1BB581284[v10];
      }

      a1 = pthread_qos_max_parallelism();
      if (a1 <= 0)
      {
LABEL_25:
        a1 = MEMORY[0xFFFFFC035];
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_31;
      }

      if (v10 <= 5)
      {
        v13 = dword_1BB581284[v10];
      }

      a1 = pthread_qos_max_parallelism();
      if (a1 <= 0)
      {
LABEL_31:
        a1 = MEMORY[0xFFFFFC036];
      }
    }
  }

  else if (a1 <= 1)
  {
    a1 = 1;
  }

  if (a1 >= 0xFFE)
  {
    v3 = 4094;
  }

  else
  {
    v3 = a1;
  }

  v4 = *(v2 + 80);
  v5 = v4;
  do
  {
    atomic_compare_exchange_strong_explicit((v2 + 80), &v5, v4 & 0xFFFF0000 | v3, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v4;
    v4 = v5;
  }

  while (!v6);
  v7 = *(v2 + 24);

  return _dispatch_lane_inherit_wlh_from_target(v2, v7);
}

size_t _dispatch_queue_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v6 = *(a1 + 24);
  v7 = &unk_1BB5822E3;
  if (v6 && v6[9])
  {
    v7 = v6[9];
  }

  v8 = *(a1 + 56);
  v9 = snprintf(__str, __size, "sref = %d, target = %s[%p], width = 0x%x, state = 0x%016llx", *(a1 + 96) + 1, v7, v6, *(a1 + 80), v8);
  v11 = v9;
  if (v9 >= __size)
  {
    v11 = __size;
  }

  if (v9 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v8 >> 55)
  {
    OUTLINED_FUNCTION_9(v9, v10, ", suspended = %d");
    OUTLINED_FUNCTION_0_0();
    if (v9 < 0)
    {
      v13 = 0;
    }

    v12 += v13;
  }

  v14 = ", inactive";
  switch((v8 >> 55) & 3)
  {
    case 1uLL:
      v14 = ", activating";
      goto LABEL_16;
    case 2uLL:
      v14 = ", activated";
      goto LABEL_16;
    case 3uLL:
LABEL_16:
      OUTLINED_FUNCTION_9(v9, v10, v14);
      OUTLINED_FUNCTION_0_0();
      if (v9 < 0)
      {
        v15 = 0;
      }

      v12 += v15;
      break;
    default:
      break;
  }

  if ((v8 & 0x4000000001) != 0)
  {
    OUTLINED_FUNCTION_9(v9, v10, ", enqueued");
    OUTLINED_FUNCTION_0_0();
    if (v9 < 0)
    {
      v16 = 0;
    }

    v12 += v16;
  }

  if ((v8 & 0x8000000000) != 0)
  {
    OUTLINED_FUNCTION_9(v9, v10, ", dirty");
    OUTLINED_FUNCTION_0_0();
    if (v9 < 0)
    {
      v17 = 0;
    }

    v12 += v17;
  }

  if ((v8 & 0x700000000) != 0)
  {
    OUTLINED_FUNCTION_9(v9, v10, ", max qos %d");
    OUTLINED_FUNCTION_0_0();
    if (v9 < 0)
    {
      v18 = 0;
    }

    v12 += v18;
  }

  if (v8 >= 4)
  {
    v19 = v8 | 3;
  }

  else
  {
    v19 = 0;
  }

  if (v8 >= 4 && ((*(a1 + 80) & 0x40000) == 0 || (*(a1 + 80) & 0x1000000) != 0))
  {
    OUTLINED_FUNCTION_9(v9, v10, ", draining on 0x%x");
    OUTLINED_FUNCTION_0_0();
    if (v9 < 0)
    {
      v20 = 0;
    }

    v12 += v20;
  }

  if ((v8 & 0x40000000000000) != 0)
  {
    OUTLINED_FUNCTION_9(v9, v10, ", in-barrier");
    OUTLINED_FUNCTION_0_0();
    if (v26 < 0)
    {
      v24 = 0;
    }

    v22 = v8 & 0x10000000000;
  }

  else
  {
    v21 = (v8 >> 41) & 0x1FFF;
    v22 = v8 & 0x10000000000;
    if (!v22)
    {
      v23 = v21 + *(a1 + 80) - 4096;
    }

    OUTLINED_FUNCTION_9(v9, v10, ", in-flight = %d");
    OUTLINED_FUNCTION_0_0();
    if (v25 < 0)
    {
      v24 = 0;
    }
  }

  v27 = v24 + v12;
  if (v22)
  {
    v28 = snprintf(&__str[v27], __size - v27, ", pending-barrier");
    v29 = v28;
    if (__size - v27 < v28)
    {
      v29 = __size - v27;
    }

    if (v28 < 0)
    {
      v29 = 0;
    }

    v27 += v29;
  }

  if ((*(a1 + 80) & 0x40000) != 0 && (*(a1 + 80) & 0x1000000) == 0)
  {
    v30 = __size - v27;
    v31 = snprintf(&__str[v27], v30, ", thread = 0x%x ", v19);
    v32 = v31;
    if (v30 < v31)
    {
      v32 = v30;
    }

    if (v31 < 0)
    {
      v32 = 0;
    }

    v27 += v32;
  }

  return v27;
}

uint64_t _dispatch_queue_debug(void *a1, char *__str, size_t __size)
{
  v6 = a1[9];
  if (!v6)
  {
    v6 = object_getClassName(a1) + 12;
  }

  v7 = snprintf(__str, __size, "%s[%p] = { ", v6, a1);
  v8 = v7;
  if (v7 >= __size)
  {
    v8 = __size;
  }

  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 + _dispatch_object_debug_attr(a1, &__str[v9], __size - v9);
  v11 = v10 + _dispatch_queue_debug_attr(a1, &__str[v10], __size - v10);
  v12 = __size - v11;
  v13 = snprintf(&__str[v11], v12, "}");
  v14 = v13;
  if (v12 < v13)
  {
    v14 = v12;
  }

  if (v13 < 0)
  {
    v14 = 0;
  }

  return v14 + v11;
}

size_t _dispatch_channel_debug()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = v2[20];
  ClassName = object_getClassName(v2);
  v6 = snprintf(v1, v0, "%s[%p] = { ", ClassName + 12, v3);
  v7 = v6;
  if (v6 >= v0)
  {
    v7 = v0;
  }

  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 + _dispatch_object_debug_attr(v3, &v1[v8], v0 - v8);
  v10 = _dispatch_queue_debug_attr(v3, &v1[v9], v0 - v9);
  v11 = "cancelled, ";
  v12 = &unk_1BB5822E3;
  if ((v4 & 0x10000000) == 0)
  {
    v11 = &unk_1BB5822E3;
  }

  v13 = "needs-event, ";
  if ((v4 & 0x40000000) == 0)
  {
    v13 = &unk_1BB5822E3;
  }

  if (v4 < 0)
  {
    v12 = "deleted, ";
  }

  v14 = snprintf(v1, v0, "%s%s%s", v11, v13, v12);
  v15 = v14;
  if (v14 >= v0)
  {
    v15 = v0;
  }

  if (v14 < 0)
  {
    v15 = 0;
  }

  return v9 + v15 + v10;
}

uint64_t _dispatch_runloop_root_queue_create_4CF(const char *a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 32);
  v5 = _dispatch_object_alloc(OS_dispatch_queue_runloop, 120);
  v6 = v5;
  *(v5 + 16) = -1985229329;
  *(v5 + 80) = 262145;
  *(v5 + 56) = 0x1FFE1000000000;
  add_explicit = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(v5 + 24) = &off_1ED3F3BC0;
  v8 = "runloop-queue";
  if (a1)
  {
    v8 = a1;
  }

  *(v5 + 64) = add_explicit;
  *(v5 + 72) = v8;
  if ((v4 & 0x22000000) == 0 && (v4 & 0x3F00) != 0)
  {
    v9 = (__clz(__rbit32((v4 >> 8) & 0x3FFF)) << 8) + 256;
    if (((v4 >> 8) & 0x3FFF) == 0)
    {
      v9 = 0;
    }

    *(v5 + 84) = v9 & 0xFFFFFF00 | v4;
  }

  _dispatch_runloop_queue_handle_init(v5);
  v10 = *(v6 + 80);
  v11 = *(v6 + 56);
  v12 = v11;
  do
  {
    atomic_compare_exchange_strong_explicit((v6 + 56), &v12, v11 & 0xFFFFFFFF00000003 | (4 * ((*(StatusReg + 24) >> 2) & 0x3FFFFFFFLL)), memory_order_relaxed, memory_order_relaxed);
    v13 = v12 == v11;
    v11 = v12;
  }

  while (!v13);
  return v6;
}

uint64_t libdispatch_init()
{
  if (_dispatch_getenv_BOOL("LIBDISPATCH_STRICT", 0))
  {
    _dispatch_mode |= 1u;
  }

  if (_dispatch_getenv_BOOL("LIBDISPATCH_COOPERATIVE_POOL_STRICT", 0))
  {
    _dispatch_mode |= 4u;
  }

  HIDWORD(v1) = qos_class_main() - 5;
  LODWORD(v1) = HIDWORD(v1);
  v0 = v1 >> 2;
  if (v0 > 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_1BB581340[v0];
  }

  dword_1ED3F3614 = v2;
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  StatusReg[20] = &_dispatch_main_q;
  v4 = qword_1ED3F35F8[0];
  v5 = qword_1ED3F35F8[0];
  do
  {
    atomic_compare_exchange_strong_explicit(qword_1ED3F35F8, &v5, v4 & 0xFFFFFFFF00000003 | (4 * ((StatusReg[3] >> 2) & 0x3FFFFFFFLL)), memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v4;
    v4 = v5;
  }

  while (!v6);
  if ((~*(StatusReg + 50) & 0xF0000) != 0)
  {
    StatusReg[25] = StatusReg[25] | 0xF0000;
  }

  v7 = _dispatch_time_init();
  _dispatch_vtable_init(v7);
  _os_object_init();
  _voucher_init();

  return _workgroup_init();
}

uint64_t dispatch_assert_queue_V2_cold_1(uint64_t result, void *a2)
{
  v2 = *(result + 160);
  v3 = v2 == 0;
  if (v2)
  {
    v4 = v2 == a2;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(result + 168);
    do
    {
      v6 = v2[3];
      if (v5)
      {
        if (!v6)
        {
          v6 = *v5;
LABEL_11:
          v5 = v5[1];
          goto LABEL_12;
        }

        if (v2 == *v5)
        {
          goto LABEL_11;
        }
      }

LABEL_12:
      v3 = v6 == 0;
      if (v6)
      {
        v7 = v6 == a2;
      }

      else
      {
        v7 = 1;
      }

      v2 = v6;
    }

    while (!v7);
  }

  if (v3)
  {
    _dispatch_assert_queue_fail(a2, 1);
  }

  return result;
}

void dispatch_assert_queue_V2_cold_2(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_assert_queue()";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_assert_queue_not_V2_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_assert_queue_not()";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void *dispatch_assert_queue_barrier_cold_1(void *result)
{
  if (!result[3] || (result[7] & 0x40000000000000) == 0)
  {
    _dispatch_assert_queue_barrier_fail(result);
  }

  return result;
}

void dispatch_verify_current_queue_4swiftonly_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_am_i_on_queue_4swiftonly()";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_queue_override_invoke_cold_3()
{
  OUTLINED_FUNCTION_5();
  if ((v4 & 8) == 0)
  {
    OUTLINED_FUNCTION_6(v3);
    if (!v1)
    {
      goto LABEL_3;
    }

LABEL_9:
    _dispatch_continuation_free_to_cache_limit(v1);
    if (!v0)
    {
      return;
    }

    goto LABEL_4;
  }

  v5 = OUTLINED_FUNCTION_13(v3);
  v7 = *(v6 + 40);
  if (v7 != 514)
  {
    qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_1EBC5B9B0 = v7;
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_6(v5);
  dispatch_group_leave(v2);
  if (v1)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!v0)
  {
    return;
  }

LABEL_4:

  objc_autoreleasePoolPop(v0);
}

void dispatch_block_perform_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid flags passed to dispatch_block_perform()";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_block_invoke_direct_cold_1(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

uint64_t _dispatch_block_sync_invoke_cold_4(uint64_t result, uint64_t a2)
{
  if (result == -1)
  {
    return 1;
  }

  if (*(a2 + 224) != result)
  {
    return 0;
  }

  if (!result || atomic_fetch_add_explicit((result + 12), 0xFFFFFFFF, memory_order_relaxed) > 1)
  {
    return 1;
  }

  qword_1EBC5B980 = "API MISUSE: Voucher over-release";
  __break(1u);
  return result;
}

uint64_t _dispatch_block_sync_invoke_cold_5(uint64_t a1, void *a2)
{
  if (a1 == 2)
  {
    return OUTLINED_FUNCTION_4(a1, a2);
  }

  qword_1EBC5B980 = "API MISUSE: Over-release of an object";
  __break(1u);
  return a1;
}

void dispatch_block_wait_cold_3(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be waited for more than once";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_block_wait_cold_4(int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_block_notify_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid block object passed to dispatch_block_notify()";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_block_notify_cold_3(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and observed";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_queue_set_label_nocopy_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change label for this queue";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_queue_compute_priority_and_wlh_cold_1()
{
  OUTLINED_FUNCTION_5();
  v3 = *(*v2 + 40);
  if (MEMORY[0xFFFFFC100])
  {
    OUTLINED_FUNCTION_8();
    if (!v1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v1)
  {
LABEL_3:
    *v1 = 0;
  }

LABEL_4:
  *v0 = 0;
}

void dispatch_set_qos_class_floor_cold_2(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_lane_class_dispose_cold_1(uint64_t *a1)
{
  v1 = *a1;
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Release of a queue while items are enqueued";
  qword_1EBC5B9B0 = v1;
  __break(1u);
}

void _dispatch_lane_class_dispose_cold_2(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFC) == 0)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Release of a queue with corrupt state";
    qword_1EBC5B9B0 = a1;
    __break(1u);
  }

  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Premature release of a locked queue";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_queue_xref_dispose_cold_1(uint64_t a1)
{
  if ((a1 & 0x180000000000000) == 0)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Release of a suspended object";
    qword_1EBC5B9B0 = a1;
    __break(1u);
  }

  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Release of an inactive object";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_queue_set_width_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected dispatch object type";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_queue_set_width_cold_2(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Cannot set width of a serial queue";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

atomic_ullong *_dispatch_lane_set_target_queue_cold_1(atomic_ullong *result, uint64_t a2)
{
  v3 = result;
  if ((result[10] & 0x400000) == 0)
  {
    if ((result[10] & 0x100000) != 0)
    {
      goto LABEL_17;
    }

    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change the target of this object after it has been activated";
    __break(1u);
    goto LABEL_16;
  }

  v2 = a2;
  v4 = *(*result + 40);
  if (v4 == 17)
  {
    if ((result[10] & 0x100000) != 0)
    {
      v5 = "Changing the target of a queue already targeted by other dispatch objects";
      goto LABEL_13;
    }

    while (*(v2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed) <= 0)
    {
LABEL_16:
      qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
      __break(1u);
LABEL_17:
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change the target of a queue already targeted by other dispatch objects";
      __break(1u);
LABEL_18:
      kdebug_trace();
LABEL_11:
      v5 = "Changing the target of a source after it has been activated";
LABEL_13:
      _dispatch_bug_deprecated(v5);
    }

    return _dispatch_barrier_trysync_or_async_f(v3, v2, _dispatch_lane_legacy_set_target_queue, 1);
  }

  else
  {
    if (v4 == 19)
    {
      if (MEMORY[0xFFFFFC100])
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected dispatch object type";
    qword_1EBC5B9B0 = v4;
    __break(1u);
  }

  return result;
}

atomic_uint *_dispatch_lane_set_target_queue_cold_4(uint64_t a1, const char *a2)
{
  result = atomic_exchange_explicit((a1 + 24), a2, memory_order_release);
  if (result)
  {
    if (result[2] != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        if (add_explicit != 1)
        {
          qword_1EBC5B980 = "API MISUSE: Over-release of an object";
          __break(1u);
          return result;
        }

        _os_object_dispose(result, a2);
      }
    }
  }

  return _dispatch_lane_resume(a1, 0);
}

void _dispatch_lane_legacy_set_target_queue_cold_1()
{
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_bug_deprecated("Changing the target of a queue already targeted by other dispatch objects");
}

void _dispatch_lane_legacy_set_target_queue_cold_2(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  _dispatch_unfair_lock_unlock_slow(a1, a2);
  if ((v4 & 2) != 0)
  {
    v5 = *(a3 + 200);
    if ((v5 & 0xF0000) == 0)
    {
      OUTLINED_FUNCTION_10(v5);
    }
  }
}

void *_dispatch_queue_invoke_finish_cold_1(__objc2_class **a1, atomic_ullong *a2, uint64_t a3)
{
  if (a1 == &_dispatch_mgr_q)
  {
    v3 = 0x4000000000;
  }

  else
  {
    v3 = 1;
  }

  v4 = a2[7];
  v5 = v4;
  do
  {
    v6 = v4 - a3;
    if (((v4 - a3) & 0xFFE0004000000001) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = v3;
    }

    v8 = v7 | (v4 - a3) & 0xFFFFFF7700000001;
    atomic_compare_exchange_strong_explicit(a2 + 7, &v5, v8 | 0x8000000000, memory_order_release, memory_order_relaxed);
    v9 = v5 == v4;
    v4 = v5;
  }

  while (!v9);
  v10 = HIDWORD(v6) & 7;
  if ((~v6 & 0x1800000000) == 0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = *(StatusReg + 200);
    if ((HIWORD(v12) & 0xF) < v10)
    {
      *(StatusReg + 200) = v12 & 0xFFF0FFFF | (v10 << 16);
    }
  }

  if (((v8 ^ v6) & v3) == 0)
  {
    return _os_object_release_internal_n(a2, 2);
  }

  if ((v6 & 0x2000000000) != 0)
  {
    return _dispatch_event_loop_poke(a2, v8 | 0x8000000000, 1);
  }

  return ((*a1)[2].superclass)();
}

void _dispatch_queue_priority_inherit_from_target_cold_1(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_workloop_dispose_cold_1(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFC) == 0)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Release of a workloop with corrupt state";
    qword_1EBC5B9B0 = a1;
    __break(1u);
  }

  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Release of a locked workloop";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_workloop_dispose_cold_2(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Release of a workloop while items are enqueued";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_workloop_activate_cold_2(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Process has too many threads.";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

uint64_t _dispatch_workloop_activate_cold_3(const sched_param **a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  memset(&v10, 0, sizeof(v10));
  pthread_attr_init(&v10);
  sched_priority = v3->sched_priority;
  if (v3->sched_priority)
  {
    pthread_attr_setschedparam(&v10, v3 + 1);
    sched_priority = v3->sched_priority;
    if ((v3->sched_priority & 2) == 0)
    {
LABEL_3:
      if ((sched_priority & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((sched_priority & 2) == 0)
  {
    goto LABEL_3;
  }

  pthread_attr_setschedpolicy(&v10, v3[2].sched_priority);
  if ((v3->sched_priority & 4) != 0)
  {
LABEL_4:
    v5 = v3[2].__opaque[0];
    v6 = v3[3].sched_priority;
    pthread_attr_setcpupercent_np();
  }

LABEL_5:
  v7 = _pthread_workloop_create();
  if (v7)
  {
    if (v7 == 45)
    {
      _dispatch_workloop_activate_simulator_fallback(a2, &v10.__sig);
    }
  }

  else
  {
    v3->sched_priority |= 0x10u;
  }

  result = pthread_attr_destroy(&v10);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _dispatch_workloop_activate_cold_4(uint64_t a1, atomic_ullong *a2)
{
  v2 = *(a1 + 84);
  if (v2)
  {
    v3 = v2 | 0x80000000;
  }

  else
  {
    v3 = -2080358400;
  }

  *(a1 + 84) = v3;
  atomic_fetch_and_explicit(a2, 0xFF7FFFFFFFFFFFFFLL, memory_order_relaxed);
  return _dispatch_workloop_wakeup(a1, 0, 1);
}

uint64_t _dispatch_workloop_wakeup_cold_2(uint64_t a1, unint64_t a2, void *a3, int a4)
{
  if ((a1 & 0x700000000) == 0)
  {
    return 1;
  }

  if ((a2 & 0x2000000000) != 0)
  {
    _dispatch_event_loop_poke(a3, a2, a4 | 0x80000000);
  }

  else
  {
    _dispatch_queue_wakeup_with_override_slow(a3, a2, a4);
  }

  return 0;
}

void _dispatch_workloop_wakeup_cold_3(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Waking up an inactive workloop";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_workloop_wakeup_cold_4(unsigned int a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Invalid way to wake up a workloop";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

uint64_t _dispatch_workloop_invoke_cold_1(unsigned int *a1)
{
  result = OUTLINED_FUNCTION_7(a1);
  if ((HIWORD(*v1) & 0xFu) < v2)
  {
    *v1 = *v1 & 0xFFF0FFFF | (v2 << 16);
  }

  return result;
}

void _dispatch_workloop_invoke_cold_2(uint64_t a1)
{
  if (*a1)
  {
    *(*a1 + 53) |= 2u;
    _dispatch_return_to_kernel();
  }
}

void _dispatch_workloop_invoke_cold_4()
{
  OUTLINED_FUNCTION_5();
  if ((v4 & 8) != 0)
  {
    v5 = OUTLINED_FUNCTION_13(v3);
    v7 = *(v6 + 40);
    if (v7 != 514)
    {
      qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected object type";
      qword_1EBC5B9B0 = v7;
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_6(v5);
    dispatch_group_leave(v2);
    if (!v1)
    {
LABEL_3:
      if (!v0)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6(v3);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  _dispatch_continuation_free_to_cache_limit(v1);
  if (v0)
  {
LABEL_4:
    objc_autoreleasePoolPop(v0);
  }
}

void _dispatch_workloop_invoke_cold_7(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 8) == 0)
  {
    OUTLINED_FUNCTION_6(a1);
    if (!a2)
    {
      return;
    }

LABEL_6:
    _dispatch_continuation_free_to_cache_limit(a2);
    return;
  }

  v5 = OUTLINED_FUNCTION_12(a1);
  v7 = *(v6 + 40);
  if (v7 != 514)
  {
    qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_1EBC5B9B0 = v7;
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_6(v5);
  dispatch_group_leave(v3);
  if (a2)
  {
    goto LABEL_6;
  }
}

uint64_t _dispatch_workloop_barrier_complete_cold_3(unint64_t a1, void *a2, int a3)
{
  result = 1;
  if ((a1 & 0xFF80004000000000) == 0 && (a1 & 0xFFFFFFFD) != 0)
  {
    if ((a1 & 0x2000000000) != 0)
    {
      _dispatch_event_loop_poke(a2, a1, a3 | 0x80000000);
    }

    else
    {
      _dispatch_queue_wakeup_with_override_slow(a2, a1, a3);
    }

    return 0;
  }

  return result;
}

void dispatch_async_swift_job_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Used Swift only SPI to enqueue non-Swift runtime objects into dispatch";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_channel_xref_dispose_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Release of a channel that has not been cancelled, but has a cancel acknowledgement callback";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void dispatch_channel_create_cold_2()
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Unsupported callbacks version";
  qword_1EBC5B9B0 = 0;
  __break(1u);
}

void *_dispatch_mgr_queue_push_cold_1(void *result, uint64_t a2, void *a3, uint64_t a4)
{
  result[13] = a2;
  *a3 = 0;
  if (((atomic_fetch_or_explicit(result + 7, 0x8000000000uLL, memory_order_release) ^ *(a4 + 24)) & 0xFFFFFFFC) != 0)
  {
    return _dispatch_event_loop_poke(0xFFFFFFFFFFFFFFF8, 0, 0);
  }

  return result;
}

void _dispatch_queue_is_exclusively_owned_by_current_thread_4IOHID_cold_1(unsigned __int16 a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid queue type";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_runloop_root_queue_perform_4CF_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Not a runloop queue";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_main_queue_drain_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: _dispatch_main_queue_callback_4CF called from the wrong thread";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_main_queue_drain_cold_5(void (**a1)(void *), uint64_t a2, _OWORD *a3)
{
  v4 = a2;
  *a1 = -4;
  *a3 = *(a2 + 160);
  *(a2 + 160) = &_dispatch_main_q;
  *(a2 + 168) = 0;
  v5 = *(a2 + 32);
  v6 = (__clz(__rbit32((v5 >> 8) & 0x3FFF)) << 8) + 256;
  if (((v5 >> 8) & 0x3FFF) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 224);
  if (v8 && atomic_fetch_add_explicit((v8 + 12), 1u, memory_order_relaxed) <= 0)
  {
    qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
    __break(1u);
LABEL_99:
    v34 = 0;
LABEL_100:
    _dispatch_set_priority_and_voucher_slow(v34, a2, 6);
    goto LABEL_90;
  }

  v39 = v5;
  LODWORD(v9) = v5 & 0x8E0000FF;
  if (((dword_1ED3F3614 ^ v7) & 0xF00) != 0)
  {
LABEL_93:
    _dispatch_main_queue_update_priority_from_thread();
  }

  LODWORD(v10) = v7 | v9;
  v11 = *(v4 + 200);
  v38 = v11;
  if (v11)
  {
    v12 = v10 & 0xFFF;
    if (v12)
    {
      v13 = v11 & 0x880F0000;
      v14 = v11 & 0xFFF;
      if (v14 > v12)
      {
        v12 = v14;
      }

      LODWORD(v10) = v13 | v12;
    }

    else
    {
      LODWORD(v10) = v11 | 0x40000000;
      if ((v11 & 0xFFF) == 0)
      {
        LODWORD(v10) = *(v4 + 200);
      }
    }
  }

  v40 = v8;
  if ((~v10 & 0xF0000) != 0)
  {
    v10 = v10 | 0xF0000;
  }

  else
  {
    v10 = v10;
  }

  *(v4 + 200) = v10;
  memset(v43, 0, sizeof(v43));
  v15 = off_1ED3F3628;
  if (!off_1ED3F3628)
  {
    v15 = _dispatch_wait_for_enqueuer(&off_1ED3F3628);
  }

  off_1ED3F3628 = 0;
  v9 = atomic_exchange_explicit(&qword_1ED3F35F0, 0, memory_order_release) & 0xFFFFFFFFFFFFFFF8;
  v8 = 0x7FFFFFFF02FFFFFFLL;
  do
  {
    if (v15 == v9)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15[2];
      if (!v16)
      {
        v16 = _dispatch_wait_for_enqueuer(v15 + 2);
      }
    }

    v7 = *(v4 + 192);
    if (v7)
    {
      (*v7)(&_dispatch_main_q);
    }

    v17 = *v15;
    if (*v15 >= 0x1000)
    {
      v18 = *v15;
      if (*(v17 + 40) == 1)
      {
        (*(v17 + 48))(v15, 0, 0);
      }

      else
      {
        (*(v17 + 64))(v15, v43, 0x80000);
      }

      if (v7)
      {
        goto LABEL_74;
      }

      goto LABEL_75;
    }

    v19 = v15[3];
    if ((v17 & 4) != 0)
    {
      v15[3] = -1;
    }

    v20 = v15[1];
    if (v20 == -1)
    {
      v23 = 0;
    }

    else
    {
      v21 = *(v4 + 200);
      if (((v21 >> 8) & 0xF) != 0)
      {
        v22 = 1 << ((BYTE1(v21) & 0xFu) + 7);
      }

      else
      {
        v22 = 0;
      }

      v23 = v22 | *(v4 + 200);
      if ((v20 & 0xFFFFFF) != 0)
      {
        if ((v20 & 0xFFFFFFuLL) >= (v22 & 0xFFFFFF00))
        {
          v24 = (v21 & 0x44000000) == 0 && (v15[1] & 0x10000000) == 0;
          if (!v24)
          {
            v23 = v20 & 0xFFFFFF;
          }
        }
      }

      else if (v21 >> 12)
      {
        v23 = (256 << ((v21 >> 12) - 1)) | 0xFF;
      }
    }

    v25 = v17 & 4;
    v26 = v23 & 0x7FFFFFFF02FFFFFFLL;
    v27 = *(v4 + 32);
    if ((v27 & 0x1000000) != 0)
    {
      if (v26)
      {
        goto LABEL_64;
      }

      v26 = v27 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v26 == (v27 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_49;
    }

    if (v26)
    {
      goto LABEL_64;
    }

LABEL_49:
    if (v19 == -1)
    {
      goto LABEL_65;
    }

    if (*(v4 + 224) != v19)
    {
      v26 = 0;
LABEL_64:
      _dispatch_set_priority_and_voucher_slow(v26, v19, v25 | 2);
      goto LABEL_65;
    }

    if ((v17 & 4) != 0 && v19)
    {
      OUTLINED_FUNCTION_11(v26, v19);
      if (v28 ^ v29 | v24)
      {
        qword_1EBC5B980 = "API MISUSE: Voucher over-release";
        __break(1u);
        goto LABEL_93;
      }

LABEL_66:
      v30 = *(v4 + 176);
      if (v30)
      {
        v31 = *(v30 + 8) + 1;
      }

      else
      {
        v31 = 1;
      }

      v25 = v15;
      if (v31 <= _dispatch_continuation_cache_limit)
      {
        v25 = 0;
        v15[2] = v30;
        *(v15 + 2) = v31;
        *(v4 + 176) = v15;
      }

      goto LABEL_71;
    }

LABEL_65:
    if ((v17 & 4) != 0)
    {
      goto LABEL_66;
    }

LABEL_71:
    if ((v17 & 8) != 0)
    {
      v32 = v15[6];
      v33 = *(v32->isa + 5);
      if (v33 != 514)
      {
        goto LABEL_102;
      }

      _dispatch_client_callout(v15[5], v15[4]);
      dispatch_group_leave(v32);
      if (!v25)
      {
LABEL_73:
        if (!v7)
        {
          goto LABEL_75;
        }

LABEL_74:
        v7[1](&_dispatch_main_q);
        goto LABEL_75;
      }
    }

    else
    {
      _dispatch_client_callout(v15[5], v15[4]);
      if (!v25)
      {
        goto LABEL_73;
      }
    }

    _dispatch_continuation_free_to_cache_limit(v25);
    if (v7)
    {
      goto LABEL_74;
    }

LABEL_75:
    v15 = v16;
  }

  while (v16);
  (*(_dispatch_main_q + 80))(&_dispatch_main_q, 0, 0);
  *(v4 + 200) = v38 & 0xFFF0FFFF;
  v34 = v39 & 0xFFFFFFFF02FFFFFFLL;
  if (v39 == -1)
  {
    v35 = 0;
  }

  else
  {
    v35 = v39 & 0xFFFFFFFF02FFFFFFLL;
  }

  v36 = *(v4 + 32);
  if ((v36 & 0x1000000) != 0)
  {
    v3 = a3;
    v7 = a1;
    a2 = v40;
    if (v35)
    {
      goto LABEL_100;
    }

    v35 = v36 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else
  {
    v3 = a3;
    v7 = a1;
    a2 = v40;
    if (v35 == (v36 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_86;
    }
  }

  v34 = v35;
  if (v35)
  {
    goto LABEL_100;
  }

LABEL_86:
  if (a2 == -1)
  {
    goto LABEL_90;
  }

  if (*(v4 + 224) != a2)
  {
    goto LABEL_99;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_11(v34, a2);
    if (v28 ^ v29 | v24)
    {
      qword_1EBC5B980 = "API MISUSE: Voucher over-release";
      __break(1u);
LABEL_102:
      qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected object type";
      qword_1EBC5B9B0 = v33;
      __break(1u);
      return;
    }
  }

LABEL_90:
  *(v4 + 160) = *v3;
  *v7 = 0;
  *(v4 + 40) = 0;
  v37 = *(v4 + 176);
  if (v37)
  {
    *(v4 + 176) = 0;
    _dispatch_cache_cleanup(v37);
  }
}

void _dispatch_queue_cleanup_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch queue is running";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_deferred_items_cleanup_cold_1(uint64_t a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Premature thread exit with unhandled deferred items";
  qword_1EBC5B9B0 = a1;
  __break(1u);
}

void _dispatch_queue_atfork_child_cold_1()
{
  v0 = qword_1ED3F35F8[0];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = v0;
  do
  {
    atomic_compare_exchange_strong_explicit(qword_1ED3F35F8, &v2, v0 & 0xFFFFFFFF00000003 | (4 * ((*(StatusReg + 24) >> 2) & 0x3FFFFFFFLL)), memory_order_relaxed, memory_order_relaxed);
    v3 = v2 == v0;
    v0 = v2;
  }

  while (!v3);
}

uint64_t _dispatch_worker_thread_cold_1(uint64_t a1, void *a2)
{
  if (a1 == 1)
  {
    return OUTLINED_FUNCTION_4(a1, a2);
  }

  qword_1EBC5B980 = "API MISUSE: Over-release of an object";
  __break(1u);
  return a1;
}

void _dispatch_worker_thread_cold_2(int a1)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Pending thread request underflow";
  qword_1EBC5B9B0 = a1 - 1;
  __break(1u);
}

void _dispatch_root_queues_init_once_cold_2(int a1, int a2)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Root queue initialization failed";
  qword_1EBC5B9B0 = a2 | (a1 << 16);
  __break(1u);
}