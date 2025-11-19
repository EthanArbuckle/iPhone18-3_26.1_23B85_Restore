void sub_27804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void draw_arrays(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      goto LABEL_58;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v45 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v45 >= 1)
    {
LABEL_58:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v46 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v46, 0, do_nothing);
      v47 = *(*(v13 + 24) + 520);

      v47(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 257;
  __ptr = 0;
  v64 = 0;
  v65 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if (a4 < 1)
    {
      v16 = 1;
      v18 = __ptr;
      v17 = v64;
      v19 = v64 - __ptr;
      v20 = v65;
      if (v65 - (v64 - __ptr) > 0x3F)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v16 = copyout_vertex_arrays2(v13) == 0;
      v18 = __ptr;
      v17 = v64;
      v19 = v64 - __ptr;
      v20 = v65;
      if (v65 - (v64 - __ptr) > 0x3F)
      {
        goto LABEL_22;
      }
    }

    v65 = v20 + 256;
    v18 = malloc_type_malloc(v20 + 256, 0xF962E99uLL);
    __ptr = v18;
    if (!v18 || (v18 & 3) != 0)
    {
      goto LABEL_79;
    }

    v17 = v18 + v19;
LABEL_22:
    *(v17 + 2) = 0u;
    *(v17 + 3) = 0u;
    *v17 = 0u;
    *(v17 + 1) = 0u;
    v21 = v17 + 64;
    v64 = v17 + 64;
    v22 = v17 + 64 - v18;
    *v18 = v22;
    v23 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v19 = v23 - v22;
    if (v23 == v22)
    {
      goto LABEL_26;
    }

    v24 = __ptr;
    v25 = v21 - __ptr;
    v26 = v65;
    v27 = v65 - (v21 - __ptr);
    if (v19 <= v27)
    {
      v28 = v64;
LABEL_25:
      bzero(v21, v19);
      v64 = &v28[v19];
      *v24 += v19;
LABEL_26:
      v18[1] = 139;
      v18[8] = 0;
      v62 = 0;
      pthread_threadid_np(0, &v62);
      *(v18 + 1) = v62;
      strcpy(v18 + 36, "Ceii");
      *(v18 + 11) = *v13;
      v18[13] = a2;
      v18[14] = a3;
      v18[15] = a4;
      LOBYTE(v19) = byte_21AEE3;
      if (byte_21AEE3)
      {
        breakpoint_break(&__ptr, (&stru_68.addr + 3), 1, *(v13 + 3404), v13);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4)
      {
        goto LABEL_32;
      }

      if (![DYGetGLGuestAppClient() overrideFlags])
      {
        v29 = mach_absolute_time();
        (*(*(v13 + 32) + 520))(a1, a2, a3, a4);
        v30 = mach_absolute_time() - v29;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v31 = __ptr;
          *(__ptr + 2) = v29;
          v31[3] = v30;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v55 = *(&g_DYTimebaseInfo + 1);
          v56 = __udivti3();
          v57 = __ptr;
          *(__ptr + 3) = v56;
          v57[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_32;
          }
        }

        check_errors(v13);
LABEL_32:
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
        v32 = *(v13 + 3404);
        if (v32 && (gBreakOnError & 1) != 0)
        {
          v48 = 3;
          v49 = 0xFFFFFFFFLL;
        }

        else
        {
          if ((v19 & 2) == 0)
          {
LABEL_41:
            v33 = [DYGetGLGuestAppClient() defaultFbufStream];
            v34 = v33;
            while (atomic_exchange(v33 + 14, 1u) == 1)
            {
                ;
              }
            }

            v35 = *__ptr;
            GPUTools::FB::Stream::Write_nolock();
            atomic_store(0, v34 + 14);
            if (!v16)
            {
              GPUTools::FB::Encode(&__ptr, 4294955021, 4, "C", v36, v37, v38, v39, *v13);
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
            }

            v43 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
            if (gCheckGLErrors == 1 && v43 >= 1)
            {
              handle_opengl_thread_conflict(v13);
            }

            goto LABEL_54;
          }

          v48 = 2;
          v49 = 139;
        }

        breakpoint_break(&__ptr, v49, v48, v32, v13);
        goto LABEL_41;
      }

      if (([DYGetGLGuestAppClient() overrideFlags] & 8) != 0)
      {
        goto LABEL_32;
      }

      v50 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v13, v50);
      v51 = mach_absolute_time();
      (*(*(v13 + 32) + 520))(a1, a2, a3, a4);
      v52 = mach_absolute_time() - v51;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v53 = __ptr;
        *(__ptr + 2) = v51;
        v53[3] = v52;
        if (gCheckGLErrors != 1)
        {
LABEL_68:
          v54 = [DYGetGLGuestAppClient() overrideFlags];
          unapply_draw_overrides(v13, v54);
          goto LABEL_32;
        }

LABEL_81:
        check_errors(v13);
        goto LABEL_68;
      }

LABEL_80:
      v60 = __udivti3();
      v61 = __ptr;
      *(__ptr + 3) = v60;
      v61[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_68;
      }

      goto LABEL_81;
    }

    v58 = (v19 - v27 + 255) & 0xFFFFFF00;
    v59 = v58 + v65;
    v65 += v58;
    if (__ptr)
    {
      v24 = reallocf(__ptr, v59);
      __ptr = v24;
      if (!v24)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v24 = malloc_type_malloc(v58 + v26, 0xF962E99uLL);
      __ptr = v24;
      if (!v24)
      {
        goto LABEL_79;
      }
    }

    if ((v24 & 3) == 0)
    {
      v28 = v24 + v25;
      v21 = v28;
      goto LABEL_25;
    }

LABEL_79:
    dy_abort();
    __break(1u);
    goto LABEL_80;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 520))(a1, a2, a3, a4);
LABEL_54:
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v13 + 24) + 520);

      v39(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 257;
  __ptr = 0;
  v56 = 0;
  v57 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = __ptr;
    v16 = v56;
    v18 = v56 - __ptr;
    v19 = v57;
    if (v57 - (v56 - __ptr) <= 0x3F)
    {
      v57 += 256;
      v17 = malloc_type_malloc(v19 + 256, 0xF962E99uLL);
      __ptr = v17;
      if (!v17 || (v17 & 3) != 0)
      {
        goto LABEL_71;
      }

      v16 = v17 + v18;
    }

    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    v20 = v16 + 64;
    v56 = v16 + 64;
    v21 = v16 + 64 - v17;
    *v17 = v21;
    v22 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v22 - v21;
    if (v22 == v21)
    {
      goto LABEL_23;
    }

    v23 = __ptr;
    v24 = v20 - __ptr;
    v25 = v57;
    v26 = v57 - (v20 - __ptr);
    if (v18 <= v26)
    {
      v27 = v56;
LABEL_22:
      bzero(v20, v18);
      v56 = &v27[v18];
      *v23 += v18;
LABEL_23:
      v17[1] = 139;
      v17[8] = 0;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v17 + 1) = v54;
      strcpy(v17 + 36, "Ceii");
      *(v17 + 11) = *v13;
      v17[13] = a2;
      v17[14] = a3;
      v17[15] = a4;
      LOBYTE(v18) = byte_21AEE3;
      if (byte_21AEE3)
      {
        breakpoint_break(&__ptr, (&stru_68.addr + 3), 1, *(v13 + 3404), v13);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4)
      {
        goto LABEL_29;
      }

      if (![DYGetGLGuestAppClient() overrideFlags])
      {
        v28 = mach_absolute_time();
        (*(*(v13 + 32) + 520))(a1, a2, a3, a4);
        v29 = mach_absolute_time() - v28;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v30 = __ptr;
          *(__ptr + 2) = v28;
          v30[3] = v29;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v47 = *(&g_DYTimebaseInfo + 1);
          v48 = __udivti3();
          v49 = __ptr;
          *(__ptr + 3) = v48;
          v49[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_29;
          }
        }

        check_errors(v13);
LABEL_29:
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
        v31 = *(v13 + 3404);
        if (v31 && (gBreakOnError & 1) != 0)
        {
          v40 = 3;
          v41 = 0xFFFFFFFFLL;
        }

        else
        {
          if ((v18 & 2) == 0)
          {
LABEL_38:
            v32 = [DYGetGLGuestAppClient() defaultFbufStream];
            v33 = v32;
            while (atomic_exchange(v32 + 14, 1u) == 1)
            {
                ;
              }
            }

            v34 = *__ptr;
            GPUTools::FB::Stream::Write_nolock();
            atomic_store(0, v33 + 14);
            v35 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
            if (gCheckGLErrors == 1 && v35 >= 1)
            {
              handle_opengl_thread_conflict(v13);
            }

            goto LABEL_46;
          }

          v40 = 2;
          v41 = 139;
        }

        breakpoint_break(&__ptr, v41, v40, v31, v13);
        goto LABEL_38;
      }

      if (([DYGetGLGuestAppClient() overrideFlags] & 8) != 0)
      {
        goto LABEL_29;
      }

      v42 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v13, v42);
      v43 = mach_absolute_time();
      (*(*(v13 + 32) + 520))(a1, a2, a3, a4);
      v44 = mach_absolute_time() - v43;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v45 = __ptr;
        *(__ptr + 2) = v43;
        v45[3] = v44;
        if (gCheckGLErrors != 1)
        {
LABEL_60:
          v46 = [DYGetGLGuestAppClient() overrideFlags];
          unapply_draw_overrides(v13, v46);
          goto LABEL_29;
        }

LABEL_73:
        check_errors(v13);
        goto LABEL_60;
      }

LABEL_72:
      v52 = __udivti3();
      v53 = __ptr;
      *(__ptr + 3) = v52;
      v53[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_60;
      }

      goto LABEL_73;
    }

    v50 = (v18 - v26 + 255) & 0xFFFFFF00;
    v51 = v50 + v57;
    v57 += v50;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v51);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v50 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_71;
      }
    }

    if ((v23 & 3) == 0)
    {
      v27 = v23 + v24;
      v20 = v27;
      goto LABEL_22;
    }

LABEL_71:
    dy_abort();
    __break(1u);
    goto LABEL_72;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 520))(a1, a2, a3, a4);
LABEL_46:
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
LABEL_27:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v17, 0, do_nothing);
LABEL_36:
      v20 = *(*(v13 + 24) + 520);

      v20(a1, a2, a3, a4);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_27;
    }
  }

  *(v13 + 4838) = 257;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_36;
  }

  if ([DYGetGLGuestAppClient() overrideFlags])
  {
    if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
    {
      v18 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v13, v18);
      (*(*(v13 + 32) + 520))(a1, a2, a3, a4);
      ++*(v13 + 3704);
      if (gCheckGLErrors == 1)
      {
        alpha_func(v13);
      }

      v19 = [DYGetGLGuestAppClient() overrideFlags];
      unapply_draw_overrides(v13, v19);
    }
  }

  else
  {
    (*(*(v13 + 32) + 520))(a1, a2, a3, a4);
    ++*(v13 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v13);
    }
  }

  if (!*(v13 + 3404))
  {
    GLDrawCommandStatistics::update((v13 + 32 * a2 + 3960), a2, a4, 1u);
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
LABEL_27:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_36:
      v26 = *(*(v13 + 24) + 520);

      v26(a1, a2, a3, a4);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_27;
    }
  }

  *(v13 + 4838) = 257;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_36;
  }

  if ([DYGetGLGuestAppClient() overrideFlags])
  {
    if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
    {
      v21 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v13, v21);
      v22 = mach_absolute_time();
      (*(*(v13 + 32) + 520))(a1, a2, a3, a4);
      v23 = mach_absolute_time();
      v24 = vdupq_n_s64(1uLL);
      v24.i64[0] = v23 - v22;
      *(v13 + 3696) = vaddq_s64(v24, *(v13 + 3696));
      if (gCheckGLErrors == 1)
      {
        alpha_func(v13);
      }

      v25 = [DYGetGLGuestAppClient() overrideFlags];
      unapply_draw_overrides(v13, v25);
    }
  }

  else
  {
    v16 = mach_absolute_time();
    (*(*(v13 + 32) + 520))(a1, a2, a3, a4);
    v17 = mach_absolute_time();
    v18 = vdupq_n_s64(1uLL);
    v18.i64[0] = v17 - v16;
    *(v13 + 3696) = vaddq_s64(v18, *(v13 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v13);
    }
  }

  if (!*(v13 + 3404))
  {
    GLDrawCommandStatistics::update((v13 + 32 * a2 + 3960), a2, a4, 1u);
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
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v16, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 257;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      draw_arrays(v13);
      return;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v17 = *(*(v13 + 24) + 520);

  v17(a1, a2, a3, a4);
}

void sub_27FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void draw_elements(__GLIContextRec *a1, uint64_t a2, int a3, GPUTools::GL *a4, void *a5)
{
  v63 = a3;
  v62 = a5;
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
      goto LABEL_57;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v43 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v43 >= 1)
    {
LABEL_57:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v44 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v44, 0, do_nothing);
      v45 = *(*(v13 + 24) + 536);

      v45(a1, a2, v63, a4, v62);
      return;
    }
  }

  *(v13 + 4838) = 257;
  v60[0] = 0;
  v60[1] = 0;
  v61 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    strlcpy((v13 + 4709), "Ceie", 0x40uLL);
    if (v63)
    {
      if (has_client_memory_vertex_arrays(v13))
      {
        determine_element_range(v13, &v63, a4, &v62, 0, 1, v16, v17, v18, v19);
        v59 = copyout_vertex_arrays2(v13);
        if (*(v13 + 2036))
        {
LABEL_21:
          strlcat((v13 + 4709), "t", 0x40uLL);
          goto LABEL_25;
        }
      }

      else
      {
        v59 = 0;
        if (*(v13 + 2036))
        {
          goto LABEL_21;
        }
      }

      strlcat((v13 + 4709), "U", 0x40uLL);
      GPUTools::GL::dy_type_size(a4, v25);
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
    }

    else
    {
      strlcat((v13 + 4709), "t", 0x40uLL);
      v59 = 0;
    }

LABEL_25:
    GPUTools::FB::Encode(v60, 143, v13 + 4709, v20, v21, v22, v23, v24, *v13);
    v26 = byte_21AEE7;
    if (byte_21AEE7)
    {
      breakpoint_break(v60, (&stru_68.addr + 7), 1, *(v13 + 3404), v13);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
    {
      goto LABEL_31;
    }

    if (![DYGetGLGuestAppClient() overrideFlags])
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 536))(a1, a2, v63, a4, v62);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v60[0];
        *(v60[0] + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v53 = *(&g_DYTimebaseInfo + 1);
        v54 = __udivti3();
        v55 = v60[0];
        *(v60[0] + 3) = v54;
        v55[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_31;
        }
      }

      check_errors(v13);
LABEL_31:
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

      GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v60);
      v30 = *(v13 + 3404);
      if (v30 && (gBreakOnError & 1) != 0)
      {
        v46 = 3;
        v47 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
        {
LABEL_40:
          v31 = [DYGetGLGuestAppClient() defaultFbufStream];
          v32 = v31;
          while (atomic_exchange(v31 + 14, 1u) == 1)
          {
              ;
            }
          }

          v33 = *v60[0];
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v32 + 14);
          if (v59)
          {
            GPUTools::FB::Encode(v60, 4294955021, 4, "C", v34, v35, v36, v37, *v13);
            v38 = [DYGetGLGuestAppClient() defaultFbufStream];
            v39 = v38;
            while (atomic_exchange(v38 + 14, 1u) == 1)
            {
                ;
              }
            }

            v40 = *v60[0];
            GPUTools::FB::Stream::Write_nolock();
            atomic_store(0, v39 + 14);
          }

          v41 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v41 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_53;
        }

        v46 = 2;
        v47 = 143;
      }

      breakpoint_break(v60, v47, v46, v30, v13);
      goto LABEL_40;
    }

    if (([DYGetGLGuestAppClient() overrideFlags] & 8) != 0)
    {
      goto LABEL_31;
    }

    v48 = [DYGetGLGuestAppClient() overrideFlags];
    apply_draw_overrides(v13, v48);
    v49 = mach_absolute_time();
    (*(*(v13 + 32) + 536))(a1, a2, v63, a4, v62);
    v50 = mach_absolute_time() - v49;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v51 = v60[0];
      *(v60[0] + 2) = v49;
      v51[3] = v50;
      if (gCheckGLErrors != 1)
      {
LABEL_64:
        v52 = [DYGetGLGuestAppClient() overrideFlags];
        unapply_draw_overrides(v13, v52);
        goto LABEL_31;
      }
    }

    else
    {
      v56 = *(&g_DYTimebaseInfo + 1);
      v57 = __udivti3();
      v58 = v60[0];
      *(v60[0] + 3) = v57;
      v58[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_64;
      }
    }

    check_errors(v13);
    goto LABEL_64;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 536))(a1, a2, v63, a4, v62);
LABEL_53:
  if (v60[0])
  {
    free(v60[0]);
  }
}

void sub_28694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void enable(__GLIContextRec *a1, uint64_t a2)
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
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_49:
      enable((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v47 = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v47;
    v14 = v47 - __ptr;
    v15 = v48;
    v16 = v48 - (v47 - __ptr);
    if (v16 <= 0x33)
    {
      v37 = (307 - v16) & 0x100;
      v48 += v37;
      v13 = malloc_type_malloc(v37 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13 || (v13 & 3) != 0)
      {
        goto LABEL_64;
      }

      v12 = &v13[v14];
    }

    *(v12 + 12) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 52;
    v47 = v12 + 52;
    v18 = v12 + 52 - v13;
    *v13 = v18;
    v19 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v19 - v18;
    if (v19 == v18)
    {
      goto LABEL_23;
    }

    v21 = __ptr;
    v22 = v17 - __ptr;
    v23 = v48;
    v24 = v48 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v47;
LABEL_22:
      bzero(v17, v20);
      v47 = &v25[v20];
      *v21 += v20;
LABEL_23:
      *(v13 + 1) = 151;
      *(v13 + 8) = 0;
      v45 = 0;
      pthread_threadid_np(0, &v45);
      *(v13 + 1) = v45;
      strcpy(v13 + 36, "Ce");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21AEEF;
      if (byte_21AEEF)
      {
        breakpoint_break(&__ptr, (&stru_68.size + 7), 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 576))(a1, a2);
        v28 = mach_absolute_time() - v27;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v29 = __ptr;
          *(__ptr + 2) = v27;
          v29[3] = v28;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v40 = *(&g_DYTimebaseInfo + 1);
          v41 = __udivti3();
          v42 = __ptr;
          *(__ptr + 3) = v41;
          v42[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v9);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v9 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v9);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), &__ptr);
      v30 = *(v9 + 3404);
      if (v30 && (gBreakOnError & 1) != 0)
      {
        v38 = 3;
        v39 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
        {
LABEL_37:
          v31 = [DYGetGLGuestAppClient() defaultFbufStream];
          v32 = v31;
          while (atomic_exchange(v31 + 14, 1u) == 1)
          {
              ;
            }
          }

          v33 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v32 + 14);
          v34 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v34 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v38 = 2;
        v39 = 151;
      }

      breakpoint_break(&__ptr, v39, v38, v30, v9);
      goto LABEL_37;
    }

    v43 = (v20 - v24 + 255) & 0xFFFFFF00;
    v44 = v43 + v48;
    v48 += v43;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v44);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v43 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_64;
      }
    }

    if ((v21 & 3) == 0)
    {
      v25 = v21 + v22;
      v17 = v25;
      goto LABEL_22;
    }

LABEL_64:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v9 + 24) + 576))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
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
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_49:
      enable((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v47 = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v47;
    v14 = v47 - __ptr;
    v15 = v48;
    v16 = v48 - (v47 - __ptr);
    if (v16 <= 0x33)
    {
      v37 = (307 - v16) & 0x100;
      v48 += v37;
      v13 = malloc_type_malloc(v37 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13 || (v13 & 3) != 0)
      {
        goto LABEL_64;
      }

      v12 = &v13[v14];
    }

    *(v12 + 12) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 52;
    v47 = v12 + 52;
    v18 = v12 + 52 - v13;
    *v13 = v18;
    v19 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v19 - v18;
    if (v19 == v18)
    {
      goto LABEL_23;
    }

    v21 = __ptr;
    v22 = v17 - __ptr;
    v23 = v48;
    v24 = v48 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v47;
LABEL_22:
      bzero(v17, v20);
      v47 = &v25[v20];
      *v21 += v20;
LABEL_23:
      *(v13 + 1) = 151;
      *(v13 + 8) = 0;
      v45 = 0;
      pthread_threadid_np(0, &v45);
      *(v13 + 1) = v45;
      strcpy(v13 + 36, "Ce");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21AEEF;
      if (byte_21AEEF)
      {
        breakpoint_break(&__ptr, (&stru_68.size + 7), 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 576))(a1, a2);
        v28 = mach_absolute_time() - v27;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v29 = __ptr;
          *(__ptr + 2) = v27;
          v29[3] = v28;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v40 = *(&g_DYTimebaseInfo + 1);
          v41 = __udivti3();
          v42 = __ptr;
          *(__ptr + 3) = v41;
          v42[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v9);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v9 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v9);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), &__ptr);
      v30 = *(v9 + 3404);
      if (v30 && (gBreakOnError & 1) != 0)
      {
        v38 = 3;
        v39 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
        {
LABEL_37:
          v31 = [DYGetGLGuestAppClient() defaultFbufStream];
          v32 = v31;
          while (atomic_exchange(v31 + 14, 1u) == 1)
          {
              ;
            }
          }

          v33 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v32 + 14);
          v34 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v34 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v38 = 2;
        v39 = 151;
      }

      breakpoint_break(&__ptr, v39, v38, v30, v9);
      goto LABEL_37;
    }

    v43 = (v20 - v24 + 255) & 0xFFFFFF00;
    v44 = v43 + v48;
    v48 += v43;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v44);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v43 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_64;
      }
    }

    if ((v21 & 3) == 0)
    {
      v25 = v21 + v22;
      v17 = v25;
      goto LABEL_22;
    }

LABEL_64:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v9 + 24) + 576))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
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
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      enable((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v9 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v13 = *(*(v9 + 24) + 576);

    v13(a1, a2);
  }

  else
  {
    (*(*(v9 + 32) + 576))(a1, a2);
    ++*(v9 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v9);
    }

    add = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v9);
    }
  }
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
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      enable((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v9 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v16 = *(*(v9 + 24) + 576);

    v16(a1, a2);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 576))(a1, a2);
    v13 = mach_absolute_time();
    v14 = vdupq_n_s64(1uLL);
    v14.i64[0] = v13 - v12;
    *(v9 + 3696) = vaddq_s64(v14, *(v9 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v9);
    }

    add = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v9);
    }
  }
}

void sub_28C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void enable_client_state(__GLIContextRec *a1, uint64_t a2)
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
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_49:
      enable_client_state((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v47 = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v47;
    v14 = v47 - __ptr;
    v15 = v48;
    v16 = v48 - (v47 - __ptr);
    if (v16 <= 0x33)
    {
      v37 = (307 - v16) & 0x100;
      v48 += v37;
      v13 = malloc_type_malloc(v37 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13 || (v13 & 3) != 0)
      {
        goto LABEL_64;
      }

      v12 = &v13[v14];
    }

    *(v12 + 12) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 52;
    v47 = v12 + 52;
    v18 = v12 + 52 - v13;
    *v13 = v18;
    v19 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v19 - v18;
    if (v19 == v18)
    {
      goto LABEL_23;
    }

    v21 = __ptr;
    v22 = v17 - __ptr;
    v23 = v48;
    v24 = v48 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v47;
LABEL_22:
      bzero(v17, v20);
      v47 = &v25[v20];
      *v21 += v20;
LABEL_23:
      *(v13 + 1) = 152;
      *(v13 + 8) = 0;
      v45 = 0;
      pthread_threadid_np(0, &v45);
      *(v13 + 1) = v45;
      strcpy(v13 + 36, "Ce");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21AEF0;
      if (byte_21AEF0)
      {
        breakpoint_break(&__ptr, &stru_68.offset, 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 584))(a1, a2);
        v28 = mach_absolute_time() - v27;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v29 = __ptr;
          *(__ptr + 2) = v27;
          v29[3] = v28;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v40 = *(&g_DYTimebaseInfo + 1);
          v41 = __udivti3();
          v42 = __ptr;
          *(__ptr + 3) = v41;
          v42[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v9);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v9 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v9);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), &__ptr);
      v30 = *(v9 + 3404);
      if (v30 && (gBreakOnError & 1) != 0)
      {
        v38 = 3;
        v39 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
        {
LABEL_37:
          v31 = [DYGetGLGuestAppClient() defaultFbufStream];
          v32 = v31;
          while (atomic_exchange(v31 + 14, 1u) == 1)
          {
              ;
            }
          }

          v33 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v32 + 14);
          v34 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v34 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v38 = 2;
        v39 = 152;
      }

      breakpoint_break(&__ptr, v39, v38, v30, v9);
      goto LABEL_37;
    }

    v43 = (v20 - v24 + 255) & 0xFFFFFF00;
    v44 = v43 + v48;
    v48 += v43;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v44);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v43 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_64;
      }
    }

    if ((v21 & 3) == 0)
    {
      v25 = v21 + v22;
      v17 = v25;
      goto LABEL_22;
    }

LABEL_64:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v9 + 24) + 584))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
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
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_49:
      enable_client_state((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v47 = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v47;
    v14 = v47 - __ptr;
    v15 = v48;
    v16 = v48 - (v47 - __ptr);
    if (v16 <= 0x33)
    {
      v37 = (307 - v16) & 0x100;
      v48 += v37;
      v13 = malloc_type_malloc(v37 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13 || (v13 & 3) != 0)
      {
        goto LABEL_64;
      }

      v12 = &v13[v14];
    }

    *(v12 + 12) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 52;
    v47 = v12 + 52;
    v18 = v12 + 52 - v13;
    *v13 = v18;
    v19 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v19 - v18;
    if (v19 == v18)
    {
      goto LABEL_23;
    }

    v21 = __ptr;
    v22 = v17 - __ptr;
    v23 = v48;
    v24 = v48 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v47;
LABEL_22:
      bzero(v17, v20);
      v47 = &v25[v20];
      *v21 += v20;
LABEL_23:
      *(v13 + 1) = 152;
      *(v13 + 8) = 0;
      v45 = 0;
      pthread_threadid_np(0, &v45);
      *(v13 + 1) = v45;
      strcpy(v13 + 36, "Ce");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21AEF0;
      if (byte_21AEF0)
      {
        breakpoint_break(&__ptr, &stru_68.offset, 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 584))(a1, a2);
        v28 = mach_absolute_time() - v27;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v29 = __ptr;
          *(__ptr + 2) = v27;
          v29[3] = v28;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v40 = *(&g_DYTimebaseInfo + 1);
          v41 = __udivti3();
          v42 = __ptr;
          *(__ptr + 3) = v41;
          v42[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v9);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v9 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v9);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), &__ptr);
      v30 = *(v9 + 3404);
      if (v30 && (gBreakOnError & 1) != 0)
      {
        v38 = 3;
        v39 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
        {
LABEL_37:
          v31 = [DYGetGLGuestAppClient() defaultFbufStream];
          v32 = v31;
          while (atomic_exchange(v31 + 14, 1u) == 1)
          {
              ;
            }
          }

          v33 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v32 + 14);
          v34 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v34 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v38 = 2;
        v39 = 152;
      }

      breakpoint_break(&__ptr, v39, v38, v30, v9);
      goto LABEL_37;
    }

    v43 = (v20 - v24 + 255) & 0xFFFFFF00;
    v44 = v43 + v48;
    v48 += v43;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v44);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v43 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_64;
      }
    }

    if ((v21 & 3) == 0)
    {
      v25 = v21 + v22;
      v17 = v25;
      goto LABEL_22;
    }

LABEL_64:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v9 + 24) + 584))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
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
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      enable_client_state((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v9 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v13 = *(*(v9 + 24) + 584);

    v13(a1, a2);
  }

  else
  {
    (*(*(v9 + 32) + 584))(a1, a2);
    ++*(v9 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v9);
    }

    add = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v9);
    }
  }
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
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      enable_client_state((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v9 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v16 = *(*(v9 + 24) + 584);

    v16(a1, a2);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 584))(a1, a2);
    v13 = mach_absolute_time();
    v14 = vdupq_n_s64(1uLL);
    v14.i64[0] = v13 - v12;
    *(v9 + 3696) = vaddq_s64(v14, *(v9 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v9);
    }

    add = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v9);
    }
  }
}

void sub_29154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void finish(__GLIContextRec *a1)
{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v8 = atomic_fetch_add((v7 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v8 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_49:
      finish((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v7 + 4838) = 1;
  __ptr = 0;
  v45 = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v11 = __ptr;
    v10 = v45;
    v12 = v45 - __ptr;
    v13 = v46;
    v14 = v46 - (v45 - __ptr);
    if (v14 <= 0x2F)
    {
      v35 = (303 - v14) & 0x100;
      v46 += v35;
      v11 = malloc_type_malloc(v35 + v13, 0xF962E99uLL);
      __ptr = v11;
      if (!v11 || (v11 & 3) != 0)
      {
        goto LABEL_64;
      }

      v10 = v11 + v12;
    }

    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    v15 = v10 + 48;
    v45 = v10 + 48;
    v16 = v10 + 48 - v11;
    *v11 = v16;
    v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v17 - v16;
    if (v17 == v16)
    {
      goto LABEL_23;
    }

    v19 = __ptr;
    v20 = v15 - __ptr;
    v21 = v46;
    v22 = v46 - (v15 - __ptr);
    if (v18 <= v22)
    {
      v23 = v45;
LABEL_22:
      bzero(v15, v18);
      v45 = &v23[v18];
      *v19 += v18;
LABEL_23:
      v11[1] = 175;
      v11[8] = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v11 + 1) = v43;
      *(v11 + 18) = 67;
      *(v11 + 5) = *v7;
      v24 = byte_21AF07;
      if (byte_21AF07)
      {
        breakpoint_break(&__ptr, (&stru_68.reserved1 + 3), 1, *(v7 + 3404), v7);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
      {
        v25 = mach_absolute_time();
        (*(*(v7 + 32) + 712))(a1);
        v26 = mach_absolute_time() - v25;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v27 = __ptr;
          *(__ptr + 2) = v25;
          v27[3] = v26;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v38 = *(&g_DYTimebaseInfo + 1);
          v39 = __udivti3();
          v40 = __ptr;
          *(__ptr + 3) = v39;
          v40[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v7);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v7 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v7);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v7 + 3480), (v7 + 3520), &__ptr);
      v28 = *(v7 + 3404);
      if (v28 && (gBreakOnError & 1) != 0)
      {
        v36 = 3;
        v37 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v24 & 2) == 0)
        {
LABEL_37:
          v29 = [DYGetGLGuestAppClient() defaultFbufStream];
          v30 = v29;
          while (atomic_exchange(v29 + 14, 1u) == 1)
          {
              ;
            }
          }

          v31 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v30 + 14);
          v32 = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v32 >= 1)
          {
            handle_opengl_thread_conflict(v7);
          }

          goto LABEL_45;
        }

        v36 = 2;
        v37 = 175;
      }

      breakpoint_break(&__ptr, v37, v36, v28, v7);
      goto LABEL_37;
    }

    v41 = (v18 - v22 + 255) & 0xFFFFFF00;
    v42 = v41 + v46;
    v46 += v41;
    if (__ptr)
    {
      v19 = reallocf(__ptr, v42);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v19 = malloc_type_malloc(v41 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_64;
      }
    }

    if ((v19 & 3) == 0)
    {
      v23 = v19 + v20;
      v15 = v23;
      goto LABEL_22;
    }

LABEL_64:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v7 + 24) + 712))(a1);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v8 = atomic_fetch_add((v7 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v8 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_49:
      finish((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v7 + 4838) = 1;
  __ptr = 0;
  v45 = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v11 = __ptr;
    v10 = v45;
    v12 = v45 - __ptr;
    v13 = v46;
    v14 = v46 - (v45 - __ptr);
    if (v14 <= 0x2F)
    {
      v35 = (303 - v14) & 0x100;
      v46 += v35;
      v11 = malloc_type_malloc(v35 + v13, 0xF962E99uLL);
      __ptr = v11;
      if (!v11 || (v11 & 3) != 0)
      {
        goto LABEL_64;
      }

      v10 = v11 + v12;
    }

    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    v15 = v10 + 48;
    v45 = v10 + 48;
    v16 = v10 + 48 - v11;
    *v11 = v16;
    v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v17 - v16;
    if (v17 == v16)
    {
      goto LABEL_23;
    }

    v19 = __ptr;
    v20 = v15 - __ptr;
    v21 = v46;
    v22 = v46 - (v15 - __ptr);
    if (v18 <= v22)
    {
      v23 = v45;
LABEL_22:
      bzero(v15, v18);
      v45 = &v23[v18];
      *v19 += v18;
LABEL_23:
      v11[1] = 175;
      v11[8] = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v11 + 1) = v43;
      *(v11 + 18) = 67;
      *(v11 + 5) = *v7;
      v24 = byte_21AF07;
      if (byte_21AF07)
      {
        breakpoint_break(&__ptr, (&stru_68.reserved1 + 3), 1, *(v7 + 3404), v7);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
      {
        v25 = mach_absolute_time();
        (*(*(v7 + 32) + 712))(a1);
        v26 = mach_absolute_time() - v25;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v27 = __ptr;
          *(__ptr + 2) = v25;
          v27[3] = v26;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v38 = *(&g_DYTimebaseInfo + 1);
          v39 = __udivti3();
          v40 = __ptr;
          *(__ptr + 3) = v39;
          v40[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v7);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v7 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v7);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v7 + 3480), (v7 + 3520), &__ptr);
      v28 = *(v7 + 3404);
      if (v28 && (gBreakOnError & 1) != 0)
      {
        v36 = 3;
        v37 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v24 & 2) == 0)
        {
LABEL_37:
          v29 = [DYGetGLGuestAppClient() defaultFbufStream];
          v30 = v29;
          while (atomic_exchange(v29 + 14, 1u) == 1)
          {
              ;
            }
          }

          v31 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v30 + 14);
          v32 = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v32 >= 1)
          {
            handle_opengl_thread_conflict(v7);
          }

          goto LABEL_45;
        }

        v36 = 2;
        v37 = 175;
      }

      breakpoint_break(&__ptr, v37, v36, v28, v7);
      goto LABEL_37;
    }

    v41 = (v18 - v22 + 255) & 0xFFFFFF00;
    v42 = v41 + v46;
    v46 += v41;
    if (__ptr)
    {
      v19 = reallocf(__ptr, v42);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v19 = malloc_type_malloc(v41 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_64;
      }
    }

    if ((v19 & 3) == 0)
    {
      v23 = v19 + v20;
      v15 = v23;
      goto LABEL_22;
    }

LABEL_64:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v7 + 24) + 712))(a1);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v8 = atomic_fetch_add((v7 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v8 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      finish((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v7 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    finish((v7 + 4640));
  }

  else
  {
    (*(*(v7 + 32) + 712))(a1);
    ++*(v7 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v7);
    }

    add = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v7);
    }
  }
}

{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v8 = atomic_fetch_add((v7 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v8 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      finish((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v7 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    finish((v7 + 4640));
  }

  else
  {
    v10 = mach_absolute_time();
    (*(*(v7 + 32) + 712))(a1);
    v11 = mach_absolute_time();
    v12 = vdupq_n_s64(1uLL);
    v12.i64[0] = v11 - v10;
    *(v7 + 3696) = vaddq_s64(v12, *(v7 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v7);
    }

    add = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v7);
    }
  }
}

void sub_29688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void flush(__GLIContextRec *a1)
{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v8 = atomic_fetch_add((v7 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v8 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_49:
      flush((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v7 + 4838) = 1;
  __ptr = 0;
  v45 = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v11 = __ptr;
    v10 = v45;
    v12 = v45 - __ptr;
    v13 = v46;
    v14 = v46 - (v45 - __ptr);
    if (v14 <= 0x2F)
    {
      v35 = (303 - v14) & 0x100;
      v46 += v35;
      v11 = malloc_type_malloc(v35 + v13, 0xF962E99uLL);
      __ptr = v11;
      if (!v11 || (v11 & 3) != 0)
      {
        goto LABEL_64;
      }

      v10 = v11 + v12;
    }

    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    v15 = v10 + 48;
    v45 = v10 + 48;
    v16 = v10 + 48 - v11;
    *v11 = v16;
    v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v17 - v16;
    if (v17 == v16)
    {
      goto LABEL_23;
    }

    v19 = __ptr;
    v20 = v15 - __ptr;
    v21 = v46;
    v22 = v46 - (v15 - __ptr);
    if (v18 <= v22)
    {
      v23 = v45;
LABEL_22:
      bzero(v15, v18);
      v45 = &v23[v18];
      *v19 += v18;
LABEL_23:
      v11[1] = 179;
      v11[8] = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v11 + 1) = v43;
      *(v11 + 18) = 67;
      *(v11 + 5) = *v7;
      v24 = byte_21AF0B;
      if (byte_21AF0B)
      {
        breakpoint_break(&__ptr, (&stru_68.reserved2 + 3), 1, *(v7 + 3404), v7);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
      {
        v25 = mach_absolute_time();
        (*(*(v7 + 32) + 720))(a1);
        v26 = mach_absolute_time() - v25;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v27 = __ptr;
          *(__ptr + 2) = v25;
          v27[3] = v26;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v38 = *(&g_DYTimebaseInfo + 1);
          v39 = __udivti3();
          v40 = __ptr;
          *(__ptr + 3) = v39;
          v40[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v7);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v7 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v7);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v7 + 3480), (v7 + 3520), &__ptr);
      v28 = *(v7 + 3404);
      if (v28 && (gBreakOnError & 1) != 0)
      {
        v36 = 3;
        v37 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v24 & 2) == 0)
        {
LABEL_37:
          v29 = [DYGetGLGuestAppClient() defaultFbufStream];
          v30 = v29;
          while (atomic_exchange(v29 + 14, 1u) == 1)
          {
              ;
            }
          }

          v31 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v30 + 14);
          v32 = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v32 >= 1)
          {
            handle_opengl_thread_conflict(v7);
          }

          goto LABEL_45;
        }

        v36 = 2;
        v37 = 179;
      }

      breakpoint_break(&__ptr, v37, v36, v28, v7);
      goto LABEL_37;
    }

    v41 = (v18 - v22 + 255) & 0xFFFFFF00;
    v42 = v41 + v46;
    v46 += v41;
    if (__ptr)
    {
      v19 = reallocf(__ptr, v42);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v19 = malloc_type_malloc(v41 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_64;
      }
    }

    if ((v19 & 3) == 0)
    {
      v23 = v19 + v20;
      v15 = v23;
      goto LABEL_22;
    }

LABEL_64:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v7 + 24) + 720))(a1);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v8 = atomic_fetch_add((v7 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v8 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_49:
      flush((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v7 + 4838) = 1;
  __ptr = 0;
  v45 = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v11 = __ptr;
    v10 = v45;
    v12 = v45 - __ptr;
    v13 = v46;
    v14 = v46 - (v45 - __ptr);
    if (v14 <= 0x2F)
    {
      v35 = (303 - v14) & 0x100;
      v46 += v35;
      v11 = malloc_type_malloc(v35 + v13, 0xF962E99uLL);
      __ptr = v11;
      if (!v11 || (v11 & 3) != 0)
      {
        goto LABEL_64;
      }

      v10 = v11 + v12;
    }

    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    v15 = v10 + 48;
    v45 = v10 + 48;
    v16 = v10 + 48 - v11;
    *v11 = v16;
    v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v17 - v16;
    if (v17 == v16)
    {
      goto LABEL_23;
    }

    v19 = __ptr;
    v20 = v15 - __ptr;
    v21 = v46;
    v22 = v46 - (v15 - __ptr);
    if (v18 <= v22)
    {
      v23 = v45;
LABEL_22:
      bzero(v15, v18);
      v45 = &v23[v18];
      *v19 += v18;
LABEL_23:
      v11[1] = 179;
      v11[8] = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v11 + 1) = v43;
      *(v11 + 18) = 67;
      *(v11 + 5) = *v7;
      v24 = byte_21AF0B;
      if (byte_21AF0B)
      {
        breakpoint_break(&__ptr, (&stru_68.reserved2 + 3), 1, *(v7 + 3404), v7);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
      {
        v25 = mach_absolute_time();
        (*(*(v7 + 32) + 720))(a1);
        v26 = mach_absolute_time() - v25;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v27 = __ptr;
          *(__ptr + 2) = v25;
          v27[3] = v26;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v38 = *(&g_DYTimebaseInfo + 1);
          v39 = __udivti3();
          v40 = __ptr;
          *(__ptr + 3) = v39;
          v40[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v7);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v7 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v7);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v7 + 3480), (v7 + 3520), &__ptr);
      v28 = *(v7 + 3404);
      if (v28 && (gBreakOnError & 1) != 0)
      {
        v36 = 3;
        v37 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v24 & 2) == 0)
        {
LABEL_37:
          v29 = [DYGetGLGuestAppClient() defaultFbufStream];
          v30 = v29;
          while (atomic_exchange(v29 + 14, 1u) == 1)
          {
              ;
            }
          }

          v31 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v30 + 14);
          v32 = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v32 >= 1)
          {
            handle_opengl_thread_conflict(v7);
          }

          goto LABEL_45;
        }

        v36 = 2;
        v37 = 179;
      }

      breakpoint_break(&__ptr, v37, v36, v28, v7);
      goto LABEL_37;
    }

    v41 = (v18 - v22 + 255) & 0xFFFFFF00;
    v42 = v41 + v46;
    v46 += v41;
    if (__ptr)
    {
      v19 = reallocf(__ptr, v42);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v19 = malloc_type_malloc(v41 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_64;
      }
    }

    if ((v19 & 3) == 0)
    {
      v23 = v19 + v20;
      v15 = v23;
      goto LABEL_22;
    }

LABEL_64:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v7 + 24) + 720))(a1);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v8 = atomic_fetch_add((v7 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v8 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      flush((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v7 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    flush((v7 + 4640));
  }

  else
  {
    (*(*(v7 + 32) + 720))(a1);
    ++*(v7 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v7);
    }

    add = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v7);
    }
  }
}

{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v8 = atomic_fetch_add((v7 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v8 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      flush((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v7 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    flush((v7 + 4640));
  }

  else
  {
    v10 = mach_absolute_time();
    (*(*(v7 + 32) + 720))(a1);
    v11 = mach_absolute_time();
    v12 = vdupq_n_s64(1uLL);
    v12.i64[0] = v11 - v10;
    *(v7 + 3696) = vaddq_s64(v12, *(v7 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v7);
    }

    add = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v7);
    }
  }
}

void sub_29BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void fogf(__GLIContextRec *a1, uint64_t a2, float a3)
{
  if (a2 == 33872 || a2 == 2917)
  {
    v7 = "Cen";
  }

  else
  {
    v7 = "Cef";
  }

  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_15;
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
LABEL_15:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v30 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v30 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v31 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v31, 0, do_nothing);
      v32 = *(*(v13 + 24) + 728);
      v33.n128_f32[0] = a3;

      v32(a1, a2, v33);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v39, 188, 0, v7, v16, v17, v18, v19, *v13);
    v20 = byte_21AF14;
    if (byte_21AF14)
    {
      breakpoint_break(v39, &stru_B8.sectname[4], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v21 = mach_absolute_time();
      (*(*(v13 + 32) + 728))(a1, a2, a3);
      v22 = mach_absolute_time() - v21;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v23 = v39[0];
        *(v39[0] + 2) = v21;
        v23[3] = v22;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v36 = *(&g_DYTimebaseInfo + 1);
        v37 = __udivti3();
        v38 = v39[0];
        *(v39[0] + 3) = v37;
        v38[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_29;
        }
      }

      check_errors(v13);
    }

LABEL_29:
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v39);
    v24 = *(v13 + 3404);
    if (v24 && (gBreakOnError & 1) != 0)
    {
      v34 = 3;
      v35 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v20 & 2) == 0)
      {
LABEL_38:
        v25 = [DYGetGLGuestAppClient() defaultFbufStream];
        v26 = v25;
        while (atomic_exchange(v25 + 14, 1u) == 1)
        {
            ;
          }
        }

        v27 = *v39[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v26 + 14);
        v28 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v28 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_46;
      }

      v34 = 2;
      v35 = 188;
    }

    breakpoint_break(v39, v35, v34, v24, v13);
    goto LABEL_38;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 728))(a1, a2, a3);
LABEL_46:
  if (v39[0])
  {
    free(v39[0]);
  }
}

{
  if (a2 == 33872 || a2 == 2917)
  {
    v7 = "Cen";
  }

  else
  {
    v7 = "Cef";
  }

  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_15;
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
LABEL_15:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v30 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v30 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v31 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v31, 0, do_nothing);
      v32 = *(*(v13 + 24) + 728);
      v33.n128_f32[0] = a3;

      v32(a1, a2, v33);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v39, 188, 0, v7, v16, v17, v18, v19, *v13);
    v20 = byte_21AF14;
    if (byte_21AF14)
    {
      breakpoint_break(v39, &stru_B8.sectname[4], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v21 = mach_absolute_time();
      (*(*(v13 + 32) + 728))(a1, a2, a3);
      v22 = mach_absolute_time() - v21;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v23 = v39[0];
        *(v39[0] + 2) = v21;
        v23[3] = v22;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v36 = *(&g_DYTimebaseInfo + 1);
        v37 = __udivti3();
        v38 = v39[0];
        *(v39[0] + 3) = v37;
        v38[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_29;
        }
      }

      check_errors(v13);
    }

LABEL_29:
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v39);
    v24 = *(v13 + 3404);
    if (v24 && (gBreakOnError & 1) != 0)
    {
      v34 = 3;
      v35 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v20 & 2) == 0)
      {
LABEL_38:
        v25 = [DYGetGLGuestAppClient() defaultFbufStream];
        v26 = v25;
        while (atomic_exchange(v25 + 14, 1u) == 1)
        {
            ;
          }
        }

        v27 = *v39[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v26 + 14);
        v28 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v28 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_46;
      }

      v34 = 2;
      v35 = 188;
    }

    breakpoint_break(v39, v35, v34, v24, v13);
    goto LABEL_38;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 728))(a1, a2, a3);
LABEL_46:
  if (v39[0])
  {
    free(v39[0]);
  }
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
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v15 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v15, 0, do_nothing);
LABEL_29:
      v17 = *(*(v11 + 24) + 728);
      v16.n128_f32[0] = a3;

      v17(a1, a2, v16);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v11 + 32) + 728))(a1, a2, a3);
  ++*(v11 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v11);
  }
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
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v18, 0, do_nothing);
LABEL_29:
      v20 = *(*(v11 + 24) + 728);
      v19.n128_f32[0] = a3;

      v20(a1, a2, v19);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v14 = mach_absolute_time();
  (*(*(v11 + 32) + 728))(a1, a2, a3);
  v15 = mach_absolute_time();
  v16 = vdupq_n_s64(1uLL);
  v16.i64[0] = v15 - v14;
  *(v11 + 3696) = vaddq_s64(v16, *(v11 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v11);
  }
}

void sub_2A020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void fogfv(__GLIContextRec *a1, GPUTools::GL *a2, const float *a3)
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
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v11 + 24) + 736);

      v34(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = GPUTools::GL::dy_fog_param_component_count(a2, v14);
    snprintf((v11 + 4709), 0x40uLL, "Ce@%d", v15);
    if (a2 == 33872 || a2 == 2917)
    {
      v17 = "n";
    }

    else
    {
      v17 = "f";
    }

    strlcat((v11 + 4709), v17, 0x40uLL);
    GPUTools::FB::Encode(v40, 189, 0, v11 + 4709, v18, v19, v20, v21, *v11);
    v22 = byte_21AF15;
    if (byte_21AF15)
    {
      breakpoint_break(v40, &stru_B8.sectname[5], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(*(v11 + 32) + 736))(a1, a2, a3);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v40[0];
        *(v40[0] + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_29;
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
          goto LABEL_29;
        }
      }

      check_errors(v11);
    }

LABEL_29:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v40);
    v26 = *(v11 + 3404);
    if (v26 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_38:
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
        v30 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_46;
      }

      v35 = 2;
      v36 = 189;
    }

    breakpoint_break(v40, v36, v35, v26, v11);
    goto LABEL_38;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 736))(a1, a2, a3);
LABEL_46:
  if (v40[0])
  {
    free(v40[0]);
  }
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
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v11 + 24) + 736);

      v34(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = GPUTools::GL::dy_fog_param_component_count(a2, v14);
    snprintf((v11 + 4709), 0x40uLL, "Ce@%d", v15);
    if (a2 == 33872 || a2 == 2917)
    {
      v17 = "n";
    }

    else
    {
      v17 = "f";
    }

    strlcat((v11 + 4709), v17, 0x40uLL);
    GPUTools::FB::Encode(v40, 189, 0, v11 + 4709, v18, v19, v20, v21, *v11);
    v22 = byte_21AF15;
    if (byte_21AF15)
    {
      breakpoint_break(v40, &stru_B8.sectname[5], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(*(v11 + 32) + 736))(a1, a2, a3);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v40[0];
        *(v40[0] + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_29;
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
          goto LABEL_29;
        }
      }

      check_errors(v11);
    }

LABEL_29:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v40);
    v26 = *(v11 + 3404);
    if (v26 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_38:
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
        v30 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_46;
      }

      v35 = 2;
      v36 = 189;
    }

    breakpoint_break(v40, v36, v35, v26, v11);
    goto LABEL_38;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 736))(a1, a2, a3);
LABEL_46:
  if (v40[0])
  {
    free(v40[0]);
  }
}

void sub_2A49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void front_face(__GLIContextRec *a1, uint64_t a2)
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
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_49:
      front_face((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v47 = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v47;
    v14 = v47 - __ptr;
    v15 = v48;
    v16 = v48 - (v47 - __ptr);
    if (v16 <= 0x33)
    {
      v37 = (307 - v16) & 0x100;
      v48 += v37;
      v13 = malloc_type_malloc(v37 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13 || (v13 & 3) != 0)
      {
        goto LABEL_64;
      }

      v12 = &v13[v14];
    }

    *(v12 + 12) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 52;
    v47 = v12 + 52;
    v18 = v12 + 52 - v13;
    *v13 = v18;
    v19 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v19 - v18;
    if (v19 == v18)
    {
      goto LABEL_23;
    }

    v21 = __ptr;
    v22 = v17 - __ptr;
    v23 = v48;
    v24 = v48 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v47;
LABEL_22:
      bzero(v17, v20);
      v47 = &v25[v20];
      *v21 += v20;
LABEL_23:
      *(v13 + 1) = 199;
      *(v13 + 8) = 0;
      v45 = 0;
      pthread_threadid_np(0, &v45);
      *(v13 + 1) = v45;
      strcpy(v13 + 36, "Ce");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21AF1F;
      if (byte_21AF1F)
      {
        breakpoint_break(&__ptr, &stru_B8.sectname[15], 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 760))(a1, a2);
        v28 = mach_absolute_time() - v27;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v29 = __ptr;
          *(__ptr + 2) = v27;
          v29[3] = v28;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v40 = *(&g_DYTimebaseInfo + 1);
          v41 = __udivti3();
          v42 = __ptr;
          *(__ptr + 3) = v41;
          v42[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v9);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v9 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v9);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), &__ptr);
      v30 = *(v9 + 3404);
      if (v30 && (gBreakOnError & 1) != 0)
      {
        v38 = 3;
        v39 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
        {
LABEL_37:
          v31 = [DYGetGLGuestAppClient() defaultFbufStream];
          v32 = v31;
          while (atomic_exchange(v31 + 14, 1u) == 1)
          {
              ;
            }
          }

          v33 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v32 + 14);
          v34 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v34 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v38 = 2;
        v39 = 199;
      }

      breakpoint_break(&__ptr, v39, v38, v30, v9);
      goto LABEL_37;
    }

    v43 = (v20 - v24 + 255) & 0xFFFFFF00;
    v44 = v43 + v48;
    v48 += v43;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v44);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v43 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_64;
      }
    }

    if ((v21 & 3) == 0)
    {
      v25 = v21 + v22;
      v17 = v25;
      goto LABEL_22;
    }

LABEL_64:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v9 + 24) + 760))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
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
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_49:
      front_face((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v47 = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v47;
    v14 = v47 - __ptr;
    v15 = v48;
    v16 = v48 - (v47 - __ptr);
    if (v16 <= 0x33)
    {
      v37 = (307 - v16) & 0x100;
      v48 += v37;
      v13 = malloc_type_malloc(v37 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13 || (v13 & 3) != 0)
      {
        goto LABEL_64;
      }

      v12 = &v13[v14];
    }

    *(v12 + 12) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 52;
    v47 = v12 + 52;
    v18 = v12 + 52 - v13;
    *v13 = v18;
    v19 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v19 - v18;
    if (v19 == v18)
    {
      goto LABEL_23;
    }

    v21 = __ptr;
    v22 = v17 - __ptr;
    v23 = v48;
    v24 = v48 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v47;
LABEL_22:
      bzero(v17, v20);
      v47 = &v25[v20];
      *v21 += v20;
LABEL_23:
      *(v13 + 1) = 199;
      *(v13 + 8) = 0;
      v45 = 0;
      pthread_threadid_np(0, &v45);
      *(v13 + 1) = v45;
      strcpy(v13 + 36, "Ce");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21AF1F;
      if (byte_21AF1F)
      {
        breakpoint_break(&__ptr, &stru_B8.sectname[15], 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 760))(a1, a2);
        v28 = mach_absolute_time() - v27;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v29 = __ptr;
          *(__ptr + 2) = v27;
          v29[3] = v28;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v40 = *(&g_DYTimebaseInfo + 1);
          v41 = __udivti3();
          v42 = __ptr;
          *(__ptr + 3) = v41;
          v42[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v9);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v9 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v9);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), &__ptr);
      v30 = *(v9 + 3404);
      if (v30 && (gBreakOnError & 1) != 0)
      {
        v38 = 3;
        v39 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
        {
LABEL_37:
          v31 = [DYGetGLGuestAppClient() defaultFbufStream];
          v32 = v31;
          while (atomic_exchange(v31 + 14, 1u) == 1)
          {
              ;
            }
          }

          v33 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v32 + 14);
          v34 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v34 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v38 = 2;
        v39 = 199;
      }

      breakpoint_break(&__ptr, v39, v38, v30, v9);
      goto LABEL_37;
    }

    v43 = (v20 - v24 + 255) & 0xFFFFFF00;
    v44 = v43 + v48;
    v48 += v43;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v44);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v43 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_64;
      }
    }

    if ((v21 & 3) == 0)
    {
      v25 = v21 + v22;
      v17 = v25;
      goto LABEL_22;
    }

LABEL_64:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v9 + 24) + 760))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
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
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      front_face((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v9 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v13 = *(*(v9 + 24) + 760);

    v13(a1, a2);
  }

  else
  {
    (*(*(v9 + 32) + 760))(a1, a2);
    ++*(v9 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v9);
    }

    add = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v9);
    }
  }
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
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      front_face((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v9 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v16 = *(*(v9 + 24) + 760);

    v16(a1, a2);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 760))(a1, a2);
    v13 = mach_absolute_time();
    v14 = vdupq_n_s64(1uLL);
    v14.i64[0] = v13 - v12;
    *(v9 + 3696) = vaddq_s64(v14, *(v9 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v9);
    }

    add = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v9);
    }
  }
}

void sub_2A9E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void gen_textures(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
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
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_46:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v11 + 24) + 784);

      v36(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    snprintf((v11 + 4709), 0x40uLL, "Ci@%dui", a2);
    GPUTools::FB::Encode(&v43, 208, v11 + 4709, v14, v15, v16, v17, v18, *v11);
    v19 = byte_21AF28;
    if (byte_21AF28)
    {
      breakpoint_break(&v43, &stru_B8.segname[8], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v11 + 32) + 784))(a1, a2, a3);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43;
        *(v43 + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v39 = *(&g_DYTimebaseInfo + 1);
        v40 = __udivti3();
        v41 = v43;
        *(v43 + 3) = v40;
        v41[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
    v27 = v43;
    v42 = *(v43 + 1);
    v44 = v43;
    if (v45 >= 0x24)
    {
      *(v43 + 8) = 0;
      *v27 = 0u;
      v27[1] = 0u;
    }

    GPUTools::FB::Encode(&v43, 208, 0, v11 + 4709, v20, v21, v22, v23, *v11);
    *(v43 + 1) = v42;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &v43);
    v28 = *(v11 + 3404);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v19 & 2) == 0)
      {
LABEL_34:
        v29 = [DYGetGLGuestAppClient() defaultFbufStream];
        v30 = v29;
        while (atomic_exchange(v29 + 14, 1u) == 1)
        {
            ;
          }
        }

        v31 = *v43;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        v32 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_42;
      }

      v37 = 2;
      v38 = 208;
    }

    breakpoint_break(&v43, v38, v37, v28, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 784))(a1, a2, a3);
LABEL_42:
  if (v43)
  {
    free(v43);
  }
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
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_46:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v11 + 24) + 784);

      v36(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    snprintf((v11 + 4709), 0x40uLL, "Ci@%dui", a2);
    GPUTools::FB::Encode(&v43, 208, v11 + 4709, v14, v15, v16, v17, v18, *v11);
    v19 = byte_21AF28;
    if (byte_21AF28)
    {
      breakpoint_break(&v43, &stru_B8.segname[8], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v11 + 32) + 784))(a1, a2, a3);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43;
        *(v43 + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v39 = *(&g_DYTimebaseInfo + 1);
        v40 = __udivti3();
        v41 = v43;
        *(v43 + 3) = v40;
        v41[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
    v27 = v43;
    v42 = *(v43 + 1);
    v44 = v43;
    if (v45 >= 0x24)
    {
      *(v43 + 8) = 0;
      *v27 = 0u;
      v27[1] = 0u;
    }

    GPUTools::FB::Encode(&v43, 208, 0, v11 + 4709, v20, v21, v22, v23, *v11);
    *(v43 + 1) = v42;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &v43);
    v28 = *(v11 + 3404);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v19 & 2) == 0)
      {
LABEL_34:
        v29 = [DYGetGLGuestAppClient() defaultFbufStream];
        v30 = v29;
        while (atomic_exchange(v29 + 14, 1u) == 1)
        {
            ;
          }
        }

        v31 = *v43;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        v32 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_42;
      }

      v37 = 2;
      v38 = 208;
    }

    breakpoint_break(&v43, v38, v37, v28, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 784))(a1, a2, a3);
LABEL_42:
  if (v43)
  {
    free(v43);
  }
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
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v15 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v15, 0, do_nothing);
LABEL_29:
      v16 = *(*(v11 + 24) + 784);

      v16(a1, a2, a3);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v11 + 32) + 784))(a1, a2, a3);
  ++*(v11 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v11);
  }
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
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v18, 0, do_nothing);
LABEL_29:
      v19 = *(*(v11 + 24) + 784);

      v19(a1, a2, a3);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v14 = mach_absolute_time();
  (*(*(v11 + 32) + 784))(a1, a2, a3);
  v15 = mach_absolute_time();
  v16 = vdupq_n_s64(1uLL);
  v16.i64[0] = v15 - v14;
  *(v11 + 3696) = vaddq_s64(v16, *(v11 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v11);
  }
}

void sub_2AE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_BOOLeanv(__GLIContextRec *a1, GPUTools::GL *a2, unsigned __int8 *a3)
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
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_46:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v11 + 24) + 792);

      v36(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v43 = 0;
    GPUTools::GL::DYGetParameterInfo(a2, &v43, 0, v14);
    snprintf((v11 + 4709), 0x40uLL, "Ce@%ub", v43);
    GPUTools::FB::Encode(&v44, 217, 256, v11 + 4709, v15, v16, v17, v18, *v11);
    v19 = byte_21AF31;
    if (byte_21AF31)
    {
      breakpoint_break(&v44, (&stru_B8.addr + 1), 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v11 + 32) + 792))(a1, a2, a3);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v44;
        *(v44 + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v39 = *(&g_DYTimebaseInfo + 1);
        v40 = __udivti3();
        v41 = v44;
        *(v44 + 3) = v40;
        v41[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
    v27 = v44;
    v42 = *(v44 + 1);
    v45 = v44;
    if (v46 >= 0x24)
    {
      *(v44 + 8) = 0;
      *v27 = 0u;
      v27[1] = 0u;
    }

    GPUTools::FB::Encode(&v44, 217, 256, v11 + 4709, v20, v21, v22, v23, *v11);
    *(v44 + 1) = v42;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &v44);
    v28 = *(v11 + 3404);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v19 & 2) == 0)
      {
LABEL_34:
        v29 = [DYGetGLGuestAppClient() defaultFbufStream];
        v30 = v29;
        while (atomic_exchange(v29 + 14, 1u) == 1)
        {
            ;
          }
        }

        v31 = *v44;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        v32 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_42;
      }

      v37 = 2;
      v38 = 217;
    }

    breakpoint_break(&v44, v38, v37, v28, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 792))(a1, a2, a3);
LABEL_42:
  if (v44)
  {
    free(v44);
  }
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
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_46:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v11 + 24) + 792);

      v36(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v43 = 0;
    GPUTools::GL::DYGetParameterInfo(a2, &v43, 0, v14);
    snprintf((v11 + 4709), 0x40uLL, "Ce@%ub", v43);
    GPUTools::FB::Encode(&v44, 217, 256, v11 + 4709, v15, v16, v17, v18, *v11);
    v19 = byte_21AF31;
    if (byte_21AF31)
    {
      breakpoint_break(&v44, (&stru_B8.addr + 1), 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v11 + 32) + 792))(a1, a2, a3);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v44;
        *(v44 + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v39 = *(&g_DYTimebaseInfo + 1);
        v40 = __udivti3();
        v41 = v44;
        *(v44 + 3) = v40;
        v41[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
    v27 = v44;
    v42 = *(v44 + 1);
    v45 = v44;
    if (v46 >= 0x24)
    {
      *(v44 + 8) = 0;
      *v27 = 0u;
      v27[1] = 0u;
    }

    GPUTools::FB::Encode(&v44, 217, 256, v11 + 4709, v20, v21, v22, v23, *v11);
    *(v44 + 1) = v42;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &v44);
    v28 = *(v11 + 3404);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v19 & 2) == 0)
      {
LABEL_34:
        v29 = [DYGetGLGuestAppClient() defaultFbufStream];
        v30 = v29;
        while (atomic_exchange(v29 + 14, 1u) == 1)
        {
            ;
          }
        }

        v31 = *v44;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        v32 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_42;
      }

      v37 = 2;
      v38 = 217;
    }

    breakpoint_break(&v44, v38, v37, v28, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 792))(a1, a2, a3);
LABEL_42:
  if (v44)
  {
    free(v44);
  }
}

void sub_2B34C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t get_error(__GLIContextRec *a1)
{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v8 = atomic_fetch_add((v7 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v8 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    v40 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v40 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
      v41 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v41, 0, do_nothing);
      v42 = *(*(v7 + 24) + 816);

      return v42(a1);
    }
  }

  *(v7 + 4838) = 1;
  __ptr = 0;
  v51 = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v11 = __ptr;
    v10 = v51;
    v12 = v51 - __ptr;
    v13 = v52;
    v14 = v52 - (v51 - __ptr);
    if (v14 <= 0x2F)
    {
      v43 = (303 - v14) & 0x100;
      v52 += v43;
      v11 = malloc_type_malloc(v43 + v13, 0xF962E99uLL);
      __ptr = v11;
      if (!v11 || (v11 & 3) != 0)
      {
        goto LABEL_66;
      }

      v10 = v11 + v12;
    }

    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    v15 = v10 + 48;
    v51 = v10 + 48;
    v16 = v10 + 48 - v11;
    *v11 = v16;
    v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v17 - v16;
    if (v17 == v16)
    {
      goto LABEL_23;
    }

    v19 = __ptr;
    v20 = v15 - __ptr;
    v21 = v52;
    v22 = v52 - (v15 - __ptr);
    if (v18 <= v22)
    {
      v23 = v51;
LABEL_22:
      bzero(v15, v18);
      v51 = &v23[v18];
      *v19 += v18;
LABEL_23:
      v11[1] = 235;
      v11[8] = 256;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v11 + 1) = v49;
      *(v11 + 18) = 67;
      *(v11 + 5) = *v7;
      v24 = byte_21AF43;
      if (byte_21AF43)
      {
        breakpoint_break(&__ptr, (&stru_B8.offset + 3), 1, *(v7 + 3404), v7);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4)
      {
        v30 = 0;
        goto LABEL_30;
      }

      v30 = *(v7 + 3400);
      if (!v30)
      {
        v31 = mach_absolute_time();
        v30 = (*(*(v7 + 32) + 816))(a1);
        v32 = mach_absolute_time() - v31;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v33 = __ptr;
          *(__ptr + 2) = v31;
          v33[3] = v32;
          if (gCheckGLErrors != 1)
          {
LABEL_29:
            GPUTools::FB::Encode(&__ptr, 4294955008, "e", v25, v26, v27, v28, v29, v30);
LABEL_30:
            if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
            {
              GPUTools::FB::EncodeCurrentBacktrace();
            }

            if (*(v7 + 3404))
            {
              GPUTools::FB::EncodeGLError();
            }

            if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
            {
              encode_driver_events(v7);
            }

            GPUTools::FB::EncodeThreadQueueInfo((v7 + 3480), (v7 + 3520), &__ptr);
            if ((v24 & 2) != 0)
            {
              breakpoint_break(&__ptr, (&stru_B8.offset + 3), 2, *(v7 + 3404), v7);
            }

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
            v37 = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF) - 1;
            if (gCheckGLErrors == 1 && v37 >= 1)
            {
              handle_opengl_thread_conflict(v7);
            }

            goto LABEL_46;
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
            goto LABEL_29;
          }
        }

        check_errors(v7);
        goto LABEL_29;
      }

      *(v7 + 3400) = 0;
      goto LABEL_29;
    }

    v47 = (v18 - v22 + 255) & 0xFFFFFF00;
    v48 = v47 + v52;
    v52 += v47;
    if (__ptr)
    {
      v19 = reallocf(__ptr, v48);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v19 = malloc_type_malloc(v47 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_66;
      }
    }

    if ((v19 & 3) == 0)
    {
      v23 = v19 + v20;
      v15 = v23;
      goto LABEL_22;
    }

LABEL_66:
    result = dy_abort();
    __break(1u);
    return result;
  }

  atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v30 = (*(*(v7 + 24) + 816))(a1);
LABEL_46:
  if (__ptr)
  {
    free(__ptr);
  }

  return v30;
}

{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v8 = atomic_fetch_add((v7 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v8 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    v40 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v40 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
      v41 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v41, 0, do_nothing);
      v42 = *(*(v7 + 24) + 816);

      return v42(a1);
    }
  }

  *(v7 + 4838) = 1;
  __ptr = 0;
  v51 = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v11 = __ptr;
    v10 = v51;
    v12 = v51 - __ptr;
    v13 = v52;
    v14 = v52 - (v51 - __ptr);
    if (v14 <= 0x2F)
    {
      v43 = (303 - v14) & 0x100;
      v52 += v43;
      v11 = malloc_type_malloc(v43 + v13, 0xF962E99uLL);
      __ptr = v11;
      if (!v11 || (v11 & 3) != 0)
      {
        goto LABEL_66;
      }

      v10 = v11 + v12;
    }

    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    v15 = v10 + 48;
    v51 = v10 + 48;
    v16 = v10 + 48 - v11;
    *v11 = v16;
    v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v17 - v16;
    if (v17 == v16)
    {
      goto LABEL_23;
    }

    v19 = __ptr;
    v20 = v15 - __ptr;
    v21 = v52;
    v22 = v52 - (v15 - __ptr);
    if (v18 <= v22)
    {
      v23 = v51;
LABEL_22:
      bzero(v15, v18);
      v51 = &v23[v18];
      *v19 += v18;
LABEL_23:
      v11[1] = 235;
      v11[8] = 256;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v11 + 1) = v49;
      *(v11 + 18) = 67;
      *(v11 + 5) = *v7;
      v24 = byte_21AF43;
      if (byte_21AF43)
      {
        breakpoint_break(&__ptr, (&stru_B8.offset + 3), 1, *(v7 + 3404), v7);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4)
      {
        v30 = 0;
        goto LABEL_30;
      }

      v30 = *(v7 + 3400);
      if (!v30)
      {
        v31 = mach_absolute_time();
        v30 = (*(*(v7 + 32) + 816))(a1);
        v32 = mach_absolute_time() - v31;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v33 = __ptr;
          *(__ptr + 2) = v31;
          v33[3] = v32;
          if (gCheckGLErrors != 1)
          {
LABEL_29:
            GPUTools::FB::Encode(&__ptr, 4294955008, "e", v25, v26, v27, v28, v29, v30);
LABEL_30:
            if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
            {
              GPUTools::FB::EncodeCurrentBacktrace();
            }

            if (*(v7 + 3404))
            {
              GPUTools::FB::EncodeGLError();
            }

            if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
            {
              encode_driver_events(v7);
            }

            GPUTools::FB::EncodeThreadQueueInfo((v7 + 3480), (v7 + 3520), &__ptr);
            if ((v24 & 2) != 0)
            {
              breakpoint_break(&__ptr, (&stru_B8.offset + 3), 2, *(v7 + 3404), v7);
            }

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
            v37 = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF) - 1;
            if (gCheckGLErrors == 1 && v37 >= 1)
            {
              handle_opengl_thread_conflict(v7);
            }

            goto LABEL_46;
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
            goto LABEL_29;
          }
        }

        check_errors(v7);
        goto LABEL_29;
      }

      *(v7 + 3400) = 0;
      goto LABEL_29;
    }

    v47 = (v18 - v22 + 255) & 0xFFFFFF00;
    v48 = v47 + v52;
    v52 += v47;
    if (__ptr)
    {
      v19 = reallocf(__ptr, v48);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v19 = malloc_type_malloc(v47 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_66;
      }
    }

    if ((v19 & 3) == 0)
    {
      v23 = v19 + v20;
      v15 = v23;
      goto LABEL_22;
    }

LABEL_66:
    result = dy_abort();
    __break(1u);
    return result;
  }

  atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v30 = (*(*(v7 + 24) + 816))(a1);
LABEL_46:
  if (__ptr)
  {
    free(__ptr);
  }

  return v30;
}

{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v8 = atomic_fetch_add((v7 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v8 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_27:
      atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
      v13 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v13, 0, do_nothing);
LABEL_30:
      v15 = *(*(v7 + 24) + 816);

      return v15(a1);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_27;
    }
  }

  *(v7 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_30;
  }

  result = *(v7 + 3400);
  if (result)
  {
    *(v7 + 3400) = 0;
  }

  else
  {
    result = (*(*(v7 + 32) + 816))(a1);
  }

  v11 = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v11 >= 1)
  {
    v14 = result;
    handle_opengl_thread_conflict(v7);
    return v14;
  }

  return result;
}

{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v8 = atomic_fetch_add((v7 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v8 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_27:
      atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
      v13 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v13, 0, do_nothing);
LABEL_30:
      v15 = *(*(v7 + 24) + 816);

      return v15(a1);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_27;
    }
  }

  *(v7 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_30;
  }

  result = *(v7 + 3400);
  if (result)
  {
    *(v7 + 3400) = 0;
  }

  else
  {
    result = (*(*(v7 + 32) + 816))(a1);
  }

  v11 = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v11 >= 1)
  {
    v14 = result;
    handle_opengl_thread_conflict(v7);
    return v14;
  }

  return result;
}

{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v8 = atomic_fetch_add((v7 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v8 > 1)
  {
    handle_opengl_thread_conflict(v7);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
    v14 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v14, 0, do_nothing);
  }

  else
  {
    *(v7 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v10 = *(v7 + 3400);
      if (v10)
      {
        *(v7 + 3400) = 0;
      }

      else
      {
        v10 = (*(*(v7 + 32) + 816))(a1);
      }

      v11 = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v11 >= 1)
      {
        handle_opengl_thread_conflict(v7);
      }

      return v10;
    }

    atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v15 = *(*(v7 + 24) + 816);

  return v15(a1);
}

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
  v7 = *(v6 + 3400);
  if (!v7)
  {
    return (*(*(v6 + 32) + 816))(a1);
  }

  *(v6 + 3400) = 0;
  return v7;
}

void sub_2B8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void get_floatv(__GLIContextRec *a1, GPUTools::GL *a2, float *a3)
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
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v11 + 24) + 824);

      v37(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v47, 0, sizeof(v47));
    if (a2 == 34467)
    {
      (*(*(v11 + 32) + 832))(*(v11 + 16), 34466, &v47[1]);
      v47[0] = 1;
      v15 = 110;
    }

    else
    {
      GPUTools::GL::DYGetParameterInfo(a2, &v47[1], v47, v14);
      if (v47[0])
      {
        v15 = 110;
      }

      else
      {
        v15 = 102;
      }
    }

    snprintf((v11 + 4709), 0x40uLL, "Ce@%u%c", *&v47[1], v15);
    GPUTools::FB::Encode(&v44, 238, 256, v11 + 4709, v16, v17, v18, v19, *v11);
    v20 = byte_21AF46;
    if (byte_21AF46)
    {
      breakpoint_break(&v44, (&stru_B8.align + 2), 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v11 + 32) + 824))(a1, a2, a3);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v44;
        *(v44 + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v40 = *(&g_DYTimebaseInfo + 1);
        v41 = __udivti3();
        v42 = v44;
        *(v44 + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v11);
    }

LABEL_27:
    v28 = v44;
    v43 = *(v44 + 1);
    v45 = v44;
    if (v46 >= 0x24)
    {
      *(v44 + 8) = 0;
      *v28 = 0u;
      v28[1] = 0u;
    }

    GPUTools::FB::Encode(&v44, 238, 256, v11 + 4709, v21, v22, v23, v24, *v11);
    *(v44 + 1) = v43;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &v44);
    v29 = *(v11 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v20 & 2) == 0)
      {
LABEL_38:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v44;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_46;
      }

      v38 = 2;
      v39 = 238;
    }

    breakpoint_break(&v44, v39, v38, v29, v11);
    goto LABEL_38;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 824))(a1, a2, a3);
LABEL_46:
  if (v44)
  {
    free(v44);
  }
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
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v11 + 24) + 824);

      v37(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v47, 0, sizeof(v47));
    if (a2 == 34467)
    {
      (*(*(v11 + 32) + 832))(*(v11 + 16), 34466, &v47[1]);
      v47[0] = 1;
      v15 = 110;
    }

    else
    {
      GPUTools::GL::DYGetParameterInfo(a2, &v47[1], v47, v14);
      if (v47[0])
      {
        v15 = 110;
      }

      else
      {
        v15 = 102;
      }
    }

    snprintf((v11 + 4709), 0x40uLL, "Ce@%u%c", *&v47[1], v15);
    GPUTools::FB::Encode(&v44, 238, 256, v11 + 4709, v16, v17, v18, v19, *v11);
    v20 = byte_21AF46;
    if (byte_21AF46)
    {
      breakpoint_break(&v44, (&stru_B8.align + 2), 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v11 + 32) + 824))(a1, a2, a3);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v44;
        *(v44 + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v40 = *(&g_DYTimebaseInfo + 1);
        v41 = __udivti3();
        v42 = v44;
        *(v44 + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v11);
    }

LABEL_27:
    v28 = v44;
    v43 = *(v44 + 1);
    v45 = v44;
    if (v46 >= 0x24)
    {
      *(v44 + 8) = 0;
      *v28 = 0u;
      v28[1] = 0u;
    }

    GPUTools::FB::Encode(&v44, 238, 256, v11 + 4709, v21, v22, v23, v24, *v11);
    *(v44 + 1) = v43;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &v44);
    v29 = *(v11 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v20 & 2) == 0)
      {
LABEL_38:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v44;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_46;
      }

      v38 = 2;
      v39 = 238;
    }

    breakpoint_break(&v44, v39, v38, v29, v11);
    goto LABEL_38;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 824))(a1, a2, a3);
LABEL_46:
  if (v44)
  {
    free(v44);
  }
}

void sub_2BE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  atomic_store(0, (v15 + 56));
  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

void get_integerv(__GLIContextRec *a1, GPUTools::GL *a2, int *a3)
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
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v11 + 24) + 832);

      v37(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v47, 0, sizeof(v47));
    if (a2 == 34467)
    {
      (*(*(v11 + 32) + 832))(*(v11 + 16), 34466, &v47[1]);
      v47[0] = 1;
      v15 = 101;
    }

    else
    {
      GPUTools::GL::DYGetParameterInfo(a2, &v47[1], v47, v14);
      if (v47[0])
      {
        v15 = 101;
      }

      else
      {
        v15 = 105;
      }
    }

    snprintf((v11 + 4709), 0x40uLL, "Ce@%u%c", *&v47[1], v15);
    GPUTools::FB::Encode(&v44, 247, 256, v11 + 4709, v16, v17, v18, v19, *v11);
    v20 = byte_21AF4F;
    if (byte_21AF4F)
    {
      breakpoint_break(&v44, (&stru_B8.nreloc + 3), 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v11 + 32) + 832))(a1, a2, a3);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v44;
        *(v44 + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v40 = *(&g_DYTimebaseInfo + 1);
        v41 = __udivti3();
        v42 = v44;
        *(v44 + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v11);
    }

LABEL_27:
    v28 = v44;
    v43 = *(v44 + 1);
    v45 = v44;
    if (v46 >= 0x24)
    {
      *(v44 + 8) = 0;
      *v28 = 0u;
      v28[1] = 0u;
    }

    GPUTools::FB::Encode(&v44, 247, 256, v11 + 4709, v21, v22, v23, v24, *v11);
    *(v44 + 1) = v43;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &v44);
    v29 = *(v11 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v20 & 2) == 0)
      {
LABEL_38:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v44;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_46;
      }

      v38 = 2;
      v39 = 247;
    }

    breakpoint_break(&v44, v39, v38, v29, v11);
    goto LABEL_38;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 832))(a1, a2, a3);
LABEL_46:
  if (v44)
  {
    free(v44);
  }
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
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v11 + 24) + 832);

      v37(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v47, 0, sizeof(v47));
    if (a2 == 34467)
    {
      (*(*(v11 + 32) + 832))(*(v11 + 16), 34466, &v47[1]);
      v47[0] = 1;
      v15 = 101;
    }

    else
    {
      GPUTools::GL::DYGetParameterInfo(a2, &v47[1], v47, v14);
      if (v47[0])
      {
        v15 = 101;
      }

      else
      {
        v15 = 105;
      }
    }

    snprintf((v11 + 4709), 0x40uLL, "Ce@%u%c", *&v47[1], v15);
    GPUTools::FB::Encode(&v44, 247, 256, v11 + 4709, v16, v17, v18, v19, *v11);
    v20 = byte_21AF4F;
    if (byte_21AF4F)
    {
      breakpoint_break(&v44, (&stru_B8.nreloc + 3), 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v11 + 32) + 832))(a1, a2, a3);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v44;
        *(v44 + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v40 = *(&g_DYTimebaseInfo + 1);
        v41 = __udivti3();
        v42 = v44;
        *(v44 + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v11);
    }

LABEL_27:
    v28 = v44;
    v43 = *(v44 + 1);
    v45 = v44;
    if (v46 >= 0x24)
    {
      *(v44 + 8) = 0;
      *v28 = 0u;
      v28[1] = 0u;
    }

    GPUTools::FB::Encode(&v44, 247, 256, v11 + 4709, v21, v22, v23, v24, *v11);
    *(v44 + 1) = v43;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &v44);
    v29 = *(v11 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v20 & 2) == 0)
      {
LABEL_38:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v44;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_46;
      }

      v38 = 2;
      v39 = 247;
    }

    breakpoint_break(&v44, v39, v38, v29, v11);
    goto LABEL_38;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 832))(a1, a2, a3);
LABEL_46:
  if (v44)
  {
    free(v44);
  }
}

void sub_2C30C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  atomic_store(0, (v15 + 56));
  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

void get_lightfv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, float *a4)
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
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_46:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v13 + 24) + 840);

      v39(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = GPUTools::GL::dy_light_array_size(a3, v16);
    snprintf((v13 + 4709), 0x40uLL, "Cee@%df", v17);
    GPUTools::FB::Encode(&v46, 248, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF50;
    if (byte_21AF50)
    {
      breakpoint_break(&v46, &stru_B8.flags, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 840))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v46;
        *(v46 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v42 = *(&g_DYTimebaseInfo + 1);
        v43 = __udivti3();
        v44 = v46;
        *(v46 + 3) = v43;
        v44[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v13);
    }

LABEL_23:
    v30 = v46;
    v45 = *(v46 + 1);
    v47 = v46;
    if (v48 >= 0x24)
    {
      *(v46 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v46, 248, 256, v13 + 4709, v23, v24, v25, v26, *v13);
    *(v46 + 1) = v45;
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &v46);
    v31 = *(v13 + 3404);
    if (v31 && (gBreakOnError & 1) != 0)
    {
      v40 = 3;
      v41 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_34:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = *v46;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v35 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_42;
      }

      v40 = 2;
      v41 = 248;
    }

    breakpoint_break(&v46, v41, v40, v31, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 840))(a1, a2, a3, a4);
LABEL_42:
  if (v46)
  {
    free(v46);
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
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_46:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v13 + 24) + 840);

      v39(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = GPUTools::GL::dy_light_array_size(a3, v16);
    snprintf((v13 + 4709), 0x40uLL, "Cee@%df", v17);
    GPUTools::FB::Encode(&v46, 248, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF50;
    if (byte_21AF50)
    {
      breakpoint_break(&v46, &stru_B8.flags, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 840))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v46;
        *(v46 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v42 = *(&g_DYTimebaseInfo + 1);
        v43 = __udivti3();
        v44 = v46;
        *(v46 + 3) = v43;
        v44[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v13);
    }

LABEL_23:
    v30 = v46;
    v45 = *(v46 + 1);
    v47 = v46;
    if (v48 >= 0x24)
    {
      *(v46 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v46, 248, 256, v13 + 4709, v23, v24, v25, v26, *v13);
    *(v46 + 1) = v45;
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &v46);
    v31 = *(v13 + 3404);
    if (v31 && (gBreakOnError & 1) != 0)
    {
      v40 = 3;
      v41 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_34:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = *v46;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v35 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_42;
      }

      v40 = 2;
      v41 = 248;
    }

    breakpoint_break(&v46, v41, v40, v31, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 840))(a1, a2, a3, a4);
LABEL_42:
  if (v46)
  {
    free(v46);
  }
}

void sub_2C7D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_materialfv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, float *a4)
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
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_46:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v13 + 24) + 880);

      v39(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = GPUTools::GL::DYMaterialParameterComponentCount(a3, v16);
    snprintf((v13 + 4709), 0x40uLL, "Cee@%df", v17);
    GPUTools::FB::Encode(&v46, 253, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF55;
    if (byte_21AF55)
    {
      breakpoint_break(&v46, (&stru_B8.reserved1 + 1), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 880))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v46;
        *(v46 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v42 = *(&g_DYTimebaseInfo + 1);
        v43 = __udivti3();
        v44 = v46;
        *(v46 + 3) = v43;
        v44[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v13);
    }

LABEL_23:
    v30 = v46;
    v45 = *(v46 + 1);
    v47 = v46;
    if (v48 >= 0x24)
    {
      *(v46 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v46, 253, 256, v13 + 4709, v23, v24, v25, v26, *v13);
    *(v46 + 1) = v45;
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &v46);
    v31 = *(v13 + 3404);
    if (v31 && (gBreakOnError & 1) != 0)
    {
      v40 = 3;
      v41 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_34:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = *v46;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v35 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_42;
      }

      v40 = 2;
      v41 = 253;
    }

    breakpoint_break(&v46, v41, v40, v31, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 880))(a1, a2, a3, a4);
LABEL_42:
  if (v46)
  {
    free(v46);
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
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_46:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v13 + 24) + 880);

      v39(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = GPUTools::GL::DYMaterialParameterComponentCount(a3, v16);
    snprintf((v13 + 4709), 0x40uLL, "Cee@%df", v17);
    GPUTools::FB::Encode(&v46, 253, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF55;
    if (byte_21AF55)
    {
      breakpoint_break(&v46, (&stru_B8.reserved1 + 1), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 880))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v46;
        *(v46 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v42 = *(&g_DYTimebaseInfo + 1);
        v43 = __udivti3();
        v44 = v46;
        *(v46 + 3) = v43;
        v44[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v13);
    }

LABEL_23:
    v30 = v46;
    v45 = *(v46 + 1);
    v47 = v46;
    if (v48 >= 0x24)
    {
      *(v46 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v46, 253, 256, v13 + 4709, v23, v24, v25, v26, *v13);
    *(v46 + 1) = v45;
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &v46);
    v31 = *(v13 + 3404);
    if (v31 && (gBreakOnError & 1) != 0)
    {
      v40 = 3;
      v41 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_34:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = *v46;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v35 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_42;
      }

      v40 = 2;
      v41 = 253;
    }

    breakpoint_break(&v46, v41, v40, v31, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 880))(a1, a2, a3, a4);
LABEL_42:
  if (v46)
  {
    free(v46);
  }
}

void sub_2CC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_pointerv(__GLIContextRec *a1, uint64_t a2, void **a3)
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
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_46:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(*(v11 + 24) + 920);

      v35(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(&v42, 264, 256, "Ce@1t", v14, v15, v16, v17, *v11);
    v18 = byte_21AF60;
    if (byte_21AF60)
    {
      breakpoint_break(&v42, &stru_108, 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v23 = mach_absolute_time();
      (*(*(v11 + 32) + 920))(a1, a2, a3);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v42;
        *(v42 + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v38 = *(&g_DYTimebaseInfo + 1);
        v39 = __udivti3();
        v40 = v42;
        *(v42 + 3) = v39;
        v40[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
    v26 = v42;
    v41 = *(v42 + 1);
    v43 = v42;
    if (v44 >= 0x24)
    {
      *(v42 + 8) = 0;
      *v26 = 0u;
      v26[1] = 0u;
    }

    GPUTools::FB::Encode(&v42, 264, 256, "Ce@1t", v19, v20, v21, v22, *v11);
    *(v42 + 1) = v41;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &v42);
    v27 = *(v11 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_34:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        v30 = *v42;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v31 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_42;
      }

      v36 = 2;
      v37 = 264;
    }

    breakpoint_break(&v42, v37, v36, v27, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 920))(a1, a2, a3);
LABEL_42:
  if (v42)
  {
    free(v42);
  }
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
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_46:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(*(v11 + 24) + 920);

      v35(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(&v42, 264, 256, "Ce@1t", v14, v15, v16, v17, *v11);
    v18 = byte_21AF60;
    if (byte_21AF60)
    {
      breakpoint_break(&v42, &stru_108, 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v23 = mach_absolute_time();
      (*(*(v11 + 32) + 920))(a1, a2, a3);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v42;
        *(v42 + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v38 = *(&g_DYTimebaseInfo + 1);
        v39 = __udivti3();
        v40 = v42;
        *(v42 + 3) = v39;
        v40[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
    v26 = v42;
    v41 = *(v42 + 1);
    v43 = v42;
    if (v44 >= 0x24)
    {
      *(v42 + 8) = 0;
      *v26 = 0u;
      v26[1] = 0u;
    }

    GPUTools::FB::Encode(&v42, 264, 256, "Ce@1t", v19, v20, v21, v22, *v11);
    *(v42 + 1) = v41;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &v42);
    v27 = *(v11 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_34:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        v30 = *v42;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v31 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_42;
      }

      v36 = 2;
      v37 = 264;
    }

    breakpoint_break(&v42, v37, v36, v27, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 920))(a1, a2, a3);
LABEL_42:
  if (v42)
  {
    free(v42);
  }
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
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v15 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v15, 0, do_nothing);
LABEL_29:
      v16 = *(*(v11 + 24) + 920);

      v16(a1, a2, a3);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v11 + 32) + 920))(a1, a2, a3);
  ++*(v11 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v11);
  }
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
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v18, 0, do_nothing);
LABEL_29:
      v19 = *(*(v11 + 24) + 920);

      v19(a1, a2, a3);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v14 = mach_absolute_time();
  (*(*(v11 + 32) + 920))(a1, a2, a3);
  v15 = mach_absolute_time();
  v16 = vdupq_n_s64(1uLL);
  v16.i64[0] = v15 - v14;
  *(v11 + 3696) = vaddq_s64(v16, *(v11 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v11);
  }
}

void sub_2D130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t get_string(__GLIContextRec *a1, uint64_t a2)
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
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(*(v9 + 24) + 936);

      return v35(a1, a2);
    }
  }

  *(v9 + 4838) = 1;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v41, 282, 256, "Ce", v12, v13, v14, v15, *v9);
    v16 = byte_21AF72;
    if (byte_21AF72)
    {
      breakpoint_break(v41, &stru_108.segname[2], 1, *(v9 + 3404), v9);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v16 & 4)
    {
      v23 = 0;
      goto LABEL_23;
    }

    v22 = mach_absolute_time();
    v23 = (*(*(v9 + 32) + 936))(a1, a2);
    v24 = mach_absolute_time() - v22;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v25 = v41[0];
      *(v41[0] + 2) = v22;
      v25[3] = v24;
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

    check_errors(v9);
LABEL_23:
    GPUTools::FB::Encode(v41, 4294955008, "S", v17, v18, v19, v20, v21, v23);
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v9 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v9);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), v41);
    v26 = *(v9 + 3404);
    if (v26 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v16 & 2) == 0)
      {
LABEL_32:
        v27 = [DYGetGLGuestAppClient() defaultFbufStream];
        v28 = v27;
        while (atomic_exchange(v27 + 14, 1u) == 1)
        {
            ;
          }
        }

        v29 = *v41[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v28 + 14);
        v30 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v9);
        }

        goto LABEL_40;
      }

      v36 = 2;
      v37 = 282;
    }

    breakpoint_break(v41, v37, v36, v26, v9);
    goto LABEL_32;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v23 = (*(*(v9 + 24) + 936))(a1, a2);
LABEL_40:
  if (v41[0])
  {
    free(v41[0]);
  }

  return v23;
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
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(*(v9 + 24) + 936);

      return v35(a1, a2);
    }
  }

  *(v9 + 4838) = 1;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v41, 282, 256, "Ce", v12, v13, v14, v15, *v9);
    v16 = byte_21AF72;
    if (byte_21AF72)
    {
      breakpoint_break(v41, &stru_108.segname[2], 1, *(v9 + 3404), v9);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v16 & 4)
    {
      v23 = 0;
      goto LABEL_23;
    }

    v22 = mach_absolute_time();
    v23 = (*(*(v9 + 32) + 936))(a1, a2);
    v24 = mach_absolute_time() - v22;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v25 = v41[0];
      *(v41[0] + 2) = v22;
      v25[3] = v24;
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

    check_errors(v9);
LABEL_23:
    GPUTools::FB::Encode(v41, 4294955008, "S", v17, v18, v19, v20, v21, v23);
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v9 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v9);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), v41);
    v26 = *(v9 + 3404);
    if (v26 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v16 & 2) == 0)
      {
LABEL_32:
        v27 = [DYGetGLGuestAppClient() defaultFbufStream];
        v28 = v27;
        while (atomic_exchange(v27 + 14, 1u) == 1)
        {
            ;
          }
        }

        v29 = *v41[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v28 + 14);
        v30 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v9);
        }

        goto LABEL_40;
      }

      v36 = 2;
      v37 = 282;
    }

    breakpoint_break(v41, v37, v36, v26, v9);
    goto LABEL_32;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v23 = (*(*(v9 + 24) + 936))(a1, a2);
LABEL_40:
  if (v41[0])
  {
    free(v41[0]);
  }

  return v23;
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
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v14 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v14, 0, do_nothing);
LABEL_27:
      v17 = *(*(v9 + 24) + 936);

      return v17(a1, a2);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v9 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_27;
  }

  result = (*(*(v9 + 32) + 936))(a1, a2);
  ++*(v9 + 3704);
  if (gCheckGLErrors == 1)
  {
    v16 = result;
    alpha_func(v9);
    result = v16;
  }

  add = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {
    v15 = result;
    handle_opengl_thread_conflict(v9);
    return v15;
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
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v18, 0, do_nothing);
LABEL_27:
      v19 = *(*(v9 + 24) + 936);

      return v19(a1, a2);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v9 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_27;
  }

  v12 = mach_absolute_time();
  v13 = (*(*(v9 + 32) + 936))(a1, a2);
  v14 = mach_absolute_time();
  v15 = vdupq_n_s64(1uLL);
  v15.i64[0] = v14 - v12;
  *(v9 + 3696) = vaddq_s64(v15, *(v9 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v9);
  }

  add = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors != 1 || (add - 1) < 1)
  {
    return v13;
  }

  handle_opengl_thread_conflict(v9);
  return v13;
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
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v10 > 1)
  {
    handle_opengl_thread_conflict(v9);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    v15 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v15, 0, do_nothing);
  }

  else
  {
    *(v9 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v12 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v12 >= 1)
      {
        handle_opengl_thread_conflict(v9);
      }

      return 0;
    }

    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v16 = *(*(v9 + 24) + 936);

  return v16(a1, a2);
}