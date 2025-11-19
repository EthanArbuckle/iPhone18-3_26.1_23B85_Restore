void compressed_tex_image2D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, const void *a9)
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
  if (gCheckGLErrors != 1 || v22 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
      v31 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v31, 0, do_nothing);
LABEL_29:
      v32 = *(*(v21 + 24) + 3040);

      v32(a1, a2, a3, a4, a5, a6, a7, a8, a9);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v21);
    v30 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v30 >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v21 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v24 = mach_absolute_time();
  v25 = a8;
  v26 = v24;
  (*(*(v21 + 32) + 3040))(a1, a2, a3, a4, a5, a6, a7, v25, a9);
  v27 = mach_absolute_time();
  v28 = vdupq_n_s64(1uLL);
  v28.i64[0] = v27 - v26;
  *(v21 + 3696) = vaddq_s64(v28, *(v21 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v21);
  }

  add = atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v21);
  }
}

void compressed_tex_sub_image3D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11)
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
  if (gCheckGLErrors != 1 || v21 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
LABEL_29:
      v31 = *(*(v20 + 24) + 3056);

      v31(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v20);
    v29 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v29 >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v20 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v23 = mach_absolute_time();
  v24 = a8;
  v25 = v23;
  (*(*(v20 + 32) + 3056))(a1, a2, a3, a4, a5, a6, a7, v24, a9, a10, a11);
  v26 = mach_absolute_time();
  v27 = vdupq_n_s64(1uLL);
  v27.i64[0] = v26 - v25;
  *(v20 + 3696) = vaddq_s64(v27, *(v20 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v20);
  }

  add = atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v20);
  }
}

void compressed_tex_sub_image2D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, const void *a10)
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
  if (gCheckGLErrors != 1 || v22 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
      v31 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v31, 0, do_nothing);
LABEL_29:
      v32 = *(*(v21 + 24) + 3064);

      v32(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v21);
    v30 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v30 >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v21 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v24 = mach_absolute_time();
  v25 = a8;
  v26 = v24;
  (*(*(v21 + 32) + 3064))(a1, a2, a3, a4, a5, a6, a7, v25, a9, a10);
  v27 = mach_absolute_time();
  v28 = vdupq_n_s64(1uLL);
  v28.i64[0] = v27 - v26;
  *(v21 + 3696) = vaddq_s64(v28, *(v21 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v21);
  }

  add = atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v21);
  }
}

void tex_image3D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, const void *a10)
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
  if (gCheckGLErrors != 1 || v21 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
LABEL_29:
      v31 = *(*(v20 + 24) + 3504);

      v31(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v20);
    v29 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v29 >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v20 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v23 = mach_absolute_time();
  v24 = a8;
  v25 = v23;
  (*(*(v20 + 32) + 3504))(a1, a2, a3, a4, a5, a6, a7, v24, a9, a10);
  v26 = mach_absolute_time();
  v27 = vdupq_n_s64(1uLL);
  v27.i64[0] = v26 - v25;
  *(v20 + 3696) = vaddq_s64(v27, *(v20 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v20);
  }

  add = atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v20);
  }
}

void tex_sub_image3D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11)
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
  if (gCheckGLErrors != 1 || v21 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
LABEL_29:
      v31 = *(*(v20 + 24) + 3512);

      v31(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v20);
    v29 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v29 >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v20 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v23 = mach_absolute_time();
  v24 = a8;
  v25 = v23;
  (*(*(v20 + 32) + 3512))(a1, a2, a3, a4, a5, a6, a7, v24, a9, a10, a11);
  v26 = mach_absolute_time();
  v27 = vdupq_n_s64(1uLL);
  v27.i64[0] = v26 - v25;
  *(v20 + 3696) = vaddq_s64(v27, *(v20 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v20);
  }

  add = atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v20);
  }
}

void copy_tex_sub_image3D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9)
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
  if (gCheckGLErrors != 1 || v21 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
LABEL_29:
      v31 = *(*(v20 + 24) + 3520);

      v31(a1, a2, a3, a4, a5, a6, a7, a8, a9);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v20);
    v29 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v29 >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v20 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v23 = mach_absolute_time();
  v24 = a8;
  v25 = v23;
  (*(*(v20 + 32) + 3520))(a1, a2, a3, a4, a5, a6, a7, v24, a9);
  v26 = mach_absolute_time();
  v27 = vdupq_n_s64(1uLL);
  v27.i64[0] = v26 - v25;
  *(v20 + 3696) = vaddq_s64(v27, *(v20 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v20);
  }

  add = atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v20);
  }
}

void blit_framebuffer(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, unsigned int a10)
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
  if (gCheckGLErrors != 1 || v21 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_25:
      atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
LABEL_34:
      v38 = *(*(v20 + 24) + 6040);

      v38(a1, a2, a3, a4, a5, a6, a7, a8, a9);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v20);
    v29 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v29 >= 1)
    {
      goto LABEL_25;
    }
  }

  *(v20 + 4838) = 257;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_34;
  }

  if ([DYGetGLGuestAppClient() overrideFlags])
  {
    if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
    {
      v31 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v20, v31);
      v32 = mach_absolute_time();
      v33 = a8;
      v34 = v32;
      (*(*(v20 + 32) + 6040))(a1, a2, a3, a4, a5, a6, a7, v33, a9, a10);
      v35 = mach_absolute_time();
      v36 = vdupq_n_s64(1uLL);
      v36.i64[0] = v35 - v34;
      *(v20 + 3696) = vaddq_s64(v36, *(v20 + 3696));
      if (gCheckGLErrors == 1)
      {
        alpha_func(v20);
      }

      v37 = [DYGetGLGuestAppClient() overrideFlags];
      unapply_draw_overrides(v20, v37);
    }
  }

  else
  {
    v23 = mach_absolute_time();
    v24 = a8;
    v25 = v23;
    (*(*(v20 + 32) + 6040))(a1, a2, a3, a4, a5, a6, a7, v24, a9, a10);
    v26 = mach_absolute_time();
    v27 = vdupq_n_s64(1uLL);
    v27.i64[0] = v26 - v25;
    *(v20 + 3696) = vaddq_s64(v27, *(v20 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v20);
    }
  }

  add = atomic_fetch_add((v20 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v20);
  }
}

void ___ZL24delete_program_pipelinesP15__GLIContextReciPKj_block_invoke_0(uint64_t a1)
{
  v2 = mach_absolute_time();
  (*(*(*(a1 + 32) + 32) + 6584))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  v3 = mach_absolute_time() - v2;
  v4 = *(a1 + 32);
  v5 = vdupq_n_s64(1uLL);
  v5.i64[0] = v3;
  v4[231] = vaddq_s64(v5, v4[231]);
  if (gCheckGLErrors == 1)
  {
    ___ZL24delete_program_pipelinesP15__GLIContextReciPKj_block_invoke_cold_1(v4, a1 + 32);
  }
}

int64x2_t OUTLINED_FUNCTION_13_0@<Q0>(uint64_t a1@<X8>)
{
  v2 = vdupq_n_s64(1uLL);
  v2.i64[0] = a1;
  result = vaddq_s64(v2, v1[231]);
  v1[231] = result;
  return result;
}

void DYGLInitPlatform(uint64_t a1, const char *a2)
{
  v2 = [[DYMobileAppClient alloc] initWithTransport:GPUTools::Interpose::DYCreateTransport("GT_HOST_URL_GL", a2)];
  DYSetGLGuestAppClient();

  DYGLCommonInit();
}

void sub_1A73E4(_Unwind_Exception *a1)
{
  v2 = *(v1 - 112);
  if (v2)
  {
    *(v1 - 104) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

EAGLContext *create_internal_context(void *a1)
{
  if (a1)
  {
    v5 = kEAGLContextPropertySharegroup;
    v6 = [a1 sharegroup];
    v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = [EAGLContext alloc];
  result = (off_21B348)(v3, "initWithAPI:properties:", [a1 API], v2);
  if (result)
  {
    initialize_capture_context(result);
  }

  return result;
}

void initialize_capture_context(EAGLContext *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [(EAGLContext *)a1 API]- 1;
  if (v3 <= 2)
  {
    v4 = dword_20682C[v3];
  }

  operator new();
}

unint64_t destroy_internal_context(uint64_t a1)
{
  v2 = ContextInfo::activeCtxInfoMap;
  result = GLIContextFromEAGLContext();
  v6 = *(v2 + 8);
  v5 = v2 + 8;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= result;
    v10 = v8 < result;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || result < *(v7 + 32))
  {
LABEL_9:
    v7 = v5;
  }

  if (v7 != ContextInfo::activeCtxInfoMap + 8)
  {
    v11 = *(v7 + 40);
    if (v11)
    {
      ContextInfo::~ContextInfo(v11);
      operator delete();
    }

    v12 = off_21B350;

    return v12(a1, "dealloc");
  }

  return result;
}

uint64_t install_dispatch_table(uint64_t a1, uint64_t a2)
{
  GLCRestoreDispatch();

  return _GLCSelectDispatchBounded(a1, a2, 1036);
}

void set_hardware_counters_configuration(void *a1)
{
  if (a1)
  {
    if (([objc_msgSend(a1 objectForKey:{kDYProfilingHardwareCountersConfigurationTypeKey), "isEqualToString:", @"SGX543-1"}] & 1) == 0)
    {
      set_hardware_counters_configuration_cold_1();
    }

    v2 = [a1 objectForKey:@"version"];
    if (!v2)
    {
      set_hardware_counters_configuration_cold_7();
    }

    LODWORD(xmmword_21B3C8) = [v2 unsignedIntValue];
    if (xmmword_21B3C8 != 1)
    {
      set_hardware_counters_configuration_cold_2();
    }

    v3 = [a1 objectForKey:@"count"];
    if (!v3)
    {
      set_hardware_counters_configuration_cold_6();
    }

    v4 = v3;
    v5 = [a1 objectForKey:@"counters"];
    if (!v5)
    {
      set_hardware_counters_configuration_cold_5();
    }

    v6 = v5;
    DWORD1(xmmword_21B3C8) = [v4 unsignedIntValue];
    if (DWORD1(xmmword_21B3C8) >= 9)
    {
      set_hardware_counters_configuration_cold_4();
    }

    qword_21B358 = v6;
    if ([qword_21B358 length] != &stru_20)
    {
      set_hardware_counters_configuration_cold_3();
    }
  }

  else
  {
    xmmword_21B3C8 = 0uLL;
    qword_21B3D8 = 0;

    qword_21B358 = 0;
  }
}

intptr_t enable_profiling_flag(intptr_t result)
{
  v1 = result;
  v2 = gProfilingFlags;
  if ((result & (gProfilingFlags ^ result) & 0x80) != 0)
  {
    result = iter_contexts(&__block_literal_global_0);
    v2 = gProfilingFlags;
  }

  gProfilingFlags = v2 | v1;
  return result;
}

intptr_t update_overrides(void *a1, int *a2)
{
  if ([a1 BOOLForKey:@"drop command buffers"])
  {
    *a2 |= 0x40u;
  }

  v4 = [a1 BOOLForKey:@"mo-dco"];
  v5 = *a2;
  if (v4)
  {
    v5 |= 0x200u;
    *a2 = v5;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __update_overrides_block_invoke;
  v8[3] = &__block_descriptor_34_e13_v24__0_v8_B16l;
  v9 = (v5 & 0x40) != 0;
  v10 = (v5 & 0x200) != 0;
  iter_contexts(v8);
  v6 = [a1 uint32ForKey:@"pipeline stage skip mode"];
  gPipelineStageSkipMode = v6;
  if (!v6)
  {
    if ([DYGetGLGuestAppClient() overrideFlags])
    {
      v6 = 3;
    }

    else
    {
      v6 = [DYGetGLGuestAppClient() overrideFlags] & 2;
    }
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = ___ZL28set_pipeline_stage_skip_modei_block_invoke;
  v11[3] = &__block_descriptor_36_e13_v24__0_v8_B16l;
  v12 = v6;
  return iter_contexts(v11);
}

uint64_t __update_overrides_block_invoke(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  v7 = off_20D408;
  v8 = v4;
  v9 = &v7;
  ContextInfo::AddExecution(a2, &v7);
  if (v9 == &v7)
  {
    ((*v9)[4])(v9);
  }

  else if (v9)
  {
    (*v9)[5]();
  }

  v5 = *(a1 + 33);
  v7 = off_20D450;
  v8 = v5;
  v9 = &v7;
  ContextInfo::AddExecution(a2, &v7);
  result = v9;
  if (v9 == &v7)
  {
    return ((*v9)[4])(v9);
  }

  if (v9)
  {
    return (*v9)[5]();
  }

  return result;
}

void sub_1A7C38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(ContextInfo *)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_1A7C4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(ContextInfo *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t ContextInfo::AddExecution(uint64_t *a1, uint64_t a2)
{
  GPUTools::DYLockUtils::Lock((a1 + 458), a2);
  v5 = a1[460];
  if (v5 < a1[461])
  {
    v6 = *(a2 + 24);
    if (v6)
    {
      if (v6 == a2)
      {
        *(v5 + 24) = v5;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v5);
        goto LABEL_8;
      }

      v6 = (*(*v6 + 16))(v6);
    }

    *(v5 + 24) = v6;
LABEL_8:
    v7 = v5 + 32;
    a1[460] = v5 + 32;
    goto LABEL_9;
  }

  v7 = std::vector<std::function<void ()(ContextInfo *)>>::__emplace_back_slow_path<std::function<void ()(ContextInfo *)>&>(a1 + 459, a2);
LABEL_9:
  a1[460] = v7;
  return GPUTools::DYLockUtils::Unlock((a1 + 458), v4);
}

void sub_1A7D34(_Unwind_Exception *a1, volatile int *a2)
{
  *(v2 + 3680) = v3;
  GPUTools::DYLockUtils::Unlock((v2 + 3664), a2);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(ContextInfo *)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void collect_global_profiling_data(id *a1, __CFDictionary *a2)
{
  if ((gProfilingFlags & 0x100) != 0)
  {
    if (_MergedGlobals_0)
    {
      CFProperty = IORegistryEntryCreateCFProperty(_MergedGlobals_0, @"PerformanceStatistics", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        v5 = CFProperty;
        CFDictionarySetValue(a2, @"PerformanceStatistics", CFProperty);
        CFRelease(v5);
      }
    }
  }

  v6 = gProfilingFlags;
  if (gProfilingFlags < 0)
  {
    LODWORD(valuePtr) = [+[UIDevice currentDevice](UIDevice orientation];
    v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(a2, @"orientation", v7);
    CFRelease(v7);
    v6 = gProfilingFlags;
  }

  if ((v6 & 0x200) != 0 && qword_21B358)
  {
    v8 = [qword_21B358 mutableCopy];
    valuePtr = xmmword_21B3C8;
    v13 = [v8 mutableBytes];
    if (![*a1 getParameter:1410 to:&valuePtr] && !HIDWORD(valuePtr))
    {
      v9 = kDYProfilingHardwareCountersConfigurationTypeKey;
      v10 = [NSNumber numberWithUnsignedInt:valuePtr];
      v11 = [NSNumber numberWithUnsignedInt:DWORD1(valuePtr)];
      CFDictionarySetValue(a2, @"hardware counters", [NSDictionary dictionaryWithObjectsAndKeys:@"SGX543-1", v9, v10, @"version", v11, @"count", [NSNumber numberWithUnsignedInt:DWORD2(valuePtr)], @"timestamp", v8, @"counters", 0]);
    }
  }
}

void collect_all_context_profiling_data(void *a1)
{
  if ((gProfilingFlags & 0xC0) != 0)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3412000000;
    v16 = __Block_byref_object_copy__1;
    v17 = __Block_byref_object_dispose_;
    v18 = &unk_20760A;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v19 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __collect_all_context_profiling_data_block_invoke;
    v8[3] = &unk_20D258;
    v8[4] = &v32;
    v8[5] = &v28;
    v8[6] = &v24;
    v8[7] = &v20;
    v8[8] = &v13;
    v8[9] = &v9;
    iter_contexts(v8);
    v2 = gProfilingFlags;
    if ((gProfilingFlags & 0x80) != 0)
    {
      [a1 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", v33[3]), @"CA wait time"}];
      [a1 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", v29[3]), @"texture upload time"}];
      [a1 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", v25[3]), @"state validation time"}];
      [a1 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", v21[3]), @"vertex copy time"}];
      v2 = gProfilingFlags;
    }

    if ((v2 & 0x40) != 0)
    {
      v3 = [NSNumber alloc];
      v4 = [v3 initWithInt:*(v10 + 6)];
      v5 = [NSData alloc];
      v6 = [v5 initWithBytes:v14 + 6 length:4];
      v7 = [[NSDictionary alloc] initWithObjectsAndKeys:{v4, @"version", v6, @"events", 0}];
      [a1 setObject:v7 forKey:@"driver events"];
    }

    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
  }
}

void sub_1A8288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 176), 8);
  _Block_object_dispose((v28 - 144), 8);
  _Block_object_dispose((v28 - 112), 8);
  _Block_object_dispose((v28 - 80), 8);
  _Unwind_Resume(a1);
}

void __collect_all_context_profiling_data_block_invoke(void *a1, id *a2)
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = gProfilingFlags;
  if ((gProfilingFlags & 0x40) != 0)
  {
    valuePtr = 0;
    if (![*a2 getParameter:1400 to:&valuePtr])
    {
      *bytes = 0;
      if (![*a2 getParameter:1401 to:bytes])
      {
        *keys = *off_20D3E8;
        values = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
        cf = CFDataCreate(kCFAllocatorDefault, bytes, 4);
        v6 = CFDictionaryCreate(kCFAllocatorDefault, keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionarySetValue(v4, @"driver events", v6);
        CFRelease(values);
        CFRelease(cf);
        CFRelease(v6);
      }
    }

    v5 = gProfilingFlags;
  }

  if (v5 < 0)
  {
    if (![*a2 getParameter:1403 to:keys])
    {
      v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, keys);
      CFDictionarySetValue(v4, @"CA wait time", v7);
      CFRelease(v7);
    }

    if (![*a2 getParameter:1404 to:keys])
    {
      v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, keys);
      CFDictionarySetValue(v4, @"texture upload time", v8);
      CFRelease(v8);
    }

    if (![*a2 getParameter:1405 to:keys])
    {
      v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, keys);
      CFDictionarySetValue(v4, @"state validation time", v9);
      CFRelease(v9);
    }

    if (![*a2 getParameter:1406 to:keys])
    {
      v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, keys);
      CFDictionarySetValue(v4, @"vertex copy time", v10);
      CFRelease(v10);
    }

    v5 = gProfilingFlags;
    if ((gProfilingFlags & 0x80) != 0)
    {
      *(*(a1[4] + 8) + 24) += [-[__CFDictionary objectForKey:](v4 objectForKey:{@"CA wait time", "unsignedLongLongValue"}];
      *(*(a1[5] + 8) + 24) += [-[__CFDictionary objectForKey:](v4 objectForKey:{@"texture upload time", "unsignedLongLongValue"}];
      *(*(a1[6] + 8) + 24) += [-[__CFDictionary objectForKey:](v4 objectForKey:{@"state validation time", "unsignedLongLongValue"}];
      *(*(a1[7] + 8) + 24) += [-[__CFDictionary objectForKey:](v4 objectForKey:{@"vertex copy time", "unsignedLongLongValue"}];
      v5 = gProfilingFlags;
    }
  }

  if ((v5 & 0x40) != 0)
  {
    v11 = [(__CFDictionary *)v4 objectForKey:@"driver events"];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_msgSend(v11 objectForKey:{@"events", "bytes"}];
      if (v13)
      {
        *(*(a1[8] + 8) + 48) |= *v13;
      }

      if (!*(*(a1[9] + 8) + 24))
      {
        *(*(a1[9] + 8) + 24) = [objc_msgSend(v12 objectForKey:{@"version", "intValue"}];
      }
    }
  }
}

uint64_t add_per_function_profiling_data(void *a1, volatile int *a2, unsigned int a3)
{
  GPUTools::DYLockUtils::Lock(&unk_21B344, a2);
  if (!qword_21B360)
  {
    operator new();
  }

  *&v8 = a1;
  *(&v8 + 1) = a2;
  v9 = a3;
  if (a1)
  {
    if ((gProfilingFlags & 0x40) != 0)
    {
      v10 = 0;
      if (![a1 getParameter:1400 to:{&v10, v8, *(&v8 + 1), v9}])
      {
        HIDWORD(v9) = 0;
        [a1 getParameter:1401 to:&v9 + 4];
      }
    }
  }

  std::vector<PerFunctionProfilingData>::push_back[abi:ne200100](qword_21B360, &v8);
  return GPUTools::DYLockUtils::Unlock(&unk_21B344, v6);
}

void std::vector<PerFunctionProfilingData>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 8 * ((v3 - *a1) >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = 24 * v8 + 24;
  v13 = 24 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

id get_all_per_function_profiling_data(uint64_t a1, volatile int *a2)
{
  GPUTools::DYLockUtils::Lock(&unk_21B344, a2);
  if (!qword_21B360 || *qword_21B360 == *(qword_21B360 + 8))
  {
    v14 = 0;
  }

  else
  {
    v3 = [NSMutableArray alloc];
    v4 = [v3 initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(qword_21B360 + 8) - *qword_21B360) >> 3)];
    v5 = qword_21B360;
    v6 = *qword_21B360;
    if (*qword_21B360 != *(qword_21B360 + 8))
    {
      v7 = v6 + 20;
      do
      {
        v8 = v7 - 20;
        v9 = [[NSNumber alloc] initWithUnsignedLongLong:*(v7 - 20)];
        v10 = [[NSNumber alloc] initWithUnsignedLongLong:*(v7 - 12)];
        v11 = [[NSNumber alloc] initWithUnsignedLong:*(v7 - 4)];
        v12 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{v9, @"context", v10, @"context id", v11, @"function index", 0}];

        if ((gProfilingFlags & 0x40) != 0)
        {
          v13 = [[NSData alloc] initWithBytes:v7 length:4];
          [v12 setObject:v13 forKey:@"driver events"];
        }

        [v4 addObject:v12];

        v5 = qword_21B360;
        v7 += 24;
      }

      while (v8 + 24 != *(qword_21B360 + 8));
      v6 = *qword_21B360;
    }

    *(v5 + 8) = v6;
    v14 = v4;
  }

  GPUTools::DYLockUtils::Unlock(&unk_21B344, v2);
  return v14;
}

void handle_trace_mode_transition_platform()
{
  if (!+[NSThread isMainThread])
  {
    dispatch_async(&_dispatch_main_q, &__block_literal_global_91);
  }

  if ([DYGetGLGuestAppClient() traceMode] == 4 || objc_msgSend(DYGetGLGuestAppClient(), "traceMode") == 5)
  {
    v0 = [DYGetGLGuestAppClient() graphicsSemaphore];
    dispatch_semaphore_wait(v0, 0xFFFFFFFFFFFFFFFFLL);
    v1 = [DYGetGLGuestAppClient() startup1Stream];
    DYEncodeCALayerTransforms(v1, 0);
    dispatch_semaphore_signal(v0);
    handle_trace_mode_transition_platform::sOrientationNotificationHandler = [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserverForName:"addObserverForName:object:queue:usingBlock:" object:UIDeviceOrientationDidChangeNotification queue:0 usingBlock:+[NSOperationQueue mainQueue], &__block_literal_global_97];
    v2 = [DYGetGLGuestAppClient() startup1Stream];

    handle_device_orientation_change_notification(v2, v3);
  }
}

void __handle_trace_mode_transition_platform_block_invoke(id a1)
{
  v1 = [DYGetGLGuestAppClient() traceMode];
  v2 = +[UIDevice currentDevice];
  if (v1 == 1)
  {
    [(UIDevice *)v2 endGeneratingDeviceOrientationNotifications];
    if (handle_trace_mode_transition_platform::sOrientationNotificationHandler)
    {
      v3 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v3 removeObserver:handle_trace_mode_transition_platform::sOrientationNotificationHandler];
      handle_trace_mode_transition_platform::sOrientationNotificationHandler = 0;
    }
  }

  else
  {

    [(UIDevice *)v2 beginGeneratingDeviceOrientationNotifications];
  }
}

void __handle_trace_mode_transition_platform_block_invoke_2(id a1, NSNotification *a2)
{
  v2 = [DYGetGLGuestAppClient() defaultFbufStream];

  handle_device_orientation_change_notification(v2, v3);
}

void handle_device_orientation_change_notification(NSNotification *a1, GPUTools::FB::Stream *a2)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  [+[UIDevice currentDevice](UIDevice orientation];
  GPUTools::FB::Encode(v10, 4294955024, 0, "Cii", v3, v4, v5, v6, 0);
  v7 = mach_absolute_time();
  if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
  {
    v7 = __udivti3();
  }

  v8 = v10[0];
  *(v10[0] + 2) = v7;
  v8[3] = 0;
  while (atomic_exchange(&a1[7], 1u) == 1)
  {
      ;
    }
  }

  v9 = *v10[0];
  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, &a1[7]);
  if (v10[0])
  {
    free(v10[0]);
  }
}

void sub_1A8E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t copyout_iosurface_texture(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v6 = *(a1 + 3456);
  result = GPUTools::GL::GetImageInfo();
  if (*(a5 + 24))
  {
    v8 = *(a5 + 28) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    GPUTools::GL::ComputePackedClientImageSize();
    operator new[]();
  }

  return result;
}

uint64_t copyout_iosurface_texture_encode_teximage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v29 = 0x100000001;
  v30[0] = 0;
  *(v30 + 5) = 0;
  copyout_iosurface_texture(a1, a2, a4, a5, v27);
  v26 = 0;
  (*(*(a1 + 32) + 832))(*(a1 + 16), 3317, &v26);
  if (v26 != 1)
  {
    GPUTools::FB::Encode(a1 + 120, 438, 4, "Cei", v8, v9, v10, v11, *a1);
    v12 = ([DYGetGLGuestAppClient() defaultFbufStream] + 56);
    while (atomic_exchange(v12, 1u) == 1)
    {
        ;
      }
    }

    v13 = **(a1 + 120);
    GPUTools::FB::Stream::Write_nolock();
    atomic_store(0, v12);
  }

  v14 = *a1;
  if (a6)
  {
    GPUTools::FB::Encode(a1 + 120, 603, 4100, "CeiiiiieeU", v8, v9, v10, v11, v14);
  }

  else
  {
    GPUTools::FB::Encode(a1 + 120, 594, 4100, "CeieiiieeU", v8, v9, v10, v11, v14);
  }

  GPUTools::FB::Encode(a1 + 144, 4294955024, 0x2000, "Cietee", v15, v16, v17, v18, *a1);
  [DYGetGLGuestAppClient() defaultFbufStream];
  result = GPUTools::FB::Stream::Writev_nopartial();
  if (v26 != 1)
  {
    GPUTools::FB::Encode(a1 + 120, 438, 4, "Cei", v20, v21, v22, v23, *a1);
    v24 = ([DYGetGLGuestAppClient() defaultFbufStream] + 56);
    while (atomic_exchange(v24, 1u) == 1)
    {
        ;
      }
    }

    v25 = **(a1 + 120);
    result = GPUTools::FB::Stream::Write_nolock();
    atomic_store(0, v24);
  }

  return result;
}

void encode_iosurface_info(uint64_t a1, __IOSurface *a2)
{
  IOSurfaceGetBulkAttachments();
  IOSurfaceGetPixelFormat(a2);
  [0 UTF8String];
  [0 UTF8String];
  [0 UTF8String];
  GPUTools::FB::Encode(a1 + 120, 4294955024, 0, "CipuiuiSSS", v4, v5, v6, v7, a2);
}

uint64_t EAGLContext_initWithAPIProperties(EAGLContext *a1, objc_selector *a2, EAGLRenderingAPI a3, NSDictionary *a4)
{
  DYGetGLGuestAppClient();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    EAGLContext_initWithAPIProperties();
  }

  mach_absolute_time();
  v8 = off_21B348(a1, a2, a3, a4);
  mach_absolute_time();
  if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
  {
    __udivti3();
  }

  return EAGLContext_initCommon(v8, a3, a4);
}

EAGLContext *EAGLContext_initWithAPISharegroup(EAGLContext *a1, objc_selector *a2, EAGLRenderingAPI a3, EAGLSharegroup *a4)
{
  DYGetGLGuestAppClient();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    EAGLContext_initWithAPISharegroup();
  }

  mach_absolute_time();
  v8 = off_21B368(a1, a2, a3, a4);
  mach_absolute_time();
  if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
  {
    __udivti3();
    v9 = objc_alloc_init(NSMutableDictionary);
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  if (a4)
  {
LABEL_4:
    [(NSDictionary *)v9 setObject:a4 forKey:kEAGLContextPropertySharegroup];
  }

LABEL_5:
  EAGLContext_initCommon(v8, a3, v9);

  return v8;
}

void EAGLContext_dealloc(EAGLContext *a1, objc_selector *a2)
{
  DYGetGLGuestAppClient();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    EAGLContext_dealloc();
  }

  if (!*(&a1->super.isa + OBJC_IVAR___EAGLContext__private))
  {
    goto LABEL_34;
  }

  v4 = ContextInfo::activeCtxInfoMap;
  v5 = GLIContextFromEAGLContext();
  v8 = *(v4 + 8);
  v7 = v4 + 8;
  v6 = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 32);
    v11 = v10 >= v5;
    v12 = v10 < v5;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * v12);
  }

  while (v6);
  if (v9 == v7 || v5 < *(v9 + 32))
  {
LABEL_11:
    v9 = v7;
  }

  if (v9 == ContextInfo::activeCtxInfoMap + 8)
  {
LABEL_34:
    v28 = off_21B350;

    v28(a1, a2);
  }

  else
  {
    v13 = *(v9 + 40);
    if (v13)
    {
      ContextInfo::~ContextInfo(v13);
      operator delete();
    }

    v29[0] = 0;
    v29[1] = 0;
    v30 = 0;
    v14 = mach_absolute_time();
    off_21B350(a1, a2);
    v19 = mach_absolute_time() - v14;
    if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
    {
      v19 = __udivti3();
    }

    GPUTools::FB::Encode(v29, 4294959111, 0, "C", v15, v16, v17, v18, a1);
    if ([DYGetGLGuestAppClient() traceMode] >= 4)
    {
      if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
      {
        v14 = __udivti3();
      }

      v20 = v29[0];
      *(v29[0] + 2) = v14;
      v20[3] = v19;
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      GPUTools::FB::EncodeCurrentGCDQueueInfo();
      unified_index = dy_fenum_get_unified_index();
      if ((breakpoint_flags[unified_index] & 3) != 0)
      {
        breakpoint_break(v29, unified_index, 2, 0, 0);
      }

      v22 = [DYGetGLGuestAppClient() defaultFbufStream];
      v23 = v22;
      while (atomic_exchange(v22 + 14, 1u) == 1)
      {
          ;
        }
      }

      v24 = *v29[0];
      GPUTools::FB::Stream::Write_nolock();
      atomic_store(0, v23 + 14);
    }

    v25 = [DYGetGLGuestAppClient() startup0Stream];
    v26 = v25;
    while (atomic_exchange(v25 + 14, 1u) == 1)
    {
        ;
      }
    }

    v27 = *v29[0];
    GPUTools::FB::Stream::Write_nolock();
    atomic_store(0, v26 + 14);
    [DYGetGLGuestAppClient() sendContextInfoUpdate];
    if (v29[0])
    {
      free(v29[0]);
    }
  }
}

void sub_1A9934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  atomic_store(0, (v10 + 56));
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EAGLContext_setDebugLabel(EAGLContext *a1, objc_selector *a2, NSString *a3)
{
  DYGetGLGuestAppClient();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    EAGLContext_setDebugLabel();
  }

  result = off_21B370(a1, a2, a3);
  v7 = *ContextInfo::activeCtxInfoMap;
  v8 = ContextInfo::activeCtxInfoMap + 8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v13 = ___ZL25EAGLContext_setDebugLabelP11EAGLContextP13objc_selectorP8NSString_block_invoke;
  v14 = &__block_descriptor_40_e10_B16__0r_v8l;
  v15 = a1;
  if (v7 != (ContextInfo::activeCtxInfoMap + 8))
  {
    while (1)
    {
      result = (v13)(v12, v7 + 4);
      if (result)
      {
        break;
      }

      v9 = v7[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
      if (v10 == v8)
      {
        v7 = v8;
        break;
      }
    }
  }

  if (v7 != (ContextInfo::activeCtxInfoMap + 8))
  {
    [*(v7[5] + 3464) setDebugLabel:a3];
    return [DYGetGLGuestAppClient() sendContextInfoUpdate];
  }

  return result;
}

uint64_t EAGLContext_presentRenderbuffer(EAGLContext *a1, objc_selector *a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = ___ZL31EAGLContext_presentRenderbufferP11EAGLContextP13objc_selectorm_block_invoke;
  v4[3] = &unk_20D320;
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  return _EAGLContext_PresentInterposeCommon(a1, 4294959106, a3, v4);
}

uint64_t EAGLContext_presentRenderbufferAtTime(EAGLContext *a1, objc_selector *a2, uint64_t a3, double a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = ___ZL37EAGLContext_presentRenderbufferAtTimeP11EAGLContextP13objc_selectormd_block_invoke;
  v5[3] = &unk_20D360;
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = a3;
  *&v5[7] = a4;
  return _EAGLContext_PresentInterposeCommon(a1, 4294959117, a3, v5);
}

uint64_t EAGLContext_presentRenderbufferAfterMinimumDuration(EAGLContext *a1, objc_selector *a2, uint64_t a3, double a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = ___ZL51EAGLContext_presentRenderbufferAfterMinimumDurationP11EAGLContextP13objc_selectormd_block_invoke;
  v5[3] = &unk_20D360;
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = a3;
  *&v5[7] = a4;
  return _EAGLContext_PresentInterposeCommon(a1, 4294959118, a3, v5);
}

uint64_t EAGLContext_renderbufferStorageFromDrawable(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = GLIContextFromEAGLContext();
  v9 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v11 = *(v9 + 32);
    v12 = v11 >= v8;
    v13 = v11 < v8;
    if (v12)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * v13);
  }

  while (v9);
  if (v10 == ContextInfo::activeCtxInfoMap + 8 || v8 < *(v10 + 32))
  {
LABEL_9:
    v10 = ContextInfo::activeCtxInfoMap + 8;
  }

  v14 = *(v10 + 40);
  v15 = atomic_fetch_add((v14 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v15 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_75:
      EAGLContext_renderbufferStorageFromDrawable((v14 + 4640));
    }
  }

  else
  {
    handle_opengl_thread_conflict(v14);
    v62 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v62 >= 1)
    {
      goto LABEL_75;
    }
  }

  *(v14 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    EAGLContext_renderbufferStorageFromDrawable((v14 + 4640));
  }

  v17 = [DYGetGLGuestAppClient() traceMode];
  v65 = 0;
  renderbuffer_binding_enum = GPUTools::GL::dy_get_renderbuffer_binding_enum((&loc_8D40 + 1), v18);
  (*(*(v14 + 32) + 832))(*(v14 + 16), renderbuffer_binding_enum, &v65);
  [a4 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [a4 drawableProperties];
  [objc_msgSend(v28 objectForKey:{kEAGLDrawablePropertyRetainedBacking), "BOOLValue"}];
  v29 = [v28 objectForKey:kEAGLDrawablePropertyColorFormat];
  v30 = v29;
  if (v29 && ([v29 isEqualToString:kEAGLColorFormatRGB565] & 1) == 0 && (objc_msgSend(v30, "isEqualToString:", kEAGLColorFormatRGBA8) & 1) == 0 && (objc_msgSend(v30, "isEqualToString:", kEAGLColorFormatSRGBA8) & 1) == 0 && (objc_msgSend(v30, "isEqualToString:", kEAGLColorFormatSRGBA_XR10_64BPP) & 1) == 0 && (objc_msgSend(v30, "isEqualToString:", kEAGLColorFormatRGBA_XR10_64BPP) & 1) == 0 && (objc_msgSend(v30, "isEqualToString:", kEAGLColorFormatSRGB_XR10) & 1) == 0 && (objc_msgSend(v30, "isEqualToString:", kEAGLColorFormatSRGB_XR10_A8_2P) & 1) == 0)
  {
    [v30 UTF8String];
    result = dy_abort();
    __break(1u);
    return result;
  }

  [a4 contentsScale];
  v66[0] = v21;
  v66[1] = v23;
  v66[2] = v25;
  v66[3] = v27;
  GPUTools::FB::Encode(v14 + 120, 4294955009, 4, "C@4dpbed", v31, v32, v33, v34, a1);
  if (v17 >= 4)
  {
    v35 = [DYGetGLGuestAppClient() defaultFbufStream];
    v36 = v35;
    while (atomic_exchange(v35 + 14, 1u) == 1)
    {
        ;
      }
    }

    v37 = **(v14 + 120);
    GPUTools::FB::Stream::Write_nolock();
    atomic_store(0, v36 + 14);
  }

  v38 = [DYGetGLGuestAppClient() startup0Stream];
  v39 = v38;
  while (atomic_exchange(v38 + 14, 1u) == 1)
  {
      ;
    }
  }

  v40 = **(v14 + 120);
  GPUTools::FB::Stream::Write_nolock();
  unified_index = 0;
  v46 = 0;
  atomic_store(0, v39 + 14);
  if (v17 >= 4)
  {
    GPUTools::FB::Encode(v14 + 120, 4294959107, 0, "Cep", v41, v42, v43, v44, a1);
    unified_index = dy_fenum_get_unified_index();
    v46 = breakpoint_flags[unified_index];
    if (v46)
    {
      breakpoint_break(v14 + 120, unified_index, 1, 0, 0);
    }
  }

  v47 = mach_absolute_time();
  v48 = off_21B390(a1, a2, a3, a4);
  v50 = mach_absolute_time() - v47;
  if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
  {
    *(v14 + 3712) += v50;
    if (v17 > 3)
    {
LABEL_35:
      *(*(v14 + 120) + 16) = v47;
      *(*(v14 + 120) + 24) = v50;
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (gCheckGLErrors == 1)
      {
        EAGLContext_renderbufferStorageFromDrawable(v14);
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        EAGLContext_renderbufferStorageFromDrawable(v14, v14 + 120, v66);
      }

      GPUTools::FB::EncodeCurrentGCDQueueInfo();
      if ((v46 & 2) != 0)
      {
        breakpoint_break(v14 + 120, unified_index, 2, 0, 0);
      }

      v51 = [DYGetGLGuestAppClient() defaultFbufStream];
      v52 = v51;
      while (atomic_exchange(v51 + 14, 1u) == 1)
      {
          ;
        }
      }

      v53 = **(v14 + 120);
      GPUTools::FB::Stream::Write_nolock();
      atomic_store(0, v52 + 14);
    }
  }

  else
  {
    v63 = *(&g_DYTimebaseInfo + 1);
    v64 = __udivti3();
    *(v14 + 3712) += v64;
    if (v17 >= 4)
    {
      v50 = v64;
      v47 = __udivti3();
      goto LABEL_35;
    }
  }

  if (v48)
  {
    if (gCheckGLErrors)
    {
      EAGLContext_renderbufferStorageFromDrawable(v14);
    }

    v54 = *(v14 + 40);
    GPUTools::DYLockUtils::Lock((v54 + 368), v49);
    v56 = *(*(v14 + 40) + 352);
    if (!v56)
    {
LABEL_59:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v57 = v56;
        v58 = *(v56 + 32);
        if (v65 >= v58)
        {
          break;
        }

        v56 = *v57;
        if (!*v57)
        {
          goto LABEL_59;
        }
      }

      if (v58 >= v65)
      {
        break;
      }

      v56 = v57[1];
      if (!v56)
      {
        goto LABEL_59;
      }
    }

    v57[5] = a4;
    GPUTools::DYLockUtils::Unlock((v54 + 368), v55);
  }

  else if (gCheckGLErrors)
  {
    EAGLContext_renderbufferStorageFromDrawable();
  }

  v59 = atomic_fetch_add((v14 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v59 >= 1)
  {
    handle_opengl_thread_conflict(v14);
  }

  return v48;
}

uint64_t EAGLContext_setParameterTo(EAGLContext *a1, objc_selector *a2, uint64_t a3, int *a4)
{
  v8 = GLIContextFromEAGLContext();
  v9 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v11 = *(v9 + 32);
    v12 = v11 >= v8;
    v13 = v11 < v8;
    if (v12)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * v13);
  }

  while (v9);
  if (v10 == ContextInfo::activeCtxInfoMap + 8 || v8 < *(v10 + 32))
  {
LABEL_9:
    v10 = ContextInfo::activeCtxInfoMap + 8;
  }

  v14 = *(v10 + 40);
  v15 = [DYGetGLGuestAppClient() traceMode];
  v16 = mach_absolute_time();
  v17 = off_21B398(a1, a2, a3, a4);
  v23 = mach_absolute_time() - v16;
  if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
  {
    if (v15 < 4)
    {
      return v17;
    }
  }

  else
  {
    v23 = __udivti3();
    if (v15 < 4)
    {
      return v17;
    }
  }

  if (a3 - 1613) <= 1 && (gEncodeNameReservationSPI)
  {
    v26 = *v14;
    v25 = (v14 + 15);
    v24 = v26;
    if (a3 == 1614)
    {
      GPUTools::FB::Encode(v25, 116, "C", v18, v19, v20, v21, v22, v24);
    }

    else
    {
      v32 = *a4++;
      GPUTools::FB::Encode(v25, 117, "Ce", v18, v19, v20, v21, v22, v24);
    }

    GPUTools::FB::Encode(v25, 4294955008, "ul", v27, v28, v29, v30, v31, *a4);
    if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
    {
      v16 = __udivti3();
    }

    *(*v25 + 2) = v16;
    *(*v25 + 3) = v23;
    v33 = [DYGetGLGuestAppClient() defaultFbufStream];
    v34 = v33;
    while (atomic_exchange(v33 + 14, 1u) == 1)
    {
        ;
      }
    }

    v35 = **v25;
    GPUTools::FB::Stream::Write_nolock();
    atomic_store(0, v34 + 14);
  }

  return v17;
}

uint64_t EAGLContext_texImageIOSurface_target_internalFormat_width_height_format_type_plane_invert(EAGLContext *a1, objc_selector *a2, __IOSurface *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, BOOL a11)
{
  v18 = GLIContextFromEAGLContext();
  v19 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v21 = *(v19 + 32);
    v22 = v21 >= v18;
    v23 = v21 < v18;
    if (v22)
    {
      v20 = v19;
    }

    v19 = *(v19 + 8 * v23);
  }

  while (v19);
  if (v20 == ContextInfo::activeCtxInfoMap + 8 || v18 < *(v20 + 32))
  {
LABEL_9:
    v20 = ContextInfo::activeCtxInfoMap + 8;
  }

  v24 = *(v20 + 40);
  v69 = [DYGetGLGuestAppClient() traceMode];
  if (v69 < 4)
  {
    v67 = 0;
    v68 = 0;
  }

  else
  {
    v65 = a10;
    v66 = a11;
    v63 = a8;
    v64 = a9;
    v61 = a6;
    v62 = a7;
    v59 = a4;
    v60 = a5;
    HIDWORD(v58) = HIDWORD(a3);
    GPUTools::FB::Encode(v24 + 120, 4294959116, 4096, "Cpeeuiuieeuib", v25, v26, v27, v28, a1);
    unified_index = dy_fenum_get_unified_index();
    v67 = unified_index;
    v68 = breakpoint_flags[unified_index];
    if (v68)
    {
      breakpoint_break(v24 + 120, unified_index, 1, 0, 0);
    }
  }

  v30 = mach_absolute_time();
  BYTE4(v58) = a11;
  LODWORD(v58) = a10;
  v31 = off_21B3A0(a1, a2, a3, a4, a5, a6, a7, a8, a9, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  v32 = mach_absolute_time() - v30;
  if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
  {
    *(v24 + 3712) += v32;
    if (v69 <= 3)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v56 = *(&g_DYTimebaseInfo + 1);
    v57 = __udivti3();
    *(v24 + 3712) += v57;
    if (v69 < 4)
    {
      goto LABEL_27;
    }

    v32 = v57;
    v30 = __udivti3();
  }

  *(*(v24 + 120) + 16) = v30;
  *(*(v24 + 120) + 24) = v32;
  if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
  {
    GPUTools::FB::EncodeCurrentBacktrace();
  }

  if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")] && *v24)
  {
    EAGLContext_texImageIOSurface_target_internalFormat_width_height_format_type_plane_invert(&v77, *v24);
  }

  GPUTools::FB::EncodeCurrentGCDQueueInfo();
  if ((v68 & 2) != 0)
  {
    breakpoint_break(v24 + 120, v67, 2, 0, 0);
  }

  v33 = [DYGetGLGuestAppClient() defaultFbufStream];
  v34 = v33;
  while (atomic_exchange(v33 + 14, 1u) == 1)
  {
      ;
    }
  }

  v35 = **(v24 + 120);
  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v34 + 14);
  encode_iosurface_info(v24, a3);
  *(v78 + 7) = 0;
  v78[0] = 0;
  GPUTools::GL::DYGetTextureTargetInfo();
  v72 = 0;
  v73 = 0;
  *v75 = 0;
  v74 = 0;
  *&v75[4] = 0x100000001;
  v76[0] = 0;
  *(v76 + 5) = 0;
  v36 = *(v24 + 32);
  v71[0] = v24;
  v71[1] = v36;
  v37 = *(v24 + 3456);
  GPUTools::GL::GetImageInfo();
  GPUTools::FB::Encode(v24 + 144, 4294955024, 0x2000, "Cietee", v38, v39, v40, v41, *v24);
  [DYGetGLGuestAppClient() defaultFbufStream];
  GPUTools::FB::Stream::Writev_nopartial();
LABEL_27:
  if (a4 == 3553)
  {
    *(v78 + 7) = 0;
    v78[0] = 0;
    GPUTools::GL::DYGetTextureTargetInfo();
    LODWORD(v71[0]) = 0;
    (*(*(v24 + 32) + 832))(*(v24 + 16), HIDWORD(v78[0]), v71);
    if (*(v24 + 4837) == 1)
    {
      copyout_iosurface_texture_encode_teximage(v24, 3553, v43, a3, a10, 0);
    }

    v44 = *(v24 + 40);
    GPUTools::DYLockUtils::Lock((v44 + 368), v42);
    v45 = *(v24 + 40);
    v46 = *(v45 + 312);
    if (v46)
    {
      v47 = vcnt_s8(v46);
      v47.i16[0] = vaddlv_u8(v47);
      if (v47.u32[0] > 1uLL)
      {
        v48 = LODWORD(v71[0]);
        if (v46 <= LODWORD(v71[0]))
        {
          v48 = LODWORD(v71[0]) % v46;
        }
      }

      else
      {
        v48 = (v46 - 1) & v71[0];
      }

      v49 = *(*(v45 + 304) + 8 * v48);
      if (v49)
      {
        v50 = *v49;
        if (*v49)
        {
          if (v47.u32[0] < 2uLL)
          {
            v51 = v46 - 1;
            while (1)
            {
              v53 = v50[1];
              if (v53 == LODWORD(v71[0]))
              {
                if (*(v50 + 4) == LODWORD(v71[0]))
                {
                  goto LABEL_51;
                }
              }

              else if ((v53 & v51) != v48)
              {
                goto LABEL_50;
              }

              v50 = *v50;
              if (!v50)
              {
                goto LABEL_50;
              }
            }
          }

          do
          {
            v52 = v50[1];
            if (v52 == LODWORD(v71[0]))
            {
              if (*(v50 + 4) == LODWORD(v71[0]))
              {
                goto LABEL_51;
              }
            }

            else
            {
              if (v52 >= v46)
              {
                v52 %= v46;
              }

              if (v52 != v48)
              {
                break;
              }
            }

            v50 = *v50;
          }

          while (v50);
        }
      }
    }

LABEL_50:
    v73 = 0;
    v74 = 0;
    *v75 = 0;
    LODWORD(v72) = v71[0];
    v50 = std::__hash_table<std::__hash_value_type<unsigned int,IOSurfaceInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,IOSurfaceInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,IOSurfaceInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,IOSurfaceInfo>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,IOSurfaceInfo>>((v45 + 304), &v72);
LABEL_51:
    *(v50 + 6) = IOSurfaceGetID(a3);
    *(v50 + 7) = IOSurfaceGetSeed(a3);
    *(v50 + 32) = a11;
    v50[5] = a10;
    GPUTools::DYLockUtils::Unlock((v44 + 368), v54);
  }

  return v31;
}

id EAGLContext_swapNotificationForTransactionOnLayer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = GLIContextFromEAGLContext();
  v11 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v13 = *(v11 + 32);
    v14 = v13 >= v10;
    v15 = v13 < v10;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v12 == ContextInfo::activeCtxInfoMap + 8 || v10 < *(v12 + 32))
  {
LABEL_9:
    v12 = ContextInfo::activeCtxInfoMap + 8;
  }

  v16 = *(v12 + 40);
  v17 = [DYGetGLGuestAppClient() traceMode];
  v18 = mach_absolute_time();
  off_21B3A8(a1, a2, a3, a4, a5);
  v23 = mach_absolute_time() - v18;
  if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
  {
    if (v17 < 4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v23 = __udivti3();
    if (v17 < 4)
    {
      goto LABEL_18;
    }
  }

  GPUTools::FB::Encode(v16 + 120, 4294959110, 0x40000, "Cpuiui", v19, v20, v21, v22, a1);
  if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
  {
    v18 = __udivti3();
  }

  *(*(v16 + 120) + 16) = v18;
  *(*(v16 + 120) + 24) = v23;
  v24 = [DYGetGLGuestAppClient() defaultFbufStream];
  v25 = v24;
  while (atomic_exchange(v24 + 14, 1u) == 1)
  {
      ;
    }
  }

  v26 = **(v16 + 120);
  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v25 + 14);
LABEL_18:

  return handle_frame_boundary(v16);
}

uint64_t CAEAGLLayer_init(CAEAGLLayer *a1, objc_selector *a2)
{
  v2 = off_21B3B0(a1, a2);
  if (v2)
  {
    v3 = [DYGetGLGuestAppClient() graphicsSemaphore];
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    v5 = v2;
    std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::__emplace_unique_key_args<void *,void *>(gLayersSetPtr, &v5);
    dispatch_semaphore_signal(v3);
  }

  return v2;
}

intptr_t CAEAGLLayer_dealloc(CAEAGLLayer *a1, objc_selector *a2)
{
  v4 = [DYGetGLGuestAppClient() graphicsSemaphore];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  __p[0] = a1;
  v5 = std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::find<void const*>(gLayersSetPtr, __p);
  if (v5)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::remove(gLayersSetPtr, v5, __p);
    v6 = __p[0];
    __p[0] = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  off_21B3B8(a1, a2);
  return dispatch_semaphore_signal(v4);
}

uint64_t EAGLContext_setCurrentContext(objc_class *a1, objc_selector *a2, EAGLContext *a3)
{
  v6 = [DYGetGLGuestAppClient() traceMode];
  v7 = mach_absolute_time();
  v8 = off_21B3C0(a1, a2, a3);
  v13 = mach_absolute_time() - v7;
  if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
  {
    if (v6 < 4)
    {
      return v8;
    }
  }

  else
  {
    v13 = __udivti3();
    if (v6 < 4)
    {
      return v8;
    }
  }

  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  GPUTools::FB::Encode(v21, 4294959112, 131074, "C", v9, v10, v11, v12, a3);
  if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
  {
    v7 = __udivti3();
  }

  v14 = v21[0];
  *(v21[0] + 2) = v7;
  v14[3] = v13;
  unified_index = dy_fenum_get_unified_index();
  v16 = breakpoint_flags[unified_index];
  if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
  {
    GPUTools::FB::EncodeCurrentBacktrace();
  }

  GPUTools::FB::EncodeCurrentGCDQueueInfo();
  if ((v16 & 3) != 0)
  {
    breakpoint_break(v21, unified_index, 1, 0, 0);
  }

  v17 = [DYGetGLGuestAppClient() defaultFbufStream];
  v18 = v17;
  while (atomic_exchange(v17 + 14, 1u) == 1)
  {
      ;
    }
  }

  v19 = *v21[0];
  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v18 + 14);
  if (v21[0])
  {
    free(v21[0]);
  }

  return v8;
}

void sub_1AB044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  atomic_store(0, (v10 + 56));
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EAGLContext_initCommon(EAGLContext *a1, EAGLRenderingAPI a2, NSDictionary *a3)
{
  if (a1)
  {
    initialize_capture_context(a1);
  }

  return 0;
}

uint64_t _EAGLContext_PresentInterposeCommon(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = GLIContextFromEAGLContext();
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= v7;
    v12 = v10 < v7;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || v7 < *(v9 + 32))
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  if ([DYGetGLGuestAppClient() traceMode] == 6)
  {
    handle_frame_boundary(v13);
LABEL_12:
    if (gCheckGLErrors == 1)
    {
      EAGLContext_renderbufferStorageFromDrawable(v13);
    }

    return 1;
  }

  v19 = [DYGetGLGuestAppClient() traceMode];
  if (v19 < 4)
  {
    unified_index = 0;
    v21 = 0;
  }

  else
  {
    if ((a2 + 8179) >= 2)
    {
      if (a2 == -8190)
      {
        GPUTools::FB::Encode(v13 + 120, 4294959106, 0x40000, "Ce", v15, v16, v17, v18, a1);
      }
    }

    else
    {
      GPUTools::FB::Encode(v13 + 120, a2, 0x40000, "Ced", v15, v16, v17, v18, a1);
    }

    unified_index = dy_fenum_get_unified_index();
    v21 = breakpoint_flags[unified_index];
    if (v21)
    {
      breakpoint_break(v13 + 120, unified_index, 1, 0, 0);
    }
  }

  v22 = mach_absolute_time();
  if (gDisableBufferSwaps == 1)
  {
    v23 = choose_dispatch_table()[90];
    v24 = GLIContextFromEAGLContext();
    v23(v24);
    v25 = 1;
  }

  else
  {
    v25 = (*(a4 + 16))(a4);
  }

  v27 = mach_absolute_time() - v22;
  if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
  {
    v27 = __udivti3();
  }

  *(v13 + 464) += v27;
  GPUTools::DYLockUtils::Lock(&sDisplayLinkIdleTimeLock, v26);
  v29 = spDisplayLinkIdleTime;
  if (spDisplayLinkIdleTime)
  {
    v35 = pthread_self();
    v36 = &v35;
    v30 = std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,unsigned long long>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,unsigned long long>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,unsigned long long>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,unsigned long long>>>::__emplace_unique_key_args<_opaque_pthread_t *,std::piecewise_construct_t const&,std::tuple<_opaque_pthread_t *&&>,std::tuple<>>(v29, &v35)[3];
  }

  else
  {
    v30 = 0;
  }

  *(v13 + 579) += v30;
  GPUTools::DYLockUtils::Unlock(&sDisplayLinkIdleTimeLock, v28);
  ContextInfo::ExecuteAfterPresent(v13, v31);
  if (v19 >= 4)
  {
    if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
    {
      v22 = __udivti3();
    }

    *(*(v13 + 15) + 16) = v22;
    *(*(v13 + 15) + 24) = v27;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
      if (gCheckGLErrors != 1)
      {
LABEL_36:
        if (![objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
        {
          goto LABEL_39;
        }

LABEL_37:
        if (*v13)
        {
          EAGLContext_texImageIOSurface_target_internalFormat_width_height_format_type_plane_invert(&v36, *v13);
        }

LABEL_39:
        GPUTools::FB::EncodeCurrentGCDQueueInfo();
        if ((v21 & 2) != 0)
        {
          breakpoint_break(v13 + 120, unified_index, 2, 0, 0);
        }

        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = **(v13 + 15);
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        handle_frame_boundary(v13);
        if (v25)
        {
          goto LABEL_12;
        }

        goto LABEL_47;
      }
    }

    else if (gCheckGLErrors != 1)
    {
      goto LABEL_36;
    }

    EAGLContext_renderbufferStorageFromDrawable(v13);
    if (![objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  handle_frame_boundary(v13);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_47:
  if (gCheckGLErrors == 1)
  {
    _EAGLContext_PresentInterposeCommon();
  }

  return 0;
}

uint64_t ContextInfo::ExecuteAfterPresent(ContextInfo *this, volatile int *a2)
{
  GPUTools::DYLockUtils::Lock((this + 3664), a2);
  v4 = *(this + 459);
  v5 = *(this + 460);
  if (v4 != v5)
  {
    do
    {
      v10 = this;
      v6 = *(v4 + 24);
      if (!v6)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v6 + 48))(v6, &v10);
      v4 += 32;
    }

    while (v4 != v5);
    v5 = *(this + 460);
    v4 = *(this + 459);
  }

  if (v5 != v4)
  {
    v7 = v5 - 32;
    do
    {
      v8 = *(v5 - 8);
      v5 -= 32;
      if (v5 == v8)
      {
        (*(*v8 + 32))(v8);
      }

      else if (v8)
      {
        (*(*v8 + 40))(v8);
      }

      v7 -= 32;
    }

    while (v5 != v4);
  }

  *(this + 460) = v4;
  return GPUTools::DYLockUtils::Unlock((this + 3664), v3);
}

void *std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,unsigned long long>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,unsigned long long>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,unsigned long long>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,unsigned long long>>>::__emplace_unique_key_args<_opaque_pthread_t *,std::piecewise_construct_t const&,std::tuple<_opaque_pthread_t *&&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
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
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,IOSurfaceInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,IOSurfaceInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,IOSurfaceInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,IOSurfaceInfo>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,IOSurfaceInfo>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
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
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void *std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::__emplace_unique_key_args<void *,void *>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

uint64_t std::vector<std::function<void ()(ContextInfo *)>>::__emplace_back_slow_path<std::function<void ()(ContextInfo *)>&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 32 * v2;
  __p = 0;
  v15 = v7;
  v16 = v7;
  v17 = 0;
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 24) = v7;
      (*(*v8 + 24))(v8, v7);
      goto LABEL_15;
    }

    v8 = (*(*v8 + 16))(v8);
  }

  *(v7 + 24) = v8;
LABEL_15:
  v16 += 32;
  std::vector<std::function<void ()(ContextInfo *)>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  v10 = v15;
  while (1)
  {
    v11 = v16;
    if (v16 == v10)
    {
      break;
    }

    v16 -= 32;
    v12 = *(v11 - 8);
    if (v12 == v11 - 32)
    {
      (*(*v12 + 32))(v12);
    }

    else if (v12)
    {
      (*(*v12 + 40))(v12);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_1AC828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::function<void ()(ContextInfo *)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::function<void ()(ContextInfo *)>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v6 = *result;
  v5 = result[1];
  v7 = v5 - *result;
  if (v5 == *result)
  {
    goto LABEL_15;
  }

  v8 = (v4 - 32 * ((v5 - *result) >> 5) + 24);
  v9 = *result;
  do
  {
    v11 = v9[3];
    v10 = v8;
    if (!v11)
    {
      goto LABEL_4;
    }

    if (v9 != v11)
    {
      *v8 = v11;
      v10 = v9 + 3;
LABEL_4:
      *v10 = 0;
      goto LABEL_5;
    }

    *v8 = (v8 - 3);
    (*(*v9[3] + 24))();
LABEL_5:
    v9 += 4;
    v8 += 4;
  }

  while (v9 != v5);
  v12 = v6;
  do
  {
    result = v6[3];
    if (v6 == result)
    {
      result = (*(*result + 32))(result);
    }

    else if (result)
    {
      result = (*(*result + 40))(result);
    }

    v6 += 4;
    v12 += 4;
  }

  while (v6 != v5);
LABEL_15:
  a2[1] = v4 - v7;
  v13 = *v3;
  *v3 = v4 - v7;
  v3[1] = v13;
  a2[1] = v13;
  v14 = v3[1];
  v3[1] = a2[2];
  a2[2] = v14;
  v15 = v3[2];
  v3[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::function<void ()(ContextInfo *)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    while (1)
    {
      *(a1 + 16) = i - 32;
      v4 = *(i - 8);
      if (v4 != i - 32)
      {
        break;
      }

      (*(*v4 + 32))(v4);
      i = *(a1 + 16);
      if (i == v3)
      {
        goto LABEL_8;
      }
    }

    if (v4)
    {
      (*(*v4 + 40))(v4);
    }
  }

LABEL_8:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t ___ZL28set_pipeline_stage_skip_modei_block_invoke(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v4 = off_20D3B0;
  v5 = v2;
  v6 = &v4;
  ContextInfo::AddExecution(a2, &v4);
  result = v6;
  if (v6 == &v4)
  {
    return ((*v6)[4])(v6);
  }

  if (v6)
  {
    return (*v6)[5]();
  }

  return result;
}

void sub_1ACB60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(ContextInfo *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZL28set_pipeline_stage_skip_modeiEUb_E3__0NS_9allocatorIS2_EEFvP11ContextInfoEE7__cloneEPNS0_6__baseIS7_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = off_20D3B0;
  *(a2 + 8) = v2;
  return result;
}

id _ZNSt3__110__function6__funcIZZL28set_pipeline_stage_skip_modeiEUb_E3__0NS_9allocatorIS2_EEFvP11ContextInfoEEclEOS6_(uint64_t a1, void ***a2)
{
  v2 = *(a1 + 8);
  v3 = **a2;
  v5[0] = v2;
  v5[1] = 0;
  return [v3 setParameter:602 to:v5];
}

uint64_t _ZNKSt3__110__function6__funcIZZ16update_overridesEUb0_E3__1NS_9allocatorIS2_EEFvP11ContextInfoEE7__cloneEPNS0_6__baseIS7_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = off_20D408;
  *(a2 + 8) = v2;
  return result;
}

id _ZNSt3__110__function6__funcIZZ16update_overridesEUb0_E3__1NS_9allocatorIS2_EEFvP11ContextInfoEEclEOS6_(uint64_t a1, void ***a2)
{
  v2 = *(a1 + 8);
  v3 = **a2;
  v5[0] = v2;
  v5[1] = 0;
  return [v3 setParameter:601 to:v5];
}

uint64_t _ZNKSt3__110__function6__funcIZZ16update_overridesEUb0_E3__2NS_9allocatorIS2_EEFvP11ContextInfoEE7__cloneEPNS0_6__baseIS7_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = off_20D450;
  *(a2 + 8) = v2;
  return result;
}

id _ZNSt3__110__function6__funcIZZ16update_overridesEUb0_E3__2NS_9allocatorIS2_EEFvP11ContextInfoEEclEOS6_(uint64_t a1, void ***a2)
{
  v2 = *(a1 + 8);
  v3 = **a2;
  v5[0] = v2;
  v5[1] = 0;
  return [v3 setParameter:1420 to:v5];
}

id OUTLINED_FUNCTION_0_1(_DWORD *a1, void *a2)
{
  *a1 = 0;

  return [a2 getParameter:1400 to:a1];
}

id OUTLINED_FUNCTION_1_1()
{
  *v0 = 0;

  return [v1 getParameter:1401 to:v0];
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return GPUTools::FB::EncodePerfEvents();
}

char *alpha_func(__GLIContextRec *a1, uint64_t a2, float a3)
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

  v19 = *(*(v11 + 24) + 8);
  v18.n128_f32[0] = a3;

  return v19(a1, a2, v18);
}

char *blend_func(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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

  v18 = *(*(v11 + 24) + 56);

  return v18(a1, a2, a3);
}

char *clear(__GLIContextRec *a1, uint64_t a2)
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
    return clear((v9 + 4640));
  }

  *(v9 + 4838) = 257;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 80);

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

char *clear_color(__GLIContextRec *a1, float a2, float a3, float a4, float a5)
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

  v26 = *(*(v15 + 24) + 96);
  v22.n128_f32[0] = a2;
  v23.n128_f32[0] = a3;
  v24.n128_f32[0] = a4;
  v25.n128_f32[0] = a5;

  return v26(a1, v22, v23, v24, v25);
}

char *clear_stencil(__GLIContextRec *a1, uint64_t a2)
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
    return clear_stencil((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 120);

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

char *color4f(__GLIContextRec *a1, float a2, float a3, float a4, float a5)
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

  v26 = *(*(v15 + 24) + 296);
  v22.n128_f32[0] = a2;
  v23.n128_f32[0] = a3;
  v24.n128_f32[0] = a4;
  v25.n128_f32[0] = a5;

  return v26(a1, v22, v23, v24, v25);
}

char *color4ub(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v22 = *(*(v15 + 24) + 344);

  return v22(a1, a2, a3, a4, a5);
}

char *color_mask(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v22 = *(*(v15 + 24) + 392);

  return v22(a1, a2, a3, a4, a5);
}

char *color_pointer(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
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

  v22 = *(*(v15 + 24) + 408);

  return v22(a1, a2, a3, a4, a5);
}

char *copy_tex_image2D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, int a9)
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

  v28 = *(*(v21 + 24) + 432);

  return v28(a1, a2, a3, a4, a5, a6, a7, a8);
}

char *copy_tex_sub_image2D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, int a9)
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

  v28 = *(*(v21 + 24) + 448);

  return v28(a1, a2, a3, a4, a5, a6, a7, a8);
}

char *cull_face(__GLIContextRec *a1, uint64_t a2)
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
    return cull_face((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 456);

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

char *depth_func(__GLIContextRec *a1, uint64_t a2)
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
    return depth_func((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 480);

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

char *depth_mask(__GLIContextRec *a1, uint64_t a2)
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
    return depth_mask((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 488);

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

char *disable(__GLIContextRec *a1, uint64_t a2)
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
    return disable((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 504);

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

char *disable_client_state(__GLIContextRec *a1, uint64_t a2)
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
    return disable_client_state((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 512);

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

char *enable(__GLIContextRec *a1, uint64_t a2)
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
    return enable((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 576);

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

char *enable_client_state(__GLIContextRec *a1, uint64_t a2)
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
    return enable_client_state((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 584);

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

char *finish(__GLIContextRec *a1)
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
    return finish((v6 + 4640));
  }

  *(v6 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1)
  {
    result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand];
    if (result)
    {
      return finish((v6 + 4640));
    }
  }

  v10 = atomic_fetch_add((v6 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v10 >= 1)
  {

    return handle_opengl_thread_conflict(v6);
  }

  return result;
}

char *flush(__GLIContextRec *a1)
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
    return flush((v6 + 4640));
  }

  *(v6 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1)
  {
    result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand];
    if (result)
    {
      return flush((v6 + 4640));
    }
  }

  v10 = atomic_fetch_add((v6 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v10 >= 1)
  {

    return handle_opengl_thread_conflict(v6);
  }

  return result;
}

char *fogf(__GLIContextRec *a1, uint64_t a2, float a3)
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

  v19 = *(*(v11 + 24) + 728);
  v18.n128_f32[0] = a3;

  return v19(a1, a2, v18);
}

char *fogfv(__GLIContextRec *a1, uint64_t a2, const float *a3)
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

  v18 = *(*(v11 + 24) + 736);

  return v18(a1, a2, a3);
}

char *front_face(__GLIContextRec *a1, uint64_t a2)
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
    return front_face((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 760);

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

char *gen_textures(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
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

  v18 = *(*(v11 + 24) + 784);

  return v18(a1, a2, a3);
}

char *get_BOOLeanv(__GLIContextRec *a1, uint64_t a2, unsigned __int8 *a3)
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

  v18 = *(*(v11 + 24) + 792);

  return v18(a1, a2, a3);
}

char *get_floatv(__GLIContextRec *a1, uint64_t a2, float *a3)
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

  v18 = *(*(v11 + 24) + 824);

  return v18(a1, a2, a3);
}

char *get_integerv(__GLIContextRec *a1, uint64_t a2, int *a3)
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

  v18 = *(*(v11 + 24) + 832);

  return v18(a1, a2, a3);
}

char *get_lightfv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float *a4)
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

  v20 = *(*(v13 + 24) + 840);

  return v20(a1, a2, a3, a4);
}

char *get_materialfv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float *a4)
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

  v20 = *(*(v13 + 24) + 880);

  return v20(a1, a2, a3, a4);
}

char *get_pointerv(__GLIContextRec *a1, uint64_t a2, void **a3)
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

  v18 = *(*(v11 + 24) + 920);

  return v18(a1, a2, a3);
}

char *get_tex_envfv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float *a4)
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

  v20 = *(*(v13 + 24) + 944);

  return v20(a1, a2, a3, a4);
}

char *get_tex_enviv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
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

  v20 = *(*(v13 + 24) + 952);

  return v20(a1, a2, a3, a4);
}

char *get_tex_image(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

  v24 = *(*(v17 + 24) + 984);

  return v24(a1, a2, a3, a4, a5, a6);
}

char *get_tex_level_parameteriv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
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

  v22 = *(*(v15 + 24) + 1000);

  return v22(a1, a2, a3, a4, a5);
}

char *get_tex_parameterfv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float *a4)
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

  v20 = *(*(v13 + 24) + 1008);

  return v20(a1, a2, a3, a4);
}

char *get_tex_parameteriv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
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

  v20 = *(*(v13 + 24) + 1016);

  return v20(a1, a2, a3, a4);
}

char *hint(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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

  v18 = *(*(v11 + 24) + 1024);

  return v18(a1, a2, a3);
}

char *light_modelf(__GLIContextRec *a1, uint64_t a2, float a3)
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

  v19 = *(*(v11 + 24) + 1168);
  v18.n128_f32[0] = a3;

  return v19(a1, a2, v18);
}

char *light_modelfv(__GLIContextRec *a1, uint64_t a2, const float *a3)
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

  v18 = *(*(v11 + 24) + 1176);

  return v18(a1, a2, a3);
}

char *lightf(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float a4)
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

  v21 = *(*(v13 + 24) + 1200);
  v20.n128_f32[0] = a4;

  return v21(a1, a2, a3, v20);
}

char *lightfv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const float *a4)
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

  v20 = *(*(v13 + 24) + 1208);

  return v20(a1, a2, a3, a4);
}

char *line_width(__GLIContextRec *a1, float a2)
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
    return line_width((v9 + 4640), a2);
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 1240);
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

char *load_identity(__GLIContextRec *a1)
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
    return load_identity((v6 + 4640));
  }

  *(v6 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1)
  {
    result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand];
    if (result)
    {
      return load_identity((v6 + 4640));
    }
  }

  v10 = atomic_fetch_add((v6 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v10 >= 1)
  {

    return handle_opengl_thread_conflict(v6);
  }

  return result;
}

char *load_matrixf(__GLIContextRec *a1, const float *a2)
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
    return load_matrixf((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 1272);

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

char *logic_op(__GLIContextRec *a1, uint64_t a2)
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
    return logic_op((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 1288);

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

char *materialf(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float a4)
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

  v21 = *(*(v13 + 24) + 1360);
  v20.n128_f32[0] = a4;

  return v21(a1, a2, a3, v20);
}

char *materialfv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const float *a4)
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

  v20 = *(*(v13 + 24) + 1368);

  return v20(a1, a2, a3, a4);
}

char *matrix_mode(__GLIContextRec *a1, uint64_t a2)
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
    return matrix_mode((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 1392);

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

char *mult_matrixf(__GLIContextRec *a1, const float *a2)
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
    return mult_matrixf((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 1408);

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

char *normal3f(__GLIContextRec *a1, float a2, float a3, float a4)
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

  v23 = *(*(v13 + 24) + 1456);
  v20.n128_f32[0] = a2;
  v21.n128_f32[0] = a3;
  v22.n128_f32[0] = a4;

  return v23(a1, v20, v21, v22);
}

char *normal_pointer(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const void *a4)
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

  v20 = *(*(v13 + 24) + 1504);

  return v20(a1, a2, a3, a4);
}

char *pixel_storei(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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

  v18 = *(*(v11 + 24) + 1560);

  return v18(a1, a2, a3);
}

char *point_size(__GLIContextRec *a1, float a2)
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
    return point_size((v9 + 4640), a2);
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 1592);
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

char *polygon_offset(__GLIContextRec *a1, float a2, float a3)
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

  v20 = *(*(v11 + 24) + 1608);
  v18.n128_f32[0] = a2;
  v19.n128_f32[0] = a3;

  return v20(a1, v18, v19);
}

char *pop_matrix(__GLIContextRec *a1)
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
    return pop_matrix((v6 + 4640));
  }

  *(v6 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1)
  {
    result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand];
    if (result)
    {
      return pop_matrix((v6 + 4640));
    }
  }

  v10 = atomic_fetch_add((v6 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v10 >= 1)
  {

    return handle_opengl_thread_conflict(v6);
  }

  return result;
}

char *push_matrix(__GLIContextRec *a1)
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
    return push_matrix((v6 + 4640));
  }

  *(v6 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1)
  {
    result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand];
    if (result)
    {
      return push_matrix((v6 + 4640));
    }
  }

  v10 = atomic_fetch_add((v6 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v10 >= 1)
  {

    return handle_opengl_thread_conflict(v6);
  }

  return result;
}

char *read_buffer(__GLIContextRec *a1, uint64_t a2)
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
    return read_buffer((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 1888);

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

char *read_pixels(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
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

  v28 = *(*(v21 + 24) + 1896);

  return v28(a1, a2, a3, a4, a5, a6, a7, a8);
}

char *rotatef(__GLIContextRec *a1, float a2, float a3, float a4, float a5)
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

  v26 = *(*(v15 + 24) + 1984);
  v22.n128_f32[0] = a2;
  v23.n128_f32[0] = a3;
  v24.n128_f32[0] = a4;
  v25.n128_f32[0] = a5;

  return v26(a1, v22, v23, v24, v25);
}

char *scalef(__GLIContextRec *a1, float a2, float a3, float a4)
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

  v23 = *(*(v13 + 24) + 2000);
  v20.n128_f32[0] = a2;
  v21.n128_f32[0] = a3;
  v22.n128_f32[0] = a4;

  return v23(a1, v20, v21, v22);
}

char *scissor(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v22 = *(*(v15 + 24) + 2008);

  return v22(a1, a2, a3, a4, a5);
}

char *shade_model(__GLIContextRec *a1, uint64_t a2)
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
    return shade_model((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 2024);

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

char *stencil_func(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v20 = *(*(v13 + 24) + 2032);

  return v20(a1, a2, a3, a4);
}

char *stencil_mask(__GLIContextRec *a1, uint64_t a2)
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
    return stencil_mask((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 2040);

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

char *stencil_op(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v20 = *(*(v13 + 24) + 2048);

  return v20(a1, a2, a3, a4);
}

char *tex_coord_pointer(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
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

  v22 = *(*(v15 + 24) + 2312);

  return v22(a1, a2, a3, a4, a5);
}

char *tex_envf(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float a4)
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

  v21 = *(*(v13 + 24) + 2320);
  v20.n128_f32[0] = a4;

  return v21(a1, a2, a3, v20);
}

char *tex_envfv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const float *a4)
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

  v20 = *(*(v13 + 24) + 2328);

  return v20(a1, a2, a3, a4);
}

char *tex_envi(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v20 = *(*(v13 + 24) + 2336);

  return v20(a1, a2, a3, a4);
}

char *tex_enviv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const int *a4)
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

  v20 = *(*(v13 + 24) + 2344);

  return v20(a1, a2, a3, a4);
}

char *tex_image2D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, uint64_t a9, const void *a10)
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

  v28 = *(*(v21 + 24) + 2408);

  return v28(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

char *tex_parameterf(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float a4)
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

  v21 = *(*(v13 + 24) + 2416);
  v20.n128_f32[0] = a4;

  return v21(a1, a2, a3, v20);
}

char *tex_parameterfv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const float *a4)
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

  v20 = *(*(v13 + 24) + 2424);

  return v20(a1, a2, a3, a4);
}

char *tex_parameteri(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v20 = *(*(v13 + 24) + 2432);

  return v20(a1, a2, a3, a4);
}

char *tex_parameteriv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const int *a4)
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

  v20 = *(*(v13 + 24) + 2440);

  return v20(a1, a2, a3, a4);
}

char *tex_sub_image2D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, uint64_t a9, const void *a10)
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

  v28 = *(*(v21 + 24) + 2456);

  return v28(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

char *translatef(__GLIContextRec *a1, float a2, float a3, float a4)
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

  v23 = *(*(v13 + 24) + 2472);
  v20.n128_f32[0] = a2;
  v21.n128_f32[0] = a3;
  v22.n128_f32[0] = a4;

  return v23(a1, v20, v21, v22);
}

char *vertex_pointer(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
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

  v22 = *(*(v15 + 24) + 2672);

  return v22(a1, a2, a3, a4, a5);
}

char *viewport(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      *(v15 + 3360) = a2;
      *(v15 + 3364) = a3;
      *(v15 + 3368) = a4;
      *(v15 + 3372) = a5;
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

  v22 = *(*(v15 + 24) + 2680);

  return v22(a1, a2, a3, a4, a5);
}

char *blend_func_separate(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v22 = *(*(v15 + 24) + 2688);

  return v22(a1, a2, a3, a4, a5);
}

char *blend_color(__GLIContextRec *a1, float a2, float a3, float a4, float a5)
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

  v26 = *(*(v15 + 24) + 2696);
  v22.n128_f32[0] = a2;
  v23.n128_f32[0] = a3;
  v24.n128_f32[0] = a4;
  v25.n128_f32[0] = a5;

  return v26(a1, v22, v23, v24, v25);
}

char *blend_equation(__GLIContextRec *a1, uint64_t a2)
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
    return blend_equation((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 2704);

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

char *client_active_texture(__GLIContextRec *a1, uint64_t a2)
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
    return client_active_texture((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 2728);

    return v15(a1, a2);
  }

  else
  {
    *(v9 + 2076) = a2;
    v13 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v13 >= 1)
    {

      return handle_opengl_thread_conflict(v9);
    }
  }

  return result;
}

char *active_texture(__GLIContextRec *a1, uint64_t a2)
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
    return active_texture((v9 + 4640));
  }

  *(v9 + 4838) = 1;
  result = [DYGetGLGuestAppClient() state];
  if (result == &dword_0 + 1 && (result = [DYGetGLGuestAppClient() triggerCaptureOnNextGLCommand], result))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v15 = *(*(v9 + 24) + 2736);

    return v15(a1, a2);
  }

  else
  {
    *(v9 + 2072) = a2;
    v13 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v13 >= 1)
    {

      return handle_opengl_thread_conflict(v9);
    }
  }

  return result;
}

char *multi_tex_coord4f(__GLIContextRec *a1, uint64_t a2, float a3, float a4, float a5, float a6)
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

  v28 = *(*(v17 + 24) + 2952);
  v24.n128_f32[0] = a3;
  v25.n128_f32[0] = a4;
  v26.n128_f32[0] = a5;
  v27.n128_f32[0] = a6;

  return v28(a1, a2, v24, v25, v26, v27);
}

char *compressed_tex_image3D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, uint64_t a9, const void *a10)
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

  v28 = *(*(v21 + 24) + 3032);

  return v28(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

char *compressed_tex_image2D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, const void *a9)
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

  v28 = *(*(v21 + 24) + 3040);

  return v28(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

char *compressed_tex_sub_image3D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, const void *a11)
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
    *(v20 + 4838) = 1;
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

  v27 = *(*(v20 + 24) + 3056);

  return v27(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

char *compressed_tex_sub_image2D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, uint64_t a9, const void *a10)
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

  v28 = *(*(v21 + 24) + 3064);

  return v28(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

char *get_compressed_tex_image(__GLIContextRec *a1, uint64_t a2, uint64_t a3, void *a4)
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

  v20 = *(*(v13 + 24) + 3080);

  return v20(a1, a2, a3, a4);
}

char *tex_image3D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, const void *a10)
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
    *(v20 + 4838) = 1;
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

  v27 = *(*(v20 + 24) + 3504);

  return v27(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

char *tex_sub_image3D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, const void *a11)
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
    *(v20 + 4838) = 1;
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

  v27 = *(*(v20 + 24) + 3512);

  return v27(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

char *copy_tex_sub_image3D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, uint64_t a9)
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
    *(v20 + 4838) = 1;
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

  v27 = *(*(v20 + 24) + 3520);

  return v27(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}