void sub_729EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform_matrix4x3fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5)
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
      v37 = *(*(v15 + 24) + 6032);

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
    v25 = byte_21B0DA;
    if (byte_21B0DA)
    {
      breakpoint_break(v47, (&stru_248.reloff + 2), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6032))(a1, v18, a3, a4, a5);
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
      v39 = 642;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6032))(a1, a2, a3, a4, a5);
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
      v37 = *(*(v15 + 24) + 6032);

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
    v25 = byte_21B0DA;
    if (byte_21B0DA)
    {
      breakpoint_break(v47, (&stru_248.reloff + 2), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 6032))(a1, v18, a3, a4, a5);
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
      v39 = 642;
    }

    breakpoint_break(v47, v39, v38, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6032))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_72FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void blit_framebuffer(__GLIContextRec *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, unsigned int a10)
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
      v45 = *(*(v17 + 24) + 6040);

      v45(a1, a2, a3, a4, a5, a6, a7, a8, a9);
      return;
    }
  }

  *(v17 + 4838) = 257;
  __ptr = 0;
  v69 = 0;
  v70 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v21 = __ptr;
    v20 = v69;
    v22 = v69 - __ptr;
    v23 = v70;
    v24 = v70 - (v69 - __ptr);
    if (v24 <= 0x63)
    {
      v46 = (355 - v24) & 0x100;
      v70 += v46;
      v21 = malloc_type_malloc(v46 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21 || (v21 & 3) != 0)
      {
        goto LABEL_73;
      }

      v20 = v21 + v22;
    }

    *(v20 + 24) = 0;
    *(v20 + 4) = 0u;
    *(v20 + 5) = 0u;
    *(v20 + 2) = 0u;
    *(v20 + 3) = 0u;
    *v20 = 0u;
    *(v20 + 1) = 0u;
    v25 = v20 + 100;
    v69 = v20 + 100;
    v26 = v20 + 100 - v21;
    *v21 = v26;
    v27 = (v26 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v27 - v26;
    if (v27 == v26)
    {
      goto LABEL_23;
    }

    v29 = __ptr;
    v30 = v25 - __ptr;
    v31 = v70;
    v32 = v70 - (v25 - __ptr);
    if (v28 <= v32)
    {
      v33 = v69;
LABEL_22:
      bzero(v25, v28);
      v69 = &v33[v28];
      *v29 += v28;
LABEL_23:
      v21[1] = 28;
      v21[8] = 0;
      v67 = 0;
      pthread_threadid_np(0, &v67);
      *(v21 + 1) = v67;
      strcpy(v21 + 36, "Ciiiiiiiiuie");
      *(v21 + 13) = *v17;
      v21[15] = a2;
      v21[16] = a3;
      v21[17] = a4;
      v21[18] = a5;
      v21[19] = a6;
      v21[20] = a7;
      v21[21] = a8;
      *(v21 + 11) = a9;
      v21[24] = a10;
      LOBYTE(v21) = byte_21AE74;
      if (byte_21AE74)
      {
        breakpoint_break(&__ptr, &dword_1C, 1, *(v17 + 3404), v17);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4)
      {
        goto LABEL_29;
      }

      if (![DYGetGLGuestAppClient() overrideFlags])
      {
        v34 = mach_absolute_time();
        (*(*(v17 + 32) + 6040))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
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
          v48 = 28;
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
      (*(*(v17 + 32) + 6040))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
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
    v58 = v57 + v70;
    v70 += v57;
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
  (*(*(v17 + 24) + 6040))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
LABEL_46:
  if (__ptr)
  {
    free(__ptr);
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
    v43 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v43 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v44 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v44, 0, do_nothing);
      v45 = *(*(v17 + 24) + 6040);

      v45(a1, a2, a3, a4, a5, a6, a7, a8, a9);
      return;
    }
  }

  *(v17 + 4838) = 257;
  __ptr = 0;
  v69 = 0;
  v70 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v21 = __ptr;
    v20 = v69;
    v22 = v69 - __ptr;
    v23 = v70;
    v24 = v70 - (v69 - __ptr);
    if (v24 <= 0x63)
    {
      v46 = (355 - v24) & 0x100;
      v70 += v46;
      v21 = malloc_type_malloc(v46 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21 || (v21 & 3) != 0)
      {
        goto LABEL_73;
      }

      v20 = v21 + v22;
    }

    *(v20 + 24) = 0;
    *(v20 + 4) = 0u;
    *(v20 + 5) = 0u;
    *(v20 + 2) = 0u;
    *(v20 + 3) = 0u;
    *v20 = 0u;
    *(v20 + 1) = 0u;
    v25 = v20 + 100;
    v69 = v20 + 100;
    v26 = v20 + 100 - v21;
    *v21 = v26;
    v27 = (v26 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v27 - v26;
    if (v27 == v26)
    {
      goto LABEL_23;
    }

    v29 = __ptr;
    v30 = v25 - __ptr;
    v31 = v70;
    v32 = v70 - (v25 - __ptr);
    if (v28 <= v32)
    {
      v33 = v69;
LABEL_22:
      bzero(v25, v28);
      v69 = &v33[v28];
      *v29 += v28;
LABEL_23:
      v21[1] = 28;
      v21[8] = 0;
      v67 = 0;
      pthread_threadid_np(0, &v67);
      *(v21 + 1) = v67;
      strcpy(v21 + 36, "Ciiiiiiiiuie");
      *(v21 + 13) = *v17;
      v21[15] = a2;
      v21[16] = a3;
      v21[17] = a4;
      v21[18] = a5;
      v21[19] = a6;
      v21[20] = a7;
      v21[21] = a8;
      *(v21 + 11) = a9;
      v21[24] = a10;
      LOBYTE(v21) = byte_21AE74;
      if (byte_21AE74)
      {
        breakpoint_break(&__ptr, &dword_1C, 1, *(v17 + 3404), v17);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4)
      {
        goto LABEL_29;
      }

      if (![DYGetGLGuestAppClient() overrideFlags])
      {
        v34 = mach_absolute_time();
        (*(*(v17 + 32) + 6040))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
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
          v48 = 28;
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
      (*(*(v17 + 32) + 6040))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
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
    v58 = v57 + v70;
    v70 += v57;
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
  (*(*(v17 + 24) + 6040))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
LABEL_46:
  if (__ptr)
  {
    free(__ptr);
  }
}

void sub_73748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void renderbuffer_storage_multisample(__GLIContextRec *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
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
      v46 = *(*(v16 + 24) + 6048);

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
    if (v24 <= 0x47)
    {
      v47 = (327 - v24) & 0x100;
      v59 += v47;
      v21 = malloc_type_malloc(v47 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21 || (v21 & 3) != 0)
      {
        goto LABEL_66;
      }

      v20 = v21 + v22;
    }

    *(v20 + 8) = 0;
    *(v20 + 2) = 0u;
    *(v20 + 3) = 0u;
    *v20 = 0u;
    *(v20 + 1) = 0u;
    v25 = v20 + 72;
    v58 = v20 + 72;
    v26 = v20 + 72 - v21;
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
      v21[1] = 509;
      v21[8] = 0;
      v56 = 0;
      pthread_threadid_np(0, &v56);
      *(v21 + 1) = v56;
      strcpy(v21 + 36, "Ceieii");
      *(v21 + 11) = *v16;
      v21[13] = a2;
      v21[14] = a3;
      v21[15] = a4;
      v21[16] = a5;
      v21[17] = v19;
      v34 = byte_21B055;
      if (byte_21B055)
      {
        breakpoint_break(&__ptr, &stru_1F8.sectname[5], 1, *(v16 + 3404), v16);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v34 & 4))
      {
        v35 = mach_absolute_time();
        (*(*(v16 + 32) + 6048))(a1, a2, a3, a4, a5, v19);
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
        v49 = 509;
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
  (*(*(v16 + 24) + 6048))(a1, a2, a3, a4, a5, a6);
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
      v46 = *(*(v16 + 24) + 6048);

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
    if (v24 <= 0x47)
    {
      v47 = (327 - v24) & 0x100;
      v59 += v47;
      v21 = malloc_type_malloc(v47 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21 || (v21 & 3) != 0)
      {
        goto LABEL_66;
      }

      v20 = v21 + v22;
    }

    *(v20 + 8) = 0;
    *(v20 + 2) = 0u;
    *(v20 + 3) = 0u;
    *v20 = 0u;
    *(v20 + 1) = 0u;
    v25 = v20 + 72;
    v58 = v20 + 72;
    v26 = v20 + 72 - v21;
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
      v21[1] = 509;
      v21[8] = 0;
      v56 = 0;
      pthread_threadid_np(0, &v56);
      *(v21 + 1) = v56;
      strcpy(v21 + 36, "Ceieii");
      *(v21 + 11) = *v16;
      v21[13] = a2;
      v21[14] = a3;
      v21[15] = a4;
      v21[16] = a5;
      v21[17] = v19;
      v34 = byte_21B055;
      if (byte_21B055)
      {
        breakpoint_break(&__ptr, &stru_1F8.sectname[5], 1, *(v16 + 3404), v16);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v34 & 4))
      {
        v35 = mach_absolute_time();
        (*(*(v16 + 32) + 6048))(a1, a2, a3, a4, a5, v19);
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
        v49 = 509;
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
  (*(*(v16 + 24) + 6048))(a1, a2, a3, a4, a5, a6);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

void sub_73D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void get_attached_shaders(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4, unsigned int *a5)
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
    v39 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v39 >= 1)
    {
LABEL_53:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v40 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v40, 0, do_nothing);
      v41 = *(*(v15 + 24) + 6072);

      v41(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v48 = 0;
    if (a4)
    {
      v18 = a4;
    }

    else
    {
      v18 = &v48;
    }

    *v18 = 0;
    v19 = "t";
    if (v18 == a4)
    {
      v19 = "@1i";
    }

    snprintf((v15 + 4709), 0x40uLL, "Cuii%s@%dui", v19, a3);
    GPUTools::FB::Encode(&v49, 214, 256, v15 + 4709, v20, v21, v22, v23, *v15);
    v24 = byte_21AF2E;
    if (byte_21AF2E)
    {
      breakpoint_break(&v49, &stru_B8.segname[14], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v29 = mach_absolute_time();
      (*(*(v15 + 32) + 6072))(a1, a2, a3, v18, a5);
      v30 = mach_absolute_time() - v29;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v31 = v49;
        *(v49 + 3) = v30;
      }

      else
      {
        v44 = *(&g_DYTimebaseInfo + 1);
        v45 = __udivti3();
        v31 = v49;
        *(v49 + 3) = v45;
        v29 = __udivti3();
      }

      v31[2] = v29;
      if (gCheckGLErrors == 1)
      {
        check_errors(v15);
      }
    }

    v32 = v49;
    v47 = *(v49 + 1);
    v50 = v49;
    if (v51 >= 0x24)
    {
      *(v49 + 8) = 0;
      *v32 = 0u;
      v32[1] = 0u;
    }

    v46 = *v18;
    GPUTools::FB::Encode(&v49, 214, 256, v15 + 4709, v25, v26, v27, v28, *v15);
    *(v49 + 1) = v47;
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

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), &v49);
    v33 = *(v15 + 3404);
    if (v33 && (gBreakOnError & 1) != 0)
    {
      v42 = 3;
      v43 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v24 & 2) == 0)
      {
LABEL_41:
        v34 = [DYGetGLGuestAppClient() defaultFbufStream];
        v35 = v34;
        while (atomic_exchange(v34 + 14, 1u) == 1)
        {
            ;
          }
        }

        v36 = *v49;
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v35 + 14);
        v37 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v37 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        goto LABEL_49;
      }

      v42 = 2;
      v43 = 214;
    }

    breakpoint_break(&v49, v43, v42, v33, v15);
    goto LABEL_41;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6072))(a1, a2, a3, a4, a5);
LABEL_49:
  if (v49)
  {
    free(v49);
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
      v34 = *(*(v15 + 24) + 6072);

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
    GPUTools::FB::Encode(v40, 214, 2, "Cuiipp", v18, v19, v20, v21, *v15);
    v22 = byte_21AF2E;
    if (byte_21AF2E)
    {
      breakpoint_break(v40, &stru_B8.segname[14], 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(*(v15 + 32) + 6072))(a1, a2, a3, a4, a5);
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
      v36 = 214;
    }

    breakpoint_break(v40, v36, v35, v26, v15);
    goto LABEL_32;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6072))(a1, a2, a3, a4, a5);
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
      v20 = *(*(v15 + 24) + 6072);

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

  (*(*(v15 + 32) + 6072))(a1, a2, a3, a4, a5);
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
      v23 = *(*(v15 + 24) + 6072);

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
  (*(*(v15 + 32) + 6072))(a1, a2, a3, a4, a5);
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

void sub_7427C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  atomic_store(0, (v18 + 56));
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void vertex_attrib_divisor(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
      v40 = *(*(v11 + 24) + 6088);

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
      v15[1] = 833;
      v15[8] = 0;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v15 + 1) = v49;
      strcpy(v15 + 36, "Cuiui");
      *(v15 + 11) = *v11;
      v15[13] = a2;
      v15[14] = a3;
      v28 = byte_21B199;
      if (byte_21B199)
      {
        breakpoint_break(&__ptr, &stru_338.sectname[9], 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 6088))(a1, a2, a3);
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
        v43 = 833;
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
  (*(*(v11 + 24) + 6088))(a1, a2, a3);
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
      v40 = *(*(v11 + 24) + 6088);

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
      v15[1] = 833;
      v15[8] = 0;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v15 + 1) = v49;
      strcpy(v15 + 36, "Cuiui");
      *(v15 + 11) = *v11;
      v15[13] = a2;
      v15[14] = a3;
      v28 = byte_21B199;
      if (byte_21B199)
      {
        breakpoint_break(&__ptr, &stru_338.sectname[9], 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 6088))(a1, a2, a3);
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
        v43 = 833;
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
  (*(*(v11 + 24) + 6088))(a1, a2, a3);
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
      v16 = *(*(v11 + 24) + 6088);

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

  (*(*(v11 + 32) + 6088))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 6088);

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
  (*(*(v11 + 32) + 6088))(a1, a2, a3);
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

void sub_74840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void draw_arrays_instanced(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      goto LABEL_58;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v48 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v48 >= 1)
    {
LABEL_58:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v49 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v49, 0, do_nothing);
      v50 = *(*(v15 + 24) + 6096);

      v50(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 257;
  __ptr = 0;
  v69 = 0;
  v70 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = a4 < 1 || copyout_vertex_arrays2(v15) == 0;
    v66 = v18;
    v20 = __ptr;
    v19 = v69;
    v21 = v69 - __ptr;
    v22 = v70;
    v23 = v70 - (v69 - __ptr);
    if (v23 <= 0x43)
    {
      v51 = (323 - v23) & 0x100;
      v70 += v51;
      v20 = malloc_type_malloc(v51 + v22, 0xF962E99uLL);
      __ptr = v20;
      if (!v20 || (v20 & 3) != 0)
      {
        goto LABEL_79;
      }

      v19 = v20 + v21;
    }

    *(v19 + 16) = 0;
    *(v19 + 2) = 0u;
    *(v19 + 3) = 0u;
    *v19 = 0u;
    *(v19 + 1) = 0u;
    v24 = v19 + 68;
    v69 = v19 + 68;
    v25 = v19 + 68 - v20;
    *v20 = v25;
    v26 = (v25 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v21 = v26 - v25;
    if (v26 == v25)
    {
      goto LABEL_26;
    }

    v27 = __ptr;
    v28 = v24 - __ptr;
    v29 = v70;
    v30 = v70 - (v24 - __ptr);
    if (v21 <= v30)
    {
      v31 = v69;
LABEL_25:
      bzero(v24, v21);
      v69 = &v31[v21];
      *v27 += v21;
LABEL_26:
      v20[1] = 823;
      v20[8] = 0;
      v67 = 0;
      pthread_threadid_np(0, &v67);
      *(v20 + 1) = v67;
      strcpy(v20 + 36, "Ceiii");
      *(v20 + 11) = *v15;
      v20[13] = a2;
      v20[14] = a3;
      v20[15] = a4;
      v20[16] = a5;
      LOBYTE(v21) = byte_21B18F;
      if (byte_21B18F)
      {
        breakpoint_break(&__ptr, (&stru_2E8.reserved3 + 3), 1, *(v15 + 3404), v15);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4)
      {
        goto LABEL_32;
      }

      if (![DYGetGLGuestAppClient() overrideFlags])
      {
        v32 = mach_absolute_time();
        (*(*(v15 + 32) + 6096))(a1, a2, a3, a4, a5);
        v33 = mach_absolute_time() - v32;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v34 = __ptr;
          *(__ptr + 2) = v32;
          v34[3] = v33;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_32;
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
            goto LABEL_32;
          }
        }

        check_errors(v15);
LABEL_32:
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
        v35 = *(v15 + 3404);
        if (v35 && (gBreakOnError & 1) != 0)
        {
          v52 = 3;
          v53 = 0xFFFFFFFFLL;
        }

        else
        {
          if ((v21 & 2) == 0)
          {
LABEL_41:
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
            if (!v66)
            {
              GPUTools::FB::Encode(&__ptr, 4294955021, 4, "C", v39, v40, v41, v42, *v15);
              v43 = [DYGetGLGuestAppClient() defaultFbufStream];
              v44 = v43;
              while (atomic_exchange(v43 + 14, 1u) == 1)
              {
                  ;
                }
              }

              v45 = *__ptr;
              GPUTools::FB::Stream::Write_nolock();
              atomic_store(0, v44 + 14);
            }

            v46 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
            if (gCheckGLErrors == 1 && v46 >= 1)
            {
              handle_opengl_thread_conflict(v15);
            }

            goto LABEL_54;
          }

          v52 = 2;
          v53 = 823;
        }

        breakpoint_break(&__ptr, v53, v52, v35, v15);
        goto LABEL_41;
      }

      if (([DYGetGLGuestAppClient() overrideFlags] & 8) != 0)
      {
        goto LABEL_32;
      }

      v54 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v15, v54);
      v55 = mach_absolute_time();
      (*(*(v15 + 32) + 6096))(a1, a2, a3, a4, a5);
      v56 = mach_absolute_time() - v55;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v57 = __ptr;
        *(__ptr + 2) = v55;
        v57[3] = v56;
        if (gCheckGLErrors != 1)
        {
LABEL_68:
          v58 = [DYGetGLGuestAppClient() overrideFlags];
          unapply_draw_overrides(v15, v58);
          goto LABEL_32;
        }

LABEL_81:
        check_errors(v15);
        goto LABEL_68;
      }

LABEL_80:
      v64 = __udivti3();
      v65 = __ptr;
      *(__ptr + 3) = v64;
      v65[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_68;
      }

      goto LABEL_81;
    }

    v62 = (v21 - v30 + 255) & 0xFFFFFF00;
    v63 = v62 + v70;
    v70 += v62;
    if (__ptr)
    {
      v27 = reallocf(__ptr, v63);
      __ptr = v27;
      if (!v27)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v27 = malloc_type_malloc(v62 + v29, 0xF962E99uLL);
      __ptr = v27;
      if (!v27)
      {
        goto LABEL_79;
      }
    }

    if ((v27 & 3) == 0)
    {
      v31 = v27 + v28;
      v24 = v31;
      goto LABEL_25;
    }

LABEL_79:
    dy_abort();
    __break(1u);
    goto LABEL_80;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6096))(a1, a2, a3, a4, a5);
LABEL_54:
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
      v42 = *(*(v15 + 24) + 6096);

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
    if (v22 <= 0x43)
    {
      v43 = (323 - v22) & 0x100;
      v61 += v43;
      v19 = malloc_type_malloc(v43 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19 || (v19 & 3) != 0)
      {
        goto LABEL_71;
      }

      v18 = v19 + v20;
    }

    *(v18 + 16) = 0;
    *(v18 + 2) = 0u;
    *(v18 + 3) = 0u;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    v23 = v18 + 68;
    v60 = v18 + 68;
    v24 = v18 + 68 - v19;
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
      v19[1] = 823;
      v19[8] = 0;
      v58 = 0;
      pthread_threadid_np(0, &v58);
      *(v19 + 1) = v58;
      strcpy(v19 + 36, "Ceiii");
      *(v19 + 11) = *v15;
      v19[13] = a2;
      v19[14] = a3;
      v19[15] = a4;
      v19[16] = a5;
      LOBYTE(v20) = byte_21B18F;
      if (byte_21B18F)
      {
        breakpoint_break(&__ptr, (&stru_2E8.reserved3 + 3), 1, *(v15 + 3404), v15);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4)
      {
        goto LABEL_29;
      }

      if (![DYGetGLGuestAppClient() overrideFlags])
      {
        v31 = mach_absolute_time();
        (*(*(v15 + 32) + 6096))(a1, a2, a3, a4, a5);
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
          v45 = 823;
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
      (*(*(v15 + 32) + 6096))(a1, a2, a3, a4, a5);
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
  (*(*(v15 + 24) + 6096))(a1, a2, a3, a4, a5);
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
      v22 = *(*(v15 + 24) + 6096);

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
      (*(*(v15 + 32) + 6096))(a1, a2, a3, a4, a5);
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
    (*(*(v15 + 32) + 6096))(a1, a2, a3, a4, a5);
    ++*(v15 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v15);
    }
  }

  if (!*(v15 + 3404))
  {
    GLDrawCommandStatistics::update((v15 + 32 * a2 + 4408), a2, a4, a5);
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
      v28 = *(*(v15 + 24) + 6096);

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
      (*(*(v15 + 32) + 6096))(a1, a2, a3, a4, a5);
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
    (*(*(v15 + 32) + 6096))(a1, a2, a3, a4, a5);
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
    GLDrawCommandStatistics::update((v15 + 32 * a2 + 4408), a2, a4, a5);
  }

  add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v15);
  }
}

void sub_74FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void draw_elements_instanced(__GLIContextRec *a1, uint64_t a2, int a3, GPUTools::GL *a4, void *a5, uint64_t a6)
{
  v65 = a3;
  v64 = a5;
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
      goto LABEL_58;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v45 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v45 >= 1)
    {
LABEL_58:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v46 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v46, 0, do_nothing);
      v47 = *(*(v15 + 24) + 6104);

      v47(a1, a2, v65, a4, v64, a6);
      return;
    }
  }

  *(v15 + 4838) = 257;
  v62[0] = 0;
  v62[1] = 0;
  v63 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    strlcpy((v15 + 4709), "Ceie", 0x40uLL);
    if (a6 && v65)
    {
      if (has_client_memory_vertex_arrays(v15))
      {
        determine_element_range(v15, &v65, a4, &v64, 0, 1, v18, v19, v20, v21);
        v61 = copyout_vertex_arrays2(v15);
        if (*(v15 + 2036))
        {
LABEL_22:
          strlcat((v15 + 4709), "ti", 0x40uLL);
          goto LABEL_26;
        }
      }

      else
      {
        v61 = 0;
        if (*(v15 + 2036))
        {
          goto LABEL_22;
        }
      }

      strlcat((v15 + 4709), "Ui", 0x40uLL);
      GPUTools::GL::dy_type_size(a4, v27);
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
    }

    else
    {
      strlcat((v15 + 4709), "ti", 0x40uLL);
      v61 = 0;
    }

LABEL_26:
    GPUTools::FB::Encode(v62, 824, v15 + 4709, v22, v23, v24, v25, v26, *v15);
    v28 = byte_21B190;
    if (byte_21B190)
    {
      breakpoint_break(v62, &stru_338, 1, *(v15 + 3404), v15);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4)
    {
      goto LABEL_32;
    }

    if (![DYGetGLGuestAppClient() overrideFlags])
    {
      v29 = mach_absolute_time();
      (*(*(v15 + 32) + 6104))(a1, a2, v65, a4, v64, a6);
      v30 = mach_absolute_time() - v29;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v31 = v62[0];
        *(v62[0] + 2) = v29;
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
        v57 = v62[0];
        *(v62[0] + 3) = v56;
        v57[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_32;
        }
      }

      check_errors(v15);
LABEL_32:
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

      GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v62);
      v32 = *(v15 + 3404);
      if (v32 && (gBreakOnError & 1) != 0)
      {
        v48 = 3;
        v49 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v28 & 2) == 0)
        {
LABEL_41:
          v33 = [DYGetGLGuestAppClient() defaultFbufStream];
          v34 = v33;
          while (atomic_exchange(v33 + 14, 1u) == 1)
          {
              ;
            }
          }

          v35 = *v62[0];
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v34 + 14);
          if (v61)
          {
            GPUTools::FB::Encode(v62, 4294955021, 4, "C", v36, v37, v38, v39, *v15);
            v40 = [DYGetGLGuestAppClient() defaultFbufStream];
            v41 = v40;
            while (atomic_exchange(v40 + 14, 1u) == 1)
            {
                ;
              }
            }

            v42 = *v62[0];
            GPUTools::FB::Stream::Write_nolock();
            atomic_store(0, v41 + 14);
          }

          v43 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v43 >= 1)
          {
            handle_opengl_thread_conflict(v15);
          }

          goto LABEL_54;
        }

        v48 = 2;
        v49 = 824;
      }

      breakpoint_break(v62, v49, v48, v32, v15);
      goto LABEL_41;
    }

    if (([DYGetGLGuestAppClient() overrideFlags] & 8) != 0)
    {
      goto LABEL_32;
    }

    v50 = [DYGetGLGuestAppClient() overrideFlags];
    apply_draw_overrides(v15, v50);
    v51 = mach_absolute_time();
    (*(*(v15 + 32) + 6104))(a1, a2, v65, a4, v64, a6);
    v52 = mach_absolute_time() - v51;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v53 = v62[0];
      *(v62[0] + 2) = v51;
      v53[3] = v52;
      if (gCheckGLErrors != 1)
      {
LABEL_65:
        v54 = [DYGetGLGuestAppClient() overrideFlags];
        unapply_draw_overrides(v15, v54);
        goto LABEL_32;
      }
    }

    else
    {
      v58 = *(&g_DYTimebaseInfo + 1);
      v59 = __udivti3();
      v60 = v62[0];
      *(v62[0] + 3) = v59;
      v60[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_65;
      }
    }

    check_errors(v15);
    goto LABEL_65;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 6104))(a1, a2, v65, a4, v64, a6);
LABEL_54:
  if (v62[0])
  {
    free(v62[0]);
  }
}

void sub_75728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void bind_vertex_array(__GLIContextRec *a1, uint64_t a2)
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
LABEL_44:
      bind_vertex_array((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v26 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v26 >= 1)
    {
      goto LABEL_44;
    }
  }

  *(v9 + 4838) = 1;
  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v32, 838, 0, "Cui", v12, v13, v14, v15, *v9);
    v16 = byte_21B19E;
    if (byte_21B19E)
    {
      breakpoint_break(v32, &stru_338.sectname[14], 1, *(v9 + 3404), v9);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v16 & 4))
    {
      v17 = mach_absolute_time();
      (*(*(v9 + 32) + 6144))(a1, a2);
      v18 = mach_absolute_time() - v17;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v19 = v32[0];
        *(v32[0] + 2) = v17;
        v19[3] = v18;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v29 = *(&g_DYTimebaseInfo + 1);
        v30 = __udivti3();
        v31 = v32[0];
        *(v32[0] + 3) = v30;
        v31[2] = __udivti3();
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

    GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), v32);
    v20 = *(v9 + 3404);
    if (v20 && (gBreakOnError & 1) != 0)
    {
      v27 = 3;
      v28 = 0xFFFFFFFFLL;
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

        v23 = *v32[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v22 + 14);
        (*(*(v9 + 32) + 832))(*(v9 + 16), 34964, v9 + 2032);
        (*(*(v9 + 32) + 832))(*(v9 + 16), 34965, v9 + 2036);
        v24 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v24 >= 1)
        {
          handle_opengl_thread_conflict(v9);
        }

        goto LABEL_40;
      }

      v27 = 2;
      v28 = 838;
    }

    breakpoint_break(v32, v28, v27, v20, v9);
    goto LABEL_32;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v9 + 24) + 6144))(a1, a2);
LABEL_40:
  if (v32[0])
  {
    free(v32[0]);
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
LABEL_44:
      bind_vertex_array((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v26 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v26 >= 1)
    {
      goto LABEL_44;
    }
  }

  *(v9 + 4838) = 1;
  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v32, 838, 0, "Cui", v12, v13, v14, v15, *v9);
    v16 = byte_21B19E;
    if (byte_21B19E)
    {
      breakpoint_break(v32, &stru_338.sectname[14], 1, *(v9 + 3404), v9);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v16 & 4))
    {
      v17 = mach_absolute_time();
      (*(*(v9 + 32) + 6144))(a1, a2);
      v18 = mach_absolute_time() - v17;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v19 = v32[0];
        *(v32[0] + 2) = v17;
        v19[3] = v18;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v29 = *(&g_DYTimebaseInfo + 1);
        v30 = __udivti3();
        v31 = v32[0];
        *(v32[0] + 3) = v30;
        v31[2] = __udivti3();
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

    GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), v32);
    v20 = *(v9 + 3404);
    if (v20 && (gBreakOnError & 1) != 0)
    {
      v27 = 3;
      v28 = 0xFFFFFFFFLL;
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

        v23 = *v32[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v22 + 14);
        (*(*(v9 + 32) + 832))(*(v9 + 16), 34964, v9 + 2032);
        (*(*(v9 + 32) + 832))(*(v9 + 16), 34965, v9 + 2036);
        v24 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v24 >= 1)
        {
          handle_opengl_thread_conflict(v9);
        }

        goto LABEL_40;
      }

      v27 = 2;
      v28 = 838;
    }

    breakpoint_break(v32, v28, v27, v20, v9);
    goto LABEL_32;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v9 + 24) + 6144))(a1, a2);
LABEL_40:
  if (v32[0])
  {
    free(v32[0]);
  }
}

void sub_75B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void delete_vertex_arrays(__GLIContextRec *a1, uint64_t a2, const unsigned int *a3)
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
      v30 = *(*(v11 + 24) + 6152);

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
    GPUTools::FB::Encode(v36, 839, 0, v11 + 4709, v14, v15, v16, v17, *v11);
    v18 = byte_21B19F;
    if (byte_21B19F)
    {
      breakpoint_break(v36, &stru_338.sectname[15], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 6152))(a1, a2, a3);
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
        (*(*(v11 + 32) + 832))(*(v11 + 16), 34964, v11 + 2032);
        (*(*(v11 + 32) + 832))(*(v11 + 16), 34965, v11 + 2036);
        v26 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v26 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_40;
      }

      v31 = 2;
      v32 = 839;
    }

    breakpoint_break(v36, v32, v31, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 6152))(a1, a2, a3);
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
      v30 = *(*(v11 + 24) + 6152);

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
    GPUTools::FB::Encode(v36, 839, 0, v11 + 4709, v14, v15, v16, v17, *v11);
    v18 = byte_21B19F;
    if (byte_21B19F)
    {
      breakpoint_break(v36, &stru_338.sectname[15], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 6152))(a1, a2, a3);
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
        (*(*(v11 + 32) + 832))(*(v11 + 16), 34964, v11 + 2032);
        (*(*(v11 + 32) + 832))(*(v11 + 16), 34965, v11 + 2036);
        v26 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v26 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_40;
      }

      v31 = 2;
      v32 = 839;
    }

    breakpoint_break(v36, v32, v31, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 6152))(a1, a2, a3);
LABEL_40:
  if (v36[0])
  {
    free(v36[0]);
  }
}

void sub_75FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void gen_vertex_arrays(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
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
      v36 = *(*(v11 + 24) + 6160);

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
    GPUTools::FB::Encode(&v43, 840, v11 + 4709, v14, v15, v16, v17, v18, *v11);
    v19 = byte_21B1A0;
    if (byte_21B1A0)
    {
      breakpoint_break(&v43, stru_338.segname, 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v11 + 32) + 6160))(a1, a2, a3);
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

    GPUTools::FB::Encode(&v43, 840, 0, v11 + 4709, v20, v21, v22, v23, *v11);
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
      v38 = 840;
    }

    breakpoint_break(&v43, v38, v37, v28, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 6160))(a1, a2, a3);
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
      v36 = *(*(v11 + 24) + 6160);

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
    GPUTools::FB::Encode(&v43, 840, v11 + 4709, v14, v15, v16, v17, v18, *v11);
    v19 = byte_21B1A0;
    if (byte_21B1A0)
    {
      breakpoint_break(&v43, stru_338.segname, 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v11 + 32) + 6160))(a1, a2, a3);
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

    GPUTools::FB::Encode(&v43, 840, 0, v11 + 4709, v20, v21, v22, v23, *v11);
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
      v38 = 840;
    }

    breakpoint_break(&v43, v38, v37, v28, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 6160))(a1, a2, a3);
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
      v16 = *(*(v11 + 24) + 6160);

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

  (*(*(v11 + 32) + 6160))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 6160);

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
  (*(*(v11 + 32) + 6160))(a1, a2, a3);
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

void sub_7645C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t is_vertex_array(__GLIContextRec *a1, uint64_t a2)
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
      v45 = *(*(v9 + 24) + 6168);

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
      v13[1] = 841;
      v13[8] = 256;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v13 + 1) = v54;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21B1A1;
      if (byte_21B1A1)
      {
        breakpoint_break(&__ptr, &stru_338.segname[1], 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 6168))(a1, a2);
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
        v48 = 841;
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
  v33 = (*(*(v9 + 24) + 6168))(a1, a2);
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
      v45 = *(*(v9 + 24) + 6168);

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
      v13[1] = 841;
      v13[8] = 256;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v13 + 1) = v54;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21B1A1;
      if (byte_21B1A1)
      {
        breakpoint_break(&__ptr, &stru_338.segname[1], 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 6168))(a1, a2);
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
        v48 = 841;
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
  v33 = (*(*(v9 + 24) + 6168))(a1, a2);
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
      v17 = *(*(v9 + 24) + 6168);

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

  result = (*(*(v9 + 32) + 6168))(a1, a2);
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
      v19 = *(*(v9 + 24) + 6168);

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
  v13 = (*(*(v9 + 32) + 6168))(a1, a2);
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

  v16 = *(*(v9 + 24) + 6168);

  return v16(a1, a2);
}

void sub_76A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void point_size_pointer(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const void *a4)
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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(*(v13 + 24) + 6176);

      v33(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v20 = *(v13 + 2032);
    *(v13 + 1980) = a2;
    *(v13 + 1988) = a3;
    *(v13 + 1968) = a4;
    *(v13 + 1976) = v20;
    GPUTools::FB::Encode(v39, 806, 2 * (v20 == 0), "Ceit", v16, v17, v18, v19, *v13);
    v21 = byte_21B17E;
    if (byte_21B17E)
    {
      breakpoint_break(v39, (&stru_2E8.nreloc + 2), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(*(v13 + 32) + 6176))(a1, a2, a3, a4);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v39[0];
        *(v39[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
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
          goto LABEL_23;
        }
      }

      check_errors(v13);
    }

LABEL_23:
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
    v25 = *(v13 + 3404);
    if (v25 && (gBreakOnError & 1) != 0)
    {
      v34 = 3;
      v35 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v21 & 2) == 0)
      {
LABEL_32:
        v26 = [DYGetGLGuestAppClient() defaultFbufStream];
        v27 = v26;
        while (atomic_exchange(v26 + 14, 1u) == 1)
        {
            ;
          }
        }

        v28 = *v39[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v27 + 14);
        v29 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v29 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_40;
      }

      v34 = 2;
      v35 = 806;
    }

    breakpoint_break(v39, v35, v34, v25, v13);
    goto LABEL_32;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6176))(a1, a2, a3, a4);
LABEL_40:
  if (v39[0])
  {
    free(v39[0]);
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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_44:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(*(v13 + 24) + 6176);

      v33(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v20 = *(v13 + 2032);
    *(v13 + 1980) = a2;
    *(v13 + 1988) = a3;
    *(v13 + 1968) = a4;
    *(v13 + 1976) = v20;
    GPUTools::FB::Encode(v39, 806, 2 * (v20 == 0), "Ceit", v16, v17, v18, v19, *v13);
    v21 = byte_21B17E;
    if (byte_21B17E)
    {
      breakpoint_break(v39, (&stru_2E8.nreloc + 2), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(*(v13 + 32) + 6176))(a1, a2, a3, a4);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v39[0];
        *(v39[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
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
          goto LABEL_23;
        }
      }

      check_errors(v13);
    }

LABEL_23:
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
    v25 = *(v13 + 3404);
    if (v25 && (gBreakOnError & 1) != 0)
    {
      v34 = 3;
      v35 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v21 & 2) == 0)
      {
LABEL_32:
        v26 = [DYGetGLGuestAppClient() defaultFbufStream];
        v27 = v26;
        while (atomic_exchange(v26 + 14, 1u) == 1)
        {
            ;
          }
        }

        v28 = *v39[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v27 + 14);
        v29 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v29 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_40;
      }

      v34 = 2;
      v35 = 806;
    }

    breakpoint_break(v39, v35, v34, v25, v13);
    goto LABEL_32;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6176))(a1, a2, a3, a4);
LABEL_40:
  if (v39[0])
  {
    free(v39[0]);
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
      v18 = *(*(v13 + 24) + 6176);

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

  (*(*(v13 + 32) + 6176))(a1, a2, a3, a4);
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
      v21 = *(*(v13 + 24) + 6176);

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
  (*(*(v13 + 32) + 6176))(a1, a2, a3, a4);
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

void sub_76E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void clear_bufferiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const int *a4)
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(*(v13 + 24) + 6192);

      v33(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 257;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if ((a2 - 6144) >= 3)
    {
      strcpy((v13 + 4709), "Ceip");
    }

    else
    {
      snprintf((v13 + 4709), 0x40uLL, "Cei@%u%s", dword_2067E0[(a2 - 6144)], "i");
    }

    GPUTools::FB::Encode(v47, 853, v13 + 4709, v16, v17, v18, v19, v20, *v13);
    v21 = byte_21B1AD;
    if (byte_21B1AD)
    {
      breakpoint_break(v47, &stru_338.segname[13], 1, *(v13 + 3404), v13);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4)
    {
      goto LABEL_27;
    }

    if (![DYGetGLGuestAppClient() overrideFlags])
    {
      v22 = mach_absolute_time();
      (*(*(v13 + 32) + 6192))(a1, a2, a3, a4);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v47[0];
        *(v47[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v41 = *(&g_DYTimebaseInfo + 1);
        v42 = __udivti3();
        v43 = v47[0];
        *(v47[0] + 3) = v42;
        v43[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v13);
LABEL_27:
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

      GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v47);
      v25 = *(v13 + 3404);
      if (v25 && (gBreakOnError & 1) != 0)
      {
        v34 = 3;
        v35 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v21 & 2) == 0)
        {
LABEL_36:
          v26 = [DYGetGLGuestAppClient() defaultFbufStream];
          v27 = v26;
          while (atomic_exchange(v26 + 14, 1u) == 1)
          {
              ;
            }
          }

          v28 = *v47[0];
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v27 + 14);
          v29 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v29 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_44;
        }

        v34 = 2;
        v35 = 853;
      }

      breakpoint_break(v47, v35, v34, v25, v13);
      goto LABEL_36;
    }

    if (([DYGetGLGuestAppClient() overrideFlags] & 8) != 0)
    {
      goto LABEL_27;
    }

    v36 = [DYGetGLGuestAppClient() overrideFlags];
    apply_draw_overrides(v13, v36);
    v37 = mach_absolute_time();
    (*(*(v13 + 32) + 6192))(a1, a2, a3, a4);
    v38 = mach_absolute_time() - v37;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v39 = v47[0];
      *(v47[0] + 2) = v37;
      v39[3] = v38;
      if (gCheckGLErrors != 1)
      {
LABEL_55:
        v40 = [DYGetGLGuestAppClient() overrideFlags];
        unapply_draw_overrides(v13, v40);
        goto LABEL_27;
      }
    }

    else
    {
      v44 = *(&g_DYTimebaseInfo + 1);
      v45 = __udivti3();
      v46 = v47[0];
      *(v47[0] + 3) = v45;
      v46[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_55;
      }
    }

    check_errors(v13);
    goto LABEL_55;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6192))(a1, a2, a3, a4);
LABEL_44:
  if (v47[0])
  {
    free(v47[0]);
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(*(v13 + 24) + 6192);

      v33(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 257;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if ((a2 - 6144) >= 3)
    {
      strcpy((v13 + 4709), "Ceip");
    }

    else
    {
      snprintf((v13 + 4709), 0x40uLL, "Cei@%u%s", dword_2067EC[(a2 - 6144)], "i");
    }

    GPUTools::FB::Encode(v47, 853, v13 + 4709, v16, v17, v18, v19, v20, *v13);
    v21 = byte_21B1AD;
    if (byte_21B1AD)
    {
      breakpoint_break(v47, &stru_338.segname[13], 1, *(v13 + 3404), v13);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4)
    {
      goto LABEL_27;
    }

    if (![DYGetGLGuestAppClient() overrideFlags])
    {
      v22 = mach_absolute_time();
      (*(*(v13 + 32) + 6192))(a1, a2, a3, a4);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v47[0];
        *(v47[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v41 = *(&g_DYTimebaseInfo + 1);
        v42 = __udivti3();
        v43 = v47[0];
        *(v47[0] + 3) = v42;
        v43[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v13);
LABEL_27:
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

      GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v47);
      v25 = *(v13 + 3404);
      if (v25 && (gBreakOnError & 1) != 0)
      {
        v34 = 3;
        v35 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v21 & 2) == 0)
        {
LABEL_36:
          v26 = [DYGetGLGuestAppClient() defaultFbufStream];
          v27 = v26;
          while (atomic_exchange(v26 + 14, 1u) == 1)
          {
              ;
            }
          }

          v28 = *v47[0];
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v27 + 14);
          v29 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v29 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_44;
        }

        v34 = 2;
        v35 = 853;
      }

      breakpoint_break(v47, v35, v34, v25, v13);
      goto LABEL_36;
    }

    if (([DYGetGLGuestAppClient() overrideFlags] & 8) != 0)
    {
      goto LABEL_27;
    }

    v36 = [DYGetGLGuestAppClient() overrideFlags];
    apply_draw_overrides(v13, v36);
    v37 = mach_absolute_time();
    (*(*(v13 + 32) + 6192))(a1, a2, a3, a4);
    v38 = mach_absolute_time() - v37;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v39 = v47[0];
      *(v47[0] + 2) = v37;
      v39[3] = v38;
      if (gCheckGLErrors != 1)
      {
LABEL_55:
        v40 = [DYGetGLGuestAppClient() overrideFlags];
        unapply_draw_overrides(v13, v40);
        goto LABEL_27;
      }
    }

    else
    {
      v44 = *(&g_DYTimebaseInfo + 1);
      v45 = __udivti3();
      v46 = v47[0];
      *(v47[0] + 3) = v45;
      v46[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_55;
      }
    }

    check_errors(v13);
    goto LABEL_55;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6192))(a1, a2, a3, a4);
LABEL_44:
  if (v47[0])
  {
    free(v47[0]);
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
LABEL_25:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v17, 0, do_nothing);
LABEL_34:
      v20 = *(*(v13 + 24) + 6192);

      v20(a1, a2, a3, a4);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_25;
    }
  }

  *(v13 + 4838) = 257;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_34;
  }

  if ([DYGetGLGuestAppClient() overrideFlags])
  {
    if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
    {
      v18 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v13, v18);
      (*(*(v13 + 32) + 6192))(a1, a2, a3, a4);
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
    (*(*(v13 + 32) + 6192))(a1, a2, a3, a4);
    ++*(v13 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v13);
    }
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
LABEL_25:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_34:
      v26 = *(*(v13 + 24) + 6192);

      v26(a1, a2, a3, a4);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_25;
    }
  }

  *(v13 + 4838) = 257;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_34;
  }

  if ([DYGetGLGuestAppClient() overrideFlags])
  {
    if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
    {
      v21 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v13, v21);
      v22 = mach_absolute_time();
      (*(*(v13 + 32) + 6192))(a1, a2, a3, a4);
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
    (*(*(v13 + 32) + 6192))(a1, a2, a3, a4);
    v17 = mach_absolute_time();
    v18 = vdupq_n_s64(1uLL);
    v18.i64[0] = v17 - v16;
    *(v13 + 3696) = vaddq_s64(v18, *(v13 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v13);
    }
  }

  add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v13);
  }
}

void sub_77410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void clear_bufferuiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const unsigned int *a4)
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(*(v13 + 24) + 6200);

      v33(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 257;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if ((a2 - 6144) >= 3)
    {
      strcpy((v13 + 4709), "Ceip");
    }

    else
    {
      snprintf((v13 + 4709), 0x40uLL, "Cei@%u%s", dword_2067E0[(a2 - 6144)], "ui");
    }

    GPUTools::FB::Encode(v47, 854, v13 + 4709, v16, v17, v18, v19, v20, *v13);
    v21 = byte_21B1AE;
    if (byte_21B1AE)
    {
      breakpoint_break(v47, &stru_338.segname[14], 1, *(v13 + 3404), v13);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4)
    {
      goto LABEL_27;
    }

    if (![DYGetGLGuestAppClient() overrideFlags])
    {
      v22 = mach_absolute_time();
      (*(*(v13 + 32) + 6200))(a1, a2, a3, a4);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v47[0];
        *(v47[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v41 = *(&g_DYTimebaseInfo + 1);
        v42 = __udivti3();
        v43 = v47[0];
        *(v47[0] + 3) = v42;
        v43[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v13);
LABEL_27:
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

      GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v47);
      v25 = *(v13 + 3404);
      if (v25 && (gBreakOnError & 1) != 0)
      {
        v34 = 3;
        v35 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v21 & 2) == 0)
        {
LABEL_36:
          v26 = [DYGetGLGuestAppClient() defaultFbufStream];
          v27 = v26;
          while (atomic_exchange(v26 + 14, 1u) == 1)
          {
              ;
            }
          }

          v28 = *v47[0];
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v27 + 14);
          v29 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v29 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_44;
        }

        v34 = 2;
        v35 = 854;
      }

      breakpoint_break(v47, v35, v34, v25, v13);
      goto LABEL_36;
    }

    if (([DYGetGLGuestAppClient() overrideFlags] & 8) != 0)
    {
      goto LABEL_27;
    }

    v36 = [DYGetGLGuestAppClient() overrideFlags];
    apply_draw_overrides(v13, v36);
    v37 = mach_absolute_time();
    (*(*(v13 + 32) + 6200))(a1, a2, a3, a4);
    v38 = mach_absolute_time() - v37;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v39 = v47[0];
      *(v47[0] + 2) = v37;
      v39[3] = v38;
      if (gCheckGLErrors != 1)
      {
LABEL_55:
        v40 = [DYGetGLGuestAppClient() overrideFlags];
        unapply_draw_overrides(v13, v40);
        goto LABEL_27;
      }
    }

    else
    {
      v44 = *(&g_DYTimebaseInfo + 1);
      v45 = __udivti3();
      v46 = v47[0];
      *(v47[0] + 3) = v45;
      v46[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_55;
      }
    }

    check_errors(v13);
    goto LABEL_55;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6200))(a1, a2, a3, a4);
LABEL_44:
  if (v47[0])
  {
    free(v47[0]);
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(*(v13 + 24) + 6200);

      v33(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 257;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if ((a2 - 6144) >= 3)
    {
      strcpy((v13 + 4709), "Ceip");
    }

    else
    {
      snprintf((v13 + 4709), 0x40uLL, "Cei@%u%s", dword_2067EC[(a2 - 6144)], "ui");
    }

    GPUTools::FB::Encode(v47, 854, v13 + 4709, v16, v17, v18, v19, v20, *v13);
    v21 = byte_21B1AE;
    if (byte_21B1AE)
    {
      breakpoint_break(v47, &stru_338.segname[14], 1, *(v13 + 3404), v13);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4)
    {
      goto LABEL_27;
    }

    if (![DYGetGLGuestAppClient() overrideFlags])
    {
      v22 = mach_absolute_time();
      (*(*(v13 + 32) + 6200))(a1, a2, a3, a4);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v47[0];
        *(v47[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v41 = *(&g_DYTimebaseInfo + 1);
        v42 = __udivti3();
        v43 = v47[0];
        *(v47[0] + 3) = v42;
        v43[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v13);
LABEL_27:
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

      GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v47);
      v25 = *(v13 + 3404);
      if (v25 && (gBreakOnError & 1) != 0)
      {
        v34 = 3;
        v35 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v21 & 2) == 0)
        {
LABEL_36:
          v26 = [DYGetGLGuestAppClient() defaultFbufStream];
          v27 = v26;
          while (atomic_exchange(v26 + 14, 1u) == 1)
          {
              ;
            }
          }

          v28 = *v47[0];
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v27 + 14);
          v29 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v29 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_44;
        }

        v34 = 2;
        v35 = 854;
      }

      breakpoint_break(v47, v35, v34, v25, v13);
      goto LABEL_36;
    }

    if (([DYGetGLGuestAppClient() overrideFlags] & 8) != 0)
    {
      goto LABEL_27;
    }

    v36 = [DYGetGLGuestAppClient() overrideFlags];
    apply_draw_overrides(v13, v36);
    v37 = mach_absolute_time();
    (*(*(v13 + 32) + 6200))(a1, a2, a3, a4);
    v38 = mach_absolute_time() - v37;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v39 = v47[0];
      *(v47[0] + 2) = v37;
      v39[3] = v38;
      if (gCheckGLErrors != 1)
      {
LABEL_55:
        v40 = [DYGetGLGuestAppClient() overrideFlags];
        unapply_draw_overrides(v13, v40);
        goto LABEL_27;
      }
    }

    else
    {
      v44 = *(&g_DYTimebaseInfo + 1);
      v45 = __udivti3();
      v46 = v47[0];
      *(v47[0] + 3) = v45;
      v46[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_55;
      }
    }

    check_errors(v13);
    goto LABEL_55;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6200))(a1, a2, a3, a4);
LABEL_44:
  if (v47[0])
  {
    free(v47[0]);
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
LABEL_25:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v17, 0, do_nothing);
LABEL_34:
      v20 = *(*(v13 + 24) + 6200);

      v20(a1, a2, a3, a4);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_25;
    }
  }

  *(v13 + 4838) = 257;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_34;
  }

  if ([DYGetGLGuestAppClient() overrideFlags])
  {
    if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
    {
      v18 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v13, v18);
      (*(*(v13 + 32) + 6200))(a1, a2, a3, a4);
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
    (*(*(v13 + 32) + 6200))(a1, a2, a3, a4);
    ++*(v13 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v13);
    }
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
LABEL_25:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_34:
      v26 = *(*(v13 + 24) + 6200);

      v26(a1, a2, a3, a4);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_25;
    }
  }

  *(v13 + 4838) = 257;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_34;
  }

  if ([DYGetGLGuestAppClient() overrideFlags])
  {
    if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
    {
      v21 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v13, v21);
      v22 = mach_absolute_time();
      (*(*(v13 + 32) + 6200))(a1, a2, a3, a4);
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
    (*(*(v13 + 32) + 6200))(a1, a2, a3, a4);
    v17 = mach_absolute_time();
    v18 = vdupq_n_s64(1uLL);
    v18.i64[0] = v17 - v16;
    *(v13 + 3696) = vaddq_s64(v18, *(v13 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v13);
    }
  }

  add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v13);
  }
}

void sub_77998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void clear_bufferfv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const float *a4)
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(*(v13 + 24) + 6208);

      v33(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 257;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if ((a2 - 6144) >= 3)
    {
      strcpy((v13 + 4709), "Ceip");
    }

    else
    {
      snprintf((v13 + 4709), 0x40uLL, "Cei@%u%s", dword_2067E0[(a2 - 6144)], "f");
    }

    GPUTools::FB::Encode(v47, 852, v13 + 4709, v16, v17, v18, v19, v20, *v13);
    v21 = byte_21B1AC;
    if (byte_21B1AC)
    {
      breakpoint_break(v47, &stru_338.segname[12], 1, *(v13 + 3404), v13);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4)
    {
      goto LABEL_27;
    }

    if (![DYGetGLGuestAppClient() overrideFlags])
    {
      v22 = mach_absolute_time();
      (*(*(v13 + 32) + 6208))(a1, a2, a3, a4);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v47[0];
        *(v47[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v41 = *(&g_DYTimebaseInfo + 1);
        v42 = __udivti3();
        v43 = v47[0];
        *(v47[0] + 3) = v42;
        v43[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v13);
LABEL_27:
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

      GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v47);
      v25 = *(v13 + 3404);
      if (v25 && (gBreakOnError & 1) != 0)
      {
        v34 = 3;
        v35 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v21 & 2) == 0)
        {
LABEL_36:
          v26 = [DYGetGLGuestAppClient() defaultFbufStream];
          v27 = v26;
          while (atomic_exchange(v26 + 14, 1u) == 1)
          {
              ;
            }
          }

          v28 = *v47[0];
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v27 + 14);
          v29 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v29 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_44;
        }

        v34 = 2;
        v35 = 852;
      }

      breakpoint_break(v47, v35, v34, v25, v13);
      goto LABEL_36;
    }

    if (([DYGetGLGuestAppClient() overrideFlags] & 8) != 0)
    {
      goto LABEL_27;
    }

    v36 = [DYGetGLGuestAppClient() overrideFlags];
    apply_draw_overrides(v13, v36);
    v37 = mach_absolute_time();
    (*(*(v13 + 32) + 6208))(a1, a2, a3, a4);
    v38 = mach_absolute_time() - v37;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v39 = v47[0];
      *(v47[0] + 2) = v37;
      v39[3] = v38;
      if (gCheckGLErrors != 1)
      {
LABEL_55:
        v40 = [DYGetGLGuestAppClient() overrideFlags];
        unapply_draw_overrides(v13, v40);
        goto LABEL_27;
      }
    }

    else
    {
      v44 = *(&g_DYTimebaseInfo + 1);
      v45 = __udivti3();
      v46 = v47[0];
      *(v47[0] + 3) = v45;
      v46[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_55;
      }
    }

    check_errors(v13);
    goto LABEL_55;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6208))(a1, a2, a3, a4);
LABEL_44:
  if (v47[0])
  {
    free(v47[0]);
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(*(v13 + 24) + 6208);

      v33(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 257;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if ((a2 - 6144) >= 3)
    {
      strcpy((v13 + 4709), "Ceip");
    }

    else
    {
      snprintf((v13 + 4709), 0x40uLL, "Cei@%u%s", dword_2067EC[(a2 - 6144)], "f");
    }

    GPUTools::FB::Encode(v47, 852, v13 + 4709, v16, v17, v18, v19, v20, *v13);
    v21 = byte_21B1AC;
    if (byte_21B1AC)
    {
      breakpoint_break(v47, &stru_338.segname[12], 1, *(v13 + 3404), v13);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4)
    {
      goto LABEL_27;
    }

    if (![DYGetGLGuestAppClient() overrideFlags])
    {
      v22 = mach_absolute_time();
      (*(*(v13 + 32) + 6208))(a1, a2, a3, a4);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v47[0];
        *(v47[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v41 = *(&g_DYTimebaseInfo + 1);
        v42 = __udivti3();
        v43 = v47[0];
        *(v47[0] + 3) = v42;
        v43[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v13);
LABEL_27:
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

      GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v47);
      v25 = *(v13 + 3404);
      if (v25 && (gBreakOnError & 1) != 0)
      {
        v34 = 3;
        v35 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v21 & 2) == 0)
        {
LABEL_36:
          v26 = [DYGetGLGuestAppClient() defaultFbufStream];
          v27 = v26;
          while (atomic_exchange(v26 + 14, 1u) == 1)
          {
              ;
            }
          }

          v28 = *v47[0];
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v27 + 14);
          v29 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v29 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_44;
        }

        v34 = 2;
        v35 = 852;
      }

      breakpoint_break(v47, v35, v34, v25, v13);
      goto LABEL_36;
    }

    if (([DYGetGLGuestAppClient() overrideFlags] & 8) != 0)
    {
      goto LABEL_27;
    }

    v36 = [DYGetGLGuestAppClient() overrideFlags];
    apply_draw_overrides(v13, v36);
    v37 = mach_absolute_time();
    (*(*(v13 + 32) + 6208))(a1, a2, a3, a4);
    v38 = mach_absolute_time() - v37;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v39 = v47[0];
      *(v47[0] + 2) = v37;
      v39[3] = v38;
      if (gCheckGLErrors != 1)
      {
LABEL_55:
        v40 = [DYGetGLGuestAppClient() overrideFlags];
        unapply_draw_overrides(v13, v40);
        goto LABEL_27;
      }
    }

    else
    {
      v44 = *(&g_DYTimebaseInfo + 1);
      v45 = __udivti3();
      v46 = v47[0];
      *(v47[0] + 3) = v45;
      v46[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_55;
      }
    }

    check_errors(v13);
    goto LABEL_55;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6208))(a1, a2, a3, a4);
LABEL_44:
  if (v47[0])
  {
    free(v47[0]);
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
LABEL_25:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v17, 0, do_nothing);
LABEL_34:
      v20 = *(*(v13 + 24) + 6208);

      v20(a1, a2, a3, a4);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_25;
    }
  }

  *(v13 + 4838) = 257;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_34;
  }

  if ([DYGetGLGuestAppClient() overrideFlags])
  {
    if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
    {
      v18 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v13, v18);
      (*(*(v13 + 32) + 6208))(a1, a2, a3, a4);
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
    (*(*(v13 + 32) + 6208))(a1, a2, a3, a4);
    ++*(v13 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v13);
    }
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
LABEL_25:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_34:
      v26 = *(*(v13 + 24) + 6208);

      v26(a1, a2, a3, a4);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_25;
    }
  }

  *(v13 + 4838) = 257;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_34;
  }

  if ([DYGetGLGuestAppClient() overrideFlags])
  {
    if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
    {
      v21 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v13, v21);
      v22 = mach_absolute_time();
      (*(*(v13 + 32) + 6208))(a1, a2, a3, a4);
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
    (*(*(v13 + 32) + 6208))(a1, a2, a3, a4);
    v17 = mach_absolute_time();
    v18 = vdupq_n_s64(1uLL);
    v18.i64[0] = v17 - v16;
    *(v13 + 3696) = vaddq_s64(v18, *(v13 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v13);
    }
  }

  add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v13);
  }
}

void sub_77F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void clear_bufferfi(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float a4, uint64_t a5)
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
      v42 = *(*(v15 + 24) + 6216);
      v43.n128_f32[0] = a4;

      v42(a1, a2, a3, a5, v43);
      return;
    }
  }

  *(v15 + 4838) = 257;
  __ptr = 0;
  v61 = 0;
  v62 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = __ptr;
    v18 = v61;
    v20 = v61 - __ptr;
    v21 = v62;
    v22 = v62 - (v61 - __ptr);
    if (v22 <= 0x43)
    {
      v44 = (323 - v22) & 0x100;
      v62 += v44;
      v19 = malloc_type_malloc(v44 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19 || (v19 & 3) != 0)
      {
        goto LABEL_71;
      }

      v18 = v19 + v20;
    }

    *(v18 + 16) = 0;
    *(v18 + 2) = 0u;
    *(v18 + 3) = 0u;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    v23 = v18 + 68;
    v61 = v18 + 68;
    v24 = v18 + 68 - v19;
    *v19 = v24;
    v25 = (v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v25 - v24;
    if (v25 == v24)
    {
      goto LABEL_23;
    }

    v26 = __ptr;
    v27 = v23 - __ptr;
    v28 = v62;
    v29 = v62 - (v23 - __ptr);
    if (v20 <= v29)
    {
      v30 = v61;
LABEL_22:
      bzero(v23, v20);
      v61 = &v30[v20];
      *v26 += v20;
LABEL_23:
      v19[1] = 851;
      v19[8] = 0;
      v59 = 0;
      pthread_threadid_np(0, &v59);
      *(v19 + 1) = v59;
      strcpy(v19 + 36, "Ceifi");
      *(v19 + 11) = *v15;
      v19[13] = a2;
      v19[14] = a3;
      *(v19 + 15) = a4;
      v19[16] = a5;
      LOBYTE(v20) = byte_21B1AB;
      if (byte_21B1AB)
      {
        breakpoint_break(&__ptr, &stru_338.segname[11], 1, *(v15 + 3404), v15);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4)
      {
        goto LABEL_29;
      }

      if (![DYGetGLGuestAppClient() overrideFlags])
      {
        v31 = mach_absolute_time();
        (*(*(v15 + 32) + 6216))(a1, a2, a3, a5, a4);
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
          v52 = *(&g_DYTimebaseInfo + 1);
          v53 = __udivti3();
          v54 = __ptr;
          *(__ptr + 3) = v53;
          v54[2] = __udivti3();
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
          v45 = 3;
          v46 = 0xFFFFFFFFLL;
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

          v45 = 2;
          v46 = 851;
        }

        breakpoint_break(&__ptr, v46, v45, v34, v15);
        goto LABEL_38;
      }

      if (([DYGetGLGuestAppClient() overrideFlags] & 8) != 0)
      {
        goto LABEL_29;
      }

      v47 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v15, v47);
      v48 = mach_absolute_time();
      (*(*(v15 + 32) + 6216))(a1, a2, a3, a5, a4);
      v49 = mach_absolute_time() - v48;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v50 = __ptr;
        *(__ptr + 2) = v48;
        v50[3] = v49;
        if (gCheckGLErrors != 1)
        {
LABEL_60:
          v51 = [DYGetGLGuestAppClient() overrideFlags];
          unapply_draw_overrides(v15, v51);
          goto LABEL_29;
        }

LABEL_73:
        check_errors(v15);
        goto LABEL_60;
      }

LABEL_72:
      v57 = __udivti3();
      v58 = __ptr;
      *(__ptr + 3) = v57;
      v58[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_60;
      }

      goto LABEL_73;
    }

    v55 = (v20 - v29 + 255) & 0xFFFFFF00;
    v56 = v55 + v62;
    v62 += v55;
    if (__ptr)
    {
      v26 = reallocf(__ptr, v56);
      __ptr = v26;
      if (!v26)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v26 = malloc_type_malloc(v55 + v28, 0xF962E99uLL);
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
  (*(*(v15 + 24) + 6216))(a1, a2, a3, a5, a4);
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
      v42 = *(*(v15 + 24) + 6216);
      v43.n128_f32[0] = a4;

      v42(a1, a2, a3, a5, v43);
      return;
    }
  }

  *(v15 + 4838) = 257;
  __ptr = 0;
  v61 = 0;
  v62 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = __ptr;
    v18 = v61;
    v20 = v61 - __ptr;
    v21 = v62;
    v22 = v62 - (v61 - __ptr);
    if (v22 <= 0x43)
    {
      v44 = (323 - v22) & 0x100;
      v62 += v44;
      v19 = malloc_type_malloc(v44 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19 || (v19 & 3) != 0)
      {
        goto LABEL_71;
      }

      v18 = v19 + v20;
    }

    *(v18 + 16) = 0;
    *(v18 + 2) = 0u;
    *(v18 + 3) = 0u;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    v23 = v18 + 68;
    v61 = v18 + 68;
    v24 = v18 + 68 - v19;
    *v19 = v24;
    v25 = (v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v25 - v24;
    if (v25 == v24)
    {
      goto LABEL_23;
    }

    v26 = __ptr;
    v27 = v23 - __ptr;
    v28 = v62;
    v29 = v62 - (v23 - __ptr);
    if (v20 <= v29)
    {
      v30 = v61;
LABEL_22:
      bzero(v23, v20);
      v61 = &v30[v20];
      *v26 += v20;
LABEL_23:
      v19[1] = 851;
      v19[8] = 0;
      v59 = 0;
      pthread_threadid_np(0, &v59);
      *(v19 + 1) = v59;
      strcpy(v19 + 36, "Ceifi");
      *(v19 + 11) = *v15;
      v19[13] = a2;
      v19[14] = a3;
      *(v19 + 15) = a4;
      v19[16] = a5;
      LOBYTE(v20) = byte_21B1AB;
      if (byte_21B1AB)
      {
        breakpoint_break(&__ptr, &stru_338.segname[11], 1, *(v15 + 3404), v15);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4)
      {
        goto LABEL_29;
      }

      if (![DYGetGLGuestAppClient() overrideFlags])
      {
        v31 = mach_absolute_time();
        (*(*(v15 + 32) + 6216))(a1, a2, a3, a5, a4);
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
          v52 = *(&g_DYTimebaseInfo + 1);
          v53 = __udivti3();
          v54 = __ptr;
          *(__ptr + 3) = v53;
          v54[2] = __udivti3();
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
          v45 = 3;
          v46 = 0xFFFFFFFFLL;
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

          v45 = 2;
          v46 = 851;
        }

        breakpoint_break(&__ptr, v46, v45, v34, v15);
        goto LABEL_38;
      }

      if (([DYGetGLGuestAppClient() overrideFlags] & 8) != 0)
      {
        goto LABEL_29;
      }

      v47 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v15, v47);
      v48 = mach_absolute_time();
      (*(*(v15 + 32) + 6216))(a1, a2, a3, a5, a4);
      v49 = mach_absolute_time() - v48;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v50 = __ptr;
        *(__ptr + 2) = v48;
        v50[3] = v49;
        if (gCheckGLErrors != 1)
        {
LABEL_60:
          v51 = [DYGetGLGuestAppClient() overrideFlags];
          unapply_draw_overrides(v15, v51);
          goto LABEL_29;
        }

LABEL_73:
        check_errors(v15);
        goto LABEL_60;
      }

LABEL_72:
      v57 = __udivti3();
      v58 = __ptr;
      *(__ptr + 3) = v57;
      v58[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_60;
      }

      goto LABEL_73;
    }

    v55 = (v20 - v29 + 255) & 0xFFFFFF00;
    v56 = v55 + v62;
    v62 += v55;
    if (__ptr)
    {
      v26 = reallocf(__ptr, v56);
      __ptr = v26;
      if (!v26)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v26 = malloc_type_malloc(v55 + v28, 0xF962E99uLL);
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
  (*(*(v15 + 24) + 6216))(a1, a2, a3, a5, a4);
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
LABEL_25:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v19, 0, do_nothing);
LABEL_34:
      v23 = *(*(v15 + 24) + 6216);
      v20.n128_f32[0] = a4;

      v23(a1, a2, a3, a5, v20);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_25;
    }
  }

  *(v15 + 4838) = 257;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_34;
  }

  if ([DYGetGLGuestAppClient() overrideFlags])
  {
    if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
    {
      v21 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v15, v21);
      (*(*(v15 + 32) + 6216))(a1, a2, a3, a5, a4);
      ++*(v15 + 3704);
      if (gCheckGLErrors == 1)
      {
        alpha_func(v15);
      }

      v22 = [DYGetGLGuestAppClient() overrideFlags];
      unapply_draw_overrides(v15, v22);
    }
  }

  else
  {
    (*(*(v15 + 32) + 6216))(a1, a2, a3, a5, a4);
    ++*(v15 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v15);
    }
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
LABEL_25:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v22 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v22, 0, do_nothing);
LABEL_34:
      v29 = *(*(v15 + 24) + 6216);
      v23.n128_f32[0] = a4;

      v29(a1, a2, a3, a5, v23);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_25;
    }
  }

  *(v15 + 4838) = 257;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_34;
  }

  if ([DYGetGLGuestAppClient() overrideFlags])
  {
    if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
    {
      v24 = [DYGetGLGuestAppClient() overrideFlags];
      apply_draw_overrides(v15, v24);
      v25 = mach_absolute_time();
      (*(*(v15 + 32) + 6216))(a1, a2, a3, a5, a4);
      v26 = mach_absolute_time();
      v27 = vdupq_n_s64(1uLL);
      v27.i64[0] = v26 - v25;
      *(v15 + 3696) = vaddq_s64(v27, *(v15 + 3696));
      if (gCheckGLErrors == 1)
      {
        alpha_func(v15);
      }

      v28 = [DYGetGLGuestAppClient() overrideFlags];
      unapply_draw_overrides(v15, v28);
    }
  }

  else
  {
    v18 = mach_absolute_time();
    (*(*(v15 + 32) + 6216))(a1, a2, a3, a5, a4);
    v19 = mach_absolute_time();
    v20 = vdupq_n_s64(1uLL);
    v20.i64[0] = v19 - v18;
    *(v15 + 3696) = vaddq_s64(v20, *(v15 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v15);
    }
  }

  add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v15);
  }
}

void sub_78604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t get_stringi(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
      v37 = *(*(v11 + 24) + 6224);

      return v37(a1, a2, a3);
    }
  }

  *(v11 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v43, 863, 256, "Ceui", v14, v15, v16, v17, *v11);
    v18 = byte_21B1B7;
    if (byte_21B1B7)
    {
      breakpoint_break(v43, (&stru_338.addr + 7), 1, *(v11 + 3404), v11);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4)
    {
      v25 = 0;
      goto LABEL_23;
    }

    v24 = mach_absolute_time();
    v25 = (*(*(v11 + 32) + 6224))(a1, a2, a3);
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
    GPUTools::FB::Encode(v43, 4294955008, "S", v19, v20, v21, v22, v23, v25);
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
      v39 = 863;
    }

    breakpoint_break(v43, v39, v38, v28, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v25 = (*(*(v11 + 24) + 6224))(a1, a2, a3);
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
      v37 = *(*(v11 + 24) + 6224);

      return v37(a1, a2, a3);
    }
  }

  *(v11 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v43, 863, 256, "Ceui", v14, v15, v16, v17, *v11);
    v18 = byte_21B1B7;
    if (byte_21B1B7)
    {
      breakpoint_break(v43, (&stru_338.addr + 7), 1, *(v11 + 3404), v11);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4)
    {
      v25 = 0;
      goto LABEL_23;
    }

    v24 = mach_absolute_time();
    v25 = (*(*(v11 + 32) + 6224))(a1, a2, a3);
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
    GPUTools::FB::Encode(v43, 4294955008, "S", v19, v20, v21, v22, v23, v25);
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
      v39 = 863;
    }

    breakpoint_break(v43, v39, v38, v28, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v25 = (*(*(v11 + 24) + 6224))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 6224);

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

  result = (*(*(v11 + 32) + 6224))(a1, a2, a3);
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
      v21 = *(*(v11 + 24) + 6224);

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
  v15 = (*(*(v11 + 32) + 6224))(a1, a2, a3);
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

  v18 = *(*(v11 + 24) + 6224);

  return v18(a1, a2, a3);
}