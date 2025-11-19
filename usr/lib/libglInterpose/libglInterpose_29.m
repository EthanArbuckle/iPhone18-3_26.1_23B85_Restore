char *get_uniform_indices(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const char *const *a4, unsigned int *a5)
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

  v22 = *(*(v15 + 24) + 3528);

  return v22(a1, a2, a3, a4, a5);
}

char *get_active_uniformsiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const unsigned int *a4, uint64_t a5, int *a6)
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

  v24 = *(*(v17 + 24) + 3536);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *get_active_uniform_blockiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
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

  v22 = *(*(v15 + 24) + 3560);

  return v22(a1, a2, a3, a4, a5);
}

char *get_active_uniform_block_name(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, char *a6)
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

  v24 = *(*(v17 + 24) + 3568);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *uniform_block_binding(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v20 = *(*(v13 + 24) + 3576);

  return v20(a1, a2, a3, a4);
}

char *blend_equation_separate(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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

  v18 = *(*(v11 + 24) + 3664);

  return v18(a1, a2, a3);
}

char *sample_coverage(__GLIContextRec *a1, float a2, uint64_t a3)
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

  v19 = *(*(v11 + 24) + 3672);
  v18.n128_f32[0] = a2;

  return v19(a1, a3, v18);
}

char *gen_fences_APPLE(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
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

  v18 = *(*(v11 + 24) + 3704);

  return v18(a1, a2, a3);
}

char *delete_fences_APPLE(__GLIContextRec *a1, uint64_t a2, const unsigned int *a3)
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

  v18 = *(*(v11 + 24) + 3712);

  return v18(a1, a2, a3);
}

char *set_fence_APPLE(__GLIContextRec *a1, uint64_t a2)
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
    return set_fence_APPLE((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 3720);

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

char *finish_fence_APPLE(__GLIContextRec *a1, uint64_t a2)
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
    return finish_fence_APPLE((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 3744);

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

char *finish_object_APPLE(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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

  v18 = *(*(v11 + 24) + 3760);

  return v18(a1, a2, a3);
}

char *vertex_attrib_pointer(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7)
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

  v26 = *(*(v19 + 24) + 4088);

  return v26(a1, a2, a3, a4, a5, a6, a7);
}

char *enable_vertex_attrib_array(__GLIContextRec *a1, uint64_t a2)
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
    return enable_vertex_attrib_array((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 4096);

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

char *disable_vertex_attrib_array(__GLIContextRec *a1, uint64_t a2)
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
    return disable_vertex_attrib_array((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 4104);

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

char *get_vertex_attribfv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float *a4)
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

  v20 = *(*(v13 + 24) + 4120);

  return v20(a1, a2, a3, a4);
}

char *get_vertex_attribiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
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

  v20 = *(*(v13 + 24) + 4128);

  return v20(a1, a2, a3, a4);
}

char *get_vertex_attrib_pointerv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, void **a4)
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

  v20 = *(*(v13 + 24) + 4136);

  return v20(a1, a2, a3, a4);
}

char *point_parameterf(__GLIContextRec *a1, uint64_t a2, float a3)
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

  v19 = *(*(v11 + 24) + 4320);
  v18.n128_f32[0] = a3;

  return v19(a1, a2, v18);
}

char *point_parameterfv(__GLIContextRec *a1, uint64_t a2, const float *a3)
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

  v18 = *(*(v11 + 24) + 4328);

  return v18(a1, a2, a3);
}

char *stencil_op_separate(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v22 = *(*(v15 + 24) + 4688);

  return v22(a1, a2, a3, a4, a5);
}

uint64_t delete_object_ARB(__GLIContextRec *a1, volatile int *a2)
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
    return delete_object_ARB((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 4728);

    return v15(a1, a2);
  }

  else
  {
    wrapper_cache_shader_delete(v9, a2);
    result = wrapper_cache_program_delete(v9, a2);
    v13 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v13 >= 1)
    {

      return handle_opengl_thread_conflict(v9);
    }
  }

  return result;
}

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
  wrapper_cache_shader_delete(v9, a2);
  wrapper_cache_program_delete(v9, a2);
  v10 = *(*(v9 + 4) + 4728);

  return v10(a1, a2);
}

uint64_t detach_object_ARB(__GLIContextRec *a1, volatile int *a2, uint64_t a3)
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
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      result = wrapper_cache_shader_pre_detach(v11, a2, a3);
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

  v18 = *(*(v11 + 24) + 4744);

  return v18(a1, a2, a3);
}

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
  wrapper_cache_shader_pre_detach(v11, a2, a3);
  v12 = *(*(v11 + 4) + 4744);

  return v12(a1, a2, a3);
}

uint64_t shader_source_ARB(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const char *const *a4, const int *a5)
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
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      result = wrapper_cache_shader_source(v15, a2);
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

  v22 = *(*(v15 + 24) + 4760);

  return v22(a1, a2, a3, a4, a5);
}

char *validate_program_ARB(__GLIContextRec *a1, void *a2)
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
    return validate_program_ARB((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 4808);

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

uint64_t uniform1f(__GLIContextRec *a1, uint64_t a2, float a3)
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
    v22 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v22, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v15 = *(v11 + 2068);
      v25 = a2;
      v26 = v15;
      v16 = *(v11 + 40);
      GPUTools::DYLockUtils::Lock((v16 + 144), v14);
      v17 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v11 + 40) + 104), &v26);
      if (v17)
      {
        v19 = v17[3];
        if (*(v19 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v19 + 328), &v25);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v16 + 144), v18);
      add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v24 = *(*(v11 + 24) + 4816);
  v23.n128_f32[0] = a3;

  return v24(a1, a2, v23);
}

uint64_t uniform2f(__GLIContextRec *a1, uint64_t a2, float a3, float a4)
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
    v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v24, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v17 = *(v13 + 2068);
      v28 = a2;
      v29 = v17;
      v18 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v18 + 144), v16);
      v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v29);
      if (v19)
      {
        v21 = v19[3];
        if (*(v21 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v21 + 328), &v28);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v18 + 144), v20);
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

  v27 = *(*(v13 + 24) + 4824);
  v25.n128_f32[0] = a3;
  v26.n128_f32[0] = a4;

  return v27(a1, a2, v25, v26);
}

uint64_t uniform3f(__GLIContextRec *a1, uint64_t a2, float a3, float a4, float a5)
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
    v26 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v26, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v19 = *(v15 + 2068);
      v31 = a2;
      v32 = v19;
      v20 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v20 + 144), v18);
      v21 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v32);
      if (v21)
      {
        v23 = v21[3];
        if (*(v23 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v23 + 328), &v31);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v20 + 144), v22);
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

  v30 = *(*(v15 + 24) + 4832);
  v27.n128_f32[0] = a3;
  v28.n128_f32[0] = a4;
  v29.n128_f32[0] = a5;

  return v30(a1, a2, v27, v28, v29);
}

uint64_t uniform4f(__GLIContextRec *a1, uint64_t a2, float a3, float a4, float a5, float a6)
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
    v28 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v28, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v21 = *(v17 + 2068);
      v34 = a2;
      v35 = v21;
      v22 = *(v17 + 40);
      GPUTools::DYLockUtils::Lock((v22 + 144), v20);
      v23 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v17 + 40) + 104), &v35);
      if (v23)
      {
        v25 = v23[3];
        if (*(v25 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v25 + 328), &v34);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v22 + 144), v24);
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

  v33 = *(*(v17 + 24) + 4840);
  v29.n128_f32[0] = a3;
  v30.n128_f32[0] = a4;
  v31.n128_f32[0] = a5;
  v32.n128_f32[0] = a6;

  return v33(a1, a2, v29, v30, v31, v32);
}

uint64_t uniform1i(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
    v22 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v22, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v15 = *(v11 + 2068);
      v24 = a2;
      v25 = v15;
      v16 = *(v11 + 40);
      GPUTools::DYLockUtils::Lock((v16 + 144), v14);
      v17 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v11 + 40) + 104), &v25);
      if (v17)
      {
        v19 = v17[3];
        if (*(v19 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v19 + 328), &v24);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v16 + 144), v18);
      add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v23 = *(*(v11 + 24) + 4848);

  return v23(a1, a2, a3);
}

uint64_t uniform2i(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v24, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v17 = *(v13 + 2068);
      v26 = a2;
      v27 = v17;
      v18 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v18 + 144), v16);
      v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v27);
      if (v19)
      {
        v21 = v19[3];
        if (*(v21 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v21 + 328), &v26);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v18 + 144), v20);
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

  v25 = *(*(v13 + 24) + 4856);

  return v25(a1, a2, a3, a4);
}

uint64_t uniform3i(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    v26 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v26, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v19 = *(v15 + 2068);
      v28 = a2;
      v29 = v19;
      v20 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v20 + 144), v18);
      v21 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v29);
      if (v21)
      {
        v23 = v21[3];
        if (*(v23 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v23 + 328), &v28);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v20 + 144), v22);
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

  v27 = *(*(v15 + 24) + 4864);

  return v27(a1, a2, a3, a4, a5);
}

uint64_t uniform4i(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
    v28 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v28, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v21 = *(v17 + 2068);
      v30 = a2;
      v31 = v21;
      v22 = *(v17 + 40);
      GPUTools::DYLockUtils::Lock((v22 + 144), v20);
      v23 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v17 + 40) + 104), &v31);
      if (v23)
      {
        v25 = v23[3];
        if (*(v25 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v25 + 328), &v30);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v22 + 144), v24);
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

  v29 = *(*(v17 + 24) + 4872);

  return v29(a1, a2, a3, a4, a5, a6);
}

uint64_t uniform1fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const float *a4)
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
    v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v24, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v17 = *(v13 + 2068);
      v26 = a2;
      v27 = v17;
      v18 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v18 + 144), v16);
      v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v27);
      if (v19)
      {
        v21 = v19[3];
        if (*(v21 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v21 + 328), &v26);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v18 + 144), v20);
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

  v25 = *(*(v13 + 24) + 4880);

  return v25(a1, a2, a3, a4);
}

uint64_t uniform2fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const float *a4)
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
    v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v24, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v17 = *(v13 + 2068);
      v26 = a2;
      v27 = v17;
      v18 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v18 + 144), v16);
      v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v27);
      if (v19)
      {
        v21 = v19[3];
        if (*(v21 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v21 + 328), &v26);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v18 + 144), v20);
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

  v25 = *(*(v13 + 24) + 4888);

  return v25(a1, a2, a3, a4);
}

uint64_t uniform3fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const float *a4)
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
    v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v24, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v17 = *(v13 + 2068);
      v26 = a2;
      v27 = v17;
      v18 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v18 + 144), v16);
      v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v27);
      if (v19)
      {
        v21 = v19[3];
        if (*(v21 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v21 + 328), &v26);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v18 + 144), v20);
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

  v25 = *(*(v13 + 24) + 4896);

  return v25(a1, a2, a3, a4);
}

uint64_t uniform4fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const float *a4)
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
    v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v24, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v17 = *(v13 + 2068);
      v26 = a2;
      v27 = v17;
      v18 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v18 + 144), v16);
      v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v27);
      if (v19)
      {
        v21 = v19[3];
        if (*(v21 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v21 + 328), &v26);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v18 + 144), v20);
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

  v25 = *(*(v13 + 24) + 4904);

  return v25(a1, a2, a3, a4);
}

uint64_t uniform1iv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const int *a4)
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
    v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v24, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v17 = *(v13 + 2068);
      v26 = a2;
      v27 = v17;
      v18 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v18 + 144), v16);
      v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v27);
      if (v19)
      {
        v21 = v19[3];
        if (*(v21 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v21 + 328), &v26);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v18 + 144), v20);
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

  v25 = *(*(v13 + 24) + 4912);

  return v25(a1, a2, a3, a4);
}

uint64_t uniform2iv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const int *a4)
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
    v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v24, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v17 = *(v13 + 2068);
      v26 = a2;
      v27 = v17;
      v18 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v18 + 144), v16);
      v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v27);
      if (v19)
      {
        v21 = v19[3];
        if (*(v21 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v21 + 328), &v26);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v18 + 144), v20);
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

  v25 = *(*(v13 + 24) + 4920);

  return v25(a1, a2, a3, a4);
}

uint64_t uniform3iv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const int *a4)
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
    v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v24, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v17 = *(v13 + 2068);
      v26 = a2;
      v27 = v17;
      v18 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v18 + 144), v16);
      v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v27);
      if (v19)
      {
        v21 = v19[3];
        if (*(v21 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v21 + 328), &v26);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v18 + 144), v20);
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

  v25 = *(*(v13 + 24) + 4928);

  return v25(a1, a2, a3, a4);
}

uint64_t uniform4iv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const int *a4)
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
    v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v24, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v17 = *(v13 + 2068);
      v26 = a2;
      v27 = v17;
      v18 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v18 + 144), v16);
      v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v27);
      if (v19)
      {
        v21 = v19[3];
        if (*(v21 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v21 + 328), &v26);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v18 + 144), v20);
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

  v25 = *(*(v13 + 24) + 4936);

  return v25(a1, a2, a3, a4);
}

uint64_t uniform_matrix2fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const float *a5)
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
    v26 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v26, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v19 = *(v15 + 2068);
      v28 = a2;
      v29 = v19;
      v20 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v20 + 144), v18);
      v21 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v29);
      if (v21)
      {
        v23 = v21[3];
        if (*(v23 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v23 + 328), &v28);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v20 + 144), v22);
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

  v27 = *(*(v15 + 24) + 4944);

  return v27(a1, a2, a3, a4, a5);
}

uint64_t uniform_matrix3fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const float *a5)
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
    v26 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v26, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v19 = *(v15 + 2068);
      v28 = a2;
      v29 = v19;
      v20 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v20 + 144), v18);
      v21 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v29);
      if (v21)
      {
        v23 = v21[3];
        if (*(v23 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v23 + 328), &v28);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v20 + 144), v22);
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

  v27 = *(*(v15 + 24) + 4952);

  return v27(a1, a2, a3, a4, a5);
}

uint64_t uniform_matrix4fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const float *a5)
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
    v26 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v26, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v19 = *(v15 + 2068);
      v28 = a2;
      v29 = v19;
      v20 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v20 + 144), v18);
      v21 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v29);
      if (v21)
      {
        v23 = v21[3];
        if (*(v23 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v23 + 328), &v28);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v20 + 144), v22);
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

  v27 = *(*(v15 + 24) + 4960);

  return v27(a1, a2, a3, a4, a5);
}

char *get_active_uniform_ARB(__GLIContextRec *a1, void *a2, uint64_t a3, uint64_t a4, int *a5, int *a6, unsigned int *a7, char *a8)
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

  v28 = *(*(v21 + 24) + 5008);

  return v28(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t get_uniformfv_ARB(__GLIContextRec *a1, void *a2, uint64_t a3, float *a4)
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

  v24 = *(*(v13 + 24) + 5016);

  return v24(a1, a2, a3, a4);
}

uint64_t get_uniformiv_ARB(__GLIContextRec *a1, void *a2, uint64_t a3, int *a4)
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

  v24 = *(*(v13 + 24) + 5024);

  return v24(a1, a2, a3, a4);
}

char *get_shader_source_ARB(__GLIContextRec *a1, void *a2, uint64_t a3, int *a4, char *a5)
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

  v22 = *(*(v15 + 24) + 5032);

  return v22(a1, a2, a3, a4, a5);
}

char *bind_attrib_location_ARB(__GLIContextRec *a1, void *a2, uint64_t a3, const char *a4)
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

  v20 = *(*(v13 + 24) + 5040);

  return v20(a1, a2, a3, a4);
}

char *get_active_attrib_ARB(__GLIContextRec *a1, void *a2, uint64_t a3, uint64_t a4, int *a5, int *a6, unsigned int *a7, char *a8)
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

  v28 = *(*(v21 + 24) + 5048);

  return v28(a1, a2, a3, a4, a5, a6, a7, a8);
}

char *gen_queries(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
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

  v18 = *(*(v11 + 24) + 5072);

  return v18(a1, a2, a3);
}

char *delete_queries(__GLIContextRec *a1, uint64_t a2, const unsigned int *a3)
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

  v18 = *(*(v11 + 24) + 5080);

  return v18(a1, a2, a3);
}

char *begin_query(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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

  v18 = *(*(v11 + 24) + 5096);

  return v18(a1, a2, a3);
}

char *end_query(__GLIContextRec *a1, uint64_t a2)
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
    return end_query((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 5104);

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

char *get_queryiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
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

  v20 = *(*(v13 + 24) + 5112);

  return v20(a1, a2, a3, a4);
}

char *get_query_objectiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
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

  v20 = *(*(v13 + 24) + 5120);

  return v20(a1, a2, a3, a4);
}

char *get_query_objectuiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
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

  v20 = *(*(v13 + 24) + 5128);

  return v20(a1, a2, a3, a4);
}

char *gen_buffers(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
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

  v18 = *(*(v11 + 24) + 5152);

  return v18(a1, a2, a3);
}

char *buffer_sub_data(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
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

  v22 = *(*(v15 + 24) + 5176);

  return v22(a1, a2, a3, a4, a5);
}

char *get_buffer_parameteriv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
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

  v20 = *(*(v13 + 24) + 5208);

  return v20(a1, a2, a3, a4);
}

char *get_buffer_pointerv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, void **a4)
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

  v20 = *(*(v13 + 24) + 5216);

  return v20(a1, a2, a3, a4);
}

char *draw_buffers(__GLIContextRec *a1, uint64_t a2, const unsigned int *a3)
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

  v18 = *(*(v11 + 24) + 5232);

  return v18(a1, a2, a3);
}

char *get_shaderiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
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

  v20 = *(*(v13 + 24) + 5256);

  return v20(a1, a2, a3, a4);
}

char *get_programiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
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

  v20 = *(*(v13 + 24) + 5264);

  return v20(a1, a2, a3, a4);
}

char *get_shader_info_log(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4, char *a5)
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

  v22 = *(*(v15 + 24) + 5272);

  return v22(a1, a2, a3, a4, a5);
}

char *get_program_info_log(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4, char *a5)
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

  v22 = *(*(v15 + 24) + 5280);

  return v22(a1, a2, a3, a4, a5);
}

char *stencil_func_separate(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v22 = *(*(v15 + 24) + 5288);

  return v22(a1, a2, a3, a4, a5);
}

char *stencil_mask_separate(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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

  v18 = *(*(v11 + 24) + 5296);

  return v18(a1, a2, a3);
}

char *bind_renderbuffer(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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

  v18 = *(*(v11 + 24) + 5328);

  return v18(a1, a2, a3);
}

char *delete_renderbuffers(__GLIContextRec *a1, uint64_t a2, const unsigned int *a3)
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

  v18 = *(*(v11 + 24) + 5336);

  return v18(a1, a2, a3);
}

char *gen_renderbuffers(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
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

  v18 = *(*(v11 + 24) + 5344);

  return v18(a1, a2, a3);
}

char *renderbuffer_storage(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v22 = *(*(v15 + 24) + 5352);

  return v22(a1, a2, a3, a4, a5);
}

char *get_renderbuffer_parameteriv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
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

  v20 = *(*(v13 + 24) + 5360);

  return v20(a1, a2, a3, a4);
}

char *bind_framebuffer(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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

  v18 = *(*(v11 + 24) + 5376);

  return v18(a1, a2, a3);
}

char *delete_framebuffers(__GLIContextRec *a1, uint64_t a2, const unsigned int *a3)
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

  v18 = *(*(v11 + 24) + 5384);

  return v18(a1, a2, a3);
}

char *gen_framebuffers(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
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

  v18 = *(*(v11 + 24) + 5392);

  return v18(a1, a2, a3);
}

char *framebuffer_texture2D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  v24 = *(*(v17 + 24) + 5416);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *framebuffer_renderbuffer(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v22 = *(*(v15 + 24) + 5432);

  return v22(a1, a2, a3, a4, a5);
}

char *get_framebuffer_attachment_parameteriv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
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

  v22 = *(*(v15 + 24) + 5440);

  return v22(a1, a2, a3, a4, a5);
}

char *generate_mipmap(__GLIContextRec *a1, uint64_t a2)
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
    return generate_mipmap((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 5448);

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

uint64_t program_parameteri(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v18, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      result = check_errors(v13);
      if ((gCheckGLErrors & 1) == 0)
      {
        result = check_errors(v13);
      }

      if (!*(v13 + 3404))
      {
        result = wrapper_cache_program_parameter(v13, a2, a3, a4);
      }

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

  v19 = *(*(v13 + 24) + 5512);

  return v19(a1, a2, a3, a4);
}

char *framebuffer_texture_layer(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  v24 = *(*(v17 + 24) + 5528);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *end_transform_feedback(__GLIContextRec *a1)
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
    return end_transform_feedback((v6 + 4640));
  }

  *(v6 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1)
  {
    result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand];
    if (result)
    {
      return end_transform_feedback((v6 + 4640));
    }
  }

  v10 = atomic_fetch_add((v6 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v10 >= 1)
  {

    return handle_opengl_thread_conflict(v6);
  }

  return result;
}

uint64_t transform_feedback_varyings(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const char *const *a4, uint64_t a5)
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
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      result = wrapper_cache_program_xfb_varyings(v15, a2);
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

  v22 = *(*(v15 + 24) + 5584);

  return v22(a1, a2, a3, a4, a5);
}

char *get_transform_feedback_varying(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, int *a6, unsigned int *a7, char *a8)
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

  v28 = *(*(v21 + 24) + 5592);

  return v28(a1, a2, a3, a4, a5, a6, a7, a8);
}

char *get_integer_indexedv_EXT(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
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

  v20 = *(*(v13 + 24) + 5600);

  return v20(a1, a2, a3, a4);
}

char *vertex_attribI_pointer(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
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

  v24 = *(*(v17 + 24) + 5848);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *get_vertex_attribIiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
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

  v20 = *(*(v13 + 24) + 5856);

  return v20(a1, a2, a3, a4);
}

char *get_vertex_attribIuiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
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

  v20 = *(*(v13 + 24) + 5864);

  return v20(a1, a2, a3, a4);
}

uint64_t uniform1ui(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
    v22 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v22, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v15 = *(v11 + 2068);
      v24 = a2;
      v25 = v15;
      v16 = *(v11 + 40);
      GPUTools::DYLockUtils::Lock((v16 + 144), v14);
      v17 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v11 + 40) + 104), &v25);
      if (v17)
      {
        v19 = v17[3];
        if (*(v19 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v19 + 328), &v24);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v16 + 144), v18);
      add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v23 = *(*(v11 + 24) + 5872);

  return v23(a1, a2, a3);
}

uint64_t uniform2ui(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v24, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v17 = *(v13 + 2068);
      v26 = a2;
      v27 = v17;
      v18 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v18 + 144), v16);
      v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v27);
      if (v19)
      {
        v21 = v19[3];
        if (*(v21 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v21 + 328), &v26);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v18 + 144), v20);
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

  v25 = *(*(v13 + 24) + 5880);

  return v25(a1, a2, a3, a4);
}

uint64_t uniform3ui(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    v26 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v26, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v19 = *(v15 + 2068);
      v28 = a2;
      v29 = v19;
      v20 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v20 + 144), v18);
      v21 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v29);
      if (v21)
      {
        v23 = v21[3];
        if (*(v23 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v23 + 328), &v28);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v20 + 144), v22);
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

  v27 = *(*(v15 + 24) + 5888);

  return v27(a1, a2, a3, a4, a5);
}

uint64_t uniform4ui(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
    v28 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v28, 0, do_nothing);
  }

  else
  {
    *(v17 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v21 = *(v17 + 2068);
      v30 = a2;
      v31 = v21;
      v22 = *(v17 + 40);
      GPUTools::DYLockUtils::Lock((v22 + 144), v20);
      v23 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v17 + 40) + 104), &v31);
      if (v23)
      {
        v25 = v23[3];
        if (*(v25 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v25 + 328), &v30);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v22 + 144), v24);
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

  v29 = *(*(v17 + 24) + 5896);

  return v29(a1, a2, a3, a4, a5, a6);
}

uint64_t uniform1uiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const unsigned int *a4)
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
    v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v24, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v17 = *(v13 + 2068);
      v26 = a2;
      v27 = v17;
      v18 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v18 + 144), v16);
      v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v27);
      if (v19)
      {
        v21 = v19[3];
        if (*(v21 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v21 + 328), &v26);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v18 + 144), v20);
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

  v25 = *(*(v13 + 24) + 5904);

  return v25(a1, a2, a3, a4);
}

uint64_t uniform2uiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const unsigned int *a4)
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
    v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v24, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v17 = *(v13 + 2068);
      v26 = a2;
      v27 = v17;
      v18 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v18 + 144), v16);
      v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v27);
      if (v19)
      {
        v21 = v19[3];
        if (*(v21 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v21 + 328), &v26);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v18 + 144), v20);
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

  v25 = *(*(v13 + 24) + 5912);

  return v25(a1, a2, a3, a4);
}

uint64_t uniform3uiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const unsigned int *a4)
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
    v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v24, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v17 = *(v13 + 2068);
      v26 = a2;
      v27 = v17;
      v18 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v18 + 144), v16);
      v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v27);
      if (v19)
      {
        v21 = v19[3];
        if (*(v21 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v21 + 328), &v26);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v18 + 144), v20);
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

  v25 = *(*(v13 + 24) + 5920);

  return v25(a1, a2, a3, a4);
}

uint64_t uniform4uiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const unsigned int *a4)
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
    v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v24, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v17 = *(v13 + 2068);
      v26 = a2;
      v27 = v17;
      v18 = *(v13 + 40);
      GPUTools::DYLockUtils::Lock((v18 + 144), v16);
      v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v13 + 40) + 104), &v27);
      if (v19)
      {
        v21 = v19[3];
        if (*(v21 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v21 + 328), &v26);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v18 + 144), v20);
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

  v25 = *(*(v13 + 24) + 5928);

  return v25(a1, a2, a3, a4);
}

uint64_t get_uniformuiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
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

  v24 = *(*(v13 + 24) + 5936);

  return v24(a1, a2, a3, a4);
}

uint64_t uniform_matrix2x3fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const float *a5)
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
    v26 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v26, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v19 = *(v15 + 2068);
      v28 = a2;
      v29 = v19;
      v20 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v20 + 144), v18);
      v21 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v29);
      if (v21)
      {
        v23 = v21[3];
        if (*(v23 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v23 + 328), &v28);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v20 + 144), v22);
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

  v27 = *(*(v15 + 24) + 5992);

  return v27(a1, a2, a3, a4, a5);
}

uint64_t uniform_matrix3x2fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const float *a5)
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
    v26 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v26, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v19 = *(v15 + 2068);
      v28 = a2;
      v29 = v19;
      v20 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v20 + 144), v18);
      v21 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v29);
      if (v21)
      {
        v23 = v21[3];
        if (*(v23 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v23 + 328), &v28);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v20 + 144), v22);
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

  v27 = *(*(v15 + 24) + 6000);

  return v27(a1, a2, a3, a4, a5);
}

uint64_t uniform_matrix2x4fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const float *a5)
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
    v26 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v26, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v19 = *(v15 + 2068);
      v28 = a2;
      v29 = v19;
      v20 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v20 + 144), v18);
      v21 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v29);
      if (v21)
      {
        v23 = v21[3];
        if (*(v23 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v23 + 328), &v28);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v20 + 144), v22);
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

  v27 = *(*(v15 + 24) + 6008);

  return v27(a1, a2, a3, a4, a5);
}

uint64_t uniform_matrix4x2fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const float *a5)
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
    v26 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v26, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v19 = *(v15 + 2068);
      v28 = a2;
      v29 = v19;
      v20 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v20 + 144), v18);
      v21 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v29);
      if (v21)
      {
        v23 = v21[3];
        if (*(v23 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v23 + 328), &v28);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v20 + 144), v22);
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

  v27 = *(*(v15 + 24) + 6016);

  return v27(a1, a2, a3, a4, a5);
}

uint64_t uniform_matrix3x4fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const float *a5)
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
    v26 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v26, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v19 = *(v15 + 2068);
      v28 = a2;
      v29 = v19;
      v20 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v20 + 144), v18);
      v21 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v29);
      if (v21)
      {
        v23 = v21[3];
        if (*(v23 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v23 + 328), &v28);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v20 + 144), v22);
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

  v27 = *(*(v15 + 24) + 6024);

  return v27(a1, a2, a3, a4, a5);
}

uint64_t uniform_matrix4x3fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const float *a5)
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
    v26 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v26, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v19 = *(v15 + 2068);
      v28 = a2;
      v29 = v19;
      v20 = *(v15 + 40);
      GPUTools::DYLockUtils::Lock((v20 + 144), v18);
      v21 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*(v15 + 40) + 104), &v29);
      if (v21)
      {
        v23 = v21[3];
        if (*(v23 + 376) == 1)
        {
          std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((v23 + 328), &v28);
        }
      }

      result = GPUTools::DYLockUtils::Unlock((v20 + 144), v22);
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

  v27 = *(*(v15 + 24) + 6032);

  return v27(a1, a2, a3, a4, a5);
}

char *blit_framebuffer(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, unsigned int a10)
{
  v15 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v17 = *(v15 + 32);
    v18 = v17 >= a1;
    v19 = v17 < a1;
    if (v18)
    {
      v16 = v15;
    }

    v15 = *(v15 + 8 * v19);
  }

  while (v15);
  if (v16 == ContextInfo::activeCtxInfoMap + 8 || *(v16 + 32) > a1)
  {
LABEL_9:
    v16 = ContextInfo::activeCtxInfoMap + 8;
  }

  v20 = *(v16 + 40);
  v21 = atomic_fetch_add((v20 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v21 > 1)
  {
    handle_opengl_thread_conflict(v20);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
    v26 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v26, 0, do_nothing);
  }

  else
  {
    *(v20 + 4838) = 257;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      v24 = atomic_fetch_add((v20 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v24 >= 1)
      {

        return handle_opengl_thread_conflict(v20);
      }

      return result;
    }

    atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v27 = *(*(v20 + 24) + 6040);

  return v27(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

char *renderbuffer_storage_multisample(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  v24 = *(*(v17 + 24) + 6048);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *get_attached_shaders(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4, unsigned int *a5)
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

  v22 = *(*(v15 + 24) + 6072);

  return v22(a1, a2, a3, a4, a5);
}

char *vertex_attrib_divisor(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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

  v18 = *(*(v11 + 24) + 6088);

  return v18(a1, a2, a3);
}

int64x2_t *draw_arrays_instanced(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    *(v15 + 4838) = 257;
    result = [DYGetGLGuestAppClient() state];
    if (result != (&dword_0 + 1) || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      if (!*(v15 + 3404))
      {
        result = GLDrawCommandStatistics::update((v15 + 32 * a2 + 4408), a2, a4, a5);
      }

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

  v22 = *(*(v15 + 24) + 6096);

  return v22(a1, a2, a3, a4, a5);
}

int64x2_t *draw_elements_instanced(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
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
    *(v17 + 4838) = 257;
    result = [DYGetGLGuestAppClient() state];
    if (result != (&dword_0 + 1) || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      if (!*(v17 + 3404))
      {
        result = GLDrawCommandStatistics::update((v17 + 32 * a2 + 4184), a2, a3, a6);
      }

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

  v24 = *(*(v17 + 24) + 6104);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *gen_vertex_arrays(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
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

  v18 = *(*(v11 + 24) + 6160);

  return v18(a1, a2, a3);
}

char *point_size_pointer(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const void *a4)
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

  v20 = *(*(v13 + 24) + 6176);

  return v20(a1, a2, a3, a4);
}

char *clear_bufferiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const int *a4)
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
    *(v13 + 4838) = 257;
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

  v20 = *(*(v13 + 24) + 6192);

  return v20(a1, a2, a3, a4);
}

char *clear_bufferuiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const unsigned int *a4)
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
    *(v13 + 4838) = 257;
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

  v20 = *(*(v13 + 24) + 6200);

  return v20(a1, a2, a3, a4);
}

char *clear_bufferfv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const float *a4)
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
    *(v13 + 4838) = 257;
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

  v20 = *(*(v13 + 24) + 6208);

  return v20(a1, a2, a3, a4);
}

char *clear_bufferfi(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float a4, uint64_t a5)
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
    *(v15 + 4838) = 257;
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

  v23 = *(*(v15 + 24) + 6216);
  v22.n128_f32[0] = a4;

  return v23(a1, a2, a3, a5, v22);
}

char *delete_sync(__GLIContextRec *a1, __GLsync *a2)
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
    return delete_sync((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 6248);

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

char *wait_sync(__GLIContextRec *a1, __GLsync *a2, uint64_t a3, uint64_t a4)
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

  v20 = *(*(v13 + 24) + 6264);

  return v20(a1, a2, a3, a4);
}

char *get_integer64v(__GLIContextRec *a1, uint64_t a2, uint64_t *a3)
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

  v18 = *(*(v11 + 24) + 6272);

  return v18(a1, a2, a3);
}

char *get_synciv(__GLIContextRec *a1, __GLsync *a2, uint64_t a3, uint64_t a4, int *a5, int *a6)
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

  v24 = *(*(v17 + 24) + 6280);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *copy_buffer_sub_data(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  v24 = *(*(v17 + 24) + 6328);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *flush_mapped_buffer_range(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v20 = *(*(v13 + 24) + 6368);

  return v20(a1, a2, a3, a4);
}

char *get_integer64i_v(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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

  v20 = *(*(v13 + 24) + 6384);

  return v20(a1, a2, a3, a4);
}

char *get_buffer_parameteri64v(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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

  v20 = *(*(v13 + 24) + 6392);

  return v20(a1, a2, a3, a4);
}

char *gen_samplers(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
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

  v18 = *(*(v11 + 24) + 6400);

  return v18(a1, a2, a3);
}

char *delete_samplers(__GLIContextRec *a1, uint64_t a2, const unsigned int *a3)
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

  v18 = *(*(v11 + 24) + 6408);

  return v18(a1, a2, a3);
}

char *bind_sampler(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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

  v18 = *(*(v11 + 24) + 6424);

  return v18(a1, a2, a3);
}

char *sampler_parameteri(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v20 = *(*(v13 + 24) + 6432);

  return v20(a1, a2, a3, a4);
}

char *sampler_parameteriv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const int *a4)
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

  v20 = *(*(v13 + 24) + 6440);

  return v20(a1, a2, a3, a4);
}

char *sampler_parameterf(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float a4)
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

  v21 = *(*(v13 + 24) + 6448);
  v20.n128_f32[0] = a4;

  return v21(a1, a2, a3, v20);
}

char *sampler_parameterfv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const float *a4)
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

  v20 = *(*(v13 + 24) + 6456);

  return v20(a1, a2, a3, a4);
}

char *get_sampler_parameteriv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
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

  v20 = *(*(v13 + 24) + 6480);

  return v20(a1, a2, a3, a4);
}

char *get_sampler_parameterfv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float *a4)
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

  v20 = *(*(v13 + 24) + 6488);

  return v20(a1, a2, a3, a4);
}

char *label_object_EXT(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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
    v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v20, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    result = [DYGetGLGuestAppClient() state];
    if (result != &dword_0 + 1 || (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], !result))
    {
      if (a2 == 35656)
      {
        result = wrapper_cache_shader_label(v15, a3);
      }

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

  v21 = *(*(v15 + 24) + 6512);

  return v21(a1, a2, a3, a4, a5);
}

char *get_object_label_EXT(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, char *a6)
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

  v24 = *(*(v17 + 24) + 6520);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *insert_event_marker_EXT(__GLIContextRec *a1, uint64_t a2, char *a3)
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
    v18 = *(*(v11 + 24) + 6528);

    return v18(a1, a2, a3);
  }

  else
  {
    result = wrapper_handle_marker_event(v11, a2, a3);
    v15 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v15 >= 1)
    {

      return handle_opengl_thread_conflict(v11);
    }
  }

  return result;
}

uint64_t use_program_stages(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v18, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      query_pipeline_programs(v13, a2, v20);
      result = check_errors(v13);
      if ((gCheckGLErrors & 1) == 0)
      {
        result = check_errors(v13);
      }

      if (a3 && !*(v13 + 3404))
      {
        result = wrapper_cache_pipeline_use_stages(v13, a2, a3, a4, v20, 0);
      }

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

  v19 = *(*(v13 + 24) + 6552);

  return v19(a1, a2, a3, a4);
}

uint64_t active_shader_program(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
    v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v16, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      query_pipeline_programs(v11, a2, v18);
      result = check_errors(v11);
      if ((gCheckGLErrors & 1) == 0)
      {
        result = check_errors(v11);
      }

      if (!*(v11 + 3404))
      {
        result = wrapper_cache_pipeline_active_shader_program(v11, a2, a3, v18);
      }

      add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      if (gCheckGLErrors == 1 && (add - 1) >= 1)
      {
        return handle_opengl_thread_conflict(v11);
      }

      return result;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v17 = *(*(v11 + 24) + 6560);

  return v17(a1, a2, a3);
}