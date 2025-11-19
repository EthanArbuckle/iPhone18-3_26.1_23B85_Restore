uint64_t sub_F90F0(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = *a3;
  if (*a3 != ((*a3 + 63) & 0xFFFFFFC0))
  {
    if (sub_160EF0(3u, 4))
    {
      v8 = sub_160F34(3u);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x = %d not aligned\n", v9, 3, v10, "AVE_GetTileInfo", 5876, "pRect->iX == (((pRect->iX) + (64) - 1) & ~((64) - 1))", *a3);
        v9 = sub_175AE4();
        sub_160F68(4);
      }

      v33 = *a3;
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: x = %d not aligned", v9);
    }

    return 4294966296;
  }

  v5 = a3[1];
  if (v5 != ((v5 + 15) & 0xFFFFFFF0))
  {
    if (sub_160EF0(3u, 4))
    {
      v11 = sub_160F34(3u);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y = %d not aligned\n", v12, 3, v13, "AVE_GetTileInfo", 5879, "pRect->iY == (((pRect->iY) + (16) - 1) & ~((16) - 1))", a3[1]);
        v12 = sub_175AE4();
        sub_160F68(4);
      }

      v34 = a3[1];
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: y = %d not aligned", v12);
    }

    return 4294966296;
  }

  *(a2 + 552) = v4;
  *(a2 + 556) = v5;
  if (*(a1 + 10204) == 1)
  {
    result = 0;
    *(a2 + 544) = 0;
    return result;
  }

  if (*(a1 + 10171) != 1)
  {
    return 4294966296;
  }

  v14 = a3[3];
  v15 = a3[2] + v4;
  v16 = v14 + v5;
  if (*(a1 + 76) >= 12)
  {
    v17 = *(a1 + 10868);
    if (*(a1 + 10855) == 1)
    {
      if (v15 >= v17)
      {
        v15 = *(a1 + 10868);
      }

      *(a2 + 560) = v15;
      v18 = *(a1 + 10872);
      if (v16 >= v18)
      {
        v16 = *(a1 + 10872);
      }

      *(a2 + 564) = v16;
      v15 = v17;
      v16 = v18;
    }

    else
    {
      if (v15 <= v17)
      {
        v19 = a3[2];
      }

      else
      {
        v19 = v17 - v4;
      }

      *(a2 + 560) = v19;
      v15 = v19 + v4;
      v20 = *(a1 + 10872);
      if (v16 <= v20)
      {
        v21 = v14;
      }

      else
      {
        v21 = v20 - v5;
      }

      *(a2 + 564) = v21;
      v16 = v21 + v5;
    }
  }

  if (v15 > *(a1 + 10864))
  {
    if (sub_160EF0(3u, 4))
    {
      v22 = sub_160F34(3u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      v25 = a3[2];
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)\n", v23, 3, v24, "AVE_GetTileInfo", 5927, "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride", *a3, a3[2], *(a1 + 10864));
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        v36 = a3[2];
        v37 = *(a1 + 10864);
        v32 = "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride";
        v35 = *a3;
        v31 = 5927;
      }

      else
      {
        v36 = a3[2];
        v37 = *(a1 + 10864);
        v35 = *a3;
        v31 = 5927;
        v32 = "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride";
      }

      v30 = v24;
      v26 = "%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)";
LABEL_44:
      syslog(3, v26, v23, 3, v30, "AVE_GetTileInfo", v31, v32, v35, v36, v37);
      return 4294966296;
    }

    return 4294966296;
  }

  if (v16 > *(a1 + 10872))
  {
    if (sub_160EF0(3u, 4))
    {
      v27 = sub_160F34(3u);
      v23 = sub_175AE4();
      v28 = sub_160F68(4);
      v29 = a3[3];
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height (%u)\n", v23, 3, v28, "AVE_GetTileInfo", 5932, "height <= pINS->VideoParamsDriver.pixelBuffer.Height", a3[1], a3[3], *(a1 + 10872));
        v23 = sub_175AE4();
        v28 = sub_160F68(4);
        v36 = a3[3];
        v37 = *(a1 + 10872);
        v32 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
        v35 = a3[1];
        v31 = 5932;
      }

      else
      {
        v36 = a3[3];
        v37 = *(a1 + 10872);
        v35 = a3[1];
        v31 = 5932;
        v32 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
      }

      v30 = v28;
      v26 = "%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height (%u)";
      goto LABEL_44;
    }

    return 4294966296;
  }

  result = 0;
  *(a2 + 544) = v4;
  *(a2 + 548) = v5;
  return result;
}

uint64_t sub_F959C(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 16456);
  v5 = (a1 + 760);
  v6 = sub_175AE4();
  if (sub_160EF0(0xCu, 6))
  {
    v7 = sub_160F34(0xCu);
    v8 = sub_175AE4();
    v9 = sub_160F68(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%llx\n", v8, 12, v9, "AVE_Session_AVC_Create", a1, a2);
      v10 = sub_175AE4();
      v43 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%llx", v10, 12, v43, "AVE_Session_AVC_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%llx", v8, 12, v9, "AVE_Session_AVC_Create", a1, a2);
    }
  }

  v11 = sub_1502C8();
  *(a1 + 64) = 1;
  *v4 = 2;
  *(a1 + 1256) = -1;
  *(a1 + 10556) = 0x100000001;
  *(a1 + 10772) = 1;
  *(a1 + 776) = 1;
  *&v12 = 0x100000001;
  *(&v12 + 1) = 0x100000001;
  *v5 = v12;
  *(a1 + 712) = v11[103];
  v13 = sub_1289FC(1, 1);
  if (v13)
  {
    v14 = v13;
    if (sub_160EF0(0xCu, 4))
    {
      v15 = sub_160F34(0xCu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to open AVC %p %lld %d\n", v16, 12, v17, "AVE_Session_AVC_Create", 6526, "ret == 0", a1, 0, v14);
        v18 = sub_175AE4();
        v44 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open AVC %p %lld %d", v18, 12, v44);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open AVC %p %lld %d", v16, 12, v17);
      }
    }

    v19 = 0;
  }

  else
  {
    *(a1 + 68) = sub_129100(*(a1 + 120));
    *(a1 + 72) = sub_12910C(*(a1 + 120));
    *(a1 + 56) = sub_129118(*(a1 + 120));
    *(a1 + 76) = *(sub_16FD90(*(a1 + 68)) + 1);
    v19 = *(a1 + 56);
    sub_14DE24((a1 + 16592), v19);
    sub_13EF48(*(a1 + 56), v11[403], (a1 + 12000));
    sub_140028(*(a1 + 12000), 0, v6);
    sub_CBCA0(*(a1 + 56), (a1 + 18064));
    v4[2] = 30565;
    v20 = sub_E814C(a1);
    if (v20)
    {
      v14 = v20;
      if (sub_160EF0(0xCu, 4))
      {
        v21 = sub_160F34(0xCu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d\n", v22, 12, v23, "AVE_Session_AVC_Create", 6553, "ret == 0", a1, v19, v14);
          v24 = sub_175AE4();
          v45 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d", v24, 12, v45);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d", v22, 12, v23);
        }
      }
    }

    else
    {
      v27 = operator new(0x50uLL, &std::nothrow);
      if (v27)
      {
        v28 = v27;
        sub_16600(v27);
        *(a1 + 16488) = v28;
        v29 = *(a1 + 12000);
        v30 = sub_175AE4();
        sub_1403FC(v29, 0, v30);
        v14 = 0;
        v26 = 1;
        goto LABEL_20;
      }

      *(a1 + 16488) = 0;
      if (sub_160EF0(0xCu, 4))
      {
        v39 = sub_160F34(0xCu);
        v40 = sub_175AE4();
        v41 = sub_160F68(4);
        if (v39)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to create SEI instance %p %llu\n", v40, 12, v41, "AVE_Session_AVC_Create", 6558, "pINS->pcSEI != __null", a1, *(a1 + 56));
          v40 = sub_175AE4();
          sub_160F68(4);
          v42 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create SEI instance %p %llu", v40, 12);
      }

      v14 = 4294966296;
    }
  }

  v25 = *(a1 + 16488);
  if (v25)
  {
    sub_16934(v25);
    operator delete();
  }

  v26 = 0;
LABEL_20:
  v31 = sub_175AE4() - v6;
  if (v31 >= 1000000)
  {
    v32 = 5;
  }

  else
  {
    v32 = 6;
  }

  if (v26)
  {
    v33 = v32;
  }

  else
  {
    v33 = 4;
  }

  if (sub_160EF0(0xCu, v33))
  {
    v34 = sub_160F34(0xCu);
    v35 = sub_175AE4();
    v36 = sub_160F68(v33);
    if (v34)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d\n", v35, 12, v36, "AVE_Session_AVC_Create", a1, a2, v19, v31, v14);
      v37 = sub_175AE4();
      v46 = sub_160F68(v33);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d", v37, 12, v46);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d", v35, 12, v36);
    }
  }

  return v14;
}

void sub_F9BA8(int32x2_t *a1)
{
  if (sub_160EF0(0xCu, 7))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 12, v4, "AVE_EnableH264FWRCSettings", a1);
      v5 = sub_175AE4();
      v42 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v42, "AVE_EnableH264FWRCSettings", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 12, v4, "AVE_EnableH264FWRCSettings", a1);
    }
  }

  if (sub_160EF0(0x10u, 8))
  {
    v6 = sub_160F34(0x10u);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    v9 = a1[1348].u8[0];
    if (v6)
    {
      printf("%lld %d AVE %s: %s:%d usageMode %d RealTime %d bRCModeSet %d eRCMode %d\n", v7, 16, v8, "AVE_EnableH264FWRCSettings", 1680, a1[1361].i32[1], a1[86].i32[1], a1[1348].u8[0], a1[141].i32[1]);
      v7 = sub_175AE4();
      sub_160F68(8);
      v10 = a1[1348].u8[0];
      v50 = a1[141].u32[1];
      v46 = a1[1361].u32[1];
      v48 = a1[86].u32[1];
    }

    else
    {
      v49 = a1[1348].u8[0];
    }

    syslog(3, "%lld %d AVE %s: %s:%d usageMode %d RealTime %d bRCModeSet %d eRCMode %d", v7, 16);
  }

  if ((a1[140].i8[3] & 0x80) == 0 && a1[141].i32[1] == 8)
  {
    a1[1348].i8[0] = 0;
  }

  if (a1[1361].i32[1])
  {
    if ((a1[1348].i8[0] & 1) == 0)
    {
      a1[141].i32[1] = 1;
    }

    a1[1345].i8[4] = 1;
    goto LABEL_58;
  }

  v11 = a1[1348].i8[0];
  if (a1[86].i32[1] == 1)
  {
    if ((a1[1348].i8[0] & 1) == 0)
    {
      a1[141].i32[1] = 1;
    }

    a1[1345].i8[4] = 1;
    a1[183].i32[0] = 0;
    a1[86].i32[0] &= ~2u;
    if (sub_160EF0(0xCu, 7))
    {
      v12 = sub_160F34(0xCu);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      if (v12)
      {
        printf("%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnWorkload\n", v13, 12, v14);
        v15 = sub_175AE4();
        v43 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnWorkload", v15, 12, v43);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnWorkload", v13, 12, v14);
      }
    }

    v16 = vshr_n_u32(vadd_s32(a1[180], 0xF0000000FLL), 4uLL);
    v17 = a1[139].i32[0] * v16.i32[1] * v16.i32[0];
    if (v17 >= 0x13C681)
    {
      a1[86].i32[0] |= 0x100u;
    }

    v18 = (v16.i32[0] + 31) & 0x1FFFFFE0;
    v19 = a1[167].i32[0];
    if ((v19 & 0x40) != 0)
    {
      a1[86].i32[0] = a1[86].i32[0] & 0xFFFFFEFF | ((v17 > 0xAFC80) << 8);
    }

    if (v18 > 0x80 || v18 * v16.i32[1] >= 0x2D01)
    {
      v20 = (((v16.i32[0] + 1) >> 1) + 31) & 0x1FFFFFE0;
      if (v20 > 0x80 || (v20 * ((v16.i32[1] + 1) >> 1) <= 0x2D00 ? (v21 = (v19 & 0x40) == 0) : (v21 = 1), v21))
      {
        v19 &= ~0x40u;
      }

      else
      {
        a1[86].i32[0] |= 0x100u;
      }

      a1[167].i32[0] = v19;
    }
  }

  else if ((a1[1348].i8[0] & 1) == 0)
  {
    a1[141].i32[1] = 1;
    a1[1345].i8[4] = 1;
    a1[183].i32[0] = 0;
  }

  if (sub_160EF0(0xCu, 7))
  {
    v22 = sub_160F34(0xCu);
    v23 = sub_175AE4();
    v24 = sub_160F68(7);
    if (v22)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnBPP\n", v23, 12, v24);
      v25 = sub_175AE4();
      v44 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnBPP", v25, 12, v44);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnBPP", v23, 12, v24);
    }
  }

  v26 = a1[180].i32[1] + 15;
  v27 = a1[180].i32[0] + 15;
  v28 = ((v27 & 0xFFFFFF0) * (v26 & 0xFFFFFFF0));
  v29 = (v27 >> 4) * (v26 >> 4);
  v30 = a1[139].i32[0];
  v31 = v30 * v28;
  if (v29 < 0xE11)
  {
    if (v30 <= 60 && v31 * 0.26 > a1[142].i32[0])
    {
      a1[167].i32[0] &= ~0x10u;
    }

    if (sub_160EF0(0xDCu, 7))
    {
      v33 = sub_160F34(0xDCu);
      v34 = sub_175AE4();
      v35 = sub_160F68(7);
      v32 = v31 * 0.26;
      goto LABEL_54;
    }
  }

  else
  {
    v32 = v31 * 0.17;
    if (v31 * 0.17 > a1[142].i32[0])
    {
      a1[167].i32[0] &= ~0x10u;
    }

    if (sub_160EF0(0xDCu, 7))
    {
      v33 = sub_160F34(0xDCu);
      v34 = sub_175AE4();
      v35 = sub_160F68(7);
LABEL_54:
      v36 = a1[142].u32[0];
      if (v33)
      {
        printf("%lld %d AVE %s: BPP: BPP %f, BPP Scaled %f, iBitrate %d, AVE_QPMOD_FEATURE_FLAT_AREA %d\n", v34, 220, v35, v31, v32, a1[142].i32[0], a1[167].i32[0] & 0x10);
        sub_175AE4();
        sub_160F68(7);
        v37 = a1[167].i32[0] & 0x10;
      }

      v47 = a1[142].u32[0];
      syslog(3, "%lld %d AVE %s: BPP: BPP %f, BPP Scaled %f, iBitrate %d, AVE_QPMOD_FEATURE_FLAT_AREA %d");
    }
  }

LABEL_58:
  if (sub_160EF0(0xCu, 7))
  {
    v38 = sub_160F34(0xCu);
    v39 = sub_175AE4();
    v40 = sub_160F68(7);
    if (v38)
    {
      printf("%lld %d AVE %s: %s Exit %p\n", v39, 12, v40, "AVE_EnableH264FWRCSettings", a1);
      v41 = sub_175AE4();
      v45 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p", v41, 12, v45, "AVE_EnableH264FWRCSettings", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p", v39, 12, v40, "AVE_EnableH264FWRCSettings", a1);
    }
  }
}

uint64_t sub_FA1D4(int32x2_t *a1)
{
  v2 = sub_1502C8();
  v3 = v2[221];
  if (v3 <= 3)
  {
    a1[157].i32[0] = v3;
  }

  v4 = v2[220];
  if ((v4 & 0x80000000) == 0)
  {
    a1[156].i32[1] = v4;
  }

  v5 = v2[223];
  if (v5 >= 1)
  {
    a1[161].i32[0] = v5;
  }

  v6 = v2[232];
  if (v6 >= 1)
  {
    a1[163].i32[1] = v6;
  }

  v7 = v2[233];
  if (v7 >= 1)
  {
    a1[164].i32[0] = v7;
  }

  v8 = a1[1501].i32[0];
  if (sub_160EF0(0x10u, 6))
  {
    v9 = sub_160F34(0x10u);
    v10 = sub_175AE4();
    v11 = sub_160F68(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %d\n", v10, 16, v11, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", a1, v8);
      v12 = sub_175AE4();
      v85 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v12, 16, v85, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v10, 16, v11, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", a1, v8);
    }
  }

  v13 = a1 + 2057;
  sub_F9BA8(a1);
  v14 = a1[167].i32[0];
  if ((v14 & 0x40) != 0)
  {
    v15 = a1[180].i32[0] >> 4;
    v16 = a1[180].i32[1] >> 4;
    v17 = (v15 + 31) & 0x1FFFFFE0;
    if (v17 > 0x80 || v17 * v16 >= 0x2D01)
    {
      v18 = (((v15 + 1) >> 1) + 31) & 0x1FFFFFE0;
      if (v18 > 0x80 || v18 * ((v16 + 1) >> 1) >= 0x2D01)
      {
        a1[167].i32[0] = v14 & 0xFFFFFFBF;
      }
    }
  }

  if (v8 > 7)
  {
    if ((v8 - 8) > 1)
    {
LABEL_25:
      if (sub_160EF0(3u, 4))
      {
        v19 = sub_160F34(3u);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: profile not understood\n", v20, 3, v21, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3632, "false");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: profile not understood");
      }

      goto LABEL_109;
    }

LABEL_29:
    if (v13->i32[0] == 2)
    {
      goto LABEL_43;
    }

    if (sub_160EF0(0x1Eu, 6))
    {
      v22 = sub_160F34(0x1Eu);
      v23 = sub_175AE4();
      v24 = sub_160F68(6);
      v25 = v13->u32[0];
      v26 = a1[1716].i32[1];
      if (v22)
      {
        printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v23, 30, v24, v13->i32[0], v26);
        v27 = sub_175AE4();
        v28 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v27, 30, v28, v13->i32[0], a1[1716].i32[1]);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v23, 30, v24, v13->i32[0], v26);
      }
    }

    if (v13->i32[0])
    {
LABEL_43:
      a1[1716].i32[1] = 1;
    }

    else
    {
      a1[1716].i32[1] = 0;
    }

    a1[1725].i8[7] = 1;
    a1[1272].i32[0] = 2;
    if (a1[157].i32[0] < 1)
    {
      a1[157] = 0x100000000;
      a1[161].i32[0] = 1;
      a1[155].i32[0] &= ~0x400u;
      if (sub_160EF0(0x1Eu, 6))
      {
        v47 = sub_160F34(0x1Eu);
        v48 = sub_175AE4();
        v49 = sub_160F68(6);
        if (v47)
        {
          printf("%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF\n", v48, 30, v49);
          sub_175AE4();
          sub_160F68(6);
        }

        syslog(3, "%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF");
      }
    }

    else
    {
      if (a1[141].i32[1] != 20)
      {
        a1[1345].i8[4] = 1;
      }

      if (sub_160EF0(0x1Eu, 6))
      {
        v43 = sub_160F34(0x1Eu);
        v44 = sub_175AE4();
        v45 = sub_160F68(6);
        v46 = a1[157].u32[0];
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)\n", v44, 30, v45, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3512, a1[157].i32[0], a1[2236].i32[1]);
          v44 = sub_175AE4();
          v45 = sub_160F68(6);
        }

        syslog(3, "%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)", v44, 30, v45, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3512, a1[157].u32[0], a1[2236].u32[1]);
      }
    }

    if (a1[162].i8[0])
    {
      if (sub_160EF0(3u, 4))
      {
        v50 = sub_160F34(3u);
        v51 = sub_175AE4();
        v52 = sub_160F68(4);
        if (!v50)
        {
          goto LABEL_87;
        }

        v53 = 3530;
        goto LABEL_86;
      }

      goto LABEL_109;
    }

    goto LABEL_95;
  }

  if (v8 == 2)
  {
    if (v13->i32[0] != 2)
    {
      if (sub_160EF0(0x1Eu, 6))
      {
        v29 = sub_160F34(0x1Eu);
        v30 = sub_175AE4();
        v31 = sub_160F68(6);
        v32 = v13->u32[0];
        v33 = a1[1716].i32[1];
        if (v29)
        {
          printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v30, 30, v31, v13->i32[0], v33);
          v34 = sub_175AE4();
          v35 = sub_160F68(6);
          syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v34, 30, v35, v13->i32[0], a1[1716].i32[1]);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v30, 30, v31, v13->i32[0], v33);
        }
      }

      if (v13->i32[0] == 1 && sub_160EF0(0x1Eu, 4))
      {
        v54 = sub_160F34(0x1Eu);
        v55 = sub_175AE4();
        v56 = sub_160F68(4);
        if (v54)
        {
          printf("%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_H264EntropyMode = CABAC and baseline profile. out of spec. set entropy to CAVLC\n", v55, 30, v56);
          v57 = sub_175AE4();
          v86 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_H264EntropyMode = CABAC and baseline profile. out of spec. set entropy to CAVLC", v57, 30, v86);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_H264EntropyMode = CABAC and baseline profile. out of spec. set entropy to CAVLC", v55, 30, v56);
        }
      }
    }

    a1[1716].i32[1] = 0;
    a1[1725].i8[7] = 0;
    a1[1272].i32[0] = 0;
    a1[157] = 0x100000000;
    a1[161].i32[0] = 1;
    a1[155].i32[0] &= ~0x400u;
    if (v13->i32[0] == 1)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v66 = sub_160F34(0x1Eu);
        v67 = sub_175AE4();
        v68 = sub_160F68(4);
        if (v66)
        {
          printf("%lld %d AVE %s: %s:%d %s | profile %d but CABAC is on\n", v67, 30, v68, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3622, "pINS->FIGEntropyMode != EntropyModeCABAC", 2);
          v67 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | profile %d but CABAC is on", v67);
      }

      goto LABEL_109;
    }

    if (a1[162].i8[0])
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v74 = sub_160F34(0x1Eu);
        v75 = sub_175AE4();
        v76 = sub_160F68(4);
        if (v74)
        {
          printf("%lld %d AVE %s: %s:%d %s | profile %d but bWeightedPrediction is on\n", v75, 30, v76, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3625, "(pINS->sSessionCfg.sEnc.sAlgCfg.sRef.iFeature & (1U<<0)) == 0", 2);
          v75 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | profile %d but bWeightedPrediction is on", v75);
      }

      goto LABEL_109;
    }

    goto LABEL_95;
  }

  if (v8 != 4)
  {
    if (v8 != 6)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if (v13->i32[0] == 2)
  {
    goto LABEL_69;
  }

  if (sub_160EF0(0x1Eu, 6))
  {
    v36 = sub_160F34(0x1Eu);
    v37 = sub_175AE4();
    v38 = sub_160F68(6);
    v39 = v13->u32[0];
    v40 = a1[1716].i32[1];
    if (v36)
    {
      printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v37, 30, v38, v13->i32[0], v40);
      v41 = sub_175AE4();
      v42 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v41, 30, v42, v13->i32[0], a1[1716].i32[1]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v37, 30, v38, v13->i32[0], v40);
    }
  }

  if (v13->i32[0])
  {
LABEL_69:
    a1[1716].i32[1] = 1;
  }

  else
  {
    a1[1716].i32[1] = 0;
  }

  a1[1725].i8[7] = 0;
  a1[1272].i32[0] = 0;
  if (a1[157].i32[0] < 1)
  {
    a1[157] = 0x100000000;
    a1[161].i32[0] = 1;
    a1[155].i32[0] &= ~0x400u;
    if (sub_160EF0(0x1Eu, 6))
    {
      v62 = sub_160F34(0x1Eu);
      v63 = sub_175AE4();
      v64 = sub_160F68(6);
      if (v62)
      {
        printf("%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF\n", v63, 30, v64);
        sub_175AE4();
        sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF");
    }
  }

  else
  {
    if (a1[141].i32[1] != 20)
    {
      a1[1345].i8[4] = 1;
    }

    if (sub_160EF0(0x1Eu, 6))
    {
      v58 = sub_160F34(0x1Eu);
      v59 = sub_175AE4();
      v60 = sub_160F68(6);
      v61 = a1[157].u32[0];
      if (v58)
      {
        printf("%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)\n", v59, 30, v60, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3580, a1[157].i32[0], a1[2236].i32[1]);
        v59 = sub_175AE4();
        v60 = sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)", v59, 30, v60, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3580, a1[157].u32[0], a1[2236].u32[1]);
    }
  }

  if (a1[162].i8[0])
  {
    if (sub_160EF0(3u, 4))
    {
      v65 = sub_160F34(3u);
      v51 = sub_175AE4();
      v52 = sub_160F68(4);
      if (!v65)
      {
LABEL_87:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: bWeightedPredictionis true and usage is default. not yet supported...");
        goto LABEL_109;
      }

      v53 = 3597;
LABEL_86:
      printf("%lld %d AVE %s: %s:%d %s | FIG: bWeightedPredictionis true and usage is default. not yet supported...\n", v51, 3, v52, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", v53, "false");
      sub_175AE4();
      sub_160F68(4);
      goto LABEL_87;
    }

LABEL_109:
    v71 = 0;
    v73 = -12902;
    goto LABEL_110;
  }

LABEL_95:
  if (a1[141].i32[1] == 3)
  {
    v69 = 0;
    v70 = 0;
    a1[1345].i8[4] = 1;
    a1[183].i32[0] = 0;
    if (a1[1344].i32[0] == 2)
    {
      v70 = a1[167].i32[0] & 0xFFFF7FAF;
      v69 = a1[169].i32[0] & 0x1E;
    }

    a1[167].i32[0] = v70;
    a1[169].i32[0] = v69;
  }

  v71 = 1;
  if (a1[1507].i8[4] != 1)
  {
    goto LABEL_102;
  }

  a1[141].i32[1] = 3;
  a1[1345].i8[4] = 1;
  a1[183].i32[0] = 0;
  a1[169].i32[0] = 0;
  a1[155].i32[0] &= ~0x400u;
  v72 = -6 * a1[1506].i32[1];
  a1[168].i32[1] = v72;
  a1[168].i32[0] = v72;
  a1[154].i32[1] = v72;
  a1[154].i32[0] = v72;
  a1[144].i32[0] = v72;
  a1[143].i32[1] = v72;
  a1[143].i32[0] = v72;
  a1[1501].i32[0] = 9;
  a1[1504].i32[1] = 17;
  a1[1716].i32[1] = 0;
  a1[167].i32[0] = 0;
  a1[1325].i32[1] = 0;
  if (a1[9].i32[1] >= 30)
  {
    v73 = 0;
    a1[1271].i8[2] = 1;
  }

  else
  {
LABEL_102:
    v73 = 0;
  }

LABEL_110:
  if (sub_160EF0(0x10u, 6))
  {
    v77 = sub_160F34(0x10u);
    v78 = sub_175AE4();
    v79 = sub_160F68(6);
    if (v77)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d\n", v78, 16, v79, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", a1, v8, v73);
      v78 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v78);
  }

  if (v71)
  {
    return 0;
  }

  if (sub_160EF0(3u, 4))
  {
    v81 = sub_160F34(3u);
    v82 = sub_175AE4();
    v83 = sub_160F68(4);
    if (v81)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264NewDefaultsBasedOnProfileUsageDefault failed\n", v82, 3, v83, "AVE_NewDefaultsBasedOnProfileUsageDefault", 3736, "err == noErr");
      v84 = sub_175AE4();
      v87 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264NewDefaultsBasedOnProfileUsageDefault failed", v84, 3, v87, "AVE_NewDefaultsBasedOnProfileUsageDefault", 3736, "err == noErr");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264NewDefaultsBasedOnProfileUsageDefault failed", v82, 3, v83, "AVE_NewDefaultsBasedOnProfileUsageDefault", 3736, "err == noErr");
    }
  }

  return 4294954394;
}

void H264H9EncoderRegister()
{
  v0 = sub_15B650();
  if (!v0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v2 = Mutable;
      CFDictionaryAddValue(Mutable, kVTVideoEncoder_IsHardwareAccelerated, kCFBooleanTrue);
      CFDictionaryAddValue(v2, kVTVideoEncoder_IsParavirtualizationAware, kCFBooleanTrue);
      CFDictionaryAddValue(v2, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.h264");
      v0 = VTRegisterVideoEncoderWithInfo();
      CFRelease(v2);
    }

    else
    {
      v0 = 0;
    }
  }

  if (sub_160EF0(2u, 5))
  {
    v3 = sub_160F34(2u);
    v4 = sub_175AE4();
    v5 = sub_160F68(5);
    if (v3)
    {
      printf("%lld %d AVE %s: Register AVC video encoder of AVE %d\n", v4, 2, v5, v0);
      v6 = sub_175AE4();
      v7 = sub_160F68(5);
      syslog(3, "%lld %d AVE %s: Register AVC video encoder of AVE %d", v6, 2, v7, v0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Register AVC video encoder of AVE %d", v4, 2, v5, v0);
    }
  }
}

int *sub_FB0C8(int a1, int a2, int a3, int a4, uint64_t a5)
{
  result = sub_17004C(a1, a2, a3);
  if (result)
  {
    result = sub_162230(result, a4, a5);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t sub_FB108(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, uint64_t a11, int a12, int a13)
{
  if (a1)
  {
    v20 = a13;
    v21 = 1;
    v22 = a1;
  }

  else if (a8 < 0)
  {
    if (a2)
    {
      v20 = a13;
      v21 = 7;
      v22 = a2;
    }

    else
    {
      v22 = 3;
      if (a9 == 1)
      {
        v20 = a13;
        v21 = 8;
      }

      else
      {
        v20 = a13;
        if (((a13 + 15) >> 4) * ((a12 + 15) >> 4) <= 3600)
        {
          v22 = 1;
        }

        else
        {
          v22 = 3;
        }

        v21 = 9;
      }
    }
  }

  else
  {
    v20 = a13;
    if (a8)
    {
      if (a10)
      {
        v21 = 5;
        if (a10 < 0)
        {
          v22 = 5;
        }

        else
        {
          v25 = sub_FB0C8(a3, a5, a6, a7, a11);
          if (v25 <= 5)
          {
            v22 = 5;
          }

          else
          {
            v22 = v25;
          }

          v21 = 6;
        }
      }

      else
      {
        if (a4 > 29)
        {
          v21 = 3;
        }

        else
        {
          v21 = 4;
        }

        if (a4 <= 29)
        {
          v22 = 5;
        }

        else
        {
          v22 = 7;
        }
      }
    }

    else
    {
      v22 = 3;
      v21 = 2;
    }
  }

  if (sub_160EF0(0x10u, 8))
  {
    v30 = a3;
    v23 = sub_160F34(0x10u);
    v28 = sub_175AE4();
    v24 = sub_160F68(8);
    if (v23)
    {
      printf("%lld %d AVE %s: %s:%d %d %d %d %d | %d %d %d | %d %d %d %lld | %d %d | %d %d\n", v28, 16, v24, "AVE_Enc_DecideThroughputMode", 332, a1, a2, v30, a4, a5, a6, a7, a8, a9, a10, a11, a12, v20, v21, v22);
      v29 = sub_175AE4();
      v27 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d | %d %d %d | %d %d %d %lld | %d %d | %d %d", v29, 16, v27, "AVE_Enc_DecideThroughputMode", 332, a1, a2, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d | %d %d %d | %d %d %d %lld | %d %d | %d %d", v28, 16, v24, "AVE_Enc_DecideThroughputMode", 332, a1, a2, v30);
    }
  }

  return v22;
}

uint64_t sub_FB3F0(int a1, int a2, int a3, int a4, int a5)
{
  if (a5 < 0)
  {
    v10 = 24;
  }

  else
  {
    v10 = 48;
  }

  if (a5 >= 0)
  {
    v11 = 3;
  }

  else
  {
    v11 = 4;
  }

  v12 = a5 + 24;
  if (a5 >= 0)
  {
    v13 = 12;
  }

  else
  {
    v12 = 24;
    v13 = 2;
  }

  if (a4 == 1)
  {
    v10 = v12;
    v11 = v13;
  }

  if (a3 == 1)
  {
    v14 = v10;
  }

  else
  {
    v14 = 24;
  }

  if (a3 == 1)
  {
    v15 = v11;
  }

  else
  {
    v15 = 5;
  }

  if (a2 == 2)
  {
    v16 = 24;
  }

  else
  {
    v16 = v14;
  }

  if (a2 == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15;
  }

  if (sub_160EF0(0x10u, 8))
  {
    v18 = sub_160F34(0x10u);
    v19 = sub_175AE4();
    v20 = sub_160F68(8);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %d %d %d %d %d | %d %d\n", v19, 16, v20, "AVE_Enc_DecideInputQueueMaxCnt", 494, a1, a2, a3, a4, a5, v16, v17);
      v21 = sub_175AE4();
      v23 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d %d | %d %d", v21, 16, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d %d | %d %d", v19, 16, v20);
    }
  }

  return v16;
}

uint64_t sub_FB584(uint64_t a1, double a2)
{
  v4 = (a1 + 10784);
  v5 = (a2 * 100.0 + 0.5);
  if (sub_160EF0(0x1Eu, 6))
  {
    v6 = sub_160F34(0x1Eu);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %f %p\n", v7, 30, v8, "AVE_HEVC_SetQuality", a2, a1);
      v9 = sub_175AE4();
      v18 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v9, 30, v18, "AVE_HEVC_SetQuality", a2, a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v7, 30, v8, "AVE_HEVC_SetQuality", a2, a1);
    }
  }

  if (v5 > 0x63)
  {
    if (v5 == 100)
    {
      v12 = 0;
      *(a1 + 1144) = 0;
      *(a1 + 39959) = 1;
      *(a1 + 1152) = 0;
      v4[74] = 1;
      *(a1 + 10604) = 0;
      *(a1 + 1448) |= 0x200uLL;
    }

    else
    {
      v12 = 4294966295;
    }

    goto LABEL_21;
  }

  v10 = *(a1 + 10752);
  if (!*(a1 + 24732))
  {
    if (v10 != 2)
    {
      v13 = a33222111000_0[v5];
      goto LABEL_17;
    }

    v11 = a3210[v5];
LABEL_16:
    v12 = 0;
    *(a1 + 1144) = v11;
    *(a1 + 1148) = v11;
    *(a1 + 1152) = v11;
    v4[73] = 1;
    goto LABEL_21;
  }

  if (v10 == 2)
  {
    v11 = byte_185AC0[v5];
    goto LABEL_16;
  }

  v13 = byte_185B25[v5];
LABEL_17:
  *(a1 + 1144) = v13;
  *(a1 + 1148) = v13;
  *(a1 + 1152) = v13;
  v4[73] = 1;
  if (*v4 == 1 && *(a1 + 1132) != 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    *v4 = 1;
    *(a1 + 1132) = 3;
  }

LABEL_21:
  if (sub_160EF0(0x1Eu, 6))
  {
    v14 = sub_160F34(0x1Eu);
    v15 = sub_175AE4();
    v16 = sub_160F68(6);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %f %p %d\n", v15, 30, v16, "AVE_HEVC_SetQuality", a2, a1, v12);
      sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %f %p %d");
  }

  return v12;
}

uint64_t sub_FB84C(uint64_t a1, double a2)
{
  if (sub_160EF0(0xCu, 6))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %f %p\n", v5, 12, v6, "AVE_HEVC_SetCQFactor", a2, a1);
      v7 = sub_175AE4();
      v19 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v7, 12, v19, "AVE_HEVC_SetCQFactor", a2, a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v5, 12, v6, "AVE_HEVC_SetCQFactor", a2, a1);
    }
  }

  if ((*(a1 + 1123) & 0x80) != 0 && *(a1 + 10752) != 2 && (*(a1 + 10784) != 1 || (v12 = *(a1 + 1132), v12 == 8) || v12 == 6))
  {
    if (a2 < 0.0 || a2 > 1.0)
    {
      if (sub_160EF0(0xCu, 4))
      {
        v15 = sub_160F34(0xCu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %f [0.0, 1.0]\n", v16, 12, v17, "AVE_HEVC_SetCQFactor", 243, "fCQFactor >= 0.0 && fCQFactor <= 1.0", a1, *(a1 + 56), a2);
          v16 = sub_175AE4();
          sub_160F68(4);
          v18 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %f [0.0, 1.0]", v16, 12);
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
        v13 = 8;
      }

      else
      {
        v13 = 6;
      }

      *(a1 + 1132) = v13;
    }
  }

  else
  {
    v8 = 0;
  }

  if (sub_160EF0(0xCu, 6))
  {
    v9 = sub_160F34(0xCu);
    v10 = sub_175AE4();
    v11 = sub_160F68(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Exit %f %p %d\n", v10, 12, v11, "AVE_HEVC_SetCQFactor", a2, a1, v8);
      sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %f %p %d");
  }

  return v8;
}

uint64_t sub_FBB5C(const void *a1, const __CFString *a2, const void *a3)
{
  if (sub_160EF0(0xCu, 8))
  {
    v6 = sub_160F34(0xCu);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 12, v8, "AVE_Session_HEVC_SetProperty", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2)
  {
    v9 = sub_83BD8(a1, a2, a3);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 12, v12, "AVE_Session_HEVC_SetProperty", 272, "pINS != __null && pKey != __null", a1, a2, a3);
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
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v15, 12, v16, "AVE_Session_HEVC_SetProperty", a1, a2, a3, v9);
      v15 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v15, 12);
  }

  return v9;
}

uint64_t sub_FBE00(uint64_t a1)
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
      printf("%lld %d AVE %s: %s Enter %p\n", v4, 12, v5, "AVE_Session_HEVC_CreatePropertyDict", a1);
      v6 = sub_175AE4();
      v34 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v6, 12, v34, "AVE_Session_HEVC_CreatePropertyDict", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v4, 12, v5, "AVE_Session_HEVC_CreatePropertyDict", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 12, v16, "AVE_Session_HEVC_CreatePropertyDict", 294, "pINS != __null", 0);
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

    v12 = sub_83978(*(a1 + 68), v10, *(a1 + 56), Mutable);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to make property dictionary %p %lld 0x%x %d %d\n", v23, 12, v24, "AVE_Session_HEVC_CreatePropertyDict", 329, "ret == 0", a1, *(a1 + 56), v10, *(a1 + 68), v13);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          v26 = *(a1 + 56);
        }

        v37 = *(a1 + 68);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %p %lld 0x%x %d %d", v23, 12, v24, "AVE_Session_HEVC_CreatePropertyDict");
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
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d\n", v18, 12, v19, "AVE_Session_HEVC_CreatePropertyDict", 324, "paDict[i] != __null", a1, *(a1 + 56), v10, *(a1 + 68), 0);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      v21 = *(a1 + 56);
    }

    v36 = *(a1 + 68);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d", v18, 12, v19, "AVE_Session_HEVC_CreatePropertyDict");
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
      printf("%lld %d AVE %s: %s Exit %p %d\n", v30, 12, v31, "AVE_Session_HEVC_CreatePropertyDict", a1, v13);
      v32 = sub_175AE4();
      v35 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v32, 12, v35, "AVE_Session_HEVC_CreatePropertyDict", a1, v13);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v30, 12, v31, "AVE_Session_HEVC_CreatePropertyDict", a1, v13);
    }
  }

  return v13;
}

uint64_t sub_FC344(uint64_t a1)
{
  if (sub_160EF0(0xCu, 6))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 12, v4, "AVE_Session_HEVC_Stop", a1);
      v5 = sub_175AE4();
      v19 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v19, "AVE_Session_HEVC_Stop", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 12, v4, "AVE_Session_HEVC_Stop", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 104712);
    v7 = sub_175AE4();
    sub_140028(v6, 4u, v7);
    if (*(a1 + 104644) == 30568)
    {
      v21 = sub_175AE4();
      v8 = sub_12D170(*(a1 + 120), &v21);
    }

    else
    {
      v8 = 0;
    }

    v12 = *(a1 + 104712);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v10, 12, v11, "AVE_Session_HEVC_Stop", 366, "pINS != __null", 0);
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
      printf("%lld %d AVE %s: %s Exit %p %d\n", v15, 12, v16, "AVE_Session_HEVC_Stop", a1, v8);
      v17 = sub_175AE4();
      v20 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v17, 12, v20, "AVE_Session_HEVC_Stop", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 12, v16, "AVE_Session_HEVC_Stop", a1, v8);
    }
  }

  return v8;
}

uint64_t sub_FC5F0(uint64_t a1)
{
  if (sub_160EF0(0xCu, 6))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 12, v4, "AVE_Session_HEVC_Destroy", a1);
      v5 = sub_175AE4();
      v46 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v46, "AVE_Session_HEVC_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 12, v4, "AVE_Session_HEVC_Destroy", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 104712);
    v7 = sub_175AE4();
    sub_140028(v6, 1u, v7);
    if (*(a1 + 104644) == 30568)
    {
      v48 = sub_175AE4();
      sub_12C9EC(*(a1 + 120), &v48, 0);
    }

    if (sub_160EF0(2u, 0))
    {
      v8 = sub_160F34(2u);
      v9 = sub_175AE4();
      v10 = sub_160F68(0);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v13 = *(a1 + 10772);
      v14 = *(a1 + 104648);
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
        v20 = *(a1 + 104648);
        sub_129124(*(a1 + 120));
        sub_129148(*(a1 + 120));
      }

      syslog(3, "%lld %d AVE %s: ID: %lld Type: %d Enc: %d | Input: %d Proc: %lld Drop: %lld", v9, 2, v10);
    }

    v24 = sub_12916C(*(a1 + 120));
    *(a1 + 120) = 0;
    v25 = *(a1 + 104712);
    v26 = sub_175AE4();
    sub_1403FC(v25, 1u, v26);
    sub_1407CC(*(a1 + 104712));
    sub_140BA4(*(a1 + 104712), 16, 6, 0, 0);
    sub_151B10();
    v27 = *(a1 + 104704);
    if (v27)
    {
      sub_153A34(v27);
      operator delete();
    }

    v28 = *(a1 + 104712);
    if (v28)
    {
      sub_13FB64(v28);
      *(a1 + 104712) = 0;
    }

    v29 = *(a1 + 104720);
    if (v29)
    {
      sub_CCDA4(v29);
      sub_CC04C(*(a1 + 104720));
      *(a1 + 104720) = 0;
    }

    v30 = *(a1 + 104728);
    if (v30)
    {
      sub_D7B88(v30);
      operator delete();
    }

    v31 = *(a1 + 104736);
    if (v31)
    {
      sub_16934(v31);
      operator delete();
    }

    v32 = *(a1 + 104656);
    if (v32)
    {
      CFRelease(v32);
      *(a1 + 104656) = 0;
    }

    v33 = 0;
    v34 = a1 + 80;
    do
    {
      v35 = *(v34 + v33);
      if (v35)
      {
        CFRelease(v35);
        *(v34 + v33) = 0;
      }

      v33 += 8;
    }

    while (v33 != 24);
    v36 = *(a1 + 104);
    if (v36)
    {
      CFRelease(v36);
      *(a1 + 104) = 0;
    }

    v37 = *(a1 + 107992);
    if (v37)
    {
      CFRelease(v37);
      *(a1 + 107992) = 0;
    }

    v38 = *(a1 + 112);
    if (v38)
    {
      CFRelease(v38);
      *(a1 + 112) = 0;
    }

    v39 = *(a1 + 104768);
    if (v39)
    {
      CFRelease(v39);
      *(a1 + 104768) = 0;
    }

    v40 = *(a1 + 104776);
    if (v40)
    {
      CFRelease(v40);
      *(a1 + 104776) = 0;
    }

    sub_DE5B8((a1 + 106112));
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v22, 12, v23, "AVE_Session_HEVC_Destroy", 398, "pINS != __null", 0);
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
    v41 = sub_160F34(0xCu);
    v42 = sub_175AE4();
    v43 = sub_160F68(6);
    if (v41)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v42, 12, v43, "AVE_Session_HEVC_Destroy", a1, v24);
      v44 = sub_175AE4();
      v47 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v44, 12, v47, "AVE_Session_HEVC_Destroy", a1, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v42, 12, v43, "AVE_Session_HEVC_Destroy", a1, v24);
    }
  }

  return v24;
}

uint64_t sub_FCB00(uint64_t a1, unsigned int *a2)
{
  v4 = sub_1502C8();
  if (sub_160EF0(0xCu, 6))
  {
    v5 = sub_160F34(0xCu);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v6, 12, v7, "AVE_Session_HEVC_StartSession", a1, a2);
      v8 = sub_175AE4();
      v60 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v8, 12, v60, "AVE_Session_HEVC_StartSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v6, 12, v7, "AVE_Session_HEVC_StartSession", a1, a2);
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
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_HEVC_StartSession", 6820, "pDim->iWidth > 0 && pDim->iHeight > 0", a1, *(a1 + 56), *a2, a2[1]);
          v14 = sub_175AE4();
          v15 = sub_160F68(4);
          v25 = *(a1 + 56);
          v26 = *a2;
          v27 = a2[1];
        }

        else
        {
          v67 = *a2;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v9 = *(a1 + 104712);
      v10 = sub_175AE4();
      sub_140028(v9, 3u, v10);
      v11 = *a2;
      v12 = a2[1];
      *(a1 + 1440) = *a2;
      *(a1 + 1444) = v12;
      *(a1 + 11452) = v11;
      *(a1 + 11456) = v12;
      *(a1 + 764) = 1;
      sub_FD500(a1);
      if (!sub_14E248(*(a1 + 68), 1, 2, *(a1 + 1440), *(a1 + 1444), 0))
      {
        sub_FD844(a1);
        v29 = *(a1 + 24732) + 8;
        if (v29 <= *(a1 + 24736) + 8)
        {
          v29 = *(a1 + 24736) + 8;
        }

        if (sub_DDADC(*(a1 + 68), *(a1 + 64), 62, 2, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v29, 0, 0x414C4C20u, *(a1 + 16)))
        {
          if (sub_160EF0(0x1Eu, 4))
          {
            v30 = sub_160F34(0x1Eu);
            v31 = sub_175AE4();
            v32 = sub_160F68(4);
            if (v30)
            {
              printf("%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.\n", v31, 30, v32, "AVE_Session_HEVC_StartSession", 6857, "ret == 0");
              v33 = sub_175AE4();
              v61 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v33, 30, v61, "AVE_Session_HEVC_StartSession", 6857, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v31, 30, v32, "AVE_Session_HEVC_StartSession", 6857, "ret == 0");
            }
          }

          v28 = 4294954394;
          goto LABEL_32;
        }

        *(a1 + 104644) = 30566;
        *(a1 + 106080) = 0xFFFFFFFF00000000;
        *(a1 + 10532) = 0;
        *(a1 + 108016) = 0;
        *(a1 + 108004) = 0;
        memset_pattern16((a1 + 108008), &unk_185AB0, 8uLL);
        *(a1 + 108024) = 0u;
        if (*(a1 + 1112) >= 1)
        {
          v41 = *(a1 + 1112);
        }

        else
        {
          v41 = 30;
        }

        sub_153F28(*(a1 + 104704), v41, 0, 0);
        *(a1 + 712) = v4[103];
        if (*(a1 + 10892) == 1)
        {
          operator new();
        }

        if (*(a1 + 16) == 1)
        {
          v42 = 1;
        }

        else
        {
          v42 = 3;
        }

        v43 = sub_16960(*(a1 + 104736), *(a1 + 56), 0, 0, 2, v42);
        if (v43)
        {
          v28 = v43;
          if (!sub_160EF0(0xCu, 4))
          {
            goto LABEL_32;
          }

          v44 = sub_160F34(0xCu);
          v45 = sub_175AE4();
          v46 = sub_160F68(4);
          if (v44)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu\n", v45, 12, v46, "AVE_Session_HEVC_StartSession", 6904, "ret == 0", a1, *(a1 + 56));
            v47 = sub_175AE4();
            sub_160F68(4);
            v48 = *(a1 + 56);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu", v47, 12);
            goto LABEL_32;
          }

          v64 = a1;
          v65 = *(a1 + 56);
          v63 = 6904;
          v62 = v46;
          v56 = "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu";
        }

        else
        {
          v49 = sub_83F18(a1);
          if (!v49)
          {
            v57 = v4[30];
            if (v57)
            {
              *(a1 + 11468) = v57;
            }

            for (i = 0; i != 72; i += 12)
            {
              v59 = v4[i + 32];
              if ((v59 & 0x80000000) == 0)
              {
                *(a1 + 11476 + i * 4) = v59;
              }

              v28 = 0;
            }

            goto LABEL_32;
          }

          v28 = v49;
          if (!sub_160EF0(0xCu, 4))
          {
LABEL_32:
            v34 = *(a1 + 104712);
            v35 = sub_175AE4();
            sub_1403FC(v34, 3u, v35);
            if (v28)
            {
              v36 = *(a1 + 104728);
              if (v36)
              {
                sub_D7B88(v36);
                operator delete();
              }
            }

            goto LABEL_35;
          }

          v50 = sub_160F34(0xCu);
          v45 = sub_175AE4();
          v51 = sub_160F68(4);
          v52 = *(a1 + 56);
          if (v50)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d\n", v45, 12, v51, "AVE_Session_HEVC_StartSession", 6912, "ret == 0", a1, *(a1 + 56), v28);
            v53 = sub_175AE4();
            v54 = sub_160F68(4);
            v55 = *(a1 + 56);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d", v53, 12, v54);
            goto LABEL_32;
          }

          v65 = *(a1 + 56);
          v66 = v28;
          v64 = a1;
          v63 = 6912;
          v62 = v51;
          v56 = "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d";
        }

        syslog(3, v56, v45, 12, v62, "AVE_Session_HEVC_StartSession", v63, "ret == 0", v64, v65, v66);
        goto LABEL_32;
      }

      if (sub_160EF0(0xCu, 4))
      {
        v13 = sub_160F34(0xCu);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        v16 = *(a1 + 1440);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_HEVC_StartSession", 6839, "ret == 0", a1, *(a1 + 56), *(a1 + 1440), *(a1 + 1444));
          v14 = sub_175AE4();
          v15 = sub_160F68(4);
          v17 = *(a1 + 56);
          v18 = *(a1 + 1440);
          v19 = *(a1 + 1444);
        }

        else
        {
          v68 = *(a1 + 1440);
        }

LABEL_30:
        syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v14, 12, v15);
      }
    }

    v28 = 4294965295;
    goto LABEL_32;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v20 = sub_160F34(0xCu);
    v21 = sub_175AE4();
    v22 = sub_160F68(4);
    if (v20)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v21, 12, v22, "AVE_Session_HEVC_StartSession", 6816, "pINS != __null && pDim != __null", a1, a2);
      v21 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v21, 12);
  }

  v28 = 4294966295;
LABEL_35:
  if (sub_160EF0(0xCu, 6))
  {
    v37 = sub_160F34(0xCu);
    v38 = sub_175AE4();
    v39 = sub_160F68(6);
    if (v37)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v38, 12, v39, "AVE_Session_HEVC_StartSession", a1, a2, v28);
      v38 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v38);
  }

  return v28;
}

void sub_FD500(uint64_t a1)
{
  v2 = (a1 + 106088);
  v3 = a1 + 24712;
  if (sub_160EF0(0xCu, 7))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams\n", v5, 12, v6);
      v7 = sub_175AE4();
      v31 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams", v7, 12, v31);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams", v5, 12, v6);
    }
  }

  v8 = sub_14E470(*(a1 + 68), 1, 2);
  v9 = *(a1 + 1440);
  v10 = *(a1 + 1444);
  *v3 = 0;
  *(a1 + 24716) = 0u;
  if ((v10 & 0xF) != 0 || v10 < v8[1])
  {
    if (*(a1 + 76) >= 12)
    {
      v2[1] = v10;
    }

    v11 = (v10 + 15) & 0xFFFFFFF0;
    if (v11 <= v8[1])
    {
      v11 = v8[1];
    }

    *(a1 + 1444) = v11;
    *v3 = 1;
    *(v3 + 16) = v11 - v10;
  }

  if ((v9 & 0xF) != 0 || v9 < *v8)
  {
    if (*(a1 + 76) >= 12)
    {
      *v2 = v9;
    }

    v12 = (v9 + 15) & 0xFFFFFFF0;
    if (v12 <= *v8)
    {
      v12 = *v8;
    }

    *(a1 + 1440) = v12;
    *v3 = 1;
    *(v3 + 8) = v12 - v9;
  }

  if (sub_160EF0(0x10u, 7))
  {
    v13 = sub_160F34(0x10u);
    v14 = sub_175AE4();
    v15 = sub_160F68(7);
    if (v13)
    {
      printf("%lld %d AVE %s: FIG: input -> %dx%d\n", v14, 16, v15, v9, v10);
      v16 = sub_175AE4();
      v32 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: input -> %dx%d", v16, 16, v32, v9, v10);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: input -> %dx%d", v14, 16, v15, v9, v10);
    }
  }

  if (sub_160EF0(0x10u, 7))
  {
    v17 = sub_160F34(0x10u);
    v18 = sub_175AE4();
    v19 = sub_160F68(7);
    v20 = *(a1 + 1440);
    v21 = *(a1 + 1444);
    if (v17)
    {
      printf("%lld %d AVE %s: FIG: input multiple -> %dx%d\n", v18, 16, v19, *(a1 + 1440), v21);
      v22 = sub_175AE4();
      v23 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: input multiple -> %dx%d", v22, 16, v23, *(a1 + 1440), *(a1 + 1444));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: input multiple -> %dx%d", v18, 16, v19, *(a1 + 1440), v21);
    }
  }

  if (sub_160EF0(0x10u, 7))
  {
    v24 = sub_160F34(0x10u);
    v25 = sub_175AE4();
    v26 = sub_160F68(7);
    v27 = *(v3 + 16);
    v28 = *(v3 + 8);
    if (v24)
    {
      printf("%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d\n", v25, 16, v26, *(v3 + 16), v28);
      v29 = sub_175AE4();
      v30 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d", v29, 16, v30, *(v3 + 16), *(v3 + 8));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d", v25, 16, v26, *(v3 + 16), v28);
    }
  }
}

double sub_FD844(uint64_t a1)
{
  v2 = a1 + 59120;
  v21 = a1 + 48356;
  v3 = a1 + 39864;
  v4 = a1 + 31172;
  v5 = a1 + 24264;
  v20 = (a1 + 14424);
  v6 = a1 + 10168;
  if (sub_160EF0(0xCu, 7))
  {
    v7 = sub_160F34(0xCu);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    if (v7)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault\n", v8, 12, v9);
      v10 = sub_175AE4();
      v19 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault", v10, 12, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault", v8, 12, v9);
    }
  }

  *(v6 + 588) = 0;
  *(a1 + 1308) = 1;
  *(v6 + 596) = 1;
  *(a1 + 1096) = 0x39D00000000;
  *(a1 + 1296) &= ~1u;
  *(v6 + 613) = 0;
  *(a1 + 10788) = 5;
  *(a1 + 10792) = 0x300000006;
  *(a1 + 10752) = 1;
  *(v6 + 678) = 1;
  *(a1 + 10864) = 0;
  *(a1 + 10880) = 0;
  *(a1 + 10872) = 0;
  *(a1 + 10888) = 0;
  *(a1 + 10860) = -1;
  *(v6 + 684) = 0;
  *(a1 + 10848) = 0x1000000;
  *(v6 + 687) = 0;
  *(a1 + 688) &= ~2u;
  *(a1 + 10800) = 1;
  v11 = *(a1 + 1336);
  *(v6 + 760) = 0;
  *(v6 + 1276) = 0;
  *(a1 + 11764) = 0;
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
  *(a1 + 11712) = 0u;
  *(a1 + 11728) = 0u;
  *(a1 + 11744) = 0u;
  bzero((a1 + 10930), 0x201uLL);
  for (i = 0; i != 288; i += 48)
  {
    *(a1 + 11472 + i) = 0xFFFFFFFF00000001;
  }

  *(a1 + 11464) = 0x100000006;
  *(a1 + 11760) = 1;
  *(v6 + 344) = 0;
  *(v6 + 1642) = 1;
  *(a1 + 11812) = -1;
  *(a1 + 11772) = 0;
  *(a1 + 11792) = 0;
  *(v6 + 1632) = 0;
  *(a1 + 11804) = 0;
  *(a1 + 10924) = -1;
  *(a1 + 10908) = -1;
  *(a1 + 10916) = -1;
  *(a1 + 1472) = 0;
  *(a1 + 1464) = 0;
  *(a1 + 1256) = 0x300000003;
  v13 = *(a1 + 1240);
  *(a1 + 10536) = 0;
  *(a1 + 1240) = v13 | 0x700;
  *v6 = 4 * (*(a1 + 76) > 6);
  *(v6 + 2) = 0;
  *(a1 + 10176) = 2;
  *(v6 + 5) = 0;
  *(a1 + 10244) = 1;
  *(v6 + 80) = 0;
  *(a1 + 10252) = 1;
  v14 = *(a1 + 1444);
  *(a1 + 10260) = v14;
  *(a1 + 10516) = 4;
  *(a1 + 10524) = 0;
  *(a1 + 1288) = 1;
  *(v6 + 36) = 256;
  *(v6 + 354) = 0;
  *(v6 + 363) = 0;
  *(v6 + 372) = 0;
  *(v6 + 396) = 5;
  *(a1 + 10568) = 1;
  *(a1 + 10604) = 0x1000000001;
  *(a1 + 10572) = 0u;
  *(a1 + 10594) = 0;
  *(a1 + 10588) = 0;
  *(a1 + 10744) = 8;
  *(a1 + 10552) = 2;
  *(a1 + 1392) = -1;
  *(v6 + 572) = 0;
  *(v6 + 12) = 3;
  *(v6 + 16) = 0;
  *(a1 + 10188) = 0x800000001;
  *(v6 + 3) = 1;
  *(a1 + 1336) = v11 & 0xF3FEF9FF | 0x600;
  *(a1 + 1448) |= 0x2000000uLL;
  memset_pattern16((a1 + 10544), &unk_185AA0, 8uLL);
  v15 = (*(a1 + 1440) * v14);
  *(a1 + 10808) = 1;
  *(a1 + 1136) = (v15 * 1.5 * 0.075 * 30.0);
  *(a1 + 1112) = 30;
  *(a1 + 11968) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0xBFF0000000000000;
  *(a1 + 1280) = 0xBFF0000000000000;
  *(a1 + 1132) = 1;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = xmmword_1849B0;
  *(a1 + 1352) = 30;
  *(a1 + 1088) &= ~2uLL;
  *(a1 + 1252) = 1;
  *(a1 + 720) = 0;
  if (!*(v6 + 612))
  {
    *(a1 + 10892) = 0;
  }

  *(a1 + 11460) = 0;
  *(a1 + 692) = -1;
  *(a1 + 1232) = 0xC0000000CLL;
  *(a1 + 1344) = 0xC0000000CLL;
  *(a1 + 1336) = v11 & 0xF3FE7889 | 0x776;
  *(a1 + 1144) = 0x1A0000001ALL;
  *(a1 + 1152) = 26;
  *(a1 + 1192) = 0;
  *(a1 + 1160) = 0uLL;
  *(a1 + 1176) = 0uLL;
  *(a1 + 1324) = 1;
  *(a1 + 1328) = 0x100000001;
  *(a1 + 1128) = 0;
  *(a1 + 11448) = 30;
  *(a1 + 1120) = 0;
  *(a1 + 11964) = 0;
  *(v6 + 1648) = 0;
  *(v6 + 12) = 0;
  *(a1 + 12000) = 0;
  *(v6 + 1836) = 257;
  *(a1 + 12012) = 0;
  *(v6 + 1848) = 0;
  memset_pattern16((a1 + 13308), &unk_185A90, 0x1CuLL);
  *(v6 + 3136) = 0;
  *v20 = 0;
  *(a1 + 13336) = 0u;
  *(a1 + 13352) = 0u;
  *(a1 + 13368) = 0u;
  *(a1 + 13384) = 0u;
  *(a1 + 14428) = 0x5DC0000003E9;
  v20[12] = 0;
  *(a1 + 14444) = 0;
  v20[104] = 0;
  *(a1 + 12020) = 0;
  *(a1 + 12024) = 0x100000001;
  *(v6 + 1896) = 1;
  *(v6 + 1903) = 257;
  *(v6 + 1898) = 16843009;
  *(v6 + 1905) = 0;
  *(v6 + 1902) = 1;
  *(a1 + 12080) = 1;
  *(a1 + 12420) = 257;
  *(a1 + 12416) = 16843009;
  *(a1 + 12390) = 0x101010101010101;
  *(a1 + 12384) = 0x101010101010101;
  *(a1 + 12376) = 0x101010101010101;
  *(a1 + 12368) = 0x101010101010101;
  *(a1 + 24244) = 0;
  *(a1 + 24252) = 0;
  *(a1 + 24256) = 0x100000000;
  *v5 = 1;
  *(v5 + 36) = 16842753;
  *(v5 + 42) = 65793;
  *(v5 + 52) = 1;
  *(v5 + 420) = 0x100000000;
  *(v5 + 428) = 0;
  *(v5 + 468) = 0;
  *(v5 + 472) = 0;
  *(v5 + 476) = 7;
  *(v5 + 480) = 0;
  memset_pattern16((a1 + 24748), &unk_185A90, 0x1CuLL);
  *(a1 + 24820) = 0u;
  *(a1 + 24792) = 0u;
  *(a1 + 24808) = 0u;
  *(a1 + 24776) = 0u;
  *(v5 + 572) = xmmword_1859F0;
  *(v5 + 588) = 0;
  *(v5 + 592) = 0;
  *v4 = 256;
  *(v4 + 2) = 0;
  *(a1 + 31176) = 0x700000007;
  *(v4 + 12) = 1;
  *(v4 + 20) = 1;
  *(v4 + 156) = 1;
  *(v4 + 160) = 0;
  *(v4 + 164) = 0;
  *(v4 + 176) = 256;
  *(v4 + 180) = 5;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0x200000002;
  *(v4 + 200) = 2;
  *(v4 + 204) = 0;
  *(v4 + 236) = 0;
  *(v4 + 240) = 0x5DC0000003E9;
  *(v4 + 248) = 0;
  *(v4 + 256) = 257;
  *(v4 + 260) = 1;
  *(v4 + 264) = xmmword_185A00;
  *(v4 + 280) = xmmword_185A10;
  *(v4 + 296) = 48827;
  *(v4 + 300) = 0;
  *(v4 + 219) = 0;
  *(v4 + 328) = 0;
  *(a1 + 1104) = 24;
  v16 = *(a1 + 10892);
  if (v16 == 37 || v16 == 20)
  {
    *(a1 + 1104) = 152;
  }

  *v3 = 0;
  *(v3 + 4) = 0;
  *(a1 + 39852) = 0;
  *(a1 + 39860) = 0;
  *(a1 + 39872) = 0;
  *(a1 + 39878) = 0;
  *(v3 + 28) = xmmword_1849D0;
  *(v3 + 60) = xmmword_1849D0;
  *&v17 = 0xC0000000CLL;
  *(&v17 + 1) = 0xC0000000CLL;
  *(v3 + 44) = v17;
  *(v3 + 76) = v17;
  *(v3 + 93) = 0;
  *(v3 + 97) = 1;
  *(v3 + 2161) = 256;
  *(v3 + 2176) = 0;
  *v21 = 0;
  *(v21 + 2) = 0;
  *(v3 + 22) = 1;
  *(v3 + 24) = 2;
  *(v21 + 17) = 0;
  *(v3 + 92) = 0;
  *(v21 + 20) = 2;
  *(v21 + 3) = 0;
  *v2 = 1;
  *(v2 + 4) = 0;
  *(v2 + 16) = 2;
  *(v2 + 273) = 257;
  *(v2 + 928) = 0;
  *(v2 + 952) = 0;
  *(v2 + 28) = 0;
  *(v2 + 32) = 0;
  *(v2 + 36) = 0;
  *(v2 + 272) = 0;
  *(v2 + 412) = 0;
  *(v2 + 941) = 0;
  *(a1 + 59395) = 0;
  *(a1 + 59403) = 0;
  *(v2 + 848) = 3;
  result = NAN;
  *(v2 + 968) = -1;
  *(v2 + 414) = 1;
  *(a1 + 696) = 0;
  *(a1 + 716) = 0;
  return result;
}

uint64_t sub_FDFEC(uint64_t a1, int a2)
{
  if (sub_160EF0(0xCu, 6))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%x\n", v5, 12, v6, "AVE_Session_HEVC_BeginPass", a1, a2);
      v7 = sub_175AE4();
      v39 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x", v7, 12, v39, "AVE_Session_HEVC_BeginPass", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x", v5, 12, v6, "AVE_Session_HEVC_BeginPass", a1, a2);
    }
  }

  if (a1)
  {
    if (sub_160EF0(0xD8u, 7))
    {
      v8 = sub_160F34(0xD8u);
      v9 = sub_175AE4();
      v10 = sub_160F68(7);
      v11 = *(a1 + 104664);
      v12 = *(a1 + 104668);
      if (v8)
      {
        printf("%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)\n", v9, 216, v10, a2, *(a1 + 104664), v12);
        v13 = sub_175AE4();
        v14 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)", v13, 216, v14, a2, *(a1 + 104664), *(a1 + 104668));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)", v9, 216, v10, a2, *(a1 + 104664), v12);
      }
    }

    if (!*(a1 + 104656))
    {
      if (sub_160EF0(3u, 4))
      {
        v23 = sub_160F34(3u);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassStorage = NULL.\n", v24, 3, v25, "AVE_Session_HEVC_BeginPass", 7095, "pINS->multiPassStorage != __null");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassStorage = NULL.");
      }

      goto LABEL_40;
    }

    v18 = *(a1 + 104664);
    if (v18 != *(a1 + 104668))
    {
      if (sub_160EF0(3u, 4))
      {
        v26 = sub_160F34(3u);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        v29 = *(a1 + 104664);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d\n", v27, 3, v28, "AVE_Session_HEVC_BeginPass", 7096, "pINS->multiPassBeginPassCounter == pINS->multiPassEndPassCounter", *(a1 + 104664), *(a1 + 104668));
          v27 = sub_175AE4();
          sub_160F68(4);
        }

        v41 = *(a1 + 104664);
        v42 = *(a1 + 104668);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d", v27);
      }

      goto LABEL_40;
    }

    if (v18)
    {
      v19 = v18 + 1;
      *(a1 + 104664) = v19;
      if (v19 >= 3)
      {
        if (sub_160EF0(3u, 4))
        {
          v20 = sub_160F34(3u);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: pINS->multiPassBeginPassCounter reached max %d\n", v21, 3, v22, "AVE_Session_HEVC_BeginPass", 7105, "false", *(a1 + 104664));
            v21 = sub_175AE4();
            sub_160F68(4);
          }

          v40 = *(a1 + 104664);
          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pINS->multiPassBeginPassCounter reached max %d", v21);
        }

LABEL_40:
        v30 = 4294966296;
        goto LABEL_41;
      }
    }

    else
    {
      if (*(a1 + 104644) == 30568)
      {
        if (sub_160EF0(3u, 4))
        {
          v31 = sub_160F34(3u);
          v32 = sub_175AE4();
          v33 = sub_160F68(4);
          if (v31)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with SessionStatus == H3H264VideoEncoder_SessionStatus_Run\n", v32, 3, v33, "AVE_Session_HEVC_BeginPass", 7099, "pINS->SessionStatus != AVE_CommonWrapper_SessionStatus_Run");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with SessionStatus == H3H264VideoEncoder_SessionStatus_Run");
        }

        goto LABEL_40;
      }

      *(a1 + 104664) = 1;
    }

    v30 = 0;
    *(a1 + 104672) = a2;
    goto LABEL_41;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v15 = sub_160F34(0xCu);
    v16 = sub_175AE4();
    v17 = sub_160F68(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x\n", v16, 12, v17, "AVE_Session_HEVC_BeginPass", 7090, "pINS != __null", 0, a2);
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
      printf("%lld %d AVE %s: %s Exit %p 0x%x %d\n", v35, 12, v36, "AVE_Session_HEVC_BeginPass", a1, a2, v30);
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

uint64_t sub_FE678(uint64_t a1, int *a2)
{
  if (sub_160EF0(0xCu, 6))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 12, v6, "AVE_Session_HEVC_EndPass", a1, a2);
      v7 = sub_175AE4();
      v101 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v101, "AVE_Session_HEVC_EndPass", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 12, v6, "AVE_Session_HEVC_EndPass", a1, a2);
    }
  }

  if (a1)
  {
    if (sub_160EF0(0xD8u, 7))
    {
      v8 = sub_160F34(0xD8u);
      v9 = sub_175AE4();
      v10 = sub_160F68(7);
      v11 = *(a1 + 104664);
      if (v8)
      {
        printf("%lld %d AVE %s: FIG: ENTER %s. beginPassFlags %d (begin %d end %d)\n", v9, 216, v10, "AVE_Session_HEVC_EndPass", *(a1 + 104672), *(a1 + 104664), *(a1 + 104668));
        v9 = sub_175AE4();
        sub_160F68(7);
        v12 = *(a1 + 104672);
        v102 = *(a1 + 104664);
        v104 = *(a1 + 104668);
      }

      else
      {
        v103 = *(a1 + 104664);
      }

      syslog(3, "%lld %d AVE %s: FIG: ENTER %s. beginPassFlags %d (begin %d end %d)", v9);
    }

    if (*(a1 + 104644) != 30568)
    {
      if (sub_160EF0(3u, 4))
      {
        v27 = sub_160F34(3u);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_EndPass called with SessionStatus != AVE_CommonWrapper_SessionStatus_Run\n", v28, 3, v29, "AVE_Session_HEVC_EndPass", 7142, "pINS->SessionStatus == AVE_CommonWrapper_SessionStatus_Run");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_EndPass called with SessionStatus != AVE_CommonWrapper_SessionStatus_Run");
      }

      goto LABEL_57;
    }

    if (!*(a1 + 104656))
    {
      if (sub_160EF0(3u, 4))
      {
        v30 = sub_160F34(3u);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: called with multiPassStorage = NULL.\n", v31, 3, v32, "AVE_Session_HEVC_EndPass", 7144, "pINS->multiPassStorage != __null");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: called with multiPassStorage = NULL.");
      }

      goto LABEL_57;
    }

    v16 = *(a1 + 104664);
    v17 = *(a1 + 104668);
    if (v16 != v17 + 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v33 = sub_160F34(3u);
        v34 = sub_175AE4();
        v35 = sub_160F68(4);
        v36 = *(a1 + 104664);
        if (v33)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d\n", v34, 3, v35, "AVE_Session_HEVC_EndPass", 7149, "pINS->multiPassBeginPassCounter == (pINS->multiPassEndPassCounter + 1)", *(a1 + 104664), *(a1 + 104668));
          v34 = sub_175AE4();
          v35 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d", v34, 3, v35, "AVE_Session_HEVC_EndPass", 7149, "pINS->multiPassBeginPassCounter == (pINS->multiPassEndPassCounter + 1)", *(a1 + 104664), *(a1 + 104668));
      }

      goto LABEL_57;
    }

    if (v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = *(a1 + 104672) == 1;
    }

    v19 = !v18;
    *(a1 + 104668) = v16;
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
      v23 = *(a1 + 104668);
      v24 = *(a1 + 104648);
      if (v20)
      {
        printf("%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d\n", v21, 216, v22, "AVE_Session_HEVC_EndPass", *(a1 + 104668), v24);
        v25 = sub_175AE4();
        v26 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d", v25, 216, v26, "AVE_Session_HEVC_EndPass", *(a1 + 104668), *(a1 + 104648));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d", v21, 216, v22, "AVE_Session_HEVC_EndPass", *(a1 + 104668), v24);
      }
    }

    sub_1544C0(*(a1 + 104704));
    if (sub_1301D8(*(a1 + 120), *(a1 + 104668)))
    {
      if (sub_160EF0(3u, 4))
      {
        v38 = sub_160F34(3u);
        v39 = sub_175AE4();
        v40 = sub_160F68(4);
        if (v38)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Reset failed.\n", v39, 3, v40, "AVE_Session_HEVC_EndPass", 7186, "err == noErr");
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
      v43 = *(a1 + 104656);
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
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp kVTMultiPassStorageStep_GetFirstTimeStamp failed.\n", v45, 3, v46, "AVE_Session_HEVC_EndPass", 7202, "err == noErr");
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
          printf("%lld %d AVE %s: %s firstTimeInTimeRange value %lld timescale %d flags %d\n", v55, 216, v56, "AVE_Session_HEVC_EndPass", v110.value, v110.timescale, v110.flags);
          v55 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %s firstTimeInTimeRange value %lld timescale %d flags %d", v55);
      }

      v57 = *(a1 + 104656);
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
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStampAndDuration kVTMultiPassStorageStep_GetLastTimeStamp failed.\n", v59, 3, v60, "AVE_Session_HEVC_EndPass", 7218, "err == noErr");
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
          printf("%lld %d AVE %s: %s lastTimeInTimeRange value %lld timescale %d flags %d\n", v62, 216, v63, "AVE_Session_HEVC_EndPass", start.value, start.timescale, start.flags);
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
          printf("%lld %d AVE %s: %s duration value %lld timescale %d flags %d\n", v65, 216, v66, "AVE_Session_HEVC_EndPass", v108.value, v108.timescale, v108.flags);
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
          printf("%lld %d AVE %s: %s modified lastTimeInTimeRange value %lld timescale %d flags %d\n", v68, 216, v69, "AVE_Session_HEVC_EndPass", start.value, start.timescale, start.flags);
          v68 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %s modified lastTimeInTimeRange value %lld timescale %d flags %d", v68);
      }

      if (*(a1 + 104648) <= 1u && !start.flags)
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
            printf("%lld %d AVE %s: %s:%d %s | FIG: firstTimeInTimeRange invalid.\n", v75, 3, v76, "AVE_Session_HEVC_EndPass", 7244, "firstTimeInTimeRange.flags != 0");
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
            printf("%lld %d AVE %s: %s:%d %s | FIG: lastTimeInTimeRange invalid.\n", v78, 3, v79, "AVE_Session_HEVC_EndPass", 7246, "lastTimeInTimeRange.flags != 0");
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
            printf("%lld %d AVE %s: %s:%d %s | FIG: CMTimeRangeCopyAsDictionary failed.\n", v96, 3, v97, "AVE_Session_HEVC_EndPass", 7255, "currentTimeRangeDictionary != __null");
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
              printf("%lld %d AVE %s: %s:%d %s | FIG: VTEncoderSessionSetTimeRangesForNextPass failed.\n", v93, 3, v94, "AVE_Session_HEVC_EndPass", 7289, "err == noErr");
              sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTEncoderSessionSetTimeRangesForNextPass failed.");
          }

          goto LABEL_57;
        }

LABEL_122:
        v37 = 0;
        *(a1 + 104700) = *(a1 + 104648);
        *(a1 + 104648) = 0;
        goto LABEL_58;
      }

      if (sub_160EF0(3u, 4))
      {
        v98 = sub_160F34(3u);
        v99 = sub_175AE4();
        v100 = sub_160F68(4);
        if (v98)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: malloc timeRanges failed.\n", v99, 3, v100, "AVE_Session_HEVC_EndPass", 7267, "timeRanges != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | FIG: CFArrayCreateMutable failed.\n", v52, 3, v53, "AVE_Session_HEVC_EndPass", 7199, "timeRangeArray != __null");
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
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v14, 12, v15, "AVE_Session_HEVC_EndPass", 7132, "pINS != __null", 0, a2);
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
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v48, 12, v49, "AVE_Session_HEVC_EndPass", a1, a2, v37);
      v48 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v48);
  }

  return v37;
}

uint64_t sub_FF9C0()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v245 = v7;
  v246 = v8;
  v10 = v9;
  v12 = v11;
  v247 = v0;
  pixelBuffer = v9;
  v271 = 0;
  v270 = 0;
  v269 = 0;
  v264 = 0uLL;
  v241 = sub_1502C8();
  if (sub_160EF0(0xCu, 7))
  {
    v13 = sub_160F34(0xCu);
    v14 = sub_175AE4();
    v15 = sub_160F68(7);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", v14, 12, v15, "AVE_HEVC_Encode", v247, v12, v10, v245, v246, v6, v4);
      v16 = sub_175AE4();
      v216 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v16, 12, v216, "AVE_HEVC_Encode", v247);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v14, 12, v15, "AVE_HEVC_Encode", v247);
    }
  }

  if ((v2 & 0x80000000) == 0 && v6 && v246 && v245 && v247 && pixelBuffer)
  {
    v17 = (v247 + 104644);
    v18 = sub_175AE4();
    v267 = *v246;
    v268 = v246[2];
    v265 = *v6;
    v266 = v6[2];
    *&v264 = v267;
    DWORD2(v264) = DWORD2(v267);
    sub_1729E0(0, &v264);
    if (sub_160EF0(0x33u, 7))
    {
      v19 = sub_160F34(0x33u);
      v20 = sub_175AE4();
      v21 = sub_160F68(7);
      v22 = *(v247 + 56);
      v23 = *v246;
      v24 = *(v246 + 2);
      v25 = *(v6 + 3);
      if (v19)
      {
        v26 = v12;
        v27 = v2;
        v28 = v26;
        printf("%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld\n", v20, 51, v21, "AVE_HEVC_Encode", 7445, v22, *(v247 + 104648), v23, v24, *(v246 + 3), v246[2], v264, DWORD2(v264), *v6, *(v6 + 2), *(v6 + 3), v6[2]);
        v29 = sub_175AE4();
        v30 = sub_160F68(7);
        v31 = v246[2];
        v32 = *(v246 + 3);
        v33 = *(v6 + 3);
        v235 = v6[2];
        v232 = *v6;
        v233 = *(v6 + 2);
        v34 = v28;
        v2 = v27;
        v12 = v34;
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v29, 51, v30, "AVE_HEVC_Encode", 7445, *(v247 + 56), *(v247 + 104648), *v246, *(v246 + 2));
      }

      else
      {
        v234 = *(v6 + 3);
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v20, &stru_20.segname[11], v21, "AVE_HEVC_Encode", 7445, v22, *(v247 + 104648), v23, v24);
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    *(v247 + 108000) = PixelFormatType;
    if (!*(v247 + 104648))
    {
      v275 = *(v247 + 1440);
      v40 = sub_167CD8(PixelFormatType);
      if (!v40)
      {
        if (sub_160EF0(3u, 4))
        {
          v65 = sub_160F34(3u);
          v66 = sub_175AE4();
          v67 = sub_160F68(4);
          v68 = *(v247 + 56);
          if (v65)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v66, 3, v67, "AVE_HEVC_Encode", 7462, "pPixelFmt != __null", v247, *(v247 + 56), *(v247 + 108000));
            v69 = sub_175AE4();
            v70 = sub_160F68(4);
            v228 = *(v247 + 56);
            v230 = *(v247 + 108000);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v69, 3, v70);
          }

          else
          {
            v229 = *(v247 + 56);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v66, 3, v67);
          }
        }

        goto LABEL_70;
      }

      if (v241[420])
      {
        v41 = v241 + 420;
      }

      else
      {
        v41 = 0;
      }

      if (*(v247 + 104656))
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }

      sub_CC848(*(v247 + 104720), v41, *(v247 + 64), *(v247 + 10772), *(v241 + 103), *(v241 + 104), &v275, v42, *(v40 + 3), *(v40 + 1), *(v247 + 1136));
    }

    sub_CCF60(*(v247 + 104720), *(v247 + 104668), pixelBuffer);
    v43 = *v17;
    if (*v17 == 30566)
    {
      if (sub_15F5D0(pixelBuffer))
      {
        v55 = 1;
      }

      else
      {
        v55 = 2;
      }

      *(v247 + 10804) = v55;
      v56 = sub_10A628(v247);
      if (v56)
      {
        v51 = v56;
        if (sub_160EF0(3u, 4))
        {
          v57 = sub_160F34(3u);
          v58 = sub_175AE4();
          v59 = sub_160F68(4);
          if (v57)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed\n", v58, 3, v59, "AVE_HEVC_Encode", 7571, "err == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed");
        }

        goto LABEL_172;
      }

      sub_102728(v247, pixelBuffer);
      if (sub_1020A4(v247, &pixelBuffer, &v271, &v270, &v269 + 1, &v269, 1))
      {
        if (sub_160EF0(3u, 4))
        {
          v74 = sub_160F34(3u);
          v75 = sub_175AE4();
          v76 = sub_160F68(4);
          if (v74)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.\n", v75, 3, v76, "AVE_HEVC_Encode", 7581, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.");
        }

        goto LABEL_171;
      }

      sub_10298C(v247, *(v247 + 10804) == 2);
      if (*(v247 + 10804) == 2 && (*(v247 + 1120) & 0x10) == 0)
      {
        v85 = *(v247 + 1112);
        if (v85 < 1)
        {
          v85 = 30;
        }

        v86 = vshr_n_u32(vadd_s32(*(v247 + 1440), 0xF0000000FLL), 4uLL);
        v87 = v86.i32[1] * v85 * v86.i32[0];
        if (*(v247 + 76) <= 29)
        {
          v88 = 1944000;
        }

        else
        {
          v88 = 2106000;
        }

        if (v87 >= v88)
        {
          *(v247 + 716) &= 0xFFFFFC3F;
          *(v247 + 11810) = 0;
        }
      }

      if (sub_102AD4(v247))
      {
        if (sub_160EF0(3u, 4))
        {
          v89 = sub_160F34(3u);
          v90 = sub_175AE4();
          v91 = sub_160F68(4);
          if (v89)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v90, 3, v91, "AVE_HEVC_Encode", 7609, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        }

        goto LABEL_171;
      }

      sub_107808(v247, pixelBuffer);
      sub_10A354(v247);
      bzero(v280, 0x8C8uLL);
      v275 = v247 + 672;
      v276 = v247 + 1440;
      v278 = *(v247 + 104712);
      v279 = *(v247 + 104728);
      v277 = v247 + 10752;
      v282 = v247 + 12000;
      v283 = v247 + 24236;
      v285 = v247 + 39844;
      v284 = v247 + 32040;
      v286 = v247 + 49476;
      v287 = v247 + 59112;
      v288 = v247 + 80600;
      memcpy(v289, (v247 + 106112), sizeof(v289));
      v290 = v18;
      if (sub_12A644(*(v247 + 120), &v275, v247 + 128, *(v247 + 16), *(v247 + 112), *(v247 + 104652), *(v247 + 104656), v247 + 160, (v247 + 11772), (v247 + 11464)))
      {
        if (sub_160EF0(3u, 4))
        {
          v92 = sub_160F34(3u);
          v93 = sub_175AE4();
          v94 = sub_160F68(4);
          if (v92)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v93, 3, v94, "AVE_HEVC_Encode", 7637, "err == noErr");
            v95 = sub_175AE4();
            v219 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.", v95, 3, v219, "AVE_HEVC_Encode", 7637, "err == noErr");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.", v93, 3, v94, "AVE_HEVC_Encode", 7637, "err == noErr");
          }
        }

        v51 = 4294966296;
        goto LABEL_172;
      }
    }

    else if (v43 == 30567)
    {
      if (sub_15F5D0(pixelBuffer))
      {
        v52 = 1;
      }

      else
      {
        v52 = 2;
      }

      *(v247 + 10804) = v52;
      sub_102728(v247, pixelBuffer);
      if (sub_1020A4(v247, &pixelBuffer, &v271, &v270, &v269 + 1, &v269, 1))
      {
        if (sub_160EF0(3u, 4))
        {
          v53 = sub_160F34(3u);
          v45 = sub_175AE4();
          v46 = sub_160F68(4);
          if (!v53)
          {
            goto LABEL_69;
          }

          v47 = (v247 + 104644);
          v48 = v2;
          v49 = v12;
          v50 = 7499;
          goto LABEL_43;
        }

LABEL_70:
        v51 = 4294966294;
        goto LABEL_172;
      }

      sub_10298C(v247, *(v247 + 10804) == 2);
      if (sub_102AD4(v247))
      {
        if (sub_160EF0(3u, 4))
        {
          v71 = sub_160F34(3u);
          v72 = sub_175AE4();
          v73 = sub_160F68(4);
          if (v71)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v72, 3, v73, "AVE_HEVC_Encode", 7509, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        }

        goto LABEL_70;
      }

      sub_107808(v247, pixelBuffer);
      sub_10A354(v247);
      if (*(v247 + 10804) == 2 && (*(v247 + 1120) & 0x10) == 0)
      {
        v77 = *(v247 + 1112);
        if (v77 < 1)
        {
          v77 = 30;
        }

        v78 = vshr_n_u32(vadd_s32(*(v247 + 1440), 0xF0000000FLL), 4uLL);
        v79 = v78.i32[1] * v77 * v78.i32[0];
        if (*(v247 + 76) <= 29)
        {
          v80 = 1944000;
        }

        else
        {
          v80 = 2106000;
        }

        if (v79 >= v80)
        {
          *(v247 + 716) &= 0xFFFFFC3F;
          *(v247 + 11810) = 0;
        }
      }

      bzero(v280, 0x8C8uLL);
      v275 = v247 + 672;
      v276 = v247 + 1440;
      v278 = *(v247 + 104712);
      v279 = *(v247 + 104728);
      v277 = v247 + 10752;
      v282 = v247 + 12000;
      v283 = v247 + 24236;
      v285 = v247 + 39844;
      v284 = v247 + 32040;
      v286 = v247 + 49476;
      v287 = v247 + 59112;
      v288 = v247 + 80600;
      memcpy(v289, (v247 + 106112), sizeof(v289));
      v290 = v18;
      if (sub_12A644(*(v247 + 120), &v275, v247 + 128, *(v247 + 16), *(v247 + 112), *(v247 + 104652), *(v247 + 104656), v247 + 160, (v247 + 11772), (v247 + 11464)))
      {
        if (sub_160EF0(3u, 4))
        {
          v81 = sub_160F34(3u);
          v82 = sub_175AE4();
          v83 = sub_160F68(4);
          if (v81)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v82, 3, v83, "AVE_HEVC_Encode", 7556, "err == noErr");
            v84 = sub_175AE4();
            v218 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.", v84, 3, v218, "AVE_HEVC_Encode", 7556, "err == noErr");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.", v82, 3, v83, "AVE_HEVC_Encode", 7556, "err == noErr");
          }
        }

        v51 = 4294966296;
        goto LABEL_172;
      }
    }

    else
    {
      if (v43 != 30568)
      {
        if (sub_160EF0(3u, 4))
        {
          v60 = sub_160F34(3u);
          v61 = sub_175AE4();
          v62 = sub_160F68(4);
          v63 = *v17;
          if (v60)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.\n", v61, 3, v62, "AVE_HEVC_Encode", 7644, "false", *v17);
            v64 = sub_175AE4();
            sub_160F68(4);
            v225 = *v17;
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.", v64);
          }

          else
          {
            v226 = *v17;
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.", v61);
          }
        }

        goto LABEL_171;
      }

      if (sub_1020A4(v247, &pixelBuffer, &v271, &v270, &v269 + 1, &v269, 0))
      {
        if (sub_160EF0(3u, 4))
        {
          v44 = sub_160F34(3u);
          v45 = sub_175AE4();
          v46 = sub_160F68(4);
          if (!v44)
          {
LABEL_69:
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.");
            goto LABEL_70;
          }

          v47 = (v247 + 104644);
          v48 = v2;
          v49 = v12;
          v50 = 7482;
LABEL_43:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.\n", v45, 3, v46, "AVE_HEVC_Encode", v50, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
          v54 = v49;
          v2 = v48;
          v17 = v47;
          v12 = v54;
          goto LABEL_69;
        }

        goto LABEL_70;
      }
    }

    *v17 = 30568;
    bzero(v274, 0x1738uLL);
    v248 = 0;
    v254 = 0u;
    v255 = 0u;
    v256 = 0u;
    v257 = 0u;
    memset(v258, 0, sizeof(v258));
    v259 = 0u;
    memset(v260, 0, sizeof(v260));
    v261 = 0u;
    v262 = 0u;
    v263 = 0u;
    v249 = 0u;
    v250 = 0u;
    memset(v251, 0, sizeof(v251));
    v252 = 0u;
    v253 = 0;
    bzero(&v275, 0x4A40uLL);
    v281[0] = -1;
    v240 = v12;
    if (v4)
    {
      Value = CFDictionaryGetValue(v4, @"ResetRCState");
      if (*(v247 + 76) == 27 && (*(v247 + 716) & 0x3C0) == 0)
      {
        v97 = CFDictionaryGetValue(v4, kVTEncodeFrameOptionKey_ReducedResolutionSourceFrame);
        if (v97 && sub_160EF0(0x10u, 6))
        {
          v238 = sub_160F34(0x10u);
          v242 = sub_175AE4();
          v113 = sub_160F68(6);
          if (v238)
          {
            printf("%lld %d AVE %s: FIG: %p: use scaled source for LRME, %p\n", v242, 16, v113, *(v247 + 16), v97);
            v242 = sub_175AE4();
            v113 = sub_160F68(6);
          }

          syslog(3, "%lld %d AVE %s: FIG: %p: use scaled source for LRME, %p", v242, 16, v113, *(v247 + 16), v97);
        }
      }

      else
      {
        v97 = 0;
      }

      if (Value && CFEqual(Value, kCFBooleanTrue))
      {
        v18 = sub_175AE4();
        v248 = v18;
        sub_12D170(*(v247 + 120), &v248);
      }
    }

    else
    {
      v97 = 0;
    }

    *&v258[1] = v267;
    v259 = v265;
    v98 = pixelBuffer;
    *&v254 = v240;
    *(&v254 + 1) = pixelBuffer;
    *&v255 = v97;
    v258[3] = v268;
    DWORD2(v262) = *(v247 + 104668);
    *&v260[1] = v264;
    *(&v261 + 1) = v274;
    *&v262 = v18;
    v260[0] = v266;
    *&v261 = &v275;
    if (*(v247 + 10804) != 2)
    {
      v103 = vshr_n_u32(vadd_s32(*(v247 + 1440), 0x1F0000001FLL), 5uLL);
      v104 = vmul_lane_s32(v103, v103, 1).u32[0];
      if (v104 >> 5 < 0xFF)
      {
        if (v104 < 0x7F8)
        {
          v105 = 0.39;
        }

        else
        {
          v105 = 0.58;
        }
      }

      else
      {
        v105 = 1.0;
      }

      v251[1].f64[1] = v105;
      DWORD2(v252) = 127;
      goto LABEL_130;
    }

    if (!v2)
    {
      sub_1556B4(*(v247 + 104704), &v264);
      v98 = pixelBuffer;
    }

    sub_15F768(v98, &v249);
    sub_CD91C(*(v247 + 104720), *(v247 + 104668), *(v247 + 104648), &v249);
    if (*(v247 + 76) < 17 || (*(v247 + 716) & 0x3C0) == 0)
    {
LABEL_130:
      v260[3] = &v249;
      v12 = v240;
      if ((*(v247 + 1337) & 2) != 0 && *(v247 + 76) >= 4 && (*(v247 + 1112) - 1) <= 0x3B)
      {
        v106 = v247 + 104784;
        if (sub_133F6C(v4, (v247 + 104784 + 648 * *(v247 + 106080))))
        {
          if (*(v247 + 1112) == 60)
          {
            v112 = *(v247 + 106084);
            if (v112 != -1 && v112 + 1 == *(v247 + 104648))
            {
              memcpy((*(&v261 + 1) + 152), (v106 + 648 * (*(v247 + 106080) == 0)), 0x288uLL);
            }
          }
        }

        else
        {
          memset(v273, 0, sizeof(v273));
          __dst = *(v247 + 104648);
          v221 = *(v106 + 648 * *(v247 + 106080));
          sub_172100(v273, 32, "%llu %d %d", v107, v108, v109, v110, v111, *(v247 + 56));
          sub_133ED0((v106 + 648 * *(v247 + 106080)), 47, 6, v273, 0, v114, v115, v116);
          memcpy((*(&v261 + 1) + 152), (v106 + 648 * *(v247 + 106080)), 0x288uLL);
          if (*(v247 + 1112) == 60)
          {
            *(v247 + 106080) = *(v247 + 106080) == 0;
            *(v247 + 106084) = *(v247 + 104648);
          }

          v12 = v240;
        }
      }

      v117 = CMGetAttachment(pixelBuffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
      if (v117)
      {
        sub_1C324(*(v247 + 104736), *(v247 + 104648), v117);
      }

      sub_207A4(*(v247 + 104736), *(v247 + 104648));
      sub_20464(*(v247 + 104736), *(v247 + 104648), *(v247 + 56));
      sub_1D808(*(v247 + 104736), *(v247 + 104648), *(v260[3] + 16));
      sub_1DC50(*(v247 + 104736), *(v247 + 104648), *v260[3]);
      sub_1CE6C(*(v247 + 104736), *(v247 + 104648), *(v260[3] + 68));
      sub_1F124(*(v247 + 104736), *(v247 + 104648), *(v246 + 2), *v246);
      DWORD2(v263) = *(v247 + 104648);
      HIDWORD(v263) = v2;
      v118 = sub_10C92C(v247, v4, v274, &v275, &v254);
      if (!*(v247 + 11476))
      {
        sub_10E85C(v247, v274, &v275, *v260[3]);
      }

      *(*(&v261 + 1) + 936) = *(*(&v261 + 1) + 936) & 0xFFFFF9FF | ((*(*(&v261 + 1) + 152) > 0) << 9) | ((*(*(&v261 + 1) + 800) > 0) << 10);
      if (*(v247 + 104668) && *(v247 + 104656) && sub_10EF18(v247, &v267))
      {
        if (sub_160EF0(3u, 4))
        {
          v119 = sub_160F34(3u);
          v120 = sub_175AE4();
          v121 = sub_160F68(4);
          if (v119)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_MultipassDataFetch failed.\n", v120, 3, v121, "AVE_HEVC_Encode", 8079, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_MultipassDataFetch failed.");
        }
      }

      else
      {
        DWORD2(v263) = *(v247 + 104648);
        HIDWORD(v263) = v2;
        if (v270)
        {
          v122 = pixelBuffer;
        }

        else
        {
          v122 = 0;
        }

        *(&v257 + 1) = v122;
        v123 = sub_12D95C(*(v247 + 120), &v254);
        if (!v123)
        {
          v51 = v118;
          goto LABEL_172;
        }

        if (v123 == -536870173)
        {
          v51 = v118;
          if (sub_160EF0(0x10u, 5))
          {
            v124 = sub_160F34(0x10u);
            v125 = sub_175AE4();
            v126 = sub_160F68(5);
            if (v124)
            {
              printf("%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame\n", v125, 16, v126);
              sub_175AE4();
              sub_160F68(5);
              v51 = v118;
            }

            syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame");
          }

          goto LABEL_172;
        }

        if (sub_160EF0(3u, 4))
        {
          v127 = sub_160F34(3u);
          v128 = sub_175AE4();
          v129 = sub_160F68(4);
          if (v127)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.\n", v128, 3, v129, "AVE_HEVC_Encode", 8102, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.");
        }
      }

LABEL_171:
      v51 = 4294966296;
LABEL_172:
      if (v271 == 1 && pixelBuffer)
      {
        CVPixelBufferRelease(pixelBuffer);
      }

      ++v17[1];
      goto LABEL_176;
    }

    if (*(&v252 + 1) == 0x1FFFFFFFFLL && sub_160EF0(0x10u, 5))
    {
      v99 = sub_160F34(0x10u);
      v100 = sub_175AE4();
      v101 = sub_160F68(5);
      if (v99)
      {
        printf("%lld %d AVE %s: FIG: MCTF Ban0Modulation Enabled, but Band0Strength is missing!\n", v100, 16, v101);
        v102 = sub_175AE4();
        v220 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: MCTF Ban0Modulation Enabled, but Band0Strength is missing!", v102, 16, v220);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: MCTF Ban0Modulation Enabled, but Band0Strength is missing!", v100, 16, v101);
      }
    }

    if (v251[0].f64[1] != 0.0 && *(&v250 + 1) != 0.0 && v251[0].f64[0] != 0.0)
    {
      v136 = sub_1502C8();
      v137 = v136[133];
      if (v137 > 0.0)
      {
        v138 = v136[134];
        if (v138 > 0.0)
        {
          v139 = vdupq_lane_s64(0x4170000000000000, 0);
          v139.f64[0] = *(&v250 + 1);
          v140 = vmulq_f64(*(v251 + 8), v139);
          v141 = v251[0].f64[0] * v140.f64[0] / v140.f64[1];
          if (v141 <= v137)
          {
            v148 = sub_160EF0(0x10u, 8);
            if (v141 >= v138)
            {
              if (v148)
              {
                v155 = sub_160F34(0x10u);
                v243 = sub_175AE4();
                v156 = sub_160F68(8);
                v157 = *(v247 + 108008 + 4 * v2);
                v158 = ((v141 - v141) * 1000.0);
                if (v158 >= 0)
                {
                  v159 = ((v141 - v141) * 1000.0);
                }

                else
                {
                  v159 = -v158;
                }

                if (v155)
                {
                  printf("%lld %d AVE %s: MCTF with %d refs no change. overallgain: %d.%03d\n", v243, 16, v156, v157, v141, v159);
                  v160 = sub_175AE4();
                  v161 = sub_160F68(8);
                  syslog(3, "%lld %d AVE %s: MCTF with %d refs no change. overallgain: %d.%03d", v160, 16, v161, *(v247 + 108008 + 4 * v2), v141, v159);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: MCTF with %d refs no change. overallgain: %d.%03d", v243, 16, v156, v157, v141, v159);
                }
              }
            }

            else
            {
              if (v148)
              {
                v149 = sub_160F34(0x10u);
                v150 = sub_175AE4();
                v151 = sub_160F68(8);
                v152 = ((v141 - v141) * 1000.0);
                if (v152 >= 0)
                {
                  v153 = ((v141 - v141) * 1000.0);
                }

                else
                {
                  v153 = -v152;
                }

                if (v149)
                {
                  printf("%lld %d AVE %s: MCTF with 1refs. overallgain: %d.%03d\n", v150, 16, v151, v141, v153);
                  v154 = sub_175AE4();
                  v223 = sub_160F68(8);
                  syslog(3, "%lld %d AVE %s: MCTF with 1refs. overallgain: %d.%03d", v154, 16, v223, v141, v153);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: MCTF with 1refs. overallgain: %d.%03d", v150, 16, v151, v141, v153);
                }
              }

              *(v247 + 4 * v2 + 108008) = 0;
            }
          }

          else
          {
            if (sub_160EF0(0x10u, 8))
            {
              v142 = sub_160F34(0x10u);
              v143 = sub_175AE4();
              v144 = sub_160F68(8);
              v145 = ((v141 - v141) * 1000.0);
              if (v145 >= 0)
              {
                v146 = ((v141 - v141) * 1000.0);
              }

              else
              {
                v146 = -v145;
              }

              if (v142)
              {
                printf("%lld %d AVE %s: MCTF with 2refs. overallgain: %d.%03d\n", v143, 16, v144, v141, v146);
                v147 = sub_175AE4();
                v222 = sub_160F68(8);
                syslog(3, "%lld %d AVE %s: MCTF with 2refs. overallgain: %d.%03d", v147, 16, v222, v141, v146);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: MCTF with 2refs. overallgain: %d.%03d", v143, 16, v144, v141, v146);
              }
            }

            *(v247 + 4 * v2 + 108008) = 1;
          }
        }
      }
    }

    v162 = *(v247 + 76);
    if ((HIDWORD(v252) + 1) >= 2 && DWORD2(v252) != -1)
    {
      if (v162 >= 30 && SDWORD2(v252) >= 255)
      {
        if (sub_160EF0(0x10u, 5))
        {
          v163 = sub_160F34(0x10u);
          v164 = sub_175AE4();
          v165 = sub_160F68(5);
          if (v163)
          {
            printf("%lld %d AVE %s: FIG:Unexpected MCTF DynSwitchOff detected: Band0ModEnabled:%d and Band0Strength:%d. Forcing MCTF On\n", v164, 16, v165, HIDWORD(v252), DWORD2(v252));
            v166 = sub_175AE4();
            v167 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: FIG:Unexpected MCTF DynSwitchOff detected: Band0ModEnabled:%d and Band0Strength:%d. Forcing MCTF On", v166, 16, v167, HIDWORD(v252), DWORD2(v252));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG:Unexpected MCTF DynSwitchOff detected: Band0ModEnabled:%d and Band0Strength:%d. Forcing MCTF On", v164, 16, v165, HIDWORD(v252), DWORD2(v252));
          }
        }

        DWORD2(v252) = 127;
      }

      goto LABEL_268;
    }

    if (v162 >= 30)
    {
      DWORD2(v252) = 127;
      *(v247 + v2 + 108004) = 1;
      goto LABEL_268;
    }

    v168 = v247 + 108004;
    v169 = *(v247 + 108004 + v2);
    if (v251[0].f64[1] == 0.0 || *(&v250 + 1) == 0.0 || v251[0].f64[0] == 0.0)
    {
      if (sub_160EF0(0x10u, 7))
      {
        v180 = sub_160F34(0x10u);
        v181 = sub_175AE4();
        v182 = sub_160F68(7);
        v183 = *(v247 + 104648);
        if (v180)
        {
          printf("%lld %d AVE %s: FIG: F %d ISP meta data is missing!\n", v181, 16, v182, v183);
          v184 = sub_175AE4();
          v224 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: FIG: F %d ISP meta data is missing!", v184, 16, v224, *(v247 + 104648));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: F %d ISP meta data is missing!", v181, 16, v182, v183);
        }
      }

      DWORD2(v252) = 255;
      if ((*(v168 + v2) & 1) == 0)
      {
LABEL_268:
        if (*(v247 + 1112) < 1 || !HIDWORD(v252) || SDWORD2(v252) > 254)
        {
          goto LABEL_130;
        }

        v198 = *(v247 + 1440);
        v199 = *(v247 + 1444);
        v200 = sub_155D40(*(v247 + 104704));
        v201 = ((v199 + 31) >> 5) * ((v198 + 31) >> 5) * v200;
        if (*(v247 + 76) <= 29)
        {
          v202 = 285600;
        }

        else
        {
          v202 = 530400;
        }

        if ((*(v247 + 1120) & 0x10) != 0)
        {
          if (v202 * 1.5 >= v201)
          {
LABEL_282:
            if ((*(v247 + 1451) & 2) != 0)
            {
              v208 = *(v247 + 10556) < 2u ? 2 : 3;
              v209 = v247 + 4 * v2;
              sub_D9E84(&v249, *(v247 + 76), v208, (v209 + 108032), v281);
              if (sub_160EF0(0x10u, 8))
              {
                v210 = sub_160F34(0x10u);
                v211 = sub_175AE4();
                v212 = sub_160F68(8);
                if (v210)
                {
                  printf("%lld %d AVE %s: %s:%d %p %lld PerFrameData.iDynamicStrength %d rangeIdx[%d] %d\n", v211, 16, v212, "AVE_HEVC_Encode", 7944, v247, *(v247 + 56), v281[0], v2, *(v209 + 108032));
                  v213 = sub_175AE4();
                  v214 = sub_160F68(8);
                  v231 = *(v209 + 108032);
                  v227 = *(v247 + 56);
                  syslog(3, "%lld %d AVE %s: %s:%d %p %lld PerFrameData.iDynamicStrength %d rangeIdx[%d] %d", v213, 16, v214);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %p %lld PerFrameData.iDynamicStrength %d rangeIdx[%d] %d", v211, 16, v212);
                }
              }
            }

            goto LABEL_130;
          }
        }

        else if (v201 <= v202)
        {
          goto LABEL_282;
        }

        if (sub_160EF0(0x10u, 5))
        {
          v203 = sub_160F34(0x10u);
          v204 = sub_175AE4();
          v205 = sub_160F68(5);
          if (v203)
          {
            printf("%lld %d AVE %s: FIG: MCTF unsupported fps %d for %dx%d. VFR %d. Band0Mod %d, %d\n", v204, 16, v205, v200, v198, v199, (*(v247 + 1120) >> 4) & 1, HIDWORD(v252), DWORD2(v252));
            v206 = sub_175AE4();
            sub_160F68(5);
            v207 = (*(v247 + 1120) >> 4) & 1;
            syslog(3, "%lld %d AVE %s: FIG: MCTF unsupported fps %d for %dx%d. VFR %d. Band0Mod %d, %d", v206, 16);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: MCTF unsupported fps %d for %dx%d. VFR %d. Band0Mod %d, %d", v204, 16);
          }
        }

        goto LABEL_282;
      }
    }

    else
    {
      v170 = sub_1502C8();
      v171 = vdupq_lane_s64(0x4170000000000000, 0);
      v171.f64[0] = *(&v250 + 1);
      v172 = vmulq_f64(*(v251 + 8), v171);
      v173 = v251[0].f64[0] * v172.f64[0] / v172.f64[1];
      if (*(v247 + 10556) < 2u)
      {
        v174 = 2;
      }

      else
      {
        v174 = 3;
      }

      v175 = sub_D9988(v252, *(v247 + 76), v174);
      v176 = 32.0;
      if (v175)
      {
        v176 = 0.1;
      }

      if (v170[132] > 0.0)
      {
        v176 = v170[132];
      }

      if (v173 >= v176)
      {
        DWORD2(v252) = 127;
        *(v168 + v2) = 1;
      }

      else
      {
        v177 = 24.0;
        if (v175)
        {
          v177 = 0.0;
        }

        v178 = *(v168 + v2) & (v173 >= v177);
        if ((*(v168 + v2) & (v173 >= v177)) != 0)
        {
          v179 = 127;
        }

        else
        {
          v179 = 255;
        }

        DWORD2(v252) = v179;
        *(v168 + v2) = v178;
        if (v178 != 1)
        {
          goto LABEL_268;
        }
      }
    }

    v185 = *(v247 + 1440);
    v186 = sub_1502C8();
    if ((*(v247 + 1120) & 0x10) != 0)
    {
      v187 = sub_155D48(*(v247 + 104704));
    }

    else
    {
      v187 = *(v247 + 1112);
    }

    if (v169)
    {
      v188 = v186[270];
      v189 = v188 <= 0;
      v190 = 285600;
    }

    else
    {
      v188 = v186[271];
      v189 = v188 <= 0;
      v190 = 244800;
    }

    if (v189)
    {
      v191 = v190;
    }

    else
    {
      v191 = v188;
    }

    v192 = vshr_n_u32(vadd_s32(v185, 0x1F0000001FLL), 5uLL);
    v193 = vmul_lane_s32(v192, v192, 1).u32[0] * v187;
    if (v193 > v191)
    {
      DWORD2(v252) = 255;
      *(v168 + v2) = 0;
    }

    if (sub_160EF0(0x10u, 8))
    {
      v194 = sub_160F34(0x10u);
      v244 = sub_175AE4();
      v195 = sub_160F68(8);
      if (*(v168 + v2))
      {
        v196 = "Enable ";
      }

      else
      {
        v196 = "Disable";
      }

      v237 = v196;
      v239 = v195;
      v236 = sub_155D64(*(v247 + 104704));
      v197 = sub_155D40(*(v247 + 104704));
      if (v194)
      {
        printf("%lld %d AVE %s: %s MCTF. frameRate: %d cnt %d (%.2f), pixel rate %d threshold %d (prev set: %d)\n", v244, 16, v239, v237, v187, v236, v197, v193, v191, v169);
        v244 = sub_175AE4();
        sub_160F68(8);
        *(v168 + v2);
        sub_155D64(*(v247 + 104704));
        sub_155D40(*(v247 + 104704));
      }

      syslog(3, "%lld %d AVE %s: %s MCTF. frameRate: %d cnt %d (%.2f), pixel rate %d threshold %d (prev set: %d)", v244, 16);
    }

    goto LABEL_268;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v35 = sub_160F34(0xCu);
    v36 = sub_175AE4();
    v37 = sub_160F68(4);
    if (v35)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p %d\n", v36, 12, v37, "AVE_HEVC_Encode", 7430, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null && idx >= 0", v247, v12, pixelBuffer, v245, v246, v6, v4, v2);
      v38 = sub_175AE4();
      v217 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p %d", v38, 12, v217, "AVE_HEVC_Encode", 7430, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null && idx >= 0", v247, v12);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p %d", v36, 12, v37, "AVE_HEVC_Encode", 7430, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null && idx >= 0", v247, v12);
    }
  }

  v51 = 4294966295;
LABEL_176:
  if (sub_160EF0(0xCu, 7))
  {
    v130 = sub_160F34(0xCu);
    v131 = sub_175AE4();
    v132 = sub_160F68(7);
    if (v130)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d %d\n", v131, 12, v132, "AVE_HEVC_Encode", v247, v12, pixelBuffer, v245, v246, v6, v4, v2, v51);
      v133 = sub_175AE4();
      v134 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d %d", v133, 12, v134, "AVE_HEVC_Encode", v247, v12);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d %d", v131, 12, v132, "AVE_HEVC_Encode", v247, v12);
    }
  }

  return v51;
}

uint64_t sub_1020A4(uint64_t a1, CVPixelBufferRef *a2, _BYTE *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, int a7)
{
  v68 = 0;
  v14 = (a1 + 104628);
  v15 = a1 + 24306;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  HIDWORD(v62) = PixelFormatType;
  v17 = v14[365];
  if (!v17)
  {
    v17 = *(a1 + 1440);
  }

  v54 = v17;
  v18 = v14[366];
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
  if (*(v15 + 406) == 1)
  {
    v61 = *(v15 + 410);
  }

  if (v14[5] && *(a1 + 11972) != PixelFormatType)
  {
    v21 = *(a1 + 56);
    kdebug_trace();
    v22 = sub_DDF24(&v54, a2, (a1 + 104776), *(a1 + 11972));
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
          printf("%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.\n", v27, 3, v28, "AVE_HEVC_VerifyImageBuffer", 4833, "err == noErr", *a2, HIDWORD(v62), *(a1 + 11972), v22);
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

  v22 = sub_DCDC0(&v54, a2, (a1 + 104768));
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
    *(a1 + 10522) = BYTE1(v68);
LABEL_21:
    v33 = BYTE2(v68);
    goto LABEL_22;
  }

  *(a1 + 10522) = BYTE1(v68);
  if (v54 == *(a1 + 1440) && v55 == *(a1 + 1444))
  {
    goto LABEL_21;
  }

  v33 = 1;
LABEL_22:
  *(a1 + 10850) = v33;
  v34 = DWORD1(v64);
  *(a1 + 10204) = (DWORD1(v64) & 0xFFFFFFFE) == 2;
  if (v34 == 3)
  {
    *(a1 + 10529) = BYTE12(v64);
  }

  if (v59 == 2)
  {
    *(a1 + 10864) = DWORD2(v66);
    *(a1 + 10868) = *(&v65 + 1);
    *(a1 + 10876) = vuzp2q_s32(vextq_s8(v67, v67, 4uLL), v67);
  }

  if (a7)
  {
    v35 = HIDWORD(v62);
    *(a1 + 10768) = HIDWORD(v62);
    if (*(a1 + 10752) != 2 && !v14[5])
    {
      v43 = *(v15 + 426) + 8;
      if (v43 <= *(v15 + 430) + 8)
      {
        v43 = *(v15 + 430) + 8;
      }

      v44 = sub_DDADC(*(a1 + 68), *(a1 + 64), *(a1 + 716), 2, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v43, *v14, v35, *(a1 + 16));
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
            printf("%lld %d AVE %s: %s:%d fail to update pixel buffer dictionary %p %lld %d %d\n", v47, 30, v48, "AVE_HEVC_VerifyImageBuffer", 4903, a1, *(a1 + 56), 0, v45);
            v47 = sub_175AE4();
            sub_160F68(5);
            v49 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d fail to update pixel buffer dictionary %p %lld %d %d", v47, 30);
        }
      }
    }

    v36 = DWORD2(v63);
    v37 = v63;
    *(v15 + 382) = DWORD2(v63);
    *(a1 + 10188) = v36;
    *(a1 + 10192) = v37;
    *(a1 + 10171) = DWORD1(v64) != 1;
    *(a1 + 10781) = 1;
    if (v37 == 10)
    {
      *(a1 + 12070) = 0;
      *v15 = 0;
    }

    if (v36 == 2)
    {
      *(a1 + 12071) = 1;
      *(v15 + 1) = 1;
    }

    else if (v36 == 3)
    {
      *(a1 + 12071) = 0;
      *(v15 + 1) = 0;
      if (*(a1 + 10892) == 37)
      {
        *(a1 + 10856) = 1;
        *(a1 + 1088) &= ~2uLL;
      }
    }
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
          printf("%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x\n", v39, 12, v40, "AVE_HEVC_VerifyImageBuffer", 4956, "false", *(a1 + 56), v14[5], *(a1 + 11972), HIDWORD(v62));
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

void sub_102728(uint64_t a1, __CVBuffer *a2)
{
  v4 = a1 + 23948;
  if (sub_160EF0(0xCu, 7))
  {
    v5 = sub_160F34(0xCu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams\n", v6, 12, v7);
      v8 = sub_175AE4();
      v28 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams", v8, 12, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams", v6, 12, v7);
    }
  }

  if (*(v4 + 764))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
    v10 = sub_167CD8(PixelFormatType);
    if (v10)
    {
      v11 = *(v10 + 3);
      *(v4 + 740) = v11;
    }

    else
    {
      v11 = *(v4 + 740);
    }

    v13 = v11 != 3 && v11 != 0;
    v14 = v11 == 1;
    v15 = *(v4 + 776);
    if (v15)
    {
      if (v11 == 1)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      v17 = ((v15 + v16 - 1) & ~v14) >> v14;
      *(v4 + 776) = v17;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v4 + 780);
    if (v18)
    {
      v19 = ((v18 + v14) & ~v14) >> v14;
      *(v4 + 780) = v19;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(v4 + 768);
    if (v20)
    {
      v20 = ((v20 + v13) & ~v13) >> v13;
      *(v4 + 768) = v20;
    }

    v21 = *(v4 + 772);
    if (v21)
    {
      v22 = ((v21 + v13) & ~v13) >> v13;
      *(v4 + 772) = v22;
    }

    else
    {
      v22 = 0;
    }

    if (*(a1 + 10896) || *(a1 + 10556) >= 2u)
    {
      *v4 = *(v4 + 764);
      *(v4 + 12) = v17;
      *(v4 + 16) = v19;
      *(v4 + 4) = v20;
      *(v4 + 8) = v22;
    }

    if (sub_160EF0(0x10u, 7))
    {
      v23 = sub_160F34(0x10u);
      v24 = sub_175AE4();
      v25 = sub_160F68(7);
      v26 = *(v4 + 768);
      if (v23)
      {
        printf("%lld %d AVE %s: FIG: conf_win_top_offset = %d conf_win_bottom_offset %d conf_win_left_offset = %d conf_win_right_offset %d\n", v24, 16, v25, *(v4 + 776), *(v4 + 780), *(v4 + 768), *(v4 + 772));
        v24 = sub_175AE4();
        sub_160F68(7);
        v27 = *(v4 + 776);
        v30 = *(v4 + 768);
        v32 = *(v4 + 772);
        v29 = *(v4 + 780);
      }

      else
      {
        v31 = *(v4 + 768);
      }

      syslog(3, "%lld %d AVE %s: FIG: conf_win_top_offset = %d conf_win_bottom_offset %d conf_win_left_offset = %d conf_win_right_offset %d", v24);
    }
  }
}

double sub_10298C(uint64_t a1, int a2)
{
  if (sub_160EF0(0xCu, 7))
  {
    v5 = sub_160F34(0xCu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame\n", v6, 12, v7);
      v8 = sub_175AE4();
      v12 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame", v8, 12, v12);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame", v6, 12, v7);
    }
  }

  v9 = *(a1 + 10892);
  v11 = v9 <= 0x25 && ((1 << v9) & 0x2000100002) != 0 || v9 == 10000;
  if (!v11 && *(a1 + 692) == 1 && a2 && *(a1 + 10752) != 2 && *(a1 + 10847) == 1)
  {
    *(a1 + 12000) = 0;
    *(a1 + 24684) = 0;
    *(a1 + 10208) = 0x100000000;
    *(a1 + 10244) = 2;
    *&result = 0x900000001;
    *(a1 + 10808) = 0x900000001;
    *(a1 + 24856) = 1;
  }

  return result;
}

uint64_t sub_102AD4(uint64_t a1)
{
  v2 = a1 + 104628;
  v3 = sub_1502C8();
  v558 = 0;
  v557 = 0.0;
  if (sub_160EF0(0xCu, 7))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters\n", v5, 12, v6);
      v7 = sub_175AE4();
      v463 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters", v7, 12, v463);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters", v5, 12, v6);
    }
  }

  v8 = *(v2 + 1756);
  if (v8 >= 0.0 && sub_FB84C(a1, v8) && sub_160EF0(0x10u, 5))
  {
    v9 = sub_160F34(0x10u);
    v10 = sub_175AE4();
    v11 = sub_160F68(5);
    if (v9)
    {
      printf("%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]\n", v10, 16, v11);
      v12 = sub_175AE4();
      v464 = sub_160F68(5);
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]", v12, 16, v464);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]", v10, 16, v11);
    }
  }

  v13 = *(v2 + 1748);
  if (v13 >= 0.0 && sub_FB584(a1, v13) && sub_160EF0(0x10u, 5))
  {
    v14 = sub_160F34(0x10u);
    v15 = sub_175AE4();
    v16 = sub_160F68(5);
    if (v14)
    {
      printf("%lld %d AVE %s: kVTCompressionPropertyKey_Quality property supports values only                          in the range of [0,1]\n", v15, 16, v16);
      v17 = sub_175AE4();
      v465 = sub_160F68(5);
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_Quality property supports values only                          in the range of [0,1]", v17, 16, v465);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_Quality property supports values only                          in the range of [0,1]", v15, 16, v16);
    }
  }

  if ((*(a1 + 1132) & 0xFFFFFFFE) == 6)
  {
    v18 = sub_16D34C(*(v3 + 206), *(v2 + 1728), &v558);
    if (v18)
    {
      v19 = v18;
      if (sub_160EF0(0x10u, 4))
      {
        v20 = sub_160F34(0x10u);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(v3 + 206);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d\n", v21, 16, v22, "AVE_ValidateEncoderParameters", 3088, "ret == 0", a1, *(a1 + 56), *(v3 + 206), *(v2 + 1728));
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v24 = *(a1 + 56);
          v536 = *(v3 + 206);
          v542 = *(v2 + 1728);
        }

        else
        {
          v539 = *(v3 + 206);
          v545 = *(v2 + 1728);
          v530 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d", v21, 16, v22);
      }

      return v19;
    }

    *(a1 + 1208) = v558;
  }

  v25 = (v2 + 3060);
  v26 = (v2 + 1732);
  v27 = sub_16D7F4(*(a1 + 1120), &v557, v3[104], *(v2 + 3060), *(v2 + 1732));
  if (v27)
  {
    v19 = v27;
    if (sub_160EF0(0x10u, 4))
    {
      v28 = sub_160F34(0x10u);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      v31 = *(a1 + 1120);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %f %f %f 0x%llx\n", v29, 16, v30, "AVE_ValidateEncoderParameters", 3099, "ret == 0", a1, *(a1 + 56), v3[104], *v25, *v26, *(a1 + 1120));
        v29 = sub_175AE4();
        v30 = sub_160F68(4);
        v32 = *v25;
      }

      v549 = *(a1 + 1120);
      v543 = *v25;
      v547 = *v26;
      v537 = *(v3 + 104);
      v528 = *(a1 + 56);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %f %f %f 0x%llx", v29, 16, v30);
    }

    return v19;
  }

  v33 = v557;
  *(a1 + 1216) = v557;
  v34 = (v2 + 3068);
  v35 = (v2 + 1740);
  v36 = sub_16DDF4(*(a1 + 1120), &v557, v3[105], *(v2 + 3068), *(v2 + 1740), v33);
  if (v36)
  {
    v19 = v36;
    if (sub_160EF0(0x10u, 4))
    {
      v37 = sub_160F34(0x10u);
      v38 = sub_175AE4();
      v39 = sub_160F68(4);
      v40 = *(a1 + 1120);
      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx\n", v38, 16, v39, "AVE_ValidateEncoderParameters", 3112, "ret == 0", a1, *(a1 + 56), v3[105], *v34, *v35, *(a1 + 1216), *(a1 + 1120));
        v38 = sub_175AE4();
        v39 = sub_160F68(4);
        v41 = *(v3 + 105);
        v42 = *v35;
      }

      v551 = *(a1 + 1120);
      v548 = *v35;
      v550 = *(a1 + 1216);
      v538 = *(v3 + 105);
      v544 = *v34;
      v529 = *(a1 + 56);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx", v38, 16, v39);
    }

    return v19;
  }

  v43 = (a1 + 10168);
  *(a1 + 1224) = v557;
  if (*(v2 + 1984) <= 0 && *(a1 + 11460) >= *(a1 + 1112))
  {
    *(a1 + 11460) = 0;
    *(a1 + 1288) = 1;
  }

  v44 = *(a1 + 76);
  if (v44 >= 30)
  {
    if (*(a1 + 10248) == 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v45 = sub_160F34(3u);
        v46 = sub_175AE4();
        v47 = sub_160F68(4);
        if (v45)
        {
          printf("%lld %d AVE %s: %s:%d %s | current SoC doesn't support SliceEncodingMode. Fail.\n", v46, 3, v47, "AVE_ValidateEncoderParameters", 3129, "!pINS->VideoParams.bSliceEncodingMode");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | current SoC doesn't support SliceEncodingMode. Fail.");
      }

      return 4294966295;
    }

    if ((*(a1 + 1336) & 0x40) == 0 || (*(a1 + 1464) & 0x8000030) == 0)
    {
LABEL_55:
      if (*(a1 + 10752) != 2 && !*(v2 + 28) && *(v2 + 1772))
      {
        goto LABEL_62;
      }

      goto LABEL_57;
    }

    if (sub_160EF0(0x10u, 5))
    {
      v49 = sub_160F34(0x10u);
      v50 = sub_175AE4();
      v51 = sub_160F68(5);
      v52 = *(a1 + 1464);
      if (v49)
      {
        printf("%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA. with Stats Enabled:0x%x\n", v50, 16, v51, "AVE_ValidateEncoderParameters", 3138, v52);
        v53 = sub_175AE4();
        v54 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA. with Stats Enabled:0x%x", v53, 16, v54, "AVE_ValidateEncoderParameters", 3138, *(a1 + 1464));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA. with Stats Enabled:0x%x", v50, 16, v51, "AVE_ValidateEncoderParameters", 3138, v52);
      }
    }

    *(a1 + 1336) &= ~0x40u;
    v44 = *(a1 + 76);
  }

  if (v44 >= 17)
  {
    goto LABEL_55;
  }

LABEL_57:
  *(a1 + 716) &= 0xFFFFFC3F;
  *(a1 + 11810) = 0;
  if (*(v2 + 28) && sub_160EF0(0x10u, 5))
  {
    v55 = sub_160F34(0x10u);
    v56 = sub_175AE4();
    v57 = sub_160F68(5);
    if (v55)
    {
      printf("%lld %d AVE %s: FIG: MCTF is not supported for Multipass\n", v56, 16, v57);
      v58 = sub_175AE4();
      v466 = sub_160F68(5);
      syslog(3, "%lld %d AVE %s: FIG: MCTF is not supported for Multipass", v58, 16, v466);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: MCTF is not supported for Multipass", v56, 16, v57);
    }
  }

LABEL_62:
  if (*(v2 + 1952) >= 1 && *(v2 + 1956) >= 1)
  {
    if (sub_160EF0(3u, 4))
    {
      v59 = sub_160F34(3u);
      v60 = sub_175AE4();
      v61 = sub_160F68(4);
      v62 = *(v2 + 1952);
      if (v59)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: pPropertyCfg->iEncodesDepth = %d and pPropertyCfg->iEncodesDisparity = %d -> fail.\n", v60, 3, v61, "AVE_ValidateEncoderParameters", 3177, "false", *(v2 + 1952), *(v2 + 1956));
        v60 = sub_175AE4();
        v61 = sub_160F68(4);
      }

      v508 = *(v2 + 1952);
      v527 = *(v2 + 1956);
      v493 = 3177;
      v494 = "false";
      v467 = v61;
      v63 = "%lld %d AVE %s: %s:%d %s | FIG: pPropertyCfg->iEncodesDepth = %d and pPropertyCfg->iEncodesDisparity = %d -> fail.";
      goto LABEL_157;
    }

    return 4294966295;
  }

  v64 = a1 + 59393;
  v65 = (a1 + 31173);
  v66 = *(a1 + 1336);
  if ((v66 & 0x4000000) != 0)
  {
    *(a1 + 1120) &= ~0x200000000uLL;
    *(a1 + 1356) &= ~2u;
    *(a1 + 1448) &= ~0x10000000uLL;
    *(a1 + 1352) &= 0x1Eu;
    *(a1 + 1336) = v66 & 0xF6FF7E8D;
    *(a1 + 10788) = 0;
    *v65 = 0;
    *v64 = 0;
    *(a1 + 42028) = 0;
    *(a1 + 60062) = 0;
    if (*(a1 + 1344) <= -13)
    {
      *(a1 + 1344) = -6 * *(a1 + 24732);
    }

    if (*(a1 + 1348) <= -13)
    {
      *(a1 + 1348) = 48;
    }

    if (*(a1 + 1232) <= -13)
    {
      *(a1 + 1232) = -6 * *(a1 + 24732);
    }

    if (*(a1 + 1236) <= -13)
    {
      *(a1 + 1236) = 48;
    }
  }

  v67 = *(a1 + 1132);
  if (v67 == 4)
  {
    if (*(v2 + 28))
    {
      if (sub_160EF0(3u, 4))
      {
        v72 = sub_160F34(3u);
        v73 = sub_175AE4();
        v74 = sub_160F68(4);
        if (v72)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: multiPassStorage and RC UsageMode = %d... not supported. fail\n", v73, 3, v74, "AVE_ValidateEncoderParameters", 3241, "false", *(a1 + 10892));
          v73 = sub_175AE4();
          v74 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: multiPassStorage and RC UsageMode = %d... not supported. fail", v73, 3, v74, "AVE_ValidateEncoderParameters", 3241, "false", *(a1 + 10892));
      }

      return 4294966296;
    }
  }

  else if (v67 == 20 && *(a1 + 10892) != 1)
  {
    if (sub_160EF0(3u, 4))
    {
      v68 = sub_160F34(3u);
      v69 = sub_175AE4();
      v70 = sub_160F68(4);
      v71 = *(a1 + 10892);
      if (v68)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Usage mode %d does not support eRCMode = 0x%x. Fail.\n", v69, 3, v70, "AVE_ValidateEncoderParameters", 3232, "false", *(a1 + 10892), *(a1 + 1132));
        v69 = sub_175AE4();
        sub_160F68(4);
      }

      v509 = *(a1 + 10892);
      v531 = *(a1 + 1132);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Usage mode %d does not support eRCMode = 0x%x. Fail.", v69);
    }

    return 4294966295;
  }

  if ((*(v2 + 1916) & 0x80000000) != 0)
  {
    v75 = *(a1 + 10892);
    if (v75 <= 0x26 && ((1 << v75) & 0x4000100002) != 0)
    {
      if (*(a1 + 76) <= 29)
      {
        v76 = 0;
      }

      else
      {
        v76 = 3;
      }

      *v43 = v76;
    }
  }

  v77 = *(a1 + 1120);
  if ((v77 & 0x80000000) == 0)
  {
    v78 = *(a1 + 1256);
    goto LABEL_103;
  }

  *(a1 + 1120) = v77 | 4;
  v78 = *(a1 + 1256);
  if (v78 == 2)
  {
    v78 = 3;
    *(a1 + 1256) = 3;
  }

  if (v67 == 4)
  {
    if (sub_160EF0(3u, 4))
    {
      v79 = sub_160F34(3u);
      v80 = sub_175AE4();
      v81 = sub_160F68(4);
      if (v79)
      {
        printf("%lld %d AVE %s: %s:%d %s | DRL is not supported with lookahead feature\n", v80, 3, v81, "AVE_ValidateEncoderParameters", 3275, "false");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | DRL is not supported with lookahead feature");
    }

    return 4294966296;
  }

LABEL_103:
  if (v78 >= 4)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v82 = sub_160F34(0x10u);
      v83 = sub_175AE4();
      v84 = sub_160F68(5);
      v85 = *(a1 + 1256);
      if (v82)
      {
        printf("%lld %d AVE %s: %s:%d too many B frames (%d) max is %d. -> will gracefully default to the internal max!\n", v83, 16, v84, "AVE_ValidateEncoderParameters", 3289, *(a1 + 1256), 3);
        v83 = sub_175AE4();
        sub_160F68(5);
      }

      v495 = *(a1 + 1256);
      syslog(3, "%lld %d AVE %s: %s:%d too many B frames (%d) max is %d. -> will gracefully default to the internal max!", v83);
    }

    v78 = 3;
    *(a1 + 1256) = 3;
  }

  v86 = *(a1 + 1240);
  if (*(a1 + 76) >= 4)
  {
    if ((v86 & 0x400) == 0)
    {
      goto LABEL_127;
    }

    if (v78)
    {
      *(a1 + 10520) = 1;
      goto LABEL_127;
    }

    if (sub_160EF0(0x10u, 5))
    {
      v87 = sub_160F34(0x10u);
      v88 = sub_175AE4();
      v89 = sub_160F68(5);
      if (v87)
      {
        printf("%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB\n", v88, 16, v89);
        v90 = sub_175AE4();
        v468 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB", v90, 16, v468);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB", v88, 16, v89);
      }
    }

    v86 = *(a1 + 1240);
  }

  *(a1 + 1240) = v86 & 0xFFFFFBFF;
LABEL_127:
  v91 = *(a1 + 10252);
  if (v91 >= 33)
  {
    if (sub_160EF0(3u, 4))
    {
      v95 = sub_160F34(3u);
      v60 = sub_175AE4();
      v96 = sub_160F68(4);
      v97 = *(v43 + 21);
      if (v95)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: too many slices (%d) max is %d for now (can be changed)\n", v60, 3, v96, "AVE_ValidateEncoderParameters", 3330, "pINS->VideoParams.sSliceMap.iNum <= ((32) < (256) ? (32) : (256))", *(v43 + 21), 32);
        v60 = sub_175AE4();
        v96 = sub_160F68(4);
      }

      v508 = *(v43 + 21);
      v527 = 32;
      v493 = 3330;
      v494 = "pINS->VideoParams.sSliceMap.iNum <= ((32) < (256) ? (32) : (256))";
      v467 = v96;
      v63 = "%lld %d AVE %s: %s:%d %s | FIG: too many slices (%d) max is %d for now (can be changed)";
      goto LABEL_157;
    }

    return 4294966295;
  }

  if (!v91)
  {
    if (sub_160EF0(3u, 4))
    {
      v99 = sub_160F34(3u);
      v60 = sub_175AE4();
      v100 = sub_160F68(4);
      if (v99)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Slices Per Frame = %d\n", v60, 3, v100, "AVE_ValidateEncoderParameters", 3331, "pINS->VideoParams.sSliceMap.iNum != 0", *(v43 + 21));
        v60 = sub_175AE4();
        v100 = sub_160F68(4);
        v494 = "pINS->VideoParams.sSliceMap.iNum != 0";
        v508 = *(v43 + 21);
        v493 = 3331;
      }

      else
      {
        v508 = *(v43 + 21);
        v493 = 3331;
        v494 = "pINS->VideoParams.sSliceMap.iNum != 0";
      }

      v467 = v100;
      v63 = "%lld %d AVE %s: %s:%d %s | FIG: Slices Per Frame = %d";
LABEL_157:
      syslog(3, v63, v60, 3, v467, "AVE_ValidateEncoderParameters", v493, v494, v508, v527);
    }

    return 4294966295;
  }

  if (*v2 <= 9u && ((1 << *v2) & 0x24A) != 0 && *(a1 + 10782) == 1 && *(a1 + 24732) >= 2u)
  {
    if (sub_160EF0(0x10u, 4))
    {
      v92 = sub_160F34(0x10u);
      v93 = sub_175AE4();
      v94 = sub_160F68(4);
      if (v92)
      {
        printf("%lld %d AVE %s: %s:%d %s | Unable to set bitdepth 10 for HEVC Profile that only supports bitdepth 8\n", v93, 16, v94, "AVE_ValidateEncoderParameters", 3342, "false");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Unable to set bitdepth 10 for HEVC Profile that only supports bitdepth 8");
    }

    return 4294966295;
  }

  if (*(a1 + 24264) <= 1u)
  {
    if (*(a1 + 10782) == 1)
    {
      v98 = *(a1 + 24732) + 8;
    }

    else
    {
      v98 = *(a1 + 10192);
    }

    v101 = *(a1 + 24688);
    if (v101)
    {
      if (v101 == 3)
      {
        if (sub_160EF0(0x10u, 6))
        {
          v106 = sub_160F34(0x10u);
          v552 = sub_175AE4();
          v107 = sub_160F68(6);
          v108 = *(a1 + 12028);
          if (v106)
          {
            printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v552, 16, v107, "AVE_ValidateEncoderParameters", 3374, *(a1 + 12028), 9);
            v109 = sub_175AE4();
            sub_160F68(6);
            v497 = *(a1 + 12028);
            syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v109);
          }

          else
          {
            v499 = *(a1 + 12028);
            syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v552);
          }
        }

        if (v98 == 10)
        {
          v114 = 10;
        }

        else
        {
          v114 = 9;
        }

        goto LABEL_185;
      }

      if (v101 == 2)
      {
        if (sub_160EF0(0x10u, 6))
        {
          v102 = sub_160F34(0x10u);
          v103 = sub_175AE4();
          v104 = sub_160F68(6);
          v105 = *(a1 + 12028);
          if (v102)
          {
            printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v103, 16, v104, "AVE_ValidateEncoderParameters", 3366, *(a1 + 12028), 8);
            v103 = sub_175AE4();
            sub_160F68(6);
          }

          v496 = *(a1 + 12028);
          syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v103);
        }

        v114 = 8;
LABEL_185:
        *(a1 + 24264) = v114;
        *(a1 + 12028) = v114;
        goto LABEL_186;
      }
    }

    else
    {
      if (sub_160EF0(0x10u, 6))
      {
        v110 = sub_160F34(0x10u);
        v553 = sub_175AE4();
        v111 = sub_160F68(6);
        v112 = *(a1 + 12028);
        if (v98 == 10)
        {
          v113 = 7;
        }

        else
        {
          v113 = 6;
        }

        if (v110)
        {
          printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v553, 16, v111, "AVE_ValidateEncoderParameters", 3383, *(a1 + 12028), v113);
          v553 = sub_175AE4();
          sub_160F68(6);
        }

        v498 = *(a1 + 12028);
        syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v553);
      }

      if (v98 == 10)
      {
        v115 = 7;
      }

      else
      {
        v115 = 6;
      }

      *(a1 + 24264) = v115;
      *(a1 + 12028) = v115;
    }

    if (sub_160EF0(0x10u, 6))
    {
      v116 = sub_160F34(0x10u);
      v117 = sub_175AE4();
      v118 = sub_160F68(6);
      v119 = *(a1 + 24688);
      if (v116)
      {
        printf("%lld %d AVE %s: %s:%d chroma format idc %d profile %d\n", v117, 16, v118, "AVE_ValidateEncoderParameters", 3391, *(a1 + 24688), *(a1 + 12028));
        v117 = sub_175AE4();
        sub_160F68(6);
        v500 = *(a1 + 24688);
        v510 = *(a1 + 12028);
      }

      else
      {
        v501 = *(a1 + 24688);
      }

      syslog(3, "%lld %d AVE %s: %s:%d chroma format idc %d profile %d", v117);
    }
  }

LABEL_186:
  if (*(a1 + 1308) >= 2)
  {
    v120 = *(a1 + 10892);
    if (v120 == 20 || v120 == 10000 || v120 == 37)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v121 = sub_160F34(0x10u);
        v122 = sub_175AE4();
        v123 = sub_160F68(5);
        v124 = *(a1 + 10892);
        v125 = *(a1 + 1308);
        if (v121)
        {
          printf("%lld %d AVE %s: FIG: usageMode = %d and Reference Number of P %d -> 1\n", v122, 16, v123, *(a1 + 10892), v125);
          v126 = sub_175AE4();
          v127 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and Reference Number of P %d -> 1", v126, 16, v127, *(a1 + 10892), *(a1 + 1308));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and Reference Number of P %d -> 1", v122, 16, v123, *(a1 + 10892), v125);
        }
      }

      *(a1 + 1308) = 1;
    }
  }

  if (*(a1 + 10854) == 1)
  {
    *(a1 + 1240) &= ~0x400u;
  }

  if (*(a1 + 39959) == 1)
  {
    v128 = *(a1 + 10892);
    if (v128 <= 0x25 && ((1 << v128) & 0x2000100002) != 0 || v128 == 10000)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v129 = sub_160F34(0x10u);
        v130 = sub_175AE4();
        v131 = sub_160F68(5);
        v132 = *(a1 + 10892);
        if (v129)
        {
          printf("%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.\n", v130, 16, v131, v132);
          v133 = sub_175AE4();
          v469 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.", v133, 16, v469, *(a1 + 10892));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.", v130, 16, v131, v132);
        }
      }

      *(a1 + 39959) = 0;
    }

    if (*(a1 + 1132) != 3)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v134 = sub_160F34(0x10u);
        v135 = sub_175AE4();
        v136 = sub_160F68(5);
        v137 = *(a1 + 1132);
        if (v134)
        {
          printf("%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.\n", v135, 16, v136, v137);
          v138 = sub_175AE4();
          v470 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.", v138, 16, v470, *(a1 + 1132));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.", v135, 16, v136, v137);
        }
      }

      *(a1 + 1132) = 3;
    }

    if (*(a1 + 1336))
    {
      if (sub_160EF0(0x10u, 5))
      {
        v139 = sub_160F34(0x10u);
        v140 = sub_175AE4();
        v141 = sub_160F68(5);
        v142 = *(a1 + 1336);
        if (v139)
        {
          printf("%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0. (Set cu_qp_delta_enabled_flag to false)\n", v140, 16, v141, "AVE_ValidateEncoderParameters", 3453, v142);
          v143 = sub_175AE4();
          v144 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0. (Set cu_qp_delta_enabled_flag to false)", v143, 16, v144, "AVE_ValidateEncoderParameters", 3453, *(a1 + 1336));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0. (Set cu_qp_delta_enabled_flag to false)", v140, 16, v141, "AVE_ValidateEncoderParameters", 3453, v142);
        }
      }

      *(a1 + 1336) = 0;
      *(a1 + 39886) = 0;
    }

    if ((*(a1 + 1352) & 0x1E) != 0)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v145 = sub_160F34(0x10u);
        v146 = sub_175AE4();
        v147 = sub_160F68(5);
        v148 = *(a1 + 1352);
        if (v145)
        {
          printf("%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0\n", v146, 16, v147, v148);
          v149 = sub_175AE4();
          v471 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0", v149, 16, v471, *(a1 + 1352));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0", v146, 16, v147, v148);
        }
      }

      *(a1 + 1352) = 0;
    }

    v150 = -6 * *(a1 + 24732);
    *(a1 + 1348) = v150;
    *(a1 + 1344) = v150;
    *(a1 + 1152) = v150;
    *(a1 + 1148) = v150;
    *(a1 + 1144) = v150;
    *(a1 + 1232) = *(a1 + 1344);
    if (*(a1 + 1464))
    {
      if (sub_160EF0(0x10u, 5))
      {
        v151 = sub_160F34(0x10u);
        v152 = sub_175AE4();
        v153 = sub_160F68(5);
        v154 = *(a1 + 1464);
        if (v151)
        {
          printf("%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.\n", v152, 16, v153, v154);
          v155 = sub_175AE4();
          v472 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.", v155, 16, v472, *(a1 + 1464));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.", v152, 16, v153, v154);
        }
      }

      *(a1 + 1464) = 0;
    }

    if ((*(a1 + 1336) & 0x40) != 0)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v156 = sub_160F34(0x10u);
        v157 = sub_175AE4();
        v158 = sub_160F68(5);
        v159 = *(a1 + 1336);
        if (v156)
        {
          printf("%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.\n", v157, 16, v158, v159);
          v160 = sub_175AE4();
          v473 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.", v160, 16, v473, *(a1 + 1336));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.", v157, 16, v158, v159);
        }
      }

      *(a1 + 1336) &= ~0x40u;
    }

    *(a1 + 42028) = 1;
    *(a1 + 60062) = 1;
    *v65 = 0;
    *v64 = 0;
  }

  if (*(a1 + 1256))
  {
    v161 = *(a1 + 11460);
    if (*(v2 + 1836) <= 0)
    {
      if (v161 < 1)
      {
        goto LABEL_248;
      }
    }

    else if (v161 < 1 || v161 < *(a1 + 1112))
    {
      goto LABEL_248;
    }

    if (sub_160EF0(0x10u, 5))
    {
      v162 = sub_160F34(0x10u);
      v163 = sub_175AE4();
      v164 = sub_160F68(5);
      v165 = *(a1 + 1256);
      if (v162)
      {
        printf("%lld %d AVE %s: %s:%d BFrames = %d and iAverageNonDroppableFrameRate is true. not supported yet, gracefully set it to false.\n", v163, 16, v164, "AVE_ValidateEncoderParameters", 3513, v165);
        v166 = sub_175AE4();
        v167 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: %s:%d BFrames = %d and iAverageNonDroppableFrameRate is true. not supported yet, gracefully set it to false.", v166, 16, v167, "AVE_ValidateEncoderParameters", 3513, *(a1 + 1256));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d BFrames = %d and iAverageNonDroppableFrameRate is true. not supported yet, gracefully set it to false.", v163, 16, v164, "AVE_ValidateEncoderParameters", 3513, v165);
      }
    }

    *(a1 + 11460) = 0;
  }

LABEL_248:
  if (!*(a1 + 1336))
  {
    *(a1 + 39886) = 0;
  }

  if (*(a1 + 1232) <= -13)
  {
    *(a1 + 1232) = -6 * *(a1 + 24732);
  }

  if (*(a1 + 1236) <= -13)
  {
    if (*(a1 + 1132) == 20)
    {
      v168 = 51;
    }

    else
    {
      v168 = 48;
    }

    *(a1 + 1236) = v168;
  }

  if (*(a1 + 1344) <= -13)
  {
    *(a1 + 1344) = -6 * *(a1 + 24732);
  }

  v169 = (a1 + 1344);
  if (*(a1 + 1348) <= -13)
  {
    if (*(a1 + 1132) == 20)
    {
      v170 = 51;
    }

    else
    {
      v170 = 48;
    }

    *(a1 + 1348) = v170;
  }

  if (sub_17D104((a1 + 1344), *(a1 + 24732) + 8))
  {
    if (sub_160EF0(3u, 4))
    {
      v171 = sub_160F34(3u);
      v172 = sub_175AE4();
      v173 = sub_160F68(4);
      v174 = *(a1 + 1344);
      if (v171)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Incorrect BlkQPRange [%d %d]\n", v172, 3, v173, "AVE_ValidateEncoderParameters", 3553, "false", *(a1 + 1344), *(a1 + 1348));
        v172 = sub_175AE4();
        sub_160F68(4);
      }

      v511 = *(a1 + 1344);
      v532 = *(a1 + 1348);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Incorrect BlkQPRange [%d %d]", v172);
    }

    return 4294966295;
  }

  v175 = (a1 + 1232);
  if (sub_17D104((a1 + 1232), *(a1 + 24732) + 8))
  {
    if (sub_160EF0(3u, 4))
    {
      v176 = sub_160F34(3u);
      v177 = sub_175AE4();
      v178 = sub_160F68(4);
      v179 = *(a1 + 1232);
      if (v176)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Incorrect RCQPRange [%d %d]\n", v177, 3, v178, "AVE_ValidateEncoderParameters", 3561, "false", *(a1 + 1232), *(a1 + 1236));
        v177 = sub_175AE4();
        sub_160F68(4);
      }

      v512 = *(a1 + 1232);
      v533 = *(a1 + 1236);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Incorrect RCQPRange [%d %d]", v177);
    }

    return 4294966295;
  }

  if (*v175 < *v169)
  {
    *v175 = *v169;
  }

  v180 = *(a1 + 1348);
  if (*(a1 + 1236) > v180)
  {
    *(a1 + 1236) = v180;
  }

  v181 = *(a1 + 1132);
  if (*(a1 + 10764) == 1)
  {
    if (v181 != 20)
    {
      goto LABEL_297;
    }

    if (sub_160EF0(0x10u, 5))
    {
      v182 = sub_160F34(0x10u);
      v183 = sub_175AE4();
      v184 = sub_160F68(5);
      v185 = *(a1 + 1132);
      if (v182)
      {
        printf("%lld %d AVE %s: FIG: eRCMode 0x%x bUseAsyncFWScheduling = true -> not supported. set bUseAsyncFWScheduling to false\n", v183, 16, v184, v185);
        v186 = sub_175AE4();
        v474 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: eRCMode 0x%x bUseAsyncFWScheduling = true -> not supported. set bUseAsyncFWScheduling to false", v186, 16, v474, *(a1 + 1132));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: eRCMode 0x%x bUseAsyncFWScheduling = true -> not supported. set bUseAsyncFWScheduling to false", v183, 16, v184, v185);
      }
    }

    v191 = 0;
    goto LABEL_296;
  }

  if (v181 != 20 && *(a1 + 1256))
  {
    if (sub_160EF0(0x10u, 5))
    {
      v187 = sub_160F34(0x10u);
      v188 = sub_175AE4();
      v189 = sub_160F68(5);
      v190 = *(a1 + 1132);
      if (v187)
      {
        printf("%lld %d AVE %s: %s:%d eRCMode 0x%x bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true\n", v188, 16, v189, "AVE_ValidateEncoderParameters", 3599, *(a1 + 1132), *(a1 + 1256));
        v188 = sub_175AE4();
        sub_160F68(5);
        v502 = *(a1 + 1132);
        v513 = *(a1 + 1256);
      }

      else
      {
        v503 = *(a1 + 1132);
      }

      syslog(3, "%lld %d AVE %s: %s:%d eRCMode 0x%x bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true", v188);
    }

    v191 = 1;
LABEL_296:
    *(a1 + 10764) = v191;
  }

LABEL_297:
  if (*(v2 + 28))
  {
    *(a1 + 10540) = 1;
  }

  if (*(a1 + 1256) && *(a1 + 1476) == 1)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v192 = sub_160F34(0x10u);
      v193 = sub_175AE4();
      v194 = sub_160F68(5);
      v195 = *(a1 + 1256);
      if (v192)
      {
        printf("%lld %d AVE %s: %s:%d BFrames = %d and LowDelay is true. Default to regular BFrames case\n", v193, 16, v194, "AVE_ValidateEncoderParameters", 3627, v195);
        v196 = sub_175AE4();
        v197 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: %s:%d BFrames = %d and LowDelay is true. Default to regular BFrames case", v196, 16, v197, "AVE_ValidateEncoderParameters", 3627, *(a1 + 1256));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d BFrames = %d and LowDelay is true. Default to regular BFrames case", v193, 16, v194, "AVE_ValidateEncoderParameters", 3627, v195);
      }
    }

    *(a1 + 1476) = 0;
  }

  v198 = *(a1 + 10192);
  if (v198 == 8)
  {
    v199 = *(a1 + 1088);
  }

  else
  {
    if (v198 != 10)
    {
      if (sub_160EF0(3u, 4))
      {
        v202 = sub_160F34(3u);
        v203 = sub_175AE4();
        v204 = sub_160F68(4);
        if (v202)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: input_bitdepth = %d... not supported. Fail\n", v203, 3, v204, "AVE_ValidateEncoderParameters", 3642, "(pINS->VideoParams.input_bitdepth == 8) || (pINS->VideoParams.input_bitdepth == 10)", *(a1 + 10192));
          v203 = sub_175AE4();
          sub_160F68(4);
        }

        v514 = *(a1 + 10192);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: input_bitdepth = %d... not supported. Fail", v203);
      }

      return 4294966295;
    }

    v199 = *(a1 + 1088);
    if (*(a1 + 10853) != 1)
    {
      v200 = v199 & 0xFFFFFFFFFFFFFFFELL;
      goto LABEL_312;
    }
  }

  v200 = v199 | 1;
LABEL_312:
  *(a1 + 1088) = v200;
  if (sub_E71EC(*(a1 + 68), 1, 2, *v43))
  {
    v201 = *(a1 + 76);
  }

  else
  {
    if (sub_160EF0(0x10u, 5))
    {
      v205 = sub_160F34(0x10u);
      v206 = sub_175AE4();
      v207 = sub_160F68(5);
      v208 = *v43;
      if (v205)
      {
        printf("%lld %d AVE %s: FIG: SearchRangeMode %d not supported. Default to 0\n", v206, 16, v207, v208);
        v209 = sub_175AE4();
        v475 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: SearchRangeMode %d not supported. Default to 0", v209, 16, v475, *v43);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: SearchRangeMode %d not supported. Default to 0", v206, 16, v207, v208);
      }
    }

    v201 = *(a1 + 76);
    if (v201 <= 29)
    {
      v210 = 0;
    }

    else
    {
      v210 = 3;
    }

    *v43 = v210;
  }

  if (v201 <= 8 && (*v43 & 0xFFFE) == 4 && (*(a1 + 1308) > 1 || *(a1 + 10556) >= 2u))
  {
    *v43 = 0;
  }

  if ((*(a1 + 1444) * *(a1 + 1440)) >= 0x7E9000 && *(a1 + 1112) >= 100 && (*(v3 + 255) & 0x80000000) != 0 && (*(v2 + 1916) & 0x80000000) != 0)
  {
    if (v201 <= 29)
    {
      v227 = 0;
    }

    else
    {
      v227 = 3;
    }

    *v43 = v227;
LABEL_337:
    if (*(a1 + 64) != 2 && !*(a1 + 10531))
    {
      goto LABEL_345;
    }

    goto LABEL_339;
  }

  if (*v43 != 7)
  {
    goto LABEL_337;
  }

LABEL_339:
  if ((*(a1 + 10172) & 1) == 0)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v211 = sub_160F34(0x10u);
      v212 = sub_175AE4();
      v213 = sub_160F68(5);
      if (v211)
      {
        printf("%lld %d AVE %s: FIG: SearchRangeMode = 7 or LRMEStandAlone or LRMERC -> must run in LRME-pipe async.\n", v212, 16, v213);
        v214 = sub_175AE4();
        v476 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: SearchRangeMode = 7 or LRMEStandAlone or LRMERC -> must run in LRME-pipe async.", v214, 16, v476);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: SearchRangeMode = 7 or LRMEStandAlone or LRMERC -> must run in LRME-pipe async.", v212, 16, v213);
      }
    }

    *(a1 + 10172) = 1;
  }

LABEL_345:
  if (*(a1 + 10857) == 1)
  {
    if ((*(a1 + 1339) & 4) != 0)
    {
      v215 = -6 * *(a1 + 24732);
      v216 = *(a1 + 1144) + 4;
      if (v216 <= v215)
      {
        v216 = -6 * *(a1 + 24732);
      }

      if (v216 >= 51)
      {
        v216 = 51;
      }

      *(a1 + 1148) = v216;
      if (v215 <= 51)
      {
        v215 = v216 + 1;
      }

      if (v215 >= 51)
      {
        v215 = 51;
      }

      *(a1 + 1152) = v215;
      *(a1 + 1132) = 3;
    }

    else if ((*(a1 + 10783) & 1) == 0 && *(a1 + 1132) != 4 && (*(a1 + 10858) & 1) == 0 && *(a1 + 10904) == 1)
    {
      *(a1 + 1464) = 0;
      *(a1 + 39886) = 0;
      *(a1 + 1352) = 0;
      *(a1 + 1336) = 0;
    }
  }

  else if (*(a1 + 10904) == 1 && (*(a1 + 10783) & 1) == 0 && *(a1 + 1132) != 4 && (*(a1 + 10858) & 1) == 0)
  {
    *(a1 + 1464) = 0;
    *(a1 + 39886) = 0;
    *(a1 + 1352) = 0;
    *(a1 + 1336) = 0;
    *(a1 + 1132) = 3;
    *(a1 + 1144) = 0x1E0000001ELL;
    *(a1 + 1152) = 30;
  }

  if ((*(a1 + 10904) & 1) != 0 || (*(a1 + 716) & 0x3C0) != 0 || *(v2 + 28))
  {
    *(a1 + 1128) = 0;
    *(a1 + 1120) &= ~0x80000000uLL;
  }

  if (*(a1 + 1132) == 3)
  {
    *(a1 + 10764) = 1;
    *(a1 + 1464) = 0;
    if (*(a1 + 10752) == 2)
    {
      v217 = *(a1 + 1336) & 0xFFFF7F8F;
      v218 = *(a1 + 1352) & 0x1E;
    }

    else
    {
      v218 = 0;
      v217 = 0;
      *(a1 + 39886) = 0;
    }

    *(a1 + 1336) = v217;
    *(a1 + 1352) = v218;
  }

  if ((*(a1 + 1123) & 0x80) != 0)
  {
    *(a1 + 11460) = 0;
    *(a1 + 1104) |= 0x40uLL;
  }

  if (*(a1 + 1336) && (*(a1 + 39886) & 1) == 0)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v219 = sub_160F34(0x10u);
      v220 = sub_175AE4();
      v221 = sub_160F68(5);
      v222 = *(a1 + 1336);
      if (v219)
      {
        printf("%lld %d AVE %s: %s:%d cu_qp_delta_enabled_flag set false and QPMod set to %x (!= 0) is not supported. Force cu_qp_delta_enabled_flag to true.\n", v220, 16, v221, "AVE_ValidateEncoderParameters", 3818, v222);
        v223 = sub_175AE4();
        v224 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: %s:%d cu_qp_delta_enabled_flag set false and QPMod set to %x (!= 0) is not supported. Force cu_qp_delta_enabled_flag to true.", v223, 16, v224, "AVE_ValidateEncoderParameters", 3818, *(a1 + 1336));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d cu_qp_delta_enabled_flag set false and QPMod set to %x (!= 0) is not supported. Force cu_qp_delta_enabled_flag to true.", v220, 16, v221, "AVE_ValidateEncoderParameters", 3818, v222);
      }
    }

    *(a1 + 39886) = 1;
  }

  v556 = a1 + 24248;
  if (*(a1 + 10192) == 10 && *(a1 + 10752) != 2)
  {
    v225 = *(a1 + 31368);
    if (v225 == 16)
    {
      if (*(a1 + 24688) == 1 && (*(a1 + 39924) = 0x500000005, (*(a1 + 1123) & 0x80) != 0))
      {
        LOBYTE(v226) = 0;
        *(a1 + 1336) |= 0x8000000u;
      }

      else
      {
        LOBYTE(v226) = 0;
      }
    }

    else if (v225 == 18 && (v226 = *(a1 + 24688), v226 == 1))
    {
      *(a1 + 39924) = 0xB0000000BLL;
    }

    else
    {
      LOBYTE(v226) = 1;
    }

    v228 = *(a1 + 76);
    if (v228 >= 23)
    {
      v229 = *(a1 + 24688);
      if (v229 != 1)
      {
        LOBYTE(v226) = 1;
      }

      if ((v226 & 1) == 0 && (*(a1 + 1123) & 0x80) != 0)
      {
        *(a1 + 39956) = 1;
      }

      v43 = (a1 + 10168);
      v64 = a1 + 59393;
      if (v228 >= 0x1E && v229 == 1 && (v225 | 2) == 0x12)
      {
        *(a1 + 39956) = 1;
      }
    }
  }

  v230 = *(a1 + 1336);
  if ((v230 & 0x40) != 0)
  {
    v231 = *(a1 + 1440) + 15;
    v232 = *(a1 + 1444) + 15;
    v233 = v232 >> 4;
    v234 = (v231 >> 4) + 31;
    v235 = v234 & 0x1FFFFFE0;
    if (v231 > 0x78F || v232 >= 0x450)
    {
      v236 = (((((v231 >> 4) + 1) >> 1) + 31) >> 5) * ((v233 + 1) >> 1);
    }

    else
    {
      v236 = (v234 >> 5) * v233;
    }

    if (v235 > 0x100 || v232 > 0xC0F || v236 >= 0x121)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v237 = sub_160F34(0x10u);
        v554 = sub_175AE4();
        v238 = sub_160F68(5);
        if (v237)
        {
          printf("%lld %d AVE %s: AVE_FIG: align32MbW <= MAX_STATICAREASLOWQP_NMB_FRAME_HORIZONTAL && picHeightInMb <= MAX_STATICAREASLOWQP_NMB_FRAME_VERTICAL %d %d %d %d\n", v554, 16, v238, v235, 256, v233, 192);
          v239 = sub_175AE4();
          sub_160F68(5);
          syslog(3, "%lld %d AVE %s: AVE_FIG: align32MbW <= MAX_STATICAREASLOWQP_NMB_FRAME_HORIZONTAL && picHeightInMb <= MAX_STATICAREASLOWQP_NMB_FRAME_VERTICAL %d %d %d %d", v239);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: AVE_FIG: align32MbW <= MAX_STATICAREASLOWQP_NMB_FRAME_HORIZONTAL && picHeightInMb <= MAX_STATICAREASLOWQP_NMB_FRAME_VERTICAL %d %d %d %d", v554);
        }
      }

      v230 = *(a1 + 1336) & 0xFFFFFFBF;
      *(a1 + 1336) = v230;
    }
  }

  v240 = a1 + 24248;
  if (*(a1 + 11792) >= 0x1Fu)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v241 = sub_160F34(0x10u);
      v242 = sub_175AE4();
      v243 = sub_160F68(5);
      if (v241)
      {
        printf("%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM\n", v242, 16, v243, 30);
        v244 = sub_175AE4();
        v477 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM", v244, 16, v477, 30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM", v242, 16, v243, 30);
      }
    }

    *(a1 + 11792) = 30;
    v230 = *(a1 + 1336);
  }

  if ((v230 & 0x10) != 0)
  {
    v245 = *(a1 + 1132);
    if (v245 <= 0x14 && ((1 << v245) & 0x100009) != 0)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v246 = sub_160F34(0x10u);
        v247 = sub_175AE4();
        v248 = sub_160F68(5);
        v249 = *(a1 + 1132);
        if (v246)
        {
          printf("%lld %d AVE %s: %s:%d eRCMode 0x%x QPMod feature 0x%08x is not supported. Set AVE_QPMOD_FEATURE_FLAT_AREA to false\n", v247, 16, v248, "AVE_ValidateEncoderParameters", 3932, *(a1 + 1132), *(a1 + 1336));
          v247 = sub_175AE4();
          sub_160F68(5);
          v504 = *(a1 + 1132);
          v515 = *(a1 + 1336);
        }

        else
        {
          v505 = *(a1 + 1132);
        }

        syslog(3, "%lld %d AVE %s: %s:%d eRCMode 0x%x QPMod feature 0x%08x is not supported. Set AVE_QPMOD_FEATURE_FLAT_AREA to false", v247);
      }

      v230 = *(a1 + 1336) & 0xFFFFFFEF;
      *(a1 + 1336) = v230;
      v245 = *(a1 + 1132);
    }

    if (v245 == 100)
    {
      if (sub_160EF0(3u, 4))
      {
        v250 = sub_160F34(3u);
        v251 = sub_175AE4();
        v252 = sub_160F68(4);
        v253 = *(a1 + 1132);
        if (v250)
        {
          printf("%lld %d AVE %s: %s:%d %s | %s:%d eRCMode 0x%x and AVE_QPMOD_FEATURE_FLAT_AREA (QPMod feature: 0x%08x) is not supported.\n", v251, 3, v252, "AVE_ValidateEncoderParameters", 3939, "pINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_HwVal", "AVE_ValidateEncoderParameters", 3939, *(a1 + 1132), *(a1 + 1336));
          v251 = sub_175AE4();
          v252 = sub_160F68(4);
        }

        v540 = *(a1 + 1132);
        v546 = *(a1 + 1336);
        syslog(3, "%lld %d AVE %s: %s:%d %s | %s:%d eRCMode 0x%x and AVE_QPMOD_FEATURE_FLAT_AREA (QPMod feature: 0x%08x) is not supported.", v251, 3, v252);
      }

      return 4294966295;
    }
  }

  if ((v230 & 0x8010) == 0x8000)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v254 = sub_160F34(0x10u);
      v255 = sub_175AE4();
      v256 = sub_160F68(5);
      v257 = *(a1 + 1336) & 0x10;
      if (v254)
      {
        printf("%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_EXT_LUMA to false\n", v255, 16, v256, v257);
        v258 = sub_175AE4();
        v478 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_EXT_LUMA to false", v258, 16, v478, *(a1 + 1336) & 0x10);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_EXT_LUMA to false", v255, 16, v256, v257);
      }
    }

    v230 = *(a1 + 1336) & 0xFFFF7FFF;
    *(a1 + 1336) = v230;
  }

  if ((v230 & 0x30) == 0x20)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v259 = sub_160F34(0x10u);
      v260 = sub_175AE4();
      v261 = sub_160F68(5);
      v262 = *(a1 + 1336) & 0x10;
      if (v259)
      {
        printf("%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_ULTRA_FLAT_AREA to false\n", v260, 16, v261, v262);
        v263 = sub_175AE4();
        v479 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_ULTRA_FLAT_AREA to false", v263, 16, v479, *(a1 + 1336) & 0x10);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_ULTRA_FLAT_AREA to false", v260, 16, v261, v262);
      }
    }

    v230 = *(a1 + 1336) & 0xFFFFFFDF;
    *(a1 + 1336) = v230;
  }

  if ((v230 & 4) != 0 && (v230 & 0x12) != 0x12)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v264 = sub_160F34(0x10u);
      v265 = sub_175AE4();
      v266 = sub_160F68(5);
      v267 = *(a1 + 1336) & 4;
      v268 = *(a1 + 1336) & 0x10;
      if (v264)
      {
        printf("%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_LOW_VARIANCE = %d and requires both AVE_QPMOD_FEATURE_VARIANCE %d and AVE_QPMOD_FEATURE_FLAT_AREA %d. Forcing AVE_QPMOD_FEATURE_LOW_VARIANCE off.\n", v265, 16, v266, v267, *(a1 + 1336) & 2, v268);
        v269 = sub_175AE4();
        v270 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_LOW_VARIANCE = %d and requires both AVE_QPMOD_FEATURE_VARIANCE %d and AVE_QPMOD_FEATURE_FLAT_AREA %d. Forcing AVE_QPMOD_FEATURE_LOW_VARIANCE off.", v269, 16, v270, *(a1 + 1336) & 4, *(a1 + 1336) & 2, *(a1 + 1336) & 0x10);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_LOW_VARIANCE = %d and requires both AVE_QPMOD_FEATURE_VARIANCE %d and AVE_QPMOD_FEATURE_FLAT_AREA %d. Forcing AVE_QPMOD_FEATURE_LOW_VARIANCE off.", v265, 16, v266, v267, *(a1 + 1336) & 2, v268);
      }
    }

    v230 = *(a1 + 1336) & 0xFFFFFFFB;
    *(a1 + 1336) = v230;
  }

  if ((*(a1 + 1123) & 0x80) != 0)
  {
    v271 = *(a1 + 1240) | 0x30000;
    v272 = v230 & 0xFFFFFFAF;
    v273 = *(a1 + 1132);
    if (v273 == 8 || v273 == 6)
    {
      v272 |= 0x30u;
    }

    *(a1 + 1336) = (v272 | *(v3 + 237)) & ~*(v3 + 238);
    *(a1 + 1240) = (*(v3 + 218) | v271) & ~*(v3 + 219);
    if (sub_160EF0(0x10u, 6))
    {
      v274 = sub_160F34(0x10u);
      v275 = sub_175AE4();
      v276 = sub_160F68(6);
      if (v274)
      {
        printf("%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled\n", v275, 16, v276);
        v277 = sub_175AE4();
        v480 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled", v277, 16, v480);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled", v275, 16, v276);
      }
    }
  }

  v278 = *(a1 + 10244);
  if (v278 >= 2)
  {
    v279 = *(a1 + 1132);
    if (v279 && v279 != 20 && (*(a1 + 24856) & 1) == 0)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v280 = sub_160F34(0x10u);
        v281 = sub_175AE4();
        v282 = sub_160F68(5);
        v283 = *(a1 + 10244);
        v284 = *(a1 + 1132);
        if (v280)
        {
          printf("%lld %d AVE %s: FIG: i32PPSsCount (%d), eRCMode %d and scaling_list_enabled_flag is false. Not supported. Forcing i32PPSsCount to 1\n", v281, 16, v282, *(a1 + 10244), v284);
          v285 = sub_175AE4();
          v286 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: i32PPSsCount (%d), eRCMode %d and scaling_list_enabled_flag is false. Not supported. Forcing i32PPSsCount to 1", v285, 16, v286, *(a1 + 10244), *(a1 + 1132));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: i32PPSsCount (%d), eRCMode %d and scaling_list_enabled_flag is false. Not supported. Forcing i32PPSsCount to 1", v281, 16, v282, *(a1 + 10244), v284);
        }
      }

      v278 = 1;
      *(a1 + 10244) = 1;
      v240 = a1 + 24248;
    }

    if (*(a1 + 10892) == 1)
    {
      v287.i64[0] = 0xC0000000CLL;
      v287.i64[1] = 0xC0000000CLL;
      v288.i64[0] = 0x100000001;
      v288.i64[1] = 0x100000001;
      v289 = vaddvq_s32(vsubq_s32(vbicq_s8(v288, vceqq_s32(*(a1 + 39892), v287)), vmvnq_s8(vceqq_s32(*(a1 + 39908), v287))));
      if (v278 != v289)
      {
        if (sub_160EF0(3u, 4))
        {
          v294 = sub_160F34(3u);
          v295 = sub_175AE4();
          v296 = sub_160F68(4);
          v297 = *(a1 + 10244);
          if (v294)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: PPS count = %d and ch_qp_index_offset_cnt = %d... are not compatible. fail\n", v295, 3, v296, "AVE_ValidateEncoderParameters", 4034, "pINS->VideoParams.i32PPSsCount == ch_qp_index_offset_cnt", *(a1 + 10244), v289);
            v295 = sub_175AE4();
            sub_160F68(4);
          }

          v516 = *(a1 + 10244);
          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: PPS count = %d and ch_qp_index_offset_cnt = %d... are not compatible. fail", v295);
        }

        return 4294966295;
      }
    }
  }

  if (*(a1 + 1308) >= 2)
  {
    if ((*(a1 + 1296) & 1) == 0)
    {
      goto LABEL_498;
    }

    if (sub_160EF0(0x10u, 5))
    {
      v290 = sub_160F34(0x10u);
      v291 = sub_175AE4();
      v292 = sub_160F68(5);
      if (v290)
      {
        printf("%lld %d AVE %s: MultiRef and WP not supported together. Disabling MultiRef.\n", v291, 16, v292);
        v293 = sub_175AE4();
        v481 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: MultiRef and WP not supported together. Disabling MultiRef.", v293, 16, v481);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: MultiRef and WP not supported together. Disabling MultiRef.", v291, 16, v292);
      }

      v240 = a1 + 24248;
    }

    *(a1 + 1308) = 1;
  }

  if (*(a1 + 1256) || (*v43 & 0xFFFE) == 4 || (*(a1 + 716) & 0x3C0) != 0 || *(a1 + 10556) > 1u || (*(a1 + 1296) & 1) != 0)
  {
LABEL_498:
    if ((*(v43 + 5) & 1) == 0)
    {
      *(v43 + 5) = 1;
    }
  }

  if (*(a1 + 1264) == 1)
  {
    v298 = *(a1 + 1240);
    if (*(a1 + 10560) == 1)
    {
      *(a1 + 1268) = 0;
      *(a1 + 1272) = 0xBFF0000000000000;
      *(a1 + 1280) = 0xBFF0000000000000;
      *(a1 + 1252) = 0;
      v298 &= ~0x400u;
      *(a1 + 1240) = v298;
      *(a1 + 1260) = 1;
      *(a1 + 1288) = 1;
    }
  }

  else
  {
    v298 = *(a1 + 1240);
  }

  if ((v298 & 0x100) != 0 && !*(a1 + 1256))
  {
    *(a1 + 1240) = v298 & 0xFFFFFEFF;
    if (sub_160EF0(0x10u, 5))
    {
      v299 = sub_160F34(0x10u);
      v300 = sub_175AE4();
      v301 = sub_160F68(5);
      if (v299)
      {
        printf("%lld %d AVE %s: FIG: CRA not supported with no B Frames. Forcing bClosedGOP to true\n", v300, 16, v301);
        v302 = sub_175AE4();
        v482 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: CRA not supported with no B Frames. Forcing bClosedGOP to true", v302, 16, v482);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: CRA not supported with no B Frames. Forcing bClosedGOP to true", v300, 16, v301);
      }

      v240 = a1 + 24248;
    }
  }

  if (*(a1 + 10556) >= 2u)
  {
    if (*(a1 + 1112) <= 0 && sub_160EF0(0x10u, 5))
    {
      v303 = sub_160F34(0x10u);
      v304 = sub_175AE4();
      v305 = sub_160F68(5);
      if (v303)
      {
        printf("%lld %d AVE %s: FIG: iLayerNum > 1 and ExpectedFR is not set, behavior is undefined\n", v304, 16, v305);
        v306 = sub_175AE4();
        v483 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: iLayerNum > 1 and ExpectedFR is not set, behavior is undefined", v306, 16, v483);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: iLayerNum > 1 and ExpectedFR is not set, behavior is undefined", v304, 16, v305);
      }
    }

    if ((*(a1 + 1088) & 2) != 0)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v307 = sub_160F34(0x10u);
        v308 = sub_175AE4();
        v309 = sub_160F68(5);
        if (v307)
        {
          printf("%lld %d AVE %s: FIG: MV-HEVC force to disable FrameDrop\n", v308, 16, v309);
          v310 = sub_175AE4();
          v484 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: MV-HEVC force to disable FrameDrop", v310, 16, v484);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: MV-HEVC force to disable FrameDrop", v308, 16, v309);
        }
      }

      *(a1 + 1088) &= ~2uLL;
    }

    if (*(v43 + 80) == 1)
    {
      *(v43 + 80) = 0;
      *(v43 + 21) = 1;
      if (sub_160EF0(0x10u, 5))
      {
        v311 = sub_160F34(0x10u);
        v312 = sub_175AE4();
        v313 = sub_160F68(5);
        if (v311)
        {
          printf("%lld %d AVE %s: FIG: MV-HEVC force to Frame Encoding mode\n", v312, 16, v313);
          v314 = sub_175AE4();
          v485 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: MV-HEVC force to Frame Encoding mode", v314, 16, v485);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: MV-HEVC force to Frame Encoding mode", v312, 16, v313);
        }
      }
    }

    if (*(v2 + 28))
    {
      if (sub_160EF0(3u, 4))
      {
        v315 = sub_160F34(3u);
        v316 = sub_175AE4();
        v317 = sub_160F68(4);
        if (v315)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support Multipass\n", v316, 3, v317, "AVE_ValidateEncoderParameters", 4108, "false");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support Multipass");
      }

      return 4294965294;
    }

    if (*(a1 + 11776) == 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v318 = sub_160F34(3u);
        v319 = sub_175AE4();
        v320 = sub_160F68(4);
        if (v318)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support Parallelization\n", v319, 3, v320, "AVE_ValidateEncoderParameters", 4114, "false");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support Parallelization");
      }

      return 4294965294;
    }

    v321 = *(a1 + 1132);
    if (v321 == 4 || v321 == 2 && (*(a1 + 1123) & 0x80) == 0)
    {
      if (sub_160EF0(3u, 4))
      {
        v322 = sub_160F34(3u);
        v323 = sub_175AE4();
        v324 = sub_160F68(4);
        if (v322)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support DRL/CBR\n", v323, 3, v324, "AVE_ValidateEncoderParameters", 4122, "false");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support DRL/CBR");
      }

      return 4294965294;
    }

    if (*(a1 + 11460) >= 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v325 = sub_160F34(3u);
        v326 = sub_175AE4();
        v327 = sub_160F68(4);
        if (v325)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support BaseLayerFrameRate\n", v326, 3, v327, "AVE_ValidateEncoderParameters", 4128, "false");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support BaseLayerFrameRate");
      }

      return 4294965294;
    }

    if (*(a1 + 24688) != 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v333 = sub_160F34(3u);
        v334 = sub_175AE4();
        v335 = sub_160F68(4);
        if (v333)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support ChromaFmt_400, ChromaFmt_422, or ChromaFmt_444\n", v334, 3, v335, "AVE_ValidateEncoderParameters", 4135, "false");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support ChromaFmt_400, ChromaFmt_422, or ChromaFmt_444");
      }

      return 4294965294;
    }

    v328 = (a1 + 15575);
    *(a1 + 1240) &= ~0x400u;
    *(v43 + 352) = 1;
    if (*(a1 + 15575))
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v329 = sub_160F34(0x1Eu);
        v330 = sub_175AE4();
        v331 = sub_160F68(4);
        if (v329)
        {
          printf("%lld %d AVE %s: %s:%d %s | non-zero layer ID at base layer %d\n", v330, 30, v331, "AVE_ValidateEncoderParameters", 4145, "pINS->VPSHevcParams.layer_id_in_nuh[0] == 0", *v328);
          v330 = sub_175AE4();
          sub_160F68(4);
          v332 = *v328;
        }

        else
        {
          v517 = *v328;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | non-zero layer ID at base layer %d", v330);
      }

      return 4294965290;
    }

    if (*(a1 + 10556) >= 3u)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v341 = sub_160F34(0x1Eu);
        v342 = sub_175AE4();
        v343 = sub_160F68(4);
        v344 = *(a1 + 10556);
        if (v341)
        {
          printf("%lld %d AVE %s: %s:%d %s | video layer number %d is larger than MAX %d\n", v342, 30, v343, "AVE_ValidateEncoderParameters", 4150, "pINS->VideoParams.iLayerNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", *(a1 + 10556), 2);
          v342 = sub_175AE4();
          sub_160F68(4);
          v345 = *(a1 + 10556);
        }

        else
        {
          v518 = *(a1 + 10556);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | video layer number %d is larger than MAX %d", v342);
      }

      return 4294965291;
    }

    v336 = *(a1 + 15639);
    if (!*(a1 + 15639))
    {
      if (sub_160EF0(0x10u, 5))
      {
        v337 = sub_160F34(0x10u);
        v338 = sub_175AE4();
        v339 = sub_160F68(5);
        if (v337)
        {
          printf("%lld %d AVE %s: kVTCompressionPropertyKey_MVHEVCViewIDs never received, setting default values\n", v338, 16, v339);
          v340 = sub_175AE4();
          v486 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_MVHEVCViewIDs never received, setting default values", v340, 16, v486);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_MVHEVCViewIDs never received, setting default values", v338, 16, v339);
        }
      }

      v346 = *(a1 + 10556);
      *(a1 + 10560) = v346;
      v336 = 1;
      *(a1 + 15639) = 1;
      if (v346)
      {
        v347 = 0;
        do
        {
          *(a1 + 15640 + v347) = v347;
          *(a1 + 11808 + v347) = v347;
          ++v347;
        }

        while (v346 > v347);
        v336 = 1;
      }
    }

    v348 = 0;
    v349 = a1 + 11808;
    v350 = 1;
    while (2)
    {
      v351 = 0;
      v352 = v350;
      while (*(v349 + v348) != *(a1 + 15640 + v351))
      {
        if (v336 < ++v351)
        {
          if (sub_160EF0(3u, 4))
          {
            v457 = sub_160F34(3u);
            v458 = sub_175AE4();
            v459 = sub_160F68(4);
            if (v457)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: LeftRightID %d not found in viewID list\n", v458, 3, v459, "AVE_ValidateEncoderParameters", 4179, "bFound", *(v349 + v348));
              v458 = sub_175AE4();
              sub_160F68(4);
              v460 = *(v349 + v348);
            }

            else
            {
              v526 = *(v349 + v348);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: LeftRightID %d not found in viewID list", v458);
          }

          return 4294965289;
        }
      }

      v350 = 0;
      v348 = 1;
      if (v352)
      {
        continue;
      }

      break;
    }

    *(v43 + 686) = 1;
    v240 = a1 + 24248;
  }

  if (*(v2 + 1836) >= 1)
  {
    v353 = *(a1 + 11460);
    if (v353 >= 1 && v353 < *(a1 + 1112))
    {
      goto LABEL_593;
    }
  }

  if (*(a1 + 1260) <= 2 || *(a1 + 1256) < 3)
  {
    goto LABEL_642;
  }

  v353 = *(a1 + 11460);
  if (v353 < 1)
  {
    v357 = 1;
  }

  else
  {
LABEL_593:
    v354 = *(a1 + 1112);
    v355 = -1;
    do
    {
      v356 = v354 >> (v355++ + 2);
    }

    while (v356 >= v353);
    v357 = v355 + 1;
    if (v353 << v355 != v354)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v358 = sub_160F34(0x10u);
        v555 = sub_175AE4();
        v359 = sub_160F68(5);
        v360 = *(a1 + 16);
        v361 = *(a1 + 1112);
        v362 = *(a1 + 11460);
        if (v358)
        {
          printf("%lld %d AVE %s: FIG: %p: ExpectedFrameRate %d is not multiple of BaseLayerFrameRate %d\n", v555, 16, v359, v360, *(a1 + 1112), v362);
          v363 = sub_175AE4();
          v364 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: %p: ExpectedFrameRate %d is not multiple of BaseLayerFrameRate %d", v363, 16, v364, *(a1 + 16), *(a1 + 1112), *(a1 + 11460));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: %p: ExpectedFrameRate %d is not multiple of BaseLayerFrameRate %d", v555, 16, v359, v360, *(a1 + 1112), v362);
        }
      }

      v353 = *(a1 + 1112) >> v355;
      *(a1 + 11460) = v353;
    }
  }

  v365 = *(a1 + 1288);
  if (v365 > 1)
  {
    if (v353 <= 0)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v366 = sub_160F34(0x10u);
        v367 = sub_175AE4();
        v368 = sub_160F68(5);
        v369 = *(a1 + 1288);
        if (v366)
        {
          printf("%lld %d AVE %s: FIG: NumOfTempLayer set to %d but BaseLayerFrameRate not specified. Encoder has to turn off hierarchical encoding\n", v367, 16, v368, v369);
          v370 = sub_175AE4();
          v487 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: NumOfTempLayer set to %d but BaseLayerFrameRate not specified. Encoder has to turn off hierarchical encoding", v370, 16, v487, *(a1 + 1288));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: NumOfTempLayer set to %d but BaseLayerFrameRate not specified. Encoder has to turn off hierarchical encoding", v367, 16, v368, v369);
        }
      }

      v365 = 1;
      *(a1 + 1288) = 1;
    }

    v371 = v365 == v357;
    v365 = v357;
    if (!v371)
    {
      v372 = sub_160EF0(0x10u, 5);
      v365 = v357;
      if (v372)
      {
        v373 = sub_160F34(0x10u);
        v374 = sub_175AE4();
        v375 = sub_160F68(5);
        if (v373)
        {
          printf("%lld %d AVE %s: FIG: NumberOfTemporalLayers value is not optimal. Overriding with optimal value. calculatedNumTemporalLayers %d\n", v374, 16, v375, v357);
          v376 = sub_175AE4();
          v488 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: NumberOfTemporalLayers value is not optimal. Overriding with optimal value. calculatedNumTemporalLayers %d", v376, 16, v488, v357);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: NumberOfTemporalLayers value is not optimal. Overriding with optimal value. calculatedNumTemporalLayers %d", v374, 16, v375, v357);
        }

        v365 = v357;
      }
    }
  }

  if (v365 <= v357)
  {
    v377 = v357;
  }

  else
  {
    v377 = v365;
  }

  *(a1 + 1288) = v377;
  if (*(a1 + 10556) >= 2u && v377 >= 2)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v378 = sub_160F34(0x10u);
      v379 = sub_175AE4();
      v380 = sub_160F68(5);
      v381 = *(a1 + 1288);
      if (v378)
      {
        printf("%lld %d AVE %s: NumberOfTemporalLayers is %d and we are encoding multiple layers. Setting NumberOfTemporalLayers to 1\n", v379, 16, v380, v381);
        v382 = sub_175AE4();
        v489 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: NumberOfTemporalLayers is %d and we are encoding multiple layers. Setting NumberOfTemporalLayers to 1", v382, 16, v489, *(a1 + 1288));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: NumberOfTemporalLayers is %d and we are encoding multiple layers. Setting NumberOfTemporalLayers to 1", v379, 16, v380, v381);
      }
    }

    v377 = 1;
  }

  if (((*(v2 + 3080) | *(v2 + 3076)) & 0x400) == 0)
  {
    v383 = *(a1 + 1240);
    if ((v383 & 0x400) != 0 && v377 >= 3)
    {
      *(a1 + 1240) = v383 & 0xFFFFFBFF;
    }
  }

  if (v377 >= 3)
  {
    v384 = 3;
  }

  else
  {
    v384 = v377;
  }

  if ((*(a1 + 1444) * *(a1 + 1440)) > 0x7E8FFF)
  {
    v377 = v384;
  }

  if (v377 >= 4)
  {
    v377 = 4;
  }

  *(a1 + 1288) = v377;
  *(a1 + 39872) = 1;
  *(v64 + 575) = 0;
  v240 = a1 + 24248;
  if (!*(a1 + 1256))
  {
    *(a1 + 1240) &= ~0x400u;
    if (*(a1 + 76) <= 3 && *(a1 + 692) == 1)
    {
      *(v64 + 575) = 3;
    }

    v240 = a1 + 24248;
    if (*(a1 + 1112) == *(a1 + 11460))
    {
      *(a1 + 1288) = 1;
      *(a1 + 11460) = 0;
    }
  }

LABEL_642:
  v385 = *(a1 + 1288);
  if (v385 >= 2 || (v385 = *(v2 + 2088), v385 >= 2))
  {
    v386 = v385 - 1;
    *v240 = v386;
    *(a1 + 12012) = v386;
  }

  v387 = sub_FB108(*(v3 + 256), *(v2 + 3200), *(a1 + 68), *(a1 + 76), *(a1 + 64), 2, *(v240 + 440), *(v2 + 1524), *(a1 + 10892), *(a1 + 692), *(a1 + 1112) * ((*(a1 + 1440) + 15) >> 4) * ((*(a1 + 1444) + 15) >> 4), *(a1 + 1440), *(a1 + 1444));
  *(a1 + 1368) = v387;
  v388 = *(a1 + 76);
  if (v388 >= 30)
  {
    *(v240 + 588) = 3;
    if (!*(a1 + 692) && *(v2 + 1524) >= 1)
    {
      *(a1 + 688) |= 0x100u;
      *(a1 + 1256) = 0;
      *(a1 + 1240) &= 0xFFFFFAFF;
    }

    if ((v387 & 0xFFFFFFFE) == 2)
    {
      *(a1 + 39885) = 1;
    }
  }

  if (*(a1 + 1264) <= 0 && *(a1 + 1268) <= 0 && *(a1 + 1272) <= 0.0 && *(a1 + 1280) <= 0.0)
  {
    *(a1 + 1264) = 30;
  }

  if (*(a1 + 1288) == 1)
  {
    *(v43 + 1848) = 1;
    *(v240 + 4) = 1;
  }

  if (!*(a1 + 1256))
  {
    *(a1 + 1240) &= ~0x400u;
  }

  if (((*(v2 + 3080) | *(v2 + 3076)) & 0x400) == 0)
  {
    v389 = *(a1 + 1240);
    if ((v389 & 0x400) != 0 && (*(a1 + 1123) & 0x80) != 0)
    {
      *(a1 + 1240) = v389 & 0xFFFFFBFF;
    }
  }

  v390 = *(v3 + 257);
  if (v390 <= 5)
  {
    *(v64 + 575) = 5 - v390;
  }

  if (v388 <= 3)
  {
    if (*(v43 + 37) == 1)
    {
      *(v43 + 37) = 0;
    }

    *(v43 + 36) = 0;
  }

  else
  {
    *(v43 + 37) = 1;
  }

  v391 = *(a1 + 692);
  if (v391 == 1)
  {
    *(a1 + 688) &= ~2u;
  }

  if (*(a1 + 10804) == 1 && *(v43 + 681) == 1)
  {
    *(v43 + 681) = 0;
  }

  v392 = *(a1 + 1120);
  if ((v392 & 0x10) != 0)
  {
    *(a1 + 1112) = *(a1 + 11448);
    *(a1 + 1240) &= ~0x400u;
  }

  if ((*(a1 + 716) & 0x3C0) == 0)
  {
    goto LABEL_728;
  }

  *(a1 + 688) |= 0x100u;
  *(a1 + 1096) |= 0x4000000000uLL;
  if (!*(v43 + 363))
  {
    *(v43 + 363) = 3;
  }

  *(a1 + 42028) = 0;
  *(v64 + 669) = 0;
  *(v43 + 4) = 1;
  *(v43 + 362) = 1;
  if (*(a1 + 10552) == 1)
  {
    *(a1 + 1256) = 0x100000000;
    *(a1 + 1288) = 1;
    *(a1 + 1240) &= ~0x400u;
  }

  if (v388 > 29 || v388 == 28)
  {
    if (v388 > 0x1E)
    {
      if (*(a1 + 24688))
      {
LABEL_697:
        if (v391 >= 1 && (v392 & 0x10) == 0)
        {
          v397 = vshr_n_u32(vadd_s32(*(a1 + 1440), 0x1F0000001FLL), 5uLL);
          if ((*(a1 + 1112) * v397.i32[0] * v397.i32[1]) >= 0x45BA1)
          {
            if (sub_160EF0(0x10u, 5))
            {
              v398 = sub_160F34(0x10u);
              v399 = sub_175AE4();
              v400 = sub_160F68(5);
              v401 = *(a1 + 1444);
              if (v398)
              {
                printf("%lld %d AVE %s: %s:%d Disable B frames for encoding %dx%d frames at %dfps with MCTF to achieve realtime performance.\n", v399, 16, v400, "AVE_ValidateEncoderParameters", 4530, *(a1 + 1440), *(a1 + 1444), *(a1 + 1112));
                v399 = sub_175AE4();
                sub_160F68(5);
                v402 = *(a1 + 1440);
                v519 = *(a1 + 1444);
                v534 = *(a1 + 1112);
              }

              else
              {
                v520 = *(a1 + 1444);
              }

              syslog(3, "%lld %d AVE %s: %s:%d Disable B frames for encoding %dx%d frames at %dfps with MCTF to achieve realtime performance.", v399);
            }

            *(a1 + 1256) = 0;
            *(a1 + 1240) &= 0xFFFFFAFF;
          }
        }

        v396 = *(a1 + 11812);
        if (v396 < 0)
        {
          v396 = *(a1 + 10804) != 2 || *(a1 + 692) <= 0;
        }

        *(a1 + 1392) = v396;
        if (*(a1 + 1396) == -1 && *(a1 + 10804) == 2 && *(a1 + 692) >= 1)
        {
          *(a1 + 1396) = 5;
        }

        goto LABEL_721;
      }

LABEL_704:
      if (!sub_160EF0(3u, 4))
      {
        return 4294966295;
      }

      v403 = sub_160F34(3u);
      v60 = sub_175AE4();
      v404 = sub_160F68(4);
      if (v403)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: MCTF for ChromaFmt %d... not supported. Fail\n", v60, 3, v404, "AVE_ValidateEncoderParameters", 4512, "false", *(v556 + 440));
        v60 = sub_175AE4();
        v404 = sub_160F68(4);
        v494 = "false";
        v508 = *(v556 + 440);
        v493 = 4512;
      }

      else
      {
        v508 = *(v556 + 440);
        v493 = 4512;
        v494 = "false";
      }

      v467 = v404;
      v63 = "%lld %d AVE %s: %s:%d %s | FIG: MCTF for ChromaFmt %d... not supported. Fail";
      goto LABEL_157;
    }
  }

  else if (*(a1 + 10556) >= 2u)
  {
    if (sub_160EF0(3u, 4))
    {
      v393 = sub_160F34(3u);
      v394 = sub_175AE4();
      v395 = sub_160F68(4);
      if (v393)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: MCTF unsupported for MV-HEVC. Fail\n", v394, 3, v395, "AVE_ValidateEncoderParameters", 4501, "false");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MCTF unsupported for MV-HEVC. Fail");
    }

    return 4294966295;
  }

  if (*(a1 + 24688) != 1)
  {
    goto LABEL_704;
  }

  if (v388 >= 30)
  {
    goto LABEL_697;
  }

  v396 = *(a1 + 11812);
  if (v396 < 0)
  {
    v396 = 1;
  }

  *(a1 + 1392) = v396;
  if (v388 != 28)
  {
    *(a1 + 1448) &= ~0x2000000uLL;
  }

LABEL_721:
  if (*(a1 + 1396) >= 1 && v396 == 1)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v405 = sub_160F34(0x10u);
      v406 = sub_175AE4();
      v407 = sub_160F68(5);
      v408 = *(a1 + 16);
      v409 = *(a1 + 1392);
      v410 = *(a1 + 1396);
      if (v405)
      {
        printf("%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)\n", v406, 16, v407, v408, *(a1 + 1392), v410);
        v411 = sub_175AE4();
        v412 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)", v411, 16, v412, *(a1 + 16), *(a1 + 1392), *(a1 + 1396));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)", v406, 16, v407, v408, *(a1 + 1392), v410);
      }
    }

    *(a1 + 1396) = -1;
  }

LABEL_728:
  v413 = *(a1 + 1120);
  if ((v413 & 0x80000000) != 0 && *(a1 + 76) >= 9)
  {
    *(v43 + 4) = 1;
    *(v43 + 362) = 1;
  }

  v414 = *(v43 + 4);
  if (*(v43 + 4))
  {
    v415 = 0x10000;
  }

  else
  {
    v415 = 0;
  }

  *(a1 + 1240) = *(a1 + 1240) & 0xFFFEFFFF | v415;
  if ((*(a1 + 1296) & 1) != 0 && (!v414 || *(a1 + 11476) > 0 || (v413 & 0x80000000) != 0 || *(a1 + 10556) > 1u || *(v2 + 28) || *(a1 + 1368) >= 5))
  {
    if (sub_160EF0(0x10u, 5))
    {
      v416 = sub_160F34(0x10u);
      v417 = sub_175AE4();
      v418 = sub_160F68(5);
      if (v416)
      {
        printf("%lld %d AVE %s: FIG: Force to disable Weighted Prediction\n", v417, 16, v418);
        v419 = sub_175AE4();
        v490 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: Force to disable Weighted Prediction", v419, 16, v490);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: Force to disable Weighted Prediction", v417, 16, v418);
      }
    }

    *(a1 + 10200) = 0;
    *(a1 + 1296) &= ~1u;
    *(a1 + 39957) = 0;
    *(a1 + 48356) = 0;
  }

  if (*(v43 + 80) == 1)
  {
    v420 = *(v43 + 21);
    if (v420 == 1)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v421 = sub_160F34(0x10u);
        v422 = sub_175AE4();
        v423 = sub_160F68(5);
        if (v421)
        {
          printf("%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode\n", v422, 16, v423);
          v424 = sub_175AE4();
          v491 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode", v424, 16, v491);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode", v422, 16, v423);
        }
      }

      *(v43 + 80) = 0;
      v420 = *(v43 + 21);
    }

    if (v420)
    {
      v425 = 0;
      v426 = (v420 - 1);
      v427 = (a1 + 10260);
      while (1)
      {
        if (v426 == v425)
        {
          v428 = *(a1 + 10260 + 8 * v426);
          if (v428 < 96)
          {
            break;
          }
        }

        else
        {
          v428 = *v427;
          if (*v427 < 128)
          {
            break;
          }
        }

        if ((v428 + *(v427 - 1)) > *(a1 + 1444))
        {
          break;
        }

        ++v425;
        v427 += 2;
        if (v420 == v425)
        {
          goto LABEL_768;
        }
      }

      if (sub_160EF0(0x10u, 5))
      {
        v429 = sub_160F34(0x10u);
        v430 = sub_175AE4();
        v431 = sub_160F68(5);
        v432 = *v427;
        if (v429)
        {
          printf("%lld %d AVE %s: FIG: Slice Parameters Invalid. slice[%d] iY: %d, iHeight: %d, frame height: %d, Force to Frame Encoding\n", v430, 16, v431, v425, *(v427 - 1), *v427, *(a1 + 1444));
          v430 = sub_175AE4();
          sub_160F68(5);
          v433 = *(v427 - 1);
          v506 = *v427;
          v521 = *(a1 + 1444);
        }

        else
        {
          v507 = *v427;
        }

        syslog(3, "%lld %d AVE %s: FIG: Slice Parameters Invalid. slice[%d] iY: %d, iHeight: %d, frame height: %d, Force to Frame Encoding", v430);
      }

      *(v43 + 80) = 0;
      *(v43 + 42) = 1;
      *(a1 + 10260) = *(a1 + 1444);
    }
  }

LABEL_768:
  v434 = *(a1 + 76);
  if (v434 >= 9)
  {
    v435 = 2;
    if (v434 <= 0x1E && ((1 << v434) & 0x48821000) != 0)
    {
      if (*(a1 + 10892))
      {
        v435 = 2;
      }

      else
      {
        v435 = 5;
      }
    }
  }

  else
  {
    v435 = 5;
  }

  *(v43 + 396) = v435;
  v436 = *(a1 + 1336);
  if (v436)
  {
    *(a1 + 39886) = ((v43[345] & 1) == 0) | BYTE2(v436) & 1;
  }

  else
  {
    *(a1 + 39886) = 0;
  }

  v437 = *(a1 + 716) | 0x3E;
  *(a1 + 716) = v437;
  if (!*(v43 + 363))
  {
    *(a1 + 716) = v437 & 0xFFFFFFF7;
  }

  *(a1 + 1096) = (*(v3 + 123) | *(a1 + 1096) & ~*(v2 + 3164)) & ~*(v3 + 124);
  if (sub_17D0E0(*(a1 + 1144), *(a1 + 24732) + 8))
  {
    if (sub_160EF0(3u, 4))
    {
      v438 = sub_160F34(3u);
      v439 = sub_175AE4();
      v440 = sub_160F68(4);
      if (v438)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpI %d\n", v439, 3, v440, "AVE_ValidateEncoderParameters", 4725, "false", *(a1 + 1144));
        v439 = sub_175AE4();
        sub_160F68(4);
      }

      v522 = *(a1 + 1144);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpI %d", v439);
    }

    return 4294966295;
  }

  if (sub_17D0E0(*(a1 + 1148), *(a1 + 24732) + 8))
  {
    if (sub_160EF0(3u, 4))
    {
      v441 = sub_160F34(3u);
      v442 = sub_175AE4();
      v443 = sub_160F68(4);
      if (v441)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpP %d\n", v442, 3, v443, "AVE_ValidateEncoderParameters", 4730, "false", *(a1 + 1148));
        v442 = sub_175AE4();
        sub_160F68(4);
      }

      v523 = *(a1 + 1148);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpP %d", v442);
    }

    return 4294966295;
  }

  if (sub_17D0E0(*(a1 + 1152), *(a1 + 24732) + 8))
  {
    if (sub_160EF0(3u, 4))
    {
      v444 = sub_160F34(3u);
      v445 = sub_175AE4();
      v446 = sub_160F68(4);
      if (v444)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpB %d\n", v445, 3, v446, "AVE_ValidateEncoderParameters", 4735, "false", *(a1 + 1152));
        v445 = sub_175AE4();
        sub_160F68(4);
      }

      v524 = *(a1 + 1152);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpB %d", v445);
    }

    return 4294966295;
  }

  v447 = *(a1 + 1264) != 1 || *(a1 + 10560) != 1;
  if (sub_14E248(*(a1 + 68), 1, 2, *(a1 + 1440), *(a1 + 1444), v447))
  {
    if (sub_160EF0(3u, 4))
    {
      v448 = sub_160F34(3u);
      v449 = sub_175AE4();
      v450 = sub_160F68(4);
      v451 = *(a1 + 1444);
      if (v448)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: dimensions (%dx%d) not supported %d.\n", v449, 3, v450, "AVE_ValidateEncoderParameters", 4748, "false", *(a1 + 1440), *(a1 + 1444), *(a1 + 1264));
        v449 = sub_175AE4();
        sub_160F68(4);
      }

      v535 = *(a1 + 1444);
      v541 = *(a1 + 1264);
      v525 = *(a1 + 1440);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: dimensions (%dx%d) not supported %d.", v449, 3);
    }

    return 4294966295;
  }

  if ((*(a1 + 39961) & 1) == 0 && *(a1 + 76) <= 29)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v452 = sub_160F34(0x10u);
      v453 = sub_175AE4();
      v454 = sub_160F68(5);
      if (v452)
      {
        printf("%lld %d AVE %s: %s:%d entropy_coding_sync_enabled_flag has to be enabled.\n", v453, 16, v454, "AVE_ValidateEncoderParameters", 4757);
        v455 = sub_175AE4();
        v492 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: %s:%d entropy_coding_sync_enabled_flag has to be enabled.", v455, 16, v492, "AVE_ValidateEncoderParameters", 4757);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d entropy_coding_sync_enabled_flag has to be enabled.", v453, 16, v454, "AVE_ValidateEncoderParameters", 4757);
      }
    }

    *(a1 + 39961) = 1;
  }

  if (*(v2 + 1832) <= 0 && *(v2 + 1984) < 1)
  {
    return 0;
  }

  v461 = *(a1 + 11460);
  if (v461 < 1)
  {
    return 0;
  }

  v462 = *(a1 + 1112);
  if (v461 > v462)
  {
    return 0;
  }

  v19 = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1252) = v462 / v461;
  *(a1 + 1256) = 0x200000000;
  *(a1 + 1288) = 1;
  return v19;
}

void sub_107808(uint64_t a1, __CVBuffer *a2)
{
  if (sub_160EF0(0xCu, 7))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareVideoAndSequenceHeader\n", v5, 12, v6);
      v7 = sub_175AE4();
      v304 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareVideoAndSequenceHeader", v7, 12, v304);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareVideoAndSequenceHeader", v5, 12, v6);
    }
  }

  if (!a2)
  {
    if (sub_160EF0(3u, 4))
    {
      v11 = sub_160F34(3u);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: imageBuffer = NULL.\n", v12, 3, v13, "AVE_PrepareVideoAndSequenceHeader", 1995, "imageBuffer != __null");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: imageBuffer = NULL.");
    }

    goto LABEL_270;
  }

  v8 = *(a1 + 10808);
  v9 = *(a1 + 1336);
  v10 = a1 + 31332;
  memset(v371, 0, sizeof(v371));
  if (v8 > 7)
  {
    if (v8 == 8)
    {
      if ((v9 & 0x8000000) != 0)
      {
        v367 = xmmword_190EA0;
        v368 = unk_190EB0;
        v369 = xmmword_190EC0;
        v370 = unk_190ED0;
        v363 = xmmword_190E60;
        v364 = unk_190E70;
        v365 = xmmword_190E80;
        v366 = unk_190E90;
        v359 = xmmword_190E20;
        v360 = unk_190E30;
        v361 = xmmword_190E40;
        v362 = unk_190E50;
        v14 = &unk_190EE0;
      }

      else
      {
        v367 = xmmword_191860;
        v368 = unk_191870;
        v369 = xmmword_191880;
        v370 = unk_191890;
        v363 = xmmword_191820;
        v364 = unk_191830;
        v365 = xmmword_191840;
        v366 = unk_191850;
        v359 = xmmword_1917E0;
        v360 = unk_1917F0;
        v361 = xmmword_191800;
        v362 = unk_191810;
        v14 = &unk_1918A0;
      }

      goto LABEL_16;
    }

    if (v8 != 9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v8 == 1)
    {
      *(a1 + 24856) = 1;
      goto LABEL_107;
    }

    if (v8 != 2)
    {
LABEL_9:
      *(a1 + 24856) = 0;
      goto LABEL_107;
    }
  }

  v367 = xmmword_192220;
  v368 = unk_192230;
  v369 = xmmword_192240;
  v370 = unk_192250;
  v363 = xmmword_1921E0;
  v364 = unk_1921F0;
  v365 = xmmword_192200;
  v366 = unk_192210;
  v359 = xmmword_1921A0;
  v360 = unk_1921B0;
  v361 = xmmword_1921C0;
  v362 = unk_1921D0;
  v14 = &unk_192260;
LABEL_16:
  memcpy(__dst, v14, sizeof(__dst));
  v15 = 0;
  *(a1 + 24856) = 257;
  v16 = a1 + 24908;
  v17 = a1 + 25004;
  do
  {
    for (i = 0; i != 6; ++i)
    {
      *(v16 + 4 * i) = 0;
      *(v17 + i) = 1;
    }

    ++v15;
    v17 += 6;
    v16 += 24;
  }

  while (v15 != 4);
  v19 = 0;
  v20 = 1;
  do
  {
    v21 = 0;
    v22 = v20;
    v23 = a1 + 25028 + (v19 << 7);
    do
    {
      v24 = 0;
      v25 = v21 + v19;
      v26 = &byte_190D81;
      do
      {
        v27 = *(v26 - 1);
        v28 = *v26;
        v26 += 2;
        *(v371 + v24++) = *(&v359 + 16 * v21 + 16 * v19 + 4 * v28 + v27);
      }

      while (v24 != 16);
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v371 + v29);
        v32 = v31 - v30;
        if ((v31 - v30) <= 0)
        {
          v33 = 256;
        }

        else
        {
          v33 = -256;
        }

        v34 = v33 + v32;
        if ((v31 - v30) != v32)
        {
          v32 = v34;
        }

        *(v23 + 2 * v29) = v32;
        v35 = (v30 + v32);
        if (v35 != v31)
        {
          if (sub_160EF0(3u, 4))
          {
            v84 = sub_160F34(3u);
            v85 = sub_175AE4();
            v86 = sub_160F68(4);
            if (v84)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d\n", v85, 3, v86, "AVE_HEVC_set_default_scaling_lists", 1744, "nextCoef == ScalingList[i]", v35, v29, v31);
              v85 = sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d", v85, 3);
          }

          goto LABEL_107;
        }

        if (v31 <= 5)
        {
          if (sub_160EF0(3u, 4))
          {
            v87 = sub_160F34(3u);
            v88 = sub_175AE4();
            v89 = sub_160F68(4);
            if (v87)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v88, 3, v89, "AVE_HEVC_set_default_scaling_lists", 1745, "(nextCoef >= 6 && nextCoef <= 255)", v31);
              v88 = sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)", v88);
          }

          goto LABEL_107;
        }

        if (v32 != v32)
        {
          if (sub_160EF0(3u, 4))
          {
            v90 = sub_160F34(3u);
            v91 = sub_175AE4();
            v92 = sub_160F68(4);
            if (v90)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)\n", v91, 3, v92, "AVE_HEVC_set_default_scaling_lists", 1746, "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)", 0, v25, v29, *(v23 + 2 * v29));
              v91 = sub_175AE4();
              sub_160F68(4);
              v351 = *(v23 + 2 * v29);
            }

            else
            {
              v352 = *(v23 + 2 * v29);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v91, 3);
          }

          goto LABEL_107;
        }

        ++v29;
        v30 = v31;
      }

      while (v29 != 16);
      ++v21;
      v23 += 128;
    }

    while (v21 != 3);
    v20 = 0;
    v19 = 3;
  }

  while ((v22 & 1) != 0);
  v36 = 0;
  v37 = 1;
  do
  {
    v38 = 0;
    v39 = v37;
    v40 = a1 + 25796 + (v36 << 7);
    do
    {
      v41 = 0;
      v42 = v38 + v36;
      v43 = &byte_190DA1;
      do
      {
        v44 = *(v43 - 1);
        v45 = *v43;
        v43 += 2;
        *(v371 + v41++) = *&__dst[128 * v38 + 128 * v36 + 16 * v45 + 2 * v44];
      }

      while (v41 != 64);
      v46 = 0;
      v47 = 8;
      do
      {
        v48 = *(v371 + v46);
        v49 = v48 - v47;
        if ((v48 - v47) <= 0)
        {
          v50 = 256;
        }

        else
        {
          v50 = -256;
        }

        v51 = v50 + v49;
        if ((v48 - v47) != v49)
        {
          v49 = v51;
        }

        *(v40 + 2 * v46) = v49;
        v52 = (v47 + v49);
        if (v52 != v48)
        {
          v10 = a1 + 31332;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_107;
          }

          v264 = sub_160F34(3u);
          v265 = sub_175AE4();
          v266 = sub_160F68(4);
          if (v264)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d\n", v265, 3, v266, "AVE_HEVC_set_default_scaling_lists", 1783, "nextCoef == ScalingList[i]", v52, v46, v48);
            v265 = sub_175AE4();
            sub_160F68(4);
          }

LABEL_376:
          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d", v265, 3);
          goto LABEL_387;
        }

        if (v48 <= 5)
        {
          v10 = a1 + 31332;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_107;
          }

          v267 = sub_160F34(3u);
          v268 = sub_175AE4();
          v269 = sub_160F68(4);
          if (v267)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v268, 3, v269, "AVE_HEVC_set_default_scaling_lists", 1784, "(nextCoef >= 6 && nextCoef <= 255)", v48);
            v270 = sub_175AE4();
            sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)", v270);
            goto LABEL_387;
          }

          goto LABEL_396;
        }

        if (v49 != v49)
        {
          v10 = a1 + 31332;
          if (sub_160EF0(3u, 4))
          {
            v271 = sub_160F34(3u);
            v272 = sub_175AE4();
            v273 = sub_160F68(4);
            if (!v271)
            {
              v354 = *(v40 + 2 * v46);
              goto LABEL_386;
            }

            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)\n", v272, 3, v273, "AVE_HEVC_set_default_scaling_lists", 1785, "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)", 1, v42, v46, *(v40 + 2 * v46));
            v274 = sub_175AE4();
            sub_160F68(4);
            v353 = *(v40 + 2 * v46);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v274, 3);
LABEL_387:
            v10 = a1 + 31332;
          }

          goto LABEL_107;
        }

        ++v46;
        v47 = v48;
      }

      while (v46 != 64);
      ++v38;
      v40 += 128;
    }

    while (v38 != 3);
    v37 = 0;
    v36 = 3;
  }

  while ((v39 & 1) != 0);
  v53 = 0;
  v54 = 1;
  while (2)
  {
    v55 = 0;
    v56 = v54;
    v57 = a1 + 26564 + (v53 << 7);
    while (2)
    {
      v58 = v55 + v53;
      v59 = *&__dst[128 * (v55 + v53) + 768];
      v60 = *&__dst[128 * (v55 + v53) + 768];
      *(a1 + 24860 + 4 * (v55 + v53)) = v60 - 8;
      if (v59 != v59)
      {
        v10 = a1 + 31332;
        if (sub_160EF0(3u, 4))
        {
          v284 = sub_160F34(3u);
          v285 = sub_175AE4();
          v286 = sub_160F68(4);
          if (v284)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d\n", v285, 3, v286, "AVE_HEVC_set_default_scaling_lists", 1807, "nextCoef == LocalExplicitScalingList[sizeId-1][matrixId][0]", v59, 1, v58, v60);
            v287 = sub_175AE4();
            sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d", v287, 3);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d", v285, 3);
          }

          goto LABEL_387;
        }

        goto LABEL_107;
      }

      if ((v60 - 6) > 0xF9)
      {
        v10 = a1 + 31332;
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_107;
        }

        v288 = sub_160F34(3u);
        v268 = sub_175AE4();
        v289 = sub_160F68(4);
        if (v288)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v268, 3, v289, "AVE_HEVC_set_default_scaling_lists", 1808, "(nextCoef >= 6 && nextCoef <= 255)", v60);
          v268 = sub_175AE4();
          sub_160F68(4);
        }

LABEL_396:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)", v268);
        goto LABEL_387;
      }

      v61 = 0;
      v62 = &byte_190DA1;
      do
      {
        v63 = *(v62 - 1);
        v64 = *v62;
        v62 += 2;
        *(v371 + v61++) = *&__dst[128 * v58 + 768 + 16 * v64 + 2 * v63];
      }

      while (v61 != 64);
      for (j = 0; j != 64; ++j)
      {
        v66 = *(v371 + j);
        v67 = v66 - v60;
        if ((v66 - v60) <= 0)
        {
          v68 = 256;
        }

        else
        {
          v68 = -256;
        }

        if ((v66 - v60) != v67)
        {
          v67 = v68 + v66 - v60;
        }

        *(v57 + 2 * j) = v67;
        v69 = (v67 + v60);
        if (v69 != v66)
        {
          v10 = a1 + 31332;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_107;
          }

          v275 = sub_160F34(3u);
          v265 = sub_175AE4();
          v276 = sub_160F68(4);
          if (v275)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d\n", v265, 3, v276, "AVE_HEVC_set_default_scaling_lists", 1831, "nextCoef == ScalingList[i]", v69, j, v66);
LABEL_391:
            v265 = sub_175AE4();
            sub_160F68(4);
          }

          goto LABEL_376;
        }

        if (v66 <= 5)
        {
          v10 = a1 + 31332;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_107;
          }

          v277 = sub_160F34(3u);
          v268 = sub_175AE4();
          v278 = sub_160F68(4);
          if (v277)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v268, 3, v278, "AVE_HEVC_set_default_scaling_lists", 1832, "(nextCoef >= 6 && nextCoef <= 255)", v66);
LABEL_395:
            v268 = sub_175AE4();
            sub_160F68(4);
          }

          goto LABEL_396;
        }

        if (v67 != v67)
        {
          v10 = a1 + 31332;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_107;
          }

          v279 = sub_160F34(3u);
          v280 = sub_175AE4();
          v281 = sub_160F68(4);
          if (v279)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)\n", v280, 3, v281, "AVE_HEVC_set_default_scaling_lists", 1833, "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)", 2, v58, j, *(v57 + 2 * j));
            v282 = sub_175AE4();
            sub_160F68(4);
            v355 = *(v57 + 2 * j);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v282, 3);
            goto LABEL_387;
          }

          v346 = j;
          v350 = *(v57 + 2 * j);
          v332 = 2;
          v334 = v58;
          v314 = 1833;
          v317 = "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)";
          v311 = v281;
          v283 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)";
          goto LABEL_403;
        }

        LOWORD(v60) = v66;
      }

      ++v55;
      v57 += 128;
      if (v55 != 3)
      {
        continue;
      }

      break;
    }

    v54 = 0;
    v53 = 3;
    if (v56)
    {
      continue;
    }

    break;
  }

  v70 = 0;
  v71 = 1;
  v10 = a1 + 31332;
LABEL_71:
  v72 = *&__dst[128 * v70 + 1536];
  v73 = v71;
  v74 = *&__dst[128 * v70 + 1536];
  *(a1 + 24884 + 4 * v70) = v74 - 8;
  if (v72 == v72)
  {
    if ((v74 - 6) <= 0xF9)
    {
      v75 = 0;
      v76 = &byte_190DA1;
      do
      {
        v77 = *(v76 - 1);
        v78 = *v76;
        v76 += 2;
        *(v371 + v75++) = *&__dst[128 * v70 + 1536 + 16 * v78 + 2 * v77];
      }

      while (v75 != 64);
      v79 = 0;
      while (1)
      {
        v80 = *(v371 + v79);
        v81 = v80 - v74;
        if ((v80 - v74) <= 0)
        {
          v82 = 256;
        }

        else
        {
          v82 = -256;
        }

        if ((v80 - v74) != v81)
        {
          v81 = v82 + v80 - v74;
        }

        *(a1 + 27332 + (v70 << 7) + 2 * v79) = v81;
        v83 = (v81 + v74);
        if (v83 != v80)
        {
          v10 = a1 + 31332;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_107;
          }

          v290 = sub_160F34(3u);
          v265 = sub_175AE4();
          v291 = sub_160F68(4);
          if (v290)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d\n", v265, 3, v291, "AVE_HEVC_set_default_scaling_lists", 1878, "nextCoef == ScalingList[i]", v83, v79, v80);
            goto LABEL_391;
          }

          goto LABEL_376;
        }

        if (v80 <= 5)
        {
          v10 = a1 + 31332;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_107;
          }

          v292 = sub_160F34(3u);
          v268 = sub_175AE4();
          v293 = sub_160F68(4);
          if (v292)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v268, 3, v293, "AVE_HEVC_set_default_scaling_lists", 1879, "(nextCoef >= 6 && nextCoef <= 255)", v80);
            goto LABEL_395;
          }

          goto LABEL_396;
        }

        if (v81 != v81)
        {
          break;
        }

        ++v79;
        LOWORD(v74) = v80;
        if (v79 == 64)
        {
          v71 = 0;
          v70 = 3;
          if (v73)
          {
            goto LABEL_71;
          }

          goto LABEL_107;
        }
      }

      v10 = a1 + 31332;
      if (!sub_160EF0(3u, 4))
      {
        goto LABEL_107;
      }

      v294 = a1 + (v70 << 7) + 27332;
      v295 = sub_160F34(3u);
      v272 = sub_175AE4();
      v296 = sub_160F68(4);
      if (v295)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)\n", v272, 3, v296, "AVE_HEVC_set_default_scaling_lists", 1880, "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)", 3, v70, v79, *(v294 + 2 * v79));
        v297 = sub_175AE4();
        sub_160F68(4);
        v356 = *(v294 + 2 * v79);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v297, 3);
        goto LABEL_387;
      }

      v357 = *(v294 + 2 * v79);
LABEL_386:
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v272, 3);
      goto LABEL_387;
    }

    v10 = a1 + 31332;
    if (sub_160EF0(3u, 4))
    {
      v302 = sub_160F34(3u);
      v280 = sub_175AE4();
      v303 = sub_160F68(4);
      if (v302)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v280, 3, v303, "AVE_HEVC_set_default_scaling_lists", 1855, "(nextCoef >= 6 && nextCoef <= 255)", v74);
        v300 = sub_175AE4();
        v318 = "(nextCoef >= 6 && nextCoef <= 255)";
        v333 = v74;
        v315 = 1855;
        v312 = sub_160F68(4);
        v301 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)";
        goto LABEL_430;
      }

      v317 = "(nextCoef >= 6 && nextCoef <= 255)";
      v332 = v74;
      v314 = 1855;
      v311 = v303;
      v283 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)";
      goto LABEL_403;
    }
  }

  else
  {
    v10 = a1 + 31332;
    if (sub_160EF0(3u, 4))
    {
      v298 = sub_160F34(3u);
      v280 = sub_175AE4();
      v299 = sub_160F68(4);
      if (v298)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d\n", v280, 3, v299, "AVE_HEVC_set_default_scaling_lists", 1854, "nextCoef == LocalExplicitScalingList[sizeId-1][matrixId][0]", v72, 2, v70, v74);
        v300 = sub_175AE4();
        v346 = v70;
        v350 = v74;
        v333 = v72;
        v334 = 2;
        v315 = 1854;
        v318 = "nextCoef == LocalExplicitScalingList[sizeId-1][matrixId][0]";
        v312 = sub_160F68(4);
        v301 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d";
LABEL_430:
        syslog(3, v301, v300, 3, v312, "AVE_HEVC_set_default_scaling_lists", v315, v318, v333, v334, v346, v350);
        goto LABEL_387;
      }

      v346 = v70;
      v350 = v74;
      v332 = v72;
      v334 = 2;
      v314 = 1854;
      v317 = "nextCoef == LocalExplicitScalingList[sizeId-1][matrixId][0]";
      v311 = v299;
      v283 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d";
LABEL_403:
      syslog(3, v283, v280, 3, v311, "AVE_HEVC_set_default_scaling_lists", v314, v317, v332, v334, v346, v350);
      goto LABEL_387;
    }
  }

LABEL_107:
  if (*(a1 + 24836) == 3)
  {
    v93 = 63;
  }

  else
  {
    v93 = 31;
  }

  if (*(a1 + 24836) == 3)
  {
    v94 = 6;
  }

  else
  {
    v94 = 5;
  }

  v95 = *(a1 + 1440);
  *(a1 + 24696) = v95;
  *(a1 + 24704) = vshl_u32(vadd_s32(v95, vdup_n_s32(v93)), vneg_s32(vdup_n_s32(v94)));
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v97 = sub_167CD8(PixelFormatType);
  v98 = v97;
  if (v97 && (*(a1 + 1104) & 8) != 0)
  {
    v102 = *(v97 + 7);
    v103 = 1;
    if (v102 != 1)
    {
      v103 = *v10;
    }

    *v10 = v103 & 1;
    *(v10 + 24) = v102 == 1;
    *(v10 + 17) = 1;
    if (sub_160EF0(0x1Eu, 6))
    {
      v104 = sub_160F34(0x1Eu);
      v105 = sub_175AE4();
      v106 = sub_160F68(6);
      if (v104)
      {
        printf("%lld %d AVE %s: FIG: video_full_range_flag %d\n", v105, 30, v106, *(v98 + 7) == 1);
        sub_175AE4();
        sub_160F68(6);
        v313 = *(v98 + 7) == 1;
      }

      syslog(3, "%lld %d AVE %s: FIG: video_full_range_flag %d");
    }
  }

  else if (sub_160EF0(0x1Eu, 6))
  {
    v99 = sub_160F34(0x1Eu);
    v100 = sub_175AE4();
    v101 = sub_160F68(6);
    if (v99)
    {
      printf("%lld %d AVE %s: FIG: Unknown dynamic range\n", v100, 30, v101);
      sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: FIG: Unknown dynamic range");
  }

  if ((*(a1 + 1104) & 0x40) != 0)
  {
    if (*(a1 + 1112) >= 1)
    {
      v109 = *(a1 + 1112);
    }

    else
    {
      v109 = 30;
    }

    v108 = 1;
    *(a1 + 14424) = 1;
    *(a1 + 14432) = 27000000;
    v110 = 0x19BFCC0 / v109;
    *(a1 + 14428) = v110;
    *(v10 + 80) = v110;
    *(v10 + 84) = 27000000;
    *(v10 + 76) = 1;
  }

  else
  {
    v107 = *(a1 + 14424);
    *(v10 + 76) = 0;
    if (v107)
    {
      v108 = 1;
    }

    else
    {
      v108 = *v10;
    }
  }

  *v10 = *(v10 + 141) | *(v10 + 44) | *(v10 + 1) | v108 & 1;
  v111 = CVBufferCopyAttachment(a2, kCVImageBufferChromaLocationTopFieldKey, 0);
  if (v111)
  {
    v112 = v111;
    if (sub_160EF0(0x1Eu, 6))
    {
      v113 = sub_160F34(0x1Eu);
      v114 = sub_175AE4();
      v115 = sub_160F68(6);
      if (v113)
      {
        printf("%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!\n", v114, 30, v115);
        v116 = sub_175AE4();
        v305 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!", v116, 30, v305);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!", v114, 30, v115);
      }
    }

    if (CFEqual(v112, kCVImageBufferChromaLocation_Left))
    {
LABEL_139:
      v117 = 0;
    }

    else if (CFEqual(v112, kCVImageBufferChromaLocation_Center))
    {
      v117 = 1;
    }

    else if (CFEqual(v112, kCVImageBufferChromaLocation_TopLeft))
    {
      v117 = 2;
    }

    else if (CFEqual(v112, kCVImageBufferChromaLocation_Top))
    {
      v117 = 3;
    }

    else if (CFEqual(v112, kCVImageBufferChromaLocation_BottomLeft))
    {
      v117 = 4;
    }

    else
    {
      if (!CFEqual(v112, kCVImageBufferChromaLocation_Bottom))
      {
        if (sub_160EF0(0x1Eu, 5))
        {
          v256 = sub_160F34(0x1Eu);
          v257 = sub_175AE4();
          v258 = sub_160F68(5);
          if (v256)
          {
            printf("%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default\n", v257, 30, v258);
            v259 = sub_175AE4();
            v309 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v259, 30, v309);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v257, 30, v258);
          }
        }

        goto LABEL_139;
      }

      v117 = 5;
    }

    *(v10 + 48) = v117;
    *(v10 + 52) = v117;
    if (sub_160EF0(0x1Eu, 6))
    {
      v118 = sub_160F34(0x1Eu);
      v119 = sub_175AE4();
      v120 = sub_160F68(6);
      v121 = *(v10 + 48);
      v122 = *(v10 + 52);
      if (v118)
      {
        printf("%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v119, 30, v120, *(v10 + 48), v122);
        v123 = sub_175AE4();
        v124 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v123, 30, v124, *(v10 + 48), *(v10 + 52));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v119, 30, v120, *(v10 + 48), v122);
      }
    }

    CFRelease(v112);
  }

  v125 = CVBufferCopyAttachment(a2, kCVImageBufferChromaLocationBottomFieldKey, 0);
  if (v125)
  {
    v126 = v125;
    if (sub_160EF0(0x1Eu, 6))
    {
      v127 = sub_160F34(0x1Eu);
      v128 = sub_175AE4();
      v129 = sub_160F68(6);
      if (v127)
      {
        printf("%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!\n", v128, 30, v129);
        v130 = sub_175AE4();
        v306 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!", v130, 30, v306);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!", v128, 30, v129);
      }
    }

    if (CFEqual(v126, kCVImageBufferChromaLocation_Left))
    {
LABEL_161:
      v131 = 0;
    }

    else if (CFEqual(v126, kCVImageBufferChromaLocation_Center))
    {
      v131 = 1;
    }

    else if (CFEqual(v126, kCVImageBufferChromaLocation_TopLeft))
    {
      v131 = 2;
    }

    else if (CFEqual(v126, kCVImageBufferChromaLocation_Top))
    {
      v131 = 3;
    }

    else if (CFEqual(v126, kCVImageBufferChromaLocation_BottomLeft))
    {
      v131 = 4;
    }

    else
    {
      if (!CFEqual(v126, kCVImageBufferChromaLocation_Bottom))
      {
        if (sub_160EF0(0x1Eu, 5))
        {
          v260 = sub_160F34(0x1Eu);
          v261 = sub_175AE4();
          v262 = sub_160F68(5);
          if (v260)
          {
            printf("%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default\n", v261, 30, v262);
            v263 = sub_175AE4();
            v310 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v263, 30, v310);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v261, 30, v262);
          }
        }

        goto LABEL_161;
      }

      v131 = 5;
    }

    *(v10 + 52) = v131;
    if (sub_160EF0(0x1Eu, 6))
    {
      v132 = sub_160F34(0x1Eu);
      v133 = sub_175AE4();
      v134 = sub_160F68(6);
      v135 = *(v10 + 48);
      v136 = *(v10 + 52);
      if (v132)
      {
        printf("%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v133, 30, v134, *(v10 + 48), v136);
        v137 = sub_175AE4();
        v138 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v137, 30, v138, *(v10 + 48), *(v10 + 52));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v133, 30, v134, *(v10 + 48), v136);
      }
    }

    CFRelease(v126);
  }

  if ((*(v10 + 48) || *(v10 + 52)) && (*(a1 + 1104) & 0x10) != 0)
  {
    *v10 = 1;
    *(v10 + 44) = 1;
    if (sub_160EF0(0x1Eu, 6))
    {
      v139 = sub_160F34(0x1Eu);
      v140 = sub_175AE4();
      v141 = sub_160F68(6);
      if (v139)
      {
        printf("%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE\n", v140, 30, v141);
        v142 = sub_175AE4();
        v307 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE", v142, 30, v307);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE", v140, 30, v141);
      }
    }
  }

  if (sub_160EF0(0x1Eu, 6))
  {
    v143 = sub_160F34(0x1Eu);
    v144 = sub_175AE4();
    v145 = sub_160F68(6);
    v146 = *(v10 + 44);
    v147 = *(v10 + 48);
    v148 = *(v10 + 52);
    if (v143)
    {
      printf("%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v144, 30, v145, v146, *(v10 + 48), v148);
      v149 = sub_175AE4();
      v150 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v149, 30, v150, *(v10 + 44), *(v10 + 48), *(v10 + 52));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v144, 30, v145, v146, *(v10 + 48), v148);
    }
  }

  if (!*(a1 + 104628) && *(a1 + 12028) == 1 && *(v98 + 1) == 10)
  {
    *(a1 + 12028) = 2;
    *(a1 + 24264) = 2;
    *(v10 + 736) = 2;
  }

  if (sub_160EF0(0x1Eu, 6))
  {
    v151 = sub_160F34(0x1Eu);
    v152 = sub_175AE4();
    v153 = sub_160F68(6);
    v154 = *(a1 + 104628);
    if (v151)
    {
      printf("%lld %d AVE %s: %s %d: pINS->eProfile=%d pINS->VPSHevcParams.PTL.eProfile=%d\n", v152, 30, v153, "AVE_PrepareVideoAndSequenceHeader", 2178, *(a1 + 104628), *(a1 + 12028));
      v152 = sub_175AE4();
      sub_160F68(6);
      v155 = *(a1 + 104628);
      v319 = *(a1 + 12028);
    }

    else
    {
      v316 = *(a1 + 104628);
    }

    syslog(3, "%lld %d AVE %s: %s %d: pINS->eProfile=%d pINS->VPSHevcParams.PTL.eProfile=%d", v152);
  }

  v156 = *(a1 + 104628);
  if (!v156)
  {
    v156 = *(a1 + 12028);
  }

  if (v156 <= 5)
  {
    switch(v156)
    {
      case 1:
        v157 = (a1 + 24688);
        if (*(a1 + 24688) == 1)
        {
          *(a1 + 12033) = 257;
          *(a1 + 24269) = 257;
          v158 = 1;
          goto LABEL_277;
        }

        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_270;
        }

        v177 = sub_160F34(3u);
        v160 = sub_175AE4();
        v178 = sub_160F68(4);
        v179 = *v157;
        if (!v177)
        {
          v326 = *v157;
          v340 = *(a1 + 12028);
          goto LABEL_269;
        }

        printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v160, 3, v178, "AVE_PrepareVideoAndSequenceHeader", 2199, "false", *v157, *(a1 + 12028));
        goto LABEL_255;
      case 2:
        v157 = (a1 + 24688);
        v158 = *(a1 + 24688);
        if (v158 == 1)
        {
          *(a1 + 12034) = 1;
          *(a1 + 24270) = 1;
          goto LABEL_277;
        }

        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_270;
        }

        v183 = sub_160F34(3u);
        v160 = sub_175AE4();
        v184 = sub_160F68(4);
        v185 = *v157;
        if (!v183)
        {
          v328 = *v157;
          v342 = *(a1 + 12028);
          goto LABEL_269;
        }

        printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v160, 3, v184, "AVE_PrepareVideoAndSequenceHeader", 2213, "false", *v157, *(a1 + 12028));
        goto LABEL_255;
      case 3:
        *(a1 + 13308) = 0;
        *(a1 + 24748) = 0;
        v157 = (a1 + 24688);
        v158 = *(a1 + 24688);
        if (v158 == 1)
        {
          *(a1 + 24271) = 1;
          *(a1 + 12033) = 1;
          *(a1 + 24269) = 257;
          *(a1 + 12034) = 257;
          goto LABEL_277;
        }

        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_270;
        }

        v180 = sub_160F34(3u);
        v160 = sub_175AE4();
        v181 = sub_160F68(4);
        v182 = *v157;
        if (!v180)
        {
          v327 = *v157;
          v341 = *(a1 + 12028);
          goto LABEL_269;
        }

        printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v160, 3, v181, "AVE_PrepareVideoAndSequenceHeader", 2235, "false", *v157, *(a1 + 12028));
        goto LABEL_255;
    }

    goto LABEL_231;
  }

  if (v156 > 8)
  {
    if (v156 == 9)
    {
      v163 = (a1 + 24732);
      if (!*(a1 + 24732) && !*(a1 + 24736))
      {
        *(a1 + 12036) = 1;
        *(a1 + 24272) = 1;
        *(a1 + 12076) = 1;
        *(a1 + 24312) = 1;
        *(a1 + 24264) = 4;
        *(a1 + 12028) = 4;
        v157 = (a1 + 24688);
        v158 = *(a1 + 24688);
        if ((v158 - 1) >= 3)
        {
          if (v158)
          {
            if (!sub_160EF0(3u, 4))
            {
              goto LABEL_270;
            }

            v253 = sub_160F34(3u);
            v160 = sub_175AE4();
            v254 = sub_160F68(4);
            v255 = *v157;
            if (!v253)
            {
              v331 = *v157;
              v345 = *(a1 + 12028);
              goto LABEL_269;
            }

            printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v160, 3, v254, "AVE_PrepareVideoAndSequenceHeader", 2302, "false", *v157, *(a1 + 12028));
            goto LABEL_255;
          }

          *(a1 + 12068) = 16843009;
          *(a1 + 12072) = 257;
          *(a1 + 12074) = 0;
          *(a1 + 24304) = 16843009;
          *(a1 + 24308) = 257;
          *(a1 + 24310) = 0;
        }

        else
        {
          *(a1 + 12068) = 257;
          *(a1 + 12070) = 1;
          *(a1 + 12071) = 0;
          *(a1 + 12075) = 0;
          *(a1 + 24304) = 257;
          *(a1 + 24306) = 1;
          *(a1 + 24307) = 0;
          *(a1 + 24311) = 0;
        }

LABEL_277:
        v197 = (a1 + 15574);
        if (*(a1 + 10928) != 1)
        {
          goto LABEL_296;
        }

        v198 = *(a1 + 1136);
        if (v198)
        {
          v199 = -1;
          v200 = 33;
          do
          {
            v201 = v198 & (v199 >> 1);
            v199 >>= 1;
            --v200;
          }

          while (v201);
          if (v200 < 8)
          {
            *(v10 + 104) = 0;
            v202 = 6;
            goto LABEL_288;
          }

          v205 = -1;
          v204 = 26;
          do
          {
            v206 = v198 & (v205 >> 1);
            v205 >>= 1;
            --v204;
          }

          while (v206);
        }

        else
        {
          v204 = 26;
        }

        *(v10 + 104) = v204;
        v202 = v204 + 6;
        if (!v198)
        {
          v203 = 28;
          goto LABEL_294;
        }

LABEL_288:
        v207 = -1;
        v208 = 33;
        do
        {
          v209 = v198 & (v207 >> 1);
          v207 >>= 1;
          --v208;
        }

        while (v209);
        if (v208 < 6)
        {
          *(v10 + 108) = 0;
          v210 = 4;
LABEL_295:
          *(v10 + 132) = v198 / (1 << v202) - 1;
          *(v10 + 136) = v198 / (1 << v210) - 1;
LABEL_296:
          v213 = *(a1 + 10556);
          if (v213 < 2)
          {
            v225 = *(a1 + 10896);
            if (v225 && !*(a1 + 10900))
            {
              *(a1 + 12008) = 1;
              *(a1 + 14528) = 1;
              *(a1 + 14531) = 0;
              *(a1 + 14532) |= 8u;
              *(a1 + 14534) = 0;
              *(a1 + 14566) = 1;
              *v197 = 1;
              *(a1 + 15576) = v225;
              *(a1 + 13392) = v225;
              *(a1 + 15639) = 0;
              *(a1 + 19738) = 1;
              *(a1 + 19740) = 1;
              *(a1 + 23835) = 0x100000001000000;
              *(a1 + 23843) = 1;
              *(a1 + 23908) = 0;
              *(a1 + 23912) = 0;
              *(a1 + 23914) = *(a1 + 1440);
              *(a1 + 23916) = *(a1 + 1444);
              *(a1 + 23918) = 1;
              v226 = *(a1 + 10916);
              if (v226 == -1)
              {
                v226 = v158;
              }

              *(a1 + 23920) = v226;
              *(a1 + 23928) = 0;
              v227 = *(a1 + 10908);
              if (v227 == -1)
              {
                v228 = *(a1 + 24732);
                v229 = *(a1 + 24736);
              }

              else
              {
                v228 = v227 - 8;
                v229 = v228;
              }

              *(a1 + 23932) = v228;
              *(a1 + 23940) = v229;
            }

            if (v158 >= 1 && (*(a1 + 10904) & 1) != 0)
            {
              *(v10 + 56) = 1;
            }

            goto LABEL_270;
          }

          v214 = *(a1 + 10900);
          v215 = v213 - 1;
          if (v214)
          {
            v216 = 3;
          }

          else
          {
            v216 = v213 - 1;
          }

          *(a1 + 12008) = v216;
          *(a1 + 12012) = 0;
          *(a1 + 12016) = 1;
          memcpy((a1 + 12448), (a1 + 12020), 0x1ACuLL);
          memcpy((a1 + 12876), (a1 + 12020), 0x1ACuLL);
          *(a1 + 12508) = *(a1 + 12080);
          *(a1 + 12884) = 5;
          *(a1 + 12889) = 0;
          *(a1 + 12894) = 1;
          if (v214)
          {
            v217 = *(a1 + 15575);
            v218 = *(a1 + 15576);
            v219 = *(a1 + 10896);
            if (v217 <= v218)
            {
              v220 = *(a1 + 15576);
            }

            else
            {
              v220 = *(a1 + 15575);
            }

            v221 = a1 + 13464;
            *(v221 + v217) = 1;
            *(v221 + v218) = 1;
            v222 = a1 + 13528;
            *(v222 + v219) = 1;
            *(v222 + v214) = 1;
            v223 = a1 + 13592;
            *(a1 + 13592 + v217) = 1;
            if (v219 <= v214)
            {
              LOBYTE(v224) = v214;
            }

            else
            {
              LOBYTE(v224) = v219;
            }

            *(v223 + v218) = 1;
            if (v220 <= v224)
            {
              v224 = v224;
            }

            else
            {
              v224 = v220;
            }

            *(a1 + 13392) = v224;
            *(a1 + 13396) = 3;
            *(v223 + v219) = 1;
            *(v223 + v214) = 1;
          }

          else
          {
            v230 = 0;
            v231 = *(a1 + 15575 + v215);
            *(a1 + 13392) = v231;
            *(a1 + 13396) = v215;
            v232 = v231 + 1;
            if ((v216 + 1) > 1)
            {
              v233 = (v216 + 1);
            }

            else
            {
              v233 = 1;
            }

            do
            {
              v234 = 0;
              do
              {
                if (v234 == *(a1 + 15575 + v230))
                {
                  *(a1 + 13464 + v234) = 1;
                }

                ++v234;
              }

              while (v232 != v234);
              ++v230;
            }

            while (v230 != v233);
          }

          *(a1 + 14528) = 1;
          v235 = *(a1 + 14532);
          *(a1 + 14532) = v235 | 2;
          *(a1 + 14534) = 2;
          *v197 = 1;
          *(a1 + 14566) = 1;
          *(a1 + 15706) = 1;
          if (!v214)
          {
            LOBYTE(v237) = *(a1 + 15576);
LABEL_333:
            *(a1 + 23920) = *(a1 + 24688);
            *(a1 + 23837) = 513;
            *(a1 + 14530) = 1;
            *(a1 + 23914) = *(a1 + 1440);
            *(a1 + 23916) = *(a1 + 1444);
            *(a1 + 23932) = *(a1 + 24732);
            *(a1 + 23918) = 1;
            *(a1 + 23940) = *(a1 + 24736);
            *(a1 + 23842) = 257;
            *(a1 + 23910) = 16777472;
            *(a1 + 24248) = 0;
            *(a1 + 24252) = 1;
            v239 = *(v10 + 1156);
            memcpy((v10 + 708), (a1 + 24236), 0x1E7CuLL);
            *(v10 + 708) = v237;
            *(v10 + 709) = 7;
            if (v239 <= 1)
            {
              v240 = 1;
            }

            else
            {
              v240 = v239;
            }

            *(v10 + 1156) = v240;
            *(v10 + 712) = 0;
            *(a1 + 39304) = 1;
            *(a1 + 39306) = 1;
            *(a1 + 39153) = 0;
            v241 = *(a1 + 10904);
            if (v241 == 1)
            {
              v242 = *(a1 + 10924);
              if (v242 != -1)
              {
                *(v10 + 710) = 1;
                *(v10 + 711) = v242;
              }
            }

            if (v214)
            {
              v243 = 0;
              v244 = 1;
              do
              {
                v245 = v244;
                v246 = *(a1 + 10916 + 4 * v243);
                if (v246 != -1)
                {
                  *(a1 + 23920 + 4 * v243) = v246;
                }

                v247 = *(a1 + 10908 + 4 * v243);
                if (v247 != -1)
                {
                  v248 = v247 - 8;
                  *(a1 + 23932 + 4 * v243) = v248;
                  *(a1 + 23940 + 4 * v243) = v248;
                }

                v244 = 0;
                v243 = 1;
              }

              while ((v245 & 1) != 0);
              if (*(a1 + 10920) != -1 && *(a1 + 10912) != -1)
              {
                *(a1 + 23841) = 1;
              }
            }

            if (v241)
            {
              v249 = 0;
              v250 = 1;
              do
              {
                v251 = v250;
                v252 = a1 + 24236 + 7804 * v249;
                if (*(v252 + 452) >= 1)
                {
                  *(v252 + 7152) = 1;
                }

                v250 = 0;
                v249 = 1;
              }

              while ((v251 & 1) != 0);
            }

            goto LABEL_270;
          }

          v236 = *(a1 + 15576);
          if (*(a1 + 15575))
          {
            v237 = *(a1 + 10896);
            v238 = (a1 + 19738);
          }

          else
          {
            v237 = *(a1 + 10896);
            v238 = (a1 + 19738);
            if (v236 == 1)
            {
              *(a1 + 15577) = v237;
              *(a1 + 15578) = v214;
              *(a1 + 14582) = 256;
              *(a1 + 14598) = 257;
              *(a1 + 14567) = 0;
              LOBYTE(v237) = 1;
              *(a1 + 15836) = 1;
LABEL_332:
              *(a1 + 14532) = v235 | 0xA;
              *(a1 + 14535) = 2;
              *v238 = 0;
              *(a1 + 23839) = 0;
              goto LABEL_333;
            }
          }

          *(a1 + 15577) = v236;
          *(a1 + 15576) = v237;
          *(a1 + 15578) = v214;
          *(a1 + 14566) = 256;
          *(a1 + 14582) = 1;
          *(a1 + 14598) = 257;
          *(a1 + 15706) = 0;
          *(a1 + 15770) = 1;
          *(a1 + 15835) = 1;
          goto LABEL_332;
        }

        v211 = -1;
        v203 = 28;
        do
        {
          v212 = v198 & (v211 >> 1);
          v211 >>= 1;
          --v203;
        }

        while (v212);
LABEL_294:
        *(v10 + 108) = v203;
        v210 = v203 + 4;
        goto LABEL_295;
      }

      if (!sub_160EF0(3u, 4))
      {
        goto LABEL_270;
      }

      v164 = sub_160F34(3u);
      v165 = sub_175AE4();
      v166 = sub_160F68(4);
      v167 = *v163;
      v168 = (a1 + 24736);
      if (v164)
      {
        printf("%lld %d AVE %s: %s:%d %s | profile (%d) bit_depth_luma_minus8 (%d) and bit_depth_chroma_minus8 (%d)\n", v165, 3, v166, "AVE_PrepareVideoAndSequenceHeader", 2243, "((pINS->saSPS[0].bit_depth_luma_minus8 == 0) && (pINS->saSPS[0].bit_depth_chroma_minus8 == 0))", *(a1 + 12028), *v163, *(a1 + 24736));
LABEL_238:
        v175 = sub_175AE4();
        sub_160F68(4);
        v335 = *v163;
        v347 = *v168;
        v321 = *(a1 + 12028);
        syslog(3, "%lld %d AVE %s: %s:%d %s | profile (%d) bit_depth_luma_minus8 (%d) and bit_depth_chroma_minus8 (%d)", v175, 3);
        goto LABEL_270;
      }

      v338 = *v163;
      v348 = *(a1 + 24736);
      v324 = *(a1 + 12028);
    }

    else
    {
      if (v156 != 10)
      {
        goto LABEL_231;
      }

      v163 = (a1 + 24732);
      if (*(a1 + 24732) == 2 && *(a1 + 24736) == 2)
      {
        *(a1 + 12036) = 1;
        *(a1 + 24272) = 1;
        *(a1 + 12076) = 1;
        *(a1 + 24312) = 1;
        *(a1 + 24264) = 4;
        *(a1 + 12028) = 4;
        v157 = (a1 + 24688);
        v158 = *(a1 + 24688);
        if (!v158)
        {
LABEL_250:
          *(a1 + 12068) = 0x10101000001;
          *(a1 + 24304) = 0x10101000001;
          goto LABEL_277;
        }

        if (v158 == 3 || v158 == 1)
        {
          *(a1 + 12068) = 257;
          *(a1 + 12070) = 0;
          *(a1 + 12074) = 0;
          *(a1 + 24304) = 257;
          *(a1 + 24306) = 0;
          *(a1 + 24310) = 0;
          goto LABEL_277;
        }

        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_270;
        }

        v190 = sub_160F34(3u);
        v160 = sub_175AE4();
        v191 = sub_160F68(4);
        v192 = *v157;
        if (!v190)
        {
          v330 = *v157;
          v344 = *(a1 + 12028);
          goto LABEL_269;
        }

        printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v160, 3, v191, "AVE_PrepareVideoAndSequenceHeader", 2369, "false", *v157, *(a1 + 12028));
LABEL_255:
        v189 = sub_175AE4();
        sub_160F68(4);
        v323 = *v157;
        v337 = *(a1 + 12028);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported", v189);
        goto LABEL_270;
      }

      if (!sub_160EF0(3u, 4))
      {
        goto LABEL_270;
      }

      v172 = sub_160F34(3u);
      v165 = sub_175AE4();
      v173 = sub_160F68(4);
      v174 = *v163;
      v168 = (a1 + 24736);
      if (v172)
      {
        printf("%lld %d AVE %s: %s:%d %s | profile (%d) bit_depth_luma_minus8 (%d) and bit_depth_chroma_minus8 (%d)\n", v165, 3, v173, "AVE_PrepareVideoAndSequenceHeader", 2311, "((pINS->saSPS[0].bit_depth_luma_minus8 == 2) && (pINS->saSPS[0].bit_depth_chroma_minus8 == 2))", *(a1 + 12028), *v163, *(a1 + 24736));
        goto LABEL_238;
      }

      v339 = *v163;
      v349 = *(a1 + 24736);
      v325 = *(a1 + 12028);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | profile (%d) bit_depth_luma_minus8 (%d) and bit_depth_chroma_minus8 (%d)", v165, 3);
    goto LABEL_270;
  }

  if ((v156 - 6) >= 2)
  {
    if (v156 == 8)
    {
      *(a1 + 12036) = 1;
      *(a1 + 24272) = 1;
      *(a1 + 12076) = 1;
      *(a1 + 24312) = 1;
      *(a1 + 24264) = 4;
      *(a1 + 12028) = 4;
      v157 = (a1 + 24688);
      v158 = *(a1 + 24688);
      if ((v158 - 1) < 2)
      {
        *(a1 + 12068) = 16777473;
        *(a1 + 12072) = 0;
        *(a1 + 24304) = 16777473;
        *(a1 + 24308) = 0;
        goto LABEL_277;
      }

      if (!v158)
      {
        goto LABEL_250;
      }

      if (!sub_160EF0(3u, 4))
      {
        goto LABEL_270;
      }

      v186 = sub_160F34(3u);
      v160 = sub_175AE4();
      v187 = sub_160F68(4);
      v188 = *v157;
      if (!v186)
      {
        v329 = *v157;
        v343 = *(a1 + 12028);
        goto LABEL_269;
      }

      printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v160, 3, v187, "AVE_PrepareVideoAndSequenceHeader", 2432, "false", *v157, *(a1 + 12028));
      goto LABEL_255;
    }

LABEL_231:
    if (sub_160EF0(3u, 4))
    {
      v169 = sub_160F34(3u);
      v170 = sub_175AE4();
      v171 = sub_160F68(4);
      if (v169)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: profile (%d) nit supported\n", v170, 3, v171, "AVE_PrepareVideoAndSequenceHeader", 2486, "false", *(a1 + 12028));
        v170 = sub_175AE4();
        sub_160F68(4);
      }

      v320 = *(a1 + 12028);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: profile (%d) nit supported", v170);
    }

    goto LABEL_270;
  }

  *(a1 + 12036) = 1;
  *(a1 + 24272) = 1;
  *(a1 + 12076) = 1;
  *(a1 + 24312) = 1;
  *(a1 + 24264) = 4;
  *(a1 + 12028) = 4;
  v157 = (a1 + 24688);
  v158 = *(a1 + 24688);
  if (!v158)
  {
    *(a1 + 12068) = 257;
    v176 = v156 == 6;
    *(a1 + 12070) = v176;
    *(a1 + 12071) = 65793;
    *(a1 + 12075) = 0;
    *(a1 + 24304) = 257;
    *(a1 + 24306) = v176;
    *(a1 + 24307) = 65793;
    *(a1 + 24311) = 0;
    goto LABEL_277;
  }

  if (sub_160EF0(3u, 4))
  {
    v159 = sub_160F34(3u);
    v160 = sub_175AE4();
    v161 = sub_160F68(4);
    v162 = *v157;
    if (v159)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v160, 3, v161, "AVE_PrepareVideoAndSequenceHeader", 2479, "false", *v157, *(a1 + 12028));
      goto LABEL_255;
    }

    v322 = *v157;
    v336 = *(a1 + 12028);
LABEL_269:
    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported", v160);
  }

LABEL_270:
  if (sub_160EF0(0xCu, 7))
  {
    v193 = sub_160F34(0xCu);
    v194 = sub_175AE4();
    v195 = sub_160F68(7);
    if (v193)
    {
      printf("%lld %d AVE %s: FIG: EXIT AVE_PrepareVideoAndSequenceHeader\n", v194, 12, v195);
      v196 = sub_175AE4();
      v308 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_PrepareVideoAndSequenceHeader", v196, 12, v308);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_PrepareVideoAndSequenceHeader", v194, 12, v195);
    }
  }
}