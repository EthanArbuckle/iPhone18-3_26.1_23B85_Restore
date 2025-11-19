void sub_A8ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void copy_texture_levels(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v42 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v42 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v43 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v43, 0, do_nothing);
      v44 = *(*(v15 + 24) + 8216);

      v44(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  __ptr = 0;
  v55 = 0;
  v56 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = __ptr;
    v18 = v55;
    v20 = v55 - __ptr;
    v21 = v56;
    v22 = v56 - (v55 - __ptr);
    if (v22 <= 0x43)
    {
      v45 = (323 - v22) & 0x100;
      v56 += v45;
      v19 = malloc_type_malloc(v45 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19 || (v19 & 3) != 0)
      {
        goto LABEL_66;
      }

      v18 = v19 + v20;
    }

    *(v18 + 16) = 0;
    *(v18 + 2) = 0u;
    *(v18 + 3) = 0u;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    v23 = v18 + 68;
    v55 = v18 + 68;
    v24 = v18 + 68 - v19;
    *v19 = v24;
    v25 = (v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v26 = v25 - v24;
    if (v25 == v24)
    {
      goto LABEL_23;
    }

    v27 = __ptr;
    v28 = v23 - __ptr;
    v29 = v56;
    v30 = v56 - (v23 - __ptr);
    if (v26 <= v30)
    {
      v31 = v55;
LABEL_22:
      bzero(v23, v26);
      v55 = &v31[v26];
      *v27 += v26;
LABEL_23:
      v19[1] = 1039;
      v19[8] = 0;
      v53 = 0;
      pthread_threadid_np(0, &v53);
      *(v19 + 1) = v53;
      *(v19 + 9) = 0x69696975697543;
      *(v19 + 11) = *v15;
      v19[13] = a2;
      v19[14] = a3;
      v19[15] = a4;
      v19[16] = a5;
      v32 = byte_21B267;
      if (byte_21B267)
      {
        breakpoint_break(&__ptr, (&stru_3D8.align + 3), 1, *(v15 + 3404), v15);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v32 & 4))
      {
        v33 = mach_absolute_time();
        (*(*(v15 + 32) + 8216))(a1, a2, a3, a4, a5);
        v34 = mach_absolute_time() - v33;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v35 = __ptr;
          *(__ptr + 2) = v33;
          v35[3] = v34;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v48 = *(&g_DYTimebaseInfo + 1);
          v49 = __udivti3();
          v50 = __ptr;
          *(__ptr + 3) = v49;
          v50[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v15);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v15 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v15);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), &__ptr);
      v36 = *(v15 + 3404);
      if (v36 && (gBreakOnError & 1) != 0)
      {
        v46 = 3;
        v47 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v32 & 2) == 0)
        {
LABEL_37:
          v37 = [DYGetGLGuestAppClient() defaultFbufStream];
          v38 = v37;
          while (atomic_exchange(v37 + 14, 1u) == 1)
          {
              ;
            }
          }

          v39 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v38 + 14);
          v40 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v40 >= 1)
          {
            handle_opengl_thread_conflict(v15);
          }

          goto LABEL_45;
        }

        v46 = 2;
        v47 = 1039;
      }

      breakpoint_break(&__ptr, v47, v46, v36, v15);
      goto LABEL_37;
    }

    v51 = (v26 - v30 + 255) & 0xFFFFFF00;
    v52 = v51 + v56;
    v56 += v51;
    if (__ptr)
    {
      v27 = reallocf(__ptr, v52);
      __ptr = v27;
      if (!v27)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v27 = malloc_type_malloc(v51 + v29, 0xF962E99uLL);
      __ptr = v27;
      if (!v27)
      {
        goto LABEL_66;
      }
    }

    if ((v27 & 3) == 0)
    {
      v31 = v27 + v28;
      v23 = v31;
      goto LABEL_22;
    }

LABEL_66:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 8216))(a1, a2, a3, a4, a5);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

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
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v42 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v42 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v43 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v43, 0, do_nothing);
      v44 = *(*(v15 + 24) + 8216);

      v44(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  __ptr = 0;
  v55 = 0;
  v56 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = __ptr;
    v18 = v55;
    v20 = v55 - __ptr;
    v21 = v56;
    v22 = v56 - (v55 - __ptr);
    if (v22 <= 0x43)
    {
      v45 = (323 - v22) & 0x100;
      v56 += v45;
      v19 = malloc_type_malloc(v45 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19 || (v19 & 3) != 0)
      {
        goto LABEL_66;
      }

      v18 = v19 + v20;
    }

    *(v18 + 16) = 0;
    *(v18 + 2) = 0u;
    *(v18 + 3) = 0u;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    v23 = v18 + 68;
    v55 = v18 + 68;
    v24 = v18 + 68 - v19;
    *v19 = v24;
    v25 = (v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v26 = v25 - v24;
    if (v25 == v24)
    {
      goto LABEL_23;
    }

    v27 = __ptr;
    v28 = v23 - __ptr;
    v29 = v56;
    v30 = v56 - (v23 - __ptr);
    if (v26 <= v30)
    {
      v31 = v55;
LABEL_22:
      bzero(v23, v26);
      v55 = &v31[v26];
      *v27 += v26;
LABEL_23:
      v19[1] = 1039;
      v19[8] = 0;
      v53 = 0;
      pthread_threadid_np(0, &v53);
      *(v19 + 1) = v53;
      *(v19 + 9) = 0x69696975697543;
      *(v19 + 11) = *v15;
      v19[13] = a2;
      v19[14] = a3;
      v19[15] = a4;
      v19[16] = a5;
      v32 = byte_21B267;
      if (byte_21B267)
      {
        breakpoint_break(&__ptr, (&stru_3D8.align + 3), 1, *(v15 + 3404), v15);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v32 & 4))
      {
        v33 = mach_absolute_time();
        (*(*(v15 + 32) + 8216))(a1, a2, a3, a4, a5);
        v34 = mach_absolute_time() - v33;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v35 = __ptr;
          *(__ptr + 2) = v33;
          v35[3] = v34;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v48 = *(&g_DYTimebaseInfo + 1);
          v49 = __udivti3();
          v50 = __ptr;
          *(__ptr + 3) = v49;
          v50[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v15);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v15 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v15);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), &__ptr);
      v36 = *(v15 + 3404);
      if (v36 && (gBreakOnError & 1) != 0)
      {
        v46 = 3;
        v47 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v32 & 2) == 0)
        {
LABEL_37:
          v37 = [DYGetGLGuestAppClient() defaultFbufStream];
          v38 = v37;
          while (atomic_exchange(v37 + 14, 1u) == 1)
          {
              ;
            }
          }

          v39 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v38 + 14);
          v40 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v40 >= 1)
          {
            handle_opengl_thread_conflict(v15);
          }

          goto LABEL_45;
        }

        v46 = 2;
        v47 = 1039;
      }

      breakpoint_break(&__ptr, v47, v46, v36, v15);
      goto LABEL_37;
    }

    v51 = (v26 - v30 + 255) & 0xFFFFFF00;
    v52 = v51 + v56;
    v56 += v51;
    if (__ptr)
    {
      v27 = reallocf(__ptr, v52);
      __ptr = v27;
      if (!v27)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v27 = malloc_type_malloc(v51 + v29, 0xF962E99uLL);
      __ptr = v27;
      if (!v27)
      {
        goto LABEL_66;
      }
    }

    if ((v27 & 3) == 0)
    {
      v31 = v27 + v28;
      v23 = v31;
      goto LABEL_22;
    }

LABEL_66:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 8216))(a1, a2, a3, a4, a5);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

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
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v19, 0, do_nothing);
LABEL_29:
      v20 = *(*(v15 + 24) + 8216);

      v20(a1, a2, a3, a4, a5);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v15 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v15 + 32) + 8216))(a1, a2, a3, a4, a5);
  ++*(v15 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v15);
  }

  add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v15);
  }
}

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
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v22 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v22, 0, do_nothing);
LABEL_29:
      v23 = *(*(v15 + 24) + 8216);

      v23(a1, a2, a3, a4, a5);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v15 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v18 = mach_absolute_time();
  (*(*(v15 + 32) + 8216))(a1, a2, a3, a4, a5);
  v19 = mach_absolute_time();
  v20 = vdupq_n_s64(1uLL);
  v20.i64[0] = v19 - v18;
  *(v15 + 3696) = vaddq_s64(v20, *(v15 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v15);
  }

  add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v15);
  }
}

void sub_A94D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void invalidate_sub_framebuffer(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v21);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v21 + 24) + 8224);

      v39(a1, a2, a3, a4, a5, a6, a7, a8);
      return;
    }
  }

  *(v21 + 4838) = 1;
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    snprintf((v21 + 4709), 0x40uLL, "Cei@%deiiii", a3);
    GPUTools::FB::Encode(v46, 1044, 0, v21 + 4709, v24, v25, v26, v27, *v21);
    v45 = byte_21B26C;
    if (byte_21B26C)
    {
      breakpoint_break(v46, &stru_3D8.nreloc, 1, *(v21 + 3404), v21);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v45 & 4))
    {
      v28 = mach_absolute_time();
      (*(*(v21 + 32) + 8224))(a1, a2, a3, a4, a5, a6, a7, a8);
      v29 = mach_absolute_time() - v28;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v30 = v46[0];
        *(v46[0] + 2) = v28;
        v30[3] = v29;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v42 = *(&g_DYTimebaseInfo + 1);
        v43 = __udivti3();
        v44 = v46[0];
        *(v46[0] + 3) = v43;
        v44[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v21);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v21 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v21);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v21 + 3480), (v21 + 3520), v46);
    v31 = *(v21 + 3404);
    if (v31 && (gBreakOnError & 1) != 0)
    {
      v40 = 3;
      v41 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v45 & 2) == 0)
      {
LABEL_32:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = *v46[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v35 = atomic_fetch_add((v21 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v21);
        }

        goto LABEL_40;
      }

      v40 = 2;
      v41 = 1044;
    }

    breakpoint_break(v46, v41, v40, v31, v21);
    goto LABEL_32;
  }

  atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v21 + 24) + 8224))(a1, a2, a3, a4, a5, a6, a7, a8);
LABEL_40:
  if (v46[0])
  {
    free(v46[0]);
  }
}

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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v21);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v21 + 24) + 8224);

      v39(a1, a2, a3, a4, a5, a6, a7, a8);
      return;
    }
  }

  *(v21 + 4838) = 1;
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    snprintf((v21 + 4709), 0x40uLL, "Cei@%deiiii", a3);
    GPUTools::FB::Encode(v46, 1044, 0, v21 + 4709, v24, v25, v26, v27, *v21);
    v45 = byte_21B26C;
    if (byte_21B26C)
    {
      breakpoint_break(v46, &stru_3D8.nreloc, 1, *(v21 + 3404), v21);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v45 & 4))
    {
      v28 = mach_absolute_time();
      (*(*(v21 + 32) + 8224))(a1, a2, a3, a4, a5, a6, a7, a8);
      v29 = mach_absolute_time() - v28;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v30 = v46[0];
        *(v46[0] + 2) = v28;
        v30[3] = v29;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v42 = *(&g_DYTimebaseInfo + 1);
        v43 = __udivti3();
        v44 = v46[0];
        *(v46[0] + 3) = v43;
        v44[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v21);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v21 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v21);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v21 + 3480), (v21 + 3520), v46);
    v31 = *(v21 + 3404);
    if (v31 && (gBreakOnError & 1) != 0)
    {
      v40 = 3;
      v41 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v45 & 2) == 0)
      {
LABEL_32:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = *v46[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v35 = atomic_fetch_add((v21 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v21);
        }

        goto LABEL_40;
      }

      v40 = 2;
      v41 = 1044;
    }

    breakpoint_break(v46, v41, v40, v31, v21);
    goto LABEL_32;
  }

  atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v21 + 24) + 8224))(a1, a2, a3, a4, a5, a6, a7, a8);
LABEL_40:
  if (v46[0])
  {
    free(v46[0]);
  }
}

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
      v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v25, 0, do_nothing);
LABEL_29:
      v26 = *(*(v21 + 24) + 8224);

      v26(a1, a2, a3, a4, a5, a6, a7, a8);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v21);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
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

  (*(*(v21 + 32) + 8224))(a1, a2, a3, a4, a5, a6, a7, a8);
  ++*(v21 + 3704);
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
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
LABEL_29:
      v31 = *(*(v21 + 24) + 8224);

      v31(a1, a2, a3, a4, a5, a6, a7, a8);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v21);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
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
  (*(*(v21 + 32) + 8224))(a1, a2, a3, a4, a5, a6, a7, v25);
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

void sub_A99A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  atomic_store(0, (v18 + 56));
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void get_internal_formativ(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
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
  if (gCheckGLErrors != 1 || v18 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v40 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v40 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v41 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v41, 0, do_nothing);
      v42 = *(*(v17 + 24) + 8232);

      v42(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    snprintf((v17 + 4709), 0x40uLL, "Ceeei@%di", a5);
    GPUTools::FB::Encode(&v49, 1043, 256, v17 + 4709, v20, v21, v22, v23, *v17);
    v24 = byte_21B26B;
    if (byte_21B26B)
    {
      breakpoint_break(&v49, (&stru_3D8.reloff + 3), 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v29 = mach_absolute_time();
      (*(*(v17 + 32) + 8232))(a1, a2, a3, a4, a5, a6);
      v47 = v17;
      v30 = v24;
      v31 = mach_absolute_time() - v29;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v32 = v49;
        *(v49 + 3) = v31;
      }

      else
      {
        v45 = *(&g_DYTimebaseInfo + 1);
        v46 = __udivti3();
        v32 = v49;
        *(v49 + 3) = v46;
        v29 = __udivti3();
      }

      v32[2] = v29;
      v24 = v30;
      v17 = v47;
      if (gCheckGLErrors == 1)
      {
        check_errors(v47);
      }
    }

    v33 = v49;
    v48 = *(v49 + 1);
    v50 = v49;
    if (v51 >= 0x24)
    {
      *(v49 + 8) = 0;
      *v33 = 0u;
      v33[1] = 0u;
    }

    GPUTools::FB::Encode(&v49, 1043, 256, v17 + 4709, v25, v26, v27, v28, *v17);
    *(v49 + 1) = v48;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v17 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v17);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), &v49);
    v34 = *(v17 + 3404);
    if (v34 && (gBreakOnError & 1) != 0)
    {
      v43 = 3;
      v44 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v24 & 2) == 0)
      {
LABEL_36:
        v35 = [DYGetGLGuestAppClient() defaultFbufStream];
        v36 = v35;
        while (atomic_exchange(v35 + 14, 1u) == 1)
        {
            ;
          }
        }

        v37 = *v49;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v36 + 14);
        v38 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v38 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        goto LABEL_44;
      }

      v43 = 2;
      v44 = 1043;
    }

    breakpoint_break(&v49, v44, v43, v34, v17);
    goto LABEL_36;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 8232))(a1, a2, a3, a4, a5, a6);
LABEL_44:
  if (v49)
  {
    free(v49);
  }
}

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
  if (gCheckGLErrors != 1 || v18 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v17 + 24) + 8232);

      v36(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v42, 1043, 2, "Ceeeip", v20, v21, v22, v23, *v17);
    v24 = byte_21B26B;
    if (byte_21B26B)
    {
      breakpoint_break(v42, (&stru_3D8.reloff + 3), 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v17 + 32) + 8232))(a1, a2, a3, a4, a5, a6);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v42[0];
        *(v42[0] + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v39 = *(&g_DYTimebaseInfo + 1);
        v40 = __udivti3();
        v41 = v42[0];
        *(v42[0] + 3) = v40;
        v41[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v17);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v17 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v17);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), v42);
    v28 = *(v17 + 3404);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v24 & 2) == 0)
      {
LABEL_32:
        v29 = [DYGetGLGuestAppClient() defaultFbufStream];
        v30 = v29;
        while (atomic_exchange(v29 + 14, 1u) == 1)
        {
            ;
          }
        }

        v31 = *v42[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        v32 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        goto LABEL_40;
      }

      v37 = 2;
      v38 = 1043;
    }

    breakpoint_break(v42, v38, v37, v28, v17);
    goto LABEL_32;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 8232))(a1, a2, a3, a4, a5, a6);
LABEL_40:
  if (v42[0])
  {
    free(v42[0]);
  }
}

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
  if (gCheckGLErrors != 1 || v18 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v21, 0, do_nothing);
LABEL_29:
      v22 = *(*(v17 + 24) + 8232);

      v22(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v17 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v17 + 32) + 8232))(a1, a2, a3, a4, a5, a6);
  ++*(v17 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v17);
  }

  add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v17);
  }
}

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
  if (gCheckGLErrors != 1 || v18 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v24, 0, do_nothing);
LABEL_29:
      v25 = *(*(v17 + 24) + 8232);

      v25(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v17 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v20 = mach_absolute_time();
  (*(*(v17 + 32) + 8232))(a1, a2, a3, a4, a5, a6);
  v21 = mach_absolute_time();
  v22 = vdupq_n_s64(1uLL);
  v22.i64[0] = v21 - v20;
  *(v17 + 3696) = vaddq_s64(v22, *(v17 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v17);
  }

  add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v17);
  }
}

void sub_A9EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  atomic_store(0, (v18 + 56));
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void tex_storage2D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  if (gCheckGLErrors != 1 || v18 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v17 + 24) + 8248);

      v36(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v42, 1040, 4096, "Ceieii", v20, v21, v22, v23, *v17);
    v24 = byte_21B268;
    if (byte_21B268)
    {
      breakpoint_break(v42, &stru_3D8.reloff, 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v17 + 32) + 8248))(a1, a2, a3, a4, a5, a6);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v42[0];
        *(v42[0] + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v39 = *(&g_DYTimebaseInfo + 1);
        v40 = __udivti3();
        v41 = v42[0];
        *(v42[0] + 3) = v40;
        v41[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v17);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v17 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v17);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), v42);
    v28 = *(v17 + 3404);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v24 & 2) == 0)
      {
LABEL_32:
        v29 = [DYGetGLGuestAppClient() defaultFbufStream];
        v30 = v29;
        while (atomic_exchange(v29 + 14, 1u) == 1)
        {
            ;
          }
        }

        v31 = *v42[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        wrapper_encode_texture_format_info(v17, a2, 0, 0);
        v32 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        goto LABEL_40;
      }

      v37 = 2;
      v38 = 1040;
    }

    breakpoint_break(v42, v38, v37, v28, v17);
    goto LABEL_32;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 8248))(a1, a2, a3, a4, a5, a6);
LABEL_40:
  if (v42[0])
  {
    free(v42[0]);
  }
}

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
  if (gCheckGLErrors != 1 || v18 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v17 + 24) + 8248);

      v36(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v42, 1040, 4096, "Ceieii", v20, v21, v22, v23, *v17);
    v24 = byte_21B268;
    if (byte_21B268)
    {
      breakpoint_break(v42, &stru_3D8.reloff, 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v17 + 32) + 8248))(a1, a2, a3, a4, a5, a6);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v42[0];
        *(v42[0] + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v39 = *(&g_DYTimebaseInfo + 1);
        v40 = __udivti3();
        v41 = v42[0];
        *(v42[0] + 3) = v40;
        v41[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v17);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v17 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v17);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), v42);
    v28 = *(v17 + 3404);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v24 & 2) == 0)
      {
LABEL_32:
        v29 = [DYGetGLGuestAppClient() defaultFbufStream];
        v30 = v29;
        while (atomic_exchange(v29 + 14, 1u) == 1)
        {
            ;
          }
        }

        v31 = *v42[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        wrapper_encode_texture_format_info(v17, a2, 0, 0);
        v32 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        goto LABEL_40;
      }

      v37 = 2;
      v38 = 1040;
    }

    breakpoint_break(v42, v38, v37, v28, v17);
    goto LABEL_32;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 8248))(a1, a2, a3, a4, a5, a6);
LABEL_40:
  if (v42[0])
  {
    free(v42[0]);
  }
}

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
  if (gCheckGLErrors != 1 || v18 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v21, 0, do_nothing);
LABEL_29:
      v22 = *(*(v17 + 24) + 8248);

      v22(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v17 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v17 + 32) + 8248))(a1, a2, a3, a4, a5, a6);
  ++*(v17 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v17);
  }

  add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v17);
  }
}

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
  if (gCheckGLErrors != 1 || v18 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v24, 0, do_nothing);
LABEL_29:
      v25 = *(*(v17 + 24) + 8248);

      v25(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v17 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v20 = mach_absolute_time();
  (*(*(v17 + 32) + 8248))(a1, a2, a3, a4, a5, a6);
  v21 = mach_absolute_time();
  v22 = vdupq_n_s64(1uLL);
  v22.i64[0] = v21 - v20;
  *(v17 + 3696) = vaddq_s64(v22, *(v17 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v17);
  }

  add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v17);
  }
}

void sub_AA330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void tex_storage3D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  if (gCheckGLErrors != 1 || v20 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v19);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      v37 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v37, 0, do_nothing);
      v38 = *(*(v19 + 24) + 8256);

      v38(a1, a2, a3, a4, a5, a6, a7);
      return;
    }
  }

  *(v19 + 4838) = 1;
  v44[0] = 0;
  v44[1] = 0;
  v45 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v44, 1042, 4096, "Ceieiii", v22, v23, v24, v25, *v19);
    v26 = byte_21B26A;
    if (byte_21B26A)
    {
      breakpoint_break(v44, (&stru_3D8.reloff + 2), 1, *(v19 + 3404), v19);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v19 + 32) + 8256))(a1, a2, a3, a4, a5, a6, a7);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v44[0];
        *(v44[0] + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v41 = *(&g_DYTimebaseInfo + 1);
        v42 = __udivti3();
        v43 = v44[0];
        *(v44[0] + 3) = v42;
        v43[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v19);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v19 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v19);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v19 + 3480), (v19 + 3520), v44);
    v30 = *(v19 + 3404);
    if (v30 && (gBreakOnError & 1) != 0)
    {
      v39 = 3;
      v40 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v26 & 2) == 0)
      {
LABEL_32:
        v31 = [DYGetGLGuestAppClient() defaultFbufStream];
        v32 = v31;
        while (atomic_exchange(v31 + 14, 1u) == 1)
        {
            ;
          }
        }

        v33 = *v44[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v32 + 14);
        wrapper_encode_texture_format_info(v19, a2, 0, 0);
        v34 = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v34 >= 1)
        {
          handle_opengl_thread_conflict(v19);
        }

        goto LABEL_40;
      }

      v39 = 2;
      v40 = 1042;
    }

    breakpoint_break(v44, v40, v39, v30, v19);
    goto LABEL_32;
  }

  atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v19 + 24) + 8256))(a1, a2, a3, a4, a5, a6, a7);
LABEL_40:
  if (v44[0])
  {
    free(v44[0]);
  }
}

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
  if (gCheckGLErrors != 1 || v20 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v19);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      v37 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v37, 0, do_nothing);
      v38 = *(*(v19 + 24) + 8256);

      v38(a1, a2, a3, a4, a5, a6, a7);
      return;
    }
  }

  *(v19 + 4838) = 1;
  v44[0] = 0;
  v44[1] = 0;
  v45 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v44, 1042, 4096, "Ceieiii", v22, v23, v24, v25, *v19);
    v26 = byte_21B26A;
    if (byte_21B26A)
    {
      breakpoint_break(v44, (&stru_3D8.reloff + 2), 1, *(v19 + 3404), v19);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v19 + 32) + 8256))(a1, a2, a3, a4, a5, a6, a7);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v44[0];
        *(v44[0] + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v41 = *(&g_DYTimebaseInfo + 1);
        v42 = __udivti3();
        v43 = v44[0];
        *(v44[0] + 3) = v42;
        v43[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v19);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v19 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v19);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v19 + 3480), (v19 + 3520), v44);
    v30 = *(v19 + 3404);
    if (v30 && (gBreakOnError & 1) != 0)
    {
      v39 = 3;
      v40 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v26 & 2) == 0)
      {
LABEL_32:
        v31 = [DYGetGLGuestAppClient() defaultFbufStream];
        v32 = v31;
        while (atomic_exchange(v31 + 14, 1u) == 1)
        {
            ;
          }
        }

        v33 = *v44[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v32 + 14);
        wrapper_encode_texture_format_info(v19, a2, 0, 0);
        v34 = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v34 >= 1)
        {
          handle_opengl_thread_conflict(v19);
        }

        goto LABEL_40;
      }

      v39 = 2;
      v40 = 1042;
    }

    breakpoint_break(v44, v40, v39, v30, v19);
    goto LABEL_32;
  }

  atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v19 + 24) + 8256))(a1, a2, a3, a4, a5, a6, a7);
LABEL_40:
  if (v44[0])
  {
    free(v44[0]);
  }
}

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
  if (gCheckGLErrors != 1 || v20 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v23, 0, do_nothing);
LABEL_29:
      v24 = *(*(v19 + 24) + 8256);

      v24(a1, a2, a3, a4, a5, a6, a7);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v19);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v19 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v19 + 32) + 8256))(a1, a2, a3, a4, a5, a6, a7);
  ++*(v19 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v19);
  }

  add = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v19);
  }
}

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
  if (gCheckGLErrors != 1 || v20 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      v26 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v26, 0, do_nothing);
LABEL_29:
      v27 = *(*(v19 + 24) + 8256);

      v27(a1, a2, a3, a4, a5, a6, a7);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v19);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v19 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v22 = mach_absolute_time();
  (*(*(v19 + 32) + 8256))(a1, a2, a3, a4, a5, a6, a7);
  v23 = mach_absolute_time();
  v24 = vdupq_n_s64(1uLL);
  v24.i64[0] = v23 - v22;
  *(v19 + 3696) = vaddq_s64(v24, *(v19 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v19);
  }

  add = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v19);
  }
}

void sub_AA7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void label_object_with_responsible_process_APPLE(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v39 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v39 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v40 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v40, 0, do_nothing);
      v41 = *(*(v13 + 24) + 8264);

      v41(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v51 = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = __ptr;
    v16 = v51;
    v18 = v51 - __ptr;
    v19 = v52;
    if (v52 - (v51 - __ptr) <= 0x3F)
    {
      v52 += 256;
      v17 = malloc_type_malloc(v19 + 256, 0xF962E99uLL);
      __ptr = v17;
      if (!v17 || (v17 & 3) != 0)
      {
        goto LABEL_66;
      }

      v16 = v17 + v18;
    }

    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    v20 = v16 + 64;
    v51 = v16 + 64;
    v21 = v16 + 64 - v17;
    *v17 = v21;
    v22 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v23 = v22 - v21;
    if (v22 == v21)
    {
      goto LABEL_23;
    }

    v24 = __ptr;
    v25 = v20 - __ptr;
    v26 = v52;
    v27 = v52 - (v20 - __ptr);
    if (v23 <= v27)
    {
      v28 = v51;
LABEL_22:
      bzero(v20, v23);
      v51 = &v28[v23];
      *v24 += v23;
LABEL_23:
      v17[1] = 1046;
      v17[8] = 0;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v17 + 1) = v49;
      strcpy(v17 + 36, "Ceuii");
      *(v17 + 11) = *v13;
      v17[13] = a2;
      v17[14] = a3;
      v17[15] = a4;
      v29 = byte_21B26E;
      if (byte_21B26E)
      {
        breakpoint_break(&__ptr, (&stru_3D8.nreloc + 2), 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
      {
        v30 = mach_absolute_time();
        (*(*(v13 + 32) + 8264))(a1, a2, a3, a4);
        v31 = mach_absolute_time() - v30;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v32 = __ptr;
          *(__ptr + 2) = v30;
          v32[3] = v31;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v44 = *(&g_DYTimebaseInfo + 1);
          v45 = __udivti3();
          v46 = __ptr;
          *(__ptr + 3) = v45;
          v46[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v13);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v13 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v13);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &__ptr);
      v33 = *(v13 + 3404);
      if (v33 && (gBreakOnError & 1) != 0)
      {
        v42 = 3;
        v43 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v29 & 2) == 0)
        {
LABEL_37:
          v34 = [DYGetGLGuestAppClient() defaultFbufStream];
          v35 = v34;
          while (atomic_exchange(v34 + 14, 1u) == 1)
          {
              ;
            }
          }

          v36 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v35 + 14);
          v37 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v37 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_45;
        }

        v42 = 2;
        v43 = 1046;
      }

      breakpoint_break(&__ptr, v43, v42, v33, v13);
      goto LABEL_37;
    }

    v47 = (v23 - v27 + 255) & 0xFFFFFF00;
    v48 = v47 + v52;
    v52 += v47;
    if (__ptr)
    {
      v24 = reallocf(__ptr, v48);
      __ptr = v24;
      if (!v24)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v24 = malloc_type_malloc(v47 + v26, 0xF962E99uLL);
      __ptr = v24;
      if (!v24)
      {
        goto LABEL_66;
      }
    }

    if ((v24 & 3) == 0)
    {
      v28 = v24 + v25;
      v20 = v28;
      goto LABEL_22;
    }

LABEL_66:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 8264))(a1, a2, a3, a4);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

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
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v39 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v39 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v40 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v40, 0, do_nothing);
      v41 = *(*(v13 + 24) + 8264);

      v41(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v51 = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = __ptr;
    v16 = v51;
    v18 = v51 - __ptr;
    v19 = v52;
    if (v52 - (v51 - __ptr) <= 0x3F)
    {
      v52 += 256;
      v17 = malloc_type_malloc(v19 + 256, 0xF962E99uLL);
      __ptr = v17;
      if (!v17 || (v17 & 3) != 0)
      {
        goto LABEL_66;
      }

      v16 = v17 + v18;
    }

    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    v20 = v16 + 64;
    v51 = v16 + 64;
    v21 = v16 + 64 - v17;
    *v17 = v21;
    v22 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v23 = v22 - v21;
    if (v22 == v21)
    {
      goto LABEL_23;
    }

    v24 = __ptr;
    v25 = v20 - __ptr;
    v26 = v52;
    v27 = v52 - (v20 - __ptr);
    if (v23 <= v27)
    {
      v28 = v51;
LABEL_22:
      bzero(v20, v23);
      v51 = &v28[v23];
      *v24 += v23;
LABEL_23:
      v17[1] = 1046;
      v17[8] = 0;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v17 + 1) = v49;
      strcpy(v17 + 36, "Ceuii");
      *(v17 + 11) = *v13;
      v17[13] = a2;
      v17[14] = a3;
      v17[15] = a4;
      v29 = byte_21B26E;
      if (byte_21B26E)
      {
        breakpoint_break(&__ptr, (&stru_3D8.nreloc + 2), 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
      {
        v30 = mach_absolute_time();
        (*(*(v13 + 32) + 8264))(a1, a2, a3, a4);
        v31 = mach_absolute_time() - v30;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v32 = __ptr;
          *(__ptr + 2) = v30;
          v32[3] = v31;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v44 = *(&g_DYTimebaseInfo + 1);
          v45 = __udivti3();
          v46 = __ptr;
          *(__ptr + 3) = v45;
          v46[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v13);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v13 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v13);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &__ptr);
      v33 = *(v13 + 3404);
      if (v33 && (gBreakOnError & 1) != 0)
      {
        v42 = 3;
        v43 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v29 & 2) == 0)
        {
LABEL_37:
          v34 = [DYGetGLGuestAppClient() defaultFbufStream];
          v35 = v34;
          while (atomic_exchange(v34 + 14, 1u) == 1)
          {
              ;
            }
          }

          v36 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v35 + 14);
          v37 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v37 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_45;
        }

        v42 = 2;
        v43 = 1046;
      }

      breakpoint_break(&__ptr, v43, v42, v33, v13);
      goto LABEL_37;
    }

    v47 = (v23 - v27 + 255) & 0xFFFFFF00;
    v48 = v47 + v52;
    v52 += v47;
    if (__ptr)
    {
      v24 = reallocf(__ptr, v48);
      __ptr = v24;
      if (!v24)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v24 = malloc_type_malloc(v47 + v26, 0xF962E99uLL);
      __ptr = v24;
      if (!v24)
      {
        goto LABEL_66;
      }
    }

    if ((v24 & 3) == 0)
    {
      v28 = v24 + v25;
      v20 = v28;
      goto LABEL_22;
    }

LABEL_66:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 8264))(a1, a2, a3, a4);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

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
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v17, 0, do_nothing);
LABEL_29:
      v18 = *(*(v13 + 24) + 8264);

      v18(a1, a2, a3, a4);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v13 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v13 + 32) + 8264))(a1, a2, a3, a4);
  ++*(v13 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v13);
  }

  add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v13);
  }
}

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
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_29:
      v21 = *(*(v13 + 24) + 8264);

      v21(a1, a2, a3, a4);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v13 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v16 = mach_absolute_time();
  (*(*(v13 + 32) + 8264))(a1, a2, a3, a4);
  v17 = mach_absolute_time();
  v18 = vdupq_n_s64(1uLL);
  v18.i64[0] = v17 - v16;
  *(v13 + 3696) = vaddq_s64(v18, *(v13 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v13);
  }

  add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v13);
  }
}

void sub_AAD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GPUTools::FB::EncodeThreadQueueInfo(void *a1, void *a2, uint64_t a3)
{
  result = GPUTools::FB::EncodeCurrentGCDQueueInfo();
  if (result)
  {
    v7 = result;
    *v18 = result;
    result = std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::find<void const*>(a1, v18);
    if (!result)
    {
      result = dispatch_queue_get_label(v7);
      if (result)
      {
        result = std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__emplace_unique_key_args<void const*,void const*&,char const*&>(a1, v18);
      }
    }
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(*a3 + 8);
    v10 = vcnt_s8(v8);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = *(*a3 + 8);
      if (v9 >= *&v8)
      {
        v11 = v9 % *&v8;
      }
    }

    else
    {
      v11 = (*&v8 - 1) & v9;
    }

    v12 = *(*a2 + 8 * v11);
    if (v12)
    {
      v13 = *v12;
      if (v13)
      {
        if (v10.u32[0] < 2uLL)
        {
          v14 = *&v8 - 1;
          while (1)
          {
            v15 = v13[1];
            if (v15 == v9)
            {
              if (v13[2] == v9)
              {
                return result;
              }
            }

            else if ((v15 & v14) != v11)
            {
              goto LABEL_23;
            }

            v13 = *v13;
            if (!v13)
            {
              goto LABEL_23;
            }
          }
        }

        do
        {
          v16 = v13[1];
          if (v16 == v9)
          {
            if (v13[2] == v9)
            {
              return result;
            }
          }

          else
          {
            if (v16 >= *&v8)
            {
              v16 %= *&v8;
            }

            if (v16 != v11)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

LABEL_23:
  v18[0] = 0;
  v17 = pthread_self();
  result = pthread_getname_np(v17, v18, 0x100uLL);
  if (v18[0])
  {
    return std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,char (&)[256]>(a2, (*a3 + 8));
  }

  return result;
}

uint64_t GPUTools::FB::Stream::Write(uint64_t a1, unsigned int **a2)
{
  while (atomic_exchange((a1 + 56), 1u) == 1)
  {
      ;
    }
  }

  v3 = **a2;
  result = GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, (a1 + 56));
  return result;
}

void *std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::find<void const*>(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v12 == v6)
        {
          if (result[2] == v3)
          {
            return result;
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v13 = result[1];
      if (v13 == v6)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v13 >= *&v2)
        {
          v13 %= *&v2;
        }

        if (v13 != v8)
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

void *std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__emplace_unique_key_args<void const*,void const*&,char const*&>(void *a1, uint64_t *a2)
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
  if (!v9 || (result = *v9) == 0)
  {
LABEL_23:
    std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__construct_node_hash<void const*&,char const*&>();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = result[1];
      if (v12 == v5)
      {
        if (result[2] == v2)
        {
          return result;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_AB458(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<void const*,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<std::__hash_node<std::__hash_value_type<void const*,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::string>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 47) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 24));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,char (&)[256]>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    v10 = *a2;
    std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__construct_node_hash<unsigned long long &,char (&)[256]>();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (result[2] == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_AB8EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<void const*,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void wrapper_encode_texture_format_info(ContextInfo *a1, unsigned int a2, int a3, const void *a4)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v13 = *(a1 + 4);
  v5 = *(a1 + 864);
  GPUTools::GL::GetImageInfo();
  GPUTools::FB::Encode(v14, 4294955024, 0x2000, "Cietee", v6, v7, v8, v9, *a1);
  v10 = [DYGetGLGuestAppClient() defaultFbufStream];
  v11 = v10;
  while (atomic_exchange(v10 + 14, 1u) == 1)
  {
      ;
    }
  }

  v12 = *v14[0];
  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v11 + 14);
  if (v14[0])
  {
    free(v14[0]);
  }
}

{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v13 = *(a1 + 4);
  v5 = *(a1 + 864);
  GPUTools::GL::GetImageInfo();
  GPUTools::FB::Encode(v14, 4294955024, 0x2000, "Cietee", v6, v7, v8, v9, *a1);
  v10 = [DYGetGLGuestAppClient() defaultFbufStream];
  v11 = v10;
  while (atomic_exchange(v10 + 14, 1u) == 1)
  {
      ;
    }
  }

  v12 = *v14[0];
  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v11 + 14);
  if (v14[0])
  {
    free(v14[0]);
  }
}

void sub_ABB20(_Unwind_Exception *exception_object)
{
  atomic_store(0, (v1 + 56));
  v4 = *(v2 - 40);
  if (v4)
  {
    free(v4);
  }

  _Unwind_Resume(exception_object);
}

void __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    __Block_byref_object_copy__cold_1((a1 + 48), a2 + 48, a2, a1);
  }
}

uint64_t ___ZL16link_program_ARBP15__GLIContextRecPv_block_invoke(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a2 + 7);
  v16 = *a2;
  v14 = *(a1 + 48);
  GPUTools::FB::Encode(*(*(a1 + 32) + 8) + 48, 11, 4, "CuluicS", a5, a6, a7, a8, **(a1 + 40));
  v9 = [DYGetGLGuestAppClient() defaultFbufStream];
  v10 = v9;
  v11 = *(*(a1 + 32) + 8);
  while (atomic_exchange(v9 + 14, 1u) == 1)
  {
      ;
    }
  }

  v12 = **(v11 + 48);
  result = GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v10 + 14);
  return result;
}

uint64_t ___ZL16link_program_ARBP15__GLIContextRecPv_block_invoke_2(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a2 + 6);
  v18 = *a2;
  v15 = *(a2 + 7);
  v16 = *(a2 + 5);
  v14 = *(a1 + 48);
  GPUTools::FB::Encode(*(*(a1 + 32) + 8) + 48, 4294955024, "CiuiiieS", a4, a5, a6, a7, a8, **(a1 + 40));
  v9 = [DYGetGLGuestAppClient() defaultFbufStream];
  v10 = v9;
  v11 = *(*(a1 + 32) + 8);
  while (atomic_exchange(v9 + 14, 1u) == 1)
  {
      ;
    }
  }

  v12 = **(v11 + 48);
  result = GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v10 + 14);
  return result;
}

uint64_t ___ZL16link_program_ARBP15__GLIContextRecPv_block_invoke_3(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a2 + 5);
  v18 = *a2;
  v15 = *(a2 + 3);
  v16 = *(a2 + 4);
  v14 = *(a1 + 48);
  GPUTools::FB::Encode(*(*(a1 + 32) + 8) + 48, 4294955024, "CiuiuiieS", a4, a5, a6, a7, a8, **(a1 + 40));
  v9 = [DYGetGLGuestAppClient() defaultFbufStream];
  v10 = v9;
  v11 = *(*(a1 + 32) + 8);
  while (atomic_exchange(v9 + 14, 1u) == 1)
  {
      ;
    }
  }

  v12 = **(v11 + 48);
  result = GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v10 + 14);
  return result;
}

uint64_t ___ZL16link_program_ARBP15__GLIContextRecPv_block_invoke_4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(a2 + 10);
  v19 = *(a2 + 11);
  v16 = *(a2 + 4);
  v17 = *a2;
  v14 = *(a1 + 48);
  v15 = *(a2 + 5);
  GPUTools::FB::Encode(*(*(a1 + 32) + 8) + 48, 4294955024, "CiuiuiiSuiui", a4, a5, a6, a7, a8, **(a1 + 40));
  v9 = [DYGetGLGuestAppClient() defaultFbufStream];
  v10 = v9;
  v11 = *(*(a1 + 32) + 8);
  while (atomic_exchange(v9 + 14, 1u) == 1)
  {
      ;
    }
  }

  v12 = **(v11 + 48);
  result = GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v10 + 14);
  return result;
}

uint64_t ___ZL16link_program_ARBP15__GLIContextRecPv_block_invoke_5(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *(a2 + 15);
  v22 = *(a2 + 13);
  v23 = *(a2 + 56);
  v20 = *(a2 + 10);
  v21 = *(a2 + 12);
  v18 = *a2;
  v19 = *(a2 + 9);
  v16 = *(a2 + 5);
  v17 = *(a2 + 6);
  v14 = *(a1 + 48);
  v15 = *(a2 + 7);
  GPUTools::FB::Encode(*(*(a1 + 32) + 8) + 48, 4294955024, "CiuiiieSuiiiiubiui", *(a2 + 11), a5, a6, a7, a8, **(a1 + 40));
  v9 = [DYGetGLGuestAppClient() defaultFbufStream];
  v10 = v9;
  v11 = *(*(a1 + 32) + 8);
  while (atomic_exchange(v9 + 14, 1u) == 1)
  {
      ;
    }
  }

  v12 = **(v11 + 48);
  result = GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v10 + 14);
  return result;
}

uint64_t wrapper_map_uniform_loc(ContextInfo *a1, volatile int *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 5);
  GPUTools::DYLockUtils::Lock((v6 + 144), a2);
  v8 = *(a1 + 5);
  v9 = *(v8 + 112);
  if (!v9)
  {
    goto LABEL_45;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v4;
    if (v9 <= v4)
    {
      v11 = v4 % v9;
    }
  }

  else
  {
    v11 = (v9 - 1) & v4;
  }

  v12 = *(*(v8 + 104) + 8 * v11);
  if (!v12)
  {
    goto LABEL_45;
  }

  v13 = *v12;
  if (!v13)
  {
    goto LABEL_45;
  }

  if (v10.u32[0] >= 2uLL)
  {
    while (1)
    {
      v16 = v13[1];
      if (v16 == v4)
      {
        if (*(v13 + 4) == v4)
        {
LABEL_22:
          v17 = v13[3];
          if (*(v17 + 376) == 1)
          {
            v18 = *(v17 + 336);
            if (v18)
            {
              v19 = vcnt_s8(v18);
              v19.i16[0] = vaddlv_u8(v19);
              if (v19.u32[0] > 1uLL)
              {
                v20 = a3;
                if (v18 <= a3)
                {
                  v20 = a3 % v18;
                }
              }

              else
              {
                v20 = (v18 - 1) & a3;
              }

              v21 = *(*(v17 + 328) + 8 * v20);
              if (v21)
              {
                v22 = *v21;
                if (v22)
                {
                  if (v19.u32[0] < 2uLL)
                  {
                    v23 = v18 - 1;
                    while (1)
                    {
                      v24 = v22[1];
                      if (v24 == a3)
                      {
                        if (*(v22 + 4) == a3)
                        {
                          goto LABEL_44;
                        }
                      }

                      else if ((v24 & v23) != v20)
                      {
                        goto LABEL_45;
                      }

                      v22 = *v22;
                      if (!v22)
                      {
                        goto LABEL_45;
                      }
                    }
                  }

                  while (1)
                  {
                    v25 = v22[1];
                    if (v25 == a3)
                    {
                      if (*(v22 + 4) == a3)
                      {
LABEL_44:
                        a3 = *(v22 + 5);
                        goto LABEL_45;
                      }
                    }

                    else
                    {
                      if (v25 >= v18)
                      {
                        v25 %= v18;
                      }

                      if (v25 != v20)
                      {
                        goto LABEL_45;
                      }
                    }

                    v22 = *v22;
                    if (!v22)
                    {
                      goto LABEL_45;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_45;
        }
      }

      else
      {
        if (v16 >= v9)
        {
          v16 %= v9;
        }

        if (v16 != v11)
        {
          goto LABEL_45;
        }
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_45;
      }
    }
  }

  v14 = v9 - 1;
  do
  {
    v15 = v13[1];
    if (v15 == v4)
    {
      if (*(v13 + 4) == v4)
      {
        goto LABEL_22;
      }
    }

    else if ((v15 & v14) != v11)
    {
      break;
    }

    v13 = *v13;
  }

  while (v13);
LABEL_45:
  GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  return a3;
}

void wrapper_copyout_mapped_buffer_data(ContextInfo *a1, uint64_t a2)
{
  v12 = 0;
  (*(*(a1 + 4) + 5216))(*(a1 + 2), a2, 35005, &v12);
  if (v12)
  {
    DYGetGLGuestAppClient();
    GPUTools::Interpose::DYSavePointer();
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    GPUTools::FB::Encode(v10, 4294955017, 4, "CeUll", v3, v4, v5, v6, *a1);
    v7 = [DYGetGLGuestAppClient() defaultFbufStream];
    v8 = v7;
    while (atomic_exchange(v7 + 14, 1u) == 1)
    {
        ;
      }
    }

    v9 = *v10[0];
    GPUTools::FB::Stream::Write_nolock();
    atomic_store(0, v8 + 14);
    if (v10[0])
    {
      free(v10[0]);
    }
  }
}

void sub_AC320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  atomic_store(0, (v15 + 56));
  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

void wrapper_copyout_harvest_list_buffer(char **a1, uint64_t a2)
{
  bound_buffer = wrapper_cache_get_bound_buffer(a1, a2);
  v6 = a1[9];
  v5 = a1[10];
  if (v5 == v6)
  {
    v12 = a1[10];
  }

  else
  {
    v7 = (v5 - v6) >> 2;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[4 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 4;
      v7 += ~(v7 >> 1);
      if (v11 < bound_buffer)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
    if (v5 != v6 && *v6 == bound_buffer)
    {
      v13 = v5 - (v6 + 4);
      if (v5 != v6 + 4)
      {
        memmove(v6, v6 + 4, v5 - (v6 + 4));
      }

      a1[10] = &v6[v13];
      v14 = a1[4];
      v27 = a1;
      v28 = v14;
      v15 = *(a1 + 864);
      BufferSize = GPUTools::GL::GetBufferSize();
      v30 = 0;
      (*(a1[4] + 651))(a1[2], a2, 34661, &v30);
      v17 = a1[4];
      v18 = a1[2];
      if (*(a1 + 4844) == 1)
      {
        v19 = (*(v17 + 649))(v18, a2, 35000);
      }

      else
      {
        v19 = (*(v17 + 795))(v18, a2, 0, BufferSize, 1);
      }

      if (!v19)
      {
        wrapper_copyout_harvest_list_buffer();
      }

      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      v27 = 0;
      v28 = 0;
      v29 = 0;
      GPUTools::FB::Encode(&v27, 29, 4, "CelUe", v20, v21, v22, v23, *a1);
      v24 = [DYGetGLGuestAppClient() defaultFbufStream];
      v25 = v24;
      while (atomic_exchange(v24 + 14, 1u) == 1)
      {
          ;
        }
      }

      v26 = *v27;
      GPUTools::FB::Stream::Write_nolock();
      atomic_store(0, v25 + 14);
      (*(a1[4] + 650))(a1[2], a2);
      if (v27)
      {
        free(v27);
      }
    }
  }
}

void sub_AC580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  atomic_store(0, (v15 + 56));
  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZL22create_shader_programvP15__GLIContextRecjiPPKc_block_invoke(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a2 + 6);
  v18 = *a2;
  v15 = *(a2 + 7);
  v16 = *(a2 + 5);
  v14 = *(a1 + 48);
  GPUTools::FB::Encode(*(*(a1 + 32) + 8) + 48, 4294955024, "CiuiiieS", a4, a5, a6, a7, a8, **(a1 + 40));
  v9 = [DYGetGLGuestAppClient() defaultFbufStream];
  v10 = v9;
  v11 = *(*(a1 + 32) + 8);
  while (atomic_exchange(v9 + 14, 1u) == 1)
  {
      ;
    }
  }

  v12 = **(v11 + 48);
  result = GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v10 + 14);
  return result;
}

uint64_t ___ZL22create_shader_programvP15__GLIContextRecjiPPKc_block_invoke_2(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a2 + 5);
  v18 = *a2;
  v15 = *(a2 + 3);
  v16 = *(a2 + 4);
  v14 = *(a1 + 48);
  GPUTools::FB::Encode(*(*(a1 + 32) + 8) + 48, 4294955024, "CiuiuiieS", a4, a5, a6, a7, a8, **(a1 + 40));
  v9 = [DYGetGLGuestAppClient() defaultFbufStream];
  v10 = v9;
  v11 = *(*(a1 + 32) + 8);
  while (atomic_exchange(v9 + 14, 1u) == 1)
  {
      ;
    }
  }

  v12 = **(v11 + 48);
  result = GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v10 + 14);
  return result;
}

uint64_t ___ZL22create_shader_programvP15__GLIContextRecjiPPKc_block_invoke_3(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(a2 + 10);
  v19 = *(a2 + 11);
  v16 = *(a2 + 4);
  v17 = *a2;
  v14 = *(a1 + 48);
  v15 = *(a2 + 5);
  GPUTools::FB::Encode(*(*(a1 + 32) + 8) + 48, 4294955024, "CiuiuiiSuiui", a4, a5, a6, a7, a8, **(a1 + 40));
  v9 = [DYGetGLGuestAppClient() defaultFbufStream];
  v10 = v9;
  v11 = *(*(a1 + 32) + 8);
  while (atomic_exchange(v9 + 14, 1u) == 1)
  {
      ;
    }
  }

  v12 = **(v11 + 48);
  result = GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v10 + 14);
  return result;
}

uint64_t ___ZL22create_shader_programvP15__GLIContextRecjiPPKc_block_invoke_4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *(a2 + 15);
  v22 = *(a2 + 13);
  v23 = *(a2 + 56);
  v20 = *(a2 + 10);
  v21 = *(a2 + 12);
  v18 = *a2;
  v19 = *(a2 + 9);
  v16 = *(a2 + 5);
  v17 = *(a2 + 6);
  v14 = *(a1 + 48);
  v15 = *(a2 + 7);
  GPUTools::FB::Encode(*(*(a1 + 32) + 8) + 48, 4294955024, "CiuiiieSuiiiiubiui", *(a2 + 11), a5, a6, a7, a8, **(a1 + 40));
  v9 = [DYGetGLGuestAppClient() defaultFbufStream];
  v10 = v9;
  v11 = *(*(a1 + 32) + 8);
  while (atomic_exchange(v9 + 14, 1u) == 1)
  {
      ;
    }
  }

  v12 = **(v11 + 48);
  result = GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v10 + 14);
  return result;
}

uint64_t ___ZL22create_shader_programvP15__GLIContextRecjiPPKc_block_invoke_5(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a2 + 7);
  v16 = *a2;
  v14 = *(a1 + 48);
  GPUTools::FB::Encode(*(*(a1 + 32) + 8) + 48, 11, 516, "CuluicS", a5, a6, a7, a8, **(a1 + 40));
  v9 = [DYGetGLGuestAppClient() defaultFbufStream];
  v10 = v9;
  v11 = *(*(a1 + 32) + 8);
  while (atomic_exchange(v9 + 14, 1u) == 1)
  {
      ;
    }
  }

  v12 = **(v11 + 48);
  result = GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v10 + 14);
  return result;
}

void OUTLINED_FUNCTION_0_0(NSObject *a1)
{

  dispatch_sync_f(a1, 0, do_nothing);
}

uint64_t OUTLINED_FUNCTION_1(atomic_uint *a1)
{
  atomic_fetch_add(a1, 0xFFFFFFFF);

  return DYGetGLGuestAppClient();
}

uint64_t OUTLINED_FUNCTION_3(atomic_uint *a1)
{
  atomic_fetch_add(a1, 0xFFFFFFFF);

  return DYGetGLGuestAppClient();
}

uint64_t OUTLINED_FUNCTION_6@<X0>(int a1@<W8>)
{
  v2 = *v1;
  if (a1 > 0)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void sub_AD044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_AD4B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_ADA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_AE0A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_AE698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_AEBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_AF1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_AF7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_AFDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B0278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_B08AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_B0EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_B1434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B189C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B1DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B2334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B2884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B2DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B3484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void draw_elements(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
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
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v40 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v40 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v41 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v41, 0, do_nothing);
      v42 = *(*(v15 + 24) + 536);

      v42(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 257;
  __ptr = 0;
  v60 = 0;
  v61 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = __ptr;
    v18 = v60;
    v20 = v60 - __ptr;
    v21 = v61;
    v22 = v61 - (v60 - __ptr);
    if (v22 <= 0x47)
    {
      v43 = (327 - v22) & 0x100;
      v61 += v43;
      v19 = malloc_type_malloc(v43 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19 || (v19 & 3) != 0)
      {
        goto LABEL_71;
      }

      v18 = v19 + v20;
    }

    *(v18 + 8) = 0;
    *(v18 + 2) = 0u;
    *(v18 + 3) = 0u;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    v23 = v18 + 72;
    v60 = v18 + 72;
    v24 = v18 + 72 - v19;
    *v19 = v24;
    v25 = (v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v25 - v24;
    if (v25 == v24)
    {
      goto LABEL_23;
    }

    v26 = __ptr;
    v27 = v23 - __ptr;
    v28 = v61;
    v29 = v61 - (v23 - __ptr);
    if (v20 <= v29)
    {
      v30 = v60;
LABEL_22:
      bzero(v23, v20);
      v60 = &v30[v20];
      *v26 += v20;
LABEL_23:
      v19[1] = 143;
      v19[8] = 0;
      v58 = 0;
      pthread_threadid_np(0, &v58);
      *(v19 + 1) = v58;
      strcpy(v19 + 36, "Ceiep");
      *(v19 + 11) = *v15;
      v19[13] = a2;
      v19[14] = a3;
      v19[15] = a4;
      *(v19 + 8) = a5;
      LOBYTE(v20) = byte_21AEE7;
      if (byte_21AEE7)
      {
        breakpoint_break(&__ptr, (&stru_68.addr + 7), 1, *(v15 + 3404), v15);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4)
      {
        goto LABEL_29;
      }

      if (![DYGetGLGuestAppClient() overrideFlags])
      {
        v31 = mach_absolute_time();
        (*(*(v15 + 32) + 536))(a1, a2, a3, a4, a5);
        v32 = mach_absolute_time() - v31;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v33 = __ptr;
          *(__ptr + 2) = v31;
          v33[3] = v32;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v51 = *(&g_DYTimebaseInfo + 1);
          v52 = __udivti3();
          v53 = __ptr;
          *(__ptr + 3) = v52;
          v53[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_29;
          }
        }

        check_errors(v15);
LABEL_29:
        if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
        {
          GPUTools::FB::EncodeCurrentBacktrace();
        }

        if (*(v15 + 3404))
        {
          GPUTools::FB::EncodeGLError();
        }

        if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
        {
          encode_driver_events(v15);
        }

        GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), &__ptr);
        v34 = *(v15 + 3404);
        if (v34 && (gBreakOnError & 1) != 0)
        {
          v44 = 3;
          v45 = 0xFFFFFFFFLL;
        }

        else
        {
          if ((v20 & 2) == 0)
          {
LABEL_38:
            v35 = [DYGetGLGuestAppClient() defaultFbufStream];
            v36 = v35;
            while (atomic_exchange(v35 + 14, 1u) == 1)
            {
                ;
              }
            }

            v37 = *__ptr;
            GPUTools::FB::Stream::Write_nolock();
            atomic_store(0, v36 + 14);
            v38 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
            if (gCheckGLErrors == 1 && v38 >= 1)
            {
              handle_opengl_thread_conflict(v15);
            }

            goto LABEL_46;
          }

          v44 = 2;
          v45 = 143;
        }

        breakpoint_break(&__ptr, v45, v44, v34, v15);
        goto LABEL_38;
      }

      if (([DYGetGLGuestAppClient() overrideFlags] & 8) != 0)
      {
        goto LABEL_29;
      }

      v46 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v15, v46);
      v47 = mach_absolute_time();
      (*(*(v15 + 32) + 536))(a1, a2, a3, a4, a5);
      v48 = mach_absolute_time() - v47;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v49 = __ptr;
        *(__ptr + 2) = v47;
        v49[3] = v48;
        if (gCheckGLErrors != 1)
        {
LABEL_60:
          v50 = [DYGetGLGuestAppClient() overrideFlags];
          unapply_draw_overrides(v15, v50);
          goto LABEL_29;
        }

LABEL_73:
        check_errors(v15);
        goto LABEL_60;
      }

LABEL_72:
      v56 = __udivti3();
      v57 = __ptr;
      *(__ptr + 3) = v56;
      v57[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_60;
      }

      goto LABEL_73;
    }

    v54 = (v20 - v29 + 255) & 0xFFFFFF00;
    v55 = v54 + v61;
    v61 += v54;
    if (__ptr)
    {
      v26 = reallocf(__ptr, v55);
      __ptr = v26;
      if (!v26)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v26 = malloc_type_malloc(v54 + v28, 0xF962E99uLL);
      __ptr = v26;
      if (!v26)
      {
        goto LABEL_71;
      }
    }

    if ((v26 & 3) == 0)
    {
      v30 = v26 + v27;
      v23 = v30;
      goto LABEL_22;
    }

LABEL_71:
    dy_abort();
    __break(1u);
    goto LABEL_72;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 536))(a1, a2, a3, a4, a5);
LABEL_46:
  if (__ptr)
  {
    free(__ptr);
  }
}

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
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_27:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v19, 0, do_nothing);
LABEL_36:
      v22 = *(*(v15 + 24) + 536);

      v22(a1, a2, a3, a4, a5);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_27;
    }
  }

  *(v15 + 4838) = 257;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_36;
  }

  if ([DYGetGLGuestAppClient() overrideFlags])
  {
    if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
    {
      v20 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v15, v20);
      (*(*(v15 + 32) + 536))(a1, a2, a3, a4, a5);
      ++*(v15 + 3704);
      if (gCheckGLErrors == 1)
      {
        alpha_func(v15);
      }

      v21 = [DYGetGLGuestAppClient() overrideFlags];
      unapply_draw_overrides(v15, v21);
    }
  }

  else
  {
    (*(*(v15 + 32) + 536))(a1, a2, a3, a4, a5);
    ++*(v15 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v15);
    }
  }

  if (!*(v15 + 3404))
  {
    GLDrawCommandStatistics::update((v15 + 32 * a2 + 3736), a2, a3, 1u);
  }

  add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v15);
  }
}

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
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_27:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v22 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v22, 0, do_nothing);
LABEL_36:
      v28 = *(*(v15 + 24) + 536);

      v28(a1, a2, a3, a4, a5);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_27;
    }
  }

  *(v15 + 4838) = 257;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_36;
  }

  if ([DYGetGLGuestAppClient() overrideFlags])
  {
    if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
    {
      v23 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v15, v23);
      v24 = mach_absolute_time();
      (*(*(v15 + 32) + 536))(a1, a2, a3, a4, a5);
      v25 = mach_absolute_time();
      v26 = vdupq_n_s64(1uLL);
      v26.i64[0] = v25 - v24;
      *(v15 + 3696) = vaddq_s64(v26, *(v15 + 3696));
      if (gCheckGLErrors == 1)
      {
        alpha_func(v15);
      }

      v27 = [DYGetGLGuestAppClient() overrideFlags];
      unapply_draw_overrides(v15, v27);
    }
  }

  else
  {
    v18 = mach_absolute_time();
    (*(*(v15 + 32) + 536))(a1, a2, a3, a4, a5);
    v19 = mach_absolute_time();
    v20 = vdupq_n_s64(1uLL);
    v20.i64[0] = v19 - v18;
    *(v15 + 3696) = vaddq_s64(v20, *(v15 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v15);
    }
  }

  if (!*(v15 + 3404))
  {
    GLDrawCommandStatistics::update((v15 + 32 * a2 + 3736), a2, a3, 1u);
  }

  add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v15);
  }
}

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
    v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v18, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 257;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      draw_elements(v15);
      return;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v19 = *(*(v15 + 24) + 536);

  v19(a1, a2, a3, a4, a5);
}

void sub_B3B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B40E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B4630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B4B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B5098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B54FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B5978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B5EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B6368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_B6828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_B6DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B72DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  atomic_store(0, (v15 + 56));
  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_B77E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  atomic_store(0, (v15 + 56));
  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_B7CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_B8178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_B860C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_B8A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_B8F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_B9438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_B9A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_BA068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_BA55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_BAA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_BB00C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_BB5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_BBBAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_BC008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_BC47C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_BCA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_BCEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_BD3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_BD92C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_BDEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_BE3F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_BE9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_BEE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_BF36C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_BF8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_BFEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C0310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_C08C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C0E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C13DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C1910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C1E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C2394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C290C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_C2F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C34D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C3AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C4028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C45F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C4B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C5104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C5598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_C5A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_C5EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_C6334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_C67BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void tex_image2D(__GLIContextRec *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, const void *a10)
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
  if (gCheckGLErrors != 1 || v20 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_51;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v19);
    v47 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v47 >= 1)
    {
LABEL_51:
      atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      v48 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v48, 0, do_nothing);
      v49 = *(*(v19 + 24) + 2408);

      v49(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      return;
    }
  }

  *(v19 + 4838) = 1;
  __ptr = 0;
  v63 = 0;
  v64 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v23 = __ptr;
    v22 = v63;
    v24 = v63 - __ptr;
    v25 = v64;
    v26 = v64 - (v63 - __ptr);
    if (v26 <= 0x5F)
    {
      v50 = (351 - v26) & 0x100;
      v64 += v50;
      v23 = malloc_type_malloc(v50 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (!v23 || (v23 & 3) != 0)
      {
        goto LABEL_67;
      }

      v22 = &v23[v24];
    }

    *(v22 + 4) = 0u;
    *(v22 + 5) = 0u;
    *(v22 + 2) = 0u;
    *(v22 + 3) = 0u;
    *v22 = 0u;
    *(v22 + 1) = 0u;
    v27 = v22 + 96;
    v63 = v22 + 96;
    v28 = v22 + 96 - v23;
    *v23 = v28;
    v29 = (v28 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v30 = v29 - v28;
    if (v29 == v28)
    {
      goto LABEL_23;
    }

    v31 = __ptr;
    v32 = v27 - __ptr;
    v33 = v64;
    v34 = v64 - (v27 - __ptr);
    if (v30 <= v34)
    {
      v35 = v63;
LABEL_22:
      bzero(v27, v30);
      v63 = &v35[v30];
      *v31 += v30;
LABEL_23:
      *(v23 + 1) = 594;
      *(v23 + 8) = 4096;
      v61 = 0;
      pthread_threadid_np(0, &v61);
      *(v23 + 1) = v61;
      strcpy(v23 + 36, "Ceieiiieep");
      *(v23 + 6) = *v19;
      *(v23 + 14) = a2;
      *(v23 + 15) = a3;
      v36 = a3;
      *(v23 + 16) = a4;
      *(v23 + 17) = a5;
      *(v23 + 18) = a6;
      *(v23 + 19) = a7;
      *(v23 + 20) = a8;
      *(v23 + 21) = a9;
      *(v23 + 11) = a10;
      v37 = byte_21B0AA;
      if (byte_21B0AA)
      {
        breakpoint_break(&__ptr, &stru_248.sectname[10], 1, *(v19 + 3404), v19);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v37 & 4))
      {
        v38 = mach_absolute_time();
        (*(*(v19 + 32) + 2408))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
        v39 = mach_absolute_time() - v38;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v40 = __ptr;
          *(__ptr + 3) = v39;
        }

        else
        {
          v53 = *(&g_DYTimebaseInfo + 1);
          v54 = __udivti3();
          v40 = __ptr;
          *(__ptr + 3) = v54;
          v38 = __udivti3();
        }

        v40[2] = v38;
        v36 = a3;
        if (gCheckGLErrors == 1)
        {
          check_errors(v19);
        }
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v19 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v19);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v19 + 3480), (v19 + 3520), &__ptr);
      v41 = *(v19 + 3404);
      if (v41 && (gBreakOnError & 1) != 0)
      {
        v51 = 3;
        v52 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v37 & 2) == 0)
        {
LABEL_39:
          v42 = [DYGetGLGuestAppClient() defaultFbufStream];
          v43 = v42;
          while (atomic_exchange(v42 + 14, 1u) == 1)
          {
              ;
            }
          }

          v44 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v43 + 14);
          wrapper_encode_texture_format_info(v19, a2, v36, a10);
          v45 = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v45 >= 1)
          {
            handle_opengl_thread_conflict(v19);
          }

          goto LABEL_47;
        }

        v51 = 2;
        v52 = 594;
      }

      breakpoint_break(&__ptr, v52, v51, v41, v19);
      goto LABEL_39;
    }

    v55 = (v30 - v34 + 255) & 0xFFFFFF00;
    v56 = v55 + v64;
    v64 += v55;
    if (__ptr)
    {
      v31 = reallocf(__ptr, v56);
      __ptr = v31;
      if (!v31)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v31 = malloc_type_malloc(v55 + v33, 0xF962E99uLL);
      __ptr = v31;
      if (!v31)
      {
        goto LABEL_67;
      }
    }

    if ((v31 & 3) == 0)
    {
      v35 = v31 + v32;
      v27 = v35;
      goto LABEL_22;
    }

LABEL_67:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v19 + 24) + 2408))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
LABEL_47:
  if (__ptr)
  {
    free(__ptr);
  }
}

void sub_C6E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_C72D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_C7760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_C7BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_C8068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void tex_sub_image2D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, const void *a10)
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
  if (gCheckGLErrors != 1 || v20 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_54;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v19);
    v54 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v54 >= 1)
    {
LABEL_54:
      atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      v55 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v55, 0, do_nothing);
      v56 = *(*(v19 + 24) + 2456);

      v56(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      return;
    }
  }

  *(v19 + 4838) = 1;
  __ptr = 0;
  v71 = 0;
  v72 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v23 = __ptr;
    v22 = v71;
    v24 = v71 - __ptr;
    v25 = v72;
    v26 = v72 - (v71 - __ptr);
    if (v26 <= 0x5F)
    {
      v57 = (351 - v26) & 0x100;
      v72 += v57;
      v23 = malloc_type_malloc(v57 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (!v23 || (v23 & 3) != 0)
      {
        goto LABEL_71;
      }

      v22 = &v23[v24];
    }

    *(v22 + 4) = 0u;
    *(v22 + 5) = 0u;
    *(v22 + 2) = 0u;
    *(v22 + 3) = 0u;
    *v22 = 0u;
    *(v22 + 1) = 0u;
    v27 = v22 + 96;
    v71 = v22 + 96;
    v28 = v22 + 96 - v23;
    *v23 = v28;
    v29 = (v28 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v30 = v29 - v28;
    if (v29 == v28)
    {
      goto LABEL_23;
    }

    v31 = __ptr;
    v32 = v27 - __ptr;
    v33 = v72;
    v34 = v72 - (v27 - __ptr);
    if (v30 <= v34)
    {
      v35 = v71;
LABEL_22:
      bzero(v27, v30);
      v71 = &v35[v30];
      *v31 += v30;
LABEL_23:
      *(v23 + 1) = 603;
      *(v23 + 8) = 4096;
      v69 = 0;
      pthread_threadid_np(0, &v69);
      *(v23 + 1) = v69;
      strcpy(v23 + 36, "Ceiiiiieep");
      *(v23 + 6) = *v19;
      *(v23 + 14) = a2;
      *(v23 + 15) = a3;
      *(v23 + 16) = a4;
      *(v23 + 17) = a5;
      *(v23 + 18) = a6;
      *(v23 + 19) = a7;
      *(v23 + 20) = a8;
      *(v23 + 21) = a9;
      *(v23 + 11) = a10;
      v36 = byte_21B0B3;
      if (byte_21B0B3)
      {
        breakpoint_break(&__ptr, &stru_248.segname[3], 1, *(v19 + 3404), v19);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v36 & 4))
      {
        v37 = mach_absolute_time();
        (*(*(v19 + 32) + 2456))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
        v38 = mach_absolute_time() - v37;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v39 = __ptr;
          *(__ptr + 2) = v37;
          v39[3] = v38;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v60 = *(&g_DYTimebaseInfo + 1);
          v61 = __udivti3();
          v62 = __ptr;
          *(__ptr + 3) = v61;
          v62[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v19);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v19 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v19);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v19 + 3480), (v19 + 3520), &__ptr);
      v40 = *(v19 + 3404);
      if (v40 && (gBreakOnError & 1) != 0)
      {
        v58 = 3;
        v59 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v36 & 2) == 0)
        {
LABEL_37:
          v41 = [DYGetGLGuestAppClient() defaultFbufStream];
          v42 = v41;
          while (atomic_exchange(v41 + 14, 1u) == 1)
          {
              ;
            }
          }

          v43 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v42 + 14);
          v44 = *v19;
          v73[0] = 0;
          v73[1] = 0;
          v74 = 0;
          GPUTools::FB::Encode(v73, 4294955024, 0x2000, "Cietee", v45, v46, v47, v48, v44);
          v49 = [DYGetGLGuestAppClient() defaultFbufStream];
          v50 = v49;
          while (atomic_exchange(v49 + 14, 1u) == 1)
          {
              ;
            }
          }

          v51 = *v73[0];
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v50 + 14);
          if (v73[0])
          {
            free(v73[0]);
          }

          v52 = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v52 >= 1)
          {
            handle_opengl_thread_conflict(v19);
          }

          goto LABEL_50;
        }

        v58 = 2;
        v59 = 603;
      }

      breakpoint_break(&__ptr, v59, v58, v40, v19);
      goto LABEL_37;
    }

    v63 = (v30 - v34 + 255) & 0xFFFFFF00;
    v64 = v63 + v72;
    v72 += v63;
    if (__ptr)
    {
      v31 = reallocf(__ptr, v64);
      __ptr = v31;
      if (!v31)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v31 = malloc_type_malloc(v63 + v33, 0xF962E99uLL);
      __ptr = v31;
      if (!v31)
      {
        goto LABEL_71;
      }
    }

    if ((v31 & 3) == 0)
    {
      v35 = v31 + v32;
      v27 = v35;
      goto LABEL_22;
    }

LABEL_71:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v19 + 24) + 2456))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
LABEL_50:
  if (__ptr)
  {
    free(__ptr);
  }
}

void sub_C8768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a19)
  {
    free(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_C8D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C91E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_C97DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_C9DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_CA3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_CA920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_CACF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_CB0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_CB6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void compressed_tex_image3D(__GLIContextRec *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, const void *a10)
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
  if (gCheckGLErrors != 1 || v20 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_51;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v19);
    v47 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v47 >= 1)
    {
LABEL_51:
      atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      v48 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v48, 0, do_nothing);
      v49 = *(*(v19 + 24) + 3032);

      v49(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      return;
    }
  }

  *(v19 + 4838) = 1;
  __ptr = 0;
  v63 = 0;
  v64 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v23 = __ptr;
    v22 = v63;
    v24 = v63 - __ptr;
    v25 = v64;
    v26 = v64 - (v63 - __ptr);
    if (v26 <= 0x5F)
    {
      v50 = (351 - v26) & 0x100;
      v64 += v50;
      v23 = malloc_type_malloc(v50 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (!v23 || (v23 & 3) != 0)
      {
        goto LABEL_67;
      }

      v22 = &v23[v24];
    }

    *(v22 + 4) = 0u;
    *(v22 + 5) = 0u;
    *(v22 + 2) = 0u;
    *(v22 + 3) = 0u;
    *v22 = 0u;
    *(v22 + 1) = 0u;
    v27 = v22 + 96;
    v63 = v22 + 96;
    v28 = v22 + 96 - v23;
    *v23 = v28;
    v29 = (v28 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v30 = v29 - v28;
    if (v29 == v28)
    {
      goto LABEL_23;
    }

    v31 = __ptr;
    v32 = v27 - __ptr;
    v33 = v64;
    v34 = v64 - (v27 - __ptr);
    if (v30 <= v34)
    {
      v35 = v63;
LABEL_22:
      bzero(v27, v30);
      v63 = &v35[v30];
      *v31 += v30;
LABEL_23:
      *(v23 + 1) = 96;
      *(v23 + 8) = 4096;
      v61 = 0;
      pthread_threadid_np(0, &v61);
      *(v23 + 1) = v61;
      strcpy(v23 + 36, "Ceieiiiiip");
      *(v23 + 6) = *v19;
      *(v23 + 14) = a2;
      *(v23 + 15) = a3;
      v36 = a3;
      *(v23 + 16) = a4;
      *(v23 + 17) = a5;
      *(v23 + 18) = a6;
      *(v23 + 19) = a7;
      *(v23 + 20) = a8;
      *(v23 + 21) = a9;
      *(v23 + 11) = a10;
      v37 = byte_21AEB8;
      if (byte_21AEB8)
      {
        breakpoint_break(&__ptr, &stru_20.nsects, 1, *(v19 + 3404), v19);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v37 & 4))
      {
        v38 = mach_absolute_time();
        (*(*(v19 + 32) + 3032))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
        v39 = mach_absolute_time() - v38;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v40 = __ptr;
          *(__ptr + 3) = v39;
        }

        else
        {
          v53 = *(&g_DYTimebaseInfo + 1);
          v54 = __udivti3();
          v40 = __ptr;
          *(__ptr + 3) = v54;
          v38 = __udivti3();
        }

        v40[2] = v38;
        v36 = a3;
        if (gCheckGLErrors == 1)
        {
          check_errors(v19);
        }
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v19 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v19);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v19 + 3480), (v19 + 3520), &__ptr);
      v41 = *(v19 + 3404);
      if (v41 && (gBreakOnError & 1) != 0)
      {
        v51 = 3;
        v52 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v37 & 2) == 0)
        {
LABEL_39:
          v42 = [DYGetGLGuestAppClient() defaultFbufStream];
          v43 = v42;
          while (atomic_exchange(v42 + 14, 1u) == 1)
          {
              ;
            }
          }

          v44 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v43 + 14);
          wrapper_encode_texture_format_info(v19, a2, v36, a10);
          v45 = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v45 >= 1)
          {
            handle_opengl_thread_conflict(v19);
          }

          goto LABEL_47;
        }

        v51 = 2;
        v52 = 96;
      }

      breakpoint_break(&__ptr, v52, v51, v41, v19);
      goto LABEL_39;
    }

    v55 = (v30 - v34 + 255) & 0xFFFFFF00;
    v56 = v55 + v64;
    v64 += v55;
    if (__ptr)
    {
      v31 = reallocf(__ptr, v56);
      __ptr = v31;
      if (!v31)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v31 = malloc_type_malloc(v55 + v33, 0xF962E99uLL);
      __ptr = v31;
      if (!v31)
      {
        goto LABEL_67;
      }
    }

    if ((v31 & 3) == 0)
    {
      v35 = v31 + v32;
      v27 = v35;
      goto LABEL_22;
    }

LABEL_67:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v19 + 24) + 3032))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
LABEL_47:
  if (__ptr)
  {
    free(__ptr);
  }
}

void sub_CBD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void compressed_tex_image2D(__GLIContextRec *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, const void *a9)
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
  if (gCheckGLErrors != 1 || v20 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_51;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v19);
    v47 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v47 >= 1)
    {
LABEL_51:
      atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      v48 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v48, 0, do_nothing);
      v49 = *(*(v19 + 24) + 3040);

      v49(a1, a2, a3, a4, a5, a6, a7, a8, a9);
      return;
    }
  }

  *(v19 + 4838) = 1;
  __ptr = 0;
  v62 = 0;
  v63 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v23 = __ptr;
    v22 = v62;
    v24 = v62 - __ptr;
    v25 = v63;
    v26 = v63 - (v62 - __ptr);
    if (v26 <= 0x5B)
    {
      v50 = (347 - v26) & 0x100;
      v63 += v50;
      v23 = malloc_type_malloc(v50 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (!v23 || (v23 & 3) != 0)
      {
        goto LABEL_67;
      }

      v22 = (v23 + v24);
    }

    *(v22 + 76) = 0u;
    v22[3] = 0u;
    v22[4] = 0u;
    v22[1] = 0u;
    v22[2] = 0u;
    *v22 = 0u;
    v27 = v22 + 92;
    v62 = v22 + 92;
    v28 = v22 + 92 - v23;
    *v23 = v28;
    v29 = (v28 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v30 = v29 - v28;
    if (v29 == v28)
    {
      goto LABEL_23;
    }

    v31 = __ptr;
    v32 = v27 - __ptr;
    v33 = v63;
    v34 = v63 - (v27 - __ptr);
    if (v30 <= v34)
    {
      v35 = v62;
LABEL_22:
      bzero(v27, v30);
      v62 = &v35[v30];
      *v31 += v30;
LABEL_23:
      v23[1] = 95;
      v23[8] = 4096;
      v60 = 0;
      pthread_threadid_np(0, &v60);
      *(v23 + 1) = v60;
      strcpy(v23 + 36, "Ceieiiiip");
      *(v23 + 6) = *v19;
      v23[14] = a2;
      v23[15] = a3;
      v36 = a3;
      v23[16] = a4;
      v23[17] = a5;
      v23[18] = a6;
      v23[19] = a7;
      v23[20] = a8;
      *(v23 + 21) = a9;
      v37 = byte_21AEB7;
      if (byte_21AEB7)
      {
        breakpoint_break(&__ptr, (&stru_20.initprot + 3), 1, *(v19 + 3404), v19);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v37 & 4))
      {
        v38 = mach_absolute_time();
        (*(*(v19 + 32) + 3040))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
        v39 = mach_absolute_time() - v38;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v40 = __ptr;
          *(__ptr + 3) = v39;
        }

        else
        {
          v53 = *(&g_DYTimebaseInfo + 1);
          v54 = __udivti3();
          v40 = __ptr;
          *(__ptr + 3) = v54;
          v38 = __udivti3();
        }

        v40[2] = v38;
        v36 = a3;
        if (gCheckGLErrors == 1)
        {
          check_errors(v19);
        }
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v19 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v19);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v19 + 3480), (v19 + 3520), &__ptr);
      v41 = *(v19 + 3404);
      if (v41 && (gBreakOnError & 1) != 0)
      {
        v51 = 3;
        v52 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v37 & 2) == 0)
        {
LABEL_39:
          v42 = [DYGetGLGuestAppClient() defaultFbufStream];
          v43 = v42;
          while (atomic_exchange(v42 + 14, 1u) == 1)
          {
              ;
            }
          }

          v44 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v43 + 14);
          wrapper_encode_texture_format_info(v19, a2, v36, a9);
          v45 = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v45 >= 1)
          {
            handle_opengl_thread_conflict(v19);
          }

          goto LABEL_47;
        }

        v51 = 2;
        v52 = 95;
      }

      breakpoint_break(&__ptr, v52, v51, v41, v19);
      goto LABEL_39;
    }

    v55 = (v30 - v34 + 255) & 0xFFFFFF00;
    v56 = v55 + v63;
    v63 += v55;
    if (__ptr)
    {
      v31 = reallocf(__ptr, v56);
      __ptr = v31;
      if (!v31)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v31 = malloc_type_malloc(v55 + v33, 0xF962E99uLL);
      __ptr = v31;
      if (!v31)
      {
        goto LABEL_67;
      }
    }

    if ((v31 & 3) == 0)
    {
      v35 = v31 + v32;
      v27 = v35;
      goto LABEL_22;
    }

LABEL_67:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v19 + 24) + 3040))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
LABEL_47:
  if (__ptr)
  {
    free(__ptr);
  }
}

void sub_CC3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void compressed_tex_sub_image3D(__GLIContextRec *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, const void *a11)
{
  v13 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v15 = *(v13 + 32);
    v16 = v15 >= a1;
    v17 = v15 < a1;
    if (v16)
    {
      v14 = v13;
    }

    v13 = *(v13 + 8 * v17);
  }

  while (v13);
  if (v14 == ContextInfo::activeCtxInfoMap + 8 || *(v14 + 32) > a1)
  {
LABEL_9:
    v14 = ContextInfo::activeCtxInfoMap + 8;
  }

  v18 = *(v14 + 40);
  v19 = atomic_fetch_add((v18 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v19 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_54;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v18);
    v53 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v53 >= 1)
    {
LABEL_54:
      atomic_fetch_add((v18 + 4640), 0xFFFFFFFF);
      v54 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v54, 0, do_nothing);
      v55 = *(*(v18 + 24) + 3056);

      v55(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      return;
    }
  }

  *(v18 + 4838) = 1;
  __ptr = 0;
  v72 = 0;
  v73 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v22 = __ptr;
    v21 = v72;
    v23 = v72 - __ptr;
    v24 = v73;
    v25 = v73 - (v72 - __ptr);
    if (v25 <= 0x6B)
    {
      v56 = (363 - v25) & 0x100;
      v73 += v56;
      v22 = malloc_type_malloc(v56 + v24, 0xF962E99uLL);
      __ptr = v22;
      if (!v22 || (v22 & 3) != 0)
      {
        goto LABEL_71;
      }

      v21 = (v22 + v23);
    }

    *(v21 + 92) = 0u;
    v21[4] = 0u;
    v21[5] = 0u;
    v21[2] = 0u;
    v21[3] = 0u;
    *v21 = 0u;
    v21[1] = 0u;
    v26 = v21 + 108;
    v72 = v21 + 108;
    v27 = v21 + 108 - v22;
    *v22 = v27;
    v28 = (v27 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v29 = v28 - v27;
    if (v28 == v27)
    {
      goto LABEL_23;
    }

    v30 = __ptr;
    v31 = v26 - __ptr;
    v32 = v73;
    v33 = v73 - (v26 - __ptr);
    if (v29 <= v33)
    {
      v34 = v72;
LABEL_22:
      bzero(v26, v29);
      v72 = &v34[v29];
      *v30 += v29;
LABEL_23:
      v22[1] = 99;
      v22[8] = 4096;
      v70 = 0;
      pthread_threadid_np(0, &v70);
      *(v22 + 1) = v70;
      strcpy(v22 + 36, "Ceiiiiiiieip");
      *(v22 + 13) = *v18;
      v22[15] = a2;
      v22[16] = a3;
      v22[17] = a4;
      v22[18] = a5;
      v22[19] = a6;
      v22[20] = a7;
      v22[21] = a8;
      *(v22 + 11) = a9;
      v22[24] = a10;
      *(v22 + 25) = a11;
      v35 = byte_21AEBB;
      if (byte_21AEBB)
      {
        breakpoint_break(&__ptr, (&stru_20.nsects + 3), 1, *(v18 + 3404), v18);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v35 & 4))
      {
        v36 = mach_absolute_time();
        (*(*(v18 + 32) + 3056))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
        v37 = mach_absolute_time() - v36;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v38 = __ptr;
          *(__ptr + 2) = v36;
          v38[3] = v37;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v59 = *(&g_DYTimebaseInfo + 1);
          v60 = __udivti3();
          v61 = __ptr;
          *(__ptr + 3) = v60;
          v61[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v18);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v18 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v18);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v18 + 3480), (v18 + 3520), &__ptr);
      v39 = *(v18 + 3404);
      if (v39 && (gBreakOnError & 1) != 0)
      {
        v57 = 3;
        v58 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v35 & 2) == 0)
        {
LABEL_37:
          v40 = [DYGetGLGuestAppClient() defaultFbufStream];
          v41 = v40;
          while (atomic_exchange(v40 + 14, 1u) == 1)
          {
              ;
            }
          }

          v42 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v41 + 14);
          v43 = *v18;
          v74[0] = 0;
          v74[1] = 0;
          v75 = 0;
          GPUTools::FB::Encode(v74, 4294955024, 0x2000, "Cietee", v44, v45, v46, v47, v43);
          v48 = [DYGetGLGuestAppClient() defaultFbufStream];
          v49 = v48;
          while (atomic_exchange(v48 + 14, 1u) == 1)
          {
              ;
            }
          }

          v50 = *v74[0];
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v49 + 14);
          if (v74[0])
          {
            free(v74[0]);
          }

          v51 = atomic_fetch_add((v18 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v51 >= 1)
          {
            handle_opengl_thread_conflict(v18);
          }

          goto LABEL_50;
        }

        v57 = 2;
        v58 = 99;
      }

      breakpoint_break(&__ptr, v58, v57, v39, v18);
      goto LABEL_37;
    }

    v62 = (v29 - v33 + 255) & 0xFFFFFF00;
    v63 = v62 + v73;
    v73 += v62;
    if (__ptr)
    {
      v30 = reallocf(__ptr, v63);
      __ptr = v30;
      if (!v30)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v30 = malloc_type_malloc(v62 + v32, 0xF962E99uLL);
      __ptr = v30;
      if (!v30)
      {
        goto LABEL_71;
      }
    }

    if ((v30 & 3) == 0)
    {
      v34 = v30 + v31;
      v26 = v34;
      goto LABEL_22;
    }

LABEL_71:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v18 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v18 + 24) + 3056))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
LABEL_50:
  if (__ptr)
  {
    free(__ptr);
  }
}

void sub_CCACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

void compressed_tex_sub_image2D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, const void *a10)
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
  if (gCheckGLErrors != 1 || v20 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_54;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v19);
    v54 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v54 >= 1)
    {
LABEL_54:
      atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      v55 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v55, 0, do_nothing);
      v56 = *(*(v19 + 24) + 3064);

      v56(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      return;
    }
  }

  *(v19 + 4838) = 1;
  __ptr = 0;
  v71 = 0;
  v72 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v23 = __ptr;
    v22 = v71;
    v24 = v71 - __ptr;
    v25 = v72;
    v26 = v72 - (v71 - __ptr);
    if (v26 <= 0x5F)
    {
      v57 = (351 - v26) & 0x100;
      v72 += v57;
      v23 = malloc_type_malloc(v57 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (!v23 || (v23 & 3) != 0)
      {
        goto LABEL_71;
      }

      v22 = &v23[v24];
    }

    *(v22 + 4) = 0u;
    *(v22 + 5) = 0u;
    *(v22 + 2) = 0u;
    *(v22 + 3) = 0u;
    *v22 = 0u;
    *(v22 + 1) = 0u;
    v27 = v22 + 96;
    v71 = v22 + 96;
    v28 = v22 + 96 - v23;
    *v23 = v28;
    v29 = (v28 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v30 = v29 - v28;
    if (v29 == v28)
    {
      goto LABEL_23;
    }

    v31 = __ptr;
    v32 = v27 - __ptr;
    v33 = v72;
    v34 = v72 - (v27 - __ptr);
    if (v30 <= v34)
    {
      v35 = v71;
LABEL_22:
      bzero(v27, v30);
      v71 = &v35[v30];
      *v31 += v30;
LABEL_23:
      *(v23 + 1) = 98;
      *(v23 + 8) = 4096;
      v69 = 0;
      pthread_threadid_np(0, &v69);
      *(v23 + 1) = v69;
      strcpy(v23 + 36, "Ceiiiiieip");
      *(v23 + 6) = *v19;
      *(v23 + 14) = a2;
      *(v23 + 15) = a3;
      *(v23 + 16) = a4;
      *(v23 + 17) = a5;
      *(v23 + 18) = a6;
      *(v23 + 19) = a7;
      *(v23 + 20) = a8;
      *(v23 + 21) = a9;
      *(v23 + 11) = a10;
      v36 = byte_21AEBA;
      if (byte_21AEBA)
      {
        breakpoint_break(&__ptr, (&stru_20.nsects + 2), 1, *(v19 + 3404), v19);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v36 & 4))
      {
        v37 = mach_absolute_time();
        (*(*(v19 + 32) + 3064))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
        v38 = mach_absolute_time() - v37;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v39 = __ptr;
          *(__ptr + 2) = v37;
          v39[3] = v38;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v60 = *(&g_DYTimebaseInfo + 1);
          v61 = __udivti3();
          v62 = __ptr;
          *(__ptr + 3) = v61;
          v62[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v19);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v19 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v19);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v19 + 3480), (v19 + 3520), &__ptr);
      v40 = *(v19 + 3404);
      if (v40 && (gBreakOnError & 1) != 0)
      {
        v58 = 3;
        v59 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v36 & 2) == 0)
        {
LABEL_37:
          v41 = [DYGetGLGuestAppClient() defaultFbufStream];
          v42 = v41;
          while (atomic_exchange(v41 + 14, 1u) == 1)
          {
              ;
            }
          }

          v43 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v42 + 14);
          v44 = *v19;
          v73[0] = 0;
          v73[1] = 0;
          v74 = 0;
          GPUTools::FB::Encode(v73, 4294955024, 0x2000, "Cietee", v45, v46, v47, v48, v44);
          v49 = [DYGetGLGuestAppClient() defaultFbufStream];
          v50 = v49;
          while (atomic_exchange(v49 + 14, 1u) == 1)
          {
              ;
            }
          }

          v51 = *v73[0];
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v50 + 14);
          if (v73[0])
          {
            free(v73[0]);
          }

          v52 = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v52 >= 1)
          {
            handle_opengl_thread_conflict(v19);
          }

          goto LABEL_50;
        }

        v58 = 2;
        v59 = 98;
      }

      breakpoint_break(&__ptr, v59, v58, v40, v19);
      goto LABEL_37;
    }

    v63 = (v30 - v34 + 255) & 0xFFFFFF00;
    v64 = v63 + v72;
    v72 += v63;
    if (__ptr)
    {
      v31 = reallocf(__ptr, v64);
      __ptr = v31;
      if (!v31)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v31 = malloc_type_malloc(v63 + v33, 0xF962E99uLL);
      __ptr = v31;
      if (!v31)
      {
        goto LABEL_71;
      }
    }

    if ((v31 & 3) == 0)
    {
      v35 = v31 + v32;
      v27 = v35;
      goto LABEL_22;
    }

LABEL_71:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v19 + 24) + 3064))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
LABEL_50:
  if (__ptr)
  {
    free(__ptr);
  }
}

void sub_CD1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a19)
  {
    free(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_CD7F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void draw_range_elements(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, const void *a7)
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
  if (gCheckGLErrors != 1 || v18 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v43 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v43 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v44 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v44, 0, do_nothing);
      v45 = *(*(v17 + 24) + 3240);

      v45(a1, a2, a3, a4, a5, a6, a7);
      return;
    }
  }

  *(v17 + 4838) = 257;
  __ptr = 0;
  v65 = 0;
  v66 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v21 = __ptr;
    v20 = v65;
    v22 = v65 - __ptr;
    v23 = v66;
    v24 = v66 - (v65 - __ptr);
    if (v24 <= 0x53)
    {
      v46 = (339 - v24) & 0x100;
      v66 += v46;
      v21 = malloc_type_malloc(v46 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21 || (v21 & 3) != 0)
      {
        goto LABEL_73;
      }

      v20 = v21 + v22;
    }

    *(v20 + 20) = 0;
    *(v20 + 3) = 0u;
    *(v20 + 4) = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 2) = 0u;
    *v20 = 0u;
    v25 = v20 + 84;
    v65 = v20 + 84;
    v26 = v20 + 84 - v21;
    *v21 = v26;
    v27 = (v26 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v27 - v26;
    if (v27 == v26)
    {
      goto LABEL_23;
    }

    v29 = __ptr;
    v30 = v25 - __ptr;
    v31 = v66;
    v32 = v66 - (v25 - __ptr);
    if (v28 <= v32)
    {
      v33 = v65;
LABEL_22:
      bzero(v25, v28);
      v65 = &v33[v28];
      *v29 += v28;
LABEL_23:
      v21[1] = 146;
      v21[8] = 0;
      v63 = 0;
      pthread_threadid_np(0, &v63);
      *(v21 + 1) = v63;
      strcpy(v21 + 36, "Ceuiuiiep");
      *(v21 + 6) = *v17;
      v21[14] = a2;
      v21[15] = a3;
      v21[16] = a4;
      v21[17] = a5;
      v21[18] = a6;
      *(v21 + 19) = a7;
      LOBYTE(v21) = byte_21AEEA;
      if (byte_21AEEA)
      {
        breakpoint_break(&__ptr, (&stru_68.size + 2), 1, *(v17 + 3404), v17);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4)
      {
        goto LABEL_29;
      }

      if (![DYGetGLGuestAppClient() overrideFlags])
      {
        v34 = mach_absolute_time();
        (*(*(v17 + 32) + 3240))(a1, a2, a3, a4, a5, a6, a7);
        v35 = mach_absolute_time() - v34;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v36 = __ptr;
          *(__ptr + 2) = v34;
          v36[3] = v35;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v54 = *(&g_DYTimebaseInfo + 1);
          v55 = __udivti3();
          v56 = __ptr;
          *(__ptr + 3) = v55;
          v56[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_29;
          }
        }

        check_errors(v17);
LABEL_29:
        if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
        {
          GPUTools::FB::EncodeCurrentBacktrace();
        }

        if (*(v17 + 3404))
        {
          GPUTools::FB::EncodeGLError();
        }

        if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
        {
          encode_driver_events(v17);
        }

        GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), &__ptr);
        v37 = *(v17 + 3404);
        if (v37 && (gBreakOnError & 1) != 0)
        {
          v47 = 3;
          v48 = 0xFFFFFFFFLL;
        }

        else
        {
          if ((v21 & 2) == 0)
          {
LABEL_38:
            v38 = [DYGetGLGuestAppClient() defaultFbufStream];
            v39 = v38;
            while (atomic_exchange(v38 + 14, 1u) == 1)
            {
                ;
              }
            }

            v40 = *__ptr;
            GPUTools::FB::Stream::Write_nolock();
            atomic_store(0, v39 + 14);
            v41 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
            if (gCheckGLErrors == 1 && v41 >= 1)
            {
              handle_opengl_thread_conflict(v17);
            }

            goto LABEL_46;
          }

          v47 = 2;
          v48 = 146;
        }

        breakpoint_break(&__ptr, v48, v47, v37, v17);
        goto LABEL_38;
      }

      if (([DYGetGLGuestAppClient() overrideFlags] & 8) != 0)
      {
        goto LABEL_29;
      }

      v49 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v17, v49);
      v50 = mach_absolute_time();
      (*(*(v17 + 32) + 3240))(a1, a2, a3, a4, a5, a6, a7);
      v51 = mach_absolute_time() - v50;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v52 = __ptr;
        *(__ptr + 2) = v50;
        v52[3] = v51;
        if (gCheckGLErrors != 1)
        {
LABEL_60:
          v53 = [DYGetGLGuestAppClient() overrideFlags];
          unapply_draw_overrides(v17, v53);
          goto LABEL_29;
        }

LABEL_75:
        check_errors(v17);
        goto LABEL_60;
      }

LABEL_74:
      v59 = __udivti3();
      v60 = __ptr;
      *(__ptr + 3) = v59;
      v60[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_60;
      }

      goto LABEL_75;
    }

    v57 = (v28 - v32 + 255) & 0xFFFFFF00;
    v58 = v57 + v66;
    v66 += v57;
    if (__ptr)
    {
      v29 = reallocf(__ptr, v58);
      __ptr = v29;
      if (!v29)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v29 = malloc_type_malloc(v57 + v31, 0xF962E99uLL);
      __ptr = v29;
      if (!v29)
      {
        goto LABEL_73;
      }
    }

    if ((v29 & 3) == 0)
    {
      v33 = v29 + v30;
      v25 = v33;
      goto LABEL_22;
    }

    LOBYTE(v21) = v29;
LABEL_73:
    dy_abort();
    __break(1u);
    goto LABEL_74;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 3240))(a1, a2, a3, a4, a5, a6, a7);
LABEL_46:
  if (__ptr)
  {
    free(__ptr);
  }
}

void sub_CDF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void tex_image3D(__GLIContextRec *a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, const void *a10)
{
  v13 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v15 = *(v13 + 32);
    v16 = v15 >= a1;
    v17 = v15 < a1;
    if (v16)
    {
      v14 = v13;
    }

    v13 = *(v13 + 8 * v17);
  }

  while (v13);
  if (v14 == ContextInfo::activeCtxInfoMap + 8 || *(v14 + 32) > a1)
  {
LABEL_9:
    v14 = ContextInfo::activeCtxInfoMap + 8;
  }

  v18 = *(v14 + 40);
  v19 = atomic_fetch_add((v18 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v19 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_51;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v18);
    v46 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v46 >= 1)
    {
LABEL_51:
      atomic_fetch_add((v18 + 4640), 0xFFFFFFFF);
      v47 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v47, 0, do_nothing);
      v48 = *(*(v18 + 24) + 3504);

      v48(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      return;
    }
  }

  *(v18 + 4838) = 1;
  __ptr = 0;
  v63 = 0;
  v64 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v22 = __ptr;
    v21 = v63;
    v23 = v63 - __ptr;
    v24 = v64;
    v25 = v64 - (v63 - __ptr);
    if (v25 <= 0x63)
    {
      v49 = (355 - v25) & 0x100;
      v64 += v49;
      v22 = malloc_type_malloc(v49 + v24, 0xF962E99uLL);
      __ptr = v22;
      if (!v22 || (v22 & 3) != 0)
      {
        goto LABEL_67;
      }

      v21 = v22 + v23;
    }

    *(v21 + 24) = 0;
    *(v21 + 4) = 0u;
    *(v21 + 5) = 0u;
    *(v21 + 2) = 0u;
    *(v21 + 3) = 0u;
    *v21 = 0u;
    *(v21 + 1) = 0u;
    v26 = v21 + 100;
    v63 = v21 + 100;
    v27 = v21 + 100 - v22;
    *v22 = v27;
    v28 = (v27 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v29 = v28 - v27;
    if (v28 == v27)
    {
      goto LABEL_23;
    }

    v30 = __ptr;
    v31 = v26 - __ptr;
    v32 = v64;
    v33 = v64 - (v26 - __ptr);
    if (v29 <= v33)
    {
      v34 = v63;
LABEL_22:
      bzero(v26, v29);
      v63 = &v34[v29];
      *v30 += v29;
LABEL_23:
      v22[1] = 595;
      v22[8] = 4096;
      v61 = 0;
      pthread_threadid_np(0, &v61);
      *(v22 + 1) = v61;
      strcpy(v22 + 36, "Ceieiiiieep");
      *(v22 + 6) = *v18;
      v22[14] = a2;
      v22[15] = a3;
      v35 = a3;
      v22[16] = a4;
      v22[17] = a5;
      v22[18] = a6;
      v22[19] = a7;
      v22[20] = a8;
      *(v22 + 21) = a9;
      *(v22 + 23) = a10;
      v36 = byte_21B0AB;
      if (byte_21B0AB)
      {
        breakpoint_break(&__ptr, &stru_248.sectname[11], 1, *(v18 + 3404), v18);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v36 & 4))
      {
        v37 = mach_absolute_time();
        (*(*(v18 + 32) + 3504))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
        v38 = mach_absolute_time() - v37;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v39 = __ptr;
          *(__ptr + 3) = v38;
        }

        else
        {
          v52 = *(&g_DYTimebaseInfo + 1);
          v53 = __udivti3();
          v39 = __ptr;
          *(__ptr + 3) = v53;
          v37 = __udivti3();
        }

        v39[2] = v37;
        v35 = a3;
        if (gCheckGLErrors == 1)
        {
          check_errors(v18);
        }
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v18 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v18);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v18 + 3480), (v18 + 3520), &__ptr);
      v40 = *(v18 + 3404);
      if (v40 && (gBreakOnError & 1) != 0)
      {
        v50 = 3;
        v51 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v36 & 2) == 0)
        {
LABEL_39:
          v41 = [DYGetGLGuestAppClient() defaultFbufStream];
          v42 = v41;
          while (atomic_exchange(v41 + 14, 1u) == 1)
          {
              ;
            }
          }

          v43 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v42 + 14);
          wrapper_encode_texture_format_info(v18, a2, v35, a10);
          v44 = atomic_fetch_add((v18 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v44 >= 1)
          {
            handle_opengl_thread_conflict(v18);
          }

          goto LABEL_47;
        }

        v50 = 2;
        v51 = 595;
      }

      breakpoint_break(&__ptr, v51, v50, v40, v18);
      goto LABEL_39;
    }

    v54 = (v29 - v33 + 255) & 0xFFFFFF00;
    v55 = v54 + v64;
    v64 += v54;
    if (__ptr)
    {
      v30 = reallocf(__ptr, v55);
      __ptr = v30;
      if (!v30)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v30 = malloc_type_malloc(v54 + v32, 0xF962E99uLL);
      __ptr = v30;
      if (!v30)
      {
        goto LABEL_67;
      }
    }

    if ((v30 & 3) == 0)
    {
      v34 = v30 + v31;
      v26 = v34;
      goto LABEL_22;
    }

LABEL_67:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v18 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v18 + 24) + 3504))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
LABEL_47:
  if (__ptr)
  {
    free(__ptr);
  }
}

void sub_CE5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void tex_sub_image3D(__GLIContextRec *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, const void *a11)
{
  v13 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v15 = *(v13 + 32);
    v16 = v15 >= a1;
    v17 = v15 < a1;
    if (v16)
    {
      v14 = v13;
    }

    v13 = *(v13 + 8 * v17);
  }

  while (v13);
  if (v14 == ContextInfo::activeCtxInfoMap + 8 || *(v14 + 32) > a1)
  {
LABEL_9:
    v14 = ContextInfo::activeCtxInfoMap + 8;
  }

  v18 = *(v14 + 40);
  v19 = atomic_fetch_add((v18 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v19 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_54;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v18);
    v53 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v53 >= 1)
    {
LABEL_54:
      atomic_fetch_add((v18 + 4640), 0xFFFFFFFF);
      v54 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v54, 0, do_nothing);
      v55 = *(*(v18 + 24) + 3512);

      v55(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      return;
    }
  }

  *(v18 + 4838) = 1;
  __ptr = 0;
  v72 = 0;
  v73 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v22 = __ptr;
    v21 = v72;
    v23 = v72 - __ptr;
    v24 = v73;
    v25 = v73 - (v72 - __ptr);
    if (v25 <= 0x6B)
    {
      v56 = (363 - v25) & 0x100;
      v73 += v56;
      v22 = malloc_type_malloc(v56 + v24, 0xF962E99uLL);
      __ptr = v22;
      if (!v22 || (v22 & 3) != 0)
      {
        goto LABEL_71;
      }

      v21 = (v22 + v23);
    }

    *(v21 + 92) = 0u;
    v21[4] = 0u;
    v21[5] = 0u;
    v21[2] = 0u;
    v21[3] = 0u;
    *v21 = 0u;
    v21[1] = 0u;
    v26 = v21 + 108;
    v72 = v21 + 108;
    v27 = v21 + 108 - v22;
    *v22 = v27;
    v28 = (v27 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v29 = v28 - v27;
    if (v28 == v27)
    {
      goto LABEL_23;
    }

    v30 = __ptr;
    v31 = v26 - __ptr;
    v32 = v73;
    v33 = v73 - (v26 - __ptr);
    if (v29 <= v33)
    {
      v34 = v72;
LABEL_22:
      bzero(v26, v29);
      v72 = &v34[v29];
      *v30 += v29;
LABEL_23:
      v22[1] = 604;
      v22[8] = 4096;
      v70 = 0;
      pthread_threadid_np(0, &v70);
      *(v22 + 1) = v70;
      strcpy(v22 + 36, "Ceiiiiiiieep");
      *(v22 + 13) = *v18;
      v22[15] = a2;
      v22[16] = a3;
      v22[17] = a4;
      v22[18] = a5;
      v22[19] = a6;
      v22[20] = a7;
      v22[21] = a8;
      *(v22 + 11) = a9;
      v22[24] = a10;
      *(v22 + 25) = a11;
      v35 = byte_21B0B4;
      if (byte_21B0B4)
      {
        breakpoint_break(&__ptr, &stru_248.segname[4], 1, *(v18 + 3404), v18);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v35 & 4))
      {
        v36 = mach_absolute_time();
        (*(*(v18 + 32) + 3512))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
        v37 = mach_absolute_time() - v36;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v38 = __ptr;
          *(__ptr + 2) = v36;
          v38[3] = v37;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v59 = *(&g_DYTimebaseInfo + 1);
          v60 = __udivti3();
          v61 = __ptr;
          *(__ptr + 3) = v60;
          v61[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v18);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v18 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v18);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v18 + 3480), (v18 + 3520), &__ptr);
      v39 = *(v18 + 3404);
      if (v39 && (gBreakOnError & 1) != 0)
      {
        v57 = 3;
        v58 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v35 & 2) == 0)
        {
LABEL_37:
          v40 = [DYGetGLGuestAppClient() defaultFbufStream];
          v41 = v40;
          while (atomic_exchange(v40 + 14, 1u) == 1)
          {
              ;
            }
          }

          v42 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v41 + 14);
          v43 = *v18;
          v74[0] = 0;
          v74[1] = 0;
          v75 = 0;
          GPUTools::FB::Encode(v74, 4294955024, 0x2000, "Cietee", v44, v45, v46, v47, v43);
          v48 = [DYGetGLGuestAppClient() defaultFbufStream];
          v49 = v48;
          while (atomic_exchange(v48 + 14, 1u) == 1)
          {
              ;
            }
          }

          v50 = *v74[0];
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v49 + 14);
          if (v74[0])
          {
            free(v74[0]);
          }

          v51 = atomic_fetch_add((v18 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v51 >= 1)
          {
            handle_opengl_thread_conflict(v18);
          }

          goto LABEL_50;
        }

        v57 = 2;
        v58 = 604;
      }

      breakpoint_break(&__ptr, v58, v57, v39, v18);
      goto LABEL_37;
    }

    v62 = (v29 - v33 + 255) & 0xFFFFFF00;
    v63 = v62 + v73;
    v73 += v62;
    if (__ptr)
    {
      v30 = reallocf(__ptr, v63);
      __ptr = v30;
      if (!v30)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v30 = malloc_type_malloc(v62 + v32, 0xF962E99uLL);
      __ptr = v30;
      if (!v30)
      {
        goto LABEL_71;
      }
    }

    if ((v30 & 3) == 0)
    {
      v34 = v30 + v31;
      v26 = v34;
      goto LABEL_22;
    }

LABEL_71:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v18 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v18 + 24) + 3512))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
LABEL_50:
  if (__ptr)
  {
    free(__ptr);
  }
}

void sub_CECC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_CF328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_CF78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_CFBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_D0050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void get_active_uniform_blockiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
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
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v15 + 24) + 3560);

      v34(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v40, 827, 2, "Cuiuiep", v18, v19, v20, v21, *v15);
    v22 = byte_21B193;
    if (byte_21B193)
    {
      breakpoint_break(v40, &stru_338.sectname[3], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(*(v15 + 32) + 3560))(a1, a2, a3, a4, a5);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v40[0];
        *(v40[0] + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v37 = *(&g_DYTimebaseInfo + 1);
        v38 = __udivti3();
        v39 = v40[0];
        *(v40[0] + 3) = v38;
        v39[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v15);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v15 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v15);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v40);
    v26 = *(v15 + 3404);
    if (v26 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_32:
        v27 = [DYGetGLGuestAppClient() defaultFbufStream];
        v28 = v27;
        while (atomic_exchange(v27 + 14, 1u) == 1)
        {
            ;
          }
        }

        v29 = *v40[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v28 + 14);
        v30 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        goto LABEL_40;
      }

      v35 = 2;
      v36 = 827;
    }

    breakpoint_break(v40, v36, v35, v26, v15);
    goto LABEL_32;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 3560))(a1, a2, a3, a4, a5);
LABEL_40:
  if (v40[0])
  {
    free(v40[0]);
  }
}

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
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v19, 0, do_nothing);
LABEL_29:
      v20 = *(*(v15 + 24) + 3560);

      v20(a1, a2, a3, a4, a5);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v15 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v15 + 32) + 3560))(a1, a2, a3, a4, a5);
  ++*(v15 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v15);
  }

  add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v15);
  }
}

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
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v22 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v22, 0, do_nothing);
LABEL_29:
      v23 = *(*(v15 + 24) + 3560);

      v23(a1, a2, a3, a4, a5);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v15 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v18 = mach_absolute_time();
  (*(*(v15 + 32) + 3560))(a1, a2, a3, a4, a5);
  v19 = mach_absolute_time();
  v20 = vdupq_n_s64(1uLL);
  v20.i64[0] = v19 - v18;
  *(v15 + 3696) = vaddq_s64(v20, *(v15 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v15);
  }

  add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v15);
  }
}

void sub_D04B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_D091C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_D0D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_D1308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D18CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D1D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_D21BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D2704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D2CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D32A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D37F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D3DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D439C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D4800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D4C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_D511C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_D55DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_D5A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D5E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D62F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D6754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D6C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_D7170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D76C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D7BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_D80A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_D8550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_D8B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D8F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D9550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D9934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D9D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_DA1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void shader_source_ARB(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const char *const *a4, const int *a5)
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
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(*(v15 + 24) + 4760);

      v35(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v41, 540, "Culipp", v18, v19, v20, v21, v22, *v15);
    wrapper_cache_shader_source(v15, a2);
    v23 = byte_21B074;
    if (byte_21B074)
    {
      breakpoint_break(v41, &stru_1F8.addr + 1, 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v15 + 32) + 4760))(a1, a2, a3, a4, a5);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v41[0];
        *(v41[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v38 = *(&g_DYTimebaseInfo + 1);
        v39 = __udivti3();
        v40 = v41[0];
        *(v41[0] + 3) = v39;
        v40[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v15);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v15 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v15);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v41);
    v27 = *(v15 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_32:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        v30 = *v41[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v31 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        goto LABEL_40;
      }

      v36 = 2;
      v37 = 540;
    }

    breakpoint_break(v41, v37, v36, v27, v15);
    goto LABEL_32;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 4760))(a1, a2, a3, a4, a5);
LABEL_40:
  if (v41[0])
  {
    free(v41[0]);
  }
}

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
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v19, 0, do_nothing);
LABEL_29:
      v20 = *(*(v15 + 24) + 4760);

      v20(a1, a2, a3, a4, a5);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v15 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  wrapper_cache_shader_source(v15, a2);
  (*(*(v15 + 32) + 4760))(a1, a2, a3, a4, a5);
  ++*(v15 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v15);
  }

  add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v15);
  }
}

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
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v22 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v22, 0, do_nothing);
LABEL_29:
      v23 = *(*(v15 + 24) + 4760);

      v23(a1, a2, a3, a4, a5);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v15 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  wrapper_cache_shader_source(v15, a2);
  v18 = mach_absolute_time();
  (*(*(v15 + 32) + 4760))(a1, a2, a3, a4, a5);
  v19 = mach_absolute_time();
  v20 = vdupq_n_s64(1uLL);
  v20.i64[0] = v19 - v18;
  *(v15 + 3696) = vaddq_s64(v20, *(v15 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v15);
  }

  add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v15);
  }
}