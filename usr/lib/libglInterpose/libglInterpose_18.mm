void sub_8436C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void validate_program_pipeline(__GLIContextRec *a1, uint64_t a2)
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
LABEL_52:
      validate_program_pipeline((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
      goto LABEL_52;
    }
  }

  *(v9 + 4838) = 1;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v45, 921, 0, "Cui", v12, v13, v14, v15, *v9);
    v16 = byte_21B1F1;
    if (byte_21B1F1)
    {
      breakpoint_break(v45, &stru_388.segname[1], 1, *(v9 + 3404), v9);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v16 & 4))
    {
      v17 = mach_absolute_time();
      (*(*(v9 + 32) + 6616))(a1, a2);
      v18 = mach_absolute_time() - v17;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v19 = v45[0];
        *(v45[0] + 2) = v17;
        v19[3] = v18;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v40 = *(&g_DYTimebaseInfo + 1);
        v41 = __udivti3();
        v42 = v45[0];
        *(v45[0] + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v9);
    }

LABEL_23:
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

    GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), v45);
    v20 = *(v9 + 3404);
    if (v20 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v16 & 2) == 0)
      {
LABEL_32:
        v21 = [DYGetGLGuestAppClient() defaultFbufStream];
        v22 = v21;
        while (atomic_exchange(v21 + 14, 1u) == 1)
        {
            ;
          }
        }

        v23 = *v45[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v22 + 14);
        v44 = 0;
        info_log = query_info_log(v9, a2, *(*(v9 + 32) + 6608), *(*(v9 + 32) + 6624), &v44);
        v25 = info_log;
        if (v44 < 0x401)
        {
          if (v44)
          {
            info_log[v44 - 1] = 0;
          }

          v26 = "CiuiiSi";
        }

        else
        {
          DYGetGLGuestAppClient();
          GPUTools::Interpose::DYSavePointer();
          v26 = "CiuiiU<cb>i";
        }

        v43 = 0;
        (*(*(v9 + 32) + 6608))(*(v9 + 16), a2, 35715, &v43);
        GPUTools::FB::Encode(v45, 4294955024, v26, v27, v28, v29, v30, v31, *v9);
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = *v45[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        free(v25);
        v35 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v9);
        }

        goto LABEL_48;
      }

      v38 = 2;
      v39 = 921;
    }

    breakpoint_break(v45, v39, v38, v20, v9);
    goto LABEL_32;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v9 + 24) + 6616))(a1, a2);
LABEL_48:
  if (v45[0])
  {
    free(v45[0]);
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
LABEL_52:
      validate_program_pipeline((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
      goto LABEL_52;
    }
  }

  *(v9 + 4838) = 1;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v45, 921, 0, "Cui", v12, v13, v14, v15, *v9);
    v16 = byte_21B1F1;
    if (byte_21B1F1)
    {
      breakpoint_break(v45, &stru_388.segname[1], 1, *(v9 + 3404), v9);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v16 & 4))
    {
      v17 = mach_absolute_time();
      (*(*(v9 + 32) + 6616))(a1, a2);
      v18 = mach_absolute_time() - v17;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v19 = v45[0];
        *(v45[0] + 2) = v17;
        v19[3] = v18;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v40 = *(&g_DYTimebaseInfo + 1);
        v41 = __udivti3();
        v42 = v45[0];
        *(v45[0] + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v9);
    }

LABEL_23:
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

    GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), v45);
    v20 = *(v9 + 3404);
    if (v20 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v16 & 2) == 0)
      {
LABEL_32:
        v21 = [DYGetGLGuestAppClient() defaultFbufStream];
        v22 = v21;
        while (atomic_exchange(v21 + 14, 1u) == 1)
        {
            ;
          }
        }

        v23 = *v45[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v22 + 14);
        v44 = 0;
        v24 = query_info_log(v9, a2, *(*(v9 + 32) + 6608), *(*(v9 + 32) + 6624), &v44);
        v25 = v24;
        if (v44)
        {
          if (v44 >= 0x400)
          {
            v26 = 1024;
          }

          else
          {
            v26 = v44;
          }

          v24[v26 - 1] = 0;
        }

        v43 = 0;
        (*(*(v9 + 32) + 6608))(*(v9 + 16), a2, 35715, &v43);
        GPUTools::FB::Encode(v45, 4294955024, "CiuiiSi", v27, v28, v29, v30, v31, *v9);
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = *v45[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        free(v25);
        v35 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v9);
        }

        goto LABEL_48;
      }

      v38 = 2;
      v39 = 921;
    }

    breakpoint_break(v45, v39, v38, v20, v9);
    goto LABEL_32;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v9 + 24) + 6616))(a1, a2);
LABEL_48:
  if (v45[0])
  {
    free(v45[0]);
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
      validate_program_pipeline((v9 + 4640));
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
    v13 = *(*(v9 + 24) + 6616);

    v13(a1, a2);
  }

  else
  {
    (*(*(v9 + 32) + 6616))(a1, a2);
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
      validate_program_pipeline((v9 + 4640));
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
    v16 = *(*(v9 + 24) + 6616);

    v16(a1, a2);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 6616))(a1, a2);
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

void sub_8486C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_program_pipeline_info_log(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4, char *a5)
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
      v40 = *(*(v15 + 24) + 6624);

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
    GPUTools::FB::Encode(&v50, 893, 256, v15 + 4709, v20, v21, v22, v23, *v15);
    v48 = byte_21B1D5;
    if (byte_21B1D5)
    {
      breakpoint_break(&v50, (&stru_338.reserved1 + 1), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v48 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v15 + 32) + 6624))(a1, a2, a3, v18, a5);
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

      v46 = *v18;
      GPUTools::FB::Encode(&v50, 893, 256, v15 + 4709, v27, v28, v29, v30, *v15);
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
      v42 = 893;
    }

    breakpoint_break(&v50, v42, v41, v32, v15);
    goto LABEL_41;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6624))(a1, a2, a3, a4, a5);
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
      v44 = *(*(v15 + 24) + 6624);

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
    if (v22 <= 0x4B)
    {
      v45 = (331 - v22) & 0x100;
      v56 += v45;
      v19 = malloc_type_malloc(v45 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19 || (v19 & 3) != 0)
      {
        goto LABEL_66;
      }

      v18 = (v19 + v20);
    }

    *(v18 + 60) = 0u;
    v18[2] = 0u;
    v18[3] = 0u;
    *v18 = 0u;
    v18[1] = 0u;
    v23 = v18 + 76;
    v55 = v18 + 76;
    v24 = v18 + 76 - v19;
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
      v19[1] = 893;
      v19[8] = 256;
      v53 = 0;
      pthread_threadid_np(0, &v53);
      *(v19 + 1) = v53;
      strcpy(v19 + 36, "Cuiipp");
      *(v19 + 11) = *v15;
      v19[13] = a2;
      v19[14] = a3;
      *(v19 + 15) = a4;
      *(v19 + 17) = a5;
      v32 = byte_21B1D5;
      if (byte_21B1D5)
      {
        breakpoint_break(&__ptr, (&stru_338.reserved1 + 1), 1, *(v15 + 3404), v15);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v32 & 4))
      {
        v33 = mach_absolute_time();
        (*(*(v15 + 32) + 6624))(a1, a2, a3, a4, a5);
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
        v47 = 893;
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
  (*(*(v15 + 24) + 6624))(a1, a2, a3, a4, a5);
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
      v20 = *(*(v15 + 24) + 6624);

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

  (*(*(v15 + 32) + 6624))(a1, a2, a3, a4, a5);
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
      v23 = *(*(v15 + 24) + 6624);

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
  (*(*(v15 + 32) + 6624))(a1, a2, a3, a4, a5);
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

void sub_84E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void program_uniform1i(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4)
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v29 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v29 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
      v31 = *(*(v13 + 24) + 6632);

      v31(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, a2, a3);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v37, *v13);
    GPUTools::FB::FIFOArgumentProvider::push(&v37, a2);
    *(v13 + 4709) = 30019;
    *(v13 + 4711) = 105;
    v17 = (v13 + 4712);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v37, -1);
      v18 = 1;
    }

    else
    {
      *(v13 + 4712) = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), a2, v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v37, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v37, a4);
    *&v17[v18] = 105;
    GPUTools::FB::Encode();
    v19 = byte_21B1DE;
    if (byte_21B1DE)
    {
      breakpoint_break(v41, (&stru_338.reserved3 + 2), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v20 = mach_absolute_time();
      (*(*(v13 + 32) + 6632))(a1, a2, v16, a4);
      v21 = mach_absolute_time() - v20;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v22 = v41[0];
        *(v41[0] + 2) = v20;
        v22[3] = v21;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v34 = *(&g_DYTimebaseInfo + 1);
        v35 = __udivti3();
        v36 = v41[0];
        *(v41[0] + 3) = v35;
        v36[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v41);
    v23 = *(v13 + 3404);
    if (v23 && (gBreakOnError & 1) != 0)
    {
      v32 = 3;
      v33 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v19 & 2) == 0)
      {
LABEL_34:
        v24 = [DYGetGLGuestAppClient() defaultFbufStream];
        v25 = v24;
        while (atomic_exchange(v24 + 14, 1u) == 1)
        {
            ;
          }
        }

        v26 = *v41[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v25 + 14);
        v27 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v27 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v37);
        goto LABEL_43;
      }

      v32 = 2;
      v33 = 902;
    }

    breakpoint_break(v41, v33, v32, v23, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6632))(a1, a2, a3, a4);
LABEL_43:
  if (v41[0])
  {
    free(v41[0]);
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v29 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v29 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
      v31 = *(*(v13 + 24) + 6632);

      v31(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, a2, a3);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v37, *v13);
    GPUTools::FB::FIFOArgumentProvider::push(&v37, a2);
    *(v13 + 4709) = 30019;
    *(v13 + 4711) = 105;
    v17 = (v13 + 4712);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v37, -1);
      v18 = 1;
    }

    else
    {
      *(v13 + 4712) = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), a2, v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v37, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v37, a4);
    *&v17[v18] = 105;
    GPUTools::FB::Encode();
    v19 = byte_21B1DE;
    if (byte_21B1DE)
    {
      breakpoint_break(v41, (&stru_338.reserved3 + 2), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v20 = mach_absolute_time();
      (*(*(v13 + 32) + 6632))(a1, a2, v16, a4);
      v21 = mach_absolute_time() - v20;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v22 = v41[0];
        *(v41[0] + 2) = v20;
        v22[3] = v21;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v34 = *(&g_DYTimebaseInfo + 1);
        v35 = __udivti3();
        v36 = v41[0];
        *(v41[0] + 3) = v35;
        v36[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v41);
    v23 = *(v13 + 3404);
    if (v23 && (gBreakOnError & 1) != 0)
    {
      v32 = 3;
      v33 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v19 & 2) == 0)
      {
LABEL_34:
        v24 = [DYGetGLGuestAppClient() defaultFbufStream];
        v25 = v24;
        while (atomic_exchange(v24 + 14, 1u) == 1)
        {
            ;
          }
        }

        v26 = *v41[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v25 + 14);
        v27 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v27 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v37);
        goto LABEL_43;
      }

      v32 = 2;
      v33 = 902;
    }

    breakpoint_break(v41, v33, v32, v23, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6632))(a1, a2, a3, a4);
LABEL_43:
  if (v41[0])
  {
    free(v41[0]);
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
      v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v18, 0, do_nothing);
LABEL_29:
      v19 = *(*(v13 + 24) + 6632);

      v19(a1, a2, a3, a4);
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

  v16 = wrapper_map_uniform_loc(v13, a2, a3);
  (*(*(v13 + 32) + 6632))(a1, a2, v16, a4);
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
      v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v21, 0, do_nothing);
LABEL_29:
      v22 = *(*(v13 + 24) + 6632);

      v22(a1, a2, a3, a4);
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

  v16 = wrapper_map_uniform_loc(v13, a2, a3);
  v17 = mach_absolute_time();
  (*(*(v13 + 32) + 6632))(a1, a2, v16, a4);
  v18 = mach_absolute_time();
  v19 = vdupq_n_s64(1uLL);
  v19.i64[0] = v18 - v17;
  *(v13 + 3696) = vaddq_s64(v19, *(v13 + 3696));
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

void sub_8533C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform2i(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(*(v15 + 24) + 6640);

      v33(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v39, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v39, a5);
    strcpy(&v19[v20], "ii");
    GPUTools::FB::Encode();
    v21 = byte_21B1E2;
    if (byte_21B1E2)
    {
      breakpoint_break(v43, &stru_388.sectname[2], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(*(v15 + 32) + 6640))(a1, a2, v18, a4, a5);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v43[0];
        *(v43[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v36 = *(&g_DYTimebaseInfo + 1);
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v15);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v43);
    v25 = *(v15 + 3404);
    if (v25 && (gBreakOnError & 1) != 0)
    {
      v34 = 3;
      v35 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v21 & 2) == 0)
      {
LABEL_34:
        v26 = [DYGetGLGuestAppClient() defaultFbufStream];
        v27 = v26;
        while (atomic_exchange(v26 + 14, 1u) == 1)
        {
            ;
          }
        }

        v28 = *v43[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v27 + 14);
        v29 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v29 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_43;
      }

      v34 = 2;
      v35 = 906;
    }

    breakpoint_break(v43, v35, v34, v25, v15);
    goto LABEL_34;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6640))(a1, a2, a3, a4, a5);
LABEL_43:
  if (v43[0])
  {
    free(v43[0]);
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(*(v15 + 24) + 6640);

      v33(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v39, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v39, a5);
    strcpy(&v19[v20], "ii");
    GPUTools::FB::Encode();
    v21 = byte_21B1E2;
    if (byte_21B1E2)
    {
      breakpoint_break(v43, &stru_388.sectname[2], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(*(v15 + 32) + 6640))(a1, a2, v18, a4, a5);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v43[0];
        *(v43[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v36 = *(&g_DYTimebaseInfo + 1);
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v15);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v43);
    v25 = *(v15 + 3404);
    if (v25 && (gBreakOnError & 1) != 0)
    {
      v34 = 3;
      v35 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v21 & 2) == 0)
      {
LABEL_34:
        v26 = [DYGetGLGuestAppClient() defaultFbufStream];
        v27 = v26;
        while (atomic_exchange(v26 + 14, 1u) == 1)
        {
            ;
          }
        }

        v28 = *v43[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v27 + 14);
        v29 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v29 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_43;
      }

      v34 = 2;
      v35 = 906;
    }

    breakpoint_break(v43, v35, v34, v25, v15);
    goto LABEL_34;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6640))(a1, a2, a3, a4, a5);
LABEL_43:
  if (v43[0])
  {
    free(v43[0]);
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
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_29:
      v21 = *(*(v15 + 24) + 6640);

      v21(a1, a2, a3, a4, a5);
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

  v18 = wrapper_map_uniform_loc(v15, a2, a3);
  (*(*(v15 + 32) + 6640))(a1, a2, v18, a4, a5);
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
      v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v23, 0, do_nothing);
LABEL_29:
      v24 = *(*(v15 + 24) + 6640);

      v24(a1, a2, a3, a4, a5);
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

  v18 = wrapper_map_uniform_loc(v15, a2, a3);
  v19 = mach_absolute_time();
  (*(*(v15 + 32) + 6640))(a1, a2, v18, a4, a5);
  v20 = mach_absolute_time();
  v21 = vdupq_n_s64(1uLL);
  v21.i64[0] = v20 - v19;
  *(v15 + 3696) = vaddq_s64(v21, *(v15 + 3696));
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

void sub_858A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform3i(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(*(v17 + 24) + 6648);

      v35(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v20 = wrapper_map_uniform_loc(v17, a2, a3);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v41, *v17);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a2);
    *(v17 + 4709) = 30019;
    *(v17 + 4711) = 105;
    v21 = (v17 + 4712);
    if (v20 == -1)
    {
      *v21 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, -1);
      v22 = 1;
    }

    else
    {
      *(v17 + 4712) = 1047084118;
      snprintf((v17 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v17 + 40), a2, v20);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v17 + 4773));
      v22 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a5);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a6);
    *&v21[v22] = 6908265;
    GPUTools::FB::Encode();
    v23 = byte_21B1E6;
    if (byte_21B1E6)
    {
      breakpoint_break(v45, &stru_388.sectname[6], 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v17 + 32) + 6648))(a1, a2, v20, a4, a5, a6);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v45[0];
        *(v45[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v38 = *(&g_DYTimebaseInfo + 1);
        v39 = __udivti3();
        v40 = v45[0];
        *(v45[0] + 3) = v39;
        v40[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v17);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), v45);
    v27 = *(v17 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_34:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        v30 = *v45[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v31 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v41);
        goto LABEL_43;
      }

      v36 = 2;
      v37 = 910;
    }

    breakpoint_break(v45, v37, v36, v27, v17);
    goto LABEL_34;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 6648))(a1, a2, a3, a4, a5, a6);
LABEL_43:
  if (v45[0])
  {
    free(v45[0]);
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(*(v17 + 24) + 6648);

      v35(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v20 = wrapper_map_uniform_loc(v17, a2, a3);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v41, *v17);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a2);
    *(v17 + 4709) = 30019;
    *(v17 + 4711) = 105;
    v21 = (v17 + 4712);
    if (v20 == -1)
    {
      *v21 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, -1);
      v22 = 1;
    }

    else
    {
      *(v17 + 4712) = 1047084118;
      snprintf((v17 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v17 + 40), a2, v20);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v17 + 4773));
      v22 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a5);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a6);
    *&v21[v22] = 6908265;
    GPUTools::FB::Encode();
    v23 = byte_21B1E6;
    if (byte_21B1E6)
    {
      breakpoint_break(v45, &stru_388.sectname[6], 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v17 + 32) + 6648))(a1, a2, v20, a4, a5, a6);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v45[0];
        *(v45[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v38 = *(&g_DYTimebaseInfo + 1);
        v39 = __udivti3();
        v40 = v45[0];
        *(v45[0] + 3) = v39;
        v40[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v17);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), v45);
    v27 = *(v17 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_34:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        v30 = *v45[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v31 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v41);
        goto LABEL_43;
      }

      v36 = 2;
      v37 = 910;
    }

    breakpoint_break(v45, v37, v36, v27, v17);
    goto LABEL_34;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 6648))(a1, a2, a3, a4, a5, a6);
LABEL_43:
  if (v45[0])
  {
    free(v45[0]);
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
      v22 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v22, 0, do_nothing);
LABEL_29:
      v23 = *(*(v17 + 24) + 6648);

      v23(a1, a2, a3, a4, a5, a6);
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

  v20 = wrapper_map_uniform_loc(v17, a2, a3);
  (*(*(v17 + 32) + 6648))(a1, a2, v20, a4, a5, a6);
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
      v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v25, 0, do_nothing);
LABEL_29:
      v26 = *(*(v17 + 24) + 6648);

      v26(a1, a2, a3, a4, a5, a6);
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

  v20 = wrapper_map_uniform_loc(v17, a2, a3);
  v21 = mach_absolute_time();
  (*(*(v17 + 32) + 6648))(a1, a2, v20, a4, a5, a6);
  v22 = mach_absolute_time();
  v23 = vdupq_n_s64(1uLL);
  v23.i64[0] = v22 - v21;
  *(v17 + 3696) = vaddq_s64(v23, *(v17 + 3696));
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

void sub_85E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform4i(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v18);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v18 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v18 + 24) + 6656);

      v36(a1, a2, a3, a4, a5, a6, a7);
      return;
    }
  }

  *(v18 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v21 = wrapper_map_uniform_loc(v18, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v18);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v18 + 4709) = 30019;
    *(v18 + 4711) = 105;
    v22 = (v18 + 4712);
    if (v21 == -1)
    {
      *v22 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v23 = 1;
    }

    else
    {
      *(v18 + 4712) = 1047084118;
      snprintf((v18 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v18 + 40), a2, v21);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v18 + 4773));
      v23 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a6);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a7);
    strcpy(&v22[v23], "iiii");
    GPUTools::FB::Encode();
    v24 = byte_21B1EA;
    if (byte_21B1EA)
    {
      breakpoint_break(v47, &stru_388.sectname[10], 1, *(v18 + 3404), v18);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v18 + 32) + 6656))(a1, a2, v21, a4, a5, a6, a7);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v47[0];
        *(v47[0] + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v39 = *(&g_DYTimebaseInfo + 1);
        v40 = __udivti3();
        v41 = v47[0];
        *(v47[0] + 3) = v40;
        v41[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v18);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v18 + 3480), (v18 + 3520), v47);
    v28 = *(v18 + 3404);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v24 & 2) == 0)
      {
LABEL_34:
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
        v32 = atomic_fetch_add((v18 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v18);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_43;
      }

      v37 = 2;
      v38 = 914;
    }

    breakpoint_break(v47, v38, v37, v28, v18);
    goto LABEL_34;
  }

  atomic_fetch_add((v18 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v18 + 24) + 6656))(a1, a2, a3, a4, a5, a6, a7);
LABEL_43:
  if (v47[0])
  {
    free(v47[0]);
  }
}

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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v18);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v18 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v18 + 24) + 6656);

      v36(a1, a2, a3, a4, a5, a6, a7);
      return;
    }
  }

  *(v18 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v21 = wrapper_map_uniform_loc(v18, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v18);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v18 + 4709) = 30019;
    *(v18 + 4711) = 105;
    v22 = (v18 + 4712);
    if (v21 == -1)
    {
      *v22 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v23 = 1;
    }

    else
    {
      *(v18 + 4712) = 1047084118;
      snprintf((v18 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v18 + 40), a2, v21);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v18 + 4773));
      v23 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a6);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a7);
    strcpy(&v22[v23], "iiii");
    GPUTools::FB::Encode();
    v24 = byte_21B1EA;
    if (byte_21B1EA)
    {
      breakpoint_break(v47, &stru_388.sectname[10], 1, *(v18 + 3404), v18);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v18 + 32) + 6656))(a1, a2, v21, a4, a5, a6, a7);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v47[0];
        *(v47[0] + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v39 = *(&g_DYTimebaseInfo + 1);
        v40 = __udivti3();
        v41 = v47[0];
        *(v47[0] + 3) = v40;
        v41[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v18);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v18 + 3480), (v18 + 3520), v47);
    v28 = *(v18 + 3404);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v24 & 2) == 0)
      {
LABEL_34:
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
        v32 = atomic_fetch_add((v18 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v18);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_43;
      }

      v37 = 2;
      v38 = 914;
    }

    breakpoint_break(v47, v38, v37, v28, v18);
    goto LABEL_34;
  }

  atomic_fetch_add((v18 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v18 + 24) + 6656))(a1, a2, a3, a4, a5, a6, a7);
LABEL_43:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_86404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform1f(__GLIContextRec *a1, volatile int *a2, uint64_t a3, float a4)
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v29 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v29 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
      v31 = *(*(v13 + 24) + 6664);
      v32.n128_f32[0] = a4;

      v31(a1, a2, a3, v32);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, a2, a3);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v38, *v13);
    GPUTools::FB::FIFOArgumentProvider::push(&v38, a2);
    *(v13 + 4709) = 30019;
    *(v13 + 4711) = 105;
    v17 = (v13 + 4712);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v38, -1);
      v18 = 1;
    }

    else
    {
      *(v13 + 4712) = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), a2, v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v38, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v38, a4);
    *&v17[v18] = 102;
    GPUTools::FB::Encode();
    v19 = byte_21B1DC;
    if (byte_21B1DC)
    {
      breakpoint_break(v42, &stru_338.reserved3, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v20 = mach_absolute_time();
      (*(*(v13 + 32) + 6664))(a1, a2, v16, a4);
      v21 = mach_absolute_time() - v20;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v22 = v42[0];
        *(v42[0] + 2) = v20;
        v22[3] = v21;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v35 = *(&g_DYTimebaseInfo + 1);
        v36 = __udivti3();
        v37 = v42[0];
        *(v42[0] + 3) = v36;
        v37[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v42);
    v23 = *(v13 + 3404);
    if (v23 && (gBreakOnError & 1) != 0)
    {
      v33 = 3;
      v34 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v19 & 2) == 0)
      {
LABEL_34:
        v24 = [DYGetGLGuestAppClient() defaultFbufStream];
        v25 = v24;
        while (atomic_exchange(v24 + 14, 1u) == 1)
        {
            ;
          }
        }

        v26 = *v42[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v25 + 14);
        v27 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v27 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v38);
        goto LABEL_43;
      }

      v33 = 2;
      v34 = 900;
    }

    breakpoint_break(v42, v34, v33, v23, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6664))(a1, a2, a3, a4);
LABEL_43:
  if (v42[0])
  {
    free(v42[0]);
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v29 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v29 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
      v31 = *(*(v13 + 24) + 6664);
      v32.n128_f32[0] = a4;

      v31(a1, a2, a3, v32);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, a2, a3);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v38, *v13);
    GPUTools::FB::FIFOArgumentProvider::push(&v38, a2);
    *(v13 + 4709) = 30019;
    *(v13 + 4711) = 105;
    v17 = (v13 + 4712);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v38, -1);
      v18 = 1;
    }

    else
    {
      *(v13 + 4712) = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), a2, v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v38, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v38, a4);
    *&v17[v18] = 102;
    GPUTools::FB::Encode();
    v19 = byte_21B1DC;
    if (byte_21B1DC)
    {
      breakpoint_break(v42, &stru_338.reserved3, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v20 = mach_absolute_time();
      (*(*(v13 + 32) + 6664))(a1, a2, v16, a4);
      v21 = mach_absolute_time() - v20;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v22 = v42[0];
        *(v42[0] + 2) = v20;
        v22[3] = v21;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v35 = *(&g_DYTimebaseInfo + 1);
        v36 = __udivti3();
        v37 = v42[0];
        *(v42[0] + 3) = v36;
        v37[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v42);
    v23 = *(v13 + 3404);
    if (v23 && (gBreakOnError & 1) != 0)
    {
      v33 = 3;
      v34 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v19 & 2) == 0)
      {
LABEL_34:
        v24 = [DYGetGLGuestAppClient() defaultFbufStream];
        v25 = v24;
        while (atomic_exchange(v24 + 14, 1u) == 1)
        {
            ;
          }
        }

        v26 = *v42[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v25 + 14);
        v27 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v27 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v38);
        goto LABEL_43;
      }

      v33 = 2;
      v34 = 900;
    }

    breakpoint_break(v42, v34, v33, v23, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6664))(a1, a2, a3, a4);
LABEL_43:
  if (v42[0])
  {
    free(v42[0]);
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
      v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v18, 0, do_nothing);
LABEL_29:
      v20 = *(*(v13 + 24) + 6664);
      v19.n128_f32[0] = a4;

      v20(a1, a2, a3, v19);
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

  v16 = wrapper_map_uniform_loc(v13, a2, a3);
  (*(*(v13 + 32) + 6664))(a1, a2, v16, a4);
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
      v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v21, 0, do_nothing);
LABEL_29:
      v23 = *(*(v13 + 24) + 6664);
      v22.n128_f32[0] = a4;

      v23(a1, a2, a3, v22);
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

  v16 = wrapper_map_uniform_loc(v13, a2, a3);
  v17 = mach_absolute_time();
  (*(*(v13 + 32) + 6664))(a1, a2, v16, a4);
  v18 = mach_absolute_time();
  v19 = vdupq_n_s64(1uLL);
  v19.i64[0] = v18 - v17;
  *(v13 + 3696) = vaddq_s64(v19, *(v13 + 3696));
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

void sub_8694C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform2f(__GLIContextRec *a1, volatile int *a2, uint64_t a3, float a4, float a5)
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(*(v15 + 24) + 6672);
      v34.n128_f32[0] = a4;
      v35.n128_f32[0] = a5;

      v33(a1, a2, a3, v34, v35);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v41, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a5);
    strcpy(&v19[v20], "ff");
    GPUTools::FB::Encode();
    v21 = byte_21B1E0;
    if (byte_21B1E0)
    {
      breakpoint_break(v45, &stru_388, 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(*(v15 + 32) + 6672))(a1, a2, v18, a4, a5);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v45[0];
        *(v45[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v38 = *(&g_DYTimebaseInfo + 1);
        v39 = __udivti3();
        v40 = v45[0];
        *(v45[0] + 3) = v39;
        v40[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v15);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v45);
    v25 = *(v15 + 3404);
    if (v25 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v21 & 2) == 0)
      {
LABEL_34:
        v26 = [DYGetGLGuestAppClient() defaultFbufStream];
        v27 = v26;
        while (atomic_exchange(v26 + 14, 1u) == 1)
        {
            ;
          }
        }

        v28 = *v45[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v27 + 14);
        v29 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v29 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v41);
        goto LABEL_43;
      }

      v36 = 2;
      v37 = 904;
    }

    breakpoint_break(v45, v37, v36, v25, v15);
    goto LABEL_34;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6672))(a1, a2, a3, a4, a5);
LABEL_43:
  if (v45[0])
  {
    free(v45[0]);
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(*(v15 + 24) + 6672);
      v34.n128_f32[0] = a4;
      v35.n128_f32[0] = a5;

      v33(a1, a2, a3, v34, v35);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v41, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a5);
    strcpy(&v19[v20], "ff");
    GPUTools::FB::Encode();
    v21 = byte_21B1E0;
    if (byte_21B1E0)
    {
      breakpoint_break(v45, &stru_388, 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(*(v15 + 32) + 6672))(a1, a2, v18, a4, a5);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v45[0];
        *(v45[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v38 = *(&g_DYTimebaseInfo + 1);
        v39 = __udivti3();
        v40 = v45[0];
        *(v45[0] + 3) = v39;
        v40[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v15);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v45);
    v25 = *(v15 + 3404);
    if (v25 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v21 & 2) == 0)
      {
LABEL_34:
        v26 = [DYGetGLGuestAppClient() defaultFbufStream];
        v27 = v26;
        while (atomic_exchange(v26 + 14, 1u) == 1)
        {
            ;
          }
        }

        v28 = *v45[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v27 + 14);
        v29 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v29 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v41);
        goto LABEL_43;
      }

      v36 = 2;
      v37 = 904;
    }

    breakpoint_break(v45, v37, v36, v25, v15);
    goto LABEL_34;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6672))(a1, a2, a3, a4, a5);
LABEL_43:
  if (v45[0])
  {
    free(v45[0]);
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
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_29:
      v23 = *(*(v15 + 24) + 6672);
      v21.n128_f32[0] = a4;
      v22.n128_f32[0] = a5;

      v23(a1, a2, a3, v21, v22);
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

  v18 = wrapper_map_uniform_loc(v15, a2, a3);
  (*(*(v15 + 32) + 6672))(a1, a2, v18, a4, a5);
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
      v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v23, 0, do_nothing);
LABEL_29:
      v26 = *(*(v15 + 24) + 6672);
      v24.n128_f32[0] = a4;
      v25.n128_f32[0] = a5;

      v26(a1, a2, a3, v24, v25);
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

  v18 = wrapper_map_uniform_loc(v15, a2, a3);
  v19 = mach_absolute_time();
  (*(*(v15 + 32) + 6672))(a1, a2, v18, a4, a5);
  v20 = mach_absolute_time();
  v21 = vdupq_n_s64(1uLL);
  v21.i64[0] = v20 - v19;
  *(v15 + 3696) = vaddq_s64(v21, *(v15 + 3696));
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

void sub_86EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform3f(__GLIContextRec *a1, volatile int *a2, uint64_t a3, float a4, float a5, float a6)
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(*(v17 + 24) + 6680);
      v36.n128_f32[0] = a4;
      v37.n128_f32[0] = a5;
      v38.n128_f32[0] = a6;

      v35(a1, a2, a3, v36, v37, v38);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v48[0] = 0;
  v48[1] = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v20 = wrapper_map_uniform_loc(v17, a2, a3);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v44, *v17);
    GPUTools::FB::FIFOArgumentProvider::push(&v44, a2);
    *(v17 + 4709) = 30019;
    *(v17 + 4711) = 105;
    v21 = (v17 + 4712);
    if (v20 == -1)
    {
      *v21 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v44, -1);
      v22 = 1;
    }

    else
    {
      *(v17 + 4712) = 1047084118;
      snprintf((v17 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v17 + 40), a2, v20);
      GPUTools::FB::FIFOArgumentProvider::push(&v44, (v17 + 4773));
      v22 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v44, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v44, a5);
    GPUTools::FB::FIFOArgumentProvider::push(&v44, a6);
    *&v21[v22] = 6710886;
    GPUTools::FB::Encode();
    v23 = byte_21B1E4;
    if (byte_21B1E4)
    {
      breakpoint_break(v48, &stru_388.sectname[4], 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v17 + 32) + 6680))(a1, a2, v20, a4, a5, a6);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v48[0];
        *(v48[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v41 = *(&g_DYTimebaseInfo + 1);
        v42 = __udivti3();
        v43 = v48[0];
        *(v48[0] + 3) = v42;
        v43[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v17);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), v48);
    v27 = *(v17 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v39 = 3;
      v40 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_34:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        v30 = *v48[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v31 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v44);
        goto LABEL_43;
      }

      v39 = 2;
      v40 = 908;
    }

    breakpoint_break(v48, v40, v39, v27, v17);
    goto LABEL_34;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 6680))(a1, a2, a3, a4, a5, a6);
LABEL_43:
  if (v48[0])
  {
    free(v48[0]);
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(*(v17 + 24) + 6680);
      v36.n128_f32[0] = a4;
      v37.n128_f32[0] = a5;
      v38.n128_f32[0] = a6;

      v35(a1, a2, a3, v36, v37, v38);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v48[0] = 0;
  v48[1] = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v20 = wrapper_map_uniform_loc(v17, a2, a3);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v44, *v17);
    GPUTools::FB::FIFOArgumentProvider::push(&v44, a2);
    *(v17 + 4709) = 30019;
    *(v17 + 4711) = 105;
    v21 = (v17 + 4712);
    if (v20 == -1)
    {
      *v21 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v44, -1);
      v22 = 1;
    }

    else
    {
      *(v17 + 4712) = 1047084118;
      snprintf((v17 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v17 + 40), a2, v20);
      GPUTools::FB::FIFOArgumentProvider::push(&v44, (v17 + 4773));
      v22 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v44, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v44, a5);
    GPUTools::FB::FIFOArgumentProvider::push(&v44, a6);
    *&v21[v22] = 6710886;
    GPUTools::FB::Encode();
    v23 = byte_21B1E4;
    if (byte_21B1E4)
    {
      breakpoint_break(v48, &stru_388.sectname[4], 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v17 + 32) + 6680))(a1, a2, v20, a4, a5, a6);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v48[0];
        *(v48[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v41 = *(&g_DYTimebaseInfo + 1);
        v42 = __udivti3();
        v43 = v48[0];
        *(v48[0] + 3) = v42;
        v43[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v17);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), v48);
    v27 = *(v17 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v39 = 3;
      v40 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_34:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        v30 = *v48[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v31 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v44);
        goto LABEL_43;
      }

      v39 = 2;
      v40 = 908;
    }

    breakpoint_break(v48, v40, v39, v27, v17);
    goto LABEL_34;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 6680))(a1, a2, a3, a4, a5, a6);
LABEL_43:
  if (v48[0])
  {
    free(v48[0]);
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
      v22 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v22, 0, do_nothing);
LABEL_29:
      v26 = *(*(v17 + 24) + 6680);
      v23.n128_f32[0] = a4;
      v24.n128_f32[0] = a5;
      v25.n128_f32[0] = a6;

      v26(a1, a2, a3, v23, v24, v25);
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

  v20 = wrapper_map_uniform_loc(v17, a2, a3);
  (*(*(v17 + 32) + 6680))(a1, a2, v20, a4, a5, a6);
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
      v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v25, 0, do_nothing);
LABEL_29:
      v29 = *(*(v17 + 24) + 6680);
      v26.n128_f32[0] = a4;
      v27.n128_f32[0] = a5;
      v28.n128_f32[0] = a6;

      v29(a1, a2, a3, v26, v27, v28);
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

  v20 = wrapper_map_uniform_loc(v17, a2, a3);
  v21 = mach_absolute_time();
  (*(*(v17 + 32) + 6680))(a1, a2, v20, a4, a5, a6);
  v22 = mach_absolute_time();
  v23 = vdupq_n_s64(1uLL);
  v23.i64[0] = v22 - v21;
  *(v17 + 3696) = vaddq_s64(v23, *(v17 + 3696));
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

void sub_87448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform4f(__GLIContextRec *a1, volatile int *a2, uint64_t a3, float a4, float a5, float a6, float a7)
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v19);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v19 + 24) + 6688);
      v38.n128_f32[0] = a4;
      v39.n128_f32[0] = a5;
      v40.n128_f32[0] = a6;
      v41.n128_f32[0] = a7;

      v37(a1, a2, a3, v38, v39, v40, v41);
      return;
    }
  }

  *(v19 + 4838) = 1;
  v51[0] = 0;
  v51[1] = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v22 = wrapper_map_uniform_loc(v19, a2, a3);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v47, *v19);
    GPUTools::FB::FIFOArgumentProvider::push(&v47, a2);
    *(v19 + 4709) = 30019;
    *(v19 + 4711) = 105;
    v23 = (v19 + 4712);
    if (v22 == -1)
    {
      *v23 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v47, -1);
      v24 = 1;
    }

    else
    {
      *(v19 + 4712) = 1047084118;
      snprintf((v19 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v19 + 40), a2, v22);
      GPUTools::FB::FIFOArgumentProvider::push(&v47, (v19 + 4773));
      v24 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v47, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v47, a5);
    GPUTools::FB::FIFOArgumentProvider::push(&v47, a6);
    GPUTools::FB::FIFOArgumentProvider::push(&v47, a7);
    strcpy(&v23[v24], "ffff");
    GPUTools::FB::Encode();
    v25 = byte_21B1E8;
    if (byte_21B1E8)
    {
      breakpoint_break(v51, &stru_388.sectname[8], 1, *(v19 + 3404), v19);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v19 + 32) + 6688))(a1, a2, v22, a4, a5, a6, a7);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v51[0];
        *(v51[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v44 = *(&g_DYTimebaseInfo + 1);
        v45 = __udivti3();
        v46 = v51[0];
        *(v51[0] + 3) = v45;
        v46[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v19);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v19 + 3480), (v19 + 3520), v51);
    v29 = *(v19 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v42 = 3;
      v43 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_34:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v51[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v19);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v47);
        goto LABEL_43;
      }

      v42 = 2;
      v43 = 912;
    }

    breakpoint_break(v51, v43, v42, v29, v19);
    goto LABEL_34;
  }

  atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v19 + 24) + 6688))(a1, a2, a3, a4, a5, a6, a7);
LABEL_43:
  if (v51[0])
  {
    free(v51[0]);
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v19);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v19 + 24) + 6688);
      v38.n128_f32[0] = a4;
      v39.n128_f32[0] = a5;
      v40.n128_f32[0] = a6;
      v41.n128_f32[0] = a7;

      v37(a1, a2, a3, v38, v39, v40, v41);
      return;
    }
  }

  *(v19 + 4838) = 1;
  v51[0] = 0;
  v51[1] = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v22 = wrapper_map_uniform_loc(v19, a2, a3);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v47, *v19);
    GPUTools::FB::FIFOArgumentProvider::push(&v47, a2);
    *(v19 + 4709) = 30019;
    *(v19 + 4711) = 105;
    v23 = (v19 + 4712);
    if (v22 == -1)
    {
      *v23 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v47, -1);
      v24 = 1;
    }

    else
    {
      *(v19 + 4712) = 1047084118;
      snprintf((v19 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v19 + 40), a2, v22);
      GPUTools::FB::FIFOArgumentProvider::push(&v47, (v19 + 4773));
      v24 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v47, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v47, a5);
    GPUTools::FB::FIFOArgumentProvider::push(&v47, a6);
    GPUTools::FB::FIFOArgumentProvider::push(&v47, a7);
    strcpy(&v23[v24], "ffff");
    GPUTools::FB::Encode();
    v25 = byte_21B1E8;
    if (byte_21B1E8)
    {
      breakpoint_break(v51, &stru_388.sectname[8], 1, *(v19 + 3404), v19);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v19 + 32) + 6688))(a1, a2, v22, a4, a5, a6, a7);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v51[0];
        *(v51[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v44 = *(&g_DYTimebaseInfo + 1);
        v45 = __udivti3();
        v46 = v51[0];
        *(v51[0] + 3) = v45;
        v46[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v19);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v19 + 3480), (v19 + 3520), v51);
    v29 = *(v19 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v42 = 3;
      v43 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_34:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v51[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v19);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v47);
        goto LABEL_43;
      }

      v42 = 2;
      v43 = 912;
    }

    breakpoint_break(v51, v43, v42, v29, v19);
    goto LABEL_34;
  }

  atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v19 + 24) + 6688))(a1, a2, a3, a4, a5, a6, a7);
LABEL_43:
  if (v51[0])
  {
    free(v51[0]);
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
      v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v24, 0, do_nothing);
LABEL_29:
      v29 = *(*(v19 + 24) + 6688);
      v25.n128_f32[0] = a4;
      v26.n128_f32[0] = a5;
      v27.n128_f32[0] = a6;
      v28.n128_f32[0] = a7;

      v29(a1, a2, a3, v25, v26, v27, v28);
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

  v22 = wrapper_map_uniform_loc(v19, a2, a3);
  (*(*(v19 + 32) + 6688))(a1, a2, v22, a4, a5, a6, a7);
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
      v27 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v27, 0, do_nothing);
LABEL_29:
      v32 = *(*(v19 + 24) + 6688);
      v28.n128_f32[0] = a4;
      v29.n128_f32[0] = a5;
      v30.n128_f32[0] = a6;
      v31.n128_f32[0] = a7;

      v32(a1, a2, a3, v28, v29, v30, v31);
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

  v22 = wrapper_map_uniform_loc(v19, a2, a3);
  v23 = mach_absolute_time();
  (*(*(v19 + 32) + 6688))(a1, a2, v22, a4, a5, a6, a7);
  v24 = mach_absolute_time();
  v25 = vdupq_n_s64(1uLL);
  v25.i64[0] = v24 - v23;
  *(v19 + 3696) = vaddq_s64(v25, *(v19 + 3696));
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

void sub_879F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform1iv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, int *a5)
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
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v15 + 24) + 6696);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 105;
    v22 = v21 + 1;
    if ((4 * a4) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%di", a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = v24;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4644));
      *v22 = 1047084117;
      v23 = 4;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B1DF;
    if (byte_21B1DF)
    {
      breakpoint_break(v47, (&stru_338.reserved3 + 3), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6696))(a1, a2, v18, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47[0];
        *(v47[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v47);
    v29 = *(v15 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 903;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6696))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v15 + 24) + 6696);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 105;
    v22 = v21 + 1;
    if ((4 * a4) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%di", a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = v24;
    }

    else
    {
      *v22 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = 1;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B1DF;
    if (byte_21B1DF)
    {
      breakpoint_break(v47, (&stru_338.reserved3 + 3), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6696))(a1, a2, v18, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47[0];
        *(v47[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v47);
    v29 = *(v15 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 903;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6696))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_87FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform2iv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, int *a5)
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
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v15 + 24) + 6704);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 105;
    v22 = v21 + 1;
    if ((8 * a4) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%di", 2 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = v24;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4644));
      *v22 = 1047084117;
      v23 = 4;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B1E3;
    if (byte_21B1E3)
    {
      breakpoint_break(v47, &stru_388.sectname[3], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6704))(a1, a2, v18, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47[0];
        *(v47[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v47);
    v29 = *(v15 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 907;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6704))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v15 + 24) + 6704);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 105;
    v22 = v21 + 1;
    if ((8 * a4) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%di", 2 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = v24;
    }

    else
    {
      *v22 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = 1;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B1E3;
    if (byte_21B1E3)
    {
      breakpoint_break(v47, &stru_388.sectname[3], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6704))(a1, a2, v18, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47[0];
        *(v47[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v47);
    v29 = *(v15 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 907;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6704))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_88604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform3iv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, int *a5)
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
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v15 + 24) + 6712);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 105;
    v22 = v21 + 1;
    if ((12 * a4) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%di", 3 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = v24;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4644));
      *v22 = 1047084117;
      v23 = 4;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B1E7;
    if (byte_21B1E7)
    {
      breakpoint_break(v47, &stru_388.sectname[7], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6712))(a1, a2, v18, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47[0];
        *(v47[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v47);
    v29 = *(v15 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 911;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6712))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v15 + 24) + 6712);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 105;
    v22 = v21 + 1;
    if ((12 * a4) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%di", 3 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = v24;
    }

    else
    {
      *v22 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = 1;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B1E7;
    if (byte_21B1E7)
    {
      breakpoint_break(v47, &stru_388.sectname[7], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6712))(a1, a2, v18, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47[0];
        *(v47[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v47);
    v29 = *(v15 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 911;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6712))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_88C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform4iv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, int *a5)
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
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v15 + 24) + 6720);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 105;
    v22 = v21 + 1;
    if ((16 * a4) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%di", 4 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = v24;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4644));
      *v22 = 1047084117;
      v23 = 4;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B1EB;
    if (byte_21B1EB)
    {
      breakpoint_break(v47, &stru_388.sectname[11], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6720))(a1, a2, v18, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47[0];
        *(v47[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v47);
    v29 = *(v15 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 915;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6720))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v15 + 24) + 6720);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 105;
    v22 = v21 + 1;
    if ((16 * a4) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%di", 4 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = v24;
    }

    else
    {
      *v22 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = 1;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B1EB;
    if (byte_21B1EB)
    {
      breakpoint_break(v47, &stru_388.sectname[11], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6720))(a1, a2, v18, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47[0];
        *(v47[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v47);
    v29 = *(v15 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 915;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6720))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_89214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform1fv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, float *a5)
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
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v15 + 24) + 6728);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 105;
    v22 = v21 + 1;
    if ((4 * a4) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = v24;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4644));
      *v22 = 1046887509;
      v23 = 4;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B1DD;
    if (byte_21B1DD)
    {
      breakpoint_break(v47, (&stru_338.reserved3 + 1), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6728))(a1, a2, v18, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47[0];
        *(v47[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v47);
    v29 = *(v15 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 901;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6728))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v15 + 24) + 6728);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 105;
    v22 = v21 + 1;
    if ((4 * a4) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = v24;
    }

    else
    {
      *v22 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = 1;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B1DD;
    if (byte_21B1DD)
    {
      breakpoint_break(v47, (&stru_338.reserved3 + 1), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6728))(a1, a2, v18, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47[0];
        *(v47[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v47);
    v29 = *(v15 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 901;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6728))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_89818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform2fv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, float *a5)
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
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v15 + 24) + 6736);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 105;
    v22 = v21 + 1;
    if ((8 * a4) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 2 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = v24;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4644));
      *v22 = 1046887509;
      v23 = 4;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B1E1;
    if (byte_21B1E1)
    {
      breakpoint_break(v47, &stru_388.sectname[1], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6736))(a1, a2, v18, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47[0];
        *(v47[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v47);
    v29 = *(v15 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 905;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6736))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v15 + 24) + 6736);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 105;
    v22 = v21 + 1;
    if ((8 * a4) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 2 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = v24;
    }

    else
    {
      *v22 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = 1;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B1E1;
    if (byte_21B1E1)
    {
      breakpoint_break(v47, &stru_388.sectname[1], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6736))(a1, a2, v18, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47[0];
        *(v47[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v47);
    v29 = *(v15 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 905;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6736))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_89E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform3fv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, float *a5)
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
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v15 + 24) + 6744);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 105;
    v22 = v21 + 1;
    if ((12 * a4) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 3 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = v24;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4644));
      *v22 = 1046887509;
      v23 = 4;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B1E5;
    if (byte_21B1E5)
    {
      breakpoint_break(v47, &stru_388.sectname[5], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6744))(a1, a2, v18, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47[0];
        *(v47[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v47);
    v29 = *(v15 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 909;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6744))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v15 + 24) + 6744);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 105;
    v22 = v21 + 1;
    if ((12 * a4) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 3 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = v24;
    }

    else
    {
      *v22 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = 1;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B1E5;
    if (byte_21B1E5)
    {
      breakpoint_break(v47, &stru_388.sectname[5], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6744))(a1, a2, v18, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47[0];
        *(v47[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v47);
    v29 = *(v15 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 909;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6744))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_8A428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform4fv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, float *a5)
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
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v15 + 24) + 6752);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 105;
    v22 = v21 + 1;
    if ((16 * a4) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 4 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = v24;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4644));
      *v22 = 1046887509;
      v23 = 4;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B1E9;
    if (byte_21B1E9)
    {
      breakpoint_break(v47, &stru_388.sectname[9], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6752))(a1, a2, v18, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47[0];
        *(v47[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v47);
    v29 = *(v15 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 913;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6752))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v15 + 24) + 6752);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, a2, a3);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a2);
    *(v15 + 4709) = 30019;
    *(v15 + 4711) = 105;
    v19 = (v15 + 4712);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *(v15 + 4712) = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), a2, v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 105;
    v22 = v21 + 1;
    if ((16 * a4) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 4 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = v24;
    }

    else
    {
      *v22 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
      v23 = 1;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B1E9;
    if (byte_21B1E9)
    {
      breakpoint_break(v47, &stru_388.sectname[9], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6752))(a1, a2, v18, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47[0];
        *(v47[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v47);
    v29 = *(v15 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v47[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 913;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6752))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_8AA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform_matrix2fv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  v11 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v13 = *(v11 + 32);
    v14 = v13 >= a1;
    v15 = v13 < a1;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v12 == ContextInfo::activeCtxInfoMap + 8 || *(v12 + 32) > a1)
  {
LABEL_9:
    v12 = ContextInfo::activeCtxInfoMap + 8;
  }

  v16 = *(v12 + 40);
  v17 = atomic_fetch_add((v16 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v17 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v16);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
      v37 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v37, 0, do_nothing);
      v38 = *(*(v16 + 24) + 6760);

      v38(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v16 + 4838) = 1;
  v49[0] = 0;
  v49[1] = 0;
  v50 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = wrapper_map_uniform_loc(v16, a2, a3);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v45, *v16);
    GPUTools::FB::FIFOArgumentProvider::push(&v45, a2);
    *(v16 + 4709) = 30019;
    *(v16 + 4711) = 105;
    v20 = (v16 + 4712);
    if (v19 == -1)
    {
      *v20 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v45, -1);
      v21 = 1;
    }

    else
    {
      *(v16 + 4712) = 1047084118;
      snprintf((v16 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v16 + 40), a2, v19);
      GPUTools::FB::FIFOArgumentProvider::push(&v45, (v16 + 4773));
      v21 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v45, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v45, a5);
    v22 = &v20[v21];
    *v22 = 30057;
    v22[2] = 98;
    v23 = &v20[v21 + 3];
    if ((16 * a4) < 0x41)
    {
      v25 = snprintf(v23, v16 + 4709 - v23 + 64, "@%df", 4 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v45, a6);
      v24 = v25;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v45, (v16 + 4644));
      *v23 = 1046887509;
      v24 = 4;
    }

    v23[v24] = 0;
    GPUTools::FB::Encode();
    v26 = byte_21B1EC;
    if (byte_21B1EC)
    {
      breakpoint_break(v49, &stru_388.sectname[12], 1, *(v16 + 3404), v16);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v16 + 32) + 6760))(a1, a2, v19, a4, a5, a6);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v49[0];
        *(v49[0] + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v41 = *(&g_DYTimebaseInfo + 1);
        v42 = __udivti3();
        v43 = v49[0];
        *(v49[0] + 3) = v42;
        v43[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v16);
    }

LABEL_28:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v16 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v16);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v16 + 3480), (v16 + 3520), v49);
    v30 = *(v16 + 3404);
    if (v30 && (gBreakOnError & 1) != 0)
    {
      v39 = 3;
      v40 = 0xFFFFFFFFLL;
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

        v33 = *v49[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v32 + 14);
        v34 = atomic_fetch_add((v16 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v34 >= 1)
        {
          handle_opengl_thread_conflict(v16);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v45);
        goto LABEL_46;
      }

      v39 = 2;
      v40 = 916;
    }

    breakpoint_break(v49, v40, v39, v30, v16);
    goto LABEL_37;
  }

  atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v16 + 24) + 6760))(a1, a2, a3, a4, a5, a6);
LABEL_46:
  if (v49[0])
  {
    free(v49[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v17 + 24) + 6760);

      v39(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v49[0] = 0;
  v49[1] = 0;
  v50 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v20 = wrapper_map_uniform_loc(v17, a2, a3);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v45, *v17);
    GPUTools::FB::FIFOArgumentProvider::push(&v45, a2);
    *(v17 + 4709) = 30019;
    *(v17 + 4711) = 105;
    v21 = (v17 + 4712);
    if (v20 == -1)
    {
      *v21 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v45, -1);
      v22 = 1;
    }

    else
    {
      *(v17 + 4712) = 1047084118;
      snprintf((v17 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v17 + 40), a2, v20);
      GPUTools::FB::FIFOArgumentProvider::push(&v45, (v17 + 4773));
      v22 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v45, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v45, a5);
    v23 = &v21[v22];
    *v23 = 30057;
    v23[2] = 98;
    v24 = &v21[v22 + 3];
    if ((16 * a4) < 0x41)
    {
      v26 = snprintf(v24, v17 + 4709 - v24 + 64, "@%df", 4 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v45, a6);
      v25 = v26;
    }

    else
    {
      *v24 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v45, a6);
      v25 = 1;
    }

    v24[v25] = 0;
    GPUTools::FB::Encode();
    v27 = byte_21B1EC;
    if (byte_21B1EC)
    {
      breakpoint_break(v49, &stru_388.sectname[12], 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v27 & 4))
    {
      v28 = mach_absolute_time();
      (*(*(v17 + 32) + 6760))(a1, a2, v20, a4, a5, a6);
      v29 = mach_absolute_time() - v28;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v30 = v49[0];
        *(v49[0] + 2) = v28;
        v30[3] = v29;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v42 = *(&g_DYTimebaseInfo + 1);
        v43 = __udivti3();
        v44 = v49[0];
        *(v49[0] + 3) = v43;
        v44[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v17);
    }

LABEL_28:
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

    GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), v49);
    v31 = *(v17 + 3404);
    if (v31 && (gBreakOnError & 1) != 0)
    {
      v40 = 3;
      v41 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v27 & 2) == 0)
      {
LABEL_37:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = *v49[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v35 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v45);
        goto LABEL_46;
      }

      v40 = 2;
      v41 = 916;
    }

    breakpoint_break(v49, v41, v40, v31, v17);
    goto LABEL_37;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 6760))(a1, a2, a3, a4, a5, a6);
LABEL_46:
  if (v49[0])
  {
    free(v49[0]);
  }
}

void sub_8B060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform_matrix3fv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  v11 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v13 = *(v11 + 32);
    v14 = v13 >= a1;
    v15 = v13 < a1;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v12 == ContextInfo::activeCtxInfoMap + 8 || *(v12 + 32) > a1)
  {
LABEL_9:
    v12 = ContextInfo::activeCtxInfoMap + 8;
  }

  v16 = *(v12 + 40);
  v17 = atomic_fetch_add((v16 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v17 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v16);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
      v37 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v37, 0, do_nothing);
      v38 = *(*(v16 + 24) + 6768);

      v38(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v16 + 4838) = 1;
  v49[0] = 0;
  v49[1] = 0;
  v50 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = wrapper_map_uniform_loc(v16, a2, a3);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v45, *v16);
    GPUTools::FB::FIFOArgumentProvider::push(&v45, a2);
    *(v16 + 4709) = 30019;
    *(v16 + 4711) = 105;
    v20 = (v16 + 4712);
    if (v19 == -1)
    {
      *v20 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v45, -1);
      v21 = 1;
    }

    else
    {
      *(v16 + 4712) = 1047084118;
      snprintf((v16 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v16 + 40), a2, v19);
      GPUTools::FB::FIFOArgumentProvider::push(&v45, (v16 + 4773));
      v21 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v45, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v45, a5);
    v22 = &v20[v21];
    *v22 = 30057;
    v22[2] = 98;
    v23 = &v20[v21 + 3];
    if ((36 * a4) < 0x41)
    {
      v25 = snprintf(v23, v16 + 4709 - v23 + 64, "@%df", 9 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v45, a6);
      v24 = v25;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v45, (v16 + 4644));
      *v23 = 1046887509;
      v24 = 4;
    }

    v23[v24] = 0;
    GPUTools::FB::Encode();
    v26 = byte_21B1ED;
    if (byte_21B1ED)
    {
      breakpoint_break(v49, &stru_388.sectname[13], 1, *(v16 + 3404), v16);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v16 + 32) + 6768))(a1, a2, v19, a4, a5, a6);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v49[0];
        *(v49[0] + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v41 = *(&g_DYTimebaseInfo + 1);
        v42 = __udivti3();
        v43 = v49[0];
        *(v49[0] + 3) = v42;
        v43[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v16);
    }

LABEL_28:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v16 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v16);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v16 + 3480), (v16 + 3520), v49);
    v30 = *(v16 + 3404);
    if (v30 && (gBreakOnError & 1) != 0)
    {
      v39 = 3;
      v40 = 0xFFFFFFFFLL;
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

        v33 = *v49[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v32 + 14);
        v34 = atomic_fetch_add((v16 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v34 >= 1)
        {
          handle_opengl_thread_conflict(v16);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v45);
        goto LABEL_46;
      }

      v39 = 2;
      v40 = 917;
    }

    breakpoint_break(v49, v40, v39, v30, v16);
    goto LABEL_37;
  }

  atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v16 + 24) + 6768))(a1, a2, a3, a4, a5, a6);
LABEL_46:
  if (v49[0])
  {
    free(v49[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v17 + 24) + 6768);

      v39(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v49[0] = 0;
  v49[1] = 0;
  v50 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v20 = wrapper_map_uniform_loc(v17, a2, a3);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v45, *v17);
    GPUTools::FB::FIFOArgumentProvider::push(&v45, a2);
    *(v17 + 4709) = 30019;
    *(v17 + 4711) = 105;
    v21 = (v17 + 4712);
    if (v20 == -1)
    {
      *v21 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v45, -1);
      v22 = 1;
    }

    else
    {
      *(v17 + 4712) = 1047084118;
      snprintf((v17 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v17 + 40), a2, v20);
      GPUTools::FB::FIFOArgumentProvider::push(&v45, (v17 + 4773));
      v22 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v45, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v45, a5);
    v23 = &v21[v22];
    *v23 = 30057;
    v23[2] = 98;
    v24 = &v21[v22 + 3];
    if ((36 * a4) < 0x41)
    {
      v26 = snprintf(v24, v17 + 4709 - v24 + 64, "@%df", 9 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v45, a6);
      v25 = v26;
    }

    else
    {
      *v24 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v45, a6);
      v25 = 1;
    }

    v24[v25] = 0;
    GPUTools::FB::Encode();
    v27 = byte_21B1ED;
    if (byte_21B1ED)
    {
      breakpoint_break(v49, &stru_388.sectname[13], 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v27 & 4))
    {
      v28 = mach_absolute_time();
      (*(*(v17 + 32) + 6768))(a1, a2, v20, a4, a5, a6);
      v29 = mach_absolute_time() - v28;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v30 = v49[0];
        *(v49[0] + 2) = v28;
        v30[3] = v29;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v42 = *(&g_DYTimebaseInfo + 1);
        v43 = __udivti3();
        v44 = v49[0];
        *(v49[0] + 3) = v43;
        v44[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v17);
    }

LABEL_28:
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

    GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), v49);
    v31 = *(v17 + 3404);
    if (v31 && (gBreakOnError & 1) != 0)
    {
      v40 = 3;
      v41 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v27 & 2) == 0)
      {
LABEL_37:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        v34 = *v49[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v35 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v45);
        goto LABEL_46;
      }

      v40 = 2;
      v41 = 917;
    }

    breakpoint_break(v49, v41, v40, v31, v17);
    goto LABEL_37;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 6768))(a1, a2, a3, a4, a5, a6);
LABEL_46:
  if (v49[0])
  {
    free(v49[0]);
  }
}