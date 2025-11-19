void sub_5FB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void get_buffer_parameteriv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, int *a4)
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
      v39 = *(*(v13 + 24) + 5208);

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
    GPUTools::GL::DYGetBufferParameterInfo(a3, &v46[1], v46, v16);
    v17 = 105;
    if (v46[0])
    {
      v17 = 101;
    }

    snprintf((v13 + 4709), 0x40uLL, "Cee@%u%c", *&v46[1], v17);
    GPUTools::FB::Encode(&v47, 218, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF32;
    if (byte_21AF32)
    {
      breakpoint_break(&v47, (&stru_B8.addr + 2), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 5208))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v47, 218, 256, v13 + 4709, v23, v24, v25, v26, *v13);
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
      v41 = 218;
    }

    breakpoint_break(&v47, v41, v40, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5208))(a1, a2, a3, a4);
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
      v39 = *(*(v13 + 24) + 5208);

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
    GPUTools::GL::DYGetBufferParameterInfo(a3, &v46[1], v46, v16);
    v17 = 105;
    if (v46[0])
    {
      v17 = 101;
    }

    snprintf((v13 + 4709), 0x40uLL, "Cee@%u%c", *&v46[1], v17);
    GPUTools::FB::Encode(&v47, 218, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF32;
    if (byte_21AF32)
    {
      breakpoint_break(&v47, (&stru_B8.addr + 2), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 5208))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v47, 218, 256, v13 + 4709, v23, v24, v25, v26, *v13);
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
      v41 = 218;
    }

    breakpoint_break(&v47, v41, v40, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5208))(a1, a2, a3, a4);
LABEL_44:
  if (v47)
  {
    free(v47);
  }
}

void sub_6003C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_buffer_pointerv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, void **a4)
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
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_46:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v13 + 24) + 5216);

      v37(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(&v44, 219, 256, "Cee@1t", v16, v17, v18, v19, *v13);
    v20 = byte_21AF33;
    if (byte_21AF33)
    {
      breakpoint_break(&v44, (&stru_B8.addr + 3), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v13 + 32) + 5216))(a1, a2, a3, a4);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v44;
        *(v44 + 2) = v25;
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
        v42 = v44;
        *(v44 + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v13);
    }

LABEL_23:
    v28 = v44;
    v43 = *(v44 + 1);
    v45 = v44;
    if (v46 >= 0x24)
    {
      *(v44 + 8) = 0;
      *v28 = 0u;
      v28[1] = 0u;
    }

    GPUTools::FB::Encode(&v44, 219, 256, "Cee@1t", v21, v22, v23, v24, *v13);
    *(v44 + 1) = v43;
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &v44);
    v29 = *(v13 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v20 & 2) == 0)
      {
LABEL_34:
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
        v33 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_42;
      }

      v38 = 2;
      v39 = 219;
    }

    breakpoint_break(&v44, v39, v38, v29, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5216))(a1, a2, a3, a4);
LABEL_42:
  if (v44)
  {
    free(v44);
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
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_46:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v13 + 24) + 5216);

      v37(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(&v44, 219, 256, "Cee@1t", v16, v17, v18, v19, *v13);
    v20 = byte_21AF33;
    if (byte_21AF33)
    {
      breakpoint_break(&v44, (&stru_B8.addr + 3), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v13 + 32) + 5216))(a1, a2, a3, a4);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v44;
        *(v44 + 2) = v25;
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
        v42 = v44;
        *(v44 + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v13);
    }

LABEL_23:
    v28 = v44;
    v43 = *(v44 + 1);
    v45 = v44;
    if (v46 >= 0x24)
    {
      *(v44 + 8) = 0;
      *v28 = 0u;
      v28[1] = 0u;
    }

    GPUTools::FB::Encode(&v44, 219, 256, "Cee@1t", v21, v22, v23, v24, *v13);
    *(v44 + 1) = v43;
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &v44);
    v29 = *(v13 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v20 & 2) == 0)
      {
LABEL_34:
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
        v33 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_42;
      }

      v38 = 2;
      v39 = 219;
    }

    breakpoint_break(&v44, v39, v38, v29, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5216))(a1, a2, a3, a4);
LABEL_42:
  if (v44)
  {
    free(v44);
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
      v18 = *(*(v13 + 24) + 5216);

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

  (*(*(v13 + 32) + 5216))(a1, a2, a3, a4);
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
      v21 = *(*(v13 + 24) + 5216);

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
  (*(*(v13 + 32) + 5216))(a1, a2, a3, a4);
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

void sub_604E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void draw_buffers(__GLIContextRec *a1, uint64_t a2, const unsigned int *a3)
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
      v30 = *(*(v11 + 24) + 5232);

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
    snprintf((v11 + 4709), 0x40uLL, "Ci@%de", a2);
    GPUTools::FB::Encode(v36, 141, 0, v11 + 4709, v14, v15, v16, v17, *v11);
    v18 = byte_21AEE5;
    if (byte_21AEE5)
    {
      breakpoint_break(v36, (&stru_68.addr + 5), 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 5232))(a1, a2, a3);
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
      v32 = 141;
    }

    breakpoint_break(v36, v32, v31, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5232))(a1, a2, a3);
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
      v30 = *(*(v11 + 24) + 5232);

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
    snprintf((v11 + 4709), 0x40uLL, "Ci@%de", a2);
    GPUTools::FB::Encode(v36, 141, 0, v11 + 4709, v14, v15, v16, v17, *v11);
    v18 = byte_21AEE5;
    if (byte_21AEE5)
    {
      breakpoint_break(v36, (&stru_68.addr + 5), 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 5232))(a1, a2, a3);
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
      v32 = 141;
    }

    breakpoint_break(v36, v32, v31, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5232))(a1, a2, a3);
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
      v16 = *(*(v11 + 24) + 5232);

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

  (*(*(v11 + 32) + 5232))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 5232);

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
  (*(*(v11 + 32) + 5232))(a1, a2, a3);
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

void sub_6092C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t is_shader(__GLIContextRec *a1, uint64_t a2)
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
      v45 = *(*(v9 + 24) + 5240);

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
      v13[1] = 335;
      v13[8] = 256;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v13 + 1) = v54;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21AFA7;
      if (byte_21AFA7)
      {
        breakpoint_break(&__ptr, (&stru_108.reserved1 + 3), 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 5240))(a1, a2);
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
        v48 = 335;
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
  v33 = (*(*(v9 + 24) + 5240))(a1, a2);
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
      v45 = *(*(v9 + 24) + 5240);

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
      v13[1] = 335;
      v13[8] = 256;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v13 + 1) = v54;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21AFA7;
      if (byte_21AFA7)
      {
        breakpoint_break(&__ptr, (&stru_108.reserved1 + 3), 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 5240))(a1, a2);
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
        v48 = 335;
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
  v33 = (*(*(v9 + 24) + 5240))(a1, a2);
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
      v17 = *(*(v9 + 24) + 5240);

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

  result = (*(*(v9 + 32) + 5240))(a1, a2);
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
      v19 = *(*(v9 + 24) + 5240);

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
  v13 = (*(*(v9 + 32) + 5240))(a1, a2);
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

  v16 = *(*(v9 + 24) + 5240);

  return v16(a1, a2);
}

void sub_60EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t is_program(__GLIContextRec *a1, uint64_t a2)
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
      v45 = *(*(v9 + 24) + 5248);

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
      v13[1] = 331;
      v13[8] = 256;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v13 + 1) = v54;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21AFA3;
      if (byte_21AFA3)
      {
        breakpoint_break(&__ptr, (&stru_108.flags + 3), 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 5248))(a1, a2);
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
        v48 = 331;
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
  v33 = (*(*(v9 + 24) + 5248))(a1, a2);
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
      v45 = *(*(v9 + 24) + 5248);

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
      v13[1] = 331;
      v13[8] = 256;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v13 + 1) = v54;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21AFA3;
      if (byte_21AFA3)
      {
        breakpoint_break(&__ptr, (&stru_108.flags + 3), 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 5248))(a1, a2);
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
        v48 = 331;
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
  v33 = (*(*(v9 + 24) + 5248))(a1, a2);
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
      v17 = *(*(v9 + 24) + 5248);

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

  result = (*(*(v9 + 32) + 5248))(a1, a2);
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
      v19 = *(*(v9 + 24) + 5248);

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
  v13 = (*(*(v9 + 32) + 5248))(a1, a2);
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

  v16 = *(*(v9 + 24) + 5248);

  return v16(a1, a2);
}

void sub_614C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void get_shaderiv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, int *a4)
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
      v39 = *(*(v13 + 24) + 5256);

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
    v17 = GPUTools::GL::DYShaderParameterComponentCount(a3, v16);
    snprintf((v13 + 4709), 0x40uLL, "Cuie@%di", v17);
    GPUTools::FB::Encode(&v46, 281, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF71;
    if (byte_21AF71)
    {
      breakpoint_break(&v46, &stru_108.segname[1], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 5256))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v46, 281, 256, v13 + 4709, v23, v24, v25, v26, *v13);
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
      v41 = 281;
    }

    breakpoint_break(&v46, v41, v40, v31, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5256))(a1, a2, a3, a4);
LABEL_42:
  if (v46)
  {
    free(v46);
  }
}

void sub_61990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_programiv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, int *a4)
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
      v39 = *(*(v13 + 24) + 5264);

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
    GPUTools::GL::DYGetProgramParameterInfo(a3, &v46[1], v46, v16);
    v17 = 105;
    if (v46[0])
    {
      v17 = 101;
    }

    snprintf((v13 + 4709), 0x40uLL, "Cuie@%u%c", *&v46[1], v17);
    GPUTools::FB::Encode(&v47, 272, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF68;
    if (byte_21AF68)
    {
      breakpoint_break(&v47, &stru_108.sectname[8], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 5264))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v47, 272, 256, v13 + 4709, v23, v24, v25, v26, *v13);
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
      v41 = 272;
    }

    breakpoint_break(&v47, v41, v40, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5264))(a1, a2, a3, a4);
LABEL_44:
  if (v47)
  {
    free(v47);
  }
}

void sub_61E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_shader_info_log(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4, char *a5)
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
      goto LABEL_53;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v38 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v38 >= 1)
    {
LABEL_53:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v39 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v39, 0, do_nothing);
      v40 = *(*(v15 + 24) + 5272);

      v40(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v49 = 0;
    if (a4)
    {
      v18 = a4;
    }

    else
    {
      v18 = &v49;
    }

    *v18 = 0;
    v19 = "t";
    if (v18 == a4)
    {
      v19 = "@1i";
    }

    snprintf((v15 + 4709), 0x40uLL, "Cuii%st", v19);
    GPUTools::FB::Encode(&v50, 279, 256, v15 + 4709, v20, v21, v22, v23, *v15);
    v48 = byte_21AF6F;
    if (byte_21AF6F)
    {
      breakpoint_break(&v50, &stru_108.sectname[15], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v48 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v15 + 32) + 5272))(a1, a2, a3, v18, a5);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v50;
        *(v50 + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v43 = *(&g_DYTimebaseInfo + 1);
        v44 = __udivti3();
        v45 = v50;
        *(v50 + 3) = v44;
        v45[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v15);
    }

LABEL_28:
    if (*v18 >= 1)
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      *(strlen((v15 + 4709)) + v15 + 4709 - 1) = 0;
      strlcat((v15 + 4709), "U<cb>", 0x40uLL);
      v31 = v50;
      v47 = *(v50 + 1);
      v51 = v50;
      if (v52 >= 0x24)
      {
        *(v50 + 8) = 0;
        *v31 = 0u;
        v31[1] = 0u;
      }

      v46 = (*v18 + 1);
      GPUTools::FB::Encode(&v50, 279, 256, v15 + 4709, v27, v28, v29, v30, *v15);
      *(v50 + 1) = v47;
    }

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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), &v50);
    v32 = *(v15 + 3404);
    if (v32 && (gBreakOnError & 1) != 0)
    {
      v41 = 3;
      v42 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v48 & 2) == 0)
      {
LABEL_41:
        v33 = [DYGetGLGuestAppClient() defaultFbufStream];
        v34 = v33;
        while (atomic_exchange(v33 + 14, 1u) == 1)
        {
            ;
          }
        }

        v35 = *v50;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v34 + 14);
        v36 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v36 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        goto LABEL_49;
      }

      v41 = 2;
      v42 = 279;
    }

    breakpoint_break(&v50, v42, v41, v32, v15);
    goto LABEL_41;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 5272))(a1, a2, a3, a4, a5);
LABEL_49:
  if (v50)
  {
    free(v50);
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
      v34 = *(*(v15 + 24) + 5272);

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
    GPUTools::FB::Encode(v40, 279, 2, "Cuiipp", v18, v19, v20, v21, *v15);
    v22 = byte_21AF6F;
    if (byte_21AF6F)
    {
      breakpoint_break(v40, &stru_108.sectname[15], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(*(v15 + 32) + 5272))(a1, a2, a3, a4, a5);
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
      v36 = 279;
    }

    breakpoint_break(v40, v36, v35, v26, v15);
    goto LABEL_32;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 5272))(a1, a2, a3, a4, a5);
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
      v20 = *(*(v15 + 24) + 5272);

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

  (*(*(v15 + 32) + 5272))(a1, a2, a3, a4, a5);
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
      v23 = *(*(v15 + 24) + 5272);

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
  (*(*(v15 + 32) + 5272))(a1, a2, a3, a4, a5);
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

void sub_62408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void get_program_info_log(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4, char *a5)
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
      goto LABEL_53;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v38 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v38 >= 1)
    {
LABEL_53:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v39 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v39, 0, do_nothing);
      v40 = *(*(v15 + 24) + 5280);

      v40(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v49 = 0;
    if (a4)
    {
      v18 = a4;
    }

    else
    {
      v18 = &v49;
    }

    *v18 = 0;
    v19 = "t";
    if (v18 == a4)
    {
      v19 = "@1i";
    }

    snprintf((v15 + 4709), 0x40uLL, "Cuii%st", v19);
    GPUTools::FB::Encode(&v50, 268, 256, v15 + 4709, v20, v21, v22, v23, *v15);
    v48 = byte_21AF64;
    if (byte_21AF64)
    {
      breakpoint_break(&v50, &stru_108.sectname[4], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v48 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v15 + 32) + 5280))(a1, a2, a3, v18, a5);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v50;
        *(v50 + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v43 = *(&g_DYTimebaseInfo + 1);
        v44 = __udivti3();
        v45 = v50;
        *(v50 + 3) = v44;
        v45[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v15);
    }

LABEL_28:
    if (*v18 >= 1)
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      *(strlen((v15 + 4709)) + v15 + 4709 - 1) = 0;
      strlcat((v15 + 4709), "U<cb>", 0x40uLL);
      v31 = v50;
      v47 = *(v50 + 1);
      v51 = v50;
      if (v52 >= 0x24)
      {
        *(v50 + 8) = 0;
        *v31 = 0u;
        v31[1] = 0u;
      }

      v46 = (*v18 + 1);
      GPUTools::FB::Encode(&v50, 268, 256, v15 + 4709, v27, v28, v29, v30, *v15);
      *(v50 + 1) = v47;
    }

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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), &v50);
    v32 = *(v15 + 3404);
    if (v32 && (gBreakOnError & 1) != 0)
    {
      v41 = 3;
      v42 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v48 & 2) == 0)
      {
LABEL_41:
        v33 = [DYGetGLGuestAppClient() defaultFbufStream];
        v34 = v33;
        while (atomic_exchange(v33 + 14, 1u) == 1)
        {
            ;
          }
        }

        v35 = *v50;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v34 + 14);
        v36 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v36 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        goto LABEL_49;
      }

      v41 = 2;
      v42 = 268;
    }

    breakpoint_break(&v50, v42, v41, v32, v15);
    goto LABEL_41;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 5280))(a1, a2, a3, a4, a5);
LABEL_49:
  if (v50)
  {
    free(v50);
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
      v34 = *(*(v15 + 24) + 5280);

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
    GPUTools::FB::Encode(v40, 268, 2, "Cuiipp", v18, v19, v20, v21, *v15);
    v22 = byte_21AF64;
    if (byte_21AF64)
    {
      breakpoint_break(v40, &stru_108.sectname[4], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(*(v15 + 32) + 5280))(a1, a2, a3, a4, a5);
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
      v36 = 268;
    }

    breakpoint_break(v40, v36, v35, v26, v15);
    goto LABEL_32;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 5280))(a1, a2, a3, a4, a5);
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
      v20 = *(*(v15 + 24) + 5280);

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

  (*(*(v15 + 32) + 5280))(a1, a2, a3, a4, a5);
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
      v23 = *(*(v15 + 24) + 5280);

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
  (*(*(v15 + 32) + 5280))(a1, a2, a3, a4, a5);
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

void sub_62990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void stencil_func_separate(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      v44 = *(*(v15 + 24) + 5288);

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
      v19[1] = 542;
      v19[8] = 0;
      v53 = 0;
      pthread_threadid_np(0, &v53);
      *(v19 + 1) = v53;
      strcpy(v19 + 36, "Ceeiui");
      *(v19 + 11) = *v15;
      v19[13] = a2;
      v19[14] = a3;
      v19[15] = a4;
      v19[16] = a5;
      v32 = byte_21B076;
      if (byte_21B076)
      {
        breakpoint_break(&__ptr, (&stru_1F8.addr + 6), 1, *(v15 + 3404), v15);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v32 & 4))
      {
        v33 = mach_absolute_time();
        (*(*(v15 + 32) + 5288))(a1, a2, a3, a4, a5);
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
        v47 = 542;
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
  (*(*(v15 + 24) + 5288))(a1, a2, a3, a4, a5);
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
      v44 = *(*(v15 + 24) + 5288);

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
      v19[1] = 542;
      v19[8] = 0;
      v53 = 0;
      pthread_threadid_np(0, &v53);
      *(v19 + 1) = v53;
      strcpy(v19 + 36, "Ceeiui");
      *(v19 + 11) = *v15;
      v19[13] = a2;
      v19[14] = a3;
      v19[15] = a4;
      v19[16] = a5;
      v32 = byte_21B076;
      if (byte_21B076)
      {
        breakpoint_break(&__ptr, (&stru_1F8.addr + 6), 1, *(v15 + 3404), v15);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v32 & 4))
      {
        v33 = mach_absolute_time();
        (*(*(v15 + 32) + 5288))(a1, a2, a3, a4, a5);
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
        v47 = 542;
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
  (*(*(v15 + 24) + 5288))(a1, a2, a3, a4, a5);
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
      v20 = *(*(v15 + 24) + 5288);

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

  (*(*(v15 + 32) + 5288))(a1, a2, a3, a4, a5);
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
      v23 = *(*(v15 + 24) + 5288);

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
  (*(*(v15 + 32) + 5288))(a1, a2, a3, a4, a5);
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

void sub_62F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void stencil_mask_separate(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
      v40 = *(*(v11 + 24) + 5296);

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
      v15[1] = 545;
      v15[8] = 0;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v15 + 1) = v49;
      strcpy(v15 + 36, "Ceui");
      *(v15 + 11) = *v11;
      v15[13] = a2;
      v15[14] = a3;
      v28 = byte_21B079;
      if (byte_21B079)
      {
        breakpoint_break(&__ptr, (&stru_1F8.size + 1), 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 5296))(a1, a2, a3);
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
        v43 = 545;
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
  (*(*(v11 + 24) + 5296))(a1, a2, a3);
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
      v40 = *(*(v11 + 24) + 5296);

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
      v15[1] = 545;
      v15[8] = 0;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v15 + 1) = v49;
      strcpy(v15 + 36, "Ceui");
      *(v15 + 11) = *v11;
      v15[13] = a2;
      v15[14] = a3;
      v28 = byte_21B079;
      if (byte_21B079)
      {
        breakpoint_break(&__ptr, (&stru_1F8.size + 1), 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 5296))(a1, a2, a3);
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
        v43 = 545;
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
  (*(*(v11 + 24) + 5296))(a1, a2, a3);
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
      v16 = *(*(v11 + 24) + 5296);

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

  (*(*(v11 + 32) + 5296))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 5296);

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
  (*(*(v11 + 32) + 5296))(a1, a2, a3);
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

void sub_63554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t is_renderbuffer(__GLIContextRec *a1, uint64_t a2)
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
      v45 = *(*(v9 + 24) + 5320);

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
      v13[1] = 334;
      v13[8] = 256;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v13 + 1) = v54;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21AFA6;
      if (byte_21AFA6)
      {
        breakpoint_break(&__ptr, (&stru_108.reserved1 + 2), 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 5320))(a1, a2);
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
        v48 = 334;
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
  v33 = (*(*(v9 + 24) + 5320))(a1, a2);
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
      v45 = *(*(v9 + 24) + 5320);

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
      v13[1] = 334;
      v13[8] = 256;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v13 + 1) = v54;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21AFA6;
      if (byte_21AFA6)
      {
        breakpoint_break(&__ptr, (&stru_108.reserved1 + 2), 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 5320))(a1, a2);
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
        v48 = 334;
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
  v33 = (*(*(v9 + 24) + 5320))(a1, a2);
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
      v17 = *(*(v9 + 24) + 5320);

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

  result = (*(*(v9 + 32) + 5320))(a1, a2);
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
      v19 = *(*(v9 + 24) + 5320);

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
  v13 = (*(*(v9 + 32) + 5320))(a1, a2);
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

  v16 = *(*(v9 + 24) + 5320);

  return v16(a1, a2);
}

void sub_63B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void bind_renderbuffer(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
      v40 = *(*(v11 + 24) + 5328);

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
      v15[1] = 19;
      v15[8] = 0;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v15 + 1) = v49;
      strcpy(v15 + 36, "Ceui");
      *(v15 + 11) = *v11;
      v15[13] = a2;
      v15[14] = a3;
      v28 = byte_21AE6B;
      if (byte_21AE6B)
      {
        breakpoint_break(&__ptr, (&dword_10 + 3), 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 5328))(a1, a2, a3);
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
        v43 = 19;
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
  (*(*(v11 + 24) + 5328))(a1, a2, a3);
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
      v40 = *(*(v11 + 24) + 5328);

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
      v15[1] = 19;
      v15[8] = 0;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v15 + 1) = v49;
      strcpy(v15 + 36, "Ceui");
      *(v15 + 11) = *v11;
      v15[13] = a2;
      v15[14] = a3;
      v28 = byte_21AE6B;
      if (byte_21AE6B)
      {
        breakpoint_break(&__ptr, (&dword_10 + 3), 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 5328))(a1, a2, a3);
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
        v43 = 19;
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
  (*(*(v11 + 24) + 5328))(a1, a2, a3);
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
      v16 = *(*(v11 + 24) + 5328);

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

  (*(*(v11 + 32) + 5328))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 5328);

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
  (*(*(v11 + 32) + 5328))(a1, a2, a3);
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

void sub_640E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void delete_renderbuffers(__GLIContextRec *a1, uint64_t a2, const unsigned int *a3)
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
      v30 = *(*(v11 + 24) + 5336);

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
    GPUTools::FB::Encode(v36, 126, 0, v11 + 4709, v14, v15, v16, v17, *v11);
    v18 = byte_21AED6;
    if (byte_21AED6)
    {
      breakpoint_break(v36, &stru_68.segname[6], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 5336))(a1, a2, a3);
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
      v32 = 126;
    }

    breakpoint_break(v36, v32, v31, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5336))(a1, a2, a3);
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
      v30 = *(*(v11 + 24) + 5336);

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
    GPUTools::FB::Encode(v36, 126, 0, v11 + 4709, v14, v15, v16, v17, *v11);
    v18 = byte_21AED6;
    if (byte_21AED6)
    {
      breakpoint_break(v36, &stru_68.segname[6], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 5336))(a1, a2, a3);
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
      v32 = 126;
    }

    breakpoint_break(v36, v32, v31, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5336))(a1, a2, a3);
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
      v16 = *(*(v11 + 24) + 5336);

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

  (*(*(v11 + 32) + 5336))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 5336);

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
  (*(*(v11 + 32) + 5336))(a1, a2, a3);
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

void sub_64530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void gen_renderbuffers(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
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
      v36 = *(*(v11 + 24) + 5344);

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
    GPUTools::FB::Encode(&v43, 207, v11 + 4709, v14, v15, v16, v17, v18, *v11);
    v19 = byte_21AF27;
    if (byte_21AF27)
    {
      breakpoint_break(&v43, &stru_B8.segname[7], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v11 + 32) + 5344))(a1, a2, a3);
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

    GPUTools::FB::Encode(&v43, 207, 0, v11 + 4709, v20, v21, v22, v23, *v11);
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
      v38 = 207;
    }

    breakpoint_break(&v43, v38, v37, v28, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5344))(a1, a2, a3);
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
      v36 = *(*(v11 + 24) + 5344);

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
    GPUTools::FB::Encode(&v43, 207, v11 + 4709, v14, v15, v16, v17, v18, *v11);
    v19 = byte_21AF27;
    if (byte_21AF27)
    {
      breakpoint_break(&v43, &stru_B8.segname[7], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v11 + 32) + 5344))(a1, a2, a3);
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

    GPUTools::FB::Encode(&v43, 207, 0, v11 + 4709, v20, v21, v22, v23, *v11);
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
      v38 = 207;
    }

    breakpoint_break(&v43, v38, v37, v28, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5344))(a1, a2, a3);
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
      v16 = *(*(v11 + 24) + 5344);

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

  (*(*(v11 + 32) + 5344))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 5344);

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
  (*(*(v11 + 32) + 5344))(a1, a2, a3);
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

void sub_649D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void renderbuffer_storage(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      v44 = *(*(v15 + 24) + 5352);

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
      v19[1] = 508;
      v19[8] = 0;
      v53 = 0;
      pthread_threadid_np(0, &v53);
      *(v19 + 1) = v53;
      strcpy(v19 + 36, "Ceeii");
      *(v19 + 11) = *v15;
      v19[13] = a2;
      v19[14] = a3;
      v19[15] = a4;
      v19[16] = a5;
      v32 = byte_21B054;
      if (byte_21B054)
      {
        breakpoint_break(&__ptr, &stru_1F8.sectname[4], 1, *(v15 + 3404), v15);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v32 & 4))
      {
        v33 = mach_absolute_time();
        (*(*(v15 + 32) + 5352))(a1, a2, a3, a4, a5);
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
        v47 = 508;
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
  (*(*(v15 + 24) + 5352))(a1, a2, a3, a4, a5);
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
      v44 = *(*(v15 + 24) + 5352);

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
      v19[1] = 508;
      v19[8] = 0;
      v53 = 0;
      pthread_threadid_np(0, &v53);
      *(v19 + 1) = v53;
      strcpy(v19 + 36, "Ceeii");
      *(v19 + 11) = *v15;
      v19[13] = a2;
      v19[14] = a3;
      v19[15] = a4;
      v19[16] = a5;
      v32 = byte_21B054;
      if (byte_21B054)
      {
        breakpoint_break(&__ptr, &stru_1F8.sectname[4], 1, *(v15 + 3404), v15);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v32 & 4))
      {
        v33 = mach_absolute_time();
        (*(*(v15 + 32) + 5352))(a1, a2, a3, a4, a5);
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
        v47 = 508;
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
  (*(*(v15 + 24) + 5352))(a1, a2, a3, a4, a5);
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
      v20 = *(*(v15 + 24) + 5352);

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

  (*(*(v15 + 32) + 5352))(a1, a2, a3, a4, a5);
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
      v23 = *(*(v15 + 24) + 5352);

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
  (*(*(v15 + 32) + 5352))(a1, a2, a3, a4, a5);
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

void sub_64FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void get_renderbuffer_parameteriv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, int *a4)
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
      v39 = *(*(v13 + 24) + 5360);

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
    GPUTools::GL::DYGetRenderbufferParameterInfo(a3, &v46[1], v46, v16);
    v17 = 105;
    if (v46[0])
    {
      v17 = 101;
    }

    snprintf((v13 + 4709), 0x40uLL, "Cee@%u%c", *&v46[1], v17);
    GPUTools::FB::Encode(&v47, 277, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF6D;
    if (byte_21AF6D)
    {
      breakpoint_break(&v47, &stru_108.sectname[13], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 5360))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v47, 277, 256, v13 + 4709, v23, v24, v25, v26, *v13);
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
      v41 = 277;
    }

    breakpoint_break(&v47, v41, v40, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5360))(a1, a2, a3, a4);
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
      v39 = *(*(v13 + 24) + 5360);

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
    GPUTools::GL::DYGetRenderbufferParameterInfo(a3, &v46[1], v46, v16);
    v17 = 105;
    if (v46[0])
    {
      v17 = 101;
    }

    snprintf((v13 + 4709), 0x40uLL, "Cee@%u%c", *&v46[1], v17);
    GPUTools::FB::Encode(&v47, 277, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF6D;
    if (byte_21AF6D)
    {
      breakpoint_break(&v47, &stru_108.sectname[13], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 5360))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v47, 277, 256, v13 + 4709, v23, v24, v25, v26, *v13);
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
      v41 = 277;
    }

    breakpoint_break(&v47, v41, v40, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5360))(a1, a2, a3, a4);
LABEL_44:
  if (v47)
  {
    free(v47);
  }
}

void sub_654C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t is_framebuffer(__GLIContextRec *a1, uint64_t a2)
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
      v45 = *(*(v9 + 24) + 5368);

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
      v13[1] = 329;
      v13[8] = 256;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v13 + 1) = v54;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21AFA1;
      if (byte_21AFA1)
      {
        breakpoint_break(&__ptr, (&stru_108.flags + 1), 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 5368))(a1, a2);
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
        v48 = 329;
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
  v33 = (*(*(v9 + 24) + 5368))(a1, a2);
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
      v45 = *(*(v9 + 24) + 5368);

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
      v13[1] = 329;
      v13[8] = 256;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v13 + 1) = v54;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21AFA1;
      if (byte_21AFA1)
      {
        breakpoint_break(&__ptr, (&stru_108.flags + 1), 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 5368))(a1, a2);
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
        v48 = 329;
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
  v33 = (*(*(v9 + 24) + 5368))(a1, a2);
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
      v17 = *(*(v9 + 24) + 5368);

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

  result = (*(*(v9 + 32) + 5368))(a1, a2);
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
      v19 = *(*(v9 + 24) + 5368);

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
  v13 = (*(*(v9 + 32) + 5368))(a1, a2);
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

  v16 = *(*(v9 + 24) + 5368);

  return v16(a1, a2);
}