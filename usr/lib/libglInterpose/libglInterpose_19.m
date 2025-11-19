void sub_8B690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform_matrix4fv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
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
      v38 = *(*(v16 + 24) + 6776);

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
    if ((64 * a4) < 0x41)
    {
      v25 = snprintf(v23, v16 + 4709 - v23 + 64, "@%df", 16 * a4);
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
    v26 = byte_21B1EE;
    if (byte_21B1EE)
    {
      breakpoint_break(v49, &stru_388.sectname[14], 1, *(v16 + 3404), v16);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v16 + 32) + 6776))(a1, a2, v19, a4, a5, a6);
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
      v40 = 918;
    }

    breakpoint_break(v49, v40, v39, v30, v16);
    goto LABEL_37;
  }

  atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v16 + 24) + 6776))(a1, a2, a3, a4, a5, a6);
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
      v39 = *(*(v17 + 24) + 6776);

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
    if ((64 * a4) < 0x41)
    {
      v26 = snprintf(v24, v17 + 4709 - v24 + 64, "@%df", 16 * a4);
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
    v27 = byte_21B1EE;
    if (byte_21B1EE)
    {
      breakpoint_break(v49, &stru_388.sectname[14], 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v27 & 4))
    {
      v28 = mach_absolute_time();
      (*(*(v17 + 32) + 6776))(a1, a2, v20, a4, a5, a6);
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
      v41 = 918;
    }

    breakpoint_break(v49, v41, v40, v31, v17);
    goto LABEL_37;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 6776))(a1, a2, a3, a4, a5, a6);
LABEL_46:
  if (v49[0])
  {
    free(v49[0]);
  }
}

void sub_8BCC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform1ui(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4)
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
      v31 = *(*(v13 + 24) + 6784);

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
    strcpy(&v17[v18], "ui");
    GPUTools::FB::Encode();
    v19 = byte_21B204;
    if (byte_21B204)
    {
      breakpoint_break(v41, &stru_388.addr + 1, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v20 = mach_absolute_time();
      (*(*(v13 + 32) + 6784))(a1, a2, v16, a4);
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
      v33 = 940;
    }

    breakpoint_break(v41, v33, v32, v23, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6784))(a1, a2, a3, a4);
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
      v31 = *(*(v13 + 24) + 6784);

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
    strcpy(&v17[v18], "ui");
    GPUTools::FB::Encode();
    v19 = byte_21B204;
    if (byte_21B204)
    {
      breakpoint_break(v41, &stru_388.addr + 1, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v20 = mach_absolute_time();
      (*(*(v13 + 32) + 6784))(a1, a2, v16, a4);
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
      v33 = 940;
    }

    breakpoint_break(v41, v33, v32, v23, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6784))(a1, a2, a3, a4);
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
      v19 = *(*(v13 + 24) + 6784);

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
  (*(*(v13 + 32) + 6784))(a1, a2, v16, a4);
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
      v22 = *(*(v13 + 24) + 6784);

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
  (*(*(v13 + 32) + 6784))(a1, a2, v16, a4);
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

void sub_8C210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform2ui(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      v33 = *(*(v15 + 24) + 6792);

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
    strcpy(&v19[v20], "uiui");
    GPUTools::FB::Encode();
    v21 = byte_21B208;
    if (byte_21B208)
    {
      breakpoint_break(v43, &stru_388.size, 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(*(v15 + 32) + 6792))(a1, a2, v18, a4, a5);
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
      v35 = 944;
    }

    breakpoint_break(v43, v35, v34, v25, v15);
    goto LABEL_34;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6792))(a1, a2, a3, a4, a5);
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
      v33 = *(*(v15 + 24) + 6792);

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
    strcpy(&v19[v20], "uiui");
    GPUTools::FB::Encode();
    v21 = byte_21B208;
    if (byte_21B208)
    {
      breakpoint_break(v43, &stru_388.size, 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(*(v15 + 32) + 6792))(a1, a2, v18, a4, a5);
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
      v35 = 944;
    }

    breakpoint_break(v43, v35, v34, v25, v15);
    goto LABEL_34;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6792))(a1, a2, a3, a4, a5);
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
      v21 = *(*(v15 + 24) + 6792);

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
  (*(*(v15 + 32) + 6792))(a1, a2, v18, a4, a5);
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
      v24 = *(*(v15 + 24) + 6792);

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
  (*(*(v15 + 32) + 6792))(a1, a2, v18, a4, a5);
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

void sub_8C780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform3ui(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
      v35 = *(*(v17 + 24) + 6800);

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
    strcpy(&v21[v22], "uiuiui");
    GPUTools::FB::Encode();
    v23 = byte_21B20C;
    if (byte_21B20C)
    {
      breakpoint_break(v45, &stru_388.size + 1, 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v17 + 32) + 6800))(a1, a2, v20, a4, a5, a6);
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
      v37 = 948;
    }

    breakpoint_break(v45, v37, v36, v27, v17);
    goto LABEL_34;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 6800))(a1, a2, a3, a4, a5, a6);
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
      v35 = *(*(v17 + 24) + 6800);

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
    strcpy(&v21[v22], "uiuiui");
    GPUTools::FB::Encode();
    v23 = byte_21B20C;
    if (byte_21B20C)
    {
      breakpoint_break(v45, &stru_388.size + 1, 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v17 + 32) + 6800))(a1, a2, v20, a4, a5, a6);
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
      v37 = 948;
    }

    breakpoint_break(v45, v37, v36, v27, v17);
    goto LABEL_34;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 6800))(a1, a2, a3, a4, a5, a6);
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
      v23 = *(*(v17 + 24) + 6800);

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
  (*(*(v17 + 32) + 6800))(a1, a2, v20, a4, a5, a6);
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
      v26 = *(*(v17 + 24) + 6800);

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
  (*(*(v17 + 32) + 6800))(a1, a2, v20, a4, a5, a6);
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

void sub_8CD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform4ui(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
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
      v36 = *(*(v18 + 24) + 6808);

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
    strcpy(&v22[v23], "uiuiuiui");
    GPUTools::FB::Encode();
    v24 = byte_21B210;
    if (byte_21B210)
    {
      breakpoint_break(v47, &stru_388.offset, 1, *(v18 + 3404), v18);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v18 + 32) + 6808))(a1, a2, v21, a4, a5, a6, a7);
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
      v38 = 952;
    }

    breakpoint_break(v47, v38, v37, v28, v18);
    goto LABEL_34;
  }

  atomic_fetch_add((v18 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v18 + 24) + 6808))(a1, a2, a3, a4, a5, a6, a7);
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
      v36 = *(*(v18 + 24) + 6808);

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
    strcpy(&v22[v23], "uiuiuiui");
    GPUTools::FB::Encode();
    v24 = byte_21B210;
    if (byte_21B210)
    {
      breakpoint_break(v47, &stru_388.offset, 1, *(v18 + 3404), v18);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v18 + 32) + 6808))(a1, a2, v21, a4, a5, a6, a7);
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
      v38 = 952;
    }

    breakpoint_break(v47, v38, v37, v28, v18);
    goto LABEL_34;
  }

  atomic_fetch_add((v18 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v18 + 24) + 6808))(a1, a2, a3, a4, a5, a6, a7);
LABEL_43:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_8D2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform1uiv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v11 = *(v9 + 32);
    v12 = v11 >= a1;
    v13 = v11 < a1;
    if (v12)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * v13);
  }

  while (v9);
  if (v10 == ContextInfo::activeCtxInfoMap + 8 || *(v10 + 32) > a1)
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v14);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v14 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v14 + 24) + 6816);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v14 + 4838) = 1;
  v48[0] = 0;
  v48[1] = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = wrapper_map_uniform_loc(v14, a2, a3);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v44, *v14);
    GPUTools::FB::FIFOArgumentProvider::push(&v44, a2);
    *(v14 + 4709) = 30019;
    *(v14 + 4711) = 105;
    v18 = (v14 + 4712);
    if (v17 == -1)
    {
      *v18 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v44, -1);
      v19 = 1;
    }

    else
    {
      *(v14 + 4712) = 1047084118;
      snprintf((v14 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v14 + 40), a2, v17);
      GPUTools::FB::FIFOArgumentProvider::push(&v44, (v14 + 4773));
      v19 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v44, a4);
    v20 = &v18[v19];
    v21 = &v18[v19];
    *v21 = 105;
    v22 = v21 + 1;
    if ((4 * a4) < 0x41)
    {
      v24 = snprintf(v22, v14 + 4709 - v22 + 64, "@%dui", a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v44, a5);
      v23 = v24;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v44, (v14 + 4644));
      *(v20 + 1) = 1769290837;
      v20[5] = 62;
      v23 = 5;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B205;
    if (byte_21B205)
    {
      breakpoint_break(v48, (&stru_388.addr + 5), 1, *(v14 + 3404), v14);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v14 + 32) + 6816))(a1, a2, v17, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v48[0];
        *(v48[0] + 2) = v26;
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
        v42 = v48[0];
        *(v48[0] + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v14);
    }

LABEL_28:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v14 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v14);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v14 + 3480), (v14 + 3520), v48);
    v29 = *(v14 + 3404);
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

        v32 = *v48[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v14 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v14);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v44);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 941;
    }

    breakpoint_break(v48, v39, v38, v29, v14);
    goto LABEL_37;
  }

  atomic_fetch_add((v14 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v14 + 24) + 6816))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v48[0])
  {
    free(v48[0]);
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
      v37 = *(*(v15 + 24) + 6816);

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
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%dui", a4);
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
    v25 = byte_21B205;
    if (byte_21B205)
    {
      breakpoint_break(v47, (&stru_388.addr + 5), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6816))(a1, a2, v18, a4, a5);
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
      v39 = 941;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6816))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_8D8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform2uiv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v11 = *(v9 + 32);
    v12 = v11 >= a1;
    v13 = v11 < a1;
    if (v12)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * v13);
  }

  while (v9);
  if (v10 == ContextInfo::activeCtxInfoMap + 8 || *(v10 + 32) > a1)
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v14);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v14 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v14 + 24) + 6824);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v14 + 4838) = 1;
  v48[0] = 0;
  v48[1] = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = wrapper_map_uniform_loc(v14, a2, a3);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v44, *v14);
    GPUTools::FB::FIFOArgumentProvider::push(&v44, a2);
    *(v14 + 4709) = 30019;
    *(v14 + 4711) = 105;
    v18 = (v14 + 4712);
    if (v17 == -1)
    {
      *v18 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v44, -1);
      v19 = 1;
    }

    else
    {
      *(v14 + 4712) = 1047084118;
      snprintf((v14 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v14 + 40), a2, v17);
      GPUTools::FB::FIFOArgumentProvider::push(&v44, (v14 + 4773));
      v19 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v44, a4);
    v20 = &v18[v19];
    v21 = &v18[v19];
    *v21 = 105;
    v22 = v21 + 1;
    if ((8 * a4) < 0x41)
    {
      v24 = snprintf(v22, v14 + 4709 - v22 + 64, "@%dui", 2 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v44, a5);
      v23 = v24;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v44, (v14 + 4644));
      *(v20 + 1) = 1769290837;
      v20[5] = 62;
      v23 = 5;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B209;
    if (byte_21B209)
    {
      breakpoint_break(v48, (&stru_388.size + 1), 1, *(v14 + 3404), v14);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v14 + 32) + 6824))(a1, a2, v17, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v48[0];
        *(v48[0] + 2) = v26;
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
        v42 = v48[0];
        *(v48[0] + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v14);
    }

LABEL_28:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v14 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v14);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v14 + 3480), (v14 + 3520), v48);
    v29 = *(v14 + 3404);
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

        v32 = *v48[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v14 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v14);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v44);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 945;
    }

    breakpoint_break(v48, v39, v38, v29, v14);
    goto LABEL_37;
  }

  atomic_fetch_add((v14 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v14 + 24) + 6824))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v48[0])
  {
    free(v48[0]);
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
      v37 = *(*(v15 + 24) + 6824);

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
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%dui", 2 * a4);
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
    v25 = byte_21B209;
    if (byte_21B209)
    {
      breakpoint_break(v47, (&stru_388.size + 1), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6824))(a1, a2, v18, a4, a5);
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
      v39 = 945;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6824))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_8DF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform3uiv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v11 = *(v9 + 32);
    v12 = v11 >= a1;
    v13 = v11 < a1;
    if (v12)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * v13);
  }

  while (v9);
  if (v10 == ContextInfo::activeCtxInfoMap + 8 || *(v10 + 32) > a1)
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v14);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v14 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v14 + 24) + 6832);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v14 + 4838) = 1;
  v48[0] = 0;
  v48[1] = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = wrapper_map_uniform_loc(v14, a2, a3);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v44, *v14);
    GPUTools::FB::FIFOArgumentProvider::push(&v44, a2);
    *(v14 + 4709) = 30019;
    *(v14 + 4711) = 105;
    v18 = (v14 + 4712);
    if (v17 == -1)
    {
      *v18 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v44, -1);
      v19 = 1;
    }

    else
    {
      *(v14 + 4712) = 1047084118;
      snprintf((v14 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v14 + 40), a2, v17);
      GPUTools::FB::FIFOArgumentProvider::push(&v44, (v14 + 4773));
      v19 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v44, a4);
    v20 = &v18[v19];
    v21 = &v18[v19];
    *v21 = 105;
    v22 = v21 + 1;
    if ((12 * a4) < 0x41)
    {
      v24 = snprintf(v22, v14 + 4709 - v22 + 64, "@%dui", 3 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v44, a5);
      v23 = v24;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v44, (v14 + 4644));
      *(v20 + 1) = 1769290837;
      v20[5] = 62;
      v23 = 5;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B20D;
    if (byte_21B20D)
    {
      breakpoint_break(v48, (&stru_388.size + 5), 1, *(v14 + 3404), v14);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v14 + 32) + 6832))(a1, a2, v17, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v48[0];
        *(v48[0] + 2) = v26;
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
        v42 = v48[0];
        *(v48[0] + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v14);
    }

LABEL_28:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v14 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v14);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v14 + 3480), (v14 + 3520), v48);
    v29 = *(v14 + 3404);
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

        v32 = *v48[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v14 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v14);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v44);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 949;
    }

    breakpoint_break(v48, v39, v38, v29, v14);
    goto LABEL_37;
  }

  atomic_fetch_add((v14 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v14 + 24) + 6832))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v48[0])
  {
    free(v48[0]);
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
      v37 = *(*(v15 + 24) + 6832);

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
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%dui", 3 * a4);
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
    v25 = byte_21B20D;
    if (byte_21B20D)
    {
      breakpoint_break(v47, (&stru_388.size + 5), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6832))(a1, a2, v18, a4, a5);
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
      v39 = 949;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6832))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_8E524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform4uiv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v11 = *(v9 + 32);
    v12 = v11 >= a1;
    v13 = v11 < a1;
    if (v12)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * v13);
  }

  while (v9);
  if (v10 == ContextInfo::activeCtxInfoMap + 8 || *(v10 + 32) > a1)
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v14);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v14 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v14 + 24) + 6840);

      v37(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v14 + 4838) = 1;
  v48[0] = 0;
  v48[1] = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = wrapper_map_uniform_loc(v14, a2, a3);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v44, *v14);
    GPUTools::FB::FIFOArgumentProvider::push(&v44, a2);
    *(v14 + 4709) = 30019;
    *(v14 + 4711) = 105;
    v18 = (v14 + 4712);
    if (v17 == -1)
    {
      *v18 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v44, -1);
      v19 = 1;
    }

    else
    {
      *(v14 + 4712) = 1047084118;
      snprintf((v14 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v14 + 40), a2, v17);
      GPUTools::FB::FIFOArgumentProvider::push(&v44, (v14 + 4773));
      v19 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v44, a4);
    v20 = &v18[v19];
    v21 = &v18[v19];
    *v21 = 105;
    v22 = v21 + 1;
    if ((16 * a4) < 0x41)
    {
      v24 = snprintf(v22, v14 + 4709 - v22 + 64, "@%dui", 4 * a4);
      GPUTools::FB::FIFOArgumentProvider::push(&v44, a5);
      v23 = v24;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v44, (v14 + 4644));
      *(v20 + 1) = 1769290837;
      v20[5] = 62;
      v23 = 5;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B211;
    if (byte_21B211)
    {
      breakpoint_break(v48, (&stru_388.offset + 1), 1, *(v14 + 3404), v14);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v14 + 32) + 6840))(a1, a2, v17, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v48[0];
        *(v48[0] + 2) = v26;
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
        v42 = v48[0];
        *(v48[0] + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v14);
    }

LABEL_28:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v14 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v14);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v14 + 3480), (v14 + 3520), v48);
    v29 = *(v14 + 3404);
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

        v32 = *v48[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v33 = atomic_fetch_add((v14 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v14);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v44);
        goto LABEL_46;
      }

      v38 = 2;
      v39 = 953;
    }

    breakpoint_break(v48, v39, v38, v29, v14);
    goto LABEL_37;
  }

  atomic_fetch_add((v14 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v14 + 24) + 6840))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v48[0])
  {
    free(v48[0]);
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
      v37 = *(*(v15 + 24) + 6840);

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
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%dui", 4 * a4);
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
    v25 = byte_21B211;
    if (byte_21B211)
    {
      breakpoint_break(v47, (&stru_388.offset + 1), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6840))(a1, a2, v18, a4, a5);
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
      v39 = 953;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6840))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_8EB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform_matrix2x3fv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
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
      v38 = *(*(v16 + 24) + 6848);

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
    if ((24 * a4) < 0x41)
    {
      v25 = snprintf(v23, v16 + 4709 - v23 + 64, "@%df", 6 * a4);
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
    v26 = byte_21B214;
    if (byte_21B214)
    {
      breakpoint_break(v49, &stru_388.align, 1, *(v16 + 3404), v16);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v16 + 32) + 6848))(a1, a2, v19, a4, a5, a6);
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
      v40 = 956;
    }

    breakpoint_break(v49, v40, v39, v30, v16);
    goto LABEL_37;
  }

  atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v16 + 24) + 6848))(a1, a2, a3, a4, a5, a6);
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
      v39 = *(*(v17 + 24) + 6848);

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
    if ((24 * a4) < 0x41)
    {
      v26 = snprintf(v24, v17 + 4709 - v24 + 64, "@%df", 6 * a4);
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
    v27 = byte_21B214;
    if (byte_21B214)
    {
      breakpoint_break(v49, &stru_388.align, 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v27 & 4))
    {
      v28 = mach_absolute_time();
      (*(*(v17 + 32) + 6848))(a1, a2, v20, a4, a5, a6);
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
      v41 = 956;
    }

    breakpoint_break(v49, v41, v40, v31, v17);
    goto LABEL_37;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 6848))(a1, a2, a3, a4, a5, a6);
LABEL_46:
  if (v49[0])
  {
    free(v49[0]);
  }
}

void sub_8F16C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform_matrix3x2fv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
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
      v38 = *(*(v16 + 24) + 6856);

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
    if ((24 * a4) < 0x41)
    {
      v25 = snprintf(v23, v16 + 4709 - v23 + 64, "@%df", 6 * a4);
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
    v26 = byte_21B219;
    if (byte_21B219)
    {
      breakpoint_break(v49, (&stru_388.reloff + 1), 1, *(v16 + 3404), v16);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v16 + 32) + 6856))(a1, a2, v19, a4, a5, a6);
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
      v40 = 961;
    }

    breakpoint_break(v49, v40, v39, v30, v16);
    goto LABEL_37;
  }

  atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v16 + 24) + 6856))(a1, a2, a3, a4, a5, a6);
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
      v39 = *(*(v17 + 24) + 6856);

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
    if ((24 * a4) < 0x41)
    {
      v26 = snprintf(v24, v17 + 4709 - v24 + 64, "@%df", 6 * a4);
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
    v27 = byte_21B219;
    if (byte_21B219)
    {
      breakpoint_break(v49, (&stru_388.reloff + 1), 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v27 & 4))
    {
      v28 = mach_absolute_time();
      (*(*(v17 + 32) + 6856))(a1, a2, v20, a4, a5, a6);
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
      v41 = 961;
    }

    breakpoint_break(v49, v41, v40, v31, v17);
    goto LABEL_37;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 6856))(a1, a2, a3, a4, a5, a6);
LABEL_46:
  if (v49[0])
  {
    free(v49[0]);
  }
}

void sub_8F7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform_matrix2x4fv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
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
      v38 = *(*(v16 + 24) + 6864);

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
    if ((32 * a4) < 0x41)
    {
      v25 = snprintf(v23, v16 + 4709 - v23 + 64, "@%df", 8 * a4);
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
    v26 = byte_21B216;
    if (byte_21B216)
    {
      breakpoint_break(v49, (&stru_388.align + 2), 1, *(v16 + 3404), v16);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v16 + 32) + 6864))(a1, a2, v19, a4, a5, a6);
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
      v40 = 958;
    }

    breakpoint_break(v49, v40, v39, v30, v16);
    goto LABEL_37;
  }

  atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v16 + 24) + 6864))(a1, a2, a3, a4, a5, a6);
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
      v39 = *(*(v17 + 24) + 6864);

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
    if ((32 * a4) < 0x41)
    {
      v26 = snprintf(v24, v17 + 4709 - v24 + 64, "@%df", 8 * a4);
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
    v27 = byte_21B216;
    if (byte_21B216)
    {
      breakpoint_break(v49, (&stru_388.align + 2), 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v27 & 4))
    {
      v28 = mach_absolute_time();
      (*(*(v17 + 32) + 6864))(a1, a2, v20, a4, a5, a6);
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
      v41 = 958;
    }

    breakpoint_break(v49, v41, v40, v31, v17);
    goto LABEL_37;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 6864))(a1, a2, a3, a4, a5, a6);
LABEL_46:
  if (v49[0])
  {
    free(v49[0]);
  }
}

void sub_8FDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform_matrix4x2fv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
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
      v38 = *(*(v16 + 24) + 6872);

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
    if ((32 * a4) < 0x41)
    {
      v25 = snprintf(v23, v16 + 4709 - v23 + 64, "@%df", 8 * a4);
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
    v26 = byte_21B21E;
    if (byte_21B21E)
    {
      breakpoint_break(v49, (&stru_388.nreloc + 2), 1, *(v16 + 3404), v16);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v16 + 32) + 6872))(a1, a2, v19, a4, a5, a6);
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
      v40 = 966;
    }

    breakpoint_break(v49, v40, v39, v30, v16);
    goto LABEL_37;
  }

  atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v16 + 24) + 6872))(a1, a2, a3, a4, a5, a6);
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
      v39 = *(*(v17 + 24) + 6872);

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
    if ((32 * a4) < 0x41)
    {
      v26 = snprintf(v24, v17 + 4709 - v24 + 64, "@%df", 8 * a4);
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
    v27 = byte_21B21E;
    if (byte_21B21E)
    {
      breakpoint_break(v49, (&stru_388.nreloc + 2), 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v27 & 4))
    {
      v28 = mach_absolute_time();
      (*(*(v17 + 32) + 6872))(a1, a2, v20, a4, a5, a6);
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
      v41 = 966;
    }

    breakpoint_break(v49, v41, v40, v31, v17);
    goto LABEL_37;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 6872))(a1, a2, a3, a4, a5, a6);
LABEL_46:
  if (v49[0])
  {
    free(v49[0]);
  }
}

void sub_90400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform_matrix3x4fv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
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
      v38 = *(*(v16 + 24) + 6880);

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
    if ((48 * a4) < 0x41)
    {
      v25 = snprintf(v23, v16 + 4709 - v23 + 64, "@%df", 12 * a4);
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
    v26 = byte_21B21B;
    if (byte_21B21B)
    {
      breakpoint_break(v49, (&stru_388.reloff + 3), 1, *(v16 + 3404), v16);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v16 + 32) + 6880))(a1, a2, v19, a4, a5, a6);
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
      v40 = 963;
    }

    breakpoint_break(v49, v40, v39, v30, v16);
    goto LABEL_37;
  }

  atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v16 + 24) + 6880))(a1, a2, a3, a4, a5, a6);
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
      v39 = *(*(v17 + 24) + 6880);

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
    if ((48 * a4) < 0x41)
    {
      v26 = snprintf(v24, v17 + 4709 - v24 + 64, "@%df", 12 * a4);
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
    v27 = byte_21B21B;
    if (byte_21B21B)
    {
      breakpoint_break(v49, (&stru_388.reloff + 3), 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v27 & 4))
    {
      v28 = mach_absolute_time();
      (*(*(v17 + 32) + 6880))(a1, a2, v20, a4, a5, a6);
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
      v41 = 963;
    }

    breakpoint_break(v49, v41, v40, v31, v17);
    goto LABEL_37;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 6880))(a1, a2, a3, a4, a5, a6);
LABEL_46:
  if (v49[0])
  {
    free(v49[0]);
  }
}

void sub_90A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void program_uniform_matrix4x3fv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
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
      v38 = *(*(v16 + 24) + 6888);

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
    if ((48 * a4) < 0x41)
    {
      v25 = snprintf(v23, v16 + 4709 - v23 + 64, "@%df", 12 * a4);
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
    v26 = byte_21B220;
    if (byte_21B220)
    {
      breakpoint_break(v49, &stru_388.flags, 1, *(v16 + 3404), v16);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v16 + 32) + 6888))(a1, a2, v19, a4, a5, a6);
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
      v40 = 968;
    }

    breakpoint_break(v49, v40, v39, v30, v16);
    goto LABEL_37;
  }

  atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v16 + 24) + 6888))(a1, a2, a3, a4, a5, a6);
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
      v39 = *(*(v17 + 24) + 6888);

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
    if ((48 * a4) < 0x41)
    {
      v26 = snprintf(v24, v17 + 4709 - v24 + 64, "@%df", 12 * a4);
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
    v27 = byte_21B220;
    if (byte_21B220)
    {
      breakpoint_break(v49, &stru_388.flags, 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v27 & 4))
    {
      v28 = mach_absolute_time();
      (*(*(v17 + 32) + 6888))(a1, a2, v20, a4, a5, a6);
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
      v41 = 968;
    }

    breakpoint_break(v49, v41, v40, v31, v17);
    goto LABEL_37;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 6888))(a1, a2, a3, a4, a5, a6);
LABEL_46:
  if (v49[0])
  {
    free(v49[0]);
  }
}

void sub_91068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void release_shader_compiler(__GLIContextRec *a1)
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
      release_shader_compiler((v7 + 4640));
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
      v11[1] = 969;
      v11[8] = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v11 + 1) = v43;
      *(v11 + 18) = 67;
      *(v11 + 5) = *v7;
      v24 = byte_21B221;
      if (byte_21B221)
      {
        breakpoint_break(&__ptr, (&stru_388.flags + 1), 1, *(v7 + 3404), v7);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
      {
        v25 = mach_absolute_time();
        (*(*(v7 + 32) + 6992))(a1);
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
        v37 = 969;
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
  (*(*(v7 + 24) + 6992))(a1);
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
      release_shader_compiler((v7 + 4640));
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
      v11[1] = 969;
      v11[8] = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v11 + 1) = v43;
      *(v11 + 18) = 67;
      *(v11 + 5) = *v7;
      v24 = byte_21B221;
      if (byte_21B221)
      {
        breakpoint_break(&__ptr, (&stru_388.flags + 1), 1, *(v7 + 3404), v7);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
      {
        v25 = mach_absolute_time();
        (*(*(v7 + 32) + 6992))(a1);
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
        v37 = 969;
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
  (*(*(v7 + 24) + 6992))(a1);
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
      release_shader_compiler((v7 + 4640));
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
    release_shader_compiler((v7 + 4640));
  }

  else
  {
    (*(*(v7 + 32) + 6992))(a1);
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
      release_shader_compiler((v7 + 4640));
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
    release_shader_compiler((v7 + 4640));
  }

  else
  {
    v10 = mach_absolute_time();
    (*(*(v7 + 32) + 6992))(a1);
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

void sub_915AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void shader_binary(__GLIContextRec *a1, uint64_t a2, unsigned int *a3, unsigned int a4, const void *a5, uint64_t a6)
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v16);
    v44 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v44 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
      v45 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v45, 0, do_nothing);
      v46 = *(*(v16 + 24) + 7000);

      v46(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v16 + 4838) = 1;
  __ptr = 0;
  v58 = 0;
  v59 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = a6;
    v21 = __ptr;
    v20 = v58;
    v22 = v58 - __ptr;
    v23 = v59;
    v24 = v59 - (v58 - __ptr);
    if (v24 <= 0x4F)
    {
      v47 = (335 - v24) & 0x100;
      v59 += v47;
      v21 = malloc_type_malloc(v47 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21 || (v21 & 3) != 0)
      {
        goto LABEL_66;
      }

      v20 = v21 + v22;
    }

    *(v20 + 3) = 0u;
    *(v20 + 4) = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 2) = 0u;
    *v20 = 0u;
    v25 = v20 + 80;
    v58 = v20 + 80;
    v26 = v20 + 80 - v21;
    *v21 = v26;
    v27 = (v26 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v27 - v26;
    if (v27 == v26)
    {
      goto LABEL_23;
    }

    v29 = __ptr;
    v30 = v25 - __ptr;
    v31 = v59;
    v32 = v59 - (v25 - __ptr);
    if (v28 <= v32)
    {
      v33 = v58;
LABEL_22:
      bzero(v25, v28);
      v58 = &v33[v28];
      *v29 += v28;
LABEL_23:
      v21[1] = 970;
      v21[8] = 0;
      v56 = 0;
      pthread_threadid_np(0, &v56);
      *(v21 + 1) = v56;
      strcpy(v21 + 36, "Cipepi");
      *(v21 + 11) = *v16;
      v21[13] = a2;
      *(v21 + 7) = a3;
      v21[16] = a4;
      *(v21 + 17) = a5;
      v21[19] = v19;
      v34 = byte_21B222;
      if (byte_21B222)
      {
        breakpoint_break(&__ptr, (&stru_388.flags + 2), 1, *(v16 + 3404), v16);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v34 & 4))
      {
        v35 = mach_absolute_time();
        (*(*(v16 + 32) + 7000))(a1, a2, a3, a4, a5, v19);
        v36 = mach_absolute_time() - v35;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v37 = __ptr;
          *(__ptr + 2) = v35;
          v37[3] = v36;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v50 = *(&g_DYTimebaseInfo + 1);
          v51 = __udivti3();
          v52 = __ptr;
          *(__ptr + 3) = v51;
          v52[2] = __udivti3();
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

      GPUTools::FB::EncodeThreadQueueInfo((v16 + 3480), (v16 + 3520), &__ptr);
      v38 = *(v16 + 3404);
      if (v38 && (gBreakOnError & 1) != 0)
      {
        v48 = 3;
        v49 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v34 & 2) == 0)
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
          v42 = atomic_fetch_add((v16 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v42 >= 1)
          {
            handle_opengl_thread_conflict(v16);
          }

          goto LABEL_45;
        }

        v48 = 2;
        v49 = 970;
      }

      breakpoint_break(&__ptr, v49, v48, v38, v16);
      goto LABEL_37;
    }

    v53 = (v28 - v32 + 255) & 0xFFFFFF00;
    v54 = v53 + v59;
    v59 += v53;
    if (__ptr)
    {
      v29 = reallocf(__ptr, v54);
      __ptr = v29;
      if (!v29)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v29 = malloc_type_malloc(v53 + v31, 0xF962E99uLL);
      __ptr = v29;
      if (!v29)
      {
        goto LABEL_66;
      }
    }

    if ((v29 & 3) == 0)
    {
      v33 = v29 + v30;
      v25 = v33;
      goto LABEL_22;
    }

LABEL_66:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v16 + 24) + 7000))(a1, a2, a3, a4, a5, a6);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v16);
    v44 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v44 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
      v45 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v45, 0, do_nothing);
      v46 = *(*(v16 + 24) + 7000);

      v46(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v16 + 4838) = 1;
  __ptr = 0;
  v58 = 0;
  v59 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = a6;
    v21 = __ptr;
    v20 = v58;
    v22 = v58 - __ptr;
    v23 = v59;
    v24 = v59 - (v58 - __ptr);
    if (v24 <= 0x4F)
    {
      v47 = (335 - v24) & 0x100;
      v59 += v47;
      v21 = malloc_type_malloc(v47 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21 || (v21 & 3) != 0)
      {
        goto LABEL_66;
      }

      v20 = v21 + v22;
    }

    *(v20 + 3) = 0u;
    *(v20 + 4) = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 2) = 0u;
    *v20 = 0u;
    v25 = v20 + 80;
    v58 = v20 + 80;
    v26 = v20 + 80 - v21;
    *v21 = v26;
    v27 = (v26 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v27 - v26;
    if (v27 == v26)
    {
      goto LABEL_23;
    }

    v29 = __ptr;
    v30 = v25 - __ptr;
    v31 = v59;
    v32 = v59 - (v25 - __ptr);
    if (v28 <= v32)
    {
      v33 = v58;
LABEL_22:
      bzero(v25, v28);
      v58 = &v33[v28];
      *v29 += v28;
LABEL_23:
      v21[1] = 970;
      v21[8] = 0;
      v56 = 0;
      pthread_threadid_np(0, &v56);
      *(v21 + 1) = v56;
      strcpy(v21 + 36, "Cipepi");
      *(v21 + 11) = *v16;
      v21[13] = a2;
      *(v21 + 7) = a3;
      v21[16] = a4;
      *(v21 + 17) = a5;
      v21[19] = v19;
      v34 = byte_21B222;
      if (byte_21B222)
      {
        breakpoint_break(&__ptr, (&stru_388.flags + 2), 1, *(v16 + 3404), v16);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v34 & 4))
      {
        v35 = mach_absolute_time();
        (*(*(v16 + 32) + 7000))(a1, a2, a3, a4, a5, v19);
        v36 = mach_absolute_time() - v35;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v37 = __ptr;
          *(__ptr + 2) = v35;
          v37[3] = v36;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v50 = *(&g_DYTimebaseInfo + 1);
          v51 = __udivti3();
          v52 = __ptr;
          *(__ptr + 3) = v51;
          v52[2] = __udivti3();
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

      GPUTools::FB::EncodeThreadQueueInfo((v16 + 3480), (v16 + 3520), &__ptr);
      v38 = *(v16 + 3404);
      if (v38 && (gBreakOnError & 1) != 0)
      {
        v48 = 3;
        v49 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v34 & 2) == 0)
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
          v42 = atomic_fetch_add((v16 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v42 >= 1)
          {
            handle_opengl_thread_conflict(v16);
          }

          goto LABEL_45;
        }

        v48 = 2;
        v49 = 970;
      }

      breakpoint_break(&__ptr, v49, v48, v38, v16);
      goto LABEL_37;
    }

    v53 = (v28 - v32 + 255) & 0xFFFFFF00;
    v54 = v53 + v59;
    v59 += v53;
    if (__ptr)
    {
      v29 = reallocf(__ptr, v54);
      __ptr = v29;
      if (!v29)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v29 = malloc_type_malloc(v53 + v31, 0xF962E99uLL);
      __ptr = v29;
      if (!v29)
      {
        goto LABEL_66;
      }
    }

    if ((v29 & 3) == 0)
    {
      v33 = v29 + v30;
      v25 = v33;
      goto LABEL_22;
    }

LABEL_66:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v16 + 24) + 7000))(a1, a2, a3, a4, a5, a6);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

void sub_91BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void get_shader_precision_format(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4, int *a5)
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
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_46:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v15 + 24) + 7008);

      v39(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(&v46, 786, 256, "Cee@2i@1i", v18, v19, v20, v21, *v15);
    v22 = byte_21B16A;
    if (byte_21B16A)
    {
      breakpoint_break(&v46, (&stru_2E8.size + 2), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v15 + 32) + 7008))(a1, a2, a3, a4, a5);
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

      check_errors(v15);
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

    GPUTools::FB::Encode(&v46, 786, 256, "Cee@2i@1i", v23, v24, v25, v26, *v15);
    *(v46 + 1) = v45;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), &v46);
    v31 = *(v15 + 3404);
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
        v35 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        goto LABEL_42;
      }

      v40 = 2;
      v41 = 786;
    }

    breakpoint_break(&v46, v41, v40, v31, v15);
    goto LABEL_34;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 7008))(a1, a2, a3, a4, a5);
LABEL_42:
  if (v46)
  {
    free(v46);
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
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_46:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v15 + 24) + 7008);

      v39(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(&v46, 786, 256, "Cee@2i@1i", v18, v19, v20, v21, *v15);
    v22 = byte_21B16A;
    if (byte_21B16A)
    {
      breakpoint_break(&v46, (&stru_2E8.size + 2), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v15 + 32) + 7008))(a1, a2, a3, a4, a5);
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

      check_errors(v15);
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

    GPUTools::FB::Encode(&v46, 786, 256, "Cee@2i@1i", v23, v24, v25, v26, *v15);
    *(v46 + 1) = v45;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), &v46);
    v31 = *(v15 + 3404);
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
        v35 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        goto LABEL_42;
      }

      v40 = 2;
      v41 = 786;
    }

    breakpoint_break(&v46, v41, v40, v31, v15);
    goto LABEL_34;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 7008))(a1, a2, a3, a4, a5);
LABEL_42:
  if (v46)
  {
    free(v46);
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
      v20 = *(*(v15 + 24) + 7008);

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

  (*(*(v15 + 32) + 7008))(a1, a2, a3, a4, a5);
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
      v23 = *(*(v15 + 24) + 7008);

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
  (*(*(v15 + 32) + 7008))(a1, a2, a3, a4, a5);
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

void sub_920A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  atomic_store(0, (v18 + 56));
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void depth_rangef(__GLIContextRec *a1, float a2, float a3)
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
      v40 = *(*(v11 + 24) + 7016);
      v41.n128_f32[0] = a2;
      v42.n128_f32[0] = a3;

      v40(a1, v41, v42);
      return;
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v53 = 0;
  v54 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v53;
    v16 = v53 - __ptr;
    v17 = v54;
    v18 = v54 - (v53 - __ptr);
    if (v18 <= 0x37)
    {
      v43 = (311 - v18) & 0x100;
      v54 += v43;
      v15 = malloc_type_malloc(v43 + v17, 0xF962E99uLL);
      __ptr = v15;
      if (!v15 || (v15 & 3) != 0)
      {
        goto LABEL_66;
      }

      v14 = v15 + v16;
    }

    *(v14 + 6) = 0;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 0u;
    v19 = v14 + 56;
    v53 = v14 + 56;
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
    v25 = v54;
    v26 = v54 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v53;
LABEL_22:
      bzero(v19, v22);
      v53 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 767;
      v15[8] = 0;
      v51 = 0;
      pthread_threadid_np(0, &v51);
      *(v15 + 1) = v51;
      v15[9] = 6710851;
      *(v15 + 5) = *v11;
      *(v15 + 12) = a2;
      *(v15 + 13) = a3;
      v28 = byte_21B157;
      if (byte_21B157)
      {
        breakpoint_break(&__ptr, &stru_2E8.segname[7], 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 7016))(a1, a2, a3);
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
          v46 = *(&g_DYTimebaseInfo + 1);
          v47 = __udivti3();
          v48 = __ptr;
          *(__ptr + 3) = v47;
          v48[2] = __udivti3();
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
        v44 = 3;
        v45 = 0xFFFFFFFFLL;
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

        v44 = 2;
        v45 = 767;
      }

      breakpoint_break(&__ptr, v45, v44, v32, v11);
      goto LABEL_37;
    }

    v49 = (v22 - v26 + 255) & 0xFFFFFF00;
    v50 = v49 + v54;
    v54 += v49;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v50);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v49 + v25, 0xF962E99uLL);
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
  (*(*(v11 + 24) + 7016))(a1, a2, a3);
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
      v40 = *(*(v11 + 24) + 7016);
      v41.n128_f32[0] = a2;
      v42.n128_f32[0] = a3;

      v40(a1, v41, v42);
      return;
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v53 = 0;
  v54 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v53;
    v16 = v53 - __ptr;
    v17 = v54;
    v18 = v54 - (v53 - __ptr);
    if (v18 <= 0x37)
    {
      v43 = (311 - v18) & 0x100;
      v54 += v43;
      v15 = malloc_type_malloc(v43 + v17, 0xF962E99uLL);
      __ptr = v15;
      if (!v15 || (v15 & 3) != 0)
      {
        goto LABEL_66;
      }

      v14 = v15 + v16;
    }

    *(v14 + 6) = 0;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 0u;
    v19 = v14 + 56;
    v53 = v14 + 56;
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
    v25 = v54;
    v26 = v54 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v53;
LABEL_22:
      bzero(v19, v22);
      v53 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 767;
      v15[8] = 0;
      v51 = 0;
      pthread_threadid_np(0, &v51);
      *(v15 + 1) = v51;
      v15[9] = 6710851;
      *(v15 + 5) = *v11;
      *(v15 + 12) = a2;
      *(v15 + 13) = a3;
      v28 = byte_21B157;
      if (byte_21B157)
      {
        breakpoint_break(&__ptr, &stru_2E8.segname[7], 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 7016))(a1, a2, a3);
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
          v46 = *(&g_DYTimebaseInfo + 1);
          v47 = __udivti3();
          v48 = __ptr;
          *(__ptr + 3) = v47;
          v48[2] = __udivti3();
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
        v44 = 3;
        v45 = 0xFFFFFFFFLL;
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

        v44 = 2;
        v45 = 767;
      }

      breakpoint_break(&__ptr, v45, v44, v32, v11);
      goto LABEL_37;
    }

    v49 = (v22 - v26 + 255) & 0xFFFFFF00;
    v50 = v49 + v54;
    v54 += v49;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v50);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v49 + v25, 0xF962E99uLL);
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
  (*(*(v11 + 24) + 7016))(a1, a2, a3);
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
      v18 = *(*(v11 + 24) + 7016);
      v16.n128_f32[0] = a2;
      v17.n128_f32[0] = a3;

      v18(a1, v16, v17);
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

  (*(*(v11 + 32) + 7016))(a1, a2, a3);
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
      v21 = *(*(v11 + 24) + 7016);
      v19.n128_f32[0] = a2;
      v20.n128_f32[0] = a3;

      v21(a1, v19, v20);
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
  (*(*(v11 + 32) + 7016))(a1, a2, a3);
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

void sub_92660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void clear_depthf(__GLIContextRec *a1, float a2)
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
      clear_depthf((v9 + 4640), a2);
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
      *(v13 + 1) = 761;
      *(v13 + 8) = 0;
      v45 = 0;
      pthread_threadid_np(0, &v45);
      *(v13 + 1) = v45;
      strcpy(v13 + 36, "Cf");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21B151;
      if (byte_21B151)
      {
        breakpoint_break(&__ptr, &stru_2E8.segname[1], 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 7024))(a1, a2);
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
        v39 = 761;
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
  (*(*(v9 + 24) + 7024))(a1, a2);
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
      clear_depthf((v9 + 4640), a2);
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
      *(v13 + 1) = 761;
      *(v13 + 8) = 0;
      v45 = 0;
      pthread_threadid_np(0, &v45);
      *(v13 + 1) = v45;
      strcpy(v13 + 36, "Cf");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21B151;
      if (byte_21B151)
      {
        breakpoint_break(&__ptr, &stru_2E8.segname[1], 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 7024))(a1, a2);
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
        v39 = 761;
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
  (*(*(v9 + 24) + 7024))(a1, a2);
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
      clear_depthf((v9 + 4640), a2);
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
    v13 = *(*(v9 + 24) + 7024);
    v14.n128_f32[0] = a2;

    v13(a1, v14);
  }

  else
  {
    (*(*(v9 + 32) + 7024))(a1, a2);
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
      clear_depthf((v9 + 4640), a2);
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
    v16 = *(*(v9 + 24) + 7024);
    v17.n128_f32[0] = a2;

    v16(a1, v17);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 7024))(a1, a2);
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