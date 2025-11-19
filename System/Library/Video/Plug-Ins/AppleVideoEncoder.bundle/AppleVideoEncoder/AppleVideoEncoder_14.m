uint64_t sub_12F8E8(uint64_t a1, int a2)
{
  if (sub_160EF0(0x28u, 7))
  {
    v4 = sub_160F34(0x28u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_SetInternalThreadPriority.\n", v5, 40, v6);
      v7 = sub_175AE4();
      v18 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_SetInternalThreadPriority.", v7, 40, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_SetInternalThreadPriority.", v5, 40, v6);
    }
  }

  if (a1)
  {
    if (*(a1 + 40) == 1)
    {
      sub_E2008(*(a1 + 24), a2, *(a1 + 672));
    }

    v8 = 0;
  }

  else
  {
    if (sub_160EF0(3u, 4))
    {
      v9 = sub_160F34(3u);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_SetInternalThreadPriority, Null pointer for driver data.\n", v10, 3, v11, "AVE_USL_Drv_SetInternalThreadPriority", 1567, "pDriverInstance");
        v12 = sub_175AE4();
        v19 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_SetInternalThreadPriority, Null pointer for driver data.", v12, 3, v19, "AVE_USL_Drv_SetInternalThreadPriority", 1567, "pDriverInstance");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_SetInternalThreadPriority, Null pointer for driver data.", v10, 3, v11, "AVE_USL_Drv_SetInternalThreadPriority", 1567, "pDriverInstance");
      }
    }

    v8 = 4294966295;
  }

  if (sub_160EF0(0x28u, 7))
  {
    v13 = sub_160F34(0x28u);
    v14 = sub_175AE4();
    v15 = sub_160F68(7);
    v16 = *(a1 + 44);
    if (v13)
    {
      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_SetInternalThreadPriority frame number %d. %d\n", v14, 40, v15, *(a1 + 44), v8);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_SetInternalThreadPriority frame number %d. %d", v14, 40, v15, *(a1 + 44), v8);
  }

  return v8;
}

uint64_t sub_12FB1C(uint64_t a1, signed int a2)
{
  if (sub_160EF0(0x28u, 8))
  {
    v4 = sub_160F34(0x28u);
    v5 = sub_175AE4();
    v6 = sub_160F68(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d\n", v5, 40, v6, "AVE_USL_Drv_SetQueueSize", a1, a2);
      v7 = sub_175AE4();
      v38 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v7, 40, v38, "AVE_USL_Drv_SetQueueSize", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v5, 40, v6, "AVE_USL_Drv_SetQueueSize", a1, a2);
    }
  }

  if (a1)
  {
    if (a2 == -1)
    {
      v8 = *(a1 + 106104);
    }

    else if (a2)
    {
      v8 = a2;
      if (*(a1 + 106104) > a2)
      {
        if (sub_160EF0(0x28u, 5))
        {
          v12 = sub_160F34(0x28u);
          v13 = sub_175AE4();
          v14 = sub_160F68(5);
          v15 = *(a1 + 106104);
          if (v12)
          {
            printf("%lld %d AVE %s: %s below minimum value %p %d [%d, %d]\n", v13, 40, v14, "AVE_USL_Drv_SetQueueSize", a1, a2, *(a1 + 106104), 48);
            v13 = sub_175AE4();
            sub_160F68(5);
            v16 = *(a1 + 106104);
          }

          else
          {
            v39 = *(a1 + 106104);
          }

          syslog(3, "%lld %d AVE %s: %s below minimum value %p %d [%d, %d]", v13);
        }

LABEL_43:
        v29 = 0;
        goto LABEL_44;
      }
    }

    else
    {
      v8 = *(a1 + 106100);
    }

    v17 = *(a1 + 106080);
    if (v17)
    {
      if (sub_12C8CC(v17, v8))
      {
        if (sub_160EF0(3u, 4))
        {
          v18 = sub_160F34(3u);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          if (v18)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d\n", v19, 3, v20, "AVE_USL_Drv_SetQueueSize", 1635, "ret == 0", v8);
            v19 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d", v19);
        }

LABEL_36:
        v29 = 4294966296;
        goto LABEL_44;
      }

      v24 = *(a1 + 106072);
      if (v24)
      {
        if (sub_12C8CC(v24, v8))
        {
          if (sub_160EF0(3u, 4))
          {
            v25 = sub_160F34(3u);
            v26 = sub_175AE4();
            v27 = sub_160F68(4);
            if (v25)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d\n", v26, 3, v27, "AVE_USL_Drv_SetQueueSize", 1640, "ret == 0", v8);
              v28 = sub_175AE4();
              sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d", v28);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d", v26);
            }
          }

          goto LABEL_36;
        }

        goto LABEL_43;
      }

      if (sub_160EF0(3u, 4))
      {
        v30 = sub_160F34(3u);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverOutput connection failed.\n", v31, 3, v32, "AVE_USL_Drv_SetQueueSize", 1637, "pDriverInstance->FrameReceiverOutput");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverOutput connection failed.");
      }
    }

    else if (sub_160EF0(3u, 4))
    {
      v21 = sub_160F34(3u);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverInput connection failed.\n", v22, 3, v23, "AVE_USL_Drv_SetQueueSize", 1632, "pDriverInstance->FrameReceiverInput");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverInput connection failed.");
    }

    v29 = 4294966293;
    goto LABEL_44;
  }

  if (sub_160EF0(3u, 4))
  {
    v9 = sub_160F34(3u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Wrong parameter %p %d\n", v10, 3, v11, "AVE_USL_Drv_SetQueueSize", 1600, "pDrv != __null", 0, a2);
      v10 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Wrong parameter %p %d", v10, 3);
  }

  v29 = 4294966295;
LABEL_44:
  if (sub_160EF0(0x28u, 8))
  {
    v33 = sub_160F34(0x28u);
    v34 = sub_175AE4();
    v35 = sub_160F68(8);
    if (v33)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d\n", v34, 40, v35, "AVE_USL_Drv_SetQueueSize", a1, a2, v29);
      v36 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v36);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v34);
    }
  }

  return v29;
}

uint64_t sub_1301D8(uint64_t a1, int a2)
{
  v55 = -1;
  if (sub_160EF0(0x28u, 7))
  {
    v4 = sub_160F34(0x28u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Reset.\n", v5, 40, v6);
      v7 = sub_175AE4();
      v46 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Reset.", v7, 40, v46);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Reset.", v5, 40, v6);
    }
  }

  if (!a1)
  {
    if (sub_160EF0(3u, 4))
    {
      v13 = sub_160F34(3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset, Null pointer for driver data.\n", v14, 3, v15, "AVE_USL_Drv_Reset", 1659, "pDriverInstance");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset, Null pointer for driver data.");
    }

    goto LABEL_26;
  }

  if (!a2)
  {
    if (sub_160EF0(3u, 4))
    {
      v16 = sub_160F34(3u);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset multiPassEndPassCounter = %d.\n", v17, 3, v18, "AVE_USL_Drv_Reset", 1660, "multiPassEndPassCounter > 0", 0);
        v17 = sub_175AE4();
        v47 = sub_160F68(4);
      }

      else
      {
        v47 = v18;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset multiPassEndPassCounter = %d.", v17, 3, v47, "AVE_USL_Drv_Reset", 1660, "multiPassEndPassCounter > 0", 0);
    }

LABEL_26:
    v9 = 4294966295;
    goto LABEL_27;
  }

  v54 = sub_175AE4();
  v8 = sub_12D170(a1, &v54);
  if (v8)
  {
    v9 = v8;
    if (sub_160EF0(3u, 4))
    {
      v10 = sub_160F34(3u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames failed.\n", v11, 3, v12, "AVE_USL_Drv_Reset", 1669, "ret == 0");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames failed.");
    }

    goto LABEL_27;
  }

  *(a1 + 44) = 0;
  *(a1 + 106096) = a2;
  *v52 = 0;
  sub_E06B8(*(a1 + 24), 72736, v52);
  sub_E1750(*(a1 + 24), *v52, &v55);
  v19 = *v52;
  if (*v52)
  {
    bzero((*v52 + 8), 0x11C18uLL);
    v20 = v55;
    *v19 = v55;
    *(v19 + 4) = 10;
    *(v19 + 40) = *(a1 + 44);
    *(v19 + 16) = *(a1 + 106088) != 0;
    *(v19 + 20) = *(a1 + 106096);
    memset(v52, 0, sizeof(v52));
    *v52 = v20;
    if (sub_128458(*(a1 + 106080), v52))
    {
      if (sub_160EF0(3u, 4))
      {
        v21 = sub_160F34(3u);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v22, 3, v23, "AVE_USL_Drv_Reset", 1705, "res == 0");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
      }

      goto LABEL_44;
    }

    *&v52[24] = 0u;
    *&v52[8] = 0u;
    memset(v51, 0, sizeof(v51));
    *v52 = *a1;
    v53 = v55;
    *&v52[24] = 118000000;
    *&v52[32] = sub_175AE4();
    v33 = sub_E49BC(*(a1 + 24), v52, v51);
    if (!v33)
    {
      memset(v52, 0, sizeof(v52));
      v39 = sub_12C7B4(*(a1 + 106072), v52, 120000000);
      if (*v52 == v55)
      {
        if (!v39)
        {
          v9 = 0;
          goto LABEL_27;
        }

        if (sub_160EF0(3u, 4))
        {
          v40 = sub_160F34(3u);
          v41 = sub_175AE4();
          v42 = sub_160F68(4);
          if (v40)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v41, 3, v42, "AVE_USL_Drv_Reset", 1736, "res == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
        }
      }

      else if (sub_160EF0(3u, 4))
      {
        v43 = sub_160F34(3u);
        v44 = sub_175AE4();
        v45 = sub_160F68(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.\n", v44, 3, v45, "AVE_USL_Drv_Reset", 1735, "status.counter == counter");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.");
      }

LABEL_44:
      v9 = 4294966296;
      goto LABEL_27;
    }

    v9 = v33;
    v34 = *(a1 + 106080);
    pthread_mutex_lock(v34);
    v35 = *(v34 + 216);
    if (v35 >= 1 && v35 > *(v34 + 208))
    {
      *(v34 + 216) = v35 - 1;
    }

    pthread_mutex_unlock(v34);
    if (sub_160EF0(0x28u, 4))
    {
      v36 = sub_160F34(0x28u);
      v37 = sub_175AE4();
      v38 = sub_160F68(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v37, 40, v38, "AVE_USL_Drv_Reset", 1722, "ret == 0", v9);
        v37 = sub_175AE4();
        v50 = v9;
        v49 = sub_160F68(4);
      }

      else
      {
        v50 = v9;
        v49 = v38;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %d", v37, 40, v49, "AVE_USL_Drv_Reset", 1722, "ret == 0", v50);
    }
  }

  else
  {
    if (sub_160EF0(3u, 4))
    {
      v29 = sub_160F34(3u);
      v30 = sub_175AE4();
      v31 = sub_160F68(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v30, 3, v31, "AVE_USL_Drv_Reset", 1685, "Frame");
        v32 = sub_175AE4();
        v48 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v32, 3, v48, "AVE_USL_Drv_Reset", 1685, "Frame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v30, 3, v31, "AVE_USL_Drv_Reset", 1685, "Frame");
      }
    }

    v9 = 4294966293;
  }

LABEL_27:
  if (sub_160EF0(0x28u, 7))
  {
    v24 = sub_160F34(0x28u);
    v25 = sub_175AE4();
    v26 = sub_160F68(7);
    v27 = *(a1 + 44);
    if (v24)
    {
      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_Reset frame number %d. err 0x%08x\n", v25, 40, v26, *(a1 + 44), v9);
      v25 = sub_175AE4();
      v26 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_Reset frame number %d. err 0x%08x", v25, 40, v26, *(a1 + 44), v9);
  }

  return v9;
}

uint64_t sub_130A9C(uint64_t a1)
{
  pthread_mutex_lock(a1);
  if (*(a1 + 216) > *(a1 + 208) && sub_160EF0(0x2Au, 5))
  {
    if (sub_160F34(0x2Au))
    {
      v2 = sub_175AE4();
      v3 = sub_160F68(5);
      v5 = *(a1 + 208);
      v4 = *(a1 + 216);
      v6 = v4 <= v5;
      v7 = v4 - v5;
      if (v6)
      {
        v7 = 0;
      }

      printf("%lld %d AVE %s: H264 Connection: WARNING! deleting connection %p with %lld packets left\n", v2, 42, v3, a1, v7);
      v8 = sub_175AE4();
      v9 = sub_160F68(5);
    }

    else
    {
      v8 = sub_175AE4();
      v9 = sub_160F68(5);
    }

    v11 = *(a1 + 208);
    v10 = *(a1 + 216);
    v6 = v10 <= v11;
    v12 = v10 - v11;
    if (v6)
    {
      v12 = 0;
    }

    syslog(3, "%lld %d AVE %s: H264 Connection: WARNING! deleting connection %p with %lld packets left", v8, 42, v9, a1, v12);
  }

  if (*(a1 + 224))
  {
    operator delete[]();
  }

  pthread_cond_destroy((a1 + 112));
  pthread_cond_destroy((a1 + 64));
  pthread_mutex_unlock(a1);
  pthread_mutex_destroy(a1);
  return a1;
}

uint64_t sub_130BC0(int a1, int a2, int a3, int a4, __CFDictionary **a5)
{
  *a5 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v11 = Mutable;
    v12 = sub_14B9CC(kIOSurfaceCacheMode, a1, Mutable);
    v13 = sub_14B9CC(kIOSurfaceMapCacheAttribute, a2, v11) + v12;
    v14 = v13 + sub_14B9CC(kIOSurfacePixelFormat, a3, v11);
    v15 = vm_page_size;
    if (vm_page_size <= 0x4000)
    {
      v15 = 0x4000;
    }

    v16 = (a4 + v15 - 1) & -v15;
    if (!(v14 + sub_14B9CC(kIOSurfaceAllocSize, v16, v11)))
    {
      result = 0;
      *a5 = v11;
      return result;
    }

    if (sub_160EF0(0x4Cu, 4))
    {
      v21 = sub_160F34(0x4Cu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to add keys %d %d 0x%x %d %p\n", v22, 76, v23, "AVE_USurface", "CreateDict", 49, "ret == 0", a1, a2, a3, v16, v11);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add keys %d %d 0x%x %d %p", v24, 76, v25, "AVE_USurface");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add keys %d %d 0x%x %d %p", v22, 76, v23, "AVE_USurface");
      }
    }

    CFRelease(v11);
  }

  else if (sub_160EF0(0x4Cu, 4))
  {
    v18 = sub_160F34(0x4Cu);
    v19 = sub_175AE4();
    v20 = sub_160F68(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to create CFDictionary\n", v19, 76, v20, "AVE_USurface", "CreateDict", 36, "pDict != __null");
      v19 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create CFDictionary", v19);
  }

  return 4294966293;
}

uint64_t sub_130EC8(int a1, int a2, int a3, int a4, IOSurfaceRef *a5)
{
  v30 = 0;
  if (a4 >= 1 && a5)
  {
    *a5 = 0;
    v10 = sub_130BC0(a1, a2, a3, a4, &v30);
    if (v10)
    {
      v11 = v10;
      if (sub_160EF0(0x4Cu, 4))
      {
        v12 = sub_160F34(0x4Cu);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create surface dictionary %d %d %d %d %d\n", v13, 76, v14, "AVE_USurface", "CreateIOSurface", 94, "ret == 0", a1, a2, a3, a4, v11);
          v15 = sub_175AE4();
          v27 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface dictionary %d %d %d %d %d", v15, 76, v27, "AVE_USurface");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface dictionary %d %d %d %d %d", v13, 76, v14, "AVE_USurface");
        }
      }
    }

    else
    {
      v20 = v30;
      v21 = IOSurfaceCreate(v30);
      if (v21)
      {
        v11 = 0;
        *a5 = v21;
        if (!v20)
        {
          return v11;
        }

        goto LABEL_17;
      }

      if (!sub_160EF0(0x4Cu, 4))
      {
        v11 = 4294966296;
        if (!v20)
        {
          return v11;
        }

        goto LABEL_17;
      }

      v23 = sub_160F34(0x4Cu);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to create surface %d %d %d %d\n", v24, 76, v25, "AVE_USurface", "CreateIOSurface", 99, "pSurface != __null", a1, a2, a3, a4);
        v26 = sub_175AE4();
        v29 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface %d %d %d %d", v26, 76, v29);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface %d %d %d %d", v24, 76, v25);
      }

      v11 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0x4Cu, 4))
    {
      v16 = sub_160F34(0x4Cu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %d %d %d %d %p\n", v17, 76, v18, "AVE_USurface", "CreateIOSurface", 88, "size > 0 && ppSurface != __null", a1, a2, a3, a4, a5);
        v19 = sub_175AE4();
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %d %d %d %d %p", v19, 76, v28, "AVE_USurface");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %d %d %d %d %p", v17, 76, v18, "AVE_USurface");
      }
    }

    v11 = 4294966295;
  }

  v20 = v30;
  if (v30)
  {
LABEL_17:
    CFRelease(v20);
  }

  return v11;
}

uint64_t sub_1312A0(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  return result;
}

uint64_t sub_1312BC(char *a1, __IOSurface *a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = 0u;
  v28 = 0u;
  *cStr = 0u;
  v26 = 0u;
  if (a2)
  {
    if ((a3 & 8) == 0)
    {
LABEL_5:
      if (a4)
      {
        LOBYTE(v15) = a4;
      }

      else
      {
        v15 = &unk_1A7265;
      }

      sub_172100(a1 + 8, 64, "%s", a4, a5, a6, a7, a8, v15);
      AllocSize = IOSurfaceGetAllocSize(a2);
      result = 0;
      *(a1 + 20) = AllocSize;
      *(a1 + 9) = a2;
      *(a1 + 11) = a5;
      return result;
    }

    sub_172100(cStr, 64, "%s%s%s", a4, a5, a6, a7, a8, "AVE2");
    v13 = CFStringCreateWithCString(0, cStr, 0);
    if (v13)
    {
      v14 = v13;
      IOSurfaceSetValue(a2, kIOSurfaceName, v13);
      CFRelease(v14);
      goto LABEL_5;
    }

    if (sub_160EF0(0x4Cu, 4))
    {
      v22 = sub_160F34(0x4Cu);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to create CFString %s\n", v23, 76, v24, "AVE_USurface", "Create", 171, "pNameStr != __null", cStr);
        v23 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create CFString %s", v23, 76);
    }

    return 4294966293;
  }

  else
  {
    if (sub_160EF0(0x4Cu, 4))
    {
      v18 = sub_160F34(0x4Cu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p 0x%llx %p 0x%llx\n", v19, 76, v20, "AVE_USurface", "Create", 162, "pSurface != __null", a1, *a1, 0, a3, a4, a5);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p 0x%llx %p 0x%llx", v19, 76, v20, "AVE_USurface", "Create", 162, "pSurface != __null");
    }

    return 4294966295;
  }
}

uint64_t sub_1315FC(char *a1, IOSurfaceID csid, uint64_t a3, const void *a4, uint64_t a5)
{
  v10 = IOSurfaceLookup(csid);
  if (!v10)
  {
    if (sub_160EF0(0x4Cu, 4))
    {
      v16 = sub_160F34(0x4Cu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to get surface %p %lld %d 0x%llx 0x%llx\n", v17, 76, v18, "AVE_USurface", "Create", 209, "pSurface != __null", a1, *a1, csid, a3, a5);
        v17 = sub_175AE4();
        v18 = sub_160F68(4);
        v19 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to get surface %p %lld %d 0x%llx 0x%llx", v17, 76, v18, "AVE_USurface", "Create", 209);
    }

    v15 = 4294966281;
    goto LABEL_10;
  }

  v14 = v10;
  v15 = sub_1312BC(a1, v10, a3, a4, a5, v11, v12, v13);
  if (v15)
  {
    CFRelease(v14);
LABEL_10:
    *(a1 + 11) = 0;
    *(a1 + 20) = 0;
  }

  return v15;
}

uint64_t sub_13179C(char *a1, int a2, int a3, int a4, int a5, uint64_t a6, const void *a7, uint64_t a8)
{
  v34 = 0;
  if (a5 > 0)
  {
    v16 = vm_page_size;
    if (vm_page_size <= 0x4000)
    {
      v16 = 0x4000;
    }

    v17 = (a5 + v16 - 1) & -v16;
    v18 = sub_130EC8(a2, a3, a4, v17, &v34);
    if (v18)
    {
      v22 = v18;
      if (sub_160EF0(0x4Cu, 4))
      {
        v23 = sub_160F34(0x4Cu);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create surface %p %lld %d %d %d %d %d\n", v24, 76, v25, "AVE_USurface", "Create", 264, "ret == 0", a1, *a1, a2, a3, a4, v17, v22);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          v32 = *a1;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface %p %lld %d %d %d %d %d", v26, 76, v27, "AVE_USurface", "Create", 264);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface %p %lld %d %d %d %d %d", v24, 76, v25, "AVE_USurface", "Create", 264);
        }
      }
    }

    else
    {
      v22 = sub_1312BC(a1, v34, a6, a7, a8, v19, v20, v21);
      *(a1 + 11) |= 4uLL;
      if (!v22)
      {
        return v22;
      }
    }

    goto LABEL_16;
  }

  if (sub_160EF0(0x4Cu, 4))
  {
    v28 = sub_160F34(0x4Cu);
    v29 = sub_175AE4();
    v30 = sub_160F68(4);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d %d 0x%llx 0x%llx\n", v29, 76, v30, "AVE_USurface", "Create", 251, "size > 0", a1, *a1, a2, a3, a4, a5, a6, a8);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      v33 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d %d 0x%llx 0x%llx", v29, 76, v30, "AVE_USurface", "Create", 251, "size > 0");
    v22 = 4294966295;
LABEL_16:
    if (v34)
    {
      CFRelease(v34);
    }

    goto LABEL_18;
  }

  v22 = 4294966295;
LABEL_18:
  *(a1 + 11) = 0;
  *(a1 + 20) = 0;
  return v22;
}

uint64_t sub_131AE4(const char *a1)
{
  if (*(a1 + 9))
  {
    v2 = sub_131D48(a1);
    if (v2)
    {
      v3 = v2;
      if (sub_160EF0(0x4Cu, 4))
      {
        v4 = sub_160F34(0x4Cu);
        v5 = sub_175AE4();
        v6 = sub_160F68(4);
        v7 = *a1;
        if (v4)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to do unlock %p %lld %d\n", v5, 76, v6, "AVE_USurface", "Destroy", 325, "ret == 0", a1, *a1, v3);
          v5 = sub_175AE4();
          v6 = sub_160F68(4);
          v8 = *a1;
        }

        else
        {
          v15 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to do unlock %p %lld %d", v5, 76, v6, "AVE_USurface");
      }
    }

    else
    {
      v13 = *(a1 + 9);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 9) = 0;
      }

      v3 = 0;
      *(a1 + 8) = 0;
      *(a1 + 20) = 0;
      *(a1 + 11) = 0;
    }
  }

  else
  {
    if (sub_160EF0(0x4Cu, 4))
    {
      v9 = sub_160F34(0x4Cu);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld\n", v10, 76, v11, "AVE_USurface", "Destroy", 299, "m_pcSurface != __null", a1, *a1);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        v12 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld", v10, 76, v11);
    }

    return 4294966285;
  }

  return v3;
}

uint64_t sub_131D48(const char *a1)
{
  v2 = *(a1 + 9);
  if (v2)
  {
    if (a1[97])
    {
      IOSurfaceUnlock(v2, 0, 0);
      result = 0;
      *(a1 + 12) &= ~0x100uLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x4Cu, 4))
    {
      v4 = sub_160F34(0x4Cu);
      v5 = sub_175AE4();
      v6 = sub_160F68(4);
      v7 = *a1;
      if (v4)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s\n", v5, 76, v6, "AVE_USurface", "Unlock", 417, "m_pcSurface != __null", a1, *a1, a1 + 8);
        v5 = sub_175AE4();
        v6 = sub_160F68(4);
        v8 = *a1;
      }

      else
      {
        v9 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s", v5, 76, v6, "AVE_USurface");
    }

    return 4294966285;
  }

  return result;
}

uint64_t sub_131EB8(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  memset(v78, 0, sizeof(v78));
  v77 = 0;
  v76 = 0;
  v10 = a3;
  if (sub_160EF0(a2, a3))
  {
    sub_CB274(a4, a5, v78, 32, v11, v12, v13, v14);
    v15 = a1[9];
    if (v15)
    {
      v76 = bswap32(IOSurfaceGetPixelFormat(v15));
      v77 = 0;
    }

    if (sub_160EF0(a2, v10))
    {
      v16 = sub_160F34(a2);
      if (a3 < 0)
      {
        if (!v16 || (-a3 & 0x20) != 0)
        {
          v43 = *a1;
          v44 = a1[9];
          if (v44)
          {
            IOSurfaceGetID(a1[9]);
            v45 = a1[9];
            v46 = *(a1 + 20);
            v47 = a1[12];
            if (v45)
            {
              IOSurfaceGetUseCount(v45);
              v48 = a1[9];
              if (v48)
              {
                IOSurfaceGetBaseAddress(v48);
              }
            }
          }

          else
          {
            v51 = *(a1 + 20);
            v52 = a1[12];
          }

          syslog(3, "Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v78, a1 + 1, a1, v43, v44);
        }

        else
        {
          v30 = *a1;
          v31 = a1[9];
          if (v31)
          {
            ID = IOSurfaceGetID(a1[9]);
            v33 = a1 + 12;
            v34 = a1[12];
            BaseAddress = a1[9];
            v36 = (a1 + 10);
            v37 = *(a1 + 20);
            if (BaseAddress)
            {
              UseCount = IOSurfaceGetUseCount(BaseAddress);
              BaseAddress = a1[9];
              if (BaseAddress)
              {
                BaseAddress = IOSurfaceGetBaseAddress(BaseAddress);
              }
            }

            else
            {
              UseCount = 0;
            }
          }

          else
          {
            UseCount = 0;
            ID = 0;
            BaseAddress = 0;
            v36 = (a1 + 10);
            v37 = *(a1 + 20);
            v33 = a1 + 12;
            v34 = a1[12];
          }

          printf("Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s \n", v78, a1 + 8, a1, v30, v31, ID, v37, v34, UseCount, BaseAddress, &v76);
          v62 = *a1;
          v63 = a1[9];
          if (v63)
          {
            IOSurfaceGetID(a1[9]);
            v64 = a1[9];
            v65 = *(a1 + 20);
            v66 = a1[12];
            if (v64)
            {
              IOSurfaceGetUseCount(v64);
              v67 = a1[9];
              if (v67)
              {
                IOSurfaceGetBaseAddress(v67);
              }
            }
          }

          else
          {
            v68 = *v36;
            v69 = *v33;
          }

          syslog(3, "Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v78, a1 + 1, a1, v62, v63);
        }
      }

      else
      {
        v17 = v16 ^ 1;
        v18 = sub_175AE4();
        v19 = sub_160F68(v10);
        v20 = v19;
        v21 = *a1;
        v22 = a1[9];
        if ((v17 | ((a3 & 0x20) >> 5)))
        {
          if (v22)
          {
            v74 = v19;
            IOSurfaceGetID(v22);
            v39 = a1[9];
            v40 = *(a1 + 20);
            v41 = a1[12];
            if (v39)
            {
              IOSurfaceGetUseCount(v39);
              v42 = a1[9];
              if (v42)
              {
                IOSurfaceGetBaseAddress(v42);
              }
            }

            v20 = v74;
          }

          else
          {
            v49 = *(a1 + 20);
            v50 = a1[12];
          }

          syslog(3, "%lld %d AVE %s: Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v18, a2, v20, v78, a1 + 1, a1, v21);
        }

        else
        {
          v72 = v18;
          v75 = (a1 + 1);
          if (v22)
          {
            v73 = v19;
            v23 = IOSurfaceGetID(v22);
            v25 = a1 + 12;
            v24 = a1[12];
            v26 = a1[9];
            v27 = (a1 + 10);
            v28 = *(a1 + 20);
            if (v26)
            {
              v71 = v23;
              v29 = IOSurfaceGetUseCount(v26);
              v26 = a1[9];
              if (v26)
              {
                v26 = IOSurfaceGetBaseAddress(v26);
              }

              v20 = v73;
              v23 = v71;
            }

            else
            {
              v29 = 0;
              v20 = v73;
            }
          }

          else
          {
            v29 = 0;
            v23 = 0;
            v26 = 0;
            v27 = (a1 + 10);
            v28 = *(a1 + 20);
            v25 = a1 + 12;
            v24 = a1[12];
          }

          printf("%lld %d AVE %s: Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s \n", v72, a2, v20, v78, v75, a1, v21, v22, v23, v28, v24, v29, v26, &v76);
          v53 = sub_175AE4();
          v54 = sub_160F68(v10);
          v55 = *a1;
          if (a1[9])
          {
            IOSurfaceGetID(a1[9]);
            v56 = a1[9];
            v57 = *(a1 + 20);
            v58 = a1[12];
            if (v56)
            {
              IOSurfaceGetUseCount(v56);
              v59 = a1[9];
              if (v59)
              {
                IOSurfaceGetBaseAddress(v59);
              }
            }
          }

          else
          {
            v60 = *v27;
            v61 = *v25;
          }

          syslog(3, "%lld %d AVE %s: Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v53, a2, v54, v78, v75, a1, v55);
        }
      }
    }
  }

  return 0;
}

__IOSurface *sub_132370(uint64_t a1)
{
  result = *(a1 + 72);
  if (result)
  {
    return IOSurfaceGetID(result);
  }

  return result;
}

__IOSurface *sub_132380(uint64_t a1, int a2)
{
  result = *(a1 + 72);
  if (result)
  {
    return (IOSurfaceGetBaseAddress(result) + a2);
  }

  return result;
}

uint64_t sub_1323B4(const char *a1)
{
  v2 = *(a1 + 9);
  if (v2)
  {
    if (a1[97])
    {
      return 0;
    }

    else
    {
      IOSurfaceLock(v2, 0, 0);
      result = 0;
      *(a1 + 12) |= 0x100uLL;
    }
  }

  else
  {
    if (sub_160EF0(0x4Cu, 4))
    {
      v4 = sub_160F34(0x4Cu);
      v5 = sub_175AE4();
      v6 = sub_160F68(4);
      v7 = *a1;
      if (v4)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s\n", v5, 76, v6, "AVE_USurface", "Lock", 392, "m_pcSurface != __null", a1, *a1, a1 + 8);
        v5 = sub_175AE4();
        v6 = sub_160F68(4);
        v8 = *a1;
      }

      else
      {
        v9 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s", v5, 76, v6, "AVE_USurface");
    }

    return 4294966285;
  }

  return result;
}

uint64_t sub_132524(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return *(a1 + 80);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_13253C(int a1)
{
  v1 = &dword_203754;
  v2 = 9;
  while (*v1 != a1)
  {
    v1 += 6;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

uint64_t sub_132570(int a1)
{
  if ((a1 - 1) < 9)
  {
    return dword_203750[6 * (a1 - 1) + 1];
  }

  result = sub_160EF0(0xD0u, 4);
  if (result)
  {
    v3 = sub_160F34(0xD0u);
    v4 = sub_175AE4();
    v5 = sub_160F68(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", v4, 208, v5, "AVC_FindProfileIdc", 65, "(AVC_Profile_Invalid < eProfile) && (eProfile < AVC_Profile_Max)", a1);
      v4 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", v4);
    return 0;
  }

  return result;
}

int *sub_132698(int a1)
{
  result = &dword_203750;
  v3 = 9;
  while (*result != a1)
  {
    result += 6;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1326C8(int a1, int a2, int a3, int a4, int a5, int a6)
{
  if (sub_160EF0(0xD1u, 6))
  {
    v12 = sub_160F34(0xD1u);
    v13 = sub_175AE4();
    v14 = sub_160F68(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %d %d %d %d\n", v13, 209, v14, "AVC_FindLevel", a1, a2, a3, a4, a5, a6);
      v13 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %d %d %d %d", v13, 209);
  }

  if (a2 <= a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = a2;
  }

  if (a5 < 1)
  {
    v17 = 0.0;
  }

  else
  {
    v16 = a1 - 2;
    if ((a1 - 2) >= 8 || ((0xD5u >> v16) & 1) == 0)
    {
      if (sub_160EF0(0xD1u, 4))
      {
        v18 = sub_160F34(0xD1u);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d unsupported profile (%d)\n", v19, 209, v20, "AVC_FindLevel", 222, a1);
          v21 = sub_175AE4();
          v40 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d unsupported profile (%d)", v21, 209, v40, "AVC_FindLevel", 222, a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d unsupported profile (%d)", v19, 209, v20, "AVC_FindLevel", 222, a1);
        }
      }

      v26 = 0;
      goto LABEL_46;
    }

    v17 = dbl_185F60[v16];
  }

  v22 = 0;
  v23 = (a3 >> 4) * (a2 >> 4);
  v24 = dword_185C90;
  while (1)
  {
    if (v23 * a4 <= v24[2] && v23 <= v24[3] && v15 <= v24[6] && v17 * v24[5] >= a5)
    {
      v25 = v24[4] / v23;
      if (v25 >= 16)
      {
        v25 = 16;
      }

      if (v25 >= a6)
      {
        break;
      }
    }

    ++v22;
    v24 += 9;
    if (v22 == 20)
    {
      v24 = &dword_185F3C;
      break;
    }
  }

  v26 = *v24;
  v27 = a1 >= 7 || a1 == 1;
  if (v27 && v26 <= 17 && v23 >= 1621 && v22 <= 0x13)
  {
    v28 = 4 * v23;
    v29 = v22;
    v30 = &dword_185C90[9 * v22];
    do
    {
      v26 = *v30;
      v31 = v30[3];
      v30 += 9;
    }

    while (v28 > v31 && v29++ <= 0x12 && v26 <= 17);
  }

LABEL_46:
  if (sub_160EF0(0xD1u, 6))
  {
    v34 = sub_160F34(0xD1u);
    v35 = sub_175AE4();
    v36 = sub_160F68(6);
    if (v34)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d %d %d %d %d\n", v35, 209, v36, "AVC_FindLevel", a1, a2, a3, a4, a5, a6, v26);
      v37 = sub_175AE4();
      v38 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d %d %d %d", v37, 209, v38);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d %d %d %d", v35, 209, v36);
    }
  }

  return v26;
}

uint64_t sub_132AB8(int a1)
{
  v1 = &dword_185C94;
  v2 = 20;
  while (*v1 != a1)
  {
    v1 += 9;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

uint64_t sub_132AEC(int a1)
{
  if ((a1 - 1) < 0x14)
  {
    return dword_185C90[9 * (a1 - 1) + 1];
  }

  result = sub_160EF0(0xD1u, 4);
  if (result)
  {
    v2 = sub_160F34(0xD1u);
    v3 = sub_175AE4();
    v4 = sub_160F68(4);
    if (v2)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", v3, 209, v4, "AVC_FindLevelIdc", 295, "(AVC_Level_Invalid < eLevel) && (eLevel < AVC_Level_Max)", 0);
      v3 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", v3);
    return 0;
  }

  return result;
}

uint64_t sub_132C10(int a1)
{
  v2 = dword_185C90;
  v3 = 20;
  do
  {
    if (*v2 == a1)
    {
      return v2[7];
    }

    v2 += 9;
    --v3;
  }

  while (v3);
  if (sub_160EF0(0xD1u, 4))
  {
    v4 = sub_160F34(0xD1u);
    v5 = sub_175AE4();
    v6 = sub_160F68(4);
    if (v4)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid level %d\n", v5, 209, v6, "AVC_FindMaxMvsPer2Mb", 363, "psLimit != __null", a1);
      v5 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level %d", v5);
  }

  return 64;
}

uint64_t sub_132D3C(int a1)
{
  v2 = &dword_185CB0;
  v3 = 20;
  do
  {
    if (*(v2 - 8) == a1)
    {
      return *v2;
    }

    v2 += 9;
    --v3;
  }

  while (v3);
  result = sub_160EF0(0xD1u, 4);
  if (result)
  {
    v5 = sub_160F34(0xD1u);
    v6 = sub_175AE4();
    v7 = sub_160F68(4);
    if (v5)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid level %d\n", v6, 209, v7, "AVC_FindMaxSubMbRectSize", 385, "psLimit != __null", a1);
      v6 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level %d", v6);
    return 0;
  }

  return result;
}

uint64_t sub_132E68(_DWORD *a1)
{
  bzero(a1, 0x650uLL);
  *a1 = -1;
  a1[20] = -2;
  for (i = 31; i != 103; i += 12)
  {
    *&a1[i] = -1;
  }

  v3 = 0;
  a1[18] = -2;
  *(a1 + 420) = 0;
  a1[189] = -1;
  *(a1 + 98) = 0xC0000000CLL;
  a1[198] = -2;
  a1[201] = -13;
  *(a1 + 101) = 0xC0000000CLL;
  *(a1 + 102) = 0xBFF0000000000000;
  *(a1 + 105) = 0xBFF0000000000000;
  *(a1 + 110) = -1;
  *(a1 + 112) = -1;
  *(a1 + 113) = 0xBFF0000000000000;
  *(a1 + 114) = 0xBFF0000000000000;
  a1[261] = -1;
  *(a1 + 133) = 0xBFF0000000000000;
  *(a1 + 134) = 0xBFF0000000000000;
  v4 = a1 + 278;
  *(a1 + 120) = 0xC0000000CLL;
  *(a1 + 136) = -1;
  do
  {
    v5 = 0;
    a1[24 * v3 + 276] = 1;
    do
    {
      *&v4[v5] = -NAN;
      v5 += 3;
    }

    while (v5 != 21);
    ++v3;
    v4 += 24;
  }

  while (v3 != 5);
  a1[255] = -1;
  *(a1 + 395) = 0xFFFFFFFFLL;
  *(a1 + 257) = -1;
  *(a1 + 259) = -1;
  *(a1 + 199) = -1;
  return 0;
}

uint64_t sub_132F90(CFDictionaryRef theDict, uint64_t a2)
{
  v41 = 0.0;
  if (theDict && a2)
  {
    v4 = sub_14C90C(theDict, @"AnfdModality", a2);
    if (!v4)
    {
      v13 = sub_14C90C(theDict, @"FaceID", (a2 + 4));
      if (v13)
      {
        v5 = v13;
        if (!sub_160EF0(0x2Fu, 4))
        {
          return v5;
        }

        v14 = sub_160F34(0x2Fu);
        v7 = sub_175AE4();
        v8 = sub_160F68(4);
        if (!v14)
        {
          goto LABEL_30;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 40, "ret == 0", theDict, a2, v5);
      }

      else
      {
        v15 = sub_14C90C(theDict, @"ConfidenceLevel", (a2 + 8));
        if (v15)
        {
          v5 = v15;
          if (!sub_160EF0(0x2Fu, 4))
          {
            return v5;
          }

          v16 = sub_160F34(0x2Fu);
          v7 = sub_175AE4();
          v8 = sub_160F68(4);
          if (!v16)
          {
            goto LABEL_30;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 45, "ret == 0", theDict, a2, v5);
        }

        else
        {
          Value = CFDictionaryGetValue(theDict, @"Rect");
          if (!Value)
          {
            if (sub_160EF0(0x2Fu, 4))
            {
              v22 = sub_160F34(0x2Fu);
              v23 = sub_175AE4();
              v24 = sub_160F68(4);
              if (v22)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v23, 47, v24, "AVE_ANFD_RetrieveEntry", 50, "pRect != __null", theDict, a2, 0);
                v25 = sub_175AE4();
                v40 = sub_160F68(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v25, 47, v40);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v23, 47, v24);
              }
            }

            return 4294966288;
          }

          v18 = Value;
          v19 = sub_14C3AC(Value, @"X", &v41);
          if (v19)
          {
            v5 = v19;
            if (!sub_160EF0(0x2Fu, 4))
            {
              return v5;
            }

            v20 = sub_160F34(0x2Fu);
            v7 = sub_175AE4();
            v8 = sub_160F68(4);
            if (!v20)
            {
              goto LABEL_30;
            }

            printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 54, "ret == 0", theDict, a2, v5);
          }

          else
          {
            *(a2 + 16) = vcvtd_n_s64_f64(v41, 0x13uLL);
            v26 = sub_14C3AC(v18, @"Y", &v41);
            if (v26)
            {
              v5 = v26;
              if (!sub_160EF0(0x2Fu, 4))
              {
                return v5;
              }

              v27 = sub_160F34(0x2Fu);
              v7 = sub_175AE4();
              v8 = sub_160F68(4);
              if (!v27)
              {
                goto LABEL_30;
              }

              printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 60, "ret == 0", theDict, a2, v5);
            }

            else
            {
              *(a2 + 20) = vcvtd_n_s64_f64(v41, 0x13uLL);
              v28 = sub_14C3AC(v18, @"Width", &v41);
              if (v28)
              {
                v5 = v28;
                if (!sub_160EF0(0x2Fu, 4))
                {
                  return v5;
                }

                v29 = sub_160F34(0x2Fu);
                v7 = sub_175AE4();
                v8 = sub_160F68(4);
                if (!v29)
                {
                  goto LABEL_30;
                }

                printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 66, "ret == 0", theDict, a2, v5);
              }

              else
              {
                *(a2 + 24) = vcvtd_n_s64_f64(v41, 0x13uLL);
                v30 = sub_14C3AC(v18, @"Height", &v41);
                if (v30)
                {
                  v5 = v30;
                  if (!sub_160EF0(0x2Fu, 4))
                  {
                    return v5;
                  }

                  v31 = sub_160F34(0x2Fu);
                  v7 = sub_175AE4();
                  v8 = sub_160F68(4);
                  if (!v31)
                  {
                    goto LABEL_30;
                  }

                  printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 72, "ret == 0", theDict, a2, v5);
                }

                else
                {
                  *(a2 + 28) = vcvtd_n_s64_f64(v41, 0x13uLL);
                  *(a2 + 12) = 0x80000;
                  v32 = sub_14C90C(theDict, @"AngleInfoRoll", (a2 + 32));
                  if (v32)
                  {
                    v5 = v32;
                    if (!sub_160EF0(0x2Fu, 4))
                    {
                      return v5;
                    }

                    v33 = sub_160F34(0x2Fu);
                    v7 = sub_175AE4();
                    v8 = sub_160F68(4);
                    if (!v33)
                    {
                      goto LABEL_30;
                    }

                    printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 82, "ret == 0", theDict, a2, v5);
                  }

                  else
                  {
                    v34 = sub_14C90C(theDict, @"AngleInfoYaw", (a2 + 36));
                    if (v34)
                    {
                      v5 = v34;
                      if (!sub_160EF0(0x2Fu, 4))
                      {
                        return v5;
                      }

                      v35 = sub_160F34(0x2Fu);
                      v7 = sub_175AE4();
                      v8 = sub_160F68(4);
                      if (!v35)
                      {
                        goto LABEL_30;
                      }

                      printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 87, "ret == 0", theDict, a2, v5);
                    }

                    else
                    {
                      v36 = sub_14CBBC(theDict, @"OriginalTimestamp", (a2 + 40));
                      if (v36)
                      {
                        v5 = v36;
                        if (!sub_160EF0(0x2Fu, 4))
                        {
                          return v5;
                        }

                        v37 = sub_160F34(0x2Fu);
                        v7 = sub_175AE4();
                        v8 = sub_160F68(4);
                        if (!v37)
                        {
                          goto LABEL_30;
                        }

                        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 92, "ret == 0", theDict, a2, v5);
                      }

                      else
                      {
                        v5 = sub_14CBBC(theDict, @"Timestamp", (a2 + 48));
                        if (!v5 || !sub_160EF0(0x2Fu, 4))
                        {
                          return v5;
                        }

                        v38 = sub_160F34(0x2Fu);
                        v7 = sub_175AE4();
                        v8 = sub_160F68(4);
                        if (!v38)
                        {
                          goto LABEL_30;
                        }

                        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 96, "ret == 0", theDict, a2, v5);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v9 = sub_175AE4();
      v39 = sub_160F68(4);
      goto LABEL_23;
    }

    v5 = v4;
    if (sub_160EF0(0x2Fu, 4))
    {
      v6 = sub_160F34(0x2Fu);
      v7 = sub_175AE4();
      v8 = sub_160F68(4);
      if (v6)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 35, "ret == 0", theDict, a2, v5);
        v9 = sub_175AE4();
        v39 = sub_160F68(4);
LABEL_23:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v9, 47, v39);
        return v5;
      }

LABEL_30:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v7, 47, v8);
    }
  }

  else
  {
    if (sub_160EF0(0x2Fu, 4))
    {
      v10 = sub_160F34(0x2Fu);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 47, v12, "AVE_ANFD_RetrieveEntry", 30, "pDict != __null && psEntry != __null", theDict, a2);
        v11 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 47);
    }

    return 4294966295;
  }

  return v5;
}

uint64_t sub_133844(CFArrayRef theArray, _DWORD *a2)
{
  if (theArray && a2)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 10)
    {
      v5 = 10;
    }

    else
    {
      v5 = Count;
    }

    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      v7 = (a2 + 2);
      if (v5 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v5;
      }

      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
        if (!ValueAtIndex)
        {
          break;
        }

        v10 = sub_132F90(ValueAtIndex, v7);
        if (v10)
        {
          v11 = v10;
          if (sub_160EF0(0x2Fu, 4))
          {
            v20 = sub_160F34(0x2Fu);
            v21 = sub_175AE4();
            v22 = sub_160F68(4);
            if (v20)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d\n", v21, 47, v22, "AVE_ANFD_RetrieveArray", 225, "ret == 0", theArray, a2, v11);
              v23 = sub_175AE4();
              v25 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v23, 47, v25);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v21, 47, v22);
            }
          }

          return v11;
        }

        ++*a2;
        ++v6;
        v7 += 64;
        if (v8 == v6)
        {
          return 0;
        }
      }

      if (sub_160EF0(0x2Fu, 4))
      {
        v16 = sub_160F34(0x2Fu);
        v17 = sub_175AE4();
        v18 = sub_160F68(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p %d %d\n", v17, 47, v18, "AVE_ANFD_RetrieveArray", 220, "pDict != __null", theArray, a2, theArray, v5, v6);
          v19 = sub_175AE4();
          v24 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p %d %d", v19, 47, v24, "AVE_ANFD_RetrieveArray");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p %d %d", v17, 47, v18, "AVE_ANFD_RetrieveArray");
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (sub_160EF0(0x2Fu, 4))
    {
      v12 = sub_160F34(0x2Fu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 47, v14, "AVE_ANFD_RetrieveArray", 211, "pArray != __null && pInfo != __null", theArray, a2);
        v13 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 47);
    }

    return 4294966295;
  }
}

uint64_t sub_133B98(unsigned int *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v64, 0, sizeof(v64));
  sub_CB274(a4, a5, v64, 32, a5, a6, a7, a8);
  v11 = a3;
  if (sub_160EF0(a2, a3))
  {
    v12 = sub_160F34(a2);
    if (a3 < 0)
    {
      if (!v12 || (-a3 & 0x20) != 0)
      {
        v28 = a1[3];
        v54 = *(a1 + 6);
        v58 = a1[14];
        v48 = a1[9];
        v50 = *(a1 + 5);
        v45 = a1[8];
        v39 = a1[6] / v28;
        v42 = a1[7] / v28;
        v33 = a1[4] / v28;
        v36 = a1[5] / v28;
        v31 = a1[2];
        syslog(3, "ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d", v64, *a1, a1[1]);
      }

      else
      {
        v25 = a1[3];
        printf("ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d\n", v64, *a1, a1[1], a1[2], a1[4] / v25, a1[5] / v25, a1[6] / v25, a1[7] / v25, a1[8], a1[9], *(a1 + 5), *(a1 + 6), a1[14]);
        v26 = a1[3];
        v27 = *(a1 + 5);
        v52 = *(a1 + 6);
        v56 = a1[14];
        v47 = a1[9];
        v44 = a1[8];
        v38 = a1[6] / v26;
        v41 = a1[7] / v26;
        v32 = a1[4] / v26;
        v35 = a1[5] / v26;
        v30 = a1[2];
        syslog(3, "ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d", v64, *a1, a1[1]);
      }
    }

    else
    {
      v13 = a3 & 0x20;
      v14 = v12 ^ 1;
      v15 = sub_175AE4();
      v16 = sub_160F68(v11);
      v17 = a1[3];
      v18 = a1[4] / v17;
      v19 = a1[5] / v17;
      v20 = a1[6] / v17;
      v21 = *(a1 + 6);
      v22 = a1[7] / v17;
      if ((v14 | (v13 >> 5)))
      {
        v61 = *(a1 + 6);
        v63 = a1[14];
        v57 = a1[9];
        v59 = *(a1 + 5);
        v53 = a1[8];
      }

      else
      {
        printf("%lld %d AVE %s: ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d\n", v15, a2, v16, v64, *a1, a1[1], a1[2], v18, v19, v20, v22, a1[8], a1[9], *(a1 + 5), *(a1 + 6), a1[14]);
        v15 = sub_175AE4();
        v16 = sub_160F68(v11);
        v23 = a1[3];
        v24 = *(a1 + 5);
        v60 = *(a1 + 6);
        v62 = a1[14];
        v55 = a1[9];
        v51 = a1[8];
        v46 = a1[6] / v23;
        v49 = a1[7] / v23;
        v40 = a1[4] / v23;
        v43 = a1[5] / v23;
      }

      v34 = a1[1];
      v37 = a1[2];
      syslog(3, "%lld %d AVE %s: ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d", v15, a2, v16, v64, *a1);
    }
  }

  return 0;
}

uint64_t sub_133ED0(int *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (*a1 >= 1)
  {
    v13 = 0;
    v14 = (a1 + 2);
    do
    {
      sub_133B98(v14, a2, a3, a4, a5, a6, a7, a8);
      ++v13;
      v14 += 16;
    }

    while (v13 < *a1);
  }

  return 0;
}

uint64_t sub_133F6C(const __CFDictionary *a1, _DWORD *a2)
{
  if (a1 && a2)
  {
    bzero(a2, 0x288uLL);
    Value = CFDictionaryGetValue(a1, @"StabilizedDetectedFacesArray");
    if (Value)
    {
      v5 = sub_133844(Value, a2);
      if (v5 && sub_160EF0(0x2Fu, 4))
      {
        v6 = sub_160F34(0x2Fu);
        v7 = sub_175AE4();
        v8 = sub_160F68(4);
        if (v6)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d\n", v7, 47, v8, "AVE_ANFD_GetInfo", 365, "ret == 0", a1, a2, v5);
          v9 = sub_175AE4();
          v14 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v9, 47, v14);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v7, 47, v8);
        }
      }
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (sub_160EF0(0x2Fu, 6))
    {
      v10 = sub_160F34(0x2Fu);
      v11 = sub_175AE4();
      v12 = sub_160F68(6);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 47, v12, "AVE_ANFD_GetInfo", 354, "pProperty != NULL && pInfo != NULL", a1, a2);
        v11 = sub_175AE4();
        sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 47);
    }

    return 4294966295;
  }

  return v5;
}

uint64_t sub_13419C(uint64_t a1)
{
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  sub_CB318(a1 + 32);
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_1341D4(_DWORD *a1)
{
  if (sub_160EF0(0x38u, 6))
  {
    v2 = sub_160F34(0x38u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p\n", v3, 56, v4, "AVE_BlkPool", "Destroy", a1);
      v5 = sub_175AE4();
      v19 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v5, 56, v19, "AVE_BlkPool", "Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v3, 56, v4, "AVE_BlkPool", "Destroy", a1);
    }
  }

  do
  {
    v6 = sub_CB4B8(a1 + 4);
    if (!v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v7 = v6;
    sub_CB550(a1 + 4);
    v8 = sub_CB9D8(v7);
  }

  while (!v8);
  v9 = v8;
  if (sub_160EF0(0x38u, 5))
  {
    v10 = sub_160F34(0x38u);
    v11 = sub_175AE4();
    v12 = sub_160F68(5);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d\n", v11, 56, v12, "AVE_BlkPool", "Destroy", 285, a1, v7, v9);
      v13 = sub_175AE4();
      v20 = sub_160F68(5);
      syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v13, 56, v20);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v11, 56, v12);
    }
  }

LABEL_12:
  v14 = *(a1 + 3);
  if (v14)
  {
    v9 = sub_13DBD0(v14) + v9;
    *(a1 + 3) = 0;
  }

  *a1 = 0;
  a1[16] = 0;
  *(a1 + 3) = 0;
  *(a1 + 1) = 0;
  if (sub_160EF0(0x38u, 6))
  {
    v15 = sub_160F34(0x38u);
    v16 = sub_175AE4();
    v17 = sub_160F68(6);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %d\n", v16, 56, v17, "AVE_BlkPool", "Destroy", a1, v9);
      v16 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %d", v16);
  }

  return v9;
}

uint64_t sub_1344E0(int *a1, int a2, int a3, int a4, unsigned int a5, int a6)
{
  v41 = 0;
  if (sub_160EF0(0x38u, 6))
  {
    v11 = sub_160F34(0x38u);
    v12 = sub_175AE4();
    v13 = sub_160F68(6);
    if (v11)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p 0x%x %d %d %d %d\n", v12, 56, v13, "AVE_BlkPool", "Create", a1, a2, a3, a4, a5, a6);
      v14 = sub_175AE4();
      v35 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %d %d %d %d", v14, 56, v35);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %d %d %d %d", v12, 56, v13);
    }
  }

  if (a3 < 1 || a4 < 1 || a5 > 0x40 || a5 && ((a5 + 127) & a5) != 0)
  {
    if (sub_160EF0(0x38u, 4))
    {
      v15 = sub_160F34(0x38u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %d %d %d %d\n", v16, 56, v17, "AVE_BlkPool", "Create", 75, "num > 0 && size > 0 && alignment >= 0 && alignment <= 64 && (alignment == 0 || (alignment & (alignment - 1)) == 0)", a1, a2, a3, a4, a5, a6);
        v18 = sub_175AE4();
        v36 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %d %d %d %d", v18, 56, v36, "AVE_BlkPool", "Create");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %d %d %d %d", v16, 56, v17, "AVE_BlkPool", "Create");
      }
    }

    v20 = 4294966295;
    goto LABEL_17;
  }

  if ((a2 & 1) == 0)
  {
    v19 = 0;
    goto LABEL_23;
  }

  v19 = sub_13DB68();
  if (v19)
  {
LABEL_23:
    v20 = sub_CB70C(a3, a4, a5, &v41);
    if (v20)
    {
      if (sub_160EF0(0x38u, 4))
      {
        v26 = sub_160F34(0x38u);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p %d %d %d %d %p\n", v27, 56, v28, "AVE_BlkPool", "Create", 88, "ret == 0", a1, a2, a3, a4, a5, &v41);
          v39 = sub_175AE4();
          v29 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p %d %d %d %d %p", v39, 56, v29, "AVE_BlkPool", "Create");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p %d %d %d %d %p", v27, 56, v28, "AVE_BlkPool", "Create");
        }
      }

      if (v19)
      {
        sub_13DBD0(v19);
      }
    }

    else
    {
      v30 = v41;
      *a1 = a2;
      a1[1] = a3;
      a1[2] = a4;
      a1[3] = a5;
      a1[4] = a6;
      *(a1 + 3) = v19;
      sub_CB4F4((a1 + 8), v30);
    }

    goto LABEL_17;
  }

  if (sub_160EF0(0x38u, 4))
  {
    v31 = sub_160F34(0x38u);
    v32 = sub_175AE4();
    v33 = sub_160F68(4);
    if (v31)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %d %d %d %d\n", v32, 56, v33, "AVE_BlkPool", "Create", 82, "pMutex != __null", a1, a2, a3, a4, a5, a6);
      v34 = sub_175AE4();
      v38 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %d %d %d %d", v34, 56, v38, "AVE_BlkPool", "Create");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %d %d %d %d", v32, 56, v33, "AVE_BlkPool", "Create");
    }
  }

  v20 = 4294966293;
LABEL_17:
  if (sub_160EF0(0x38u, 6))
  {
    v21 = sub_160F34(0x38u);
    v22 = sub_175AE4();
    v23 = sub_160F68(6);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p 0x%x %d %d %d %d %d\n", v22, 56, v23, "AVE_BlkPool", "Create", a1, a2, a3, a4, a5, a6, v20);
      v24 = sub_175AE4();
      v37 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %d %d %d %d %d", v24, 56, v37);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %d %d %d %d %d", v22, 56, v23);
    }
  }

  return v20;
}

uint64_t sub_134BDC(int *a1, int a2, const void *a3, int a4, int a5, int a6, unsigned int a7)
{
  v44[0] = 0;
  if (sub_160EF0(0x38u, 6))
  {
    v12 = sub_160F34(0x38u);
    v13 = sub_175AE4();
    v14 = sub_160F68(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d %d %d %d\n", v13, 56, v14, "AVE_BlkPool", "CreateWithMem", a1, a2, a3, a4, a5, a6, a7);
      v15 = sub_175AE4();
      v38 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d %d %d %d", v15, 56, v38, "AVE_BlkPool");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d %d %d %d", v13, 56, v14, "AVE_BlkPool");
    }
  }

  if (a4 < 1 || a5 < 1 || a6 < 1 || a7 > 0x40 || a7 && ((a7 + 127) & a7) != 0)
  {
    if (sub_160EF0(0x38u, 4))
    {
      v16 = sub_160F34(0x38u);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %p %d %d %d %d\n", v17, 56, v18, "AVE_BlkPool", "CreateWithMem", 146, "msize > 0 && num > 0 && size > 0 && alignment >= 0 && alignment <= 64 && (alignment == 0 || (alignment & (alignment - 1)) == 0)", a1, a2, a3, a4, a5, a6, a7);
        v19 = sub_175AE4();
        v39 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %p %d %d %d %d", v19, 56, v39, "AVE_BlkPool", "CreateWithMem", 146);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %p %d %d %d %d", v17, 56, v18, "AVE_BlkPool", "CreateWithMem", 146);
      }
    }

    v21 = 4294966295;
    goto LABEL_18;
  }

  if ((a2 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_24;
  }

  v20 = sub_13DB68();
  if (v20)
  {
LABEL_24:
    v21 = sub_CB894(a3, a4, a5, a6, a7, v44);
    if (v21)
    {
      if (sub_160EF0(0x38u, 4))
      {
        v29 = a6;
        v30 = sub_160F34(0x38u);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p 0x%x %p %d %d %d %d %p\n", v31, 56, v32, "AVE_BlkPool", "CreateWithMem", 159, "ret == 0", a1, a2, a3, a4, a5, v29, a7, v44);
          v41 = sub_175AE4();
          v33 = sub_160F68(4);
          a6 = v29;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p 0x%x %p %d %d %d %d %p", v41, 56, v33, "AVE_BlkPool", "CreateWithMem", 159, "ret == 0");
        }

        else
        {
          a6 = v29;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p 0x%x %p %d %d %d %d %p", v31, 56, v32, "AVE_BlkPool", "CreateWithMem", 159, "ret == 0");
        }
      }

      if (v20)
      {
        sub_13DBD0(v20);
      }
    }

    else
    {
      *a1 = a2;
      a1[1] = a5;
      a1[2] = a6;
      a1[3] = a7;
      a1[4] = 0;
      *(a1 + 3) = v20;
      sub_CB4F4((a1 + 8), v44[0]);
    }

    goto LABEL_18;
  }

  if (sub_160EF0(0x38u, 4))
  {
    v34 = sub_160F34(0x38u);
    v35 = sub_175AE4();
    v36 = sub_160F68(4);
    if (v34)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %p %d %d %d %d\n", v35, 56, v36, "AVE_BlkPool", "CreateWithMem", 153, "pMutex != __null", a1, a2, a3, a4, a5, a6, a7);
      v37 = sub_175AE4();
      v40 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %p %d %d %d %d", v37, 56, v40, "AVE_BlkPool", "CreateWithMem", 153);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %p %d %d %d %d", v35, 56, v36, "AVE_BlkPool", "CreateWithMem", 153);
    }
  }

  v21 = 4294966293;
LABEL_18:
  if (sub_160EF0(0x38u, 6))
  {
    v22 = a6;
    v23 = sub_160F34(0x38u);
    v24 = sub_175AE4();
    v25 = sub_160F68(6);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d %d %d %d\n", v24, 56, v25, "AVE_BlkPool", "CreateWithMem", a1, a2, a3, a4, a5, v22, a7, v21);
      v26 = sub_175AE4();
      v27 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d %d %d %d", v26, 56, v27, "AVE_BlkPool", "CreateWithMem");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d %d %d %d", v24, 56, v25, "AVE_BlkPool", "CreateWithMem");
    }
  }

  return v21;
}

uint64_t sub_1353B4(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  for (i = sub_CB5C0(a1 + 32); ; i = sub_CB408(v5))
  {
    v5 = i;
    if (i == sub_CB5DC(a1 + 32))
    {
      return 4294966289;
    }

    if (sub_CBBCC(v5))
    {
      break;
    }
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t sub_135428(uint64_t a1, void *a2, _DWORD *a3)
{
  v21 = 0;
  if (a2)
  {
    *a2 = 0;
    if (*a1)
    {
      sub_13DC18(*(a1 + 24));
    }

    v6 = sub_1353B4(a1, &v21);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 64) >= *(a1 + 16))
      {
        goto LABEL_17;
      }

      v8 = sub_CB70C(*(a1 + 4), *(a1 + 8), *(a1 + 12), &v21);
      if (v8)
      {
        v7 = v8;
        if (sub_160EF0(0x38u, 6))
        {
          v9 = sub_160F34(0x38u);
          v10 = sub_175AE4();
          v11 = sub_160F68(6);
          if (v9)
          {
            printf("%lld %d AVE %s: %s::%s:%d failed to create block buffer %p %d %d %d %p %d\n", v10, 56, v11, "AVE_BlkPool", "Alloc", 377, a1, *(a1 + 4), *(a1 + 8), *(a1 + 12), &v21, v7);
            v10 = sub_175AE4();
            v11 = sub_160F68(6);
            v12 = *(a1 + 4);
            v19 = *(a1 + 8);
            v20 = *(a1 + 12);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d failed to create block buffer %p %d %d %d %p %d", v10, 56, v11, "AVE_BlkPool", "Alloc");
        }

        goto LABEL_17;
      }

      sub_CB4F4(a1 + 32, v21);
      ++*(a1 + 64);
    }

    v7 = sub_CBA7C(v21, a2, a3);
LABEL_17:
    if (*a1)
    {
      sub_13DC4C(*(a1 + 24));
    }

    return v7;
  }

  if (sub_160EF0(0x38u, 4))
  {
    v13 = sub_160F34(0x38u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p\n", v14, 56, v15, "AVE_BlkPool", "Alloc", 353, "pAddr != __null", a1, a3);
      v16 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p", v16, 56, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p", v14, 56, v15);
    }
  }

  return 4294966295;
}

uint64_t sub_1356F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  *a3 = 0;
  for (i = sub_CB5C0(a1 + 32); ; i = sub_CB408(v7))
  {
    v7 = i;
    if (i == sub_CB5DC(a1 + 32))
    {
      return 4294966295;
    }

    if (sub_CBA4C(v7, a2))
    {
      break;
    }
  }

  result = 0;
  *a3 = v7;
  return result;
}

uint64_t sub_135770(uint64_t a1, uint64_t *a2)
{
  v32 = 0;
  if (*a1)
  {
    sub_13DC18(*(a1 + 24));
  }

  v4 = sub_1356F4(a1, a2, &v32);
  if (v4)
  {
    v5 = v4;
    if (!sub_160EF0(0x38u, 4))
    {
      goto LABEL_20;
    }

    v6 = sub_160F34(0x38u);
    v7 = sub_175AE4();
    v8 = sub_160F68(4);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d\n", v7, 56, v8, "AVE_BlkPool", "Free", 447, "ret == 0", a1, a2, &v32, v5);
      v9 = sub_175AE4();
      v23 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d", v9, 56, v23, "AVE_BlkPool", "Free");
      goto LABEL_20;
    }

    v31 = v5;
    v29 = a2;
    v30 = &v32;
    v28 = a1;
    v27 = 447;
    v25 = v8;
    v15 = "%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d";
LABEL_19:
    syslog(3, v15, v7, 56, v25, "AVE_BlkPool", "Free", v27, "ret == 0", v28, v29, v30, v31);
    goto LABEL_20;
  }

  v10 = v32;
  v11 = sub_CBB2C(v32, a2);
  if (v11)
  {
    v5 = v11;
    if (!sub_160EF0(0x38u, 4))
    {
      goto LABEL_20;
    }

    v12 = sub_160F34(0x38u);
    v7 = sub_175AE4();
    v13 = sub_160F68(4);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d\n", v7, 56, v13, "AVE_BlkPool", "Free", 451, "ret == 0", a1, &v32, a2, v5);
      v14 = sub_175AE4();
      v24 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d", v14, 56, v24, "AVE_BlkPool", "Free");
      goto LABEL_20;
    }

    v30 = a2;
    v31 = v5;
    v28 = a1;
    v29 = &v32;
    v27 = 451;
    v25 = v13;
    v15 = "%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d";
    goto LABEL_19;
  }

  v16 = sub_CB5F4(a1 + 32);
  if (*(a1 + 64))
  {
    v17 = v16;
    while (v17 != sub_CB610(a1 + 32))
    {
      v10 = v17;
      v17 = sub_CB3EC(v17);
      if (sub_CBBB8(v10))
      {
        v32 = v10;
        sub_CB424(v10);
        v5 = sub_CB9D8(v10);
        if (v5 && sub_160EF0(0x38u, 5))
        {
          v19 = sub_160F34(0x38u);
          v20 = sub_175AE4();
          v21 = sub_160F68(5);
          if (v19)
          {
            printf("%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d\n", v20, 56, v21, "AVE_BlkPool", "Free", 468, a1, v10, v5);
            v22 = sub_175AE4();
            v26 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v22, 56, v26);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v20, 56, v21);
          }
        }

        --*(a1 + 64);
        goto LABEL_20;
      }

      if (!*(a1 + 64))
      {
        break;
      }
    }
  }

  v5 = 0;
  v32 = v10;
LABEL_20:
  if (*a1)
  {
    sub_13DC4C(*(a1 + 24));
  }

  return v5;
}

uint64_t sub_135B60(uint64_t a1, int a2, void *a3)
{
  if (*a1)
  {
    sub_13DC18(*(a1 + 24));
  }

  if (*(a1 + 64))
  {
    v6 = 4294966295;
  }

  else
  {
    v7 = sub_CB47C((a1 + 32));
    v6 = sub_CBBF8(v7, a2, a3);
  }

  if (*a1)
  {
    sub_13DC4C(*(a1 + 24));
  }

  return v6;
}

uint64_t sub_135BDC(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (*a1)
  {
    sub_13DC18(*(a1 + 24));
  }

  if (*(a1 + 64))
  {
    v6 = 4294966295;
  }

  else
  {
    v7 = sub_CB47C((a1 + 32));
    v6 = sub_CBC34(v7, a2, a3);
  }

  if (*a1)
  {
    sub_13DC4C(*(a1 + 24));
  }

  return v6;
}

uint64_t AVE_Plugin_AVC_CreateInstance(uint64_t a1, const void *a2, void *a3)
{
  memset(v68, 0, sizeof(v68));
  v6 = sub_175AE4();
  sub_160F98();
  sub_151990();
  v7 = sub_1502C8();
  sub_1621A4(v7 + 552);
  v67 = a3;
  if (sub_160EF0(0xBu, 0))
  {
    v8 = sub_160F34(0xBu);
    v9 = sub_175AE4();
    v10 = sub_160F68(0);
    if (v8)
    {
      printf("%lld %d AVE %s: Compiled %s in %s on %s %s\n", v9, 11, v10, "905.5.3", "prod", "Oct 23 2025", "06:45:21");
      v9 = sub_175AE4();
      sub_160F68(0);
    }

    syslog(3, "%lld %d AVE %s: Compiled %s in %s on %s %s", v9);
  }

  v11 = sub_160D68(v68, 128);
  if (v11 >= 1 && sub_160EF0(0xBu, 0))
  {
    v12 = sub_160F34(0xBu);
    v13 = sub_175AE4();
    v14 = sub_160F68(0);
    if (v12)
    {
      printf("%lld %d AVE %s: Temporary Path: %s\n", v13, 11, v14, v68);
      v15 = sub_175AE4();
      v60 = sub_160F68(0);
      syslog(3, "%lld %d AVE %s: Temporary Path: %s", v15, 11, v60, v68);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Temporary Path: %s", v13, 11, v14, v68);
    }
  }

  if (sub_160EF0(0xBu, 6))
  {
    v16 = sub_160F34(0xBu);
    v17 = sub_175AE4();
    v18 = sub_160F68(6);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %lld\n", v17, 11, v18, "AVE_Plugin_AVC_CreateInstance", a1, a2, a3, 0);
      v17 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %lld", v17, 11);
  }

  if (!a3)
  {
    if (sub_160EF0(0xBu, 4))
    {
      v25 = sub_160F34(0xBu);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p %p %lld %d\n", v26, 11, v27, "AVE_Plugin_AVC_CreateInstance", 1237, "instanceOut != __null", a1, a2, 0, 0, v11);
        v26 = sub_175AE4();
        v62 = sub_160F68(4);
      }

      else
      {
        v62 = v27;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p %p %lld %d", v26, 11, v62, "AVE_Plugin_AVC_CreateInstance", 1237);
    }

    goto LABEL_36;
  }

  if (a1 != 1635148593)
  {
    if (sub_160EF0(0xBu, 4))
    {
      v28 = sub_160F34(0xBu);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | mismatched codec %d %p %p %lld %d\n", v29, 11, v30, "AVE_Plugin_AVC_CreateInstance", 1242, "codecType == kCMVideoCodecType_H264", a1, a2, a3, 0, v11);
        v31 = sub_175AE4();
        v63 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | mismatched codec %d %p %p %lld %d", v31, 11, v63, "AVE_Plugin_AVC_CreateInstance", 1242);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | mismatched codec %d %p %p %lld %d", v29, 11, v30, "AVE_Plugin_AVC_CreateInstance", 1242);
      }
    }

LABEL_36:
    v33 = 0;
    v40 = 0;
    v35 = 4294966295;
    goto LABEL_41;
  }

  kdebug_trace();
  *a3 = 0;
  VTVideoEncoderGetClassID();
  v19 = CMDerivedObjectCreate();
  if (v19)
  {
    v20 = v19;
    if (sub_160EF0(0xBu, 4))
    {
      v21 = sub_160F34(0xBu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create AVC Object %d %p %p %lld %d\n", v22, 11, v23, "AVE_Plugin_AVC_CreateInstance", 1252, "res == noErr", 1635148593, a2, a3, 0, v20);
        v24 = sub_175AE4();
        v61 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create AVC Object %d %p %p %lld %d", v24, 11, v61, "AVE_Plugin_AVC_CreateInstance", 1252);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create AVC Object %d %p %p %lld %d", v22, 11, v23, "AVE_Plugin_AVC_CreateInstance", 1252);
      }
    }

    v35 = 4294966292;
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v33 = DerivedStorage;
      bzero(DerivedStorage, 0x46B0uLL);
      v34 = sub_13DB68();
      *v33 = v34;
      if (v34)
      {
        v35 = sub_F959C(v33, 0);
        if (!v35)
        {
          v40 = v33[7];
          *a3 = 0;
          goto LABEL_40;
        }

        if (sub_160EF0(0xBu, 4))
        {
          v36 = sub_160F34(0xBu);
          v37 = sub_175AE4();
          v38 = sub_160F68(4);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create AVC %d %p %p %lld %p %p 0x%llx %d\n", v37, 11, v38, "AVE_Plugin_AVC_CreateInstance", 1269, "ret == 0", 1635148593, a2, a3, 0, 0, v33, 0, v35);
            v39 = sub_175AE4();
            v64 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create AVC %d %p %p %lld %p %p 0x%llx %d", v39, 11, v64, "AVE_Plugin_AVC_CreateInstance", 1269, "ret == 0", 1635148593, a2);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create AVC %d %p %p %lld %p %p 0x%llx %d", v37, 11, v38, "AVE_Plugin_AVC_CreateInstance", 1269, "ret == 0", 1635148593, a2);
          }
        }
      }

      else
      {
        if (sub_160EF0(0xBu, 4))
        {
          v56 = sub_160F34(0xBu);
          v57 = sub_175AE4();
          v58 = sub_160F68(4);
          if (v56)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create mutex %d %p %p %lld %p %p %d\n", v57, 11, v58, "AVE_Plugin_AVC_CreateInstance", 1264, "pPI->pPIMutex != __null", 1635148593, a2, a3, 0, 0, v33, v11);
            v59 = sub_175AE4();
            v66 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create mutex %d %p %p %lld %p %p %d", v59, 11, v66, "AVE_Plugin_AVC_CreateInstance", 1264, "pPI->pPIMutex != __null", 1635148593);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create mutex %d %p %p %lld %p %p %d", v57, 11, v58, "AVE_Plugin_AVC_CreateInstance", 1264, "pPI->pPIMutex != __null", 1635148593);
          }
        }

        v35 = 4294966293;
      }

      if (*v33)
      {
        sub_13DBD0(*v33);
        *v33 = 0;
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v52 = sub_160F34(0xBu);
        v53 = sub_175AE4();
        v54 = sub_160F68(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC Object %d %p %p %lld %p %d\n", v53, 11, v54, "AVE_Plugin_AVC_CreateInstance", 1257, "pPI != __null", 1635148593, a2, a3, 0, 0, v11);
          v55 = sub_175AE4();
          v65 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC Object %d %p %p %lld %p %d", v55, 11, v65, "AVE_Plugin_AVC_CreateInstance", 1257, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC Object %d %p %p %lld %p %d", v53, 11, v54, "AVE_Plugin_AVC_CreateInstance", 1257, "pPI != __null");
        }
      }

      v35 = 4294966296;
    }
  }

  v40 = 0;
  v33 = 0;
LABEL_40:
  kdebug_trace();
LABEL_41:
  v41 = sub_175AE4() - v6;
  if (v41 >= 50000)
  {
    v42 = 5;
  }

  else
  {
    v42 = 6;
  }

  v43 = sub_175994(v35);
  if (v35)
  {
    v44 = 4;
  }

  else
  {
    v44 = v42;
  }

  if (sub_160EF0(0xBu, v44))
  {
    v45 = sub_160F34(0xBu);
    v46 = sub_175AE4();
    v47 = sub_160F68(v44);
    if (v45)
    {
      v48 = a1;
      printf("%lld %d AVE %s: %s Exit %d %p %p %lld %p %p %lld %d %d\n", v46, 11, v47, "AVE_Plugin_AVC_CreateInstance", a1, a2, v67, v40, 0, v33, v41, v35, v43);
      v49 = sub_175AE4();
      v50 = sub_160F68(v44);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %lld %p %p %lld %d %d", v49, 11, v50, "AVE_Plugin_AVC_CreateInstance", v48, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %lld %p %p %lld %d %d", v46, 11, v47, "AVE_Plugin_AVC_CreateInstance", a1, a2);
    }
  }

  return v43;
}

uint64_t AVE_Plugin_AVC_SetCallback(const void *a1, _OWORD *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %lld\n", v6, 11, v7, "AVE_Plugin_AVC_SetCallback", a1, a2, 0);
      v6 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %lld", v6);
  }

  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v10 = v9[7];
      kdebug_trace();
      v11 = 0;
      v12 = a2[1];
      *(v9 + 8) = *a2;
      *(v9 + 9) = v12;
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v17 = sub_160F34(0xBu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_AVC_SetCallback", 1335, "pPI != __null", a1, a2, 0, 0);
          v20 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v20, 11, v31, "AVE_Plugin_AVC_SetCallback");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v18, 11, v19, "AVE_Plugin_AVC_SetCallback");
        }
      }

      v10 = 0;
      v11 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v9);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v13 = sub_160F34(0xBu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v14, 11, v15, "AVE_Plugin_AVC_SetCallback", 1330, "encoder != __null && pCallback != __null", a1, a2, 0, 0);
        v16 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v16, 11, v30, "AVE_Plugin_AVC_SetCallback");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v14, 11, v15, "AVE_Plugin_AVC_SetCallback");
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  v21 = sub_175AE4() - v4;
  if (v21 >= 50000)
  {
    v22 = 5;
  }

  else
  {
    v22 = 6;
  }

  v23 = sub_175994(v11);
  if (v11)
  {
    v24 = 4;
  }

  else
  {
    v24 = v22;
  }

  if (sub_160EF0(0xBu, v24))
  {
    v25 = sub_160F34(0xBu);
    v26 = sub_175AE4();
    v27 = sub_160F68(v24);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_AVC_SetCallback", a1, a2, v10, v21, v11, v23);
      v28 = sub_175AE4();
      v32 = sub_160F68(v24);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v26, 11, v27);
    }
  }

  return v23;
}

uint64_t sub_136B80(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, v5, "AVE_Plugin_AVC_Invalidate", a1, 0);
      v6 = sub_175AE4();
      v31 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v31, "AVE_Plugin_AVC_Invalidate", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, v5, "AVE_Plugin_AVC_Invalidate", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v9 = v8[7];
      kdebug_trace();
      v10 = sub_E8690(v8);
      if (v10 && sub_160EF0(0xBu, 4))
      {
        v11 = sub_160F34(0xBu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to stop AVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_AVC_Invalidate", 55, "ret == 0", a1, v9, v8, v10);
          v14 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop AVC %p %lld %p %d", v14, 11, v32, "AVE_Plugin_AVC_Invalidate");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop AVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_AVC_Invalidate");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v19 = sub_160F34(0xBu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_AVC_Invalidate", 44, "pPI != __null", a1, 0, 0);
          v22 = sub_175AE4();
          v34 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v22, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v20, 11, v21);
        }
      }

      v9 = 0;
      v10 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v15 = sub_160F34(0xBu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_AVC_Invalidate", 39, "object != __null", 0, 0, 0);
        v18 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 11, v17);
      }
    }

    v9 = 0;
    v10 = 4294966295;
  }

  v23 = sub_175AE4() - v2;
  if (v23 >= 50000)
  {
    v24 = 5;
  }

  else
  {
    v24 = 6;
  }

  v25 = sub_175994(v10);
  if (v10)
  {
    v26 = 4;
  }

  else
  {
    v26 = v24;
  }

  if (sub_160EF0(0xBu, v26))
  {
    v27 = sub_160F34(0xBu);
    v28 = sub_175AE4();
    v29 = sub_160F68(v26);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_AVC_Invalidate", a1, v9, v23, v10, v25);
      v28 = sub_175AE4();
      sub_160F68(v26);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v28, 11);
  }

  return v25;
}

void sub_137084(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, v5, "AVE_Plugin_AVC_Finalize", a1, 0);
      v6 = sub_175AE4();
      v30 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v30, "AVE_Plugin_AVC_Finalize", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, v5, "AVE_Plugin_AVC_Finalize", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v9 = v8[7];
      kdebug_trace();
      v10 = sub_E893C(v8);
      if (v10 && sub_160EF0(0xBu, 4))
      {
        v11 = sub_160F34(0xBu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to destroy AVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_AVC_Finalize", 110, "ret == 0", a1, v9, v8, v10);
          v14 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to destroy AVC %p %lld %p %d", v14, 11, v31, "AVE_Plugin_AVC_Finalize");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to destroy AVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_AVC_Finalize");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v19 = sub_160F34(0xBu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_AVC_Finalize", 99, "pPI != __null", a1, 0, 0);
          v22 = sub_175AE4();
          v33 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v22, 11, v33);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v20, 11, v21);
        }
      }

      v9 = 0;
      v10 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
    sub_13DBD0(*v8);
    *v8 = 0;
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v15 = sub_160F34(0xBu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_AVC_Finalize", 94, "object != __null", 0, 0, 0);
        v18 = sub_175AE4();
        v32 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v32);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 11, v17);
      }
    }

    v9 = 0;
    v10 = 4294966295;
  }

  v23 = sub_175AE4() - v2;
  if (v23 >= 50000)
  {
    v24 = 5;
  }

  else
  {
    v24 = 6;
  }

  v25 = sub_175994(v10);
  if (v10)
  {
    v26 = 4;
  }

  else
  {
    v26 = v24;
  }

  if (sub_160EF0(0xBu, v26))
  {
    v27 = sub_160F34(0xBu);
    v28 = sub_175AE4();
    v29 = sub_160F68(v26);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_AVC_Finalize", a1, v9, v23, v10, v25);
      v28 = sub_175AE4();
      sub_160F68(v26);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v28, 11);
  }
}

uint64_t sub_13758C(const void *a1, const __CFString *a2, const void *a3, const void *a4)
{
  v8 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v9 = sub_160F34(0xBu);
    v10 = sub_175AE4();
    v11 = sub_160F68(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %lld\n", v10, 11, v11, "AVE_Plugin_AVC_CopyProperty", a1, a2, a3, a4, 0);
      v12 = sub_175AE4();
      v34 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %lld", v12, 11, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %lld", v10, 11, v11);
    }
  }

  if (a1 && a2 && a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v14 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v15 = v14[7];
      kdebug_trace();
      v16 = sub_F4DE0(v14, a3, a2, a4);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v21 = sub_160F34(0xBu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %p %lld %d\n", v22, 11, v23, "AVE_Plugin_AVC_CopyProperty", 218, "pPI != __null", a1, a2, a3, a4, 0, 0);
          v24 = sub_175AE4();
          v36 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %p %lld %d", v24, 11, v36, "AVE_Plugin_AVC_CopyProperty", 218, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %p %lld %d", v22, 11, v23, "AVE_Plugin_AVC_CopyProperty", 218, "pPI != __null");
        }
      }

      v15 = 0;
      v16 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v14);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v17 = sub_160F34(0xBu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_AVC_CopyProperty", 213, "object != __null && propertyKey != __null && propertyValueOut != __null", a1, a2, a3, a4, 0, 0);
        v20 = sub_175AE4();
        v35 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d", v20, 11, v35, "AVE_Plugin_AVC_CopyProperty", 213, "object != __null && propertyKey != __null && propertyValueOut != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d", v18, 11, v19, "AVE_Plugin_AVC_CopyProperty", 213, "object != __null && propertyKey != __null && propertyValueOut != __null");
      }
    }

    v15 = 0;
    v16 = 4294966295;
  }

  v25 = sub_175AE4() - v8;
  if (v25 >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 7;
  }

  v27 = sub_175994(v16);
  if (v16)
  {
    v26 = 4;
  }

  if (sub_160EF0(0xBu, v26))
  {
    v28 = a2;
    v29 = a3;
    v30 = sub_160F34(0xBu);
    v38 = sub_175AE4();
    v31 = sub_160F68(v26);
    if (v30)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d\n", v38, 11, v31, "AVE_Plugin_AVC_CopyProperty", a1, v28, v29, a4, v15, v25, v16, v27);
      v32 = sub_175AE4();
      v37 = sub_160F68(v26);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v32, 11, v37, "AVE_Plugin_AVC_CopyProperty", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v38, 11, v31, "AVE_Plugin_AVC_CopyProperty", a1);
    }
  }

  return v27;
}

uint64_t sub_137A68(const void *a1, const __CFString *a2, const void *a3)
{
  v6 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v7 = sub_160F34(0xBu);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld\n", v8, 11, v9, "AVE_Plugin_AVC_SetProperty", a1, a2, a3, 0);
      v8 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld", v8, 11);
  }

  if (a1 && a2 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v11 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v12 = v11[7];
      kdebug_trace();
      v13 = sub_E7EA8(v11, a2, a3);
      kdebug_trace();
      sub_13DC4C(*v11);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v18 = sub_160F34(0xBu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d\n", v19, 11, v20, "AVE_Plugin_AVC_SetProperty", 161, "pPI != __null", a1, a2, a3, 0, 0);
          v21 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d", v21, 11, v32, "AVE_Plugin_AVC_SetProperty", 161);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d", v19, 11, v20, "AVE_Plugin_AVC_SetProperty", 161);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v14 = sub_160F34(0xBu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d\n", v15, 11, v16, "AVE_Plugin_AVC_SetProperty", 156, "object != __null && propertyKey != __null && propertyValue != __null", a1, a2, a3, 0, 0);
        v17 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v17, 11, v31, "AVE_Plugin_AVC_SetProperty", 156);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v15, 11, v16, "AVE_Plugin_AVC_SetProperty", 156);
      }
    }

    v12 = 0;
    v13 = 4294966295;
  }

  v22 = sub_175AE4() - v6;
  if (v22 >= 50000)
  {
    v23 = 5;
  }

  else
  {
    v23 = 7;
  }

  v24 = sub_175994(v13);
  if (v13)
  {
    v23 = 4;
  }

  if (sub_160EF0(0xBu, v23))
  {
    v25 = sub_160F34(0xBu);
    v26 = sub_175AE4();
    v27 = sub_160F68(v23);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_AVC_SetProperty", a1, a2, a3, v12, v22, v13, v24);
      v28 = sub_175AE4();
      v29 = sub_160F68(v23);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v28, 11, v29, "AVE_Plugin_AVC_SetProperty");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v26, 11, v27, "AVE_Plugin_AVC_SetProperty");
    }
  }

  return v24;
}

uint64_t sub_137ED8(const void *a1, pthread_mutex_t *a2, unint64_t a3, pthread_mutex_t *a4)
{
  v5 = a3;
  v6 = HIDWORD(a3);
  v48 = 0;
  v7 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v8 = sub_160F34(0xBu);
    v9 = sub_175AE4();
    v10 = sub_160F68(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d %d %p %lld\n", v9, 11, v10, "AVE_Plugin_AVC_StartSession", a1, a2, v5, v6, a4, 0);
      v11 = sub_175AE4();
      v39 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d %p %lld", v11, 11, v39);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d %p %lld", v9, 11, v10);
    }
  }

  v45 = v6;
  if (a1 && a2 && v5 >= 1 && v6 > 0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v13 = DerivedStorage;
    if (DerivedStorage)
    {
      v48 = __PAIR64__(v6, v5);
      sub_13DC18(*DerivedStorage);
      v14 = v13[7];
      kdebug_trace();
      v13[2] = a2;
      v13[14] = a4;
      *(v13 + 8) = 1;
      v15 = sub_E8E20(v13, &v48);
      if (!v15)
      {
        v29 = v13[14];
        v24 = a4;
        if (v29)
        {
          CFRetain(v29);
        }

        v16 = 0;
        goto LABEL_30;
      }

      v16 = v15;
      if (sub_160EF0(0xBu, 4))
      {
        v17 = sub_160F34(0xBu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d\n", v18, 11, v19, "AVE_Plugin_AVC_StartSession", 301, "ret == 0", a1, a2, v5, v45, a4, v14, v13, v16);
          v44 = sub_175AE4();
          v40 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d", v44, 11, v40, "AVE_Plugin_AVC_StartSession", 301, "ret == 0", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d", v18, 11, v19, "AVE_Plugin_AVC_StartSession", 301, "ret == 0", a1);
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v25 = sub_160F34(0xBu);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d\n", v26, 11, v27, "AVE_Plugin_AVC_StartSession", 281, "pPI != __null", a1, a2, v5, v6, a4, 0, 0);
          v28 = sub_175AE4();
          v42 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d", v28, 11, v42, "AVE_Plugin_AVC_StartSession", 281, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d", v26, 11, v27, "AVE_Plugin_AVC_StartSession", 281, "pPI != __null");
        }
      }

      v14 = 0;
      v16 = 4294966296;
    }

    v24 = a4;
    v13[2] = 0;
    v13[14] = 0;
LABEL_30:
    kdebug_trace();
    sub_13DC4C(*v13);
    goto LABEL_31;
  }

  if (sub_160EF0(0xBu, 4))
  {
    v20 = sub_160F34(0xBu);
    v21 = sub_175AE4();
    v22 = sub_160F68(4);
    if (v20)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d\n", v21, 11, v22, "AVE_Plugin_AVC_StartSession", 275, "encoder != __null && session != __null && dimensions.width > 0 && dimensions.height > 0", a1, a2, v5, v6, a4, 0, 0);
      v23 = sub_175AE4();
      v24 = a4;
      v41 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v23, 11, v41, "AVE_Plugin_AVC_StartSession", 275, "encoder != __null && session != __null && dimensions.width > 0 && dimensions.height > 0");
    }

    else
    {
      v24 = a4;
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v21, 11, v22, "AVE_Plugin_AVC_StartSession", 275, "encoder != __null && session != __null && dimensions.width > 0 && dimensions.height > 0");
    }
  }

  else
  {
    v24 = a4;
  }

  v14 = 0;
  v16 = 4294966295;
LABEL_31:
  v30 = sub_175AE4() - v7;
  if (v30 >= 50000)
  {
    v31 = 5;
  }

  else
  {
    v31 = 6;
  }

  v32 = sub_175994(v16);
  if (v16)
  {
    v33 = 4;
  }

  else
  {
    v33 = v31;
  }

  if (sub_160EF0(0xBu, v33))
  {
    v34 = sub_160F34(0xBu);
    v35 = sub_175AE4();
    v36 = sub_160F68(v33);
    if (v34)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d %p %lld %lld %d %d\n", v35, 11, v36, "AVE_Plugin_AVC_StartSession", a1, a2, v5, v45, v24, v14, v30, v16, v32);
      v37 = sub_175AE4();
      v43 = sub_160F68(v33);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d %p %lld %lld %d %d", v37, 11, v43, "AVE_Plugin_AVC_StartSession", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d %p %lld %lld %d %d", v35, 11, v36, "AVE_Plugin_AVC_StartSession", a1);
    }
  }

  return v32;
}

uint64_t sub_13862C(const void *a1, const void *a2, const void *a3, uint64_t *a4, void *a5, const void *a6, _DWORD *a7)
{
  v14 = sub_175AE4();
  v75 = a7;
  if (sub_160EF0(0xBu, 8))
  {
    v15 = sub_160F34(0xBu);
    v16 = sub_175AE4();
    v17 = sub_160F68(8);
    v18 = *a4;
    v19 = *(a4 + 2);
    v20 = *(a4 + 3);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld\n", v16, 11, v17, "AVE_Plugin_AVC_EncodeFrame", a1, a2, a3, v18, v19, v20, a4[2], *a5, *(a5 + 2), *(a5 + 3), a5[2], a6, a7, 0);
      v21 = sub_175AE4();
      v22 = sub_160F68(8);
      v66 = *(a5 + 3);
      v68 = a5[2];
      v59 = *a5;
      v62 = *(a5 + 2);
      v58 = a4[2];
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld", v21, 11, v22, "AVE_Plugin_AVC_EncodeFrame", a1, a2, a3, *a4, *(a4 + 2), *(a4 + 3));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld", v16, 11, v17, "AVE_Plugin_AVC_EncodeFrame", a1, a2, a3, v18, v19, v20);
    }
  }

  v73 = a3;
  v74 = a1;
  if (a1 && a3)
  {
    v23 = a6;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v25 = DerivedStorage;
    if (DerivedStorage)
    {
      v26 = a4[1];
      v80 = a4[2];
      v76 = *a5;
      v77 = a5[1];
      v78 = a5[2];
      v79 = *a4;
      sub_13DC18(*DerivedStorage);
      v27 = v25[7];
      kdebug_trace();
      v28 = sub_EA07C();
      v25[6] = (v25[6] + 1);
    }

    else if (sub_160EF0(0xBu, 4))
    {
      v37 = sub_160F34(0xBu);
      v38 = sub_175AE4();
      v39 = sub_160F68(4);
      v40 = *a4;
      v41 = *(a4 + 2);
      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d %lld %d %p %p %lld %d\n", v38, 11, v39, "AVE_Plugin_AVC_EncodeFrame", 381, "pPI != __null", a1, a2, a3, v40, v41, *a5, *(a5 + 2), v23, v75, 0, 0);
        v70 = sub_175AE4();
        v42 = sub_160F68(4);
        v61 = *a5;
        v64 = *(a5 + 2);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d %lld %d %p %p %lld %d", v70, 11, v42, "AVE_Plugin_AVC_EncodeFrame", 381, "pPI != __null", a1, a2, a3, *a4, *(a4 + 2));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d %lld %d %p %p %lld %d", v38, 11, v39, "AVE_Plugin_AVC_EncodeFrame", 381, "pPI != __null", a1, a2, a3, v40, v41);
      }

      v27 = 0;
      v28 = 4294966296;
    }

    else
    {
      v27 = 0;
      v28 = 4294966296;
    }

    v36 = a2;
    kdebug_trace();
    if (v75)
    {
      *v75 |= 1u;
    }

    sub_13DC4C(*v25);
    a6 = v23;
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v29 = sub_160F34(0xBu);
      v30 = sub_175AE4();
      v31 = sub_160F68(4);
      v32 = *a4;
      v33 = *(a4 + 2);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d\n", v30, 11, v31, "AVE_Plugin_AVC_EncodeFrame", 373, "encoder != __null && imageBuffer != __null", a1, a2, a3, v32, v33, *a5, *(a5 + 2), a6, a7, 0, 0);
        v34 = sub_175AE4();
        v35 = sub_160F68(4);
        v60 = *a5;
        v63 = *(a5 + 2);
        v56 = a3;
        v36 = a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d", v34, 11, v35, "AVE_Plugin_AVC_EncodeFrame", 373, "encoder != __null && imageBuffer != __null", a1, a2, v56, *a4, *(a4 + 2));
      }

      else
      {
        v57 = a3;
        v36 = a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d", v30, 11, v31, "AVE_Plugin_AVC_EncodeFrame", 373, "encoder != __null && imageBuffer != __null", a1, a2, v57, v32, v33);
      }
    }

    else
    {
      v36 = a2;
    }

    v27 = 0;
    v28 = 4294966295;
  }

  v43 = sub_175AE4() - v14;
  if (v43 >= 50000)
  {
    v44 = 5;
  }

  else
  {
    v44 = 8;
  }

  v45 = sub_175994(v28);
  if (v28)
  {
    v46 = 4;
  }

  else
  {
    v46 = v44;
  }

  if (sub_160EF0(0xBu, v46))
  {
    v47 = sub_160F34(0xBu);
    v71 = sub_175AE4();
    v48 = sub_160F68(v46);
    v49 = *a4;
    v50 = *(a4 + 2);
    v51 = *(a4 + 3);
    v52 = a4[2];
    v53 = *a5;
    if (v47)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d\n", v71, 11, v48, "AVE_Plugin_AVC_EncodeFrame", v74, v36, v73, v49, v50, v51, v52, v53, *(a5 + 2), *(a5 + 3), a5[2], a6, v75, v27, v43, v28, v45);
      v72 = sub_175AE4();
      v54 = sub_160F68(v46);
      v67 = *(a5 + 3);
      v69 = a5[2];
      v65 = *(a5 + 2);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d", v72, 11, v54, "AVE_Plugin_AVC_EncodeFrame", v74, v36, v73, *a4, *(a4 + 2), *(a4 + 3), a4[2], *a5);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d", v71, 11, v48, "AVE_Plugin_AVC_EncodeFrame", v74, v36, v73, v49, v50, v51, v52, v53);
    }
  }

  return v45;
}

uint64_t sub_138D3C(const void *a1, void *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    v8 = *(a2 + 2);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld %d %lld\n", v6, 11, v7, "AVE_Plugin_AVC_CompleteFrames", a1, *a2, *(a2 + 2), 0);
      v6 = sub_175AE4();
      sub_160F68(7);
      v9 = *a2;
    }

    v36 = *(a2 + 2);
    syslog(3, "%lld %d AVE %s: %s Enter %p %lld %d %lld", v6, 11);
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v11 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v12 = v11[7];
      kdebug_trace();
      v13 = sub_F46C0(v11);
      if (v13 && sub_160EF0(0xBu, 4))
      {
        v14 = sub_160F34(0xBu);
        v15 = sub_175AE4();
        v16 = sub_160F68(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %d %lld %p %d\n", v15, 11, v16, "AVE_Plugin_AVC_CompleteFrames", 477, "ret == 0", a1, *a2, *(a2 + 2), v12, v11, v13);
          v15 = sub_175AE4();
          v16 = sub_160F68(4);
          v39 = *(a2 + 2);
          v38 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %d %lld %p %d", v15, 11, v16, "AVE_Plugin_AVC_CompleteFrames", 477, "ret == 0");
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v21 = sub_160F34(0xBu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d\n", v22, 11, v23, "AVE_Plugin_AVC_CompleteFrames", 465, "pPI != __null", a1, 0, 0);
          v24 = sub_175AE4();
          v34 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v24, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v22, 11, v23);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v11);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v17 = sub_160F34(0xBu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d\n", v18, 11, v19, "AVE_Plugin_AVC_CompleteFrames", 460, "encoder != __null", 0, *a2, *(a2 + 2), 0, 0);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        v20 = *a2;
        v40 = *(a2 + 2);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d", v18, 11, v19, "AVE_Plugin_AVC_CompleteFrames", 460);
    }

    v12 = 0;
    v13 = 4294966295;
  }

  v25 = sub_175AE4() - v4;
  if (v25 >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 7;
  }

  v27 = sub_175994(v13);
  if (v13)
  {
    v26 = 4;
  }

  if (sub_160EF0(0xBu, v26))
  {
    v28 = sub_160F34(0xBu);
    v29 = sub_175AE4();
    v30 = sub_160F68(v26);
    if (v28)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d\n", v29, 11, v30, "AVE_Plugin_AVC_CompleteFrames", a1, *a2, *(a2 + 2), v12, v25, v13, v27);
      v31 = sub_175AE4();
      v32 = sub_160F68(v26);
      v35 = *a2;
      v37 = *(a2 + 2);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d", v31, 11, v32, "AVE_Plugin_AVC_CompleteFrames");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d", v29, 11, v30, "AVE_Plugin_AVC_CompleteFrames");
    }
  }

  return v27;
}

uint64_t sub_1392BC(const void *a1, void *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %lld\n", v6, 11, v7, "AVE_Plugin_AVC_CopySupportedPropertyDictionary", a1, a2, 0);
      v6 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %lld", v6);
  }

  if (a1 && a2)
  {
    *a2 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v10 = *(v9 + 56);
      kdebug_trace();
      v11 = sub_F4A58(v9, a2);
      if (v11 && sub_160EF0(0xBu, 4))
      {
        v12 = sub_160F34(0xBu);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC property dictionary %p %p %lld %d\n", v13, 11, v14, "AVE_Plugin_AVC_CopySupportedPropertyDictionary", 540, "ret == 0", a1, a2, v10, v11);
          v15 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC property dictionary %p %p %lld %d", v15, 11, v32, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC property dictionary %p %p %lld %d", v13, 11, v14, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v20 = sub_160F34(0xBu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d\n", v21, 11, v22, "AVE_Plugin_AVC_CopySupportedPropertyDictionary", 528, "pPI != __null", a1, a2, 0, 0);
          v23 = sub_175AE4();
          v34 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v23, 11, v34, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v21, 11, v22, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
        }
      }

      v10 = 0;
      v11 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v9);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v16 = sub_160F34(0xBu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v17, 11, v18, "AVE_Plugin_AVC_CopySupportedPropertyDictionary", 521, "encoder != __null && supportedPropertyDictionaryOut != __null", a1, a2, 0, 0);
        v19 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v19, 11, v33, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v17, 11, v18, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  v24 = sub_175AE4() - v4;
  if (v24 >= 50000)
  {
    v25 = 5;
  }

  else
  {
    v25 = 7;
  }

  v26 = sub_175994(v11);
  if (v11)
  {
    v25 = 4;
  }

  if (sub_160EF0(0xBu, v25))
  {
    v27 = sub_160F34(0xBu);
    v28 = sub_175AE4();
    v29 = sub_160F68(v25);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_AVC_CopySupportedPropertyDictionary", a1, a2, v10, v24, v11, v26);
      v30 = sub_175AE4();
      v35 = sub_160F68(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v30, 11, v35);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v29);
    }
  }

  return v26;
}

uint64_t sub_1397EC(const void *a1, const __CFDictionary *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %lld\n", v6, 11, v7, "AVE_Plugin_AVC_SetProperties", a1, a2, 0);
      v6 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %lld", v6);
  }

  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v9 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v10 = v9[7];
      kdebug_trace();
      CFDictionaryApplyFunction(a2, sub_13C614, v9);
      kdebug_trace();
      sub_13DC4C(*v9);
      v11 = 0;
      v12 = 1;
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v17 = sub_160F34(0xBu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_AVC_SetProperties", 608, "pPI != __null", a1, a2, 0, 0);
          v20 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v20, 11, v31, "AVE_Plugin_AVC_SetProperties");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v18, 11, v19, "AVE_Plugin_AVC_SetProperties");
        }
      }

      v12 = 0;
      v10 = 0;
      v11 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v13 = sub_160F34(0xBu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v14, 11, v15, "AVE_Plugin_AVC_SetProperties", 603, "encoder != __null && propertyDictionary != __null", a1, a2, 0, 0);
        v16 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v16, 11, v30, "AVE_Plugin_AVC_SetProperties");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v14, 11, v15, "AVE_Plugin_AVC_SetProperties");
      }
    }

    v12 = 0;
    v10 = 0;
    v11 = 4294966295;
  }

  v21 = sub_175AE4() - v4;
  if (v21 >= 50000)
  {
    v22 = 5;
  }

  else
  {
    v22 = 7;
  }

  v23 = sub_175994(v11);
  if (v12)
  {
    v24 = v22;
  }

  else
  {
    v24 = 4;
  }

  if (sub_160EF0(0xBu, v24))
  {
    v25 = sub_160F34(0xBu);
    v26 = sub_175AE4();
    v27 = sub_160F68(v24);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_AVC_SetProperties", a1, a2, v10, v21, v11, v23);
      v28 = sub_175AE4();
      v32 = sub_160F68(v24);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v26, 11, v27);
    }
  }

  return v23;
}

uint64_t sub_139C44(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, v5, "AVE_Plugin_AVC_PrepareToEncodeFrames", a1, 0);
      v6 = sub_175AE4();
      v31 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v31, "AVE_Plugin_AVC_PrepareToEncodeFrames", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, v5, "AVE_Plugin_AVC_PrepareToEncodeFrames", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v9 = v8[7];
      kdebug_trace();
      v10 = sub_F50AC();
      if (v10 && sub_160EF0(0xBu, 4))
      {
        v11 = sub_160F34(0xBu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_AVC_PrepareToEncodeFrames", 672, "ret == 0", a1, v9, v8, v10);
          v14 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %lld %p %d", v14, 11, v32, "AVE_Plugin_AVC_PrepareToEncodeFrames");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_AVC_PrepareToEncodeFrames");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v19 = sub_160F34(0xBu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_AVC_PrepareToEncodeFrames", 661, "pPI != __null", a1, 0, 0);
          v22 = sub_175AE4();
          v34 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v22, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v20, 11, v21);
        }
      }

      v9 = 0;
      v10 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v15 = sub_160F34(0xBu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_AVC_PrepareToEncodeFrames", 657, "encoder != __null", 0, 0, 0);
        v18 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 11, v17);
      }
    }

    v9 = 0;
    v10 = 4294966295;
  }

  v23 = sub_175AE4() - v2;
  if (v23 >= 50000)
  {
    v24 = 5;
  }

  else
  {
    v24 = 6;
  }

  v25 = sub_175994(v10);
  if (v10)
  {
    v26 = 4;
  }

  else
  {
    v26 = v24;
  }

  if (sub_160EF0(0xBu, v26))
  {
    v27 = sub_160F34(0xBu);
    v28 = sub_175AE4();
    v29 = sub_160F68(v26);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_AVC_PrepareToEncodeFrames", a1, v9, v23, v10, v25);
      v28 = sub_175AE4();
      sub_160F68(v26);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v28, 11);
  }

  return v25;
}

uint64_t sub_13A148(const void *a1, int a2, const void *a3)
{
  v6 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v7 = sub_160F34(0xBu);
    v8 = sub_175AE4();
    v9 = sub_160F68(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%x %p %lld\n", v8, 11, v9, "AVE_Plugin_AVC_BeginPass", a1, a2, a3, 0);
      v8 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x %p %lld", v8, 11);
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v11 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v12 = v11[7];
      kdebug_trace();
      v13 = sub_F55C4(v11, a2);
      if (v13 && sub_160EF0(0xBu, 4))
      {
        v14 = sub_160F34(0xBu);
        v15 = sub_175AE4();
        v16 = sub_160F68(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to begin AVC Multipass %p 0x%x %lld %p %d\n", v15, 11, v16, "AVE_Plugin_AVC_BeginPass", 732, "ret == 0", a1, a2, v12, v11, v13);
          v17 = sub_175AE4();
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to begin AVC Multipass %p 0x%x %lld %p %d", v17, 11, v35, "AVE_Plugin_AVC_BeginPass", 732);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to begin AVC Multipass %p 0x%x %lld %p %d", v15, 11, v16, "AVE_Plugin_AVC_BeginPass", 732);
        }
      }

      kdebug_trace();
      sub_13DC4C(*v11);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v22 = sub_160F34(0xBu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p 0x%x %p %lld %d\n", v23, 11, v24, "AVE_Plugin_AVC_BeginPass", 721, "pPI != __null", a1, a2, a3, 0, 0);
          v25 = sub_175AE4();
          v37 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p 0x%x %p %lld %d", v25, 11, v37, "AVE_Plugin_AVC_BeginPass", 721);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p 0x%x %p %lld %d", v23, 11, v24, "AVE_Plugin_AVC_BeginPass", 721);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v18 = sub_160F34(0xBu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x %p %lld %d\n", v19, 11, v20, "AVE_Plugin_AVC_BeginPass", 716, "encoder != __null", 0, a2, a3, 0, 0);
        v21 = sub_175AE4();
        v36 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x %p %lld %d", v21, 11, v36, "AVE_Plugin_AVC_BeginPass", 716);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x %p %lld %d", v19, 11, v20, "AVE_Plugin_AVC_BeginPass", 716);
      }
    }

    v12 = 0;
    v13 = 4294966295;
  }

  if ((sub_175AE4() - v6) >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 6;
  }

  v27 = sub_175994(v13);
  if (v13)
  {
    v28 = 4;
  }

  else
  {
    v28 = v26;
  }

  if (sub_160EF0(0xBu, v28))
  {
    v29 = sub_160F34(0xBu);
    v30 = sub_175AE4();
    v31 = sub_160F68(v28);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%x %p %lld %d\n", v30, 11, v31, "AVE_Plugin_AVC_BeginPass", a1, a2, a3, v12, v13);
      v32 = sub_175AE4();
      v33 = sub_160F68(v28);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %p %lld %d", v32, 11, v33);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %p %lld %d", v30, 11, v31);
    }
  }

  return v27;
}

uint64_t sub_13A6B8(const void *a1, _BYTE *a2, const void *a3)
{
  v38 = 0;
  v6 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v7 = sub_160F34(0xBu);
    v8 = sub_175AE4();
    v9 = sub_160F68(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld\n", v8, 11, v9, "AVE_Plugin_AVC_EndPass", a1, a2, a3, 0);
      v8 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld", v8, 11);
  }

  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v11 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v12 = v11[7];
      kdebug_trace();
      *a2 = 0;
      v13 = sub_F5C3C(v11, &v38);
      if (v13)
      {
        if (sub_160EF0(0xBu, 4))
        {
          v14 = sub_160F34(0xBu);
          v15 = sub_175AE4();
          v16 = sub_160F68(4);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to end AVC Multipass %p %p %p %lld %p %d\n", v15, 11, v16, "AVE_Plugin_AVC_EndPass", 796, "ret == 0", a1, a2, a3, v12, v11, v13);
            v17 = sub_175AE4();
            v35 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to end AVC Multipass %p %p %p %lld %p %d", v17, 11, v35, "AVE_Plugin_AVC_EndPass", 796, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to end AVC Multipass %p %p %p %lld %p %d", v15, 11, v16, "AVE_Plugin_AVC_EndPass", 796, "ret == 0");
          }
        }
      }

      else if (v38)
      {
        *a2 = 1;
      }

      kdebug_trace();
      sub_13DC4C(*v11);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v22 = sub_160F34(0xBu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d\n", v23, 11, v24, "AVE_Plugin_AVC_EndPass", 783, "pPI != __null", a1, a2, a3, 0, 0);
          v25 = sub_175AE4();
          v37 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d", v25, 11, v37, "AVE_Plugin_AVC_EndPass", 783);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d", v23, 11, v24, "AVE_Plugin_AVC_EndPass", 783);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v18 = sub_160F34(0xBu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d\n", v19, 11, v20, "AVE_Plugin_AVC_EndPass", 778, "encoder != __null && furtherPassesRequestedOut != __null", a1, a2, a3, 0, 0);
        v21 = sub_175AE4();
        v36 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v21, 11, v36, "AVE_Plugin_AVC_EndPass", 778);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v19, 11, v20, "AVE_Plugin_AVC_EndPass", 778);
      }
    }

    v12 = 0;
    v13 = 4294966295;
  }

  if ((sub_175AE4() - v6) >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 6;
  }

  v27 = sub_175994(v13);
  if (v13)
  {
    v28 = 4;
  }

  else
  {
    v28 = v26;
  }

  if (sub_160EF0(0xBu, v28))
  {
    v29 = sub_160F34(0xBu);
    v30 = sub_175AE4();
    v31 = sub_160F68(v28);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %d\n", v30, 11, v31, "AVE_Plugin_AVC_EndPass", a1, a2, a3, v12, v13);
      v32 = sub_175AE4();
      v33 = sub_160F68(v28);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d", v32, 11, v33);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d", v30, 11, v31);
    }
  }

  return v27;
}

uint64_t sub_13AC24(const void *a1, pthread_mutex_t *a2, const void *a3, unint64_t a4, pthread_mutex_t *a5)
{
  v6 = a4;
  v8 = HIDWORD(a4);
  v51 = 0;
  v9 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v10 = sub_160F34(0xBu);
    v11 = sub_175AE4();
    v12 = sub_160F68(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %d %d %p %lld\n", v11, 11, v12, "AVE_Plugin_AVC_StartTileSession", a1, a2, a3, v6, v8, a5, 0);
      v13 = sub_175AE4();
      v43 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %p %lld", v13, 11, v43, "AVE_Plugin_AVC_StartTileSession");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %p %lld", v11, 11, v12, "AVE_Plugin_AVC_StartTileSession");
    }
  }

  v48 = a3;
  if (a1 && a2 && v6 >= 1 && v8 > 0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v15 = DerivedStorage;
    if (DerivedStorage)
    {
      v51 = __PAIR64__(v8, v6);
      sub_13DC18(*DerivedStorage);
      v16 = v15[7];
      kdebug_trace();
      v15[2] = a2;
      v15[14] = a5;
      *(v15 + 8) = 2;
      v17 = sub_F6F68(v15, &v51);
      if (!v17)
      {
        v31 = v15[14];
        if (v31)
        {
          CFRetain(v31);
        }

        v18 = 0;
        goto LABEL_29;
      }

      v18 = v17;
      if (sub_160EF0(0xBu, 4))
      {
        v19 = sub_160F34(0xBu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d\n", v20, 11, v21, "AVE_Plugin_AVC_StartTileSession", 877, "ret == 0", a1, a2, v6, v8, a5, v16, v15, v18);
          v47 = sub_175AE4();
          v44 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d", v47, 11, v44, "AVE_Plugin_AVC_StartTileSession", 877, "ret == 0", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d", v20, 11, v21, "AVE_Plugin_AVC_StartTileSession", 877, "ret == 0", a1);
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v26 = a5;
        v27 = sub_160F34(0xBu);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        v42 = v28;
        a5 = v26;
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d\n", v42, 11, v29, "AVE_Plugin_AVC_StartTileSession", 857, "pPI != __null", a1, a2, v6, v8, v26, 0, 0);
          v30 = sub_175AE4();
          v46 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d", v30, 11, v46, "AVE_Plugin_AVC_StartTileSession", 857, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d", v42, 11, v29, "AVE_Plugin_AVC_StartTileSession", 857, "pPI != __null");
        }
      }

      v16 = 0;
      v18 = 4294966296;
    }

    v15[2] = 0;
    v15[14] = 0;
LABEL_29:
    kdebug_trace();
    sub_13DC4C(*v15);
    goto LABEL_30;
  }

  if (sub_160EF0(0xBu, 4))
  {
    v22 = sub_160F34(0xBu);
    v23 = sub_175AE4();
    v24 = sub_160F68(4);
    if (v22)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d\n", v23, 11, v24, "AVE_Plugin_AVC_StartTileSession", 851, "encoder != __null && session != __null && tileDimensions.width > 0 && tileDimensions.height > 0", a1, a2, v6, v8, a5, 0, 0);
      v25 = sub_175AE4();
      v45 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v25, 11, v45, "AVE_Plugin_AVC_StartTileSession", 851, "encoder != __null && session != __null && tileDimensions.width > 0 && tileDimensions.height > 0");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v23, 11, v24, "AVE_Plugin_AVC_StartTileSession", 851, "encoder != __null && session != __null && tileDimensions.width > 0 && tileDimensions.height > 0");
    }
  }

  v16 = 0;
  v18 = 4294966295;
LABEL_30:
  v32 = sub_175AE4() - v9;
  if (v32 >= 50000)
  {
    v33 = 5;
  }

  else
  {
    v33 = 6;
  }

  v34 = sub_175994(v18);
  if (v18)
  {
    v33 = 4;
  }

  if (sub_160EF0(0xBu, v33))
  {
    v35 = v16;
    v36 = sub_160F34(0xBu);
    v37 = sub_175AE4();
    v38 = sub_160F68(v33);
    if (v36)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d %d %p %lld %lld %d %d\n", v37, 11, v38, "AVE_Plugin_AVC_StartTileSession", a1, a2, v48, v6, v8, a5, v35, v32, v18, v34);
      v39 = sub_175AE4();
      v40 = sub_160F68(v33);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %p %lld %lld %d %d", v39, 11, v40, "AVE_Plugin_AVC_StartTileSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %p %lld %lld %d %d", v37, 11, v38, "AVE_Plugin_AVC_StartTileSession", a1, a2);
    }
  }

  return v34;
}

uint64_t sub_13B3C0(const void *a1, int a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld\n", v6, 11, v7, "AVE_Plugin_AVC_PrepareToEncodeTiles", a1, a2, 0);
      v6 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld", v6);
  }

  if (a1)
  {
    if (a2)
    {
      if (sub_160EF0(0xBu, 4))
      {
        v8 = sub_160F34(0xBu);
        v9 = sub_175AE4();
        v10 = sub_160F68(4);
        if (v8)
        {
          printf("%lld %d AVE %s: %s:%d %s | don't support partial tiles %p %d %lld %d\n", v9, 11, v10, "AVE_Plugin_AVC_PrepareToEncodeTiles", 940, "!expectPartialTiles", a1, a2, 0, 0);
          v11 = sub_175AE4();
          v37 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | don't support partial tiles %p %d %lld %d", v11, 11, v37, "AVE_Plugin_AVC_PrepareToEncodeTiles");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | don't support partial tiles %p %d %lld %d", v9, 11, v10, "AVE_Plugin_AVC_PrepareToEncodeTiles");
        }
      }

      v18 = 0;
      v19 = 4294966294;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v17 = DerivedStorage;
      if (DerivedStorage)
      {
        sub_13DC18(*DerivedStorage);
        v18 = v17[7];
        kdebug_trace();
        v19 = sub_F50AC();
        if (v19 && sub_160EF0(0xBu, 4))
        {
          v20 = sub_160F34(0xBu);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %d %lld %p %d\n", v21, 11, v22, "AVE_Plugin_AVC_PrepareToEncodeTiles", 955, "ret == 0", a1, 0, v18, v17, v19);
            v23 = sub_175AE4();
            v39 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %d %lld %p %d", v23, 11, v39, "AVE_Plugin_AVC_PrepareToEncodeTiles", 955);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %d %lld %p %d", v21, 11, v22, "AVE_Plugin_AVC_PrepareToEncodeTiles", 955);
          }
        }
      }

      else
      {
        if (sub_160EF0(0xBu, 4))
        {
          v24 = sub_160F34(0xBu);
          v25 = sub_175AE4();
          v26 = sub_160F68(4);
          if (v24)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %d %lld %d\n", v25, 11, v26, "AVE_Plugin_AVC_PrepareToEncodeTiles", 944, "pPI != __null", a1, 0, 0, 0);
            v27 = sub_175AE4();
            v40 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %d %lld %d", v27, 11, v40, "AVE_Plugin_AVC_PrepareToEncodeTiles");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %d %lld %d", v25, 11, v26, "AVE_Plugin_AVC_PrepareToEncodeTiles");
          }
        }

        v18 = 0;
        v19 = 4294966296;
      }

      kdebug_trace();
      sub_13DC4C(*v17);
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v12 = sub_160F34(0xBu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %lld %d\n", v13, 11, v14, "AVE_Plugin_AVC_PrepareToEncodeTiles", 935, "encoder != __null", 0, a2, 0, 0);
        v15 = sub_175AE4();
        v38 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %lld %d", v15, 11, v38, "AVE_Plugin_AVC_PrepareToEncodeTiles");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %lld %d", v13, 11, v14, "AVE_Plugin_AVC_PrepareToEncodeTiles");
      }
    }

    v18 = 0;
    v19 = 4294966295;
  }

  v28 = sub_175AE4() - v4;
  if (v28 >= 50000)
  {
    v29 = 5;
  }

  else
  {
    v29 = 6;
  }

  v30 = sub_175994(v19);
  if (v19)
  {
    v31 = 4;
  }

  else
  {
    v31 = v29;
  }

  if (sub_160EF0(0xBu, v31))
  {
    v32 = sub_160F34(0xBu);
    v33 = sub_175AE4();
    v34 = sub_160F68(v31);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %lld %d %d\n", v33, 11, v34, "AVE_Plugin_AVC_PrepareToEncodeTiles", a1, a2, v18, v28, v19, v30);
      v35 = sub_175AE4();
      v41 = sub_160F68(v31);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %lld %d %d", v35, 11, v41);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %lld %d %d", v33, 11, v34);
    }
  }

  return v30;
}

uint64_t sub_13B9EC(const void *a1, const void *a2, const void *a3, unint64_t a4, unint64_t a5, const void *a6, _DWORD *a7)
{
  v8 = a5;
  v11 = HIDWORD(a4);
  v12 = HIDWORD(a5);
  v13 = sub_175AE4();
  v45 = v11;
  v46 = v8;
  v48 = v12;
  if (sub_160EF0(0xBu, 8))
  {
    v42 = v13;
    v14 = sub_160F34(0xBu);
    v15 = sub_175AE4();
    v16 = sub_160F68(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %d %d %d %d %p %p %lld\n", v15, 11, v16, "AVE_Plugin_AVC_EncodeTile", a1, a2, a3, a4, v11, v8, v12, a6, a7, 0);
      v17 = sub_175AE4();
      v38 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %d %d %p %p %lld", v17, 11, v38, "AVE_Plugin_AVC_EncodeTile", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %d %d %p %p %lld", v15, 11, v16, "AVE_Plugin_AVC_EncodeTile", a1, a2);
    }

    v13 = v42;
  }

  if (a1 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v19 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v20 = v19[7];
      kdebug_trace();
      v21 = sub_F7BF0();
      v19[6] = (v19[6] + 1);
    }

    else if (sub_160EF0(0xBu, 4))
    {
      v44 = v13;
      v26 = sub_160F34(0xBu);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %d %d %d %d %p %p %lld %d\n", v27, 11, v28, "AVE_Plugin_AVC_EncodeTile", 1022, "pPI != __null", a1, a2, a3, a4, v11, v8, v12, a6, a7, 0, 0);
        v41 = sub_175AE4();
        v40 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %d %d %d %d %p %p %lld %d", v41, 11, v40, "AVE_Plugin_AVC_EncodeTile", 1022, "pPI != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %d %d %d %d %p %p %lld %d", v27, 11, v28, "AVE_Plugin_AVC_EncodeTile", 1022, "pPI != __null", a1, a2, a3);
      }

      v20 = 0;
      v21 = 4294966296;
      v13 = v44;
    }

    else
    {
      v20 = 0;
      v21 = 4294966296;
    }

    kdebug_trace();
    if (a7)
    {
      *a7 |= 1u;
    }

    sub_13DC4C(*v19);
  }

  else if (sub_160EF0(0xBu, 4))
  {
    v43 = v13;
    v22 = sub_160F34(0xBu);
    v23 = sub_175AE4();
    v24 = sub_160F68(4);
    if (v22)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d %d %d %p %p %lld %d\n", v23, 11, v24, "AVE_Plugin_AVC_EncodeTile", 1014, "encoder != __null && imageBuffer != __null", a1, a2, a3, a4, v11, v8, v12, a6, a7, 0, 0);
      v25 = sub_175AE4();
      v39 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d %d %d %p %p %lld %d", v25, 11, v39, "AVE_Plugin_AVC_EncodeTile", 1014, "encoder != __null && imageBuffer != __null", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d %d %d %p %p %lld %d", v23, 11, v24, "AVE_Plugin_AVC_EncodeTile", 1014, "encoder != __null && imageBuffer != __null", a1, a2, a3);
    }

    v20 = 0;
    v21 = 4294966295;
    v13 = v43;
  }

  else
  {
    v20 = 0;
    v21 = 4294966295;
  }

  v29 = sub_175AE4() - v13;
  if (v29 >= 50000)
  {
    v30 = 5;
  }

  else
  {
    v30 = 8;
  }

  v31 = sub_175994(v21);
  if (v21)
  {
    v32 = 4;
  }

  else
  {
    v32 = v30;
  }

  if (sub_160EF0(0xBu, v32))
  {
    v33 = sub_160F34(0xBu);
    v34 = sub_175AE4();
    v35 = sub_160F68(v32);
    if (v33)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d %d %d %d %p %p %lld %lld %d %d\n", v34, 11, v35, "AVE_Plugin_AVC_EncodeTile", a1, a2, a3, a4, v45, v46, v48, a6, a7, v20, v29, v21, v31);
      v47 = sub_175AE4();
      v36 = sub_160F68(v32);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d %d %p %p %lld %lld %d %d", v47, 11, v36, "AVE_Plugin_AVC_EncodeTile", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d %d %p %p %lld %lld %d %d", v34, 11, v35, "AVE_Plugin_AVC_EncodeTile", a1, a2, a3, a4);
    }
  }

  return v31;
}

uint64_t sub_13C108(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(7);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, v5, "AVE_Plugin_AVC_CompleteTiles", a1, 0);
      v6 = sub_175AE4();
      v31 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v31, "AVE_Plugin_AVC_CompleteTiles", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, v5, "AVE_Plugin_AVC_CompleteTiles", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v9 = v8[7];
      kdebug_trace();
      v10 = sub_F46C0(v8);
      if (v10 && sub_160EF0(0xBu, 4))
      {
        v11 = sub_160F34(0xBu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_AVC_CompleteTiles", 1107, "ret == 0", a1, v9, v8, v10);
          v14 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %p %d", v14, 11, v32, "AVE_Plugin_AVC_CompleteTiles");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_AVC_CompleteTiles");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v19 = sub_160F34(0xBu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_AVC_CompleteTiles", 1096, "pPI != __null", a1, 0, 0);
          v22 = sub_175AE4();
          v34 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v22, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v20, 11, v21);
        }
      }

      v9 = 0;
      v10 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v15 = sub_160F34(0xBu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_AVC_CompleteTiles", 1091, "encoder != __null", 0, 0, 0);
        v18 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 11, v17);
      }
    }

    v9 = 0;
    v10 = 4294966295;
  }

  v23 = sub_175AE4() - v2;
  if (v23 >= 50000)
  {
    v24 = 5;
  }

  else
  {
    v24 = 7;
  }

  v25 = sub_175994(v10);
  if (v10)
  {
    v24 = 4;
  }

  if (sub_160EF0(0xBu, v24))
  {
    v26 = sub_160F34(0xBu);
    v27 = sub_175AE4();
    v28 = sub_160F68(v24);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v27, 11, v28, "AVE_Plugin_AVC_CompleteTiles", a1, v9, v23, v10, v25);
      v29 = sub_175AE4();
      sub_160F68(v24);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v29, 11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v27, 11);
    }
  }

  return v25;
}

void sub_13C614(const __CFString *a1, const void *a2, const void *a3)
{
  v6 = sub_E7EA8(a3, a1, a2);
  if (v6)
  {
    v7 = v6;
    if (sub_160EF0(0xBu, 4))
    {
      v8 = sub_160F34(0xBu);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d fail to set property AVC %p %p %p %d\n", v9, 11, v10, "AVE_Plugin_AVC_ApplierFunc", 576, a1, a2, a3, v7);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d fail to set property AVC %p %p %p %d", v11, 11, v12);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d fail to set property AVC %p %p %p %d", v9, 11, v10);
      }
    }
  }
}

uint64_t sub_13C738(int *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    v4 = sub_14B9CC(@"MotionEstimationModeID", *a1, a2);
    if (!v4)
    {
      v13 = sub_14B9CC(@"MotionEstimationHorizontalSearchRange", a1[1], a2);
      if (v13)
      {
        v5 = v13;
        if (!sub_160EF0(0x36u, 4))
        {
          return v5;
        }

        v14 = sub_160F34(0x36u);
        v7 = sub_175AE4();
        v8 = sub_160F68(4);
        if (!v14)
        {
          goto LABEL_29;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", v7, 54, v8, "AVE_SearchRange_Make", 82, "ret == 0", a1, a2, v5);
      }

      else
      {
        v15 = sub_14B9CC(@"MotionEstimationVerticalSearchRange", a1[2], a2);
        if (v15)
        {
          v5 = v15;
          if (!sub_160EF0(0x36u, 4))
          {
            return v5;
          }

          v16 = sub_160F34(0x36u);
          v7 = sub_175AE4();
          v8 = sub_160F68(4);
          if (!v16)
          {
            goto LABEL_29;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", v7, 54, v8, "AVE_SearchRange_Make", 87, "ret == 0", a1, a2, v5);
        }

        else
        {
          v5 = sub_14B9CC(@"MotionEstimationCacheMode", a1[3], a2);
          if (!v5 || !sub_160EF0(0x36u, 4))
          {
            return v5;
          }

          v17 = sub_160F34(0x36u);
          v7 = sub_175AE4();
          v8 = sub_160F68(4);
          if (!v17)
          {
            goto LABEL_29;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", v7, 54, v8, "AVE_SearchRange_Make", 92, "ret == 0", a1, a2, v5);
        }
      }

      v9 = sub_175AE4();
      v19 = sub_160F68(4);
      goto LABEL_28;
    }

    v5 = v4;
    if (sub_160EF0(0x36u, 4))
    {
      v6 = sub_160F34(0x36u);
      v7 = sub_175AE4();
      v8 = sub_160F68(4);
      if (v6)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", v7, 54, v8, "AVE_SearchRange_Make", 77, "ret == 0", a1, a2, v5);
        v9 = sub_175AE4();
        v19 = sub_160F68(4);
LABEL_28:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d", v9, 54, v19);
        return v5;
      }

LABEL_29:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d", v7, 54, v8);
    }
  }

  else
  {
    if (sub_160EF0(0x36u, 4))
    {
      v10 = sub_160F34(0x36u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 54, v12, "AVE_SearchRange_Make", 72, "pEntry != __null && pDict != __null", a1, a2);
        v11 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 54);
    }

    return 4294966295;
  }

  return v5;
}

uint64_t sub_13CB28(int *a1, int a2, __CFArray *a3)
{
  if (a1 && a2 >= 1 && a3)
  {
    v6 = 0;
    for (i = a1; ; i += 4)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!Mutable)
      {
        break;
      }

      v9 = Mutable;
      v10 = sub_13C738(i, Mutable);
      if (v10)
      {
        v11 = v10;
        CFRelease(v9);
        return v11;
      }

      CFArrayAppendValue(a3, v9);
      CFRelease(v9);
      if (a2 == ++v6)
      {
        return 0;
      }
    }

    if (sub_160EF0(0x36u, 4))
    {
      v16 = sub_160F34(0x36u);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p %d\n", v17, 54, v18, "AVE_SearchRange_MakeArray", 168, "pDict != __null", a1, a2, a3, v6);
        v19 = sub_175AE4();
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p %d", v19, 54, v22, "AVE_SearchRange_MakeArray");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p %d", v17, 54, v18, "AVE_SearchRange_MakeArray");
      }
    }

    return 4294966293;
  }

  else
  {
    if (sub_160EF0(0x36u, 4))
    {
      v12 = sub_160F34(0x36u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v13, 54, v14, "AVE_SearchRange_MakeArray", 160, "pEntry != __null && num > 0 && pArray != __null", a1, a2, a3);
        v15 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v15, 54, v21);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v13, 54, v14);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_13CDC4(const void *a1, unsigned int *a2)
{
  memset(&rect, 0, sizeof(rect));
  if (!a1 || !a2)
  {
    if (sub_160EF0(0x32u, 4))
    {
      v13 = sub_160F34(0x32u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v14, 50, v15, "AVE_PIP_RetrieveEntry", 28, "pDict != __null && psEntry != __null", a1, a2);
        v14 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v14, 50);
    }

    return 4294966295;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      v19 = CFGetTypeID(a1);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %p %ld\n", v17, 30, v18, "AVE_PIP_RetrieveEntry", 33, "CFDictionaryGetTypeID() == CFGetTypeID(pDict)", a1, a2, v19);
        v17 = sub_175AE4();
        v18 = sub_160F68(4);
        v45 = a2;
        v48 = CFGetTypeID(a1);
      }

      else
      {
        v45 = a2;
        v48 = v19;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %p %ld", v17, 30, v18, "AVE_PIP_RetrieveEntry", 33, "CFDictionaryGetTypeID() == CFGetTypeID(pDict)", a1, v45, v48);
    }

    return 4294965293;
  }

  Value = CFDictionaryGetValue(a1, @"Rectangle");
  if (!Value)
  {
    if (sub_160EF0(0x32u, 4))
    {
      v21 = sub_160F34(0x32u);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get AVE_kVTCompressionPictureInPictureRegion_Rectangle %p %p\n", v22, 50, v23, "AVE_PIP_RetrieveEntry", 39, "pRect != __null", a1, a2);
        v22 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVE_kVTCompressionPictureInPictureRegion_Rectangle %p %p", v22, 50);
    }

    return 4294966288;
  }

  v6 = Value;
  v7 = CFDictionaryGetTypeID();
  if (v7 != CFGetTypeID(v6))
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v24 = sub_160F34(0x1Eu);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      v27 = CFGetTypeID(v6);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %p %p %ld\n", v25, 30, v26, "AVE_PIP_RetrieveEntry", 44, "CFDictionaryGetTypeID() == CFGetTypeID(pRect)", a1, a2, v6, v27);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        CFGetTypeID(v6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %p %p %ld", v25, 30, v26, "AVE_PIP_RetrieveEntry");
    }

    return 4294965293;
  }

  if (CGRectMakeWithDictionaryRepresentation(v6, &rect))
  {
    *a2 = vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(rect.origin)), vcvtq_s64_f64(vrndaq_f64(rect.size)));
    if (sub_160EF0(0x32u, 8))
    {
      v8 = sub_160F34(0x32u);
      v9 = sub_175AE4();
      v10 = sub_160F68(8);
      v11 = a2[2];
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d PIP Rect(%d %d %dx%d)\n", v9, 50, v10, "AVE_PIP_RetrieveEntry", 55, *a2, a2[1], a2[2], a2[3]);
        v9 = sub_175AE4();
        sub_160F68(8);
        v12 = *a2;
        v44 = a2[2];
        v47 = a2[3];
        v43 = a2[1];
      }

      else
      {
        v46 = a2[2];
      }

      syslog(3, "%lld %d AVE %s: %s:%d PIP Rect(%d %d %dx%d)", v9, 50);
    }

    v32 = sub_14C90C(a1, @"BorderTop", a2 + 6);
    if (!v32)
    {
      v37 = sub_14C90C(a1, @"BorderLeft", a2 + 4);
      if (v37)
      {
        v20 = v37;
        if (!sub_160EF0(0x32u, 4))
        {
          return v20;
        }

        v38 = sub_160F34(0x32u);
        v34 = sub_175AE4();
        v35 = sub_160F68(4);
        if (!v38)
        {
          goto LABEL_62;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v34, 50, v35, "AVE_PIP_RetrieveEntry", 66, "ret == 0", a1, a2, v20);
      }

      else
      {
        v39 = sub_14C90C(a1, @"BorderRight", a2 + 5);
        if (v39)
        {
          v20 = v39;
          if (!sub_160EF0(0x32u, 4))
          {
            return v20;
          }

          v40 = sub_160F34(0x32u);
          v34 = sub_175AE4();
          v35 = sub_160F68(4);
          if (!v40)
          {
            goto LABEL_62;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v34, 50, v35, "AVE_PIP_RetrieveEntry", 71, "ret == 0", a1, a2, v20);
        }

        else
        {
          v20 = sub_14C90C(a1, @"BorderBottom", a2 + 7);
          if (!v20 || !sub_160EF0(0x32u, 4))
          {
            return v20;
          }

          v41 = sub_160F34(0x32u);
          v34 = sub_175AE4();
          v35 = sub_160F68(4);
          if (!v41)
          {
            goto LABEL_62;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v34, 50, v35, "AVE_PIP_RetrieveEntry", 76, "ret == 0", a1, a2, v20);
        }
      }

      v36 = sub_175AE4();
      v42 = sub_160F68(4);
      goto LABEL_61;
    }

    v20 = v32;
    if (sub_160EF0(0x32u, 4))
    {
      v33 = sub_160F34(0x32u);
      v34 = sub_175AE4();
      v35 = sub_160F68(4);
      if (v33)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v34, 50, v35, "AVE_PIP_RetrieveEntry", 61, "ret == 0", a1, a2, v20);
        v36 = sub_175AE4();
        v42 = sub_160F68(4);
LABEL_61:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v36, 50, v42);
        return v20;
      }

LABEL_62:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v34, 50, v35);
    }
  }

  else
  {
    if (sub_160EF0(0x32u, 4))
    {
      v28 = sub_160F34(0x32u);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get PIP Rect value %p %p\n", v29, 50, v30, "AVE_PIP_RetrieveEntry", 48, "res", a1, a2);
        v29 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get PIP Rect value %p %p", v29, 50);
    }

    return 4294966296;
  }

  return v20;
}

uint64_t sub_13D684(unsigned int *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v48, 0, sizeof(v48));
  sub_CB274(a4, a5, v48, 32, a5, a6, a7, a8);
  v11 = a3;
  if (sub_160EF0(a2, a3))
  {
    v12 = sub_160F34(a2);
    if (a3 < 0)
    {
      if (!v12 || (-a3 & 0x20) != 0)
      {
        v37 = a1[6];
        v41 = a1[7];
        v29 = a1[4];
        v33 = a1[5];
        v23 = a1[2];
        v26 = a1[3];
        v21 = a1[1];
        syslog(3, "PIP %s | %d %d %d %d | %d %d %d %d", v48, *a1);
      }

      else
      {
        printf("PIP %s | %d %d %d %d | %d %d %d %d\n", v48, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
        v35 = a1[6];
        v39 = a1[7];
        v28 = a1[4];
        v31 = a1[5];
        v22 = a1[2];
        v24 = a1[3];
        v20 = a1[1];
        syslog(3, "PIP %s | %d %d %d %d | %d %d %d %d", v48, *a1);
      }
    }

    else
    {
      v13 = a3 & 0x20;
      v14 = v12 ^ 1;
      v15 = sub_175AE4();
      v16 = sub_160F68(v11);
      v17 = a1[6];
      if ((v14 | (v13 >> 5)))
      {
        v45 = a1[6];
        v47 = a1[7];
        v40 = a1[4];
        v43 = a1[5];
        v32 = a1[2];
        v36 = a1[3];
        v25 = *a1;
      }

      else
      {
        printf("%lld %d AVE %s: PIP %s | %d %d %d %d | %d %d %d %d\n", v15, a2, v16, v48, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
        v15 = sub_175AE4();
        v16 = sub_160F68(v11);
        v18 = *a1;
        v44 = a1[6];
        v46 = a1[7];
        v38 = a1[4];
        v42 = a1[5];
        v30 = a1[2];
        v34 = a1[3];
      }

      v27 = a1[1];
      syslog(3, "%lld %d AVE %s: PIP %s | %d %d %d %d | %d %d %d %d", v15, a2, v16);
    }
  }

  return 0;
}

uint64_t sub_13D890(int *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (*a1 >= 1)
  {
    v13 = 0;
    v14 = (a1 + 1);
    do
    {
      sub_13D684(v14, a2, a3, a4, a5, a6, a7, a8);
      ++v13;
      v14 += 8;
    }

    while (v13 < *a1);
  }

  return 0;
}

uint64_t sub_13D92C(CFDictionaryRef theDict, _DWORD *a2)
{
  if (theDict && a2)
  {
    a2[8] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    Value = CFDictionaryGetValue(theDict, @"PictureInPictureRegion");
    if (Value)
    {
      v5 = sub_13CDC4(Value, a2 + 1);
      if (v5)
      {
        if (sub_160EF0(0x32u, 4))
        {
          v6 = sub_160F34(0x32u);
          v7 = sub_175AE4();
          v8 = sub_160F68(4);
          if (v6)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d\n", v7, 50, v8, "AVE_PIP_GetInfo", 229, "ret == 0", theDict, a2, v5);
            v9 = sub_175AE4();
            v14 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v9, 50, v14);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v7, 50, v8);
          }
        }
      }

      else
      {
        *a2 = 1;
      }
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (sub_160EF0(0x32u, 4))
    {
      v10 = sub_160F34(0x32u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 50, v12, "AVE_PIP_GetInfo", 217, "pProperty != __null && pInfo != __null", theDict, a2);
        v11 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 50);
    }

    return 4294966295;
  }

  return v5;
}

pthread_mutex_t *sub_13DB68()
{
  v0 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
  v1 = v0;
  if (v0)
  {
    *&v0->__opaque[24] = 0u;
    *&v0->__opaque[40] = 0u;
    *&v0->__sig = 0u;
    *&v0->__opaque[8] = 0u;
    if (pthread_mutex_init(v0, 0))
    {
      free(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t sub_13DBD0(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_destroy(a1))
  {
    v2 = 4294966296;
  }

  else
  {
    v2 = 0;
  }

  free(a1);
  return v2;
}

uint64_t sub_13DC18(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_lock(a1))
  {
    return 4294966296;
  }

  return 0;
}

uint64_t sub_13DC4C(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_unlock(a1))
  {
    return 4294966296;
  }

  return 0;
}

uint64_t sub_13DC80(int a1, uint64_t a2, unsigned __int8 a3, unsigned int a4)
{
  if (((a1 == 1) & a3) != 0)
  {
    return a4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_13DC94(int a1, int a2, int a3, int a4)
{
  if (a2 == 2)
  {
    v6 = ((a3 + 31) & 0xFFFFFFE0) * ((a4 + 31) >> 5);
    if (a1 >= 30)
    {
      v6 = (((a4 + 63) >> 5) & 0x3FFFFFE) * ((a3 + 63) & 0xFFFFFFC0);
    }
  }

  else if (a2 == 1)
  {
    v4 = (a3 + 15) & 0xFFFFFFF0;
    if (a1 < 30)
    {
      v5 = (a4 + 15) >> 4;
    }

    else
    {
      v4 = (v4 + 63) & 0x3FFFFFC0;
      v5 = ((a4 + 63) >> 4) & 0xFFFFFFFC;
    }

    v6 = v4 * v5;
  }

  else
  {
    v6 = 0;
  }

  return (v6 + 4095) & 0xFFFFF000;
}

uint64_t sub_13DD38(int a1, int a2)
{
  if (a1)
  {
    v2 = 17314;
  }

  else
  {
    v2 = 1574;
  }

  if (a2)
  {
    return v2 + 264;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_13DD58(uint64_t a1, const void *a2, int a3, uint64_t a4, void *a5)
{
  if (a3 && a5)
  {
    *a5 = 0;
    operator new();
  }

  if (sub_160EF0(0x4Cu, 4))
  {
    v10 = sub_160F34(0x4Cu);
    v11 = sub_175AE4();
    v12 = sub_160F68(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p\n", v11, 76, v12, "AVE_CreateUSurface", 64, "SID != 0 && ppSurface != __null", a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v15 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v13, 76, v15, "AVE_CreateUSurface", 64);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v11, 76, v12, "AVE_CreateUSurface", 64);
    }
  }

  return 4294966295;
}

uint64_t sub_13E130(uint64_t a1, const void *a2, int a3, uint64_t a4, void *a5)
{
  if (a3 >= 1 && a5)
  {
    *a5 = 0;
    operator new();
  }

  if (sub_160EF0(0x4Cu, 4))
  {
    v10 = sub_160F34(0x4Cu);
    v11 = sub_175AE4();
    v12 = sub_160F68(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p\n", v11, 76, v12, "AVE_CreateUSurface", 122, "size > 0 && ppSurface != __null", a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v15 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v13, 76, v15, "AVE_CreateUSurface", 122);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v11, 76, v12, "AVE_CreateUSurface", 122);
    }
  }

  return 4294966295;
}

uint64_t sub_13E518(const char *a1)
{
  if (a1)
  {
    sub_131AE4(a1);
    nullsub_1(a1);
    operator delete();
  }

  if (sub_160EF0(0x4Cu, 4))
  {
    v2 = sub_160F34(0x4Cu);
    v3 = sub_175AE4();
    v4 = sub_160F68(4);
    if (v2)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v3, 76, v4, "AVE_DestroyUSurface", 174, "pSurface != __null", 0);
      v3 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v3);
  }

  return 4294966295;
}

uint64_t sub_13E648(const void *a1, uint64_t a2, const void *a3)
{
  if (a1 && a3)
  {
    return 0;
  }

  if (sub_160EF0(0x4Cu, 4))
  {
    v7 = sub_160F34(0x4Cu);
    v8 = sub_175AE4();
    v9 = sub_160F68(4);
    if (v7)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p\n", v8, 76, v9, "AVE_CreateInUSurfaces", 219, "pSInfoSet != __null && pSet != __null", a1, a2, a3);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v10, 76, v11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v8, 76, v9);
    }
  }

  sub_13E77C(a3);
  return 4294966295;
}

uint64_t sub_13E77C(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  if (sub_160EF0(0x4Cu, 4))
  {
    v2 = sub_160F34(0x4Cu);
    v3 = sub_175AE4();
    v4 = sub_160F68(4);
    if (v2)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v3, 76, v4, "AVE_DestroyInUSurfaces", 245, "pSet != __null", 0);
      v3 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v3);
  }

  return 4294966295;
}

uint64_t sub_13E888(uint64_t *a1, _DWORD *a2)
{
  v4 = *a1;
  if (v4)
  {
    *a2 = sub_132370(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a2[1] = sub_132370(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    a2[2] = sub_132370(v6);
  }

  v7 = a1[3];
  if (v7)
  {
    a2[3] = sub_132370(v7);
  }

  v8 = a1[4];
  if (v8)
  {
    a2[4] = sub_132370(v8);
  }

  v9 = a1[5];
  if (v9)
  {
    a2[5] = sub_132370(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    a2[6] = sub_132370(v10);
  }

  v11 = 0;
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = a1[v11 + 7];
    if (v14)
    {
      a2[v11 + 7] = sub_132370(v14);
    }

    v12 = 0;
    v11 = 1;
  }

  while ((v13 & 1) != 0);
  v15 = a1[9];
  if (v15)
  {
    a2[9] = sub_132370(v15);
  }

  v16 = a1[10];
  if (v16)
  {
    a2[10] = sub_132370(v16);
  }

  v17 = a1[11];
  if (v17)
  {
    a2[11] = sub_132370(v17);
  }

  return 0;
}

uint64_t sub_13E990(_DWORD *a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  memset(v38, 0, sizeof(v38));
  if (!a1 || !a4)
  {
    if (sub_160EF0(0x4Cu, 4))
    {
      v22 = sub_160F34(0x4Cu);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p\n", v23, 76, v24, "AVE_CreateDataUSurfaces", 352, "pSInfoSet != __null && pSet != __null", a1, a2, a4);
        v25 = sub_175AE4();
        v37 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v25, 76, v37);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v23, 76, v24);
      }
    }

    v26 = 4294966295;
    goto LABEL_24;
  }

  v9 = sub_14E230(4);
  v11 = a1[14];
  v10 = a1[15];
  v12 = v9[1];
  sub_172100(v38, 64, "%s-%lld", v13, v14, v15, v16, v17, *v9);
  if (v11 >= 1)
  {
    v19 = (a4 + 1);
    v18 = a4[1];
    if (v18)
    {
      v20 = sub_132524(v18);
      v21 = *v19;
      if (v20 >= v10)
      {
        if (v21)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_13E518(v21);
        *v19 = 0;
      }
    }

    v27 = sub_13E130(a2, v38, v10, v12, a4 + 1);
    if (v27)
    {
      v26 = v27;
      if (!sub_160EF0(0x4Cu, 4))
      {
LABEL_24:
        sub_13ED4C(a4);
        return v26;
      }

      v28 = sub_160F34(0x4Cu);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create surface %s %d\n", v29, 76, v30, "AVE_CreateDataUSurfaces", 372, "ret == 0", v38, v26);
        v31 = sub_175AE4();
        sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v31, 76);
        goto LABEL_24;
      }

LABEL_23:
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v29, 76);
      goto LABEL_24;
    }
  }

LABEL_17:
  if (a5)
  {
    v32 = sub_14E230(5);
    v26 = sub_13DD58(a2, v38, a5, v32[1], a4);
    if (v26)
    {
      if (!sub_160EF0(0x4Cu, 4))
      {
        goto LABEL_24;
      }

      v33 = sub_160F34(0x4Cu);
      v29 = sub_175AE4();
      v34 = sub_160F68(4);
      if (v33)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create surface %s %d\n", v29, 76, v34, "AVE_CreateDataUSurfaces", 386, "ret == 0", v38, v26);
        v35 = sub_175AE4();
        sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v35, 76);
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v26 = 0;
    *a4 = 0;
  }

  return v26;
}

uint64_t sub_13ED4C(uint64_t a1)
{
  if (a1)
  {
    result = *a1;
    if (result)
    {
      result = sub_13E518(result);
      *a1 = 0;
    }

    if (*(a1 + 8))
    {
      result = sub_13E518(*(a1 + 8));
      *(a1 + 8) = 0;
    }

    if (*(a1 + 16))
    {
      result = sub_13E518(*(a1 + 16));
      *(a1 + 16) = 0;
    }

    if (*(a1 + 24))
    {
      result = sub_13E518(*(a1 + 24));
      *(a1 + 24) = 0;
    }

    if (*(a1 + 32))
    {
      result = sub_13E518(*(a1 + 32));
      *(a1 + 32) = 0;
    }

    if (*(a1 + 40))
    {
      result = sub_13E518(*(a1 + 40));
      *(a1 + 40) = 0;
    }

    if (*(a1 + 48))
    {
      result = sub_13E518(*(a1 + 48));
      *(a1 + 48) = 0;
    }

    v3 = 0;
    v4 = a1 + 56;
    v5 = 1;
    do
    {
      v6 = v5;
      if (*(v4 + 8 * v3))
      {
        result = sub_13E518(*(v4 + 8 * v3));
        *(v4 + 8 * v3) = 0;
      }

      v5 = 0;
      v3 = 1;
    }

    while ((v6 & 1) != 0);
    if (*(a1 + 72))
    {
      result = sub_13E518(*(a1 + 72));
      *(a1 + 72) = 0;
    }

    if (*(a1 + 80))
    {
      result = sub_13E518(*(a1 + 80));
      *(a1 + 80) = 0;
    }

    if (*(a1 + 88))
    {
      result = sub_13E518(*(a1 + 88));
      *(a1 + 88) = 0;
    }
  }

  else
  {
    if (sub_160EF0(0x4Cu, 4))
    {
      v7 = sub_160F34(0x4Cu);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v8, 76, v9, "AVE_DestroyDataUSurfaces", 414, "pSet != __null", 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v8);
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_13EF48(uint64_t a1, unsigned int a2, void *a3)
{
  if (sub_160EF0(0x3Cu, 6))
  {
    v6 = sub_160F34(0x3Cu);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %lld %d %p\n", v7, 60, v8, "AVE_TimeStats_Create", a1, a2, 0);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %lld %d %p", v7);
  }

  if ((a2 & 0x80000000) != 0 || !a3)
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v16 = sub_160F34(0x3Cu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %d %p\n", v17, 60, v18, "AVE_TimeStats_Create", 29, "num >= 0 && ppTS != __null", a1, a2, a3);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %d %p", v19, 60, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %d %p", v17, 60, v18);
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  else
  {
    v9 = malloc_type_malloc(0xD8uLL, 0x10A0040F185B927uLL);
    if (v9)
    {
      v10 = v9;
      v11 = sub_13F408(v9, a1, a2);
      if (v11)
      {
        if (sub_160EF0(0x3Cu, 4))
        {
          v12 = sub_160F34(0x3Cu);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to initialize time stats %p %lld %d %d\n", v13, 60, v14, "AVE_TimeStats_Create", 37, "ret == 0", v10, a1, a2, v11);
            v15 = sub_175AE4();
            v29 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initialize time stats %p %lld %d %d", v15, 60, v29);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initialize time stats %p %lld %d %d", v13, 60, v14);
          }
        }

        sub_13F8D8(v10);
        free(v10);
      }

      else
      {
        *a3 = v10;
      }
    }

    else
    {
      if (sub_160EF0(0x3Cu, 4))
      {
        v20 = sub_160F34(0x3Cu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create time stats %lld %d %p\n", v21, 60, v22, "AVE_TimeStats_Create", 33, "pTS != __null", a1, a2, a3);
          v23 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create time stats %lld %d %p", v23, 60, v31);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create time stats %lld %d %p", v21, 60, v22);
        }
      }

      v10 = 0;
      v11 = 4294966293;
    }
  }

  if (sub_160EF0(0x3Cu, 6))
  {
    v24 = sub_160F34(0x3Cu);
    v25 = sub_175AE4();
    v26 = sub_160F68(6);
    if (v24)
    {
      printf("%lld %d AVE %s: %s Exit %lld %d %p %d\n", v25, 60, v26, "AVE_TimeStats_Create", a1, a2, v10, v11);
      v27 = sub_175AE4();
      sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %lld %d %p %d", v27, 60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %lld %d %p %d", v25, 60);
    }
  }

  return v11;
}

uint64_t sub_13F408(_OWORD *a1, uint64_t a2, unsigned int a3)
{
  if (sub_160EF0(0x3Cu, 6))
  {
    v6 = sub_160F34(0x3Cu);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld %d\n", v7, 60, v8, "AVE_TimeStats_Init", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %lld %d", v7);
  }

  if (!a1 || (a3 & 0x80000000) != 0)
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v13 = sub_160F34(0x3Cu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %d\n", v14, 60, v15, "AVE_TimeStats_Init", 104, "pTS != __null && num >= 0", a1, a2, a3);
        v16 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %d", v16, 60, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %d", v14, 60, v15);
      }
    }

    v12 = 4294966295;
  }

  else
  {
    *(a1 + 26) = 0;
    a1[11] = 0u;
    a1[12] = 0u;
    a1[9] = 0u;
    a1[10] = 0u;
    a1[7] = 0u;
    a1[8] = 0u;
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    v9 = sub_13DB68();
    if (v9)
    {
      v10 = v9;
      if (!a3)
      {
        a3 = 2;
      }

      v11 = malloc_type_malloc(16 * a3, 0x1000040451B5BE8uLL);
      if (v11)
      {
        v12 = 0;
        *a1 = a2;
        *(a1 + 2) = a3;
        *(a1 + 2) = v11;
        *(a1 + 22) = v10;
        goto LABEL_28;
      }

      if (sub_160EF0(0x3Cu, 4))
      {
        v21 = sub_160F34(0x3Cu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory of time pair %p %lld %d\n", v22, 60, v23, "AVE_TimeStats_Init", 119, "pTP != __null", a1, a2, a3);
          v24 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory of time pair %p %lld %d", v24, 60, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory of time pair %p %lld %d", v22, 60, v23);
        }
      }

      sub_13DBD0(v10);
    }

    else if (sub_160EF0(0x3Cu, 4))
    {
      v17 = sub_160F34(0x3Cu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create mutex %p %lld %d\n", v18, 60, v19, "AVE_TimeStats_Init", 110, "pMutex != __null", a1, a2, a3);
        v20 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create mutex %p %lld %d", v20, 60, v31);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create mutex %p %lld %d", v18, 60, v19);
      }
    }

    v12 = 4294966293;
  }

LABEL_28:
  if (sub_160EF0(0x3Cu, 6))
  {
    v25 = sub_160F34(0x3Cu);
    v26 = sub_175AE4();
    v27 = sub_160F68(6);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %d\n", v26, 60, v27, "AVE_TimeStats_Init", a1, a2, a3, v12);
      v28 = sub_175AE4();
      sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d", v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d", v26);
    }
  }

  return v12;
}

uint64_t sub_13F8D8(_OWORD *a1)
{
  if (sub_160EF0(0x3Cu, 6))
  {
    v2 = sub_160F34(0x3Cu);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 60, v4, "AVE_TimeStats_Uninit", a1);
      v5 = sub_175AE4();
      v17 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v17, "AVE_TimeStats_Uninit", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 60, v4, "AVE_TimeStats_Uninit", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 2);
    if (v6)
    {
      free(v6);
      *(a1 + 2) = 0;
    }

    v7 = *(a1 + 22);
    if (v7)
    {
      sub_13DBD0(v7);
    }

    v8 = 0;
    *(a1 + 26) = 0;
    a1[11] = 0u;
    a1[12] = 0u;
    a1[9] = 0u;
    a1[10] = 0u;
    a1[7] = 0u;
    a1[8] = 0u;
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  else
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v9 = sub_160F34(0x3Cu);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v10, 60, v11, "AVE_TimeStats_Uninit", 166, "pTS != __null", 0);
        v10 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v10);
    }

    v8 = 4294966295;
  }

  if (sub_160EF0(0x3Cu, 6))
  {
    v12 = sub_160F34(0x3Cu);
    v13 = sub_175AE4();
    v14 = sub_160F68(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v13, 60, v14, "AVE_TimeStats_Uninit", a1, v8);
      v15 = sub_175AE4();
      v18 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 60, v18, "AVE_TimeStats_Uninit", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 60, v14, "AVE_TimeStats_Uninit", a1, v8);
    }
  }

  return v8;
}

uint64_t sub_13FB64(_OWORD *a1)
{
  if (sub_160EF0(0x3Cu, 6))
  {
    v2 = sub_160F34(0x3Cu);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 60, v4, "AVE_TimeStats_Destroy", a1);
      v5 = sub_175AE4();
      v15 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v15, "AVE_TimeStats_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 60, v4, "AVE_TimeStats_Destroy", a1);
    }
  }

  if (a1)
  {
    v6 = sub_13F8D8(a1);
    free(a1);
  }

  else
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v7 = sub_160F34(0x3Cu);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v8, 60, v9, "AVE_TimeStats_Destroy", 73, "pTS != __null", 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v8);
    }

    v6 = 4294966295;
  }

  if (sub_160EF0(0x3Cu, 6))
  {
    v10 = sub_160F34(0x3Cu);
    v11 = sub_175AE4();
    v12 = sub_160F68(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v11, 60, v12, "AVE_TimeStats_Destroy", a1, v6);
      v13 = sub_175AE4();
      v16 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 60, v16, "AVE_TimeStats_Destroy", a1, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v11, 60, v12, "AVE_TimeStats_Destroy", a1, v6);
    }
  }

  return v6;
}

uint64_t sub_13FDC0(uint64_t a1)
{
  if (sub_160EF0(0x3Cu, 6))
  {
    v2 = sub_160F34(0x3Cu);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 60, v4, "AVE_TimeStats_Restart", a1);
      v5 = sub_175AE4();
      v15 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v15, "AVE_TimeStats_Restart", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 60, v4, "AVE_TimeStats_Restart", a1);
    }
  }

  if (a1)
  {
    sub_13DC18(*(a1 + 176));
    ++*(a1 + 24);
    sub_13DC4C(*(a1 + 176));
    v6 = 0;
  }

  else
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v7 = sub_160F34(0x3Cu);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v8, 60, v9, "AVE_TimeStats_Restart", 203, "pTS != __null", 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v8);
    }

    v6 = 4294966295;
  }

  if (sub_160EF0(0x3Cu, 6))
  {
    v10 = sub_160F34(0x3Cu);
    v11 = sub_175AE4();
    v12 = sub_160F68(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v11, 60, v12, "AVE_TimeStats_Restart", a1, v6);
      v13 = sub_175AE4();
      v16 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 60, v16, "AVE_TimeStats_Restart", a1, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v11, 60, v12, "AVE_TimeStats_Restart", a1, v6);
    }
  }

  return v6;
}

uint64_t sub_140028(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (sub_160EF0(0x3Cu, 7))
  {
    v6 = sub_160F34(0x3Cu);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld\n", v7, 60, v8, "AVE_TimeStats_AddStartTime", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld", v7);
  }

  if (!a1 || a2 > 8 || a3 < 0)
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v12 = sub_160F34(0x3Cu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld\n", v13, 60, v14, "AVE_TimeStats_AddStartTime", 235, "pTS != __null && 0 <= pos && pos < AVE_TimeStats_Pos_Max && ts >= 0", a1, a2, a3);
        v15 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v15, 60, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v13, 60, v14);
      }
    }

    v11 = 4294966295;
  }

  else
  {
    sub_13DC18(*(a1 + 176));
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 24);
      if (a2 == 5)
      {
        *(v9 + 16 * (v10 % *(a1 + 8))) = a3;
      }

      v11 = 0;
      if (!v10)
      {
        *(a1 + 16 * a2 + 32) = a3;
      }
    }

    else
    {
      if (sub_160EF0(0x3Cu, 4))
      {
        v16 = sub_160F34(0x3Cu);
        v17 = sub_175AE4();
        v18 = sub_160F68(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld\n", v17, 60, v18, "AVE_TimeStats_AddStartTime", 240, "pTS->psTP != __null", a1, a2, a3);
          v19 = sub_175AE4();
          v26 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v19, 60, v26);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v17, 60, v18);
        }
      }

      v11 = 4294966285;
    }

    sub_13DC4C(*(a1 + 176));
  }

  if (sub_160EF0(0x3Cu, 7))
  {
    v20 = sub_160F34(0x3Cu);
    v21 = sub_175AE4();
    v22 = sub_160F68(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d\n", v21, 60, v22, "AVE_TimeStats_AddStartTime", a1, a2, a3, v11);
      v23 = sub_175AE4();
      sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v23, 60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v21, 60);
    }
  }

  return v11;
}

uint64_t sub_1403FC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (sub_160EF0(0x3Cu, 7))
  {
    v6 = sub_160F34(0x3Cu);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld\n", v7, 60, v8, "AVE_TimeStats_AddEndTime", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld", v7);
  }

  if (!a1 || a2 > 8 || a3 < 0)
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v11 = sub_160F34(0x3Cu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld\n", v12, 60, v13, "AVE_TimeStats_AddEndTime", 282, "pTS != __null && 0 <= pos && pos < AVE_TimeStats_Pos_Max && ts >= 0", a1, a2, a3);
        v14 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v14, 60, v24);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v12, 60, v13);
      }
    }

    v10 = 4294966295;
  }

  else
  {
    sub_13DC18(*(a1 + 176));
    v9 = *(a1 + 16);
    if (v9)
    {
      if (a2 == 5)
      {
        *(v9 + 16 * (*(a1 + 24) % *(a1 + 8)) + 8) = a3;
      }

      v10 = 0;
      *(a1 + 16 * a2 + 40) = a3;
    }

    else
    {
      if (sub_160EF0(0x3Cu, 4))
      {
        v15 = sub_160F34(0x3Cu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld\n", v16, 60, v17, "AVE_TimeStats_AddEndTime", 287, "pTS->psTP != __null", a1, a2, a3);
          v18 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v18, 60, v25);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v16, 60, v17);
        }
      }

      v10 = 4294966285;
    }

    sub_13DC4C(*(a1 + 176));
  }

  if (sub_160EF0(0x3Cu, 7))
  {
    v19 = sub_160F34(0x3Cu);
    v20 = sub_175AE4();
    v21 = sub_160F68(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d\n", v20, 60, v21, "AVE_TimeStats_AddEndTime", a1, a2, a3, v10);
      v22 = sub_175AE4();
      sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v22, 60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v20, 60);
    }
  }

  return v10;
}

uint64_t sub_1407CC(uint64_t a1)
{
  if (sub_160EF0(0x3Cu, 7))
  {
    v2 = sub_160F34(0x3Cu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 60, v4, "AVE_TimeStats_Calc", a1);
      v5 = sub_175AE4();
      v28 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v28, "AVE_TimeStats_Calc", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 60, v4, "AVE_TimeStats_Calc", a1);
    }
  }

  if (!a1)
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v17 = sub_160F34(0x3Cu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v18, 60, v19, "AVE_TimeStats_Calc", 326, "pTS != __null", 0);
        v18 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v18);
    }

    v16 = 4294966295;
    goto LABEL_38;
  }

  sub_13DC18(*(a1 + 176));
  v6 = *(a1 + 16);
  if (!v6)
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v20 = sub_160F34(0x3Cu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong state %p\n", v21, 60, v22, "AVE_TimeStats_Calc", 331, "pTS->psTP != __null", a1);
        v21 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p", v21);
    }

    v16 = 4294966285;
    goto LABEL_37;
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v7 = (a1 + 184);
  *(a1 + 200) = 0;
  v8 = *(a1 + 24);
  LODWORD(v9) = *(a1 + 8);
  if (v8 < v9)
  {
    v9 = (v8 + 1);
  }

  else
  {
    v9 = v9;
  }

  if (v9 < 1)
  {
    goto LABEL_28;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = (v6 + 8);
  do
  {
    v15 = *v14 - *(v14 - 1);
    if (v15 < 1)
    {
      goto LABEL_21;
    }

    if (v12)
    {
      if (v15 < v11)
      {
        *v7 = v15;
        v11 = v15;
      }

      if (v15 <= v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v7 = v15;
      v11 = v15;
    }

    *(a1 + 200) = v15;
    v10 = v15;
LABEL_20:
    v13 += v15;
    ++v12;
LABEL_21:
    v14 += 2;
    --v9;
  }

  while (v9);
  if (v12)
  {
    v16 = 0;
    *(a1 + 192) = v13 / v12;
    *(a1 + 208) = v12;
    goto LABEL_37;
  }

LABEL_28:
  v16 = 0;
LABEL_37:
  sub_13DC4C(*(a1 + 176));
LABEL_38:
  if (sub_160EF0(0x3Cu, 7))
  {
    v23 = sub_160F34(0x3Cu);
    v24 = sub_175AE4();
    v25 = sub_160F68(7);
    if (v23)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v24, 60, v25, "AVE_TimeStats_Calc", a1, v16);
      v26 = sub_175AE4();
      v29 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v26, 60, v29, "AVE_TimeStats_Calc", a1, v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v24, 60, v25, "AVE_TimeStats_Calc", a1, v16);
    }
  }

  return v16;
}

uint64_t sub_140BA4(void *a1, uint64_t a2, int a3, const void *a4, int a5)
{
  memset(v71, 0, sizeof(v71));
  if (a1)
  {
    v10 = a3;
    result = sub_160EF0(a2, a3);
    if (result)
    {
      sub_CB274(a4, a5, v71, 32, v12, v13, v14, v15);
      sub_13DC18(a1[22]);
      if (sub_160EF0(a2, a3))
      {
        v16 = sub_160F34(a2);
        if (a3 < 0)
        {
          if (!v16 || (-a3 & 0x20) != 0)
          {
            v26 = *a1;
            v49 = a1[7] - a1[4];
            v51 = a1[15] - a1[14];
          }

          else
          {
            printf("TimeStats ID: %lld %s | Session: %lld Process: %lld\n", *a1, v71, a1[7] - a1[4], a1[15] - a1[14]);
            v25 = *a1;
            v48 = a1[7] - a1[4];
            v50 = a1[15] - a1[14];
          }

          syslog(3, "TimeStats ID: %lld %s | Session: %lld Process: %lld");
        }

        else
        {
          v17 = v16 ^ 1;
          v18 = sub_175AE4();
          v19 = sub_160F68(a3);
          v20 = a1[7] - a1[4];
          if (((v17 | ((a3 & 0x20) >> 5)) & 1) == 0)
          {
            printf("%lld %d AVE %s: TimeStats ID: %lld %s | Session: %lld Process: %lld\n", v18, a2, v19, *a1, v71, a1[7] - a1[4], a1[15] - a1[14]);
            v18 = sub_175AE4();
            v19 = sub_160F68(a3);
          }

          syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Session: %lld Process: %lld", v18, a2, v19, *a1, v71, a1[7] - a1[4], a1[15] - a1[14]);
        }
      }

      if (sub_160EF0(a2, a3))
      {
        v27 = sub_160F34(a2);
        if (a3 < 0)
        {
          if (!v27 || (-a3 & 0x20) != 0)
          {
            v67 = a1[19] - a1[18];
            v70 = a1[21] - a1[20];
            v61 = a1[13] - a1[12];
            v63 = a1[17] - a1[16];
            v53 = a1[9] - a1[8];
            v57 = a1[11] - a1[10];
            syslog(3, "TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld", *a1, v71, a1[5] - a1[4], a1[7] - a1[6]);
          }

          else
          {
            printf("TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld\n", *a1, v71, a1[5] - a1[4], a1[7] - a1[6], a1[9] - a1[8], a1[11] - a1[10], a1[13] - a1[12], a1[17] - a1[16], a1[19] - a1[18], a1[21] - a1[20]);
            v66 = a1[19] - a1[18];
            v69 = a1[21] - a1[20];
            v60 = a1[13] - a1[12];
            v62 = a1[17] - a1[16];
            v52 = a1[9] - a1[8];
            v56 = a1[11] - a1[10];
            syslog(3, "TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld", *a1, v71, a1[5] - a1[4], a1[7] - a1[6]);
          }
        }

        else
        {
          v28 = v27 ^ 1;
          v29 = sub_175AE4();
          v30 = sub_160F68(a3);
          v31 = a1[19] - a1[18];
          if (((v28 | ((a3 & 0x20) >> 5)) & 1) == 0)
          {
            printf("%lld %d AVE %s: TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld\n", v29, a2, v30, *a1, v71, a1[5] - a1[4], a1[7] - a1[6], a1[9] - a1[8], a1[11] - a1[10], a1[13] - a1[12], a1[17] - a1[16], a1[19] - a1[18], a1[21] - a1[20]);
            v29 = sub_175AE4();
            v30 = sub_160F68(a3);
          }

          syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld", v29, a2, v30, *a1, v71, a1[5] - a1[4], a1[7] - a1[6], a1[9] - a1[8], a1[11] - a1[10], a1[13] - a1[12], a1[17] - a1[16], a1[19] - a1[18], a1[21] - a1[20]);
        }
      }

      if (sub_160EF0(a2, a3))
      {
        v32 = sub_160F34(a2);
        if (a3 < 0)
        {
          if (!v32 || (-a3 & 0x20) != 0)
          {
            v45 = *a1;
            v46 = *(a1 + 23);
            v55 = a1[25];
            v59 = *(a1 + 52);
          }

          else
          {
            printf("TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d\n", *a1, v71, a1[23], a1[24], a1[25], *(a1 + 52));
            v43 = *a1;
            v44 = *(a1 + 23);
            v54 = a1[25];
            v58 = *(a1 + 52);
          }

          syslog(3, "TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d");
        }

        else
        {
          v33 = a3 & 0x20;
          v34 = v32 ^ 1;
          v35 = sub_175AE4();
          v36 = sub_160F68(v10);
          v37 = a1[25];
          if ((v34 | (v33 >> 5)))
          {
            v65 = a1[25];
            syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d", v35, a2, v36);
          }

          else
          {
            v38 = a2;
            printf("%lld %d AVE %s: TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d\n", v35, a2, v36, *a1, v71, a1[23], a1[24], a1[25], *(a1 + 52));
            v39 = sub_175AE4();
            v40 = sub_160F68(v10);
            v41 = *a1;
            v42 = *(a1 + 23);
            v64 = a1[25];
            v68 = *(a1 + 52);
            syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d", v39, v38, v40);
          }
        }
      }

      sub_13DC4C(a1[22]);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v21 = sub_160F34(0x3Cu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p %d\n", v22, 60, v23, "AVE_TimeStats_Print", 404, "pTS != __null", 0, a2, a3, a4, a5);
        v24 = sub_175AE4();
        v47 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p %d", v24, 60, v47, "AVE_TimeStats_Print");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p %d", v22, 60, v23, "AVE_TimeStats_Print");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1412CC(const void *a1, unint64_t a2, pthread_mutex_t *a3)
{
  v3 = HIDWORD(a2);
  if (sub_160EF0(0xDu, 6))
  {
    v4 = sub_160F34(0xDu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %lld %p\n", v5, 13, v6, "AVE_Plugin_OF_StartSession", a1, a2, v3, 0, a3);
      v7 = sub_175AE4();
      v112 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %lld %p", v7, 13, v112);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %lld %p", v5, 13, v6);
    }
  }

  if (a1 && a3 && a2 >= 1 && v3 > 0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = DerivedStorage;
    if (!DerivedStorage)
    {
      if (sub_160EF0(0xBu, 4))
      {
        v24 = sub_160F34(0xBu);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get OF %p %p %d %d %lld %d\n", v25, 11, v26, "AVE_Plugin_OF_StartSession", 353, "pPI != __null", a1, a3, a2, v3, 0, 0);
          v27 = sub_175AE4();
          v115 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF %p %p %d %d %lld %d", v27, 11, v115, "AVE_Plugin_OF_StartSession", 353);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF %p %p %d %d %lld %d", v25, 11, v26, "AVE_Plugin_OF_StartSession", 353);
        }
      }

      v10 = 0;
      goto LABEL_77;
    }

    sub_13DC18(*DerivedStorage);
    v10 = v9[10];
    kdebug_trace();
    v9[1] = a3;
    v9[4] = v9;
    v9[5] = sub_144B1C;
    v9[7] = a3;
    if (*(v9 + 87200) == 1)
    {
      v11 = sub_173A20(v9, a2, 0);
      if (v11)
      {
        v12 = v11;
        if (sub_160EF0(0xDu, 4))
        {
          v13 = v10;
          v14 = sub_160F34(0xDu);
          v15 = sub_175AE4();
          v16 = sub_160F68(4);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %s | DMV: fail to start session %p %p %d %d %lld %p %d\n", v15, 13, v16, "AVE_Plugin_OF_StartSession", 373, "ret == 0", a1, a3, a2, v3, v13, v9, v12);
            v17 = sub_175AE4();
            v143 = v9;
            v144 = v12;
            v141 = v3;
            v142 = v13;
            v135 = a3;
            v140 = a2;
            v10 = v13;
            v128 = a1;
            v122 = 373;
            v113 = sub_160F68(4);
            v18 = "%lld %d AVE %s: %s:%d %s | DMV: fail to start session %p %p %d %d %lld %p %d";
LABEL_48:
            syslog(3, v18, v17, 13, v113, "AVE_Plugin_OF_StartSession", v122, "ret == 0", v128, v135, v140, v141, v142, v143, v144);
            goto LABEL_78;
          }

          v10 = v13;
          syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to start session %p %p %d %d %lld %p %d", v15, 13, v16, "AVE_Plugin_OF_StartSession", 373, "ret == 0");
        }

        goto LABEL_78;
      }

      v32 = sub_158978(*(v9 + 23), *(v9 + 22), 0x4000, 2, a2, v3, a2, v3, 0x414C4C20u);
      if (v32)
      {
        v33 = v32;
        if (sub_160EF0(0xDu, 4))
        {
          v34 = v10;
          v35 = sub_160F34(0xDu);
          v36 = sub_175AE4();
          v37 = sub_160F68(4);
          if (v35)
          {
            v129 = v34;
            v10 = v34;
            v38 = v3;
            printf("%lld %d AVE %s: %s:%d %s | DMV: fail to create dict %lld %d\n", v36, 13, v37, "AVE_Plugin_OF_StartSession", 386, "res == noErr", v129, v33);
            v39 = sub_175AE4();
            v130 = v10;
            v136 = v33;
            v123 = 386;
            v116 = sub_160F68(4);
            v40 = "%lld %d AVE %s: %s:%d %s | DMV: fail to create dict %lld %d";
            goto LABEL_57;
          }

          v10 = v34;
          syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to create dict %lld %d", v36, 13);
        }

        goto LABEL_77;
      }

      v52 = VTMotionEstimationProcessorSessionSetSourcePixelBufferAttributes();
      if (v52)
      {
        v53 = v52;
        if (sub_160EF0(0xDu, 4))
        {
          v54 = v10;
          v55 = sub_160F34(0xDu);
          v56 = sub_175AE4();
          v57 = sub_160F68(4);
          if (v55)
          {
            v132 = v54;
            v10 = v54;
            v38 = v3;
            printf("%lld %d AVE %s: %s:%d %s | DMV: fail to set source pixel buffer attributes %lld %d\n", v56, 13, v57, "AVE_Plugin_OF_StartSession", 392, "res == noErr", v132, v53);
            v39 = sub_175AE4();
            v130 = v10;
            v136 = v53;
            v123 = 392;
            v116 = sub_160F68(4);
            v40 = "%lld %d AVE %s: %s:%d %s | DMV: fail to set source pixel buffer attributes %lld %d";
            goto LABEL_57;
          }

          v10 = v54;
          syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to set source pixel buffer attributes %lld %d", v56, 13);
        }

        goto LABEL_77;
      }

      v63 = *(v9 + 340);
      v64 = *(v9 + 343);
      v50 = v10;
      if (*(v9 + 345))
      {
        v65 = 2 * v63 * v64;
        v66 = *(v9 + 341) * v64;
      }

      else
      {
        v65 = v64 * v63;
        v66 = 2 * v64 * *(v9 + 341);
      }

      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v71 = Mutable;
        v91 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v91)
        {
          v73 = v91;
          sub_14B9CC(kCVPixelBufferWidthKey, (v65 + 31) & 0xFFFFFFE0, v91);
          sub_14B9CC(kCVPixelBufferHeightKey, v66, v73);
          sub_14B9CC(kCVPixelBufferPixelFormatTypeKey, 1278226536, v73);
          CFDictionarySetValue(v73, kCVPixelBufferIOSurfacePropertiesKey, v71);
          v92 = VTMotionEstimationProcessorSessionSetMotionVectorPixelBufferAttributes();
          v9[10901] = v73;
          if (!v92)
          {
            v12 = 0;
LABEL_130:
            CFRelease(v73);
            goto LABEL_131;
          }

          if (sub_160EF0(0xDu, 4))
          {
            v93 = sub_160F34(0xDu);
            v94 = sub_175AE4();
            v95 = sub_160F68(4);
            if (v93)
            {
              printf("%lld %d AVE %s: %s:%d %s | DMV: Failed to set MV pixel buffer attributes %lld %d\n", v94, 13, v95, "AVE_Plugin_OF_StartSession", 432, "res == noErr", v10, 0);
              v94 = sub_175AE4();
              v134 = v10;
              v120 = sub_160F68(4);
            }

            else
            {
              v134 = v10;
              v120 = v95;
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: Failed to set MV pixel buffer attributes %lld %d", v94, 13, v120, "AVE_Plugin_OF_StartSession", 432, "res == noErr", v134, 0);
          }

LABEL_129:
          v12 = 4294966296;
          goto LABEL_130;
        }

        if (sub_160EF0(0xDu, 4))
        {
          v105 = sub_160F34(0xDu);
          v106 = sub_175AE4();
          v107 = sub_160F68(4);
          if (!v105)
          {
            v10 = v50;
            syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: CFDictionaryCreateMutable failed %p %lld %d", v106, 13, v107);
            goto LABEL_121;
          }

          printf("%lld %d AVE %s: %s:%d %s | DMV: CFDictionaryCreateMutable failed %p %lld %d\n", v106, 13, v107, "AVE_Plugin_OF_StartSession", 418, "pMVPixelBufferAttributes", 0, v50, 0);
          v103 = sub_175AE4();
          v138 = v50;
          v127 = "pMVPixelBufferAttributes";
          v125 = 418;
          v121 = sub_160F68(4);
          v104 = "%lld %d AVE %s: %s:%d %s | DMV: CFDictionaryCreateMutable failed %p %lld %d";
          goto LABEL_109;
        }

        v12 = 4294966296;
        goto LABEL_131;
      }

      if (!sub_160EF0(0xDu, 4))
      {
        v12 = 4294966296;
        goto LABEL_78;
      }

      v98 = sub_160F34(0xDu);
      v48 = sub_175AE4();
      v99 = sub_160F68(4);
      if (!v98)
      {
        v137 = v10;
        v139 = 0;
        v126 = "IOSurfaceProperties";
        v131 = 0;
        v124 = 414;
        v117 = v99;
        v51 = "%lld %d AVE %s: %s:%d %s | DMV: CFDictionaryCreateMutable failed %p %lld %d";
        goto LABEL_60;
      }

      printf("%lld %d AVE %s: %s:%d %s | DMV: CFDictionaryCreateMutable failed %p %lld %d\n", v48, 13, v99, "AVE_Plugin_OF_StartSession", 414, "IOSurfaceProperties", 0, v10, 0);
      v48 = sub_175AE4();
      v137 = v10;
      v139 = 0;
      v126 = "IOSurfaceProperties";
      v131 = 0;
      v124 = 414;
      v117 = sub_160F68(4);
      v51 = "%lld %d AVE %s: %s:%d %s | DMV: CFDictionaryCreateMutable failed %p %lld %d";
    }

    else
    {
      v28 = sub_147D04(v9, a2);
      if (v28)
      {
        v12 = v28;
        if (sub_160EF0(0xDu, 4))
        {
          v29 = v10;
          v30 = sub_160F34(0xDu);
          v17 = sub_175AE4();
          v31 = sub_160F68(4);
          if (v30)
          {
            v10 = v29;
            printf("%lld %d AVE %s: %s:%d %s | fail to start OF %p %p %d %d %lld %p %d\n", v17, 13, v31, "AVE_Plugin_OF_StartSession", 443, "ret == 0", a1, a3, a2, v3, v29, v9, v12);
            v17 = sub_175AE4();
            v143 = v9;
            v144 = v12;
            v141 = v3;
            v142 = v29;
            v135 = a3;
            v140 = a2;
            v128 = a1;
            v122 = 443;
            v113 = sub_160F68(4);
          }

          else
          {
            v143 = v9;
            v144 = v12;
            v10 = v29;
            v141 = v3;
            v142 = v29;
            v135 = a3;
            v140 = a2;
            v128 = a1;
            v122 = 443;
            v113 = v31;
          }

          v18 = "%lld %d AVE %s: %s:%d %s | fail to start OF %p %p %d %d %lld %p %d";
          goto LABEL_48;
        }

LABEL_78:
        v22 = v3;
        kdebug_trace();
        sub_13DC4C(*v9);
        goto LABEL_79;
      }

      v41 = sub_14E470(*(v9 + 23), 2, 2);
      v42 = *(v9 + 348);
      v43 = v41[1];
      if (v42 <= *v41)
      {
        v44 = *v41;
      }

      else
      {
        v44 = v42;
      }

      v45 = *(v9 + 349);
      if (v45 <= v43)
      {
        v46 = v43;
      }

      else
      {
        v46 = v45;
      }

      if (!sub_158978(*(v9 + 23), *(v9 + 22), 56, 2, a2, v3, v44, v46, 0x414C4C20u))
      {
        v58 = VTMotionEstimationProcessorSessionSetSourcePixelBufferAttributes();
        if (v58)
        {
          v59 = v58;
          if (sub_160EF0(0xDu, 4))
          {
            v60 = v10;
            v61 = sub_160F34(0xDu);
            v39 = sub_175AE4();
            v62 = sub_160F68(4);
            if (!v61)
            {
              v130 = v60;
              v136 = v59;
              v10 = v60;
              v123 = 464;
              v116 = v62;
              v40 = "%lld %d AVE %s: %s:%d %s | fail to set source pixel buffer attributes %lld %d";
              goto LABEL_76;
            }

            v133 = v60;
            v10 = v60;
            v38 = v3;
            printf("%lld %d AVE %s: %s:%d %s | fail to set source pixel buffer attributes %lld %d\n", v39, 13, v62, "AVE_Plugin_OF_StartSession", 464, "res == noErr", v133, v59);
            v39 = sub_175AE4();
            v130 = v10;
            v136 = v59;
            v123 = 464;
            v116 = sub_160F68(4);
            v40 = "%lld %d AVE %s: %s:%d %s | fail to set source pixel buffer attributes %lld %d";
LABEL_57:
            LODWORD(v3) = v38;
LABEL_76:
            syslog(3, v40, v39, 13, v116, "AVE_Plugin_OF_StartSession", v123, "res == noErr", v130, v136, v139);
          }

LABEL_77:
          v12 = 4294966296;
          goto LABEL_78;
        }

        v145 = v10;
        v67 = *(v9 + 348);
        if (*(v9 + 10480))
        {
          v68 = 2;
        }

        else
        {
          v68 = 0;
        }

        v69 = *(v9 + 349);
        v70 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v70)
        {
          v71 = v70;
          v72 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v72)
          {
            v73 = v72;
            sub_14B9CC(kCVPixelBufferWidthKey, ((v67 << v68) + 15) >> 4, v72);
            sub_14B9CC(kCVPixelBufferHeightKey, ((v69 << v68) + 15) >> 4, v73);
            v74 = v9 + 1310;
            v10 = v145;
            if (*(v9 + 11720) != 1 || (v75 = 842089320, !*(v9 + 10483)) && *(v9 + 24) <= 29)
            {
              if (sub_160EF0(0xDu, 5))
              {
                v76 = sub_160F34(0xDu);
                v77 = sub_175AE4();
                v78 = sub_160F68(5);
                if (v76)
                {
                  printf("%lld %d AVE %s: %s:%d: IncludeMotionConfidence is not supported, requires UseMultiPassSearch for this SoC\n", v77, 13, v78, "AVE_Plugin_OF_StartSession", 491);
                  v79 = sub_175AE4();
                  v74 = v9 + 1310;
                  v118 = sub_160F68(5);
                  syslog(3, "%lld %d AVE %s: %s:%d: IncludeMotionConfidence is not supported, requires UseMultiPassSearch for this SoC", v79, 13, v118, "AVE_Plugin_OF_StartSession", 491);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d: IncludeMotionConfidence is not supported, requires UseMultiPassSearch for this SoC", v77, 13, v78, "AVE_Plugin_OF_StartSession", 491);
                }
              }

              *(v74 + 1240) = 0;
              v75 = 843264104;
            }

            sub_14B9CC(kCVPixelBufferPixelFormatTypeKey, v75, v73);
            CFDictionarySetValue(v73, kCVPixelBufferIOSurfacePropertiesKey, v71);
            v12 = VTMotionEstimationProcessorSessionSetMotionVectorPixelBufferAttributes();
            if (!v12)
            {
              goto LABEL_130;
            }

            if (sub_160EF0(0xDu, 4))
            {
              v108 = sub_160F34(0xDu);
              v109 = sub_175AE4();
              v110 = sub_160F68(4);
              if (v108)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to set pixel buffer attributes %lld %d\n", v109, 13, v110, "AVE_Plugin_OF_StartSession", 501, "res == noErr", v145, v12);
                v111 = sub_175AE4();
                sub_160F68(4);
                v10 = v145;
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set pixel buffer attributes %lld %d", v111, 13);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set pixel buffer attributes %lld %d", v109, 13);
              }
            }

            goto LABEL_129;
          }

          if (sub_160EF0(0xDu, 4))
          {
            v100 = sub_160F34(0xDu);
            v101 = sub_175AE4();
            v102 = sub_160F68(4);
            if (!v100)
            {
              v10 = v145;
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create diction %p %lld %d", v101, 13, v102);
              goto LABEL_121;
            }

            v50 = v145;
            printf("%lld %d AVE %s: %s:%d %s | fail to create diction %p %lld %d\n", v101, 13, v102, "AVE_Plugin_OF_StartSession", 479, "pMVPixelBufferAttributes != __null", 0, v145, 0);
            v103 = sub_175AE4();
            v138 = v145;
            v127 = "pMVPixelBufferAttributes != __null";
            v125 = 479;
            v121 = sub_160F68(4);
            v104 = "%lld %d AVE %s: %s:%d %s | fail to create diction %p %lld %d";
LABEL_109:
            v10 = v50;
            syslog(3, v104, v103, 13, v121, "AVE_Plugin_OF_StartSession", v125, v127, 0, v138, 0);
LABEL_121:
            v12 = 4294966296;
            goto LABEL_131;
          }

          v12 = 4294966296;
          v10 = v145;
LABEL_131:
          CFRelease(v71);
          goto LABEL_78;
        }

        if (!sub_160EF0(0xDu, 4))
        {
          v12 = 4294966296;
          v10 = v145;
          goto LABEL_78;
        }

        v96 = sub_160F34(0xDu);
        v48 = sub_175AE4();
        v97 = sub_160F68(4);
        v10 = v145;
        if (v96)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create diction %p %lld %d\n", v48, 13, v97, "AVE_Plugin_OF_StartSession", 475, "IOSurfaceProperties != __null", 0, v145, 0);
          v48 = sub_175AE4();
          v137 = v145;
          v139 = 0;
          v126 = "IOSurfaceProperties != __null";
          v131 = 0;
          v124 = 475;
          v117 = sub_160F68(4);
          v51 = "%lld %d AVE %s: %s:%d %s | fail to create diction %p %lld %d";
          v10 = v145;
        }

        else
        {
          v137 = v145;
          v139 = 0;
          v126 = "IOSurfaceProperties != __null";
          v131 = 0;
          v124 = 475;
          v117 = v97;
          v51 = "%lld %d AVE %s: %s:%d %s | fail to create diction %p %lld %d";
        }

LABEL_60:
        syslog(3, v51, v48, 13, v117, "AVE_Plugin_OF_StartSession", v124, v126, v131, v137, v139);
        goto LABEL_77;
      }

      if (!sub_160EF0(0xDu, 4))
      {
        goto LABEL_77;
      }

      v47 = sub_160F34(0xDu);
      v48 = sub_175AE4();
      v49 = sub_160F68(4);
      if (!v47)
      {
        v131 = v10;
        v137 = 0;
        v124 = 459;
        v126 = "res == noErr";
        v117 = v49;
        v51 = "%lld %d AVE %s: %s:%d %s | fail to create dict %lld %d";
        goto LABEL_60;
      }

      v50 = v10;
      printf("%lld %d AVE %s: %s:%d %s | fail to create dict %lld %d\n", v48, 13, v49, "AVE_Plugin_OF_StartSession", 459, "res == noErr", v10, 0);
      v48 = sub_175AE4();
      v131 = v10;
      v137 = 0;
      v124 = 459;
      v126 = "res == noErr";
      v117 = sub_160F68(4);
      v51 = "%lld %d AVE %s: %s:%d %s | fail to create dict %lld %d";
    }

    v10 = v50;
    goto LABEL_60;
  }

  if (sub_160EF0(0xBu, 4))
  {
    v19 = sub_160F34(0xBu);
    v20 = sub_175AE4();
    v21 = sub_160F68(4);
    v22 = v3;
    if (v19)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %lld %d\n", v20, 11, v21, "AVE_Plugin_OF_StartSession", 348, "object != __null && session != __null && dimensions.width > 0 && dimensions.height > 0", a1, a3, a2, v3, 0, 0);
      v23 = sub_175AE4();
      v114 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %lld %d", v23, 11, v114, "AVE_Plugin_OF_StartSession", 348);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %lld %d", v20, 11, v21, "AVE_Plugin_OF_StartSession", 348);
    }
  }

  else
  {
    v22 = v3;
  }

  v10 = 0;
  v12 = 4294966295;
LABEL_79:
  v80 = sub_175AE4();
  if (v80 >= 50000)
  {
    v81 = 5;
  }

  else
  {
    v81 = 6;
  }

  v82 = sub_175994(v12);
  if (v12)
  {
    v83 = 4;
  }

  else
  {
    v83 = v81;
  }

  if (sub_160EF0(0xDu, v83))
  {
    v84 = v10;
    v85 = sub_160F34(0xDu);
    v86 = sub_175AE4();
    v87 = sub_160F68(v83);
    if (v85)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d %lld %lld %d %d\n", v86, 13, v87, "AVE_Plugin_OF_StartSession", a1, a3, a2, v22, v84, v80, v12, v82);
      v88 = sub_175AE4();
      v119 = sub_160F68(v83);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d %lld %lld %d %d", v88, 13, v119, "AVE_Plugin_OF_StartSession");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d %lld %lld %d %d", v86, 13, v87, "AVE_Plugin_OF_StartSession");
    }
  }

  return v82;
}

uint64_t sub_142748(const void *a1, uint64_t a2, __CVBuffer *a3, __CVBuffer *a4, int a5, const void *a6)
{
  v12 = sub_175AE4();
  if (sub_160EF0(0xDu, 8))
  {
    v13 = sub_160F34(0xDu);
    v14 = sub_175AE4();
    v15 = sub_160F68(8);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Enter %p %zu %p %p %d %p\n", v14, 13, v15, "AVE_Plugin_OF_ProcessFrames", a1, a2, a3, a4, a5, a6);
      v16 = sub_175AE4();
      v66 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %zu %p %p %d %p", v16, 13, v66, "AVE_Plugin_OF_ProcessFrames");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %zu %p %p %d %p", v14, 13, v15, "AVE_Plugin_OF_ProcessFrames");
    }
  }

  v82 = a6;
  v83 = a5;
  if (a1 && a3 && a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v18 = DerivedStorage;
    v81 = v12;
    if (!DerivedStorage)
    {
      if (sub_160EF0(0xDu, 4))
      {
        v29 = sub_160F34(0xDu);
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get OF %lld %d\n", v30, 13, v31, "AVE_Plugin_OF_ProcessFrames", 594, "pPI", 0, 0);
          v30 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF %lld %d", v30, 13);
      }

      Mutable = 0;
      goto LABEL_57;
    }

    v19 = DerivedStorage + 10752;
    sub_13DC18(*DerivedStorage);
    v80 = v18[10];
    kdebug_trace();
    if ((v18[10900] & 1) != 0 || ((v32 = v18[10899]) == 0 ? (ID = 0) : (IOSurface = CVPixelBufferGetIOSurface(v32), ID = IOSurfaceGetID(IOSurface)), *(v18 + 87184) == 1 && (v50 = CVPixelBufferGetIOSurface(a3), ID == IOSurfaceGetID(v50))))
    {
      Mutable = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionaryAddValue(Mutable, @"MakeKeyFrame", kCFBooleanTrue);
      v51 = sub_148880();
      if (v51)
      {
        v35 = v51;
        if (sub_160EF0(0xDu, 4))
        {
          v52 = sub_160F34(0xDu);
          v53 = sub_175AE4();
          v54 = sub_160F68(4);
          if (v52)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to process %p %lld %d\n", v53, 13, v54, "AVE_Plugin_OF_ProcessFrames", 619, "ret == 0", v18[10899], v80, v35);
            v79 = sub_175AE4();
            v55 = sub_160F68(4);
            v74 = v18[10899];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %p %lld %d", v79, 13, v55);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %p %lld %d", v53, 13, v54);
          }
        }

LABEL_58:
        kdebug_trace();
        sub_175994(v35);
        v57 = v18[1];
        VTMotionEstimationProcessorSessionEmitMotionVectors();
        if (!Mutable)
        {
LABEL_60:
          sub_13DC4C(*v18);
          v12 = v81;
          goto LABEL_61;
        }

LABEL_59:
        CFRelease(Mutable);
        goto LABEL_60;
      }
    }

    if (sub_160EF0(0xDu, 7))
    {
      v21 = sub_160F34(0xDu);
      v22 = sub_175AE4();
      v23 = sub_160F68(7);
      v24 = *(v18 + 21784);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %d %zu\n", v22, 13, v23, "AVE_Plugin_OF_ProcessFrames", 623, *(v19 + 280), a2);
        v22 = sub_175AE4();
        sub_160F68(7);
        v71 = *(v18 + 21784);
      }

      else
      {
        v72 = *(v19 + 280);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %d %zu", v22);
      LOBYTE(a5) = v83;
    }

    if (*(v18 + 87200) == 1)
    {
      v36 = sub_174284();
      if (v36)
      {
        v37 = v36;
        if (sub_160EF0(0xDu, 4))
        {
          v38 = sub_160F34(0xDu);
          v39 = sub_175AE4();
          v40 = sub_160F68(4);
          if (!v38)
          {
            v75 = *(v18 + 21784);
            syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to process %d %lld %d", v39, 13, v40);
            goto LABEL_57;
          }

          printf("%lld %d AVE %s: %s:%d %s | DMV: fail to process %d %lld %d\n", v39, 13, v40, "AVE_Plugin_OF_ProcessFrames", 630, "ret == 0", *(v18 + 21784), v80, v37);
          v41 = sub_175AE4();
          v42 = sub_160F68(4);
          v77 = v80;
          v78 = v37;
          v73 = *(v18 + 21784);
          v70 = 630;
          v68 = v42;
          v43 = "%lld %d AVE %s: %s:%d %s | DMV: fail to process %d %lld %d";
LABEL_36:
          syslog(3, v43, v41, 13, v68, "AVE_Plugin_OF_ProcessFrames", v70, "ret == 0", v73, v77, v78);
LABEL_57:
          v35 = 4294966296;
          goto LABEL_58;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v44 = sub_148880();
      if (v44)
      {
        v45 = v44;
        if (sub_160EF0(0xDu, 4))
        {
          v46 = sub_160F34(0xDu);
          v47 = sub_175AE4();
          v48 = sub_160F68(4);
          if (!v46)
          {
            v76 = *(v18 + 21784);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %d %lld %d", v47, 13, v48);
            goto LABEL_57;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to process %d %lld %d\n", v47, 13, v48, "AVE_Plugin_OF_ProcessFrames", 636, "ret == 0", *(v18 + 21784), v80, v45);
          v41 = sub_175AE4();
          v49 = sub_160F68(4);
          v77 = v80;
          v78 = v45;
          v73 = *(v18 + 21784);
          v70 = 636;
          v68 = v49;
          v43 = "%lld %d AVE %s: %s:%d %s | fail to process %d %lld %d";
          goto LABEL_36;
        }

LABEL_37:
        v35 = 4294966296;
        goto LABEL_58;
      }

      v56 = v18[10899];
      if (v56)
      {
        CVBufferRelease(v56);
        v18[10899] = 0;
      }

      if (a5)
      {
        *(v18 + 87184) = 1;
        v18[10899] = CVBufferRetain(a4);
      }

      else
      {
        *(v18 + 87184) = 0;
      }
    }

    kdebug_trace();
    v35 = 0;
    if (!Mutable)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (sub_160EF0(0xDu, 4))
  {
    v25 = sub_160F34(0xDu);
    v26 = sub_175AE4();
    v27 = sub_160F68(4);
    if (v25)
    {
      printf("%lld %d AVE %s: %s:%d %s | %s wrong parameter %p %zu %p %p %d %p\n", v26, 13, v27, "AVE_Plugin_OF_ProcessFrames", 590, "object != __null && referenceFrame != __null && currentFrame != __null", "AVE_Plugin_OF_ProcessFrames", a1, a2, a3, a4, a5, a6);
      v28 = sub_175AE4();
      v67 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | %s wrong parameter %p %zu %p %p %d %p", v28, 13, v67, "AVE_Plugin_OF_ProcessFrames", 590, "object != __null && referenceFrame != __null && currentFrame != __null", "AVE_Plugin_OF_ProcessFrames");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | %s wrong parameter %p %zu %p %p %d %p", v26, 13, v27, "AVE_Plugin_OF_ProcessFrames", 590, "object != __null && referenceFrame != __null && currentFrame != __null", "AVE_Plugin_OF_ProcessFrames");
    }
  }

  v35 = 4294966295;
LABEL_61:
  if ((sub_175AE4() - v12) >= 50000)
  {
    v58 = 5;
  }

  else
  {
    v58 = 8;
  }

  v59 = sub_175994(v35);
  if (v35)
  {
    v60 = 4;
  }

  else
  {
    v60 = v58;
  }

  if (sub_160EF0(0xDu, v60))
  {
    v61 = sub_160F34(0xDu);
    v62 = sub_175AE4();
    v63 = sub_160F68(v60);
    if (v61)
    {
      printf("%lld %d AVE %s: %s Exit %p %zu %p %p %d %p %d %d\n", v62, 13, v63, "AVE_Plugin_OF_ProcessFrames", a1, a2, a3, a4, v83, v82, v35, v59);
      v64 = sub_175AE4();
      v69 = sub_160F68(v60);
      syslog(3, "%lld %d AVE %s: %s Exit %p %zu %p %p %d %p %d %d", v64, 13, v69, "AVE_Plugin_OF_ProcessFrames", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %zu %p %p %d %p %d %d", v62, 13, v63, "AVE_Plugin_OF_ProcessFrames", a1);
    }
  }

  return v59;
}

uint64_t sub_14312C(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xDu, 7))
  {
    v3 = sub_160F34(0xDu);
    v4 = sub_175AE4();
    v5 = sub_160F68(7);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v4, 13, v5, "AVE_Plugin_OF_CompleteFrames", a1);
      v6 = sub_175AE4();
      v37 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v6, 13, v37, "AVE_Plugin_OF_CompleteFrames", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v4, 13, v5, "AVE_Plugin_OF_CompleteFrames", a1);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    v9 = DerivedStorage + 10752;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v10 = v8[10];
      kdebug_trace();
      if (*(v9 + 1184) == 1)
      {
        v11 = sub_1751F8(v8);
        if (v11 && sub_160EF0(0xDu, 4))
        {
          v12 = sub_160F34(0xDu);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | DMV: fail to complete session %p %lld %d\n", v13, 13, v14, "AVE_Plugin_OF_CompleteFrames", 723, "ret == 0", v8, v10, v11);
            v15 = sub_175AE4();
            v38 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to complete session %p %lld %d", v15, 13, v38);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to complete session %p %lld %d", v13, 13, v14);
          }
        }
      }

      else
      {
        v11 = sub_14953C(v8);
        if (v11 && sub_160EF0(0xDu, 4))
        {
          v24 = sub_160F34(0xDu);
          v25 = sub_175AE4();
          v26 = sub_160F68(4);
          if (v24)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to complete OF %p %lld %d\n", v25, 13, v26, "AVE_Plugin_OF_CompleteFrames", 729, "ret == 0", v8, v10, v11);
            v27 = sub_175AE4();
            v41 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete OF %p %lld %d", v27, 13, v41);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete OF %p %lld %d", v25, 13, v26);
          }
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v20 = sub_160F34(0xBu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get OF %p %lld %d\n", v21, 11, v22, "AVE_Plugin_OF_CompleteFrames", 713, "pPI != __null", a1, 0, 0);
          v23 = sub_175AE4();
          v40 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF %p %lld %d", v23, 11, v40);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF %p %lld %d", v21, 11, v22);
        }
      }

      v10 = 0;
      v11 = 4294966296;
    }

    v28 = v9[147];
    if (v28)
    {
      CVBufferRelease(v28);
      v9[147] = 0;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v16 = sub_160F34(0xDu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v17, 13, v18, "AVE_Plugin_OF_CompleteFrames", 708, "object != __null", 0, 0, 0);
        v19 = sub_175AE4();
        v39 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v19, 13, v39);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v17, 13, v18);
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  v29 = sub_175AE4() - v2;
  if (v29 >= 50000)
  {
    v30 = 5;
  }

  else
  {
    v30 = 7;
  }

  v31 = sub_175994(v11);
  if (v11)
  {
    v30 = 4;
  }

  if (sub_160EF0(0xDu, v30))
  {
    v32 = sub_160F34(0xDu);
    v33 = sub_175AE4();
    v34 = sub_160F68(v30);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v33, 13, v34, "AVE_Plugin_OF_CompleteFrames", a1, v10, v29, v11, v31);
      v35 = sub_175AE4();
      sub_160F68(v30);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v35, 13);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v33, 13);
    }
  }

  return v31;
}

uint64_t sub_143734(const void *a1, void *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v6, 11, v7, "AVE_Plugin_OF_CopySupportedPropertyDictionary", a1, a2);
      v8 = sub_175AE4();
      v34 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v8, 11, v34, "AVE_Plugin_OF_CopySupportedPropertyDictionary", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v6, 11, v7, "AVE_Plugin_OF_CopySupportedPropertyDictionary", a1, a2);
    }
  }

  if (a1 && a2)
  {
    *a2 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v10 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v11 = *(v10 + 80);
      kdebug_trace();
      v12 = sub_146AA0(v10, a2);
      if (v12 && sub_160EF0(0xBu, 4))
      {
        v13 = sub_160F34(0xBu);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get OF property dictionary %p %p %lld %d\n", v14, 11, v15, "AVE_Plugin_OF_CopySupportedPropertyDictionary", 797, "ret == 0", a1, a2, v11, v12);
          v16 = sub_175AE4();
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF property dictionary %p %p %lld %d", v16, 11, v35, "AVE_Plugin_OF_CopySupportedPropertyDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF property dictionary %p %p %lld %d", v14, 11, v15, "AVE_Plugin_OF_CopySupportedPropertyDictionary");
        }
      }

      kdebug_trace();
      sub_13DC4C(*v10);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v21 = sub_160F34(0xBu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %d\n", v22, 11, v23, "AVE_Plugin_OF_CopySupportedPropertyDictionary", 786, "pPI != __null", a1, a2, 0);
          v24 = sub_175AE4();
          v37 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %d", v24, 11, v37);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %d", v22, 11, v23);
        }
      }

      v11 = 0;
      v12 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v17 = sub_160F34(0xBu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d\n", v18, 11, v19, "AVE_Plugin_OF_CopySupportedPropertyDictionary", 779, "processor != __null && supportedPropertyDictionaryOut != __null", a1, a2, 0);
        v20 = sub_175AE4();
        v36 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d", v20, 11, v36);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d", v18, 11, v19);
      }
    }

    v11 = 0;
    v12 = 4294966295;
  }

  v25 = sub_175AE4() - v4;
  if (v25 >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 6;
  }

  v27 = sub_175994(v12);
  if (v12)
  {
    v28 = 4;
  }

  else
  {
    v28 = v26;
  }

  if (sub_160EF0(0xBu, v28))
  {
    v29 = sub_160F34(0xBu);
    v30 = sub_175AE4();
    v31 = sub_160F68(v28);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v30, 11, v31, "AVE_Plugin_OF_CopySupportedPropertyDictionary", a1, a2, v11, v25, v12, v27);
      v32 = sub_175AE4();
      v38 = sub_160F68(v28);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v32, 11, v38);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v30, 11, v31);
    }
  }

  return v27;
}

uint64_t sub_143C48(const void *a1, const __CFDictionary *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v6, 11, v7, "AVE_Plugin_OF_SetProperties", a1, a2);
      v8 = sub_175AE4();
      v30 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v8, 11, v30, "AVE_Plugin_OF_SetProperties", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v6, 11, v7, "AVE_Plugin_OF_SetProperties", a1, a2);
    }
  }

  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v10 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v11 = v10[10];
      kdebug_trace();
      CFDictionaryApplyFunction(a2, sub_1472D0, v10);
      kdebug_trace();
      sub_13DC4C(*v10);
      v12 = 0;
      v13 = 1;
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v18 = sub_160F34(0xBu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %d\n", v19, 11, v20, "AVE_Plugin_OF_SetProperties", 843, "pPI != __null", a1, a2, 0);
          v21 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %d", v21, 11, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %d", v19, 11, v20);
        }
      }

      v13 = 0;
      v11 = 0;
      v12 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v14 = sub_160F34(0xBu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d\n", v15, 11, v16, "AVE_Plugin_OF_SetProperties", 838, "processor != __null && propertyDictionary != __null", a1, a2, 0);
        v17 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d", v17, 11, v31);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d", v15, 11, v16);
      }
    }

    v13 = 0;
    v11 = 0;
    v12 = 4294966295;
  }

  v22 = sub_175AE4() - v4;
  if (v22 >= 50000)
  {
    v23 = 5;
  }

  else
  {
    v23 = 6;
  }

  v24 = sub_175994(v12);
  if (!v13)
  {
    v23 = 4;
  }

  if (sub_160EF0(0xBu, v23))
  {
    v25 = sub_160F34(0xBu);
    v26 = sub_175AE4();
    v27 = sub_160F68(v23);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_OF_SetProperties", a1, a2, v11, v22, v12, v24);
      v28 = sub_175AE4();
      v33 = sub_160F68(v23);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v33);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v26, 11, v27);
    }
  }

  return v24;
}

uint64_t AVE_Plugin_OF_CreateInstance(const void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  cf = 0;
  memset(v66, 0, sizeof(v66));
  v6 = sub_175AE4();
  sub_160F98();
  sub_151990();
  v7 = sub_1502C8();
  sub_1621A4(v7 + 552);
  if (sub_160EF0(0xDu, 0))
  {
    v8 = sub_160F34(0xDu);
    v9 = sub_175AE4();
    v10 = sub_160F68(0);
    if (v8)
    {
      printf("%lld %d AVE %s: Compiled %s in %s on %s %s\n", v9, 13, v10, "905.5.3", "prod", "Oct 23 2025", "06:45:17");
      v9 = sub_175AE4();
      sub_160F68(0);
    }

    syslog(3, "%lld %d AVE %s: Compiled %s in %s on %s %s", v9);
  }

  v11 = sub_160D68(v66, 128);
  if (v11 >= 1 && sub_160EF0(0xDu, 0))
  {
    v12 = sub_160F34(0xDu);
    v13 = sub_175AE4();
    v14 = sub_160F68(0);
    if (v12)
    {
      printf("%lld %d AVE %s: Temporary Path: %s\n", v13, 13, v14, v66);
      v15 = sub_175AE4();
      v58 = sub_160F68(0);
      syslog(3, "%lld %d AVE %s: Temporary Path: %s", v15, 13, v58, v66);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Temporary Path: %s", v13, 13, v14, v66);
    }
  }

  if (sub_160EF0(0xDu, 6))
  {
    v16 = sub_160F34(0xDu);
    v17 = sub_175AE4();
    v18 = sub_160F68(6);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld\n", v17, 13, v18, "AVE_Plugin_OF_CreateInstance", a1, a2, a3, 0);
      v17 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld", v17, 13);
  }

  if (a3)
  {
    VTMotionEstimationProcessorGetClassID();
    if (CMDerivedObjectCreate())
    {
      if (sub_160EF0(0xDu, 4))
      {
        v19 = sub_160F34(0xDu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create OF object %p %p %d\n", v20, 13, v21, "AVE_Plugin_OF_CreateInstance", 958, "res == noErr", a1, a3, v11);
          v22 = sub_175AE4();
          v59 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create OF object %p %p %d", v22, 13, v59);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create OF object %p %p %d", v20, 13, v21);
        }
      }

      v34 = 4294966292;
LABEL_38:
      if (cf)
      {
        CFRelease(cf);
        v38 = 0;
        v28 = 0;
        cf = 0;
      }

      else
      {
        v38 = 0;
        v28 = 0;
      }

      goto LABEL_41;
    }

    kdebug_trace();
    *a3 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage)
    {
      if (sub_160EF0(0xDu, 4))
      {
        v46 = sub_160F34(0xDu);
        v47 = sub_175AE4();
        v48 = sub_160F68(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get OF object %p %d\n", v47, 13, v48, "AVE_Plugin_OF_CreateInstance", 965, "pPI != __null", 0, v11);
          v47 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF object %p %d", v47, 13);
      }

      v34 = 4294966296;
      goto LABEL_38;
    }

    v28 = DerivedStorage;
    bzero(DerivedStorage, 0x154B0uLL);
    v29 = sub_13DB68();
    *v28 = v29;
    if (!v29)
    {
      if (sub_160EF0(0xBu, 4))
      {
        v49 = sub_160F34(0xBu);
        v50 = sub_175AE4();
        v51 = sub_160F68(4);
        if (v49)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create mutex %p %p %lld %p %p %d\n", v50, 11, v51, "AVE_Plugin_OF_CreateInstance", 972, "pPI->pPIMutex != __null", a1, a3, 0, cf, v28, v11);
          v52 = sub_175AE4();
          v62 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create mutex %p %p %lld %p %p %d", v52, 11, v62, "AVE_Plugin_OF_CreateInstance", 972, "pPI->pPIMutex != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create mutex %p %p %lld %p %p %d", v50, 11, v51, "AVE_Plugin_OF_CreateInstance", 972, "pPI->pPIMutex != __null");
        }
      }

      v34 = 4294966293;
      goto LABEL_72;
    }

    *(v28 + 87200) = 0;
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, @"AVE_DMV_UseDMV");
      if (Value)
      {
        v31 = Value;
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(v31))
        {
          valuePtr = 0;
          CFNumberGetValue(v31, kCFNumberIntType, &valuePtr);
          *(v28 + 87200) = valuePtr == 1;
        }
      }
    }

    if (*(v28 + 87200) == 1)
    {
      v33 = sub_172B78(v28, a1, a2);
      if (v33)
      {
        v34 = v33;
        if (sub_160EF0(0xDu, 4))
        {
          v35 = sub_160F34(0xDu);
          v36 = sub_175AE4();
          v37 = sub_160F68(4);
          if (v35)
          {
            printf("%lld %d AVE %s: %s:%d %s | DMV: fail to create session %p %p %p %d\n", v36, 13, v37, "AVE_Plugin_OF_CreateInstance", 989, "ret == 0", a1, cf, v28, v34);
            v36 = sub_175AE4();
            v37 = sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to create session %p %p %p %d", v36, 13, v37, "AVE_Plugin_OF_CreateInstance");
        }

LABEL_72:
        if (*v28)
        {
          sub_13DBD0(*v28);
          *v28 = 0;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v53 = sub_1473E4(v28, a1, a2);
      if (v53)
      {
        v34 = v53;
        if (sub_160EF0(0xDu, 4))
        {
          v54 = sub_160F34(0xDu);
          v55 = sub_175AE4();
          v56 = sub_160F68(4);
          if (v54)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create OF %p %p %p %d\n", v55, 13, v56, "AVE_Plugin_OF_CreateInstance", 995, "ret == 0", a1, cf, v28, v34);
            v57 = sub_175AE4();
            v63 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create OF %p %p %p %d", v57, 13, v63, "AVE_Plugin_OF_CreateInstance");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create OF %p %p %p %d", v55, 13, v56, "AVE_Plugin_OF_CreateInstance");
          }
        }

        goto LABEL_72;
      }
    }

    v34 = 0;
    v38 = v28[10];
    *a3 = cf;
LABEL_41:
    kdebug_trace();
    goto LABEL_44;
  }

  if (sub_160EF0(0xDu, 4))
  {
    v23 = sub_160F34(0xDu);
    v24 = sub_175AE4();
    v25 = sub_160F68(4);
    if (v23)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v24, 13, v25, "AVE_Plugin_OF_CreateInstance", 951, "instanceOut != __null", a1, 0, 0, v11);
      v26 = sub_175AE4();
      v60 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v26, 13, v60, "AVE_Plugin_OF_CreateInstance");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v24, 13, v25, "AVE_Plugin_OF_CreateInstance");
    }
  }

  v28 = 0;
  v38 = 0;
  v34 = 4294966295;
LABEL_44:
  if ((sub_175AE4() - v6) >= 50000)
  {
    v39 = 5;
  }

  else
  {
    v39 = 6;
  }

  v40 = sub_175994(v34);
  if (v34)
  {
    v39 = 4;
  }

  if (sub_160EF0(0xBu, v39))
  {
    v41 = sub_160F34(0xBu);
    v42 = sub_175AE4();
    v43 = sub_160F68(v39);
    if (v41)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %p %p %d\n", v42, 11, v43, "AVE_Plugin_OF_CreateInstance", a1, a3, v38, cf, v28, v40);
      v44 = sub_175AE4();
      v61 = sub_160F68(v39);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %p %p %d", v44, 11, v61, "AVE_Plugin_OF_CreateInstance");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %p %p %d", v42, 11, v43, "AVE_Plugin_OF_CreateInstance");
    }
  }

  return v40;
}