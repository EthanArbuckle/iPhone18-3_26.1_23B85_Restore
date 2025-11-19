uint64_t create_shader_programv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const char *const *a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      check_errors(v13);
      v16 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v16 >= 1)
      {
        handle_opengl_thread_conflict(v13);
      }

      return 0;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 6568);

  return v20(a1, a2, a3, a4);
}

char *bind_program_pipeline(__GLIContextRec *a1, uint64_t a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v10 > 1)
  {
    handle_opengl_thread_conflict(v9);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return bind_program_pipeline((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 6576);

    return v15(a1, a2);
  }

  else
  {
    v13 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v13 >= 1)
    {

      return handle_opengl_thread_conflict(v9);
    }
  }

  return result;
}

char *gen_program_pipelines(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 6592);

  return v18(a1, a2, a3);
}

char *get_program_pipelineiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 6608);

  return v20(a1, a2, a3, a4);
}

char *validate_program_pipeline(__GLIContextRec *a1, uint64_t a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v10 > 1)
  {
    handle_opengl_thread_conflict(v9);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return validate_program_pipeline((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 6616);

    return v15(a1, a2);
  }

  else
  {
    v13 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v13 >= 1)
    {

      return handle_opengl_thread_conflict(v9);
    }
  }

  return result;
}

char *get_program_pipeline_info_log(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4, char *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v21, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v19 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v19 >= 1)
      {

        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v22 = *(*(v15 + 24) + 6624);

  return v22(a1, a2, a3, a4, a5);
}

uint64_t program_uniform1i(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v23, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v25 = a3;
      v26 = a2;
      v17 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v17 + 144), v16);
      v18 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v26);
      if (v18)
      {
        v20 = v18[3];
        if (*(v20 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v20 + 328), &v25);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v17 + 144), v19);
      add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v24 = *(*(v13 + 24) + 6632);

  return v24(a1, a2, a3, a4);
}

uint64_t program_uniform2i(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v27 = a3;
      v28 = a2;
      v19 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v19 + 144), v18);
      v20 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v28);
      if (v20)
      {
        v22 = v20[3];
        if (*(v22 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v22 + 328), &v27);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v19 + 144), v21);
      add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v15 + 24) + 6640);

  return v26(a1, a2, a3, a4, a5);
}

uint64_t program_uniform3i(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v27 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v27, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v29 = a3;
      v30 = a2;
      v21 = *(v17 + 40);
      GPUTools::DYLockUtils::Lock((v21 + 144), v20);
      v22 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v17 + 40) + 104), &v30);
      if (v22)
      {
        v24 = v22[3];
        if (*(v24 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v24 + 328), &v29);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v21 + 144), v23);
      add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v28 = *(*(v17 + 24) + 6648);

  return v28(a1, a2, a3, a4, a5, a6);
}

uint64_t program_uniform4i(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v16 = *(v14 + 32);
    v17 = v16 >= a1;
    v18 = v16 < a1;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v15 == ContextInfo::activeCtxInfoMap + 8 || *(v15 + 32) > a1)
  {
LABEL_9:
    v15 = ContextInfo::activeCtxInfoMap + 8;
  }

  v19 = *(v15 + 40);
  v20 = atomic_fetch_add((v19 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v20 > 1)
  {
    handle_opengl_thread_conflict(v19);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    v29 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v29, 0, do_nothing);
  }

  else
  {
    *(v19 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v31 = a3;
      v32 = a2;
      v23 = *(v19 + 40);
      GPUTools::DYLockUtils::Lock((v23 + 144), v22);
      v24 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v19 + 40) + 104), &v32);
      if (v24)
      {
        v26 = v24[3];
        if (*(v26 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v26 + 328), &v31);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v23 + 144), v25);
      add = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v19);
      }

      return result;
    }

    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v30 = *(*(v19 + 24) + 6656);

  return v30(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t program_uniform1f(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v23, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v26 = a3;
      v27 = a2;
      v17 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v17 + 144), v16);
      v18 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v27);
      if (v18)
      {
        v20 = v18[3];
        if (*(v20 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v20 + 328), &v26);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v17 + 144), v19);
      add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v25 = *(*(v13 + 24) + 6664);
  v24.n128_f32[0] = a4;

  return v25(a1, a2, a3, v24);
}

uint64_t program_uniform2f(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v29 = a3;
      v30 = a2;
      v19 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v19 + 144), v18);
      v20 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v30);
      if (v20)
      {
        v22 = v20[3];
        if (*(v22 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v22 + 328), &v29);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v19 + 144), v21);
      add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v28 = *(*(v15 + 24) + 6672);
  v26.n128_f32[0] = a4;
  v27.n128_f32[0] = a5;

  return v28(a1, a2, a3, v26, v27);
}

uint64_t program_uniform3f(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float a4, float a5, float a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v27 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v27, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v32 = a3;
      v33 = a2;
      v21 = *(v17 + 40);
      GPUTools::DYLockUtils::Lock((v21 + 144), v20);
      v22 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v17 + 40) + 104), &v33);
      if (v22)
      {
        v24 = v22[3];
        if (*(v24 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v24 + 328), &v32);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v21 + 144), v23);
      add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v31 = *(*(v17 + 24) + 6680);
  v28.n128_f32[0] = a4;
  v29.n128_f32[0] = a5;
  v30.n128_f32[0] = a6;

  return v31(a1, a2, a3, v28, v29, v30);
}

uint64_t program_uniform4f(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float a4, float a5, float a6, float a7)
{
  v14 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v16 = *(v14 + 32);
    v17 = v16 >= a1;
    v18 = v16 < a1;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v15 == ContextInfo::activeCtxInfoMap + 8 || *(v15 + 32) > a1)
  {
LABEL_9:
    v15 = ContextInfo::activeCtxInfoMap + 8;
  }

  v19 = *(v15 + 40);
  v20 = atomic_fetch_add((v19 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v20 > 1)
  {
    handle_opengl_thread_conflict(v19);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    v29 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v29, 0, do_nothing);
  }

  else
  {
    *(v19 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v35 = a3;
      v36 = a2;
      v23 = *(v19 + 40);
      GPUTools::DYLockUtils::Lock((v23 + 144), v22);
      v24 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v19 + 40) + 104), &v36);
      if (v24)
      {
        v26 = v24[3];
        if (*(v26 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v26 + 328), &v35);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v23 + 144), v25);
      add = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v19);
      }

      return result;
    }

    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v34 = *(*(v19 + 24) + 6688);
  v30.n128_f32[0] = a4;
  v31.n128_f32[0] = a5;
  v32.n128_f32[0] = a6;
  v33.n128_f32[0] = a7;

  return v34(a1, a2, a3, v30, v31, v32, v33);
}

uint64_t program_uniform1iv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const int *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v27 = a3;
      v28 = a2;
      v19 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v19 + 144), v18);
      v20 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v28);
      if (v20)
      {
        v22 = v20[3];
        if (*(v22 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v22 + 328), &v27);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v19 + 144), v21);
      add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v15 + 24) + 6696);

  return v26(a1, a2, a3, a4, a5);
}

uint64_t program_uniform2iv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const int *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v27 = a3;
      v28 = a2;
      v19 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v19 + 144), v18);
      v20 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v28);
      if (v20)
      {
        v22 = v20[3];
        if (*(v22 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v22 + 328), &v27);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v19 + 144), v21);
      add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v15 + 24) + 6704);

  return v26(a1, a2, a3, a4, a5);
}

uint64_t program_uniform3iv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const int *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v27 = a3;
      v28 = a2;
      v19 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v19 + 144), v18);
      v20 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v28);
      if (v20)
      {
        v22 = v20[3];
        if (*(v22 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v22 + 328), &v27);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v19 + 144), v21);
      add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v15 + 24) + 6712);

  return v26(a1, a2, a3, a4, a5);
}

uint64_t program_uniform4iv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const int *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v27 = a3;
      v28 = a2;
      v19 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v19 + 144), v18);
      v20 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v28);
      if (v20)
      {
        v22 = v20[3];
        if (*(v22 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v22 + 328), &v27);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v19 + 144), v21);
      add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v15 + 24) + 6720);

  return v26(a1, a2, a3, a4, a5);
}

uint64_t program_uniform1fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const float *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v27 = a3;
      v28 = a2;
      v19 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v19 + 144), v18);
      v20 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v28);
      if (v20)
      {
        v22 = v20[3];
        if (*(v22 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v22 + 328), &v27);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v19 + 144), v21);
      add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v15 + 24) + 6728);

  return v26(a1, a2, a3, a4, a5);
}

uint64_t program_uniform2fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const float *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v27 = a3;
      v28 = a2;
      v19 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v19 + 144), v18);
      v20 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v28);
      if (v20)
      {
        v22 = v20[3];
        if (*(v22 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v22 + 328), &v27);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v19 + 144), v21);
      add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v15 + 24) + 6736);

  return v26(a1, a2, a3, a4, a5);
}

uint64_t program_uniform3fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const float *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v27 = a3;
      v28 = a2;
      v19 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v19 + 144), v18);
      v20 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v28);
      if (v20)
      {
        v22 = v20[3];
        if (*(v22 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v22 + 328), &v27);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v19 + 144), v21);
      add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v15 + 24) + 6744);

  return v26(a1, a2, a3, a4, a5);
}

uint64_t program_uniform4fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const float *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v27 = a3;
      v28 = a2;
      v19 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v19 + 144), v18);
      v20 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v28);
      if (v20)
      {
        v22 = v20[3];
        if (*(v22 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v22 + 328), &v27);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v19 + 144), v21);
      add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v15 + 24) + 6752);

  return v26(a1, a2, a3, a4, a5);
}

uint64_t program_uniform_matrix2fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const float *a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v27 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v27, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v29 = a3;
      v30 = a2;
      v21 = *(v17 + 40);
      GPUTools::DYLockUtils::Lock((v21 + 144), v20);
      v22 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v17 + 40) + 104), &v30);
      if (v22)
      {
        v24 = v22[3];
        if (*(v24 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v24 + 328), &v29);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v21 + 144), v23);
      add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v28 = *(*(v17 + 24) + 6760);

  return v28(a1, a2, a3, a4, a5, a6);
}

uint64_t program_uniform_matrix3fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const float *a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v27 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v27, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v29 = a3;
      v30 = a2;
      v21 = *(v17 + 40);
      GPUTools::DYLockUtils::Lock((v21 + 144), v20);
      v22 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v17 + 40) + 104), &v30);
      if (v22)
      {
        v24 = v22[3];
        if (*(v24 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v24 + 328), &v29);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v21 + 144), v23);
      add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v28 = *(*(v17 + 24) + 6768);

  return v28(a1, a2, a3, a4, a5, a6);
}

uint64_t program_uniform_matrix4fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const float *a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v27 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v27, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v29 = a3;
      v30 = a2;
      v21 = *(v17 + 40);
      GPUTools::DYLockUtils::Lock((v21 + 144), v20);
      v22 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v17 + 40) + 104), &v30);
      if (v22)
      {
        v24 = v22[3];
        if (*(v24 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v24 + 328), &v29);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v21 + 144), v23);
      add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v28 = *(*(v17 + 24) + 6776);

  return v28(a1, a2, a3, a4, a5, a6);
}

uint64_t program_uniform1ui(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v23, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v25 = a3;
      v26 = a2;
      v17 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v17 + 144), v16);
      v18 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v26);
      if (v18)
      {
        v20 = v18[3];
        if (*(v20 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v20 + 328), &v25);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v17 + 144), v19);
      add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v24 = *(*(v13 + 24) + 6784);

  return v24(a1, a2, a3, a4);
}

uint64_t program_uniform2ui(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v27 = a3;
      v28 = a2;
      v19 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v19 + 144), v18);
      v20 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v28);
      if (v20)
      {
        v22 = v20[3];
        if (*(v22 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v22 + 328), &v27);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v19 + 144), v21);
      add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v15 + 24) + 6792);

  return v26(a1, a2, a3, a4, a5);
}

uint64_t program_uniform3ui(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v27 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v27, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v29 = a3;
      v30 = a2;
      v21 = *(v17 + 40);
      GPUTools::DYLockUtils::Lock((v21 + 144), v20);
      v22 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v17 + 40) + 104), &v30);
      if (v22)
      {
        v24 = v22[3];
        if (*(v24 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v24 + 328), &v29);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v21 + 144), v23);
      add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v28 = *(*(v17 + 24) + 6800);

  return v28(a1, a2, a3, a4, a5, a6);
}

uint64_t program_uniform4ui(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v16 = *(v14 + 32);
    v17 = v16 >= a1;
    v18 = v16 < a1;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v15 == ContextInfo::activeCtxInfoMap + 8 || *(v15 + 32) > a1)
  {
LABEL_9:
    v15 = ContextInfo::activeCtxInfoMap + 8;
  }

  v19 = *(v15 + 40);
  v20 = atomic_fetch_add((v19 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v20 > 1)
  {
    handle_opengl_thread_conflict(v19);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    v29 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v29, 0, do_nothing);
  }

  else
  {
    *(v19 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v31 = a3;
      v32 = a2;
      v23 = *(v19 + 40);
      GPUTools::DYLockUtils::Lock((v23 + 144), v22);
      v24 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v19 + 40) + 104), &v32);
      if (v24)
      {
        v26 = v24[3];
        if (*(v26 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v26 + 328), &v31);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v23 + 144), v25);
      add = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v19);
      }

      return result;
    }

    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v30 = *(*(v19 + 24) + 6808);

  return v30(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t program_uniform1uiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const unsigned int *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v27 = a3;
      v28 = a2;
      v19 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v19 + 144), v18);
      v20 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v28);
      if (v20)
      {
        v22 = v20[3];
        if (*(v22 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v22 + 328), &v27);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v19 + 144), v21);
      add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v15 + 24) + 6816);

  return v26(a1, a2, a3, a4, a5);
}

uint64_t program_uniform2uiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const unsigned int *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v27 = a3;
      v28 = a2;
      v19 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v19 + 144), v18);
      v20 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v28);
      if (v20)
      {
        v22 = v20[3];
        if (*(v22 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v22 + 328), &v27);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v19 + 144), v21);
      add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v15 + 24) + 6824);

  return v26(a1, a2, a3, a4, a5);
}

uint64_t program_uniform3uiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const unsigned int *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v27 = a3;
      v28 = a2;
      v19 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v19 + 144), v18);
      v20 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v28);
      if (v20)
      {
        v22 = v20[3];
        if (*(v22 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v22 + 328), &v27);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v19 + 144), v21);
      add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v15 + 24) + 6832);

  return v26(a1, a2, a3, a4, a5);
}

uint64_t program_uniform4uiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const unsigned int *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v27 = a3;
      v28 = a2;
      v19 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v19 + 144), v18);
      v20 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v28);
      if (v20)
      {
        v22 = v20[3];
        if (*(v22 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v22 + 328), &v27);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v19 + 144), v21);
      add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v15 + 24) + 6840);

  return v26(a1, a2, a3, a4, a5);
}

uint64_t program_uniform_matrix2x3fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const float *a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v27 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v27, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v29 = a3;
      v30 = a2;
      v21 = *(v17 + 40);
      GPUTools::DYLockUtils::Lock((v21 + 144), v20);
      v22 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v17 + 40) + 104), &v30);
      if (v22)
      {
        v24 = v22[3];
        if (*(v24 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v24 + 328), &v29);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v21 + 144), v23);
      add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v28 = *(*(v17 + 24) + 6848);

  return v28(a1, a2, a3, a4, a5, a6);
}

uint64_t program_uniform_matrix3x2fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const float *a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v27 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v27, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v29 = a3;
      v30 = a2;
      v21 = *(v17 + 40);
      GPUTools::DYLockUtils::Lock((v21 + 144), v20);
      v22 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v17 + 40) + 104), &v30);
      if (v22)
      {
        v24 = v22[3];
        if (*(v24 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v24 + 328), &v29);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v21 + 144), v23);
      add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v28 = *(*(v17 + 24) + 6856);

  return v28(a1, a2, a3, a4, a5, a6);
}

uint64_t program_uniform_matrix2x4fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const float *a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v27 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v27, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v29 = a3;
      v30 = a2;
      v21 = *(v17 + 40);
      GPUTools::DYLockUtils::Lock((v21 + 144), v20);
      v22 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v17 + 40) + 104), &v30);
      if (v22)
      {
        v24 = v22[3];
        if (*(v24 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v24 + 328), &v29);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v21 + 144), v23);
      add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v28 = *(*(v17 + 24) + 6864);

  return v28(a1, a2, a3, a4, a5, a6);
}

uint64_t program_uniform_matrix4x2fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const float *a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v27 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v27, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v29 = a3;
      v30 = a2;
      v21 = *(v17 + 40);
      GPUTools::DYLockUtils::Lock((v21 + 144), v20);
      v22 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v17 + 40) + 104), &v30);
      if (v22)
      {
        v24 = v22[3];
        if (*(v24 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v24 + 328), &v29);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v21 + 144), v23);
      add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v28 = *(*(v17 + 24) + 6872);

  return v28(a1, a2, a3, a4, a5, a6);
}

uint64_t program_uniform_matrix3x4fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const float *a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v27 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v27, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v29 = a3;
      v30 = a2;
      v21 = *(v17 + 40);
      GPUTools::DYLockUtils::Lock((v21 + 144), v20);
      v22 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v17 + 40) + 104), &v30);
      if (v22)
      {
        v24 = v22[3];
        if (*(v24 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v24 + 328), &v29);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v21 + 144), v23);
      add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v28 = *(*(v17 + 24) + 6880);

  return v28(a1, a2, a3, a4, a5, a6);
}

uint64_t program_uniform_matrix4x3fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const float *a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v27 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v27, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v29 = a3;
      v30 = a2;
      v21 = *(v17 + 40);
      GPUTools::DYLockUtils::Lock((v21 + 144), v20);
      v22 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v17 + 40) + 104), &v30);
      if (v22)
      {
        v24 = v22[3];
        if (*(v24 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v24 + 328), &v29);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v21 + 144), v23);
      add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v28 = *(*(v17 + 24) + 6888);

  return v28(a1, a2, a3, a4, a5, a6);
}

char *release_shader_compiler(__GLIContextRec *a1)
{
  v1 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v3 = *(v1 + 32);
    v4 = v3 >= a1;
    v5 = v3 < a1;
    if (v4)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * v5);
  }

  while (v1);
  if (v2 == ContextInfo::activeCtxInfoMap + 8 || *(v2 + 32) > a1)
  {
LABEL_9:
    v2 = ContextInfo::activeCtxInfoMap + 8;
  }

  v6 = *(v2 + 40);
  v7 = atomic_fetch_add((v6 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v7 > 1)
  {
    handle_opengl_thread_conflict(v6);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return release_shader_compiler((v6 + 4640));
  }

  *(v6 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1)
  {
    result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand];
    if (result)
    {
      return release_shader_compiler((v6 + 4640));
    }
  }

  v10 = atomic_fetch_add((v6 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v10 >= 1)
  {

    return handle_opengl_thread_conflict(v6);
  }

  return result;
}

char *shader_binary(__GLIContextRec *a1, uint64_t a2, unsigned int *a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v23, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v21 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v21 >= 1)
      {

        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v24 = *(*(v17 + 24) + 7000);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *get_shader_precision_format(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4, int *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v21, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v19 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v19 >= 1)
      {

        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v22 = *(*(v15 + 24) + 7008);

  return v22(a1, a2, a3, a4, a5);
}

char *depth_rangef(__GLIContextRec *a1, float a2, float a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v11 + 24) + 7016);
  v18.n128_f32[0] = a2;
  v19.n128_f32[0] = a3;

  return v20(a1, v18, v19);
}

char *clear_depthf(__GLIContextRec *a1, float a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v10 > 1)
  {
    handle_opengl_thread_conflict(v9);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return clear_depthf((v9 + 4640), a2);
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 7024);
    v16.n128_f32[0] = a2;

    return v15(a1, v16);
  }

  else
  {
    v13 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v13 >= 1)
    {

      return handle_opengl_thread_conflict(v9);
    }
  }

  return result;
}

char *get_program_binary(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4, unsigned int *a5, void *a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v23, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v21 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v21 >= 1)
      {

        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v24 = *(*(v17 + 24) + 7096);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *program_binary(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v21, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v19 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v19 >= 1)
      {

        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v22 = *(*(v15 + 24) + 7104);

  return v22(a1, a2, a3, a4, a5);
}

char *bind_transform_feedback(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 7232);

  return v18(a1, a2, a3);
}

char *gen_transform_feedbacks(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 7240);

  return v18(a1, a2, a3);
}

char *delete_transform_feedbacks(__GLIContextRec *a1, uint64_t a2, const unsigned int *a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 7248);

  return v18(a1, a2, a3);
}

char *pause_transform_feedback(__GLIContextRec *a1)
{
  v1 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v3 = *(v1 + 32);
    v4 = v3 >= a1;
    v5 = v3 < a1;
    if (v4)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * v5);
  }

  while (v1);
  if (v2 == ContextInfo::activeCtxInfoMap + 8 || *(v2 + 32) > a1)
  {
LABEL_9:
    v2 = ContextInfo::activeCtxInfoMap + 8;
  }

  v6 = *(v2 + 40);
  v7 = atomic_fetch_add((v6 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v7 > 1)
  {
    handle_opengl_thread_conflict(v6);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return pause_transform_feedback((v6 + 4640));
  }

  *(v6 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1)
  {
    result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand];
    if (result)
    {
      return pause_transform_feedback((v6 + 4640));
    }
  }

  v10 = atomic_fetch_add((v6 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v10 >= 1)
  {

    return handle_opengl_thread_conflict(v6);
  }

  return result;
}

char *resume_transform_feedback(__GLIContextRec *a1)
{
  v1 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v3 = *(v1 + 32);
    v4 = v3 >= a1;
    v5 = v3 < a1;
    if (v4)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * v5);
  }

  while (v1);
  if (v2 == ContextInfo::activeCtxInfoMap + 8 || *(v2 + 32) > a1)
  {
LABEL_9:
    v2 = ContextInfo::activeCtxInfoMap + 8;
  }

  v6 = *(v2 + 40);
  v7 = atomic_fetch_add((v6 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v7 > 1)
  {
    handle_opengl_thread_conflict(v6);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return resume_transform_feedback((v6 + 4640));
  }

  *(v6 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1)
  {
    result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand];
    if (result)
    {
      return resume_transform_feedback((v6 + 4640));
    }
  }

  v10 = atomic_fetch_add((v6 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v10 >= 1)
  {

    return handle_opengl_thread_conflict(v6);
  }

  return result;
}

char *alpha_funcx(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 7744);

  return v18(a1, a2, a3);
}

char *clear_colorx(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v21, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v19 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v19 >= 1)
      {

        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v22 = *(*(v15 + 24) + 7752);

  return v22(a1, a2, a3, a4, a5);
}

char *clear_depthx(__GLIContextRec *a1, uint64_t a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v10 > 1)
  {
    handle_opengl_thread_conflict(v9);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return clear_depthx((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 7760);

    return v15(a1, a2);
  }

  else
  {
    v13 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v13 >= 1)
    {

      return handle_opengl_thread_conflict(v9);
    }
  }

  return result;
}

char *clip_planef(__GLIContextRec *a1, uint64_t a2, const float *a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 7768);

  return v18(a1, a2, a3);
}

char *clip_planex(__GLIContextRec *a1, uint64_t a2, const int *a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 7776);

  return v18(a1, a2, a3);
}

char *color4x(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v21, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v19 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v19 >= 1)
      {

        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v22 = *(*(v15 + 24) + 7784);

  return v22(a1, a2, a3, a4, a5);
}

char *depth_rangex(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 7792);

  return v18(a1, a2, a3);
}

char *fogx(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 7800);

  return v18(a1, a2, a3);
}

char *fogxv(__GLIContextRec *a1, uint64_t a2, const int *a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 7808);

  return v18(a1, a2, a3);
}

char *frustumf(__GLIContextRec *a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  v14 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v16 = *(v14 + 32);
    v17 = v16 >= a1;
    v18 = v16 < a1;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v15 == ContextInfo::activeCtxInfoMap + 8 || *(v15 + 32) > a1)
  {
LABEL_9:
    v15 = ContextInfo::activeCtxInfoMap + 8;
  }

  v19 = *(v15 + 40);
  v20 = atomic_fetch_add((v19 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v20 > 1)
  {
    handle_opengl_thread_conflict(v19);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v19 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v23 = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v23 >= 1)
      {

        return handle_opengl_thread_conflict(v19);
      }

      return result;
    }

    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v32 = *(*(v19 + 24) + 7816);
  v26.n128_f32[0] = a2;
  v27.n128_f32[0] = a3;
  v28.n128_f32[0] = a4;
  v29.n128_f32[0] = a5;
  v30.n128_f32[0] = a6;
  v31.n128_f32[0] = a7;

  return v32(a1, v26, v27, v28, v29, v30, v31);
}

char *frustumx(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v16 = *(v14 + 32);
    v17 = v16 >= a1;
    v18 = v16 < a1;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v15 == ContextInfo::activeCtxInfoMap + 8 || *(v15 + 32) > a1)
  {
LABEL_9:
    v15 = ContextInfo::activeCtxInfoMap + 8;
  }

  v19 = *(v15 + 40);
  v20 = atomic_fetch_add((v19 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v20 > 1)
  {
    handle_opengl_thread_conflict(v19);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v19 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v23 = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v23 >= 1)
      {

        return handle_opengl_thread_conflict(v19);
      }

      return result;
    }

    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v19 + 24) + 7824);

  return v26(a1, a2, a3, a4, a5, a6, a7);
}

char *get_clip_planef(__GLIContextRec *a1, uint64_t a2, float *a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 7832);

  return v18(a1, a2, a3);
}

char *get_clip_planex(__GLIContextRec *a1, uint64_t a2, int *a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 7840);

  return v18(a1, a2, a3);
}

char *get_fixedv(__GLIContextRec *a1, uint64_t a2, int *a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 7848);

  return v18(a1, a2, a3);
}

char *get_lightxv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 7856);

  return v20(a1, a2, a3, a4);
}

char *get_materialxv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 7864);

  return v20(a1, a2, a3, a4);
}

char *get_tex_envxv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 7872);

  return v20(a1, a2, a3, a4);
}

char *get_tex_parameterxv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 7880);

  return v20(a1, a2, a3, a4);
}

char *light_modelx(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 7888);

  return v18(a1, a2, a3);
}

char *light_modelxv(__GLIContextRec *a1, uint64_t a2, const int *a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 7896);

  return v18(a1, a2, a3);
}

char *lightx(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 7904);

  return v20(a1, a2, a3, a4);
}

char *lightxv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const int *a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 7912);

  return v20(a1, a2, a3, a4);
}

char *line_widthx(__GLIContextRec *a1, uint64_t a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v10 > 1)
  {
    handle_opengl_thread_conflict(v9);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return line_widthx((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 7920);

    return v15(a1, a2);
  }

  else
  {
    v13 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v13 >= 1)
    {

      return handle_opengl_thread_conflict(v9);
    }
  }

  return result;
}

char *load_matrixx(__GLIContextRec *a1, const int *a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v10 > 1)
  {
    handle_opengl_thread_conflict(v9);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return load_matrixx((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 7928);

    return v15(a1, a2);
  }

  else
  {
    v13 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v13 >= 1)
    {

      return handle_opengl_thread_conflict(v9);
    }
  }

  return result;
}

char *materialx(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 7936);

  return v20(a1, a2, a3, a4);
}

char *materialxv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const int *a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 7944);

  return v20(a1, a2, a3, a4);
}

char *mult_matrixx(__GLIContextRec *a1, const int *a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v10 > 1)
  {
    handle_opengl_thread_conflict(v9);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return mult_matrixx((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 7952);

    return v15(a1, a2);
  }

  else
  {
    v13 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v13 >= 1)
    {

      return handle_opengl_thread_conflict(v9);
    }
  }

  return result;
}

char *normal3x(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 7960);

  return v20(a1, a2, a3, a4);
}

char *orthof(__GLIContextRec *a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  v14 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v16 = *(v14 + 32);
    v17 = v16 >= a1;
    v18 = v16 < a1;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v15 == ContextInfo::activeCtxInfoMap + 8 || *(v15 + 32) > a1)
  {
LABEL_9:
    v15 = ContextInfo::activeCtxInfoMap + 8;
  }

  v19 = *(v15 + 40);
  v20 = atomic_fetch_add((v19 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v20 > 1)
  {
    handle_opengl_thread_conflict(v19);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v19 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v23 = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v23 >= 1)
      {

        return handle_opengl_thread_conflict(v19);
      }

      return result;
    }

    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v32 = *(*(v19 + 24) + 7968);
  v26.n128_f32[0] = a2;
  v27.n128_f32[0] = a3;
  v28.n128_f32[0] = a4;
  v29.n128_f32[0] = a5;
  v30.n128_f32[0] = a6;
  v31.n128_f32[0] = a7;

  return v32(a1, v26, v27, v28, v29, v30, v31);
}

char *orthox(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v16 = *(v14 + 32);
    v17 = v16 >= a1;
    v18 = v16 < a1;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v15 == ContextInfo::activeCtxInfoMap + 8 || *(v15 + 32) > a1)
  {
LABEL_9:
    v15 = ContextInfo::activeCtxInfoMap + 8;
  }

  v19 = *(v15 + 40);
  v20 = atomic_fetch_add((v19 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v20 > 1)
  {
    handle_opengl_thread_conflict(v19);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v19 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v23 = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v23 >= 1)
      {

        return handle_opengl_thread_conflict(v19);
      }

      return result;
    }

    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v19 + 24) + 7976);

  return v26(a1, a2, a3, a4, a5, a6, a7);
}

char *point_sizex(__GLIContextRec *a1, uint64_t a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v10 > 1)
  {
    handle_opengl_thread_conflict(v9);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return point_sizex((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 7984);

    return v15(a1, a2);
  }

  else
  {
    v13 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v13 >= 1)
    {

      return handle_opengl_thread_conflict(v9);
    }
  }

  return result;
}

char *polygon_offsetx(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 7992);

  return v18(a1, a2, a3);
}

char *rotatex(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v21, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v19 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v19 >= 1)
      {

        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v22 = *(*(v15 + 24) + 8000);

  return v22(a1, a2, a3, a4, a5);
}

char *scalex(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 8008);

  return v20(a1, a2, a3, a4);
}

char *tex_envx(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 8016);

  return v20(a1, a2, a3, a4);
}

char *tex_envxv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const int *a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 8024);

  return v20(a1, a2, a3, a4);
}

char *tex_parameterx(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 8032);

  return v20(a1, a2, a3, a4);
}

char *tex_parameterxv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const int *a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 8040);

  return v20(a1, a2, a3, a4);
}

char *translatex(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 8048);

  return v20(a1, a2, a3, a4);
}

char *multi_tex_coord4x(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v23, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v21 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v21 >= 1)
      {

        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v24 = *(*(v17 + 24) + 8056);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *sample_coveragex(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 8064);

  return v18(a1, a2, a3);
}

char *point_parameterx(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 8072);

  return v18(a1, a2, a3);
}

char *point_parameterxv(__GLIContextRec *a1, uint64_t a2, const int *a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v15 >= 1)
      {

        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 8080);

  return v18(a1, a2, a3);
}

char *current_palette_matrix_OES(__GLIContextRec *a1, uint64_t a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v10 > 1)
  {
    handle_opengl_thread_conflict(v9);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return current_palette_matrix_OES((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 8088);

    return v15(a1, a2);
  }

  else
  {
    v13 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v13 >= 1)
    {

      return handle_opengl_thread_conflict(v9);
    }
  }

  return result;
}

char *load_palette_from_modelview_matrix_OES(__GLIContextRec *a1)
{
  v1 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v3 = *(v1 + 32);
    v4 = v3 >= a1;
    v5 = v3 < a1;
    if (v4)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * v5);
  }

  while (v1);
  if (v2 == ContextInfo::activeCtxInfoMap + 8 || *(v2 + 32) > a1)
  {
LABEL_9:
    v2 = ContextInfo::activeCtxInfoMap + 8;
  }

  v6 = *(v2 + 40);
  v7 = atomic_fetch_add((v6 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v7 > 1)
  {
    handle_opengl_thread_conflict(v6);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return load_palette_from_modelview_matrix_OES((v6 + 4640));
  }

  *(v6 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1)
  {
    result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand];
    if (result)
    {
      return load_palette_from_modelview_matrix_OES((v6 + 4640));
    }
  }

  v10 = atomic_fetch_add((v6 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v10 >= 1)
  {

    return handle_opengl_thread_conflict(v6);
  }

  return result;
}

char *matrix_index_pointer_OES(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v21, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v19 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v19 >= 1)
      {

        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v22 = *(*(v15 + 24) + 8104);

  return v22(a1, a2, a3, a4, a5);
}

char *weight_pointer_OES(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v21, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v19 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v19 >= 1)
      {

        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v22 = *(*(v15 + 24) + 8112);

  return v22(a1, a2, a3, a4, a5);
}

char *drawtexs_OES(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v23, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v21 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v21 >= 1)
      {

        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v24 = *(*(v17 + 24) + 8120);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *drawtexi_OES(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v23, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v21 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v21 >= 1)
      {

        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v24 = *(*(v17 + 24) + 8128);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *drawtexx_OES(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v23, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v21 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v21 >= 1)
      {

        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v24 = *(*(v17 + 24) + 8136);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *drawtexsv_OES(__GLIContextRec *a1, const __int16 *a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v10 > 1)
  {
    handle_opengl_thread_conflict(v9);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return drawtexsv_OES((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 8144);

    return v15(a1, a2);
  }

  else
  {
    v13 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v13 >= 1)
    {

      return handle_opengl_thread_conflict(v9);
    }
  }

  return result;
}

char *drawtexiv_OES(__GLIContextRec *a1, const int *a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v10 > 1)
  {
    handle_opengl_thread_conflict(v9);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return drawtexiv_OES((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 8152);

    return v15(a1, a2);
  }

  else
  {
    v13 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v13 >= 1)
    {

      return handle_opengl_thread_conflict(v9);
    }
  }

  return result;
}

char *drawtexxv_OES(__GLIContextRec *a1, const int *a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v10 > 1)
  {
    handle_opengl_thread_conflict(v9);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return drawtexxv_OES((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 8160);

    return v15(a1, a2);
  }

  else
  {
    v13 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v13 >= 1)
    {

      return handle_opengl_thread_conflict(v9);
    }
  }

  return result;
}

char *drawtexf_OES(__GLIContextRec *a1, float a2, float a3, float a4, float a5, float a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v23, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v21 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v21 >= 1)
      {

        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v29 = *(*(v17 + 24) + 8168);
  v24.n128_f32[0] = a2;
  v25.n128_f32[0] = a3;
  v26.n128_f32[0] = a4;
  v27.n128_f32[0] = a5;
  v28.n128_f32[0] = a6;

  return v29(a1, v24, v25, v26, v27, v28);
}

char *drawtexfv_OES(__GLIContextRec *a1, const float *a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v10 > 1)
  {
    handle_opengl_thread_conflict(v9);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return drawtexfv_OES((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 8176);

    return v15(a1, a2);
  }

  else
  {
    v13 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v13 >= 1)
    {

      return handle_opengl_thread_conflict(v9);
    }
  }

  return result;
}

char *discard_framebuffer_EXT(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const unsigned int *a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 8184);

  return v20(a1, a2, a3, a4);
}

char *framebuffer_parameteri_APPLE(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const int *a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 0x2000);

  return v20(a1, a2, a3, a4);
}

char *get_framebuffer_parameteri_APPLE(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 8200);

  return v20(a1, a2, a3, a4);
}

char *resolve_multisample_framebuffer_APPLE(__GLIContextRec *a1)
{
  v1 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v3 = *(v1 + 32);
    v4 = v3 >= a1;
    v5 = v3 < a1;
    if (v4)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * v5);
  }

  while (v1);
  if (v2 == ContextInfo::activeCtxInfoMap + 8 || *(v2 + 32) > a1)
  {
LABEL_9:
    v2 = ContextInfo::activeCtxInfoMap + 8;
  }

  v6 = *(v2 + 40);
  v7 = atomic_fetch_add((v6 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v7 > 1)
  {
    handle_opengl_thread_conflict(v6);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    return resolve_multisample_framebuffer_APPLE((v6 + 4640));
  }

  *(v6 + 4838) = 257;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1)
  {
    result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand];
    if (result)
    {
      return resolve_multisample_framebuffer_APPLE((v6 + 4640));
    }
  }

  v10 = atomic_fetch_add((v6 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v10 >= 1)
  {

    return handle_opengl_thread_conflict(v6);
  }

  return result;
}

char *copy_texture_levels(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v21, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v19 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v19 >= 1)
      {

        return handle_opengl_thread_conflict(v15);
      }

      return result;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v22 = *(*(v15 + 24) + 8216);

  return v22(a1, a2, a3, a4, a5);
}

char *invalidate_sub_framebuffer(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v18 = *(v16 + 32);
    v19 = v18 >= a1;
    v20 = v18 < a1;
    if (v19)
    {
      v17 = v16;
    }

    v16 = *(v16 + 8 * v20);
  }

  while (v16);
  if (v17 == ContextInfo::activeCtxInfoMap + 8 || *(v17 + 32) > a1)
  {
LABEL_9:
    v17 = ContextInfo::activeCtxInfoMap + 8;
  }

  v21 = *(v17 + 40);
  v22 = atomic_fetch_add((v21 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v22 > 1)
  {
    handle_opengl_thread_conflict(v21);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
    v27 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v27, 0, do_nothing);
  }

  else
  {
    *(v21 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v25 = atomic_fetch_add((v21 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v25 >= 1)
      {

        return handle_opengl_thread_conflict(v21);
      }

      return result;
    }

    atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v28 = *(*(v21 + 24) + 8224);

  return v28(a1, a2, a3, a4, a5, a6, a7, a8);
}

char *get_internal_formativ(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v23, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v21 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v21 >= 1)
      {

        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v24 = *(*(v17 + 24) + 8232);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *tex_storage2D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v18 > 1)
  {
    handle_opengl_thread_conflict(v17);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v23, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v21 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v21 >= 1)
      {

        return handle_opengl_thread_conflict(v17);
      }

      return result;
    }

    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v24 = *(*(v17 + 24) + 8248);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *tex_storage3D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v16 = *(v14 + 32);
    v17 = v16 >= a1;
    v18 = v16 < a1;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v15 == ContextInfo::activeCtxInfoMap + 8 || *(v15 + 32) > a1)
  {
LABEL_9:
    v15 = ContextInfo::activeCtxInfoMap + 8;
  }

  v19 = *(v15 + 40);
  v20 = atomic_fetch_add((v19 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v20 > 1)
  {
    handle_opengl_thread_conflict(v19);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v25, 0, do_nothing);
  }

  else
  {
    *(v19 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v23 = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v23 >= 1)
      {

        return handle_opengl_thread_conflict(v19);
      }

      return result;
    }

    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v26 = *(*(v19 + 24) + 8256);

  return v26(a1, a2, a3, a4, a5, a6, a7);
}

char *label_object_with_responsible_process_APPLE(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v17 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v17 >= 1)
      {

        return handle_opengl_thread_conflict(v13);
      }

      return result;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 8264);

  return v20(a1, a2, a3, a4);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL OUTLINED_FUNCTION_6_1()
{

  return check_errors(v0);
}

int64x2_t *OUTLINED_FUNCTION_13_1(uint64_t a1, unsigned int a2, int a3)
{

  return GLDrawCommandStatistics::update((v3 + 32 * a2 + 3960), a2, a3, 1u);
}

void SharegroupInfo::SharegroupInfo(SharegroupInfo *this, EAGLSharegroup *a2)
{
  *this = a2;
  *(this + 1) = 0u;
  *(this + 2) = 1;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 14) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 104) = 0u;
  *(this + 24) = 1065353216;
  *(this + 120) = 0u;
  *(this + 34) = 1065353216;
  *(this + 152) = 0u;
  *(this + 36) = 0;
  *(this + 168) = 0u;
  *(this + 46) = 1065353216;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 232) = 0u;
  v2 = (this + 232);
  *(this + 56) = 1065353216;
  *(this + 248) = 0u;
  *(this + 34) = 0;
  *(this + 19) = 0u;
  *(this + 66) = 1065353216;
  *(this + 20) = 0u;
  *(this + 74) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 84) = 1065353216;
  *(this + 44) = 0;
  *(this + 43) = this + 352;
  *(this + 45) = 0;
  *(this + 92) = 0;
  v3 = 35648;
  v4 = &v3;
  *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 29, &v3) + 5) = kDYReservedGLNameGLSLObjectStart;
  v3 = 35407;
  v4 = &v3;
  *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v2, &v3) + 5) = kDYReservedGLNameGLSLProgramPipelineStart;
  v3 = 5890;
  v4 = &v3;
  *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v2, &v3) + 5) = kDYReservedGLNameTextureStart;
}

void sub_1DCB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::__tree<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__map_value_compare<__GLIContextRec *,std::__value_type<__GLIContextRec *,ContextInfo *>,std::less<__GLIContextRec *>,true>,std::allocator<std::__value_type<__GLIContextRec *,ContextInfo *>>>::destroy(v17, *v10);
  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](v16);
  v20 = *v18;
  if (*v18)
  {
    *(v11 + 280) = v20;
    operator delete(v20);
  }

  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](v15);
  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](v14);
  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](v13);
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::~__hash_table(v12);
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::~__hash_table(a9);
  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](a10);
  _Unwind_Resume(a1);
}

void SharegroupInfo::~SharegroupInfo(SharegroupInfo *this)
{
  std::__tree<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__map_value_compare<__GLIContextRec *,std::__value_type<__GLIContextRec *,ContextInfo *>,std::less<__GLIContextRec *>,true>,std::allocator<std::__value_type<__GLIContextRec *,ContextInfo *>>>::destroy(this + 344, *(this + 44));
  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](this + 304);
  v2 = *(this + 34);
  if (v2)
  {
    *(this + 35) = v2;
    operator delete(v2);
  }

  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](this + 232);
  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](this + 192);
  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](this + 152);
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::~__hash_table(this + 104);
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::~__hash_table(this + 64);
  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](this + 16);
}

void ContextInfo::ContextInfo(uint64_t a1, EAGLContext *a2, int a3, char a4)
{
  v8 = GPUTools::GL::Context::Context(a1, a2);
  *(v8 + 120) = 0u;
  v9 = v8 + 120;
  *(v8 + 14) = 0;
  *(v8 + 72) = 0u;
  v10 = v8 + 4096;
  *(v8 + 18) = 0;
  *(v8 + 19) = 0;
  *(v8 + 40) = 0;
  *(v8 + 42) = 0;
  *(v8 + 863) = 0;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 34) = 0;
  bzero(v8 + 176, 0xCB8uLL);
  *(v9 + 834) = a3;
  *(v9 + 3352) = 0u;
  *(v9 + 3368) = 0u;
  *(v9 + 423) = 0;
  *(v9 + 848) = 1065353216;
  *(v9 + 3400) = 0u;
  *(v9 + 3416) = 0u;
  *(v9 + 858) = 1065353216;
  *(v9 + 215) = 0u;
  *(v9 + 216) = 0u;
  *(v9 + 868) = 1065353216;
  *(v9 + 3480) = 0u;
  *(v9 + 3496) = 0u;
  *(v9 + 878) = 1065353216;
  *(v9 + 440) = 0;
  *(v9 + 442) = 0;
  *(v9 + 441) = 0;
  *(v9 + 886) = 0;
  *(v9 + 224) = 0u;
  *(v9 + 223) = 0u;
  *(v9 + 222) = 0u;
  bzero(v9 + 3616, 0x380uLL);
  *(v9 + 1130) = 0;
  *(v9 + 4717) = 0;
  v10[743] = 0;
  v10[744] = a4;
  *(v9 + 4721) = 0;
  v10[747] = 0;
  v11 = [DYGetGLGuestAppClient() graphicsSemaphore];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  if (!sharegroup_info_map)
  {
    operator new();
  }

  v12 = std::__hash_table<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::__unordered_map_hasher<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::hash<EAGLSharegroup *>,std::equal_to<EAGLSharegroup *>,true>,std::__unordered_map_equal<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::equal_to<EAGLSharegroup *>,std::hash<EAGLSharegroup *>,true>,std::allocator<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>>>::find<EAGLSharegroup *>(sharegroup_info_map, (a1 + 8));
  if (!v12)
  {
    operator new();
  }

  v13 = v12[3];
  *(a1 + 40) = v13;
  ++*(v13 + 8);
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *v9 = 0u;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 3)
  {
    context_enable_capturing(a1);
  }

  else
  {
    update_dispatch_table(*a1);
  }

  v14 = copy_renderers_info(a1);
  *(a1 + 48) = v14;
  ValueAtIndex = CFArrayGetValueAtIndex(v14, *(a1 + 56));
  if (![ValueAtIndex extensions])
  {
    v18 = "renderer_info.extensions";
    goto LABEL_31;
  }

  *(a1 + 64) = CFRetain([ValueAtIndex extensions]);
  v10[749] = 0;
  *(v10 + 759) = 0;
  *(v10 + 767) = 0;
  *(v10 + 751) = 0;
  *(v10 + 774) = 0;
  v16 = *(a1 + 3456);
  if (v16 <= 1)
  {
    if (!v16)
    {
      v10[748] = 1;
      *(a1 + 3460) = 2;
      v10[755] = 1;
      v10[757] = 1;
      *(v10 + 380) = 257;
      v10[762] = 1;
      v10[764] = 1;
      *(v10 + 767) = 257;
      v10[772] = 1;
      v10[774] = 1;
      goto LABEL_22;
    }

    if (v16 != 1)
    {
LABEL_22:
      ContextInfo::set_capability(a1, (a1 + 4846), "GL_ARB_separate_shader_objects", "GL_EXT_separate_shader_objects", 0);
      ContextInfo::set_capability(a1, v10 + 751, "GL_ARB_framebuffer_object", "GL_EXT_framebuffer_blit", "GL_APPLE_framebuffer_multisample", 0);
      ContextInfo::set_capability(a1, v10 + 752, "GL_ARB_framebuffer_object", "GL_EXT_framebuffer_multisample", "GL_APPLE_framebuffer_multisample", 0);
      ContextInfo::set_capability(a1, (a1 + 4849), "GL_APPLE_flush_buffer_range", 0);
      ContextInfo::set_capability(a1, v10 + 754, "GL_ARB_map_buffer_range", "GL_EXT_map_buffer_range", "GL_OES_map_buffer_range", 0);
      ContextInfo::set_capability(a1, v10 + 756, "GL_APPLE_vertex_array_object", "GL_ARB_vertex_array_object", "GL_OES_vertex_array_object", 0);
      ContextInfo::set_capability(a1, v10 + 758, "GL_ARB_instanced_arrays", "GL_EXT_instanced_arrays", 0);
      ContextInfo::set_capability(a1, (a1 + 4855), "GL_EXT_debug_label", 0);
      ContextInfo::set_capability(a1, v10 + 760, "GL_APPLE_texture_max_level", 0);
      ContextInfo::set_capability(a1, v10 + 763, "GL_ARB_sync", "GL_APPLE_sync", 0);
      ContextInfo::set_capability(a1, v10 + 764, "GL_EXT_shadow_samplers", 0);
      ContextInfo::set_capability(a1, (a1 + 4861), "GL_APPLE_row_bytes", 0);
      ContextInfo::set_capability(a1, v10 + 766, "GL_ARB_transform_feedback2", 0);
      ContextInfo::set_capability(a1, v10 + 769, "GL_ARB_sampler_objects", 0);
      ContextInfo::set_capability(a1, (a1 + 4866), "GL_ARB_texture_swizzle", 0);
      ContextInfo::set_capability(a1, (a1 + 4867), "GL_EXT_texture_storage", 0);
      ContextInfo::set_capability(a1, v10 + 772, "GL_EXT_occlusion_query_BOOLean", 0);
      ContextInfo::set_capability(a1, (a1 + 4869), "GL_EXT_framebuffer_sRGB", 0);
      ContextInfo::set_capability(a1, (a1 + 4873), "GL_APPLE_clip_distance", 0);
      if (is_extension_available(a1, "GL_APPLE_container_object_shareable"))
      {
        *(v10 + 767) = 257;
      }

      if (is_extension_available(a1, "GL_EXT_draw_buffers2"))
      {
        *(v10 + 775) = 257;
      }

      v19 = *(a1 + 32);
      v17 = *(a1 + 3456);
      GPUTools::GL::EnumerateTextureTargets();
      query_texture_unit_limits(a1, (a1 + 3432));
      if (*(a1 + 3456) == 1 || ((*(*(a1 + 32) + 832))(*(a1 + 16), 34921, v9 + 3332), *(v9 + 833) < 0x21u))
      {
        update_context_state_cache(a1);
        *(a1 + 3720) = 0;
        *(a1 + 3728) = mach_absolute_time();
        *(a1 + 4644) = 0u;
        *(a1 + 4660) = 0u;
        *(a1 + 4676) = 0u;
        *(a1 + 4692) = 0u;
        *(a1 + 4708) = 0u;
        *(a1 + 4724) = 0u;
        *(a1 + 4740) = 0u;
        *(a1 + 4756) = 0u;
        *(a1 + 4772) = 0u;
        *(a1 + 4788) = 0u;
        *(a1 + 4804) = 0u;
        *(a1 + 4820) = 0u;
        *(a1 + 4836) = 0;
        *(a1 + 3464) = [[DYContextInfo alloc] initWithIdentifier:a2 sharegroupIdentifier:*(a1 + 8) renderers:*(a1 + 48) currentRendererIndex:*(a1 + 56) api:*(a1 + 3456)];
        operator new();
      }

      v18 = "max_vertex_attribs <= DY_VA_CACHE_MAX_GENERIC";
LABEL_31:
      __assert_rtn("ContextInfo::ContextInfo(glctx_t, DYOpenGLAPI, BOOL)", &unk_204462, 0, v18);
    }

    v10[748] = 0;
    *(a1 + 3460) = 0;
    v10[755] = 1;
    v10[757] = 1;
    v10[762] = 1;
  }

  else
  {
    if (v16 != 2)
    {
      if (v16 == 4)
      {
        v10[748] = 0;
        *(a1 + 3460) = 3;
        *(v10 + 751) = 257;
        v10[754] = 1;
        *(v10 + 378) = 257;
        v10[758] = 1;
        *(v10 + 380) = 257;
        *(v10 + 763) = 257;
        *(v10 + 383) = 257;
        v10[774] = 1;
        *(v10 + 769) = 16843009;
      }

      else if (v16 == 3)
      {
        *(v10 + 374) = 257;
        *(a1 + 3460) = 3;
        *(v10 + 751) = 257;
        v10[754] = 1;
        v10[756] = 1;
        *(v10 + 380) = 257;
        *(v10 + 763) = 257;
        *(v10 + 193) = 16843009;
        v10[776] = 1;
      }

      goto LABEL_22;
    }

    v10[748] = 0;
    LOBYTE(v16) = 1;
    *(a1 + 3460) = 1;
    v10[757] = 1;
  }

  v10[767] = v16;
  goto LABEL_22;
}

void sub_1DD3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, void **a17)
{
  dispatch_semaphore_signal(v18);
  *(v20 - 96) = v19 + 3552;
  std::vector<std::function<void ()(ContextInfo *)>>::__destroy_vector::operator()[abi:ne200100]((v20 - 96));
  v22 = *(v19 + 3520);
  if (v22)
  {
    v17[456] = v22;
    operator delete(v22);
  }

  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](a14);
  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](v19 + 3440);
  std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::~__hash_table(a15);
  std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::~__hash_table(v19 + 3360);
  std::unique_ptr<GPUTools::ResourceUpdater>::reset[abi:ne200100](a16, 0);
  v23 = v17[426];
  if (v23)
  {
    v17[427] = v23;
    operator delete(v23);
  }

  v24 = 0;
  v25 = v17 + 18;
  while (1)
  {
    v26 = &v25[v24];
    v27 = v25[v24];
    if (v27)
    {
      free(v27);
    }

    *v26 = 0;
    v26[1] = 0;
    *(v26 + 4) = 0;
    v24 -= 3;
    if (v24 == -6)
    {
      *(v20 - 96) = v19 - 24;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v20 - 96));
      v28 = *a17;
      if (*a17)
      {
        v17[10] = v28;
        operator delete(v28);
      }

      _Unwind_Resume(a1);
    }
  }
}

GPUTools::GL::Context *GPUTools::GL::Context::Context(GPUTools::GL::Context *this, EAGLContext *a2)
{
  *this = a2;
  *(this + 1) = [(EAGLContext *)a2 sharegroup];
  v3 = *this;
  *(this + 2) = GLIContextFromEAGLContext();
  v4 = *this;
  *(this + 3) = GLCFrontDispatch();
  v5 = *this;
  *(this + 4) = GLCBackDispatch();
  return this;
}

BOOL ContextInfo::set_capability(_BOOL8 this, BOOL *a2, ...)
{
  va_start(va, a2);
  if (!*a2)
  {
    v3 = this;
    va_copy(v5, va);
    while (1)
    {
      v4 = va_arg(v5, const char *);
      if (!v4)
      {
        break;
      }

      this = is_extension_available(v3, v4);
      if (this)
      {
        *a2 = 1;
        return this;
      }
    }
  }

  return this;
}

void ___ZN11ContextInfoC2EP11EAGLContext11DYOpenGLAPIb_block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = v3[427];
  v5 = v3[428];
  if (v4 >= v5)
  {
    v7 = v3[426];
    v8 = v4 - v7;
    v9 = (v4 - v7) >> 2;
    v10 = v9 + 1;
    if ((v9 + 1) >> 62)
    {
      std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>((v3 + 426), v13);
    }

    v14 = (v4 - v7) >> 2;
    v15 = (4 * v9);
    v16 = (4 * v9 - 4 * v14);
    *v15 = a2;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = v3[426];
    v3[426] = v16;
    v3[427] = v6;
    v3[428] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v4 = a2;
    v6 = v4 + 4;
  }

  v3[427] = v6;
}

void swap_ctx_info_map(unint64_t a1)
{
  v1 = atomic_exchange(&ContextInfo::activeCtxInfoMap, a1);
  v2 = dispatch_time(0, 10000000000);
  global_queue = dispatch_get_global_queue(-2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___ZL17swap_ctx_info_mapPNSt3__13mapIP15__GLIContextRecP11ContextInfoNS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S4_EEEEEE_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  dispatch_after(v2, global_queue, block);
}

uint64_t *std::unique_ptr<GPUTools::ResourceUpdater>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 128);
    if (v3)
    {
      *(v2 + 136) = v3;
      operator delete(v3);
    }

    std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](v2 + 64);
    std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](v2 + 24);

    operator delete();
  }

  return result;
}

void ContextInfo::~ContextInfo(ContextInfo *this)
{
  v2 = [DYGetGLGuestAppClient() graphicsSemaphore];
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  v3 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(this + 2);
  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= v4;
    v8 = v6 < v4;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || v4 < *(v5 + 32))
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  if (*(v5 + 40) == this)
  {
    operator new();
  }

  v9 = *(this + 5);
  v10 = *(v9 + 8) - 1;
  *(v9 + 8) = v10;
  if (!v10)
  {
    v11 = sharegroup_info_map;
    v12 = std::__hash_table<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::__unordered_map_hasher<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::hash<EAGLSharegroup *>,std::equal_to<EAGLSharegroup *>,true>,std::__unordered_map_equal<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::equal_to<EAGLSharegroup *>,std::hash<EAGLSharegroup *>,true>,std::allocator<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>>>::find<EAGLSharegroup *>(sharegroup_info_map, v9);
    std::__hash_table<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::__unordered_map_hasher<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::hash<EAGLSharegroup *>,std::equal_to<EAGLSharegroup *>,true>,std::__unordered_map_equal<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::equal_to<EAGLSharegroup *>,std::hash<EAGLSharegroup *>,true>,std::allocator<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>>>::erase(v11, v12);
    v13 = *(this + 5);
    if (v13)
    {
      SharegroupInfo::~SharegroupInfo(v13);
      operator delete();
    }
  }

  v14 = *(this + 6);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(this + 8);
  if (v15)
  {
    CFRelease(v15);
  }

  if ((*(this + 4840) & 1) == 0)
  {
    v16 = [DYGetGLGuestAppClient() globalSyncQueue];
    ContextInfo::~ContextInfo(&block, this, v16);
  }

  ContextInfo::~ContextInfo(v2, this);
}

void *___ZN11ContextInfoD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = [DYGetGLGuestAppClient() state];
  if (result == (&dword_0 + 3))
  {
    result = [DYGetGLGuestAppClient() activeCaptureState];
    v3 = result;
    v4 = *(v1 + 3496);
    if (v4)
    {
      v5 = OBJC_IVAR___DYCaptureState__dispatchQueueLabelMap;
      do
      {
        result = std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__emplace_unique_key_args<void const*,std::pair<void const* const,std::string> const&>((v3 + v5), v4 + 2);
        v4 = *v4;
      }

      while (v4);
    }

    v6 = *(v1 + 3536);
    if (v6)
    {
      v7 = OBJC_IVAR___DYCaptureState__threadLabelMap;
      do
      {
        result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::string> const&>((v3 + v7), v6 + 2);
        v6 = *v6;
      }

      while (v6);
    }
  }

  return result;
}

void StringBuffer::reserve(void **this, size_t __size)
{
  if (__size)
  {
    if (this[1] < __size)
    {
      v4 = reallocf(*this, __size);
      *v4 = 0;
      *this = v4;
      this[1] = __size;
    }
  }

  else
  {
    v5 = *this;
    if (*this)
    {
      free(v5);
    }

    *this = 0;
    this[1] = 0;
  }
}

void StringBuffer::~StringBuffer(void **this)
{
  v1 = *this;
  if (v1)
  {
    free(v1);
  }
}

void ObjectNameArray::ObjectNameArray(ObjectNameArray *this, unint64_t a2)
{
  *(this + 5) = a2;
  if (a2 >= 9)
  {
    operator new[]();
  }

  *(this + 4) = this;
}

void ObjectNameArray::~ObjectNameArray(ObjectNameArray *this)
{
  v2 = *(this + 4);
  if (v2 != this && v2 != 0)
  {
    operator delete[]();
  }
}

void sub_1DDCB4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void ProgramShaderInfo::ProgramShaderInfo(ProgramShaderInfo *this, int a2, const ShaderInfo *a3)
{
  *this = a2;
  v3 = *(a3 + 1);
  *(this + 1) = *a3;
  *(this + 2) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a3 + 3);
  *(this + 3) = *(a3 + 2);
  *(this + 4) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a3 + 5);
  *(this + 5) = *(a3 + 4);
  *(this + 6) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }
}

void ProgramXfb::ProgramXfb(ProgramXfb *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 32) = 0;
  *(this + 3) = 0;
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t ProgramXfb::update(void ***this, ContextInfo *a2, uint64_t a3)
{
  std::vector<std::string>::clear[abi:ne200100](this + 1);
  *(this + 32) = 0;
  v7 = *(a2 + 4);
  GPUTools::GL::EnumerateProgramTransformFeedbackVaryings();
  result = (*(v7 + 5264))(*(a2 + 2), a3, 35967, this);
  *(this + 32) = 1;
  return result;
}

uint64_t ___ZN10ProgramXfb6updateER11ContextInfoj_block_invoke(uint64_t a1, const char **a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3 >= *(v2 + 24))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<char * const&>(v2 + 8, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char * const&,0>(v2 + 8, *(v2 + 16), a2);
    result = v3 + 24;
    *(v2 + 16) = v3 + 24;
  }

  *(v2 + 16) = result;
  return result;
}

void ProgramPipelineInfo::ProgramPipelineInfo(ProgramPipelineInfo *this)
{
  *(this + 14) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  operator new();
}

void sub_1DDF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = v10 + 12;
  std::vector<ProgramShaderInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10 + 9;
  std::vector<ProgramShaderInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10 + 6;
  std::vector<ProgramShaderInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10 + 3;
  std::vector<ProgramShaderInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10;
  std::vector<ProgramShaderInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_1DE114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](v11);
  a10 = v10 + 37;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  ProgramPipelineInfo::~ProgramPipelineInfo((v10 + 18));
  ProgramPipelineInfo::~ProgramPipelineInfo(v10);
  _Unwind_Resume(a1);
}

uint64_t ___ZL17swap_ctx_info_mapPNSt3__13mapIP15__GLIContextRecP11ContextInfoNS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S4_EEEEEE_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    std::__tree<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__map_value_compare<__GLIContextRec *,std::__value_type<__GLIContextRec *,ContextInfo *>,std::less<__GLIContextRec *>,true>,std::allocator<std::__value_type<__GLIContextRec *,ContextInfo *>>>::destroy(*(result + 32), *(v1 + 8));

    operator delete();
  }

  return result;
}

void std::__tree<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__map_value_compare<__GLIContextRec *,std::__value_type<__GLIContextRec *,ContextInfo *>,std::less<__GLIContextRec *>,true>,std::allocator<std::__value_type<__GLIContextRec *,ContextInfo *>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__map_value_compare<__GLIContextRec *,std::__value_type<__GLIContextRec *,ContextInfo *>,std::less<__GLIContextRec *>,true>,std::allocator<std::__value_type<__GLIContextRec *,ContextInfo *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__map_value_compare<__GLIContextRec *,std::__value_type<__GLIContextRec *,ContextInfo *>,std::less<__GLIContextRec *>,true>,std::allocator<std::__value_type<__GLIContextRec *,ContextInfo *>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::vector<ProgramShaderInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ProgramShaderInfo>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ProgramShaderInfo>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 56)
  {
    v5 = *(i - 8);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = *(i - 24);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *(i - 40);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  *(a1 + 8) = a2;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::vector<std::function<void ()(ContextInfo *)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<void ()(ContextInfo *)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(ContextInfo *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::__unordered_map_hasher<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::hash<EAGLSharegroup *>,std::equal_to<EAGLSharegroup *>,true>,std::__unordered_map_equal<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::equal_to<EAGLSharegroup *>,std::hash<EAGLSharegroup *>,true>,std::allocator<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>>>::find<EAGLSharegroup *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::__unordered_map_hasher<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::hash<EAGLSharegroup *>,std::equal_to<EAGLSharegroup *>,true>,std::__unordered_map_equal<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::equal_to<EAGLSharegroup *>,std::hash<EAGLSharegroup *>,true>,std::allocator<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>>>::__emplace_unique_key_args<EAGLSharegroup *,std::pair<EAGLSharegroup * const,SharegroupInfo *>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
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
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
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

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::map<__GLIContextRec *,ContextInfo *>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<__GLIContextRec *,ContextInfo *>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__tree_node<std::__value_type<__GLIContextRec *,ContextInfo *>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<__GLIContextRec *,ContextInfo *>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__tree_node<std::__value_type<__GLIContextRec *,ContextInfo *>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__map_value_compare<__GLIContextRec *,std::__value_type<__GLIContextRec *,ContextInfo *>,std::less<__GLIContextRec *>,true>,std::allocator<std::__value_type<__GLIContextRec *,ContextInfo *>>>::__emplace_hint_unique_key_args<__GLIContextRec *,std::pair<__GLIContextRec * const,ContextInfo *> const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__map_value_compare<__GLIContextRec *,std::__value_type<__GLIContextRec *,ContextInfo *>,std::less<__GLIContextRec *>,true>,std::allocator<std::__value_type<__GLIContextRec *,ContextInfo *>>>::__emplace_hint_unique_key_args<__GLIContextRec *,std::pair<__GLIContextRec * const,ContextInfo *> const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__map_value_compare<__GLIContextRec *,std::__value_type<__GLIContextRec *,ContextInfo *>,std::less<__GLIContextRec *>,true>,std::allocator<std::__value_type<__GLIContextRec *,ContextInfo *>>>::__find_equal<__GLIContextRec *>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__map_value_compare<__GLIContextRec *,std::__value_type<__GLIContextRec *,ContextInfo *>,std::less<__GLIContextRec *>,true>,std::allocator<std::__value_type<__GLIContextRec *,ContextInfo *>>>::__find_equal<__GLIContextRec *>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}