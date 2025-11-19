uint64_t sub_16600(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 48) = 0u;
  sub_CB318(a1 + 48);
  return a1;
}

uint64_t sub_16644(uint64_t *a1)
{
  if (sub_160EF0(0xD3u, 6))
  {
    v2 = sub_160F34(0xD3u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu\n", v3, 211, v4, "AVE_SEI", "Uninit", a1, *a1);
      v3 = sub_175AE4();
      sub_160F68(6);
      v5 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu", v3);
  }

  if (a1[5])
  {
    while (!sub_CB33C(a1 + 6))
    {
      v6 = sub_CB47C(a1 + 6);
      if (sub_160EF0(0xD3u, 5))
      {
        v7 = sub_160F34(0xD3u);
        v8 = sub_175AE4();
        v9 = sub_160F68(5);
        v10 = v6[3];
        v11 = *a1;
        if (v7)
        {
          printf("%lld %d AVE %s: %s::%s SEI Frame # %lld not used before destruction of SEI manager %llu\n", v8, 211, v9, "AVE_SEI", "Uninit", v6[3], v11);
          v8 = sub_175AE4();
          v9 = sub_160F68(5);
          v10 = v6[3];
          v11 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s SEI Frame # %lld not used before destruction of SEI manager %llu", v8, 211, v9, "AVE_SEI", "Uninit", v10, v11);
      }

      sub_171A0(a1, v6);
    }

    v12 = a1[5];
    if (v12)
    {
      sub_1344B4(v12);
      operator delete();
    }

    a1[5] = 0;
  }

  v13 = a1[4];
  if (v13)
  {
    sub_13DBD0(v13);
    a1[4] = 0;
  }

  if (sub_160EF0(0xD3u, 6))
  {
    v14 = sub_160F34(0xD3u);
    v15 = sub_175AE4();
    v16 = sub_160F68(6);
    v17 = *a1;
    if (v14)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %d\n", v15, 211, v16, "AVE_SEI", "Uninit", a1, *a1, 0);
      v15 = sub_175AE4();
      sub_160F68(6);
      v18 = *a1;
    }

    else
    {
      v20 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %d", v15, 211);
  }

  return 0;
}

uint64_t sub_16960(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  if (sub_160EF0(0xD3u, 6))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx %d %d 0x%08x\n", v13, 211, v14, "AVE_SEI", "Init", a1, a2, a3, a4, a5, a6);
      v15 = sub_175AE4();
      v51 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx %d %d 0x%08x", v15, 211, v51, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx %d %d 0x%08x", v13, 211, v14, "AVE_SEI");
    }
  }

  *a1 = a2;
  if (a4 < 0)
  {
    v16 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v17 = sub_160F34(0xD3u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      v20 = *a1;
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid max frame count %d\n", v18, 211, v19, "AVE_SEI", "Init", 86, "maxFrameCount >= 0", a1, *a1, a4);
        v21 = sub_175AE4();
        v16 = 4;
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid max frame count %d", v21, 211, v22, "AVE_SEI", "Init", 86, "maxFrameCount >= 0", a1, *a1, a4);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid max frame count %d", v18, 211, v19, "AVE_SEI", "Init", 86, "maxFrameCount >= 0", a1, *a1, a4);
        v16 = 4;
      }
    }

    v27 = 4294966295;
  }

  else
  {
    if (a4)
    {
      ++a4;
    }

    else if (sub_160EF0(0xD3u, 6))
    {
      v23 = sub_160F34(0xD3u);
      v24 = sub_175AE4();
      v25 = sub_160F68(6);
      v26 = *a1;
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu maxFrameCount was 0, defaulting to %d\n", v24, 211, v25, "AVE_SEI", "Init", 95, a1, *a1, 49);
        v24 = sub_175AE4();
        v25 = sub_160F68(6);
      }

      v53 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu maxFrameCount was 0, defaulting to %d", v24, 211, v25);
      a4 = 49;
    }

    else
    {
      a4 = 49;
    }

    a1[1] = a3;
    v28 = operator new(0x48uLL, &std::nothrow);
    if (v28)
    {
      v29 = v28;
      sub_13419C(v28);
      v30 = sub_1344E0(v29, 0, a4, 248, 0, 0);
      if (v30)
      {
        v31 = v30;
        if (sub_160EF0(0xD3u, 4))
        {
          v32 = sub_160F34(0xD3u);
          v33 = sub_175AE4();
          v34 = sub_160F68(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to create block pool %p %llu %d %d\n", v33, 211, v34, "AVE_SEI", "Init", 112, "ret == 0", a1, *a1, a4, v31);
            v33 = sub_175AE4();
            v34 = sub_160F68(4);
            v54 = *a1;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create block pool %p %llu %d %d", v33, 211, v34, "AVE_SEI");
        }

        goto LABEL_36;
      }

      a1[5] = v29;
      *(a1 + 6) = a4;
      v41 = sub_13DB68();
      if (!v41)
      {
        if (sub_160EF0(0xD3u, 4))
        {
          v42 = sub_160F34(0xD3u);
          v43 = sub_175AE4();
          v44 = sub_160F68(4);
          v45 = *a1;
          if (v42)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p %llu %d\n", v43, 211, v44, "AVE_SEI", "Init", 120, "pMutex != __null", a1, *a1, 0);
            v43 = sub_175AE4();
            v44 = sub_160F68(4);
          }

          v55 = *a1;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p %llu %d", v43, 211, v44, "AVE_SEI");
        }

LABEL_36:
        sub_1344B4(v29);
        operator delete();
      }

      v27 = 0;
      a1[4] = v41;
      v16 = 6;
      *(a1 + 4) = a6;
      *(a1 + 5) = a5;
    }

    else
    {
      v16 = 4;
      if (sub_160EF0(0xD3u, 4))
      {
        v35 = sub_160F34(0xD3u);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        v38 = *a1;
        if (v35)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to allocate block pool %p %llu %d\n", v36, 211, v37, "AVE_SEI", "Init", 107, "pBlkPool != __null", a1, *a1, 0);
          v39 = sub_175AE4();
          v16 = 4;
          v40 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate block pool %p %llu %d", v39, 211, v40, "AVE_SEI", "Init", 107, "pBlkPool != __null", a1, *a1, 0);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate block pool %p %llu %d", v36, 211, v37, "AVE_SEI", "Init", 107, "pBlkPool != __null", a1, *a1, 0);
          v16 = 4;
        }
      }

      v27 = 4294966293;
    }
  }

  if (sub_160EF0(0xD3u, v16))
  {
    v46 = sub_160F34(0xD3u);
    v47 = sub_175AE4();
    v48 = sub_160F68(v16);
    if (v46)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d %d 0x%08x %d\n", v47, 211, v48, "AVE_SEI", "Init", a1, a2, a3, a4, a5, a6, v27);
      v49 = sub_175AE4();
      v52 = sub_160F68(v16);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d %d 0x%08x %d", v49, 211, v52, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d %d 0x%08x %d", v47, 211, v48, "AVE_SEI");
    }
  }

  return v27;
}

uint64_t sub_171A0(uint64_t *a1, uint64_t *a2)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p\n", v5, 211, v6, "AVE_SEI", "RemoveFrame", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(7);
      v8 = *a1;
    }

    else
    {
      v17 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p", v5, 211);
  }

  sub_CB424(a2);
  v9 = a2[27];
  if (v9)
  {
    CFRelease(v9);
  }

  a2[30] = 0;
  *(a2 + 13) = 0u;
  *(a2 + 14) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 12) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  v10 = sub_135770(a1[5], a2);
  if (v10)
  {
    v11 = 4;
  }

  else
  {
    v11 = 7;
  }

  if (sub_160EF0(0xD3u, v11))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(v11);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %d\n", v13, 211, v14, "AVE_SEI", "RemoveFrame", a1, *a1, a2, v10);
      v13 = sub_175AE4();
      v14 = sub_160F68(v11);
      v15 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d", v13, 211, v14);
  }

  return v10;
}

uint64_t sub_173E4(void *a1, uint64_t a2)
{
  if (sub_160EF0(0xD3u, 6))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx\n", v5, 211, v6, "AVE_SEI", "SetSEIBits", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(6);
      v8 = *a1;
    }

    else
    {
      v14 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx", v5, 211);
  }

  sub_13DC18(a1[4]);
  a1[1] = a2;
  sub_13DC4C(a1[4]);
  if (sub_160EF0(0xD3u, 6))
  {
    v9 = sub_160F34(0xD3u);
    v10 = sub_175AE4();
    v11 = sub_160F68(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d\n", v10, 211, v11, "AVE_SEI", "SetSEIBits", a1, *a1, a2, 0);
      v10 = sub_175AE4();
      v11 = sub_160F68(6);
      v12 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d", v10, 211, v11);
  }

  return 0;
}

uint64_t sub_175D4(pthread_mutex_t **a1, uint64_t a2)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", v5, 211, v6, "AVE_SEI", "DeleteFrame", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(7);
      v8 = *a1;
    }

    else
    {
      v17 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", v5, 211);
  }

  v9 = sub_13DC18(a1[4]);
  v10 = sub_17800(a1, a2);
  if (v10)
  {
    v9 = sub_171A0(a1, v10);
  }

  sub_13DC4C(a1[4]);
  if (v9)
  {
    v11 = 4;
  }

  else
  {
    v11 = 7;
  }

  if (sub_160EF0(0xD3u, v11))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(v11);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d\n", v13, 211, v14, "AVE_SEI", "DeleteFrame", a1, *a1, a2, v9);
      v13 = sub_175AE4();
      v14 = sub_160F68(v11);
      v15 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v13, 211, v14);
  }

  return v9;
}

void *sub_17800(void *a1, uint64_t a2)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", v5, 211, v6, "AVE_SEI", "FindFrame", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(7);
      v8 = *a1;
    }

    else
    {
      v22 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", v5, 211);
  }

  v9 = sub_CB5C0((a1 + 6));
  if (v9 != sub_CB5DC((a1 + 6)))
  {
    while (!sub_160EF0(0xD3u, 8))
    {
LABEL_17:
      if (v9[3] == a2)
      {
        goto LABEL_20;
      }

      v9 = sub_CB408(v9);
      if (v9 == sub_CB5DC((a1 + 6)))
      {
        goto LABEL_19;
      }
    }

    v10 = sub_160F34(0xD3u);
    v11 = sub_175AE4();
    v12 = sub_160F68(8);
    if (v10)
    {
      if (v9)
      {
        v13 = v9[3];
        v14 = v9[4];
      }

      else
      {
        v13 = -1;
        v14 = -1;
      }

      printf("%lld %d AVE %s: %s::%s node: %p num: %lld, bits: 0x%016llx\n", v11, 211, v12, "AVE_SEI", "FindFrame", v9, v13, v14);
      v11 = sub_175AE4();
      v12 = sub_160F68(8);
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    else if (!v9)
    {
LABEL_15:
      v15 = -1;
      v16 = -1;
      goto LABEL_16;
    }

    v15 = v9[3];
    v16 = v9[4];
LABEL_16:
    syslog(3, "%lld %d AVE %s: %s::%s node: %p num: %lld, bits: 0x%016llx", v11, 211, v12, "AVE_SEI", "FindFrame", v9, v15, v16);
    goto LABEL_17;
  }

LABEL_19:
  v9 = 0;
LABEL_20:
  if (sub_160EF0(0xD3u, 7))
  {
    v17 = sub_160F34(0xD3u);
    v18 = sub_175AE4();
    v19 = sub_160F68(7);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p\n", v18, 211, v19, "AVE_SEI", "FindFrame", a1, *a1, a2, v9);
      v18 = sub_175AE4();
      v19 = sub_160F68(7);
      v20 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p", v18, 211, v19);
  }

  return v9;
}

uint64_t sub_17AF8(void *a1, uint64_t a2, uint64_t a3, char *a4, int a5, int *a6)
{
  v115 = 0;
  if (sub_160EF0(0xD3u, 7))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx %p %d\n", v13, 211, v14, "AVE_SEI", "Generate", a1, *a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      v15 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx %p %d", v13, 211, v14, "AVE_SEI", "Generate");
  }

  if (a4 && (a5 & 0x80000000) == 0 && a6)
  {
    *a6 = 0;
    sub_13DC18(a1[4]);
    v16 = sub_17800(a1, a2);
    if (v16)
    {
      v17 = v16;
      v18 = a1[1] & a3 & v16[4];
      if (v18)
      {
        v115 = 0;
        v19 = sub_18BEC(a1, a4, a5 - *a6, v16, v18, &v115);
        if (v19)
        {
          v20 = v19;
          if (!sub_160EF0(0xD3u, 4))
          {
LABEL_28:
            sub_13DC4C(a1[4]);
            v25 = 4;
            goto LABEL_90;
          }

          v21 = sub_160F34(0xD3u);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *a1;
          if (v21)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 345, "ret == 0", a1, *a1, v20);
            v22 = sub_175AE4();
            v23 = sub_160F68(4);
          }

          v105 = *a1;
LABEL_27:
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v22, 211, v23, "AVE_SEI");
          goto LABEL_28;
        }

        if (v115 >= 1 && sub_160EF0(0xD3u, 7))
        {
          v32 = sub_160F34(0xD3u);
          v33 = sub_175AE4();
          v34 = sub_160F68(7);
          v35 = *a1;
          if (v32)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateISPMetadataNALU added %d bytes\n", v33, 211, v34, "AVE_SEI", "Generate", 349, a1, *a1, v115);
            v33 = sub_175AE4();
            v34 = sub_160F68(7);
          }

          v95 = *a1;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateISPMetadataNALU added %d bytes", v33, 211, v34);
        }

        v36 = v115;
        v37 = *a6 + v115;
        *a6 = v37;
        v38 = &a4[v36];
        if (*(a1 + 5) == 2)
        {
          v115 = 0;
          v39 = sub_18FF0(a1, v38, a5 - v37, v17, v18, &v115);
          if (v39)
          {
            v20 = v39;
            if (!sub_160EF0(0xD3u, 4))
            {
              goto LABEL_28;
            }

            v40 = sub_160F34(0xD3u);
            v22 = sub_175AE4();
            v23 = sub_160F68(4);
            v41 = *a1;
            if (v40)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 361, "ret == 0", a1, *a1, v20);
              v22 = sub_175AE4();
              v23 = sub_160F68(4);
            }

            v106 = *a1;
            goto LABEL_27;
          }

          if (v115 >= 1 && sub_160EF0(0xD3u, 7))
          {
            v42 = sub_160F34(0xD3u);
            v111 = sub_175AE4();
            v43 = sub_160F68(7);
            v44 = *a1;
            if (v42)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateTimingInfoMetadata added %d bytes\n", v111, 211, v43, "AVE_SEI", "Generate", 366, a1, *a1, v115);
              v45 = sub_175AE4();
              v46 = sub_160F68(7);
              v96 = *a1;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateTimingInfoMetadata added %d bytes", v45, 211, v46);
            }

            else
            {
              v97 = *a1;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateTimingInfoMetadata added %d bytes", v111, 211, v43);
            }
          }

          v47 = v115;
          v48 = *a6 + v115;
          *a6 = v48;
          v49 = &v38[v47];
          v115 = 0;
          v50 = sub_1986C(a1, v49, a5 - v48, v17, v18, &v115);
          if (v50)
          {
            v20 = v50;
            if (!sub_160EF0(0xD3u, 4))
            {
              goto LABEL_28;
            }

            v51 = sub_160F34(0xD3u);
            v22 = sub_175AE4();
            v23 = sub_160F68(4);
            v52 = *a1;
            if (v51)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 376, "ret == 0", a1, *a1, v20);
              v22 = sub_175AE4();
              v23 = sub_160F68(4);
            }

            v107 = *a1;
            goto LABEL_27;
          }

          if (v115 >= 1 && sub_160EF0(0xD3u, 7))
          {
            v53 = sub_160F34(0xD3u);
            v112 = sub_175AE4();
            v54 = sub_160F68(7);
            v55 = *a1;
            if (v53)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateContentColorVolumeNALU added %d bytes\n", v112, 211, v54, "AVE_SEI", "Generate", 381, a1, *a1, v115);
              v56 = sub_175AE4();
              v57 = sub_160F68(7);
              v98 = *a1;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateContentColorVolumeNALU added %d bytes", v56, 211, v57);
            }

            else
            {
              v99 = *a1;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateContentColorVolumeNALU added %d bytes", v112, 211, v54);
            }
          }

          v58 = v115;
          v59 = *a6 + v115;
          *a6 = v59;
          v60 = &v49[v58];
          v115 = 0;
          v61 = sub_19C4C(a1, v60, a5 - v59, v17, v18, &v115);
          if (v61)
          {
            v20 = v61;
            if (!sub_160EF0(0xD3u, 4))
            {
              goto LABEL_28;
            }

            v62 = sub_160F34(0xD3u);
            v22 = sub_175AE4();
            v23 = sub_160F68(4);
            v63 = *a1;
            if (v62)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 390, "ret == 0", a1, *a1, v20);
              v22 = sub_175AE4();
              v23 = sub_160F68(4);
            }

            v108 = *a1;
            goto LABEL_27;
          }

          if (v115 >= 1 && sub_160EF0(0xD3u, 7))
          {
            v64 = sub_160F34(0xD3u);
            v113 = sub_175AE4();
            v65 = sub_160F68(7);
            v66 = *a1;
            if (v64)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateAmbientViewingEnvironmentNALU added %d bytes\n", v113, 211, v65, "AVE_SEI", "Generate", 396, a1, *a1, v115);
              v67 = sub_175AE4();
              v68 = sub_160F68(7);
              v100 = *a1;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateAmbientViewingEnvironmentNALU added %d bytes", v67, 211, v68);
            }

            else
            {
              v101 = *a1;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateAmbientViewingEnvironmentNALU added %d bytes", v113, 211, v65);
            }
          }

          v69 = v115;
          v37 = *a6 + v115;
          *a6 = v37;
          v38 = &v60[v69];
        }

        v115 = 0;
        v70 = sub_1A020(a1, v38, a5 - v37, v17, v18, &v115);
        if (v70)
        {
          v20 = v70;
          if (!sub_160EF0(0xD3u, 4))
          {
            goto LABEL_28;
          }

          v71 = sub_160F34(0xD3u);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v72 = *a1;
          if (v71)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 407, "ret == 0", a1, *a1, v20);
            v22 = sub_175AE4();
            v23 = sub_160F68(4);
          }

          v109 = *a1;
          goto LABEL_27;
        }

        if (v115 >= 1 && sub_160EF0(0xD3u, 7))
        {
          v73 = sub_160F34(0xD3u);
          v114 = sub_175AE4();
          v74 = sub_160F68(7);
          v75 = *a1;
          if (v73)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateLuxLevelNALU added %d bytes\n", v114, 211, v74, "AVE_SEI", "Generate", 411, a1, *a1, v115);
            v76 = sub_175AE4();
            v77 = sub_160F68(7);
            v102 = *a1;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateLuxLevelNALU added %d bytes", v76, 211, v77);
          }

          else
          {
            v103 = *a1;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateLuxLevelNALU added %d bytes", v114, 211, v74);
          }
        }

        v78 = v115;
        v79 = *a6 + v115;
        *a6 = v79;
        v115 = 0;
        v80 = sub_1A3F4(a1, &v38[v78], a5 - v79, v17, v18, &v115);
        if (v80)
        {
          v20 = v80;
          if (!sub_160EF0(0xD3u, 4))
          {
            goto LABEL_28;
          }

          v81 = sub_160F34(0xD3u);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v82 = *a1;
          if (v81)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 421, "ret == 0", a1, *a1, v20);
            v22 = sub_175AE4();
            v23 = sub_160F68(4);
          }

          v110 = *a1;
          goto LABEL_27;
        }

        if (v115 >= 1 && sub_160EF0(0xD3u, 7))
        {
          v83 = sub_160F34(0xD3u);
          v84 = sub_175AE4();
          v85 = sub_160F68(7);
          v86 = *a1;
          if (v83)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateUnregisteredSEINALU added %d bytes\n", v84, 211, v85, "AVE_SEI", "Generate", 425, a1, *a1, v115);
            v84 = sub_175AE4();
            v85 = sub_160F68(7);
            v87 = *a1;
          }

          else
          {
            v104 = *a1;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateUnregisteredSEINALU added %d bytes", v84, 211, v85);
        }

        *a6 += v115;
      }
    }

    sub_13DC4C(a1[4]);
    v20 = 0;
    v25 = 7;
  }

  else
  {
    v25 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v26 = sub_160F34(0xD3u);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      v29 = *a1;
      if (v26)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %llu %p %p %d\n", v27, 211, v28, "AVE_SEI", "Generate", 321, "pBytesWritten != __null && pOutputBuffer != __null && bufSize >= 0", a1, v29, a6, a4, a5);
        v30 = sub_175AE4();
        v25 = 4;
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %llu %p %p %d", v30, 211, v31, "AVE_SEI", "Generate", 321, "pBytesWritten != __null && pOutputBuffer != __null && bufSize >= 0", a1, *a1, a6, a4, a5);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %llu %p %p %d", v27, 211, v28, "AVE_SEI", "Generate", 321, "pBytesWritten != __null && pOutputBuffer != __null && bufSize >= 0", a1, v29, a6, a4, a5);
        v25 = 4;
      }
    }

    v20 = 4294966295;
  }

LABEL_90:
  if (sub_160EF0(0xD3u, v25))
  {
    v88 = sub_160F34(0xD3u);
    v89 = sub_175AE4();
    v90 = sub_160F68(v25);
    v91 = *a1;
    if (v88)
    {
      if (a6)
      {
        v92 = *a6;
      }

      else
      {
        v92 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %p %d %d\n", v89, 211, v90, "AVE_SEI", "Generate", a1, v91, a2, a3, a4, v92, v20);
      v89 = sub_175AE4();
      v90 = sub_160F68(v25);
      v91 = *a1;
      if (a6)
      {
        v93 = *a6;
      }

      else
      {
        v93 = -1;
      }
    }

    else if (a6)
    {
      v93 = *a6;
    }

    else
    {
      v93 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %p %d %d", v89, 211, v90, "AVE_SEI", "Generate", a1, v91, a2, a3, a4, v93, v20);
  }

  return v20;
}

uint64_t sub_18BEC(void *a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", v13, 211, v14, "AVE_SEI", "GenerateISPMetadataNALU", a1, v15, a2, a4, v16, a5, a6);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", v13, 211, v14, "AVE_SEI", "GenerateISPMetadataNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 1) == 0)
  {
    goto LABEL_19;
  }

  BytePtr = CFDataGetBytePtr(*(a4 + 216));
  Length = CFDataGetLength(*(a4 + 216));
  v20 = sub_D1E10(a2, a3, BytePtr, Length, *(a4 + 24), *(a1 + 5), a1[2] & 1, a6);
  if (!v20)
  {
    if ((a1[2] & 2) != 0)
    {
      v21 = 0;
      *a2 = bswap32(*a6 - 4);
      goto LABEL_20;
    }

LABEL_19:
    v21 = 0;
LABEL_20:
    v22 = 7;
    goto LABEL_21;
  }

  v21 = v20;
  v22 = 4;
  if (sub_160EF0(0xD3u, 4))
  {
    v23 = sub_160F34(0xD3u);
    v24 = sub_175AE4();
    v25 = sub_160F68(4);
    v26 = *a1;
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d\n", v24, 211, v25, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
      v27 = sub_175AE4();
      v22 = 4;
      v28 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d", v27, 211, v28, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d", v24, 211, v25, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
      v22 = 4;
    }
  }

LABEL_21:
  if (sub_160EF0(0xD3u, v22))
  {
    v29 = sub_160F34(0xD3u);
    v30 = sub_175AE4();
    v31 = sub_160F68(v22);
    v32 = *a1;
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d\n", v30, 211, v31, "AVE_SEI", "GenerateISPMetadataNALU", a1, v32, a2, a4, *(a4 + 24), a5, a6, v21);
      v33 = sub_175AE4();
      v34 = sub_160F68(v22);
      v36 = *(a4 + 24);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v33, 211, v34, "AVE_SEI", "GenerateISPMetadataNALU", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v30, 211, v31, "AVE_SEI", "GenerateISPMetadataNALU", a1, v32);
    }
  }

  return v21;
}

uint64_t sub_18FF0(void *a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v72 = 0;
  if (sub_160EF0(0xD3u, 7))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    v15 = *a1;
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p %lld 0x%llx %p\n", v13, 211, v14, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v15, a2, a3, a4, *(a4 + 24), a5, a6);
      v16 = sub_175AE4();
      v17 = sub_160F68(7);
      v71 = *(a4 + 24);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p %lld 0x%llx %p", v16, 211, v17, "AVE_SEI", "GenerateTimingInfoMetadata", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p %lld 0x%llx %p", v13, 211, v14, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v15);
    }
  }

  *a6 = 0;
  v18 = a1[1] & *(a4 + 32);
  v19 = v18 & a5;
  if ((v18 & a5 & 2) == 0)
  {
    goto LABEL_6;
  }

  v22 = sub_D3824(a2, a3, *(a4 + 24), *(a1 + 5), *(a4 + 224), &v72);
  if (v22)
  {
    v20 = v22;
    v21 = 4;
    if (!sub_160EF0(0xD3u, 4))
    {
      goto LABEL_43;
    }

    v23 = sub_160F34(0xD3u);
    v24 = sub_175AE4();
    v25 = sub_160F68(4);
    v26 = *a1;
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v24, 211, v25, "AVE_SEI", "GenerateTimingInfoMetadata", 2117, "ret == 0", a1, *a1, v20);
      v27 = sub_175AE4();
      v21 = 4;
      v28 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v27, 211, v28, "AVE_SEI", "GenerateTimingInfoMetadata", 2117, "ret == 0", a1, *a1, v20);
      goto LABEL_43;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v24, 211, v25, "AVE_SEI", "GenerateTimingInfoMetadata", 2117, "ret == 0", a1, *a1, v20);
    goto LABEL_20;
  }

  v29 = v72;
  if ((a1[2] & 2) != 0)
  {
    *a2 = bswap32(v72 - 4);
  }

  v30 = *a6 + v29;
  *a6 = v30;
  a2 = (a2 + v29);
  v72 = 0;
  if ((v19 & 4) != 0)
  {
    v31 = sub_D4884(a2, a3 - v30, *(a4 + 228), *(a4 + 24), *(a1 + 5), &v72);
    if (v31)
    {
      v20 = v31;
      v21 = 4;
      if (!sub_160EF0(0xD3u, 4))
      {
        goto LABEL_43;
      }

      v32 = sub_160F34(0xD3u);
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      v35 = *a1;
      if (v32)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v33, 211, v34, "AVE_SEI", "GenerateTimingInfoMetadata", 2136, "ret == 0", a1, *a1, v20);
        v36 = sub_175AE4();
        v21 = 4;
        v37 = sub_160F68(4);
        v68 = *a1;
        v69 = v20;
        v67 = a1;
        v38 = 2136;
LABEL_32:
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v36, 211, v37, "AVE_SEI", "GenerateTimingInfoMetadata", v38, "ret == 0", v67, v68, v69);
        goto LABEL_43;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v33, 211, v34, "AVE_SEI", "GenerateTimingInfoMetadata", 2136, "ret == 0", a1, *a1, v20);
      goto LABEL_20;
    }

    v39 = v72;
    if ((a1[2] & 2) != 0)
    {
      *a2 = bswap32(v72 - 4);
    }

    v30 = *a6 + v39;
    *a6 = v30;
    a2 = (a2 + v39);
    v72 = 0;
  }

  if ((v19 & 8) != 0)
  {
    v47 = sub_D5818(a2, a3 - v30, *(a4 + 24), *(a1 + 5), *(a4 + 232) != 0, *(a4 + 236), *(a4 + 224), *(a4 + 240), &v72);
    if (v47)
    {
      v20 = v47;
      v21 = 4;
      if (!sub_160EF0(0xD3u, 4))
      {
        goto LABEL_43;
      }

      v48 = sub_160F34(0xD3u);
      v49 = sub_175AE4();
      v50 = sub_160F68(4);
      v51 = *a1;
      if (v48)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v49, 211, v50, "AVE_SEI", "GenerateTimingInfoMetadata", 2160, "ret == 0", a1, *a1, v20);
        v36 = sub_175AE4();
        v21 = 4;
        v37 = sub_160F68(4);
        v68 = *a1;
        v69 = v20;
        v67 = a1;
        v38 = 2160;
        goto LABEL_32;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v49, 211, v50, "AVE_SEI", "GenerateTimingInfoMetadata", 2160, "ret == 0", a1, *a1, v20);
LABEL_20:
      v21 = 4;
      goto LABEL_43;
    }

    v52 = v72;
    if ((a1[2] & 2) != 0)
    {
      *a2 = bswap32(v72 - 4);
    }

    v53 = *a6 + v52;
    *a6 = v53;
    a2 = (a2 + v52);
    v72 = 0;
    if ((v19 & 0x10) == 0)
    {
LABEL_6:
      v20 = 0;
LABEL_7:
      v21 = 7;
      goto LABEL_43;
    }

    v54 = sub_D6670(a2, a3 - v53, *(a4 + 24), *(a4 + 228), *(a1 + 5), &v72);
    if (!v54)
    {
      v66 = v72;
      if ((a1[2] & 2) != 0)
      {
        *a2 = bswap32(v72 - 4);
      }

      v20 = 0;
      *a6 += v66;
      a2 = (a2 + v66);
      goto LABEL_7;
    }

    v20 = v54;
    v21 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v55 = sub_160F34(0xD3u);
      v56 = sub_175AE4();
      v57 = sub_160F68(4);
      v58 = *a1;
      if (v55)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v56, 211, v57, "AVE_SEI", "GenerateTimingInfoMetadata", 2178, "ret == 0", a1, *a1, v20);
        v36 = sub_175AE4();
        v21 = 4;
        v37 = sub_160F68(4);
        v68 = *a1;
        v69 = v20;
        v67 = a1;
        v38 = 2178;
        goto LABEL_32;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v56, 211, v57, "AVE_SEI", "GenerateTimingInfoMetadata", 2178, "ret == 0", a1, *a1, v20);
      goto LABEL_20;
    }
  }

  else
  {
    v21 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v40 = sub_160F34(0xD3u);
      v41 = sub_175AE4();
      v42 = sub_160F68(4);
      v43 = *a1;
      v44 = *(a4 + 24);
      if (v40)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu No picture timing data for frame %lld, failed\n", v41, 211, v42, "AVE_SEI", "GenerateTimingInfoMetadata", 2154, "(activeBits & (1ULL << (AVE_SEI_Idx_PictureTiming))) != 0", a1, *a1, v44);
        v45 = sub_175AE4();
        v21 = 4;
        v46 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu No picture timing data for frame %lld, failed", v45, 211, v46, "AVE_SEI", "GenerateTimingInfoMetadata", 2154, "(activeBits & (1ULL << (AVE_SEI_Idx_PictureTiming))) != 0", a1, *a1, *(a4 + 24));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu No picture timing data for frame %lld, failed", v41, 211, v42, "AVE_SEI", "GenerateTimingInfoMetadata", 2154, "(activeBits & (1ULL << (AVE_SEI_Idx_PictureTiming))) != 0", a1, *a1, v44);
        v21 = 4;
      }
    }

    v20 = 4294966296;
  }

LABEL_43:
  if (sub_160EF0(0xD3u, v21))
  {
    v59 = sub_160F34(0xD3u);
    v60 = sub_175AE4();
    v61 = sub_160F68(v21);
    v62 = *a1;
    if (v59)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p ret:%d\n", v60, 211, v61, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v62, a2, a4, *(a4 + 24), a5, a6, v20);
      v63 = sub_175AE4();
      v64 = sub_160F68(v21);
      v70 = *(a4 + 24);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p ret:%d", v63, 211, v64, "AVE_SEI", "GenerateTimingInfoMetadata", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p ret:%d", v60, 211, v61, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v62);
    }
  }

  return v20;
}

uint64_t sub_1986C(void *a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", v13, 211, v14, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v15, a2, a4, v16, a5, a6);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", v13, 211, v14, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x20) == 0)
  {
    goto LABEL_19;
  }

  v18 = sub_D03F0(a2, a3, *(a1 + 5), a6);
  if (!v18)
  {
    if ((a1[2] & 2) != 0)
    {
      v19 = 0;
      *a2 = bswap32(*a6 - 4);
      goto LABEL_20;
    }

LABEL_19:
    v19 = 0;
LABEL_20:
    v20 = 7;
    goto LABEL_21;
  }

  v19 = v18;
  v20 = 4;
  if (sub_160EF0(0xD3u, 4))
  {
    v21 = sub_160F34(0xD3u);
    v22 = sub_175AE4();
    v23 = sub_160F68(4);
    v24 = *a1;
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
      v25 = sub_175AE4();
      v20 = 4;
      v26 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v25, 211, v26, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v22, 211, v23, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
      v20 = 4;
    }
  }

LABEL_21:
  if (sub_160EF0(0xD3u, v20))
  {
    v27 = sub_160F34(0xD3u);
    v28 = sub_175AE4();
    v29 = sub_160F68(v20);
    v30 = *a1;
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p %d\n", v28, 211, v29, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v30, a2, a4, *(a4 + 24), a5, a6, v19);
      v31 = sub_175AE4();
      v32 = sub_160F68(v20);
      v34 = *(a4 + 24);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p %d", v31, 211, v32, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p %d", v28, 211, v29, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v30);
    }
  }

  return v19;
}

uint64_t sub_19C4C(void *a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", v13, 211, v14, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v15, a2, a4, v16, a5, a6);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", v13, 211, v14, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x40) == 0)
  {
    goto LABEL_21;
  }

  v35 = 0;
  v18 = sub_CF3D0(a2, a3, (a4 + 148), *(a1 + 5), &v35);
  v19 = v35;
  *a6 = v35;
  if (!v18)
  {
    if ((a1[2] & 2) != 0)
    {
      *a2 = bswap32(v19 - 4);
    }

LABEL_21:
    v20 = 0;
    v25 = 7;
    goto LABEL_24;
  }

  v20 = v18;
  if (sub_160EF0(0xD3u, 4))
  {
    v21 = sub_160F34(0xD3u);
    v22 = sub_175AE4();
    v23 = sub_160F68(4);
    v24 = *a1;
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", 2237, "ret == 0", a1, *a1, v20);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
    }

    v33 = *a1;
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v22, 211, v23, "AVE_SEI");
  }

  v25 = 4;
LABEL_24:
  if (sub_160EF0(0xD3u, v25))
  {
    v26 = sub_160F34(0xD3u);
    v27 = sub_175AE4();
    v28 = sub_160F68(v25);
    v29 = *a1;
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d\n", v27, 211, v28, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v29, a2, a4, *(a4 + 24), a5, a6, v20);
      v30 = sub_175AE4();
      v31 = sub_160F68(v25);
      v34 = *(a4 + 24);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v30, 211, v31, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v27, 211, v28, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v29);
    }
  }

  return v20;
}

uint64_t sub_1A020(void *a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", v13, 211, v14, "AVE_SEI", "GenerateLuxLevelNALU", a1, v15, a2, a4, v16, a5, a6);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", v13, 211, v14, "AVE_SEI", "GenerateLuxLevelNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x80) == 0)
  {
    goto LABEL_19;
  }

  v18 = sub_D2D18(a2, a3, *(a4 + 24), *(a4 + 60), *(a1 + 5), 1, a6);
  if (!v18)
  {
    if ((a1[2] & 2) != 0)
    {
      v19 = 0;
      *a2 = bswap32(*a6 - 4);
      goto LABEL_20;
    }

LABEL_19:
    v19 = 0;
LABEL_20:
    v20 = 7;
    goto LABEL_21;
  }

  v19 = v18;
  v20 = 4;
  if (sub_160EF0(0xD3u, 4))
  {
    v21 = sub_160F34(0xD3u);
    v22 = sub_175AE4();
    v23 = sub_160F68(4);
    v24 = *a1;
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
      v25 = sub_175AE4();
      v20 = 4;
      v26 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d", v25, 211, v26, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d", v22, 211, v23, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
      v20 = 4;
    }
  }

LABEL_21:
  if (sub_160EF0(0xD3u, v20))
  {
    v27 = sub_160F34(0xD3u);
    v28 = sub_175AE4();
    v29 = sub_160F68(v20);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d\n", v28, 211, v29, "AVE_SEI", "GenerateLuxLevelNALU", a1, *a1, a4, *(a4 + 24), a5, a6, v19);
      v28 = sub_175AE4();
      v29 = sub_160F68(v20);
      v32 = *(a4 + 24);
      v31 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d", v28, 211, v29, "AVE_SEI", "GenerateLuxLevelNALU", a1);
  }

  return v19;
}

uint64_t sub_1A3F4(uint64_t *a1, _DWORD *a2, int a3, void *a4, uint64_t a5, unsigned int *a6)
{
  v197 = xmmword_1831E0;
  if (sub_160EF0(0xD3u, 7))
  {
    v10 = sub_160F34(0xD3u);
    v11 = sub_175AE4();
    v12 = sub_160F68(7);
    v13 = *a1;
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p\n", v11, 211, v12, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v13, a2, a3, a4, a5, a6);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p", v14, 211, v15, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, *a1, a2, a3, a4, a5, a6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p", v11, 211, v12, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v13, a2, a3, a4, a5, a6);
    }
  }

  *a6 = 0;
  v16 = a4[4] & a1[1];
  if ((a5 & v16 & 0x3FF00000000) == 0)
  {
    if (sub_160EF0(0xD3u, 7))
    {
      v28 = sub_160F34(0xD3u);
      v29 = sub_175AE4();
      v30 = sub_160F68(7);
      v31 = *a1;
      if (v28)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early\n", v29, 211, v30, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, v31);
        v32 = sub_175AE4();
        v33 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early", v32, 211, v33, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, *a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early", v29, 211, v30, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, v31);
      }
    }

    goto LABEL_21;
  }

  v17 = v16 & a5;
  v18 = sub_22194(a1, a4, v16 & a5);
  if (v18 < 1)
  {
LABEL_21:
    v23 = 0;
    goto LABEL_46;
  }

  v19 = v18;
  v20 = operator new(0x1030uLL, &std::nothrow);
  if (v20)
  {
    v21 = v20;
    sub_1725DC(v20, a2, a3, 0);
    v22 = sub_1727F8(v21);
    if (v22)
    {
      v23 = v22;
      if (sub_160EF0(0xD3u, 4))
      {
        v24 = sub_160F34(0xD3u);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        v27 = *a1;
        if (v24)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v25, 211, v26, "AVE_SEI", "GenerateUnregisteredSEINALU", 1762, "ret == 0", a1, *a1, v23);
          v25 = sub_175AE4();
          v26 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v25, 211, v26, "AVE_SEI", "GenerateUnregisteredSEINALU", 1762, "ret == 0", a1, *a1, v23);
      }

      goto LABEL_41;
    }

    if (sub_160EF0(0xD3u, 8))
    {
      v37 = sub_160F34(0xD3u);
      v38 = sub_175AE4();
      v39 = sub_160F68(8);
      v40 = *(v21 + 12);
      v41 = *(v21 + 32) + v40;
      if (v37)
      {
        printf("%lld %d AVE %s: %s::%s:%d start code %p (%d)\n", v38, 211, v39, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 32) + v40), v40);
        v42 = sub_175AE4();
        v43 = sub_160F68(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d start code %p (%d)", v42, 211, v43, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 32) + *(v21 + 12)), *(v21 + 12));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d start code %p (%d)", v38, 211, v39, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 32) + v40), v40);
      }
    }

    v44 = *(a1 + 5);
    if (v44 == 2)
    {
      v51 = sub_CECD0(39, v21);
      if (v51)
      {
        v23 = v51;
        if (sub_160EF0(0xD3u, 4))
        {
          v46 = v21;
          v52 = sub_160F34(0xD3u);
          v53 = sub_175AE4();
          v54 = sub_160F68(4);
          v55 = *a1;
          if (v52)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v53, 211, v54, "AVE_SEI", "GenerateUnregisteredSEINALU", 1778, "ret == 0", a1, *a1, v23);
            v53 = sub_175AE4();
            v54 = sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v53, 211, v54, "AVE_SEI", "GenerateUnregisteredSEINALU", 1778, "ret == 0", a1, *a1, v23);
          goto LABEL_74;
        }

LABEL_41:
        v56 = 0;
        v57 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      if (v44 != 1)
      {
        if (sub_160EF0(0xD3u, 4))
        {
          v66 = sub_160F34(0xD3u);
          v67 = sub_175AE4();
          v68 = sub_160F68(4);
          v69 = *a1;
          v70 = *(a1 + 5);
          if (v66)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL\n", v67, 211, v68, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, v70);
            v71 = sub_175AE4();
            v72 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL", v71, 211, v72, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, *(a1 + 5));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL", v67, 211, v68, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, v70);
          }
        }

        v56 = 0;
        v57 = 0;
        v23 = 4294966295;
        goto LABEL_42;
      }

      v45 = sub_CECC4(v21);
      if (v45)
      {
        v23 = v45;
        if (sub_160EF0(0xD3u, 4))
        {
          v46 = v21;
          v47 = sub_160F34(0xD3u);
          v48 = sub_175AE4();
          v49 = sub_160F68(4);
          v50 = *a1;
          if (v47)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v48, 211, v49, "AVE_SEI", "GenerateUnregisteredSEINALU", 1772, "ret == 0", a1, *a1, v23);
            v48 = sub_175AE4();
            v49 = sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v48, 211, v49, "AVE_SEI", "GenerateUnregisteredSEINALU", 1772, "ret == 0", a1, *a1, v23);
LABEL_74:
          v56 = 0;
          v57 = 0;
          v21 = v46;
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

    if (sub_160EF0(0xD3u, 8))
    {
      v73 = sub_160F34(0xD3u);
      v74 = sub_175AE4();
      v75 = sub_160F68(8);
      v76 = *a1;
      v77 = *(v21 + 12);
      v78 = *(v21 + 32) + v77;
      if (v73)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)\n", v74, 211, v75, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, v76, (*(v21 + 32) + v77), v77);
        v79 = sub_175AE4();
        v80 = sub_160F68(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)", v79, 211, v80, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, *a1, (*(v21 + 32) + *(v21 + 12)), *(v21 + 12));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)", v74, 211, v75, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, v76, (*(v21 + 32) + v77), v77);
      }
    }

    sub_1727D0(v21, 5, 8);
    if (sub_160EF0(0xD3u, 8))
    {
      v81 = sub_160F34(0xD3u);
      v82 = sub_175AE4();
      v83 = sub_160F68(8);
      v84 = *a1;
      v85 = *(v21 + 12);
      v86 = *(v21 + 32) + v85;
      if (v81)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)\n", v82, 211, v83, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, v84, (*(v21 + 32) + v85), v85);
        v87 = sub_175AE4();
        v88 = sub_160F68(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)", v87, 211, v88, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, *a1, (*(v21 + 32) + *(v21 + 12)), *(v21 + 12));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)", v82, 211, v83, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, v84, (*(v21 + 32) + v85), v85);
      }
    }

    v89 = malloc_type_malloc(v19, 0x100004077774924uLL);
    if (!v89)
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v94 = sub_160F34(0xD3u);
        v95 = sub_175AE4();
        v96 = sub_160F68(4);
        v97 = *a1;
        if (v94)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.\n", v95, 211, v96, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, v97);
          v98 = sub_175AE4();
          v99 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.", v98, 211, v99, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, *a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.", v95, 211, v96, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, v97);
        }
      }

      v56 = 0;
      v57 = 0;
      v23 = 4294966293;
      goto LABEL_42;
    }

    v192 = v21;
    v193 = v89;
    if (sub_160EF0(0xD3u, 8))
    {
      v90 = sub_160F34(0xD3u);
      v91 = sub_175AE4();
      v92 = sub_160F68(8);
      v93 = *a1;
      if (v90)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for SEI Buffer\n", v91, 211, v92, "AVE_SEI", "GenerateUnregisteredSEINALU", 1803, a1, *a1, v19);
        v91 = sub_175AE4();
        v92 = sub_160F68(8);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for SEI Buffer", v91, 211, v92, "AVE_SEI", "GenerateUnregisteredSEINALU", 1803, a1, *a1, v19);
    }

    v100 = 0;
    v101 = &off_1FD8D0;
    v102 = 10;
    v103 = v193;
    do
    {
      if ((v17 >> *(v101 - 2)))
      {
        v196 = 0;
        (*v101)(a4, v103, v19, &v196);
        v103 += v196;
        v19 = (v19 - v196);
        v100 += v196;
      }

      v101 += 2;
      --v102;
    }

    while (v102);
    v191 = v100 + v100 / 2 + 17;
    v56 = malloc_type_malloc(v191, 0x100004077774924uLL);
    if (v56)
    {
      if (sub_160EF0(0xD3u, 8))
      {
        v104 = sub_160F34(0xD3u);
        v105 = sub_175AE4();
        v106 = sub_160F68(8);
        v107 = *a1;
        if (v104)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for EPB Buffer\n", v105, 211, v106, "AVE_SEI", "GenerateUnregisteredSEINALU", 1828, a1, *a1, v191);
          v105 = sub_175AE4();
          v106 = sub_160F68(8);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for EPB Buffer", v105, 211, v106, "AVE_SEI", "GenerateUnregisteredSEINALU", 1828, a1, *a1, v191);
      }

      v114 = operator new(0x1030uLL, &std::nothrow);
      if (v114)
      {
        v115 = v114;
        sub_1725DC(v114, v56, v191, 1);
        v190 = v115;
        v23 = sub_172890(v115, &v197, 16);
        if (v23)
        {
          if (sub_160EF0(0xD3u, 4))
          {
            v116 = sub_160F34(0xD3u);
            v117 = sub_175AE4();
            v118 = sub_160F68(4);
            v119 = *a1;
            if (v116)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v117, 211, v118, "AVE_SEI", "GenerateUnregisteredSEINALU", 1838, "ret == 0", a1, *a1, v23);
              v117 = sub_175AE4();
              v118 = sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v117, 211, v118, "AVE_SEI", "GenerateUnregisteredSEINALU", 1838, "ret == 0", a1, *a1, v23);
          }
        }

        else
        {
          v23 = sub_172890(v115, v193, v100);
          if (v23)
          {
            if (sub_160EF0(0xD3u, 4))
            {
              v123 = sub_160F34(0xD3u);
              v124 = sub_175AE4();
              v125 = sub_160F68(4);
              v126 = *a1;
              if (v123)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v124, 211, v125, "AVE_SEI", "GenerateUnregisteredSEINALU", 1843, "ret == 0", a1, *a1, v23);
                v124 = sub_175AE4();
                v125 = sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v124, 211, v125, "AVE_SEI", "GenerateUnregisteredSEINALU", 1843, "ret == 0", a1, *a1, v23);
            }
          }

          else
          {
            v128 = *(v115 + 12);
            v127 = v190[4];
            if (v127 >= 0)
            {
              v129 = v190[4];
            }

            else
            {
              v129 = v127 + 7;
            }

            v189 = *(v192 + 12);
            v130 = (v128 - (v129 >> 3));
            if (sub_160EF0(0xD3u, 8))
            {
              v131 = sub_160F34(0xD3u);
              v132 = sub_175AE4();
              v133 = sub_160F68(8);
              v134 = *a1;
              v135 = *(v192 + 12);
              v136 = *(v192 + 32) + v135;
              if (v131)
              {
                printf("%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)\n", v132, 211, v133, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, v134, v128 - (v129 >> 3), (*(v192 + 32) + v135), v135);
                v137 = sub_175AE4();
                v138 = sub_160F68(8);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)", v137, 211, v138, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, *a1, v130, (*(v192 + 32) + *(v192 + 12)), *(v192 + 12));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)", v132, 211, v133, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, v134, v128 - (v129 >> 3), (*(v192 + 32) + v135), v135);
              }
            }

            v23 = sub_CECE8(v130, v192);
            if (v23)
            {
              if (sub_160EF0(0xD3u, 4))
              {
                v139 = sub_160F34(0xD3u);
                v140 = sub_175AE4();
                v141 = sub_160F68(4);
                v142 = *a1;
                if (v139)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v140, 211, v141, "AVE_SEI", "GenerateUnregisteredSEINALU", 1856, "ret == 0", a1, *a1, v23);
                  v140 = sub_175AE4();
                  v141 = sub_160F68(4);
                }

                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v140, 211, v141, "AVE_SEI", "GenerateUnregisteredSEINALU", 1856, "ret == 0", a1, *a1, v23);
              }
            }

            else
            {
              if (sub_160EF0(0xD3u, 8))
              {
                v143 = sub_160F34(0xD3u);
                v144 = sub_175AE4();
                v145 = sub_160F68(8);
                v146 = *a1;
                v147 = *(v192 + 12);
                v148 = *(v192 + 32) + v147;
                if (v143)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)\n", v144, 211, v145, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, v146, v147 - v189, (*(v192 + 32) + v147), v147);
                  v149 = sub_175AE4();
                  v150 = sub_160F68(8);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)", v149, 211, v150, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, *a1, *(v192 + 12) - v189, (*(v192 + 32) + *(v192 + 12)), *(v192 + 12));
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)", v144, 211, v145, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, v146, v147 - v189, (*(v192 + 32) + v147), v147);
                }
              }

              if (sub_160EF0(0xD3u, 8))
              {
                v151 = sub_160F34(0xD3u);
                v152 = sub_175AE4();
                v153 = sub_160F68(8);
                v154 = v190[3];
                v155 = *(v192 + 12);
                if (v151)
                {
                  printf("%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d\n", v152, 211, v153, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v154, v191, *(v192 + 12), a3);
                  v156 = sub_175AE4();
                  v157 = sub_160F68(8);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d", v156, 211, v157, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v190[3], v191, *(v192 + 12), a3);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d", v152, 211, v153, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v154, v191, *(v192 + 12), a3);
                }
              }

              v23 = sub_1728F4(v192, v190);
              if (v23)
              {
                if (sub_160EF0(0xD3u, 4))
                {
                  v158 = sub_160F34(0xD3u);
                  v159 = sub_175AE4();
                  v160 = sub_160F68(4);
                  v161 = *a1;
                  if (v158)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to copy payload into SyntaxWriterNALU ret %d\n", v159, 211, v160, "AVE_SEI", "GenerateUnregisteredSEINALU", 1870, "ret == 0", a1, *a1, v23);
                    v159 = sub_175AE4();
                    v160 = sub_160F68(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to copy payload into SyntaxWriterNALU ret %d", v159, 211, v160, "AVE_SEI", "GenerateUnregisteredSEINALU", 1870, "ret == 0", a1, *a1, v23);
                }
              }

              else
              {
                if (sub_160EF0(0xD3u, 8))
                {
                  v162 = sub_160F34(0xD3u);
                  v163 = sub_175AE4();
                  v164 = sub_160F68(8);
                  v165 = *a1;
                  v166 = *(v192 + 12);
                  v167 = *(v192 + 32) + v166;
                  if (v162)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)\n", v163, 211, v164, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, v165, (*(v192 + 32) + v166), v166);
                    v168 = sub_175AE4();
                    v169 = sub_160F68(8);
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)", v168, 211, v169, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, *a1, (*(v192 + 32) + *(v192 + 12)), *(v192 + 12));
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)", v163, 211, v164, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, v165, (*(v192 + 32) + v166), v166);
                  }
                }

                v23 = sub_172978(v192);
                if (v23)
                {
                  if (sub_160EF0(0xD3u, 4))
                  {
                    v170 = sub_160F34(0xD3u);
                    v171 = sub_175AE4();
                    v172 = sub_160F68(4);
                    v173 = *a1;
                    if (v170)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v171, 211, v172, "AVE_SEI", "GenerateUnregisteredSEINALU", 1879, "ret == 0", a1, *a1, v23);
                      v171 = sub_175AE4();
                      v172 = sub_160F68(4);
                    }

                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v171, 211, v172, "AVE_SEI", "GenerateUnregisteredSEINALU", 1879, "ret == 0", a1, *a1, v23);
                  }
                }

                else
                {
                  if (sub_160EF0(0xD3u, 8))
                  {
                    v174 = sub_160F34(0xD3u);
                    v175 = sub_175AE4();
                    v176 = sub_160F68(8);
                    v177 = *a1;
                    v178 = *(v192 + 12);
                    v179 = *(v192 + 32) + v178;
                    if (v174)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)\n", v175, 211, v176, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, v177, (*(v192 + 32) + v178), v178);
                      v180 = sub_175AE4();
                      v181 = sub_160F68(8);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)", v180, 211, v181, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, *a1, (*(v192 + 32) + *(v192 + 12)), *(v192 + 12));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)", v175, 211, v176, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, v177, (*(v192 + 32) + v178), v178);
                    }
                  }

                  *a6 = *(v192 + 12);
                  if (sub_160EF0(0xD3u, 8))
                  {
                    v182 = sub_160F34(0xD3u);
                    v183 = sub_175AE4();
                    v184 = sub_160F68(8);
                    v185 = *a1;
                    v186 = *a6;
                    if (v182)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d\n", v183, 211, v184, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, v186);
                      v187 = sub_175AE4();
                      v188 = sub_160F68(8);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d", v187, 211, v188, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, *a6);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d", v183, 211, v184, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, v186);
                    }
                  }

                  v23 = 0;
                  if ((a1[2] & 2) != 0)
                  {
                    *a2 = bswap32(*a6 - 4);
                  }
                }
              }
            }
          }
        }

        v21 = v192;
        v57 = v193;
        (*(*v190 + 8))(v190);
        goto LABEL_42;
      }

      if (sub_160EF0(0xD3u, 4))
      {
        v120 = sub_160F34(0xD3u);
        v121 = sub_175AE4();
        v122 = sub_160F68(4);
        if (v120)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter\n", v121, 211, v122, "GenerateUnregisteredSEINALU", 1832, "pcSyntaxWriter != __null");
          v121 = sub_175AE4();
          v122 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter", v121, 211, v122, "GenerateUnregisteredSEINALU", 1832, "pcSyntaxWriter != __null");
      }
    }

    else
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v108 = sub_160F34(0xD3u);
        v109 = sub_175AE4();
        v110 = sub_160F68(4);
        v111 = *a1;
        if (v108)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed\n", v109, 211, v110, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, v111);
          v112 = sub_175AE4();
          v113 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed", v112, 211, v113, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, *a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed", v109, 211, v110, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, v111);
        }
      }

      v56 = 0;
    }

    v23 = 4294966293;
    v21 = v192;
    v57 = v193;
LABEL_42:
    (*(*v21 + 8))(v21);
    if (v56)
    {
      free(v56);
    }

    if (v57)
    {
      free(v57);
    }

    goto LABEL_46;
  }

  if (sub_160EF0(0xD3u, 4))
  {
    v34 = sub_160F34(0xD3u);
    v35 = sub_175AE4();
    v36 = sub_160F68(4);
    if (v34)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter\n", v35, 211, v36, "GenerateUnregisteredSEINALU", 1757, "pcSyntaxWriter_NALU != __null");
      v35 = sub_175AE4();
      v36 = sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter", v35, 211, v36, "GenerateUnregisteredSEINALU", 1757, "pcSyntaxWriter_NALU != __null");
  }

  v23 = 4294966293;
LABEL_46:
  if (sub_160EF0(0xD3u, 7))
  {
    v58 = sub_160F34(0xD3u);
    v59 = sub_175AE4();
    v60 = sub_160F68(7);
    v61 = *a1;
    v62 = *a6;
    if (v58)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d\n", v59, 211, v60, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v61, a2, a3, a4, a5, a6, *a6, v23);
      v63 = sub_175AE4();
      v64 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d", v63, 211, v64, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, *a1, a2, a3, a4, a5, a6, *a6, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d", v59, 211, v60, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v61, a2, a3, a4, a5, a6, *a6, v23);
    }
  }

  return v23;
}

uint64_t sub_1C324(pthread_mutex_t **a1, uint64_t a2, const void *a3)
{
  error = 0;
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", v7, 211, v8, "AVE_SEI", "SetISPMetadata", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v7, 211, v8);
  }

  if (a3 && (v10 = CFGetTypeID(a3), v10 == CFDictionaryGetTypeID()))
  {
    v11 = CFPropertyListCreateData(kCFAllocatorDefault, a3, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (v11)
    {
      v12 = v11;
      v13 = sub_13DC18(a1[4]);
      v14 = sub_1C90C(a1, a2);
      if (v14)
      {
        v14[4] |= 1uLL;
        v14[27] = v12;
        sub_13DC4C(a1[4]);
        if (!v13)
        {
          v15 = 7;
          goto LABEL_21;
        }
      }

      else
      {
        if (sub_160EF0(0xD3u, 4))
        {
          v27 = sub_160F34(0xD3u);
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          v30 = *a1;
          if (v27)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v28, 211, v29, "AVE_SEI", "SetISPMetadata", 496, "pPFData != __null", a1, *a1, a2);
            v28 = sub_175AE4();
            v29 = sub_160F68(4);
            v31 = *a1;
          }

          else
          {
            v37 = *a1;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v28, 211, v29, "AVE_SEI");
        }

        sub_13DC4C(a1[4]);
        v13 = 4294966296;
      }

      CFRelease(v12);
    }

    else
    {
      if (error)
      {
        Domain = CFErrorGetDomain(error);
        if (Domain)
        {
          CStringPtr = CFStringGetCStringPtr(Domain, 0);
        }

        else
        {
          CStringPtr = 0;
        }

        Code = CFErrorGetCode(error);
      }

      else
      {
        CStringPtr = 0;
        Code = 0;
      }

      if (sub_160EF0(0xD3u, 4))
      {
        v33 = sub_160F34(0xD3u);
        v34 = sub_175AE4();
        v35 = sub_160F68(4);
        if (v33)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | Failed to serialize ISP metadata %p %lld %lld %s %ld %p\n", v34, 211, v35, "AVE_SEI", "SetISPMetadata", 487, "false", a1, *a1, a2, CStringPtr, Code, a3);
          v34 = sub_175AE4();
          v35 = sub_160F68(4);
          v36 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Failed to serialize ISP metadata %p %lld %lld %s %ld %p", v34, 211, v35, "AVE_SEI", "SetISPMetadata", 487, "false");
      }

      v13 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xD3u, 5))
    {
      v16 = sub_160F34(0xD3u);
      v17 = sub_175AE4();
      v18 = sub_160F68(5);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu ISPMetadata %p was null or not a dictionary for frame %lld, skipping\n", v17, 211, v18, "AVE_SEI", "SetISPMetadata", 464, "pISPMetadata != NULL && CFGetTypeID(pISPMetadata) == CFDictionaryGetTypeID()", a1, *a1, a3, a2);
        v17 = sub_175AE4();
        v18 = sub_160F68(5);
        v19 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu ISPMetadata %p was null or not a dictionary for frame %lld, skipping", v17, 211, v18, "AVE_SEI", "SetISPMetadata");
    }

    v13 = 4294966295;
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  v15 = 4;
LABEL_21:
  if (sub_160EF0(0xD3u, v15))
  {
    v20 = sub_160F34(0xD3u);
    v21 = sub_175AE4();
    v22 = sub_160F68(v15);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v21, 211, v22, "AVE_SEI", "SetISPMetadata", a1, *a1, a2, a3, v13);
      v21 = sub_175AE4();
      v22 = sub_160F68(v15);
      v23 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v21, 211, v22, "AVE_SEI");
  }

  return v13;
}

void *sub_1C90C(uint64_t *a1, uint64_t a2)
{
  if (sub_160EF0(0xD3u, 8))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(8);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", v5, 211, v6, "AVE_SEI", "FindOrCreateFrame", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(8);
      v8 = *a1;
    }

    else
    {
      v16 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", v5, 211);
  }

  v17 = sub_17800(a1, a2);
  if (v17)
  {
    v9 = 0;
LABEL_8:
    v10 = 8;
    goto LABEL_11;
  }

  v9 = sub_218D8(a1, a2, &v17);
  if (!v9)
  {
    goto LABEL_8;
  }

  v17 = 0;
  v10 = 4;
LABEL_11:
  if (sub_160EF0(0xD3u, v10))
  {
    v11 = sub_160F34(0xD3u);
    v12 = sub_175AE4();
    v13 = sub_160F68(v10);
    if (v11)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %p\n", v12, 211, v13, "AVE_SEI", "FindOrCreateFrame", a1, *a1, a2, v9, v17);
      v12 = sub_175AE4();
      v13 = sub_160F68(v10);
      v14 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %p", v12, 211, v13, "AVE_SEI");
  }

  return v17;
}

uint64_t sub_1CB40(pthread_mutex_t **a1, uint64_t a2)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", v5, 211, v6, "AVE_SEI", "SetContentColorVolume", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(7);
      v8 = *a1;
    }

    else
    {
      v22 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", v5, 211);
  }

  v9 = sub_13DC18(a1[4]);
  v10 = sub_1C90C(a1, a2);
  if (v10)
  {
    v10[4] |= 0x20uLL;
    sub_13DC4C(a1[4]);
    if (v9)
    {
      v11 = 4;
    }

    else
    {
      v11 = 7;
    }
  }

  else
  {
    if (sub_160EF0(0xD3u, 4))
    {
      v12 = sub_160F34(0xD3u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      v15 = *a1;
      if (v12)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v13, 211, v14, "AVE_SEI", "SetContentColorVolume", 539, "pPFData != __null", a1, *a1, a2);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        v16 = *a1;
      }

      else
      {
        v23 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v13, 211, v14, "AVE_SEI");
    }

    sub_13DC4C(a1[4]);
    v11 = 4;
    v9 = 4294966296;
  }

  if (sub_160EF0(0xD3u, v11))
  {
    v17 = sub_160F34(0xD3u);
    v18 = sub_175AE4();
    v19 = sub_160F68(v11);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d\n", v18, 211, v19, "AVE_SEI", "SetContentColorVolume", a1, *a1, a2, v9);
      v18 = sub_175AE4();
      v19 = sub_160F68(v11);
      v20 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v18, 211, v19);
  }

  return v9;
}

uint64_t sub_1CE6C(pthread_mutex_t **a1, uint64_t a2, int a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", v7, 211, v8, "AVE_SEI", "SetLuxLevel", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v7, 211, v8);
  }

  if (a3 <= 0)
  {
    if (sub_160EF0(0xD3u, 7))
    {
      v13 = sub_160F34(0xD3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | Lux value %d invalid, ignoring\n", v14, 211, v15, "AVE_SEI", "SetLuxLevel", 569, "luxLevel > 0", a3);
        v16 = sub_175AE4();
        sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Lux value %d invalid, ignoring", v16, 211);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Lux value %d invalid, ignoring", v14, 211);
      }
    }

LABEL_18:
    v10 = 0;
    v12 = 7;
    goto LABEL_21;
  }

  v10 = sub_13DC18(a1[4]);
  v11 = sub_1C90C(a1, a2);
  if (v11)
  {
    v11[4] |= 0x80uLL;
    *(v11 + 15) = a3;
    sub_13DC4C(a1[4]);
    if (v10)
    {
      v12 = 4;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (sub_160EF0(0xD3u, 4))
  {
    v17 = sub_160F34(0xD3u);
    v18 = sub_175AE4();
    v19 = sub_160F68(4);
    v20 = *a1;
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v18, 211, v19, "AVE_SEI", "SetLuxLevel", 577, "pPFData != __null", a1, *a1, a2);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      v21 = *a1;
    }

    else
    {
      v27 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v18, 211, v19, "AVE_SEI");
  }

  sub_13DC4C(a1[4]);
  v12 = 4;
  v10 = 4294966296;
LABEL_21:
  if (sub_160EF0(0xD3u, v12))
  {
    v22 = sub_160F34(0xD3u);
    v23 = sub_175AE4();
    v24 = sub_160F68(v12);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d\n", v23, 211, v24, "AVE_SEI", "SetLuxLevel", a1, *a1, a2, v10);
      v23 = sub_175AE4();
      v24 = sub_160F68(v12);
      v25 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v23, 211, v24);
  }

  return v10;
}

uint64_t sub_1D298(pthread_mutex_t **a1, uint64_t a2, const __CFData *a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", v7, 211, v8, "AVE_SEI", "SetAmbientViewingEnvironment", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v7, 211, v8);
  }

  if (!a3)
  {
    v13 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v14 = sub_160F34(0xD3u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (!v14)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Ambient Viewing Environment data was null, skipping", v15, 211, v16);
        goto LABEL_24;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Ambient Viewing Environment data was null, skipping\n", v15, 211, v16, "AVE_SEI", "SetAmbientViewingEnvironment", 610, "pViewingEnvironment != __null", a1, *a1);
      v17 = sub_175AE4();
      v13 = 4;
      v18 = sub_160F68(4);
      v19 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Ambient Viewing Environment data was null, skipping", v17, 211, v18);
    }

LABEL_25:
    v11 = 4294966295;
    goto LABEL_26;
  }

  Length = CFDataGetLength(a3);
  if (Length != 8)
  {
    v20 = Length;
    v13 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v21 = sub_160F34(0xD3u);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      v24 = *a1;
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Ambient Viewing Environment length %ld\n", v22, 211, v23, "AVE_SEI", "SetAmbientViewingEnvironment", 617, "dataLength == 8", a1, *a1, v20);
        v25 = sub_175AE4();
        v13 = 4;
        v26 = sub_160F68(4);
        v37 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Ambient Viewing Environment length %ld", v25, 211, v26, "AVE_SEI");
        goto LABEL_25;
      }

      v38 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Ambient Viewing Environment length %ld", v22, 211, v23, "AVE_SEI");
LABEL_24:
      v13 = 4;
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v11 = sub_13DC18(a1[4]);
  v12 = sub_1C90C(a1, a2);
  if (v12)
  {
    *(v12 + 4) |= 0x40uLL;
    v40.location = 0;
    v40.length = 8;
    CFDataGetBytes(a3, v40, v12 + 148);
    sub_13DC4C(a1[4]);
    if (v11)
    {
      v13 = 4;
    }

    else
    {
      v13 = 7;
    }
  }

  else
  {
    if (sub_160EF0(0xD3u, 4))
    {
      v27 = sub_160F34(0xD3u);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      v30 = *a1;
      if (v27)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v28, 211, v29, "AVE_SEI", "SetAmbientViewingEnvironment", 624, "pPFData != __null", a1, *a1, a2);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        v31 = *a1;
      }

      else
      {
        v39 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v28, 211, v29, "AVE_SEI");
    }

    sub_13DC4C(a1[4]);
    v13 = 4;
    v11 = 4294966296;
  }

LABEL_26:
  if (sub_160EF0(0xD3u, v13))
  {
    v32 = sub_160F34(0xD3u);
    v33 = sub_175AE4();
    v34 = sub_160F68(v13);
    if (v32)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v33, 211, v34, "AVE_SEI", "SetAmbientViewingEnvironment", a1, *a1, a2, a3, v11);
      v33 = sub_175AE4();
      v34 = sub_160F68(v13);
      v35 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v33, 211, v34, "AVE_SEI");
  }

  return v11;
}

uint64_t sub_1D808(pthread_mutex_t **a1, uint64_t a2, double a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %f\n", v7, 211, v8, "AVE_SEI", "SetExposureTime", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f", v7, 211);
  }

  if (a3 <= 0.0)
  {
    if (sub_160EF0(0xD3u, 7))
    {
      v13 = sub_160F34(0xD3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | exposure time %f invalid, ignoring\n", v14, 211, v15, "AVE_SEI", "SetExposureTime", 657, "fExposureTime > 0", a3);
        v14 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | exposure time %f invalid, ignoring", v14);
    }

LABEL_19:
    v10 = 0;
    v12 = 7;
    goto LABEL_22;
  }

  v10 = sub_13DC18(a1[4]);
  v11 = sub_1C90C(a1, a2);
  if (v11)
  {
    *(v11 + 4) |= 0x100000000uLL;
    v11[8] = a3;
    sub_13DC4C(a1[4]);
    if (v10)
    {
      v12 = 4;
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (sub_160EF0(0xD3u, 4))
  {
    v16 = sub_160F34(0xD3u);
    v17 = sub_175AE4();
    v18 = sub_160F68(4);
    v19 = *a1;
    if (v16)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v17, 211, v18, "AVE_SEI", "SetExposureTime", 664, "pPFData != __null", a1, *a1, a2);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      v20 = *a1;
    }

    else
    {
      v26 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v17, 211, v18, "AVE_SEI");
  }

  sub_13DC4C(a1[4]);
  v12 = 4;
  v10 = 4294966296;
LABEL_22:
  if (sub_160EF0(0xD3u, v12))
  {
    v21 = sub_160F34(0xD3u);
    v22 = sub_175AE4();
    v23 = sub_160F68(v12);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d\n", v22, 211, v23, "AVE_SEI", "SetExposureTime", a1, *a1, a2, a3, v10);
      v22 = sub_175AE4();
      v23 = sub_160F68(v12);
      v24 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d", v22, 211, v23);
  }

  return v10;
}

uint64_t sub_1DC50(pthread_mutex_t **a1, uint64_t a2, double a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %f\n", v7, 211, v8, "AVE_SEI", "SetSNR", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f", v7, 211);
  }

  if (a3 <= 0.0)
  {
    if (sub_160EF0(0xD3u, 7))
    {
      v13 = sub_160F34(0xD3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | SNR value %f invalid, ignoring\n", v14, 211, v15, "AVE_SEI", "SetSNR", 695, "fSNR > 0", a3);
        v14 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | SNR value %f invalid, ignoring", v14);
    }

LABEL_19:
    v10 = 0;
    v12 = 7;
    goto LABEL_22;
  }

  v10 = sub_13DC18(a1[4]);
  v11 = sub_1C90C(a1, a2);
  if (v11)
  {
    *(v11 + 4) |= 0x200000000uLL;
    v11[9] = a3;
    sub_13DC4C(a1[4]);
    if (v10)
    {
      v12 = 4;
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (sub_160EF0(0xD3u, 4))
  {
    v16 = sub_160F34(0xD3u);
    v17 = sub_175AE4();
    v18 = sub_160F68(4);
    v19 = *a1;
    if (v16)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v17, 211, v18, "AVE_SEI", "SetSNR", 702, "pPFData != __null", a1, *a1, a2);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      v20 = *a1;
    }

    else
    {
      v26 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v17, 211, v18, "AVE_SEI");
  }

  sub_13DC4C(a1[4]);
  v12 = 4;
  v10 = 4294966296;
LABEL_22:
  if (sub_160EF0(0xD3u, v12))
  {
    v21 = sub_160F34(0xD3u);
    v22 = sub_175AE4();
    v23 = sub_160F68(v12);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d\n", v22, 211, v23, "AVE_SEI", "SetSNR", a1, *a1, a2, a3, v10);
      v22 = sub_175AE4();
      v23 = sub_160F68(v12);
      v24 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d", v22, 211, v23);
  }

  return v10;
}

uint64_t sub_1E098(pthread_mutex_t **a1, uint64_t a2, int a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", v7, 211, v8, "AVE_SEI", "SetRCMode", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v7, 211, v8);
  }

  if (a3 < 0)
  {
    v12 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v13 = sub_160F34(0xD3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      v16 = *a1;
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid RCMode %d\n", v14, 211, v15, "AVE_SEI", "SetRCMode", 733, "eRCMode >= AVE_RCMode_None", a1, *a1, a3);
        v17 = sub_175AE4();
        v12 = 4;
        v18 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid RCMode %d", v17, 211, v18, "AVE_SEI", "SetRCMode", 733, "eRCMode >= AVE_RCMode_None", a1, *a1, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid RCMode %d", v14, 211, v15, "AVE_SEI", "SetRCMode", 733, "eRCMode >= AVE_RCMode_None", a1, *a1, a3);
        v12 = 4;
      }
    }

    v10 = 4294966295;
  }

  else
  {
    v10 = sub_13DC18(a1[4]);
    v11 = sub_1C90C(a1, a2);
    if (v11)
    {
      v11[4] |= 0x400000000uLL;
      *(v11 + 20) = a3;
      sub_13DC4C(a1[4]);
      if (v10)
      {
        v12 = 4;
      }

      else
      {
        v12 = 7;
      }
    }

    else
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v19 = sub_160F34(0xD3u);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        v22 = *a1;
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v20, 211, v21, "AVE_SEI", "SetRCMode", 740, "pPFData != __null", a1, *a1, a2);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          v23 = *a1;
        }

        else
        {
          v31 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v21, "AVE_SEI");
      }

      sub_13DC4C(a1[4]);
      v12 = 4;
      v10 = 4294966296;
    }
  }

  if (sub_160EF0(0xD3u, v12))
  {
    v24 = sub_160F34(0xD3u);
    v25 = sub_175AE4();
    v26 = sub_160F68(v12);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v25, 211, v26, "AVE_SEI", "SetRCMode", a1, *a1, a2, a3, v10);
      v27 = sub_175AE4();
      v28 = sub_160F68(v12);
      v29 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v27, 211, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v25, 211, v26);
    }
  }

  return v10;
}

uint64_t sub_1E500(pthread_mutex_t **a1, uint64_t a2, unsigned int a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", v7, 211, v8, "AVE_SEI", "SetThroughputMode", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v7, 211, v8);
  }

  if (a3 >= 8)
  {
    v12 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v13 = sub_160F34(0xD3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      v16 = *a1;
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid ThroughputMode %d\n", v14, 211, v15, "AVE_SEI", "SetThroughputMode", 772, "AVE_ThroughputMode_Invalid <= eThroughputMode && eThroughputMode < AVE_ThroughputMode_Max", a1, *a1, a3);
        v17 = sub_175AE4();
        v12 = 4;
        v18 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid ThroughputMode %d", v17, 211, v18, "AVE_SEI", "SetThroughputMode", 772, "AVE_ThroughputMode_Invalid <= eThroughputMode && eThroughputMode < AVE_ThroughputMode_Max", a1, *a1, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid ThroughputMode %d", v14, 211, v15, "AVE_SEI", "SetThroughputMode", 772, "AVE_ThroughputMode_Invalid <= eThroughputMode && eThroughputMode < AVE_ThroughputMode_Max", a1, *a1, a3);
        v12 = 4;
      }
    }

    v10 = 4294966295;
  }

  else
  {
    v10 = sub_13DC18(a1[4]);
    v11 = sub_1C90C(a1, a2);
    if (v11)
    {
      v11[4] |= 0x800000000uLL;
      *(v11 + 21) = a3;
      sub_13DC4C(a1[4]);
      if (v10)
      {
        v12 = 4;
      }

      else
      {
        v12 = 7;
      }
    }

    else
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v19 = sub_160F34(0xD3u);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        v22 = *a1;
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v20, 211, v21, "AVE_SEI", "SetThroughputMode", 779, "pPFData != __null", a1, *a1, a2);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          v23 = *a1;
        }

        else
        {
          v31 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v21, "AVE_SEI");
      }

      sub_13DC4C(a1[4]);
      v12 = 4;
      v10 = 4294966296;
    }
  }

  if (sub_160EF0(0xD3u, v12))
  {
    v24 = sub_160F34(0xD3u);
    v25 = sub_175AE4();
    v26 = sub_160F68(v12);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v25, 211, v26, "AVE_SEI", "SetThroughputMode", a1, *a1, a2, a3, v10);
      v27 = sub_175AE4();
      v28 = sub_160F68(v12);
      v29 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v27, 211, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v25, 211, v26);
    }
  }

  return v10;
}

uint64_t sub_1E96C(pthread_mutex_t **a1, uint64_t a2, int a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", v7, 211, v8, "AVE_SEI", "SetBitrate", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v7, 211, v8);
  }

  if (a3 <= 0)
  {
    v12 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v13 = sub_160F34(0xD3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      v16 = *a1;
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid bitrate %d\n", v14, 211, v15, "AVE_SEI", "SetBitrate", 809, "bitrate > 0", a1, *a1, a3);
        v17 = sub_175AE4();
        v12 = 4;
        v18 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid bitrate %d", v17, 211, v18, "AVE_SEI", "SetBitrate", 809, "bitrate > 0", a1, *a1, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid bitrate %d", v14, 211, v15, "AVE_SEI", "SetBitrate", 809, "bitrate > 0", a1, *a1, a3);
        v12 = 4;
      }
    }

    v10 = 4294966295;
  }

  else
  {
    v10 = sub_13DC18(a1[4]);
    v11 = sub_1C90C(a1, a2);
    if (v11)
    {
      v11[4] |= 0x1000000000uLL;
      *(v11 + 22) = a3;
      sub_13DC4C(a1[4]);
      if (v10)
      {
        v12 = 4;
      }

      else
      {
        v12 = 7;
      }
    }

    else
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v19 = sub_160F34(0xD3u);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        v22 = *a1;
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v20, 211, v21, "AVE_SEI", "SetBitrate", 816, "pPFData != __null", a1, *a1, a2);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          v23 = *a1;
        }

        else
        {
          v31 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v21, "AVE_SEI");
      }

      sub_13DC4C(a1[4]);
      v12 = 4;
      v10 = 4294966296;
    }
  }

  if (sub_160EF0(0xD3u, v12))
  {
    v24 = sub_160F34(0xD3u);
    v25 = sub_175AE4();
    v26 = sub_160F68(v12);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v25, 211, v26, "AVE_SEI", "SetBitrate", a1, *a1, a2, a3, v10);
      v27 = sub_175AE4();
      v28 = sub_160F68(v12);
      v29 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v27, 211, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v25, 211, v26);
    }
  }

  return v10;
}

uint64_t sub_1EDD8(pthread_mutex_t **a1, uint64_t a2, int a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", v7, 211, v8, "AVE_SEI", "SetLookAheadInfo", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v7, 211, v8);
  }

  v10 = sub_13DC18(a1[4]);
  v11 = sub_1C90C(a1, a2);
  if (v11)
  {
    v11[4] |= 0x20000000000uLL;
    *(v11 + 23) = a3;
    sub_13DC4C(a1[4]);
    if (v10)
    {
      v12 = 4;
    }

    else
    {
      v12 = 7;
    }
  }

  else
  {
    if (sub_160EF0(0xD3u, 4))
    {
      v13 = sub_160F34(0xD3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      v16 = *a1;
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetLookAheadInfo", 850, "pPFData != __null", a1, *a1, a2);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        v17 = *a1;
      }

      else
      {
        v25 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI");
    }

    sub_13DC4C(a1[4]);
    v12 = 4;
    v10 = 4294966296;
  }

  if (sub_160EF0(0xD3u, v12))
  {
    v18 = sub_160F34(0xD3u);
    v19 = sub_175AE4();
    v20 = sub_160F68(v12);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v19, 211, v20, "AVE_SEI", "SetLookAheadInfo", a1, *a1, a2, a3, v10);
      v21 = sub_175AE4();
      v22 = sub_160F68(v12);
      v23 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v21, 211, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v19, 211, v20);
    }
  }

  return v10;
}

uint64_t sub_1F124(pthread_mutex_t **a1, uint64_t a2, int a3, uint64_t a4)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v8 = sub_160F34(0xD3u);
    v9 = sub_175AE4();
    v10 = sub_160F68(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %lld\n", v9, 211, v10, "AVE_SEI", "SetPTS", a1, *a1, a2, a3, a4);
      v9 = sub_175AE4();
      v10 = sub_160F68(7);
      v11 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %lld", v9, 211, v10, "AVE_SEI");
  }

  if (a3 <= 0)
  {
    if (sub_160EF0(0xD3u, 7))
    {
      v15 = sub_160F34(0xD3u);
      v16 = sub_175AE4();
      v17 = sub_160F68(7);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | timescale invalid, skipping\n", v16, 211, v17, "AVE_SEI", "SetPTS", 883, "iTimescale > 0");
        v16 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | timescale invalid, skipping", v16);
    }

LABEL_19:
    v12 = 0;
    v14 = 7;
    goto LABEL_22;
  }

  v12 = sub_13DC18(a1[4]);
  v13 = sub_1C90C(a1, a2);
  if (v13)
  {
    v13[4] |= 0x2000000000uLL;
    *(v13 + 26) = a3;
    v13[12] = a4;
    sub_13DC4C(a1[4]);
    if (v12)
    {
      v14 = 4;
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (sub_160EF0(0xD3u, 4))
  {
    v18 = sub_160F34(0xD3u);
    v19 = sub_175AE4();
    v20 = sub_160F68(4);
    v21 = *a1;
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v19, 211, v20, "AVE_SEI", "SetPTS", 890, "pPFData != __null", a1, *a1, a2);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      v22 = *a1;
    }

    else
    {
      v30 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v19, 211, v20, "AVE_SEI");
  }

  sub_13DC4C(a1[4]);
  v14 = 4;
  v12 = 4294966296;
LABEL_22:
  if (sub_160EF0(0xD3u, v14))
  {
    v23 = sub_160F34(0xD3u);
    v24 = sub_175AE4();
    v25 = sub_160F68(v14);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %lld %d\n", v24, 211, v25, "AVE_SEI", "SetPTS", a1, *a1, a2, a3, a4, v12);
      v26 = sub_175AE4();
      v27 = sub_160F68(v14);
      v29 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %lld %d", v26, 211, v27, "AVE_SEI", "SetPTS");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %lld %d", v24, 211, v25, "AVE_SEI", "SetPTS");
    }
  }

  return v12;
}

uint64_t sub_1F570(pthread_mutex_t **a1, uint64_t a2, const __CFData *a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", v7, 211, v8, "AVE_SEI", "SetMasteringDisplayColorVolume", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v7, 211, v8);
  }

  if (!a3)
  {
    v13 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v14 = sub_160F34(0xD3u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (!v14)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Mastering Display Color Volume data was null, skipping", v15, 211, v16);
        goto LABEL_24;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Mastering Display Color Volume data was null, skipping\n", v15, 211, v16, "AVE_SEI", "SetMasteringDisplayColorVolume", 923, "pColorVolumeData != __null", a1, *a1);
      v17 = sub_175AE4();
      v13 = 4;
      v18 = sub_160F68(4);
      v19 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Mastering Display Color Volume data was null, skipping", v17, 211, v18);
    }

LABEL_25:
    v11 = 4294966295;
    goto LABEL_26;
  }

  Length = CFDataGetLength(a3);
  if (Length != 24)
  {
    v20 = Length;
    v13 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v21 = sub_160F34(0xD3u);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      v24 = *a1;
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Mastering Display Color Volume length %ld\n", v22, 211, v23, "AVE_SEI", "SetMasteringDisplayColorVolume", 930, "dataLength == 24", a1, *a1, v20);
        v25 = sub_175AE4();
        v13 = 4;
        v26 = sub_160F68(4);
        v37 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Mastering Display Color Volume length %ld", v25, 211, v26, "AVE_SEI");
        goto LABEL_25;
      }

      v38 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Mastering Display Color Volume length %ld", v22, 211, v23, "AVE_SEI");
LABEL_24:
      v13 = 4;
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v11 = sub_13DC18(a1[4]);
  v12 = sub_1C90C(a1, a2);
  if (v12)
  {
    *(v12 + 4) |= 0x100uLL;
    v40.location = 0;
    v40.length = 24;
    CFDataGetBytes(a3, v40, v12 + 120);
    sub_13DC4C(a1[4]);
    if (v11)
    {
      v13 = 4;
    }

    else
    {
      v13 = 7;
    }
  }

  else
  {
    if (sub_160EF0(0xD3u, 4))
    {
      v27 = sub_160F34(0xD3u);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      v30 = *a1;
      if (v27)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v28, 211, v29, "AVE_SEI", "SetMasteringDisplayColorVolume", 937, "pPFData != __null", a1, *a1, a2);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        v31 = *a1;
      }

      else
      {
        v39 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v28, 211, v29, "AVE_SEI");
    }

    sub_13DC4C(a1[4]);
    v13 = 4;
    v11 = 4294966296;
  }

LABEL_26:
  if (sub_160EF0(0xD3u, v13))
  {
    v32 = sub_160F34(0xD3u);
    v33 = sub_175AE4();
    v34 = sub_160F68(v13);
    if (v32)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v33, 211, v34, "AVE_SEI", "SetMasteringDisplayColorVolume", a1, *a1, a2, a3, v11);
      v33 = sub_175AE4();
      v34 = sub_160F68(v13);
      v35 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v33, 211, v34, "AVE_SEI");
  }

  return v11;
}

uint64_t sub_1FAE0(pthread_mutex_t **a1, uint64_t a2, const __CFData *a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", v7, 211, v8, "AVE_SEI", "SetContentLightLevelInfo", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v7, 211, v8);
  }

  if (!a3)
  {
    v13 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v14 = sub_160F34(0xD3u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (!v14)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Content Level Light Info data was null, skipping", v15, 211, v16);
        goto LABEL_24;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Content Level Light Info data was null, skipping\n", v15, 211, v16, "AVE_SEI", "SetContentLightLevelInfo", 971, "pLightLevelData != __null", a1, *a1);
      v17 = sub_175AE4();
      v13 = 4;
      v18 = sub_160F68(4);
      v19 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Content Level Light Info data was null, skipping", v17, 211, v18);
    }

LABEL_25:
    v11 = 4294966295;
    goto LABEL_26;
  }

  Length = CFDataGetLength(a3);
  if (Length != 4)
  {
    v20 = Length;
    v13 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v21 = sub_160F34(0xD3u);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      v24 = *a1;
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Light Level Info length %ld\n", v22, 211, v23, "AVE_SEI", "SetContentLightLevelInfo", 977, "dataLength == 4", a1, *a1, v20);
        v25 = sub_175AE4();
        v13 = 4;
        v26 = sub_160F68(4);
        v37 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Light Level Info length %ld", v25, 211, v26, "AVE_SEI");
        goto LABEL_25;
      }

      v38 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Light Level Info length %ld", v22, 211, v23, "AVE_SEI");
LABEL_24:
      v13 = 4;
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v11 = sub_13DC18(a1[4]);
  v12 = sub_1C90C(a1, a2);
  if (v12)
  {
    *(v12 + 4) |= 0x200uLL;
    v40.location = 0;
    v40.length = 4;
    CFDataGetBytes(a3, v40, v12 + 144);
    sub_13DC4C(a1[4]);
    if (v11)
    {
      v13 = 4;
    }

    else
    {
      v13 = 7;
    }
  }

  else
  {
    if (sub_160EF0(0xD3u, 4))
    {
      v27 = sub_160F34(0xD3u);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      v30 = *a1;
      if (v27)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v28, 211, v29, "AVE_SEI", "SetContentLightLevelInfo", 984, "pPFData != __null", a1, *a1, a2);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        v31 = *a1;
      }

      else
      {
        v39 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v28, 211, v29, "AVE_SEI");
    }

    sub_13DC4C(a1[4]);
    v13 = 4;
    v11 = 4294966296;
  }

LABEL_26:
  if (sub_160EF0(0xD3u, v13))
  {
    v32 = sub_160F34(0xD3u);
    v33 = sub_175AE4();
    v34 = sub_160F68(v13);
    if (v32)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v33, 211, v34, "AVE_SEI", "SetContentLightLevelInfo", a1, *a1, a2, a3, v11);
      v33 = sub_175AE4();
      v34 = sub_160F68(v13);
      v35 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v33, 211, v34, "AVE_SEI");
  }

  return v11;
}

uint64_t sub_20050(pthread_mutex_t **a1, uint64_t a2, int a3, int a4, int a5, double a6, double a7, double a8, double a9, double a10)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v20 = sub_160F34(0xD3u);
    v21 = sub_175AE4();
    v22 = sub_160F68(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %f %f %f %f %f %d %d %d\n", v21, 211, v22, "AVE_SEI", "SetMCTFTag", a1, *a1, a2, a6, a7, a8, a9, a10, a3, a4, a5);
      v21 = sub_175AE4();
      v22 = sub_160F68(7);
      v23 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f %f %f %f %f %d %d %d", v21, 211, v22, "AVE_SEI");
  }

  sub_13DC18(a1[4]);
  v24 = sub_1C90C(a1, a2);
  if (v24)
  {
    v25 = 0;
    *(v24 + 4) |= 0x4000000000uLL;
    v24[20] = a6;
    v24[21] = a7;
    v24[22] = a8;
    v24[23] = a9;
    v24[24] = a10;
    *(v24 + 50) = a3;
    *(v24 + 51) = a4;
    *(v24 + 52) = a5;
    v26 = 7;
    goto LABEL_13;
  }

  v26 = 4;
  if (!sub_160EF0(0xD3u, 4))
  {
    goto LABEL_11;
  }

  v27 = sub_160F34(0xD3u);
  v28 = sub_175AE4();
  v29 = sub_160F68(4);
  v30 = *a1;
  if (v27)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v28, 211, v29, "AVE_SEI", "SetMCTFTag", 1028, "pPFData != __null", a1, *a1, a2);
    v31 = sub_175AE4();
    v26 = 4;
    v32 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v31, 211, v32, "AVE_SEI", "SetMCTFTag", 1028, "pPFData != __null", a1, *a1, a2);
LABEL_11:
    v25 = 4294966296;
    goto LABEL_13;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v28, 211, v29, "AVE_SEI", "SetMCTFTag", 1028, "pPFData != __null", a1, *a1, a2);
  v25 = 4294966296;
  v26 = 4;
LABEL_13:
  sub_13DC4C(a1[4]);
  if (sub_160EF0(0xD3u, v26))
  {
    v33 = sub_160F34(0xD3u);
    v34 = sub_175AE4();
    v35 = sub_160F68(v26);
    if (v33)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %f %f %f %f %d %d %d %d\n", v34, 211, v35, "AVE_SEI", "SetMCTFTag", a1, *a1, a2, a6, a7, a8, a9, a10, a3, a4, a5, v25);
      v36 = sub_175AE4();
      v37 = sub_160F68(v26);
      v39 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %f %f %f %f %d %d %d %d", v36, 211, v37, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %f %f %f %f %d %d %d %d", v34, 211, v35, "AVE_SEI");
    }
  }

  return v25;
}

uint64_t sub_20464(pthread_mutex_t **a1, uint64_t a2, uint64_t a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %llu %llu\n", v7, 211, v8, "AVE_SEI", "SetSessionID", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %llu %llu", v7, 211, v8);
  }

  sub_13DC18(a1[4]);
  v10 = sub_1C90C(a1, a2);
  if (v10)
  {
    v11 = 0;
    v10[4] |= 0x8000000000uLL;
    v10[5] = a3;
    v12 = 7;
    goto LABEL_13;
  }

  v12 = 4;
  if (!sub_160EF0(0xD3u, 4))
  {
    goto LABEL_11;
  }

  v13 = sub_160F34(0xD3u);
  v14 = sub_175AE4();
  v15 = sub_160F68(4);
  v16 = *a1;
  if (v13)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetSessionID", 1070, "pPFData != __null", a1, *a1, a2);
    v17 = sub_175AE4();
    v12 = 4;
    v18 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v17, 211, v18, "AVE_SEI", "SetSessionID", 1070, "pPFData != __null", a1, *a1, a2);
LABEL_11:
    v11 = 4294966296;
    goto LABEL_13;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI", "SetSessionID", 1070, "pPFData != __null", a1, *a1, a2);
  v11 = 4294966296;
  v12 = 4;
LABEL_13:
  sub_13DC4C(a1[4]);
  if (sub_160EF0(0xD3u, v12))
  {
    v19 = sub_160F34(0xD3u);
    v20 = sub_175AE4();
    v21 = sub_160F68(v12);
    if (v19)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %llu %llu %d\n", v20, 211, v21, "AVE_SEI", "SetSessionID", a1, *a1, a2, a3, v11);
      v20 = sub_175AE4();
      v21 = sub_160F68(v12);
      v22 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %llu %llu %d", v20, 211, v21, "AVE_SEI");
  }

  return v11;
}

uint64_t sub_207A4(pthread_mutex_t **a1, uint64_t a2)
{
  v34 = 0;
  v33 = 0;
  if (sub_160EF0(0xD3u, 7))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %llu\n", v5, 211, v6, "AVE_SEI", "SetDriverVersion", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(7);
      v8 = *a1;
    }

    else
    {
      v31 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %llu", v5, 211);
  }

  v9 = sscanf("905.5.3", "%d.%d.%d", &v34 + 4, &v34, &v33);
  if (v9 == 3)
  {
    sub_13DC18(a1[4]);
    v10 = sub_1C90C(a1, a2);
    if (v10)
    {
      v10[4] |= 0x10000000000uLL;
      v11 = v34;
      *(v10 + 12) = HIDWORD(v34);
      *(v10 + 13) = v11;
      *(v10 + 14) = v33;
      sub_13DC4C(a1[4]);
      v12 = 0;
      v13 = 7;
      goto LABEL_21;
    }

    if (sub_160EF0(0xD3u, 4))
    {
      v21 = sub_160F34(0xD3u);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      v24 = *a1;
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v22, 211, v23, "AVE_SEI", "SetDriverVersion", 1113, "pPFData != __null", a1, *a1, a2);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        v25 = *a1;
      }

      else
      {
        v32 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v22, 211, v23, "AVE_SEI");
    }

    sub_13DC4C(a1[4]);
    goto LABEL_19;
  }

  v14 = v9;
  v13 = 4;
  if (sub_160EF0(0xD3u, 4))
  {
    v15 = sub_160F34(0xD3u);
    v16 = sub_175AE4();
    v17 = sub_160F68(4);
    v18 = *a1;
    if (!v15)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to parse version string %s. Parsed %d tokens %d %d %d", v16, 211, v17, "AVE_SEI", "SetDriverVersion", 1107, "parseCount == 3", a1, v18, "905.5.3", v14, HIDWORD(v34), v34, v33);
LABEL_19:
      v13 = 4;
      goto LABEL_20;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to parse version string %s. Parsed %d tokens %d %d %d\n", v16, 211, v17, "AVE_SEI", "SetDriverVersion", 1107, "parseCount == 3", a1, v18, "905.5.3", v14, HIDWORD(v34), v34, v33);
    v19 = sub_175AE4();
    v13 = 4;
    v20 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to parse version string %s. Parsed %d tokens %d %d %d", v19, 211, v20, "AVE_SEI", "SetDriverVersion", 1107, "parseCount == 3", a1, *a1, "905.5.3", v14, HIDWORD(v34), v34, v33);
  }

LABEL_20:
  v12 = 4294966296;
LABEL_21:
  if (sub_160EF0(0xD3u, v13))
  {
    v26 = sub_160F34(0xD3u);
    v27 = sub_175AE4();
    v28 = sub_160F68(v13);
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %llu %d\n", v27, 211, v28, "AVE_SEI", "SetDriverVersion", a1, *a1, a2, v12);
      v27 = sub_175AE4();
      v28 = sub_160F68(v13);
      v29 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %llu %d", v27, 211, v28);
  }

  return v12;
}

uint64_t sub_20C4C(pthread_mutex_t **a1, uint64_t a2, int a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %u\n", v7, 211, v8, "AVE_SEI", "SetActiveParameterSets", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %u", v7, 211, v8);
  }

  sub_13DC18(a1[4]);
  v10 = sub_1C90C(a1, a2);
  if (v10)
  {
    v11 = 0;
    v10[4] |= 4uLL;
    *(v10 + 57) = a3;
    v12 = 7;
    goto LABEL_13;
  }

  v12 = 4;
  if (!sub_160EF0(0xD3u, 4))
  {
    goto LABEL_11;
  }

  v13 = sub_160F34(0xD3u);
  v14 = sub_175AE4();
  v15 = sub_160F68(4);
  v16 = *a1;
  if (v13)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", a1, *a1, a2);
    v17 = sub_175AE4();
    v12 = 4;
    v18 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v17, 211, v18, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", a1, *a1, a2);
LABEL_11:
    v11 = 4294966296;
    goto LABEL_13;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", a1, *a1, a2);
  v11 = 4294966296;
  v12 = 4;
LABEL_13:
  sub_13DC4C(a1[4]);
  if (sub_160EF0(0xD3u, v12))
  {
    v19 = sub_160F34(0xD3u);
    v20 = sub_175AE4();
    v21 = sub_160F68(v12);
    if (v19)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d\n", v20, 211, v21, "AVE_SEI", "SetActiveParameterSets", a1, *a1, a2, a3, v11);
      v22 = sub_175AE4();
      v23 = sub_160F68(v12);
      v24 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v22, 211, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v20, 211, v21);
    }
  }

  return v11;
}

uint64_t sub_20F94(pthread_mutex_t **a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %d %u %d\n", v13, 211, v14, "AVE_SEI", "SetPictureTiming", a1, *a1, a2, a3, a4, a5, a6);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      v15 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %d %u %d", v13, 211, v14, "AVE_SEI");
  }

  if (a3 >= 4)
  {
    v18 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v19 = sub_160F34(0xD3u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      v22 = *a1;
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid frame type %d\n", v20, 211, v21, "AVE_SEI", "SetPictureTiming", 1185, "AVE_FrameType_None <= eFrameType && eFrameType < AVE_FrameType_Max", a1, *a1, a3);
        v23 = sub_175AE4();
        v18 = 4;
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid frame type %d", v23, 211, v24, "AVE_SEI", "SetPictureTiming", 1185, "AVE_FrameType_None <= eFrameType && eFrameType < AVE_FrameType_Max", a1, *a1, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid frame type %d", v20, 211, v21, "AVE_SEI", "SetPictureTiming", 1185, "AVE_FrameType_None <= eFrameType && eFrameType < AVE_FrameType_Max", a1, *a1, a3);
        v18 = 4;
      }
    }

    v17 = 4294966295;
  }

  else
  {
    sub_13DC18(a1[4]);
    v16 = sub_1C90C(a1, a2);
    if (v16)
    {
      v16[4] |= 0xAuLL;
      *(v16 + 58) = a4;
      *(v16 + 59) = a5;
      *(v16 + 56) = a3;
      *(v16 + 60) = a6;
      sub_13DC4C(a1[4]);
      v17 = 0;
      v18 = 7;
    }

    else
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v25 = sub_160F34(0xD3u);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        v28 = *a1;
        if (v25)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v26, 211, v27, "AVE_SEI", "SetPictureTiming", 1192, "pPFData != __null", a1, *a1, a2);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
        }

        v36 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v26, 211, v27, "AVE_SEI");
      }

      sub_13DC4C(a1[4]);
      v18 = 4;
      v17 = 4294966296;
    }
  }

  if (sub_160EF0(0xD3u, v18))
  {
    v29 = sub_160F34(0xD3u);
    v30 = sub_175AE4();
    v31 = sub_160F68(v18);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d %u %d %d\n", v30, 211, v31, "AVE_SEI", "SetPictureTiming", a1, *a1, a2, a3, a4, a5, a6, v17);
      v32 = sub_175AE4();
      v33 = sub_160F68(v18);
      v35 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d %u %d %d", v32, 211, v33, "AVE_SEI", "SetPictureTiming");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d %u %d %d", v30, 211, v31, "AVE_SEI", "SetPictureTiming");
    }
  }

  return v17;
}

uint64_t sub_21478(pthread_mutex_t **a1, uint64_t a2, unsigned int a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %u\n", v7, 211, v8, "AVE_SEI", "SetBufferingPeriod", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %u", v7, 211, v8);
  }

  if (a3 >= 0x10)
  {
    v12 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v13 = sub_160F34(0xD3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      v16 = *a1;
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid sps_seq_parameter_set_id value %u\n", v14, 211, v15, "AVE_SEI", "SetBufferingPeriod", 1229, "iSPSID <= 15", a1, *a1, a3);
        v17 = sub_175AE4();
        v12 = 4;
        v18 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid sps_seq_parameter_set_id value %u", v17, 211, v18, "AVE_SEI", "SetBufferingPeriod", 1229, "iSPSID <= 15", a1, *a1, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid sps_seq_parameter_set_id value %u", v14, 211, v15, "AVE_SEI", "SetBufferingPeriod", 1229, "iSPSID <= 15", a1, *a1, a3);
        v12 = 4;
      }
    }

    v11 = 4294966295;
  }

  else
  {
    sub_13DC18(a1[4]);
    v10 = sub_1C90C(a1, a2);
    if (v10)
    {
      v10[4] |= 0x10uLL;
      *(v10 + 57) = a3;
      sub_13DC4C(a1[4]);
      v11 = 0;
      v12 = 7;
    }

    else
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v19 = sub_160F34(0xD3u);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        v22 = *a1;
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v20, 211, v21, "AVE_SEI", "SetBufferingPeriod", 1236, "pPFData != __null", a1, *a1, a2);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          v23 = *a1;
        }

        else
        {
          v31 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v21, "AVE_SEI");
      }

      sub_13DC4C(a1[4]);
      v12 = 4;
      v11 = 4294966296;
    }
  }

  if (sub_160EF0(0xD3u, v12))
  {
    v24 = sub_160F34(0xD3u);
    v25 = sub_175AE4();
    v26 = sub_160F68(v12);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d\n", v25, 211, v26, "AVE_SEI", "SetBufferingPeriod", a1, *a1, a2, a3, v11);
      v27 = sub_175AE4();
      v28 = sub_160F68(v12);
      v29 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v27, 211, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v25, 211, v26);
    }
  }

  return v11;
}

uint64_t sub_218D8(uint64_t *a1, uint64_t a2, void *a3)
{
  v36 = 0;
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", v7, 211, v8, "AVE_SEI", "CreateFrame", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v7, 211, v8);
  }

  v10 = sub_135428(a1[5], &v36, 0);
  if (v10)
  {
    if (v10 == -1007)
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v17 = sub_160F34(0xD3u);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %llu No more SEI frame data blocks available. Possible memory leak?\n", v18, 211, v19, "AVE_SEI", "CreateFrame", 1351, a1, *a1);
          v18 = sub_175AE4();
          sub_160F68(4);
          v20 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu No more SEI frame data blocks available. Possible memory leak?", v18, 211);
      }

      sub_21E0C(a1, 5, v11, v12, v13, v14, v15, v16);
    }

    else if (sub_160EF0(0xD3u, 4))
    {
      v26 = sub_160F34(0xD3u);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu error while creating frame data for frameNum %lld %d\n", v27, 211, v28, "AVE_SEI", "CreateFrame", 1360, "ret == 0", a1, *a1, a2, v10);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        v29 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu error while creating frame data for frameNum %lld %d", v27, 211, v28, "AVE_SEI", "CreateFrame");
    }
  }

  else
  {
    v21 = v36;
    *v36 = 0u;
    v21[1] = 0u;
    v21[2] = 0u;
    v21[3] = 0u;
    v21[4] = 0u;
    v21[5] = 0u;
    v21[6] = 0u;
    v21[7] = 0u;
    v21[8] = 0u;
    v21[9] = 0u;
    v21[10] = 0u;
    v21[11] = 0u;
    v21[12] = 0u;
    v21[13] = 0u;
    v21[14] = 0u;
    *(v21 + 30) = 0;
    sub_CB4F4((a1 + 6), v21);
    *(v21 + 3) = a2;
    if (sub_160EF0(0xD3u, 7))
    {
      v22 = sub_160F34(0xD3u);
      v23 = sub_175AE4();
      v24 = sub_160F68(7);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu Created frame #%lld at %p\n", v23, 211, v24, "AVE_SEI", "CreateFrame", 1369, a1, *a1, a2, v21);
        v23 = sub_175AE4();
        v24 = sub_160F68(7);
        v25 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu Created frame #%lld at %p", v23, 211, v24, "AVE_SEI");
    }

    if (a3)
    {
      *a3 = v21;
    }
  }

  if (v10)
  {
    v30 = 4;
  }

  else
  {
    v30 = 7;
  }

  if (sub_160EF0(0xD3u, v30))
  {
    v31 = sub_160F34(0xD3u);
    v32 = sub_175AE4();
    v33 = sub_160F68(v30);
    if (v31)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v32, 211, v33, "AVE_SEI", "CreateFrame", a1, *a1, a2, a3, v10);
      v32 = sub_175AE4();
      v33 = sub_160F68(v30);
      v34 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v32, 211, v33, "AVE_SEI");
  }

  return v10;
}

uint64_t sub_21E0C(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v14, 0, sizeof(v14));
  v13 = *a1;
  sub_172100(v14, 32, "%p %llu", a4, a5, a6, a7, a8, a1);
  for (i = sub_CB5C0((a1 + 6)); ; i = sub_CB408(v11))
  {
    v11 = i;
    if (i == sub_CB5DC((a1 + 6)))
    {
      break;
    }

    sub_22B84(v11, a2, v14);
  }

  return 0;
}

uint64_t sub_21ECC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx\n", v7, 211, v8, "AVE_SEI", "EstimateSEISize", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx", v7, 211, v8);
  }

  sub_13DC18(a1[4]);
  v10 = sub_17800(a1, a2);
  v11 = v10;
  if (v10)
  {
    if ((a1[1] & a3 & v10[4]) != 0)
    {
      v12 = sub_22194(a1, v10, a3);
      if (v12 < 1)
      {
        v17 = 0;
        v18 = 1;
      }

      else
      {
        v13 = v12 - 509;
        if (v12 < 0x1FD)
        {
          v13 = 0;
        }

        v14 = (v13 + 254) / 0xFFu + 2;
        if (v12 >= 0xFF)
        {
          v15 = v14;
        }

        else
        {
          v15 = 1;
        }

        v16 = v15 + v12;
        v17 = v16 + 16;
        v18 = v16 + 24;
      }

      v19 = sub_22580(a1, v11, a3);
      v11 = v18 + sub_22814(a1, v11) + (v19 & ~(v19 >> 31)) + (v19 & ~(v19 >> 31)) + v17 + (((v19 & ~(v19 >> 31)) + v17) >> 1);
    }

    else
    {
      v11 = 0;
    }
  }

  sub_13DC4C(a1[4]);
  if (sub_160EF0(0xD3u, 7))
  {
    v20 = sub_160F34(0xD3u);
    v21 = sub_175AE4();
    v22 = sub_160F68(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %d\n", v21, 211, v22, "AVE_SEI", "EstimateSEISize", a1, *a1, a2, a3, v11);
      v21 = sub_175AE4();
      v22 = sub_160F68(7);
      v23 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %d", v21, 211, v22, "AVE_SEI");
  }

  return v11;
}

uint64_t sub_22194(uint64_t *a1, void *a2, uint64_t a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    v9 = *a1;
    if (v6)
    {
      if (a2)
      {
        v10 = a2[3];
      }

      else
      {
        v10 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx\n", v7, 211, v8, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes", a1, v9, a2, v10, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
      if (a2)
      {
        v11 = a2[3];
      }

      else
      {
        v11 = -1;
      }
    }

    else if (a2)
    {
      v11 = a2[3];
    }

    else
    {
      v11 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx", v7, 211, v8, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes", a1, v9, a2, v11, a3);
  }

  v12 = a1[1] & a2[4] & a3;
  if (sub_160EF0(0xD3u, 8))
  {
    v13 = sub_160F34(0xD3u);
    v14 = sub_175AE4();
    v15 = sub_160F68(8);
    v16 = a2[3];
    if (v13)
    {
      printf("%lld %d AVE %s: Active bits for frame %lld: 0x%016llx\n", v14, 211, v15, a2[3], v12);
      v14 = sub_175AE4();
      v15 = sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: Active bits for frame %lld: 0x%016llx", v14, 211, v15, a2[3], v12);
  }

  if (sub_160EF0(0xD3u, 8))
  {
    v17 = sub_160F34(0xD3u);
    v18 = sub_175AE4();
    v19 = sub_160F68(8);
    v20 = a1[1];
    v21 = a2[4];
    if (v17)
    {
      printf("%lld %d AVE %s: SEI bits 0x%016llx Frame bits 0x%016llx\n", v18, 211, v19, a1[1], v21);
      v22 = sub_175AE4();
      v23 = sub_160F68(8);
      v24 = a1[1];
      syslog(3, "%lld %d AVE %s: SEI bits 0x%016llx Frame bits 0x%016llx", v22, 211, v23, v24, a2[4]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: SEI bits 0x%016llx Frame bits 0x%016llx", v18, 211, v19, a1[1], v21);
    }
  }

  if (v12)
  {
    if ((v12 & 0x400000000) != 0)
    {
      v25 = 5;
    }

    else
    {
      v25 = 0;
    }

    if ((v12 & 0x800000000) != 0)
    {
      v25 += 5;
    }

    if ((v12 & 0x1000000000) != 0)
    {
      v25 += 5;
    }

    if ((v12 & 0x20000000000) != 0)
    {
      v25 += 5;
    }

    if ((v12 & 0x100000000) != 0)
    {
      v25 += 9;
    }

    if ((v12 & 0x200000000) != 0)
    {
      v25 += 9;
    }

    if ((v12 & 0x2000000000) != 0)
    {
      v25 += 13;
    }

    if ((v12 & 0x4000000000) != 0)
    {
      v25 += 15;
    }

    if ((v12 & 0x8000000000) != 0)
    {
      v25 += 9;
    }

    if ((v12 & 0x10000000000) != 0)
    {
      v26 = v25 + 5;
    }

    else
    {
      v26 = v25;
    }
  }

  else
  {
    v26 = 0;
  }

  if (sub_160EF0(0xD3u, 7))
  {
    v27 = sub_160F34(0xD3u);
    v28 = sub_175AE4();
    v29 = sub_160F68(7);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d\n", v28, 211, v29, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes", a1, *a1, a2, a2[3], a3, v26);
      v28 = sub_175AE4();
      v29 = sub_160F68(7);
      v30 = *a1;
      v32 = a2[3];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d", v28, 211, v29, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes");
  }

  return v26;
}

uint64_t sub_22580(uint64_t *a1, void *a2, uint64_t a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    v9 = *a1;
    if (v6)
    {
      if (a2)
      {
        v10 = a2[3];
      }

      else
      {
        v10 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx\n", v7, 211, v8, "AVE_SEI", "EstimateRegisteredSEINALUSizes", a1, v9, a2, v10, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
      if (a2)
      {
        v11 = a2[3];
      }

      else
      {
        v11 = -1;
      }
    }

    else if (a2)
    {
      v11 = a2[3];
    }

    else
    {
      v11 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx", v7, 211, v8, "AVE_SEI", "EstimateRegisteredSEINALUSizes", a1, v9, a2, v11, a3);
  }

  v12 = a1[1] & a2[4] & a3;
  if (v12)
  {
    if ((v12 & 0x20) != 0)
    {
      v13 = 34;
    }

    else
    {
      v13 = 0;
    }

    if ((v12 & 2) != 0)
    {
      v13 += 56;
    }

    v14 = v13 + ((v12 >> 2) & 0x10);
    if ((v12 & 0x80) != 0)
    {
      v14 += 33;
    }

    v15 = v14 + ((v12 >> 3) & 0x20);
    if ((v12 & 0x200) != 0)
    {
      v16 = v15 + 12;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0;
  }

  if (sub_160EF0(0xD3u, 7))
  {
    v17 = sub_160F34(0xD3u);
    v18 = sub_175AE4();
    v19 = sub_160F68(7);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d\n", v18, 211, v19, "AVE_SEI", "EstimateRegisteredSEINALUSizes", a1, *a1, a2, a2[3], a3, v16);
      v18 = sub_175AE4();
      v19 = sub_160F68(7);
      v20 = *a1;
      v22 = a2[3];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d", v18, 211, v19, "AVE_SEI", "EstimateRegisteredSEINALUSizes");
  }

  return v16;
}

uint64_t sub_22814(uint64_t *a1, uint64_t a2)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    v7 = *a1;
    if (v4)
    {
      if (a2)
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %lld\n", v5, 211, v6, "AVE_SEI", "EstimateISPMetadataSEITagSize", a1, v7, a2, v8);
      v5 = sub_175AE4();
      v6 = sub_160F68(7);
      v7 = *a1;
      if (a2)
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = -1;
      }
    }

    else if (a2)
    {
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %lld", v5, 211, v6, "AVE_SEI", "EstimateISPMetadataSEITagSize", a1, v7, a2, v9);
  }

  if (a1[1] & *(a2 + 32))
  {
    Length = CFDataGetLength(*(a2 + 216));
    v11 = Length;
    v12 = Length - 509;
    if (Length < 0x1FD)
    {
      v12 = 0;
    }

    v13 = (v12 + 254) / 0xFFu + 2;
    if (Length >= 255)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = (Length + Length / 2 + v14 + 513);
    if (sub_160EF0(0xD3u, 8))
    {
      v16 = sub_160F34(0xD3u);
      v17 = sub_175AE4();
      v18 = sub_160F68(8);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu ISP metadata length: %d, payload size: %d\n", v17, 211, v18, "AVE_SEI", "EstimateISPMetadataSEITagSize", 1687, a1, *a1, v11, v15);
        v17 = sub_175AE4();
        v18 = sub_160F68(8);
        v19 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu ISP metadata length: %d, payload size: %d", v17, 211, v18);
    }
  }

  else
  {
    v15 = 0;
  }

  if (sub_160EF0(0xD3u, 7))
  {
    v20 = sub_160F34(0xD3u);
    v21 = sub_175AE4();
    v22 = sub_160F68(7);
    v23 = *(a2 + 24);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld %d\n", v21, 211, v22, "AVE_SEI", "EstimateISPMetadataSEITagSize", a1, *a1, a2, *(a2 + 24), v15);
      v21 = sub_175AE4();
      v22 = sub_160F68(7);
      v24 = *a1;
    }

    v26 = *(a2 + 24);
    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld %d", v21, 211, v22, "AVE_SEI");
  }

  return v15;
}

void sub_22B84(uint64_t a1, int a2, const char *a3)
{
  v4 = a2;
  v6 = a2;
  if (sub_160EF0(0xD3u, a2))
  {
    v7 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v7 && (-v4 & 0x20) == 0)
      {
        printf("%s Frame #%lld Bits 0x%016llx\n", a3, *(a1 + 24), *(a1 + 32));
      }

      syslog(3, "%s Frame #%lld Bits 0x%016llx", a3, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v8 = v4 & 0x20;
      v9 = v7 ^ 1;
      v10 = sub_175AE4();
      v11 = sub_160F68(v6);
      v12 = *(a1 + 24);
      v13 = *(a1 + 32);
      if ((v9 | (v8 >> 5)))
      {
        syslog(3, "%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx", v10, 211, v11, a3, *(a1 + 24), v13);
      }

      else
      {
        printf("%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx\n", v10, 211, v11, a3, *(a1 + 24), v13);
        v14 = sub_175AE4();
        v15 = sub_160F68(v6);
        syslog(3, "%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx", v14, 211, v15, a3, *(a1 + 24), *(a1 + 32));
      }

      v4 = a2;
    }
  }

  v238 = a3;
  if (*(a1 + 32))
  {
    if (sub_160EF0(0xD3u, v6))
    {
      v16 = sub_160F34(0xD3u);
      if (v4 < 0)
      {
        if (v16 && (-v4 & 0x20) == 0)
        {
          printf("%s ISP Metadata: %p\n", a3, *(a1 + 216));
        }

        syslog(3, "%s ISP Metadata: %p", a3, *(a1 + 216));
      }

      else
      {
        v17 = v4 & 0x20;
        v18 = v16 ^ 1;
        v19 = sub_175AE4();
        v20 = sub_160F68(v6);
        v21 = *(a1 + 216);
        if ((v18 | (v17 >> 5)))
        {
          syslog(3, "%lld %d AVE %s: %s ISP Metadata: %p", v19, 211, v20, a3, v21);
        }

        else
        {
          printf("%lld %d AVE %s: %s ISP Metadata: %p\n", v19, 211, v20, a3, v21);
          v22 = sub_175AE4();
          v23 = sub_160F68(v6);
          syslog(3, "%lld %d AVE %s: %s ISP Metadata: %p", v22, 211, v23, a3, *(a1 + 216));
        }

        v4 = a2;
      }
    }

    v24 = *(a1 + 216);
    if (v24)
    {
      BytePtr = CFDataGetBytePtr(v24);
      if (BytePtr)
      {
        v26 = BytePtr;
        v241 = 0;
        memset(v240, 0, sizeof(v240));
        Length = CFDataGetLength(*(a1 + 216));
        v33 = Length;
        if (Length >= 1)
        {
          v34 = 0;
          v35 = Length & 0x7FFFFFFF;
          v236 = Length;
          do
          {
            v36 = 0;
            v37 = v34;
            do
            {
              if (v37 >= v35)
              {
                break;
              }

              sub_172100(v240 + v36, 4, "%02x ", v28, v29, v30, v31, v32, v26[v37]);
              v36 += 3;
              ++v37;
            }

            while (v36 != 96);
            if (sub_160EF0(0xD3u, v6))
            {
              v38 = sub_160F34(0xD3u);
              if (a2 < 0)
              {
                if ((-a2 & 0x20) != 0)
                {
                  v43 = 0;
                }

                else
                {
                  v43 = v38;
                }

                if ((v34 | 0x1F) >= v33)
                {
                  v44 = v33;
                }

                else
                {
                  v44 = v34 | 0x1F;
                }

                if (v43 == 1)
                {
                  printf("%s ISPData[%d-%d] %s\n", a3, v34, v44, v240);
                }

                syslog(3, "%s ISPData[%d-%d] %s", a3, v34, v44, v240);
              }

              else
              {
                v39 = v33;
                v40 = v38 ^ 1;
                v41 = sub_175AE4();
                v42 = sub_160F68(v6);
                if ((v34 | 0x1F) < v33)
                {
                  v39 = v34 | 0x1F;
                }

                if ((v40 | ((a2 & 0x20) >> 5)))
                {
                  a3 = v238;
                }

                else
                {
                  a3 = v238;
                  printf("%lld %d AVE %s: %s ISPData[%d-%d] %s\n", v41, 211, v42, v238, v34, v39, v240);
                  v41 = sub_175AE4();
                  v42 = sub_160F68(v6);
                }

                syslog(3, "%lld %d AVE %s: %s ISPData[%d-%d] %s", v41, 211, v42, v238, v34, v39, v240);
                v33 = v236;
              }
            }

            v34 += 32;
          }

          while (v34 < v33);
        }

        v4 = a2;
      }
    }
  }

  if ((*(a1 + 32) & 4) != 0 && sub_160EF0(0xD3u, v6))
  {
    v45 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v45 && (-v4 & 0x20) == 0)
      {
        printf("%s Active Parameter Sets %d\n", a3, *(a1 + 228));
      }

      v50 = *(a1 + 228);
      syslog(3, "%s Active Parameter Sets %d");
    }

    else
    {
      v46 = v45 ^ 1;
      v47 = sub_175AE4();
      v48 = sub_160F68(v6);
      if (((v46 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Active Parameter Sets %d\n", v47, 211, v48, a3, *(a1 + 228));
        sub_175AE4();
        sub_160F68(v6);
        v49 = *(a1 + 228);
      }

      syslog(3, "%lld %d AVE %s: %s Active Parameter Sets %d");
    }
  }

  if ((*(a1 + 32) & 8) != 0 && sub_160EF0(0xD3u, v6))
  {
    v51 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v51 && (-v4 & 0x20) == 0)
      {
        printf("%s Picture Timing %d %d %d %d %d\n", a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
      }

      v55 = *(a1 + 232);
      v209 = *(a1 + 224);
      v217 = *(a1 + 240);
      v205 = *(a1 + 236);
      syslog(3, "%s Picture Timing %d %d %d %d %d");
    }

    else
    {
      v52 = v51 ^ 1;
      v53 = sub_175AE4();
      v54 = sub_160F68(v6);
      if (((v52 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Picture Timing %d %d %d %d %d\n", v53, 211, v54, a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
        v53 = sub_175AE4();
        v54 = sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Picture Timing %d %d %d %d %d", v53, 211, v54, a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
    }
  }

  if ((*(a1 + 32) & 0x10) != 0 && sub_160EF0(0xD3u, v6))
  {
    v56 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v56 && (-v4 & 0x20) == 0)
      {
        printf("%s Buffering Period %d\n", a3, *(a1 + 228));
      }

      v61 = *(a1 + 228);
      syslog(3, "%s Buffering Period %d");
    }

    else
    {
      v57 = v56 ^ 1;
      v58 = sub_175AE4();
      v59 = sub_160F68(v6);
      if (((v57 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Buffering Period %d\n", v58, 211, v59, a3, *(a1 + 228));
        sub_175AE4();
        sub_160F68(v6);
        v60 = *(a1 + 228);
      }

      syslog(3, "%lld %d AVE %s: %s Buffering Period %d");
    }
  }

  if ((*(a1 + 32) & 0x20) != 0 && sub_160EF0(0xD3u, v6))
  {
    v62 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v62 && (-v4 & 0x20) == 0)
      {
        printf("%s Content Color Volume bit is set\n", a3);
      }

      syslog(3, "%s Content Color Volume bit is set");
    }

    else
    {
      v63 = v62 ^ 1;
      v64 = sub_175AE4();
      v65 = sub_160F68(v6);
      if (((v63 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Content Color Volume bit is set\n", v64, 211, v65, a3);
        sub_175AE4();
        sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Content Color Volume bit is set");
    }
  }

  if ((*(a1 + 32) & 0x40) != 0 && sub_160EF0(0xD3u, v6))
  {
    v66 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v66 && (-v4 & 0x20) == 0)
      {
        printf("%s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
      }

      v223 = *(a1 + 154);
      v226 = *(a1 + 155);
      v218 = *(a1 + 152);
      v220 = *(a1 + 153);
      v206 = *(a1 + 150);
      v210 = *(a1 + 151);
      v202 = *(a1 + 149);
      syslog(3, "%s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x", a3, *(a1 + 148));
    }

    else
    {
      v67 = v66 ^ 1;
      v68 = sub_175AE4();
      v69 = sub_160F68(v6);
      v70 = *(a1 + 154);
      if (((v67 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n", v68, 211, v69, a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
        v68 = sub_175AE4();
        v69 = sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x", v68, 211, v69, a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
    }
  }

  if ((*(a1 + 32) & 0x80) != 0 && sub_160EF0(0xD3u, v6))
  {
    v71 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v71 && (-v4 & 0x20) == 0)
      {
        printf("%s Lux Level %d\n", a3, *(a1 + 60));
      }

      v76 = *(a1 + 60);
      syslog(3, "%s Lux Level %d");
    }

    else
    {
      v72 = v71 ^ 1;
      v73 = sub_175AE4();
      v74 = sub_160F68(v6);
      if (((v72 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Lux Level %d\n", v73, 211, v74, a3, *(a1 + 60));
        sub_175AE4();
        sub_160F68(v6);
        v75 = *(a1 + 60);
      }

      syslog(3, "%lld %d AVE %s: %s Lux Level %d");
    }
  }

  if ((*(a1 + 36) & 1) != 0 && sub_160EF0(0xD3u, v6))
  {
    v77 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v77 && (-v4 & 0x20) == 0)
      {
        printf("%s Exposure Time %f\n", a3, *(a1 + 64));
      }

      v83 = *(a1 + 64);
      syslog(3, "%s Exposure Time %f");
    }

    else
    {
      v78 = v77 ^ 1;
      v79 = sub_175AE4();
      v80 = sub_160F68(v6);
      v81 = *(a1 + 64);
      if ((v78 | ((v4 & 0x20) >> 5)))
      {
        v211 = *(a1 + 64);
      }

      else
      {
        printf("%lld %d AVE %s: %s Exposure Time %f\n", v79, 211, v80, a3, *(a1 + 64));
        sub_175AE4();
        sub_160F68(v6);
        v82 = *(a1 + 64);
      }

      syslog(3, "%lld %d AVE %s: %s Exposure Time %f");
    }
  }

  if ((*(a1 + 36) & 2) != 0 && sub_160EF0(0xD3u, v6))
  {
    v84 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v84 && (-v4 & 0x20) == 0)
      {
        printf("%s SNR %f\n", a3, *(a1 + 72));
      }

      v90 = *(a1 + 72);
      syslog(3, "%s SNR %f");
    }

    else
    {
      v85 = v84 ^ 1;
      v86 = sub_175AE4();
      v87 = sub_160F68(v6);
      v88 = *(a1 + 72);
      if ((v85 | ((v4 & 0x20) >> 5)))
      {
        v212 = *(a1 + 72);
      }

      else
      {
        printf("%lld %d AVE %s: %s SNR %f\n", v86, 211, v87, a3, *(a1 + 72));
        sub_175AE4();
        sub_160F68(v6);
        v89 = *(a1 + 72);
      }

      syslog(3, "%lld %d AVE %s: %s SNR %f");
    }
  }

  if ((*(a1 + 36) & 4) != 0 && sub_160EF0(0xD3u, v6))
  {
    v91 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v91 && (-v4 & 0x20) == 0)
      {
        printf("%s RC %d\n", a3, *(a1 + 80));
      }

      v96 = *(a1 + 80);
      syslog(3, "%s RC %d");
    }

    else
    {
      v92 = v91 ^ 1;
      v93 = sub_175AE4();
      v94 = sub_160F68(v6);
      if (((v92 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s RC %d\n", v93, 211, v94, a3, *(a1 + 80));
        sub_175AE4();
        sub_160F68(v6);
        v95 = *(a1 + 80);
      }

      syslog(3, "%lld %d AVE %s: %s RC %d");
    }
  }

  if ((*(a1 + 36) & 8) != 0 && sub_160EF0(0xD3u, v6))
  {
    v97 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v97 && (-v4 & 0x20) == 0)
      {
        printf("%s Throughput Mode %d\n", a3, *(a1 + 84));
      }

      v102 = *(a1 + 84);
      syslog(3, "%s Throughput Mode %d");
    }

    else
    {
      v98 = v97 ^ 1;
      v99 = sub_175AE4();
      v100 = sub_160F68(v6);
      if (((v98 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Throughput Mode %d\n", v99, 211, v100, a3, *(a1 + 84));
        sub_175AE4();
        sub_160F68(v6);
        v101 = *(a1 + 84);
      }

      syslog(3, "%lld %d AVE %s: %s Throughput Mode %d");
    }
  }

  if ((*(a1 + 36) & 0x10) != 0 && sub_160EF0(0xD3u, v6))
  {
    v103 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v103 && (-v4 & 0x20) == 0)
      {
        printf("%s Bitrate %d\n", a3, *(a1 + 88));
      }

      v108 = *(a1 + 88);
      syslog(3, "%s Bitrate %d");
    }

    else
    {
      v104 = v103 ^ 1;
      v105 = sub_175AE4();
      v106 = sub_160F68(v6);
      if (((v104 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Bitrate %d\n", v105, 211, v106, a3, *(a1 + 88));
        sub_175AE4();
        sub_160F68(v6);
        v107 = *(a1 + 88);
      }

      syslog(3, "%lld %d AVE %s: %s Bitrate %d");
    }
  }

  if ((*(a1 + 36) & 0x20) != 0 && sub_160EF0(0xD3u, v6))
  {
    v109 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v109 && (-v4 & 0x20) == 0)
      {
        printf("%s Timecode %d %lld\n", a3, *(a1 + 104), *(a1 + 96));
      }

      v115 = *(a1 + 96);
      v201 = *(a1 + 104);
      syslog(3, "%s Timecode %d %lld");
    }

    else
    {
      v110 = v109 ^ 1;
      v111 = sub_175AE4();
      v112 = sub_160F68(v6);
      v113 = *(a1 + 104);
      if (((v110 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Timecode %d %lld\n", v111, 211, v112, a3, *(a1 + 104), *(a1 + 96));
        sub_175AE4();
        sub_160F68(v6);
        v114 = *(a1 + 96);
      }

      v213 = *(a1 + 104);
      syslog(3, "%lld %d AVE %s: %s Timecode %d %lld");
    }
  }

  if (*(a1 + 33))
  {
    v116 = 0;
    v237 = -v4;
    v117 = (a1 + 123);
    do
    {
      if (sub_160EF0(0xD3u, v6))
      {
        v118 = sub_160F34(0xD3u);
        if (v4 < 0)
        {
          if ((v237 & 0x20) != 0)
          {
            v129 = 0;
          }

          else
          {
            v129 = v118;
          }

          v130 = *(v117 - 3);
          v131 = *(v117 - 2);
          v132 = *(v117 - 1);
          v133 = *v117;
          if (v129 == 1)
          {
            printf("%s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, v116, v130, v131, *(v117 - 1), v133);
            v130 = *(v117 - 3);
            v131 = *(v117 - 2);
            v132 = *(v117 - 1);
            v133 = *v117;
          }

          syslog(3, "%s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x", a3, v116, v130, v131, v132, v133);
        }

        else
        {
          v119 = v4 & 0x20;
          v120 = v118 ^ 1;
          v121 = sub_175AE4();
          v122 = sub_160F68(v6);
          v123 = *(v117 - 3);
          v124 = *(v117 - 2);
          v125 = *(v117 - 1);
          v126 = *v117;
          if ((v120 | (v119 >> 5)))
          {
            a3 = v238;
            syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x", v121, 211, v122, v238, v116, v123, v124, *(v117 - 1), v126);
          }

          else
          {
            a3 = v238;
            printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x\n", v121, 211, v122, v238, v116, v123, v124, *(v117 - 1), v126);
            v127 = sub_175AE4();
            v128 = sub_160F68(v6);
            syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x", v127, 211, v128, v238, v116, *(v117 - 3), *(v117 - 2), *(v117 - 1), *v117);
          }

          v4 = a2;
        }
      }

      ++v116;
      v117 += 4;
    }

    while (v116 != 3);
    if (sub_160EF0(0xD3u, v6))
    {
      v134 = sub_160F34(0xD3u);
      if (v4 < 0)
      {
        if ((v237 & 0x20) != 0)
        {
          v139 = 0;
        }

        else
        {
          v139 = v134;
        }

        v140 = *(a1 + 134);
        if (v139 == 1)
        {
          printf("%s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 132), *(a1 + 133), *(a1 + 134), *(a1 + 135));
          v141 = *(a1 + 132);
          v142 = *(a1 + 133);
          v143 = *(a1 + 134);
          v144 = *(a1 + 135);
        }

        syslog(3, "%s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x");
      }

      else
      {
        v135 = v134 ^ 1;
        v136 = sub_175AE4();
        v137 = sub_160F68(v6);
        v138 = *(a1 + 134);
        if (((v135 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x\n", v136, 211, v137, a3, *(a1 + 132), *(a1 + 133), *(a1 + 134), *(a1 + 135));
          v136 = sub_175AE4();
          v137 = sub_160F68(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x", v136, 211, v137, a3, *(a1 + 132), *(a1 + 133), *(a1 + 134), *(a1 + 135));
      }
    }

    if (sub_160EF0(0xD3u, v6))
    {
      v145 = sub_160F34(0xD3u);
      if (v4 < 0)
      {
        if ((v237 & 0x20) != 0)
        {
          v150 = 0;
        }

        else
        {
          v150 = v145;
        }

        v151 = *(a1 + 138);
        if (v150 == 1)
        {
          printf("%s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 136), *(a1 + 137), *(a1 + 138), *(a1 + 139));
          v152 = *(a1 + 136);
          v153 = *(a1 + 137);
          v154 = *(a1 + 138);
          v155 = *(a1 + 139);
        }

        syslog(3, "%s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x");
      }

      else
      {
        v146 = v145 ^ 1;
        v147 = sub_175AE4();
        v148 = sub_160F68(v6);
        v149 = *(a1 + 138);
        if (((v146 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", v147, 211, v148, a3, *(a1 + 136), *(a1 + 137), *(a1 + 138), *(a1 + 139));
          v147 = sub_175AE4();
          v148 = sub_160F68(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x", v147, 211, v148, a3, *(a1 + 136), *(a1 + 137), *(a1 + 138), *(a1 + 139));
      }
    }

    if (sub_160EF0(0xD3u, v6))
    {
      v156 = sub_160F34(0xD3u);
      if (v4 < 0)
      {
        if ((v237 & 0x20) != 0)
        {
          v161 = 0;
        }

        else
        {
          v161 = v156;
        }

        v162 = *(a1 + 142);
        if (v161 == 1)
        {
          printf("%s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 140), *(a1 + 141), *(a1 + 142), *(a1 + 143));
          v163 = *(a1 + 140);
          v164 = *(a1 + 141);
          v165 = *(a1 + 142);
          v166 = *(a1 + 143);
        }

        syslog(3, "%s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x");
      }

      else
      {
        v157 = v156 ^ 1;
        v158 = sub_175AE4();
        v159 = sub_160F68(v6);
        v160 = *(a1 + 142);
        if (((v157 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", v158, 211, v159, a3, *(a1 + 140), *(a1 + 141), *(a1 + 142), *(a1 + 143));
          v158 = sub_175AE4();
          v159 = sub_160F68(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x", v158, 211, v159, a3, *(a1 + 140), *(a1 + 141), *(a1 + 142), *(a1 + 143));
      }
    }
  }

  if ((*(a1 + 33) & 2) != 0 && sub_160EF0(0xD3u, v6))
  {
    v167 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v167 && (-v4 & 0x20) == 0)
      {
        printf("%s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
      }

      v172 = *(a1 + 144);
      v207 = *(a1 + 146);
      v214 = *(a1 + 147);
      v203 = *(a1 + 145);
      syslog(3, "%s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x");
    }

    else
    {
      v168 = v167 ^ 1;
      v169 = sub_175AE4();
      v170 = sub_160F68(v6);
      v171 = *(a1 + 146);
      if (((v168 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x\n", v169, 211, v170, a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
        v169 = sub_175AE4();
        v170 = sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x", v169, 211, v170, a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
    }
  }

  if ((*(a1 + 36) & 0x40) != 0 && sub_160EF0(0xD3u, v6))
  {
    v173 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v173 && (-v4 & 0x20) == 0)
      {
        printf("%s MCTF %f %f %f %f %f %d %d %d\n", a3, *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 204), *(a1 + 208));
      }

      v178 = *(a1 + 160);
      v179 = *(a1 + 176);
      v180 = *(a1 + 192);
      v181 = *(a1 + 200);
      v224 = *(a1 + 204);
      v228 = *(a1 + 208);
      syslog(3, "%s MCTF %f %f %f %f %f %d %d %d");
    }

    else
    {
      v174 = v173 ^ 1;
      v175 = sub_175AE4();
      v176 = sub_160F68(v6);
      v177 = *(a1 + 204);
      if ((v174 | ((v4 & 0x20) >> 5)))
      {
        v233 = *(a1 + 204);
        v235 = *(a1 + 208);
        v231 = *(a1 + 200);
        v225 = *(a1 + 184);
        v229 = *(a1 + 192);
        v219 = *(a1 + 168);
        v222 = *(a1 + 176);
        v216 = *(a1 + 160);
      }

      else
      {
        printf("%lld %d AVE %s: %s MCTF %f %f %f %f %f %d %d %d\n", v175, 211, v176, a3, *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 204), *(a1 + 208));
        v175 = sub_175AE4();
        sub_160F68(v6);
        v232 = *(a1 + 204);
        v234 = *(a1 + 208);
        v230 = *(a1 + 200);
        v227 = *(a1 + 192);
        v215 = *(a1 + 160);
        v221 = *(a1 + 176);
      }

      syslog(3, "%lld %d AVE %s: %s MCTF %f %f %f %f %f %d %d %d", v175);
    }
  }

  if ((*(a1 + 36) & 0x80) != 0 && sub_160EF0(0xD3u, v6))
  {
    v182 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v182 && (-v4 & 0x20) == 0)
      {
        printf("%s Session ID %llu\n", a3, *(a1 + 40));
      }

      v187 = *(a1 + 40);
      syslog(3, "%s Session ID %llu");
    }

    else
    {
      v183 = v182 ^ 1;
      v184 = sub_175AE4();
      v185 = sub_160F68(v6);
      if (((v183 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Session ID %llu\n", v184, 211, v185, a3, *(a1 + 40));
        sub_175AE4();
        sub_160F68(v6);
        v186 = *(a1 + 40);
      }

      syslog(3, "%lld %d AVE %s: %s Session ID %llu");
    }
  }

  if ((*(a1 + 37) & 1) != 0 && sub_160EF0(0xD3u, v6))
  {
    v188 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v188 && (-v4 & 0x20) == 0)
      {
        printf("%s Driver Version %d.%d.%d\n", a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
      }

      v193 = *(a1 + 48);
      v204 = *(a1 + 52);
      v208 = *(a1 + 56);
      syslog(3, "%s Driver Version %d.%d.%d");
    }

    else
    {
      v189 = v188 ^ 1;
      v190 = sub_175AE4();
      v191 = sub_160F68(v6);
      v192 = *(a1 + 52);
      if (((v189 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Driver Version %d.%d.%d\n", v190, 211, v191, a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
        v190 = sub_175AE4();
        v191 = sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Driver Version %d.%d.%d", v190, 211, v191, a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
    }
  }

  if ((*(a1 + 37) & 2) != 0 && sub_160EF0(0xD3u, v6))
  {
    v194 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v194 && (-v4 & 0x20) == 0)
      {
        printf("%s LookAhead Frame Count %d\n", a3, *(a1 + 92));
      }

      v200 = *(a1 + 92);
      syslog(3, "%s LookAhead Frame Count %d");
    }

    else
    {
      v195 = v4 & 0x20;
      v196 = v194 ^ 1;
      v197 = sub_175AE4();
      v198 = sub_160F68(v6);
      if (((v196 | (v195 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s LookAhead Frame Count %d\n", v197, 211, v198, a3, *(a1 + 92));
        sub_175AE4();
        sub_160F68(v6);
        v199 = *(a1 + 92);
      }

      syslog(3, "%lld %d AVE %s: %s LookAhead Frame Count %d");
    }
  }
}

uint64_t sub_247DC(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 1) >= 0x32)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v21 = sub_160F34(0x1Eu);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          if (v21)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v22, 30, v23, "AVE_Prop_HEVC_SetInputQueueMaxCount", 468, "(-1) <= maxCnt && maxCnt <= 48", a1, *(a1 + 56), a2, a3, a4, valuePtr, -1, 48);
            v22 = sub_175AE4();
            v23 = sub_160F68(4);
            v24 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v22, 30, v23, "AVE_Prop_HEVC_SetInputQueueMaxCount", 468, "(-1) <= maxCnt && maxCnt <= 48", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106120) = valuePtr;
        if (*(a1 + 104648))
        {
          v10 = sub_12FB1C(*(a1 + 120), v9);
        }

        else
        {
          v10 = 0;
          *(a1 + 11772) = v9;
        }

        if (sub_160EF0(0x1Eu, 7))
        {
          v25 = sub_160F34(0x1Eu);
          v26 = sub_175AE4();
          v27 = sub_160F68(7);
          v28 = *a2;
          if (v25)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v26, 30, v27, a1, *(a1 + 56), *a2, valuePtr);
            v26 = sub_175AE4();
            sub_160F68(7);
            v29 = *(a1 + 56);
          }

          v32 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v26);
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v15 = sub_160F34(0x1Eu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        v18 = *(a1 + 56);
        v19 = CFGetTypeID(a4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_HEVC_SetInputQueueMaxCount", 458, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
          v16 = sub_175AE4();
          v17 = sub_160F68(4);
          v20 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_HEVC_SetInputQueueMaxCount", 458, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v11 = sub_160F34(0x1Eu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_HEVC_SetInputQueueMaxCount", 448, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v31, "AVE_Prop_HEVC_SetInputQueueMaxCount");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_HEVC_SetInputQueueMaxCount");
      }
    }

    return 4294966295;
  }

  return v10;
}

uint64_t sub_24C68(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 106120);
    if (v10 == -2)
    {
      v10 = 0;
    }

    valuePtr = v10;
    v11 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v11)
    {
      v12 = v11;
      *a5 = v11;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v14 = sub_160F34(0x1Eu);
        v15 = sub_175AE4();
        v16 = sub_160F68(7);
        if (v14)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v15, 30, v16, a1, *(a1 + 56), *a2, valuePtr, v12);
          v15 = sub_175AE4();
          sub_160F68(7);
          v17 = *(a1 + 56);
          v27 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v15, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v23, 30, v24, "AVE_Prop_HEVC_GetInputQueueMaxCount", 524, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          v25 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v24, "AVE_Prop_HEVC_GetInputQueueMaxCount", 524, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetInputQueueMaxCount", 512, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v21 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v26, "AVE_Prop_HEVC_GetInputQueueMaxCount", 512);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetInputQueueMaxCount", 512);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_24FA8(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      if (Value)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      *(a1 + 106124) = v10;
      *(a1 + 11468) = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v12 = Value != 0;
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        v16 = *a2;
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v12);
          v14 = sub_175AE4();
          sub_160F68(7);
          v17 = *(a1 + 56);
        }

        v29 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v14);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        v25 = *(a1 + 56);
        v26 = CFGetTypeID(a4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_HEVC_SetPreemptiveLoadBalancing", 567, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          v27 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_HEVC_SetPreemptiveLoadBalancing", 567, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_SetPreemptiveLoadBalancing", 557, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = sub_175AE4();
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v28, "AVE_Prop_HEVC_SetPreemptiveLoadBalancing");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_SetPreemptiveLoadBalancing");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_252F8(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 11468);
    v11 = &kCFBooleanTrue;
    if (v10 != 2)
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 == 2;
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      v17 = *a2;
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v15, 30, v16, a1, *(a1 + 56), *a2, v13);
        v15 = sub_175AE4();
        sub_160F68(7);
        v18 = *(a1 + 56);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v15);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetPreemptiveLoadBalancing", 604, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetPreemptiveLoadBalancing", 604);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetPreemptiveLoadBalancing", 604);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_25520(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106128) = v9;
      *(a1 + 688) = *(a1 + 688) & 0xFFFFFFFD | (2 * v9);
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
          v15 = *(a1 + 56);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMaximizePowerEfficiency", 652, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMaximizePowerEfficiency", 652, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMaximizePowerEfficiency", 642, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetMaximizePowerEfficiency");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetMaximizePowerEfficiency");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_25868(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 688) & 2;
    v11 = &kCFBooleanFalse;
    if (v10)
    {
      v11 = &kCFBooleanTrue;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      v17 = v10 >> 1;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v17);
        v14 = sub_175AE4();
        sub_160F68(7);
        v18 = *(a1 + 56);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetMaximizePowerEfficiency", 697, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetMaximizePowerEfficiency", 697);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetMaximizePowerEfficiency", 697);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_25A8C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3)
  {
    if (!a4)
    {
      Value = -1;
LABEL_11:
      *(a1 + 106132) = Value;
      *(a1 + 692) = Value;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v15 = sub_160F34(0x1Eu);
        v16 = sub_175AE4();
        v17 = sub_160F68(7);
        v18 = *a2;
        if (v15)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v16, 30, v17, a1, *(a1 + 56), *a2, Value);
          v16 = sub_175AE4();
          sub_160F68(7);
          v19 = *(a1 + 56);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v16);
        return 0;
      }

      return result;
    }

    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      goto LABEL_11;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v20 = sub_160F34(0x1Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      v23 = *(a1 + 56);
      v24 = CFGetTypeID(a4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRealTime", 746, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v25 = *(a1 + 56);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRealTime", 746, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v10 = sub_160F34(0x1Eu);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v11, 30, v12, "AVE_Prop_HEVC_SetRealTime", 734, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v13 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 30, v26, "AVE_Prop_HEVC_SetRealTime");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v11, 30, v12, "AVE_Prop_HEVC_SetRealTime");
      }
    }

    return 4294966295;
  }
}

uint64_t sub_25DD0(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = &kCFBooleanTrue;
    v11 = *(a1 + 692);
    if (!v11)
    {
      v10 = &kCFBooleanFalse;
    }

    v12 = *v10;
    if (v11 < 0)
    {
      v12 = 0;
    }

    *a5 = v12;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      v17 = *a2;
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v15, 30, v16, a1, *(a1 + 56), *a2, v11);
        v15 = sub_175AE4();
        sub_160F68(7);
        v18 = *(a1 + 56);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v15);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetRealTime", 784, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetRealTime", 784);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetRealTime", 784);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_25FF4(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -101;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 100) >= 0x12D)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v27, 30, v28, "AVE_Prop_HEVC_SetPriority", 848, "-100 <= priority && priority <= 200", a1, *(a1 + 56), a2, a3, a4, valuePtr, -100, 200);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v27, 30, v28, "AVE_Prop_HEVC_SetPriority", 848, "-100 <= priority && priority <= 200", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106136) = valuePtr;
        *(a1 + 696) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetPriority", 838, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetPriority", 838, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetPriority", 828, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetPriority");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetPriority");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2646C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 696);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetPriority", 894, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetPriority", 894, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetPriority", 884, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetPriority", 884);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetPriority", 884);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2679C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      if (*(a1 + 106140) == v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = sub_12F8E8(*(a1 + 120), *(a1 + 104652));
      }

      *(a1 + 106140) = v9;
      *(a1 + 104652) = v9;
      if (sub_160EF0(0x1Eu, 7))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(7);
        v24 = *a2;
        if (v21)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v22, 30, v23, a1, *(a1 + 56), *a2, v9);
          v22 = sub_175AE4();
          sub_160F68(7);
          v25 = *(a1 + 56);
        }

        v28 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v22);
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v15 = sub_160F34(0x1Eu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        v18 = *(a1 + 56);
        v19 = CFGetTypeID(a4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_HEVC_SetThrottleForBackground", 937, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
          v16 = sub_175AE4();
          v17 = sub_160F68(4);
          v20 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_HEVC_SetThrottleForBackground", 937, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v11 = sub_160F34(0x1Eu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_HEVC_SetThrottleForBackground", 927, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v27, "AVE_Prop_HEVC_SetThrottleForBackground");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_HEVC_SetThrottleForBackground");
      }
    }

    return 4294966295;
  }

  return v10;
}

uint64_t sub_26AFC(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 104652);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 104652))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
        v17 = *(a1 + 56);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetThrottleForBackground", 981, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetThrottleForBackground", 981);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetThrottleForBackground", 981);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_26D24(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 688) |= 4u;
      *(a1 + 106144) = v9;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
          v15 = *(a1 + 56);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMinimizeMemoryUsage", 1029, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMinimizeMemoryUsage", 1029, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMinimizeMemoryUsage", 1019, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetMinimizeMemoryUsage");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetMinimizeMemoryUsage");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2706C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 688) & 4;
    v11 = &kCFBooleanFalse;
    if (v10)
    {
      v11 = &kCFBooleanTrue;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      v17 = v10 >> 2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v17);
        v14 = sub_175AE4();
        sub_160F68(7);
        v18 = *(a1 + 56);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetMinimizeMemoryUsage", 1067, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetMinimizeMemoryUsage", 1067);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetMinimizeMemoryUsage", 1067);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_27290(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 1) >> 5 >= 0xC35)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", v27, 30, v28, "AVE_Prop_HEVC_SetMaximumRealTimeFrameRate", 1125, "0 < maxFrameRate && maxFrameRate <= 100000", a1, *(a1 + 56), a2, a3, a4, valuePtr, 0, 100000);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", v27, 30, v28, "AVE_Prop_HEVC_SetMaximumRealTimeFrameRate", 1125, "0 < maxFrameRate && maxFrameRate <= 100000", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106148) = valuePtr;
        *(a1 + 11968) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMaximumRealTimeFrameRate", 1115, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMaximumRealTimeFrameRate", 1115, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMaximumRealTimeFrameRate", 1105, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetMaximumRealTimeFrameRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetMaximumRealTimeFrameRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_27700(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 11968);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetMaximumRealTimeFrameRate", 1171, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetMaximumRealTimeFrameRate", 1171, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMaximumRealTimeFrameRate", 1161, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetMaximumRealTimeFrameRate", 1161);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetMaximumRealTimeFrameRate", 1161);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_27A30(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106152) = v9;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
          v15 = *(a1 + 56);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetPrioritizeEncodingSpeedOverQuality", 1214, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetPrioritizeEncodingSpeedOverQuality", 1214, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetPrioritizeEncodingSpeedOverQuality", 1204, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetPrioritizeEncodingSpeedOverQuality");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetPrioritizeEncodingSpeedOverQuality");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_27D6C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 106152);
    v11 = &kCFBooleanTrue;
    if (v10 <= 0)
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 > 0;
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      v17 = *a2;
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v15, 30, v16, a1, *(a1 + 56), *a2, v13);
        v15 = sub_175AE4();
        sub_160F68(7);
        v18 = *(a1 + 56);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v15);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetPrioritizeEncodingSpeedOverQuality", 1253, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetPrioritizeEncodingSpeedOverQuality", 1253);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetPrioritizeEncodingSpeedOverQuality", 1253);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_27F9C(uint64_t a1, const char **a2, const __CFAllocator *a3, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = sub_16FD90(*(a1 + 68));
    if (v10)
    {
      v11 = v10;
      v12 = CFNumberCreate(a3, kCFNumberSInt32Type, (*(v10 + 2) + 4));
      if (v12)
      {
        v13 = v12;
        *a5 = v12;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v15 = sub_160F34(0x1Eu);
          v16 = sub_175AE4();
          v17 = sub_160F68(7);
          v18 = *(*(v11 + 2) + 4);
          if (v15)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v16, 30, v17, a1, *(a1 + 56), *a2, *(*(v11 + 2) + 4), v13);
            v16 = sub_175AE4();
            sub_160F68(7);
            v19 = *(a1 + 56);
            v33 = *(*(v11 + 2) + 4);
            v32 = *a2;
          }

          else
          {
            v34 = *(*(v11 + 2) + 4);
          }

          syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v16, 30);
          return 0;
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v28 = sub_160F34(0x1Eu);
          v29 = sub_175AE4();
          v30 = sub_160F68(4);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v29, 30, v30, "AVE_Prop_HEVC_GetNumberOfCores", 1306, "pNum != __null", a1, *(a1 + 56), a2, a3, a4, a5, *(*(v11 + 2) + 4));
            v29 = sub_175AE4();
            v30 = sub_160F68(4);
            v37 = *(*(v11 + 2) + 4);
            v35 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_GetNumberOfCores", 1306, "pNum != __null", a1);
        }

        return 4294966293;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v24 = sub_160F34(0x1Eu);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %lld %p %p %p %p %d\n", v25, 30, v26, "AVE_Prop_HEVC_GetNumberOfCores", 1301, "pDevCap != __null", a1, *(a1 + 56), a2, a3, a4, a5, *(a1 + 68));
          v25 = sub_175AE4();
          v26 = sub_160F68(4);
          v27 = *(a1 + 56);
          v36 = *(a1 + 68);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %lld %p %p %p %p %d", v25, 30, v26, "AVE_Prop_HEVC_GetNumberOfCores", 1301, "pDevCap != __null", a1);
      }

      return 4294966294;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v20 = sub_160F34(0x1Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v21, 30, v22, "AVE_Prop_HEVC_GetNumberOfCores", 1293, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v23 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v23, 30, v31, "AVE_Prop_HEVC_GetNumberOfCores", 1293);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetNumberOfCores", 1293);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_283F0(uint64_t a1, const char **a2, const __CFAllocator *a3, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = sub_17D5E4(*(a1 + 104628));
    if (v10)
    {
      v11 = v10[2];
      v12 = v10[3];
    }

    else
    {
      v12 = 1;
      v11 = 8;
    }

    v17 = sub_E7234(*(a1 + 68), 1, 2, v11, v12, 1);
    valuePtr = v17;
    if (v17 <= 0)
    {
      v25 = v17;
      if (sub_160EF0(0x1Eu, 4))
      {
        v26 = sub_160F34(0x1Eu);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        v29 = *(a1 + 68);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find DevCap Pixel Perf %p %lld %p %p %p %d %lld\n", v27, 30, v28, "AVE_Prop_HEVC_GetMaxEncoderPixelRate", 1360, "pixelPerf > 0", a1, *(a1 + 56), a3, a4, a5, *(a1 + 68), v25);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          v30 = *(a1 + 56);
        }

        v37 = *(a1 + 68);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find DevCap Pixel Perf %p %lld %p %p %p %d %lld", v27, 30, v28, "AVE_Prop_HEVC_GetMaxEncoderPixelRate", 1360, "pixelPerf > 0", a1);
      }

      return 4294966294;
    }

    else
    {
      v18 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
      if (v18)
      {
        v19 = v18;
        *a5 = v18;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v21 = sub_160F34(0x1Eu);
          v22 = sub_175AE4();
          v23 = sub_160F68(7);
          if (v21)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %lld %p\n", v22, 30, v23, a1, *(a1 + 56), *a2, valuePtr, v19);
            v22 = sub_175AE4();
            sub_160F68(7);
            v24 = *(a1 + 56);
            v36 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %lld %p", v22, 30);
          return 0;
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v31 = sub_160F34(0x1Eu);
          v32 = sub_175AE4();
          v33 = sub_160F68(4);
          if (v31)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %lld\n", v32, 30, v33, "AVE_Prop_HEVC_GetMaxEncoderPixelRate", 1365, "pNum != __null", a1, *(a1 + 56), a2, a3, a4, a5, valuePtr);
            v32 = sub_175AE4();
            v33 = sub_160F68(4);
            v34 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %lld", v32, 30, v33, "AVE_Prop_HEVC_GetMaxEncoderPixelRate", 1365, "pNum != __null", a1);
        }

        return 4294966293;
      }
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v14, 30, v15, "AVE_Prop_HEVC_GetMaxEncoderPixelRate", 1343, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v16 = sub_175AE4();
        v35 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v16, 30, v35, "AVE_Prop_HEVC_GetMaxEncoderPixelRate", 1343);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v14, 30, v15, "AVE_Prop_HEVC_GetMaxEncoderPixelRate", 1343);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_28860(int a1, int a2, uint64_t a3, __CFDictionary *a4)
{
  if (a4)
  {
    v8 = sub_16FD90(a1);
    if (v8)
    {
      v9 = v8;
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v11 = Mutable;
        if ((a2 & 0x30000) == 0x10000)
        {
          v12 = kVTPropertyReadWriteStatus_ReadOnly;
        }

        else
        {
          v12 = kVTPropertyReadWriteStatus_ReadWrite;
        }

        CFDictionarySetValue(Mutable, kVTPropertyTypeKey, kVTPropertyType_Enumeration);
        CFDictionarySetValue(v11, kVTPropertyReadWriteStatusKey, v12);
        v13 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        if (v13)
        {
          v14 = v13;
          v15 = &qword_20C218;
          v16 = 86;
          while (1)
          {
            if (!*(v15 + 3))
            {
              if (CFEqual(*v15, kVTProfileLevel_HEVC_Main42210_AutoLevel))
              {
                v17 = *(v9 + 1);
                v18 = v17 != 5 && v17 <= 7;
                v19 = kVTProfileLevel_HEVC_Main42210_AutoLevel;
                if (v18)
                {
                  goto LABEL_19;
                }
              }

              else
              {
                v19 = *v15;
              }

              CFArrayAppendValue(v14, v19);
            }

LABEL_19:
            v15 += 2;
            if (!--v16)
            {
              CFDictionarySetValue(v11, kVTPropertySupportedValueListKey, v14);
              CFDictionarySetValue(a4, kVTCompressionPropertyKey_ProfileLevel, v11);
              CFRelease(v14);
              v20 = 0;
              goto LABEL_41;
            }
          }
        }

        if (sub_160EF0(0x1Eu, 4))
        {
          v33 = sub_160F34(0x1Eu);
          v34 = sub_175AE4();
          v35 = sub_160F68(4);
          if (v33)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create array %d 0x%x %lld %p\n", v34, 30, v35, "AVE_Prop_HEVC_AddProfileLevel", 1422, "pTmpArray != __null", a1, a2, a3, a4);
            v36 = sub_175AE4();
            v41 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create array %d 0x%x %lld %p", v36, 30, v41);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create array %d 0x%x %lld %p", v34, 30, v35);
          }
        }

        v20 = 4294966293;
LABEL_41:
        CFRelease(v11);
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v29 = sub_160F34(0x1Eu);
          v30 = sub_175AE4();
          v31 = sub_160F68(4);
          if (v29)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p\n", v30, 30, v31, "AVE_Prop_HEVC_AddProfileLevel", 1409, "pTmpDict != __null", a1, a2, a3, a4);
            v32 = sub_175AE4();
            v40 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p", v32, 30, v40);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p", v30, 30, v31);
          }
        }

        return 4294966293;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v25 = sub_160F34(0x1Eu);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p\n", v26, 30, v27, "AVE_Prop_HEVC_AddProfileLevel", 1403, "pDevCap != __null", a1, a2, a3, a4);
          v28 = sub_175AE4();
          v39 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v28, 30, v39);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v26, 30, v27);
        }
      }

      return 4294966294;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v21 = sub_160F34(0x1Eu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v22, 30, v23, "AVE_Prop_HEVC_AddProfileLevel", 1398, "pDict != __null", a1, a2, a3, 0);
        v24 = sub_175AE4();
        v38 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v24, 30, v38);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v22, 30, v23);
      }
    }

    return 4294966295;
  }

  return v20;
}

uint64_t sub_28D90(uint64_t a1, const char **a2, const void *a3, const __CFString *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = (a1 + 24732);
      v10 = sub_14CE6C(a4, (a1 + 106156), 128);
      sub_172100((a1 + 106156), 128, "%s", v11, v12, v13, v14, v15, v10);
      v16 = &qword_20C220 + 1;
      v17 = 86;
      while (!CFEqual(a4, *(v16 - 3)))
      {
        v16 += 4;
        if (!--v17)
        {
          v18 = 0;
LABEL_10:
          if (sub_160EF0(0x1Eu, 4))
          {
            v19 = sub_160F34(0x1Eu);
            v20 = sub_175AE4();
            v21 = sub_160F68(4);
            if (v19)
            {
              printf("%lld %d AVE %s: %s:%d %s | unsupported profile/level %p %lld %s %s %d %d\n", v20, 30, v21, "AVE_Prop_HEVC_SetProfileLevel", 1534, "eProfile != HEVC_Profile_Invalid", a1, *(a1 + 56), *a2, (a1 + 106156), 0, v18);
              v20 = sub_175AE4();
              v21 = sub_160F68(4);
              v22 = *(a1 + 56);
              v49 = *a2;
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | unsupported profile/level %p %lld %s %s %d %d", v20, 30, v21, "AVE_Prop_HEVC_SetProfileLevel", 1534);
          }

          return 4294965292;
        }
      }

      v33 = *(v16 - 1);
      v18 = *v16;
      if (v33 <= 0xA)
      {
        if (((1 << v33) & 0x584) != 0)
        {
          if ((*(a1 + 10782) & 1) == 0)
          {
            *v9 = 0x200000002;
            *(a1 + 10782) = 1;
          }
        }

        else if (!v33)
        {
          goto LABEL_10;
        }
      }

      *(a1 + 104628) = v33;
      if (v18)
      {
        *(a1 + 104632) = v18;
      }

      v35 = v33 > 0xA || ((1 << v33) & 0x7C6) == 0;
      if (v35 || *(a1 + 10752) == 2)
      {
        goto LABEL_55;
      }

      v36 = *v9 + 8;
      if (v36 <= *(a1 + 24736) + 8)
      {
        v36 = *(a1 + 24736) + 8;
      }

      v37 = sub_DDADC(*(a1 + 68), *(a1 + 64), *(a1 + 716), 2, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v36, v33, 0x414C4C20u, *(a1 + 16));
      if (!v37)
      {
LABEL_55:
        if (sub_160EF0(0x1Eu, 7))
        {
          v42 = sub_160F34(0x1Eu);
          v43 = sub_175AE4();
          v44 = sub_160F68(7);
          if (v42)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d %d\n", v43, 30, v44, a1, *(a1 + 56), *a2, v33, v18);
            v43 = sub_175AE4();
            sub_160F68(7);
            v45 = *(a1 + 56);
            v48 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d %d", v43);
        }

        return 0;
      }

      else
      {
        v34 = v37;
        if (sub_160EF0(0x1Eu, 4))
        {
          v38 = sub_160F34(0x1Eu);
          v39 = sub_175AE4();
          v40 = sub_160F68(4);
          if (v38)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d\n", v39, 30, v40, "AVE_Prop_HEVC_SetProfileLevel", 1568, "ret == 0", a1, *(a1 + 56), a2, a3, a4, v34);
            v39 = sub_175AE4();
            v40 = sub_160F68(4);
            v41 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d", v39, 30, v40, "AVE_Prop_HEVC_SetProfileLevel", 1568, "ret == 0");
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v27 = sub_160F34(0x1Eu);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        v30 = *(a1 + 56);
        v31 = CFGetTypeID(a4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v28, 30, v29, "AVE_Prop_HEVC_SetProfileLevel", 1501, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v30, a2, a3, a4, v31);
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          v32 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v28, 30, v29, "AVE_Prop_HEVC_SetProfileLevel", 1501, "CFStringGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v23 = sub_160F34(0x1Eu);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_SetProfileLevel", 1491, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v26 = sub_175AE4();
        v47 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v26, 30, v47, "AVE_Prop_HEVC_SetProfileLevel");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v24, 30, v25, "AVE_Prop_HEVC_SetProfileLevel");
      }
    }

    return 4294966295;
  }

  return v34;
}

uint64_t sub_293E4(uint64_t a1, const char **a2, CFAllocatorRef alloc, const void *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = CFStringCreateWithCString(alloc, (a1 + 106156), 0);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %s %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, (a1 + 106156), v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v27 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %s %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s\n", v22, 30, v23, "AVE_Prop_HEVC_GetProfileLevel", 1610, "pStr != __null", a1, alloc, a4, a5, (a1 + 106156));
          v24 = sub_175AE4();
          v26 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v24, 30, v26, "AVE_Prop_HEVC_GetProfileLevel", 1610);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v22, 30, v23, "AVE_Prop_HEVC_GetProfileLevel", 1610);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetProfileLevel", 1601, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, alloc, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetProfileLevel", 1601);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetProfileLevel", 1601);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_296F0(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -13;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 12) >= 0x40)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v27, 30, v28, "AVE_Prop_HEVC_SetMaxAllowedFrameQP", 1663, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, *(a1 + 56), a2, a3, a4, valuePtr, -12, 51);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v27, 30, v28, "AVE_Prop_HEVC_SetMaxAllowedFrameQP", 1663, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106284) = valuePtr;
        *(a1 + 1348) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMaxAllowedFrameQP", 1653, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMaxAllowedFrameQP", 1653, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMaxAllowedFrameQP", 1643, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetMaxAllowedFrameQP");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetMaxAllowedFrameQP");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_29B68(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1348);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetMaxAllowedFrameQP", 1709, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetMaxAllowedFrameQP", 1709, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMaxAllowedFrameQP", 1699, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetMaxAllowedFrameQP", 1699);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetMaxAllowedFrameQP", 1699);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_29E98(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -13;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 12) >= 0x40)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v27, 30, v28, "AVE_Prop_HEVC_SetMinAllowedFrameQP", 1762, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, *(a1 + 56), a2, a3, a4, valuePtr, -12, 51);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v27, 30, v28, "AVE_Prop_HEVC_SetMinAllowedFrameQP", 1762, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106288) = valuePtr;
        *(a1 + 1344) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMinAllowedFrameQP", 1752, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMinAllowedFrameQP", 1752, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMinAllowedFrameQP", 1742, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetMinAllowedFrameQP");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetMinAllowedFrameQP");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2A310(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1344);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetMinAllowedFrameQP", 1808, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetMinAllowedFrameQP", 1808, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMinAllowedFrameQP", 1798, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetMinAllowedFrameQP", 1798);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetMinAllowedFrameQP", 1798);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2A640(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -13;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 12) >= 0x40)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v27, 30, v28, "AVE_Prop_HEVC_SetSoftMaxQuantizationParameter", 1861, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, *(a1 + 56), a2, a3, a4, valuePtr, -12, 51);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v27, 30, v28, "AVE_Prop_HEVC_SetSoftMaxQuantizationParameter", 1861, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106292) = valuePtr;
        *(a1 + 1236) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetSoftMaxQuantizationParameter", 1851, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetSoftMaxQuantizationParameter", 1851, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetSoftMaxQuantizationParameter", 1841, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetSoftMaxQuantizationParameter");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetSoftMaxQuantizationParameter");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2AAB8(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1236);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetSoftMaxQuantizationParameter", 1907, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetSoftMaxQuantizationParameter", 1907, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSoftMaxQuantizationParameter", 1897, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetSoftMaxQuantizationParameter", 1897);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetSoftMaxQuantizationParameter", 1897);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2ADE8(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -13;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 12) >= 0x40)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v27, 30, v28, "AVE_Prop_HEVC_SetSoftMinQuantizationParameter", 1960, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, *(a1 + 56), a2, a3, a4, valuePtr, -12, 51);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v27, 30, v28, "AVE_Prop_HEVC_SetSoftMinQuantizationParameter", 1960, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106296) = valuePtr;
        *(a1 + 1232) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetSoftMinQuantizationParameter", 1950, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetSoftMinQuantizationParameter", 1950, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetSoftMinQuantizationParameter", 1940, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetSoftMinQuantizationParameter");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetSoftMinQuantizationParameter");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2B260(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1232);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetSoftMinQuantizationParameter", 2006, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetSoftMinQuantizationParameter", 2006, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSoftMinQuantizationParameter", 1996, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetSoftMinQuantizationParameter", 1996);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetSoftMinQuantizationParameter", 1996);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2B590(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -1;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr < 0)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetAverageBitRate", 2057, "iBitRate >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetAverageBitRate", 2057, "iBitRate >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106300) = valuePtr;
        if (v9)
        {
          *(a1 + 1136) = v9;
          *(a1 + 10783) = 1;
        }

        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetAverageBitRate", 2048, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetAverageBitRate", 2048, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetAverageBitRate", 2038, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetAverageBitRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetAverageBitRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2B9F4(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1136);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetAverageBitRate", 2108, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetAverageBitRate", 2108, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetAverageBitRate", 2098, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetAverageBitRate", 2098);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetAverageBitRate", 2098);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2BD24(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      if (*(a1 + 10556) == 1)
      {
        CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
        v9 = valuePtr;
        if (valuePtr > 0)
        {
          *(a1 + 106304) = valuePtr;
          *(a1 + 1132) = 2;
          *(a1 + 1136) = v9;
          *(a1 + 10783) = 257;
          result = sub_160EF0(0x1Eu, 7);
          if (result)
          {
            v11 = sub_160F34(0x1Eu);
            v12 = sub_175AE4();
            v13 = sub_160F68(7);
            v14 = *a2;
            if (v11)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
              v12 = sub_175AE4();
              sub_160F68(7);
              v15 = *(a1 + 56);
            }

            v33 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
            return 0;
          }

          return result;
        }

        if (sub_160EF0(0x1Eu, 4))
        {
          v29 = sub_160F34(0x1Eu);
          v30 = sub_175AE4();
          v31 = sub_160F68(4);
          if (v29)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v30, 30, v31, "AVE_Prop_HEVC_SetConstantBitRate", 2167, "iBitRate > 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v30 = sub_175AE4();
            v31 = sub_160F68(4);
          }

          v35 = *(a1 + 56);
          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v30, 30, v31, "AVE_Prop_HEVC_SetConstantBitRate", 2167, "iBitRate > 0");
        }
      }

      else if (sub_160EF0(0x1Eu, 4))
      {
        v26 = sub_160F34(0x1Eu);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p\n", v27, 30, v28, "AVE_Prop_HEVC_SetConstantBitRate", 2157, "psINS->VideoParams.iLayerNum == 1", *a2, a1, a2, a3, a4);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
        }

        v34 = *a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p", v27, 30, v28, "AVE_Prop_HEVC_SetConstantBitRate", 2157);
      }

      return 4294965292;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v20 = sub_160F34(0x1Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      v23 = *(a1 + 56);
      v24 = CFGetTypeID(a4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetConstantBitRate", 2151, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v25 = *(a1 + 56);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetConstantBitRate", 2151, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetConstantBitRate", 2141, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v32 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v32, "AVE_Prop_HEVC_SetConstantBitRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetConstantBitRate");
      }
    }

    return 4294966295;
  }
}

uint64_t sub_2C274(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1136);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetConstantBitRate", 2216, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetConstantBitRate", 2216, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetConstantBitRate", 2206, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetConstantBitRate", 2206);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetConstantBitRate", 2206);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2C5A4(uint64_t a1, const char **a2, const void *a3, const __CFArray *a4)
{
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = a1 + 104640;
      v13 = sub_17D13C(a4, &v48);
      if (v13)
      {
        sub_16CEF8(&v48, 30, 4, "AVE_Prop_HEVC_SetDataRateLimits", 2264, v10, v11, v12);
      }

      else
      {
        v24 = v49;
        *(a1 + 106312) = v48;
        *(a1 + 106328) = v24;
        *(a1 + 106344) = v50;
      }

      v25 = v48;
      *v9 = v48 != 0;
      if (v25 >= 1)
      {
        v47 = (a1 + 104640);
        v26 = 0;
        v27 = &v49;
        do
        {
          v28 = *v27;
          if (*v27 <= 10.0)
          {
            if (*(v27 - 1) <= 0.0)
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (sub_160EF0(0x1Eu, 5))
            {
              v29 = sub_160F34(0x1Eu);
              v30 = sub_175AE4();
              v31 = sub_160F68(5);
              if (v29)
              {
                printf("%lld %d AVE %s: DataRateLimitsSeconds is longer than 10s. Force to 10s.\n", v30, 30, v31);
                v32 = sub_175AE4();
                v45 = sub_160F68(5);
                syslog(3, "%lld %d AVE %s: DataRateLimitsSeconds is longer than 10s. Force to 10s.", v32, 30, v45);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: DataRateLimitsSeconds is longer than 10s. Force to 10s.", v30, 30, v31);
              }
            }

            v28 = *(v27 - 1) * 10.0 / *v27;
            *(v27 - 1) = v28;
            *v27 = 10.0;
          }

          if (v28 <= 0.0)
          {
LABEL_39:
            *v47 = 0;
            goto LABEL_40;
          }

          ++v26;
          v27 += 2;
        }

        while (v26 < v48);
        v9 = a1 + 104640;
        if (*v47)
        {
          goto LABEL_33;
        }

        goto LABEL_40;
      }

      if (v25)
      {
LABEL_33:
        *(a1 + 1192) = v50;
        v33 = v49;
        *(a1 + 1160) = v48;
        *(a1 + 1176) = v33;
        if (*(v9 + 4) == 30566)
        {
          *(a1 + 1132) = 4;
          *(a1 + 10784) = 1;
          if (*(a1 + 10556) != 1)
          {
            if (sub_160EF0(0x1Eu, 4))
            {
              v34 = sub_160F34(0x1Eu);
              v35 = sub_175AE4();
              v36 = sub_160F68(4);
              if (v34)
              {
                printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p\n", v35, 30, v36, "AVE_Prop_HEVC_SetDataRateLimits", 2303, "psINS->VideoParams.iLayerNum == 1", *a2, a1, a2, a3, a4);
                v35 = sub_175AE4();
                v36 = sub_160F68(4);
                v37 = *a2;
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p", v35, 30, v36, "AVE_Prop_HEVC_SetDataRateLimits", 2303);
            }

            return 4294965292;
          }
        }
      }

LABEL_40:
      if (sub_160EF0(0x1Eu, 7))
      {
        v38 = sub_160F34(0x1Eu);
        v39 = sub_175AE4();
        v40 = sub_160F68(7);
        v41 = *a2;
        if (v38)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v39, 30, v40, a1, *(a1 + 56), *a2, v48);
          v39 = sub_175AE4();
          sub_160F68(7);
          v42 = *(a1 + 56);
        }

        v46 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v39);
      }

      return v13;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      v21 = *(a1 + 56);
      v22 = CFGetTypeID(a4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetDataRateLimits", 2258, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v23 = *(a1 + 56);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetDataRateLimits", 2258, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetDataRateLimits", 2248, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v44 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v44, "AVE_Prop_HEVC_SetDataRateLimits");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetDataRateLimits");
      }
    }

    return 4294966295;
  }
}

uint64_t sub_2CB80(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFMutableArrayRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
    if (sub_17D318((a1 + 1160), Mutable))
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to make DRL %p %lld %p %p %p %p %d\n", v12, 30, v13, "AVE_Prop_HEVC_GetDataRateLimits", 2348, "ret == 0", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 1160));
          v12 = sub_175AE4();
          v13 = sub_160F68(4);
          v14 = *(a1 + 56);
          v29 = *(a1 + 1160);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRL %p %lld %p %p %p %p %d", v12, 30, v13, "AVE_Prop_HEVC_GetDataRateLimits", 2348, "ret == 0", a1);
      }

      return 4294966293;
    }

    else
    {
      *a5 = Mutable;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(7);
        v23 = *(a1 + 1160);
        if (v20)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v21, 30, v22, a1, *(a1 + 56), *a2, *(a1 + 1160), Mutable);
          v21 = sub_175AE4();
          sub_160F68(7);
          v24 = *(a1 + 56);
          v27 = *(a1 + 1160);
          v26 = *a2;
        }

        else
        {
          v28 = *(a1 + 1160);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v21, 30);
        return 0;
      }
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v16, 30, v17, "AVE_Prop_HEVC_GetDataRateLimits", 2336, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v18 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v25, "AVE_Prop_HEVC_GetDataRateLimits", 2336);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v16, 30, v17, "AVE_Prop_HEVC_GetDataRateLimits", 2336);
      }
    }

    return 4294966295;
  }

  return result;
}