uint64_t sub_E7918(int *a1, int a2, int a3)
{
  if (a2 < 1)
  {
    return 4294966295;
  }

  v3 = a2;
  while (1)
  {
    v4 = *a1++;
    if (v4 == a3)
    {
      break;
    }

    if (!--v3)
    {
      return 4294966295;
    }
  }

  return 0;
}

uint64_t sub_E7948(uint64_t a1, double a2)
{
  v4 = (a2 * 100.0 + 0.5);
  if (sub_160EF0(0x1Eu, 6))
  {
    v5 = sub_160F34(0x1Eu);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %f %p\n", v6, 30, v7, "AVE_AVC_SetQuality", a2, a1);
      v8 = sub_175AE4();
      v15 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v8, 30, v15, "AVE_AVC_SetQuality", a2, a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v6, 30, v7, "AVE_AVC_SetQuality", a2, a1);
    }
  }

  if (v4 > 0x63)
  {
    if (v4 == 100)
    {
      v10 = 0;
      *(a1 + 1144) = 0;
      *(a1 + 1152) = 0;
      *(a1 + 10858) = 1;
      *(a1 + 12060) = 1;
      *(a1 + 10604) = 0;
      *(a1 + 1448) |= 0x200uLL;
    }

    else
    {
      v10 = 4294966295;
    }
  }

  else
  {
    v9 = a33222111000[v4];
    *(a1 + 1144) = v9;
    *(a1 + 1148) = v9;
    *(a1 + 1152) = v9;
    *(a1 + 10857) = 1;
    if (*(a1 + 10784) == 1 && *(a1 + 1132) != 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      *(a1 + 10784) = 1;
      *(a1 + 1132) = 3;
    }
  }

  if (sub_160EF0(0x1Eu, 6))
  {
    v11 = sub_160F34(0x1Eu);
    v12 = sub_175AE4();
    v13 = sub_160F68(6);
    if (v11)
    {
      printf("%lld %d AVE %s: %s Exit %f %p %d\n", v12, 30, v13, "AVE_AVC_SetQuality", a2, a1, v10);
      sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %f %p %d");
  }

  return v10;
}

uint64_t sub_E7BA4(uint64_t a1, double a2)
{
  if (sub_160EF0(0xCu, 6))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %f %p\n", v5, 12, v6, "AVE_AVC_SetCQFactor", a2, a1);
      v7 = sub_175AE4();
      v19 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v7, 12, v19, "AVE_AVC_SetCQFactor", a2, a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v5, 12, v6, "AVE_AVC_SetCQFactor", a2, a1);
    }
  }

  if ((*(a1 + 1123) & 0x80) != 0 && (*(a1 + 10784) != 1 || (v9 = *(a1 + 1132), v9 == 8) || v9 == 6))
  {
    if (a2 < 0.0 || a2 > 1.0)
    {
      if (sub_160EF0(0xCu, 4))
      {
        v11 = sub_160F34(0xCu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %f [0.0, 1.0]\n", v12, 12, v13, "AVE_AVC_SetCQFactor", 306, "fCQFactor >= 0.0 && fCQFactor <= 1.0", a1, *(a1 + 56), a2);
          v12 = sub_175AE4();
          sub_160F68(4);
          v14 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %f [0.0, 1.0]", v12, 12);
      }

      v8 = 4294966295;
    }

    else
    {
      v8 = 0;
      *(a1 + 1200) = a2;
      *(a1 + 10784) = 1;
      if (*(a1 + 1208) <= 0)
      {
        v10 = 8;
      }

      else
      {
        v10 = 6;
      }

      *(a1 + 1132) = v10;
    }
  }

  else
  {
    v8 = 0;
  }

  if (sub_160EF0(0xCu, 6))
  {
    v15 = sub_160F34(0xCu);
    v16 = sub_175AE4();
    v17 = sub_160F68(6);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %f %p %d\n", v16, 12, v17, "AVE_AVC_SetCQFactor", a2, a1, v8);
      sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %f %p %d");
  }

  return v8;
}

uint64_t sub_E7EA8(const void *a1, const __CFString *a2, const void *a3)
{
  if (sub_160EF0(0xCu, 8))
  {
    v6 = sub_160F34(0xCu);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 12, v8, "AVE_Session_AVC_SetProperty", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2)
  {
    v9 = sub_CA644(a1, a2, a3);
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v10 = sub_160F34(0xCu);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 12, v12, "AVE_Session_AVC_SetProperty", 335, "pINS != __null && pKey != __null", a1, a2, a3);
        v13 = sub_175AE4();
        v18 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 12, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 12, v12);
      }
    }

    v9 = 4294966295;
  }

  if (sub_160EF0(0xCu, 8))
  {
    v14 = sub_160F34(0xCu);
    v15 = sub_175AE4();
    v16 = sub_160F68(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v15, 12, v16, "AVE_Session_AVC_SetProperty", a1, a2, a3, v9);
      v15 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v15, 12);
  }

  return v9;
}

uint64_t sub_E814C(uint64_t a1)
{
  v38 = 0uLL;
  v39 = 0;
  v2 = sub_1502C8();
  if (sub_160EF0(0xCu, 6))
  {
    v3 = sub_160F34(0xCu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v4, 12, v5, "AVE_Session_AVC_CreatePropertyDict", a1);
      v6 = sub_175AE4();
      v34 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v6, 12, v34, "AVE_Session_AVC_CreatePropertyDict", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v4, 12, v5, "AVE_Session_AVC_CreatePropertyDict", a1);
    }
  }

  if (!a1)
  {
    if (sub_160EF0(0xCu, 4))
    {
      v14 = sub_160F34(0xCu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 12, v16, "AVE_Session_AVC_CreatePropertyDict", 357, "pINS != __null", 0);
        v15 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v15);
    }

    v13 = 4294966295;
    goto LABEL_39;
  }

  v7 = 0;
  while (1)
  {
    if (v7 == 1)
    {
      v8 = 256;
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_16;
      }

      v8 = 512;
    }

    v9 = v2[396] ? 1 : 2;
    v10 = v9 | v8;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(&v38 + v7) = Mutable;
    if (!Mutable)
    {
      break;
    }

    v12 = sub_CA3E4(*(a1 + 68), v10, *(a1 + 56), Mutable);
    if (v12)
    {
      v13 = v12;
      if (sub_160EF0(0xCu, 4))
      {
        v22 = sub_160F34(0xCu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        v25 = *(a1 + 68);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to make property dictionary %p %lld 0x%x %d %d\n", v23, 12, v24, "AVE_Session_AVC_CreatePropertyDict", 392, "ret == 0", a1, *(a1 + 56), v10, *(a1 + 68), v13);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          v26 = *(a1 + 56);
        }

        v37 = *(a1 + 68);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %p %lld 0x%x %d %d", v23, 12, v24, "AVE_Session_AVC_CreatePropertyDict");
      }

      goto LABEL_35;
    }

LABEL_16:
    if (++v7 == 3)
    {
      v13 = 0;
      *(a1 + 80) = v38;
      *(a1 + 96) = v39;
      goto LABEL_39;
    }
  }

  if (sub_160EF0(0xCu, 4))
  {
    v17 = sub_160F34(0xCu);
    v18 = sub_175AE4();
    v19 = sub_160F68(4);
    v20 = *(a1 + 68);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d\n", v18, 12, v19, "AVE_Session_AVC_CreatePropertyDict", 387, "paDict[i] != __null", a1, *(a1 + 56), v10, *(a1 + 68), 0);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      v21 = *(a1 + 56);
    }

    v36 = *(a1 + 68);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d", v18, 12, v19, "AVE_Session_AVC_CreatePropertyDict");
  }

  v13 = 4294966293;
LABEL_35:
  for (i = 0; i != 24; i += 8)
  {
    v28 = *(&v38 + i);
    if (v28)
    {
      CFRelease(v28);
      *(&v38 + i) = 0;
    }
  }

LABEL_39:
  if (sub_160EF0(0xCu, 6))
  {
    v29 = sub_160F34(0xCu);
    v30 = sub_175AE4();
    v31 = sub_160F68(6);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v30, 12, v31, "AVE_Session_AVC_CreatePropertyDict", a1, v13);
      v32 = sub_175AE4();
      v35 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v32, 12, v35, "AVE_Session_AVC_CreatePropertyDict", a1, v13);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v30, 12, v31, "AVE_Session_AVC_CreatePropertyDict", a1, v13);
    }
  }

  return v13;
}

uint64_t sub_E8690(uint64_t a1)
{
  if (sub_160EF0(0xCu, 6))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 12, v4, "AVE_Session_AVC_Stop", a1);
      v5 = sub_175AE4();
      v19 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v19, "AVE_Session_AVC_Stop", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 12, v4, "AVE_Session_AVC_Stop", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 12000);
    v7 = sub_175AE4();
    sub_140028(v6, 4u, v7);
    if (*(a1 + 16464) == 30568)
    {
      v21 = sub_175AE4();
      v8 = sub_12D170(*(a1 + 120), &v21);
    }

    else
    {
      v8 = 0;
    }

    v12 = *(a1 + 12000);
    v13 = sub_175AE4();
    sub_1403FC(v12, 4u, v13);
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v9 = sub_160F34(0xCu);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v10, 12, v11, "AVE_Session_AVC_Stop", 429, "pINS != __null", 0);
        v10 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v10);
    }

    v8 = 4294966295;
  }

  if (sub_160EF0(0xCu, 6))
  {
    v14 = sub_160F34(0xCu);
    v15 = sub_175AE4();
    v16 = sub_160F68(6);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v15, 12, v16, "AVE_Session_AVC_Stop", a1, v8);
      v17 = sub_175AE4();
      v20 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v17, 12, v20, "AVE_Session_AVC_Stop", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 12, v16, "AVE_Session_AVC_Stop", a1, v8);
    }
  }

  return v8;
}

uint64_t sub_E893C(uint64_t a1)
{
  if (sub_160EF0(0xCu, 6))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 12, v4, "AVE_Session_AVC_Destroy", a1);
      v5 = sub_175AE4();
      v45 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v45, "AVE_Session_AVC_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 12, v4, "AVE_Session_AVC_Destroy", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 12000);
    v7 = sub_175AE4();
    sub_140028(v6, 1u, v7);
    if (*(a1 + 16464) == 30568)
    {
      v47 = sub_175AE4();
      sub_12C9EC(*(a1 + 120), &v47, 0);
    }

    if (sub_160EF0(2u, 0))
    {
      v8 = sub_160F34(2u);
      v9 = sub_175AE4();
      v10 = sub_160F68(0);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v13 = *(a1 + 10772);
      v14 = *(a1 + 16468);
      v15 = sub_129124(*(a1 + 120));
      v16 = sub_129148(*(a1 + 120));
      if (v8)
      {
        printf("%lld %d AVE %s: ID: %lld Type: %d Enc: %d | Input: %d Proc: %lld Drop: %lld\n", v9, 2, v10, v11, v12, v13, v14, v15, v16);
        v9 = sub_175AE4();
        v10 = sub_160F68(0);
        v17 = *(a1 + 56);
        v18 = *(a1 + 64);
        v19 = *(a1 + 10772);
        v20 = *(a1 + 16468);
        sub_129124(*(a1 + 120));
        sub_129148(*(a1 + 120));
      }

      syslog(3, "%lld %d AVE %s: ID: %lld Type: %d Enc: %d | Input: %d Proc: %lld Drop: %lld", v9, 2, v10);
    }

    v24 = sub_12916C(*(a1 + 120));
    *(a1 + 120) = 0;
    v25 = *(a1 + 12000);
    v26 = sub_175AE4();
    sub_1403FC(v25, 1u, v26);
    sub_1407CC(*(a1 + 12000));
    sub_140BA4(*(a1 + 12000), 16, 6, 0, 0);
    sub_151B10();
    v27 = *(a1 + 12000);
    if (v27)
    {
      sub_13FB64(v27);
      *(a1 + 12000) = 0;
    }

    v28 = *(a1 + 18064);
    if (v28)
    {
      sub_CCDA4(v28);
      sub_CC04C(*(a1 + 18064));
      *(a1 + 18064) = 0;
    }

    v29 = *(a1 + 16480);
    if (v29)
    {
      sub_D7B88(v29);
      operator delete();
    }

    v30 = *(a1 + 16488);
    if (v30)
    {
      sub_16934(v30);
      operator delete();
    }

    v31 = *(a1 + 16496);
    if (v31)
    {
      CFRelease(v31);
      *(a1 + 16496) = 0;
    }

    v32 = 0;
    v33 = a1 + 80;
    do
    {
      v34 = *(v33 + v32);
      if (v34)
      {
        CFRelease(v34);
        *(v33 + v32) = 0;
      }

      v32 += 8;
    }

    while (v32 != 24);
    v35 = *(a1 + 104);
    if (v35)
    {
      CFRelease(v35);
      *(a1 + 104) = 0;
    }

    v36 = *(a1 + 18072);
    if (v36)
    {
      CFRelease(v36);
      *(a1 + 18072) = 0;
    }

    v37 = *(a1 + 112);
    if (v37)
    {
      CFRelease(v37);
      *(a1 + 112) = 0;
    }

    v38 = *(a1 + 16560);
    if (v38)
    {
      CFRelease(v38);
      *(a1 + 16560) = 0;
    }

    v39 = *(a1 + 16568);
    if (v39)
    {
      CFRelease(v39);
      *(a1 + 16568) = 0;
    }

    sub_14E0A4((a1 + 16592));
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v21 = sub_160F34(0xCu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v22, 12, v23, "AVE_Session_AVC_Destroy", 462, "pINS != __null", 0);
        v22 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v22);
    }

    sub_151B10();
    v24 = 4294966295;
  }

  if (sub_160EF0(0xCu, 6))
  {
    v40 = sub_160F34(0xCu);
    v41 = sub_175AE4();
    v42 = sub_160F68(6);
    if (v40)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v41, 12, v42, "AVE_Session_AVC_Destroy", a1, v24);
      v43 = sub_175AE4();
      v46 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v43, 12, v46, "AVE_Session_AVC_Destroy", a1, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v41, 12, v42, "AVE_Session_AVC_Destroy", a1, v24);
    }
  }

  return v24;
}

uint64_t sub_E8E20(uint64_t a1, unsigned int *a2)
{
  v4 = sub_1502C8();
  if (sub_160EF0(0xCu, 6))
  {
    v5 = sub_160F34(0xCu);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v6, 12, v7, "AVE_Session_AVC_StartSession", a1, a2);
      v8 = sub_175AE4();
      v64 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v8, 12, v64, "AVE_Session_AVC_StartSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v6, 12, v7, "AVE_Session_AVC_StartSession", a1, a2);
    }
  }

  if (a1 && a2)
  {
    if (*a2 < 1 || a2[1] <= 0)
    {
      if (sub_160EF0(0xCu, 4))
      {
        v23 = sub_160F34(0xCu);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        v24 = *a2;
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_AVC_StartSession", 4740, "pDim->iWidth > 0 && pDim->iHeight > 0", a1, *(a1 + 56), *a2, a2[1]);
          v14 = sub_175AE4();
          v15 = sub_160F68(4);
          v25 = *(a1 + 56);
          v26 = *a2;
          v27 = a2[1];
        }

        else
        {
          v73 = *a2;
        }

        goto LABEL_30;
      }

LABEL_31:
      v28 = 4294965295;
      goto LABEL_32;
    }

    v9 = *(a1 + 12000);
    v10 = sub_175AE4();
    sub_140028(v9, 3u, v10);
    v11 = *a2;
    v12 = a2[1];
    *(a1 + 1440) = *a2;
    *(a1 + 1444) = v12;
    *(a1 + 11452) = v11;
    *(a1 + 11456) = v12;
    *(a1 + 764) = 1;
    sub_E97CC(a1);
    if (sub_14E248(*(a1 + 68), 1, 1, *(a1 + 1440), *(a1 + 1444), 0))
    {
      if (sub_160EF0(0xCu, 4))
      {
        v13 = sub_160F34(0xCu);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        v16 = *(a1 + 1440);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_AVC_StartSession", 4759, "ret == 0", a1, *(a1 + 56), *(a1 + 1440), *(a1 + 1444));
          v14 = sub_175AE4();
          v15 = sub_160F68(4);
          v17 = *(a1 + 56);
          v18 = *(a1 + 1440);
          v19 = *(a1 + 1444);
        }

        else
        {
          v74 = *(a1 + 1440);
        }

LABEL_30:
        syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v14, 12, v15);
        goto LABEL_31;
      }

      goto LABEL_31;
    }

    sub_E9B08(a1);
    v29 = *(a1 + 12052) + 8;
    if (v29 <= *(a1 + 12056) + 8)
    {
      v29 = *(a1 + 12056) + 8;
    }

    v30 = sub_DDADC(*(a1 + 68), *(a1 + 64), 62, 1, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v29, 0, 0x414C4C20u, *(a1 + 16));
    if (v30)
    {
      v28 = v30;
      if (sub_160EF0(0x1Eu, 4))
      {
        v31 = sub_160F34(0x1Eu);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        if (v31)
        {
          v34 = 30;
          printf("%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed %d\n", v32, 30, v33, "AVE_Session_AVC_StartSession", 4778, "ret == 0", v28);
          v35 = sub_175AE4();
          v69 = v28;
          v67 = 4778;
          v65 = sub_160F68(4);
          v36 = "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed %d";
LABEL_50:
          syslog(3, v36, v35, v34, v65, "AVE_Session_AVC_StartSession", v67, "ret == 0", v69, v71);
          goto LABEL_32;
        }

        v70 = v28;
        v68 = 4778;
        v66 = v33;
        v49 = 30;
        v50 = "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed %d";
        goto LABEL_66;
      }
    }

    else
    {
      *(a1 + 16464) = 30566;
      *(a1 + 712) = v4[103];
      if (*(a1 + 10892) == 1)
      {
        operator new();
      }

      if (*(a1 + 16) == 1)
      {
        v44 = 1;
      }

      else
      {
        v44 = 3;
      }

      v45 = sub_16960(*(a1 + 16488), *(a1 + 56), 0, 0, 1, v44);
      if (v45)
      {
        v28 = v45;
        if (!sub_160EF0(0xCu, 4))
        {
          goto LABEL_32;
        }

        v46 = sub_160F34(0xCu);
        v32 = sub_175AE4();
        v47 = sub_160F68(4);
        if (v46)
        {
          v34 = 12;
          printf("%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu\n", v32, 12, v47, "AVE_Session_AVC_StartSession", 4811, "ret == 0", a1, *(a1 + 56));
          v35 = sub_175AE4();
          v48 = sub_160F68(4);
          v69 = a1;
          v71 = *(a1 + 56);
          v67 = 4811;
          v65 = v48;
          v36 = "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu";
          goto LABEL_50;
        }

        v70 = a1;
        v71 = *(a1 + 56);
        v68 = 4811;
        v66 = v47;
        v49 = 12;
        v50 = "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu";
LABEL_66:
        syslog(3, v50, v32, v49, v66, "AVE_Session_AVC_StartSession", v68, "ret == 0", v70, v71, v72);
        goto LABEL_32;
      }

      v51 = sub_CA984(a1);
      if (!v51)
      {
        v58 = v4[30];
        if (v58)
        {
          *(a1 + 11468) = v58;
        }

        v59 = v4[29];
        if (v59 < 1)
        {
          v28 = 0;
        }

        else
        {
          v60 = (v4 + 32);
          v61 = (a1 + 11476);
          do
          {
            v63 = *v60;
            v60 += 12;
            v62 = v63;
            if ((v63 & 0x80000000) == 0)
            {
              *v61 = v62;
            }

            v28 = 0;
            v61 += 12;
            --v59;
          }

          while (v59);
        }

        goto LABEL_32;
      }

      v28 = v51;
      if (sub_160EF0(0xCu, 4))
      {
        v52 = sub_160F34(0xCu);
        v32 = sub_175AE4();
        v53 = sub_160F68(4);
        v54 = *(a1 + 56);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d\n", v32, 12, v53, "AVE_Session_AVC_StartSession", 4818, "ret == 0", a1, *(a1 + 56), v28);
          v55 = sub_175AE4();
          v56 = sub_160F68(4);
          v57 = *(a1 + 56);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d", v55, 12, v56);
          goto LABEL_32;
        }

        v71 = *(a1 + 56);
        v72 = v28;
        v70 = a1;
        v68 = 4818;
        v66 = v53;
        v49 = 12;
        v50 = "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d";
        goto LABEL_66;
      }
    }

LABEL_32:
    v37 = *(a1 + 12000);
    v38 = sub_175AE4();
    sub_1403FC(v37, 3u, v38);
    if (v28)
    {
      v39 = *(a1 + 16480);
      if (v39)
      {
        sub_D7B88(v39);
        operator delete();
      }
    }

    goto LABEL_35;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v20 = sub_160F34(0xCu);
    v21 = sub_175AE4();
    v22 = sub_160F68(4);
    if (v20)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v21, 12, v22, "AVE_Session_AVC_StartSession", 4736, "pINS != __null && pDim != __null", a1, a2);
      v21 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v21, 12);
  }

  v28 = 4294966295;
LABEL_35:
  if (sub_160EF0(0xCu, 6))
  {
    v40 = sub_160F34(0xCu);
    v41 = sub_175AE4();
    v42 = sub_160F68(6);
    if (v40)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v41, 12, v42, "AVE_Session_AVC_StartSession", a1, a2, v28);
      v41 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v41);
  }

  return v28;
}

void sub_E97CC(uint64_t a1)
{
  v2 = a1 + 13184;
  if (sub_160EF0(0xCu, 7))
  {
    v3 = sub_160F34(0xCu);
    v4 = sub_175AE4();
    v5 = sub_160F68(7);
    if (v3)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams\n", v4, 12, v5);
      v6 = sub_175AE4();
      v32 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams", v6, 12, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams", v4, 12, v5);
    }
  }

  v7 = *(a1 + 1440);
  v8 = *(a1 + 1444);
  *v2 = 0;
  *(a1 + 13188) = 0u;
  v9 = sub_14E470(*(a1 + 68), 1, 1);
  v10 = *(a1 + 1444);
  if ((v10 & 0xF) != 0 || v10 < v9[1])
  {
    if (*(a1 + 76) >= 12)
    {
      *(v2 + 3364) = v10;
    }

    v11 = (v10 + 15) & 0xFFFFFFF0;
    if (v11 <= v9[1])
    {
      v11 = v9[1];
    }

    *(a1 + 1444) = v11;
    *v2 = 1;
    *(a1 + 13200) = v11 - v8;
  }

  v12 = *(a1 + 1440);
  if ((v12 & 0xF) != 0 || v12 < *v9)
  {
    if (*(a1 + 76) >= 12)
    {
      *(v2 + 3360) = v12;
    }

    v13 = (v12 + 15) & 0xFFFFFFF0;
    if (v13 <= *v9)
    {
      v13 = *v9;
    }

    *(a1 + 1440) = v13;
    *v2 = 1;
    *(a1 + 13192) = v13 - v7;
  }

  if (sub_160EF0(0x10u, 7))
  {
    v14 = sub_160F34(0x10u);
    v15 = sub_175AE4();
    v16 = sub_160F68(7);
    if (v14)
    {
      printf("%lld %d AVE %s: FIG: input -> %dx%d\n", v15, 16, v16, v7, v8);
      v17 = sub_175AE4();
      v33 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: input -> %dx%d", v17, 16, v33, v7, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: input -> %dx%d", v15, 16, v16, v7, v8);
    }
  }

  if (sub_160EF0(0x10u, 7))
  {
    v18 = sub_160F34(0x10u);
    v19 = sub_175AE4();
    v20 = sub_160F68(7);
    v21 = *(a1 + 1440);
    v22 = *(a1 + 1444);
    if (v18)
    {
      printf("%lld %d AVE %s: FIG: input multiple -> %dx%d\n", v19, 16, v20, *(a1 + 1440), v22);
      v23 = sub_175AE4();
      v24 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: input multiple -> %dx%d", v23, 16, v24, *(a1 + 1440), *(a1 + 1444));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: input multiple -> %dx%d", v19, 16, v20, *(a1 + 1440), v22);
    }
  }

  if (sub_160EF0(0x10u, 7))
  {
    v25 = sub_160F34(0x10u);
    v26 = sub_175AE4();
    v27 = sub_160F68(7);
    v28 = *(a1 + 13200);
    v29 = *(a1 + 13192);
    if (v25)
    {
      printf("%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d\n", v26, 16, v27, *(a1 + 13200), v29);
      v30 = sub_175AE4();
      v31 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d", v30, 16, v31, *(a1 + 13200), *(a1 + 13192));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d", v26, 16, v27, *(a1 + 13200), v29);
    }
  }
}

double sub_E9B08(uint64_t a1)
{
  v2 = a1 + 14572;
  v3 = a1 + 10168;
  if (sub_160EF0(0xCu, 7))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault\n", v5, 12, v6);
      v7 = sub_175AE4();
      v16 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault", v7, 12, v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault", v5, 12, v6);
    }
  }

  v8 = 0;
  *(v3 + 588) = 0;
  *(a1 + 1308) = 1;
  *(v3 + 596) = 1;
  *(a1 + 1096) = 0x39D00000000;
  *(a1 + 1296) &= ~1u;
  *(v3 + 613) = 0;
  *(a1 + 10792) = 0x300000006;
  *(a1 + 10844) = 0x10000;
  *(v3 + 684) = 0;
  *(a1 + 10864) = 0;
  *(a1 + 10880) = 0;
  *(a1 + 10872) = 0;
  *(a1 + 10888) = 0;
  *(a1 + 10860) = -1;
  *(v3 + 687) = 0;
  *(a1 + 688) &= ~2u;
  v9 = *(a1 + 1336);
  *(v3 + 688) = 0;
  *(a1 + 11744) = 0u;
  *(a1 + 11728) = 0u;
  *(a1 + 11712) = 0u;
  *(a1 + 11696) = 0u;
  *(a1 + 11680) = 0u;
  *(a1 + 11664) = 0u;
  *(a1 + 11648) = 0u;
  *(a1 + 11632) = 0u;
  *(a1 + 11616) = 0u;
  *(a1 + 11600) = 0u;
  *(a1 + 11584) = 0u;
  *(a1 + 11568) = 0u;
  *(a1 + 11552) = 0u;
  *(a1 + 11536) = 0u;
  *(a1 + 11520) = 0u;
  *(a1 + 11504) = 0u;
  *(a1 + 11488) = 0u;
  *(a1 + 11472) = 0u;
  *(a1 + 10776) = 0;
  do
  {
    *(a1 + 11472 + v8) = 0xFFFFFFFF00000001;
    v8 += 48;
  }

  while (v8 != 288);
  *(a1 + 11464) = 0x100000006;
  *(a1 + 11760) = 1;
  *(v3 + 344) = 0;
  *(v3 + 1642) = 0;
  *(a1 + 11812) = -1;
  *(a1 + 11772) = 0;
  *(a1 + 11792) = 0;
  *(v3 + 1632) = 0;
  *(a1 + 11804) = 0;
  *(a1 + 1472) = 0;
  *(a1 + 1464) = 1;
  *(a1 + 1256) = 0x300000003;
  v10 = *(a1 + 1240);
  *(a1 + 10536) = 0;
  *(a1 + 1240) = v10 & 0xFFFFF8FF | 0x600;
  if (*(a1 + 76) <= 29)
  {
    v11 = 0;
  }

  else
  {
    v11 = 3;
  }

  *v3 = v11;
  *(v3 + 2) = 0;
  *(a1 + 10176) = 2;
  *(v3 + 5) = 0;
  *(a1 + 10244) = 1;
  *(v3 + 80) = 0;
  *(a1 + 10252) = 1;
  v12 = *(a1 + 1444);
  *(a1 + 10260) = v12;
  *(a1 + 10516) = 4;
  *(a1 + 10524) = 0;
  *(a1 + 1288) = 1;
  *(v3 + 354) = 0;
  *(v3 + 363) = 0;
  *(a1 + 1336) = v9 & 0xFBFEFDFF | 0x200;
  *(v3 + 372) = 0;
  *(a1 + 10604) = 0x1000000001;
  *(a1 + 10744) = 8;
  *(a1 + 1392) = -1;
  *(v3 + 12) = 3;
  *(v3 + 16) = 0;
  *(a1 + 1356) &= ~4u;
  *(a1 + 10188) = 0x800000001;
  *(v3 + 3) = 1;
  *(a1 + 1448) &= ~0x2000000uLL;
  *(a1 + 10544) = 21;
  *(a1 + 1136) = ((*(a1 + 1440) * v12) * 1.5 * 0.15 * 30.0);
  *(a1 + 1112) = 30;
  *(a1 + 11968) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0xBFF0000000000000;
  *(a1 + 1280) = 0xBFF0000000000000;
  *(a1 + 1132) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = xmmword_1849B0;
  *(a1 + 1120) = 0;
  *(a1 + 1352) = 30;
  *(a1 + 1088) &= ~2uLL;
  *(a1 + 1252) = 1;
  *(a1 + 720) = 0;
  if (!*(v3 + 612))
  {
    *(a1 + 10892) = 0;
  }

  *(a1 + 11460) = 0;
  *(a1 + 692) = -1;
  *(a1 + 1232) = 0xC0000000CLL;
  *(a1 + 1344) = 0xC0000000CLL;
  *(a1 + 1336) = v9 & 0xFBFE7DAD | 0x8202;
  *(a1 + 1144) = 0x1A0000001ALL;
  *(a1 + 1152) = 26;
  *(a1 + 1192) = 0;
  *(a1 + 1160) = 0uLL;
  *(a1 + 1176) = 0uLL;
  *(a1 + 1324) = 1;
  *(a1 + 1328) = 0x100000001;
  *(a1 + 1128) = 0;
  *(a1 + 11448) = 30;
  *(a1 + 1296) &= ~2u;
  *(a1 + 11964) = 0;
  *(v3 + 1648) = 0;
  *(a1 + 11952) = 0;
  *(a1 + 11936) = 0uLL;
  *(a1 + 11920) = 0uLL;
  *(a1 + 11904) = 0uLL;
  *(a1 + 11888) = 0uLL;
  *(a1 + 11872) = 0uLL;
  *(a1 + 11856) = 0uLL;
  *(a1 + 11840) = 0uLL;
  *(a1 + 11824) = 0uLL;
  *(a1 + 12008) = 6;
  *(a1 + 12028) = 0;
  *(a1 + 12012) = 0uLL;
  *(a1 + 12036) = 1;
  *(a1 + 12040) = 0x100000000;
  *(a1 + 12064) = 0;
  *(a1 + 12048) = 0;
  *(a1 + 12054) = 0;
  *(a1 + 13056) = xmmword_1849C0;
  *(a1 + 13072) = 1;
  *(v3 + 2908) = 0;
  *(a1 + 13088) = 0x100000001;
  *(a1 + 13096) = 0x1000000;
  *(a1 + 13100) = 5;
  *(v3 + 2940) = 1;
  *(a1 + 13112) = 0x200000002;
  *(a1 + 13120) = 2;
  *(v3 + 2956) = 0;
  *(v3 + 2968) = 0;
  *(v3 + 2981) = 0;
  *(v3 + 2983) = 0;
  *(a1 + 1104) = 24;
  v13 = *(a1 + 10892);
  if (v13 == 37 || v13 == 20)
  {
    *(a1 + 1104) = 152;
  }

  *(a1 + 13724) = 0;
  *(a1 + 13728) = 0x100000000;
  *(v3 + 3568) = 0;
  result = 0.0;
  *(a1 + 13760) = 0;
  *(a1 + 13768) = 0;
  *(a1 + 13740) = 0u;
  *(a1 + 13756) = 0;
  *(v3 + 3604) = xmmword_1849D0;
  *(v3 + 3644) = xmmword_1849D0;
  *&v15 = 0xC0000000CLL;
  *(&v15 + 1) = 0xC0000000CLL;
  *(v3 + 3620) = v15;
  *(v3 + 3660) = v15;
  *(a1 + 13804) = 16777217;
  *(v3 + 3640) = 0;
  *(a1 + 14108) = 1;
  *(a1 + 14116) = 0x200000000;
  *(a1 + 14124) = 0;
  *(a1 + 14131) = 0;
  *(a1 + 14140) = 0u;
  *(a1 + 14156) = 0;
  *(v3 + 3996) = 1;
  *(v3 + 4020) = 0;
  *(v3 + 4060) = 0;
  *(v3 + 4062) = 0;
  *v2 = 0;
  *(a1 + 14168) = 0u;
  *(a1 + 14208) = 0;
  *(a1 + 14192) = 0u;
  *(v2 + 1872) = -1;
  *(a1 + 696) = 0;
  *(a1 + 716) = 0;
  return result;
}

uint64_t sub_EA07C()
{
  v0 = __chkstk_darwin();
  theDict = v2;
  v132 = v1;
  v133 = v3;
  v134 = v4;
  v6 = v5;
  v130 = v7;
  v135 = v0;
  pixelBuffer = v5;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v153 = 0uLL;
  v8 = sub_1502C8();
  if (sub_160EF0(0xCu, 7))
  {
    v9 = sub_160F34(0xCu);
    v10 = sub_175AE4();
    v11 = sub_160F68(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", v10, 12, v11, "AVE_Session_AVC_Process", v135, v130, v6, v132, v133, v134, theDict);
      v12 = sub_175AE4();
      v116 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v12, 12, v116, "AVE_Session_AVC_Process", v135);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v10, 12, v11, "AVE_Session_AVC_Process", v135);
    }
  }

  if (v134 && v133 && v132 && v135 && pixelBuffer)
  {
    if (!*(v135 + 16468))
    {
      v29 = sub_173E4(*(v135 + 16488), *(v135 + 1096));
      if (v29)
      {
        v30 = v29;
        if (sub_160EF0(3u, 4))
        {
          v31 = sub_160F34(3u);
          v32 = sub_175AE4();
          v33 = sub_160F68(4);
          if (v31)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v32, 3, v33, "AVE_Session_AVC_Process", 5104, "ret == 0");
            v34 = sub_175AE4();
            v118 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v34, 3, v118, "AVE_Session_AVC_Process", 5104, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v32, 3, v33, "AVE_Session_AVC_Process", 5104, "ret == 0");
          }
        }

        goto LABEL_70;
      }

      v58 = *(v135 + 12000);
      v59 = sub_175AE4();
      sub_140028(v58, 5u, v59);
    }

    v13 = sub_175AE4();
    v156 = *v133;
    v157 = v133[2];
    v154 = *v134;
    v155 = v134[2];
    *&v153 = v156;
    DWORD2(v153) = DWORD2(v156);
    sub_1729E0(0, &v153);
    if (sub_160EF0(0x33u, 7))
    {
      v14 = sub_160F34(0x33u);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      v17 = *(v135 + 56);
      v18 = *(v135 + 16468);
      v19 = *v133;
      v20 = *(v133 + 2);
      v21 = *(v134 + 3);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld\n", v15, 51, v16, "AVE_Session_AVC_Process", 5124, v17, v18, v19, v20, *(v133 + 3), v133[2], v153, DWORD2(v153), *v134, *(v134 + 2), *(v134 + 3), v134[2]);
        v22 = sub_175AE4();
        v23 = sub_160F68(7);
        v24 = *(v134 + 3);
        v129 = v134[2];
        v126 = *v134;
        v127 = *(v134 + 2);
        v124 = *(v133 + 3);
        v125 = v133[2];
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v22, 51, v23, "AVE_Session_AVC_Process", 5124, *(v135 + 56), *(v135 + 16468), *v133, *(v133 + 2));
      }

      else
      {
        v128 = *(v134 + 3);
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v15, &stru_20.segname[11], v16, "AVE_Session_AVC_Process", 5124, v17, v18, v19, v20);
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    *(v135 + 18080) = PixelFormatType;
    if (!*(v135 + 16468))
    {
      v166 = *(v135 + 1440);
      v37 = sub_167CD8(PixelFormatType);
      if (!v37)
      {
        if (sub_160EF0(3u, 4))
        {
          v60 = sub_160F34(3u);
          v61 = sub_175AE4();
          v62 = sub_160F68(4);
          v63 = *(v135 + 56);
          if (v60)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v61, 3, v62, "AVE_Session_AVC_Process", 5141, "pPixelFmt != __null", v135, *(v135 + 56), *(v135 + 18080));
            v61 = sub_175AE4();
            v62 = sub_160F68(4);
            v64 = *(v135 + 56);
            v123 = *(v135 + 18080);
          }

          else
          {
            v122 = *(v135 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v61, 3, v62);
        }

        v35 = 0;
        goto LABEL_79;
      }

      if (v8[420])
      {
        v38 = v8 + 420;
      }

      else
      {
        v38 = 0;
      }

      sub_CC848(*(v135 + 18064), v38, *(v135 + 64), *(v135 + 10772), *(v8 + 103), *(v8 + 104), &v166, 1, *(v37 + 3), *(v37 + 1), *(v135 + 1136));
    }

    sub_CCF60(*(v135 + 18064), -1, pixelBuffer);
    v39 = *(v135 + 16464);
    if (v39 != 30566)
    {
      if (v39 != 30567)
      {
        if (v39 != 30568)
        {
          if (sub_160EF0(3u, 4))
          {
            v54 = sub_160F34(3u);
            v55 = sub_175AE4();
            v56 = sub_160F68(4);
            if (v54)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.\n", v55, 3, v56, "AVE_Session_AVC_Process", 5280, "false", *(v135 + 16464));
              v55 = sub_175AE4();
              sub_160F68(4);
              v57 = *(v135 + 16464);
            }

            else
            {
              v121 = *(v135 + 16464);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.", v55);
          }

          v35 = 0;
          goto LABEL_134;
        }

        v40 = sub_EB66C(v135, &pixelBuffer, &v160, &v159, &v158 + 1, &v158, 0);
        if (v40)
        {
          v35 = v40;
          if (sub_160EF0(3u, 4))
          {
            v41 = sub_160F34(3u);
            v42 = sub_175AE4();
            v43 = sub_160F68(4);
            if (!v41)
            {
LABEL_78:
              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.");
              goto LABEL_79;
            }

            v44 = 5160;
LABEL_44:
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.\n", v42, 3, v43, "AVE_Session_AVC_Process", v44, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
            goto LABEL_78;
          }

          goto LABEL_79;
        }

        goto LABEL_95;
      }

      if (sub_15F5D0(pixelBuffer))
      {
        v45 = 1;
      }

      else
      {
        v45 = 2;
      }

      *(v135 + 10804) = v45;
      sub_EBCB0(v135, pixelBuffer);
      v46 = sub_EB66C(v135, &pixelBuffer, &v160, &v159, &v158 + 1, &v158, 1);
      if (v46)
      {
        v35 = v46;
        if (sub_160EF0(3u, 4))
        {
          v47 = sub_160F34(3u);
          v42 = sub_175AE4();
          v43 = sub_160F68(4);
          if (!v47)
          {
            goto LABEL_78;
          }

          v44 = 5177;
          goto LABEL_44;
        }

LABEL_79:
        v30 = -1002;
        goto LABEL_135;
      }

      sub_EBECC();
      v65 = sub_EBF6C(v135);
      if (v65)
      {
        v35 = v65;
        if (sub_160EF0(3u, 4))
        {
          v66 = sub_160F34(3u);
          v67 = sub_175AE4();
          v68 = sub_160F68(4);
          if (v66)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v67, 3, v68, "AVE_Session_AVC_Process", 5187, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        }

        goto LABEL_79;
      }

      sub_EF0EC(v135, pixelBuffer);
      bzero(v172, 0x1058uLL);
      v166 = v135 + 672;
      v167 = v135 + 1440;
      v73 = *(v135 + 12000);
      v168 = v135 + 10752;
      v169 = v73;
      v74 = *(v135 + 18064);
      v171 = *(v135 + 16480);
      v170 = v74;
      v173 = v135 + 12008;
      v174 = v135 + 13724;
      v175 = v135 + 14108;
      memcpy(v176, (v135 + 16592), sizeof(v176));
      v177 = v13;
      v75 = sub_12A644(*(v135 + 120), &v166, v135 + 128, *(v135 + 16), *(v135 + 112), *(v135 + 16472), *(v135 + 16496), v135 + 160, (v135 + 11772), (v135 + 11464));
      if (v75)
      {
        v35 = v75;
        if (sub_160EF0(3u, 4))
        {
          v76 = sub_160F34(3u);
          v77 = sub_175AE4();
          v78 = sub_160F68(4);
          if (!v76)
          {
            goto LABEL_133;
          }

          v79 = 5212;
          goto LABEL_94;
        }

        goto LABEL_134;
      }

      goto LABEL_95;
    }

    if (sub_15F5D0(pixelBuffer))
    {
      v48 = 1;
    }

    else
    {
      v48 = 2;
    }

    *(v135 + 10804) = v48;
    v49 = sub_EFE80(v135);
    if (!v49)
    {
      sub_EBCB0(v135, pixelBuffer);
      v69 = sub_EB66C(v135, &pixelBuffer, &v160, &v159, &v158 + 1, &v158, 1);
      if (v69)
      {
        v35 = v69;
        if (sub_160EF0(3u, 4))
        {
          v70 = sub_160F34(3u);
          v71 = sub_175AE4();
          v72 = sub_160F68(4);
          if (v70)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.\n", v71, 3, v72, "AVE_Session_AVC_Process", 5237, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.");
        }

        goto LABEL_134;
      }

      sub_EBECC();
      v80 = sub_EBF6C(v135);
      if (v80)
      {
        v35 = v80;
        if (sub_160EF0(3u, 4))
        {
          v81 = sub_160F34(3u);
          v82 = sub_175AE4();
          v83 = sub_160F68(4);
          if (v81)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v82, 3, v83, "AVE_Session_AVC_Process", 5247, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        }

        goto LABEL_134;
      }

      sub_EF0EC(v135, pixelBuffer);
      bzero(v172, 0x1058uLL);
      v166 = v135 + 672;
      v167 = v135 + 1440;
      v84 = *(v135 + 12000);
      v168 = v135 + 10752;
      v169 = v84;
      v85 = *(v135 + 18064);
      v171 = *(v135 + 16480);
      v170 = v85;
      v173 = v135 + 12008;
      v174 = v135 + 13724;
      v175 = v135 + 14108;
      memcpy(v176, (v135 + 16592), sizeof(v176));
      v177 = v13;
      v86 = sub_12A644(*(v135 + 120), &v166, v135 + 128, *(v135 + 16), *(v135 + 112), *(v135 + 16472), *(v135 + 16496), v135 + 160, (v135 + 11772), (v135 + 11464));
      if (v86)
      {
        v35 = v86;
        if (sub_160EF0(3u, 4))
        {
          v87 = sub_160F34(3u);
          v77 = sub_175AE4();
          v78 = sub_160F68(4);
          if (!v87)
          {
LABEL_133:
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.");
            goto LABEL_134;
          }

          v79 = 5272;
LABEL_94:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v77, 3, v78, "AVE_Session_AVC_Process", v79, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
          goto LABEL_133;
        }

LABEL_134:
        v30 = -1000;
        goto LABEL_135;
      }

LABEL_95:
      *(v135 + 16464) = 30568;
      bzero(v163, 0x1738uLL);
      v136 = 0;
      v144 = 0u;
      v145 = 0u;
      v146 = 0u;
      memset(v147, 0, sizeof(v147));
      v148 = 0u;
      memset(v149, 0, sizeof(v149));
      v150 = 0u;
      v151 = 0u;
      v152 = 0u;
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0;
      bzero(&v166, 0x4A40uLL);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"ResetRCState");
        if (Value)
        {
          if (CFEqual(Value, kCFBooleanTrue))
          {
            v13 = sub_175AE4();
            v136 = v13;
            sub_12D170(*(v135 + 120), &v136);
          }
        }
      }

      *&v147[1] = v156;
      v148 = v154;
      v143[0] = v130;
      v143[1] = pixelBuffer;
      v147[3] = v157;
      v149[0] = v155;
      *&v149[1] = v153;
      *(&v150 + 1) = v163;
      *&v151 = v13;
      DWORD2(v151) = *(v135 + 16508);
      *&v150 = &v166;
      if (*(v135 + 10804) == 2)
      {
        sub_15F768(pixelBuffer, &v137);
        sub_CD91C(*(v135 + 18064), *(v135 + 16508), *(v135 + 16468), &v137);
      }

      v149[3] = &v137;
      if ((*(v135 + 1337) & 2) != 0 && *(v135 + 76) >= 4 && !sub_133F6C(theDict, v164))
      {
        memset(v162, 0, sizeof(v162));
        __dst = *(v135 + 16468);
        sub_172100(v162, 32, "%llu %d %d", v89, v90, v91, v92, v93, *(v135 + 56));
        sub_133ED0(v164, 47, 6, v162, 0, v94, v95, v96);
        v165 = v165 & 0xFFFFFDFF | ((v164[0] > 0) << 9);
      }

      v97 = CMGetAttachment(pixelBuffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
      if (v97)
      {
        sub_1C324(*(v135 + 16488), *(v135 + 16468), v97);
      }

      sub_207A4(*(v135 + 16488), *(v135 + 16468));
      sub_20464(*(v135 + 16488), *(v135 + 16468), *(v135 + 56));
      sub_1D808(*(v135 + 16488), *(v135 + 16468), *&v138);
      sub_1DC50(*(v135 + 16488), *(v135 + 16468), *&v137);
      sub_1CE6C(*(v135 + 16488), *(v135 + 16468), SDWORD1(v141));
      sub_1F124(*(v135 + 16488), *(v135 + 16468), *(v133 + 2), *v133);
      v30 = sub_F1DC8(v135, theDict, v163, &v166, v143);
      if (!*(v135 + 11476))
      {
        sub_F3720(v135, &v166, *v149[3]);
      }

      if (*(v135 + 16508))
      {
        if (*(v135 + 16496))
        {
          v98 = sub_F3858(v135, &v156);
          if (v98)
          {
            v35 = v98;
            if (sub_160EF0(3u, 4))
            {
              v99 = sub_160F34(3u);
              v100 = sub_175AE4();
              v101 = sub_160F68(4);
              if (v99)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264MultipassDataFetch failed.\n", v100, 3, v101, "AVE_Session_AVC_Process", 5404, "err == noErr");
                sub_175AE4();
                sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264MultipassDataFetch failed.");
            }

            goto LABEL_134;
          }
        }
      }

      *(&v152 + 1) = *(v135 + 16468);
      if (v159)
      {
        v102 = pixelBuffer;
      }

      else
      {
        v102 = 0;
      }

      *(&v146 + 1) = v102;
      v103 = sub_12D95C(*(v135 + 120), v143);
      if (v103)
      {
        v35 = v103;
        if (v103 == -536870173)
        {
          v35 = 3758097123;
          if (sub_160EF0(0x10u, 5))
          {
            v104 = sub_160F34(0x10u);
            v105 = sub_175AE4();
            v106 = sub_160F68(5);
            if (v104)
            {
              printf("%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame\n", v105, 16, v106);
              sub_175AE4();
              sub_160F68(5);
            }

            syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame");
          }
        }

        else if (sub_160EF0(3u, 4))
        {
          v107 = sub_160F34(3u);
          v108 = sub_175AE4();
          v109 = sub_160F68(4);
          if (v107)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.\n", v108, 3, v109, "AVE_Session_AVC_Process", 5429, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.");
        }

        goto LABEL_134;
      }

      if (!v30)
      {
        v35 = 0;
        ++*(v135 + 16468);
        goto LABEL_135;
      }

LABEL_70:
      v35 = 0;
      goto LABEL_135;
    }

    v35 = v49;
    if (sub_160EF0(3u, 4))
    {
      v50 = sub_160F34(3u);
      v51 = sub_175AE4();
      v52 = sub_160F68(4);
      if (v50)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed\n", v51, 3, v52, "AVE_Session_AVC_Process", 5227, "err == 0");
        v53 = sub_175AE4();
        v119 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed", v53, 3, v119, "AVE_Session_AVC_Process", 5227, "err == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed", v51, 3, v52, "AVE_Session_AVC_Process", 5227, "err == 0");
      }
    }

    v30 = v35;
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v25 = sub_160F34(0xCu);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v26, 12, v27, "AVE_Session_AVC_Process", 5096, "pINS != __null && imageBuffer != __null && pRect != __null && pPTS != __null && pDuration != __null", v135, v130, pixelBuffer, v132, v133, v134, theDict);
        v28 = sub_175AE4();
        v117 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v28, 12, v117, "AVE_Session_AVC_Process", 5096, "pINS != __null && imageBuffer != __null && pRect != __null && pPTS != __null && pDuration != __null", v135);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v26, 12, v27, "AVE_Session_AVC_Process", 5096, "pINS != __null && imageBuffer != __null && pRect != __null && pPTS != __null && pDuration != __null", v135);
      }
    }

    v35 = 0;
    v30 = -1001;
  }

LABEL_135:
  if (sub_160EF0(0xCu, 7))
  {
    v110 = sub_160F34(0xCu);
    v111 = sub_175AE4();
    v112 = sub_160F68(7);
    if (v110)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v111, 12, v112, "AVE_Session_AVC_Process", v135, v130, pixelBuffer, v132, v133, v134, theDict, v30);
      v113 = sub_175AE4();
      v120 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v113, 12, v120, "AVE_Session_AVC_Process", v135, v130);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v111, 12, v112, "AVE_Session_AVC_Process", v135, v130);
    }
  }

  return v35;
}

uint64_t sub_EB66C(uint64_t a1, CVPixelBufferRef *a2, _BYTE *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, char a7)
{
  v68 = 0;
  v14 = (a1 + 16448);
  v15 = a1 + 10171;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  HIDWORD(v62) = PixelFormatType;
  v17 = v14[24];
  if (!v17)
  {
    v17 = *(a1 + 1440);
  }

  v54 = v17;
  v18 = v14[25];
  if (!v18)
  {
    v18 = *(a1 + 1444);
  }

  v55 = v18;
  v19 = *(a1 + 10772);
  v56 = vrev64_s32(*(a1 + 64));
  v57 = *(a1 + 716);
  v58 = v19;
  v20 = *(a1 + 10892);
  v59 = *(a1 + 10752);
  v60 = v20;
  LODWORD(v62) = *(a1 + 10860);
  BYTE4(v62) = *(a1 + 692) > 0;
  DWORD2(v62) = *(a1 + 10804);
  HIBYTE(v68) = *(a1 + 76) > 11;
  if (*(v15 + 3013) == 1)
  {
    v61 = *(v15 + 3017);
  }

  if (v14[5] && *(a1 + 11972) != PixelFormatType)
  {
    v21 = *(a1 + 56);
    kdebug_trace();
    v22 = sub_DDF24(&v54, a2, (a1 + 16568), *(a1 + 11972));
    v23 = *(a1 + 56);
    v24 = v14[5];
    v25 = *(a1 + 11972);
    kdebug_trace();
    if (v22)
    {
      if (sub_160EF0(3u, 4))
      {
        v26 = sub_160F34(3u);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        v29 = *(a1 + 11972);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.\n", v27, 3, v28, "AVE_AVC_VerifyImageBuffer", 2946, "err == noErr", *a2, HIDWORD(v62), *(a1 + 11972), v22);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          v30 = *a2;
        }

        v51 = *(a1 + 11972);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", v27, 3, v28);
      }

      return v22;
    }

    *a4 = 1;
  }

  v22 = sub_DCDC0(&v54, a2, (a1 + 16560));
  if (v22)
  {
    return v22;
  }

  *a3 = v68;
  v32 = DWORD1(v66);
  *a5 = v66;
  *a6 = v32;
  if (*(a1 + 76) < 12)
  {
    *(v15 + 351) = BYTE1(v68);
  }

  else
  {
    *(v15 + 351) = 0;
    if (v54 != *(a1 + 1440) || v55 != *(a1 + 1444))
    {
      v33 = 1;
      goto LABEL_22;
    }
  }

  v33 = BYTE2(v68);
LABEL_22:
  *(v15 + 679) = v33;
  v34 = DWORD1(v64);
  *(v15 + 33) = (DWORD1(v64) & 0xFFFFFFFE) == 2;
  if (v34 == 3)
  {
    *(v15 + 358) = BYTE12(v64);
  }

  if (*(a1 + 10752) == 2)
  {
    *(a1 + 10864) = DWORD2(v66);
    *(v15 + 697) = *(&v65 + 1);
    *(v15 + 705) = vuzp2q_s32(vextq_s8(v67, v67, 4uLL), v67);
    if (a7)
    {
      *(a1 + 10768) = HIDWORD(v62);
LABEL_29:
      v36 = DWORD2(v63);
      v37 = v63;
      *(a1 + 12044) = DWORD2(v63);
      *(a1 + 10188) = v36;
      *(a1 + 10192) = v37;
      *v15 = DWORD1(v64) != 1;
      *(v15 + 610) = 1;
      if (*(a1 + 10892) == 37 && v36 == 3)
      {
        *(v15 + 685) = 1;
        *(a1 + 1088) &= ~2uLL;
      }
    }
  }

  else if (a7)
  {
    v35 = HIDWORD(v62);
    *(a1 + 10768) = HIDWORD(v62);
    if (!v14[5])
    {
      v43 = *(a1 + 12052) + 8;
      if (v43 <= *(a1 + 12056) + 8)
      {
        v43 = *(a1 + 12056) + 8;
      }

      v44 = sub_DDADC(*(a1 + 68), *(a1 + 64), *(a1 + 716), 1, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v43, *v14, v35, *(a1 + 16));
      if (v44)
      {
        v45 = v44;
        if (sub_160EF0(0x1Eu, 5))
        {
          v46 = sub_160F34(0x1Eu);
          v47 = sub_175AE4();
          v48 = sub_160F68(5);
          if (v46)
          {
            printf("%lld %d AVE %s: %s:%d fail to update pixel buffer dictionary %p %lld %d %d\n", v47, 30, v48, "AVE_AVC_VerifyImageBuffer", 3018, a1, *(a1 + 56), 0, v45);
            v47 = sub_175AE4();
            sub_160F68(5);
            v49 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d fail to update pixel buffer dictionary %p %lld %d %d", v47, 30);
        }
      }
    }

    goto LABEL_29;
  }

  if (v14[5])
  {
    if (*(a1 + 11972) == HIDWORD(v62))
    {
      return 0;
    }

    else
    {
      if (sub_160EF0(0xCu, 4))
      {
        v38 = sub_160F34(0xCu);
        v39 = sub_175AE4();
        v40 = sub_160F68(4);
        v41 = *(a1 + 11972);
        if (v38)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x\n", v39, 12, v40, "AVE_AVC_VerifyImageBuffer", 3051, "false", *(a1 + 56), v14[5], *(a1 + 11972), HIDWORD(v62));
          v39 = sub_175AE4();
          v40 = sub_160F68(4);
          v42 = *(a1 + 56);
          v52 = *(a1 + 11972);
          v50 = v14[5];
        }

        else
        {
          v53 = *(a1 + 11972);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x", v39, 12, v40);
      }

      return 4294954394;
    }
  }

  else
  {
    v22 = 0;
    *(a1 + 11972) = HIDWORD(v62);
  }

  return v22;
}

void sub_EBCB0(uint64_t a1, __CVBuffer *a2)
{
  if (sub_160EF0(0xCu, 7))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams\n", v5, 12, v6);
      v7 = sub_175AE4();
      v24 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams", v7, 12, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams", v5, 12, v6);
    }
  }

  if (*(a1 + 13184))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
    v9 = sub_167CD8(PixelFormatType);
    if (v9)
    {
      v10 = *(v9 + 3);
      *(a1 + 12044) = v10;
    }

    else
    {
      v10 = *(a1 + 12044);
    }

    v12 = v10 != 3 && v10 != 0;
    v13 = v10 == 1;
    v14 = *(a1 + 13196);
    if (v14)
    {
      if (v10 == 1)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      *(a1 + 13196) = ((v14 + v15 - 1) & ~v13) >> v13;
    }

    v16 = *(a1 + 13200);
    if (v16)
    {
      *(a1 + 13200) = ((v16 + v13) & ~v13) >> v13;
    }

    v17 = *(a1 + 13188);
    if (v17)
    {
      *(a1 + 13188) = ((v17 + v12) & ~v12) >> v12;
    }

    v18 = *(a1 + 13192);
    if (v18)
    {
      *(a1 + 13192) = ((v18 + v12) & ~v12) >> v12;
    }

    if (sub_160EF0(0x10u, 7))
    {
      v19 = sub_160F34(0x10u);
      v20 = sub_175AE4();
      v21 = sub_160F68(7);
      v22 = *(a1 + 13188);
      if (v19)
      {
        printf("%lld %d AVE %s: FIG: frame_crop_top_offset = %d frame_crop_bottom_offset %d frame_crop_left_offset = %d frame_crop_right_offset %d\n", v20, 16, v21, *(a1 + 13196), *(a1 + 13200), *(a1 + 13188), *(a1 + 13192));
        v20 = sub_175AE4();
        sub_160F68(7);
        v23 = *(a1 + 13196);
        v26 = *(a1 + 13188);
        v28 = *(a1 + 13192);
        v25 = *(a1 + 13200);
      }

      else
      {
        v27 = *(a1 + 13188);
      }

      syslog(3, "%lld %d AVE %s: FIG: frame_crop_top_offset = %d frame_crop_bottom_offset %d frame_crop_left_offset = %d frame_crop_right_offset %d", v20);
    }
  }
}

void sub_EBECC()
{
  if (sub_160EF0(0xCu, 7))
  {
    v0 = sub_160F34(0xCu);
    v1 = sub_175AE4();
    v2 = sub_160F68(7);
    if (v0)
    {
      printf("%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame\n", v1, 12, v2);
      v3 = sub_175AE4();
      v4 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame", v3, 12, v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame", v1, 12, v2);
    }
  }
}

uint64_t sub_EBF6C(uint64_t a1)
{
  v2 = sub_1502C8();
  v390 = 0;
  v389 = 0.0;
  if (sub_160EF0(0xCu, 7))
  {
    v3 = sub_160F34(0xCu);
    v4 = sub_175AE4();
    v5 = sub_160F68(7);
    if (v3)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters\n", v4, 12, v5);
      v6 = sub_175AE4();
      v318 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters", v6, 12, v318);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters", v4, 12, v5);
    }
  }

  v7 = *(a1 + 16856);
  if (v7 >= 0.0 && sub_E7BA4(a1, v7) && sub_160EF0(0x1Eu, 5))
  {
    v8 = sub_160F34(0x1Eu);
    v9 = sub_175AE4();
    v10 = sub_160F68(5);
    if (v8)
    {
      printf("%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]\n", v9, 30, v10);
      v11 = sub_175AE4();
      v319 = sub_160F68(5);
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]", v11, 30, v319);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]", v9, 30, v10);
    }
  }

  v12 = *(a1 + 16848);
  if (v12 >= 0.0 && sub_E7948(a1, v12) && sub_160EF0(0x1Eu, 5))
  {
    v13 = sub_160F34(0x1Eu);
    v14 = sub_175AE4();
    v15 = sub_160F68(5);
    if (v13)
    {
      printf("%lld %d AVE %s: FIG: kVTCompressionPropertyKey_Quality property supports values only in the range of [0,1]\n", v14, 30, v15);
      v16 = sub_175AE4();
      v320 = sub_160F68(5);
      syslog(3, "%lld %d AVE %s: FIG: kVTCompressionPropertyKey_Quality property supports values only in the range of [0,1]", v16, 30, v320);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: kVTCompressionPropertyKey_Quality property supports values only in the range of [0,1]", v14, 30, v15);
    }
  }

  if ((*(a1 + 1132) & 0xFFFFFFFE) == 6)
  {
    v17 = sub_16D34C(*(v2 + 206), *(a1 + 16828), &v390);
    if (v17)
    {
      v18 = v17;
      if (sub_160EF0(0x10u, 4))
      {
        v19 = sub_160F34(0x10u);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        v22 = *(v2 + 206);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d\n", v20, 16, v21, "AVE_ValidateEncoderParameters", 1921, "ret == 0", a1, *(a1 + 56), *(v2 + 206), *(a1 + 16828));
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          v23 = *(a1 + 56);
          v373 = *(v2 + 206);
          v379 = *(a1 + 16828);
        }

        else
        {
          v376 = *(v2 + 206);
          v382 = *(a1 + 16828);
          v367 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d", v20, 16, v21);
      }

      return v18;
    }

    *(a1 + 1208) = v390;
  }

  v24 = sub_16D7F4(*(a1 + 1120), &v389, v2[104], *(a1 + 17864), *(a1 + 16832));
  if (v24)
  {
    v18 = v24;
    if (sub_160EF0(0x10u, 4))
    {
      v25 = sub_160F34(0x10u);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      v28 = *(a1 + 1120);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %f %f %f 0x%llx\n", v26, 16, v27, "AVE_ValidateEncoderParameters", 1932, "ret == 0", a1, *(a1 + 56), v2[104], *(a1 + 17864), *(a1 + 16832), *(a1 + 1120));
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        v29 = *(a1 + 17864);
      }

      v386 = *(a1 + 1120);
      v380 = *(a1 + 17864);
      v384 = *(a1 + 16832);
      v374 = *(v2 + 104);
      v365 = *(a1 + 56);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %f %f %f 0x%llx", v26, 16, v27);
    }

    return v18;
  }

  v30 = v389;
  *(a1 + 1216) = v389;
  v31 = sub_16DDF4(*(a1 + 1120), &v389, v2[105], *(a1 + 17872), *(a1 + 16840), v30);
  if (!v31)
  {
    v38 = (a1 + 10168);
    *(a1 + 1224) = v389;
    v39 = *(a1 + 76);
    if (v39 >= 30)
    {
      v40 = *(a1 + 1336);
      if ((v40 & 0x200) != 0)
      {
        if (sub_160EF0(0x10u, 5))
        {
          v41 = sub_160F34(0x10u);
          v42 = sub_175AE4();
          v43 = sub_160F68(5);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d current SoC doesn't support ANFD.\n", v42, 16, v43, "AVE_ValidateEncoderParameters", 1956);
            v44 = sub_175AE4();
            v321 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support ANFD.", v44, 16, v321, "AVE_ValidateEncoderParameters", 1956);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support ANFD.", v42, 16, v43, "AVE_ValidateEncoderParameters", 1956);
          }
        }

        v40 = *(a1 + 1336) & 0xFFFFFDFF;
        *(a1 + 1336) = v40;
      }

      if ((v40 & 0x40) != 0)
      {
        if (sub_160EF0(0x10u, 5))
        {
          v46 = sub_160F34(0x10u);
          v47 = sub_175AE4();
          v48 = sub_160F68(5);
          if (v46)
          {
            printf("%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA.\n", v47, 16, v48, "AVE_ValidateEncoderParameters", 1963);
            v49 = sub_175AE4();
            v322 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA.", v49, 16, v322, "AVE_ValidateEncoderParameters", 1963);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA.", v47, 16, v48, "AVE_ValidateEncoderParameters", 1963);
          }
        }

        *(a1 + 1336) &= ~0x40u;
      }

      if (*(a1 + 10248) == 1)
      {
        if (sub_160EF0(3u, 4))
        {
          v50 = sub_160F34(3u);
          v51 = sub_175AE4();
          v52 = sub_160F68(4);
          if (v50)
          {
            printf("%lld %d AVE %s: %s:%d %s | current SoC doesn't support SliceEncodingMode. Fail.\n", v51, 3, v52, "AVE_ValidateEncoderParameters", 1968, "!pINS->VideoParams.bSliceEncodingMode");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | current SoC doesn't support SliceEncodingMode. Fail.");
        }

        return 4294966295;
      }

      v39 = *(a1 + 76);
    }

    if (v39 >= 17)
    {
      v53 = *(a1 + 716);
      if (*(a1 + 10752) == 2)
      {
        v53 &= 0xFFFFFC3F;
        *(a1 + 716) = v53;
      }

      if ((v53 & 0x3C0) != 0)
      {
        *(a1 + 716) = v53 & 0xFFFFFC3F;
        if (sub_160EF0(0x10u, 5))
        {
          v54 = sub_160F34(0x10u);
          v55 = sub_175AE4();
          v56 = sub_160F68(5);
          if (v54)
          {
            printf("%lld %d AVE %s: FIG: MCTF for AVC is not supported yet!\n", v55, 16, v56);
            v57 = sub_175AE4();
            v323 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: FIG: MCTF for AVC is not supported yet!", v57, 16, v323);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: MCTF for AVC is not supported yet!", v55, 16, v56);
          }
        }
      }
    }

    else
    {
      *(a1 + 716) &= 0xFFFFFC3F;
    }

    v58 = *(a1 + 1132);
    if (v58 == 4)
    {
      if (*(a1 + 16496))
      {
        if (sub_160EF0(3u, 4))
        {
          v63 = sub_160F34(3u);
          v64 = sub_175AE4();
          v65 = sub_160F68(4);
          if (v63)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: multiPassStorage and RC UsageMode = %d... not supported. fail\n", v64, 3, v65, "AVE_ValidateEncoderParameters", 2010, "false", *(a1 + 10892));
            v64 = sub_175AE4();
            v65 = sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: multiPassStorage and RC UsageMode = %d... not supported. fail", v64, 3, v65, "AVE_ValidateEncoderParameters", 2010, "false", *(a1 + 10892));
        }

        return 4294966296;
      }
    }

    else if (v58 == 20 && *(a1 + 10892) != 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v59 = sub_160F34(3u);
        v60 = sub_175AE4();
        v61 = sub_160F68(4);
        v62 = *(a1 + 10892);
        if (v59)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: Usage mode %d does not support eRCMode = %d. Fail.\n", v60, 3, v61, "AVE_ValidateEncoderParameters", 2001, "false", *(a1 + 10892), *(a1 + 1132));
          v60 = sub_175AE4();
          sub_160F68(4);
        }

        v350 = *(a1 + 10892);
        v368 = *(a1 + 1132);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Usage mode %d does not support eRCMode = %d. Fail.", v60);
      }

      return 4294966295;
    }

    v66 = *(a1 + 1120);
    if ((v66 & 0x80000000) == 0)
    {
      v67 = *(a1 + 1256);
      goto LABEL_85;
    }

    *(a1 + 1120) = v66 | 4;
    v67 = *(a1 + 1256);
    if (v67 == 2)
    {
      v67 = 3;
      *(a1 + 1256) = 3;
    }

    if (v58 != 4)
    {
LABEL_85:
      if (v67)
      {
        if (*(a1 + 76) >= 3)
        {
          if (v67 > 3)
          {
            if (sub_160EF0(0x10u, 5))
            {
              v79 = sub_160F34(0x10u);
              v80 = sub_175AE4();
              v81 = sub_160F68(5);
              v82 = *(a1 + 1256);
              if (v79)
              {
                printf("%lld %d AVE %s: %s:%d too many B frames (%d) max is %d. -> will gracefully default to the internal max!\n", v80, 16, v81, "AVE_ValidateEncoderParameters", 2061, *(a1 + 1256), 3);
                v80 = sub_175AE4();
                sub_160F68(5);
                v83 = *(a1 + 1256);
              }

              else
              {
                v343 = *(a1 + 1256);
              }

              syslog(3, "%lld %d AVE %s: %s:%d too many B frames (%d) max is %d. -> will gracefully default to the internal max!", v80);
            }

            *(a1 + 1256) = 3;
            v84 = *(a1 + 1240);
LABEL_112:
            v89 = *(a1 + 1264);
            if (v89 == 1)
            {
              *(a1 + 1268) = 0;
              *(a1 + 1272) = 0xBFF0000000000000;
              *(a1 + 1280) = 0xBFF0000000000000;
              *(a1 + 1252) = 0;
              *(a1 + 1260) = 1;
              v84 &= ~0x400u;
              *(a1 + 1240) = v84;
              *(a1 + 1288) = 1;
            }

            else if (v89 <= 0 && *(a1 + 1268) <= 0 && *(a1 + 1272) <= 0.0 && *(a1 + 1280) <= 0.0)
            {
              *(a1 + 1264) = 30;
            }

            if (!*(a1 + 1256))
            {
              v84 &= ~0x400u;
              *(a1 + 1240) = v84;
            }

            if (((*(a1 + 17884) | *(a1 + 17880)) & 0x400) == 0 && (v84 & 0x400) != 0 && (*(a1 + 1123) & 0x80) != 0)
            {
              *(a1 + 1240) = v84 & 0xFFFFFBFF;
            }

            if (*(a1 + 1232) <= -13)
            {
              *(a1 + 1232) = -6 * *(a1 + 12052);
            }

            if (*(a1 + 1236) <= -13)
            {
              if (*(a1 + 1132) == 20)
              {
                v90 = 51;
              }

              else
              {
                v90 = 48;
              }

              *(a1 + 1236) = v90;
            }

            if (*(a1 + 1344) <= -13)
            {
              *(a1 + 1344) = -6 * *(a1 + 12052);
            }

            v91 = (a1 + 1344);
            if (*(a1 + 1348) <= -13)
            {
              if (*(a1 + 1132) == 20)
              {
                v92 = 51;
              }

              else
              {
                v92 = 48;
              }

              *(a1 + 1348) = v92;
            }

            if (sub_17D104((a1 + 1344), *(a1 + 12052) + 8))
            {
              if (sub_160EF0(3u, 4))
              {
                v93 = sub_160F34(3u);
                v94 = sub_175AE4();
                v95 = sub_160F68(4);
                v96 = *(a1 + 1344);
                if (v93)
                {
                  printf("%lld %d AVE %s: %s:%d %s | FIG: Incorrect BlkQPRange [%d %d]\n", v94, 3, v95, "AVE_ValidateEncoderParameters", 2148, "false", *(a1 + 1344), *(a1 + 1348));
                  v94 = sub_175AE4();
                  sub_160F68(4);
                }

                v351 = *(a1 + 1344);
                v369 = *(a1 + 1348);
                syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Incorrect BlkQPRange [%d %d]", v94);
              }

              return 4294966295;
            }

            v97 = (a1 + 1232);
            if (sub_17D104((a1 + 1232), *(a1 + 12052) + 8))
            {
              if (sub_160EF0(3u, 4))
              {
                v98 = sub_160F34(3u);
                v99 = sub_175AE4();
                v100 = sub_160F68(4);
                v101 = *(a1 + 1232);
                if (v98)
                {
                  printf("%lld %d AVE %s: %s:%d %s | FIG: Incorrect RCQPRange [%d %d]\n", v99, 3, v100, "AVE_ValidateEncoderParameters", 2156, "false", *(a1 + 1232), *(a1 + 1236));
                  v99 = sub_175AE4();
                  sub_160F68(4);
                }

                v352 = *(a1 + 1232);
                v370 = *(a1 + 1236);
                syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Incorrect RCQPRange [%d %d]", v99);
              }

              return 4294966295;
            }

            if (*v97 < *v91)
            {
              *v97 = *v91;
            }

            v102 = *(a1 + 1348);
            if (*(a1 + 1236) > v102)
            {
              *(a1 + 1236) = v102;
            }

            v103 = *(a1 + 10252);
            if (v103 >= 33)
            {
              if (!sub_160EF0(3u, 4))
              {
                return 4294966295;
              }

              v110 = sub_160F34(3u);
              v111 = sub_175AE4();
              v112 = sub_160F68(4);
              v113 = *(v38 + 21);
              if (v110)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: too many slices (%d) max is %d for now (can be changed)\n", v111, 3, v112, "AVE_ValidateEncoderParameters", 2178, "pINS->VideoParams.sSliceMap.iNum <= ((32) < (256) ? (32) : (256))", *(v38 + 21), 32);
                v111 = sub_175AE4();
                v112 = sub_160F68(4);
              }

              v353 = *(v38 + 21);
              v364 = 32;
              v342 = 2178;
              v344 = "pINS->VideoParams.sSliceMap.iNum <= ((32) < (256) ? (32) : (256))";
              v326 = v112;
              v114 = "%lld %d AVE %s: %s:%d %s | FIG: too many slices (%d) max is %d for now (can be changed)";
            }

            else
            {
              if (v103)
              {
                v104 = *(a1 + 12008);
                if (v104 != 4)
                {
                  if (v104 != 2)
                  {
                    goto LABEL_198;
                  }

                  if (*(a1 + 13732))
                  {
                    if (sub_160EF0(0x10u, 5))
                    {
                      v105 = sub_160F34(0x10u);
                      v106 = sub_175AE4();
                      v107 = sub_160F68(5);
                      v108 = *(a1 + 12008);
                      if (v105)
                      {
                        printf("%lld %d AVE %s: profile %d and entropy_coding_mode_flag is not EntropyModeCAVLC. setting it to EntropyModeCAVLC.\n", v106, 16, v107, v108);
                        v109 = sub_175AE4();
                        v325 = sub_160F68(5);
                        syslog(3, "%lld %d AVE %s: profile %d and entropy_coding_mode_flag is not EntropyModeCAVLC. setting it to EntropyModeCAVLC.", v109, 16, v325, *(a1 + 12008));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: profile %d and entropy_coding_mode_flag is not EntropyModeCAVLC. setting it to EntropyModeCAVLC.", v106, 16, v107, v108);
                      }
                    }

                    *(a1 + 13732) = 0;
                  }
                }

                if (*(a1 + 13807) == 1)
                {
                  if (sub_160EF0(0x10u, 5))
                  {
                    v117 = sub_160F34(0x10u);
                    v118 = sub_175AE4();
                    v119 = sub_160F68(5);
                    v120 = *(a1 + 12008);
                    if (v117)
                    {
                      printf("%lld %d AVE %s: FIG: profile %d and transform_8x8_mode_flag is true. setting it to false.\n", v118, 16, v119, v120);
                      v121 = sub_175AE4();
                      v327 = sub_160F68(5);
                      syslog(3, "%lld %d AVE %s: FIG: profile %d and transform_8x8_mode_flag is true. setting it to false.", v121, 16, v327, *(a1 + 12008));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: profile %d and transform_8x8_mode_flag is true. setting it to false.", v118, 16, v119, v120);
                    }
                  }

                  *(a1 + 13807) = 0;
                  *(a1 + 10176) = 0;
                }

                if (*(a1 + 13808) == 1)
                {
                  if (sub_160EF0(0x10u, 5))
                  {
                    v122 = sub_160F34(0x10u);
                    v123 = sub_175AE4();
                    v124 = sub_160F68(5);
                    v125 = *(a1 + 12008);
                    if (v122)
                    {
                      printf("%lld %d AVE %s: FIG: profile %d and pic_scaling_matrix_present_flag is true. setting it to false.\n", v123, 16, v124, v125);
                      v126 = sub_175AE4();
                      v328 = sub_160F68(5);
                      syslog(3, "%lld %d AVE %s: FIG: profile %d and pic_scaling_matrix_present_flag is true. setting it to false.", v126, 16, v328, *(a1 + 12008));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: profile %d and pic_scaling_matrix_present_flag is true. setting it to false.", v123, 16, v124, v125);
                    }
                  }

                  *(a1 + 13808) = 0;
                }

                v127 = 0;
                v128 = a1 + 13812;
                do
                {
                  if (*(v128 + v127) >= 1)
                  {
                    if (sub_160EF0(0x10u, 5))
                    {
                      v129 = sub_160F34(0x10u);
                      v130 = sub_175AE4();
                      v131 = sub_160F68(5);
                      v132 = *(a1 + 12008);
                      if (v129)
                      {
                        printf("%lld %d AVE %s: FIG: profile %d and second_chroma_qp_index_offset is > 0. setting it to 0.\n", v130, 16, v131, v132);
                        v130 = sub_175AE4();
                        v131 = sub_160F68(5);
                        v132 = *(a1 + 12008);
                      }

                      syslog(3, "%lld %d AVE %s: FIG: profile %d and second_chroma_qp_index_offset is > 0. setting it to 0.", v130, 16, v131, v132);
                    }

                    *(v128 + v127) = 0;
                  }

                  v127 += 4;
                }

                while (v127 != 32);
                v104 = *(a1 + 12008);
LABEL_198:
                if (v104 != 6 && v104 != 0)
                {
                  goto LABEL_221;
                }

                v134 = *(a1 + 12044);
                v135 = sub_160EF0(0x10u, 6);
                if (v134 == 3)
                {
                  if (v135)
                  {
                    v141 = sub_160F34(0x10u);
                    v142 = sub_175AE4();
                    v143 = sub_160F68(6);
                    v144 = *(a1 + 12008);
                    if (v141)
                    {
                      printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v142, 16, v143, "AVE_ValidateEncoderParameters", 2245, *(a1 + 12008), 9);
                      v142 = sub_175AE4();
                      sub_160F68(6);
                      v145 = *(a1 + 12008);
                    }

                    else
                    {
                      v346 = *(a1 + 12008);
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v142);
                  }

                  v151 = 9;
                }

                else
                {
                  if (v134 != 2)
                  {
                    if (v135)
                    {
                      v146 = sub_160F34(0x10u);
                      v147 = sub_175AE4();
                      v148 = sub_160F68(6);
                      v149 = *(a1 + 12044);
                      if (v146)
                      {
                        printf("%lld %d AVE %s: %s:%d chroma format idc %d profile %d\n", v147, 16, v148, "AVE_ValidateEncoderParameters", 2251, *(a1 + 12044), *(a1 + 12008));
                        v147 = sub_175AE4();
                        sub_160F68(6);
                        v150 = *(a1 + 12044);
                        v354 = *(a1 + 12008);
                      }

                      else
                      {
                        v347 = *(a1 + 12044);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d chroma format idc %d profile %d", v147);
                    }

LABEL_221:
                    *(a1 + 1368) = sub_FB108(*(v2 + 256), *(a1 + 18004), *(a1 + 68), *(a1 + 76), *(a1 + 64), 1, *(a1 + 12044), *(a1 + 16628), *(a1 + 10892), *(a1 + 692), *(a1 + 1112) * ((*(a1 + 1440) + 15) >> 4) * ((*(a1 + 1444) + 15) >> 4), *(a1 + 1440), *(a1 + 1444));
                    if (*(a1 + 76) >= 30 && !*(a1 + 692) && *(a1 + 16628) >= 1)
                    {
                      *(a1 + 688) |= 0x100u;
                      *(a1 + 1256) = 0;
                      *(a1 + 1240) &= 0xFFFFFAFF;
                    }

                    if (*(a1 + 1308) > 1)
                    {
                      if ((v152 = *(a1 + 10892), v152 <= 0x26) && ((1 << v152) & 0x6000100000) != 0 || v152 == 10000)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v153 = sub_160F34(0x10u);
                          v154 = sub_175AE4();
                          v155 = sub_160F68(5);
                          v156 = *(a1 + 10892);
                          v157 = *(a1 + 1308);
                          if (v153)
                          {
                            printf("%lld %d AVE %s: FIG: usageMode = %d and reference number of P %d -> 1\n", v154, 16, v155, *(a1 + 10892), v157);
                            v158 = sub_175AE4();
                            v159 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and reference number of P %d -> 1", v158, 16, v159, *(a1 + 10892), *(a1 + 1308));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and reference number of P %d -> 1", v154, 16, v155, *(a1 + 10892), v157);
                          }
                        }

                        *(a1 + 1308) = 1;
                      }
                    }

                    if (*(a1 + 12060) == 1)
                    {
                      v160 = *(a1 + 10892);
                      if (v160 <= 0x26 && ((1 << v160) & 0x6000100002) != 0 || v160 == 10000)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v161 = sub_160F34(0x10u);
                          v162 = sub_175AE4();
                          v163 = sub_160F68(5);
                          v164 = *(a1 + 10892);
                          if (v161)
                          {
                            printf("%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.\n", v162, 16, v163, v164);
                            v165 = sub_175AE4();
                            v329 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.", v165, 16, v329, *(a1 + 10892));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.", v162, 16, v163, v164);
                          }
                        }

                        *(a1 + 12060) = 0;
                      }

                      if (*(a1 + 12008) != 9)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v166 = sub_160F34(0x10u);
                          v167 = sub_175AE4();
                          v168 = sub_160F68(5);
                          v169 = *(a1 + 12008);
                          if (v166)
                          {
                            printf("%lld %d AVE %s: profile %d and bIsLossless is true not supported. Set to High444P.\n", v167, 16, v168, v169);
                            v170 = sub_175AE4();
                            v330 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: profile %d and bIsLossless is true not supported. Set to High444P.", v170, 16, v330, *(a1 + 12008));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: profile %d and bIsLossless is true not supported. Set to High444P.", v167, 16, v168, v169);
                          }
                        }

                        *(a1 + 12008) = 9;
                        *(a1 + 12036) = 17;
                      }

                      if (*(a1 + 1132) != 3)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v171 = sub_160F34(0x10u);
                          v172 = sub_175AE4();
                          v173 = sub_160F68(5);
                          v174 = *(a1 + 1132);
                          if (v171)
                          {
                            printf("%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.\n", v172, 16, v173, v174);
                            v175 = sub_175AE4();
                            v331 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.", v175, 16, v331, *(a1 + 1132));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.", v172, 16, v173, v174);
                          }
                        }

                        *(a1 + 1132) = 3;
                      }

                      if (*(a1 + 1336))
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v176 = sub_160F34(0x10u);
                          v177 = sub_175AE4();
                          v178 = sub_160F68(5);
                          v179 = *(a1 + 1336);
                          if (v176)
                          {
                            printf("%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0.\n", v177, 16, v178, "AVE_ValidateEncoderParameters", 2350, v179);
                            v180 = sub_175AE4();
                            v181 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0.", v180, 16, v181, "AVE_ValidateEncoderParameters", 2350, *(a1 + 1336));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0.", v177, 16, v178, "AVE_ValidateEncoderParameters", 2350, v179);
                          }
                        }

                        *(a1 + 1336) = 0;
                      }

                      if ((*(a1 + 1352) & 0x1E) != 0)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v182 = sub_160F34(0x10u);
                          v183 = sub_175AE4();
                          v184 = sub_160F68(5);
                          v185 = *(a1 + 1352);
                          if (v182)
                          {
                            printf("%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0\n", v183, 16, v184, v185);
                            v186 = sub_175AE4();
                            v332 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0", v186, 16, v332, *(a1 + 1352));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0", v183, 16, v184, v185);
                          }
                        }

                        *(a1 + 1352) = 0;
                      }

                      v187 = -6 * *(a1 + 12052);
                      *(a1 + 1348) = v187;
                      *(a1 + 1344) = v187;
                      *(a1 + 1236) = v187;
                      *(a1 + 1232) = v187;
                      *(a1 + 1152) = v187;
                      *(a1 + 1148) = v187;
                      *(a1 + 1144) = v187;
                      if (*(a1 + 13732) == 1)
                      {
                        v188 = ((*(a1 + 1440) >> 4) + 31) & 0x1FFFFFE0;
                        if (v188 > 0x100 || (*(a1 + 1444) >> 4) * v188 > 0xC000)
                        {
                          if (sub_160EF0(0x10u, 5))
                          {
                            v189 = sub_160F34(0x10u);
                            v190 = sub_175AE4();
                            v191 = sub_160F68(5);
                            v192 = *(a1 + 1440);
                            v193 = *(a1 + 1444);
                            v194 = *(a1 + 13732);
                            if (v189)
                            {
                              printf("%lld %d AVE %s: FIG: ui32Width and ui32Height = (%d,%d), bIsLossless is true and entropy_coding_mode_flag = %d not supported. Set it to cavlc.\n", v190, 16, v191, v192, *(a1 + 1444), v194);
                              v195 = sub_175AE4();
                              v196 = sub_160F68(5);
                              syslog(3, "%lld %d AVE %s: FIG: ui32Width and ui32Height = (%d,%d), bIsLossless is true and entropy_coding_mode_flag = %d not supported. Set it to cavlc.", v195, 16, v196, *(a1 + 1440), *(a1 + 1444), *(a1 + 13732));
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: FIG: ui32Width and ui32Height = (%d,%d), bIsLossless is true and entropy_coding_mode_flag = %d not supported. Set it to cavlc.", v190, 16, v191, v192, *(a1 + 1444), v194);
                            }
                          }

                          *(a1 + 13732) = 0;
                        }
                      }

                      if (*(a1 + 1464))
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v197 = sub_160F34(0x10u);
                          v198 = sub_175AE4();
                          v199 = sub_160F68(5);
                          v200 = *(a1 + 1464);
                          if (v197)
                          {
                            printf("%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.\n", v198, 16, v199, v200);
                            v201 = sub_175AE4();
                            v333 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.", v201, 16, v333, *(a1 + 1464));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.", v198, 16, v199, v200);
                          }
                        }

                        *(a1 + 1464) = 0;
                      }

                      if ((*(a1 + 1336) & 0x40) != 0)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v202 = sub_160F34(0x10u);
                          v203 = sub_175AE4();
                          v204 = sub_160F68(5);
                          v205 = *(a1 + 1336);
                          if (v202)
                          {
                            printf("%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.\n", v203, 16, v204, v205);
                            v206 = sub_175AE4();
                            v334 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.", v206, 16, v334, *(a1 + 1336));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.", v203, 16, v204, v205);
                          }
                        }

                        *(a1 + 1336) &= ~0x40u;
                      }
                    }

                    v207 = *(a1 + 11460);
                    if (v207 >= *(a1 + 1112))
                    {
                      *(a1 + 11460) = 0;
                      *(a1 + 1288) = 1;
                      v212 = *(a1 + 1256) == 0;
                    }

                    else if (*(a1 + 1256))
                    {
                      if (v207 < 1)
                      {
                        v212 = 0;
                      }

                      else
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v208 = sub_160F34(0x10u);
                          v209 = sub_175AE4();
                          v210 = sub_160F68(5);
                          if (v208)
                          {
                            printf("%lld %d AVE %s: FIG: Disable B frames (and honor the iAverageNonDroppableFrameRate request)\n", v209, 16, v210);
                            v211 = sub_175AE4();
                            v335 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: Disable B frames (and honor the iAverageNonDroppableFrameRate request)", v211, 16, v335);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: Disable B frames (and honor the iAverageNonDroppableFrameRate request)", v209, 16, v210);
                          }
                        }

                        *(a1 + 1256) = 0x100000000;
                        v212 = 1;
                        *(a1 + 1288) = 1;
                        *(a1 + 1240) &= ~0x400u;
                      }
                    }

                    else
                    {
                      v212 = 1;
                    }

                    if ((*(a1 + 10764) & 1) == 0)
                    {
                      if (*(a1 + 1132) == 20)
                      {
                        v212 = 1;
                      }

                      if (!v212)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v213 = sub_160F34(0x10u);
                          v214 = sub_175AE4();
                          v215 = sub_160F68(5);
                          v216 = *(a1 + 1132);
                          v217 = *(a1 + 1256);
                          if (v213)
                          {
                            printf("%lld %d AVE %s: FIG: eRCMode %d bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true\n", v214, 16, v215, *(a1 + 1132), v217);
                            v218 = sub_175AE4();
                            v219 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: eRCMode %d bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true", v218, 16, v219, *(a1 + 1132), *(a1 + 1256));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: eRCMode %d bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true", v214, 16, v215, *(a1 + 1132), v217);
                          }
                        }

                        *(a1 + 10764) = 1;
                      }
                    }

                    if (*(a1 + 16496))
                    {
                      *(a1 + 10540) = 1;
                    }

                    if (*(a1 + 1256) && *(a1 + 1476) == 1)
                    {
                      if (sub_160EF0(0x10u, 5))
                      {
                        v220 = sub_160F34(0x10u);
                        v221 = sub_175AE4();
                        v222 = sub_160F68(5);
                        v223 = *(a1 + 1256);
                        if (v220)
                        {
                          printf("%lld %d AVE %s: FIG: BFrames = %d and LowDelay is true. Default to regular BFrames case.\n", v221, 16, v222, v223);
                          v224 = sub_175AE4();
                          v336 = sub_160F68(5);
                          syslog(3, "%lld %d AVE %s: FIG: BFrames = %d and LowDelay is true. Default to regular BFrames case.", v224, 16, v336, *(a1 + 1256));
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: FIG: BFrames = %d and LowDelay is true. Default to regular BFrames case.", v221, 16, v222, v223);
                        }
                      }

                      *(a1 + 1476) = 0;
                    }

                    if (!sub_E71EC(*(a1 + 68), 1, 1, *v38))
                    {
                      if (sub_160EF0(3u, 4))
                      {
                        v234 = sub_160F34(3u);
                        v235 = sub_175AE4();
                        v236 = sub_160F68(4);
                        if (v234)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | FIG: invalid search_range\n", v235, 3, v236, "AVE_ValidateEncoderParameters", 2473, "pEntry != __null");
                          sub_175AE4();
                          sub_160F68(4);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: invalid search_range");
                      }

                      return 4294966295;
                    }

                    if (*(a1 + 10857) == 1 && (*(a1 + 10783) & 1) == 0 && *(a1 + 1132) != 4 && !*(a1 + 16496) && (*(a1 + 10858) & 1) == 0)
                    {
                      if (*(a1 + 10904) == 1)
                      {
                        *(a1 + 1352) = 0;
                        *(a1 + 1336) = 0;
                      }

                      *(a1 + 10764) = 1;
                    }

                    if ((*(a1 + 10904) & 1) != 0 || (*(a1 + 716) & 0x3C0) != 0 || *(a1 + 16496))
                    {
                      *(a1 + 1128) = 0;
                      *(a1 + 1120) &= ~0x80000000uLL;
                    }

                    else if ((*(a1 + 1123) & 0x80) != 0)
                    {
                      *(a1 + 11460) = 0;
                      *(a1 + 1104) |= 0x40uLL;
                    }

                    v225 = *(a1 + 1336);
                    if ((v225 & 0x40) != 0)
                    {
                      v226 = *(a1 + 1440) >> 4;
                      v227 = *(a1 + 1444) >> 4;
                      v228 = (v226 + 31) & 0x1FFFFFE0;
                      if (v228 > 0x80 || v228 * v227 >= 0x2D01)
                      {
                        v229 = (((v226 + 1) >> 1) + 31) & 0x1FFFFFE0;
                        if (v229 > 0x80 || v229 * ((v227 + 1) >> 1) >= 0x2D01)
                        {
                          v225 &= ~0x40u;
                          *(a1 + 1336) = v225;
                        }
                      }
                    }

                    if (*(a1 + 11792) >= 0x1Fu)
                    {
                      if (sub_160EF0(0x10u, 5))
                      {
                        v230 = sub_160F34(0x10u);
                        v231 = sub_175AE4();
                        v232 = sub_160F68(5);
                        if (v230)
                        {
                          printf("%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM\n", v231, 16, v232, 30);
                          v233 = sub_175AE4();
                          v337 = sub_160F68(5);
                          syslog(3, "%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM", v233, 16, v337, 30);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM", v231, 16, v232, 30);
                        }
                      }

                      *(a1 + 11792) = 30;
                      v225 = *(a1 + 1336);
                    }

                    if ((v225 & 0x10) != 0)
                    {
                      v237 = *(a1 + 1132);
                      if (v237 <= 0x14 && ((1 << v237) & 0x100009) != 0)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v238 = sub_160F34(0x10u);
                          v239 = sub_175AE4();
                          v240 = sub_160F68(5);
                          v241 = *(a1 + 1132);
                          if (v238)
                          {
                            printf("%lld %d AVE %s: %s:%d eRCMode 0x%x QPMod feature 0x%08x (!= 0) is not supported. set QPMod feature to 0\n", v239, 16, v240, "AVE_ValidateEncoderParameters", 2560, *(a1 + 1132), *(a1 + 1336));
                            v239 = sub_175AE4();
                            sub_160F68(5);
                            v242 = *(a1 + 1132);
                            v355 = *(a1 + 1336);
                          }

                          else
                          {
                            v348 = *(a1 + 1132);
                          }

                          syslog(3, "%lld %d AVE %s: %s:%d eRCMode 0x%x QPMod feature 0x%08x (!= 0) is not supported. set QPMod feature to 0", v239);
                        }

                        v225 = 0;
                        *(a1 + 1336) = 0;
                        v237 = *(a1 + 1132);
                      }

                      if (v237 == 100)
                      {
                        if (sub_160EF0(3u, 4))
                        {
                          v243 = sub_160F34(3u);
                          v244 = sub_175AE4();
                          v245 = sub_160F68(4);
                          v246 = *(a1 + 1132);
                          if (v243)
                          {
                            printf("%lld %d AVE %s: %s:%d %s | %s:%d eRCMode 0x%x and AVE_QPMOD_FEATURE_FLAT_AREA (QPMod feature: 0x%08x) is not supported.\n", v244, 3, v245, "AVE_ValidateEncoderParameters", 2569, "pINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_HwVal", "AVE_ValidateEncoderParameters", 2569, *(a1 + 1132), *(a1 + 1336));
                            v244 = sub_175AE4();
                            v245 = sub_160F68(4);
                          }

                          v377 = *(a1 + 1132);
                          v383 = *(a1 + 1336);
                          syslog(3, "%lld %d AVE %s: %s:%d %s | %s:%d eRCMode 0x%x and AVE_QPMOD_FEATURE_FLAT_AREA (QPMod feature: 0x%08x) is not supported.", v244, 3, v245);
                        }

                        return 4294966295;
                      }
                    }

                    if ((v225 & 0x8010) == 0x8000 && *(a1 + 1132) == 1)
                    {
                      v225 &= 0xFFFF7FEF;
                      *(a1 + 1336) = v225;
                    }

                    if ((*(a1 + 1123) & 0x80) != 0)
                    {
                      v247 = *(a1 + 1240) | 0x30000;
                      v248 = v225 & 0xFFFFFFAF;
                      v249 = *(a1 + 1132);
                      if (v249 == 8 || v249 == 6)
                      {
                        v248 |= 0x30u;
                      }

                      *(a1 + 1336) = (v248 | *(v2 + 237)) & ~*(v2 + 238);
                      *(a1 + 1240) = (*(v2 + 218) | v247) & ~*(v2 + 219);
                      if (sub_160EF0(0x10u, 6))
                      {
                        v250 = sub_160F34(0x10u);
                        v251 = sub_175AE4();
                        v252 = sub_160F68(6);
                        if (v250)
                        {
                          printf("%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled\n", v251, 16, v252);
                          v253 = sub_175AE4();
                          v338 = sub_160F68(6);
                          syslog(3, "%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled", v253, 16, v338);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled", v251, 16, v252);
                        }
                      }
                    }

                    v254 = *(a1 + 10244);
                    if (v254 != 1)
                    {
                      v255 = *(a1 + 1132);
                      if (v255 && v255 != 20)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v256 = sub_160F34(0x10u);
                          v257 = sub_175AE4();
                          v258 = sub_160F68(5);
                          v259 = *(a1 + 1132);
                          if (v256)
                          {
                            printf("%lld %d AVE %s: FIG: Multiple PPSs and eRCMode %d is not supported. Forcing the PPS count to 1\n", v257, 16, v258, v259);
                            v260 = sub_175AE4();
                            v339 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: Multiple PPSs and eRCMode %d is not supported. Forcing the PPS count to 1", v260, 16, v339, *(a1 + 1132));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: Multiple PPSs and eRCMode %d is not supported. Forcing the PPS count to 1", v257, 16, v258, v259);
                          }
                        }

                        v254 = 1;
                        *(a1 + 10244) = 1;
                      }

                      v261.i64[0] = 0xC0000000CLL;
                      v261.i64[1] = 0xC0000000CLL;
                      v262.i64[0] = 0x100000001;
                      v262.i64[1] = 0x100000001;
                      v263 = vaddvq_s32(vsubq_s32(vbicq_s8(v262, vceqq_s32(*(a1 + 13772), v261)), vmvnq_s8(vceqq_s32(*(a1 + 13788), v261))));
                      if (v254 != v263)
                      {
                        if (sub_160EF0(3u, 4))
                        {
                          v268 = sub_160F34(3u);
                          v269 = sub_175AE4();
                          v270 = sub_160F68(4);
                          v271 = *(a1 + 10244);
                          if (v268)
                          {
                            printf("%lld %d AVE %s: %s:%d %s | FIG: PPS count = %d and ch_qp_index_offset_cnt = %d... are not compatible. fail\n", v269, 3, v270, "AVE_ValidateEncoderParameters", 2642, "pINS->VideoParams.i32PPSsCount == ch_qp_index_offset_cnt", *(a1 + 10244), v263);
                            v269 = sub_175AE4();
                            sub_160F68(4);
                          }

                          v356 = *(a1 + 10244);
                          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: PPS count = %d and ch_qp_index_offset_cnt = %d... are not compatible. fail", v269);
                        }

                        return 4294966295;
                      }
                    }

                    if ((*(a1 + 1308) > 1 || *(a1 + 1256) || (*(a1 + 716) & 0x3C0) != 0) && (*(a1 + 10173) & 1) == 0)
                    {
                      *(a1 + 10173) = 1;
                    }

                    v264 = *(a1 + 76);
                    if (v264 >= 4)
                    {
                      *(a1 + 10205) = 1;
                    }

                    v265 = *(a1 + 692);
                    if (v265 == 1)
                    {
                      *(a1 + 688) &= ~2u;
                    }

                    if ((*(a1 + 712) & 8) != 0 || *(a1 + 10776))
                    {
                      *(a1 + 1464) = 0x8000000;
                    }

                    v266 = *(a1 + 1120);
                    if ((v266 & 0x10) != 0)
                    {
                      *(a1 + 1112) = *(a1 + 11448);
                      *(a1 + 1240) &= ~0x400u;
                    }

                    if ((*(a1 + 716) & 0x3C0) == 0)
                    {
LABEL_434:
                      if ((v266 & 0x80000000) != 0 && *(a1 + 76) >= 9)
                      {
                        *(a1 + 10172) = 1;
                        *(a1 + 10530) = 1;
                      }

                      if (*(a1 + 10531) && !*(a1 + 10172))
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v284 = sub_160F34(0x10u);
                          v285 = sub_175AE4();
                          v286 = sub_160F68(5);
                          if (v284)
                          {
                            printf("%lld %d AVE %s: FIG: LRMERC enabled -> must run in LRME-pipe async.\n", v285, 16, v286);
                            v287 = sub_175AE4();
                            v340 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: LRMERC enabled -> must run in LRME-pipe async.", v287, 16, v340);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: LRMERC enabled -> must run in LRME-pipe async.", v285, 16, v286);
                          }
                        }

                        *(a1 + 10172) = 1;
                      }

                      else if ((*(a1 + 10172) & 1) == 0)
                      {
                        v283 = *(a1 + 1240) & 0xFFFEFFFF;
LABEL_447:
                        *(a1 + 1240) = v283;
                        if (*(a1 + 10248) == 1)
                        {
                          v288 = *(a1 + 10252);
                          if (v288 == 1)
                          {
                            if (sub_160EF0(0x10u, 5))
                            {
                              v289 = sub_160F34(0x10u);
                              v290 = sub_175AE4();
                              v291 = sub_160F68(5);
                              if (v289)
                              {
                                printf("%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode\n", v290, 16, v291);
                                v292 = sub_175AE4();
                                v341 = sub_160F68(5);
                                syslog(3, "%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode", v292, 16, v341);
                              }

                              else
                              {
                                syslog(3, "%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode", v290, 16, v291);
                              }
                            }

                            *(a1 + 10248) = 0;
                            v288 = *(a1 + 10252);
                          }

                          if (v288)
                          {
                            v293 = 0;
                            v294 = (v288 - 1);
                            v295 = (a1 + 10260);
                            while (1)
                            {
                              if (v294 == v293)
                              {
                                v296 = *(a1 + 10260 + 8 * v294);
                                if (v296 < 96)
                                {
                                  break;
                                }
                              }

                              else
                              {
                                v296 = *v295;
                                if (*v295 < 128)
                                {
                                  break;
                                }
                              }

                              if ((v296 + *(v295 - 1)) > *(a1 + 1444))
                              {
                                break;
                              }

                              ++v293;
                              v295 += 2;
                              if (v288 == v293)
                              {
                                goto LABEL_469;
                              }
                            }

                            if (sub_160EF0(0x10u, 5))
                            {
                              v297 = sub_160F34(0x10u);
                              v298 = sub_175AE4();
                              v299 = sub_160F68(5);
                              v300 = *v295;
                              if (v297)
                              {
                                printf("%lld %d AVE %s: FIG: Slice Parameters Invalid slice[%d] %d iY: %d, iHeight: %d. %d Force to Frame Encoding\n", v298, 16, v299, v293, *(a1 + 10252), *(v295 - 1), *v295, *(a1 + 1444));
                                v298 = sub_175AE4();
                                sub_160F68(5);
                                v301 = *(a1 + 10252);
                                v358 = *v295;
                                v371 = *(a1 + 1444);
                                v349 = *(v295 - 1);
                              }

                              else
                              {
                                v359 = *v295;
                              }

                              syslog(3, "%lld %d AVE %s: FIG: Slice Parameters Invalid slice[%d] %d iY: %d, iHeight: %d. %d Force to Frame Encoding", v298);
                            }

                            *(a1 + 10248) = 0;
                            *(a1 + 10252) = 1;
                            *(a1 + 10260) = *(a1 + 1444);
                          }
                        }

LABEL_469:
                        v302 = *(a1 + 716) | 0x3E;
                        *(a1 + 716) = v302;
                        if (!*(a1 + 10531))
                        {
                          *(a1 + 716) = v302 & 0xFFFFFFF7;
                        }

                        *(a1 + 1096) = (*(v2 + 123) | *(a1 + 1096) & ~*(a1 + 17968)) & ~*(v2 + 124);
                        if (sub_17D0E0(*(a1 + 1144), *(a1 + 12052) + 8))
                        {
                          if (sub_160EF0(3u, 4))
                          {
                            v303 = sub_160F34(3u);
                            v304 = sub_175AE4();
                            v305 = sub_160F68(4);
                            if (v303)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpI %d\n", v304, 3, v305, "AVE_ValidateEncoderParameters", 2850, "false", *(a1 + 1144));
                              v304 = sub_175AE4();
                              sub_160F68(4);
                            }

                            v360 = *(a1 + 1144);
                            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpI %d", v304);
                          }
                        }

                        else if (sub_17D0E0(*(a1 + 1148), *(a1 + 12052) + 8))
                        {
                          if (sub_160EF0(3u, 4))
                          {
                            v306 = sub_160F34(3u);
                            v307 = sub_175AE4();
                            v308 = sub_160F68(4);
                            if (v306)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpP %d\n", v307, 3, v308, "AVE_ValidateEncoderParameters", 2855, "false", *(a1 + 1148));
                              v307 = sub_175AE4();
                              sub_160F68(4);
                            }

                            v361 = *(a1 + 1148);
                            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpP %d", v307);
                          }
                        }

                        else if (sub_17D0E0(*(a1 + 1152), *(a1 + 12052) + 8))
                        {
                          if (sub_160EF0(3u, 4))
                          {
                            v309 = sub_160F34(3u);
                            v310 = sub_175AE4();
                            v311 = sub_160F68(4);
                            if (v309)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpB %d\n", v310, 3, v311, "AVE_ValidateEncoderParameters", 2860, "false", *(a1 + 1152));
                              v310 = sub_175AE4();
                              sub_160F68(4);
                            }

                            v362 = *(a1 + 1152);
                            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpB %d", v310);
                          }
                        }

                        else
                        {
                          if (!sub_14E248(*(a1 + 68), 1, 1, *(a1 + 1440), *(a1 + 1444), *(a1 + 1264) != 1))
                          {
                            if (*(a1 + 16932) < 1)
                            {
                              return 0;
                            }

                            v316 = *(a1 + 11460);
                            if (v316 < 1)
                            {
                              return 0;
                            }

                            v317 = *(a1 + 1112);
                            if (v316 > v317)
                            {
                              return 0;
                            }

                            v18 = 0;
                            *(a1 + 1248) = 0;
                            *(a1 + 1252) = v317 / v316;
                            *(a1 + 1256) = 0x200000000;
                            *(a1 + 1288) = 1;
                            return v18;
                          }

                          if (sub_160EF0(3u, 4))
                          {
                            v312 = sub_160F34(3u);
                            v313 = sub_175AE4();
                            v314 = sub_160F68(4);
                            v315 = *(a1 + 1444);
                            if (v312)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | FIG: dimensions (%dx%d) not supported %d.\n", v313, 3, v314, "AVE_ValidateEncoderParameters", 2872, "false", *(a1 + 1440), *(a1 + 1444), *(a1 + 1264));
                              v313 = sub_175AE4();
                              sub_160F68(4);
                            }

                            v372 = *(a1 + 1444);
                            v378 = *(a1 + 1264);
                            v363 = *(a1 + 1440);
                            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: dimensions (%dx%d) not supported %d.", v313, 3);
                          }
                        }

                        return 4294966295;
                      }

                      v283 = *(a1 + 1240) | 0x10000;
                      goto LABEL_447;
                    }

                    *(a1 + 688) |= 0x100u;
                    if (!*(a1 + 10531))
                    {
                      *(a1 + 10531) = 3;
                    }

                    *(a1 + 10172) = 1;
                    *(a1 + 10530) = 1;
                    if (*(a1 + 12044) != 1)
                    {
                      if (sub_160EF0(3u, 4))
                      {
                        v272 = sub_160F34(3u);
                        v273 = sub_175AE4();
                        v274 = sub_160F68(4);
                        if (v272)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | FIG: MCTF for ChromaFmt %d... not supported. Fail\n", v273, 3, v274, "AVE_ValidateEncoderParameters", 2710, "(pINS->SPSParams.chroma_format_idc == ChromaFmt_420)", *(a1 + 12044));
                          v273 = sub_175AE4();
                          sub_160F68(4);
                        }

                        v357 = *(a1 + 12044);
                        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MCTF for ChromaFmt %d... not supported. Fail", v273);
                      }

                      return 4294966295;
                    }

                    v267 = *(a1 + 11812);
                    if (v264 < 30)
                    {
                      if (v267 < 0)
                      {
                        *(a1 + 1392) = 1;
                        if (*(a1 + 1396) < 1)
                        {
                          goto LABEL_434;
                        }

LABEL_429:
                        if (sub_160EF0(0x10u, 5))
                        {
                          v275 = sub_160F34(0x10u);
                          v276 = sub_175AE4();
                          v277 = sub_160F68(5);
                          v278 = *(a1 + 16);
                          v279 = *(a1 + 1392);
                          v280 = *(a1 + 1396);
                          if (v275)
                          {
                            printf("%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)\n", v276, 16, v277, v278, *(a1 + 1392), v280);
                            v281 = sub_175AE4();
                            v282 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)", v281, 16, v282, *(a1 + 16), *(a1 + 1392), *(a1 + 1396));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)", v276, 16, v277, v278, *(a1 + 1392), v280);
                          }
                        }

                        *(a1 + 1396) = -1;
                        v266 = *(a1 + 1120);
                        goto LABEL_434;
                      }

                      *(a1 + 1392) = v267;
LABEL_427:
                      if (*(a1 + 1396) < 1 || v267 != 1)
                      {
                        goto LABEL_434;
                      }

                      goto LABEL_429;
                    }

                    if (v267 < 0)
                    {
                      if (v265 >= 1 && *(a1 + 10804) == 2)
                      {
                        v267 = 0;
                        *(a1 + 1392) = 0;
LABEL_423:
                        if (*(a1 + 1396) == -1 && v265 >= 1 && *(a1 + 10804) == 2)
                        {
                          *(a1 + 1396) = 5;
                        }

                        goto LABEL_427;
                      }

                      v267 = 1;
                    }

                    *(a1 + 1392) = v267;
                    goto LABEL_423;
                  }

                  if (v135)
                  {
                    v136 = sub_160F34(0x10u);
                    v137 = sub_175AE4();
                    v138 = sub_160F68(6);
                    v139 = *(a1 + 12008);
                    if (v136)
                    {
                      printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v137, 16, v138, "AVE_ValidateEncoderParameters", 2239, *(a1 + 12008), 8);
                      v137 = sub_175AE4();
                      sub_160F68(6);
                      v140 = *(a1 + 12008);
                    }

                    else
                    {
                      v345 = *(a1 + 12008);
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v137);
                  }

                  v151 = 8;
                }

                *(a1 + 12008) = v151;
                goto LABEL_221;
              }

              if (!sub_160EF0(3u, 4))
              {
                return 4294966295;
              }

              v115 = sub_160F34(3u);
              v111 = sub_175AE4();
              v116 = sub_160F68(4);
              if (v115)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: Slices Per Frame = %d\n", v111, 3, v116, "AVE_ValidateEncoderParameters", 2179, "pINS->VideoParams.sSliceMap.iNum != 0", *(v38 + 21));
                v111 = sub_175AE4();
                v116 = sub_160F68(4);
                v344 = "pINS->VideoParams.sSliceMap.iNum != 0";
                v353 = *(v38 + 21);
                v342 = 2179;
              }

              else
              {
                v353 = *(v38 + 21);
                v342 = 2179;
                v344 = "pINS->VideoParams.sSliceMap.iNum != 0";
              }

              v326 = v116;
              v114 = "%lld %d AVE %s: %s:%d %s | FIG: Slices Per Frame = %d";
            }

            syslog(3, v114, v111, 3, v326, "AVE_ValidateEncoderParameters", v342, v344, v353, v364);
            return 4294966295;
          }

          v78 = 0;
        }

        else
        {
          if (sub_160EF0(0x10u, 5))
          {
            v71 = sub_160F34(0x10u);
            v72 = sub_175AE4();
            v73 = sub_160F68(5);
            v74 = *(a1 + 1256);
            v75 = *(a1 + 76);
            if (v71)
            {
              printf("%lld %d AVE %s: FIG: BFrames = %d and DeviceType = %d. Not supported, set BFrames to 0.\n", v72, 16, v73, *(a1 + 1256), v75);
              v76 = sub_175AE4();
              v77 = sub_160F68(5);
              syslog(3, "%lld %d AVE %s: FIG: BFrames = %d and DeviceType = %d. Not supported, set BFrames to 0.", v76, 16, v77, *(a1 + 1256), *(a1 + 76));
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: BFrames = %d and DeviceType = %d. Not supported, set BFrames to 0.", v72, 16, v73, *(a1 + 1256), v75);
            }
          }

          *(a1 + 1256) = 0x100000000;
          v78 = 1;
          *(a1 + 1288) = 1;
          *(a1 + 1240) &= ~0x400u;
        }
      }

      else
      {
        v78 = 1;
      }

      v84 = *(a1 + 1240);
      if (v84 & 0x400) != 0 && (v78)
      {
        if (sub_160EF0(0x10u, 5))
        {
          v85 = sub_160F34(0x10u);
          v86 = sub_175AE4();
          v87 = sub_160F68(5);
          if (v85)
          {
            printf("%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB\n", v86, 16, v87);
            v88 = sub_175AE4();
            v324 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB", v88, 16, v324);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB", v86, 16, v87);
          }
        }

        v84 = *(a1 + 1240) & 0xFFFFFBFF;
        *(a1 + 1240) = v84;
      }

      goto LABEL_112;
    }

    if (sub_160EF0(3u, 4))
    {
      v68 = sub_160F34(3u);
      v69 = sub_175AE4();
      v70 = sub_160F68(4);
      if (v68)
      {
        printf("%lld %d AVE %s: %s:%d %s | DRL is not supported with lookahead feature\n", v69, 3, v70, "AVE_ValidateEncoderParameters", 2030, "false");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | DRL is not supported with lookahead feature");
    }

    return 4294966296;
  }

  v18 = v31;
  if (sub_160EF0(0x10u, 4))
  {
    v32 = sub_160F34(0x10u);
    v33 = sub_175AE4();
    v34 = sub_160F68(4);
    v35 = *(a1 + 1120);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx\n", v33, 16, v34, "AVE_ValidateEncoderParameters", 1944, "ret == 0", a1, *(a1 + 56), v2[105], *(a1 + 17872), *(a1 + 16840), *(a1 + 1216), *(a1 + 1120));
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      v36 = *(v2 + 105);
      v37 = *(a1 + 16840);
    }

    v388 = *(a1 + 1120);
    v385 = *(a1 + 16840);
    v387 = *(a1 + 1216);
    v375 = *(v2 + 105);
    v381 = *(a1 + 17872);
    v366 = *(a1 + 56);
    syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx", v33, 16, v34);
  }

  return v18;
}

void sub_EF0EC(uint64_t a1, __CVBuffer *a2)
{
  if (sub_160EF0(0xCu, 7))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareSequenceHeader\n", v5, 12, v6);
      v7 = sub_175AE4();
      v108 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareSequenceHeader", v7, 12, v108);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareSequenceHeader", v5, 12, v6);
    }
  }

  if (a2)
  {
    if (*(a1 + 12060) == 1)
    {
      *(a1 + 12061) = 1;
    }

    v8 = *(a1 + 12064);
    if (v8 <= 4)
    {
      if (v8 == 1)
      {
        v38 = 0;
        v39 = (a1 + 12254);
        *(a1 + 12076) = 0x101010101010101;
        *(a1 + 12084) = 0x101010101010101;
        *(a1 + 12068) = 0x101010101010101;
        *(a1 + 12092) = 1;
        do
        {
          v40 = vuzp1q_s16(*(&unk_182F18 + v38), *(&unk_182F18 + v38 + 16));
          v39[-6] = v40;
          v39[-8] = v40;
          v39[-10] = v40;
          v41 = vuzp1q_s16(*(&unk_182F58 + v38), *(&unk_182F58 + v38 + 16));
          *v39 = v41;
          v39[-2] = v41;
          v39[-4] = v41;
          v38 += 32;
          ++v39;
        }

        while (v38 != 64);
        v42 = 0;
        v43 = (a1 + 12286);
        do
        {
          v44 = vuzp1q_s16(*(&unk_182F98 + v42), *(&unk_182F98 + v42 + 16));
          v43[32] = v44;
          v43[16] = v44;
          *v43 = v44;
          v45 = vuzp1q_s16(*(&unk_183098 + v42), *(&unk_183098 + v42 + 16));
          v43[40] = v45;
          v43[24] = v45;
          v43[8] = v45;
          v42 += 32;
          ++v43;
        }

        while (v42 != 256);
      }

      else
      {
        if (v8 != 2)
        {
LABEL_42:
          v46 = (a1 + 12286);
          v47 = (a1 + 12094);
          *(a1 + 12071) = 0;
          *(a1 + 12068) = 0;
          v48 = (a1 + 12075);
          v49 = 6;
          do
          {
            v48[6] = 0;
            memset_pattern16(v47, &unk_184A10, 0x20uLL);
            *v48 = 0;
            v48[12] = 0;
            memset_pattern16(v46, &unk_184A10, 0x80uLL);
            v46 += 128;
            ++v48;
            v47 += 32;
            --v49;
          }

          while (v49);
          goto LABEL_44;
        }

        v17 = 0;
        v18 = (a1 + 12081);
        v19 = (a1 + 12286);
        *(a1 + 12073) = 0x101010101010101;
        *(a1 + 12068) = 0x101010101010101;
        v20 = a0123210;
        do
        {
          v21 = (a1 + 12094 + v17);
          *v18 = 0;
          *v21 = *(&unk_184A20 + v17);
          v21[1] = *(&unk_184A20 + v17 + 16);
          v18[6] = 0;
          v19[3] = *(v20 + 3);
          v19[2] = *(v20 + 2);
          v19[1] = *(v20 + 1);
          *v19 = *v20;
          v19[7] = *(v20 + 7);
          v19[6] = *(v20 + 6);
          v19[5] = *(v20 + 5);
          v17 += 32;
          v19[4] = *(v20 + 4);
          v19 += 8;
          ++v18;
          v20 += 64;
        }

        while (v17 != 192);
      }
    }

    else
    {
      switch(v8)
      {
        case 5:
          v22 = 0;
          *(a1 + 12068) = 1;
          v23 = a1 + 12069;
          v24 = a1 + 12094;
          v25 = a1 + 12286;
          v26 = &unk_184DE0;
          v27 = &unk_184EA0;
          do
          {
            v28 = 0;
            *(v23 + v22) = 1;
            *(a1 + 12081 + v22) = 0;
            do
            {
              *(v24 + v28) = vshlq_n_s16(*&v26[v28], 3uLL);
              v28 += 16;
            }

            while (v28 != 32);
            v29 = 0;
            *(v22 + v23 + 6) = 1;
            *(a1 + 12087 + v22) = 0;
            do
            {
              *(v25 + v29) = vshlq_n_s16(*&v27[v29], 3uLL);
              v29 += 16;
            }

            while (v29 != 128);
            ++v22;
            v26 += 32;
            v24 += 32;
            v27 += 128;
            v25 += 128;
          }

          while (v22 != 6);
          break;
        case 6:
          v30 = 0;
          *(a1 + 12068) = 1;
          v31 = a1 + 12069;
          v32 = a1 + 12094;
          v33 = a1 + 12286;
          v34 = &unk_1851A0;
          v35 = &unk_185260;
          do
          {
            v36 = 0;
            *(v31 + v30) = 1;
            *(a1 + 12081 + v30) = 0;
            do
            {
              *(v32 + v36) = vshlq_n_s16(*&v34[v36], 3uLL);
              v36 += 16;
            }

            while (v36 != 32);
            v37 = 0;
            *(v30 + v31 + 6) = 1;
            *(a1 + 12087 + v30) = 0;
            do
            {
              *(v33 + v37) = vshlq_n_s16(*&v35[v37], 3uLL);
              v37 += 16;
            }

            while (v37 != 128);
            ++v30;
            v34 += 32;
            v32 += 32;
            v35 += 128;
            v33 += 128;
          }

          while (v30 != 6);
          break;
        case 7:
          v9 = 0;
          v10 = (a1 + 12081);
          v11 = (a1 + 12286);
          *(a1 + 12073) = 0x101010101010101;
          *(a1 + 12068) = 0x101010101010101;
          v12 = &xmmword_185620;
          do
          {
            v13 = (a1 + 12094 + v9);
            *v10 = 0;
            *v13 = *(&unk_185560 + v9);
            v13[1] = *(&unk_185560 + v9 + 16);
            v10[6] = 0;
            v11[3] = v12[3];
            v11[2] = v12[2];
            v11[1] = v12[1];
            *v11 = *v12;
            v11[7] = v12[7];
            v11[6] = v12[6];
            v11[5] = v12[5];
            v9 += 32;
            v11[4] = v12[4];
            v11 += 8;
            ++v10;
            v12 += 8;
          }

          while (v9 != 192);
          break;
        default:
          goto LABEL_42;
      }
    }

LABEL_44:
    *(a1 + 13080) = vsra_n_u32(-1, *(a1 + 1440), 4uLL);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
    v51 = sub_167CD8(PixelFormatType);
    if (v51 && (*(a1 + 1104) & 8) != 0)
    {
      v55 = v51;
      v56 = *(v51 + 7) == 1;
      *(a1 + 13104) = v56;
      if (v56)
      {
        v57 = 1;
      }

      else
      {
        v57 = *(a1 + 13096);
      }

      *(a1 + 13096) = v57 & 1;
      if (sub_160EF0(0x1Eu, 6))
      {
        v58 = sub_160F34(0x1Eu);
        v59 = sub_175AE4();
        v60 = sub_160F68(6);
        if (v58)
        {
          printf("%lld %d AVE %s: FIG: video_full_range_flag %d\n", v59, 30, v60, *(v55 + 7) == 1);
          sub_175AE4();
          sub_160F68(6);
        }

        v114 = *(v55 + 7) == 1;
        syslog(3, "%lld %d AVE %s: FIG: video_full_range_flag %d");
      }
    }

    else if (sub_160EF0(0x1Eu, 6))
    {
      v52 = sub_160F34(0x1Eu);
      v53 = sub_175AE4();
      v54 = sub_160F68(6);
      if (v52)
      {
        printf("%lld %d AVE %s: FIG: Unknown dynamic range\n", v53, 30, v54);
        sub_175AE4();
        sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: FIG: Unknown dynamic range");
    }

    if ((*(a1 + 1104) & 0x40) != 0)
    {
      if (*(a1 + 1112) >= 1)
      {
        v62 = *(a1 + 1112);
      }

      else
      {
        v62 = 30;
      }

      v61 = 1;
      *(a1 + 13096) = 1;
      *(a1 + 13144) = 27000000;
      *(a1 + 13140) = 0x19BFCC0 / v62;
      *(a1 + 13148) = 0;
    }

    else
    {
      v61 = 0;
    }

    *(a1 + 13136) = v61;
    v63 = CVBufferCopyAttachment(a2, kCVImageBufferChromaLocationTopFieldKey, 0);
    if (!v63)
    {
LABEL_86:
      v77 = CVBufferCopyAttachment(a2, kCVImageBufferChromaLocationBottomFieldKey, 0);
      if (!v77)
      {
LABEL_108:
        if ((*(a1 + 13128) || *(a1 + 13132)) && (*(a1 + 1104) & 0x10) != 0)
        {
          *(a1 + 13096) = 1;
          *(a1 + 13124) = 1;
          if (sub_160EF0(0x1Eu, 6))
          {
            v91 = sub_160F34(0x1Eu);
            v92 = sub_175AE4();
            v93 = sub_160F68(6);
            if (v91)
            {
              printf("%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE\n", v92, 30, v93);
              v94 = sub_175AE4();
              v111 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE", v94, 30, v111);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE", v92, 30, v93);
            }
          }
        }

        if (sub_160EF0(0x1Eu, 6))
        {
          v95 = sub_160F34(0x1Eu);
          v96 = sub_175AE4();
          v97 = sub_160F68(6);
          v98 = *(a1 + 13128);
          if (v95)
          {
            printf("%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v96, 30, v97, *(a1 + 13124), *(a1 + 13128), *(a1 + 13132));
            sub_175AE4();
            sub_160F68(6);
            v99 = *(a1 + 13124);
            v116 = *(a1 + 13128);
            v118 = *(a1 + 13132);
          }

          else
          {
            v117 = *(a1 + 13128);
            v119 = *(a1 + 13132);
            v115 = *(a1 + 13124);
          }

          syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d");
        }

        return;
      }

      v78 = v77;
      if (sub_160EF0(0x1Eu, 6))
      {
        v79 = sub_160F34(0x1Eu);
        v80 = sub_175AE4();
        v81 = sub_160F68(6);
        if (v79)
        {
          printf("%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!\n", v80, 30, v81);
          v82 = sub_175AE4();
          v110 = sub_160F68(6);
          syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!", v82, 30, v110);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!", v80, 30, v81);
        }
      }

      if (!CFEqual(v78, kCVImageBufferChromaLocation_Left))
      {
        if (CFEqual(v78, kCVImageBufferChromaLocation_Center))
        {
          v83 = 1;
          goto LABEL_103;
        }

        if (CFEqual(v78, kCVImageBufferChromaLocation_TopLeft))
        {
          v83 = 2;
          goto LABEL_103;
        }

        if (CFEqual(v78, kCVImageBufferChromaLocation_Top))
        {
          v83 = 3;
          goto LABEL_103;
        }

        if (CFEqual(v78, kCVImageBufferChromaLocation_BottomLeft))
        {
          v83 = 4;
          goto LABEL_103;
        }

        if (CFEqual(v78, kCVImageBufferChromaLocation_Bottom))
        {
          v83 = 5;
          goto LABEL_103;
        }

        if (sub_160EF0(0x1Eu, 5))
        {
          v104 = sub_160F34(0x1Eu);
          v105 = sub_175AE4();
          v106 = sub_160F68(5);
          if (v104)
          {
            printf("%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default\n", v105, 30, v106);
            v107 = sub_175AE4();
            v113 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v107, 30, v113);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v105, 30, v106);
          }
        }
      }

      v83 = 0;
LABEL_103:
      *(a1 + 13132) = v83;
      if (sub_160EF0(0x1Eu, 6))
      {
        v84 = sub_160F34(0x1Eu);
        v85 = sub_175AE4();
        v86 = sub_160F68(6);
        v87 = *(a1 + 13128);
        v88 = *(a1 + 13132);
        if (v84)
        {
          printf("%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v85, 30, v86, *(a1 + 13128), v88);
          v89 = sub_175AE4();
          v90 = sub_160F68(6);
          syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v89, 30, v90, *(a1 + 13128), *(a1 + 13132));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v85, 30, v86, *(a1 + 13128), v88);
        }
      }

      CFRelease(v78);
      goto LABEL_108;
    }

    v64 = v63;
    if (sub_160EF0(0x1Eu, 6))
    {
      v65 = sub_160F34(0x1Eu);
      v66 = sub_175AE4();
      v67 = sub_160F68(6);
      if (v65)
      {
        printf("%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!\n", v66, 30, v67);
        v68 = sub_175AE4();
        v109 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!", v68, 30, v109);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!", v66, 30, v67);
      }
    }

    if (!CFEqual(v64, kCVImageBufferChromaLocation_Left))
    {
      if (CFEqual(v64, kCVImageBufferChromaLocation_Center))
      {
        v69 = 1;
        goto LABEL_81;
      }

      if (CFEqual(v64, kCVImageBufferChromaLocation_TopLeft))
      {
        v69 = 2;
        goto LABEL_81;
      }

      if (CFEqual(v64, kCVImageBufferChromaLocation_Top))
      {
        v69 = 3;
        goto LABEL_81;
      }

      if (CFEqual(v64, kCVImageBufferChromaLocation_BottomLeft))
      {
        v69 = 4;
        goto LABEL_81;
      }

      if (CFEqual(v64, kCVImageBufferChromaLocation_Bottom))
      {
        v69 = 5;
        goto LABEL_81;
      }

      if (sub_160EF0(0x1Eu, 5))
      {
        v100 = sub_160F34(0x1Eu);
        v101 = sub_175AE4();
        v102 = sub_160F68(5);
        if (v100)
        {
          printf("%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default\n", v101, 30, v102);
          v103 = sub_175AE4();
          v112 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v103, 30, v112);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v101, 30, v102);
        }
      }
    }

    v69 = 0;
LABEL_81:
    *(a1 + 13128) = v69;
    *(a1 + 13132) = v69;
    if (sub_160EF0(0x1Eu, 6))
    {
      v70 = sub_160F34(0x1Eu);
      v71 = sub_175AE4();
      v72 = sub_160F68(6);
      v73 = *(a1 + 13128);
      v74 = *(a1 + 13132);
      if (v70)
      {
        printf("%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v71, 30, v72, *(a1 + 13128), v74);
        v75 = sub_175AE4();
        v76 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v75, 30, v76, *(a1 + 13128), *(a1 + 13132));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v71, 30, v72, *(a1 + 13128), v74);
      }
    }

    CFRelease(v64);
    goto LABEL_86;
  }

  if (sub_160EF0(3u, 4))
  {
    v14 = sub_160F34(3u);
    v15 = sub_175AE4();
    v16 = sub_160F68(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: imageBuffer = NULL.\n", v15, 3, v16, "AVE_PrepareSequenceHeader", 1325, "imageBuffer != __null");
      sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: imageBuffer = NULL.");
  }
}

uint64_t sub_EFE80(uint64_t a1)
{
  if (sub_160EF0(0xCu, 7))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings\n", v3, 12, v4);
      v5 = sub_175AE4();
      v227 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings", v5, 12, v227);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings", v3, 12, v4);
    }
  }

  if (*(a1 + 1132) == 4 && !*(a1 + 10892))
  {
    *(a1 + 10892) = 10000;
  }

  if (sub_160EF0(0xCu, 7))
  {
    v6 = sub_160F34(0xCu);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters\n", v7, 12, v8);
      v9 = sub_175AE4();
      v228 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters", v9, 12, v228);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters", v7, 12, v8);
    }
  }

  v10 = (a1 + 16448);
  v11 = sub_1502C8();
  v12 = v11[20];
  if (v12 <= -2)
  {
    v12 = *(a1 + 692);
  }

  else
  {
    *(a1 + 692) = v12;
  }

  if (v12 == 1 && (!*(a1 + 1256) || *v10 == 2))
  {
    v13 = *(a1 + 1132);
    if (v13 != 3 && v13 != 20)
    {
      sub_F9BA8(a1);
    }
  }

  v14 = v11[19];
  if (v14 >= 1)
  {
    *(a1 + 11968) = v14;
  }

  v15 = (*(a1 + 1336) | v11[237] & 0x10) & (~*(v11 + 952) | 0xFFFFFFEF);
  *(a1 + 1336) = v15;
  if ((*(v11 + 769) & 0x80) != 0)
  {
    v15 |= 0x8000u;
    *(a1 + 1336) = v15;
  }

  if ((*(v11 + 777) & 0x80) != 0)
  {
    *(a1 + 1336) = v15 & 0xFFFF7FFF;
  }

  if (sub_160EF0(0xCu, 7))
  {
    v16 = sub_160F34(0xCu);
    v17 = sub_175AE4();
    v18 = sub_160F68(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v17, 12, v18, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
      v19 = sub_175AE4();
      v229 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v19, 12, v229, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v17, 12, v18, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
    }
  }

  v20 = sub_1502C8();
  v21 = sub_13253C(v20[186]);
  if (v21)
  {
    *v10 = v21;
  }

  v22 = sub_132AB8(v20[187]);
  if (v22)
  {
    *(a1 + 16452) = v22;
  }

  v23 = (a1 + 10168);
  if (*v10)
  {
    if (sub_160EF0(0x1Eu, 6))
    {
      v24 = sub_160F34(0x1Eu);
      v25 = sub_175AE4();
      v26 = sub_160F68(6);
      v27 = *v10;
      v28 = *(a1 + 12008);
      if (v24)
      {
        printf("%lld %d AVE %s: profile = %d -> change the default %d\n", v25, 30, v26, *v10, v28);
        v29 = sub_175AE4();
        v30 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: profile = %d -> change the default %d", v29, 30, v30, *v10, *(a1 + 12008));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: profile = %d -> change the default %d", v25, 30, v26, *v10, v28);
      }
    }

    *(a1 + 12008) = *v10;
  }

  v31 = *(a1 + 1308) > 1 || *(a1 + 1256) || *(a1 + 1324) > 1;
  *(a1 + 10173) = v31;
  v32 = *(a1 + 1132);
  if ((v32 == 4 || v32 == 2) && !*(a1 + 10892))
  {
    *(a1 + 10892) = 10000;
  }

  v33 = v20[395];
  if (v33 > 36)
  {
    switch(v33)
    {
      case 37:
        *(a1 + 10892) = 37;
        *(a1 + 1104) |= 0x80uLL;
        goto LABEL_74;
      case 38:
        *(a1 + 10892) = 38;
        goto LABEL_90;
      case 10000:
        *(a1 + 10892) = 10000;
        goto LABEL_57;
    }
  }

  else
  {
    switch(v33)
    {
      case 0:
        *(a1 + 10892) = 0;
        goto LABEL_64;
      case 1:
        *(a1 + 10892) = 1;
        goto LABEL_84;
      case 20:
        *(a1 + 10892) = 20;
        *(a1 + 1104) |= 0x80uLL;
        goto LABEL_91;
    }
  }

  v49 = *(a1 + 10892);
  if (v49 <= 36)
  {
    if (v49 != 1)
    {
      if (v49 != 20)
      {
        goto LABEL_64;
      }

      goto LABEL_116;
    }

LABEL_84:
    *(a1 + 1336) = 0x10000;
    *(a1 + 1132) = 20;
    *(a1 + 10784) = 1;
    *(a1 + 10764) = 0;
    if (*(a1 + 1256) >= 1 && sub_160EF0(0x1Eu, 6))
    {
      v50 = sub_160F34(0x1Eu);
      v51 = sub_175AE4();
      v52 = sub_160F68(6);
      v53 = *(a1 + 1256);
      if (v50)
      {
        printf("%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)\n", v51, 30, v52, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 3876, *(a1 + 1256), *(a1 + 17892));
        v51 = sub_175AE4();
        sub_160F68(6);
        v54 = *(a1 + 1256);
        v239 = *(a1 + 17892);
      }

      else
      {
        v235 = *(a1 + 1256);
      }

      syslog(3, "%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)", v51);
    }

    if (*(a1 + 1296))
    {
      *(a1 + 13756) = 1;
      *(a1 + 13760) = 0;
    }

    if (*(a1 + 16456) == 2)
    {
      goto LABEL_154;
    }

    if (sub_160EF0(0x1Eu, 6))
    {
      v84 = sub_160F34(0x1Eu);
      v85 = sub_175AE4();
      v86 = sub_160F68(6);
      v87 = *(a1 + 16456);
      v88 = *(a1 + 13732);
      if (v84)
      {
        printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v85, 30, v86, *(a1 + 16456), v88);
        v89 = sub_175AE4();
        v90 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v89, 30, v90, *(a1 + 16456), *(a1 + 13732));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v85, 30, v86, *(a1 + 16456), v88);
      }
    }

    if (*(a1 + 16456))
    {
LABEL_154:
      *(a1 + 13732) = 1;
    }

    else
    {
      *(a1 + 13732) = 0;
    }

    if ((*(a1 + 1104) & 0x80) != 0)
    {
      v91 = 1;
      *(a1 + 13096) = 1;
      *(a1 + 13156) = xmmword_1849E0;
      *(a1 + 13172) = 15;
      *(a1 + 13176) = 0x1000000000;
    }

    else
    {
      v91 = 0;
    }

    v83 = 0;
    *(a1 + 13152) = v91;
    *(a1 + 1096) &= 0xFFFFFC00FFFFFCBFLL;
    goto LABEL_184;
  }

  if (v49 != 10000)
  {
    if (v49 != 38)
    {
      if (v49 != 37)
      {
LABEL_64:
        v37 = *(a1 + 76);
        if (v37 <= 0x1D && ((1 << v37) & 0x2679CC00) != 0)
        {
          v38 = *(a1 + 10248);
          *(a1 + 10172) = v38 ^ 1;
          if ((v38 & 1) == 0)
          {
            *(a1 + 688) |= 0x100u;
          }
        }

        if (!sub_FA1D4(a1))
        {
          goto LABEL_183;
        }

        if (sub_160EF0(3u, 4))
        {
          v39 = sub_160F34(3u);
          v40 = sub_175AE4();
          v41 = sub_160F68(4);
          if (v39)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed\n", v40, 3, v41, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 4197, "err == noErr");
            v40 = sub_175AE4();
            v41 = sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed", v40, 3, v41, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 4197, "err == noErr");
        }

LABEL_144:
        v83 = -12902;
        goto LABEL_184;
      }

LABEL_116:
      *(a1 + 1104) |= 0x80uLL;
      if (v49 != 20)
      {
LABEL_74:
        if (*(a1 + 16456) == 2)
        {
          goto LABEL_162;
        }

        if (sub_160EF0(0x1Eu, 6))
        {
          v42 = sub_160F34(0x1Eu);
          v43 = sub_175AE4();
          v44 = sub_160F68(6);
          v45 = *(a1 + 16456);
          v46 = *(a1 + 13732);
          if (v42)
          {
            printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v43, 30, v44, *(a1 + 16456), v46);
            v47 = sub_175AE4();
            v48 = sub_160F68(6);
            syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v47, 30, v48, *(a1 + 16456), *(a1 + 13732));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v43, 30, v44, *(a1 + 16456), v46);
          }
        }

        if (*(a1 + 16456))
        {
LABEL_162:
          *(a1 + 13732) = 1;
        }

        else
        {
          *(a1 + 13732) = 0;
        }

        v92 = *(a1 + 12008);
        if (v92 == 2)
        {
          *(a1 + 13732) = 0;
          v93 = 1;
        }

        else
        {
          v93 = v92 == 4;
        }

        v94 = !v93;
        *(a1 + 13807) = v94;
        *(a1 + 13772) = xmmword_1849F0;
        *(a1 + 13812) = xmmword_1849F0;
        *&v95 = 0xC0000000CLL;
        *(&v95 + 1) = 0xC0000000CLL;
        *(a1 + 13788) = v95;
        *(a1 + 13828) = v95;
        *(a1 + 10176) = 2;
        if ((*(a1 + 1104) & 0x80) != 0)
        {
          *(a1 + 13096) = 1;
          *(a1 + 13152) = 1;
          *(a1 + 13156) = xmmword_184A00;
          *(a1 + 13172) = 15;
          *(a1 + 13176) = 0x400000000;
        }

        *(a1 + 1112) = 60;
        *(a1 + 1264) = 60;
        *(a1 + 1272) = 0xBFF0000000000000;
        *(a1 + 1280) = 0xBFF0000000000000;
        *(a1 + 1088) |= 2uLL;
        *(a1 + 1336) &= ~0x40u;
        *(a1 + 10764) = 0;
        *(a1 + 1296) |= 2u;
        *(a1 + 10170) = 1;
        if (*(a1 + 16776) > 0)
        {
          goto LABEL_183;
        }

        if (*(a1 + 16460) != 1)
        {
          goto LABEL_183;
        }

        v96 = *(a1 + 1160);
        if (v96 < 1)
        {
          goto LABEL_183;
        }

        v97 = 0;
        v98 = (a1 + 1176);
        v65 = 0x7FFFFFFF;
        do
        {
          if (v65 > (*(v98 - 1) * 8.0 / *v98))
          {
            if (sub_160EF0(0x1Eu, 6))
            {
              v99 = sub_160F34(0x1Eu);
              v100 = sub_175AE4();
              v101 = sub_160F68(6);
              v102 = *(v98 - 1);
              v103 = *v98;
              if (v99)
              {
                printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v100, 30, v101, v97, *(v98 - 1), v103);
                v100 = sub_175AE4();
                v101 = sub_160F68(6);
                v102 = *(v98 - 1);
                v103 = *v98;
              }

              syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v100, 30, v101, v97, v102, v103);
            }

            v65 = (*(v98 - 1) * 8.0 / *v98);
            v96 = *(a1 + 1160);
          }

          ++v97;
          v98 += 2;
        }

        while (v97 < v96);
        goto LABEL_182;
      }

LABEL_91:
      if (*(a1 + 16456) == 2)
      {
        goto LABEL_120;
      }

      if (sub_160EF0(0x1Eu, 6))
      {
        v55 = sub_160F34(0x1Eu);
        v56 = sub_175AE4();
        v57 = sub_160F68(6);
        v58 = *(a1 + 16456);
        v59 = *(a1 + 13732);
        if (v55)
        {
          printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v56, 30, v57, *(a1 + 16456), v59);
          v60 = sub_175AE4();
          v61 = sub_160F68(6);
          syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v60, 30, v61, *(a1 + 16456), *(a1 + 13732));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v56, 30, v57, *(a1 + 16456), v59);
        }
      }

      if (*(a1 + 16456))
      {
LABEL_120:
        *(a1 + 13732) = 1;
      }

      else
      {
        *(a1 + 13732) = 0;
      }

      v71 = *(a1 + 12008);
      if (v71 == 2)
      {
        *(a1 + 13732) = 0;
        v72 = 1;
      }

      else
      {
        v72 = v71 == 4;
      }

      v73 = !v72;
      *(a1 + 13807) = v73;
      *(a1 + 13772) = xmmword_1849F0;
      *(a1 + 13812) = xmmword_1849F0;
      *&v74 = 0xC0000000CLL;
      *(&v74 + 1) = 0xC0000000CLL;
      *(a1 + 13788) = v74;
      *(a1 + 13828) = v74;
      *(a1 + 10176) = 2;
      if ((*(a1 + 1104) & 0x80) != 0)
      {
        *(a1 + 13096) = 1;
        *(a1 + 13152) = 1;
        *(a1 + 13156) = xmmword_184A00;
        *(a1 + 13172) = 15;
        *(a1 + 13176) = 0x400000000;
      }

      *(a1 + 1112) = 60;
      *(a1 + 1264) = 0x7FFFFFFFLL;
      *(a1 + 1272) = 0xBFF0000000000000;
      *(a1 + 1280) = 0xBFF0000000000000;
      *(a1 + 1088) |= 2uLL;
      *(a1 + 1336) &= ~0x40u;
      *(a1 + 10764) = 0;
      *(a1 + 1296) |= 2u;
      if (*(a1 + 16776) > 0)
      {
        goto LABEL_183;
      }

      if (*(a1 + 16460) != 1)
      {
        goto LABEL_183;
      }

      v75 = *(a1 + 1160);
      if (v75 < 1)
      {
        goto LABEL_183;
      }

      v76 = 0;
      v77 = (a1 + 1176);
      v65 = 0x7FFFFFFF;
      do
      {
        if (v65 > (*(v77 - 1) * 8.0 / *v77))
        {
          if (sub_160EF0(0x1Eu, 6))
          {
            v78 = sub_160F34(0x1Eu);
            v79 = sub_175AE4();
            v80 = sub_160F68(6);
            v81 = *(v77 - 1);
            v82 = *v77;
            if (v78)
            {
              printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v79, 30, v80, v76, *(v77 - 1), v82);
              v79 = sub_175AE4();
              v80 = sub_160F68(6);
              v81 = *(v77 - 1);
              v82 = *v77;
            }

            syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v79, 30, v80, v76, v81, v82);
          }

          v65 = (*(v77 - 1) * 8.0 / *v77);
          v75 = *(a1 + 1160);
        }

        ++v76;
        v77 += 2;
      }

      while (v76 < v75);
      goto LABEL_182;
    }

LABEL_90:
    *(a1 + 1352) |= 0x1Eu;
    *(a1 + 1336) &= ~0x40u;
    goto LABEL_91;
  }

LABEL_57:
  if (sub_FA1D4(a1))
  {
    if (sub_160EF0(3u, 4))
    {
      v34 = sub_160F34(3u);
      v35 = sub_175AE4();
      v36 = sub_160F68(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed\n", v35, 3, v36, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 4122, "err == noErr");
        v35 = sub_175AE4();
        v36 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed", v35, 3, v36, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 4122, "err == noErr");
    }

    goto LABEL_144;
  }

  *(a1 + 1296) &= ~2u;
  *(a1 + 1088) &= ~2uLL;
  *(a1 + 1336) &= ~0x40u;
  if (*(a1 + 1348) <= -13)
  {
    *(a1 + 1348) = 51;
  }

  if (*(a1 + 1236) <= -13)
  {
    *(a1 + 1236) = 51;
  }

  if (*(a1 + 16900) <= 0 && *(a1 + 16912) <= 0.0)
  {
    *(a1 + 1264) = 120;
    *(a1 + 1272) = 0xBFF0000000000000;
    *(a1 + 1280) = 0xBFF0000000000000;
  }

  if (*(a1 + 16776) > 0)
  {
    goto LABEL_183;
  }

  if (*(a1 + 16460) != 1)
  {
    goto LABEL_183;
  }

  v62 = *(a1 + 1160);
  if (v62 < 1)
  {
    goto LABEL_183;
  }

  v63 = 0;
  v64 = (a1 + 1176);
  v65 = 0x7FFFFFFF;
  do
  {
    if (v65 > (*(v64 - 1) * 8.0 / *v64))
    {
      if (sub_160EF0(0x1Eu, 6))
      {
        v66 = sub_160F34(0x1Eu);
        v67 = sub_175AE4();
        v68 = sub_160F68(6);
        v69 = *(v64 - 1);
        v70 = *v64;
        if (v66)
        {
          printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v67, 30, v68, v63, *(v64 - 1), v70);
          v67 = sub_175AE4();
          v68 = sub_160F68(6);
          v69 = *(v64 - 1);
          v70 = *v64;
        }

        syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v67, 30, v68, v63, v69, v70);
      }

      v65 = (*(v64 - 1) * 8.0 / 1.5 / *v64);
      v62 = *(a1 + 1160);
    }

    ++v63;
    v64 += 2;
  }

  while (v63 < v62);
LABEL_182:
  if (v65 == 0x7FFFFFFF)
  {
LABEL_183:
    v83 = 0;
    goto LABEL_184;
  }

  v83 = 0;
  *(a1 + 1136) = v65;
LABEL_184:
  if (sub_160EF0(0xCu, 7))
  {
    v104 = sub_160F34(0xCu);
    v105 = sub_175AE4();
    v106 = sub_160F68(7);
    if (v104)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v105, 12, v106, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v83);
      v107 = sub_175AE4();
      v230 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v107, 12, v230, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v83);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v105, 12, v106, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v83);
    }
  }

  if (sub_160EF0(0xD1u, 6))
  {
    v108 = sub_160F34(0xD1u);
    v109 = sub_175AE4();
    v110 = sub_160F68(6);
    if (v108)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v109, 209, v110, "AVE_PrepareH264Level", a1);
      v111 = sub_175AE4();
      v231 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v111, 209, v231, "AVE_PrepareH264Level", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v109, 209, v110, "AVE_PrepareH264Level", a1);
    }
  }

  v112 = *(a1 + 1132);
  if (v112 < 1)
  {
    v113 = 0;
  }

  else
  {
    v113 = 0;
    if (v112 != 3 && v112 != 8)
    {
      v113 = *(a1 + 1136);
    }
  }

  if (sub_160EF0(0xD1u, 7))
  {
    v114 = sub_160F34(0xD1u);
    v115 = sub_175AE4();
    v116 = sub_160F68(7);
    v117 = *v10;
    if (v114)
    {
      printf("%lld %d AVE %s: %s:%d starting with SPS profile %d SPS level %d profile %d level %d\n", v115, 209, v116, "AVE_PrepareH264Level", 1823, *(a1 + 12008), *(a1 + 12036), *(a1 + 16448), *(a1 + 16452));
      v115 = sub_175AE4();
      sub_160F68(7);
      v118 = *(a1 + 12008);
      v244 = *v10;
      v248 = *(a1 + 16452);
      v240 = *(a1 + 12036);
    }

    else
    {
      v245 = *v10;
    }

    syslog(3, "%lld %d AVE %s: %s:%d starting with SPS profile %d SPS level %d profile %d level %d", v115, 209);
  }

  if (sub_160EF0(0xD1u, 7))
  {
    v119 = sub_160F34(0xD1u);
    v120 = sub_175AE4();
    v121 = sub_160F68(7);
    v122 = *(a1 + 1112);
    if (v119)
    {
      printf("%lld %d AVE %s: %s:%d starting with bitrate %d (RCMode %d) FrameRate %d USAGE %d\n", v120, 209, v121, "AVE_PrepareH264Level", 1827, *(a1 + 1136), *(a1 + 1132), *(a1 + 1112), *(a1 + 10892));
      v120 = sub_175AE4();
      sub_160F68(7);
      v123 = *(a1 + 1136);
      v246 = *(a1 + 1112);
      v249 = *(a1 + 10892);
      v241 = *(a1 + 1132);
    }

    else
    {
      v247 = *(a1 + 1112);
    }

    syslog(3, "%lld %d AVE %s: %s:%d starting with bitrate %d (RCMode %d) FrameRate %d USAGE %d", v120, 209);
  }

  v124 = *(a1 + 1256);
  if (*(a1 + 1260) < 3 || v124 <= 2)
  {
    if (v124)
    {
      v125 = 2;
    }

    else if (*(a1 + 1476))
    {
      v125 = 2;
    }

    else
    {
      v125 = 1;
    }
  }

  else
  {
    v125 = 4;
  }

  v126 = sub_1326C8(*(a1 + 12008), *(a1 + 1440), *(a1 + 1444), *(a1 + 1112), v113, v125);
  if (v126)
  {
    v127 = v126;
    v128 = *(a1 + 12036);
    if (v128 <= v126)
    {
      v128 = v126;
    }

    *(a1 + 12036) = v128;
    v129 = *(a1 + 16452);
    if (v129)
    {
      if (v129 < v128)
      {
        if (sub_160EF0(0xD1u, 4))
        {
          v130 = sub_160F34(0xD1u);
          v131 = sub_175AE4();
          v132 = sub_160F68(4);
          v133 = *(a1 + 16452);
          if (v130)
          {
            printf("%lld %d AVE %s: %s:%d H264Level %d incompatible with other settings (min should be %d)\n", v131, 209, v132, "AVE_PrepareH264Level", 1858, *(a1 + 16452), *(a1 + 12036));
            v131 = sub_175AE4();
            sub_160F68(4);
            v134 = *(a1 + 16452);
            v242 = *(a1 + 12036);
          }

          else
          {
            v236 = *(a1 + 16452);
          }

          syslog(3, "%lld %d AVE %s: %s:%d H264Level %d incompatible with other settings (min should be %d)", v131);
        }

        v144 = 4294966295;
        goto LABEL_241;
      }

      if (v129 > v128)
      {
        if (sub_160EF0(0xD1u, 6))
        {
          v139 = sub_160F34(0xD1u);
          v140 = sub_175AE4();
          v141 = sub_160F68(6);
          v142 = *(a1 + 16452);
          if (v139)
          {
            printf("%lld %d AVE %s: %s:%d H264Level received (%d) is too high... consider lowering it with these settings (min should be %d)\n", v140, 209, v141, "AVE_PrepareH264Level", 1865, *(a1 + 16452), *(a1 + 12036));
            v140 = sub_175AE4();
            sub_160F68(6);
            v143 = *(a1 + 16452);
            v243 = *(a1 + 12036);
          }

          else
          {
            v237 = *(a1 + 16452);
          }

          syslog(3, "%lld %d AVE %s: %s:%d H264Level received (%d) is too high... consider lowering it with these settings (min should be %d)", v140);
        }

        v144 = 0;
        *(a1 + 12036) = *(a1 + 16452);
        goto LABEL_241;
      }
    }

    v144 = 0;
LABEL_241:
    if (sub_160EF0(0xD1u, 7))
    {
      v145 = sub_160F34(0xD1u);
      v146 = sub_175AE4();
      v147 = sub_160F68(7);
      v148 = *(a1 + 12036);
      if (v145)
      {
        printf("%lld %d AVE %s: %s:%d end with level %d (min %d)\n", v146, 209, v147, "AVE_PrepareH264Level", 1871, *(a1 + 12036), v127);
        v146 = sub_175AE4();
        sub_160F68(7);
        v149 = *(a1 + 12036);
      }

      else
      {
        v238 = *(a1 + 12036);
      }

      syslog(3, "%lld %d AVE %s: %s:%d end with level %d (min %d)", v146);
    }

    goto LABEL_246;
  }

  if (sub_160EF0(0xD1u, 4))
  {
    v135 = sub_160F34(0xD1u);
    v136 = sub_175AE4();
    v137 = sub_160F68(4);
    if (v135)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid level\n", v136, 209, v137, "AVE_PrepareH264Level", 1847, "eLevel != AVC_Level_Invalid");
      v138 = sub_175AE4();
      v232 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level", v138, 209, v232, "AVE_PrepareH264Level", 1847, "eLevel != AVC_Level_Invalid");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level", v136, 209, v137, "AVE_PrepareH264Level", 1847, "eLevel != AVC_Level_Invalid");
    }
  }

  v144 = 4294966295;
LABEL_246:
  if (sub_160EF0(0xD1u, 6))
  {
    v150 = sub_160F34(0xD1u);
    v151 = sub_175AE4();
    v152 = sub_160F68(6);
    if (v150)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v151, 209, v152, "AVE_PrepareH264Level", a1, v144);
      v153 = sub_175AE4();
      v233 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v153, 209, v233, "AVE_PrepareH264Level", a1, v144);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v151, 209, v152, "AVE_PrepareH264Level", a1, v144);
    }
  }

  if (v144)
  {
    if (sub_160EF0(3u, 4))
    {
      v154 = sub_160F34(3u);
      v155 = sub_175AE4();
      v156 = sub_160F68(4);
      if (v154)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_PrepareH264Level failed\n", v155, 3, v156, "AVE_ManageSessionSettings", 5016, "err == 0");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_PrepareH264Level failed");
    }

    return v144;
  }

  v157 = sub_1502C8();
  v158 = v157;
  v159 = *(v157 + 224);
  if ((v159 & 0x80000000) == 0)
  {
    *(a1 + 1264) = v159;
    if (v159 == 1)
    {
      *(a1 + 1252) = 0;
    }
  }

  v160 = *(v157 + 225);
  if ((v160 & 0x80000000) == 0)
  {
    *(a1 + 1268) = v160;
  }

  v161 = v157[113];
  if (v161 >= 0.0)
  {
    *(a1 + 1272) = v161;
  }

  v162 = v157[114];
  if (v162 >= 0.0)
  {
    *(a1 + 1280) = v162;
  }

  v163 = *(a1 + 716);
  v164 = *(v157 + 7);
  v165 = *(a1 + 1456) | *(v157 + 6);
  v167 = *(v157 + 4);
  v166 = *(v157 + 5);
  v168 = (*(a1 + 1448) | v167) & ~v166;
  *(a1 + 1448) = v168;
  *(a1 + 1456) = v165 & ~v164;
  v169 = v168 | v167 & 0x20;
  v170 = v168 & 0xFFFFFFFFFFFFFFDFLL;
  if ((v166 & 0x20) == 0)
  {
    v170 = v169;
  }

  if (((v166 | v167) & 0x20) != 0)
  {
    *(a1 + 1448) = v170;
  }

  if ((v170 & 0x20) != 0)
  {
    if (*(v157 + 1) == 1)
    {
      v172 = sub_1523E8(*(a1 + 68), *(a1 + 64), v163, *(a1 + 10772), *(a1 + 18080));
      v173 = *(a1 + 716);
      if (v172)
      {
        v171 = v173 & 0xFFFFFC3F;
      }

      else
      {
        v171 = v173 | 0x3C0;
      }
    }

    else
    {
      v171 = v163 | 0x3C0;
    }

    *(a1 + 716) = v171;
    v170 = *(a1 + 1448);
    if ((v170 & 0x1000000) != 0)
    {
      *(a1 + 11810) = 1;
    }

    v166 = *(v158 + 5);
    if ((v166 & 0x1000000) != 0)
    {
      *(a1 + 11810) = 0;
    }
  }

  else
  {
    v171 = v163;
  }

  if ((v166 & 0x20) != 0)
  {
    *(a1 + 716) = v171 & 0xFFFFFC3F;
  }

  v174 = *(v158 + 272);
  if ((v174 & 0x80000000) == 0)
  {
    *(a1 + 11812) = v174;
  }

  v175 = *(v158 + 273);
  if ((v175 & 0x80000000) == 0)
  {
    *(a1 + 1396) = v175;
  }

  if ((v170 & 0x40) != 0)
  {
    *(a1 + 13805) = 1;
    if ((v166 & 0x40) == 0)
    {
LABEL_287:
      if ((v170 & 0x80) == 0)
      {
        goto LABEL_288;
      }

      goto LABEL_295;
    }
  }

  else if ((v166 & 0x40) == 0)
  {
    goto LABEL_287;
  }

  *(a1 + 13805) = 0;
  if ((v170 & 0x80) == 0)
  {
LABEL_288:
    if ((v166 & 0x80) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_296;
  }

LABEL_295:
  *(a1 + 13807) = 1;
  *(a1 + 10176) = 2;
  if ((v166 & 0x80) == 0)
  {
LABEL_289:
    if ((v170 & 0x100) == 0)
    {
      goto LABEL_290;
    }

    goto LABEL_297;
  }

LABEL_296:
  *(a1 + 13807) = 0;
  *(a1 + 10176) = 0;
  if ((v170 & 0x100) == 0)
  {
LABEL_290:
    if ((v166 & 0x100) == 0)
    {
      goto LABEL_291;
    }

LABEL_298:
    *(a1 + 14164) = 0;
    if ((v170 & 0x200) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_299;
  }

LABEL_297:
  *(a1 + 14164) = 1;
  if ((v166 & 0x100) != 0)
  {
    goto LABEL_298;
  }

LABEL_291:
  if ((v170 & 0x200) == 0)
  {
    goto LABEL_301;
  }

LABEL_299:
  if (*(a1 + 10892) != 1)
  {
    *(a1 + 12060) = 1;
  }

LABEL_301:
  if ((v166 & 0x200) != 0 && *(a1 + 10892) != 1)
  {
    *(a1 + 12060) = 0;
  }

  if ((v170 & 0x20000) != 0)
  {
    *(a1 + 10205) = 1;
    if ((v166 & 0x20000) == 0)
    {
LABEL_306:
      if ((v170 & 0x40000) == 0)
      {
        goto LABEL_307;
      }

      goto LABEL_391;
    }
  }

  else if ((v166 & 0x20000) == 0)
  {
    goto LABEL_306;
  }

  *(a1 + 10205) = 0;
  if ((v170 & 0x40000) == 0)
  {
LABEL_307:
    if ((v166 & 0x40000) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_392;
  }

LABEL_391:
  *(a1 + 10206) = 1;
  if ((v166 & 0x40000) == 0)
  {
LABEL_308:
    if ((v170 & 0x80000) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_393;
  }

LABEL_392:
  *(a1 + 10206) = 0;
  if ((v170 & 0x80000) == 0)
  {
LABEL_309:
    if ((v166 & 0x80000) == 0)
    {
      goto LABEL_310;
    }

    goto LABEL_394;
  }

LABEL_393:
  *(a1 + 1336) |= 0x200u;
  if ((v166 & 0x80000) == 0)
  {
LABEL_310:
    if ((v170 & 0x100000) == 0)
    {
      goto LABEL_311;
    }

    goto LABEL_395;
  }

LABEL_394:
  *(a1 + 1336) &= ~0x200u;
  if ((v170 & 0x100000) == 0)
  {
LABEL_311:
    if ((v166 & 0x100000) == 0)
    {
      goto LABEL_313;
    }

    goto LABEL_312;
  }

LABEL_395:
  *(a1 + 10855) = 1;
  if ((v166 & 0x100000) != 0)
  {
LABEL_312:
    *(a1 + 10855) = 0;
  }

LABEL_313:
  v176 = *(v158 + 123);
  if (v176)
  {
    *(a1 + 1096) |= v176;
  }

  v177 = *(v158 + 124);
  if (v177)
  {
    *(a1 + 1096) &= ~v177;
  }

  v178 = *(v158 + 96);
  v179 = *(v158 + 97);
  *(a1 + 1120) = (*(a1 + 1120) | v178) & ~v179;
  if ((v178 & 0x40) != 0)
  {
    *(a1 + 1476) = 1;
    if ((v179 & 0x40) == 0)
    {
LABEL_319:
      if ((v178 & 0x80000) == 0)
      {
        goto LABEL_320;
      }

      goto LABEL_399;
    }
  }

  else if ((v179 & 0x40) == 0)
  {
    goto LABEL_319;
  }

  *(a1 + 1476) = 0;
  if ((v178 & 0x80000) == 0)
  {
LABEL_320:
    if ((v179 & 0x80000) == 0)
    {
      goto LABEL_321;
    }

    goto LABEL_400;
  }

LABEL_399:
  *(a1 + 10852) = 1;
  if ((v179 & 0x80000) == 0)
  {
LABEL_321:
    if ((v178 & 0x800000) == 0)
    {
      goto LABEL_322;
    }

LABEL_401:
    *(a1 + 1336) |= 0x4000000u;
    if ((v179 & 0x800000) == 0)
    {
      goto LABEL_324;
    }

    goto LABEL_323;
  }

LABEL_400:
  *(a1 + 10852) = 0;
  if ((v178 & 0x800000) != 0)
  {
    goto LABEL_401;
  }

LABEL_322:
  if ((v179 & 0x800000) != 0)
  {
LABEL_323:
    *(a1 + 1336) &= ~0x4000000u;
  }

LABEL_324:
  v180 = *(v158 + 242);
  if (v180)
  {
    *(a1 + 1352) |= v180;
  }

  v181 = *(v158 + 243);
  if (v181)
  {
    *(a1 + 1352) &= ~v181;
  }

  *(a1 + 1336) = ((*(a1 + 1336) | *(v158 + 237)) & ~*(v158 + 238) | *(v158 + 237) & 4) & (~*(v158 + 238) | 0xFFFFFFFB);
  *(a1 + 1240) = (*(a1 + 1240) | *(v158 + 218)) & ~*(v158 + 219);
  *(a1 + 1296) = (*(a1 + 1296) | *(v158 + 230)) & ~*(v158 + 231);
  v183 = *(v158 + 16);
  v182 = *(v158 + 17);
  *(a1 + 688) = (*(a1 + 688) | v183) & ~v182;
  if ((v183 & 0x400) != 0)
  {
    *(a1 + 10172) = 1;
  }

  if ((v182 & 0x400) != 0)
  {
    *(a1 + 10172) = 0;
  }

  if ((*(v158 + 412) & 8) != 0)
  {
    *(a1 + 1464) = 0x8000000;
  }

  v184 = *(v158 + 200);
  if (v184 >= 1)
  {
    *(a1 + 1136) = v184;
  }

  v185 = *(v158 + 18);
  if ((v185 - 1) <= 0x2F)
  {
    *(a1 + 11772) = v185;
  }

  v186 = *(v158 + 256);
  if (v186 >= 1)
  {
    *(a1 + 1368) = v186;
  }

  v187 = *(v158 + 255);
  if (sub_E71EC(*(a1 + 68), 1, 1, v187))
  {
    *v23 = v187;
  }

  v188 = *(v158 + 189);
  if ((v188 & 0x80000000) == 0)
  {
    *(a1 + 12064) = v188;
    *(a1 + 10845) = 1;
  }

  v189 = *(v158 + 260);
  if (v189 <= 4)
  {
    *(a1 + 10860) = v189;
  }

  v190 = *(v158 + 400);
  if (v190 >= 1)
  {
    *(a1 + 11792) = v190;
  }

  v191 = *(v158 + 240);
  if (v191 != -13)
  {
    *(a1 + 1344) = v191;
  }

  v192 = *(v158 + 241);
  if (v192 != -13)
  {
    *(a1 + 1348) = v192;
  }

  v193 = *(v158 + 196);
  if (v193 != -13)
  {
    *(a1 + 1232) = v193;
  }

  v194 = *(v158 + 197);
  if (v194 != -13)
  {
    *(a1 + 1236) = v194;
  }

  v195 = *(v158 + 201);
  if (v195 != -13)
  {
    *(a1 + 1144) = v195;
  }

  v196 = *(v158 + 202);
  if (v196 != -13)
  {
    *(a1 + 1148) = v196;
  }

  v197 = *(v158 + 203);
  if (v197 != -13)
  {
    *(a1 + 1152) = v197;
  }

  v198 = *(v158 + 401);
  if (v198 >= 1)
  {
    *(a1 + 11796) = v198;
  }

  if (*v158 >= 1)
  {
    *(a1 + 11460) = *v158;
  }

  v199 = *(v158 + 190);
  if (v199 >= 1)
  {
    *(a1 + 1112) = v199;
  }

  v200 = *(v158 + 199);
  if (v200 >= 1)
  {
    *(a1 + 1132) = v200;
  }

  v201 = *(v158 + 200);
  if (v201 >= 1)
  {
    *(a1 + 1136) = v201;
  }

  v202 = *(v158 + 198);
  if ((v202 & 0x80000000) == 0)
  {
    *(a1 + 1128) = v202;
    *(a1 + 1120) |= 0x80000000uLL;
  }

  v203 = v158[102];
  if (v203 >= 0.0)
  {
    *(a1 + 1200) = v203;
  }

  v204 = *(v158 + 397);
  if (v204 >= 1)
  {
    *(a1 + 720) = v204;
  }

  v205 = *(v158 + 258);
  if (v205 <= 2)
  {
    *(a1 + 14196) = v205;
  }

  v206 = *(v158 + 254);
  if (v206 >= 1)
  {
    *(a1 + 10252) = v206;
  }

  v207 = *(a1 + 716);
  if (v163 != v207)
  {
    v208 = *(a1 + 12052) + 8;
    if (v208 <= *(a1 + 12056) + 8)
    {
      v208 = *(a1 + 12056) + 8;
    }

    if (sub_DDADC(*(a1 + 68), *(a1 + 64), v207, 1, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v208, 0, 0x414C4C20u, *(a1 + 16)) && sub_160EF0(0x1Eu, 4))
    {
      v209 = sub_160F34(0x1Eu);
      v210 = sub_175AE4();
      v211 = sub_160F68(4);
      if (v209)
      {
        printf("%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.\n", v210, 30, v211, "AVE_AVC_ApplyDW", 4719, "ret == 0");
        v212 = sub_175AE4();
        v234 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v212, 30, v234, "AVE_AVC_ApplyDW", 4719, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v210, 30, v211, "AVE_AVC_ApplyDW", 4719, "ret == 0");
      }
    }
  }

  v213 = *(a1 + 12036);
  if (v213 <= 2 && *(a1 + 10892) != 1)
  {
    if (*(a1 + 76) <= 29)
    {
      v214 = 1;
    }

    else
    {
      v214 = 2;
    }

    *v23 = v214;
  }

  *(a1 + 1468) = sub_132C10(v213);
  if (*(a1 + 12008) == 2)
  {
    v215 = sub_132D3C(*(a1 + 12036));
  }

  else
  {
    v215 = 0;
  }

  *(a1 + 1472) = v215;
  if (sub_160EF0(0x10u, 7))
  {
    v216 = sub_160F34(0x10u);
    v217 = sub_175AE4();
    v218 = sub_160F68(7);
    v219 = *(a1 + 1468);
    v220 = *(a1 + 1472);
    if (v216)
    {
      printf("%lld %d AVE %s: FIG: MaxMvsPer2Mb = %d MaxSubMbRectSize = %d\n", v217, 16, v218, *(a1 + 1468), v220);
      v221 = sub_175AE4();
      v222 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: MaxMvsPer2Mb = %d MaxSubMbRectSize = %d", v221, 16, v222, *(a1 + 1468), *(a1 + 1472));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: MaxMvsPer2Mb = %d MaxSubMbRectSize = %d", v217, 16, v218, *(a1 + 1468), v220);
    }
  }

  v144 = sub_EBF6C(a1);
  if (v144 && sub_160EF0(3u, 4))
  {
    v223 = sub_160F34(3u);
    v224 = sub_175AE4();
    v225 = sub_160F68(4);
    if (v223)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v224, 3, v225, "AVE_ManageSessionSettings", 5031, "err == 0");
      sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
  }

  return v144;
}

uint64_t sub_F1DC8(uint64_t a1, const __CFDictionary *a2, unint64_t *a3, unsigned int *a4, void *a5)
{
  if (sub_160EF0(0xCu, 7))
  {
    v9 = sub_160F34(0xCu);
    v10 = sub_175AE4();
    v11 = sub_160F68(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p\n", v10, 12, v11, "AVE_GetPerFrameData", a1, a2, a3, a4, a5);
      v12 = sub_175AE4();
      v231 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", v12, 12, v231);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", v10, 12, v11);
    }
  }

  if (a4)
  {
    v13 = a1 + 16460;
    *(a3 + 216) = *(a1 + 1136);
    *(a3 + 212) = *(a1 + 1112);
    v14 = *(a1 + 1160);
    v15 = *(a1 + 1176);
    a3[113] = *(a1 + 1192);
    *(a3 + 109) = v14;
    *(a3 + 111) = v15;
    *(a1 + 16460) = 0;
    *(a3 + 28) = *(a1 + 688) & 2;
    *(a4 + 1362) = *(a1 + 10204);
    v16 = *(a1 + 16544);
    if (!v16)
    {
      v16 = *(a1 + 1440);
    }

    a4[140] = v16;
    v17 = *(a1 + 16548);
    if (!v17)
    {
      v17 = *(a1 + 1444);
    }

    a4[141] = v17;
    a4[342] = *(a1 + 10808);
    *a4 = 0;
    if ((*(a1 + 716) & 0x3C0) == 0)
    {
      *a3 &= ~4uLL;
LABEL_28:
      *(a4 + 3) = 0;
      *(a4 + 30) = 0;
      a5[8] = 0;
      *&v34 = -1;
      *(&v34 + 1) = -1;
      *(a4 + 17) = v34;
      *(a4 + 1392) = 0;
      *(a4 + 48) = 0;
      a4[13] = -1;
      *(a4 + 15) = 0;
      *(a4 + 5) = 0xFFFFFFF3FFFFFFFFLL;
      *(a4 + 21) = v34;
      *(a4 + 66) = 0;
      a4[343] = -1;
      a4[135] = -1;
      if (a2)
      {
        v255 = a4 + 132;
        if (sub_160EF0(0x1Du, 6))
        {
          v35 = sub_160F34(0x1Du);
          v36 = sub_175AE4();
          v37 = sub_160F68(6);
          v38 = *(a1 + 16468);
          if (v35)
          {
            printf("%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d\n", v36, 29, v37, v38);
            v39 = sub_175AE4();
            v233 = sub_160F68(6);
            syslog(3, "%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d", v39, 29, v233, *(a1 + 16468));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d", v36, 29, v37, v38);
          }
        }

        Value = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_ForceKeyFrame);
        if (Value && CFEqual(Value, kCFBooleanTrue))
        {
          v42 = (*(a1 + 1240) & 0x100) != 0 ? 1 : 2;
          *a4 = v42;
          *(a3 + 230) |= 1u;
          if (sub_160EF0(0x1Du, 6))
          {
            v43 = sub_160F34(0x1Du);
            v44 = sub_175AE4();
            v45 = sub_160F68(6);
            v46 = *a4;
            v47 = *(a3 + 230);
            if (v43)
            {
              printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x\n", v44, 29, v45, *a4, v47);
              v48 = sub_175AE4();
              v49 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v48, 29, v49, *a4, *(a3 + 230));
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v44, 29, v45, *a4, v47);
            }
          }
        }

        v51 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_FirstMbInRecvSlices);
        if (v51)
        {
          v52 = v51;
          TypeID = CFDataGetTypeID();
          if (TypeID == CFGetTypeID(v52))
          {
            *(a3 + 232) |= 0x10u;
            if (sub_160EF0(0x1Du, 6))
            {
              v54 = sub_160F34(0x1Du);
              v55 = sub_175AE4();
              v56 = sub_160F68(6);
              if (v54)
              {
                printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices\n", v55, 29, v56);
                v57 = sub_175AE4();
                v234 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices", v57, 29, v234);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices", v55, 29, v56);
              }
            }
          }
        }

        v58 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_ForceRefresh);
        if (v58)
        {
          if (CFEqual(v58, kCFBooleanTrue))
          {
            *(a3 + 232) |= 0x10u;
            if (sub_160EF0(0x1Du, 6))
            {
              v59 = sub_160F34(0x1Du);
              v60 = sub_175AE4();
              v61 = sub_160F68(6);
              v62 = *(a3 + 232);
              if (v59)
              {
                printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x\n", v60, 29, v61, v62);
                v63 = sub_175AE4();
                v235 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x", v63, 29, v235, *(a3 + 232));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x", v60, 29, v61, v62);
              }
            }
          }
        }

        v64 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_RepeatedFrame);
        if (v64)
        {
          if (CFEqual(v64, kCFBooleanTrue))
          {
            *a3 |= 8uLL;
            if (sub_160EF0(0x1Du, 6))
            {
              v65 = sub_160F34(0x1Du);
              v66 = sub_175AE4();
              v67 = sub_160F68(6);
              v68 = *a3;
              if (v65)
              {
                printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx\n", v66, 29, v67, v68);
                v69 = sub_175AE4();
                v236 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx", v69, 29, v236, *a3);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx", v66, 29, v67, v68);
              }
            }
          }
        }

        v70 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_UserQpMap);
        a4[8] = 0;
        *(a4 + 3) = 0;
        *(a3 + 234) &= ~0x10000u;
        if (*(a1 + 1338))
        {
          v71 = v70;
          if (v70)
          {
            a4[8] = CFDataGetLength(v70);
            *(a4 + 3) = CFDataGetBytePtr(v71);
            *(a3 + 234) |= 0x10000u;
          }
        }

        v72 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_VRAUsedDimension);
        if (v72)
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v72, kCFNumberSInt32Type, &valuePtr);
          v73 = valuePtr;
          a4[2] = WORD1(valuePtr);
          a4[3] = v73;
          if (sub_160EF0(0x1Du, 6))
          {
            v74 = sub_160F34(0x1Du);
            v75 = sub_175AE4();
            v76 = sub_160F68(6);
            v77 = a4[2];
            v78 = a4[3];
            if (v74)
            {
              printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d\n", v75, 29, v76, a4[2], v78);
              v79 = sub_175AE4();
              v80 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d", v79, 29, v80, a4[2], a4[3]);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d", v75, 29, v76, a4[2], v78);
            }
          }
        }

        v81 = CFDictionaryGetValue(a2, @"AttachDPB");
        if (v81 && CFEqual(v81, kCFBooleanTrue))
        {
          if (sub_160EF0(0x1Du, 6))
          {
            v82 = sub_160F34(0x1Du);
            v83 = sub_175AE4();
            v84 = sub_160F68(6);
            v85 = *(a1 + 16468);
            if (v82)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)\n", v83, 29, v84, v85);
              v86 = sub_175AE4();
              v237 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)", v86, 29, v237, *(a1 + 16468));
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)", v83, 29, v84, v85);
            }
          }

          *(a4 + 36) = 1;
        }

        v87 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_SetDPB);
        if (v87)
        {
          if (*(a1 + 16468))
          {
            v88 = v87;
            if (sub_160EF0(0x1Eu, 6))
            {
              v89 = sub_160F34(0x1Eu);
              v90 = sub_175AE4();
              v91 = sub_160F68(6);
              v92 = *(a1 + 16468);
              if (v89)
              {
                printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)\n", v90, 30, v91, v92);
                v93 = sub_175AE4();
                v238 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)", v93, 30, v238, *(a1 + 16468));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)", v90, 30, v91, v92);
              }

              v13 = a1 + 16460;
            }

            *(a4 + 37) = 1;
            a5[8] = v88;
          }

          else
          {
            if (sub_160EF0(0x1Du, 5))
            {
              v94 = sub_160F34(0x1Du);
              v95 = sub_175AE4();
              v96 = sub_160F68(5);
              if (v94)
              {
                printf("%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true\n", v95, 29, v96);
                v97 = sub_175AE4();
                v239 = sub_160F68(5);
                syslog(3, "%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true", v97, 29, v239);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true", v95, 29, v96);
              }
            }

            if (sub_160EF0(0x1Du, 5))
            {
              v98 = sub_160F34(0x1Du);
              v99 = sub_175AE4();
              v100 = sub_160F68(5);
              if (v98)
              {
                printf("%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag\n", v99, 29, v100);
                v101 = sub_175AE4();
                v240 = sub_160F68(5);
                syslog(3, "%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag", v101, 29, v240);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag", v99, 29, v100);
              }
            }
          }
        }

        v102 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_CalculateYUVChecksum);
        if (v102)
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v102, kCFNumberSInt32Type, &valuePtr);
          if (valuePtr)
          {
            *a3 |= 0x10000uLL;
          }
        }

        v103 = CFDictionaryGetValue(a2, @"MarkCurrentFrameAsLTR");
        if (v103)
        {
          if (CFEqual(v103, kCFBooleanTrue))
          {
            *(a4 + 48) = 1;
            if (sub_160EF0(0x1Du, 6))
            {
              v104 = sub_160F34(0x1Du);
              v105 = sub_175AE4();
              v106 = sub_160F68(6);
              if (v104)
              {
                printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE\n", v105, 29, v106);
                v107 = sub_175AE4();
                v241 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE", v107, 29, v241);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE", v105, 29, v106);
              }
            }
          }
        }

        v108 = CFDictionaryGetValue(a2, @"RVRADimension");
        if (v108)
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v108, kCFNumberSInt32Type, &valuePtr);
          v109 = valuePtr;
          a4[15] = WORD1(valuePtr);
          a4[16] = v109;
          if (sub_160EF0(0x1Du, 6))
          {
            v110 = sub_160F34(0x1Du);
            v111 = sub_175AE4();
            v112 = sub_160F68(6);
            v113 = a4[15];
            v114 = a4[16];
            if (v110)
            {
              printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d\n", v111, 29, v112, a4[15], v114);
              v115 = sub_175AE4();
              v116 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d", v115, 29, v116, a4[15], a4[16]);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d", v111, 29, v112, a4[15], v114);
            }
          }
        }

        v117 = CFDictionaryGetValue(a2, @"FrameNumForLTRToReplace");
        if (v117)
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v117, kCFNumberSInt32Type, &valuePtr);
          a4[13] = valuePtr;
          if (sub_160EF0(0x1Du, 6))
          {
            v118 = sub_160F34(0x1Du);
            v119 = sub_175AE4();
            v120 = sub_160F68(6);
            v121 = a4[13];
            if (v118)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)\n", v119, 29, v120, v121);
              v122 = sub_175AE4();
              v242 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)", v122, 29, v242, a4[13]);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)", v119, 29, v120, v121);
            }
          }
        }

        v123 = CFDictionaryGetValue(a2, @"UserFrameType");
        if (v123)
        {
          LODWORD(valuePtr) = 5;
          CFNumberGetValue(v123, kCFNumberSInt32Type, &valuePtr);
          a4[10] = valuePtr;
          if (sub_160EF0(0x1Du, 6))
          {
            v124 = sub_160F34(0x1Du);
            v125 = sub_175AE4();
            v126 = sub_160F68(6);
            v127 = a4[10];
            if (v124)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)\n", v125, 29, v126, v127);
              v128 = sub_175AE4();
              v243 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)", v128, 29, v243, a4[10]);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)", v125, 29, v126, v127);
            }
          }
        }

        v129 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_ReferenceL0);
        if (v129)
        {
          v130 = v129;
          v131 = CFArrayGetTypeID();
          if (v131 == CFGetTypeID(v130))
          {
            LODWORD(valuePtr) = 4;
            sub_1702C8(v130, a4 + 17, &valuePtr);
            *(a4 + 56) = valuePtr;
            if (sub_160EF0(0x1Du, 6))
            {
              v132 = sub_160F34(0x1Du);
              v133 = sub_175AE4();
              v134 = sub_160F68(6);
              v135 = *(a4 + 56);
              if (v132)
              {
                printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_ReferenceL0, count = %d\n", v133, 29, v134, v135);
                v136 = sub_175AE4();
                v244 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_ReferenceL0, count = %d", v136, 29, v244, *(a4 + 56));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_ReferenceL0, count = %d", v133, 29, v134, v135);
              }
            }
          }
        }

        v137 = CFDictionaryGetValue(a2, @"SliceAlphaC0OffsetDiv2");
        if (v137)
        {
          CFNumberGetValue(v137, kCFNumberSInt32Type, v255);
          if (sub_160EF0(0x1Du, 6))
          {
            v138 = sub_160F34(0x1Du);
            v139 = sub_175AE4();
            v140 = sub_160F68(6);
            v141 = *v255;
            if (v138)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceAlphaC0OffsetDiv2 found (%d)\n", v139, 29, v140, v141);
              v142 = sub_175AE4();
              v245 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceAlphaC0OffsetDiv2 found (%d)", v142, 29, v245, *v255);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceAlphaC0OffsetDiv2 found (%d)", v139, 29, v140, v141);
            }
          }
        }

        v143 = CFDictionaryGetValue(a2, @"SliceBetaOffsetDiv2");
        if (v143)
        {
          v144 = (a4 + 133);
          CFNumberGetValue(v143, kCFNumberSInt32Type, a4 + 133);
          if (sub_160EF0(0x1Du, 6))
          {
            v145 = sub_160F34(0x1Du);
            v146 = sub_175AE4();
            v147 = sub_160F68(6);
            v148 = *v144;
            if (v145)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)\n", v146, 29, v147, v148);
              v149 = sub_175AE4();
              v246 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)", v149, 29, v246, *v144);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)", v146, 29, v147, v148);
            }
          }
        }

        if ((*(a1 + 1296) & 1) != 0 && a4[10] == 1)
        {
          v40 = sub_170D74(a2, *(a4 + 56), a4 + 25);
          if (!v40)
          {
            valuePtr = 0u;
            v261 = 0u;
            v229 = *(v13 + 8);
            sub_172100(&valuePtr, 32, "%llu %d", v150, v151, v152, v153, v154, *(a1 + 56));
            sub_171244(a4 + 25, 0xD7u, 6, &valuePtr, 0, v155, v156, v157);
          }
        }

        else
        {
          v40 = 0;
        }

        v158 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_FinalFrame);
        if (v158)
        {
          if (CFEqual(v158, kCFBooleanTrue))
          {
            *a3 |= 2uLL;
            if (sub_160EF0(0x1Du, 6))
            {
              v159 = sub_160F34(0x1Du);
              v160 = sub_175AE4();
              v161 = sub_160F68(6);
              if (v159)
              {
                printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE\n", v160, 29, v161);
                v162 = sub_175AE4();
                v247 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE", v162, 29, v247);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE", v160, 29, v161);
              }
            }
          }
        }

        v163 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_PicParameterSetId);
        if (v163)
        {
          v164 = (a4 + 135);
          CFNumberGetValue(v163, kCFNumberSInt32Type, a4 + 135);
          if (sub_160EF0(0x1Du, 6))
          {
            v256 = v40;
            v165 = v13;
            v166 = sub_160F34(0x1Du);
            v167 = sub_175AE4();
            v168 = sub_160F68(6);
            v169 = *v164;
            if (v166)
            {
              printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)\n", v167, 29, v168, v169);
              v170 = sub_175AE4();
              v248 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)", v170, 29, v248, *v164);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)", v167, 29, v168, v169);
            }

            v13 = v165;
            v40 = v256;
          }
        }

        v171 = (a4 + 11);
        v172 = CFDictionaryGetValue(a2, @"POCLsb");
        if (v172)
        {
          v173 = (a4 + 343);
          CFNumberGetValue(v172, kCFNumberSInt32Type, a4 + 343);
          if (sub_160EF0(0x1Du, 6))
          {
            v257 = v40;
            v174 = v13;
            v175 = sub_160F34(0x1Du);
            v176 = sub_175AE4();
            v177 = sub_160F68(6);
            v178 = *v173;
            if (v175)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)\n", v176, 29, v177, v178);
              v179 = sub_175AE4();
              v249 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)", v179, 29, v249, *v173);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)", v176, 29, v177, v178);
            }

            v13 = v174;
            v40 = v257;
          }
        }

        v180 = kVTEncodeFrameOptionKey_SliceQP;
        v181 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_SliceQP);
        if (v181)
        {
          CFNumberGetValue(v181, kCFNumberSInt32Type, a4 + 11);
          if (sub_160EF0(0x1Du, 6))
          {
            v182 = sub_160F34(0x1Du);
            v183 = sub_175AE4();
            v184 = sub_160F68(6);
            v185 = *v171;
            if (v182)
            {
              printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)\n", v183, 29, v184, v185);
              v186 = sub_175AE4();
              v250 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)", v186, 29, v250, *v171);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)", v183, 29, v184, v185);
            }
          }
        }

        else
        {
          v187 = CFDictionaryGetValue(a2, v180);
          if (v187)
          {
            v188 = v187;
            v189 = CFArrayGetTypeID();
            if (v189 == CFGetTypeID(v188))
            {
              v254 = v13;
              v258 = v40;
              Count = CFArrayGetCount(v188);
              LODWORD(valuePtr) = 0;
              if (Count >= 1)
              {
                v191 = Count;
                for (i = 0; i < v191; i = (i + 1))
                {
                  sub_14AE14(v188, i, &valuePtr);
                  if (!i)
                  {
                    *v171 = valuePtr;
                  }

                  if (sub_160EF0(0x1Du, 6))
                  {
                    v193 = sub_160F34(0x1Du);
                    v194 = sub_175AE4();
                    v195 = sub_160F68(6);
                    if (v193)
                    {
                      printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP[%d] found (%d)\n", v194, 29, v195, i, valuePtr);
                      v194 = sub_175AE4();
                      v195 = sub_160F68(6);
                    }

                    syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP[%d] found (%d)", v194, 29, v195, i, valuePtr);
                  }
                }
              }

              v13 = v254;
              v40 = v258;
            }
          }
        }

        v196 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_RequestNonReferenceFrame);
        if (v196)
        {
          if (CFEqual(v196, kCFBooleanTrue))
          {
            *(a4 + 1392) = 1;
            if (sub_160EF0(0x1Du, 6))
            {
              v197 = sub_160F34(0x1Du);
              v198 = sub_175AE4();
              v199 = sub_160F68(6);
              v200 = *(a4 + 1392);
              if (v197)
              {
                printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)\n", v198, 29, v199, v200);
                v201 = sub_175AE4();
                v251 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)", v201, 29, v251, *(a4 + 1392));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)", v198, 29, v199, v200);
              }
            }
          }
        }

        v202 = CFDictionaryGetValue(a2, @"ResetRCState");
        if (v202)
        {
          v203 = CFEqual(v202, kCFBooleanTrue);
          *(a4 + 4) = v203 != 0;
          if (v203)
          {
            v204 = *(a1 + 1132);
            if (v204 == 1)
            {
              *a4 = 2;
              if (sub_160EF0(0x1Du, 6))
              {
                v208 = sub_160F34(0x1Du);
                v209 = sub_175AE4();
                v210 = sub_160F68(6);
                if (v208)
                {
                  printf("%lld %d AVE %s: FIG: received AVE_kVTEncodeFrameOptionKey_ResetRCState = %d, set forceKeyFrame to IDR\n", v209, 29, v210, *(a4 + 4));
                  sub_175AE4();
                  sub_160F68(6);
                  v211 = *(a4 + 4);
                }

                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncodeFrameOptionKey_ResetRCState = %d, set forceKeyFrame to IDR");
              }
            }

            else if (v204 == 20)
            {
              *(a4 + 4) = 0;
              if (sub_160EF0(0x1Du, 5))
              {
                v205 = sub_160F34(0x1Du);
                v206 = sub_175AE4();
                v207 = sub_160F68(5);
                if (v205)
                {
                  printf("%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state for Direct RC.\n", v206, 29, v207);
                  sub_175AE4();
                  sub_160F68(5);
                }

                syslog(3, "%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state for Direct RC.");
              }
            }

            else
            {
              *(a4 + 4) = 0;
              if (sub_160EF0(0x1Du, 5))
              {
                v212 = sub_160F34(0x1Du);
                v213 = sub_175AE4();
                v214 = sub_160F68(5);
                if (v212)
                {
                  printf("%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state if RC is NOT On.\n", v213, 29, v214);
                  sub_175AE4();
                  sub_160F68(5);
                }

                syslog(3, "%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state if RC is NOT On.");
              }
            }
          }
        }

        v215 = a3 + 100;
        if ((*(a1 + 1337) & 4) != 0)
        {
          if (!sub_13D92C(a2, a3 + 200))
          {
            valuePtr = 0u;
            v261 = 0u;
            v230 = *(v13 + 8);
            v252 = *v215;
            sub_172100(&valuePtr, 32, "%llu %d %d", v216, v217, v218, v219, v220, *(a1 + 56));
            sub_13D890(a3 + 200, 50, 6, &valuePtr, 0, v221, v222, v223);
          }
        }

        else
        {
          *v215 = 0;
        }
      }

      else
      {
        v40 = 0;
      }

      goto LABEL_205;
    }

    if (*(a1 + 11810) == 1)
    {
      v18 = *(sub_1502C8() + 263);
      if (v18 >= 1)
      {
        v19 = *(a1 + 16468);
        if (v19 <= 3)
        {
          v20 = *a3 | 4;
          *a3 = v20;
          *(a1 + 18088) |= 4uLL;
LABEL_22:
          if (*(a1 + 16468) <= 5u)
          {
            *a3 = v20 | 4;
          }

          if (sub_160EF0(0x10u, 8))
          {
            v26 = sub_160F34(0x10u);
            v27 = sub_175AE4();
            v28 = sub_160F68(8);
            v29 = *(a1 + 16468);
            v30 = *(a5[17] + 72);
            v31 = *a3;
            if (v26)
            {
              printf("%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx\n", v27, 16, v28, v29, *(a5[17] + 72), v31);
              v32 = sub_175AE4();
              v33 = sub_160F68(8);
              syslog(3, "%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx", v32, 16, v33, *(a1 + 16468), *(a5[17] + 72), *a3);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx", v27, 16, v28, v29, *(a5[17] + 72), v31);
            }
          }

          goto LABEL_28;
        }

        v50 = v19 % v18;
        v20 = *(a1 + 18088);
        if (!v50)
        {
          v20 = (*a3 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v20 >> 2) & 1))) ^ 4;
          *a3 = v20;
          *(a1 + 18088) = v20;
          goto LABEL_22;
        }

LABEL_21:
        *a3 = v20;
        goto LABEL_22;
      }

      v25 = *a3;
      if (*(a5[17] + 72) > 254)
      {
        v20 = v25 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_21;
      }
    }

    else
    {
      v25 = *a3;
    }

    v20 = v25 | 4;
    goto LABEL_21;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v21 = sub_160F34(0xCu);
    v22 = sub_175AE4();
    v23 = sub_160F68(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s:%d %s | PerFrameData = NULL\n", v22, 12, v23, "AVE_GetPerFrameData", 597, "PerFrameData != __null");
      v24 = sub_175AE4();
      v232 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | PerFrameData = NULL", v24, 12, v232, "AVE_GetPerFrameData", 597, "PerFrameData != __null");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | PerFrameData = NULL", v22, 12, v23, "AVE_GetPerFrameData", 597, "PerFrameData != __null");
    }
  }

  v40 = 4294966295;
LABEL_205:
  if (sub_160EF0(0xCu, 7))
  {
    v224 = sub_160F34(0xCu);
    v225 = sub_175AE4();
    v226 = sub_160F68(7);
    if (v224)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %d\n", v225, 12, v226, "AVE_GetPerFrameData", a1, a2, a3, a4, a5, v40);
      v227 = sub_175AE4();
      v253 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v227, 12, v253, "AVE_GetPerFrameData");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v225, 12, v226, "AVE_GetPerFrameData");
    }
  }

  return v40;
}

void sub_F3720(uint64_t a1, uint64_t a2, double a3)
{
  if (!*(a1 + 10892))
  {
    if (sub_160EF0(0x30u, 6))
    {
      v6 = sub_160F34(0x30u);
      v7 = sub_175AE4();
      v8 = sub_160F68(6);
      v9 = *(a1 + 16468);
      if (v6)
      {
        printf("%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f\n", v7, 48, v8, v9, 25.0, a3);
        v10 = sub_175AE4();
        v11 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f", v10, 48, v11, *(a1 + 16468), 25.0, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f", v7, 48, v8, v9, 25.0, a3);
      }
    }

    if (*(a1 + 10804) == 2)
    {
      *(a2 + 20) = a3 <= 25.0;
    }

    if (*(a1 + 10852) == 1)
    {
      *(a2 + 20) = 1;
    }
  }
}

uint64_t sub_F3858(uint64_t a1, void *a2)
{
  v3 = a1 + 0x4000;
  if (!*(a1 + 16468))
  {
    v11 = a2[2];
    *(a1 + 16516) = *a2;
    v12 = (a1 + 16516);
    *(a1 + 16524) = a2[1];
    *(a1 + 16532) = v11;
    if (sub_160EF0(0xD8u, 6))
    {
      v13 = sub_160F34(0xD8u);
      v14 = sub_175AE4();
      v15 = sub_160F68(6);
      v16 = *(a2 + 3);
      if (v13)
      {
        printf("%lld %d AVE %s: PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld\n", v14, 216, v15, *a2, *(a2 + 2), *(a2 + 3), a2[2]);
        v14 = sub_175AE4();
        sub_160F68(6);
        v17 = *a2;
        v47 = *(a2 + 3);
        v50 = a2[2];
        v45 = *(a2 + 2);
      }

      else
      {
        v48 = *(a2 + 3);
      }

      syslog(3, "%lld %d AVE %s: PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", v14);
    }

    v25 = *(a1 + 16496);
    v57 = *v12;
    v62 = *(v3 + 148);
    v26 = *(v3 + 124);
    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!sub_160EF0(3u, 4))
      {
        return 4294954394;
      }

      v27 = sub_160F34(3u);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      v30 = *a2;
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed. F %d PTS %lld ts %d\n", v28, 3, v29, "AVE_H264MultipassDataFetch", 4877, "err == noErr", *(v3 + 84), *a2, *(a2 + 2));
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        v52 = *a2;
        v53 = *(a2 + 2);
        v49 = "err == noErr";
        v51 = *(v3 + 84);
        v46 = 4877;
      }

      else
      {
        v52 = *a2;
        v53 = *(a2 + 2);
        v51 = *(v3 + 84);
        v46 = 4877;
        v49 = "err == noErr";
      }

      v44 = v29;
      v31 = "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed. F %d PTS %lld ts %d";
    }

    else
    {
      if (!sub_160EF0(3u, 4))
      {
        return 4294954394;
      }

      v32 = sub_160F34(3u);
      v28 = sub_175AE4();
      v33 = sub_160F68(4);
      v34 = *a2;
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp data == NULL. F %d PTS %lld ts %d\n", v28, 3, v33, "AVE_H264MultipassDataFetch", 4878, "data != __null", *(v3 + 84), *a2, *(a2 + 2));
        v28 = sub_175AE4();
        v33 = sub_160F68(4);
        v52 = *a2;
        v53 = *(a2 + 2);
        v49 = "data != __null";
        v51 = *(v3 + 84);
        v46 = 4878;
      }

      else
      {
        v52 = *a2;
        v53 = *(a2 + 2);
        v51 = *(v3 + 84);
        v46 = 4878;
        v49 = "data != __null";
      }

      v44 = v33;
      v31 = "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp data == NULL. F %d PTS %lld ts %d";
    }

    syslog(3, v31, v28, 3, v44, "AVE_H264MultipassDataFetch", v46, v49, v51, v52, v53);
    return 4294954394;
  }

  v4 = *(a1 + 16496);
  v5 = (a1 + 16516);
  v54 = *(a1 + 16516);
  v59 = *(a1 + 16532);
  if (VTMultiPassStorageGetTimeStamp())
  {
    if (sub_160EF0(3u, 4))
    {
      v6 = sub_160F34(3u);
      v7 = sub_175AE4();
      v8 = sub_160F68(4);
      if (!v6)
      {
LABEL_21:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp failed.");
        return 4294954394;
      }

      v9 = 4932;
LABEL_6:
      printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp failed.\n", v7, 3, v8, "AVE_H264MultipassDataFetch", v9, "err == noErr");
      sub_175AE4();
      sub_160F68(4);
      goto LABEL_21;
    }

    return 4294954394;
  }

  v18 = *(a1 + 16496);
  if ((*(v3 + 144) & 0x1D) == 1)
  {
    v55 = *v5;
    v60 = *(a1 + 16532);
    v19 = *(v3 + 124);
    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!sub_160EF0(3u, 4))
      {
        return 4294954394;
      }

      v20 = sub_160F34(3u);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        v23 = 4937;
LABEL_16:
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed.\n", v21, 3, v22, "AVE_H264MultipassDataFetch", v23, "err == noErr");
        sub_175AE4();
        sub_160F68(4);
        goto LABEL_41;
      }

      goto LABEL_41;
    }

    if (!sub_160EF0(3u, 4))
    {
      return 4294954394;
    }

    v38 = sub_160F34(3u);
    v39 = sub_175AE4();
    v40 = sub_160F68(4);
    if (v38)
    {
      v41 = 4938;
LABEL_46:
      printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp d == NULL.\n", v39, 3, v40, "AVE_H264MultipassDataFetch", v41, "d != __null");
      sub_175AE4();
      sub_160F68(4);
      goto LABEL_50;
    }

    goto LABEL_50;
  }

  v56 = *v5;
  v61 = *(a1 + 16532);
  if (!VTMultiPassStorageGetTimeStamp())
  {
    if ((*(v3 + 144) & 0x1D) != 1)
    {
      return 0;
    }

    v35 = *(a1 + 16496);
    v58 = *v5;
    v63 = *(a1 + 16532);
    v36 = *(v3 + 124);
    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!sub_160EF0(3u, 4))
      {
        return 4294954394;
      }

      v37 = sub_160F34(3u);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v37)
      {
        v23 = 4962;
        goto LABEL_16;
      }

LABEL_41:
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed.");
      return 4294954394;
    }

    if (!sub_160EF0(3u, 4))
    {
      return 4294954394;
    }

    v43 = sub_160F34(3u);
    v39 = sub_175AE4();
    v40 = sub_160F68(4);
    if (v43)
    {
      v41 = 4963;
      goto LABEL_46;
    }

LABEL_50:
    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp d == NULL.");
    return 4294954394;
  }

  if (sub_160EF0(3u, 4))
  {
    v24 = sub_160F34(3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(4);
    if (!v24)
    {
      goto LABEL_21;
    }

    v9 = 4957;
    goto LABEL_6;
  }

  return 4294954394;
}

uint64_t sub_F46C0(uint64_t a1)
{
  if (sub_160EF0(0xCu, 7))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: Enter %s %p\n", v3, 12, v4, "AVE_Session_AVC_Complete", a1);
      v5 = sub_175AE4();
      v24 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: Enter %s %p", v5, 12, v24, "AVE_Session_AVC_Complete", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Enter %s %p", v3, 12, v4, "AVE_Session_AVC_Complete", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 12000);
    v7 = sub_175AE4();
    sub_140028(v6, 6u, v7);
    if (*(a1 + 16464) == 30568)
    {
      v27 = sub_175AE4();
      v8 = sub_12D170(*(a1 + 120), &v27);
      if (v8 && sub_160EF0(0xCu, 4))
      {
        v9 = sub_160F34(0xCu);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        v12 = *(a1 + 56);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %p %lld %d\n", v10, 12, v11, "AVE_Session_AVC_Complete", 5476, "ret == 0", a1, *(a1 + 56), v8);
          v10 = sub_175AE4();
          v11 = sub_160F68(4);
          v13 = *(a1 + 56);
        }

        else
        {
          v26 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %lld %d", v10, 12, v11);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v14 = sub_160F34(0xCu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 12, v16, "AVE_Session_AVC_Complete", 5463, "pINS != __null", 0);
        v15 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v15);
    }

    v8 = 4294966295;
  }

  v17 = *(a1 + 12000);
  v18 = sub_175AE4();
  sub_1403FC(v17, 6u, v18);
  if (sub_160EF0(0xCu, 7))
  {
    v19 = sub_160F34(0xCu);
    v20 = sub_175AE4();
    v21 = sub_160F68(7);
    if (v19)
    {
      printf("%lld %d AVE %s: Exit %s %p %d\n", v20, 12, v21, "AVE_Session_AVC_Complete", a1, v8);
      v22 = sub_175AE4();
      v25 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: Exit %s %p %d", v22, 12, v25, "AVE_Session_AVC_Complete", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Exit %s %p %d", v20, 12, v21, "AVE_Session_AVC_Complete", a1, v8);
    }
  }

  return v8;
}

uint64_t sub_F4A58(uint64_t a1, void *a2)
{
  if (sub_160EF0(0xCu, 8))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 12, v6, "AVE_Session_AVC_GetPropertyDict", a1, a2);
      v7 = sub_175AE4();
      v25 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v25, "AVE_Session_AVC_GetPropertyDict", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 12, v6, "AVE_Session_AVC_GetPropertyDict", a1, a2);
    }
  }

  if (a1 && a2)
  {
    *a2 = 0;
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = (a1 + 8 * v8 + 80);
    }

    else
    {
      v9 = (a1 + 88);
    }

    v10 = *v9;
    if (*v9)
    {
      v11 = CFGetRetainCount(*v9);
      if (v11 != 1 && sub_160EF0(0xCu, 5))
      {
        v12 = sub_160F34(0xCu);
        v13 = sub_175AE4();
        v14 = sub_160F68(5);
        v15 = *(a1 + 56);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d property dictionary ref count %p %lld %d\n", v13, 12, v14, "AVE_Session_AVC_GetPropertyDict", 5518, a1, *(a1 + 56), v11);
          v13 = sub_175AE4();
          sub_160F68(5);
          v16 = *(a1 + 56);
        }

        else
        {
          v26 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d property dictionary ref count %p %lld %d", v13, 12);
      }

      CFRetain(v10);
      v20 = 0;
    }

    else
    {
      v20 = 4294966288;
    }

    *a2 = v10;
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v17 = sub_160F34(0xCu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v18, 12, v19, "AVE_Session_AVC_GetPropertyDict", 5498, "pINS != __null && ppDict != __null", a1, a2);
        v18 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v18, 12);
    }

    v20 = 4294966295;
  }

  if (sub_160EF0(0xCu, 8))
  {
    v21 = sub_160F34(0xCu);
    v22 = sub_175AE4();
    v23 = sub_160F68(8);
    if (v21)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v22, 12, v23, "AVE_Session_AVC_GetPropertyDict", a1, a2, v20);
      v22 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v22);
  }

  return v20;
}

uint64_t sub_F4DE0(const void *a1, const void *a2, const __CFString *a3, const void *a4)
{
  if (sub_160EF0(0xCu, 8))
  {
    v8 = sub_160F34(0xCu);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", v9, 12, v10, "AVE_Session_AVC_GetProperty", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", v9, 12);
  }

  if (a1 && a3 && a4)
  {
    v11 = sub_CA7D8(a1, a2, a3, a4);
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v12 = sub_160F34(0xCu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v13, 12, v14, "AVE_Session_AVC_GetProperty", 5545, "pINS != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v15 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 12, v21, "AVE_Session_AVC_GetProperty");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 12, v14, "AVE_Session_AVC_GetProperty");
      }
    }

    v11 = 4294966295;
  }

  if (sub_160EF0(0xCu, 8))
  {
    v16 = sub_160F34(0xCu);
    v17 = sub_175AE4();
    v18 = sub_160F68(8);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d\n", v17, 12, v18, "AVE_Session_AVC_GetProperty", a1, a2, a3, a4, v11);
      v19 = sub_175AE4();
      v22 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v19, 12, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v17, 12, v18);
    }
  }

  return v11;
}

uint64_t sub_F50AC()
{
  v0 = __chkstk_darwin();
  if (sub_160EF0(0xCu, 6))
  {
    v1 = sub_160F34(0xCu);
    v2 = sub_175AE4();
    v3 = sub_160F68(6);
    if (v1)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v2, 12, v3, "AVE_Session_AVC_Prepare", v0);
      v4 = sub_175AE4();
      v26 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v4, 12, v26, "AVE_Session_AVC_Prepare", v0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v2, 12, v3, "AVE_Session_AVC_Prepare", v0);
    }
  }

  if (v0)
  {
    if (*(v0 + 16464) != 30566)
    {
      goto LABEL_20;
    }

    bzero(v30, 0x1058uLL);
    v5 = sub_EFE80(v0);
    if (v5)
    {
      v6 = v5;
      if (sub_160EF0(0xCu, 4))
      {
        v7 = sub_160F34(0xCu);
        v8 = sub_175AE4();
        v9 = sub_160F68(4);
        if (v7)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to manage settings %p %lld\n", v8, 12, v9, "AVE_Session_AVC_Prepare", 5577, "err == 0", v0, *(v0 + 56));
          v8 = sub_175AE4();
          sub_160F68(4);
          v10 = *(v0 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to manage settings %p %lld", v8, 12);
      }

      goto LABEL_26;
    }

    *(v0 + 10760) = 1;
    v14 = sub_175AE4();
    v28 = *(v0 + 12000);
    v29 = *(v0 + 18064);
    v15 = *(v0 + 16480);
    v30[94] = v0 + 12008;
    v30[95] = v0 + 13724;
    v30[96] = v0 + 14108;
    memcpy(v31, (v0 + 16592), sizeof(v31));
    v32 = v14;
    v16 = *(v0 + 120);
    if (!sub_1296B0())
    {
LABEL_20:
      v6 = 0;
      *(v0 + 16464) = 30567;
      goto LABEL_26;
    }

    if (sub_160EF0(0xCu, 4))
    {
      v17 = sub_160F34(0xCu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare %p %lld\n", v18, 12, v19, "AVE_Session_AVC_Prepare", 5586, "err == noErr", v0, *(v0 + 56));
        v18 = sub_175AE4();
        sub_160F68(4);
        v20 = *(v0 + 56);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %lld", v18, 12);
    }

    v6 = 4294966296;
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v11 = sub_160F34(0xCu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v12, 12, v13, "AVE_Session_AVC_Prepare", 5567, "pINS != __null", 0);
        v12 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v12);
    }

    v6 = 4294966295;
  }

LABEL_26:
  if (sub_160EF0(0xCu, 6))
  {
    v21 = sub_160F34(0xCu);
    v22 = sub_175AE4();
    v23 = sub_160F68(6);
    if (v21)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v22, 12, v23, "AVE_Session_AVC_Prepare", v0, v6);
      v24 = sub_175AE4();
      v27 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v24, 12, v27, "AVE_Session_AVC_Prepare", v0, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v22, 12, v23, "AVE_Session_AVC_Prepare", v0, v6);
    }
  }

  return v6;
}

uint64_t sub_F55C4(uint64_t a1, int a2)
{
  if (sub_160EF0(0xCu, 6))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%x\n", v5, 12, v6, "AVE_Session_AVC_BeginPass", a1, a2);
      v7 = sub_175AE4();
      v39 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x", v7, 12, v39, "AVE_Session_AVC_BeginPass", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x", v5, 12, v6, "AVE_Session_AVC_BeginPass", a1, a2);
    }
  }

  if (a1)
  {
    if (sub_160EF0(0xD8u, 7))
    {
      v8 = sub_160F34(0xD8u);
      v9 = sub_175AE4();
      v10 = sub_160F68(7);
      v11 = *(a1 + 16504);
      v12 = *(a1 + 16508);
      if (v8)
      {
        printf("%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)\n", v9, 216, v10, a2, *(a1 + 16504), v12);
        v13 = sub_175AE4();
        v14 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)", v13, 216, v14, a2, *(a1 + 16504), *(a1 + 16508));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)", v9, 216, v10, a2, *(a1 + 16504), v12);
      }
    }

    if (!*(a1 + 16496))
    {
      if (sub_160EF0(3u, 4))
      {
        v23 = sub_160F34(3u);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassStorage = NULL.\n", v24, 3, v25, "AVE_Session_AVC_BeginPass", 5616, "pINS->multiPassStorage != __null");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassStorage = NULL.");
      }

      goto LABEL_40;
    }

    v18 = *(a1 + 16504);
    if (v18 != *(a1 + 16508))
    {
      if (sub_160EF0(3u, 4))
      {
        v26 = sub_160F34(3u);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        v29 = *(a1 + 16504);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d\n", v27, 3, v28, "AVE_Session_AVC_BeginPass", 5617, "pINS->multiPassBeginPassCounter == pINS->multiPassEndPassCounter", *(a1 + 16504), *(a1 + 16508));
          v27 = sub_175AE4();
          sub_160F68(4);
        }

        v41 = *(a1 + 16504);
        v42 = *(a1 + 16508);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d", v27);
      }

      goto LABEL_40;
    }

    if (v18)
    {
      v19 = v18 + 1;
      *(a1 + 16504) = v19;
      if (v19 >= 3)
      {
        if (sub_160EF0(3u, 4))
        {
          v20 = sub_160F34(3u);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: pINS->multiPassBeginPassCounter reached max %d\n", v21, 3, v22, "AVE_Session_AVC_BeginPass", 5626, "false", *(a1 + 16504));
            v21 = sub_175AE4();
            sub_160F68(4);
          }

          v40 = *(a1 + 16504);
          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pINS->multiPassBeginPassCounter reached max %d", v21);
        }

LABEL_40:
        v30 = 4294966296;
        goto LABEL_41;
      }
    }

    else
    {
      if (*(a1 + 16464) == 30568)
      {
        if (sub_160EF0(3u, 4))
        {
          v31 = sub_160F34(3u);
          v32 = sub_175AE4();
          v33 = sub_160F68(4);
          if (v31)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with SessionStatus == H3H264VideoEncoder_SessionStatus_Run\n", v32, 3, v33, "AVE_Session_AVC_BeginPass", 5620, "pINS->SessionStatus != AVE_CommonWrapper_SessionStatus_Run");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with SessionStatus == H3H264VideoEncoder_SessionStatus_Run");
        }

        goto LABEL_40;
      }

      *(a1 + 16504) = 1;
    }

    v30 = 0;
    *(a1 + 16512) = a2;
    goto LABEL_41;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v15 = sub_160F34(0xCu);
    v16 = sub_175AE4();
    v17 = sub_160F68(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x\n", v16, 12, v17, "AVE_Session_AVC_BeginPass", 5611, "pINS != __null", 0, a2);
      v16 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x", v16, 12);
  }

  v30 = 4294966295;
LABEL_41:
  if (sub_160EF0(0xCu, 6))
  {
    v34 = sub_160F34(0xCu);
    v35 = sub_175AE4();
    v36 = sub_160F68(6);
    if (v34)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%x %d\n", v35, 12, v36, "AVE_Session_AVC_BeginPass", a1, a2, v30);
      v37 = sub_175AE4();
      sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v37);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v35);
    }
  }

  return v30;
}

uint64_t sub_F5C3C(uint64_t a1, int *a2)
{
  if (sub_160EF0(0xCu, 6))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 12, v6, "AVE_Session_AVC_EndPass", a1, a2);
      v7 = sub_175AE4();
      v101 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v101, "AVE_Session_AVC_EndPass", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 12, v6, "AVE_Session_AVC_EndPass", a1, a2);
    }
  }

  if (a1)
  {
    if (sub_160EF0(0xD8u, 7))
    {
      v8 = sub_160F34(0xD8u);
      v9 = sub_175AE4();
      v10 = sub_160F68(7);
      v11 = *(a1 + 16504);
      if (v8)
      {
        printf("%lld %d AVE %s: FIG: ENTER %s. beginPassFlags %d (begin %d end %d)\n", v9, 216, v10, "AVE_Session_AVC_EndPass", *(a1 + 16512), *(a1 + 16504), *(a1 + 16508));
        v9 = sub_175AE4();
        sub_160F68(7);
        v12 = *(a1 + 16512);
        v102 = *(a1 + 16504);
        v104 = *(a1 + 16508);
      }

      else
      {
        v103 = *(a1 + 16504);
      }

      syslog(3, "%lld %d AVE %s: FIG: ENTER %s. beginPassFlags %d (begin %d end %d)", v9);
    }

    if (*(a1 + 16464) != 30568)
    {
      if (sub_160EF0(3u, 4))
      {
        v27 = sub_160F34(3u);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_EndPass called with SessionStatus != AVE_CommonWrapper_SessionStatus_Run\n", v28, 3, v29, "AVE_Session_AVC_EndPass", 5665, "pINS->SessionStatus == AVE_CommonWrapper_SessionStatus_Run");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_EndPass called with SessionStatus != AVE_CommonWrapper_SessionStatus_Run");
      }

      goto LABEL_57;
    }

    if (!*(a1 + 16496))
    {
      if (sub_160EF0(3u, 4))
      {
        v30 = sub_160F34(3u);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: called with multiPassStorage = NULL.\n", v31, 3, v32, "AVE_Session_AVC_EndPass", 5667, "pINS->multiPassStorage != __null");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: called with multiPassStorage = NULL.");
      }

      goto LABEL_57;
    }

    v16 = *(a1 + 16504);
    v17 = *(a1 + 16508);
    if (v16 != v17 + 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v33 = sub_160F34(3u);
        v34 = sub_175AE4();
        v35 = sub_160F68(4);
        v36 = *(a1 + 16504);
        if (v33)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d\n", v34, 3, v35, "AVE_Session_AVC_EndPass", 5672, "pINS->multiPassBeginPassCounter == (pINS->multiPassEndPassCounter + 1)", *(a1 + 16504), *(a1 + 16508));
          v34 = sub_175AE4();
          v35 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d", v34, 3, v35, "AVE_Session_AVC_EndPass", 5672, "pINS->multiPassBeginPassCounter == (pINS->multiPassEndPassCounter + 1)", *(a1 + 16504), *(a1 + 16508));
      }

      goto LABEL_57;
    }

    if (v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = *(a1 + 16512) == 1;
    }

    v19 = !v18;
    *(a1 + 16508) = v16;
    if (a2)
    {
      *a2 = v19;
    }

    if (!v19)
    {
      v37 = 0;
      goto LABEL_58;
    }

    if (sub_160EF0(0xD8u, 6))
    {
      v20 = sub_160F34(0xD8u);
      v21 = sub_175AE4();
      v22 = sub_160F68(6);
      v23 = *(a1 + 16508);
      v24 = *(a1 + 16468);
      if (v20)
      {
        printf("%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d\n", v21, 216, v22, "AVE_Session_AVC_EndPass", *(a1 + 16508), v24);
        v25 = sub_175AE4();
        v26 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d", v25, 216, v26, "AVE_Session_AVC_EndPass", *(a1 + 16508), *(a1 + 16468));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d", v21, 216, v22, "AVE_Session_AVC_EndPass", *(a1 + 16508), v24);
      }
    }

    if (sub_1301D8(*(a1 + 120), *(a1 + 16508)))
    {
      if (sub_160EF0(3u, 4))
      {
        v38 = sub_160F34(3u);
        v39 = sub_175AE4();
        v40 = sub_160F68(4);
        if (v38)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Reset failed.\n", v39, 3, v40, "AVE_Session_AVC_EndPass", 5707, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Reset failed.");
      }

LABEL_57:
      v37 = 4294966296;
      goto LABEL_58;
    }

    if (*(a1 + 16) == 1)
    {
      goto LABEL_122;
    }

    v110 = kCMTimeInvalid;
    start = v110;
    v108 = v110;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v42 = Mutable;
      v43 = *(a1 + 16496);
      *&v106.start.value = *&kCMTimeInvalid.value;
      v106.start.epoch = kCMTimeInvalid.epoch;
      if (VTMultiPassStorageGetTimeStamp())
      {
        if (sub_160EF0(3u, 4))
        {
          v44 = sub_160F34(3u);
          v45 = sub_175AE4();
          v46 = sub_160F68(4);
          if (v44)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp kVTMultiPassStorageStep_GetFirstTimeStamp failed.\n", v45, 3, v46, "AVE_Session_AVC_EndPass", 5723, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp kVTMultiPassStorageStep_GetFirstTimeStamp failed.");
        }

        goto LABEL_57;
      }

      if (sub_160EF0(0xD8u, 7))
      {
        v54 = sub_160F34(0xD8u);
        v55 = sub_175AE4();
        v56 = sub_160F68(7);
        if (v54)
        {
          printf("%lld %d AVE %s: %s firstTimeInTimeRange value %lld timescale %d flags %d\n", v55, 216, v56, "AVE_Session_AVC_EndPass", v110.value, v110.timescale, v110.flags);
          v55 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %s firstTimeInTimeRange value %lld timescale %d flags %d", v55);
      }

      v57 = *(a1 + 16496);
      *&v106.start.value = *&kCMTimeInvalid.value;
      v106.start.epoch = kCMTimeInvalid.epoch;
      if (VTMultiPassStorageGetTimeStampAndDuration())
      {
        if (sub_160EF0(3u, 4))
        {
          v58 = sub_160F34(3u);
          v59 = sub_175AE4();
          v60 = sub_160F68(4);
          if (v58)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStampAndDuration kVTMultiPassStorageStep_GetLastTimeStamp failed.\n", v59, 3, v60, "AVE_Session_AVC_EndPass", 5739, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStampAndDuration kVTMultiPassStorageStep_GetLastTimeStamp failed.");
        }

        goto LABEL_57;
      }

      if (sub_160EF0(0xD8u, 7))
      {
        v61 = sub_160F34(0xD8u);
        v62 = sub_175AE4();
        v63 = sub_160F68(7);
        if (v61)
        {
          printf("%lld %d AVE %s: %s lastTimeInTimeRange value %lld timescale %d flags %d\n", v62, 216, v63, "AVE_Session_AVC_EndPass", start.value, start.timescale, start.flags);
          v62 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %s lastTimeInTimeRange value %lld timescale %d flags %d", v62);
      }

      if (sub_160EF0(0xD8u, 7))
      {
        v64 = sub_160F34(0xD8u);
        v65 = sub_175AE4();
        v66 = sub_160F68(7);
        if (v64)
        {
          printf("%lld %d AVE %s: %s duration value %lld timescale %d flags %d\n", v65, 216, v66, "AVE_Session_AVC_EndPass", v108.value, v108.timescale, v108.flags);
          v65 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %s duration value %lld timescale %d flags %d", v65);
      }

      lhs.start = start;
      rhs = v108;
      CMTimeAdd(&v106.start, &lhs.start, &rhs);
      start = v106.start;
      if (sub_160EF0(0xD8u, 7))
      {
        v67 = sub_160F34(0xD8u);
        v68 = sub_175AE4();
        v69 = sub_160F68(7);
        if (v67)
        {
          printf("%lld %d AVE %s: %s modified lastTimeInTimeRange value %lld timescale %d flags %d\n", v68, 216, v69, "AVE_Session_AVC_EndPass", start.value, start.timescale, start.flags);
          v68 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %s modified lastTimeInTimeRange value %lld timescale %d flags %d", v68);
      }

      if (*(a1 + 16468) <= 1u && !start.flags)
      {
        v70 = *(a1 + 1112);
        if (v70 < 1)
        {
          v70 = 30;
        }

        *&start.timescale = *&v110.timescale;
        start.epoch = v110.epoch;
        start.value = v110.value + v110.timescale / v70;
      }

      if (!v110.flags)
      {
        if (sub_160EF0(3u, 4))
        {
          v74 = sub_160F34(3u);
          v75 = sub_175AE4();
          v76 = sub_160F68(4);
          if (v74)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: firstTimeInTimeRange invalid.\n", v75, 3, v76, "AVE_Session_AVC_EndPass", 5765, "firstTimeInTimeRange.flags != 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: firstTimeInTimeRange invalid.");
        }

        goto LABEL_57;
      }

      if (!start.flags)
      {
        if (sub_160EF0(3u, 4))
        {
          v77 = sub_160F34(3u);
          v78 = sub_175AE4();
          v79 = sub_160F68(4);
          if (v77)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: lastTimeInTimeRange invalid.\n", v78, 3, v79, "AVE_Session_AVC_EndPass", 5767, "lastTimeInTimeRange.flags != 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: lastTimeInTimeRange invalid.");
        }

        goto LABEL_57;
      }

      memset(&v106, 0, sizeof(v106));
      lhs.start = v110;
      rhs = start;
      CMTimeRangeFromTimeToTime(&v106, &lhs.start, &rhs);
      if (sub_160EF0(0xD8u, 6))
      {
        v71 = sub_160F34(0xD8u);
        v72 = sub_175AE4();
        v73 = sub_160F68(6);
        if (v71)
        {
          printf("%lld %d AVE %s: Start %lld, %d, %d; Duration %lld, %d, %d\n", v72, 216, v73, v106.start.value, v106.start.timescale, v106.start.flags, v106.duration.value, v106.duration.timescale, v106.duration.flags);
          v72 = sub_175AE4();
          sub_160F68(6);
        }

        syslog(3, "%lld %d AVE %s: Start %lld, %d, %d; Duration %lld, %d, %d", v72, 216);
      }

      lhs = v106;
      v80 = CMTimeRangeCopyAsDictionary(&lhs, kCFAllocatorDefault);
      if (!v80)
      {
        if (sub_160EF0(3u, 4))
        {
          v95 = sub_160F34(3u);
          v96 = sub_175AE4();
          v97 = sub_160F68(4);
          if (v95)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: CMTimeRangeCopyAsDictionary failed.\n", v96, 3, v97, "AVE_Session_AVC_EndPass", 5776, "currentTimeRangeDictionary != __null");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CMTimeRangeCopyAsDictionary failed.");
        }

        goto LABEL_57;
      }

      v81 = v80;
      CFArrayAppendValue(v42, v80);
      CFRelease(v81);
      Count = CFArrayGetCount(v42);
      v83 = malloc_type_malloc(48 * Count, 0x1000040EED21634uLL);
      if (v83)
      {
        v84 = v83;
        if (Count >= 1)
        {
          v85 = 0;
          v86 = v83;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v42, v85);
            CMTimeRangeMakeFromDictionary(&lhs, ValueAtIndex);
            v88 = *&lhs.start.value;
            v89 = *&lhs.duration.timescale;
            v86[1] = *&lhs.start.epoch;
            v86[2] = v89;
            *v86 = v88;
            v86 += 3;
            ++v85;
          }

          while (Count != v85);
        }

        v90 = *(a1 + 16);
        Pass = VTEncoderSessionSetTimeRangesForNextPass();
        free(v84);
        CFRelease(v42);
        if (Pass)
        {
          if (sub_160EF0(3u, 4))
          {
            v92 = sub_160F34(3u);
            v93 = sub_175AE4();
            v94 = sub_160F68(4);
            if (v92)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: VTEncoderSessionSetTimeRangesForNextPass failed.\n", v93, 3, v94, "AVE_Session_AVC_EndPass", 5810, "err == noErr");
              sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTEncoderSessionSetTimeRangesForNextPass failed.");
          }

          goto LABEL_57;
        }

LABEL_122:
        v37 = 0;
        *(a1 + 16540) = *(a1 + 16468);
        *(a1 + 16468) = 0;
        goto LABEL_58;
      }

      if (sub_160EF0(3u, 4))
      {
        v98 = sub_160F34(3u);
        v99 = sub_175AE4();
        v100 = sub_160F68(4);
        if (v98)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: malloc timeRanges failed.\n", v99, 3, v100, "AVE_Session_AVC_EndPass", 5788, "timeRanges != __null");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: malloc timeRanges failed.");
      }
    }

    else if (sub_160EF0(3u, 4))
    {
      v51 = sub_160F34(3u);
      v52 = sub_175AE4();
      v53 = sub_160F68(4);
      if (v51)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: CFArrayCreateMutable failed.\n", v52, 3, v53, "AVE_Session_AVC_EndPass", 5720, "timeRangeArray != __null");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFArrayCreateMutable failed.");
    }

    v37 = 4294966293;
    goto LABEL_58;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v13 = sub_160F34(0xCu);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v14, 12, v15, "AVE_Session_AVC_EndPass", 5654, "pINS != __null", 0, a2);
      v14 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v14, 12);
  }

  v37 = 4294966295;
LABEL_58:
  if (sub_160EF0(0xCu, 6))
  {
    v47 = sub_160F34(0xCu);
    v48 = sub_175AE4();
    v49 = sub_160F68(6);
    if (v47)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v48, 12, v49, "AVE_Session_AVC_EndPass", a1, a2, v37);
      v48 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v48);
  }

  return v37;
}

uint64_t sub_F6F68(uint64_t a1, unsigned int *a2)
{
  if (sub_160EF0(0xCu, 6))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 12, v6, "AVE_Session_AVC_StartTileSession", a1, a2);
      v7 = sub_175AE4();
      v76 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v76, "AVE_Session_AVC_StartTileSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 12, v6, "AVE_Session_AVC_StartTileSession", a1, a2);
    }
  }

  if (a1 && a2)
  {
    if (*a2 < 1 || a2[1] <= 0)
    {
      if (sub_160EF0(0xCu, 4))
      {
        v23 = sub_160F34(0xCu);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        v24 = *a2;
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_AVC_StartTileSession", 6039, "pDim->iWidth > 0 && pDim->iHeight > 0", a1, *(a1 + 56), *a2, a2[1]);
          v14 = sub_175AE4();
          v15 = sub_160F68(4);
          v25 = *(a1 + 56);
          v26 = *a2;
          v27 = a2[1];
        }

        else
        {
          v81 = *a2;
        }

        goto LABEL_33;
      }

LABEL_34:
      v38 = 0;
      v28 = 4294965295;
      goto LABEL_35;
    }

    v8 = *(a1 + 12000);
    v9 = sub_175AE4();
    sub_140028(v8, 3u, v9);
    v10 = *a2;
    v11 = a2[1];
    *(a1 + 1440) = *a2;
    *(a1 + 1444) = v11;
    *(a1 + 11452) = v10;
    *(a1 + 11456) = v11;
    *(a1 + 764) = 2;
    v12 = sub_14E470(*(a1 + 68), 1, 1);
    sub_E97CC(a1);
    if (sub_14E248(*(a1 + 68), 1, 1, *(a1 + 1440), *(a1 + 1444), 0))
    {
      if (sub_160EF0(0xCu, 4))
      {
        v13 = sub_160F34(0xCu);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        v16 = *(a1 + 1440);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_AVC_StartTileSession", 6060, "ret == 0", a1, *(a1 + 56), *(a1 + 1440), *(a1 + 1444));
          v14 = sub_175AE4();
          v15 = sub_160F68(4);
          v17 = *(a1 + 56);
          v18 = *(a1 + 1440);
          v19 = *(a1 + 1444);
        }

        else
        {
          v82 = *(a1 + 1440);
        }

LABEL_33:
        syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v14, 12, v15);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    v29 = *(a1 + 1440);
    v30 = v12[1];
    if (v29 <= *v12)
    {
      v31 = *v12;
    }

    else
    {
      v31 = v29;
    }

    v32 = *(a1 + 1444);
    if (v32 <= v30)
    {
      v33 = v30;
    }

    else
    {
      v33 = v32;
    }

    sub_E9B08(a1);
    if (sub_160EF0(0xCu, 7))
    {
      v34 = sub_160F34(0xCu);
      v35 = sub_175AE4();
      v36 = sub_160F68(7);
      if (v34)
      {
        printf("%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault\n", v35, 12, v36);
        v37 = sub_175AE4();
        v77 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault", v37, 12, v77);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault", v35, 12, v36);
      }
    }

    *(a1 + 10752) = 2;
    *(a1 + 1464) = 0;
    *(a1 + 1252) = 1;
    *(a1 + 1256) = 0x100000000;
    *(a1 + 1288) = 1;
    *(a1 + 1240) &= ~0x400u;
    if (*(a1 + 1132) != 3)
    {
      *(a1 + 1132) = 3;
      if ((*(a1 + 10844) & 1) == 0)
      {
        *(a1 + 1144) = 0xC0000000CLL;
        *(a1 + 1152) = 12;
      }

      *(a1 + 1112) = 30;
      *(a1 + 1352) = 30;
      *(a1 + 10764) = 1;
    }

    *(a1 + 10184) = 1;
    *(a1 + 10176) = 2;
    *(a1 + 14196) = 1;
    *(a1 + 12064) = 6;
    *(a1 + 1448) |= 0x10000000uLL;
    v43 = *(a1 + 1336);
    *(a1 + 1120) |= 0x200000000uLL;
    *(a1 + 1356) |= 2u;
    *(a1 + 1336) = v43 & 0xFEFFFFBF | 0x1000000;
    *(a1 + 1096) = 0;
    sub_FA1D4(a1);
    *(a1 + 10522) = 0;
    *(a1 + 1240) &= ~0x100u;
    *(a1 + 10855) = 0;
    if (sub_160EF0(0xCu, 7))
    {
      v44 = sub_160F34(0xCu);
      v45 = sub_175AE4();
      v46 = sub_160F68(7);
      if (v44)
      {
        printf("%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault\n", v45, 12, v46);
        v47 = sub_175AE4();
        v78 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault", v47, 12, v78);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault", v45, 12, v46);
      }
    }

    if (sub_158978(*(a1 + 68), *(a1 + 64), 62, 1, *a2, a2[1], v31, v33, 0x414C4C20u))
    {
      if (sub_160EF0(0xCu, 4))
      {
        v48 = sub_160F34(0xCu);
        v49 = sub_175AE4();
        v50 = sub_160F68(4);
        v51 = *(a1 + 56);
        if (v48)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %p %lld %d\n", v49, 12, v50, "AVE_Session_AVC_StartTileSession", 6078, "err == noErr", a1, *(a1 + 56), 0);
          v49 = sub_175AE4();
          v50 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %p %lld %d", v49, 12, v50, "AVE_Session_AVC_StartTileSession", 6078, "err == noErr", a1, *(a1 + 56), 0);
      }

LABEL_62:
      v38 = 0;
LABEL_63:
      v28 = 4294966296;
LABEL_35:
      if (v38)
      {
        CFRelease(v38);
      }

      goto LABEL_37;
    }

    if (*(a1 + 16) == 1)
    {
      if (sub_160EF0(0xCu, 7))
      {
        v55 = sub_160F34(0xCu);
        v56 = sub_175AE4();
        v57 = sub_160F68(7);
        if (v55)
        {
          printf("%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK\n", v56, 12, v57);
          v58 = sub_175AE4();
          v79 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK", v58, 12, v79);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK", v56, 12, v57);
        }
      }

      v38 = 0;
    }

    else
    {
      if (VTTileEncoderSessionSetTileAttributes())
      {
        if (sub_160EF0(3u, 4))
        {
          v52 = sub_160F34(3u);
          v53 = sub_175AE4();
          v54 = sub_160F68(4);
          if (v52)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTTileEncoderSessionSetTileAttributes failed.\n", v53, 3, v54, "AVE_Session_AVC_StartTileSession", 6092, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTTileEncoderSessionSetTileAttributes failed.");
        }

        goto LABEL_62;
      }

      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!Mutable)
      {
        if (sub_160EF0(3u, 4))
        {
          v72 = sub_160F34(3u);
          v73 = sub_175AE4();
          v74 = sub_160F68(4);
          if (v72)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.\n", v73, 3, v74, "AVE_Session_AVC_StartTileSession", 6096, "TileRequirements");
            v75 = sub_175AE4();
            v80 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.", v75, 3, v80, "AVE_Session_AVC_StartTileSession", 6096, "TileRequirements");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.", v73, 3, v74, "AVE_Session_AVC_StartTileSession", 6096, "TileRequirements");
          }
        }

        v38 = 0;
        v28 = 4294966293;
        goto LABEL_35;
      }

      v38 = Mutable;
      if (*(a1 + 76) >= 12)
      {
        CFDictionaryAddValue(Mutable, kVTTileEncoderRequirement_EncoderSupportsSourcePadding, kCFBooleanTrue);
      }

      v60 = *(a1 + 16);
      if (VTTileEncoderSessionSetTileEncodeRequirements())
      {
        if (sub_160EF0(3u, 4))
        {
          v61 = sub_160F34(3u);
          v62 = sub_175AE4();
          v63 = sub_160F68(4);
          if (v61)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: %s:%d failed.\n", v62, 3, v63, "AVE_Session_AVC_StartTileSession", 6102, "err == noErr", "AVE_Session_AVC_StartTileSession", 6102);
            v62 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: %s:%d failed.", v62, 3);
        }

        goto LABEL_63;
      }
    }

    *(a1 + 16464) = 30566;
    if (*(a1 + 16) == 1)
    {
      v64 = 1;
    }

    else
    {
      v64 = 3;
    }

    v65 = sub_16960(*(a1 + 16488), *(a1 + 56), 0, 0, 1, v64);
    if (v65)
    {
      v28 = v65;
      if (sub_160EF0(0xCu, 4))
      {
        v66 = sub_160F34(0xCu);
        v67 = sub_175AE4();
        v68 = sub_160F68(4);
        if (v66)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu\n", v67, 12, v68, "AVE_Session_AVC_StartTileSession", 6120, "ret == 0", a1, *(a1 + 56));
          v67 = sub_175AE4();
          sub_160F68(4);
          v69 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu", v67, 12);
      }
    }

    else
    {
      v70 = *(a1 + 12000);
      v71 = sub_175AE4();
      sub_1403FC(v70, 3u, v71);
      v28 = 0;
    }

    goto LABEL_35;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v20 = sub_160F34(0xCu);
    v21 = sub_175AE4();
    v22 = sub_160F68(4);
    if (v20)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v21, 12, v22, "AVE_Session_AVC_StartTileSession", 6035, "pINS != __null && pDim != __null", a1, a2);
      v21 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v21, 12);
  }

  v28 = 4294966295;
LABEL_37:
  if (sub_160EF0(0xCu, 6))
  {
    v39 = sub_160F34(0xCu);
    v40 = sub_175AE4();
    v41 = sub_160F68(6);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v40, 12, v41, "AVE_Session_AVC_StartTileSession", a1, a2, v28);
      v40 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v40);
  }

  return v28;
}

uint64_t sub_F7BF0()
{
  v0 = __chkstk_darwin();
  theDict = v2;
  v127 = v1;
  v128 = v3;
  v129 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  pixelBuffer = v6;
  v150 = 0;
  v149 = 0;
  v148 = 0;
  v10 = sub_1502C8();
  if (sub_160EF0(0xCu, 7))
  {
    v11 = sub_160F34(0xCu);
    v12 = sub_175AE4();
    v13 = sub_160F68(7);
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", v12, 12, v13, "AVE_Session_AVC_ProcessTile", v129, v9, v7, v5, v127, v128, theDict);
      v14 = sub_175AE4();
      v110 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v14, 12, v110, "AVE_Session_AVC_ProcessTile", v129);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v12, 12, v13, "AVE_Session_AVC_ProcessTile", v129);
    }
  }

  if (v128 && v127 && v129 && pixelBuffer)
  {
    v15 = (v129 + 16464);
    if (!*(v129 + 16468))
    {
      v28 = sub_173E4(*(v129 + 16488), *(v129 + 1096));
      if (v28)
      {
        v29 = v28;
        if (sub_160EF0(3u, 4))
        {
          v30 = sub_160F34(3u);
          v31 = sub_175AE4();
          v32 = sub_160F68(4);
          if (v30)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v31, 3, v32, "AVE_Session_AVC_ProcessTile", 6176, "ret == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration");
        }

        goto LABEL_90;
      }

      v52 = *(v129 + 12000);
      v53 = sub_175AE4();
      sub_140028(v52, 5u, v53);
    }

    v16 = sub_175AE4();
    if (*(v129 + 1112) >= 1)
    {
      v17 = *(v129 + 1112);
    }

    else
    {
      v17 = 30;
    }

    sub_172A38(v17, v129 + 16576);
    if (sub_160EF0(0x33u, 7))
    {
      v18 = sub_160F34(0x33u);
      v19 = sub_175AE4();
      v20 = sub_160F68(7);
      v21 = *(v129 + 16576);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d\n", v19, 51, v20, "AVE_Session_AVC_ProcessTile", 6188, *(v129 + 56), *(v129 + 16468), *(v129 + 16576), *(v129 + 16584));
        v22 = sub_175AE4();
        v23 = sub_160F68(7);
        v122 = *(v129 + 16576);
        v125 = *(v129 + 16584);
        v117 = *(v129 + 56);
        v119 = *(v129 + 16468);
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d", v22, 51, v23);
      }

      else
      {
        v123 = *(v129 + 16576);
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d", v19, &stru_20.segname[11], v20);
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    *(v129 + 18080) = PixelFormatType;
    if (!*(v129 + 16468))
    {
      v156 = *(v129 + 1440);
      v34 = sub_167CD8(PixelFormatType);
      if (!v34)
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_89;
        }

        v54 = sub_160F34(3u);
        v49 = sub_175AE4();
        v55 = sub_160F68(4);
        v56 = *(v129 + 56);
        if (v54)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v49, 3, v55, "AVE_Session_AVC_ProcessTile", 6202, "pPixelFmt != __null", v129, *(v129 + 56), *(v129 + 18080));
          v49 = sub_175AE4();
          v55 = sub_160F68(4);
        }

        v121 = *(v129 + 56);
        v124 = *(v129 + 18080);
        v118 = "pPixelFmt != __null";
        v120 = v129;
        v116 = 6202;
        v112 = v55;
        v51 = "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x";
        goto LABEL_74;
      }

      if (v10[420])
      {
        v35 = v10 + 420;
      }

      else
      {
        v35 = 0;
      }

      sub_CC848(*(v129 + 18064), v35, *(v129 + 64), *(v129 + 10772), *(v10 + 103), *(v10 + 104), &v156, 1, *(v34 + 3), *(v34 + 1), *(v129 + 1136));
      sub_CCF60(*(v129 + 18064), -1, pixelBuffer);
    }

    v36 = *v15;
    if (*v15 == 30566)
    {
      if (sub_15F5D0(pixelBuffer))
      {
        v43 = 1;
      }

      else
      {
        v43 = 2;
      }

      *(v129 + 10804) = v43;
      v44 = sub_EFE80(v129);
      if (v44)
      {
        v29 = v44;
        if (sub_160EF0(3u, 4))
        {
          v45 = sub_160F34(3u);
          v46 = sub_175AE4();
          v47 = sub_160F68(4);
          if (v45)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed\n", v46, 3, v47, "AVE_Session_AVC_ProcessTile", 6287, "err == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed");
        }

        goto LABEL_90;
      }

      sub_EBCB0(v129, pixelBuffer);
      if (sub_EB66C(v129, &pixelBuffer, &v150, &v149, &v148 + 1, &v148, 1))
      {
        if (sub_160EF0(3u, 4))
        {
          v61 = sub_160F34(3u);
          v38 = sub_175AE4();
          v39 = sub_160F68(4);
          if (!v61)
          {
LABEL_88:
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.");
            goto LABEL_89;
          }

          v40 = 6297;
LABEL_70:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.\n", v38, 3, v39, "AVE_Session_AVC_ProcessTile", v40, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
          goto LABEL_88;
        }

LABEL_89:
        v29 = 4294966296;
LABEL_90:
        if (v150 == 1 && pixelBuffer)
        {
          CVPixelBufferRelease(pixelBuffer);
        }

        ++*(v129 + 16468);
        goto LABEL_94;
      }

      sub_EBECC();
      if (sub_EBF6C(v129))
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_89;
        }

        v69 = sub_160F34(3u);
        v58 = sub_175AE4();
        v59 = sub_160F68(4);
        if (v69)
        {
          v60 = 6307;
          goto LABEL_86;
        }

LABEL_142:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        goto LABEL_89;
      }

      v62 = v9;
      sub_EF0EC(v129, pixelBuffer);
      bzero(v162, 0x1058uLL);
      v156 = v129 + 672;
      v157 = v129 + 1440;
      v75 = *(v129 + 12000);
      v158 = v129 + 10752;
      BytePtr = v75;
      v76 = *(v129 + 16480);
      v160 = *(v129 + 18064);
      v163 = v129 + 12008;
      v164 = v129 + 13724;
      v165 = v129 + 14108;
      v161 = v76;
      memcpy(v166, (v129 + 16592), sizeof(v166));
      v167 = v16;
      if (sub_12A644(*(v129 + 120), &v156, v129 + 128, *(v129 + 16), *(v129 + 112), *(v129 + 16472), *(v129 + 16496), v129 + 160, (v129 + 11772), (v129 + 11464)))
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_89;
        }

        v77 = sub_160F34(3u);
        v66 = sub_175AE4();
        v67 = sub_160F68(4);
        if (v77)
        {
          v68 = 6331;
          goto LABEL_103;
        }

LABEL_145:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.");
        goto LABEL_89;
      }
    }

    else
    {
      if (v36 != 30567)
      {
        if (v36 == 30568)
        {
          if (sub_EB66C(v129, &pixelBuffer, &v150, &v149, &v148 + 1, &v148, 0))
          {
            if (sub_160EF0(3u, 4))
            {
              v37 = sub_160F34(3u);
              v38 = sub_175AE4();
              v39 = sub_160F68(4);
              if (!v37)
              {
                goto LABEL_88;
              }

              v40 = 6221;
              goto LABEL_70;
            }

            goto LABEL_89;
          }

LABEL_105:
          *v15 = 30568;
          bzero(v153, 0x1738uLL);
          v146 = 0u;
          v147 = 0u;
          *&v143[16] = 0u;
          v144 = 0;
          v142 = 0u;
          *v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v139 = 0u;
          v138 = 0u;
          v137 = 0u;
          v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          v135 = 0;
          bzero(&v156, 0x4A40uLL);
          v136[0] = v9;
          v136[1] = pixelBuffer;
          v145 = v153;
          *&v146 = v16;
          v78 = *(v129 + 16576);
          DWORD2(v146) = *(v129 + 16508);
          *&v143[8] = v78;
          v144 = &v156;
          if (*(v129 + 10804) == 2)
          {
            sub_15F768(pixelBuffer, &v130);
            sub_CD91C(*(v129 + 18064), *(v129 + 16508), *(v129 + 16468), &v130);
          }

          *&v143[24] = &v130;
          if ((*(v129 + 1337) & 2) != 0 && *(v129 + 76) >= 4 && !sub_133F6C(theDict, v154))
          {
            memset(v152, 0, sizeof(v152));
            __dst = *(v129 + 16468);
            sub_172100(v152, 32, "%llu %d %d", v79, v80, v81, v82, v83, *(v129 + 56));
            sub_133ED0(v154, 47, 6, v152, 0, v84, v85, v86);
            v155 = v155 & 0xFFFFFDFF | ((v154[0] > 0) << 9);
          }

          v87 = CMGetAttachment(pixelBuffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
          if (v87)
          {
            sub_1C324(*(v129 + 16488), *(v129 + 16468), v87);
          }

          sub_207A4(*(v129 + 16488), *(v129 + 16468));
          sub_20464(*(v129 + 16488), *(v129 + 16468), *(v129 + 56));
          sub_1D808(*(v129 + 16488), *(v129 + 16468), *&v131);
          sub_1DC50(*(v129 + 16488), *(v129 + 16468), *&v130);
          sub_1CE6C(*(v129 + 16488), *(v129 + 16468), SDWORD1(v134));
          sub_1F124(*(v129 + 16488), *(v129 + 16468), v127[2], *v127);
          if (sub_160EF0(0xCu, 7))
          {
            v88 = sub_160F34(0xCu);
            v89 = sub_175AE4();
            v90 = sub_160F68(7);
            if (v88)
            {
              printf("%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData\n", v89, 12, v90);
              v91 = sub_175AE4();
              v114 = sub_160F68(7);
              syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData", v91, 12, v114);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData", v89, 12, v90);
            }
          }

          v166[530] = *(v129 + 10204);
          LODWORD(v160) = 0;
          BytePtr = 0;
          if (theDict)
          {
            Value = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_UserQpMap);
            v155 &= ~0x10000u;
            if (*(v129 + 1338))
            {
              v93 = Value;
              if (Value)
              {
                LODWORD(v160) = CFDataGetLength(Value);
                BytePtr = CFDataGetBytePtr(v93);
                v155 |= 0x10000u;
              }
            }
          }

          if (sub_160EF0(0xCu, 7))
          {
            v94 = sub_160F34(0xCu);
            v95 = sub_175AE4();
            v96 = sub_160F68(7);
            if (v94)
            {
              printf("%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData\n", v95, 12, v96);
              v97 = sub_175AE4();
              v115 = sub_160F68(7);
              syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData", v97, 12, v115);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData", v95, 12, v96);
            }
          }

          if (sub_F90F0(v129, &v156, v5))
          {
            if (sub_160EF0(3u, 4))
            {
              v98 = sub_160F34(3u);
              v99 = sub_175AE4();
              v100 = sub_160F68(4);
              if (v98)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_GetTileInfo failed.\n", v99, 3, v100, "AVE_Session_AVC_ProcessTile", 6433, "err == noErr");
                sub_175AE4();
                sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_GetTileInfo failed.");
            }
          }

          else
          {
            if (v149)
            {
              v101 = pixelBuffer;
            }

            else
            {
              v101 = 0;
            }

            *(&v139 + 1) = v101;
            v102 = sub_12D95C(*(v129 + 120), v136);
            v29 = v102;
            if (!v102)
            {
              goto LABEL_90;
            }

            if (v102 == -536870173)
            {
              if (sub_160EF0(0x10u, 5))
              {
                v103 = sub_160F34(0x10u);
                v104 = sub_175AE4();
                v105 = sub_160F68(5);
                if (v103)
                {
                  printf("%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame\n", v104, 16, v105);
                  sub_175AE4();
                  sub_160F68(5);
                }

                syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame");
              }
            }

            else if (sub_160EF0(3u, 4))
            {
              v106 = sub_160F34(3u);
              v107 = sub_175AE4();
              v108 = sub_160F68(4);
              if (v106)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.\n", v107, 3, v108, "AVE_Session_AVC_ProcessTile", 6456, "err == noErr");
                sub_175AE4();
                sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.");
            }
          }

          goto LABEL_89;
        }

        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_89;
        }

        v48 = sub_160F34(3u);
        v49 = sub_175AE4();
        v50 = sub_160F68(4);
        if (v48)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.\n", v49, 3, v50, "AVE_Session_AVC_ProcessTile", 6339, "false", *v15);
          v49 = sub_175AE4();
          v50 = sub_160F68(4);
          v118 = "false";
          v120 = *v15;
          v116 = 6339;
        }

        else
        {
          v120 = *v15;
          v116 = 6339;
          v118 = "false";
        }

        v112 = v50;
        v51 = "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.";
LABEL_74:
        syslog(3, v51, v49, 3, v112, "AVE_Session_AVC_ProcessTile", v116, v118, v120, v121, v124);
        goto LABEL_89;
      }

      if (sub_15F5D0(pixelBuffer))
      {
        v41 = 1;
      }

      else
      {
        v41 = 2;
      }

      *(v129 + 10804) = v41;
      sub_EBCB0(v129, pixelBuffer);
      if (sub_EB66C(v129, &pixelBuffer, &v150, &v149, &v148 + 1, &v148, 1))
      {
        if (sub_160EF0(3u, 4))
        {
          v42 = sub_160F34(3u);
          v38 = sub_175AE4();
          v39 = sub_160F68(4);
          if (!v42)
          {
            goto LABEL_88;
          }

          v40 = 6238;
          goto LABEL_70;
        }

        goto LABEL_89;
      }

      sub_EBECC();
      if (sub_EBF6C(v129))
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_89;
        }

        v57 = sub_160F34(3u);
        v58 = sub_175AE4();
        v59 = sub_160F68(4);
        if (v57)
        {
          v60 = 6248;
LABEL_86:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v58, 3, v59, "AVE_Session_AVC_ProcessTile", v60, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
          goto LABEL_142;
        }

        goto LABEL_142;
      }

      v62 = v9;
      sub_EF0EC(v129, pixelBuffer);
      bzero(v162, 0x1058uLL);
      v156 = v129 + 672;
      v157 = v129 + 1440;
      v63 = *(v129 + 12000);
      v158 = v129 + 10752;
      BytePtr = v63;
      v64 = *(v129 + 16480);
      v160 = *(v129 + 18064);
      v163 = v129 + 12008;
      v164 = v129 + 13724;
      v165 = v129 + 14108;
      v161 = v64;
      memcpy(v166, (v129 + 16592), sizeof(v166));
      v167 = v16;
      if (sub_12A644(*(v129 + 120), &v156, v129 + 128, *(v129 + 16), *(v129 + 112), *(v129 + 16472), *(v129 + 16496), v129 + 160, (v129 + 11772), (v129 + 11464)))
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_89;
        }

        v65 = sub_160F34(3u);
        v66 = sub_175AE4();
        v67 = sub_160F68(4);
        if (v65)
        {
          v68 = 6272;
LABEL_103:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v66, 3, v67, "AVE_Session_AVC_ProcessTile", v68, "err == noErr");
          sub_175AE4();
          v9 = v62;
          sub_160F68(4);
          goto LABEL_145;
        }

        goto LABEL_145;
      }
    }

    v9 = v62;
    goto LABEL_105;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v24 = sub_160F34(0xCu);
    v25 = sub_175AE4();
    v26 = sub_160F68(4);
    if (v24)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v25, 12, v26, "AVE_Session_AVC_ProcessTile", 6170, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v129, v9, pixelBuffer, v5, v127, v128, theDict);
      v27 = sub_175AE4();
      v111 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v27, 12, v111, "AVE_Session_AVC_ProcessTile", 6170, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v129);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v25, 12, v26, "AVE_Session_AVC_ProcessTile", 6170, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v129);
    }
  }

  v29 = 4294966295;
LABEL_94:
  if (sub_160EF0(0xCu, 7))
  {
    v70 = sub_160F34(0xCu);
    v71 = sub_175AE4();
    v72 = sub_160F68(7);
    if (v70)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v71, 12, v72, "AVE_Session_AVC_ProcessTile", v129, v9, pixelBuffer, v5, v127, v128, theDict, v29);
      v73 = sub_175AE4();
      v113 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v73, 12, v113, "AVE_Session_AVC_ProcessTile", v129, v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v71, 12, v72, "AVE_Session_AVC_ProcessTile", v129, v9);
    }
  }

  return v29;
}