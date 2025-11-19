void sub_144B1C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *(a4 + 40);
  sub_175AE4();
  if (sub_160EF0(0xDu, 7))
  {
    v11 = sub_160F34(0xDu);
    v12 = sub_175AE4();
    v13 = sub_160F68(7);
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %zu %p %d\n", v12, 13, v13, "AVE_Plugin_OF_EmitMotionVectors", a1, a2, a3, a4, a5);
      v14 = sub_175AE4();
      v28 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %zu %p %d", v14, 13, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %zu %p %d", v12, 13, v13);
    }
  }

  if (a1)
  {
    v15 = *(a1 + 80);
    v16 = *(a1 + 8);
    v17 = *(a4 + 2552);
    if (*(a1 + 87200) == 1)
    {
      v18 = *(a4 + 2568);
      VTMotionEstimationProcessorSessionEmitMotionVectors();
      v19 = *(a4 + 2568);
      if (v19)
      {
        CFRelease(v19);
        *(a4 + 2568) = 0;
      }
    }

    else
    {
      VTMotionEstimationProcessorSessionEmitMotionVectors();
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d\n", v21, 11, v22, "AVE_Plugin_OF_EmitMotionVectors", 293, "pPI != __null && (pBuffer != __null || pUserData != __null)", 0, a2, a4, 0, 0);
        v23 = sub_175AE4();
        v29 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v23, 11, v29, "AVE_Plugin_OF_EmitMotionVectors", 293);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v21, 11, v22, "AVE_Plugin_OF_EmitMotionVectors", 293);
      }
    }

    v15 = 0;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v24 = sub_160F34(0xDu);
    v25 = sub_175AE4();
    v26 = sub_160F68(7);
    if (v24)
    {
      printf("%lld %d AVE %s: %s Exit %zu %zu %lld\n", v25, 13, v26, "AVE_Plugin_OF_EmitMotionVectors", *(a4 + 2552), v10, v15);
      v25 = sub_175AE4();
      sub_160F68(7);
      v27 = *(a4 + 2552);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %zu %zu %lld", v25);
  }
}

uint64_t sub_144E30(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, v5, "AVE_Plugin_OF_Invalidate", a1, 0);
      v6 = sub_175AE4();
      v37 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v37, "AVE_Plugin_OF_Invalidate", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, v5, "AVE_Plugin_OF_Invalidate", a1, 0);
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
            printf("%lld %d AVE %s: %s:%d %s | DMV: fail to stop DMV %p %lld %p %d\n", v13, 13, v14, "AVE_Plugin_OF_Invalidate", 57, "ret == 0", a1, v10, v8, v11);
            v15 = sub_175AE4();
            v38 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to stop DMV %p %lld %p %d", v15, 13, v38, "AVE_Plugin_OF_Invalidate");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to stop DMV %p %lld %p %d", v13, 13, v14, "AVE_Plugin_OF_Invalidate");
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
            printf("%lld %d AVE %s: %s:%d %s | fail to stop OF %p %lld %p %d\n", v25, 13, v26, "AVE_Plugin_OF_Invalidate", 64, "ret == 0", a1, v10, v8, v11);
            v27 = sub_175AE4();
            v41 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop OF %p %lld %p %d", v27, 13, v41, "AVE_Plugin_OF_Invalidate");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop OF %p %lld %p %d", v25, 13, v26, "AVE_Plugin_OF_Invalidate");
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get OF %p %lld %d\n", v21, 11, v22, "AVE_Plugin_OF_Invalidate", 44, "pPI != __null", a1, 0, 0);
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
    if (sub_160EF0(0xBu, 4))
    {
      v16 = sub_160F34(0xBu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v17, 11, v18, "AVE_Plugin_OF_Invalidate", 39, "object != __null", 0, 0, 0);
        v19 = sub_175AE4();
        v39 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v19, 11, v39);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v17, 11, v18);
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
    v30 = 6;
  }

  v31 = sub_175994(v11);
  if (v11)
  {
    v32 = 4;
  }

  else
  {
    v32 = v30;
  }

  if (sub_160EF0(0xDu, v32))
  {
    v33 = sub_160F34(0xDu);
    v34 = sub_175AE4();
    v35 = sub_160F68(v32);
    if (v33)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v34, 13, v35, "AVE_Plugin_OF_Invalidate", a1, v10, v29, v11, v31);
      v34 = sub_175AE4();
      sub_160F68(v32);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v34, 13);
  }

  return v31;
}

void sub_145438(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xDu, 6))
  {
    v3 = sub_160F34(0xDu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 13, v5, "AVE_Plugin_OF_Finalize", a1, 0);
      v6 = sub_175AE4();
      v35 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 13, v35, "AVE_Plugin_OF_Finalize", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 13, v5, "AVE_Plugin_OF_Finalize", a1, 0);
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
        v11 = sub_17558C(v8);
        if (v11 && sub_160EF0(0xDu, 4))
        {
          v12 = sub_160F34(0xDu);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | DMV: fail to destroy session %p %lld %p %d\n", v13, 13, v14, "AVE_Plugin_OF_Finalize", 125, "ret == 0", a1, v10, v8, v11);
            v13 = sub_175AE4();
            v36 = sub_160F68(4);
          }

          else
          {
            v36 = v14;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to destroy session %p %lld %p %d", v13, 13, v36, "AVE_Plugin_OF_Finalize");
        }
      }

      else
      {
        v11 = sub_1498D0(v8);
        if (v11 && sub_160EF0(0xDu, 4))
        {
          v23 = sub_160F34(0xDu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to destroy OF %p %lld %p %d\n", v24, 13, v25, "AVE_Plugin_OF_Finalize", 132, "ret == 0", a1, v10, v8, v11);
            v26 = sub_175AE4();
            v39 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to destroy OF %p %lld %p %d", v26, 13, v39, "AVE_Plugin_OF_Finalize");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to destroy OF %p %lld %p %d", v24, 13, v25, "AVE_Plugin_OF_Finalize");
          }
        }
      }
    }

    else
    {
      if (sub_160EF0(0xDu, 4))
      {
        v19 = sub_160F34(0xDu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get OF %p %lld %d\n", v20, 13, v21, "AVE_Plugin_OF_Finalize", 112, "pPI != __null", a1, 0, 0);
          v22 = sub_175AE4();
          v38 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF %p %lld %d", v22, 13, v38);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF %p %lld %d", v20, 13, v21);
        }
      }

      v10 = 0;
      v11 = 4294966296;
    }

    kdebug_trace();
    v27 = v9[147];
    if (v27)
    {
      CVBufferRelease(v27);
      v9[147] = 0;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
    sub_13DBD0(*v8);
    *v8 = 0;
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v15 = sub_160F34(0xDu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 13, v17, "AVE_Plugin_OF_Finalize", 107, "object != __null", 0, 0, 0);
        v18 = sub_175AE4();
        v37 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 13, v37);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 13, v17);
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  v28 = sub_175AE4() - v2;
  if (v28 >= 50000)
  {
    v29 = 5;
  }

  else
  {
    v29 = 6;
  }

  v30 = sub_175994(v11);
  if (v11)
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
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v33, 11, v34, "AVE_Plugin_OF_Finalize", a1, v10, v28, v11, v30);
      v33 = sub_175AE4();
      sub_160F68(v31);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v33, 11);
  }
}

uint64_t sub_145A68(const void *a1, const __CFString *a2, const void *a3, const void *a4)
{
  v8 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v9 = sub_160F34(0xBu);
    v10 = sub_175AE4();
    v11 = sub_160F68(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", v10, 11, v11, "AVE_Plugin_OF_CopyProperty", a1, a2, a3, a4);
      v10 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", v10, 11);
  }

  if (a1 && a2 && a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v13 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v14 = v13[10];
      kdebug_trace();
      v15 = sub_1466F4(v13, a3, a2, a4);
      kdebug_trace();
      sub_13DC4C(*v13);
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
          printf("%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %p %p %d\n", v21, 11, v22, "AVE_Plugin_OF_CopyProperty", 191, "pPI != __null", a1, a2, a3, a4, 0);
          v23 = sub_175AE4();
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %p %p %d", v23, 11, v35, "AVE_Plugin_OF_CopyProperty", 191);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %p %p %d", v21, 11, v22, "AVE_Plugin_OF_CopyProperty", 191);
        }
      }

      v13 = 0;
      v14 = 0;
      v15 = 4294966296;
    }
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
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %d\n", v17, 11, v18, "AVE_Plugin_OF_CopyProperty", 186, "object != __null && propertyKey != __null && propertyValueOut != __null", a1, a2, a3, a4, 0);
        v19 = sub_175AE4();
        v34 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %d", v19, 11, v34, "AVE_Plugin_OF_CopyProperty", 186);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %d", v17, 11, v18, "AVE_Plugin_OF_CopyProperty", 186);
      }
    }

    v13 = 0;
    v14 = 0;
    v15 = 4294966295;
  }

  v24 = sub_175AE4() - v8;
  if (v24 >= 50000)
  {
    v25 = 5;
  }

  else
  {
    v25 = 6;
  }

  v26 = sub_175994(v15);
  if (v15)
  {
    v27 = 4;
  }

  else
  {
    v27 = v25;
  }

  if (sub_160EF0(0xBu, v27))
  {
    v28 = a1;
    v29 = a3;
    v30 = sub_160F34(0xBu);
    v37 = sub_175AE4();
    v31 = sub_160F68(v27);
    if (v30)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d\n", v37, 11, v31, "AVE_Plugin_OF_CopyProperty", v28, v13, v29, a4, v14, v24, v15, v26);
      v32 = sub_175AE4();
      v36 = sub_160F68(v27);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v32, 11, v36, "AVE_Plugin_OF_CopyProperty", v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v37, 11, v31, "AVE_Plugin_OF_CopyProperty", v28);
    }
  }

  return v26;
}

uint64_t sub_145F10(const void *a1, const __CFString *a2, const void *a3)
{
  v6 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v7 = sub_160F34(0xBu);
    v8 = sub_175AE4();
    v9 = sub_160F68(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v8, 11, v9, "AVE_Plugin_OF_SetProperty", a1, a2, a3);
      v8 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v8);
  }

  if (a1 && a2 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v11 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v12 = v11[10];
      kdebug_trace();
      v13 = sub_14636C(v11, a2, a3);
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
          printf("%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %p %d\n", v19, 11, v20, "AVE_Plugin_OF_SetProperty", 242, "pPI != __null", a1, a2, a3, 0);
          v21 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %p %d", v21, 11, v32, "AVE_Plugin_OF_SetProperty");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %p %d", v19, 11, v20, "AVE_Plugin_OF_SetProperty");
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
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %d\n", v15, 11, v16, "AVE_Plugin_OF_SetProperty", 237, "object != __null && propertyKey != __null && propertyValue != __null", a1, a2, a3, 0);
        v17 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %d", v17, 11, v31, "AVE_Plugin_OF_SetProperty");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %d", v15, 11, v16, "AVE_Plugin_OF_SetProperty");
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
    v23 = 6;
  }

  v24 = sub_175994(v13);
  if (v13)
  {
    v25 = 4;
  }

  else
  {
    v25 = v23;
  }

  if (sub_160EF0(0xBu, v25))
  {
    v26 = sub_160F34(0xBu);
    v27 = sub_175AE4();
    v28 = sub_160F68(v25);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d\n", v27, 11, v28, "AVE_Plugin_OF_SetProperty", a1, a2, a3, v12, v22, v13, v24);
      v29 = sub_175AE4();
      v33 = sub_160F68(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v29, 11, v33, "AVE_Plugin_OF_SetProperty");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v27, 11, v28, "AVE_Plugin_OF_SetProperty");
    }
  }

  return v13;
}

uint64_t sub_14636C(void *a1, const __CFString *a2, const void *a3)
{
  if (sub_160EF0(0xDu, 7))
  {
    v6 = sub_160F34(0xDu);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 13, v8, "AVE_Session_OF_SetProperty", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2)
  {
    v9 = sub_4F8C(a1, a2, a3);
    if (v9 && sub_160EF0(0xDu, 4))
    {
      v10 = sub_160F34(0xDu);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to set property %p %lld %p %p %d\n", v11, 13, v12, "AVE_Session_OF_SetProperty", 71, "ret == 0", a1, a1[10], a2, a3, v9);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        v13 = a1[10];
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to set property %p %lld %p %p %d", v11, 13, v12, "AVE_Session_OF_SetProperty", 71);
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v14 = sub_160F34(0xDu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p\n", v15, 13, v16, "AVE_Session_OF_SetProperty", 66, "pINS != __null && pKey != __null", a1, a2, a3);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p", v17, 13, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p", v15, 13, v16);
      }
    }

    v9 = 4294966295;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v18 = sub_160F34(0xDu);
    v19 = sub_175AE4();
    v20 = sub_160F68(7);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v19, 13, v20, "AVE_Session_OF_SetProperty", a1, v9);
      v21 = sub_175AE4();
      v24 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v21, 13, v24, "AVE_Session_OF_SetProperty", a1, v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v19, 13, v20, "AVE_Session_OF_SetProperty", a1, v9);
    }
  }

  return v9;
}

uint64_t sub_1466F4(void *a1, const void *a2, const __CFString *a3, const void *a4)
{
  if (sub_160EF0(0xDu, 7))
  {
    v8 = sub_160F34(0xDu);
    v9 = sub_175AE4();
    v10 = sub_160F68(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", v9, 13, v10, "AVE_Session_OF_GetProperty", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", v9, 13);
  }

  if (a1 && a3 && a4)
  {
    v11 = sub_5114(a1, a2, a3, a4);
    if (v11 && sub_160EF0(0xDu, 4))
    {
      v12 = sub_160F34(0xDu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to get property %p %lld %p %p %p %d\n", v13, 13, v14, "AVE_Session_OF_GetProperty", 102, "ret == 0", a1, a1[10], a2, a3, a4, v11);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        v15 = a1[10];
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get property %p %lld %p %p %p %d", v13, 13, v14, "AVE_Session_OF_GetProperty", 102, "ret == 0");
    }
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
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v17, 13, v18, "AVE_Session_OF_GetProperty", 97, "pINS != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v19, 13, v25, "AVE_Session_OF_GetProperty");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v17, 13, v18, "AVE_Session_OF_GetProperty");
      }
    }

    v11 = 4294966295;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v20 = sub_160F34(0xDu);
    v21 = sub_175AE4();
    v22 = sub_160F68(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v21, 13, v22, "AVE_Session_OF_GetProperty", a1, v11);
      v23 = sub_175AE4();
      v26 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v23, 13, v26, "AVE_Session_OF_GetProperty", a1, v11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v21, 13, v22, "AVE_Session_OF_GetProperty", a1, v11);
    }
  }

  return v11;
}

uint64_t sub_146AA0(uint64_t a1, void *a2)
{
  if (sub_160EF0(0xDu, 7))
  {
    v4 = sub_160F34(0xDu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 13, v6, "AVE_Session_OF_GetPropertyDict", a1, a2);
      v7 = sub_175AE4();
      v24 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 13, v24, "AVE_Session_OF_GetPropertyDict", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 13, v6, "AVE_Session_OF_GetPropertyDict", a1, a2);
    }
  }

  if (a1 && a2)
  {
    *a2 = 0;
    v8 = *(a1 + 87144);
    if (v8)
    {
      v9 = CFGetRetainCount(*(a1 + 87144));
      if (v9 != 1 && sub_160EF0(0xDu, 5))
      {
        v10 = sub_160F34(0xDu);
        v11 = sub_175AE4();
        v12 = sub_160F68(5);
        v13 = *(a1 + 80);
        if (v10)
        {
          printf("%lld %d AVE %s: %s: property dictionary reference count %p %lld %d\n", v11, 13, v12, "AVE_Session_OF_GetPropertyDict", a1, *(a1 + 80), v9);
          v11 = sub_175AE4();
          sub_160F68(5);
          v14 = *(a1 + 80);
        }

        else
        {
          v26 = *(a1 + 80);
        }

        syslog(3, "%lld %d AVE %s: %s: property dictionary reference count %p %lld %d", v11);
      }

      CFRetain(v8);
      v18 = 0;
    }

    else
    {
      v18 = 4294966288;
    }

    *a2 = v8;
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v15 = sub_160F34(0xDu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p\n", v16, 13, v17, "AVE_Session_OF_GetPropertyDict", 124, "pINS != __null && ppDict != __null", a1, a2);
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p", v16, 13);
    }

    v18 = 4294966295;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v19 = sub_160F34(0xDu);
    v20 = sub_175AE4();
    v21 = sub_160F68(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v20, 13, v21, "AVE_Session_OF_GetPropertyDict", a1, v18);
      v22 = sub_175AE4();
      v25 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v22, 13, v25, "AVE_Session_OF_GetPropertyDict", a1, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v20, 13, v21, "AVE_Session_OF_GetPropertyDict", a1, v18);
    }
  }

  return v18;
}

uint64_t sub_146DFC(uint64_t a1, const __CFAllocator *a2)
{
  v4 = sub_1502C8();
  if (sub_160EF0(0xDu, 7))
  {
    v5 = sub_160F34(0xDu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v6, 13, v7, "AVE_Session_OF_CreatePropertyDict", a1, a2);
      v8 = sub_175AE4();
      v31 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v8, 13, v31, "AVE_Session_OF_CreatePropertyDict", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v6, 13, v7, "AVE_Session_OF_CreatePropertyDict", a1, a2);
    }
  }

  if (a1)
  {
    if (v4[396])
    {
      v9 = 257;
    }

    else
    {
      v9 = 258;
    }

    Mutable = CFDictionaryCreateMutable(a2, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(a1 + 87144) = Mutable;
    if (Mutable)
    {
      v11 = sub_4D2C(*(a1 + 92), v9, *(a1 + 80), Mutable);
      if (!v11)
      {
        goto LABEL_29;
      }

      if (sub_160EF0(0xDu, 4))
      {
        v12 = sub_160F34(0xDu);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        v15 = *(a1 + 92);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to make property dictionary %p %lld 0x%x %d %d\n", v13, 13, v14, "AVE_Session_OF_CreatePropertyDict", 189, "ret == 0", a1, *(a1 + 80), v9, *(a1 + 92), v11);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          v16 = *(a1 + 80);
        }

        v32 = *(a1 + 92);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to make property dictionary %p %lld 0x%x %d %d", v13, 13, v14, "AVE_Session_OF_CreatePropertyDict");
      }
    }

    else
    {
      if (sub_160EF0(0xDu, 4))
      {
        v20 = sub_160F34(0xDu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 92);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create CFDict %p %lld 0x%x %d %d\n", v21, 13, v22, "AVE_Session_OF_CreatePropertyDict", 184, "pINS->pPropDict != __null", a1, *(a1 + 80), v9, *(a1 + 92), 0);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v24 = *(a1 + 80);
        }

        v33 = *(a1 + 92);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create CFDict %p %lld 0x%x %d %d", v21, 13, v22, "AVE_Session_OF_CreatePropertyDict");
      }

      v11 = 4294966293;
    }

    v25 = *(a1 + 87144);
    if (v25)
    {
      CFRelease(v25);
      *(a1 + 87144) = 0;
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v17 = sub_160F34(0xDu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p\n", v18, 13, v19, "AVE_Session_OF_CreatePropertyDict", 167, "pINS != __null", 0);
        v18 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p", v18);
    }

    LODWORD(v9) = 0;
    v11 = 4294966295;
  }

LABEL_29:
  if (sub_160EF0(0xDu, 7))
  {
    v26 = sub_160F34(0xDu);
    v27 = sub_175AE4();
    v28 = sub_160F68(7);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%x %d\n", v27, 13, v28, "AVE_Session_OF_CreatePropertyDict", a1, v9, v11);
      v29 = sub_175AE4();
      sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v27);
    }
  }

  return v11;
}

void sub_1472D0(const __CFString *a1, const void *a2, void *a3)
{
  v6 = sub_14636C(a3, a1, a2);
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
        printf("%lld %d AVE %s: %s: Failed to set property %p %p %p %d\n", v9, 11, v10, "AVE_Session_OF_ApplierFunc", a1, a2, a3, v7);
        v9 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s: Failed to set property %p %p %p %d", v9, 11);
    }
  }
}

uint64_t sub_1473E4(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  if (sub_160EF0(0xDu, 6))
  {
    v6 = sub_160F34(0xDu);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v7, 13, v8, "AVE_Session_OF_Create", a1);
      v9 = sub_175AE4();
      v49 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v9, 13, v49, "AVE_Session_OF_Create", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v7, 13, v8, "AVE_Session_OF_Create", a1);
    }
  }

  v10 = sub_1502C8();
  *(a1 + 10724) = 2;
  *(a1 + 88) = 2;
  *(a1 + 10508) = 0x100000001;
  *(a1 + 664) = v10[103];
  v11 = sub_1289FC(2, 2);
  if (v11)
  {
    v12 = v11;
    if (sub_160EF0(0xDu, 4))
    {
      v13 = sub_160F34(0xDu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to open OF %p %lld %d\n", v14, 13, v15, "AVE_Session_OF_Create", 250, "ret == 0", a1, 0, v12);
        v16 = sub_175AE4();
        v50 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open OF %p %lld %d", v16, 13, v50);
        goto LABEL_36;
      }

      v56 = 0;
      v57 = v12;
      v55 = a1;
      v54 = 250;
      v52 = v15;
      v26 = "%lld %d AVE %s: %s:%d %s | fail to open OF %p %lld %d";
LABEL_20:
      syslog(3, v26, v14, 13, v52, "AVE_Session_OF_Create", v54, "ret == 0", v55, v56, v57);
    }
  }

  else
  {
    *(a1 + 92) = sub_129100(*(a1 + 24));
    *(a1 + 80) = sub_129118(*(a1 + 24));
    *(a1 + 96) = *(sub_16FD90(*(a1 + 92)) + 1);
    v17 = *(a1 + 80);
    sub_13EF48(v17, v10[403], (a1 + 72));
    if (*(a1 + 96) <= 6)
    {
      if (sub_160EF0(0xDu, 4))
      {
        v22 = sub_160F34(0xDu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | %lld %d is not supported optical flow\n", v23, 13, v24, "AVE_Session_OF_Create", 259, "pINS->eDevType >= AVE_DevType_H13", v17, *(a1 + 96));
          v23 = sub_175AE4();
          sub_160F68(4);
          v25 = *(a1 + 96);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | %lld %d is not supported optical flow", v23, 13);
      }

      v12 = 4294966294;
      goto LABEL_36;
    }

    sub_CBCA0(*(a1 + 80), (a1 + 616));
    *(a1 + 16) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (sub_160EF0(0xDu, 7))
    {
      v18 = sub_160F34(0xDu);
      v19 = sub_175AE4();
      v20 = sub_160F68(7);
      if (v18)
      {
        printf("%lld %d AVE %s: %s Enter %p\n", v19, 13, v20, "AVE_SetEncoderDefault", a1);
        v21 = sub_175AE4();
        v51 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s Enter %p", v21, 13, v51, "AVE_SetEncoderDefault", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s Enter %p", v19, 13, v20, "AVE_SetEncoderDefault", a1);
      }
    }

    *(a1 + 10708) = 0;
    *(a1 + 10716) = 1;
    *(a1 + 10733) = 0;
    *(a1 + 10740) = 5;
    *(a1 + 10744) = 0x300000006;
    *(a1 + 10798) = 257;
    *(a1 + 10816) = 0;
    *(a1 + 10832) = 0;
    *(a1 + 10824) = 0;
    *(a1 + 10840) = 0;
    *(a1 + 10812) = -1;
    *(a1 + 10804) = 0;
    *(a1 + 10800) = 0x1000000;
    *(a1 + 10807) = 0;
    *(a1 + 10752) = 1;
    v27 = *(a1 + 1288);
    *(a1 + 10880) = 0;
    *(a1 + 11396) = 0;
    *(a1 + 11716) = 0;
    *(a1 + 11424) = 0u;
    *(a1 + 11440) = 0u;
    *(a1 + 11456) = 0u;
    *(a1 + 11472) = 0u;
    *(a1 + 11488) = 0u;
    *(a1 + 11504) = 0u;
    *(a1 + 11520) = 0u;
    *(a1 + 11536) = 0u;
    *(a1 + 11552) = 0u;
    *(a1 + 11568) = 0u;
    *(a1 + 11584) = 0u;
    *(a1 + 11600) = 0u;
    *(a1 + 11616) = 0u;
    *(a1 + 11632) = 0u;
    *(a1 + 11648) = 0u;
    *(a1 + 11664) = 0u;
    *(a1 + 11680) = 0u;
    *(a1 + 11696) = 0u;
    bzero((a1 + 10882), 0x201uLL);
    v28 = -288;
    do
    {
      *(a1 + v28 + 11712) = 0;
      v28 += 48;
    }

    while (v28);
    *(a1 + 11416) = 0x100000006;
    *(a1 + 11724) = 0;
    *(a1 + 11744) = 0;
    *(a1 + 11752) = 0;
    *(a1 + 11756) = 0;
    *(a1 + 1424) = 0;
    *(a1 + 1416) = 0;
    v29 = *(a1 + 1192);
    *(a1 + 10488) = 0;
    *(a1 + 1192) = v29 & 0xFFFFFAFF;
    *(a1 + 10122) = 0;
    *(a1 + 10128) = 2;
    *(a1 + 10125) = 0;
    *(a1 + 10196) = 1;
    *(a1 + 10200) = 0;
    *(a1 + 10204) = 1;
    v30 = *(a1 + 1396);
    *(a1 + 10212) = v30;
    *(a1 + 10468) = 4;
    *(a1 + 10156) = 256;
    *(a1 + 10474) = 0;
    *(a1 + 10136) = 0;
    *(a1 + 10140) = 0x800000001;
    *(a1 + 10123) = 1;
    v31 = *(a1 + 1392);
    *(a1 + 10760) = 1;
    *(a1 + 1088) = ((v31 * v30) * 1.5 * 0.075 * 30.0);
    *(a1 + 1064) = 0;
    *(a1 + 1084) = 1;
    *(a1 + 1168) = 0x3FF0000000000000;
    *(a1 + 1304) = 0;
    *(a1 + 10844) = 0;
    *(a1 + 10732) = 1;
    *(a1 + 11412) = 0;
    *(a1 + 644) = -1;
    *(a1 + 1184) = 0xC0000000CLL;
    *(a1 + 1296) = 0xC0000000CLL;
    *(a1 + 1288) = v27 & 0xF7FE7C89 | 0x200;
    *(a1 + 1096) = 0x1A0000001ALL;
    *(a1 + 1104) = 26;
    *(a1 + 1276) = 1;
    *(a1 + 1280) = 0x100000001;
    *(a1 + 11400) = 30;
    *(a1 + 1112) = 0u;
    *(a1 + 1128) = 0u;
    *(a1 + 1144) = 0;
    *(a1 + 1072) = 0;
    *(a1 + 11768) = 0;
    *(a1 + 10132) = 0;
    bzero((a1 + 11952), 0xC7D8uLL);
    *(a1 + 10124) = 1;
    *(a1 + 10482) = 1;
    *(a1 + 10120) = 4 * (*(a1 + 96) > 8);
    *(a1 + 1240) = 1;
    *(a1 + 1204) = xmmword_185FA0;
    *(a1 + 1220) = 0;
    *(a1 + 1224) = 0xBFF0000000000000;
    *(a1 + 1232) = 0xBFF0000000000000;
    *(a1 + 10810) = 1;
    *(a1 + 648) = 0;
    *(a1 + 668) = 0;
    if (sub_160EF0(0xDu, 7))
    {
      v32 = sub_160F34(0xDu);
      v33 = sub_175AE4();
      v34 = sub_160F68(7);
      if (v32)
      {
        printf("%lld %d AVE %s: %s Exit %p %d\n", v33, 13, v34, "AVE_SetEncoderDefault", a1, 0);
        v35 = sub_175AE4();
        v53 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s Exit %p %d", v35, 13, v53, "AVE_SetEncoderDefault", a1, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s Exit %p %d", v33, 13, v34, "AVE_SetEncoderDefault", a1, 0);
      }
    }

    if (a3)
    {
      CFDictionaryApplyFunction(a3, sub_1472D0, a1);
    }

    v12 = sub_146DFC(a1, a2);
    if (!v12)
    {
      *(a1 + 64) = 30565;
      goto LABEL_42;
    }

    if (sub_160EF0(0xDu, 4))
    {
      v36 = sub_160F34(0xDu);
      v14 = sub_175AE4();
      v37 = sub_160F68(4);
      v38 = *(a1 + 80);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to create property dictionary %p %lld %d\n", v14, 13, v37, "AVE_Session_OF_Create", 281, "ret == 0", a1, *(a1 + 80), v12);
        v39 = sub_175AE4();
        v40 = sub_160F68(4);
        v41 = *(a1 + 80);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create property dictionary %p %lld %d", v39, 13, v40);
        goto LABEL_36;
      }

      v56 = *(a1 + 80);
      v57 = v12;
      v55 = a1;
      v54 = 281;
      v52 = v37;
      v26 = "%lld %d AVE %s: %s:%d %s | Failed to create property dictionary %p %lld %d";
      goto LABEL_20;
    }
  }

LABEL_36:
  v42 = *(a1 + 87144);
  if (v42)
  {
    CFRelease(v42);
    *(a1 + 87144) = 0;
  }

  v43 = *(a1 + 16);
  if (v43)
  {
    CFRelease(v43);
    *(a1 + 16) = 0;
  }

  v44 = *(a1 + 616);
  if (v44)
  {
    sub_CC04C(v44);
    *(a1 + 616) = 0;
  }

LABEL_42:
  if (sub_160EF0(0xDu, 6))
  {
    v45 = sub_160F34(0xDu);
    v46 = sub_175AE4();
    v47 = sub_160F68(6);
    if (v45)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v46, 13, v47, "AVE_Session_OF_Create", a1, a2, a3, v12);
      v46 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v46, 13);
  }

  return v12;
}

uint64_t sub_147D04(uint64_t a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  if (sub_160EF0(0xDu, 7))
  {
    v5 = sub_160F34(0xDu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: OF: ENTER %s, width = %d, height = %d\n", v6, 13, v7, "AVE_Session_OF_Start", a2, v4);
      v8 = sub_175AE4();
      v73 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: OF: ENTER %s, width = %d, height = %d", v8, 13, v73, "AVE_Session_OF_Start", a2, v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: OF: ENTER %s, width = %d, height = %d", v6, 13, v7, "AVE_Session_OF_Start", a2, v4);
    }
  }

  if (a2 < 2 || v4 <= 1)
  {
    if (sub_160EF0(0xDu, 4))
    {
      v16 = sub_160F34(0xDu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        v19 = a2;
        printf("%lld %d AVE %s: %s:%d %s | OF: Resolution (%dx%d) is not supported\n", v17, 13, v18, "AVE_Session_OF_Start", 324, "dimensions.width >= 2 && dimensions.height >= 2", a2, v4);
        v20 = sub_175AE4();
        v83 = v19;
        v86 = v4;
        v79 = 324;
        v80 = "dimensions.width >= 2 && dimensions.height >= 2";
        v75 = sub_160F68(4);
        v21 = "%lld %d AVE %s: %s:%d %s | OF: Resolution (%dx%d) is not supported";
LABEL_56:
        syslog(3, v21, v20, 13, v75, "AVE_Session_OF_Start", v79, v80, v83, v86);
        goto LABEL_69;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | OF: Resolution (%dx%d) is not supported", v17);
    }

LABEL_69:
    v57 = 4294966295;
    goto LABEL_70;
  }

  *(a1 + 1392) = a2;
  *(a1 + 1396) = v4;
  v9 = (a1 + 87136);
  v10 = (a1 + 24664);
  v11 = (a1 + 10480);
  *(a1 + 11404) = a2;
  *(a1 + 11408) = v4;
  if (sub_160EF0(0xDu, 7))
  {
    v12 = sub_160F34(0xDu);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v13, 13, v14, "AVE_PrepareCropParams", a1);
      v15 = sub_175AE4();
      v74 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v15, 13, v74, "AVE_PrepareCropParams", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v13, 13, v14, "AVE_PrepareCropParams", a1);
    }
  }

  v22 = *(a1 + 1392);
  v23 = *(a1 + 1396);
  *v10 = 0;
  *(a1 + 24668) = 0u;
  v24 = sub_14E470(*(a1 + 92), 2, 2);
  v25 = *(a1 + 1396);
  if ((v25 & 0xF) != 0 || v25 < v24[1])
  {
    v26 = *(a1 + 96);
    if (v26 > 16 || v26 >= 12 && (*v11 & 1) == 0)
    {
      *(a1 + 87156) = v25;
    }

    v27 = (v25 + 15) & 0xFFFFFFF0;
    if (v27 <= v24[1])
    {
      v27 = v24[1];
    }

    *(a1 + 1396) = v27;
    *v10 = 1;
    *(a1 + 24680) = v27 - v23;
  }

  v28 = *(a1 + 1392);
  if ((v28 & 0xF) != 0 || v28 < *v24)
  {
    v29 = *(a1 + 96);
    if (v29 > 16 || v29 >= 12 && (*v11 & 1) == 0)
    {
      *(a1 + 87152) = v28;
    }

    v30 = (v28 + 15) & 0xFFFFFFF0;
    if (v30 <= *v24)
    {
      v30 = *v24;
    }

    *(a1 + 1392) = v30;
    *v10 = 1;
    *(a1 + 24672) = v30 - v22;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v31 = sub_160F34(0xDu);
    v32 = sub_175AE4();
    v33 = sub_160F68(7);
    if (v31)
    {
      printf("%lld %d AVE %s: %s:%d input -> %dx%d\n", v32, 13, v33, "AVE_PrepareCropParams", 1050, v22, v23);
      v32 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s:%d input -> %dx%d", v32);
  }

  if (sub_160EF0(0xDu, 7))
  {
    v34 = sub_160F34(0xDu);
    v35 = sub_175AE4();
    v36 = sub_160F68(7);
    v37 = *(a1 + 1392);
    if (v34)
    {
      printf("%lld %d AVE %s: %s:%d input multiple -> %dx%d\n", v35, 13, v36, "AVE_PrepareCropParams", 1052, *(a1 + 1392), *(a1 + 1396));
      v35 = sub_175AE4();
      sub_160F68(7);
      v38 = *(a1 + 1392);
      v84 = *(a1 + 1396);
      v9 = (a1 + 87136);
      v11 = (a1 + 10480);
    }

    else
    {
      v81 = *(a1 + 1392);
    }

    syslog(3, "%lld %d AVE %s: %s:%d input multiple -> %dx%d", v35);
  }

  if (sub_160EF0(0xDu, 7))
  {
    v39 = sub_160F34(0xDu);
    v40 = sub_175AE4();
    v41 = sub_160F68(7);
    v42 = *(a1 + 24680);
    if (v39)
    {
      printf("%lld %d AVE %s: %s:%d frame_crop_bottom_offset %d frame_crop_right_offset %d\n", v40, 13, v41, "AVE_PrepareCropParams", 1054, *(a1 + 24680), *(a1 + 24672));
      v40 = sub_175AE4();
      sub_160F68(7);
      v43 = *(a1 + 24680);
      v85 = *(a1 + 24672);
    }

    else
    {
      v82 = *(a1 + 24680);
    }

    syslog(3, "%lld %d AVE %s: %s:%d frame_crop_bottom_offset %d frame_crop_right_offset %d", v40);
  }

  if (sub_160EF0(0xDu, 7))
  {
    v44 = sub_160F34(0xDu);
    v45 = sub_175AE4();
    v46 = sub_160F68(7);
    if (v44)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v45, 13, v46, "AVE_PrepareCropParams", a1, 0);
      v47 = sub_175AE4();
      v76 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v47, 13, v76, "AVE_PrepareCropParams", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v45, 13, v46, "AVE_PrepareCropParams", a1, 0);
    }
  }

  if (sub_14E248(*(a1 + 92), 2, 2, *(a1 + 1392), *(a1 + 1396), 1))
  {
    if (sub_160EF0(0xDu, 4))
    {
      v48 = sub_160F34(0xDu);
      v49 = sub_175AE4();
      v50 = sub_160F68(4);
      if (!v48)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | OF: Dimension (%dx%d) is not supported", v49);
        goto LABEL_69;
      }

      v51 = a2;
      printf("%lld %d AVE %s: %s:%d %s | OF: Dimension (%dx%d) is not supported\n", v49, 13, v50, "AVE_Session_OF_Start", 339, "dimensionsRequirement == 0", a2, v4);
      v20 = sub_175AE4();
      v83 = v51;
      v86 = v4;
      v79 = 339;
      v80 = "dimensionsRequirement == 0";
      v75 = sub_160F68(4);
      v21 = "%lld %d AVE %s: %s:%d %s | OF: Dimension (%dx%d) is not supported";
      goto LABEL_56;
    }

    goto LABEL_69;
  }

  if (v11[3] && *(a1 + 96) <= 8)
  {
    if (sub_160EF0(3u, 4))
    {
      v63 = sub_160F34(3u);
      v64 = sub_175AE4();
      v65 = sub_160F68(4);
      if (v63)
      {
        printf("%lld %d AVE %s: %s:%d %s | OF: UseMultiPassSearch is not supported on this Hw\n", v64, 3, v65, "AVE_OF_VerifySessionProperties", 941, "pINS->eDevType >= AVE_DevType_H13S");
        v66 = sub_175AE4();
        v78 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | OF: UseMultiPassSearch is not supported on this Hw", v66, 3, v78, "AVE_OF_VerifySessionProperties", 941, "pINS->eDevType >= AVE_DevType_H13S");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | OF: UseMultiPassSearch is not supported on this Hw", v64, 3, v65, "AVE_OF_VerifySessionProperties", 941, "pINS->eDevType >= AVE_DevType_H13S");
      }
    }

    v57 = 4294966294;
    goto LABEL_87;
  }

  if (*v11 != 1)
  {
    goto LABEL_75;
  }

  if (*(a1 + 96) <= 6)
  {
    if (sub_160EF0(3u, 4))
    {
      v67 = sub_160F34(3u);
      v68 = sub_175AE4();
      v69 = sub_160F68(4);
      if (v67)
      {
        printf("%lld %d AVE %s: %s:%d %s | OF: kAVEMotionVectorSize_4x4 is not supported on this Hw\n", v68, 3, v69, "AVE_OF_VerifySessionProperties", 950, "pINS->eDevType >= AVE_DevType_H13");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | OF: kAVEMotionVectorSize_4x4 is not supported on this Hw");
    }

    goto LABEL_86;
  }

  v52 = *(a1 + 1392);
  if (v52 <= 0x1000)
  {
    v53 = *(a1 + 1396);
    if (v53 <= 0x1000 && (v52 < 0x801 || v53 < 0x801))
    {
LABEL_75:
      v57 = 0;
      *v9 = 0;
      *(a1 + 64) = 30566;
      goto LABEL_70;
    }
  }

  if (sub_160EF0(3u, 4))
  {
    v54 = sub_160F34(3u);
    v55 = sub_175AE4();
    v56 = sub_160F68(4);
    if (v54)
    {
      printf("%lld %d AVE %s: %s:%d %s | OF: Session is to large for kAVEMotionVectorSize_4x4\n", v55, 3, v56, "AVE_OF_VerifySessionProperties", 958, "false");
      sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | OF: Session is to large for kAVEMotionVectorSize_4x4");
  }

LABEL_86:
  v57 = 4294966296;
LABEL_87:
  if (sub_160EF0(0xDu, 4))
  {
    v70 = sub_160F34(0xDu);
    v71 = sub_175AE4();
    v72 = sub_160F68(4);
    if (v70)
    {
      printf("%lld %d AVE %s: %s:%d %s | OF: AVE_OF_VerifySessionProperties failed %d\n", v71, 13, v72, "AVE_Session_OF_Start", 343, "ret == 0", v57);
      v71 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | OF: AVE_OF_VerifySessionProperties failed %d", v71);
  }

LABEL_70:
  if (sub_160EF0(0xDu, 7))
  {
    v58 = sub_160F34(0xDu);
    v59 = sub_175AE4();
    v60 = sub_160F68(7);
    if (v58)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v59, 13, v60, "AVE_Session_OF_Start", v57);
      v61 = sub_175AE4();
      v77 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v61, 13, v77, "AVE_Session_OF_Start", v57);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v59, 13, v60, "AVE_Session_OF_Start", v57);
    }
  }

  return v57;
}

uint64_t sub_148880()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  pixelBuffer = v3;
  v71 = 0;
  v8 = (v0 + 87136);
  v70 = 0;
  v69 = 0;
  sub_175AE4();
  if (sub_160EF0(0xDu, 7))
  {
    v9 = sub_160F34(0xDu);
    v10 = sub_175AE4();
    v11 = sub_160F68(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v10, 13, v11, "AVE_Session_OF_Process", v7, v4, v2);
      v10 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v10);
  }

  v12 = sub_175AE4();
  v13 = pixelBuffer;
  v8[4] = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  v8[5] = CVPixelBufferGetHeightOfPlane(v13, 0);
  if (!*v8)
  {
    v14 = sub_1502C8();
    v74[0] = *(v7 + 1392);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v13);
    v16 = sub_167CD8(PixelFormatType);
    if (!v16)
    {
      if (sub_160EF0(3u, 4))
      {
        v29 = sub_160F34(3u);
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
        v32 = *(v7 + 80);
        v33 = CVPixelBufferGetPixelFormatType(v13);
        if (v29)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v30, 3, v31, "AVE_Session_OF_Process", 410, "pPixelFmt != __null", v7, v32, v33);
          v30 = sub_175AE4();
          v31 = sub_160F68(4);
          v34 = *(v7 + 80);
          CVPixelBufferGetPixelFormatType(v13);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v30, 3, v31);
      }

      v37 = 4294966295;
      goto LABEL_57;
    }

    if (v14[420])
    {
      v17 = v14 + 420;
    }

    else
    {
      v17 = 0;
    }

    sub_CC848(*(v7 + 616), v17, *(v7 + 88), 4, *(v14 + 103), *(v14 + 104), v74, 1, *(v16 + 3), *(v16 + 1), 0);
    v13 = pixelBuffer;
  }

  sub_CCF60(*(v7 + 616), 0, v13);
  v18 = *(v7 + 64);
  if (v18 == 30566)
  {
    if (sub_149250(v7, &pixelBuffer, &v71, &v70, &v69, 1))
    {
      if (sub_160EF0(0xDu, 4))
      {
        v22 = sub_160F34(0xDu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | OF: AVE_OF_VerifyImageBuffer failed\n", v23, 13, v24, "AVE_Session_OF_Process", 439, "ret == 0");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | OF: AVE_OF_VerifyImageBuffer failed");
      }

      goto LABEL_52;
    }

    bzero(v75, 0x1078uLL);
    v74[0] = v7 + 624;
    v74[1] = v7 + 1392;
    v35 = *(v7 + 616);
    v74[2] = v7 + 10704;
    v75[1] = v35;
    v79 = v7 + 11952;
    v80 = v7 + 24188;
    v81 = v7 + 31992;
    v82 = v7 + 41624;
    v83 = v7 + 63112;
    v84 = v12;
    v36 = sub_12A644(*(v7 + 24), v74, v7 + 32, 1, *(v7 + 16), 0, 0, v7 + 100, (v7 + 11724), 0);
    if (!v36)
    {
      goto LABEL_35;
    }

    v37 = v36;
    if (sub_160EF0(0xDu, 4))
    {
      v38 = sub_160F34(0xDu);
      v39 = sub_175AE4();
      v40 = sub_160F68(4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | OF: AVE_USL_Drv_Start failed %d\n", v39, 13, v40, "AVE_Session_OF_Process", 459, "ret == 0", v37);
        v39 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | OF: AVE_USL_Drv_Start failed %d", v39);
    }
  }

  else
  {
    if (v18 == 30568)
    {
      if (sub_149250(v7, &pixelBuffer, &v71, &v70, &v69, 0))
      {
        if (sub_160EF0(3u, 4))
        {
          v19 = sub_160F34(3u);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          if (v19)
          {
            printf("%lld %d AVE %s: %s:%d %s | OF: AVE_OF_VerifyImageBuffer failed.\n", v20, 3, v21, "AVE_Session_OF_Process", 429, "ret == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | OF: AVE_OF_VerifyImageBuffer failed.");
        }

LABEL_52:
        v37 = 4294966296;
        goto LABEL_57;
      }

LABEL_35:
      *(v7 + 64) = 30568;
      bzero(v73, 0x1738uLL);
      v66 = 0;
      v64 = 0u;
      v65 = 0u;
      memset(v63, 0, sizeof(v63));
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v58 = 0u;
      v57 = 0u;
      memset(v54, 0, sizeof(v54));
      v55 = 0;
      bzero(v74, 0x4A40uLL);
      *&v63[1] = *(v7 + 87168);
      *&v64 = v74;
      *(&v64 + 1) = v73;
      v56[1] = pixelBuffer;
      v63[3] = v54;
      v78 = *(v7 + 10156);
      v41 = v8[4];
      if (!v41)
      {
        v41 = *(v7 + 1392);
      }

      v76 = v41;
      v42 = v8[5];
      if (!v42)
      {
        v42 = *(v7 + 1396);
      }

      v77 = v42;
      if (v2)
      {
        Value = CFDictionaryGetValue(v2, @"MakeKeyFrame");
        if (Value)
        {
          if (CFEqual(Value, kCFBooleanTrue))
          {
            LODWORD(v74[0]) = 2;
          }
        }
      }

      v67 = *v8;
      v68 = 0;
      v56[0] = v6;
      v37 = sub_12D95C(*(v7 + 24), v56);
      if (v37 && sub_160EF0(0xDu, 4))
      {
        v44 = sub_160F34(0xDu);
        v45 = sub_175AE4();
        v46 = sub_160F68(4);
        if (v44)
        {
          printf("%lld %d AVE %s: %s:%d %s | OF: AVE_USL_Drv_Process failed %d\n", v45, 13, v46, "AVE_Session_OF_Process", 504, "ret == 0", v37);
          v45 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | OF: AVE_USL_Drv_Process failed %d", v45);
      }

      goto LABEL_57;
    }

    if (sub_160EF0(0xDu, 4))
    {
      v25 = sub_160F34(0xDu);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | OF: Incorrect session status = 0x%08x.\n", v26, 13, v27, "AVE_Session_OF_Process", 468, "false", *(v7 + 64));
        v26 = sub_175AE4();
        sub_160F68(4);
        v28 = *(v7 + 64);
      }

      else
      {
        v53 = *(v7 + 64);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | OF: Incorrect session status = 0x%08x.", v26);
    }

    v37 = 4294966285;
  }

LABEL_57:
  if (v71 == 1 && pixelBuffer)
  {
    CVPixelBufferRelease(pixelBuffer);
  }

  ++*v8;
  if (sub_160EF0(0xDu, 7))
  {
    v47 = sub_160F34(0xDu);
    v48 = sub_175AE4();
    v49 = sub_160F68(7);
    if (v47)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v48, 13, v49, "AVE_Session_OF_Process", v37);
      v50 = sub_175AE4();
      v52 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v50, 13, v52, "AVE_Session_OF_Process", v37);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v48, 13, v49, "AVE_Session_OF_Process", v37);
    }
  }

  return v37;
}

uint64_t sub_149250(uint64_t a1, const void **a2, _BYTE *a3, _DWORD *a4, _DWORD *a5, int a6)
{
  memset(v45, 0, sizeof(v45));
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v11 = *(a1 + 87152);
  if (!v11)
  {
    v11 = *(a1 + 1392);
  }

  v34 = v11;
  v12 = *(a1 + 87156);
  if (!v12)
  {
    v12 = *(a1 + 1396);
  }

  v35 = v12;
  v13 = *(a1 + 10724);
  v36 = vrev64_s32(*(a1 + 88));
  v37 = *(a1 + 668);
  v38 = v13;
  result = sub_DCDC0(&v34, a2, (a1 + 87160));
  if (!result)
  {
    v15 = (a1 + 10123);
    *a3 = v45[6];
    v16 = HIDWORD(v44);
    *a4 = DWORD2(v44);
    *a5 = v16;
    v17 = *(a1 + 96);
    if (v17 <= 16 && (v17 < 12 || (*(a1 + 10480) & 1) != 0))
    {
      *(a1 + 10474) = BYTE1(v45[6]);
    }

    else
    {
      *(a1 + 10474) = 0;
      if (v34 != *(a1 + 1392) || v35 != *(a1 + 1396))
      {
        v18 = 1;
LABEL_14:
        *(a1 + 10802) = v18;
        v19 = HIDWORD(v42);
        v20 = HIDWORD(v42) & 0xFFFFFFFE;
        *(a1 + 10156) = (HIDWORD(v42) & 0xFFFFFFFE) == 2;
        if (v19 == 3)
        {
          *(a1 + 10481) = BYTE4(v43);
        }

        if (a6)
        {
          v21 = DWORD2(v41);
          *(a1 + 10720) = DWORD1(v41);
          v22 = v42;
          *(a1 + 24640) = v42;
          *(a1 + 10140) = v22;
          *(a1 + 10144) = v21;
          *v15 = v19 != 1;
          *(a1 + 10733) = 1;
        }

        if (v17 > 16 || *(a1 + 10480) != 1 || v20 != 2 && *(a1 + 10144) < 9u)
        {
          return 0;
        }

        if (sub_160EF0(0xDu, 4))
        {
          v23 = sub_160F34(0xDu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          v26 = *(a1 + 10156);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | Format %d is not supported, %d %d %d %d %d\n", v24, 13, v25, "AVE_OF_VerifyImageBuffer", 699, "!((pINS->eDevType < AVE_DevType_H15) && pINS->VideoParams.scaled_src_en && (pINS->VideoParams.input_compress || pINS->VideoParams.input_bitdepth > 8))", *(a1 + 10720), *(a1 + 10144), *(a1 + 24640), *(a1 + 10140), *(a1 + 10156), *v15);
            v24 = sub_175AE4();
            v25 = sub_160F68(4);
            v27 = *(a1 + 10156);
            v33 = *v15;
            v30 = *(a1 + 24640);
            v31 = *(a1 + 10140);
            v28 = *(a1 + 10720);
            v29 = *(a1 + 10144);
          }

          else
          {
            v32 = *(a1 + 10156);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Format %d is not supported, %d %d %d %d %d", v24, 13, v25);
        }

        return 4294966294;
      }
    }

    v18 = BYTE2(v45[6]);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_14953C(uint64_t a1)
{
  if (sub_160EF0(0xDu, 7))
  {
    v2 = sub_160F34(0xDu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 13, v4, "AVE_Session_OF_Complete", a1);
      v5 = sub_175AE4();
      v24 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 13, v24, "AVE_Session_OF_Complete", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 13, v4, "AVE_Session_OF_Complete", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 72);
    v7 = sub_175AE4();
    sub_140028(v6, 6u, v7);
    if (*(a1 + 64) == 30568)
    {
      v27 = sub_175AE4();
      v8 = sub_12D170(*(a1 + 24), &v27);
      if (v8 && sub_160EF0(0xDu, 4))
      {
        v9 = sub_160F34(0xDu);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        v12 = *(a1 + 80);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to complete %p %lld %d\n", v10, 13, v11, "AVE_Session_OF_Complete", 542, "ret == 0", a1, *(a1 + 80), v8);
          v10 = sub_175AE4();
          v11 = sub_160F68(4);
          v13 = *(a1 + 80);
        }

        else
        {
          v26 = *(a1 + 80);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to complete %p %lld %d", v10, 13, v11);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v14 = sub_160F34(0xDu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 13, v16, "AVE_Session_OF_Complete", 530, "pINS != __null", 0);
        v15 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v15);
    }

    v8 = 4294966295;
  }

  v17 = *(a1 + 72);
  v18 = sub_175AE4();
  sub_1403FC(v17, 6u, v18);
  if (sub_160EF0(0xDu, 7))
  {
    v19 = sub_160F34(0xDu);
    v20 = sub_175AE4();
    v21 = sub_160F68(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v20, 13, v21, "AVE_Session_OF_Complete", a1, v8);
      v22 = sub_175AE4();
      v25 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v22, 13, v25, "AVE_Session_OF_Complete", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v20, 13, v21, "AVE_Session_OF_Complete", a1, v8);
    }
  }

  return v8;
}

uint64_t sub_1498D0(uint64_t a1)
{
  if (sub_160EF0(0xDu, 7))
  {
    v2 = sub_160F34(0xDu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: OF: ENTER %s\n", v3, 13, v4, "AVE_Session_OF_Destroy");
      v5 = sub_175AE4();
      v21 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: OF: ENTER %s", v5, 13, v21, "AVE_Session_OF_Destroy");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: OF: ENTER %s", v3, 13, v4, "AVE_Session_OF_Destroy");
    }
  }

  v6 = sub_175AE4();
  if (*(a1 + 64) == 30568)
  {
    v23 = v6;
    sub_12C9EC(*(a1 + 24), &v23, 1);
  }

  v7 = sub_12916C(*(a1 + 24));
  *(a1 + 24) = 0;
  if (v7 && sub_160EF0(0xDu, 4))
  {
    v8 = sub_160F34(0xDu);
    v9 = sub_175AE4();
    v10 = sub_160F68(4);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %s | OF: AVE_USL_Drv_Destroy failed %d\n", v9, 13, v10, "AVE_Session_OF_Destroy", 587, "ret == 0", v7);
      v9 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | OF: AVE_USL_Drv_Destroy failed %d", v9);
  }

  sub_151B10();
  v11 = *(a1 + 72);
  if (v11)
  {
    sub_13FB64(v11);
    *(a1 + 72) = 0;
  }

  v12 = *(a1 + 616);
  if (v12)
  {
    sub_CCDA4(v12);
    sub_CC04C(*(a1 + 616));
    *(a1 + 616) = 0;
  }

  v13 = *(a1 + 87144);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 87144) = 0;
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 16) = 0;
  }

  v15 = *(a1 + 87160);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 87160) = 0;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v16 = sub_160F34(0xDu);
    v17 = sub_175AE4();
    v18 = sub_160F68(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v17, 13, v18, "AVE_Session_OF_Destroy", v7);
      v19 = sub_175AE4();
      v22 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v19, 13, v22, "AVE_Session_OF_Destroy", v7);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v17, 13, v18, "AVE_Session_OF_Destroy", v7);
    }
  }

  return v7;
}

uint64_t sub_149BB4(int a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v10 = sub_160F34(0x14u);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p\n", v11, 20, v12, "AVE_CFArray_AddChar", 27, "pNum != __null", valuePtr, a2);
          v11 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p", v11, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v7 = sub_160F34(0x14u);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v8, 20, v9, "AVE_CFArray_AddChar", 23, "pArray != __null", a1, 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t sub_149DD8(int a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v10 = sub_160F34(0x14u);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p\n", v11, 20, v12, "AVE_CFArray_AddSInt16", 55, "pNum != __null", valuePtr, a2);
          v11 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p", v11, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v7 = sub_160F34(0x14u);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v8, 20, v9, "AVE_CFArray_AddSInt16", 51, "pArray != __null", a1, 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t sub_149FFC(int a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v10 = sub_160F34(0x14u);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p\n", v11, 20, v12, "AVE_CFArray_AddSInt32", 83, "pNum != __null", valuePtr, a2);
          v11 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p", v11, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v7 = sub_160F34(0x14u);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v8, 20, v9, "AVE_CFArray_AddSInt32", 79, "pArray != __null", a1, 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t sub_14A220(uint64_t a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v10 = sub_160F34(0x14u);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lld %p\n", v11, 20, v12, "AVE_CFArray_AddSInt64", 110, "pNum != __null", valuePtr, a2);
          v11 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lld %p", v11, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v7 = sub_160F34(0x14u);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %lld %p\n", v8, 20, v9, "AVE_CFArray_AddSInt64", 106, "pArray != __null", a1, 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %lld %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t sub_14A444(__CFArray *a1, double a2)
{
  valuePtr = a2;
  if (a1)
  {
    v4 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
    if (v4)
    {
      v5 = v4;
      CFArrayAppendValue(a1, v4);
      CFRelease(v5);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v10 = sub_160F34(0x14u);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p\n", v11, 20, v12, "AVE_CFArray_AddFloat64", 138, "pNum != __null", a2, a1);
          v11 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p", v11);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v7 = sub_160F34(0x14u);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p\n", v8, 20, v9, "AVE_CFArray_AddFloat64", 134, "pArray != __null", a2, 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p", v8);
    }

    return 4294966295;
  }
}

uint64_t sub_14A680(__CFArray *a1, double a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a1, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v10 = sub_160F34(0x14u);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p\n", v11, 20, v12, "AVE_CFArray_AddDouble", 165, "pNum != __null", valuePtr, a1);
          v11 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p", v11);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v7 = sub_160F34(0x14u);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p\n", v8, 20, v9, "AVE_CFArray_AddDouble", 161, "pArray != __null", a2, 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p", v8);
    }

    return 4294966295;
  }
}

uint64_t sub_14A8C4(CFArrayRef theArray, CFIndex idx, _BYTE *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberCharType, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", v14, 20, v15, "AVE_CFArray_GetChar", 198, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", v14, 20, v15, "AVE_CFArray_GetChar", 198, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetChar", 191, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14AB6C(CFArrayRef theArray, CFIndex idx, _WORD *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", v14, 20, v15, "AVE_CFArray_GetSInt16", 229, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", v14, 20, v15, "AVE_CFArray_GetSInt16", 229, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetSInt16", 222, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14AE14(CFArrayRef theArray, CFIndex idx, _DWORD *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", v14, 20, v15, "AVE_CFArray_GetSInt32", 260, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", v14, 20, v15, "AVE_CFArray_GetSInt32", 260, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetSInt32", 253, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14B0BC(CFArrayRef theArray, CFIndex idx, void *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", v14, 20, v15, "AVE_CFArray_GetSInt64", 291, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", v14, 20, v15, "AVE_CFArray_GetSInt64", 291, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetSInt64", 284, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14B364(CFArrayRef theArray, CFIndex idx, void *a3)
{
  v4 = idx;
  valuePtr = 0;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberFloat64Type, &valuePtr))
        {
          result = 0;
        }

        else
        {
          result = 4294966288;
        }

        *a3 = valuePtr;
        return result;
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", v14, 20, v15, "AVE_CFArray_GetFloat64", 323, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_26;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_26;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_26:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", v14, 20, v15, "AVE_CFArray_GetFloat64", 323, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetFloat64", 316, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14B618(void *key, int a2, CFMutableDictionaryRef theDict)
{
  if (key && theDict)
  {
    v6 = &kCFBooleanTrue;
    if (!a2)
    {
      v6 = &kCFBooleanFalse;
    }

    CFDictionaryAddValue(theDict, key, *v6);
    return 0;
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v8 = sub_160F34(0x14u);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v9, 20, v10, "AVE_CFDict_AddBool", 378, "pKey != __null && pDict != __null", key, a2, theDict);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v11, 20, v12);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v9, 20, v10);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14B76C(const void *a1, __CFDictionary *a2, double a3)
{
  valuePtr = a3;
  if (a1 && a2)
  {
    v6 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(a2, a1, v6);
      CFRelease(v7);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v12 = sub_160F34(0x14u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lf %p\n", v13, 20, v14, "AVE_CFDict_AddDouble", 493, "pNum != __null", a1, valuePtr, a2);
          v13 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lf %p", v13, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v9 = sub_160F34(0x14u);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lf %p\n", v10, 20, v11, "AVE_CFDict_AddDouble", 489, "pKey != __null && pDict != __null", a1, a3, a2);
        v10 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lf %p", v10, 20);
    }

    return 4294966295;
  }
}

uint64_t sub_14B9CC(const void *a1, int a2, __CFDictionary *a3)
{
  valuePtr = a2;
  if (a1 && a3)
  {
    v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(a3, a1, v6);
      CFRelease(v7);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v13 = sub_160F34(0x14u);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %d %p\n", v14, 20, v15, "AVE_CFDict_AddSInt32", 584, "pNum != __null", a1, valuePtr, a3);
          v16 = sub_175AE4();
          v18 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %d %p", v16, 20, v18);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %d %p", v14, 20, v15);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v9 = sub_160F34(0x14u);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFDict_AddSInt32", 580, "pKey != __null && pDict != __null", a1, a2, a3);
        v12 = sub_175AE4();
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14BC0C(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  valuePtr = a2;
  if (a1 && a3)
  {
    v6 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(a3, a1, v6);
      CFRelease(v7);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v13 = sub_160F34(0x14u);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p\n", v14, 20, v15, "AVE_CFDict_AddSInt64", 614, "pNum != __null", a1, valuePtr, a3);
          v16 = sub_175AE4();
          v18 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p", v16, 20, v18);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p", v14, 20, v15);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v9 = sub_160F34(0x14u);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %p\n", v10, 20, v11, "AVE_CFDict_AddSInt64", 610, "pKey != __null && pDict != __null", a1, a2, a3);
        v12 = sub_175AE4();
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %p", v12, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %p", v10, 20, v11);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14BE4C(CFDictionaryRef theDict, void *key, BOOL *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        v8 = CFBooleanGetValue(Value);
        result = 0;
        *a3 = v8 != 0;
        return result;
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v14 = sub_160F34(0x14u);
    v15 = sub_175AE4();
    v16 = sub_160F68(4);
    if (v14)
    {
      if (Value)
      {
        v17 = CFGetTypeID(Value);
      }

      else
      {
        v17 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFBoolean %p %p %p %p %ld\n", v15, 20, v16, "AVE_CFDict_GetBool", 654, "pBool != __null && CFBooleanGetTypeID() == CFGetTypeID(pBool)", theDict, key, a3, Value, v17);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (!Value)
      {
        v18 = -1;
        goto LABEL_25;
      }
    }

    else if (!Value)
    {
      v18 = -1;
      goto LABEL_25;
    }

    v18 = CFGetTypeID(Value);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFBoolean %p %p %p %p %ld", v15, 20, v16, "AVE_CFDict_GetBool", 654, "pBool != __null && CFBooleanGetTypeID() == CFGetTypeID(pBool)", theDict, key, a3, Value, v18);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v10 = sub_160F34(0x14u);
    v11 = sub_175AE4();
    v12 = sub_160F68(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFDict_GetBool", 640, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v13 = sub_175AE4();
      v19 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
    }
  }

  return 4294966295;
}

uint64_t sub_14C0FC(CFDictionaryRef theDict, void *key, _BYTE *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberCharType, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", v14, 20, v15, "AVE_CFDict_GetChar", 690, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", v14, 20, v15, "AVE_CFDict_GetChar", 690, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetChar", 676, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14C3AC(CFDictionaryRef theDict, void *key, void *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberDoubleType, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", v14, 20, v15, "AVE_CFDict_GetDouble", 802, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", v14, 20, v15, "AVE_CFDict_GetDouble", 802, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetDouble", 788, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14C65C(CFDictionaryRef theDict, void *key, _WORD *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberSInt16Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", v14, 20, v15, "AVE_CFDict_GetSInt16", 877, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", v14, 20, v15, "AVE_CFDict_GetSInt16", 877, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetSInt16", 863, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14C90C(CFDictionaryRef theDict, void *key, _DWORD *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberSInt32Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", v14, 20, v15, "AVE_CFDict_GetSInt32", 915, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", v14, 20, v15, "AVE_CFDict_GetSInt32", 915, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetSInt32", 901, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14CBBC(CFDictionaryRef theDict, void *key, void *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberSInt64Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", v14, 20, v15, "AVE_CFDict_GetSInt64", 953, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", v14, 20, v15, "AVE_CFDict_GetSInt64", 953, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetSInt64", 939, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

const char *sub_14CE6C(const __CFString *a1, char *a2, int a3)
{
  if (a1)
  {
    result = CFStringGetCStringPtr(a1, 0);
    if (a3 >= 1 && a2 && !result)
    {
      CFStringGetCString(a1, a2, a3, 0);
      return a2;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v7 = sub_160F34(0x14u);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v8, 20, v9, "AVE_CFStr_GetStr", 975, "pStr != __null", 0, a2, a3);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 20, v11);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v8, 20, v9);
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_14CFC0(CFStringRef applicationID, CFStringRef key, char *a3, int a4)
{
  if (applicationID && key && a3 && a4 > 0)
  {
    v8 = CFPreferencesCopyAppValue(key, applicationID);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      if (v10 == CFStringGetTypeID())
      {
        v11 = sub_14CE6C(v9, a3, a4);
        if (v11 != a3)
        {
          sub_172100(a3, a4, "%s", v12, v13, v14, v15, v16, v11);
        }

        v17 = 0;
      }

      else
      {
        v17 = 4294966296;
      }

      CFRelease(v9);
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v18 = sub_160F34(0x14u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d\n", v19, 20, v20, "AVE_CFPref_GetStr", 1006, "pAppID != __null && pKey != __null && pVal != __null && num > 0", applicationID, key, a3, a4);
        v21 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v21, 20, v23, "AVE_CFPref_GetStr");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v19, 20, v20, "AVE_CFPref_GetStr");
      }
    }

    return 4294966295;
  }

  return v17;
}

uint64_t sub_14D180(CFStringRef applicationID, CFStringRef key, BOOL *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFBooleanGetTypeID())
      {
        v9 = CFEqual(v7, kCFBooleanTrue) != 0;
      }

      else
      {
        v15 = CFGetTypeID(v7);
        if (v15 != CFStringGetTypeID())
        {
          goto LABEL_19;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"true", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"yes", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"1", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        if (CFStringCompare(v7, @"false", 1uLL) && CFStringCompare(v7, @"no", 1uLL) && CFStringCompare(v7, @"0", 1uLL))
        {
LABEL_19:
          v10 = 4294966296;
          goto LABEL_20;
        }

        v9 = 0;
      }

LABEL_7:
      v10 = 0;
      *a3 = v9;
LABEL_20:
      CFRelease(v7);
      return v10;
    }

    return 4294966288;
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v11 = sub_160F34(0x14u);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v12, 20, v13, "AVE_CFPref_GetBool", 1047, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v14 = sub_175AE4();
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v14, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v13);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14D3D4(CFStringRef applicationID, CFStringRef key, _DWORD *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr;
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          v19 = 0;
          valuePtr = 0;
          v15 = sub_14CE6C(v7, &valuePtr, 12);
          if (v15)
          {
            v9 = 0;
            *a3 = strtoumax(v15, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v10 = sub_160F34(0x14u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFPref_GetUInt32", 1151, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = sub_175AE4();
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14D5E0(CFStringRef applicationID, CFStringRef key, uintmax_t *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        valuePtr[0] = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt64Type, valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr[0];
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          valuePtr[0] = 0;
          valuePtr[1] = 0;
          v19 = 0;
          v15 = sub_14CE6C(v7, valuePtr, 20);
          if (v15)
          {
            v9 = 0;
            *a3 = strtoumax(v15, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v10 = sub_160F34(0x14u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFPref_GetUInt64", 1202, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = sub_175AE4();
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14D7EC(CFStringRef applicationID, CFStringRef key, _DWORD *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        *valuePtr = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt32Type, valuePtr))
        {
          v9 = 0;
          *a3 = *valuePtr;
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          memset(valuePtr, 0, 13);
          v15 = sub_14CE6C(v7, valuePtr, 13);
          if (v15)
          {
            v9 = 0;
            *a3 = strtoumax(v15, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v10 = sub_160F34(0x14u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFPref_GetInt32", 1252, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = sub_175AE4();
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14D9F8(CFStringRef applicationID, CFStringRef key, uintmax_t *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt64Type, &valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr;
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          valuePtr = 0;
          v19[0] = 0;
          *(v19 + 5) = 0;
          v15 = sub_14CE6C(v7, &valuePtr, 21);
          if (v15)
          {
            v9 = 0;
            *a3 = strtoumax(v15, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v10 = sub_160F34(0x14u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFPref_GetInt64", 1303, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = sub_175AE4();
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14DC04(CFStringRef applicationID, CFStringRef key, double *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        v19 = 0;
        valuePtr[0] = 0;
        if (CFNumberGetValue(v7, kCFNumberDoubleType, valuePtr))
        {
          v9 = *valuePtr;
LABEL_19:
          v14 = 0;
          *a3 = v9;
LABEL_21:
          CFRelease(v7);
          return v14;
        }

        if (CFNumberGetValue(v7, kCFNumberSInt64Type, &v19))
        {
          v9 = v19;
          goto LABEL_19;
        }
      }

      else
      {
        v15 = CFGetTypeID(v7);
        if (v15 == CFStringGetTypeID())
        {
          valuePtr[0] = 0;
          valuePtr[1] = 0;
          v21 = 0;
          v16 = sub_14CE6C(v7, valuePtr, 20);
          if (v16)
          {
            v9 = strtod(v16, 0);
            goto LABEL_19;
          }
        }
      }

      v14 = 4294966296;
      goto LABEL_21;
    }

    return 4294966288;
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v10 = sub_160F34(0x14u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFPref_GetDouble", 1353, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = sub_175AE4();
        v18 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14DE24(uint64_t *a1, uint64_t a2)
{
  if (sub_160EF0(0x1Eu, 7))
  {
    v4 = sub_160F34(0x1Eu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v5, 30, v6, "AVE_Prop_Cfg_AVC_Init", a1, a2);
      v7 = sub_175AE4();
      v19 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v7, 30, v19, "AVE_Prop_Cfg_AVC_Init", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v5, 30, v6, "AVE_Prop_Cfg_AVC_Init", a1, a2);
    }
  }

  bzero(a1 + 4, 0x568uLL);
  *a1 = a2;
  *(a1 + 1) = xmmword_1846C0;
  a1[3] = -101;
  *(a1 + 9) = -1;
  *&v8 = 0xC0000000CLL;
  *(&v8 + 1) = 0xC0000000CLL;
  *(a1 + 21) = v8;
  *(a1 + 46) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 31) = _Q0;
  a1[33] = 0xBFF0000000000000;
  *(a1 + 68) = -1;
  *&v14 = -1;
  *(&v14 + 1) = -1;
  *(a1 + 35) = v14;
  *(a1 + 37) = v14;
  *(a1 + 78) = -1;
  *(a1 + 20) = _Q0;
  a1[43] = 0xFFFFFFFEFFFFFFFFLL;
  *(a1 + 95) = -1;
  *(a1 + 99) = -1;
  a1[50] = -1;
  a1[44] = -1;
  a1[45] = -1;
  a1[46] = -1;
  *(a1 + 116) = -1;
  *(a1 + 27) = v14;
  *(a1 + 28) = v14;
  *(a1 + 26) = v14;
  a1[59] = 0xBFF0000000000000;
  *(a1 + 30) = xmmword_185FB0;
  a1[62] = -1;
  *(a1 + 676) = -1;
  a1[153] = 0xC0000000CLL;
  *(a1 + 308) = -13;
  *(a1 + 314) = -1;
  *(a1 + 317) = -1;
  a1[160] = 0xBFF0000000000000;
  a1[162] = -1;
  *(a1 + 337) = -1;
  *(a1 + 340) = -1;
  *(a1 + 1404) = -1;
  a1[183] = -1;
  *(a1 + 179) = v14;
  *(a1 + 181) = v14;
  *(a1 + 177) = v14;
  if (sub_160EF0(0x1Eu, 7))
  {
    v15 = sub_160F34(0x1Eu);
    v16 = sub_175AE4();
    v17 = sub_160F68(7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d\n", v16, 30, v17, "AVE_Prop_Cfg_AVC_Init", a1, a2, 0);
      v16 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d", v16);
  }

  return 0;
}

uint64_t sub_14E0A4(uint64_t *a1)
{
  if (sub_160EF0(0x1Eu, 7))
  {
    v2 = sub_160F34(0x1Eu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v3, 30, v4, "AVE_Prop_Cfg_AVC_Uninit", a1, 0);
      v5 = sub_175AE4();
      v11 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v5, 30, v11, "AVE_Prop_Cfg_AVC_Uninit", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v3, 30, v4, "AVE_Prop_Cfg_AVC_Uninit", a1, 0);
    }
  }

  v6 = *a1;
  if (sub_160EF0(0x1Eu, 7))
  {
    v7 = sub_160F34(0x1Eu);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d\n", v8, 30, v9, "AVE_Prop_Cfg_AVC_Uninit", a1, v6, 0);
      v8 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d", v8);
  }

  return 0;
}

char **sub_14E230(int a1)
{
  if (a1 >= 41)
  {
    return 0;
  }

  else
  {
    return &(&off_2039C8)[2 * a1];
  }
}

uint64_t sub_14E248(int a1, int a2, int a3, int a4, int a5, int a6)
{
  v9 = sub_16FDAC(a1, a2, a3);
  if (!v9)
  {
    return 4294966294;
  }

  v10 = *v9;
  if (v10 < 1)
  {
    v14 = 4294966294;
  }

  else
  {
    v11 = v9 + 3;
    v12 = 1;
    v13 = 1;
    do
    {
      if (*(v11 - 1) <= a4 && *v11 <= a5)
      {
        break;
      }

      v13 = v12 < v10;
      v11 += 3;
      ++v12;
    }

    while (v12 - v10 != 1);
    v14 = v13 ? 0 : 4294966294;
  }

  v15 = v9[13];
  if (v15 < 1)
  {
    return 4294966294;
  }

  for (i = v9 + 16; ; i += 3)
  {
    if (*(i - 1) >= a4 && *i >= a5)
    {
      v17 = *(i - 2);
      if (v17 == a6 || v17 < 0)
      {
        break;
      }
    }

    if (!--v15)
    {
      return 4294966294;
    }
  }

  return v14;
}

uint64_t sub_14E330(int a1, int a2, int a3, unsigned int a4, int *a5)
{
  v5 = 4294966295;
  if (a1 >= 1 && a2 >= 1 && a3 >= 1 && a4 <= 1 && a5)
  {
    *a5 = a1;
    v6 = (a1 - 1);
    if (a1 == 1)
    {
      v5 = 0;
      a5[1] = 0;
      a5[2] = a2;
    }

    else if (a4)
    {
      v7 = (a2 / a1 + 63) & 0xFFFFFFC0;
      do
      {
        v8 = v7;
        v9 = a2 - v7 * v6;
        if (v7 < 0x81)
        {
          break;
        }

        v7 -= 64;
      }

      while (v9 < 96);
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = &a5[2 * v10 + 1];
        *v12 = v11;
        v12[1] = v8;
        v11 += v8;
        ++v10;
      }

      while (v10 != v6);
      v5 = 0;
      v21 = &a5[2 * v6];
      v21[1] = v11;
      v21[2] = v9;
    }

    else
    {
      v13 = (a2 + a3 - 1) / a3;
      if (v13 < 1)
      {
        return 0;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v16 = a5 + 2;
        while (1)
        {
          v17 = (v13 + (a1 + 1) / 2) / a1;
          if (v17 <= 1)
          {
            v17 = 1;
          }

          v18 = v17 >= v13 ? v13 : v17;
          v14 += v18;
          if (v14 > 0x100)
          {
            break;
          }

          v5 = 0;
          v19 = v18 * a3;
          if (v18 * a3 >= a2 - v15)
          {
            v19 = a2 - v15;
          }

          *(v16 - 1) = v15;
          *v16 = v19;
          v15 += v19;
          --a1;
          v16 += 2;
          v20 = __OFSUB__(v13, v18);
          v13 -= v18;
          if ((v13 < 0) ^ v20 | (v13 == 0))
          {
            return v5;
          }
        }

        return 4294966281;
      }
    }
  }

  return v5;
}

int *sub_14E470(int a1, int a2, int a3)
{
  result = sub_16FDAC(a1, a2, a3);
  if (result)
  {
    v4 = *result;
    result += 2;
    if (v4 < 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_14E498(int a1, int a2, int a3, signed int *a4, signed int *a5)
{
  v10 = sub_16FDAC(a1, a2, a3);
  if (!v10)
  {
    if (sub_160EF0(3u, 4))
    {
      v15 = sub_160F34(3u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get resolution capabilities %d %d %d\n", v16, 3, v17, "AVE_Enc_AlignDimension", 408, "pRes != __null", a1, a2, a3);
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get resolution capabilities %d %d %d", v16, 3);
    }

    return 4294966296;
  }

  v11 = *v10;
  if (*v10 <= 0)
  {
    if (sub_160EF0(3u, 4))
    {
      v18 = sub_160F34(3u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | No valid entries for Min resolution %d %d %d %d\n", v19, 3, v20, "AVE_Enc_AlignDimension", 413, "num >= 1", a1, a2, a3, v11);
        v21 = sub_175AE4();
        sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | No valid entries for Min resolution %d %d %d %d", v21, 3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | No valid entries for Min resolution %d %d %d %d", v19, 3);
      }
    }

    return 4294966296;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (a3 != 2 && a3 != 1)
  {
    return 4294966296;
  }

  result = 0;
  if (((*a4 + 15) & 0xFFFFFFF0) > v13)
  {
    v13 = (*a4 + 15) & 0xFFFFFFF0;
  }

  *a4 = v13;
  if (((*a5 + 15) & 0xFFFFFFF0) > v12)
  {
    v12 = (*a5 + 15) & 0xFFFFFFF0;
  }

  *a5 = v12;
  return result;
}

_DWORD *sub_14E6F8(unsigned int *a1, int a2, int a3, int a4)
{
  v4 = *a1;
  if (v4 < 1)
  {
    return 0;
  }

  for (i = a1 + 5; *(i - 1) != a2 || *i != a3 || *(i - 2) != a4; i += 6)
  {
    if (!--v4)
    {
      return 0;
    }
  }

  return i - 3;
}

_DWORD *sub_14E748(unsigned int *a1, int a2)
{
  v2 = *a1;
  if (v2 < 1)
  {
    return 0;
  }

  for (result = a1 + 1; *result != a2; result += 4)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_14E778(const char *a1, const char *a2, char *a3, int a4)
{
  if (!a2 || !a3 || a4 <= 0)
  {
    if (sub_160EF0(0x2Cu, 4))
    {
      v20 = sub_160F34(0x2Cu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d\n", v21, 44, v22, "AVE_DW_GetStr", 63, "pKey != __null && pVal != __null && num > 0", a1, a2, a3, a4);
        v23 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v23, 44, v31, "AVE_DW_GetStr");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v21, 44, v22, "AVE_DW_GetStr");
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = "com.apple.coremedia";
  }

  v9 = CFStringCreateWithCString(0, v8, 0);
  v10 = CFStringCreateWithCString(0, a2, 0);
  v11 = v10;
  if (!v9 || !v10)
  {
    v18 = 4294966293;
    if (!v9)
    {
      if (!v10)
      {
        return v18;
      }

      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v12 = sub_14CFC0(v9, v10, a3, a4);
  if (v12)
  {
    v18 = v12;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *cStr = 0u;
    v36 = 0u;
    sub_172100(cStr, 128, "AVEVideoEncoder%s", v13, v14, v15, v16, v17, a2 + 3);
    CFRelease(v11);
    v11 = CFStringCreateWithCString(0, cStr, 0);
    if (!v11)
    {
      goto LABEL_31;
    }

    v19 = sub_14CFC0(v9, v11, a3, a4);
    if (v19)
    {
      v18 = v19;
      goto LABEL_31;
    }

    if (sub_160EF0(0x2Cu, 6))
    {
      v27 = sub_160F34(0x2Cu);
      v28 = sub_175AE4();
      v29 = sub_160F68(6);
      if (v27)
      {
        printf("%lld %d AVE %s: defaults write %s = %s\n", v28, 44, v29, cStr, a3);
        v28 = sub_175AE4();
        v34 = a3;
        v33 = sub_160F68(6);
      }

      else
      {
        v34 = a3;
        v33 = v29;
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %s", v28, 44, v33, cStr, v34);
    }
  }

  else if (sub_160EF0(0x2Cu, 6))
  {
    v18 = sub_160F34(0x2Cu);
    v24 = sub_175AE4();
    v25 = sub_160F68(6);
    if (!v18)
    {
      syslog(3, "%lld %d AVE %s: defaults write %s = %s", v24, 44, v25, a2, a3);
      goto LABEL_31;
    }

    printf("%lld %d AVE %s: defaults write %s = %s\n", v24, 44, v25, a2, a3);
    v26 = sub_175AE4();
    v32 = sub_160F68(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %s", v26, 44, v32, a2, a3);
  }

  v18 = 0;
LABEL_31:
  CFRelease(v9);
  if (v11)
  {
LABEL_32:
    CFRelease(v11);
  }

  return v18;
}

uint64_t sub_14EAFC(const char *a1, const char *a2, unsigned __int8 *a3)
{
  if (!a2 || !a3)
  {
    if (sub_160EF0(0x2Cu, 4))
    {
      v18 = sub_160F34(0x2Cu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v19, 44, v20, "AVE_DW_GetBool", 134, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v19, 44, v20);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v16;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_14D180(v7, v8, a3);
  if (!v10)
  {
    if (sub_160EF0(0x2Cu, 6))
    {
      v22 = sub_160F34(0x2Cu);
      v23 = sub_175AE4();
      v24 = sub_160F68(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = %d\n", v23, 44, v24, a2, *a3);
        v23 = sub_175AE4();
        v24 = sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %d", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = v10;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *cStr = 0u;
  v32 = 0u;
  sub_172100(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = sub_14D180(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!sub_160EF0(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = sub_160F34(0x2Cu);
  v25 = sub_175AE4();
  v26 = sub_160F68(6);
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = %d\n", v25, 44, v26, cStr, *a3);
    v27 = sub_175AE4();
    v28 = sub_160F68(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %d", v27, 44, v28, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %d", v25, 44, v26, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v16;
}

uint64_t sub_14EE74(const char *a1, const char *a2, _DWORD *a3)
{
  if (!a2 || !a3)
  {
    if (sub_160EF0(0x2Cu, 4))
    {
      v18 = sub_160F34(0x2Cu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v19, 44, v20, "AVE_DW_GetUInt32", 276, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v19, 44, v20);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v16;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_14D3D4(v7, v8, a3);
  if (!v10)
  {
    if (sub_160EF0(0x2Cu, 6))
    {
      v22 = sub_160F34(0x2Cu);
      v23 = sub_175AE4();
      v24 = sub_160F68(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = 0x%x\n", v23, 44, v24, a2, *a3);
        v23 = sub_175AE4();
        v24 = sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = v10;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *cStr = 0u;
  v32 = 0u;
  sub_172100(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = sub_14D3D4(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!sub_160EF0(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = sub_160F34(0x2Cu);
  v25 = sub_175AE4();
  v26 = sub_160F68(6);
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = 0x%x\n", v25, 44, v26, cStr, *a3);
    v27 = sub_175AE4();
    v28 = sub_160F68(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v27, 44, v28, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v25, 44, v26, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v16;
}

uint64_t sub_14F1EC(const char *a1, const char *a2, uintmax_t *a3)
{
  if (!a2 || !a3)
  {
    if (sub_160EF0(0x2Cu, 4))
    {
      v18 = sub_160F34(0x2Cu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v19, 44, v20, "AVE_DW_GetUInt64", 348, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v19, 44, v20);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v16;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_14D5E0(v7, v8, a3);
  if (!v10)
  {
    if (sub_160EF0(0x2Cu, 6))
    {
      v22 = sub_160F34(0x2Cu);
      v23 = sub_175AE4();
      v24 = sub_160F68(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = 0x%llx\n", v23, 44, v24, a2, *a3);
        v23 = sub_175AE4();
        v24 = sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = v10;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *cStr = 0u;
  v32 = 0u;
  sub_172100(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = sub_14D5E0(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!sub_160EF0(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = sub_160F34(0x2Cu);
  v25 = sub_175AE4();
  v26 = sub_160F68(6);
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = 0x%llx\n", v25, 44, v26, cStr, *a3);
    v27 = sub_175AE4();
    v28 = sub_160F68(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v27, 44, v28, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v25, 44, v26, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v16;
}

uint64_t sub_14F564(const char *a1, const char *a2, _DWORD *a3)
{
  if (!a2 || !a3)
  {
    if (sub_160EF0(0x2Cu, 4))
    {
      v18 = sub_160F34(0x2Cu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v19, 44, v20, "AVE_DW_GetInt32", 419, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v19, 44, v20);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v16;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_14D7EC(v7, v8, a3);
  if (!v10)
  {
    if (sub_160EF0(0x2Cu, 6))
    {
      v22 = sub_160F34(0x2Cu);
      v23 = sub_175AE4();
      v24 = sub_160F68(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = %d\n", v23, 44, v24, a2, *a3);
        v23 = sub_175AE4();
        v24 = sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %d", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = v10;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *cStr = 0u;
  v32 = 0u;
  sub_172100(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = sub_14D7EC(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!sub_160EF0(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = sub_160F34(0x2Cu);
  v25 = sub_175AE4();
  v26 = sub_160F68(6);
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = %d\n", v25, 44, v26, cStr, *a3);
    v27 = sub_175AE4();
    v28 = sub_160F68(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %d", v27, 44, v28, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %d", v25, 44, v26, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v16;
}

uint64_t sub_14F8DC(const char *a1, const char *a2, uintmax_t *a3)
{
  if (!a2 || !a3)
  {
    if (sub_160EF0(0x2Cu, 4))
    {
      v18 = sub_160F34(0x2Cu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v19, 44, v20, "AVE_DW_GetInt64", 491, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v19, 44, v20);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v16;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_14D9F8(v7, v8, a3);
  if (!v10)
  {
    if (sub_160EF0(0x2Cu, 6))
    {
      v22 = sub_160F34(0x2Cu);
      v23 = sub_175AE4();
      v24 = sub_160F68(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = %lld\n", v23, 44, v24, a2, *a3);
        v23 = sub_175AE4();
        v24 = sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = v10;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *cStr = 0u;
  v32 = 0u;
  sub_172100(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = sub_14D9F8(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!sub_160EF0(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = sub_160F34(0x2Cu);
  v25 = sub_175AE4();
  v26 = sub_160F68(6);
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = %lld\n", v25, 44, v26, cStr, *a3);
    v27 = sub_175AE4();
    v28 = sub_160F68(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v27, 44, v28, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v25, 44, v26, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v16;
}

uint64_t sub_14FC54(const char *a1, const char *a2, double *a3)
{
  if (!a2 || !a3)
  {
    if (sub_160EF0(0x2Cu, 4))
    {
      v18 = sub_160F34(0x2Cu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v19, 44, v20, "AVE_DW_GetDouble", 562, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = sub_175AE4();
        v32 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v32);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v19, 44, v20);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v16;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_14DC04(v7, v8, a3);
  if (!v10)
  {
    if (sub_160EF0(0x2Cu, 6))
    {
      v22 = sub_160F34(0x2Cu);
      v23 = sub_175AE4();
      v24 = sub_160F68(6);
      v25 = *a3;
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = %lf\n", v23, 44, v24, a2, *a3);
        v23 = sub_175AE4();
        v24 = sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = v10;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *cStr = 0u;
  v34 = 0u;
  sub_172100(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = sub_14DC04(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!sub_160EF0(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = sub_160F34(0x2Cu);
  v26 = sub_175AE4();
  v27 = sub_160F68(6);
  v28 = *a3;
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = %lf\n", v26, 44, v27, cStr, *a3);
    v29 = sub_175AE4();
    v30 = sub_160F68(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v29, 44, v30, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v26, 44, v27, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v16;
}

char *sub_14FFD4(int a1)
{
  result = sub_16FD90(a1);
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

uint64_t sub_14FFF4(char *a1, int *a2)
{
  if (!a1)
  {
    return 4294966288;
  }

  v3 = a1;
  v4 = 0;
  v5 = a2 + 2;
  v6 = 0xFFFFFFFFLL;
  v7 = a2 + 2;
  while (1)
  {
    result = *v3;
    if (*v3 <= 0x53u)
    {
      if (*v3 <= 0x4Cu)
      {
        if (*v3 <= 0x43u)
        {
          if (result == 32)
          {
            goto LABEL_59;
          }

          if (!*v3)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (result == 68)
          {
            goto LABEL_31;
          }

          if (result == 71)
          {
LABEL_32:
            v4 = 4;
            goto LABEL_59;
          }
        }
      }

      else if (*v3 > 0x4Fu)
      {
        if (result == 80)
        {
          goto LABEL_34;
        }

        if (result == 83)
        {
LABEL_30:
          v4 = 6;
          goto LABEL_59;
        }
      }

      else
      {
        if (result == 77)
        {
          goto LABEL_24;
        }

        if (result == 78)
        {
LABEL_33:
          v4 = 3;
          goto LABEL_59;
        }
      }
    }

    else if (*v3 > 0x6Du)
    {
      if (*v3 > 0x72u)
      {
        if (result == 115)
        {
          goto LABEL_30;
        }

        if (result == 116)
        {
LABEL_27:
          v4 = 1;
          goto LABEL_59;
        }
      }

      else
      {
        if (result == 110)
        {
          goto LABEL_33;
        }

        if (result == 112)
        {
LABEL_34:
          v4 = 5;
          goto LABEL_59;
        }
      }
    }

    else if (*v3 > 0x66u)
    {
      if (result == 103)
      {
        goto LABEL_32;
      }

      if (result == 109)
      {
LABEL_24:
        v4 = 2;
        goto LABEL_59;
      }
    }

    else
    {
      if (result == 84)
      {
        goto LABEL_27;
      }

      if (result == 100)
      {
LABEL_31:
        v4 = 0;
        goto LABEL_59;
      }
    }

    if ((result - 48) > 9)
    {
      result = 4294966296;
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_69;
      }

      return 4294966288;
    }

    v9 = atoi(v3);
    v10 = v9;
    if (v4 <= 1)
    {
      if (v4)
      {
        v10 = v6 & ~(v6 >> 31);
        *v7 = v9 != 0;
        goto LABEL_57;
      }

      if (v9 > 5)
      {
        result = 4294966290;
        if ((v6 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }

        return 4294966288;
      }

      v7 = &v5[12 * v9];
    }

    else
    {
      switch(v4)
      {
        case 2:
          v10 = v6 & ~(v6 >> 31);
          v7[1] = v9 != 0;
          break;
        case 3:
          if ((v9 - 5) < 0xFFFFFFFC)
          {
LABEL_67:
            result = 4294966278;
LABEL_68:
            if ((v6 & 0x80000000) == 0)
            {
              goto LABEL_69;
            }

            return 4294966288;
          }

          v7[2] = v9;
          v10 = v6 & ~(v6 >> 31);
          break;
        case 4:
          if (v9 > 3)
          {
            goto LABEL_67;
          }

          v11 = v7[3];
          v12 = &v7[2 * v11];
          v12[4] = v9;
          v12[5] = 1;
          v7[3] = v11 + 1;
          v10 = v6 & ~(v6 >> 31);
          break;
        default:
          v13 = v7[3];
          if (v13 < 1)
          {
LABEL_61:
            result = 4294966274;
            if ((v6 & 0x80000000) == 0)
            {
              goto LABEL_69;
            }

            return 4294966288;
          }

          v14 = v7 + 5;
          while (*(v14 - 1) != v9)
          {
            v14 += 2;
            if (!--v13)
            {
              goto LABEL_61;
            }
          }

          *v14 = v4 != 5;
          v10 = v6;
          break;
      }
    }

LABEL_57:
    result = strchr(v3, 32);
    if (!result)
    {
      break;
    }

    v3 = result;
    v6 = v10;
LABEL_59:
    ++v3;
  }

  LODWORD(v6) = v10;
  if ((v10 & 0x80000000) != 0)
  {
    return 4294966288;
  }

LABEL_69:
  v15 = *a2;
  if (*a2 <= v6 + 1)
  {
    v15 = v6 + 1;
  }

  *a2 = v15;
  return result;
}

uint64_t sub_1502D4(_DWORD *a1)
{
  v7 = 0;
  v6 = 0;
  if (!sub_14EAFC(0, "AVE_EnableLossless", &v7))
  {
    v2 = 10;
    if (v7)
    {
      v2 = 8;
    }

    *&a1[v2] |= 0x200uLL;
  }

  if (!sub_14F564(0, "AVE_FrameQP", &v6))
  {
    v3 = v6;
    a1[201] = v6;
    a1[202] = v3;
    a1[203] = v3;
  }

  if (!sub_14F564(0, "AVE_MaximizePowerEfficiency", &v6))
  {
    if (v6)
    {
      a1[16] |= 2u;
    }

    else
    {
      a1[17] |= 2u;
    }
  }

  if (!sub_14F564(0, "AVE_UseCAVLCBits", &v6))
  {
    if (v6)
    {
      a1[16] |= 0x100u;
    }

    else
    {
      a1[17] |= 0x100u;
    }
  }

  if (!sub_14F564(0, "AVE_EnableMCTF", &v6))
  {
    v4 = 8;
    if (!v6)
    {
      v4 = 10;
    }

    *&a1[v4] |= 0x20uLL;
  }

  if (!sub_14F564(0, "AVE_Bframes", &v6))
  {
    a1[221] = v6;
  }

  if (!sub_14F564(0, "AVE_BaseFrameRate", &v6))
  {
    *a1 = v6;
  }

  if (!sub_14F564(0, "AVE_InitialQPI", &v6))
  {
    a1[201] = v6;
  }

  if (!sub_14F564(0, "AVE_InitialQPP", &v6))
  {
    a1[202] = v6;
  }

  if (!sub_14F564(0, "AVE_InitialQPB", &v6))
  {
    a1[203] = v6;
  }

  if (!sub_14F564(0, "AVE_SoftMinQP", &v6))
  {
    a1[196] = v6;
  }

  if (!sub_14F564(0, "AVE_SoftMaxQP", &v6))
  {
    a1[197] = v6;
  }

  if (!sub_14F564(0, "AVE_HardMinQP", &v6))
  {
    a1[240] = v6;
  }

  result = sub_14F564(0, "AVE_HardMaxQP", &v6);
  if (!result)
  {
    a1[241] = v6;
  }

  return result;
}

uint64_t sub_150534(void *a1)
{
  v3 = 0;
  if (!sub_14F1EC(0, "AVE_CfgOn", &v3))
  {
    a1[2] = v3;
  }

  if (!sub_14F1EC(0, "AVE_CfgOff", &v3))
  {
    a1[3] = v3;
  }

  if (!sub_14F1EC(0, "AVE_SwFeatureOn", &v3))
  {
    a1[4] = v3;
  }

  if (!sub_14F1EC(0, "AVE_SwFeatureOff", &v3))
  {
    a1[5] = v3;
  }

  if (!sub_14F1EC(0, "AVE_HwFeatureOn", &v3))
  {
    a1[6] = v3;
  }

  result = sub_14F1EC(0, "AVE_HwFeatureOff", &v3);
  if (!result)
  {
    a1[7] = v3;
  }

  return result;
}

uint64_t sub_150620(int *a1)
{
  v9 = 0;
  if (!sub_14F564(0, "AVE_DPM_Mode", &v9))
  {
    *a1 = v9 | 0x100;
  }

  if (!sub_14F564(0, "AVE_DPM_PL_IOPMin", &v9))
  {
    v2 = v9;
    if (v9 <= 1)
    {
      v2 = 1;
    }

    if (v2 >= 4)
    {
      v2 = 4;
    }

    a1[1] |= 1u;
    a1[2] = v2;
  }

  if (!sub_14F564(0, "AVE_DPM_PL_IOPMax", &v9))
  {
    v3 = v9;
    if (v9 <= 1)
    {
      v3 = 1;
    }

    if (v3 >= 4)
    {
      v3 = 4;
    }

    a1[3] = v3;
    a1[1] |= 0x10000u;
  }

  if (!sub_14F564(0, "AVE_DPM_PL_DCSMin", &v9))
  {
    v4 = v9;
    if (v9 <= 1)
    {
      v4 = 1;
    }

    if (v4 >= 4)
    {
      v4 = 4;
    }

    a1[4] = v4;
    a1[1] |= 2u;
  }

  if (!sub_14F564(0, "AVE_DPM_PL_DCSMax", &v9))
  {
    v5 = v9;
    if (v9 <= 1)
    {
      v5 = 1;
    }

    if (v5 >= 4)
    {
      v5 = 4;
    }

    a1[5] = v5;
    a1[1] |= 0x20000u;
  }

  if (!sub_14F564(0, "AVE_DPM_PL_FABMin", &v9))
  {
    v6 = v9;
    if (v9 <= 1)
    {
      v6 = 1;
    }

    if (v6 >= 4)
    {
      v6 = 4;
    }

    a1[6] = v6;
    a1[1] |= 4u;
  }

  result = sub_14F564(0, "AVE_DPM_PL_FABMax", &v9);
  if (!result)
  {
    v8 = v9;
    if (v9 <= 1)
    {
      v8 = 1;
    }

    if (v8 >= 4)
    {
      v8 = 4;
    }

    a1[7] = v8;
    a1[1] |= 0x40000u;
  }

  return result;
}

uint64_t sub_1507EC(int *a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *v5 = 0u;
  v6 = 0u;
  v4 = 0;
  if (!sub_14F564(0, "AVE_DLB_AllocMode", &v4))
  {
    a1[1] = v4;
  }

  if (!sub_14F564(0, "AVE_DLB_Type", &v4))
  {
    a1[2] = v4;
    *a1 = 1;
  }

  if (!sub_14F564(0, "AVE_DLB_SVESchedMode", &v4))
  {
    a1[3] = v4;
    *a1 = 1;
  }

  if (!sub_14F564(0, "AVE_DLB_SVENum", &v4))
  {
    a1[4] = v4;
    *a1 = 1;
  }

  if (!sub_14E778(0, "AVE_DLB_SVEMap", v5, 128))
  {
    sub_14FFF4(v5, a1);
  }

  v2 = sub_14E778(0, "AVE_DLB_Cfg", v5, 128);
  if (!v2)
  {
    sub_14FFF4(v5, a1);
  }

  return v2;
}

uint64_t sub_150948(_DWORD *a1)
{
  v3 = 0;
  if (!sub_14EE74(0, "AVE_PerfFeatureOn", &v3 + 1))
  {
    a1[16] = HIDWORD(v3);
  }

  if (!sub_14EE74(0, "AVE_PerfFeatureOff", &v3 + 1))
  {
    a1[17] = HIDWORD(v3);
  }

  if (!sub_14F564(0, "AVE_InputQueueMaxCount", &v3))
  {
    a1[18] = v3;
  }

  if (!sub_14F564(0, "AVE_MaxFrameRate", &v3))
  {
    a1[19] = v3;
  }

  if (!sub_14F564(0, "AVE_Realtime", &v3))
  {
    a1[20] = v3;
  }

  sub_150620(a1 + 21);
  return sub_1507EC(a1 + 29);
}

uint64_t sub_150A24(uint64_t a1)
{
  v4 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *__src = 0u;
  v6 = 0u;
  if (!sub_14EE74(0, "AVE_DumpFeature", &v4))
  {
    *(a1 + 412) = v4;
  }

  if (!sub_14EE74(0, "AVE_DumpMode", &v4))
  {
    *(a1 + 416) = v4;
  }

  v2 = sub_14E778(0, "AVE_OutputPath", __src, 128);
  if (!v2)
  {
    strncpy((a1 + 420), __src, 0x7FuLL);
  }

  return v2;
}

uint64_t sub_150B04(uint64_t a1)
{
  v5 = 0;
  v4 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__src = 0u;
  v7 = 0u;
  if (!sub_14F1EC(0, "AVE_Verbose", &v5))
  {
    *(a1 + 8) = v5;
    *a1 |= 0x100u;
  }

  if (!sub_14F1EC(0, "AVE_KernelVerbose", &v5))
  {
    *(a1 + 16) = v5;
    *a1 |= 0x200u;
  }

  if (!sub_14F1EC(0, "AVE_FirmwareVerbose", &v5))
  {
    *(a1 + 24) = v5;
    *a1 |= 0x300u;
  }

  if (!sub_14F1EC(0, "AVE_AlgVerbose", &v5))
  {
    *(a1 + 32) = v5;
    *a1 |= 0x400u;
  }

  if (!sub_14F564(0, "AVE_LogConsole", &v4))
  {
    *(a1 + 40) = v4;
  }

  v2 = sub_14E778(0, "AVE_LogPath", __src, 128);
  if (!v2)
  {
    strncpy((a1 + 44), __src, 0x7FuLL);
  }

  return v2;
}

uint64_t sub_150C78(uint64_t a1)
{
  v6 = 0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  if (!sub_14F1EC(0, "AVE_RCFeatureOn", &v4))
  {
    *(a1 + 768) = v4;
  }

  if (!sub_14F1EC(0, "AVE_RCFeatureOff", &v4))
  {
    *(a1 + 776) = v4;
  }

  if (!sub_14F564(0, "AVE_RCMinQP", &v6))
  {
    *(a1 + 784) = v6;
  }

  if (!sub_14F564(0, "AVE_RCMaxQP", &v6))
  {
    *(a1 + 788) = v6;
  }

  if (!sub_14F564(0, "AVE_LookAheadFrameCount", &v6))
  {
    *(a1 + 792) = v6;
  }

  if (!sub_14F564(0, "AVE_RCMode", &v6))
  {
    *(a1 + 796) = v6;
  }

  if (!sub_14F564(0, "AVE_Bitrate", &v6))
  {
    *(a1 + 800) = v6;
  }

  if (!sub_14F564(0, "AVE_QPI", &v6))
  {
    *(a1 + 804) = v6;
  }

  if (!sub_14F564(0, "AVE_QPP", &v6))
  {
    *(a1 + 808) = v6;
  }

  if (!sub_14F564(0, "AVE_QPB", &v6))
  {
    *(a1 + 812) = v6;
  }

  if (!sub_14FC54(0, "AVE_CRFScale", &v3))
  {
    *(a1 + 816) = v3;
  }

  if (!sub_14F564(0, "AVE_VBVMaxBitRate", &v6))
  {
    *(a1 + 824) = v6;
  }

  if (!sub_14FC54(0, "AVE_VBVBufferSize", &v3))
  {
    *(a1 + 832) = v3;
  }

  if (!sub_14FC54(0, "AVE_VBVInitialDelay", &v3))
  {
    *(a1 + 840) = v3;
  }

  if (!sub_14F564(0, "AVE_Parallel_Limit", &v6))
  {
    *(a1 + 848) = v6;
  }

  if (!sub_14F8DC(0, "AVE_Parallel_MinFrameCnt", &v5))
  {
    *(a1 + 856) = v5;
  }

  result = sub_14F8DC(0, "AVE_Parallel_MinDuration", &v5);
  if (!result)
  {
    *(a1 + 864) = v5;
  }

  return result;
}

uint64_t sub_150ECC(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  if (!sub_14EE74(0, "AVE_GOPFeatureOn", &v4 + 1))
  {
    *(a1 + 872) = HIDWORD(v4);
  }

  if (!sub_14EE74(0, "AVE_GOPFeatureOff", &v4 + 1))
  {
    *(a1 + 876) = HIDWORD(v4);
  }

  if (!sub_14F564(0, "AVE_NumOfPFrame", &v4))
  {
    *(a1 + 880) = v4;
  }

  if (!sub_14F564(0, "AVE_NumOfBFrame", &v4))
  {
    *(a1 + 884) = v4;
  }

  if (!sub_14F564(0, "AVE_NumOfGOPLayer", &v4))
  {
    *(a1 + 888) = v4;
  }

  if (!sub_14F564(0, "AVE_MaxKeyFrameInterval", &v4))
  {
    *(a1 + 896) = v4;
  }

  if (!sub_14F564(0, "AVE_StrictKeyFrameInterval", &v4))
  {
    *(a1 + 900) = v4;
  }

  if (!sub_14FC54(0, "AVE_MaxKeyFrameIntervalDuration", &v3))
  {
    *(a1 + 904) = v3;
  }

  if (!sub_14FC54(0, "AVE_StrictKeyFrameIntervalDuration", &v3))
  {
    *(a1 + 912) = v3;
  }

  result = sub_14F564(0, "AVE_NumOfTemporalLayer", &v4);
  if (!result)
  {
    *(a1 + 892) = v4;
  }

  return result;
}

uint64_t sub_151038(_DWORD *a1)
{
  v3 = 0;
  if (!sub_14EE74(0, "AVE_RefFeatureOn", &v3 + 1))
  {
    a1[230] = HIDWORD(v3);
  }

  if (!sub_14EE74(0, "AVE_RefFeatureOff", &v3 + 1))
  {
    a1[231] = HIDWORD(v3);
  }

  if (!sub_14F564(0, "AVE_RefNumOfPFrame", &v3))
  {
    a1[232] = v3;
  }

  if (!sub_14F564(0, "AVE_RefNumOfBFrame", &v3))
  {
    a1[233] = v3;
  }

  if (!sub_14F564(0, "AVE_RefGapOfPFrame", &v3))
  {
    a1[234] = v3;
  }

  if (!sub_14F564(0, "AVE_RefGapOfBFrameL0", &v3))
  {
    a1[235] = v3;
  }

  result = sub_14F564(0, "AVE_RefGapOfBFrameL1", &v3);
  if (!result)
  {
    a1[236] = v3;
  }

  return result;
}

uint64_t sub_151144(_DWORD *a1)
{
  v3 = 0;
  if (!sub_14EE74(0, "AVE_QPModFeatureOn", &v3 + 1))
  {
    a1[237] = HIDWORD(v3);
  }

  if (!sub_14EE74(0, "AVE_QPModFeatureOff", &v3 + 1))
  {
    a1[238] = HIDWORD(v3);
  }

  if (!sub_14F564(0, "AVE_QPModLevel", &v3))
  {
    a1[239] = v3;
  }

  if (!sub_14F564(0, "AVE_BlkMinQP", &v3))
  {
    a1[240] = v3;
  }

  result = sub_14F564(0, "AVE_BlkMaxQP", &v3);
  if (!result)
  {
    a1[241] = v3;
  }

  return result;
}

uint64_t sub_151210(uint64_t a1)
{
  v3 = 0;
  if (!sub_14EE74(0, "AVE_LambdaModFeatureOn", &v3))
  {
    *(a1 + 968) = v3;
  }

  result = sub_14EE74(0, "AVE_LambdaModFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 972) = v3;
  }

  return result;
}

uint64_t sub_15127C(uint64_t a1)
{
  v3 = 0;
  if (!sub_14EE74(0, "AVE_ModeDecFeatureOn", &v3))
  {
    *(a1 + 976) = v3;
  }

  result = sub_14EE74(0, "AVE_ModeDecFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 980) = v3;
  }

  return result;
}

uint64_t sub_1512E8(uint64_t a1)
{
  v4 = 0;
  v3 = 0;
  if (!sub_14F1EC(0, "AVE_AlgFeatureOn", &v3))
  {
    *(a1 + 728) = v3;
  }

  if (!sub_14F1EC(0, "AVE_AlgFeatureOff", &v3))
  {
    *(a1 + 736) = v3;
  }

  if (!sub_14F564(0, "AVE_Profile", &v4))
  {
    *(a1 + 744) = v4;
  }

  if (!sub_14F564(0, "AVE_Level", &v4))
  {
    *(a1 + 748) = v4;
  }

  if (!sub_14F564(0, "AVE_Tier", &v4))
  {
    *(a1 + 752) = v4;
  }

  if (!sub_14F564(0, "AVE_ScalingMatrix", &v4))
  {
    *(a1 + 756) = v4;
  }

  if (!sub_14F564(0, "AVE_FrameRate", &v4))
  {
    *(a1 + 760) = v4;
  }

  sub_150C78(a1);
  sub_150ECC(a1);
  sub_151038(a1);
  sub_151144(a1);
  sub_151210(a1);
  sub_15127C(a1);
  if (!sub_14F1EC(0, "AVE_SEIFeatureOn", &v3))
  {
    *(a1 + 984) = v3;
  }

  if (!sub_14F1EC(0, "AVE_SEIFeatureOff", &v3))
  {
    *(a1 + 992) = v3;
  }

  if (!sub_14F1EC(0, "AVE_VUIFeatureOn", &v3))
  {
    *(a1 + 1000) = v3;
  }

  result = sub_14F1EC(0, "AVE_VUIFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 1008) = v3;
  }

  return result;
}

uint64_t sub_1514A8(_DWORD *a1)
{
  v3 = 0;
  if (!sub_14F564(0, "AVE_SliceNum", &v3))
  {
    a1[254] = v3;
  }

  if (!sub_14F564(0, "AVE_SearchRangeMode", &v3))
  {
    a1[255] = v3;
  }

  if (!sub_14F564(0, "AVE_ThroughputMode", &v3))
  {
    a1[256] = v3;
  }

  if (!sub_14F564(0, "AVE_MergeCandidateNum", &v3))
  {
    a1[257] = v3;
  }

  if (!sub_14F564(0, "AVE_DeblockMode", &v3))
  {
    a1[258] = v3;
  }

  if (!sub_14F564(0, "AVE_SAOMode", &v3))
  {
    a1[259] = v3;
  }

  result = sub_14F564(0, "AVE_EdgeReplication", &v3);
  if (!result)
  {
    a1[260] = v3;
  }

  return result;
}

uint64_t sub_1515B4(uint64_t a1)
{
  v4 = 0;
  v3 = 0.0;
  memset(v5, 0, sizeof(v5));
  if (!sub_14F564(0, "AVE_MCTFStrengthLevel", &v4))
  {
    *(a1 + 1044) = v4;
  }

  if (!sub_14F564(0, "AVE_MCTFStrengthDelta", &v4))
  {
    *(a1 + 1048) = v4;
  }

  if (!sub_14F564(0, "AVE_MCTFTogglePeriod", &v4))
  {
    *(a1 + 1052) = v4;
  }

  if (!sub_14FC54(0, "AVE_MCTFISPGainThreshold", &v3))
  {
    *(a1 + 1056) = v3;
  }

  if (!sub_14FC54(0, "AVE_MCTFISPGain1RefThreshold", &v3))
  {
    *(a1 + 1072) = v3;
  }

  if (!sub_14FC54(0, "AVE_MCTFISPGain2RefThreshold", &v3))
  {
    *(a1 + 1064) = v3;
  }

  if (!sub_14F564(0, "AVE_MCTFOnToOffPerfThreshold", &v4))
  {
    *(a1 + 1080) = v4;
  }

  if (!sub_14F564(0, "AVE_MCTFOffToOnPerfThreshold", &v4))
  {
    *(a1 + 1084) = v4;
  }

  if (!sub_14F564(0, "AVE_MCTFMaxNextRefNum", &v4))
  {
    *(a1 + 1088) = v4;
  }

  if (!sub_14F564(0, "AVE_MCTFRampUpFrameNum", &v4))
  {
    *(a1 + 1092) = v4;
  }

  result = sub_14E778(0, "AVE_MCTF_SMap", v5, 512);
  if (!result)
  {
    return sub_F9C(v5, (a1 + 1096));
  }

  return result;
}

uint64_t sub_1517BC(uint64_t a1)
{
  v4 = 0;
  if (!sub_14F564(0, "AVE_DWMode", &v4))
  {
    *(a1 + 4) = v4;
  }

  if (!sub_14F564(0, "AVE_DefaultCfg", &v4))
  {
    *(a1 + 8) = v4;
  }

  sub_150534(a1);
  sub_150948(a1);
  sub_150A24(a1);
  sub_150B04(a1 + 552);
  sub_1512E8(a1);
  sub_1514A8(a1);
  sub_1515B4(a1);
  if (!sub_14F564(0, "AVE_Usage", &v4))
  {
    *(a1 + 1580) = v4;
  }

  if (!sub_14F564(0, "AVE_PropertyMode", &v4))
  {
    *(a1 + 1584) = v4;
  }

  if (!sub_14F564(0, "AVE_TotalFrameCount", &v4))
  {
    *(a1 + 1588) = v4;
  }

  if (!sub_14F564(0, "AVE_CmdTimeOutMode", &v4))
  {
    *(a1 + 1592) = v4;
  }

  if (!sub_14F564(0, "AVE_SchedPolicy", &v4))
  {
    *(a1 + 1596) = v4;
  }

  if (!sub_14F564(0, "AVE_OutputBufNum", &v4))
  {
    *(a1 + 1600) = v4;
  }

  if (!sub_14F564(0, "AVE_OutputBufSize", &v4))
  {
    *(a1 + 1604) = v4;
  }

  if (!sub_14F564(0, "AVE_SNR", &v4))
  {
    *(a1 + 1608) = v4;
  }

  v2 = sub_14F564(0, "AVE_TimeStats_MaxCnt", &v4);
  if (!v2)
  {
    *(a1 + 1612) = v4;
  }

  sub_1502D4(a1);
  return v2;
}

uint64_t sub_151990()
{
  if (sub_160EF0(0x2Cu, 7))
  {
    v0 = sub_160F34(0x2Cu);
    v1 = sub_175AE4();
    v2 = sub_160F68(7);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", v1, 44, v2, "AVE_DW_Init");
      v3 = sub_175AE4();
      v10 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 44, v10, "AVE_DW_Init");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", v1, 44, v2, "AVE_DW_Init");
    }
  }

  sub_132E68(dword_20C9B0);
  v4 = sub_1517BC(dword_20C9B0);
  if (sub_160EF0(0x2Cu, 7))
  {
    v5 = sub_160F34(0x2Cu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v6, 44, v7, "AVE_DW_Init", v4);
      v8 = sub_175AE4();
      v11 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v8, 44, v11, "AVE_DW_Init", v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v6, 44, v7, "AVE_DW_Init", v4);
    }
  }

  return v4;
}

uint64_t sub_151B10()
{
  if (sub_160EF0(0x2Cu, 7))
  {
    v0 = sub_160F34(0x2Cu);
    v1 = sub_175AE4();
    v2 = sub_160F68(7);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", v1, 44, v2, "AVE_DW_Uninit");
      v3 = sub_175AE4();
      v10 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 44, v10, "AVE_DW_Uninit");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", v1, 44, v2, "AVE_DW_Uninit");
    }
  }

  v4 = sub_132F88();
  if (sub_160EF0(0x2Cu, 7))
  {
    v5 = sub_160F34(0x2Cu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v6, 44, v7, "AVE_DW_Uninit", v4);
      v8 = sub_175AE4();
      v11 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v8, 44, v11, "AVE_DW_Uninit", v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v6, 44, v7, "AVE_DW_Uninit", v4);
    }
  }

  return v4;
}

uint64_t sub_151C84(__CVBuffer *a1, int *a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, unsigned int *a8, int a9)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight[0] = 0;
  v16 = sub_14FFD4(a3);
  v17 = v16;
  v52 = v16;
  if (a4 == 2 && v16 < 12 || !a8[1] && !a8[3])
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_67;
  }

  if (a9 != -1)
  {
    v18 = a9 + 3;
    goto LABEL_19;
  }

  if (!a5)
  {
    v18 = 2;
    goto LABEL_19;
  }

  v18 = 1;
  if (a6 != 2 || a7)
  {
LABEL_19:
    CVPixelBufferGetExtendedPixels(a1, 0, extraColumnsOnRight, 0, &extraRowsOnBottom);
    v28 = a2[6];
    if (v28)
    {
      v20 = 0;
      v29 = 1;
      if (v28 != 1 || !extraRowsOnBottom)
      {
LABEL_26:
        if (v17 < 12)
        {
          if (v17 < 4)
          {
            v21 = 0;
          }

          else
          {
            if (a8[1] == 8u >> (a2[4] >> 1))
            {
              v39 = 3328;
            }

            else
            {
              v39 = 0;
            }

            if (a8[3] == 8u >> (a2[5] >> 1))
            {
              v21 = v39 | 0x50000;
            }

            else
            {
              v21 = v39;
            }
          }
        }

        else
        {
          v32 = a8[1];
          v33 = a2[4] >> 1;
          if (v32 > (0xEu >> v33) || v32 < (2u >> v33))
          {
            v35 = 0;
          }

          else
          {
            v35 = 3328;
          }

          v36 = a8[3];
          v37 = a2[5] >> 1;
          if (v36 > (0xEu >> v37) || v36 < (2u >> v37))
          {
            v21 = v35;
          }

          else
          {
            v21 = v35 | 0x50000;
          }
        }

        v40 = 0;
        if (v18 <= 4)
        {
          if ((v18 - 1) >= 2)
          {
            if (v18)
            {
              if (v18 == 4)
              {
                v40 = v21 & 0xFF00;
              }

              goto LABEL_66;
            }

            if ((v21 & 0x70000) == 0)
            {
              if (v29)
              {
                v41 = 0;
              }

              else
              {
                v41 = v20;
              }

              v40 = v21 & 0xFF00 | v41;
              goto LABEL_66;
            }
          }

          goto LABEL_58;
        }

        switch(v18)
        {
          case 5:
            v40 = v21 & 0x70000;
            break;
          case 6:
            v40 = v20 | 2;
            if (v29)
            {
              v40 = 0;
            }

            break;
          case 7:
LABEL_58:
            v40 = v21 & 0x7FF00;
            break;
        }

LABEL_66:
        v19 = v40 | ((v40 & 0x10100) != 0);
        goto LABEL_67;
      }
    }

    else if (!extraRowsOnBottom)
    {
      v20 = 0;
      v29 = 1;
      goto LABEL_26;
    }

    v30 = a8[3];
    v31 = v30 != 0;
    v29 = v30 == 0;
    v20 = v31 << 16;
    goto LABEL_26;
  }

  v22 = a4;
  v23 = a6;
  v24 = a5;
  v25 = CVBufferCopyAttachment(a1, kCVPixelBufferExtendedPixelsFilledKey, 0);
  if (!v25)
  {
LABEL_17:
    v18 = 0;
    a5 = v24;
    a6 = v23;
    a4 = v22;
    a7 = 0;
    goto LABEL_19;
  }

  v26 = v25;
  if (CFEqual(v25, kCFBooleanTrue))
  {
    v27 = v17 < 7;
  }

  else
  {
    v27 = 0;
  }

  if (!v27)
  {
    CFRelease(v26);
    goto LABEL_17;
  }

  v18 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 16;
  a5 = v24;
  a6 = v23;
  a4 = v22;
  a7 = 0;
LABEL_67:
  if (sub_160EF0(0x11u, 7))
  {
    v51 = a4;
    v42 = a5;
    v43 = sub_160F34(0x11u);
    v50 = sub_175AE4();
    v44 = sub_160F68(7);
    if (v43)
    {
      printf("%lld %d AVE %s: %s:%d | %d | %d %d %d %d %d | (%d %d %d %d) (%d %d) | %d %x %x %x\n\n", v50, 17, v44, "AVE_EdgeReplication_DetermineMode", 240, v52, v51, v42, a6, a7, a9, *a8, a8[1], a8[2], a8[3], LODWORD(extraColumnsOnRight[0]), extraRowsOnBottom, v18, v20, v21, v19);
      v50 = sub_175AE4();
      v44 = sub_160F68(7);
      v48 = a8[2];
      v49 = a8[3];
      v46 = *a8;
      v47 = a8[1];
    }

    syslog(3, "%lld %d AVE %s: %s:%d | %d | %d %d %d %d %d | (%d %d %d %d) (%d %d) | %d %x %x %x\n", v50, 17, v44, "AVE_EdgeReplication_DetermineMode", 240, v52, v51, v42);
  }

  return v19;
}

uint64_t sub_152118(__CVBuffer *a1, unsigned int a2)
{
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  v5 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  CVPixelBufferGetWidthOfPlane(a1, a2);
  CVPixelBufferGetHeightOfPlane(a1, a2);
  CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &v5);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 4294966296;
}

uint64_t sub_1521B0(__CVBuffer *a1, unsigned int a2, int a3, uint64_t a4)
{
  v17 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  CVPixelBufferGetWidthOfPlane(a1, a2);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, a2);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  CVPixelBufferGetExtendedPixels(a1, 0, 0, &extraRowsOnTop, &v17);
  if (a2)
  {
    if (*(a4 + 12))
    {
      v11 = *(a4 + 20) >> 1;
      v17 >>= v11;
      extraRowsOnTop >>= v11;
    }

    else
    {
      v17 = 0;
    }
  }

  v12 = &BaseAddressOfPlane[(extraRowsOnTop + HeightOfPlane - 1) * BytesPerRowOfPlane];
  v13 = &v12[BytesPerRowOfPlane];
  if (a3)
  {
    if (v17)
    {
      for (i = 0; i < v17; ++i)
      {
        memcpy(v13, v12, BytesPerRowOfPlane);
        v13 += BytesPerRowOfPlane;
        v12 -= BytesPerRowOfPlane;
      }
    }
  }

  else if (v17)
  {
    for (j = 0; j < v17; ++j)
    {
      memcpy(v13, v12, BytesPerRowOfPlane);
      v13 += BytesPerRowOfPlane;
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 0;
}

uint64_t sub_152320(__CVBuffer *a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  if ((a2 & 0x50000) == 0x10000 && *(a3 + 8) >= 1)
  {
    v6 = 0;
    v7 = HIWORD(a2);
    do
    {
      sub_1521B0(a1, v6++, v7 & 8, a3);
    }

    while (v6 < *(a3 + 8));
  }

  if ((v4 & 0x500) == 0x100 && *(a3 + 8) >= 1)
  {
    v8 = 0;
    do
    {
      sub_152118(a1, v8++);
    }

    while (v8 < *(a3 + 8));
  }

  return 0;
}

uint64_t sub_1523F0(const __CFArray *a1, _DWORD *a2)
{
  v57[0] = 0;
  v56 = 0;
  v55 = 0;
  Count = CFArrayGetCount(a1);
  if (a1 && a2)
  {
    v5 = 0;
    v6 = Count >> 1;
    *(a2 + 6) = 0u;
    *(a2 + 7) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 5) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    v7 = 1;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    while (1)
    {
      v8 = v7;
      v9 = v5 * v6;
      if (!sub_14A8C4(a1, (v5 * v6), &v55))
      {
        break;
      }

      *a2 = v55;
      if (!sub_14A8C4(a1, (v9 + 1), &v55))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v39 = sub_160F34(0x10u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (v39)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v37, 16, v38, "AVE_MCTF_Retrieve", 94, "ret != 0", a1, a2, v55);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[1] = v55;
      if (!sub_14A8C4(a1, (v9 + 2), &v55))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v40 = sub_160F34(0x10u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (v40)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v37, 16, v38, "AVE_MCTF_Retrieve", 99, "ret != 0", a1, a2, v55);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[2] = v55;
      if (!sub_14A8C4(a1, (v9 + 3), &v55))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v41 = sub_160F34(0x10u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (v41)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v37, 16, v38, "AVE_MCTF_Retrieve", 104, "ret != 0", a1, a2, v55);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[3] = v55;
      if (!sub_14A8C4(a1, (v9 + 4), &v55))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v42 = sub_160F34(0x10u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (v42)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v37, 16, v38, "AVE_MCTF_Retrieve", 109, "ret != 0", a1, a2, v55);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[4] = v55;
      if (!sub_14A8C4(a1, (v9 + 5), &v55))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v43 = sub_160F34(0x10u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v37, 16, v38, "AVE_MCTF_Retrieve", 114, "ret != 0", a1, a2, v55);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[5] = v55;
      if (!sub_14A8C4(a1, (v9 + 6), &v55))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v44 = sub_160F34(0x10u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (v44)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v37, 16, v38, "AVE_MCTF_Retrieve", 119, "ret != 0", a1, a2, v55);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[6] = v55;
      if (!sub_14A8C4(a1, (v9 + 7), &v55))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v45 = sub_160F34(0x10u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (v45)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v37, 16, v38, "AVE_MCTF_Retrieve", 124, "ret != 0", a1, a2, v55);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[7] = v55;
      if (!sub_14AB6C(a1, (v9 + 8), &v56))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v46 = sub_160F34(0x10u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v37, 16, v38, "AVE_MCTF_Retrieve", 129, "ret != 0", a1, a2, v56);
          v37 = sub_175AE4();
          v38 = sub_160F68(4);
        }

        goto LABEL_81;
      }

      a2[8] = v56;
      if (!sub_14A8C4(a1, (v9 + 9), &v55))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v47 = sub_160F34(0x10u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (!v47)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v37, 16, v38, "AVE_MCTF_Retrieve", 134, "ret != 0", a1, a2, v55);
LABEL_80:
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        goto LABEL_81;
      }

      a2[9] = v55;
      if (!sub_14A8C4(a1, (v9 + 10), &v55))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v48 = sub_160F34(0x10u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (!v48)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v37, 16, v38, "AVE_MCTF_Retrieve", 139, "ret != 0", a1, a2, v55);
        goto LABEL_80;
      }

      a2[10] = v55;
      if (!sub_14A8C4(a1, (v9 + 11), &v55))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v49 = sub_160F34(0x10u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (!v49)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v37, 16, v38, "AVE_MCTF_Retrieve", 144, "ret != 0", a1, a2, v55);
        goto LABEL_80;
      }

      a2[11] = v55;
      if (!sub_14A8C4(a1, (v9 + 12), &v55))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v50 = sub_160F34(0x10u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (!v50)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v37, 16, v38, "AVE_MCTF_Retrieve", 149, "ret != 0", a1, a2, v55);
        goto LABEL_80;
      }

      a2[12] = v55;
      if (!sub_14AE14(a1, (v9 + 13), v57))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v51 = sub_160F34(0x10u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (!v51)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v37, 16, v38, "AVE_MCTF_Retrieve", 154, "ret != 0", a1, a2, v57[0]);
        goto LABEL_80;
      }

      a2[13] = v57[0];
      if (!sub_14AE14(a1, (v9 + 14), v57))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v52 = sub_160F34(0x10u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (!v52)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v37, 16, v38, "AVE_MCTF_Retrieve", 159, "ret != 0", a1, a2, v57[0]);
        goto LABEL_80;
      }

      a2[14] = v57[0];
      v10 = sub_14AE14(a1, (v9 + 15), v57);
      if (!v10)
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v53 = sub_160F34(0x10u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (v53)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v37, 16, v38, "AVE_MCTF_Retrieve", 164, "ret != 0", a1, a2, v57[0]);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      v11 = v10;
      a2[15] = v57[0];
      if (sub_160EF0(0x10u, 7))
      {
        v12 = sub_160F34(0x10u);
        v13 = sub_175AE4();
        v14 = sub_160F68(7);
        v15 = *a2;
        v16 = a2[1];
        v17 = a2[2];
        v18 = a2[3];
        v19 = a2[4];
        v20 = a2[5];
        v21 = a2[6];
        v22 = a2[7];
        v23 = a2[8];
        v24 = a2[9];
        v25 = a2[10];
        v26 = a2[11];
        v27 = a2[12];
        v28 = a2[13];
        v29 = a2[14];
        v30 = a2[15];
        if (v12)
        {
          printf("%lld %d AVE %s: MCTF Pop [%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d\n", v13, 16, v14, v5, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, a2[14], v30);
          v31 = sub_175AE4();
          v32 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: MCTF Pop [%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", v31, 16, v32, v5, *a2, a2[1], a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], a2[10], a2[11], a2[12], a2[13], a2[14], a2[15]);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: MCTF Pop [%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", v13, 16, v14, v5, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, a2[14], v30);
        }
      }

      v7 = 0;
      a2 += 16;
      v5 = 1;
      if ((v8 & 1) == 0)
      {
        return v11;
      }
    }

    if (!sub_160EF0(0x10u, 4))
    {
      return 0;
    }

    v36 = sub_160F34(0x10u);
    v37 = sub_175AE4();
    v38 = sub_160F68(4);
    if (v36)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v37, 16, v38, "AVE_MCTF_Retrieve", 89, "ret != 0", a1, a2, v55);
      goto LABEL_80;
    }

LABEL_81:
    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v37, 16, v38);
    return 0;
  }

  else
  {
    if (sub_160EF0(0x10u, 4))
    {
      v33 = sub_160F34(0x10u);
      v34 = sub_175AE4();
      v35 = sub_160F68(4);
      if (v33)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v34, 16, v35, "AVE_MCTF_Retrieve", 81, "pArray != __null && pMCTF != __null", a1, a2);
        v34 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v34, 16);
    }

    return 4294966295;
  }
}

uint64_t sub_152F70(char *a1, __CFArray *a2)
{
  if (a1 && a2)
  {
    v4 = 0;
    v5 = (a1 + 32);
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = sub_149BB4(*(v5 - 32), a2);
      v9 = sub_149BB4(*(v5 - 28), a2);
      v10 = sub_149BB4(*(v5 - 24), a2);
      v11 = sub_149BB4(*(v5 - 20), a2);
      v12 = sub_149BB4(*(v5 - 16), a2);
      v13 = sub_149BB4(*(v5 - 12), a2);
      v54 = sub_149BB4(*(v5 - 8), a2);
      v53 = sub_149BB4(*(v5 - 4), a2);
      v52 = sub_149DD8(*v5, a2);
      v51 = sub_149BB4(*(v5 + 4), a2);
      v50 = sub_149BB4(*(v5 + 8), a2);
      v49 = sub_149BB4(*(v5 + 12), a2);
      v48 = sub_149BB4(*(v5 + 16), a2);
      v47 = sub_149FFC(*(v5 + 5), a2);
      v46 = sub_149FFC(*(v5 + 6), a2);
      v45 = sub_149FFC(*(v5 + 7), a2);
      if (sub_160EF0(0x10u, 7))
      {
        v43 = v13;
        v44 = v11;
        v14 = v12;
        v15 = v10;
        v16 = v9;
        v17 = v8;
        v18 = sub_160F34(0x10u);
        v19 = sub_175AE4();
        v20 = sub_160F68(7);
        v21 = *(v5 - 8);
        v22 = *(v5 - 7);
        v23 = *(v5 - 6);
        v24 = *(v5 - 5);
        v25 = *(v5 - 4);
        v26 = *(v5 - 3);
        v27 = *(v5 - 2);
        v28 = *(v5 - 1);
        v29 = *v5;
        v30 = *(v5 + 1);
        v31 = *(v5 + 2);
        v32 = *(v5 + 3);
        v33 = *(v5 + 4);
        v34 = *(v5 + 5);
        v35 = *(v5 + 6);
        v36 = *(v5 + 7);
        if (v18)
        {
          printf("%lld %d AVE %s: MCTF Make Ref[%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d\n", v19, 16, v20, v4, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, *(v5 + 6), v36);
          v37 = sub_175AE4();
          v38 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: MCTF Make Ref[%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", v37, 16, v38, v4, *(v5 - 8), *(v5 - 7), *(v5 - 6), *(v5 - 5), *(v5 - 4), *(v5 - 3), *(v5 - 2), *(v5 - 1), *v5, *(v5 + 1), *(v5 + 2), *(v5 + 3), *(v5 + 4), *(v5 + 5), *(v5 + 6), *(v5 + 7));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: MCTF Make Ref[%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", v19, 16, v20, v4, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, *(v5 + 6), v36);
        }

        v8 = v17;
        v9 = v16;
        v10 = v15;
        v12 = v14;
        v13 = v43;
        v11 = v44;
      }

      v6 = 0;
      v5 += 32;
      v4 = 1;
    }

    while ((v7 & 1) != 0);
    return (v9 + v8 + v10 + v11 + v12 + v13 + v54 + v53 + v52 + v51 + v50 + v49 + v48 + v47 + v46 + v45);
  }

  else
  {
    if (sub_160EF0(0x10u, 4))
    {
      v40 = sub_160F34(0x10u);
      v41 = sub_175AE4();
      v42 = sub_160F68(4);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v41, 16, v42, "AVE_MCTF_Make", 196, "pMCTF != __null && pArray != __null", a1, a2);
        v41 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v41, 16);
    }

    return 4294966295;
  }
}

uint64_t sub_1533F0(_DWORD *a1, int a2, int a3, uint64_t a4, char a5, int a6, int a7, uint64_t a8)
{
  v8 = a2;
  LODWORD(v10) = 2 * a2 / 3;
  v11 = 2 * a2 % 3;
  if ((a5 & 1) == 0)
  {
    if (a3 < 1)
    {
      return 0;
    }

    v27 = 0;
    v28 = a7 * a3;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v10;
    }

    v29 = a6;
    v30 = a1;
    v31 = a3;
    while (1)
    {
      v32 = a8 + v27 * a7;
      if (v8 < 2)
      {
        v42 = 0;
        v35 = 0;
        v34 = 0;
        if (!v11)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
        LODWORD(v35) = 0;
        do
        {
          v36 = v30[v33];
          v37 = v36 & 0x3FF;
          if (v33)
          {
            v41 = v34 + v28;
            *(v32 + 2 * v41) = v37;
            v39 = 2;
            v40 = 1;
            v38 = v35;
          }

          else
          {
            *(v32 + 2 * v35) = v37;
            v38 = v34 + v28;
            v39 = 1;
            v40 = 2;
            v41 = v35;
          }

          *(v32 + 2 * v38) = (v36 >> 10) & 0x3FF;
          *(v32 + 2 + 2 * v41) = (v36 >> 20) & 0x3FF;
          v35 = (v35 + v40);
          v34 += v39;
          ++v33;
        }

        while (v10 != v33);
        v42 = v10;
        if (!v11)
        {
          goto LABEL_36;
        }
      }

      v43 = *(&a1[v42] + v27 * v29);
      v44 = v43 & 0x3FF;
      if (v42)
      {
        *(v32 + 2 * (v34 + v28)) = v44;
        if (v11 == 2)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *(v32 + 2 * v35) = v44;
        if (v11 == 2)
        {
          v35 = v34 + v28;
LABEL_35:
          *(v32 + 2 * v35) = (v43 >> 10) & 0x3FF;
        }
      }

LABEL_36:
      ++v27;
      v30 = (v30 + v29);
      if (v27 == v31)
      {
        return 0;
      }
    }
  }

  if (a3 >= 1)
  {
    v12 = 0;
    if (v10 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    v47 = 2 * (2 * a2 % 3 - 1);
    v14 = a6;
    v15 = a7;
    v16 = (a8 + 4);
    v17 = a1;
    v18 = a3;
    do
    {
      if (v8 < 2)
      {
        v23 = 0;
        if (v11)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v19 = v13;
        v20 = v17;
        v21 = v16;
        do
        {
          v22 = *v20++;
          *(v21 - 2) = v22 & 0x3FF;
          *(v21 - 1) = (v22 >> 10) & 0x3FF;
          *v21 = (v22 >> 20) & 0x3FF;
          v21 += 3;
          --v19;
        }

        while (v19);
        v23 = v13;
        if (v11)
        {
LABEL_13:
          v24 = *(&a1[v23] + v12 * v14);
          __src[0] = v24 & 0x3FF;
          __src[1] = (v24 >> 10) & 0x3FF;
          __src[2] = (v24 >> 20) & 0x3FF;
          if (v11 >= 1)
          {
            v25 = a8;
            v26 = v15;
            memcpy((a8 + 6 * v23 + v12 * a7), __src, v47 + 2);
            v15 = v26;
            a8 = v25;
            v8 = a2;
          }
        }
      }

      ++v12;
      v16 = (v16 + v15);
      v17 = (v17 + v14);
    }

    while (v12 != v18);
  }

  return 0;
}

uint64_t sub_15368C(unsigned int *a1, int a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  if (a3 >= 1)
  {
    v9 = 0;
    v10 = (a2 / 3);
    v11 = a2 % 3;
    v23 = 2 * (a2 % 3 - 1);
    v12 = a5;
    v13 = a3;
    v14 = (a7 + 4);
    v15 = a1;
    do
    {
      if (a2 < 3)
      {
        v20 = 0;
        if (v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v16 = v10;
        v17 = v15;
        v18 = v14;
        do
        {
          v19 = *v17++;
          *(v18 - 2) = v19 & 0x3FF;
          *(v18 - 1) = (v19 >> 10) & 0x3FF;
          *v18 = (v19 >> 20) & 0x3FF;
          v18 += 3;
          --v16;
        }

        while (v16);
        v20 = v10;
        if (v11)
        {
LABEL_9:
          v21 = *(&a1[v20] + v9 * v12);
          __src[0] = v21 & 0x3FF;
          __src[1] = (v21 >> 10) & 0x3FF;
          __src[2] = (v21 >> 20) & 0x3FF;
          if (v11 >= 1)
          {
            memcpy((a7 + 6 * v20 + v9 * a6), __src, v23 + 2);
          }
        }
      }

      ++v9;
      v14 = (v14 + a6);
      v15 = (v15 + v12);
    }

    while (v9 != v13);
  }

  return 0;
}

uint64_t sub_1537E0(unsigned int *a1, int a2, int a3, uint64_t a4, int a5, char a6, int a7, int a8, uint64_t a9)
{
  if (a5)
  {
    sub_1533F0(a1, a2, a3, a4, a6, a7, a8, a9);
  }

  else
  {
    sub_15368C(a1, a2, a3, a4, a7, a8, a9);
  }

  return 0;
}

double sub_153828(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return result;
}

uint64_t sub_153840(void *a1)
{
  if (sub_160EF0(0x49u, 6))
  {
    v2 = sub_160F34(0x49u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 73, v4, "AVE_FPS", "Uninit", a1, *a1);
      v3 = sub_175AE4();
      sub_160F68(6);
      v5 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  *(a1 + 2) = 0;
  *(a1 + 3) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 7) = 0u;
  a1[9] = 0;
  if (sub_160EF0(0x49u, 6))
  {
    v7 = sub_160F34(0x49u);
    v8 = sub_175AE4();
    v9 = sub_160F68(6);
    v10 = *a1;
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v8, 73, v9, "AVE_FPS", "Uninit", a1, *a1, 0);
      v8 = sub_175AE4();
      sub_160F68(6);
      v11 = *a1;
    }

    else
    {
      v13 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v8, 73);
  }

  return 0;
}

uint64_t sub_153A60(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  if (sub_160EF0(0x49u, 6))
  {
    v10 = sub_160F34(0x49u);
    v11 = sub_175AE4();
    v12 = sub_160F68(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d\n", v11, 73, v12, "AVE_FPS", "Init", a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v31 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", v13, 73, v31);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", v11, 73, v12);
    }
  }

  if (a3 - 1 > 0x1869E || (a4 & 0x80000000) != 0)
  {
    if (sub_160EF0(0x49u, 4))
    {
      v17 = sub_160F34(0x49u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d\n", v18, 73, v19, "AVE_FPS", "Init", 60, "0 < fps && fps < 100000 && num >= 0", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v32 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d", v20, 73, v32, "AVE_FPS", "Init");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d", v18, 73, v19, "AVE_FPS", "Init");
      }
    }

    v16 = 4294966295;
  }

  else
  {
    v14 = 2 * a3;
    if (a4)
    {
      v14 = a4;
    }

    if (v14 <= 2)
    {
      a4 = 2;
    }

    else
    {
      a4 = v14;
    }

    v15 = malloc_type_malloc(16 * a4, 0x1000040D9A13B51uLL);
    a1[2] = v15;
    if (v15)
    {
      v16 = 0;
      *a1 = a2;
      *(a1 + 2) = a4;
      *(a1 + 10) = a5;
      *(a1 + 6) = a3;
      *(a1 + 7) = a3;
      *(a1 + 8) = a3;
      *(a1 + 9) = a3;
    }

    else
    {
      if (sub_160EF0(0x49u, 4))
      {
        v21 = sub_160F34(0x49u);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to allocate memory of timestamp %p %lld %d %d %d\n", v22, 73, v23, "AVE_FPS", "Init", 71, "m_psTime != __null", a1, a2, a3, a4, a5);
          v24 = sub_175AE4();
          v33 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to allocate memory of timestamp %p %lld %d %d %d", v24, 73, v33, "AVE_FPS", "Init");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to allocate memory of timestamp %p %lld %d %d %d", v22, 73, v23, "AVE_FPS", "Init");
        }
      }

      v16 = 4294966293;
    }
  }

  if (sub_160EF0(0x49u, 6))
  {
    v25 = sub_160F34(0x49u);
    v26 = sub_175AE4();
    v27 = sub_160F68(6);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d\n", v26, 73, v27, "AVE_FPS", "Init", a1, a2, a3, a4, a5, v16);
      v28 = sub_175AE4();
      v29 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d", v28, 73, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d", v26, 73, v27);
    }
  }

  return v16;
}

uint64_t sub_153F28(void *a1, unsigned int a2, int a3, int a4)
{
  if (sub_160EF0(0x49u, 6))
  {
    v8 = sub_160F34(0x49u);
    v9 = sub_175AE4();
    v10 = sub_160F68(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d\n", v9, 73, v10, "AVE_FPS", "Update", a1, *a1, a2, a3, a4);
      v9 = sub_175AE4();
      v10 = sub_160F68(6);
      v11 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", v9, 73, v10);
  }

  if (a2 - 1 > 0x1869E || a3 < 0)
  {
    if (sub_160EF0(0x49u, 4))
    {
      v17 = sub_160F34(0x49u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d\n", v18, 73, v19, "AVE_FPS", "Update", 141, "0 < fps && fps < 100000 && num >= 0", a1, *a1, a2, a3, a4);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        v38 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d", v20, 73, v21, "AVE_FPS", "Update");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d", v18, 73, v19, "AVE_FPS", "Update");
      }
    }

    v22 = 4294966295;
  }

  else
  {
    v12 = 2 * a2;
    if (a3)
    {
      v12 = a3;
    }

    if (v12 <= 2)
    {
      a3 = 2;
    }

    else
    {
      a3 = v12;
    }

    if (a3 > *(a1 + 2))
    {
      if (sub_160EF0(0x49u, 6))
      {
        v13 = sub_160F34(0x49u);
        v14 = sub_175AE4();
        v15 = sub_160F68(6);
        if (v13)
        {
          printf("%lld %d AVE %s: %s::%s:%d allocate bigger memory of timestamp %p %lld %d %d <- %d\n", v14, 73, v15, "AVE_FPS", "Update", 157, a1, *a1, a2, a3, *(a1 + 2));
          v14 = sub_175AE4();
          v15 = sub_160F68(6);
          v16 = *a1;
          v39 = *(a1 + 2);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d allocate bigger memory of timestamp %p %lld %d %d <- %d", v14, 73, v15, "AVE_FPS");
      }

      *(a1 + 11) = 0;
      v23 = a1[2];
      v24 = malloc_type_malloc(16 * a3, 0x1000040D9A13B51uLL);
      a1[2] = v24;
      if (v24)
      {
        *(a1 + 2) = a3;
        free(v23);
      }

      else
      {
        a1[2] = v23;
        if (sub_160EF0(0x49u, 5))
        {
          v25 = sub_160F34(0x49u);
          v26 = sub_175AE4();
          v27 = sub_160F68(5);
          v28 = *a1;
          if (v25)
          {
            printf("%lld %d AVE %s: %s::%s:%d failed to allocate memory of timestamp %p %lld %d\n", v26, 73, v27, "AVE_FPS", "Update", 170, a1, *a1, a3);
            v26 = sub_175AE4();
            v27 = sub_160F68(5);
            v29 = *a1;
          }

          else
          {
            v37 = *a1;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d failed to allocate memory of timestamp %p %lld %d", v26, 73, v27);
        }
      }
    }

    v22 = 0;
    *(a1 + 10) = a4;
    *(a1 + 6) = a2;
    *(a1 + 7) = a2;
    *(a1 + 8) = a2;
    *(a1 + 9) = a2;
  }

  if (sub_160EF0(0x49u, 6))
  {
    v30 = sub_160F34(0x49u);
    v31 = sub_175AE4();
    v32 = sub_160F68(6);
    if (v30)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d\n", v31, 73, v32, "AVE_FPS", "Update", a1, *a1, a2, a3, v22);
      v33 = sub_175AE4();
      v34 = sub_160F68(6);
      v35 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v33, 73, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v31, 73, v32);
    }
  }

  return v22;
}

uint64_t sub_1544C0(void *a1)
{
  if (sub_160EF0(0x49u, 6))
  {
    v2 = sub_160F34(0x49u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 73, v4, "AVE_FPS", "Reset", a1, *a1);
      v3 = sub_175AE4();
      sub_160F68(6);
      v5 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  *(a1 + 11) = 0;
  if (sub_160EF0(0x49u, 6))
  {
    v6 = sub_160F34(0x49u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    v9 = *a1;
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v7, 73, v8, "AVE_FPS", "Reset", a1, *a1, 0);
      v7 = sub_175AE4();
      sub_160F68(6);
      v10 = *a1;
    }

    else
    {
      v12 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v7, 73);
  }

  return 0;
}

double sub_154690(uint64_t *a1, void *a2, int a3)
{
  v6 = *(a1 + 2);
  v7 = *(a2 + 2);
  v8 = *a2;
  if (v6 == v7)
  {
    v9 = (v8 - *a1);
    v10 = a3;
    v11 = v6;
  }

  else
  {
    v11 = v6;
    v9 = v8 * v6 - *a1 * v7;
    v10 = a3 * v7;
  }

  v12 = v10 * v11;
  v13 = -1.0;
  if (v9 > 0.0)
  {
    v14 = v12 / v9;
    if (v12 / v9 <= 0.0 || v14 >= 100000.0)
    {
      if (sub_160EF0(0x49u, 5))
      {
        v15 = sub_160F34(0x49u);
        v16 = sub_175AE4();
        v17 = sub_160F68(5);
        v18 = *a1;
        v19 = *(a1 + 2);
        v20 = (v9 - v9) * 1000.0;
        if (v20 >= 0)
        {
          v21 = v20;
        }

        else
        {
          v21 = -v20;
        }

        v22 = (v14 - v14) * 1000.0;
        if (v22 >= 0)
        {
          v23 = v22;
        }

        else
        {
          v23 = -v22;
        }

        if (v15)
        {
          printf("%lld %d AVE %s: %s::%s:%d %lld %d - %lld %d %d | %lld.%03lld %lld.%03lld \n", v16, 73, v17, "AVE_FPS", "Calc", 250, v18, v19, *a2, *(a2 + 2), a3, v9, v21, v14, v23);
          v24 = sub_175AE4();
          v25 = sub_160F68(5);
          v28 = *(a2 + 2);
          v27 = *a2;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %lld %d - %lld %d %d | %lld.%03lld %lld.%03lld ", v24, 73, v25, "AVE_FPS", "Calc", 250, *a1, *(a1 + 2));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %lld %d - %lld %d %d | %lld.%03lld %lld.%03lld ", v16, 73, v17, "AVE_FPS", "Calc", 250, v18, v19);
        }
      }
    }

    else
    {
      return v12 / v9;
    }
  }

  return v13;
}

uint64_t sub_1548DC(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *(a1 + 11);
    if (v3 < 2)
    {
      return 0;
    }

    v4 = *(a1 + 2);
    v5 = ((v3 - 2) % v4);
    v6 = ((v3 - 1) % v4);
    v7 = sub_154690((v2 + 16 * v5), (v2 + 16 * v6), 1);
    v8 = v7;
    if (v7 >= 0.0)
    {
      *(a1 + 6) = v7;
      v9 = 7;
    }

    else
    {
      v9 = 5;
    }

    result = sub_160EF0(0x49u, v9);
    if (result)
    {
      v15 = sub_160F34(0x49u);
      v16 = sub_175AE4();
      v17 = sub_160F68(v9);
      v18 = *a1;
      v19 = *(a1 + 11);
      v20 = *(a1 + 2);
      v21 = a1[2];
      v22 = (v21 + 16 * v5);
      v23 = *v22;
      v24 = *(v22 + 2);
      v25 = (v21 + 16 * v6);
      v26 = *v25;
      v27 = *(v25 + 2);
      v28 = *(a1 + 6);
      v29 = ((v28 - v28) * 1000.0);
      if (v29 < 0)
      {
        v29 = -v29;
      }

      v30 = ((v8 - v8) * 1000.0);
      if (v30 >= 0)
      {
        v31 = ((v8 - v8) * 1000.0);
      }

      else
      {
        v31 = -v30;
      }

      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %d %d | %d %lld %d - %d %lld %d | %d.%03d  %d.%03d\n", v16, 73, v17, "AVE_FPS", "CalcRt", 301, a1, v18, v19, v20, v5, v23, v24, v6, v26, v27, v28, v29, v8, v31);
        v32 = sub_175AE4();
        v33 = sub_160F68(v9);
        v34 = a1[2];
        v35 = (v34 + 16 * v5);
        v36 = *v35;
        v37 = (v34 + 16 * v6);
        v38 = *v37;
        v40 = *(v37 + 2);
        v39 = *(v35 + 2);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d | %d %lld %d - %d %lld %d | %d.%03d  %d.%03d", v32, 73, v33, "AVE_FPS", "CalcRt", 301, a1, *a1, *(a1 + 11), *(a1 + 2));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d | %d %lld %d - %d %lld %d | %d.%03d  %d.%03d", v16, 73, v17, "AVE_FPS", "CalcRt", 301, a1, v18, v19, v20);
      }

      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x49u, 4))
    {
      v10 = sub_160F34(0x49u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld\n", v11, 73, v12, "AVE_FPS", "CalcRt", 276, "m_psTime != __null", a1, *a1);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        v13 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld", v11, 73, v12);
    }

    return 4294966285;
  }

  return result;
}

uint64_t sub_154C40(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *(a1 + 11);
    if (v3 < 2)
    {
      return 0;
    }

    v4 = v3 - 1;
    v5 = *(a1 + 10);
    v6 = __OFSUB__(v3, v5);
    v7 = v3 - v5;
    if (v7 < 0 != v6)
    {
      v7 = 0;
    }

    v8 = v4 - v7;
    v9 = *(a1 + 2);
    v10 = (v4 % v9);
    v11 = v7 % v9;
    v12 = sub_154690((v2 + 16 * (v7 % v9)), (v2 + 16 * v10), v4 - v7);
    v13 = v12;
    if (v12 <= 0.0)
    {
      v14 = 5;
    }

    else
    {
      *(a1 + 7) = v12;
      v14 = 7;
    }

    result = sub_160EF0(0x49u, v14);
    if (result)
    {
      v20 = v11;
      v21 = sub_160F34(0x49u);
      v22 = sub_175AE4();
      v23 = sub_160F68(v14);
      v24 = *a1;
      v25 = *(a1 + 2);
      v26 = *(a1 + 11);
      v27 = a1[2];
      v28 = (v27 + 16 * v20);
      v29 = *v28;
      v30 = *(v28 + 2);
      v31 = (v27 + 16 * v10);
      v32 = *v31;
      v33 = *(v31 + 2);
      v34 = *(a1 + 8);
      v35 = ((v34 - v34) * 1000.0);
      if (v35 < 0)
      {
        v35 = -v35;
      }

      v36 = ((v13 - v13) * 1000.0);
      if (v36 >= 0)
      {
        v37 = ((v13 - v13) * 1000.0);
      }

      else
      {
        v37 = -v36;
      }

      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d\n", v22, 73, v23, "AVE_FPS", "CalcSlide", 355, a1, v24, v25, v26, v8, v20, v29, v30, v10, v32, v33, v34, v35, v13, v37);
        v38 = sub_175AE4();
        v39 = sub_160F68(v14);
        v40 = a1[2];
        v41 = (v40 + 16 * v20);
        v42 = *v41;
        v43 = (v40 + 16 * v10);
        v44 = *v43;
        v46 = *(v43 + 2);
        v45 = *(v41 + 2);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", v38, 73, v39, "AVE_FPS", "CalcSlide", 355, a1, *a1, *(a1 + 2), *(a1 + 11));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", v22, 73, v23, "AVE_FPS", "CalcSlide", 355, a1, v24, v25, v26);
      }

      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x49u, 4))
    {
      v15 = sub_160F34(0x49u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld\n", v16, 73, v17, "AVE_FPS", "CalcSlide", 326, "m_psTime != __null", a1, *a1);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        v18 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld", v16, 73, v17);
    }

    return 4294966285;
  }

  return result;
}

uint64_t sub_154FD0(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *(a1 + 11);
    if (v3 < 2)
    {
      return 0;
    }

    v4 = v3 - 1;
    v5 = *(a1 + 2);
    v6 = __OFSUB__(v3, v5);
    v7 = v3 - v5;
    if (v7 < 0 != v6)
    {
      v7 = 0;
    }

    v8 = v4 - v7;
    v9 = (v4 % v5);
    v10 = v7 % v5;
    v11 = sub_154690((v2 + 16 * (v7 % v5)), (v2 + 16 * v9), v4 - v7);
    v12 = v11;
    if (v11 <= 0.0)
    {
      v13 = 5;
    }

    else
    {
      *(a1 + 8) = v11;
      v13 = 7;
    }

    result = sub_160EF0(0x49u, v13);
    if (result)
    {
      v19 = v10;
      v20 = sub_160F34(0x49u);
      v21 = sub_175AE4();
      v22 = sub_160F68(v13);
      v23 = *a1;
      v24 = *(a1 + 2);
      v25 = *(a1 + 11);
      v26 = a1[2];
      v27 = (v26 + 16 * v19);
      v28 = *v27;
      v29 = *(v27 + 2);
      v30 = (v26 + 16 * v9);
      v31 = *v30;
      v32 = *(v30 + 2);
      v33 = *(a1 + 8);
      v34 = ((v33 - v33) * 1000.0);
      if (v34 < 0)
      {
        v34 = -v34;
      }

      v35 = ((v12 - v12) * 1000.0);
      if (v35 >= 0)
      {
        v36 = ((v12 - v12) * 1000.0);
      }

      else
      {
        v36 = -v35;
      }

      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d\n", v21, 73, v22, "AVE_FPS", "CalcAvg", 408, a1, v23, v24, v25, v8, v19, v28, v29, v9, v31, v32, v33, v34, v12, v36);
        v37 = sub_175AE4();
        v38 = sub_160F68(v13);
        v39 = a1[2];
        v40 = (v39 + 16 * v19);
        v41 = *v40;
        v42 = (v39 + 16 * v9);
        v43 = *v42;
        v45 = *(v42 + 2);
        v44 = *(v40 + 2);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", v37, 73, v38, "AVE_FPS", "CalcAvg", 408, a1, *a1, *(a1 + 2), *(a1 + 11));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", v21, 73, v22, "AVE_FPS", "CalcAvg", 408, a1, v23, v24, v25);
      }

      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x49u, 4))
    {
      v14 = sub_160F34(0x49u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld\n", v15, 73, v16, "AVE_FPS", "CalcAvg", 379, "m_psTime != __null", a1, *a1);
        v15 = sub_175AE4();
        v16 = sub_160F68(4);
        v17 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld", v15, 73, v16);
    }

    return 4294966285;
  }

  return result;
}

uint64_t sub_15535C(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *(a1 + 11);
    if (v3 < 2)
    {
      return 0;
    }

    v4 = v3 - 1;
    v5 = ((v3 - 1) % *(a1 + 2));
    v6 = sub_154690(a1 + 3, (v2 + 16 * v5), v3 - 1);
    v7 = v6;
    if (v6 <= 0.0)
    {
      v8 = 5;
    }

    else
    {
      *(a1 + 9) = v6;
      v8 = 7;
    }

    result = sub_160EF0(0x49u, v8);
    if (result)
    {
      v14 = sub_160F34(0x49u);
      v15 = sub_175AE4();
      v16 = sub_160F68(v8);
      v17 = *a1;
      v18 = *(a1 + 2);
      v19 = *(a1 + 11);
      v20 = a1[2] + 16 * v5;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(a1 + 9);
      v24 = ((v23 - v23) * 1000.0);
      if (v24 < 0)
      {
        v24 = -v24;
      }

      v25 = ((v7 - v7) * 1000.0);
      if (v25 >= 0)
      {
        v26 = ((v7 - v7) * 1000.0);
      }

      else
      {
        v26 = -v25;
      }

      if (v14)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d\n", v15, 73, v16, "AVE_FPS", "CalcOverall", 457, a1, v17, v18, v19, v4, 0, a1[3], *(a1 + 8), v5, v21, v22, v23, v24, v7, v26);
        v27 = sub_175AE4();
        v28 = sub_160F68(v8);
        v29 = a1[3];
        v30 = a1[2] + 16 * v5;
        v31 = *v30;
        v33 = *(v30 + 8);
        v32 = *(a1 + 8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", v27, 73, v28, "AVE_FPS", "CalcOverall", 457, a1, *a1, *(a1 + 2), *(a1 + 11));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", v15, 73, v16, "AVE_FPS", "CalcOverall", 457, a1, v17, v18, v19);
      }

      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x49u, 4))
    {
      v9 = sub_160F34(0x49u);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld\n", v10, 73, v11, "AVE_FPS", "CalcOverall", 430, "m_psTime != __null", a1, *a1);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        v12 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld", v10, 73, v11);
    }

    return 4294966285;
  }

  return result;
}

uint64_t sub_1556B4(void *a1, int *a2)
{
  if (sub_160EF0(0x49u, 7))
  {
    v4 = sub_160F34(0x49u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p\n", v5, 73, v6, "AVE_FPS", "Add", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(7);
      v8 = *a1;
    }

    else
    {
      v38 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p", v5, 73);
  }

  if (!a2 || (*a2 & 0x8000000000000000) != 0 || a2[2] < 1)
  {
    goto LABEL_44;
  }

  v9 = a1[2];
  if (v9)
  {
    *(v9 + 16 * (*(a1 + 11) % *(a1 + 2))) = *a2;
    v10 = *(a1 + 11);
    if (!v10)
    {
      *(a1 + 3) = *a2;
    }

    *(a1 + 11) = v10 + 1;
    if (sub_1548DC(a1))
    {
      if (sub_160EF0(0x49u, 4))
      {
        v11 = sub_160F34(0x49u);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        v14 = *a1;
        if (v11)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to calculate realtime FPS %p %lld %p\n", v12, 73, v13, "AVE_FPS", "Add", 502, "ret == 0", a1, *a1, a2);
          v12 = sub_175AE4();
          v13 = sub_160F68(4);
        }

        v39 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to calculate realtime FPS %p %lld %p", v12, 73, v13, "AVE_FPS");
      }

      goto LABEL_44;
    }

    if (*(a1 + 10) >= 1 && sub_154C40(a1))
    {
      if (sub_160EF0(0x49u, 4))
      {
        v20 = sub_160F34(0x49u);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *a1;
        if (v20)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to calculate sliding average FPS %p %lld %p\n", v21, 73, v22, "AVE_FPS", "Add", 508, "ret == 0", a1, *a1, a2);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
        }

        v40 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to calculate sliding average FPS %p %lld %p", v21, 73, v22, "AVE_FPS");
      }

      goto LABEL_44;
    }

    if (sub_154FD0(a1))
    {
      if (!sub_160EF0(0x49u, 4))
      {
LABEL_44:
        v28 = 4294966295;
        goto LABEL_45;
      }

      v24 = sub_160F34(0x49u);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      v27 = *a1;
      if (v24)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to calculate average FPS %p %lld %p\n", v25, 73, v26, "AVE_FPS", "Add", 513, "ret == 0", a1, *a1, a2);
LABEL_38:
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        v42 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to calculate average FPS %p %lld %p", v31, 73, v32, "AVE_FPS");
        goto LABEL_44;
      }

      v43 = *a1;
    }

    else
    {
      if (!sub_15535C(a1))
      {
        v28 = 0;
        goto LABEL_45;
      }

      if (!sub_160EF0(0x49u, 4))
      {
        goto LABEL_44;
      }

      v29 = sub_160F34(0x49u);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      v30 = *a1;
      if (v29)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to calculate average FPS %p %lld %p\n", v25, 73, v26, "AVE_FPS", "Add", 517, "ret == 0", a1, *a1, a2);
        goto LABEL_38;
      }

      v44 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to calculate average FPS %p %lld %p", v25, 73, v26, "AVE_FPS");
    goto LABEL_44;
  }

  if (sub_160EF0(0x49u, 4))
  {
    v15 = sub_160F34(0x49u);
    v16 = sub_175AE4();
    v17 = sub_160F68(4);
    v18 = *a1;
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p\n", v16, 73, v17, "AVE_FPS", "Add", 489, "m_psTime != __null", a1, *a1, a2);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      v19 = *a1;
    }

    else
    {
      v41 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p", v16, 73, v17, "AVE_FPS");
  }

  v28 = 4294966285;
LABEL_45:
  if (sub_160EF0(0x49u, 7))
  {
    v33 = sub_160F34(0x49u);
    v34 = sub_175AE4();
    v35 = sub_160F68(7);
    if (v33)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d\n", v34, 73, v35, "AVE_FPS", "Add", a1, *a1, a2, v28);
      v34 = sub_175AE4();
      v35 = sub_160F68(7);
      v36 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v34, 73, v35);
  }

  return v28;
}

double sub_155D48(uint64_t a1)
{
  v1 = 64;
  if (*(a1 + 40) > 0)
  {
    v1 = 56;
  }

  return *(a1 + v1);
}

_BYTE *sub_155D6C(_BYTE *result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result && a2)
  {
    if (a3)
    {
      v10 = a4;
      v11 = result;
      v12 = *a3;
      LODWORD(v12) = sub_172100((a2 + v12), a4 - v12, "%lld,", a4, a5, a6, a7, a8, result[8] - *result) + v12;
      LODWORD(v12) = sub_172100((a2 + v12), v10 - v12, "%lld,", v13, v14, v15, v16, v17, v11[520] - v11[16]) + v12;
      LODWORD(v12) = sub_172100((a2 + v12), v10 - v12, "%lld,", v18, v19, v20, v21, v22, v11[24] - v11[16]) + v12;
      LODWORD(v12) = sub_172100((a2 + v12), v10 - v12, "%lld,", v23, v24, v25, v26, v27, v11[40] - v11[24]) + v12;
      LODWORD(v12) = sub_172100((a2 + v12), v10 - v12, "%lld,", v28, v29, v30, v31, v32, v11[240] - v11[32]) + v12;
      LODWORD(v12) = sub_172100((a2 + v12), v10 - v12, "%lld,", v33, v34, v35, v36, v37, v11[464] - v11[248]) + v12;
      LODWORD(v12) = sub_172100((a2 + v12), v10 - v12, "%lld,", v38, v39, v40, v41, v42, v11[208] - v11[192]) + v12;
      LODWORD(v12) = sub_172100((a2 + v12), v10 - v12, "%lld,", v43, v44, v45, v46, v47, v11[408] - v11[200]) + v12;
      LODWORD(v12) = sub_172100((a2 + v12), v10 - v12, "%lld,", v48, v49, v50, v51, v52, v11[496] - v11[416]) + v12;
      LODWORD(v12) = sub_172100((a2 + v12), v10 - v12, "%lld,", v53, v54, v55, v56, v57, v11[232] - v11[216]) + v12;
      LODWORD(v12) = sub_172100((a2 + v12), v10 - v12, "%lld,", v58, v59, v60, v61, v62, v11[432] - v11[224]) + v12;
      result = sub_172100((a2 + v12), v10 - v12, "%lld,", v63, v64, v65, v66, v67, v11[512] - v11[440]);
      *a3 = result + v12;
    }
  }

  return result;
}

uint64_t sub_155F78(uint64_t result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result && a2 && a3)
  {
    v10 = a4;
    v11 = result;
    v12 = 0;
    v13 = *a3;
    do
    {
      result = sub_172100((a2 + v13), v10 - v13, "%lld,", a4, a5, a6, a7, a8, *(v11 + v12));
      v13 = *a3 + result;
      *a3 = v13;
      v12 += 8;
    }

    while (v12 != 544);
  }

  return result;
}

uint64_t sub_15600C(const void *a1, const void *a2, const void *a3, int a4, int a5)
{
  if (sub_160EF0(0x3Au, 7))
  {
    v7 = sub_160F34(0x3Au);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %d %d\n", v8, 58, v9, "AVE_FwStats_PrintAll", a1, a2, a3, a4, a5);
      v8 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d", v8, 58);
  }

  if (a1 && a2)
  {
    if (a3)
    {
      operator new[]();
    }

    v14 = 4294966288;
  }

  else
  {
    if (sub_160EF0(0x3Au, 4))
    {
      v10 = sub_160F34(0x3Au);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d\n", v11, 58, v12, "AVE_FwStats_PrintAll", 181, "(psFwStats != __null) && (pEUMap != __null)", a1, a2, a3, a4, a5);
        v13 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d", v13, 58, v20, "AVE_FwStats_PrintAll");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d", v11, 58, v12, "AVE_FwStats_PrintAll");
      }
    }

    v14 = 4294966295;
  }

  if (sub_160EF0(0x3Au, 7))
  {
    v15 = sub_160F34(0x3Au);
    v16 = sub_175AE4();
    v17 = sub_160F68(7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d %d %d\n", v16, 58, v17, "AVE_FwStats_PrintAll", a1, a2, a3, a4, a5, v14);
      v18 = sub_175AE4();
      v21 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d", v18, 58, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d", v16, 58, v17);
    }
  }

  return v14;
}

uint64_t sub_156920(const void *a1, FILE *a2, int a3)
{
  if (sub_160EF0(0x3Au, 7))
  {
    v6 = sub_160F34(0x3Au);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d\n", v7, 58, v8, "AVE_MCTFStats_PrintAll", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %d", v7);
  }

  if (a1)
  {
    if (a2)
    {
      if (!a3)
      {
        fwrite("Frame#, FrameDiff, Fn_SetLrmeDiff, HW_LrmeDiff, Fn_SetLrrcDiff, HW_LrrcDiff, Fn_SetPipeDiff, HW_PipeDiff, Fn_PipeDoneDiff, FrameQIn, Fn_SetLrmeStart, HW_LrmeStart, Fn_SetLRMEDone, Fn_SetLrrcStart, HW_LrrcStart, Fn_SetLRRCDone, Fn_SetPipeStart, HW_PipeStart, Fn_SetPipeDone, HW_LrmeDone, HW_LrrcDone, HW_PipeDone, Fn_PipeDoneStart, Fn_PipeDoneEnd, LrmeStatsDone, LrrcStatsDone, PipeStatsDone, FrameOut\n", 0x191uLL, 1uLL, a2);
      }

      operator new[]();
    }

    v13 = 4294966288;
  }

  else
  {
    if (sub_160EF0(0x3Au, 4))
    {
      v9 = sub_160F34(0x3Au);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v10, 58, v11, "AVE_MCTFStats_PrintAll", 367, "pMctfStats != __null", 0, a2, a3);
        v12 = sub_175AE4();
        v19 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 58, v19);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 58, v11);
      }
    }

    v13 = 4294966295;
  }

  if (sub_160EF0(0x3Au, 7))
  {
    v14 = sub_160F34(0x3Au);
    v15 = sub_175AE4();
    v16 = sub_160F68(7);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d\n", v15, 58, v16, "AVE_MCTFStats_PrintAll", a1, a2, a3, v13);
      v17 = sub_175AE4();
      sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d", v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d", v15);
    }
  }

  return v13;
}

uint64_t sub_156EA0(CFDictionaryRef theDict, _OWORD *a2)
{
  v28 = 0;
  v27 = 0;
  if (!theDict || !a2)
  {
    if (sub_160EF0(0xCCu, 4))
    {
      v9 = sub_160F34(0xCCu);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v10, 204, v11, "AVE_HEVC_ST_RPS_Retrieve", 28, "pDict != __null && pInfo != __null", theDict, a2);
        v10 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v10, 204);
    }

    return 4294966295;
  }

  *(a2 + 88) = 0;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  if (sub_14BE4C(theDict, @"InterRefPicSetPredictionFlag", &v28 + 1))
  {
    if (*a2)
    {
LABEL_5:
      sub_14C90C(theDict, @"DeltaIdxMinus1", a2 + 1);
      if (!sub_14C0FC(theDict, @"DeltaRPSSign", &v28))
      {
        *(a2 + 8) = v28 != 0;
      }

      sub_14C90C(theDict, @"AbsDeltaRPSMinus1", a2 + 3);
      if (!sub_14C65C(theDict, @"UsedByCurrPicFlag", &v27))
      {
        v4 = vdupq_n_s32(v27);
        v5.i64[0] = 0x101010101010101;
        v5.i64[1] = 0x101010101010101;
        a2[1] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vshlq_u32(v4, xmmword_190D50), vshlq_u32(v4, xmmword_190D40)), vuzp1q_s16(vshlq_u32(v4, xmmword_190D70), vshlq_u32(v4, xmmword_190D60))), v5);
      }

      result = sub_14C65C(theDict, @"UsedDeltaFlag", &v27);
      if (!result)
      {
        v7 = vdupq_n_s32(v27);
        v8.i64[0] = 0x101010101010101;
        v8.i64[1] = 0x101010101010101;
        a2[2] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vshlq_u32(v7, xmmword_190D50), vshlq_u32(v7, xmmword_190D40)), vuzp1q_s16(vshlq_u32(v7, xmmword_190D70), vshlq_u32(v7, xmmword_190D60))), v8);
      }

      return result;
    }
  }

  else
  {
    v12 = HIBYTE(v28);
    *a2 = HIBYTE(v28);
    if (v12 == 1)
    {
      goto LABEL_5;
    }
  }

  sub_14C90C(theDict, @"NumNegativePics", a2 + 12);
  result = sub_14C90C(theDict, @"NumPositivePics", a2 + 13);
  if (!*(a2 + 12))
  {
LABEL_24:
    if (!*(a2 + 13))
    {
      return result;
    }

    Value = CFDictionaryGetValue(theDict, @"DeltaPOCS1Minus1");
    if (Value)
    {
      v21 = Value;
      Count = CFArrayGetCount(Value);
      if (Count < 1)
      {
LABEL_30:
        result = sub_14C65C(theDict, @"UsedByCurrPicS1Flag", &v27);
        if (!result)
        {
          v25 = vdupq_n_s32(v27);
          v26.i64[0] = 0x101010101010101;
          v26.i64[1] = 0x101010101010101;
          *(a2 + 168) = vandq_s8(vuzp1q_s8(vuzp1q_s16(vshlq_u32(v25, xmmword_190D50), vshlq_u32(v25, xmmword_190D40)), vuzp1q_s16(vshlq_u32(v25, xmmword_190D70), vshlq_u32(v25, xmmword_190D60))), v26);
        }
      }

      else
      {
        v23 = 0;
        v24 = Count & 0x7FFFFFFF;
        while (1)
        {
          result = sub_14AB6C(v21, v23, &v27);
          if (result)
          {
            break;
          }

          *(a2 + v23++ + 26) = v27;
          if (v24 == v23)
          {
            goto LABEL_30;
          }
        }
      }

      return result;
    }

    return 4294966288;
  }

  v13 = CFDictionaryGetValue(theDict, @"DeltaPOCS0Minus1");
  if (!v13)
  {
    return 4294966288;
  }

  v14 = v13;
  v15 = CFArrayGetCount(v13);
  if (v15 < 1)
  {
LABEL_22:
    result = sub_14C65C(theDict, @"UsedByCurrPicS0Flag", &v27);
    if (!result)
    {
      v18 = vdupq_n_s32(v27);
      v19.i64[0] = 0x101010101010101;
      v19.i64[1] = 0x101010101010101;
      *(a2 + 88) = vandq_s8(vuzp1q_s8(vuzp1q_s16(vshlq_u32(v18, xmmword_190D50), vshlq_u32(v18, xmmword_190D40)), vuzp1q_s16(vshlq_u32(v18, xmmword_190D70), vshlq_u32(v18, xmmword_190D60))), v19);
    }

    goto LABEL_24;
  }

  v16 = 0;
  v17 = v15 & 0x7FFFFFFF;
  while (1)
  {
    result = sub_14AB6C(v14, v16, &v27);
    if (result)
    {
      return result;
    }

    *(a2 + v16++ + 28) = v27;
    if (v17 == v16)
    {
      goto LABEL_22;
    }
  }
}