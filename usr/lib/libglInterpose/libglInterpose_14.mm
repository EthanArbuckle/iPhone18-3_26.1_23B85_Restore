void sub_6B6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void vertex_attribI4ui(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_46:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v17 + 24) + 5744);

      v37(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v43, 726, 0, "Cuiuiuiuiui", v20, v21, v22, v23, *v17);
    v24 = byte_21B12E;
    if (byte_21B12E)
    {
      breakpoint_break(v43, (&stru_298.nreloc + 2), 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v17 + 32) + 5744))(a1, a2, a3, a4, a5, a6);
      v42 = v17;
      v26 = v24;
      v27 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v43[0];
        *(v43[0] + 3) = v27;
      }

      else
      {
        v40 = *(&g_DYTimebaseInfo + 1);
        v41 = __udivti3();
        v28 = v43[0];
        *(v43[0] + 3) = v41;
        v25 = __udivti3();
      }

      v28[2] = v25;
      v24 = v26;
      v17 = v42;
      if (gCheckGLErrors == 1)
      {
        check_errors(v42);
      }
    }

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

    GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), v43);
    v29 = *(v17 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v24 & 2) == 0)
      {
LABEL_34:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v43[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        wrapper_cache_vertex_attrib(v17, a2, 5125, a3, a4, a5, a6);
        v33 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        goto LABEL_42;
      }

      v38 = 2;
      v39 = 726;
    }

    breakpoint_break(v43, v39, v38, v29, v17);
    goto LABEL_34;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 5744))(a1, a2, a3, a4, a5, a6);
LABEL_42:
  if (v43[0])
  {
    free(v43[0]);
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
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_46:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v17 + 24) + 5744);

      v37(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v43, 726, 0, "Cuiuiuiuiui", v20, v21, v22, v23, *v17);
    v24 = byte_21B12E;
    if (byte_21B12E)
    {
      breakpoint_break(v43, (&stru_298.nreloc + 2), 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v17 + 32) + 5744))(a1, a2, a3, a4, a5, a6);
      v42 = v17;
      v26 = v24;
      v27 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v43[0];
        *(v43[0] + 3) = v27;
      }

      else
      {
        v40 = *(&g_DYTimebaseInfo + 1);
        v41 = __udivti3();
        v28 = v43[0];
        *(v43[0] + 3) = v41;
        v25 = __udivti3();
      }

      v28[2] = v25;
      v24 = v26;
      v17 = v42;
      if (gCheckGLErrors == 1)
      {
        check_errors(v42);
      }
    }

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

    GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), v43);
    v29 = *(v17 + 3404);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v24 & 2) == 0)
      {
LABEL_34:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        v32 = *v43[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        wrapper_cache_vertex_attrib(v17, a2, 5125, a3, a4, a5, a6);
        v33 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v33 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        goto LABEL_42;
      }

      v38 = 2;
      v39 = 726;
    }

    breakpoint_break(v43, v39, v38, v29, v17);
    goto LABEL_34;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 5744))(a1, a2, a3, a4, a5, a6);
LABEL_42:
  if (v43[0])
  {
    free(v43[0]);
  }
}

void sub_6BB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void vertex_attribI4iv(__GLIContextRec *a1, uint64_t a2, const int *a3)
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
      v30 = *(*(v11 + 24) + 5776);

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
    GPUTools::FB::Encode(v36, 723, 0, "Cui@4i", v14, v15, v16, v17, *v11);
    v18 = byte_21B12B;
    if (byte_21B12B)
    {
      breakpoint_break(v36, (&stru_298.reloff + 3), 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 5776))(a1, a2, a3);
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
        wrapper_cache_vertex_attrib(v11, a2, 5124, *a3, a3[1], a3[2], a3[3]);
        v26 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v26 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_40;
      }

      v31 = 2;
      v32 = 723;
    }

    breakpoint_break(v36, v32, v31, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5776))(a1, a2, a3);
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
      v30 = *(*(v11 + 24) + 5776);

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
    GPUTools::FB::Encode(v36, 723, 0, "Cuip", v14, v15, v16, v17, *v11);
    v18 = byte_21B12B;
    if (byte_21B12B)
    {
      breakpoint_break(v36, (&stru_298.reloff + 3), 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 5776))(a1, a2, a3);
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
        wrapper_cache_vertex_attrib(v11, a2, 5124, *a3, a3[1], a3[2], a3[3]);
        v26 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v26 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_40;
      }

      v31 = 2;
      v32 = 723;
    }

    breakpoint_break(v36, v32, v31, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5776))(a1, a2, a3);
LABEL_40:
  if (v36[0])
  {
    free(v36[0]);
  }
}

void sub_6BFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void vertex_attribI4uiv(__GLIContextRec *a1, uint64_t a2, const unsigned int *a3)
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
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v11 + 24) + 5808);

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
    GPUTools::FB::Encode(v40, 727, 0, "Cui@4ui", v14, v15, v16, v17, *v11);
    v18 = byte_21B12F;
    if (byte_21B12F)
    {
      breakpoint_break(v40, (&stru_298.nreloc + 3), 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 5808))(a1, a2, a3);
      v20 = mach_absolute_time() - v19;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v21 = v40[0];
        *(v40[0] + 2) = v19;
        v21[3] = v20;
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

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v40);
    v22 = *(v11 + 3404);
    if (v22 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
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

        v25 = *v40[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v24 + 14);
        LODWORD(v26) = *a3;
        LODWORD(v27) = a3[1];
        LODWORD(v28) = a3[2];
        LODWORD(v29) = a3[3];
        wrapper_cache_vertex_attrib(v11, a2, 5125, v26, v27, v28, v29);
        v30 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_40;
      }

      v35 = 2;
      v36 = 727;
    }

    breakpoint_break(v40, v36, v35, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5808))(a1, a2, a3);
LABEL_40:
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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v11 + 24) + 5808);

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
    GPUTools::FB::Encode(v40, 723, 0, "Cuip", v14, v15, v16, v17, *v11);
    v18 = byte_21B12B;
    if (byte_21B12B)
    {
      breakpoint_break(v40, (&stru_298.reloff + 3), 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 5808))(a1, a2, a3);
      v20 = mach_absolute_time() - v19;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v21 = v40[0];
        *(v40[0] + 2) = v19;
        v21[3] = v20;
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

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v40);
    v22 = *(v11 + 3404);
    if (v22 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
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

        v25 = *v40[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v24 + 14);
        LODWORD(v26) = *a3;
        LODWORD(v27) = a3[1];
        LODWORD(v28) = a3[2];
        LODWORD(v29) = a3[3];
        wrapper_cache_vertex_attrib(v11, a2, 5125, v26, v27, v28, v29);
        v30 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_40;
      }

      v35 = 2;
      v36 = 723;
    }

    breakpoint_break(v40, v36, v35, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5808))(a1, a2, a3);
LABEL_40:
  if (v40[0])
  {
    free(v40[0]);
  }
}

void sub_6C454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void vertex_attribI_pointer(__GLIContextRec *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, const void *a6)
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
      v46 = *(*(v16 + 24) + 5848);

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
    if (v24 <= 0x4B)
    {
      v47 = (331 - v24) & 0x100;
      v59 += v47;
      v21 = malloc_type_malloc(v47 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21 || (v21 & 3) != 0)
      {
        goto LABEL_66;
      }

      v20 = (v21 + v22);
    }

    *(v20 + 60) = 0u;
    v20[2] = 0u;
    v20[3] = 0u;
    *v20 = 0u;
    v20[1] = 0u;
    v25 = v20 + 76;
    v58 = v20 + 76;
    v26 = v20 + 76 - v21;
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
      v21[1] = 729;
      v21[8] = 0;
      v56 = 0;
      pthread_threadid_np(0, &v56);
      *(v21 + 1) = v56;
      *(v21 + 9) = 0x70696569697543;
      *(v21 + 11) = *v16;
      v21[13] = a2;
      v21[14] = a3;
      v21[15] = a4;
      v21[16] = a5;
      *(v21 + 17) = v19;
      v34 = byte_21B131;
      if (byte_21B131)
      {
        breakpoint_break(&__ptr, (&stru_298.flags + 1), 1, *(v16 + 3404), v16);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v34 & 4))
      {
        v35 = mach_absolute_time();
        (*(*(v16 + 32) + 5848))(a1, a2, a3, a4, a5, v19);
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
        v49 = 729;
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
  (*(*(v16 + 24) + 5848))(a1, a2, a3, a4, a5, a6);
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
      v46 = *(*(v16 + 24) + 5848);

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
    if (v24 <= 0x4B)
    {
      v47 = (331 - v24) & 0x100;
      v59 += v47;
      v21 = malloc_type_malloc(v47 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21 || (v21 & 3) != 0)
      {
        goto LABEL_66;
      }

      v20 = (v21 + v22);
    }

    *(v20 + 60) = 0u;
    v20[2] = 0u;
    v20[3] = 0u;
    *v20 = 0u;
    v20[1] = 0u;
    v25 = v20 + 76;
    v58 = v20 + 76;
    v26 = v20 + 76 - v21;
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
      v21[1] = 729;
      v21[8] = 0;
      v56 = 0;
      pthread_threadid_np(0, &v56);
      *(v21 + 1) = v56;
      *(v21 + 9) = 0x70696569697543;
      *(v21 + 11) = *v16;
      v21[13] = a2;
      v21[14] = a3;
      v21[15] = a4;
      v21[16] = a5;
      *(v21 + 17) = v19;
      v34 = byte_21B131;
      if (byte_21B131)
      {
        breakpoint_break(&__ptr, (&stru_298.flags + 1), 1, *(v16 + 3404), v16);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v34 & 4))
      {
        v35 = mach_absolute_time();
        (*(*(v16 + 32) + 5848))(a1, a2, a3, a4, a5, v19);
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
        v49 = 729;
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
  (*(*(v16 + 24) + 5848))(a1, a2, a3, a4, a5, a6);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

void sub_6CA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void get_vertex_attribIiv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, int *a4)
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
      v39 = *(*(v13 + 24) + 5856);

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
    GPUTools::GL::DYGetVertexAttribParameterInfo(a3, &v46[1], v46, v16);
    v17 = 105;
    if (v46[0])
    {
      v17 = 101;
    }

    snprintf((v13 + 4709), 0x40uLL, "Cuie@%u%c", *&v46[1], v17);
    GPUTools::FB::Encode(&v47, 303, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF87;
    if (byte_21AF87)
    {
      breakpoint_break(&v47, (&stru_108.addr + 7), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 5856))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v47, 303, 256, v13 + 4709, v23, v24, v25, v26, *v13);
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
      v41 = 303;
    }

    breakpoint_break(&v47, v41, v40, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5856))(a1, a2, a3, a4);
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
      v39 = *(*(v13 + 24) + 5856);

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
    GPUTools::GL::DYGetVertexAttribParameterInfo(a3, &v46[1], v46, v16);
    v17 = 105;
    if (v46[0])
    {
      v17 = 101;
    }

    snprintf((v13 + 4709), 0x40uLL, "Cuie@%u%c", *&v46[1], v17);
    GPUTools::FB::Encode(&v47, 303, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF87;
    if (byte_21AF87)
    {
      breakpoint_break(&v47, (&stru_108.addr + 7), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 5856))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v47, 303, 256, v13 + 4709, v23, v24, v25, v26, *v13);
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
      v41 = 303;
    }

    breakpoint_break(&v47, v41, v40, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5856))(a1, a2, a3, a4);
LABEL_44:
  if (v47)
  {
    free(v47);
  }
}

void sub_6CF60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_vertex_attribIuiv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, unsigned int *a4)
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
      v39 = *(*(v13 + 24) + 5864);

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
    GPUTools::GL::DYGetVertexAttribParameterInfo(a3, &v46[1], v46, v16);
    v17 = "ui";
    if (v46[0])
    {
      v17 = "e";
    }

    snprintf((v13 + 4709), 0x40uLL, "Cuie@%u%s", *&v46[1], v17);
    GPUTools::FB::Encode(&v47, 304, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF88;
    if (byte_21AF88)
    {
      breakpoint_break(&v47, &stru_108.size, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 5864))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v47, 304, 256, v13 + 4709, v23, v24, v25, v26, *v13);
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
      v41 = 304;
    }

    breakpoint_break(&v47, v41, v40, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5864))(a1, a2, a3, a4);
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
      v39 = *(*(v13 + 24) + 5864);

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
    GPUTools::GL::DYGetVertexAttribParameterInfo(a3, &v46[1], v46, v16);
    v17 = "ui";
    if (v46[0])
    {
      v17 = "e";
    }

    snprintf((v13 + 4709), 0x40uLL, "Cuie@%u%s", *&v46[1], v17);
    GPUTools::FB::Encode(&v47, 304, 256, v13 + 4709, v18, v19, v20, v21, *v13);
    v22 = byte_21AF88;
    if (byte_21AF88)
    {
      breakpoint_break(&v47, &stru_108.size, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(*(v13 + 32) + 5864))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v47, 304, 256, v13 + 4709, v23, v24, v25, v26, *v13);
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
      v41 = 304;
    }

    breakpoint_break(&v47, v41, v40, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5864))(a1, a2, a3, a4);
LABEL_44:
  if (v47)
  {
    free(v47);
  }
}

void sub_6D45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void uniform1ui(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v27 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v27 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v28 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v28, 0, do_nothing);
      v29 = *(*(v11 + 24) + 5872);

      v29(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v14 = wrapper_map_uniform_loc(v11, *(v11 + 2068), a2);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v35, *v11);
    *(v11 + 4709) = 67;
    v15 = (v11 + 4710);
    if (v14 == -1)
    {
      *v15 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v35, -1);
      v16 = 1;
    }

    else
    {
      *v15 = 1047084118;
      snprintf((v11 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v11 + 40), *(v11 + 2068), v14);
      GPUTools::FB::FIFOArgumentProvider::push(&v35, (v11 + 4773));
      v16 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v35, a3);
    strcpy(&v15[v16], "ui");
    GPUTools::FB::Encode();
    v17 = byte_21B0BD;
    if (byte_21B0BD)
    {
      breakpoint_break(v39, &stru_248.segname[13], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v17 & 4))
    {
      v18 = mach_absolute_time();
      (*(*(v11 + 32) + 5872))(a1, v14, a3);
      v19 = mach_absolute_time() - v18;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v20 = v39[0];
        *(v39[0] + 2) = v18;
        v20[3] = v19;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v32 = *(&g_DYTimebaseInfo + 1);
        v33 = __udivti3();
        v34 = v39[0];
        *(v39[0] + 3) = v33;
        v34[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v11);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v39);
    v21 = *(v11 + 3404);
    if (v21 && (gBreakOnError & 1) != 0)
    {
      v30 = 3;
      v31 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v17 & 2) == 0)
      {
LABEL_34:
        v22 = [DYGetGLGuestAppClient() defaultFbufStream];
        v23 = v22;
        while (atomic_exchange(v22 + 14, 1u) == 1)
        {
            ;
          }
        }

        v24 = *v39[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v23 + 14);
        v25 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v25 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v35);
        goto LABEL_43;
      }

      v30 = 2;
      v31 = 613;
    }

    breakpoint_break(v39, v31, v30, v21, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5872))(a1, a2, a3);
LABEL_43:
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v27 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v27 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v28 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v28, 0, do_nothing);
      v29 = *(*(v11 + 24) + 5872);

      v29(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v14 = wrapper_map_uniform_loc(v11, *(v11 + 2068), a2);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v35, *v11);
    *(v11 + 4709) = 67;
    v15 = (v11 + 4710);
    if (v14 == -1)
    {
      *v15 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v35, -1);
      v16 = 1;
    }

    else
    {
      *v15 = 1047084118;
      snprintf((v11 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v11 + 40), *(v11 + 2068), v14);
      GPUTools::FB::FIFOArgumentProvider::push(&v35, (v11 + 4773));
      v16 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v35, a3);
    strcpy(&v15[v16], "ui");
    GPUTools::FB::Encode();
    v17 = byte_21B0BD;
    if (byte_21B0BD)
    {
      breakpoint_break(v39, &stru_248.segname[13], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v17 & 4))
    {
      v18 = mach_absolute_time();
      (*(*(v11 + 32) + 5872))(a1, v14, a3);
      v19 = mach_absolute_time() - v18;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v20 = v39[0];
        *(v39[0] + 2) = v18;
        v20[3] = v19;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v32 = *(&g_DYTimebaseInfo + 1);
        v33 = __udivti3();
        v34 = v39[0];
        *(v39[0] + 3) = v33;
        v34[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v11);
    }

LABEL_25:
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

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v39);
    v21 = *(v11 + 3404);
    if (v21 && (gBreakOnError & 1) != 0)
    {
      v30 = 3;
      v31 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v17 & 2) == 0)
      {
LABEL_34:
        v22 = [DYGetGLGuestAppClient() defaultFbufStream];
        v23 = v22;
        while (atomic_exchange(v22 + 14, 1u) == 1)
        {
            ;
          }
        }

        v24 = *v39[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v23 + 14);
        v25 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v25 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v35);
        goto LABEL_43;
      }

      v30 = 2;
      v31 = 613;
    }

    breakpoint_break(v39, v31, v30, v21, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 5872))(a1, a2, a3);
LABEL_43:
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
      v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v16, 0, do_nothing);
LABEL_29:
      v17 = *(*(v11 + 24) + 5872);

      v17(a1, a2, a3);
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

  v14 = wrapper_map_uniform_loc(v11, *(v11 + 2068), a2);
  (*(*(v11 + 32) + 5872))(a1, v14, a3);
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
      v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v19, 0, do_nothing);
LABEL_29:
      v20 = *(*(v11 + 24) + 5872);

      v20(a1, a2, a3);
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

  v14 = wrapper_map_uniform_loc(v11, *(v11 + 2068), a2);
  v15 = mach_absolute_time();
  (*(*(v11 + 32) + 5872))(a1, v14, a3);
  v16 = mach_absolute_time();
  v17 = vdupq_n_s64(1uLL);
  v17.i64[0] = v16 - v15;
  *(v11 + 3696) = vaddq_s64(v17, *(v11 + 3696));
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

void sub_6D970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform2ui(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v31 = *(*(v13 + 24) + 5880);

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
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v37, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v37, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v37, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v37, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v37, a4);
    strcpy(&v17[v18], "uiui");
    GPUTools::FB::Encode();
    v19 = byte_21B0C3;
    if (byte_21B0C3)
    {
      breakpoint_break(v41, (&stru_248.addr + 3), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v20 = mach_absolute_time();
      (*(*(v13 + 32) + 5880))(a1, v16, a3, a4);
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
      v33 = 619;
    }

    breakpoint_break(v41, v33, v32, v23, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5880))(a1, a2, a3, a4);
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
      v31 = *(*(v13 + 24) + 5880);

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
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v37, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v37, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v37, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v37, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v37, a4);
    strcpy(&v17[v18], "uiui");
    GPUTools::FB::Encode();
    v19 = byte_21B0C3;
    if (byte_21B0C3)
    {
      breakpoint_break(v41, (&stru_248.addr + 3), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v20 = mach_absolute_time();
      (*(*(v13 + 32) + 5880))(a1, v16, a3, a4);
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
      v33 = 619;
    }

    breakpoint_break(v41, v33, v32, v23, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5880))(a1, a2, a3, a4);
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
      v19 = *(*(v13 + 24) + 5880);

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

  v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
  (*(*(v13 + 32) + 5880))(a1, v16, a3, a4);
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
      v22 = *(*(v13 + 24) + 5880);

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

  v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
  v17 = mach_absolute_time();
  (*(*(v13 + 32) + 5880))(a1, v16, a3, a4);
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

void sub_6DEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform3ui(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      v33 = *(*(v15 + 24) + 5888);

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
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v39, a5);
    strcpy(&v19[v20], "uiuiui");
    GPUTools::FB::Encode();
    v21 = byte_21B0C9;
    if (byte_21B0C9)
    {
      breakpoint_break(v43, (&stru_248.size + 1), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(*(v15 + 32) + 5888))(a1, v18, a3, a4, a5);
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
      v35 = 625;
    }

    breakpoint_break(v43, v35, v34, v25, v15);
    goto LABEL_34;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 5888))(a1, a2, a3, a4, a5);
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
      v33 = *(*(v15 + 24) + 5888);

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
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v39, a5);
    strcpy(&v19[v20], "uiuiui");
    GPUTools::FB::Encode();
    v21 = byte_21B0C9;
    if (byte_21B0C9)
    {
      breakpoint_break(v43, (&stru_248.size + 1), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(*(v15 + 32) + 5888))(a1, v18, a3, a4, a5);
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
      v35 = 625;
    }

    breakpoint_break(v43, v35, v34, v25, v15);
    goto LABEL_34;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 5888))(a1, a2, a3, a4, a5);
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
      v21 = *(*(v15 + 24) + 5888);

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

  v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
  (*(*(v15 + 32) + 5888))(a1, v18, a3, a4, a5);
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
      v24 = *(*(v15 + 24) + 5888);

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

  v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
  v19 = mach_absolute_time();
  (*(*(v15 + 32) + 5888))(a1, v18, a3, a4, a5);
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

void sub_6E424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform4ui(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
      v35 = *(*(v17 + 24) + 5896);

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
    v20 = wrapper_map_uniform_loc(v17, *(v17 + 2068), a2);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v41, *v17);
    *(v17 + 4709) = 67;
    v21 = (v17 + 4710);
    if (v20 == -1)
    {
      *v21 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, -1);
      v22 = 1;
    }

    else
    {
      *v21 = 1047084118;
      snprintf((v17 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v17 + 40), *(v17 + 2068), v20);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v17 + 4773));
      v22 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v41, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a5);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a6);
    strcpy(&v21[v22], "uiuiuiui");
    GPUTools::FB::Encode();
    v23 = byte_21B0CF;
    if (byte_21B0CF)
    {
      breakpoint_break(v45, (&stru_248.size + 7), 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v17 + 32) + 5896))(a1, v20, a3, a4, a5, a6);
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
      v37 = 631;
    }

    breakpoint_break(v45, v37, v36, v27, v17);
    goto LABEL_34;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 5896))(a1, a2, a3, a4, a5, a6);
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
      v35 = *(*(v17 + 24) + 5896);

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
    v20 = wrapper_map_uniform_loc(v17, *(v17 + 2068), a2);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v41, *v17);
    *(v17 + 4709) = 67;
    v21 = (v17 + 4710);
    if (v20 == -1)
    {
      *v21 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, -1);
      v22 = 1;
    }

    else
    {
      *v21 = 1047084118;
      snprintf((v17 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v17 + 40), *(v17 + 2068), v20);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v17 + 4773));
      v22 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v41, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a5);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a6);
    strcpy(&v21[v22], "uiuiuiui");
    GPUTools::FB::Encode();
    v23 = byte_21B0CF;
    if (byte_21B0CF)
    {
      breakpoint_break(v45, (&stru_248.size + 7), 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v17 + 32) + 5896))(a1, v20, a3, a4, a5, a6);
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
      v37 = 631;
    }

    breakpoint_break(v45, v37, v36, v27, v17);
    goto LABEL_34;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 5896))(a1, a2, a3, a4, a5, a6);
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
      v23 = *(*(v17 + 24) + 5896);

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

  v20 = wrapper_map_uniform_loc(v17, *(v17 + 2068), a2);
  (*(*(v17 + 32) + 5896))(a1, v20, a3, a4, a5, a6);
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
      v26 = *(*(v17 + 24) + 5896);

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

  v20 = wrapper_map_uniform_loc(v17, *(v17 + 2068), a2);
  v21 = mach_absolute_time();
  (*(*(v17 + 32) + 5896))(a1, v20, a3, a4, a5, a6);
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

void sub_6E9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform1uiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
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
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v13 + 24) + 5904);

      v36(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v42, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v42, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v42, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v42, a3);
    v19 = &v17[v18];
    v20 = &v17[v18];
    *v20 = 105;
    v21 = v20 + 1;
    if ((4 * a3) < 0x41)
    {
      v23 = snprintf(v21, v13 + 4709 - v21 + 64, "@%dui", a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v42, a4);
      v22 = v23;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v42, (v13 + 4644));
      *(v19 + 1) = 1769290837;
      v19[5] = 62;
      v22 = 5;
    }

    v21[v22] = 0;
    GPUTools::FB::Encode();
    v24 = byte_21B0BE;
    if (byte_21B0BE)
    {
      breakpoint_break(v46, &stru_248.segname[14], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v13 + 32) + 5904))(a1, v16, a3, a4);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v46[0];
        *(v46[0] + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v39 = *(&g_DYTimebaseInfo + 1);
        v40 = __udivti3();
        v41 = v46[0];
        *(v46[0] + 3) = v40;
        v41[2] = __udivti3();
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v46);
    v28 = *(v13 + 3404);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
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

        v31 = *v46[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        v32 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v42);
        goto LABEL_46;
      }

      v37 = 2;
      v38 = 614;
    }

    breakpoint_break(v46, v38, v37, v28, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5904))(a1, a2, a3, a4);
LABEL_46:
  if (v46[0])
  {
    free(v46[0]);
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
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(*(v13 + 24) + 5904);

      v35(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v41, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v41, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((4 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%dui", a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
      v21 = v22;
    }

    else
    {
      *v20 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
      v21 = 1;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0BE;
    if (byte_21B0BE)
    {
      breakpoint_break(v45, &stru_248.segname[14], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 5904))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v45[0];
        *(v45[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v45);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
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
        v31 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v41);
        goto LABEL_46;
      }

      v36 = 2;
      v37 = 614;
    }

    breakpoint_break(v45, v37, v36, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5904))(a1, a2, a3, a4);
LABEL_46:
  if (v45[0])
  {
    free(v45[0]);
  }
}

void sub_6EFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform2uiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
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
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v13 + 24) + 5912);

      v36(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v42, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v42, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v42, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v42, a3);
    v19 = &v17[v18];
    v20 = &v17[v18];
    *v20 = 105;
    v21 = v20 + 1;
    if ((8 * a3) < 0x41)
    {
      v23 = snprintf(v21, v13 + 4709 - v21 + 64, "@%dui", 2 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v42, a4);
      v22 = v23;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v42, (v13 + 4644));
      *(v19 + 1) = 1769290837;
      v19[5] = 62;
      v22 = 5;
    }

    v21[v22] = 0;
    GPUTools::FB::Encode();
    v24 = byte_21B0C4;
    if (byte_21B0C4)
    {
      breakpoint_break(v46, &stru_248.addr + 1, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v13 + 32) + 5912))(a1, v16, a3, a4);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v46[0];
        *(v46[0] + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v39 = *(&g_DYTimebaseInfo + 1);
        v40 = __udivti3();
        v41 = v46[0];
        *(v46[0] + 3) = v40;
        v41[2] = __udivti3();
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v46);
    v28 = *(v13 + 3404);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
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

        v31 = *v46[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        v32 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v42);
        goto LABEL_46;
      }

      v37 = 2;
      v38 = 620;
    }

    breakpoint_break(v46, v38, v37, v28, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5912))(a1, a2, a3, a4);
LABEL_46:
  if (v46[0])
  {
    free(v46[0]);
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
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(*(v13 + 24) + 5912);

      v35(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v41, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v41, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((8 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%dui", 2 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
      v21 = v22;
    }

    else
    {
      *v20 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
      v21 = 1;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0C4;
    if (byte_21B0C4)
    {
      breakpoint_break(v45, &stru_248.addr + 1, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 5912))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v45[0];
        *(v45[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v45);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
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
        v31 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v41);
        goto LABEL_46;
      }

      v36 = 2;
      v37 = 620;
    }

    breakpoint_break(v45, v37, v36, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5912))(a1, a2, a3, a4);
LABEL_46:
  if (v45[0])
  {
    free(v45[0]);
  }
}

void sub_6F590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform3uiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
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
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v13 + 24) + 5920);

      v36(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v42, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v42, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v42, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v42, a3);
    v19 = &v17[v18];
    v20 = &v17[v18];
    *v20 = 105;
    v21 = v20 + 1;
    if ((12 * a3) < 0x41)
    {
      v23 = snprintf(v21, v13 + 4709 - v21 + 64, "@%dui", 3 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v42, a4);
      v22 = v23;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v42, (v13 + 4644));
      *(v19 + 1) = 1769290837;
      v19[5] = 62;
      v22 = 5;
    }

    v21[v22] = 0;
    GPUTools::FB::Encode();
    v24 = byte_21B0CA;
    if (byte_21B0CA)
    {
      breakpoint_break(v46, (&stru_248.size + 2), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v13 + 32) + 5920))(a1, v16, a3, a4);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v46[0];
        *(v46[0] + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v39 = *(&g_DYTimebaseInfo + 1);
        v40 = __udivti3();
        v41 = v46[0];
        *(v46[0] + 3) = v40;
        v41[2] = __udivti3();
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v46);
    v28 = *(v13 + 3404);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
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

        v31 = *v46[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        v32 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v42);
        goto LABEL_46;
      }

      v37 = 2;
      v38 = 626;
    }

    breakpoint_break(v46, v38, v37, v28, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5920))(a1, a2, a3, a4);
LABEL_46:
  if (v46[0])
  {
    free(v46[0]);
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
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(*(v13 + 24) + 5920);

      v35(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v41, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v41, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((12 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%dui", 3 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
      v21 = v22;
    }

    else
    {
      *v20 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
      v21 = 1;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0CA;
    if (byte_21B0CA)
    {
      breakpoint_break(v45, (&stru_248.size + 2), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 5920))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v45[0];
        *(v45[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v45);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
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
        v31 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v41);
        goto LABEL_46;
      }

      v36 = 2;
      v37 = 626;
    }

    breakpoint_break(v45, v37, v36, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5920))(a1, a2, a3, a4);
LABEL_46:
  if (v45[0])
  {
    free(v45[0]);
  }
}

void sub_6FB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform4uiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
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
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v13 + 24) + 5928);

      v36(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v42, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v42, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v42, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v42, a3);
    v19 = &v17[v18];
    v20 = &v17[v18];
    *v20 = 105;
    v21 = v20 + 1;
    if ((16 * a3) < 0x41)
    {
      v23 = snprintf(v21, v13 + 4709 - v21 + 64, "@%dui", 4 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v42, a4);
      v22 = v23;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v42, (v13 + 4644));
      *(v19 + 1) = 1769290837;
      v19[5] = 62;
      v22 = 5;
    }

    v21[v22] = 0;
    GPUTools::FB::Encode();
    v24 = byte_21B0D0;
    if (byte_21B0D0)
    {
      breakpoint_break(v46, &stru_248.offset, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v13 + 32) + 5928))(a1, v16, a3, a4);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v46[0];
        *(v46[0] + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v39 = *(&g_DYTimebaseInfo + 1);
        v40 = __udivti3();
        v41 = v46[0];
        *(v46[0] + 3) = v40;
        v41[2] = __udivti3();
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v46);
    v28 = *(v13 + 3404);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
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

        v31 = *v46[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        v32 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v42);
        goto LABEL_46;
      }

      v37 = 2;
      v38 = 632;
    }

    breakpoint_break(v46, v38, v37, v28, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5928))(a1, a2, a3, a4);
LABEL_46:
  if (v46[0])
  {
    free(v46[0]);
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
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(*(v13 + 24) + 5928);

      v35(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v41, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v41, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((16 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%dui", 4 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
      v21 = v22;
    }

    else
    {
      *v20 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
      v21 = 1;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0D0;
    if (byte_21B0D0)
    {
      breakpoint_break(v45, &stru_248.offset, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 5928))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v45[0];
        *(v45[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v45);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
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
        v31 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v41);
        goto LABEL_46;
      }

      v36 = 2;
      v37 = 632;
    }

    breakpoint_break(v45, v37, v36, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5928))(a1, a2, a3, a4);
LABEL_46:
  if (v45[0])
  {
    free(v45[0]);
  }
}

void sub_70168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void get_uniformuiv(__GLIContextRec *a1, volatile int *a2, uint64_t a3, unsigned int *a4)
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
    v41 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v41 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v42 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v42, 0, do_nothing);
      v43 = *(*(v13 + 24) + 5936);

      v43(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v54 = 0;
  v55 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, a2, a3);
    v18 = __ptr;
    v17 = v54;
    v19 = v54 - __ptr;
    v20 = v55;
    v21 = v55 - (v54 - __ptr);
    if (v21 <= 0x43)
    {
      v44 = (323 - v21) & 0x100;
      v55 += v44;
      v18 = malloc_type_malloc(v44 + v20, 0xF962E99uLL);
      __ptr = v18;
      if (!v18 || (v18 & 3) != 0)
      {
        goto LABEL_66;
      }

      v17 = v18 + v19;
    }

    *(v17 + 16) = 0;
    *(v17 + 2) = 0u;
    *(v17 + 3) = 0u;
    *v17 = 0u;
    *(v17 + 1) = 0u;
    v22 = v17 + 68;
    v54 = v17 + 68;
    v23 = v17 + 68 - v18;
    *v18 = v23;
    v24 = (v23 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v25 = v24 - v23;
    if (v24 == v23)
    {
      goto LABEL_23;
    }

    v26 = __ptr;
    v27 = v22 - __ptr;
    v28 = v55;
    v29 = v55 - (v22 - __ptr);
    if (v25 <= v29)
    {
      v30 = v54;
LABEL_22:
      bzero(v22, v25);
      v54 = &v30[v25];
      *v26 += v25;
LABEL_23:
      v18[1] = 302;
      v18[8] = 256;
      v52 = 0;
      pthread_threadid_np(0, &v52);
      *(v18 + 1) = v52;
      strcpy(v18 + 36, "Cuiip");
      *(v18 + 11) = *v13;
      v18[13] = a2;
      v18[14] = v16;
      *(v18 + 15) = a4;
      v31 = byte_21AF86;
      if (byte_21AF86)
      {
        breakpoint_break(&__ptr, (&stru_108.addr + 6), 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v31 & 4))
      {
        v32 = mach_absolute_time();
        (*(*(v13 + 32) + 5936))(a1, a2, v16, a4);
        v33 = mach_absolute_time() - v32;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v34 = __ptr;
          *(__ptr + 2) = v32;
          v34[3] = v33;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
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
      v35 = *(v13 + 3404);
      if (v35 && (gBreakOnError & 1) != 0)
      {
        v45 = 3;
        v46 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v31 & 2) == 0)
        {
LABEL_37:
          v36 = [DYGetGLGuestAppClient() defaultFbufStream];
          v37 = v36;
          while (atomic_exchange(v36 + 14, 1u) == 1)
          {
              ;
            }
          }

          v38 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v37 + 14);
          v39 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v39 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_45;
        }

        v45 = 2;
        v46 = 302;
      }

      breakpoint_break(&__ptr, v46, v45, v35, v13);
      goto LABEL_37;
    }

    v50 = (v25 - v29 + 255) & 0xFFFFFF00;
    v51 = v50 + v55;
    v55 += v50;
    if (__ptr)
    {
      v26 = reallocf(__ptr, v51);
      __ptr = v26;
      if (!v26)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v26 = malloc_type_malloc(v50 + v28, 0xF962E99uLL);
      __ptr = v26;
      if (!v26)
      {
        goto LABEL_66;
      }
    }

    if ((v26 & 3) == 0)
    {
      v30 = v26 + v27;
      v22 = v30;
      goto LABEL_22;
    }

LABEL_66:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5936))(a1, a2, a3, a4);
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
    v41 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v41 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v42 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v42, 0, do_nothing);
      v43 = *(*(v13 + 24) + 5936);

      v43(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v54 = 0;
  v55 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, a2, a3);
    v18 = __ptr;
    v17 = v54;
    v19 = v54 - __ptr;
    v20 = v55;
    v21 = v55 - (v54 - __ptr);
    if (v21 <= 0x43)
    {
      v44 = (323 - v21) & 0x100;
      v55 += v44;
      v18 = malloc_type_malloc(v44 + v20, 0xF962E99uLL);
      __ptr = v18;
      if (!v18 || (v18 & 3) != 0)
      {
        goto LABEL_66;
      }

      v17 = v18 + v19;
    }

    *(v17 + 16) = 0;
    *(v17 + 2) = 0u;
    *(v17 + 3) = 0u;
    *v17 = 0u;
    *(v17 + 1) = 0u;
    v22 = v17 + 68;
    v54 = v17 + 68;
    v23 = v17 + 68 - v18;
    *v18 = v23;
    v24 = (v23 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v25 = v24 - v23;
    if (v24 == v23)
    {
      goto LABEL_23;
    }

    v26 = __ptr;
    v27 = v22 - __ptr;
    v28 = v55;
    v29 = v55 - (v22 - __ptr);
    if (v25 <= v29)
    {
      v30 = v54;
LABEL_22:
      bzero(v22, v25);
      v54 = &v30[v25];
      *v26 += v25;
LABEL_23:
      v18[1] = 302;
      v18[8] = 256;
      v52 = 0;
      pthread_threadid_np(0, &v52);
      *(v18 + 1) = v52;
      strcpy(v18 + 36, "Cuiip");
      *(v18 + 11) = *v13;
      v18[13] = a2;
      v18[14] = v16;
      *(v18 + 15) = a4;
      v31 = byte_21AF86;
      if (byte_21AF86)
      {
        breakpoint_break(&__ptr, (&stru_108.addr + 6), 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v31 & 4))
      {
        v32 = mach_absolute_time();
        (*(*(v13 + 32) + 5936))(a1, a2, v16, a4);
        v33 = mach_absolute_time() - v32;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v34 = __ptr;
          *(__ptr + 2) = v32;
          v34[3] = v33;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
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
      v35 = *(v13 + 3404);
      if (v35 && (gBreakOnError & 1) != 0)
      {
        v45 = 3;
        v46 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v31 & 2) == 0)
        {
LABEL_37:
          v36 = [DYGetGLGuestAppClient() defaultFbufStream];
          v37 = v36;
          while (atomic_exchange(v36 + 14, 1u) == 1)
          {
              ;
            }
          }

          v38 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v37 + 14);
          v39 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v39 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_45;
        }

        v45 = 2;
        v46 = 302;
      }

      breakpoint_break(&__ptr, v46, v45, v35, v13);
      goto LABEL_37;
    }

    v50 = (v25 - v29 + 255) & 0xFFFFFF00;
    v51 = v50 + v55;
    v55 += v50;
    if (__ptr)
    {
      v26 = reallocf(__ptr, v51);
      __ptr = v26;
      if (!v26)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v26 = malloc_type_malloc(v50 + v28, 0xF962E99uLL);
      __ptr = v26;
      if (!v26)
      {
        goto LABEL_66;
      }
    }

    if ((v26 & 3) == 0)
    {
      v30 = v26 + v27;
      v22 = v30;
      goto LABEL_22;
    }

LABEL_66:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 5936))(a1, a2, a3, a4);
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
      v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v18, 0, do_nothing);
LABEL_29:
      v19 = *(*(v13 + 24) + 5936);

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
  (*(*(v13 + 32) + 5936))(a1, a2, v16, a4);
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
      v22 = *(*(v13 + 24) + 5936);

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
  (*(*(v13 + 32) + 5936))(a1, a2, v16, a4);
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

void sub_70760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t get_frag_data_location(__GLIContextRec *a1, uint64_t a2, const char *a3)
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
      v37 = *(*(v11 + 24) + 5952);

      return v37(a1, a2, a3);
    }
  }

  *(v11 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v43, 239, 0, "CuiS", v14, v15, v16, v17, *v11);
    v18 = byte_21AF47;
    if (byte_21AF47)
    {
      breakpoint_break(v43, (&stru_B8.align + 3), 1, *(v11 + 3404), v11);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4)
    {
      v25 = 0xFFFFFFFFLL;
      goto LABEL_23;
    }

    v24 = mach_absolute_time();
    v25 = (*(*(v11 + 32) + 5952))(a1, a2, a3);
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
      v39 = 239;
    }

    breakpoint_break(v43, v39, v38, v28, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v25 = (*(*(v11 + 24) + 5952))(a1, a2, a3);
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
      v37 = *(*(v11 + 24) + 5952);

      return v37(a1, a2, a3);
    }
  }

  *(v11 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v43, 239, 0, "CuiS", v14, v15, v16, v17, *v11);
    v18 = byte_21AF47;
    if (byte_21AF47)
    {
      breakpoint_break(v43, (&stru_B8.align + 3), 1, *(v11 + 3404), v11);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4)
    {
      v25 = 0xFFFFFFFFLL;
      goto LABEL_23;
    }

    v24 = mach_absolute_time();
    v25 = (*(*(v11 + 32) + 5952))(a1, a2, a3);
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
      v39 = 239;
    }

    breakpoint_break(v43, v39, v38, v28, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v25 = (*(*(v11 + 24) + 5952))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 5952);

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

  result = (*(*(v11 + 32) + 5952))(a1, a2, a3);
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
      v21 = *(*(v11 + 24) + 5952);

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
  v15 = (*(*(v11 + 32) + 5952))(a1, a2, a3);
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

  v18 = *(*(v11 + 24) + 5952);

  return v18(a1, a2, a3);
}

void sub_70BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void uniform_matrix2x3fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5)
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
      v37 = *(*(v15 + 24) + 5992);

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
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 30057;
    v21[2] = 98;
    v22 = &v19[v20 + 3];
    if ((24 * a3) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 6 * a3);
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
    v25 = byte_21B0D3;
    if (byte_21B0D3)
    {
      breakpoint_break(v47, (&stru_248.offset + 3), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 5992))(a1, v18, a3, a4, a5);
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
      v39 = 635;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 5992))(a1, a2, a3, a4, a5);
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
      v37 = *(*(v15 + 24) + 5992);

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
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 30057;
    v21[2] = 98;
    v22 = &v19[v20 + 3];
    if ((24 * a3) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 6 * a3);
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
    v25 = byte_21B0D3;
    if (byte_21B0D3)
    {
      breakpoint_break(v47, (&stru_248.offset + 3), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 5992))(a1, v18, a3, a4, a5);
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
      v39 = 635;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 5992))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_711C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform_matrix3x2fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5)
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
      v37 = *(*(v15 + 24) + 6000);

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
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 30057;
    v21[2] = 98;
    v22 = &v19[v20 + 3];
    if ((24 * a3) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 6 * a3);
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
    v25 = byte_21B0D6;
    if (byte_21B0D6)
    {
      breakpoint_break(v47, (&stru_248.align + 2), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6000))(a1, v18, a3, a4, a5);
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
      v39 = 638;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6000))(a1, a2, a3, a4, a5);
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
      v37 = *(*(v15 + 24) + 6000);

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
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 30057;
    v21[2] = 98;
    v22 = &v19[v20 + 3];
    if ((24 * a3) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 6 * a3);
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
    v25 = byte_21B0D6;
    if (byte_21B0D6)
    {
      breakpoint_break(v47, (&stru_248.align + 2), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6000))(a1, v18, a3, a4, a5);
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
      v39 = 638;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6000))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_717D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform_matrix2x4fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5)
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
      v37 = *(*(v15 + 24) + 6008);

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
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 30057;
    v21[2] = 98;
    v22 = &v19[v20 + 3];
    if ((32 * a3) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 8 * a3);
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
    v25 = byte_21B0D4;
    if (byte_21B0D4)
    {
      breakpoint_break(v47, &stru_248.align, 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6008))(a1, v18, a3, a4, a5);
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
      v39 = 636;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6008))(a1, a2, a3, a4, a5);
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
      v37 = *(*(v15 + 24) + 6008);

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
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 30057;
    v21[2] = 98;
    v22 = &v19[v20 + 3];
    if ((32 * a3) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 8 * a3);
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
    v25 = byte_21B0D4;
    if (byte_21B0D4)
    {
      breakpoint_break(v47, &stru_248.align, 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6008))(a1, v18, a3, a4, a5);
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
      v39 = 636;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6008))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_71DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform_matrix4x2fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5)
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
      v37 = *(*(v15 + 24) + 6016);

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
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 30057;
    v21[2] = 98;
    v22 = &v19[v20 + 3];
    if ((32 * a3) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 8 * a3);
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
    v25 = byte_21B0D9;
    if (byte_21B0D9)
    {
      breakpoint_break(v47, (&stru_248.reloff + 1), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6016))(a1, v18, a3, a4, a5);
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
      v39 = 641;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6016))(a1, a2, a3, a4, a5);
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
      v37 = *(*(v15 + 24) + 6016);

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
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 30057;
    v21[2] = 98;
    v22 = &v19[v20 + 3];
    if ((32 * a3) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 8 * a3);
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
    v25 = byte_21B0D9;
    if (byte_21B0D9)
    {
      breakpoint_break(v47, (&stru_248.reloff + 1), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6016))(a1, v18, a3, a4, a5);
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
      v39 = 641;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6016))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_723E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform_matrix3x4fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5)
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
      v37 = *(*(v15 + 24) + 6024);

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
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 30057;
    v21[2] = 98;
    v22 = &v19[v20 + 3];
    if ((48 * a3) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 12 * a3);
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
    v25 = byte_21B0D7;
    if (byte_21B0D7)
    {
      breakpoint_break(v47, (&stru_248.align + 3), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6024))(a1, v18, a3, a4, a5);
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
      v39 = 639;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6024))(a1, a2, a3, a4, a5);
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
      v37 = *(*(v15 + 24) + 6024);

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
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    v21 = &v19[v20];
    *v21 = 30057;
    v21[2] = 98;
    v22 = &v19[v20 + 3];
    if ((48 * a3) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 12 * a3);
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
    v25 = byte_21B0D7;
    if (byte_21B0D7)
    {
      breakpoint_break(v47, (&stru_248.align + 3), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6024))(a1, v18, a3, a4, a5);
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
      v39 = 639;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6024))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}