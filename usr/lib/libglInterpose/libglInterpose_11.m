void sub_5A5F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 104);
  if (v3)
  {
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t get_attrib_location_ARB(__GLIContextRec *a1, void *a2, const char *a3)
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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v11 + 24) + 5056);

      return v37(a1, a2, a3);
    }
  }

  *(v11 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v43, 215, 256, "CulcS", v14, v15, v16, v17, *v11);
    v18 = byte_21AF2F;
    if (byte_21AF2F)
    {
      breakpoint_break(v43, &stru_B8.segname[15], 1, *(v11 + 3404), v11);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4)
    {
      v25 = 0xFFFFFFFFLL;
      goto LABEL_23;
    }

    v24 = mach_absolute_time();
    v25 = (*(*(v11 + 32) + 5056))(a1, a2, a3);
    v26 = mach_absolute_time() - v24;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v27 = v43[0];
      *(v43[0] + 2) = v24;
      v27[3] = v26;
      if (gCheckGLErrors != 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v40 = *(&g_DYTimebaseInfo + 1);
      v41 = __udivti3();
      v42 = v43[0];
      *(v43[0] + 3) = v41;
      v42[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_23;
      }
    }

    check_errors(v11);
LABEL_23:
    GPUTools::FB::Encode(v43, 4294955008, "i", v19, v20, v21, v22, v23, v25);
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

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v43);
    v28 = *(v11 + 3404);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_32:
        v29 = [DYGetGLGuestAppClient() defaultFbufStream];
        v30 = v29;
        while (atomic_exchange(v29 + 14, 1u) == 1)
        {
            ;
          }
        }

        v31 = *v43[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        v32 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_40;
      }

      v38 = 2;
      v39 = 215;
    }

    breakpoint_break(v43, v39, v38, v28, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v25 = (*(*(v11 + 24) + 5056))(a1, a2, a3);
LABEL_40:
  if (v43[0])
  {
    free(v43[0]);
  }

  return v25;
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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v11 + 24) + 5056);

      return v37(a1, a2, a3);
    }
  }

  *(v11 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v43, 215, 256, "CulcS", v14, v15, v16, v17, *v11);
    v18 = byte_21AF2F;
    if (byte_21AF2F)
    {
      breakpoint_break(v43, &stru_B8.segname[15], 1, *(v11 + 3404), v11);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4)
    {
      v25 = 0xFFFFFFFFLL;
      goto LABEL_23;
    }

    v24 = mach_absolute_time();
    v25 = (*(*(v11 + 32) + 5056))(a1, a2, a3);
    v26 = mach_absolute_time() - v24;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v27 = v43[0];
      *(v43[0] + 2) = v24;
      v27[3] = v26;
      if (gCheckGLErrors != 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v40 = *(&g_DYTimebaseInfo + 1);
      v41 = __udivti3();
      v42 = v43[0];
      *(v43[0] + 3) = v41;
      v42[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_23;
      }
    }

    check_errors(v11);
LABEL_23:
    GPUTools::FB::Encode(v43, 4294955008, "i", v19, v20, v21, v22, v23, v25);
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

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v43);
    v28 = *(v11 + 3404);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_32:
        v29 = [DYGetGLGuestAppClient() defaultFbufStream];
        v30 = v29;
        while (atomic_exchange(v29 + 14, 1u) == 1)
        {
            ;
          }
        }

        v31 = *v43[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        v32 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_40;
      }

      v38 = 2;
      v39 = 215;
    }

    breakpoint_break(v43, v39, v38, v28, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v25 = (*(*(v11 + 24) + 5056))(a1, a2, a3);
LABEL_40:
  if (v43[0])
  {
    free(v43[0]);
  }

  return v25;
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
      v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v16, 0, do_nothing);
LABEL_27:
      v19 = *(*(v11 + 24) + 5056);

      return v19(a1, a2, a3);
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
    goto LABEL_27;
  }

  result = (*(*(v11 + 32) + 5056))(a1, a2, a3);
  ++*(v11 + 3704);
  if (gCheckGLErrors == 1)
  {
    v18 = result;
    alpha_func(v11);
    result = v18;
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {
    v17 = result;
    handle_opengl_thread_conflict(v11);
    return v17;
  }

  return result;
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
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_27:
      v21 = *(*(v11 + 24) + 5056);

      return v21(a1, a2, a3);
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
    goto LABEL_27;
  }

  v14 = mach_absolute_time();
  v15 = (*(*(v11 + 32) + 5056))(a1, a2, a3);
  v16 = mach_absolute_time();
  v17 = vdupq_n_s64(1uLL);
  v17.i64[0] = v16 - v14;
  *(v11 + 3696) = vaddq_s64(v17, *(v11 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors != 1 || (add - 1) < 1)
  {
    return v15;
  }

  handle_opengl_thread_conflict(v11);
  return v15;
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
      v14 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v14 >= 1)
      {
        handle_opengl_thread_conflict(v11);
      }

      return 0;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 5056);

  return v18(a1, a2, a3);
}

void sub_5AA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void gen_queries(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
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
      v35 = *(*(v11 + 24) + 5072);

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
    snprintf((v11 + 4709), 0x40uLL, "Ci@%dui", a2);
    GPUTools::FB::Encode(&v42, 206, 256, v11 + 4709, v14, v15, v16, v17, *v11);
    v18 = byte_21AF26;
    if (byte_21AF26)
    {
      breakpoint_break(&v42, &stru_B8.segname[6], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v23 = mach_absolute_time();
      (*(*(v11 + 32) + 5072))(a1, a2, a3);
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

    GPUTools::FB::Encode(&v42, 206, 256, v11 + 4709, v19, v20, v21, v22, *v11);
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
      v37 = 206;
    }

    breakpoint_break(&v42, v37, v36, v27, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5072))(a1, a2, a3);
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
      v35 = *(*(v11 + 24) + 5072);

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
    snprintf((v11 + 4709), 0x40uLL, "Ci@%dui", a2);
    GPUTools::FB::Encode(&v42, 206, 256, v11 + 4709, v14, v15, v16, v17, *v11);
    v18 = byte_21AF26;
    if (byte_21AF26)
    {
      breakpoint_break(&v42, &stru_B8.segname[6], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v23 = mach_absolute_time();
      (*(*(v11 + 32) + 5072))(a1, a2, a3);
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

    GPUTools::FB::Encode(&v42, 206, 256, v11 + 4709, v19, v20, v21, v22, *v11);
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
      v37 = 206;
    }

    breakpoint_break(&v42, v37, v36, v27, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5072))(a1, a2, a3);
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
      v16 = *(*(v11 + 24) + 5072);

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

  (*(*(v11 + 32) + 5072))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 5072);

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
  (*(*(v11 + 32) + 5072))(a1, a2, a3);
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

void sub_5AEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void delete_queries(__GLIContextRec *a1, uint64_t a2, const unsigned int *a3)
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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v28 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v28 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v29 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v29, 0, do_nothing);
      v30 = *(*(v11 + 24) + 5080);

      v30(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    snprintf((v11 + 4709), 0x40uLL, "Ci@%di", a2);
    GPUTools::FB::Encode(v36, 125, 256, v11 + 4709, v14, v15, v16, v17, *v11);
    v18 = byte_21AED5;
    if (byte_21AED5)
    {
      breakpoint_break(v36, &stru_68.segname[5], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 5080))(a1, a2, a3);
      v20 = mach_absolute_time() - v19;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v21 = v36[0];
        *(v36[0] + 2) = v19;
        v21[3] = v20;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v33 = *(&g_DYTimebaseInfo + 1);
        v34 = __udivti3();
        v35 = v36[0];
        *(v36[0] + 3) = v34;
        v35[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
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

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v36);
    v22 = *(v11 + 3404);
    if (v22 && (gBreakOnError & 1) != 0)
    {
      v31 = 3;
      v32 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_32:
        v23 = [DYGetGLGuestAppClient() defaultFbufStream];
        v24 = v23;
        while (atomic_exchange(v23 + 14, 1u) == 1)
        {
            ;
          }
        }

        v25 = *v36[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v24 + 14);
        v26 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v26 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_40;
      }

      v31 = 2;
      v32 = 125;
    }

    breakpoint_break(v36, v32, v31, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5080))(a1, a2, a3);
LABEL_40:
  if (v36[0])
  {
    free(v36[0]);
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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v28 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v28 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v29 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v29, 0, do_nothing);
      v30 = *(*(v11 + 24) + 5080);

      v30(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    snprintf((v11 + 4709), 0x40uLL, "Ci@%di", a2);
    GPUTools::FB::Encode(v36, 125, 256, v11 + 4709, v14, v15, v16, v17, *v11);
    v18 = byte_21AED5;
    if (byte_21AED5)
    {
      breakpoint_break(v36, &stru_68.segname[5], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 5080))(a1, a2, a3);
      v20 = mach_absolute_time() - v19;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v21 = v36[0];
        *(v36[0] + 2) = v19;
        v21[3] = v20;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v33 = *(&g_DYTimebaseInfo + 1);
        v34 = __udivti3();
        v35 = v36[0];
        *(v36[0] + 3) = v34;
        v35[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
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

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v36);
    v22 = *(v11 + 3404);
    if (v22 && (gBreakOnError & 1) != 0)
    {
      v31 = 3;
      v32 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_32:
        v23 = [DYGetGLGuestAppClient() defaultFbufStream];
        v24 = v23;
        while (atomic_exchange(v23 + 14, 1u) == 1)
        {
            ;
          }
        }

        v25 = *v36[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v24 + 14);
        v26 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v26 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_40;
      }

      v31 = 2;
      v32 = 125;
    }

    breakpoint_break(v36, v32, v31, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5080))(a1, a2, a3);
LABEL_40:
  if (v36[0])
  {
    free(v36[0]);
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
      v16 = *(*(v11 + 24) + 5080);

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

  (*(*(v11 + 32) + 5080))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 5080);

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
  (*(*(v11 + 32) + 5080))(a1, a2, a3);
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

void sub_5B340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t is_query(__GLIContextRec *a1, uint64_t a2)
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v43 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v43 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v44 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v44, 0, do_nothing);
      v45 = *(*(v9 + 24) + 5088);

      return v45(a1, a2);
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v56 = 0;
  v57 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v56;
    v14 = v56 - __ptr;
    v15 = v57;
    v16 = v57 - (v56 - __ptr);
    if (v16 <= 0x33)
    {
      v46 = (307 - v16) & 0x100;
      v57 += v46;
      v13 = malloc_type_malloc(v46 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13 || (v13 & 3) != 0)
      {
        goto LABEL_67;
      }

      v12 = v13 + v14;
    }

    *(v12 + 12) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 52;
    v56 = v12 + 52;
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
    v23 = v57;
    v24 = v57 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v56;
LABEL_22:
      bzero(v17, v20);
      v56 = &v25[v20];
      *v21 += v20;
LABEL_23:
      v13[1] = 333;
      v13[8] = 256;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v13 + 1) = v54;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21AFA5;
      if (byte_21AFA5)
      {
        breakpoint_break(&__ptr, (&stru_108.reserved1 + 1), 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 5088))(a1, a2);
      v34 = mach_absolute_time() - v32;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v35 = __ptr;
        *(__ptr + 2) = v32;
        v35[3] = v34;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v49 = *(&g_DYTimebaseInfo + 1);
        v50 = __udivti3();
        v51 = __ptr;
        *(__ptr + 3) = v50;
        v51[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v9);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "ub", v27, v28, v29, v30, v31, v33);
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
      v36 = *(v9 + 3404);
      if (v36 && (gBreakOnError & 1) != 0)
      {
        v47 = 3;
        v48 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
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
          v40 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v40 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v47 = 2;
        v48 = 333;
      }

      breakpoint_break(&__ptr, v48, v47, v36, v9);
      goto LABEL_37;
    }

    v52 = (v20 - v24 + 255) & 0xFFFFFF00;
    v53 = v52 + v57;
    v57 += v52;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v53);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v52 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_67;
      }
    }

    if ((v21 & 3) == 0)
    {
      v25 = v21 + v22;
      v17 = v25;
      goto LABEL_22;
    }

LABEL_67:
    result = dy_abort();
    __break(1u);
    return result;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v33 = (*(*(v9 + 24) + 5088))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v33;
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v43 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v43 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v44 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v44, 0, do_nothing);
      v45 = *(*(v9 + 24) + 5088);

      return v45(a1, a2);
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v56 = 0;
  v57 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v56;
    v14 = v56 - __ptr;
    v15 = v57;
    v16 = v57 - (v56 - __ptr);
    if (v16 <= 0x33)
    {
      v46 = (307 - v16) & 0x100;
      v57 += v46;
      v13 = malloc_type_malloc(v46 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13 || (v13 & 3) != 0)
      {
        goto LABEL_67;
      }

      v12 = v13 + v14;
    }

    *(v12 + 12) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 52;
    v56 = v12 + 52;
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
    v23 = v57;
    v24 = v57 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v56;
LABEL_22:
      bzero(v17, v20);
      v56 = &v25[v20];
      *v21 += v20;
LABEL_23:
      v13[1] = 333;
      v13[8] = 256;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v13 + 1) = v54;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21AFA5;
      if (byte_21AFA5)
      {
        breakpoint_break(&__ptr, (&stru_108.reserved1 + 1), 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 5088))(a1, a2);
      v34 = mach_absolute_time() - v32;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v35 = __ptr;
        *(__ptr + 2) = v32;
        v35[3] = v34;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v49 = *(&g_DYTimebaseInfo + 1);
        v50 = __udivti3();
        v51 = __ptr;
        *(__ptr + 3) = v50;
        v51[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v9);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "ub", v27, v28, v29, v30, v31, v33);
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
      v36 = *(v9 + 3404);
      if (v36 && (gBreakOnError & 1) != 0)
      {
        v47 = 3;
        v48 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
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
          v40 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v40 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v47 = 2;
        v48 = 333;
      }

      breakpoint_break(&__ptr, v48, v47, v36, v9);
      goto LABEL_37;
    }

    v52 = (v20 - v24 + 255) & 0xFFFFFF00;
    v53 = v52 + v57;
    v57 += v52;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v53);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v52 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_67;
      }
    }

    if ((v21 & 3) == 0)
    {
      v25 = v21 + v22;
      v17 = v25;
      goto LABEL_22;
    }

LABEL_67:
    result = dy_abort();
    __break(1u);
    return result;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v33 = (*(*(v9 + 24) + 5088))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v33;
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
      v17 = *(*(v9 + 24) + 5088);

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

  result = (*(*(v9 + 32) + 5088))(a1, a2);
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
      v19 = *(*(v9 + 24) + 5088);

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
  v13 = (*(*(v9 + 32) + 5088))(a1, a2);
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

  v16 = *(*(v9 + 24) + 5088);

  return v16(a1, a2);
}

void sub_5B908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void begin_query(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v38 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v38 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v39 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v39, 0, do_nothing);
      v40 = *(*(v11 + 24) + 5096);

      v40(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v51 = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v51;
    v16 = v51 - __ptr;
    v17 = v52;
    v18 = v52 - (v51 - __ptr);
    if (v18 <= 0x3B)
    {
      v41 = (315 - v18) & 0x100;
      v52 += v41;
      v15 = malloc_type_malloc(v41 + v17, 0xF962E99uLL);
      __ptr = v15;
      if (!v15 || (v15 & 3) != 0)
      {
        goto LABEL_66;
      }

      v14 = (v15 + v16);
    }

    *(v14 + 44) = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
    v19 = v14 + 60;
    v51 = v14 + 60;
    v20 = v14 + 60 - v15;
    *v15 = v20;
    v21 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v22 = v21 - v20;
    if (v21 == v20)
    {
      goto LABEL_23;
    }

    v23 = __ptr;
    v24 = v19 - __ptr;
    v25 = v52;
    v26 = v52 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v51;
LABEL_22:
      bzero(v19, v22);
      v51 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 9;
      v15[8] = 256;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v15 + 1) = v49;
      strcpy(v15 + 36, "Ceui");
      *(v15 + 11) = *v11;
      v15[13] = a2;
      v15[14] = a3;
      v28 = byte_21AE61;
      if (byte_21AE61)
      {
        breakpoint_break(&__ptr, (&dword_8 + 1), 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 5096))(a1, a2, a3);
        v30 = mach_absolute_time() - v29;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v31 = __ptr;
          *(__ptr + 2) = v29;
          v31[3] = v30;
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

        check_errors(v11);
      }

LABEL_28:
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

      GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &__ptr);
      v32 = *(v11 + 3404);
      if (v32 && (gBreakOnError & 1) != 0)
      {
        v42 = 3;
        v43 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v28 & 2) == 0)
        {
LABEL_37:
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
          v36 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v36 >= 1)
          {
            handle_opengl_thread_conflict(v11);
          }

          goto LABEL_45;
        }

        v42 = 2;
        v43 = 9;
      }

      breakpoint_break(&__ptr, v43, v42, v32, v11);
      goto LABEL_37;
    }

    v47 = (v22 - v26 + 255) & 0xFFFFFF00;
    v48 = v47 + v52;
    v52 += v47;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v48);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v47 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_66;
      }
    }

    if ((v23 & 3) == 0)
    {
      v27 = v23 + v24;
      v19 = v27;
      goto LABEL_22;
    }

LABEL_66:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5096))(a1, a2, a3);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v38 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v38 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v39 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v39, 0, do_nothing);
      v40 = *(*(v11 + 24) + 5096);

      v40(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v51 = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v51;
    v16 = v51 - __ptr;
    v17 = v52;
    v18 = v52 - (v51 - __ptr);
    if (v18 <= 0x3B)
    {
      v41 = (315 - v18) & 0x100;
      v52 += v41;
      v15 = malloc_type_malloc(v41 + v17, 0xF962E99uLL);
      __ptr = v15;
      if (!v15 || (v15 & 3) != 0)
      {
        goto LABEL_66;
      }

      v14 = (v15 + v16);
    }

    *(v14 + 44) = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
    v19 = v14 + 60;
    v51 = v14 + 60;
    v20 = v14 + 60 - v15;
    *v15 = v20;
    v21 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v22 = v21 - v20;
    if (v21 == v20)
    {
      goto LABEL_23;
    }

    v23 = __ptr;
    v24 = v19 - __ptr;
    v25 = v52;
    v26 = v52 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v51;
LABEL_22:
      bzero(v19, v22);
      v51 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 9;
      v15[8] = 256;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v15 + 1) = v49;
      strcpy(v15 + 36, "Ceui");
      *(v15 + 11) = *v11;
      v15[13] = a2;
      v15[14] = a3;
      v28 = byte_21AE61;
      if (byte_21AE61)
      {
        breakpoint_break(&__ptr, (&dword_8 + 1), 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 5096))(a1, a2, a3);
        v30 = mach_absolute_time() - v29;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v31 = __ptr;
          *(__ptr + 2) = v29;
          v31[3] = v30;
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

        check_errors(v11);
      }

LABEL_28:
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

      GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &__ptr);
      v32 = *(v11 + 3404);
      if (v32 && (gBreakOnError & 1) != 0)
      {
        v42 = 3;
        v43 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v28 & 2) == 0)
        {
LABEL_37:
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
          v36 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v36 >= 1)
          {
            handle_opengl_thread_conflict(v11);
          }

          goto LABEL_45;
        }

        v42 = 2;
        v43 = 9;
      }

      breakpoint_break(&__ptr, v43, v42, v32, v11);
      goto LABEL_37;
    }

    v47 = (v22 - v26 + 255) & 0xFFFFFF00;
    v48 = v47 + v52;
    v52 += v47;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v48);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v47 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_66;
      }
    }

    if ((v23 & 3) == 0)
    {
      v27 = v23 + v24;
      v19 = v27;
      goto LABEL_22;
    }

LABEL_66:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5096))(a1, a2, a3);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
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
      v16 = *(*(v11 + 24) + 5096);

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

  (*(*(v11 + 32) + 5096))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 5096);

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
  (*(*(v11 + 32) + 5096))(a1, a2, a3);
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

void sub_5BECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void end_query(__GLIContextRec *a1, uint64_t a2)
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
      end_query((v9 + 4640));
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
      *(v13 + 1) = 159;
      *(v13 + 8) = 256;
      v45 = 0;
      pthread_threadid_np(0, &v45);
      *(v13 + 1) = v45;
      strcpy(v13 + 36, "Ce");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21AEF7;
      if (byte_21AEF7)
      {
        breakpoint_break(&__ptr, (&stru_68.align + 3), 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 5104))(a1, a2);
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
        v39 = 159;
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
  (*(*(v9 + 24) + 5104))(a1, a2);
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
      end_query((v9 + 4640));
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
      *(v13 + 1) = 159;
      *(v13 + 8) = 256;
      v45 = 0;
      pthread_threadid_np(0, &v45);
      *(v13 + 1) = v45;
      strcpy(v13 + 36, "Ce");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21AEF7;
      if (byte_21AEF7)
      {
        breakpoint_break(&__ptr, (&stru_68.align + 3), 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 5104))(a1, a2);
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
        v39 = 159;
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
  (*(*(v9 + 24) + 5104))(a1, a2);
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
      end_query((v9 + 4640));
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
    v13 = *(*(v9 + 24) + 5104);

    v13(a1, a2);
  }

  else
  {
    (*(*(v9 + 32) + 5104))(a1, a2);
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
      end_query((v9 + 4640));
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
    v16 = *(*(v9 + 24) + 5104);

    v16(a1, a2);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 5104))(a1, a2);
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

void sub_5C420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void get_queryiv(__GLIContextRec *a1, GPUTools::GL *a2, uint64_t a3, int *a4)
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
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v13 + 24) + 5112);

      v39(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v46, 0, sizeof(v46));
    GPUTools::GL::DYGetQueryParameterInfo(a2, a3, &v46[1], v46, v16);
    v17 = 105;
    if (v46[0])
    {
      v17 = 101;
    }

    snprintf((v13 + 4709), 0x40uLL, "Cee@%u%c", *&v46[1], v17);
    GPUTools::FB::Encode(&v47, 276, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF6C;
    if (byte_21AF6C)
    {
      breakpoint_break(&v47, &stru_108.sectname[12], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 5112))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v47;
        *(v47 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v42 = *(&g_DYTimebaseInfo + 1);
        v43 = __udivti3();
        v44 = v47;
        *(v47 + 3) = v43;
        v44[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
    v30 = v47;
    v45 = *(v47 + 1);
    v48 = v47;
    if (v49 >= 0x24)
    {
      *(v47 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v47, 276, 256, v13 + 4709, v23, v24, v25, v26, *v13);
    *(v47 + 1) = v45;
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &v47);
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
LABEL_36:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = *v47;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v35 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_44;
      }

      v40 = 2;
      v41 = 276;
    }

    breakpoint_break(&v47, v41, v40, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5112))(a1, a2, a3, a4);
LABEL_44:
  if (v47)
  {
    free(v47);
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
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v13 + 24) + 5112);

      v39(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v46, 0, sizeof(v46));
    GPUTools::GL::DYGetQueryParameterInfo(a2, a3, &v46[1], v46, v16);
    v17 = 105;
    if (v46[0])
    {
      v17 = 101;
    }

    snprintf((v13 + 4709), 0x40uLL, "Cee@%u%c", *&v46[1], v17);
    GPUTools::FB::Encode(&v47, 276, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF6C;
    if (byte_21AF6C)
    {
      breakpoint_break(&v47, &stru_108.sectname[12], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 5112))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v47;
        *(v47 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v42 = *(&g_DYTimebaseInfo + 1);
        v43 = __udivti3();
        v44 = v47;
        *(v47 + 3) = v43;
        v44[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
    v30 = v47;
    v45 = *(v47 + 1);
    v48 = v47;
    if (v49 >= 0x24)
    {
      *(v47 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v47, 276, 256, v13 + 4709, v23, v24, v25, v26, *v13);
    *(v47 + 1) = v45;
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &v47);
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
LABEL_36:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = *v47;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v35 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_44;
      }

      v40 = 2;
      v41 = 276;
    }

    breakpoint_break(&v47, v41, v40, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5112))(a1, a2, a3, a4);
LABEL_44:
  if (v47)
  {
    free(v47);
  }
}

void sub_5C918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_query_objectiv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, int *a4)
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
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v13 + 24) + 5120);

      v39(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v46, 0, sizeof(v46));
    GPUTools::GL::DYGetQueryObjectParameterInfo(a3, &v46[1], v46, v16);
    v17 = 105;
    if (v46[0])
    {
      v17 = 101;
    }

    snprintf((v13 + 4709), 0x40uLL, "Cuie@%u%c", *&v46[1], v17);
    GPUTools::FB::Encode(&v47, 274, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF6A;
    if (byte_21AF6A)
    {
      breakpoint_break(&v47, &stru_108.sectname[10], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 5120))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v47;
        *(v47 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v42 = *(&g_DYTimebaseInfo + 1);
        v43 = __udivti3();
        v44 = v47;
        *(v47 + 3) = v43;
        v44[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
    v30 = v47;
    v45 = *(v47 + 1);
    v48 = v47;
    if (v49 >= 0x24)
    {
      *(v47 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v47, 274, 256, v13 + 4709, v23, v24, v25, v26, *v13);
    *(v47 + 1) = v45;
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &v47);
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
LABEL_36:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = *v47;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v35 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_44;
      }

      v40 = 2;
      v41 = 274;
    }

    breakpoint_break(&v47, v41, v40, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5120))(a1, a2, a3, a4);
LABEL_44:
  if (v47)
  {
    free(v47);
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
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v13 + 24) + 5120);

      v39(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v46, 0, sizeof(v46));
    GPUTools::GL::DYGetQueryObjectParameterInfo(a3, &v46[1], v46, v16);
    v17 = 105;
    if (v46[0])
    {
      v17 = 101;
    }

    snprintf((v13 + 4709), 0x40uLL, "Cuie@%u%c", *&v46[1], v17);
    GPUTools::FB::Encode(&v47, 274, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF6A;
    if (byte_21AF6A)
    {
      breakpoint_break(&v47, &stru_108.sectname[10], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 5120))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v47;
        *(v47 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v42 = *(&g_DYTimebaseInfo + 1);
        v43 = __udivti3();
        v44 = v47;
        *(v47 + 3) = v43;
        v44[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
    v30 = v47;
    v45 = *(v47 + 1);
    v48 = v47;
    if (v49 >= 0x24)
    {
      *(v47 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v47, 274, 256, v13 + 4709, v23, v24, v25, v26, *v13);
    *(v47 + 1) = v45;
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &v47);
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
LABEL_36:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = *v47;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v35 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_44;
      }

      v40 = 2;
      v41 = 274;
    }

    breakpoint_break(&v47, v41, v40, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5120))(a1, a2, a3, a4);
LABEL_44:
  if (v47)
  {
    free(v47);
  }
}

void sub_5CE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_query_objectuiv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, unsigned int *a4)
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
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v13 + 24) + 5128);

      v39(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v46, 0, sizeof(v46));
    GPUTools::GL::DYGetQueryObjectParameterInfo(a3, &v46[1], v46, v16);
    v17 = "ui";
    if (v46[0])
    {
      v17 = "e";
    }

    snprintf((v13 + 4709), 0x40uLL, "Cuie@%u%s", *&v46[1], v17);
    GPUTools::FB::Encode(&v47, 275, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF6B;
    if (byte_21AF6B)
    {
      breakpoint_break(&v47, &stru_108.sectname[11], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 5128))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v47;
        *(v47 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v42 = *(&g_DYTimebaseInfo + 1);
        v43 = __udivti3();
        v44 = v47;
        *(v47 + 3) = v43;
        v44[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
    v30 = v47;
    v45 = *(v47 + 1);
    v48 = v47;
    if (v49 >= 0x24)
    {
      *(v47 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v47, 275, 256, v13 + 4709, v23, v24, v25, v26, *v13);
    *(v47 + 1) = v45;
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &v47);
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
LABEL_36:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = *v47;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v35 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_44;
      }

      v40 = 2;
      v41 = 275;
    }

    breakpoint_break(&v47, v41, v40, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5128))(a1, a2, a3, a4);
LABEL_44:
  if (v47)
  {
    free(v47);
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
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v13 + 24) + 5128);

      v39(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v46, 0, sizeof(v46));
    GPUTools::GL::DYGetQueryObjectParameterInfo(a3, &v46[1], v46, v16);
    v17 = "ui";
    if (v46[0])
    {
      v17 = "e";
    }

    snprintf((v13 + 4709), 0x40uLL, "Cuie@%u%s", *&v46[1], v17);
    GPUTools::FB::Encode(&v47, 275, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF6B;
    if (byte_21AF6B)
    {
      breakpoint_break(&v47, &stru_108.sectname[11], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 5128))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v47;
        *(v47 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v42 = *(&g_DYTimebaseInfo + 1);
        v43 = __udivti3();
        v44 = v47;
        *(v47 + 3) = v43;
        v44[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
    v30 = v47;
    v45 = *(v47 + 1);
    v48 = v47;
    if (v49 >= 0x24)
    {
      *(v47 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v47, 275, 256, v13 + 4709, v23, v24, v25, v26, *v13);
    *(v47 + 1) = v45;
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &v47);
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
LABEL_36:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = *v47;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v35 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_44;
      }

      v40 = 2;
      v41 = 275;
    }

    breakpoint_break(&v47, v41, v40, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5128))(a1, a2, a3, a4);
LABEL_44:
  if (v47)
  {
    free(v47);
  }
}

void sub_5D308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void bind_buffer(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v28 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v28 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v29 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v29, 0, do_nothing);
      v30 = *(*(v11 + 24) + 5136);

      v30(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v36, 12, 0, "Ceui", v14, v15, v16, v17, *v11);
    v18 = byte_21AE64;
    if (byte_21AE64)
    {
      breakpoint_break(v36, &dword_C, 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 5136))(a1, a2, a3);
      v20 = mach_absolute_time() - v19;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v21 = v36[0];
        *(v36[0] + 2) = v19;
        v21[3] = v20;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v33 = *(&g_DYTimebaseInfo + 1);
        v34 = __udivti3();
        v35 = v36[0];
        *(v36[0] + 3) = v34;
        v35[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
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

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v36);
    v22 = *(v11 + 3404);
    if (v22 && (gBreakOnError & 1) != 0)
    {
      v31 = 3;
      v32 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_32:
        v23 = [DYGetGLGuestAppClient() defaultFbufStream];
        v24 = v23;
        while (atomic_exchange(v23 + 14, 1u) == 1)
        {
            ;
          }
        }

        v25 = *v36[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v24 + 14);
        if ((gCheckGLErrors & 1) == 0)
        {
          check_errors(v11);
        }

        if (!*(v11 + 3404))
        {
          wrapper_cache_buffer_binding(v11, a2, a3);
        }

        v26 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v26 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_44;
      }

      v31 = 2;
      v32 = 12;
    }

    breakpoint_break(v36, v32, v31, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5136))(a1, a2, a3);
LABEL_44:
  if (v36[0])
  {
    free(v36[0]);
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
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v28 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v28 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v29 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v29, 0, do_nothing);
      v30 = *(*(v11 + 24) + 5136);

      v30(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v36, 12, 0, "Ceui", v14, v15, v16, v17, *v11);
    v18 = byte_21AE64;
    if (byte_21AE64)
    {
      breakpoint_break(v36, &dword_C, 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 5136))(a1, a2, a3);
      v20 = mach_absolute_time() - v19;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v21 = v36[0];
        *(v36[0] + 2) = v19;
        v21[3] = v20;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v33 = *(&g_DYTimebaseInfo + 1);
        v34 = __udivti3();
        v35 = v36[0];
        *(v36[0] + 3) = v34;
        v35[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
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

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v36);
    v22 = *(v11 + 3404);
    if (v22 && (gBreakOnError & 1) != 0)
    {
      v31 = 3;
      v32 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_32:
        v23 = [DYGetGLGuestAppClient() defaultFbufStream];
        v24 = v23;
        while (atomic_exchange(v23 + 14, 1u) == 1)
        {
            ;
          }
        }

        v25 = *v36[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v24 + 14);
        if ((gCheckGLErrors & 1) == 0)
        {
          check_errors(v11);
        }

        if (!*(v11 + 3404))
        {
          wrapper_cache_buffer_binding(v11, a2, a3);
        }

        v26 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v26 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_44;
      }

      v31 = 2;
      v32 = 12;
    }

    breakpoint_break(v36, v32, v31, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5136))(a1, a2, a3);
LABEL_44:
  if (v36[0])
  {
    free(v36[0]);
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
LABEL_27:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v16, 0, do_nothing);
LABEL_34:
      v17 = *(*(v11 + 24) + 5136);

      v17(a1, a2, a3);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v15 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v15 >= 1)
    {
      goto LABEL_27;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_34;
  }

  (*(*(v11 + 32) + 5136))(a1, a2, a3);
  ++*(v11 + 3704);
  if (gCheckGLErrors == 1)
  {
    bind_texture(v11);
    if (v18)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!gCheckGLErrors)
  {
LABEL_20:
    check_errors(v11);
  }

LABEL_21:
  if (!*(v11 + 3404))
  {
    wrapper_cache_buffer_binding(v11, a2, a3);
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
LABEL_27:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v19, 0, do_nothing);
LABEL_34:
      v20 = *(*(v11 + 24) + 5136);

      v20(a1, a2, a3);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v18 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v18 >= 1)
    {
      goto LABEL_27;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_34;
  }

  v14 = mach_absolute_time();
  (*(*(v11 + 32) + 5136))(a1, a2, a3);
  v15 = mach_absolute_time();
  v16 = vdupq_n_s64(1uLL);
  v16.i64[0] = v15 - v14;
  *(v11 + 3696) = vaddq_s64(v16, *(v11 + 3696));
  if (gCheckGLErrors == 1)
  {
    bind_texture(v11);
    if (v21)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!gCheckGLErrors)
  {
LABEL_20:
    check_errors(v11);
  }

LABEL_21:
  if (!*(v11 + 3404))
  {
    wrapper_cache_buffer_binding(v11, a2, a3);
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
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v14 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v14, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      bind_buffer();
      return;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v15 = *(*(v11 + 24) + 5136);

  v15(a1, a2, a3);
}

void sub_5D77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void delete_buffers(__GLIContextRec *a1, volatile int *a2, const unsigned int *a3)
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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v28 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v28 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v29 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v29, 0, do_nothing);
      v30 = *(*(v11 + 24) + 5144);

      v30(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    snprintf((v11 + 4709), 0x40uLL, "Ci@%dui", a2);
    GPUTools::FB::Encode(v36, 119, 0, v11 + 4709, v14, v15, v16, v17, *v11);
    v18 = byte_21AECF;
    if (byte_21AECF)
    {
      breakpoint_break(v36, &stru_68.sectname[15], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 5144))(a1, a2, a3);
      v20 = mach_absolute_time() - v19;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v21 = v36[0];
        *(v36[0] + 2) = v19;
        v21[3] = v20;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v33 = *(&g_DYTimebaseInfo + 1);
        v34 = __udivti3();
        v35 = v36[0];
        *(v36[0] + 3) = v34;
        v35[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
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

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v36);
    v22 = *(v11 + 3404);
    if (v22 && (gBreakOnError & 1) != 0)
    {
      v31 = 3;
      v32 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_32:
        v23 = [DYGetGLGuestAppClient() defaultFbufStream];
        v24 = v23;
        while (atomic_exchange(v23 + 14, 1u) == 1)
        {
            ;
          }
        }

        v25 = *v36[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v24 + 14);
        wrapper_cache_buffer_binding_delete(v11, a2, a3);
        v26 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v26 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_40;
      }

      v31 = 2;
      v32 = 119;
    }

    breakpoint_break(v36, v32, v31, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5144))(a1, a2, a3);
LABEL_40:
  if (v36[0])
  {
    free(v36[0]);
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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v28 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v28 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v29 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v29, 0, do_nothing);
      v30 = *(*(v11 + 24) + 5144);

      v30(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    snprintf((v11 + 4709), 0x40uLL, "Ci@%dui", a2);
    GPUTools::FB::Encode(v36, 119, 0, v11 + 4709, v14, v15, v16, v17, *v11);
    v18 = byte_21AECF;
    if (byte_21AECF)
    {
      breakpoint_break(v36, &stru_68.sectname[15], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 5144))(a1, a2, a3);
      v20 = mach_absolute_time() - v19;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v21 = v36[0];
        *(v36[0] + 2) = v19;
        v21[3] = v20;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v33 = *(&g_DYTimebaseInfo + 1);
        v34 = __udivti3();
        v35 = v36[0];
        *(v36[0] + 3) = v34;
        v35[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
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

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v36);
    v22 = *(v11 + 3404);
    if (v22 && (gBreakOnError & 1) != 0)
    {
      v31 = 3;
      v32 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_32:
        v23 = [DYGetGLGuestAppClient() defaultFbufStream];
        v24 = v23;
        while (atomic_exchange(v23 + 14, 1u) == 1)
        {
            ;
          }
        }

        v25 = *v36[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v24 + 14);
        wrapper_cache_buffer_binding_delete(v11, a2, a3);
        v26 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v26 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_40;
      }

      v31 = 2;
      v32 = 119;
    }

    breakpoint_break(v36, v32, v31, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5144))(a1, a2, a3);
LABEL_40:
  if (v36[0])
  {
    free(v36[0]);
  }
}

void sub_5DBDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void gen_buffers(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
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
      v36 = *(*(v11 + 24) + 5152);

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
    GPUTools::FB::Encode(&v43, 201, v11 + 4709, v14, v15, v16, v17, v18, *v11);
    v19 = byte_21AF21;
    if (byte_21AF21)
    {
      breakpoint_break(&v43, &stru_B8.segname[1], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v11 + 32) + 5152))(a1, a2, a3);
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

    GPUTools::FB::Encode(&v43, 201, 0, v11 + 4709, v20, v21, v22, v23, *v11);
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
      v38 = 201;
    }

    breakpoint_break(&v43, v38, v37, v28, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5152))(a1, a2, a3);
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
      v36 = *(*(v11 + 24) + 5152);

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
    GPUTools::FB::Encode(&v43, 201, v11 + 4709, v14, v15, v16, v17, v18, *v11);
    v19 = byte_21AF21;
    if (byte_21AF21)
    {
      breakpoint_break(&v43, &stru_B8.segname[1], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v11 + 32) + 5152))(a1, a2, a3);
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

    GPUTools::FB::Encode(&v43, 201, 0, v11 + 4709, v20, v21, v22, v23, *v11);
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
      v38 = 201;
    }

    breakpoint_break(&v43, v38, v37, v28, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5152))(a1, a2, a3);
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
      v16 = *(*(v11 + 24) + 5152);

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

  (*(*(v11 + 32) + 5152))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 5152);

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
  (*(*(v11 + 32) + 5152))(a1, a2, a3);
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

void sub_5E07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t is_buffer(__GLIContextRec *a1, uint64_t a2)
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v43 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v43 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v44 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v44, 0, do_nothing);
      v45 = *(*(v9 + 24) + 5160);

      return v45(a1, a2);
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v56 = 0;
  v57 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v56;
    v14 = v56 - __ptr;
    v15 = v57;
    v16 = v57 - (v56 - __ptr);
    if (v16 <= 0x33)
    {
      v46 = (307 - v16) & 0x100;
      v57 += v46;
      v13 = malloc_type_malloc(v46 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13 || (v13 & 3) != 0)
      {
        goto LABEL_67;
      }

      v12 = v13 + v14;
    }

    *(v12 + 12) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 52;
    v56 = v12 + 52;
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
    v23 = v57;
    v24 = v57 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v56;
LABEL_22:
      bzero(v17, v20);
      v56 = &v25[v20];
      *v21 += v20;
LABEL_23:
      v13[1] = 325;
      v13[8] = 256;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v13 + 1) = v54;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21AF9D;
      if (byte_21AF9D)
      {
        breakpoint_break(&__ptr, (&stru_108.nreloc + 1), 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 5160))(a1, a2);
      v34 = mach_absolute_time() - v32;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v35 = __ptr;
        *(__ptr + 2) = v32;
        v35[3] = v34;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v49 = *(&g_DYTimebaseInfo + 1);
        v50 = __udivti3();
        v51 = __ptr;
        *(__ptr + 3) = v50;
        v51[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v9);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "ub", v27, v28, v29, v30, v31, v33);
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
      v36 = *(v9 + 3404);
      if (v36 && (gBreakOnError & 1) != 0)
      {
        v47 = 3;
        v48 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
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
          v40 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v40 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v47 = 2;
        v48 = 325;
      }

      breakpoint_break(&__ptr, v48, v47, v36, v9);
      goto LABEL_37;
    }

    v52 = (v20 - v24 + 255) & 0xFFFFFF00;
    v53 = v52 + v57;
    v57 += v52;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v53);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v52 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_67;
      }
    }

    if ((v21 & 3) == 0)
    {
      v25 = v21 + v22;
      v17 = v25;
      goto LABEL_22;
    }

LABEL_67:
    result = dy_abort();
    __break(1u);
    return result;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v33 = (*(*(v9 + 24) + 5160))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v33;
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v43 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v43 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v44 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v44, 0, do_nothing);
      v45 = *(*(v9 + 24) + 5160);

      return v45(a1, a2);
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v56 = 0;
  v57 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v56;
    v14 = v56 - __ptr;
    v15 = v57;
    v16 = v57 - (v56 - __ptr);
    if (v16 <= 0x33)
    {
      v46 = (307 - v16) & 0x100;
      v57 += v46;
      v13 = malloc_type_malloc(v46 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13 || (v13 & 3) != 0)
      {
        goto LABEL_67;
      }

      v12 = v13 + v14;
    }

    *(v12 + 12) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 52;
    v56 = v12 + 52;
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
    v23 = v57;
    v24 = v57 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v56;
LABEL_22:
      bzero(v17, v20);
      v56 = &v25[v20];
      *v21 += v20;
LABEL_23:
      v13[1] = 325;
      v13[8] = 256;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v13 + 1) = v54;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21AF9D;
      if (byte_21AF9D)
      {
        breakpoint_break(&__ptr, (&stru_108.nreloc + 1), 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 5160))(a1, a2);
      v34 = mach_absolute_time() - v32;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v35 = __ptr;
        *(__ptr + 2) = v32;
        v35[3] = v34;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v49 = *(&g_DYTimebaseInfo + 1);
        v50 = __udivti3();
        v51 = __ptr;
        *(__ptr + 3) = v50;
        v51[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v9);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "ub", v27, v28, v29, v30, v31, v33);
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
      v36 = *(v9 + 3404);
      if (v36 && (gBreakOnError & 1) != 0)
      {
        v47 = 3;
        v48 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
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
          v40 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v40 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v47 = 2;
        v48 = 325;
      }

      breakpoint_break(&__ptr, v48, v47, v36, v9);
      goto LABEL_37;
    }

    v52 = (v20 - v24 + 255) & 0xFFFFFF00;
    v53 = v52 + v57;
    v57 += v52;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v53);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v52 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_67;
      }
    }

    if ((v21 & 3) == 0)
    {
      v25 = v21 + v22;
      v17 = v25;
      goto LABEL_22;
    }

LABEL_67:
    result = dy_abort();
    __break(1u);
    return result;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v33 = (*(*(v9 + 24) + 5160))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v33;
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
      v17 = *(*(v9 + 24) + 5160);

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

  result = (*(*(v9 + 32) + 5160))(a1, a2);
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
      v19 = *(*(v9 + 24) + 5160);

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
  v13 = (*(*(v9 + 32) + 5160))(a1, a2);
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

  v16 = *(*(v9 + 24) + 5160);

  return v16(a1, a2);
}

void sub_5E648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void buffer_data(__GLIContextRec *a1, volatile int *a2, uint64_t a3, const void *a4, uint64_t a5)
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
      goto LABEL_51;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v38 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v38 >= 1)
    {
LABEL_51:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v39 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v39, 0, do_nothing);
      v40 = *(*(v15 + 24) + 5168);

      v40(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if (a4)
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::Encode(v46, 29, "CelUe", v23, v24, v25, v26, v27, *v15);
    }

    else
    {
      GPUTools::FB::Encode(v46, 29, "Celpe", v18, v19, v20, v21, v22, *v15);
    }

    v28 = byte_21AE75;
    if (byte_21AE75)
    {
      breakpoint_break(v46, (&dword_1C + 1), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
    {
      v29 = mach_absolute_time();
      (*(*(v15 + 32) + 5168))(a1, a2, a3, a4, a5);
      v30 = mach_absolute_time() - v29;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v31 = v46[0];
        *(v46[0] + 2) = v29;
        v31[3] = v30;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v43 = *(&g_DYTimebaseInfo + 1);
        v44 = __udivti3();
        v45 = v46[0];
        *(v46[0] + 3) = v44;
        v45[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_26;
        }
      }

      check_errors(v15);
    }

LABEL_26:
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v46);
    v32 = *(v15 + 3404);
    if (v32 && (gBreakOnError & 1) != 0)
    {
      v41 = 3;
      v42 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v28 & 2) == 0)
      {
LABEL_35:
        v33 = [DYGetGLGuestAppClient() defaultFbufStream];
        v34 = v33;
        while (atomic_exchange(v33 + 14, 1u) == 1)
        {
            ;
          }
        }

        v35 = *v46[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v34 + 14);
        if ((gCheckGLErrors & 1) == 0)
        {
          check_errors(v15);
        }

        if (!*(v15 + 3404))
        {
          wrapper_cache_buffer_target(v15, a2);
        }

        v36 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v36 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        goto LABEL_47;
      }

      v41 = 2;
      v42 = 29;
    }

    breakpoint_break(v46, v42, v41, v32, v15);
    goto LABEL_35;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 5168))(a1, a2, a3, a4, a5);
LABEL_47:
  if (v46[0])
  {
    free(v46[0]);
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
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(*(v15 + 24) + 5168);

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
    GPUTools::FB::Encode(v41, 29, "Celpe", v18, v19, v20, v21, v22, *v15);
    v23 = byte_21AE75;
    if (byte_21AE75)
    {
      breakpoint_break(v41, (&dword_1C + 1), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v15 + 32) + 5168))(a1, a2, a3, a4, a5);
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
        if ((gCheckGLErrors & 1) == 0)
        {
          check_errors(v15);
        }

        if (!*(v15 + 3404))
        {
          wrapper_cache_buffer_target(v15, a2);
        }

        v31 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        goto LABEL_44;
      }

      v36 = 2;
      v37 = 29;
    }

    breakpoint_break(v41, v37, v36, v27, v15);
    goto LABEL_32;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 5168))(a1, a2, a3, a4, a5);
LABEL_44:
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
LABEL_27:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_34:
      v21 = *(*(v15 + 24) + 5168);

      v21(a1, a2, a3, a4, a5);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v19 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v19 >= 1)
    {
      goto LABEL_27;
    }
  }

  *(v15 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_34;
  }

  (*(*(v15 + 32) + 5168))(a1, a2, a3, a4, a5);
  ++*(v15 + 3704);
  if (gCheckGLErrors == 1)
  {
    bind_texture(v15);
    if (v22)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!gCheckGLErrors)
  {
LABEL_20:
    check_errors(v15);
  }

LABEL_21:
  if (!*(v15 + 3404))
  {
    wrapper_cache_buffer_target(v15, a2);
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
      v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v23, 0, do_nothing);
LABEL_34:
      v24 = *(*(v15 + 24) + 5168);

      v24(a1, a2, a3, a4, a5);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v22 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v22 >= 1)
    {
      goto LABEL_27;
    }
  }

  *(v15 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_34;
  }

  v18 = mach_absolute_time();
  (*(*(v15 + 32) + 5168))(a1, a2, a3, a4, a5);
  v19 = mach_absolute_time();
  v20 = vdupq_n_s64(1uLL);
  v20.i64[0] = v19 - v18;
  *(v15 + 3696) = vaddq_s64(v20, *(v15 + 3696));
  if (gCheckGLErrors == 1)
  {
    bind_texture(v15);
    if (v25)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!gCheckGLErrors)
  {
LABEL_20:
    check_errors(v15);
  }

LABEL_21:
  if (!*(v15 + 3404))
  {
    wrapper_cache_buffer_target(v15, a2);
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
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      buffer_data(v15, a2);
      return;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v19 = *(*(v15 + 24) + 5168);

  v19(a1, a2, a3, a4, a5);
}

void sub_5EB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void buffer_sub_data(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
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
      v35 = *(*(v15 + 24) + 5176);

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
    DYGetGLGuestAppClient();
    GPUTools::Interpose::DYSavePointer();
    GPUTools::FB::Encode(v41, 31, "CellU", v18, v19, v20, v21, v22, *v15);
    v23 = byte_21AE77;
    if (byte_21AE77)
    {
      breakpoint_break(v41, (&dword_1C + 3), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v15 + 32) + 5176))(a1, a2, a3, a4, a5);
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
      v37 = 31;
    }

    breakpoint_break(v41, v37, v36, v27, v15);
    goto LABEL_32;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 5176))(a1, a2, a3, a4, a5);
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
      v44 = *(*(v15 + 24) + 5176);

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
    if (v22 <= 0x4F)
    {
      v45 = (335 - v22) & 0x100;
      v56 += v45;
      v19 = malloc_type_malloc(v45 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19 || (v19 & 3) != 0)
      {
        goto LABEL_66;
      }

      v18 = v19 + v20;
    }

    *(v18 + 3) = 0u;
    *(v18 + 4) = 0u;
    *(v18 + 1) = 0u;
    *(v18 + 2) = 0u;
    *v18 = 0u;
    v23 = v18 + 80;
    v55 = v18 + 80;
    v24 = v18 + 80 - v19;
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
      v19[1] = 31;
      v19[8] = 0;
      v53 = 0;
      pthread_threadid_np(0, &v53);
      *(v19 + 1) = v53;
      strcpy(v19 + 36, "Cellp");
      *(v19 + 11) = *v15;
      v19[13] = a2;
      *(v19 + 7) = a3;
      *(v19 + 8) = a4;
      *(v19 + 9) = a5;
      v32 = byte_21AE77;
      if (byte_21AE77)
      {
        breakpoint_break(&__ptr, (&dword_1C + 3), 1, *(v15 + 3404), v15);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v32 & 4))
      {
        v33 = mach_absolute_time();
        (*(*(v15 + 32) + 5176))(a1, a2, a3, a4, a5);
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
        v47 = 31;
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
  (*(*(v15 + 24) + 5176))(a1, a2, a3, a4, a5);
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
      v20 = *(*(v15 + 24) + 5176);

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

  (*(*(v15 + 32) + 5176))(a1, a2, a3, a4, a5);
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
      v23 = *(*(v15 + 24) + 5176);

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
  (*(*(v15 + 32) + 5176))(a1, a2, a3, a4, a5);
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

void sub_5EFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t map_buffer(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v45 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v45 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v46 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v46, 0, do_nothing);
      v47 = *(*(v11 + 24) + 5192);

      return v47(a1, a2, a3);
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v58 = 0;
  v59 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v58;
    v16 = v58 - __ptr;
    v17 = v59;
    v18 = v59 - (v58 - __ptr);
    if (v18 <= 0x37)
    {
      v48 = (311 - v18) & 0x100;
      v59 += v48;
      v15 = malloc_type_malloc(v48 + v17, 0xF962E99uLL);
      __ptr = v15;
      if (!v15 || (v15 & 3) != 0)
      {
        goto LABEL_67;
      }

      v14 = v15 + v16;
    }

    *(v14 + 6) = 0;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 0u;
    v19 = v14 + 56;
    v58 = v14 + 56;
    v20 = v14 + 56 - v15;
    *v15 = v20;
    v21 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v22 = v21 - v20;
    if (v21 == v20)
    {
      goto LABEL_23;
    }

    v23 = __ptr;
    v24 = v19 - __ptr;
    v25 = v59;
    v26 = v59 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v58;
LABEL_22:
      bzero(v19, v22);
      v58 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 363;
      v15[8] = 0;
      v56 = 0;
      pthread_threadid_np(0, &v56);
      *(v15 + 1) = v56;
      v15[9] = 6645059;
      *(v15 + 5) = *v11;
      v15[12] = a2;
      v15[13] = a3;
      v28 = byte_21AFC3;
      if (byte_21AFC3)
      {
        breakpoint_break(&__ptr, &stru_158.segname[3], 1, *(v11 + 3404), v11);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4)
      {
        v35 = 0;
        goto LABEL_28;
      }

      v34 = mach_absolute_time();
      v35 = (*(*(v11 + 32) + 5192))(a1, a2, a3);
      v36 = mach_absolute_time() - v34;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v37 = __ptr;
        *(__ptr + 2) = v34;
        v37[3] = v36;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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
          goto LABEL_28;
        }
      }

      check_errors(v11);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "p", v29, v30, v31, v32, v33, v35);
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

      GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &__ptr);
      v38 = *(v11 + 3404);
      if (v38 && (gBreakOnError & 1) != 0)
      {
        v49 = 3;
        v50 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v28 & 2) == 0)
        {
LABEL_37:
          v39 = [DYGetGLGuestAppClient() defaultFbufStream];
          v40 = v39;
          while (atomic_exchange(v39 + 14, 1u) == 1)
          {
              ;
            }
          }

          v41 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v40 + 14);
          v42 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v42 >= 1)
          {
            handle_opengl_thread_conflict(v11);
          }

          goto LABEL_45;
        }

        v49 = 2;
        v50 = 363;
      }

      breakpoint_break(&__ptr, v50, v49, v38, v11);
      goto LABEL_37;
    }

    v54 = (v22 - v26 + 255) & 0xFFFFFF00;
    v55 = v54 + v59;
    v59 += v54;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v55);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v54 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_67;
      }
    }

    if ((v23 & 3) == 0)
    {
      v27 = v23 + v24;
      v19 = v27;
      goto LABEL_22;
    }

LABEL_67:
    result = dy_abort();
    __break(1u);
    return result;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v35 = (*(*(v11 + 24) + 5192))(a1, a2, a3);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v35;
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v45 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v45 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v46 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v46, 0, do_nothing);
      v47 = *(*(v11 + 24) + 5192);

      return v47(a1, a2, a3);
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v58 = 0;
  v59 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v58;
    v16 = v58 - __ptr;
    v17 = v59;
    v18 = v59 - (v58 - __ptr);
    if (v18 <= 0x37)
    {
      v48 = (311 - v18) & 0x100;
      v59 += v48;
      v15 = malloc_type_malloc(v48 + v17, 0xF962E99uLL);
      __ptr = v15;
      if (!v15 || (v15 & 3) != 0)
      {
        goto LABEL_67;
      }

      v14 = v15 + v16;
    }

    *(v14 + 6) = 0;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 0u;
    v19 = v14 + 56;
    v58 = v14 + 56;
    v20 = v14 + 56 - v15;
    *v15 = v20;
    v21 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v22 = v21 - v20;
    if (v21 == v20)
    {
      goto LABEL_23;
    }

    v23 = __ptr;
    v24 = v19 - __ptr;
    v25 = v59;
    v26 = v59 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v58;
LABEL_22:
      bzero(v19, v22);
      v58 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 363;
      v15[8] = 0;
      v56 = 0;
      pthread_threadid_np(0, &v56);
      *(v15 + 1) = v56;
      v15[9] = 6645059;
      *(v15 + 5) = *v11;
      v15[12] = a2;
      v15[13] = a3;
      v28 = byte_21AFC3;
      if (byte_21AFC3)
      {
        breakpoint_break(&__ptr, &stru_158.segname[3], 1, *(v11 + 3404), v11);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4)
      {
        v35 = 0;
        goto LABEL_28;
      }

      v34 = mach_absolute_time();
      v35 = (*(*(v11 + 32) + 5192))(a1, a2, a3);
      v36 = mach_absolute_time() - v34;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v37 = __ptr;
        *(__ptr + 2) = v34;
        v37[3] = v36;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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
          goto LABEL_28;
        }
      }

      check_errors(v11);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "p", v29, v30, v31, v32, v33, v35);
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

      GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &__ptr);
      v38 = *(v11 + 3404);
      if (v38 && (gBreakOnError & 1) != 0)
      {
        v49 = 3;
        v50 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v28 & 2) == 0)
        {
LABEL_37:
          v39 = [DYGetGLGuestAppClient() defaultFbufStream];
          v40 = v39;
          while (atomic_exchange(v39 + 14, 1u) == 1)
          {
              ;
            }
          }

          v41 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v40 + 14);
          v42 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v42 >= 1)
          {
            handle_opengl_thread_conflict(v11);
          }

          goto LABEL_45;
        }

        v49 = 2;
        v50 = 363;
      }

      breakpoint_break(&__ptr, v50, v49, v38, v11);
      goto LABEL_37;
    }

    v54 = (v22 - v26 + 255) & 0xFFFFFF00;
    v55 = v54 + v59;
    v59 += v54;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v55);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v54 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_67;
      }
    }

    if ((v23 & 3) == 0)
    {
      v27 = v23 + v24;
      v19 = v27;
      goto LABEL_22;
    }

LABEL_67:
    result = dy_abort();
    __break(1u);
    return result;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v35 = (*(*(v11 + 24) + 5192))(a1, a2, a3);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v35;
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
      v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v16, 0, do_nothing);
LABEL_27:
      v19 = *(*(v11 + 24) + 5192);

      return v19(a1, a2, a3);
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
    goto LABEL_27;
  }

  result = (*(*(v11 + 32) + 5192))(a1, a2, a3);
  ++*(v11 + 3704);
  if (gCheckGLErrors == 1)
  {
    v18 = result;
    alpha_func(v11);
    result = v18;
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {
    v17 = result;
    handle_opengl_thread_conflict(v11);
    return v17;
  }

  return result;
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
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_27:
      v21 = *(*(v11 + 24) + 5192);

      return v21(a1, a2, a3);
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
    goto LABEL_27;
  }

  v14 = mach_absolute_time();
  v15 = (*(*(v11 + 32) + 5192))(a1, a2, a3);
  v16 = mach_absolute_time();
  v17 = vdupq_n_s64(1uLL);
  v17.i64[0] = v16 - v14;
  *(v11 + 3696) = vaddq_s64(v17, *(v11 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors != 1 || (add - 1) < 1)
  {
    return v15;
  }

  handle_opengl_thread_conflict(v11);
  return v15;
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
      v14 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v14 >= 1)
      {
        handle_opengl_thread_conflict(v11);
      }

      return 0;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 5192);

  return v18(a1, a2, a3);
}

void sub_5F59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t unmap_buffer(__GLIContextRec *a1, uint64_t a2)
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
      goto LABEL_61;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_61:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v9 + 24) + 5200);

      return v37(a1, a2);
    }
  }

  *(v9 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v46 = 0;
    (*(*(v9 + 32) + 5208))(*(v9 + 16), a2, 35003, &v46);
    v44 = 0;
    v45 = 1;
    if (*(v9 + 4849) == 1)
    {
      (*(*(v9 + 32) + 5208))(*(v9 + 16), a2, 35347, &v45);
    }

    if (*(v9 + 4850))
    {
      (*(*(v9 + 32) + 5208))(*(v9 + 16), a2, 37151, &v44);
      v16 = ((v44 >> 4) & 1) == 0;
      v45 = v16;
      if (v46 == 35000)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v16 = v45;
      if (v46 == 35000)
      {
        goto LABEL_32;
      }
    }

    if (v16)
    {
      if (*(v9 + 4850))
      {
        v17 = 37152;
      }

      else
      {
        v17 = 34660;
      }

      if (*(v9 + 3460) < 3)
      {
        LODWORD(v43) = 0;
        (*(*(v9 + 32) + 5208))(*(v9 + 16), a2, v17, &v43);
      }

      else
      {
        v43 = 0;
        (*(*(v9 + 32) + 6392))(*(v9 + 16), a2, v17, &v43);
      }

      wrapper_copyout_mapped_buffer_data(v9, a2);
    }

LABEL_32:
    GPUTools::FB::Encode(v47, 644, 0, "Ce", v12, v13, v14, v15, *v9);
    v18 = byte_21B0DC;
    if (byte_21B0DC)
    {
      breakpoint_break(v47, &stru_248.nreloc, 1, *(v9 + 3404), v9);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4)
    {
      v25 = 0;
      goto LABEL_37;
    }

    v24 = mach_absolute_time();
    v25 = (*(*(v9 + 32) + 5200))(a1, a2);
    v26 = mach_absolute_time() - v24;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v27 = v47[0];
      *(v47[0] + 2) = v24;
      v27[3] = v26;
      if (gCheckGLErrors != 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v40 = *(&g_DYTimebaseInfo + 1);
      v41 = __udivti3();
      v42 = v47[0];
      *(v47[0] + 3) = v41;
      v42[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_37;
      }
    }

    check_errors(v9);
LABEL_37:
    GPUTools::FB::Encode(v47, 4294955008, "ub", v19, v20, v21, v22, v23, v25);
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

    GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), v47);
    v28 = *(v9 + 3404);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_46:
        v29 = [DYGetGLGuestAppClient() defaultFbufStream];
        v30 = v29;
        while (atomic_exchange(v29 + 14, 1u) == 1)
        {
            ;
          }
        }

        v31 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        if (v25 && *(v9 + 80) != *(v9 + 72))
        {
          wrapper_copyout_harvest_list_buffer(v9, a2);
        }

        v32 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v9);
        }

        goto LABEL_57;
      }

      v38 = 2;
      v39 = 644;
    }

    breakpoint_break(v47, v39, v38, v28, v9);
    goto LABEL_46;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v25 = (*(*(v9 + 24) + 5200))(a1, a2);
LABEL_57:
  if (v47[0])
  {
    free(v47[0]);
  }

  return v25;
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v43 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v43 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v44 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v44, 0, do_nothing);
      v45 = *(*(v9 + 24) + 5200);

      return v45(a1, a2);
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v56 = 0;
  v57 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v56;
    v14 = v56 - __ptr;
    v15 = v57;
    v16 = v57 - (v56 - __ptr);
    if (v16 <= 0x33)
    {
      v46 = (307 - v16) & 0x100;
      v57 += v46;
      v13 = malloc_type_malloc(v46 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13 || (v13 & 3) != 0)
      {
        goto LABEL_67;
      }

      v12 = &v13[v14];
    }

    *(v12 + 12) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 52;
    v56 = v12 + 52;
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
    v23 = v57;
    v24 = v57 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v56;
LABEL_22:
      bzero(v17, v20);
      v56 = &v25[v20];
      *v21 += v20;
LABEL_23:
      *(v13 + 1) = 644;
      *(v13 + 8) = 0;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v13 + 1) = v54;
      strcpy(v13 + 36, "Ce");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21B0DC;
      if (byte_21B0DC)
      {
        breakpoint_break(&__ptr, &stru_248.nreloc, 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 5200))(a1, a2);
      v34 = mach_absolute_time() - v32;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v35 = __ptr;
        *(__ptr + 2) = v32;
        v35[3] = v34;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v49 = *(&g_DYTimebaseInfo + 1);
        v50 = __udivti3();
        v51 = __ptr;
        *(__ptr + 3) = v50;
        v51[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v9);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "ub", v27, v28, v29, v30, v31, v33);
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
      v36 = *(v9 + 3404);
      if (v36 && (gBreakOnError & 1) != 0)
      {
        v47 = 3;
        v48 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
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
          v40 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v40 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v47 = 2;
        v48 = 644;
      }

      breakpoint_break(&__ptr, v48, v47, v36, v9);
      goto LABEL_37;
    }

    v52 = (v20 - v24 + 255) & 0xFFFFFF00;
    v53 = v52 + v57;
    v57 += v52;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v53);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v52 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_67;
      }
    }

    if ((v21 & 3) == 0)
    {
      v25 = v21 + v22;
      v17 = v25;
      goto LABEL_22;
    }

LABEL_67:
    result = dy_abort();
    __break(1u);
    return result;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v33 = (*(*(v9 + 24) + 5200))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v33;
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
      v17 = *(*(v9 + 24) + 5200);

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

  result = (*(*(v9 + 32) + 5200))(a1, a2);
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
      v19 = *(*(v9 + 24) + 5200);

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
  v13 = (*(*(v9 + 32) + 5200))(a1, a2);
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

  v16 = *(*(v9 + 24) + 5200);

  return v16(a1, a2);
}