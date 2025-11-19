void sub_10A354(_DWORD *a1)
{
  if (sub_160EF0(0xCu, 7))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PreparePictureHeader\n", v3, 12, v4);
      v5 = sub_175AE4();
      v23 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PreparePictureHeader", v5, 12, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PreparePictureHeader", v3, 12, v4);
    }
  }

  v6 = a1[2693];
  if (v6 == 1)
  {
    goto LABEL_11;
  }

  if (v6 == 2)
  {
    a1[9970] = a1[286] - 26;
    if (a1[6209] == 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    a1[9972] = v7;
LABEL_11:
    v8 = a1[2639];
    if (v8 >= 2)
    {
      v9 = (a1 + 9961);
      v10 = a1 + 15575;
      v11 = 1;
      v12 = 1;
      do
      {
        v13 = &v9[9632 * v12];
        v14 = *(v13 + 8);
        memcpy(v13, v9, 0x25A0uLL);
        *v13 = v10[v12];
        v13[8512] = 1;
        v13[8515] = 1;
        v13[8517] = 1;
        *(v13 + 1) = vbsl_s8(vceqz_s32(v14), vdup_n_s32(v11), v14);
        v11 = ++v12;
        *(v13 + 1) = 0;
        v13[5] = 0;
      }

      while (v8 > v12);
    }

    goto LABEL_19;
  }

  if (sub_160EF0(3u, 4))
  {
    v15 = sub_160F34(3u);
    v16 = sub_175AE4();
    v17 = sub_160F68(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: encode type unrecognized\n", v16, 3, v17, "AVE_PreparePictureHeader", 1605, "false");
      v18 = sub_175AE4();
      v24 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: encode type unrecognized", v18, 3, v24, "AVE_PreparePictureHeader", 1605, "false");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: encode type unrecognized", v16, 3, v17, "AVE_PreparePictureHeader", 1605, "false");
    }
  }

LABEL_19:
  if (sub_160EF0(0xCu, 7))
  {
    v19 = sub_160F34(0xCu);
    v20 = sub_175AE4();
    v21 = sub_160F68(7);
    if (v19)
    {
      printf("%lld %d AVE %s: FIG: EXIT AVE_PreparePictureHeader\n", v20, 12, v21);
      v22 = sub_175AE4();
      v25 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_PreparePictureHeader", v22, 12, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_PreparePictureHeader", v20, 12, v21);
    }
  }
}

uint64_t sub_10A628(uint64_t a1)
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
      v242 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings", v5, 12, v242);
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
      v243 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters", v9, 12, v243);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters", v7, 12, v8);
    }
  }

  v10 = (a1 + 10168);
  v11 = sub_1502C8();
  v12 = v11[20];
  if (v12 >= -1)
  {
    *(a1 + 692) = v12;
  }

  if (sub_160EF0(0x10u, 8))
  {
    v13 = sub_160F34(0x10u);
    v14 = sub_175AE4();
    v15 = sub_160F68(8);
    v16 = *(a1 + 10784);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d usageMode %d RealTime %d bRCModeSet %d eRCMode %d\n", v14, 16, v15, "AVE_PrepareRealTimeParameters", 2830, *(a1 + 10892), *(a1 + 692), *(a1 + 10784), *(a1 + 1132));
      v14 = sub_175AE4();
      sub_160F68(8);
      v17 = *(a1 + 10784);
      v267 = *(a1 + 1132);
      v252 = *(a1 + 10892);
      v257 = *(a1 + 692);
    }

    else
    {
      v263 = *(a1 + 10784);
    }

    syslog(3, "%lld %d AVE %s: %s:%d usageMode %d RealTime %d bRCModeSet %d eRCMode %d", v14, 16);
  }

  if ((*(a1 + 1123) & 0x80) == 0 && *(a1 + 1132) == 8)
  {
    *(a1 + 10784) = 0;
  }

  if (*(a1 + 692) == 1)
  {
    if ((v18 = *(a1 + 1256)) == 0 && (v19 = *(a1 + 1132), v19 != 20) && v19 != 3 || *(a1 + 106464) > 0 || v18 >= 3 && *(a1 + 1260) >= 3)
    {
      if (*(a1 + 10752) != 2 && !*(a1 + 10892))
      {
        if ((*(a1 + 10784) & 1) == 0)
        {
          *(a1 + 1132) = 1;
        }

        *(a1 + 10764) = 1;
        *(a1 + 1464) = 0;
        v20 = *(a1 + 1336);
        *(a1 + 1336) = v20 | 0x30;
        v21 = *(a1 + 688);
        v22 = v21 & 0xFFFFFFFD;
        if (v11[190] < 1)
        {
          goto LABEL_46;
        }

        v23 = *(a1 + 1444) + 15;
        v24 = v23 >> 4;
        v25 = *(a1 + 1440) + 15;
        v26 = (v25 >> 4) + 31;
        v27 = v26 & 0x1FFFFFE0;
        v28 = v21 & 0xFFFFFEFD;
        v22 |= 0x100u;
        if (*(a1 + 1112) * (v23 >> 4) * (v25 >> 4) <= 0xAFC80)
        {
          v22 = v28;
        }

        *(a1 + 688) = v22;
        v29 = v20 | 0x70;
        *(a1 + 1336) = v29;
        if (v27 > 0x80 || v27 * v24 >= 0x2D01)
        {
          if (v23 > 0x44F || v25 >= 0x790)
          {
            v30 = ((((v25 >> 4) + 1) >> 1) + 31) >> 5;
            v24 = (v24 + 1) >> 1;
          }

          else
          {
            v30 = v26 >> 5;
          }

          v31 = v30 * v24;
          if (v23 <= 0xC0F && v27 <= 0x100 && v31 <= 0x120)
          {
LABEL_46:
            *(a1 + 688) = v22 | 0x100;
            goto LABEL_48;
          }

          *(a1 + 1336) = v29 & 0xFFFFFFBF;
        }
      }
    }
  }

LABEL_48:
  v32 = v11[19];
  if (v32 >= 1)
  {
    *(a1 + 11968) = v32;
  }

  v33 = (*(a1 + 1336) | v11[237] & 0x30) & (~*(v11 + 952) | 0xFFFFFFCF);
  *(a1 + 1336) = v33;
  if ((*(v11 + 769) & 0x80) != 0)
  {
    v33 |= 0x8000u;
    *(a1 + 1336) = v33;
  }

  if ((*(v11 + 777) & 0x80) != 0)
  {
    *(a1 + 1336) = v33 & 0xFFFF7FFF;
  }

  if (sub_160EF0(0xCu, 7))
  {
    v34 = sub_160F34(0xCu);
    v35 = sub_175AE4();
    v36 = sub_160F68(7);
    if (v34)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v35, 12, v36, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
      v37 = sub_175AE4();
      v244 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v37, 12, v244, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v35, 12, v36, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
    }
  }

  v275 = (a1 + 104624);
  v38 = sub_1502C8();
  v39 = sub_17D488(v38[186]);
  if (v39)
  {
    *(a1 + 104628) = v39;
  }

  v40 = sub_17DA08(v38[187]);
  if (v40)
  {
    *(a1 + 104632) = v40;
  }

  v274 = (a1 + 39884);
  v273 = (a1 + 31332);
  v41 = (a1 + 24252);
  v42 = sub_17D614(v38[188]);
  v43 = a1 + 104624;
  if (v42)
  {
    *v275 = v42;
  }

  v44 = *(a1 + 104628);
  if (!v44)
  {
LABEL_72:
    if (*(a1 + 10772) == 2)
    {
      if (*v275)
      {
        if (sub_160EF0(0x1Eu, 6))
        {
          v56 = sub_160F34(0x1Eu);
          v57 = sub_175AE4();
          v58 = sub_160F68(6);
          v59 = *v275;
          if (v56)
          {
            printf("%lld %d AVE %s: %s:%d tier %d -> change the default %d\n", v57, 30, v58, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 5702, *v275, *(a1 + 24260));
            v57 = sub_175AE4();
            sub_160F68(6);
            v60 = *v275;
            v258 = *(a1 + 24260);
            v43 = a1 + 104624;
          }

          else
          {
            v253 = *v275;
          }

          syslog(3, "%lld %d AVE %s: %s:%d tier %d -> change the default %d", v57);
        }

        *(a1 + 24260) = *v43;
      }

      v66 = vshr_n_u32(vadd_s32(*(a1 + 1440), 0xF0000000FLL), 4uLL);
      if ((*(a1 + 1112) * v66.i32[0] * v66.i32[1]) >= 0x1DA9C0)
      {
        *(a1 + 24260) = 2;
        *(a1 + 12024) = 2;
      }
    }

    v67 = *(a1 + 1308) > 1 || *(a1 + 1256) || (*v10 & 0xFFFE) == 4 || *(a1 + 1324) > 1 || (*(a1 + 716) & 0x3C0) != 0;
    *(a1 + 10173) = v67;
    v68 = *(a1 + 1132);
    if (v68 == 4 || v68 == 2)
    {
      v69 = *(a1 + 10892);
      if (v69 == 37 || !v69)
      {
        *(a1 + 10892) = 10000;
        *(a1 + 688) &= ~0x100u;
        *(a1 + 10520) = 1;
        *(a1 + 1464) = 0;
        *(a1 + 1336) &= ~0x40u;
      }
    }

    v70 = v38[395];
    if (v70 <= 19)
    {
      if (!v70)
      {
        *(a1 + 10892) = 0;
        goto LABEL_174;
      }

      if (v70 == 1)
      {
        *(a1 + 10892) = 1;
LABEL_125:
        *(a1 + 1336) = 0x10000;
        *(a1 + 1132) = 20;
        *(a1 + 10784) = 1;
        *(a1 + 10764) = 0;
        *(a1 + 10205) = 0;
        *(a1 + 1240) &= ~0x100u;
        if (*(a1 + 1256) >= 1)
        {
          *(a1 + 1256) = 0x200000001;
          *(a1 + 13336) = 1;
          *(a1 + 24776) = 1;
          *(a1 + 48356) = 1;
        }

        *(a1 + 10808) = 0;
        *(a1 + 42027) = 1;
        *(a1 + 60061) = 1;
        if (*(a1 + 1296))
        {
          *(a1 + 39957) = 1;
        }

        if ((*(a1 + 1104) & 0x80) != 0)
        {
          v80 = 1;
          *v273 = 1;
          *(a1 + 31474) = 257;
          *(a1 + 31476) = 1;
          *(a1 + 31480) = xmmword_185A30;
          *(a1 + 31496) = 15;
        }

        else
        {
          v80 = 0;
        }

        v65 = 0;
        *(a1 + 31473) = v80;
        *(a1 + 1096) &= 0xFFFFFC40FFFFFCBFLL;
        *(a1 + 39886) = 1;
        goto LABEL_188;
      }
    }

    else
    {
      switch(v70)
      {
        case 20:
          *(a1 + 10892) = 20;
          goto LABEL_132;
        case 37:
          *(a1 + 10892) = 37;
LABEL_157:
          if ((*(a1 + 1104) & 0x80) != 0)
          {
            *v273 = 1;
            *(a1 + 31473) = 1;
            *(a1 + 31475) = 1;
            *(a1 + 31484) = xmmword_185A20;
          }

          *(a1 + 1112) = 60;
          *(a1 + 1264) = 0x7FFFFFFFLL;
          *(a1 + 1272) = 0xBFF0000000000000;
          *(a1 + 1280) = 0xBFF0000000000000;
          *(a1 + 1088) |= 2uLL;
          *(a1 + 1336) &= ~0x40u;
          *(a1 + 1296) |= 2u;
          if (*(v43 + 1676) <= 0 && *(v43 + 16) == 1)
          {
            v89 = *(a1 + 1160);
            if (v89 >= 1)
            {
              v90 = 0;
              v91 = (a1 + 1176);
              v92 = 0x7FFFFFFF;
              do
              {
                if (v92 > (*(v91 - 1) * 8.0 / *v91))
                {
                  if (sub_160EF0(0x1Eu, 6))
                  {
                    v93 = sub_160F34(0x1Eu);
                    v94 = sub_175AE4();
                    v95 = sub_160F68(6);
                    v96 = *(v91 - 1);
                    v97 = *v91;
                    if (v93)
                    {
                      printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v94, 30, v95, v90, *(v91 - 1), v97);
                      v94 = sub_175AE4();
                      v95 = sub_160F68(6);
                      v96 = *(v91 - 1);
                      v97 = *v91;
                    }

                    syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v94, 30, v95, v90, v96, v97);
                    v43 = a1 + 104624;
                  }

                  v92 = (*(v91 - 1) * 8.0 / *v91);
                  v89 = *(a1 + 1160);
                }

                ++v90;
                v91 += 2;
              }

              while (v90 < v89);
              if (v92 != 0x7FFFFFFF)
              {
                *(a1 + 1136) = v92;
              }
            }
          }

          v65 = 0;
          *(a1 + 1240) &= ~0x100u;
          goto LABEL_188;
        case 10000:
          *(a1 + 10892) = 10000;
          goto LABEL_103;
      }
    }

    v101 = *(a1 + 10892);
    if (v101 <= 36)
    {
      if (v101 != 1)
      {
        if (v101 != 20)
        {
          goto LABEL_174;
        }

LABEL_132:
        sub_11565C(a1);
        if ((*(a1 + 1104) & 0x80) != 0)
        {
          *v273 = 1;
          *(a1 + 31473) = 1;
          *(a1 + 31475) = 1;
          *(a1 + 31484) = xmmword_185A20;
        }

        *(a1 + 1296) &= ~2u;
        *(a1 + 1464) = 0;
        *(a1 + 1336) &= ~0x40u;
        *(a1 + 10520) = 1;
        *(a1 + 1240) &= ~0x100u;
        *(a1 + 1088) = *(a1 + 1088) & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(a1 + 692) == 1));
        if (*(a1 + 1348) <= -13)
        {
          *(a1 + 1348) = 51;
        }

        if (*(a1 + 1236) <= -13)
        {
          *(a1 + 1236) = 51;
        }

        if (*(v43 + 1804) <= 0 && *(v43 + 1816) <= 0.0 && (*(v43 + 1808) & 0x80000000) != 0 && *(v43 + 1824) <= 0.0)
        {
          *(a1 + 1264) = 0x7FFFFFFFLL;
          *(a1 + 1272) = 0xBFF0000000000000;
          *(a1 + 1280) = 0xBFF0000000000000;
        }

        if (*(v43 + 1676) <= 0 && *(v43 + 16) == 1)
        {
          v81 = *(a1 + 1160);
          if (v81 >= 1)
          {
            v82 = 0;
            v83 = (a1 + 1176);
            v74 = 0x7FFFFFFF;
            do
            {
              if (v74 > (*(v83 - 1) * 8.0 / *v83))
              {
                if (sub_160EF0(0x1Eu, 6))
                {
                  v84 = sub_160F34(0x1Eu);
                  v85 = sub_175AE4();
                  v86 = sub_160F68(6);
                  v87 = *(v83 - 1);
                  v88 = *v83;
                  if (v84)
                  {
                    printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v85, 30, v86, v82, *(v83 - 1), v88);
                    v85 = sub_175AE4();
                    v86 = sub_160F68(6);
                    v87 = *(v83 - 1);
                    v88 = *v83;
                  }

                  syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v85, 30, v86, v82, v87, v88);
                  v43 = a1 + 104624;
                }

                v74 = (*(v83 - 1) * 8.0 / 1.5 / *v83);
                v81 = *(a1 + 1160);
              }

              ++v82;
              v83 += 2;
            }

            while (v82 < v81);
LABEL_154:
            if (v74 != 0x7FFFFFFF)
            {
              v65 = 0;
              *(a1 + 1136) = v74;
              goto LABEL_188;
            }
          }
        }

LABEL_181:
        v65 = 0;
        goto LABEL_188;
      }

      goto LABEL_125;
    }

    if (v101 != 37)
    {
      if (v101 == 10000)
      {
LABEL_103:
        sub_11565C(a1);
        *(a1 + 1296) &= ~2u;
        *(a1 + 1464) = 0;
        *(a1 + 1336) &= ~0x40u;
        *(a1 + 10520) = 1;
        *(a1 + 1240) &= ~0x100u;
        *(a1 + 1088) = *(a1 + 1088) & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(a1 + 692) == 1));
        if (*(a1 + 1348) <= -13)
        {
          *(a1 + 1348) = 51;
        }

        if (*(a1 + 1236) <= -13)
        {
          *(a1 + 1236) = 51;
        }

        if (*(v43 + 1804) <= 0 && *(v43 + 1816) <= 0.0)
        {
          *(a1 + 1264) = 120;
          *(a1 + 1272) = 0xBFF0000000000000;
          *(a1 + 1280) = 0xBFF0000000000000;
        }

        if (*(v43 + 1676) <= 0 && *(v43 + 16) == 1)
        {
          v71 = *(a1 + 1160);
          if (v71 >= 1)
          {
            v72 = 0;
            v73 = (a1 + 1176);
            v74 = 0x7FFFFFFF;
            do
            {
              if (v74 > (*(v73 - 1) * 8.0 / *v73))
              {
                if (sub_160EF0(0x1Eu, 6))
                {
                  v75 = sub_160F34(0x1Eu);
                  v76 = sub_175AE4();
                  v77 = sub_160F68(6);
                  v78 = *(v73 - 1);
                  v79 = *v73;
                  if (v75)
                  {
                    printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v76, 30, v77, v72, *(v73 - 1), v79);
                    v76 = sub_175AE4();
                    v77 = sub_160F68(6);
                    v78 = *(v73 - 1);
                    v79 = *v73;
                  }

                  syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v76, 30, v77, v72, v78, v79);
                  v43 = a1 + 104624;
                }

                v74 = (*(v73 - 1) * 8.0 / 1.5 / *v73);
                v71 = *(a1 + 1160);
              }

              ++v72;
              v73 += 2;
            }

            while (v72 < v71);
            goto LABEL_154;
          }
        }

        goto LABEL_181;
      }

LABEL_174:
      v98 = *(a1 + 76);
      if (v98 <= 0x1D && ((1 << v98) & 0x2679CC00) != 0)
      {
        v99 = *(a1 + 10248);
        *(a1 + 10172) = v99 ^ 1;
        if ((v99 & 1) == 0)
        {
          *(a1 + 688) |= 0x100u;
          v100 = *(a1 + 1296);
          if ((v100 & 1) == 0 && (*(a1 + 1123) & 0x80) == 0)
          {
            *(a1 + 10200) = 1;
            *(a1 + 1296) = v100 | 1;
            *(a1 + 39957) = 1;
            *(a1 + 48356) = 1;
          }
        }
      }

      sub_11565C(a1);
      goto LABEL_181;
    }

    goto LABEL_157;
  }

  *(a1 + 10800) = v44;
  if (sub_160EF0(0x1Eu, 6))
  {
    v45 = sub_160F34(0x1Eu);
    v46 = sub_175AE4();
    v47 = sub_160F68(6);
    v48 = *(a1 + 104628);
    v49 = *(a1 + 24264);
    if (v45)
    {
      printf("%lld %d AVE %s: profile = %d -> change the default %d\n", v46, 30, v47, *(a1 + 104628), v49);
      v50 = sub_175AE4();
      v51 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: profile = %d -> change the default %d", v50, 30, v51, *(a1 + 104628), *(a1 + 24264));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: profile = %d -> change the default %d", v46, 30, v47, *(a1 + 104628), v49);
    }
  }

  v52 = *(a1 + 104628) - 1;
  if (v52 < 0xA && ((0x3E7u >> v52) & 1) != 0)
  {
    v53 = qword_185B90[v52];
    v54 = dword_185BE0[v52];
    v55 = qword_185C08[v52];
    *(a1 + v53) = v54;
    *(a1 + v55) = v54;
    goto LABEL_72;
  }

  if (sub_160EF0(3u, 4))
  {
    v61 = sub_160F34(3u);
    v62 = sub_175AE4();
    v63 = sub_160F68(4);
    if (v61)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed. profile (%d) unrecognized\n", v62, 3, v63, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 5689, "false", *(a1 + 104628));
      v62 = sub_175AE4();
      sub_160F68(4);
      v64 = *(a1 + 104628);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed. profile (%d) unrecognized", v62);
  }

  v65 = -12902;
LABEL_188:
  if (sub_160EF0(0xCu, 7))
  {
    v102 = sub_160F34(0xCu);
    v103 = sub_175AE4();
    v104 = sub_160F68(7);
    if (v102)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v103, 12, v104, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v65);
      v105 = sub_175AE4();
      v245 = sub_160F68(7);
      v43 = a1 + 104624;
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v105, 12, v245, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v65);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v103, 12, v104, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v65);
    }
  }

  if (sub_160EF0(0xD1u, 6))
  {
    v106 = sub_160F34(0xD1u);
    v107 = sub_175AE4();
    v108 = sub_160F68(6);
    if (v106)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v107, 209, v108, "AVE_PrepareHEVCLevel", a1);
      v109 = sub_175AE4();
      v246 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v109, 209, v246, "AVE_PrepareHEVCLevel", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v107, 209, v108, "AVE_PrepareHEVCLevel", a1);
    }
  }

  if (sub_160EF0(0xD1u, 7))
  {
    v110 = sub_160F34(0xD1u);
    v111 = sub_175AE4();
    v112 = sub_160F68(7);
    v113 = *(v43 + 4);
    if (v110)
    {
      printf("%lld %d AVE %s: %s:%d starting with SPS profile %d SPS level %d profile %d level %d\n", v111, 209, v112, "AVE_PrepareHEVCLevel", 2970, *(a1 + 24264), *(a1 + 24316), *(v43 + 4), *(v43 + 8));
      v111 = sub_175AE4();
      sub_160F68(7);
      v114 = *(a1 + 24264);
      v264 = *(a1 + 104628);
      v268 = *(a1 + 104632);
      v259 = *(a1 + 24316);
      v43 = a1 + 104624;
    }

    else
    {
      v265 = *(v43 + 4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d starting with SPS profile %d SPS level %d profile %d level %d", v111, 209);
  }

  if (sub_160EF0(0xD1u, 7))
  {
    v115 = sub_160F34(0xD1u);
    v116 = sub_175AE4();
    v117 = sub_160F68(7);
    v118 = *(a1 + 1112);
    if (v115)
    {
      printf("%lld %d AVE %s: %s:%d starting with %dx%d bitrate %d (RCMode %d) FrameRate %d USAGE %d\n", v116, 209, v117, "AVE_PrepareHEVCLevel", 2974, *(a1 + 1440), *(a1 + 1444), *(a1 + 1136), *(a1 + 1132), *(a1 + 1112), *(a1 + 10892));
      v116 = sub_175AE4();
      v117 = sub_160F68(7);
      v119 = *(a1 + 1440);
      v270 = *(a1 + 1112);
      v272 = *(a1 + 10892);
      v266 = *(a1 + 1136);
      v269 = *(a1 + 1132);
      v260 = *(a1 + 1444);
      v43 = a1 + 104624;
    }

    else
    {
      v271 = *(a1 + 1112);
    }

    syslog(3, "%lld %d AVE %s: %s:%d starting with %dx%d bitrate %d (RCMode %d) FrameRate %d USAGE %d", v116, 209, v117);
  }

  v120 = *(a1 + 1132);
  if (v120 < 1)
  {
    v121 = 0;
  }

  else
  {
    v121 = 0;
    if (v120 != 3 && v120 != 8)
    {
      v121 = *(a1 + 1136);
    }
  }

  v122 = sub_17D77C(*(a1 + 24264), *(a1 + 24260), *(a1 + 1440), *(a1 + 1444), *(a1 + 1112), v121);
  if (v122)
  {
    v123 = v122;
    v124 = *(a1 + 24316);
    if (v124 <= v122)
    {
      v124 = v122;
    }

    *(a1 + 24316) = v124;
    *(a1 + 12080) = v124;
    v125 = *(v43 + 8);
    if (v125)
    {
      if (v125 < v124 && *(a1 + 1112) >= 1)
      {
        if (sub_160EF0(0xD1u, 5))
        {
          v126 = sub_160F34(0xD1u);
          v127 = sub_175AE4();
          v128 = sub_160F68(5);
          v129 = *(v43 + 8);
          if (v126)
          {
            printf("%lld %d AVE %s: %s:%d level %d incompatible with other settings (min should be %d)\n", v127, 209, v128, "AVE_PrepareHEVCLevel", 3005, *(v43 + 8), *(a1 + 24316));
            v127 = sub_175AE4();
            sub_160F68(5);
            v130 = *(a1 + 104632);
            v261 = *(a1 + 24316);
            v43 = a1 + 104624;
          }

          else
          {
            v255 = *(v43 + 8);
          }

          syslog(3, "%lld %d AVE %s: %s:%d level %d incompatible with other settings (min should be %d)", v127);
        }

        v135 = 4294966295;
        goto LABEL_239;
      }

      if (v124 != v125)
      {
        if (sub_160EF0(0xD1u, 6))
        {
          v136 = sub_160F34(0xD1u);
          v137 = sub_175AE4();
          v138 = sub_160F68(6);
          v139 = *(v43 + 8);
          if (v136)
          {
            printf("%lld %d AVE %s: %s:%d level received (%d) is too high... consider lowering it with these settings (min should be %d)\n", v137, 209, v138, "AVE_PrepareHEVCLevel", 3013, *(v43 + 8), *(a1 + 24316));
            v137 = sub_175AE4();
            sub_160F68(6);
            v140 = *(v43 + 8);
            v262 = *(a1 + 24316);
          }

          else
          {
            v254 = *(v43 + 8);
          }

          syslog(3, "%lld %d AVE %s: %s:%d level received (%d) is too high... consider lowering it with these settings (min should be %d)", v137);
        }

        v135 = 0;
        v141 = *(v43 + 8);
        *(a1 + 24316) = v141;
        *(a1 + 12080) = v141;
        goto LABEL_240;
      }
    }

    v135 = 0;
LABEL_239:
    v141 = *(a1 + 24316);
LABEL_240:
    if (v141 == 18)
    {
      *(a1 + 12024) = 2;
      *(a1 + 24260) = 2;
      *(a1 + 12120) = 16843009;
      *(a1 + 12124) = 257;
      *(a1 + 24356) = 16843009;
      *(a1 + 24360) = 257;
    }

    if (sub_160EF0(0xD1u, 7))
    {
      v142 = sub_160F34(0xD1u);
      v143 = sub_175AE4();
      v144 = sub_160F68(7);
      v145 = *(a1 + 24316);
      if (v142)
      {
        printf("%lld %d AVE %s: %s:%d end with level %d (min %d)\n", v143, 209, v144, "AVE_PrepareHEVCLevel", 3034, *(a1 + 24316), v123);
        v143 = sub_175AE4();
        sub_160F68(7);
        v146 = *(a1 + 24316);
      }

      else
      {
        v256 = *(a1 + 24316);
      }

      syslog(3, "%lld %d AVE %s: %s:%d end with level %d (min %d)", v143);
      v43 = a1 + 104624;
    }

    goto LABEL_247;
  }

  if (sub_160EF0(0xD1u, 4))
  {
    v131 = sub_160F34(0xD1u);
    v132 = sub_175AE4();
    v133 = sub_160F68(4);
    if (v131)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid level\n", v132, 209, v133, "AVE_PrepareHEVCLevel", 2990, "eLevel != HEVC_Level_Invalid");
      v134 = sub_175AE4();
      v247 = sub_160F68(4);
      v43 = a1 + 104624;
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level", v134, 209, v247, "AVE_PrepareHEVCLevel", 2990, "eLevel != HEVC_Level_Invalid");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level", v132, 209, v133, "AVE_PrepareHEVCLevel", 2990, "eLevel != HEVC_Level_Invalid");
    }
  }

  v135 = 4294966295;
LABEL_247:
  if (sub_160EF0(0xD1u, 6))
  {
    v147 = sub_160F34(0xD1u);
    v148 = sub_175AE4();
    v149 = sub_160F68(6);
    if (v147)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v148, 209, v149, "AVE_PrepareHEVCLevel", a1, v135);
      v150 = sub_175AE4();
      v248 = sub_160F68(6);
      v43 = a1 + 104624;
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v150, 209, v248, "AVE_PrepareHEVCLevel", a1, v135);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v148, 209, v149, "AVE_PrepareHEVCLevel", a1, v135);
    }
  }

  if (v135)
  {
    if (sub_160EF0(3u, 4))
    {
      v151 = sub_160F34(3u);
      v152 = sub_175AE4();
      v153 = sub_160F68(4);
      if (v151)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_PrepareHEVCLevel failed\n", v152, 3, v153, "AVE_ManageSessionSettings", 7340, "err == 0");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_PrepareHEVCLevel failed");
    }

    return v135;
  }

  v154 = sub_1502C8();
  v155 = v154;
  v156 = *(v154 + 224);
  if ((v156 & 0x80000000) == 0)
  {
    *(a1 + 1264) = v156;
    if (v156 == 1)
    {
      *(a1 + 1252) = 0;
    }
  }

  v157 = *(v154 + 225);
  if ((v157 & 0x80000000) == 0)
  {
    *(a1 + 1268) = v157;
  }

  v158 = v154[113];
  if (v158 >= 0.0)
  {
    *(a1 + 1272) = v158;
  }

  v159 = v154[114];
  if (v159 >= 0.0)
  {
    *(a1 + 1280) = v159;
  }

  v160 = *(a1 + 716);
  v161 = *(v154 + 7);
  v162 = *(a1 + 1456) | *(v154 + 6);
  v164 = *(v154 + 4);
  v163 = *(v154 + 5);
  v165 = (*(a1 + 1448) | v164) & ~v163;
  *(a1 + 1448) = v165;
  *(a1 + 1456) = v162 & ~v161;
  v166 = v165 | v164 & 0x20;
  v167 = v165 & 0xFFFFFFFFFFFFFFDFLL;
  if ((v163 & 0x20) == 0)
  {
    v167 = v166;
  }

  if (((v163 | v164) & 0x20) != 0)
  {
    *(a1 + 1448) = v167;
  }

  if ((v167 & 0x20) == 0)
  {
    v168 = v160;
    if ((v163 & 0x20) == 0)
    {
      goto LABEL_284;
    }

LABEL_283:
    *(a1 + 716) = v168 & 0xFFFFFC3F;
    goto LABEL_284;
  }

  if (*(v154 + 1) == 1)
  {
    v169 = sub_1523E8(*(a1 + 68), *(a1 + 64), v160, *(a1 + 10772), *(v43 + 3376));
    v170 = *(a1 + 716);
    if (v169)
    {
      v168 = v170 & 0xFFFFFC3F;
    }

    else
    {
      v168 = v170 | 0x3C0;
    }
  }

  else
  {
    v168 = v160 | 0x3C0;
  }

  *(a1 + 716) = v168;
  v167 = *(a1 + 1448);
  if ((v167 & 0x1000000) != 0)
  {
    *(a1 + 11810) = 1;
  }

  v163 = *(v155 + 5);
  if ((v163 & 0x1000000) != 0)
  {
    *(a1 + 11810) = 0;
    if ((v167 & 0x4000000) == 0)
    {
LABEL_281:
      if ((v163 & 0x4000000) == 0)
      {
        goto LABEL_282;
      }

      goto LABEL_375;
    }
  }

  else if ((v167 & 0x4000000) == 0)
  {
    goto LABEL_281;
  }

  *(a1 + 10552) = 1;
  if ((v163 & 0x4000000) == 0)
  {
LABEL_282:
    if ((v163 & 0x20) == 0)
    {
      goto LABEL_284;
    }

    goto LABEL_283;
  }

LABEL_375:
  *(a1 + 10552) = 2;
  if ((v163 & 0x20) != 0)
  {
    goto LABEL_283;
  }

LABEL_284:
  v171 = *(v155 + 272);
  if ((v171 & 0x80000000) == 0)
  {
    *(a1 + 11812) = v171;
  }

  v172 = *(v155 + 273);
  if ((v172 & 0x80000000) == 0)
  {
    *(a1 + 1396) = v172;
  }

  if ((v167 & 0x40) != 0)
  {
    *v274 = 1;
    if ((v163 & 0x40) == 0)
    {
LABEL_290:
      if ((v167 & 0x200) == 0)
      {
        goto LABEL_291;
      }

      goto LABEL_330;
    }
  }

  else if ((v163 & 0x40) == 0)
  {
    goto LABEL_290;
  }

  *v274 = 0;
  if ((v167 & 0x200) == 0)
  {
LABEL_291:
    if ((v163 & 0x200) == 0)
    {
      goto LABEL_292;
    }

    goto LABEL_331;
  }

LABEL_330:
  *(a1 + 39959) = 1;
  if ((v163 & 0x200) == 0)
  {
LABEL_292:
    if ((v167 & 0x400) == 0)
    {
      goto LABEL_293;
    }

    goto LABEL_332;
  }

LABEL_331:
  *(a1 + 39959) = 0;
  if ((v167 & 0x400) == 0)
  {
LABEL_293:
    if ((v163 & 0x400) == 0)
    {
      goto LABEL_294;
    }

    goto LABEL_333;
  }

LABEL_332:
  *(a1 + 12016) = 1;
  *v41 = 1;
  if ((v163 & 0x400) == 0)
  {
LABEL_294:
    if ((v167 & 0x20000) == 0)
    {
      goto LABEL_295;
    }

    goto LABEL_334;
  }

LABEL_333:
  *(a1 + 12016) = 0;
  *v41 = 0;
  if ((v167 & 0x20000) == 0)
  {
LABEL_295:
    if ((v163 & 0x20000) == 0)
    {
      goto LABEL_296;
    }

    goto LABEL_335;
  }

LABEL_334:
  *(a1 + 10205) = 1;
  if ((v163 & 0x20000) == 0)
  {
LABEL_296:
    if ((v167 & 0x40000) == 0)
    {
      goto LABEL_297;
    }

    goto LABEL_336;
  }

LABEL_335:
  *(a1 + 10205) = 0;
  if ((v167 & 0x40000) == 0)
  {
LABEL_297:
    if ((v163 & 0x40000) == 0)
    {
      goto LABEL_298;
    }

    goto LABEL_337;
  }

LABEL_336:
  *(a1 + 10206) = 1;
  if ((v163 & 0x40000) == 0)
  {
LABEL_298:
    if ((v167 & 0x80000) == 0)
    {
      goto LABEL_299;
    }

    goto LABEL_338;
  }

LABEL_337:
  *(a1 + 10206) = 0;
  if ((v167 & 0x80000) == 0)
  {
LABEL_299:
    if ((v163 & 0x80000) == 0)
    {
      goto LABEL_300;
    }

    goto LABEL_339;
  }

LABEL_338:
  *(a1 + 1336) |= 0x200u;
  if ((v163 & 0x80000) == 0)
  {
LABEL_300:
    if ((v167 & 0x100000) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_340;
  }

LABEL_339:
  *(a1 + 1336) &= ~0x200u;
  if ((v167 & 0x100000) == 0)
  {
LABEL_301:
    if ((v163 & 0x100000) == 0)
    {
      goto LABEL_303;
    }

    goto LABEL_302;
  }

LABEL_340:
  *(a1 + 10855) = 1;
  if ((v163 & 0x100000) != 0)
  {
LABEL_302:
    *(a1 + 10855) = 0;
  }

LABEL_303:
  v173 = *(v155 + 96);
  v174 = *(v155 + 97);
  *(a1 + 1120) = (*(a1 + 1120) | v173) & ~v174;
  if ((v173 & 0x40) != 0)
  {
    *(a1 + 1476) = 1;
    if ((v174 & 0x40) == 0)
    {
LABEL_305:
      if ((v173 & 0x10000) == 0)
      {
        goto LABEL_306;
      }

      goto LABEL_344;
    }
  }

  else if ((v174 & 0x40) == 0)
  {
    goto LABEL_305;
  }

  *(a1 + 1476) = 0;
  if ((v173 & 0x10000) == 0)
  {
LABEL_306:
    if ((v174 & 0x10000) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_345;
  }

LABEL_344:
  *(a1 + 10847) = 1;
  if ((v174 & 0x10000) == 0)
  {
LABEL_307:
    if ((v173 & 0x40000) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_346;
  }

LABEL_345:
  *(a1 + 10847) = 0;
  if ((v173 & 0x40000) == 0)
  {
LABEL_308:
    if ((v174 & 0x40000) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_347;
  }

LABEL_346:
  *(a1 + 10851) = 1;
  if ((v174 & 0x40000) == 0)
  {
LABEL_309:
    if ((v173 & 0x80000) == 0)
    {
      goto LABEL_310;
    }

    goto LABEL_348;
  }

LABEL_347:
  *(a1 + 10851) = 0;
  if ((v173 & 0x80000) == 0)
  {
LABEL_310:
    if ((v174 & 0x80000) == 0)
    {
      goto LABEL_311;
    }

    goto LABEL_349;
  }

LABEL_348:
  *(a1 + 10852) = 1;
  if ((v174 & 0x80000) == 0)
  {
LABEL_311:
    if ((v173 & 0x100000) == 0)
    {
      goto LABEL_312;
    }

    goto LABEL_350;
  }

LABEL_349:
  *(a1 + 10852) = 0;
  if ((v173 & 0x100000) == 0)
  {
LABEL_312:
    if ((v174 & 0x100000) == 0)
    {
      goto LABEL_313;
    }

    goto LABEL_351;
  }

LABEL_350:
  *(a1 + 10853) = 1;
  *(a1 + 10849) = 1;
  if ((v174 & 0x100000) == 0)
  {
LABEL_313:
    if ((v173 & 0x800000) == 0)
    {
      goto LABEL_314;
    }

LABEL_352:
    *(a1 + 1336) |= 0x4000000u;
    if ((v174 & 0x800000) == 0)
    {
      goto LABEL_316;
    }

    goto LABEL_315;
  }

LABEL_351:
  *(a1 + 10853) = 0;
  *(a1 + 10849) = 0;
  if ((v173 & 0x800000) != 0)
  {
    goto LABEL_352;
  }

LABEL_314:
  if ((v174 & 0x800000) != 0)
  {
LABEL_315:
    *(a1 + 1336) &= ~0x4000000u;
  }

LABEL_316:
  v175 = *(v155 + 242);
  if (v175)
  {
    *(a1 + 1352) |= v175;
  }

  v176 = *(v155 + 243);
  if (v176)
  {
    *(a1 + 1352) &= ~v176;
  }

  if ((v173 & 0x2000000) != 0)
  {
    *(a1 + 10846) = 1;
  }

  if ((v174 & 0x2000000) != 0)
  {
    *(a1 + 10846) = 0;
  }

  v177 = *(v155 + 230);
  if (v177)
  {
    *(a1 + 10200) = 1;
    *(a1 + 1296) |= 1u;
    *(a1 + 39957) = 1;
    *(a1 + 48356) = 1;
  }

  v178 = *(v155 + 231);
  if (v178)
  {
    *(a1 + 10200) = 0;
    v179 = *(a1 + 1296) & 0xFFFFFFFE;
    *(a1 + 39957) = 0;
    *(a1 + 48356) = 0;
  }

  else
  {
    v179 = *(a1 + 1296);
  }

  *(a1 + 1336) = ((*(a1 + 1336) | *(v155 + 237)) & ~*(v155 + 238) | *(v155 + 237) & 0x106) & (~*(v155 + 238) | 0xFFFFFEF9);
  *(a1 + 1240) = (*(a1 + 1240) | *(v155 + 218)) & ~*(v155 + 219);
  *(a1 + 1296) = (v179 | v177) & ~v178;
  v181 = *(v155 + 16);
  v180 = *(v155 + 17);
  *(a1 + 688) = (*(a1 + 688) | v181) & ~v180;
  if ((v181 & 0x400) != 0)
  {
    *(a1 + 10172) = 1;
  }

  if ((v180 & 0x400) != 0)
  {
    *(a1 + 10172) = 0;
  }

  if ((*(v155 + 412) & 8) != 0)
  {
    *(a1 + 1464) = 0x8000000;
  }

  v182 = *(v155 + 200);
  if (v182 >= 1)
  {
    *(a1 + 1136) = v182;
  }

  v183 = *(v155 + 18);
  if ((v183 - 1) <= 0x2F)
  {
    *(a1 + 11772) = v183;
  }

  v184 = *(v155 + 256);
  if (v184 >= 1)
  {
    *(a1 + 1368) = v184;
  }

  v185 = *(v155 + 259);
  if ((v185 & 0x80000000) == 0)
  {
    *(a1 + 10788) = v185;
    if (v185 >= 5)
    {
      if (sub_160EF0(0x10u, 4))
      {
        v188 = sub_160F34(0x10u);
        v189 = sub_175AE4();
        v190 = sub_160F68(4);
        if (v188)
        {
          printf("%lld %d AVE %s: FIG: SetProperty AVE_kVTCompressionPropertyKey_SAOMode not supported (%d)\n", v189, 16, v190, v185);
          v191 = sub_175AE4();
          v249 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: FIG: SetProperty AVE_kVTCompressionPropertyKey_SAOMode not supported (%d)", v191, 16, v249, v185);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: SetProperty AVE_kVTCompressionPropertyKey_SAOMode not supported (%d)", v189, 16, v190, v185);
        }
      }

      LOBYTE(v186) = 0;
      LOBYTE(v187) = 0;
    }

    else
    {
      v186 = 0x101000100uLL >> (8 * v185);
      v187 = 0x101010000uLL >> (8 * v185);
    }

    *(a1 + 59393) = v186;
    *(a1 + 59394) = v187;
  }

  v192 = *(v155 + 255);
  if (sub_E71EC(*(a1 + 68), 1, 2, v192))
  {
    *v10 = v192;
  }

  v193 = *(v155 + 223);
  if (v193 >= 1)
  {
    *(a1 + 1288) = v193;
  }

  if ((*v155 & 0x80000000) == 0)
  {
    *(a1 + 11460) = *v155;
  }

  v194 = *(v155 + 190);
  if (v194 >= 1)
  {
    *(a1 + 1112) = v194;
  }

  v195 = *(v155 + 196);
  if (v195 != -13)
  {
    *(a1 + 1232) = v195;
  }

  v196 = *(v155 + 197);
  if (v196 != -13)
  {
    *(a1 + 1236) = v196;
  }

  v197 = *(v155 + 240);
  if (v197 != -13)
  {
    *(a1 + 1344) = v197;
  }

  v198 = *(v155 + 241);
  if (v198 != -13)
  {
    *(a1 + 1348) = v198;
  }

  v199 = *(v155 + 201);
  if (v199 != -13)
  {
    *(a1 + 1144) = v199;
  }

  v200 = *(v155 + 202);
  if (v200 != -13)
  {
    *(a1 + 1148) = v200;
  }

  v201 = *(v155 + 203);
  if (v201 != -13)
  {
    *(a1 + 1152) = v201;
  }

  v202 = *(v155 + 260);
  if (v202 <= 4)
  {
    *(a1 + 10860) = v202;
  }

  if (*(v155 + 262))
  {
    v203 = 0;
    v204 = a1 + 10544;
    v205 = 1;
    do
    {
      v206 = v205;
      v207 = *(v204 + 4 * v203);
      v208 = (*(v155 + 262) / 100.0 + 1.0) * v207;
      if (v208 >= 25.0 || v208 < 0.0)
      {
        v208 = v207;
      }

      *(v204 + 4 * v203) = v208;
      v203 = 1;
      v205 = 0;
    }

    while ((v206 & 1) != 0);
  }

  v210 = *(v155 + 261);
  if ((v210 & 0x80000000) == 0)
  {
    *(a1 + 10544) = v210;
    *(a1 + 10548) = v210;
  }

  v211 = *(v155 + 400);
  if (v211 >= 1)
  {
    *(a1 + 11792) = v211;
  }

  v212 = *(v155 + 401);
  if (v212 >= 1)
  {
    *(a1 + 11796) = v212;
  }

  v213 = *(v155 + 189);
  if ((v213 & 0x80000000) == 0)
  {
    *(a1 + 10808) = v213;
    *(a1 + 10845) = 1;
  }

  v214 = *(v155 + 254);
  if (v214 >= 1)
  {
    *(a1 + 10252) = v214;
  }

  v215 = *(v155 + 258);
  if (v215 <= 2)
  {
    *(a1 + 60062) = v215 != 0;
  }

  v216 = *(v155 + 123);
  if (v216)
  {
    *(a1 + 1096) |= v216;
  }

  v217 = *(v155 + 124);
  if (v217)
  {
    *(a1 + 1096) &= ~v217;
  }

  if (*(a1 + 1450))
  {
    *(a1 + 10928) = 1;
    *(a1 + 14424) = 1;
    *(a1 + 31408) = 1;
    *(a1 + 1096) |= 0x1EuLL;
  }

  if ((v217 & 0x80000000) != 0)
  {
    *(a1 + 10928) = 0;
    *(a1 + 1096) &= 0xFFFFFFFFFFFFFFE1;
  }

  v218 = *(v155 + 199);
  if (v218 >= 1)
  {
    *(a1 + 1132) = v218;
  }

  v219 = *(v155 + 200);
  if (v219 >= 1)
  {
    *(a1 + 1136) = v219;
  }

  v220 = *(v155 + 198);
  if ((v220 & 0x80000000) == 0)
  {
    *(a1 + 1128) = v220;
    *(a1 + 1120) |= 0x80000000uLL;
  }

  v221 = v155[102];
  if (v221 >= 0.0)
  {
    *(a1 + 1200) = v221;
  }

  v222 = *(v155 + 397);
  if (v222 >= 1)
  {
    *(a1 + 720) = v222;
  }

  v223 = *(a1 + 716);
  if (v160 != v223)
  {
    v224 = *(a1 + 24732) + 8;
    if (v224 <= *(a1 + 24736) + 8)
    {
      v224 = *(a1 + 24736) + 8;
    }

    if (sub_DDADC(*(a1 + 68), *(a1 + 64), v223, 2, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v224, 0, 0x414C4C20u, *(a1 + 16)) && sub_160EF0(0x1Eu, 4))
    {
      v225 = sub_160F34(0x1Eu);
      v226 = sub_175AE4();
      v227 = sub_160F68(4);
      if (v225)
      {
        printf("%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.\n", v226, 30, v227, "AVE_HEVC_ApplyDW", 6799, "ret == 0");
        v228 = sub_175AE4();
        v250 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v228, 30, v250, "AVE_HEVC_ApplyDW", 6799, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v226, 30, v227, "AVE_HEVC_ApplyDW", 6799, "ret == 0");
      }
    }
  }

  if ((*(a1 + 688) & 4) != 0)
  {
    v229 = *(a1 + 1112);
    if (v229 >= 1)
    {
      v230 = v229;
    }

    else
    {
      v230 = 30.0;
    }

    if (sub_160EF0(0x1Eu, 6))
    {
      v231 = sub_160F34(0x1Eu);
      v232 = sub_175AE4();
      v233 = sub_160F68(6);
      v234 = *(a1 + 1444);
      v235 = *(a1 + 1136);
      v236 = v230 * ((v234 * *(a1 + 1440)) * 1.5) * 0.2;
      if (v231)
      {
        printf("%lld %d AVE %s: FIG: PrepareMemoryUsage - br %d, thr %f\n", v232, 30, v233, v235, v230 * ((v234 * *(a1 + 1440)) * 1.5) * 0.2);
        v237 = sub_175AE4();
        v251 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: PrepareMemoryUsage - br %d, thr %f", v237, 30, v251, *(a1 + 1136), v230 * ((*(a1 + 1444) * *(a1 + 1440)) * 1.5) * 0.2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: PrepareMemoryUsage - br %d, thr %f", v232, 30, v233, v235, v230 * ((v234 * *(a1 + 1440)) * 1.5) * 0.2);
      }
    }

    if (v230 * ((*(a1 + 1444) * *(a1 + 1440)) * 1.5) * 0.2 > *(a1 + 1136))
    {
      *(a1 + 11804) = 50;
    }
  }

  v135 = sub_102AD4(a1);
  if (v135 && sub_160EF0(3u, 4))
  {
    v238 = sub_160F34(3u);
    v239 = sub_175AE4();
    v240 = sub_160F68(4);
    if (v238)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v239, 3, v240, "AVE_ManageSessionSettings", 7360, "err == 0");
      sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
  }

  return v135;
}

uint64_t sub_10C92C(uint64_t a1, const __CFDictionary *a2, unint64_t *a3, unsigned int *a4, uint64_t a5)
{
  if (sub_160EF0(0xCu, 7))
  {
    v10 = sub_160F34(0xCu);
    v11 = sub_175AE4();
    v12 = sub_160F68(7);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p\n", v11, 12, v12, "AVE_GetPerFrameData", a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v280 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", v13, 12, v280);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", v11, 12, v12);
    }
  }

  if (a4)
  {
    v14 = a1 + 104640;
    *(a3 + 216) = *(a1 + 1136);
    *(a3 + 212) = *(a1 + 1112);
    v15 = *(a1 + 1160);
    v16 = *(a1 + 1176);
    a3[113] = *(a1 + 1192);
    *(a3 + 109) = v15;
    *(a3 + 111) = v16;
    *(a1 + 104640) = 0;
    *(a4 + 1357) = *(a1 + 10788) == 4;
    *(a4 + 1358) = *(a1 + 10848);
    *(a4 + 1359) = *(a1 + 10849);
    *(a3 + 28) = *(a1 + 688) & 2;
    a4[342] = *(a1 + 10808);
    *(a4 + 1362) = *(a1 + 10204);
    v17 = *(a1 + 106088);
    if (!v17)
    {
      v17 = *(a1 + 1440);
    }

    v18 = a4 + 133;
    a4[140] = v17;
    v19 = *(a1 + 106092);
    if (!v19)
    {
      v19 = *(a1 + 1444);
    }

    a4[141] = v19;
    *(a4 + 1356) = 0;
    if ((*(a1 + 716) & 0x3C0) == 0)
    {
      *a3 &= ~4uLL;
      goto LABEL_58;
    }

    v20 = *(a1 + 1444);
    v21 = *(a1 + 1440);
    *(a3 + 242) = *(a1 + 4 * *(a5 + 188) + 108008);
    if (*(a1 + 11810) == 1)
    {
      v22 = *(sub_1502C8() + 263);
      if (v22 >= 1)
      {
        v23 = *(a1 + 104648);
        if (v23 <= 3)
        {
          v24 = *a3 | 4;
          *a3 = v24;
          *(a1 + 108016) |= 4uLL;
          goto LABEL_22;
        }

        v61 = v23 % v22;
        v24 = *(a1 + 108016);
        if (!v61)
        {
          v24 = (*a3 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v24 >> 2) & 1))) ^ 4;
          *a3 = v24;
          *(a1 + 108016) = v24;
LABEL_22:
          v30 = *(a5 + 136);
          v31 = *(v30 + 56);
          v32 = 1.0;
          if (v31 == 0.0)
          {
            v31 = 1.0;
          }

          *(a4 + 175) = v31;
          v33 = *(v30 + 80);
          a4[352] = v33;
          v34 = *(a1 + 76);
          if (v34 <= 26)
          {
            if (v33 != 1)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v35 = *(v30 + 64);
            v38 = v35 == 2418 && v33 == 2 || v33 == 1;
            if (v34 < 0x1E)
            {
              if (!v38)
              {
                goto LABEL_47;
              }
            }

            else if (v35 != 2419 && !v38)
            {
              goto LABEL_47;
            }
          }

          v39 = ((v21 + 15) >> 4) * ((v20 + 15) >> 4);
          if (v39 > 3600)
          {
            if (v39 > 0x1FE0)
            {
LABEL_46:
              *(a4 + 175) = v32;
              goto LABEL_47;
            }

            if (v31 > 0.5)
            {
              goto LABEL_47;
            }
          }

          else if (v31 >= 0.39)
          {
LABEL_47:
            if (*(a1 + 104648) <= 5u)
            {
              *a3 = v24 | 4;
            }

            if (sub_160EF0(0x10u, 8))
            {
              v40 = sub_160F34(0x10u);
              v41 = sub_175AE4();
              v42 = sub_160F68(8);
              v43 = *(a1 + 104648);
              v44 = *(*(a5 + 136) + 72);
              v45 = *a3;
              if (v40)
              {
                printf("%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx\n", v41, 16, v42, v43, *(*(a5 + 136) + 72), v45);
                v46 = sub_175AE4();
                v47 = sub_160F68(8);
                syslog(3, "%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx", v46, 16, v47, *(a1 + 104648), *(*(a5 + 136) + 72), *a3);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx", v41, 16, v42, v43, *(*(a5 + 136) + 72), v45);
              }
            }

            v48 = a1 + 108024;
            v49 = *(a5 + 188);
            v50 = *(a1 + 108024 + 4 * v49);
            if ((*a3 & 4) == 0)
            {
              if ((v50 - 1) > 4)
              {
                *(v48 + 4 * v49) = 0;
LABEL_58:
                *a4 = 0;
                *(a4 + 1392) = 0;
                *(a4 + 2374) = 0;
                *(a4 + 3) = 0;
                *(a4 + 30) = 0;
                v311 = a5;
                *(a5 + 64) = 0;
                *(a4 + 48) = 0;
                a4[13] = -1;
                *(a4 + 5) = 0xFFFFFFF3FFFFFFFFLL;
                *&v51 = -1;
                *(&v51 + 1) = -1;
                *(a4 + 17) = v51;
                v52 = (a4 + 17);
                *(a4 + 15) = 0;
                *(a4 + 21) = v51;
                *v18 = 0;
                a4[135] = -1;
                *(a4 + 343) = v51;
                if (!a2)
                {
                  v58 = 0;
                  a5 = v311;
                  goto LABEL_271;
                }

                v307 = a4 + 343;
                if (sub_160EF0(0x1Du, 6))
                {
                  v53 = sub_160F34(0x1Du);
                  v54 = sub_175AE4();
                  v55 = sub_160F68(6);
                  v56 = *(a1 + 104648);
                  if (v53)
                  {
                    printf("%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d\n", v54, 29, v55, v56);
                    v57 = sub_175AE4();
                    v282 = sub_160F68(6);
                    syslog(3, "%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d", v57, 29, v282, *(a1 + 104648));
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d", v54, 29, v55, v56);
                  }
                }

                Value = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_ForceKeyFrame);
                if (Value && CFEqual(Value, kCFBooleanTrue))
                {
                  if (*(a1 + 10532))
                  {
                    v60 = 3;
                  }

                  else
                  {
                    v60 = (*(a1 + 1241) & 1) != 0 ? 1 : 2;
                  }

                  *a4 = v60;
                  *(a3 + 230) |= 1u;
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v62 = sub_160F34(0x1Du);
                    v63 = sub_175AE4();
                    v64 = sub_160F68(6);
                    v65 = *a4;
                    v66 = *(a3 + 230);
                    if (v62)
                    {
                      printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x\n", v63, 29, v64, *a4, v66);
                      v67 = sub_175AE4();
                      v68 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v67, 29, v68, *a4, *(a3 + 230));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v63, 29, v64, *a4, v66);
                    }
                  }
                }

                v69 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_FirstMbInRecvSlices);
                if (v69)
                {
                  v70 = v69;
                  TypeID = CFDataGetTypeID();
                  if (TypeID == CFGetTypeID(v70))
                  {
                    *(a3 + 232) |= 0x10u;
                    if (sub_160EF0(0x1Du, 6))
                    {
                      v72 = sub_160F34(0x1Du);
                      v73 = sub_175AE4();
                      v74 = sub_160F68(6);
                      if (v72)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices\n", v73, 29, v74);
                        v75 = sub_175AE4();
                        v283 = sub_160F68(6);
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices", v75, 29, v283);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices", v73, 29, v74);
                      }
                    }
                  }
                }

                v76 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_ForceRefresh);
                if (v76)
                {
                  if (CFEqual(v76, kCFBooleanTrue))
                  {
                    *(a3 + 232) |= 0x10u;
                    if (sub_160EF0(0x1Du, 6))
                    {
                      v77 = sub_160F34(0x1Du);
                      v78 = sub_175AE4();
                      v79 = sub_160F68(6);
                      v80 = *(a3 + 232);
                      if (v77)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x\n", v78, 29, v79, v80);
                        v81 = sub_175AE4();
                        v284 = sub_160F68(6);
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x", v81, 29, v284, *(a3 + 232));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x", v78, 29, v79, v80);
                      }
                    }
                  }
                }

                v82 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_RepeatedFrame);
                if (v82)
                {
                  if (CFEqual(v82, kCFBooleanTrue))
                  {
                    *a3 |= 8uLL;
                    if (sub_160EF0(0x1Du, 6))
                    {
                      v83 = sub_160F34(0x1Du);
                      v84 = sub_175AE4();
                      v85 = sub_160F68(6);
                      v86 = *a3;
                      if (v83)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx\n", v84, 29, v85, v86);
                        v87 = sub_175AE4();
                        v285 = sub_160F68(6);
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx", v87, 29, v285, *a3);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx", v84, 29, v85, v86);
                      }
                    }
                  }
                }

                v88 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_UserQpMap);
                a4[8] = 0;
                *(a4 + 3) = 0;
                *(a3 + 234) &= ~0x10000u;
                if (*(a1 + 1338))
                {
                  v89 = v88;
                  if (v88)
                  {
                    a4[8] = CFDataGetLength(v88);
                    *(a4 + 3) = CFDataGetBytePtr(v89);
                    *(a3 + 234) |= 0x10000u;
                  }
                }

                v90 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_VRAUsedDimension);
                if (v90)
                {
                  LODWORD(valuePtr) = 0;
                  CFNumberGetValue(v90, kCFNumberSInt32Type, &valuePtr);
                  v91 = valuePtr;
                  a4[2] = WORD1(valuePtr);
                  a4[3] = v91;
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v92 = sub_160F34(0x1Du);
                    v93 = sub_175AE4();
                    v94 = sub_160F68(6);
                    v95 = a4[2];
                    v96 = a4[3];
                    if (v92)
                    {
                      printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d\n", v93, 29, v94, a4[2], v96);
                      v97 = sub_175AE4();
                      v98 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d", v97, 29, v98, a4[2], a4[3]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d", v93, 29, v94, a4[2], v96);
                    }
                  }
                }

                v99 = CFDictionaryGetValue(a2, @"AttachDPB");
                if (v99 && CFEqual(v99, kCFBooleanTrue))
                {
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v100 = sub_160F34(0x1Du);
                    v101 = sub_175AE4();
                    v102 = sub_160F68(6);
                    v103 = *(a1 + 104648);
                    if (v100)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)\n", v101, 29, v102, v103);
                      v104 = sub_175AE4();
                      v286 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)", v104, 29, v286, *(a1 + 104648));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)", v101, 29, v102, v103);
                    }
                  }

                  *(a4 + 36) = 1;
                }

                v105 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_SetDPB);
                if (v105)
                {
                  if (*(a1 + 104648))
                  {
                    v106 = v105;
                    if (sub_160EF0(0x1Du, 6))
                    {
                      v107 = sub_160F34(0x1Du);
                      v108 = sub_175AE4();
                      v109 = sub_160F68(6);
                      v110 = *(a1 + 104648);
                      if (v107)
                      {
                        printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)\n", v108, 29, v109, v110);
                        v111 = sub_175AE4();
                        v287 = sub_160F68(6);
                        syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)", v111, 29, v287, *(a1 + 104648));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)", v108, 29, v109, v110);
                      }

                      v14 = a1 + 104640;
                      v18 = a4 + 133;
                    }

                    *(a4 + 37) = 1;
                    *(v311 + 64) = v106;
                  }

                  else
                  {
                    if (sub_160EF0(0x10u, 5))
                    {
                      v112 = sub_160F34(0x10u);
                      v113 = sub_175AE4();
                      v114 = sub_160F68(5);
                      if (v112)
                      {
                        printf("%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true\n", v113, 16, v114);
                        v115 = sub_175AE4();
                        v288 = sub_160F68(5);
                        syslog(3, "%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true", v115, 16, v288);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true", v113, 16, v114);
                      }
                    }

                    if (sub_160EF0(0x10u, 5))
                    {
                      v116 = sub_160F34(0x10u);
                      v117 = sub_175AE4();
                      v118 = sub_160F68(5);
                      if (v116)
                      {
                        printf("%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag\n", v117, 16, v118);
                        v119 = sub_175AE4();
                        v289 = sub_160F68(5);
                        syslog(3, "%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag", v119, 16, v289);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag", v117, 16, v118);
                      }
                    }
                  }
                }

                v120 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_ExtraInLoopChromaFilter);
                if (v120 && CFEqual(v120, kCFBooleanTrue))
                {
                  *a3 |= 0x8000uLL;
                }

                v121 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_CalculateYUVChecksum);
                if (v121)
                {
                  LODWORD(valuePtr) = 0;
                  CFNumberGetValue(v121, kCFNumberSInt32Type, &valuePtr);
                  if (valuePtr)
                  {
                    *a3 |= 0x10000uLL;
                  }
                }

                v122 = CFDictionaryGetValue(a2, @"MarkCurrentFrameAsLTR");
                if (v122)
                {
                  if (CFEqual(v122, kCFBooleanTrue))
                  {
                    *(a4 + 48) = 1;
                    if (sub_160EF0(0x1Du, 6))
                    {
                      v123 = sub_160F34(0x1Du);
                      v124 = sub_175AE4();
                      v125 = sub_160F68(6);
                      if (v123)
                      {
                        printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE\n", v124, 29, v125);
                        v126 = sub_175AE4();
                        v290 = sub_160F68(6);
                        syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE", v126, 29, v290);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE", v124, 29, v125);
                      }
                    }
                  }
                }

                v127 = CFDictionaryGetValue(a2, @"RVRADimension");
                if (v127)
                {
                  LODWORD(valuePtr) = 0;
                  CFNumberGetValue(v127, kCFNumberSInt32Type, &valuePtr);
                  v128 = valuePtr;
                  a4[15] = WORD1(valuePtr);
                  a4[16] = v128;
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v129 = sub_160F34(0x1Du);
                    v130 = sub_175AE4();
                    v131 = sub_160F68(6);
                    v132 = a4[15];
                    v133 = a4[16];
                    if (v129)
                    {
                      printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d\n", v130, 29, v131, a4[15], v133);
                      v134 = sub_175AE4();
                      v135 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d", v134, 29, v135, a4[15], a4[16]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d", v130, 29, v131, a4[15], v133);
                    }
                  }
                }

                v136 = CFDictionaryGetValue(a2, @"FrameNumForLTRToReplace");
                if (v136)
                {
                  LODWORD(valuePtr) = 0;
                  CFNumberGetValue(v136, kCFNumberSInt32Type, &valuePtr);
                  a4[13] = valuePtr;
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v137 = sub_160F34(0x1Du);
                    v138 = sub_175AE4();
                    v139 = sub_160F68(6);
                    v140 = a4[13];
                    if (v137)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)\n", v138, 29, v139, v140);
                      v141 = sub_175AE4();
                      v291 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)", v141, 29, v291, a4[13]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)", v138, 29, v139, v140);
                    }
                  }
                }

                v142 = CFDictionaryGetValue(a2, @"UserFrameType");
                if (v142)
                {
                  LODWORD(valuePtr) = 5;
                  CFNumberGetValue(v142, kCFNumberSInt32Type, &valuePtr);
                  a4[10] = valuePtr;
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v143 = sub_160F34(0x1Du);
                    v144 = sub_175AE4();
                    v145 = sub_160F68(6);
                    v146 = a4[10];
                    if (v143)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)\n", v144, 29, v145, v146);
                      v147 = sub_175AE4();
                      v292 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)", v147, 29, v292, a4[10]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)", v144, 29, v145, v146);
                    }
                  }
                }

                v148 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_ReferenceL0);
                v309 = v14;
                v310 = a3;
                if (v148)
                {
                  v149 = v148;
                  v150 = CFArrayGetTypeID();
                  if (v150 == CFGetTypeID(v149))
                  {
                    LODWORD(valuePtr) = 4;
                    sub_1702C8(v149, a4 + 17, &valuePtr);
                    *(a4 + 56) = valuePtr;
                    if (sub_160EF0(0x1Du, 6))
                    {
                      v151 = sub_160F34(0x1Du);
                      v152 = sub_175AE4();
                      v153 = sub_160F68(6);
                      v154 = *(a4 + 56);
                      if (v151)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncoderFrameOptionKey_ReferenceL0, count = %d\n", v152, 29, v153, v154);
                        v155 = sub_175AE4();
                        v293 = sub_160F68(6);
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncoderFrameOptionKey_ReferenceL0, count = %d", v155, 29, v293, *(a4 + 56));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncoderFrameOptionKey_ReferenceL0, count = %d", v152, 29, v153, v154);
                      }
                    }

                    if (*(a4 + 56))
                    {
                      v156 = 0;
                      do
                      {
                        if ((*v52 & 0x80000000) == 0 && sub_160EF0(0x1Eu, 6))
                        {
                          v157 = sub_160F34(0x1Eu);
                          v158 = sub_175AE4();
                          v159 = sub_160F68(6);
                          v160 = *v52;
                          if (v157)
                          {
                            printf("%lld %d AVE %s: AVE Fig: userRefInfo_[%d].userRefFrameNumDriver = %d\n", v158, 30, v159, v156, v160);
                            v158 = sub_175AE4();
                            v159 = sub_160F68(6);
                            v160 = *v52;
                          }

                          syslog(3, "%lld %d AVE %s: AVE Fig: userRefInfo_[%d].userRefFrameNumDriver = %d", v158, 30, v159, v156, v160);
                          v14 = v309;
                          a3 = v310;
                        }

                        ++v156;
                        v52 += 2;
                      }

                      while (v156 < *(a4 + 56));
                    }
                  }
                }

                v161 = CFDictionaryGetValue(a2, @"SliceTcOffsetDiv2");
                if (v161)
                {
                  v162 = (a4 + 134);
                  CFNumberGetValue(v161, kCFNumberSInt32Type, a4 + 134);
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v163 = sub_160F34(0x1Du);
                    v164 = sub_175AE4();
                    v165 = sub_160F68(6);
                    v166 = *v162;
                    if (v163)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceTcOffsetDiv2 found (%d)\n", v164, 29, v165, v166);
                      v167 = sub_175AE4();
                      v294 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceTcOffsetDiv2 found (%d)", v167, 29, v294, *v162);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceTcOffsetDiv2 found (%d)", v164, 29, v165, v166);
                    }
                  }
                }

                v168 = CFDictionaryGetValue(a2, @"SliceBetaOffsetDiv2");
                if (v168)
                {
                  CFNumberGetValue(v168, kCFNumberSInt32Type, v18);
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v169 = sub_160F34(0x1Du);
                    v170 = sub_175AE4();
                    v171 = sub_160F68(6);
                    v172 = *v18;
                    if (v169)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)\n", v170, 29, v171, v172);
                      v173 = sub_175AE4();
                      v295 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)", v173, 29, v295, *v18);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)", v170, 29, v171, v172);
                    }
                  }
                }

                if ((*(a1 + 1296) & 1) != 0 && a4[10] == 1)
                {
                  v308 = sub_170D74(a2, *(a4 + 56), a4 + 25);
                  if (v308)
                  {
                    goto LABEL_186;
                  }

                  valuePtr = 0u;
                  v313 = 0u;
                  v278 = *(v14 + 8);
                  sub_172100(&valuePtr, 32, "%llu %d", v174, v175, v176, v177, v178, *(a1 + 56));
                  sub_171244(a4 + 25, 0xD7u, 6, &valuePtr, 0, v179, v180, v181);
                }

                v308 = 0;
LABEL_186:
                v182 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_FinalFrame);
                if (v182)
                {
                  if (CFEqual(v182, kCFBooleanTrue))
                  {
                    *a3 |= 2uLL;
                    if (sub_160EF0(0x1Du, 6))
                    {
                      v183 = sub_160F34(0x1Du);
                      v184 = sub_175AE4();
                      v185 = sub_160F68(6);
                      if (v183)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE\n", v184, 29, v185);
                        v186 = sub_175AE4();
                        v296 = sub_160F68(6);
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE", v186, 29, v296);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE", v184, 29, v185);
                      }
                    }
                  }
                }

                v187 = CFDictionaryGetValue(a2, @"ResetRCState");
                if (v187)
                {
                  v188 = CFEqual(v187, kCFBooleanTrue);
                  *(a4 + 4) = v188 != 0;
                  if (v188)
                  {
                    v189 = *(a1 + 1132);
                    if (v189 == 1)
                    {
                      sub_1544C0(*(v14 + 64));
                      *a4 = 2;
                      if (sub_160EF0(0x1Du, 6))
                      {
                        v193 = sub_160F34(0x1Du);
                        v194 = sub_175AE4();
                        v195 = sub_160F68(6);
                        if (v193)
                        {
                          printf("%lld %d AVE %s: FIG: received AVE_kVTEncodeFrameOptionKey_ResetRCState = %d, set forceKeyFrame to IDR\n", v194, 29, v195, *(a4 + 4));
                          sub_175AE4();
                          sub_160F68(6);
                          v196 = *(a4 + 4);
                        }

                        syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncodeFrameOptionKey_ResetRCState = %d, set forceKeyFrame to IDR");
                      }
                    }

                    else if (v189 == 20)
                    {
                      *(a4 + 4) = 0;
                      if (sub_160EF0(0x1Du, 5))
                      {
                        v190 = sub_160F34(0x1Du);
                        v191 = sub_175AE4();
                        v192 = sub_160F68(5);
                        if (v190)
                        {
                          printf("%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state for Direct RC.\n", v191, 29, v192);
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
                        v197 = sub_160F34(0x1Du);
                        v198 = sub_175AE4();
                        v199 = sub_160F68(5);
                        if (v197)
                        {
                          printf("%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state if RC is NOT On.\n", v198, 29, v199);
                          sub_175AE4();
                          sub_160F68(5);
                        }

                        syslog(3, "%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state if RC is NOT On.");
                      }
                    }
                  }
                }

                v200 = CFDictionaryGetValue(a2, @"RPSInfo");
                if (v200)
                {
                  v201 = v200;
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v202 = sub_160F34(0x1Du);
                    v203 = sub_175AE4();
                    v204 = sub_160F68(6);
                    if (v202)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kRPSInfo found \n", v203, 29, v204);
                      v205 = sub_175AE4();
                      v297 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kRPSInfo found ", v205, 29, v297);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kRPSInfo found ", v203, 29, v204);
                    }
                  }

                  v206 = a4[10];
                  if (v206 <= 6 && ((1 << v206) & 0x47) != 0)
                  {
                    sub_1574C0(v201, (a4 + 142));
                  }
                }

                v207 = kVTEncodeFrameOptionKey_SliceQP;
                v208 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_SliceQP);
                if (v208 && (v209 = v208, v210 = CFNumberGetTypeID(), v210 == CFGetTypeID(v209)))
                {
                  CFNumberGetValue(v209, kCFNumberSInt32Type, a4 + 11);
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v211 = sub_160F34(0x1Du);
                    v212 = sub_175AE4();
                    v213 = sub_160F68(6);
                    v214 = a4[11];
                    if (v211)
                    {
                      printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)\n", v212, 29, v213, v214);
                      v215 = sub_175AE4();
                      v298 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)", v215, 29, v298, a4[11]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)", v212, 29, v213, v214);
                    }
                  }
                }

                else
                {
                  v216 = CFDictionaryGetValue(a2, v207);
                  if (v216)
                  {
                    v217 = v216;
                    v218 = CFArrayGetTypeID();
                    if (v218 == CFGetTypeID(v217))
                    {
                      Count = CFArrayGetCount(v217);
                      LODWORD(valuePtr) = 0;
                      if (Count >= 1)
                      {
                        v220 = Count;
                        for (i = 0; i < v220; i = (i + 1))
                        {
                          sub_14AE14(v217, i, &valuePtr);
                          if (!i)
                          {
                            a4[11] = valuePtr;
                          }

                          if (sub_160EF0(0x1Du, 6))
                          {
                            v222 = sub_160F34(0x1Du);
                            v223 = sub_175AE4();
                            v224 = sub_160F68(6);
                            if (v222)
                            {
                              printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP[%d] found (%d)\n", v223, 29, v224, i, valuePtr);
                              v223 = sub_175AE4();
                              v224 = sub_160F68(6);
                            }

                            syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP[%d] found (%d)", v223, 29, v224, i, valuePtr);
                          }
                        }
                      }

                      v14 = v309;
                      a3 = v310;
                    }
                  }
                }

                v225 = CFDictionaryGetValue(a2, @"POCLsb");
                a5 = v311;
                if (v225)
                {
                  CFNumberGetValue(v225, kCFNumberSInt32Type, v307);
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v226 = sub_160F34(0x1Du);
                    v227 = sub_175AE4();
                    v228 = sub_160F68(6);
                    v229 = *v307;
                    if (v226)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)\n", v227, 29, v228, v229);
                      v230 = sub_175AE4();
                      v299 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)", v230, 29, v299, *v307);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)", v227, 29, v228, v229);
                    }
                  }
                }

                v231 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_PicParameterSetId);
                if (v231)
                {
                  v232 = (a4 + 135);
                  CFNumberGetValue(v231, kCFNumberSInt32Type, a4 + 135);
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v233 = sub_160F34(0x1Du);
                    v234 = sub_175AE4();
                    v235 = sub_160F68(6);
                    v236 = *v232;
                    if (v233)
                    {
                      printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)\n", v234, 29, v235, v236);
                      v237 = sub_175AE4();
                      v300 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)", v237, 29, v300, *v232);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)", v234, 29, v235, v236);
                    }
                  }
                }

                v238 = CFDictionaryGetValue(a2, @"UserSaoMap");
                if (v238)
                {
                  *(a4 + 1356) = CFEqual(v238, kCFBooleanTrue) != 0;
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v239 = sub_160F34(0x1Du);
                    v240 = sub_175AE4();
                    v241 = sub_160F68(6);
                    v242 = *(a4 + 1356);
                    if (v239)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_UserSaoMap found (%d)\n", v240, 29, v241, v242);
                      v243 = sub_175AE4();
                      v301 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_UserSaoMap found (%d)", v243, 29, v301, *(a4 + 1356));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_UserSaoMap found (%d)", v240, 29, v241, v242);
                    }
                  }
                }

                v244 = CFDictionaryGetValue(a2, @"NaluType");
                if (v244)
                {
                  v245 = (a4 + 344);
                  CFNumberGetValue(v244, kCFNumberSInt32Type, a4 + 344);
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v246 = sub_160F34(0x1Du);
                    v247 = sub_175AE4();
                    v248 = sub_160F68(6);
                    v249 = *v245;
                    if (v246)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_NaluType found (%d)\n", v247, 29, v248, v249);
                      v250 = sub_175AE4();
                      v302 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_NaluType found (%d)", v250, 29, v302, *v245);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_NaluType found (%d)", v247, 29, v248, v249);
                    }
                  }
                }

                v251 = CFDictionaryGetValue(a2, @"TemporalID");
                if (v251)
                {
                  v252 = (a4 + 345);
                  CFNumberGetValue(v251, kCFNumberSInt32Type, a4 + 345);
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v253 = sub_160F34(0x1Du);
                    v254 = sub_175AE4();
                    v255 = sub_160F68(6);
                    v256 = *v252;
                    if (v253)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_TemporalID found (%d)\n", v254, 29, v255, v256);
                      v257 = sub_175AE4();
                      v303 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_TemporalID found (%d)", v257, 29, v303, *v252);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_TemporalID found (%d)", v254, 29, v255, v256);
                    }
                  }
                }

                v258 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_RequestNonReferenceFrame);
                if (v258)
                {
                  if (CFEqual(v258, kCFBooleanTrue))
                  {
                    *(a4 + 1392) = 1;
                    if (sub_160EF0(0x1Du, 6))
                    {
                      v259 = sub_160F34(0x1Du);
                      v260 = sub_175AE4();
                      v261 = sub_160F68(6);
                      v262 = *(a4 + 1392);
                      if (v259)
                      {
                        printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)\n", v260, 29, v261, v262);
                        v263 = sub_175AE4();
                        v304 = sub_160F68(6);
                        syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)", v263, 29, v304, *(a4 + 1392));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)", v260, 29, v261, v262);
                      }
                    }
                  }
                }

                v264 = a3 + 100;
                if ((*(a1 + 1337) & 4) != 0)
                {
                  if (!sub_13D92C(a2, a3 + 200))
                  {
                    valuePtr = 0u;
                    v313 = 0u;
                    v279 = *(v14 + 8);
                    v305 = *v264;
                    sub_172100(&valuePtr, 32, "%llu %d %d", v265, v266, v267, v268, v269, *(a1 + 56));
                    sub_13D890(a3 + 200, 50, 6, &valuePtr, 0, v270, v271, v272);
                  }
                }

                else
                {
                  *v264 = 0;
                }

                v58 = v308;
                goto LABEL_271;
              }

              *a3 |= 4uLL;
            }

            *(v48 + 4 * v49) = v50 + 1;
            goto LABEL_58;
          }

          v32 = v31 + v31;
          goto LABEL_46;
        }

LABEL_21:
        *a3 = v24;
        goto LABEL_22;
      }

      v29 = *a3;
      if (*(*(a5 + 136) + 72) > 254)
      {
        v24 = v29 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_21;
      }
    }

    else
    {
      v29 = *a3;
    }

    v24 = v29 | 4;
    goto LABEL_21;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v25 = sub_160F34(0xCu);
    v26 = sub_175AE4();
    v27 = sub_160F68(4);
    if (v25)
    {
      printf("%lld %d AVE %s: %s:%d %s | PerFrameData = NULL\n", v26, 12, v27, "AVE_GetPerFrameData", 542, "PerFrameData != __null");
      v28 = sub_175AE4();
      v281 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | PerFrameData = NULL", v28, 12, v281, "AVE_GetPerFrameData", 542, "PerFrameData != __null");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | PerFrameData = NULL", v26, 12, v27, "AVE_GetPerFrameData", 542, "PerFrameData != __null");
    }
  }

  v58 = 4294966295;
LABEL_271:
  if (sub_160EF0(0xCu, 7))
  {
    v273 = sub_160F34(0xCu);
    v274 = sub_175AE4();
    v275 = sub_160F68(7);
    if (v273)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %d\n", v274, 12, v275, "AVE_GetPerFrameData", a1, a2, a3, a4, a5, v58);
      v276 = sub_175AE4();
      v306 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v276, 12, v306, "AVE_GetPerFrameData");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v274, 12, v275, "AVE_GetPerFrameData");
    }
  }

  return v58;
}

void sub_10E85C(uint64_t a1, uint64_t a2, _DWORD *a3, double a4)
{
  v8 = sub_1502C8();
  if (*(a1 + 10892))
  {
    return;
  }

  v10 = (a1 + 104648);
  if (*(a1 + 76) >= 4)
  {
    v11 = v8[402];
    if (*(a1 + 10804) == 2)
    {
      if ((*(a1 + 10853) & 1) == 0 && v11 <= 0)
      {
        goto LABEL_84;
      }
    }

    else if (v11 < 1)
    {
      goto LABEL_84;
    }

    v12 = a4;
    if (*v10)
    {
      v9 = 0.25;
      v12 = (a4 + *(a1 + 104744) * 3.0) * 0.25;
    }

    v13 = *(a2 + 864);
    *(a1 + 104744) = v12;
    if (v11 >= 1)
    {
      v12 = v11;
      *(a1 + 104744) = v11;
      if (v11 <= 0x19)
      {
        *a2 |= 0x10uLL;
      }
    }

    v14 = *(a1 + 1440);
    v15 = *(a1 + 1444);
    v16 = *(a1 + 1112);
    v17 = v16;
    v18 = v15 * v14;
    v19 = (v15 * v14) >> 12 > 0x7E8;
    v20 = v16 > 120 || (v15 * v14) >> 12 > 0x7E8;
    if (v16 <= 90)
    {
      v19 = 0;
    }

    v21 = v14;
    v22 = v15;
    if (v18 > 0x8CA00)
    {
      v26 = v21 * v22;
      if (v18 > 0x15F900)
      {
        if (v18 > 0x473100)
        {
          v23 = v26 / 8294400.0;
          if (v16 < 28)
          {
            v24 = 24.0;
            v25 = 18000000.0;
            goto LABEL_43;
          }

          if (v16 < 0x2E)
          {
            v24 = 30.0;
            v25 = 22500000.0;
            goto LABEL_43;
          }

          v27 = v16 >= 0x5B;
          v25 = dbl_185A40[v16 < 0x5B];
          v24 = 120.0;
          v30 = 60.0;
LABEL_41:
          if (!v27)
          {
            v24 = v30;
          }

LABEL_43:
          v31 = (v25 * v17 / v24);
          if (*(a1 + 10772) == 2)
          {
            v32 = *(a1 + 24732) == 2;
            v33 = 1.1;
            if (*(a1 + 24732) != 2)
            {
              v33 = 1.0;
            }
          }

          else
          {
            v32 = 0;
            v33 = 1.0;
          }

          v34 = v23 * v31 * v33;
          if (v20)
          {
            if (v19)
            {
              if (v12 <= 8.0)
              {
                v43 = 125.0;
              }

              else
              {
                if (v12 > 18.0)
                {
                  if (v12 <= 22.0)
                  {
                    v35 = v34 * 125.0;
LABEL_102:
                    v60 = v35 / 100.0;
                    if (v60 <= v13)
                    {
                      v60 = v13;
                    }

                    v39 = v60;
                    v38 = 1;
                    goto LABEL_77;
                  }

                  goto LABEL_62;
                }

                v43 = 150.0;
              }

              v44 = v34 * v43;
            }

            else
            {
              if (v12 > 18.0)
              {
                if (v12 <= 23.0)
                {
                  v59 = 125.0;
                  if (v32)
                  {
                    v59 = 150.0;
                  }

                  v35 = v59 * v34;
                  goto LABEL_102;
                }

LABEL_62:
                v38 = 0;
                v39 = v13;
LABEL_77:
                a3[5] = v38;
                if (v39 >= 2 * v13)
                {
                  v39 = 2 * v13;
                }

                *(a2 + 864) = v39;
                *(a1 + 104760) = v39;
                if (sub_160EF0(0x30u, 6))
                {
                  v47 = sub_160F34(0x30u);
                  v48 = sub_175AE4();
                  v49 = sub_160F68(6);
                  if (v47)
                  {
                    printf("%lld %d AVE %s: FIG: F %d SNR %f filteredSNR[%d] %f targetBitrate %d NewtargetBitrate %d\n", v48, 48, v49, *v10, a4, 0, *(a1 + 104744), v13, *(a2 + 864));
                    v48 = sub_175AE4();
                    sub_160F68(6);
                    v50 = *(a1 + 104744);
                    v51 = *v10;
                    v61 = *(a2 + 864);
                  }

                  syslog(3, "%lld %d AVE %s: FIG: F %d SNR %f filteredSNR[%d] %f targetBitrate %d NewtargetBitrate %d", v48);
                }

                goto LABEL_84;
              }

              v45 = 175.0;
              if (v32)
              {
                v45 = 200.0;
              }

              v44 = v45 * v34;
            }
          }

          else
          {
            LODWORD(v9) = *(a1 + 10560);
            v36 = v9;
            if (v12 <= 20.0)
            {
              v40 = !v32;
              v41 = 175.0;
              v42 = 200.0;
            }

            else
            {
              if (v12 > 23.0)
              {
                if (v12 <= 25.0)
                {
                  v37 = 125.0;
                  if (v32)
                  {
                    v37 = 150.0;
                  }

                  v35 = v37 * (v34 * v36);
                  goto LABEL_102;
                }

                goto LABEL_62;
              }

              v40 = !v32;
              v41 = 150.0;
              v42 = 175.0;
            }

            if (!v40)
            {
              v41 = v42;
            }

            v44 = v41 * (v34 * v36);
          }

          v46 = v44 / 100.0;
          if (v46 <= v13)
          {
            v46 = v13;
          }

          v39 = v46;
          v38 = 2;
          goto LABEL_77;
        }

        v23 = v26 / 2073600.0;
        if (v16 < 46)
        {
          v24 = 30.0;
          v25 = 7700000.0;
          goto LABEL_43;
        }

        if (v16 < 0x5B)
        {
          v24 = 60.0;
          v25 = 11700000.0;
          goto LABEL_43;
        }

        v27 = v16 >= 0xB5;
        v28 = v16 < 0xB5;
        v29 = &unk_185A50;
      }

      else
      {
        v23 = v26 / 921600.0;
        if (v16 < 46)
        {
          v24 = 30.0;
          v25 = 4900000.0;
          goto LABEL_43;
        }

        if (v16 < 0x5B)
        {
          v24 = 60.0;
          v25 = 8600000.0;
          goto LABEL_43;
        }

        v27 = v16 >= 0xB5;
        v28 = v16 < 0xB5;
        v29 = &unk_185A60;
      }
    }

    else
    {
      v23 = v21 * v22 / 307200.0;
      if (v16 < 46)
      {
        v24 = 30.0;
        v25 = 2500000.0;
        goto LABEL_43;
      }

      if (v16 < 0x5B)
      {
        v24 = 60.0;
        v25 = 4400000.0;
        goto LABEL_43;
      }

      v27 = v16 >= 0xB5;
      v28 = v16 < 0xB5;
      v29 = &unk_185A70;
    }

    v25 = v29[v28];
    v24 = 240.0;
    v30 = 120.0;
    goto LABEL_41;
  }

LABEL_84:
  if (sub_160EF0(0x30u, 6))
  {
    v52 = sub_160F34(0x30u);
    v53 = sub_175AE4();
    v54 = sub_160F68(6);
    v55 = *v10;
    if (v52)
    {
      printf("%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f\n", v53, 48, v54, v55, 25.0, a4);
      v56 = sub_175AE4();
      v57 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f", v56, 48, v57, *v10, 25.0, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f", v53, 48, v54, v55, 25.0, a4);
    }
  }

  v58 = *(a1 + 10804);
  if (*(a1 + 692) == 1)
  {
    if (v58 != 2)
    {
      goto LABEL_94;
    }

    if (*(a1 + 10847) == 1)
    {
      a3[135] = a4 <= 25.0;
      a3[342] = *(a1 + 4 * (a4 <= 25.0) + 10808);
    }
  }

  else if (v58 != 2)
  {
    goto LABEL_94;
  }

  if ((*(a1 + 10851) & 1) == 0)
  {
LABEL_94:
    if (*(a1 + 10852) != 1)
    {
      return;
    }
  }

  if (a4 <= 25.0 || *(a1 + 10852) == 1)
  {
    *a2 |= 0x10uLL;
  }
}

uint64_t sub_10EF18(uint64_t a1, void *a2)
{
  v2 = a1 + 102400;
  if (!*(a1 + 104648))
  {
    v10 = a2[2];
    v11 = (a1 + 104676);
    *(a1 + 104676) = *a2;
    *(a1 + 104684) = a2[1];
    *(a1 + 104692) = v10;
    if (sub_160EF0(0xD8u, 6))
    {
      v12 = sub_160F34(0xD8u);
      v13 = sub_175AE4();
      v14 = sub_160F68(6);
      v15 = *(v2 + 2248);
      if (v12)
      {
        printf("%lld %d AVE %s: AVE_MultipassDataFetch : Frame %d\n", v13, 216, v14, v15);
        v16 = sub_175AE4();
        v48 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: AVE_MultipassDataFetch : Frame %d", v16, 216, v48, *(v2 + 2248));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: AVE_MultipassDataFetch : Frame %d", v13, 216, v14, v15);
      }
    }

    if (sub_160EF0(0xD8u, 6))
    {
      v24 = sub_160F34(0xD8u);
      v25 = sub_175AE4();
      v26 = sub_160F68(6);
      v27 = *(a2 + 3);
      if (v24)
      {
        printf("%lld %d AVE %s: PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld\n", v25, 216, v26, *a2, *(a2 + 2), *(a2 + 3), a2[2]);
        v25 = sub_175AE4();
        sub_160F68(6);
        v28 = *a2;
        v52 = *(a2 + 3);
        v55 = a2[2];
        v50 = *(a2 + 2);
      }

      else
      {
        v53 = *(a2 + 3);
      }

      syslog(3, "%lld %d AVE %s: PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", v25);
    }

    v29 = *(v2 + 2256);
    v62 = *v11;
    v67 = *(v2 + 2292);
    v30 = *(v2 + 2268);
    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!sub_160EF0(3u, 4))
      {
        return 4294954394;
      }

      v31 = sub_160F34(3u);
      v32 = sub_175AE4();
      v33 = sub_160F68(4);
      v34 = *a2;
      if (v31)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed. F %d PTS %lld ts %d\n", v32, 3, v33, "AVE_MultipassDataFetch", 6975, "err == noErr", *(v2 + 2248), *a2, *(a2 + 2));
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        v57 = *a2;
        v58 = *(a2 + 2);
        v54 = "err == noErr";
        v56 = *(v2 + 2248);
        v51 = 6975;
      }

      else
      {
        v57 = *a2;
        v58 = *(a2 + 2);
        v56 = *(v2 + 2248);
        v51 = 6975;
        v54 = "err == noErr";
      }

      v49 = v33;
      v35 = "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed. F %d PTS %lld ts %d";
    }

    else
    {
      if (!sub_160EF0(3u, 4))
      {
        return 4294954394;
      }

      v36 = sub_160F34(3u);
      v32 = sub_175AE4();
      v37 = sub_160F68(4);
      v38 = *a2;
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp data == NULL. F %d PTS %lld ts %d\n", v32, 3, v37, "AVE_MultipassDataFetch", 6976, "data != __null", *(v2 + 2248), *a2, *(a2 + 2));
        v32 = sub_175AE4();
        v37 = sub_160F68(4);
        v57 = *a2;
        v58 = *(a2 + 2);
        v54 = "data != __null";
        v56 = *(v2 + 2248);
        v51 = 6976;
      }

      else
      {
        v57 = *a2;
        v58 = *(a2 + 2);
        v56 = *(v2 + 2248);
        v51 = 6976;
        v54 = "data != __null";
      }

      v49 = v37;
      v35 = "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp data == NULL. F %d PTS %lld ts %d";
    }

    syslog(3, v35, v32, 3, v49, "AVE_MultipassDataFetch", v51, v54, v56, v57, v58);
    return 4294954394;
  }

  v3 = *(a1 + 104656);
  v4 = (a1 + 104676);
  v59 = *(a1 + 104676);
  v64 = *(a1 + 104692);
  if (VTMultiPassStorageGetTimeStamp())
  {
    if (sub_160EF0(3u, 4))
    {
      v5 = sub_160F34(3u);
      v6 = sub_175AE4();
      v7 = sub_160F68(4);
      if (!v5)
      {
LABEL_20:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp failed.");
        return 4294954394;
      }

      v8 = 7030;
LABEL_6:
      printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp failed.\n", v6, 3, v7, "AVE_MultipassDataFetch", v8, "err == noErr");
      sub_175AE4();
      sub_160F68(4);
      goto LABEL_20;
    }

    return 4294954394;
  }

  v17 = *(v2 + 2256);
  if ((*(v2 + 2288) & 0x1D) == 1)
  {
    v60 = *v4;
    v65 = *(v4 + 2);
    v18 = *(v2 + 2268);
    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!sub_160EF0(3u, 4))
      {
        return 4294954394;
      }

      v19 = sub_160F34(3u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        v22 = 7035;
LABEL_15:
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed.\n", v20, 3, v21, "AVE_MultipassDataFetch", v22, "err == noErr");
        sub_175AE4();
        sub_160F68(4);
        goto LABEL_45;
      }

      goto LABEL_45;
    }

    if (!sub_160EF0(3u, 4))
    {
      return 4294954394;
    }

    v42 = sub_160F34(3u);
    v43 = sub_175AE4();
    v44 = sub_160F68(4);
    if (v42)
    {
      v45 = 7036;
LABEL_50:
      printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp d == NULL.\n", v43, 3, v44, "AVE_MultipassDataFetch", v45, "d != __null");
      sub_175AE4();
      sub_160F68(4);
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  v61 = *v4;
  v66 = *(v4 + 2);
  if (!VTMultiPassStorageGetTimeStamp())
  {
    if ((*(v2 + 2288) & 0x1D) != 1)
    {
      return 0;
    }

    v39 = *(v2 + 2256);
    v63 = *v4;
    v68 = *(v4 + 2);
    v40 = *(v2 + 2268);
    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!sub_160EF0(3u, 4))
      {
        return 4294954394;
      }

      v41 = sub_160F34(3u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v41)
      {
        v22 = 7060;
        goto LABEL_15;
      }

LABEL_45:
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed.");
      return 4294954394;
    }

    if (!sub_160EF0(3u, 4))
    {
      return 4294954394;
    }

    v47 = sub_160F34(3u);
    v43 = sub_175AE4();
    v44 = sub_160F68(4);
    if (v47)
    {
      v45 = 7061;
      goto LABEL_50;
    }

LABEL_54:
    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp d == NULL.");
    return 4294954394;
  }

  if (sub_160EF0(3u, 4))
  {
    v23 = sub_160F34(3u);
    v6 = sub_175AE4();
    v7 = sub_160F68(4);
    if (!v23)
    {
      goto LABEL_20;
    }

    v8 = 7055;
    goto LABEL_6;
  }

  return 4294954394;
}

uint64_t sub_10FE10(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const __CFDictionary *a7)
{
  if (sub_160EF0(0xCu, 7))
  {
    v14 = sub_160F34(0xCu);
    v15 = sub_175AE4();
    v16 = sub_160F68(7);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", v15, 12, v16, "AVE_Session_HEVC_Process", a1, a2, a3, a4, a5, a6, a7);
      v17 = sub_175AE4();
      v36 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v17, 12, v36, "AVE_Session_HEVC_Process", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v15, 12, v16, "AVE_Session_HEVC_Process", a1);
    }
  }

  if (a1 && a3 && a4 && a5 && a6)
  {
    if (a7 && CFDictionaryContainsKey(a7, @"SessionIndicator"))
    {
      sub_13FDC0(*(a1 + 104712));
    }

    if (*(a1 + 104648))
    {
      goto LABEL_14;
    }

    v23 = sub_173E4(*(a1 + 104736), *(a1 + 1096));
    if (!v23)
    {
      v33 = *(a1 + 104712);
      v34 = sub_175AE4();
      sub_140028(v33, 5u, v34);
      if (*(a1 + 1112) >= 1)
      {
        v35 = *(a1 + 1112);
      }

      else
      {
        v35 = 30;
      }

      sub_153F28(*(a1 + 104704), v35, 0, 0);
LABEL_14:
      v18 = sub_FF9C0();
      goto LABEL_24;
    }

    v18 = v23;
    if (sub_160EF0(3u, 4))
    {
      v24 = sub_160F34(3u);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v25, 3, v26, "AVE_Session_HEVC_Process", 8159, "ret == 0");
        v27 = sub_175AE4();
        v38 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v27, 3, v38, "AVE_Session_HEVC_Process", 8159, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v25, 3, v26, "AVE_Session_HEVC_Process", 8159, "ret == 0");
      }
    }
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v19 = sub_160F34(0xCu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v20, 12, v21, "AVE_Session_HEVC_Process", 8145, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null", a1, a2, a3, a4, a5, a6, a7);
        v22 = sub_175AE4();
        v37 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v22, 12, v37, "AVE_Session_HEVC_Process", 8145, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v20, 12, v21, "AVE_Session_HEVC_Process", 8145, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null", a1);
      }
    }

    v18 = 4294966295;
  }

LABEL_24:
  if (sub_160EF0(0xCu, 7))
  {
    v28 = sub_160F34(0xCu);
    v29 = sub_175AE4();
    v30 = sub_160F68(7);
    if (v28)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v29, 12, v30, "AVE_Session_HEVC_Process", a1, a2, a3, a4, a5, a6, a7, v18);
      v31 = sub_175AE4();
      v39 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v31, 12, v39, "AVE_Session_HEVC_Process", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v29, 12, v30, "AVE_Session_HEVC_Process", a1, a2);
    }
  }

  return v18;
}

uint64_t sub_11027C(uint64_t a1, const void *a2, OpaqueCMTaggedBufferGroup *a3, const void *a4, const void *a5, const void *a6, const void *a7)
{
  if (sub_160EF0(0xCu, 7))
  {
    v12 = sub_160F34(0xCu);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", v13, 12, v14, "AVE_Session_HEVC_ProcessMultiFrame", a1, a2, a3, a4, a5, a6, a7);
      v15 = sub_175AE4();
      v80 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v15, 12, v80, "AVE_Session_HEVC_ProcessMultiFrame", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v13, 12, v14, "AVE_Session_HEVC_ProcessMultiFrame", a1);
    }
  }

  v93 = a7;
  v94 = a6;
  if (a1 && a3 && a4 && a5 && a6)
  {
    if (a7 && CFDictionaryContainsKey(a7, @"SessionIndicator"))
    {
      sub_13FDC0(*(a1 + 104712));
    }

    if (!*(a1 + 104648))
    {
      v33 = sub_173E4(*(a1 + 104736), *(a1 + 1096));
      if (v33)
      {
        v34 = v33;
        if (sub_160EF0(3u, 4))
        {
          v35 = sub_160F34(3u);
          v36 = sub_175AE4();
          v37 = sub_160F68(4);
          if (v35)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v36, 3, v37, "AVE_Session_HEVC_ProcessMultiFrame", 8210, "ret == 0");
            v38 = sub_175AE4();
            v82 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v38, 3, v82, "AVE_Session_HEVC_ProcessMultiFrame", 8210, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v36, 3, v37, "AVE_Session_HEVC_ProcessMultiFrame", 8210, "ret == 0");
          }
        }

        goto LABEL_79;
      }

      v55 = *(a1 + 104712);
      v56 = sub_175AE4();
      sub_140028(v55, 5u, v56);
      if (*(a1 + 1112) >= 1)
      {
        v57 = *(a1 + 1112);
      }

      else
      {
        v57 = 30;
      }

      sub_153F28(*(a1 + 104704), v57, 0, 0);
    }

    if (*(a1 + 10556) == 2)
    {
      v92 = a2;
      Count = CMTaggedBufferGroupGetCount(a3);
      v17 = Count;
      if (*(a1 + 10556) > Count)
      {
        if (sub_160EF0(0xCu, 4))
        {
          v18 = sub_160F34(0xCu);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          if (v18)
          {
            printf("%lld %d AVE %s: %s:%d %s | no enough buffers %d %d\n", v19, 12, v20, "AVE_Session_HEVC_ProcessMultiFrame", 8225, "num >= pINS->VideoParams.iLayerNum", v17, *(a1 + 10556));
            v21 = sub_175AE4();
            v22 = sub_160F68(4);
            v87 = v17;
            v89 = *(a1 + 10556);
            v85 = 8225;
            v86 = "num >= pINS->VideoParams.iLayerNum";
            v81 = v22;
            v23 = "%lld %d AVE %s: %s:%d %s | no enough buffers %d %d";
LABEL_74:
            syslog(3, v23, v21, 12, v81, "AVE_Session_HEVC_ProcessMultiFrame", v85, v86, v87, v89, p_tagBuffer);
          }

          else
          {
            v90 = *(a1 + 10556);
            syslog(3, "%lld %d AVE %s: %s:%d %s | no enough buffers %d %d", v19);
          }
        }

LABEL_77:
        v34 = 4294965288;
        goto LABEL_78;
      }

      if (Count < 1)
      {
        v34 = 0;
LABEL_78:
        a2 = v92;
        goto LABEL_79;
      }

      v39 = 0;
      v40 = a1 + 15575;
      v41 = Count & 0x7FFFFFFF;
      v42 = &kCMTagInvalid;
      while (2)
      {
        v43 = 0;
        v44 = v42;
        v98 = *v42;
        tagBuffer = v98;
        numberOfTagsCopied = 0;
        do
        {
          TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(a3, v43);
          TagsWithCategory = CMTagCollectionGetTagsWithCategory(TagCollectionAtIndex, kCMTagCategory_VideoLayerID, &tagBuffer, 1, &numberOfTagsCopied);
          if (TagsWithCategory || numberOfTagsCopied != 1)
          {
            if (!sub_160EF0(0xCu, 4))
            {
              goto LABEL_77;
            }

            v58 = sub_160F34(0xCu);
            v59 = sub_175AE4();
            v60 = sub_160F68(4);
            if (v58)
            {
              printf("%lld %d AVE %s: %s:%d %s | invalid VideoLayerID in taggedBuffer %d %d %p\n", v59, 12, v60, "AVE_Session_HEVC_ProcessMultiFrame", 8245, "ret == 0 && numOfTags == 1", TagsWithCategory, numberOfTagsCopied, &tagBuffer);
              v21 = sub_175AE4();
              v61 = sub_160F68(4);
              v89 = numberOfTagsCopied;
              p_tagBuffer = &tagBuffer;
              v86 = "ret == 0 && numOfTags == 1";
              v87 = TagsWithCategory;
              v85 = 8245;
              v81 = v61;
              v23 = "%lld %d AVE %s: %s:%d %s | invalid VideoLayerID in taggedBuffer %d %d %p";
              goto LABEL_74;
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | invalid VideoLayerID in taggedBuffer %d %d %p", v59, 12);
            goto LABEL_77;
          }

          ++v43;
        }

        while (CMTagGetSInt64Value(tagBuffer) != *(v40 + v39) && v43 < v41);
        if (!*(a1 + 10556))
        {
LABEL_71:
          if (!sub_160EF0(0xCu, 4))
          {
            goto LABEL_77;
          }

          v62 = sub_160F34(0xCu);
          v63 = sub_175AE4();
          v64 = sub_160F68(4);
          SInt64Value = CMTagGetSInt64Value(tagBuffer);
          if (v62)
          {
            printf("%lld %d AVE %s: %s:%d %s | mismatch VideoLayerID %lld in taggedBuffer\n", v63, 12, v64, "AVE_Session_HEVC_ProcessMultiFrame", 8279, "storedLayerID != -1", SInt64Value);
            v21 = sub_175AE4();
            v66 = sub_160F68(4);
            v86 = "storedLayerID != -1";
            v87 = CMTagGetSInt64Value(tagBuffer);
            v85 = 8279;
            v81 = v66;
            v23 = "%lld %d AVE %s: %s:%d %s | mismatch VideoLayerID %lld in taggedBuffer";
            goto LABEL_74;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | mismatch VideoLayerID %lld in taggedBuffer", v63);
          goto LABEL_77;
        }

        v48 = 0;
        while (1)
        {
          v49 = *(a1 + 10900) ? v48 << (*(a1 + 15770) == 1) : v48;
          v50 = *(v40 + v49);
          if (CMTagGetSInt64Value(tagBuffer) == v50)
          {
            break;
          }

          if (++v48 >= *(a1 + 10556))
          {
            goto LABEL_71;
          }
        }

        v51 = *(a1 + 15640 + v48);
        if (!CMTagCollectionGetTagsWithCategory(TagCollectionAtIndex, kCMTagCategory_StereoView, &v98, 1, &numberOfTagsCopied) && numberOfTagsCopied == 1)
        {
          FlagsValue = CMTagGetFlagsValue(v98);
          v53 = 11808;
          if (FlagsValue != 1)
          {
            v53 = 11809;
          }

          v54 = *(a1 + v53);
          if (v51 != v54)
          {
            if (sub_160EF0(0xCu, 4))
            {
              v76 = sub_160F34(0xCu);
              v77 = sub_175AE4();
              v78 = sub_160F68(4);
              if (v76)
              {
                printf("%lld %d AVE %s: %s:%d %s | left/right ViewID not matching in taggedBuffer %d %d %d\n", v77, 12, v78, "AVE_Session_HEVC_ProcessMultiFrame", 8294, "storedViewID == curViewID", 0, v51, v54);
                v79 = sub_175AE4();
                sub_160F68(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | left/right ViewID not matching in taggedBuffer %d %d %d", v79, 12);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | left/right ViewID not matching in taggedBuffer %d %d %d", v77, 12);
              }
            }

            v34 = 4294965287;
            goto LABEL_78;
          }
        }

        if (CMTaggedBufferGroupGetCVPixelBufferForTag(a3, tagBuffer, 0))
        {
          a2 = v92;
          v34 = sub_FF9C0();
          if (!v34)
          {
            ++v39;
            v42 = v44;
            if (v39 != v41)
            {
              continue;
            }
          }
        }

        else
        {
          a2 = v92;
          if (sub_160EF0(0xCu, 4))
          {
            v72 = sub_160F34(0xCu);
            v73 = sub_175AE4();
            v74 = sub_160F68(4);
            if (v72)
            {
              printf("%lld %d AVE %s: %s:%d %s | failed to get CVPixelBuffer in taggedBuffer\n", v73, 12, v74, "AVE_Session_HEVC_ProcessMultiFrame", 8302, "pBuf != __null");
              v75 = sub_175AE4();
              v84 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get CVPixelBuffer in taggedBuffer", v75, 12, v84, "AVE_Session_HEVC_ProcessMultiFrame", 8302, "pBuf != __null");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get CVPixelBuffer in taggedBuffer", v73, 12, v74, "AVE_Session_HEVC_ProcessMultiFrame", 8302, "pBuf != __null");
            }
          }

          v34 = 4294965288;
        }

        break;
      }
    }

    else
    {
      if (sub_160EF0(0xCu, 4))
      {
        v29 = sub_160F34(0xCu);
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid number of video layers %d\n", v30, 12, v31, "AVE_Session_HEVC_ProcessMultiFrame", 8220, "pINS->VideoParams.iLayerNum > 1 && pINS->VideoParams.iLayerNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", *(a1 + 10556));
          v30 = sub_175AE4();
          sub_160F68(4);
          v32 = *(a1 + 10556);
        }

        else
        {
          v88 = *(a1 + 10556);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid number of video layers %d", v30);
      }

      v34 = 4294965291;
    }
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v24 = sub_160F34(0xCu);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v25, 12, v26, "AVE_Session_HEVC_ProcessMultiFrame", 8195, "pINS != __null && taggedBufferGroup != __null && pRect != __null && pPTS != __null && pDuration != __null", a1, a2, a3, a4, a5, a6, a7);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v27, 12, v28, "AVE_Session_HEVC_ProcessMultiFrame", 8195, "pINS != __null && taggedBufferGroup != __null && pRect != __null && pPTS != __null && pDuration != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v25, 12, v26, "AVE_Session_HEVC_ProcessMultiFrame", 8195, "pINS != __null && taggedBufferGroup != __null && pRect != __null && pPTS != __null && pDuration != __null", a1);
      }
    }

    v34 = 4294966295;
  }

LABEL_79:
  if (sub_160EF0(0xCu, 7))
  {
    v67 = sub_160F34(0xCu);
    v68 = sub_175AE4();
    v69 = sub_160F68(7);
    if (v67)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v68, 12, v69, "AVE_Session_HEVC_ProcessMultiFrame", a1, a2, a3, a4, a5, v94, v93, v34);
      v70 = sub_175AE4();
      v83 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v70, 12, v83, "AVE_Session_HEVC_ProcessMultiFrame", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v68, 12, v69, "AVE_Session_HEVC_ProcessMultiFrame", a1, a2);
    }
  }

  return v34;
}

uint64_t sub_110DC8(uint64_t a1)
{
  if (sub_160EF0(0xCu, 7))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: Enter %s %p\n", v3, 12, v4, "AVE_Session_HEVC_Complete", a1);
      v5 = sub_175AE4();
      v24 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: Enter %s %p", v5, 12, v24, "AVE_Session_HEVC_Complete", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Enter %s %p", v3, 12, v4, "AVE_Session_HEVC_Complete", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 104712);
    v7 = sub_175AE4();
    sub_140028(v6, 6u, v7);
    if (*(a1 + 104644) == 30568)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %p %lld %d\n", v10, 12, v11, "AVE_Session_HEVC_Complete", 8341, "ret == 0", a1, *(a1 + 56), v8);
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

    v17 = *(a1 + 104712);
    v18 = sub_175AE4();
    sub_1403FC(v17, 6u, v18);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 12, v16, "AVE_Session_HEVC_Complete", 8329, "pINS != __null", 0);
        v15 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v15);
    }

    v8 = 4294966295;
  }

  if (sub_160EF0(0xCu, 7))
  {
    v19 = sub_160F34(0xCu);
    v20 = sub_175AE4();
    v21 = sub_160F68(7);
    if (v19)
    {
      printf("%lld %d AVE %s: Exit %s %p %d\n", v20, 12, v21, "AVE_Session_HEVC_Complete", a1, v8);
      v22 = sub_175AE4();
      v25 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: Exit %s %p %d", v22, 12, v25, "AVE_Session_HEVC_Complete", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Exit %s %p %d", v20, 12, v21, "AVE_Session_HEVC_Complete", a1, v8);
    }
  }

  return v8;
}

uint64_t sub_111160(uint64_t a1, void *a2)
{
  if (sub_160EF0(0xCu, 8))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 12, v6, "AVE_Session_HEVC_GetPropertyDict", a1, a2);
      v7 = sub_175AE4();
      v25 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v25, "AVE_Session_HEVC_GetPropertyDict", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 12, v6, "AVE_Session_HEVC_GetPropertyDict", a1, a2);
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
          printf("%lld %d AVE %s: %s:%d property dictionary reference count %p %lld %d\n", v13, 12, v14, "AVE_Session_HEVC_GetPropertyDict", 8384, a1, *(a1 + 56), v11);
          v13 = sub_175AE4();
          sub_160F68(5);
          v16 = *(a1 + 56);
        }

        else
        {
          v26 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d property dictionary reference count %p %lld %d", v13, 12);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v18, 12, v19, "AVE_Session_HEVC_GetPropertyDict", 8364, "pINS != __null && ppDict != __null", a1, a2);
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
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v22, 12, v23, "AVE_Session_HEVC_GetPropertyDict", a1, a2, v20);
      v22 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v22);
  }

  return v20;
}

uint64_t sub_1114E8(const void *a1, const void *a2, const __CFString *a3, const void *a4)
{
  if (sub_160EF0(0xCu, 8))
  {
    v8 = sub_160F34(0xCu);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", v9, 12, v10, "AVE_Session_HEVC_GetProperty", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", v9, 12);
  }

  if (a1 && a3 && a4)
  {
    v11 = sub_83D6C(a1, a2, a3, a4);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v13, 12, v14, "AVE_Session_HEVC_GetProperty", 8411, "pINS != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v15 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 12, v21, "AVE_Session_HEVC_GetProperty");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 12, v14, "AVE_Session_HEVC_GetProperty");
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
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d\n", v17, 12, v18, "AVE_Session_HEVC_GetProperty", a1, a2, a3, a4, v11);
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

uint64_t sub_1117B4()
{
  v0 = __chkstk_darwin();
  if (sub_160EF0(0xCu, 6))
  {
    v1 = sub_160F34(0xCu);
    v2 = sub_175AE4();
    v3 = sub_160F68(6);
    if (v1)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v2, 12, v3, "AVE_Session_HEVC_Prepare", v0);
      v4 = sub_175AE4();
      v25 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v4, 12, v25, "AVE_Session_HEVC_Prepare", v0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v2, 12, v3, "AVE_Session_HEVC_Prepare", v0);
    }
  }

  if (v0)
  {
    if (*(v0 + 104644) != 30566)
    {
      goto LABEL_20;
    }

    bzero(v29, 0x8C8uLL);
    v5 = sub_10A628(v0);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to manage settings %p %lld\n", v8, 12, v9, "AVE_Session_HEVC_Prepare", 8443, "err == 0", v0, *(v0 + 56));
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
    v27 = *(v0 + 104712);
    v28 = *(v0 + 104728);
    v29[281] = v0 + 12000;
    v29[282] = v0 + 24236;
    v29[284] = v0 + 39844;
    v29[283] = v0 + 32040;
    v29[285] = v0 + 49476;
    v29[286] = v0 + 59112;
    v29[287] = v0 + 80600;
    memcpy(v30, (v0 + 106112), sizeof(v30));
    v31 = v14;
    v15 = *(v0 + 120);
    if (!sub_1296B0())
    {
LABEL_20:
      v6 = 0;
      *(v0 + 104644) = 30567;
      goto LABEL_26;
    }

    if (sub_160EF0(0xCu, 4))
    {
      v16 = sub_160F34(0xCu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare %p %lld\n", v17, 12, v18, "AVE_Session_HEVC_Prepare", 8455, "err == noErr", v0, *(v0 + 56));
        v17 = sub_175AE4();
        sub_160F68(4);
        v19 = *(v0 + 56);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %lld", v17, 12);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v12, 12, v13, "AVE_Session_HEVC_Prepare", 8432, "pINS != __null", 0);
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
    v20 = sub_160F34(0xCu);
    v21 = sub_175AE4();
    v22 = sub_160F68(6);
    if (v20)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v21, 12, v22, "AVE_Session_HEVC_Prepare", v0, v6);
      v23 = sub_175AE4();
      v26 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v23, 12, v26, "AVE_Session_HEVC_Prepare", v0, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v21, 12, v22, "AVE_Session_HEVC_Prepare", v0, v6);
    }
  }

  return v6;
}

uint64_t sub_111D00(uint64_t a1, unsigned int *a2)
{
  cf = 0;
  v87 = 0u;
  v88 = 0u;
  if (sub_160EF0(0xCu, 6))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 12, v6, "AVE_Session_HEVC_StartTileSession", a1, a2);
      v7 = sub_175AE4();
      v75 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v75, "AVE_Session_HEVC_StartTileSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 12, v6, "AVE_Session_HEVC_StartTileSession", a1, a2);
    }
  }

  if (a1 && a2)
  {
    if (*a2 < 1 || a2[1] <= 0)
    {
      if (sub_160EF0(0xCu, 4))
      {
        v26 = sub_160F34(0xCu);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        v29 = *a2;
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v27, 12, v28, "AVE_Session_HEVC_StartTileSession", 8842, "pDim->iWidth > 0 && pDim->iHeight > 0", a1, *(a1 + 56), *a2, a2[1]);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          v30 = *(a1 + 56);
          v80 = *a2;
          v82 = a2[1];
        }

        else
        {
          v81 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v27, 12, v28);
      }

      Mutable = 0;
      v31 = 4294965295;
      goto LABEL_49;
    }

    v8 = a1 + 104644;
    v9 = *(a1 + 104712);
    v10 = sub_175AE4();
    sub_140028(v9, 3u, v10);
    v11 = *a2;
    v12 = a2[1];
    *(a1 + 1440) = *a2;
    *(a1 + 1444) = v12;
    *(a1 + 11452) = v11;
    *(a1 + 11456) = v12;
    *(a1 + 764) = 2;
    v13 = sub_14E470(*(a1 + 68), 1, 2);
    sub_FD500(a1);
    v14 = *(a1 + 1440);
    v15 = v13[1];
    if (v14 <= *v13)
    {
      v16 = *v13;
    }

    else
    {
      v16 = v14;
    }

    v17 = *(a1 + 1444);
    if (v17 <= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    sub_FD844(a1);
    if (sub_160EF0(0xCu, 7))
    {
      v83 = v18;
      v19 = sub_160F34(0xCu);
      v20 = sub_175AE4();
      v21 = sub_160F68(7);
      if (v19)
      {
        printf("%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault\n", v20, 12, v21);
        v22 = sub_175AE4();
        v76 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault", v22, 12, v76);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault", v20, 12, v21);
      }

      v8 = a1 + 104644;
      v18 = v83;
    }

    *(a1 + 10752) = 2;
    *(a1 + 10764) = 1;
    *(a1 + 10855) = *(a1 + 76) > 3;
    *(a1 + 10788) = 4;
    *(a1 + 59393) = 257;
    *(a1 + 39892) = 2;
    *(a1 + 39924) = 2;
    *(a1 + 10808) = 1;
    *(a1 + 1464) = 0;
    *(a1 + 1252) = 1;
    *(a1 + 1256) = 0x100000000;
    *(a1 + 1288) = 1;
    v33 = *(a1 + 1240);
    *(a1 + 10176) = 2;
    *(a1 + 1132) = 3;
    *(a1 + 1144) = 0xF0000000FLL;
    *(a1 + 1152) = 15;
    *(a1 + 1112) = 0;
    *(a1 + 1352) = 30;
    *(a1 + 1448) |= 0x10000000uLL;
    v34 = *(a1 + 1336);
    *(a1 + 1120) |= 0x200000000uLL;
    *(a1 + 1356) |= 2u;
    *(a1 + 1336) = v34 & 0xFEFF7E89 | 0x1000000;
    *(a1 + 688) |= 0x100u;
    *(a1 + 10796) = 0x100000000;
    *(a1 + 1096) = 0;
    *(a1 + 42028) = 0;
    *(a1 + 60062) = 1;
    *(a1 + 39886) = 1;
    *(a1 + 10522) = 0;
    *(a1 + 1240) = v33 & 0xFFFFFAFF;
    if (sub_160EF0(0xCu, 7))
    {
      v35 = v18;
      v36 = v16;
      v37 = v8;
      v38 = sub_160F34(0xCu);
      v39 = sub_175AE4();
      v40 = sub_160F68(7);
      if (v38)
      {
        printf("%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault\n", v39, 12, v40);
        v41 = sub_175AE4();
        v77 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault", v41, 12, v77);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault", v39, 12, v40);
      }

      v8 = v37;
      v16 = v36;
      v18 = v35;
    }

    if (sub_158978(*(a1 + 68), *(a1 + 64), 62, 2, *a2, a2[1], v16, v18, 0x414C4C20u))
    {
      if (sub_160EF0(0xCu, 4))
      {
        v42 = sub_160F34(0xCu);
        v43 = sub_175AE4();
        v44 = sub_160F68(4);
        v45 = *(a1 + 56);
        if (v42)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %p %lld %d\n", v43, 12, v44, "AVE_Session_HEVC_StartTileSession", 8878, "err == noErr", a1, *(a1 + 56), 0);
          v43 = sub_175AE4();
          v44 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %p %lld %d", v43, 12, v44, "AVE_Session_HEVC_StartTileSession", 8878, "err == noErr", a1, *(a1 + 56), 0);
      }

LABEL_47:
      Mutable = 0;
LABEL_48:
      v31 = 4294966296;
LABEL_49:
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_53;
    }

    if (*(a1 + 16) == 1)
    {
      if (sub_160EF0(0xCu, 7))
      {
        v53 = sub_160F34(0xCu);
        v54 = sub_175AE4();
        v55 = sub_160F68(7);
        if (v53)
        {
          printf("%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK\n", v54, 12, v55);
          v56 = sub_175AE4();
          v78 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK", v56, 12, v78);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK", v54, 12, v55);
        }
      }
    }

    else
    {
      if (VTTileEncoderSessionSetTileAttributes())
      {
        if (sub_160EF0(3u, 4))
        {
          v46 = sub_160F34(3u);
          v47 = sub_175AE4();
          v48 = sub_160F68(4);
          if (v46)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTTileEncoderSessionSetTileAttributes failed.\n", v47, 3, v48, "AVE_Session_HEVC_StartTileSession", 8895, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTTileEncoderSessionSetTileAttributes failed.");
        }

        goto LABEL_47;
      }

      if (*(a1 + 76) >= 4)
      {
        v84 = 2;
        valuePtr = 2;
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!Mutable)
        {
          if (sub_160EF0(3u, 4))
          {
            v71 = sub_160F34(3u);
            v72 = sub_175AE4();
            v73 = sub_160F68(4);
            if (v71)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.\n", v72, 3, v73, "AVE_Session_HEVC_StartTileSession", 8905, "TileRequirements");
              v74 = sub_175AE4();
              v79 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.", v74, 3, v79, "AVE_Session_HEVC_StartTileSession", 8905, "TileRequirements");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.", v72, 3, v73, "AVE_Session_HEVC_StartTileSession", 8905, "TileRequirements");
            }
          }

          v31 = 4294966293;
          goto LABEL_49;
        }

        v57 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFDictionaryAddValue(Mutable, kVTTileEncoderRequirement_HorizontalOffsetAlignment, v57);
        if (v57)
        {
          CFRelease(v57);
        }

        v58 = CFNumberCreate(0, kCFNumberSInt32Type, &v84);
        CFDictionaryAddValue(Mutable, kVTTileEncoderRequirement_VerticalOffsetAlignment, v58);
        if (v58)
        {
          CFRelease(v58);
        }

        if (*(a1 + 76) >= 12)
        {
          CFDictionaryAddValue(Mutable, kVTTileEncoderRequirement_EncoderSupportsSourcePadding, kCFBooleanTrue);
        }

        v59 = *(a1 + 16);
        if (VTTileEncoderSessionSetTileEncodeRequirements())
        {
          if (sub_160EF0(3u, 4))
          {
            v60 = sub_160F34(3u);
            v61 = sub_175AE4();
            v62 = sub_160F68(4);
            if (v60)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: %s:%d failed.\n", v61, 3, v62, "AVE_Session_HEVC_StartTileSession", 8930, "err == noErr", "AVE_Session_HEVC_StartTileSession", 8930);
              v61 = sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: %s:%d failed.", v61, 3);
          }

          goto LABEL_48;
        }

LABEL_77:
        *v8 = 30566;
        if (*(a1 + 16) == 1)
        {
          v63 = 1;
        }

        else
        {
          v63 = 3;
        }

        v64 = sub_16960(*(v8 + 92), *(a1 + 56), 0, 0, 2, v63);
        if (v64)
        {
          v31 = v64;
          if (sub_160EF0(0xCu, 4))
          {
            v65 = sub_160F34(0xCu);
            v66 = sub_175AE4();
            v67 = sub_160F68(4);
            if (v65)
            {
              printf("%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu\n", v66, 12, v67, "AVE_Session_HEVC_StartTileSession", 8948, "ret == 0", a1, *(a1 + 56));
              v66 = sub_175AE4();
              sub_160F68(4);
              v68 = *(a1 + 56);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu", v66, 12);
          }
        }

        else
        {
          v69 = *(v8 + 68);
          v70 = sub_175AE4();
          sub_1403FC(v69, 3u, v70);
          v31 = 0;
        }

        goto LABEL_49;
      }
    }

    Mutable = 0;
    goto LABEL_77;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v23 = sub_160F34(0xCu);
    v24 = sub_175AE4();
    v25 = sub_160F68(4);
    if (v23)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v24, 12, v25, "AVE_Session_HEVC_StartTileSession", 8838, "pINS != __null && pDim != __null", a1, a2);
      v24 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v24, 12);
  }

  v31 = 4294966295;
LABEL_53:
  if (sub_160EF0(0xCu, 6))
  {
    v49 = sub_160F34(0xCu);
    v50 = sub_175AE4();
    v51 = sub_160F68(6);
    if (v49)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v50, 12, v51, "AVE_Session_HEVC_StartTileSession", a1, a2, v31);
      v50 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v50);
  }

  return v31;
}

uint64_t sub_112998()
{
  v0 = __chkstk_darwin();
  v138 = v1;
  theDict = v2;
  v4 = v3;
  v137 = v5;
  v7 = v6;
  v9 = v8;
  v140 = v0;
  pixelBuffer = v6;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v10 = sub_1502C8();
  if (sub_160EF0(0xCu, 7))
  {
    v11 = sub_160F34(0xCu);
    v12 = sub_175AE4();
    v13 = sub_160F68(7);
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", v12, 12, v13, "AVE_Session_HEVC_ProcessTile", v140, v9, v7, v137, v138, v4, theDict);
      v14 = sub_175AE4();
      v119 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v14, 12, v119, "AVE_Session_HEVC_ProcessTile", v140);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v12, 12, v13, "AVE_Session_HEVC_ProcessTile", v140);
    }
  }

  if (v4 && v138 && v140 && pixelBuffer)
  {
    v15 = (v140 + 104644);
    if (theDict && CFDictionaryContainsKey(theDict, @"SessionIndicator"))
    {
      sub_13FDC0(*(v140 + 104712));
    }

    if (!*(v140 + 104648))
    {
      v28 = sub_173E4(*(v140 + 104736), *(v140 + 1096));
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
            printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v31, 3, v32, "AVE_Session_HEVC_ProcessTile", 9013, "ret == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration");
        }

        goto LABEL_97;
      }

      v56 = *(v140 + 104712);
      v57 = sub_175AE4();
      sub_140028(v56, 5u, v57);
    }

    v136 = sub_175AE4();
    if (*(v140 + 1112) >= 1)
    {
      v16 = *(v140 + 1112);
    }

    else
    {
      v16 = 30;
    }

    v17 = (v140 + 106096);
    sub_172A38(v16, v140 + 106096);
    if (sub_160EF0(0x33u, 7))
    {
      v18 = sub_160F34(0x33u);
      v19 = sub_175AE4();
      v20 = sub_160F68(7);
      v21 = *v17;
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d\n", v19, 51, v20, "AVE_Session_HEVC_ProcessTile", 9025, *(v140 + 56), *(v140 + 104648), *v17, *(v140 + 106104));
        v22 = sub_175AE4();
        v23 = sub_160F68(7);
        v132 = *v17;
        v135 = *(v140 + 106104);
        v127 = *(v140 + 56);
        v129 = *(v140 + 104648);
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d", v22, 51, v23);
      }

      else
      {
        v133 = *v17;
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d", v19, &stru_20.segname[11], v20);
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    *(v140 + 108000) = PixelFormatType;
    if (!*(v140 + 104648))
    {
      v167 = *(v140 + 1440);
      v34 = sub_167CD8(PixelFormatType);
      if (!v34)
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_96;
        }

        v58 = sub_160F34(3u);
        v53 = sub_175AE4();
        v59 = sub_160F68(4);
        v60 = *(v140 + 56);
        if (v58)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v53, 3, v59, "AVE_Session_HEVC_ProcessTile", 9040, "pPixelFmt != __null", v140, *(v140 + 56), *(v140 + 108000));
          v53 = sub_175AE4();
          v59 = sub_160F68(4);
        }

        v131 = *(v140 + 56);
        v134 = *(v140 + 108000);
        v128 = "pPixelFmt != __null";
        v130 = v140;
        v126 = 9040;
        v121 = v59;
        v55 = "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x";
        goto LABEL_77;
      }

      if (v10[420])
      {
        v35 = v10 + 420;
      }

      else
      {
        v35 = 0;
      }

      sub_CC848(*(v140 + 104720), v35, *(v140 + 64), *(v140 + 10772), *(v10 + 103), *(v10 + 104), &v167, 1, *(v34 + 3), *(v34 + 1), *(v140 + 1136));
      sub_CCF60(*(v140 + 104720), -1, pixelBuffer);
    }

    v36 = *v15;
    if (*v15 == 30566)
    {
      if (sub_15F5D0(pixelBuffer))
      {
        v47 = 1;
      }

      else
      {
        v47 = 2;
      }

      *(v140 + 10804) = v47;
      v48 = sub_10A628(v140);
      if (v48)
      {
        v29 = v48;
        if (sub_160EF0(3u, 4))
        {
          v49 = sub_160F34(3u);
          v50 = sub_175AE4();
          v51 = sub_160F68(4);
          if (v49)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed\n", v50, 3, v51, "AVE_Session_HEVC_ProcessTile", 9134, "err == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed");
        }

        goto LABEL_97;
      }

      v43 = (v140 + 106096);
      v44 = v9;
      sub_102728(v140, pixelBuffer);
      if (sub_1020A4(v140, &pixelBuffer, &v161, &v160, &v159 + 1, &v159, 1))
      {
        if (sub_160EF0(3u, 4))
        {
          v67 = sub_160F34(3u);
          v38 = sub_175AE4();
          v39 = sub_160F68(4);
          if (!v67)
          {
LABEL_95:
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.");
            goto LABEL_96;
          }

          v40 = v4;
          v41 = v9;
          v42 = 9144;
LABEL_73:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.\n", v38, 3, v39, "AVE_Session_HEVC_ProcessTile", v42, "err == noErr");
          sub_175AE4();
          v4 = v40;
          v9 = v41;
          sub_160F68(4);
          goto LABEL_95;
        }

LABEL_93:
        v29 = 4294966296;
        v9 = v44;
        goto LABEL_97;
      }

      sub_10298C(v140, *(v140 + 10804) == 2);
      if (sub_102AD4(v140))
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_93;
        }

        v73 = sub_160F34(3u);
        v62 = sub_175AE4();
        v63 = sub_160F68(4);
        if (v73)
        {
          v64 = v4;
          v65 = v9;
          v66 = 9154;
          goto LABEL_92;
        }

LABEL_139:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        goto LABEL_96;
      }

      v68 = v4;
      sub_107808(v140, pixelBuffer);
      sub_10A354(v140);
      bzero(v172, 0x8C8uLL);
      v167 = v140 + 672;
      v168 = v140 + 1440;
      v170 = *(v140 + 104712);
      v171 = *(v140 + 104728);
      v169 = v140 + 10752;
      v174 = v140 + 12000;
      v175 = v140 + 24236;
      v177 = v140 + 39844;
      v176 = v140 + 32040;
      v178 = v140 + 49476;
      v179 = v140 + 59112;
      v180 = v140 + 80600;
      memcpy(v181, (v140 + 106112), sizeof(v181));
      v182 = v136;
      if (theDict && CFDictionaryContainsKey(theDict, @"ReconstructedPixelBuffer"))
      {
        *(v167 + 624) |= 0x100u;
      }

      if (sub_12A644(*(v140 + 120), &v167, v140 + 128, *(v140 + 16), *(v140 + 112), *(v140 + 104652), *(v140 + 104656), v140 + 160, (v140 + 11772), (v140 + 11464)))
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_96;
        }

        v79 = sub_160F34(3u);
        v70 = sub_175AE4();
        v71 = sub_160F68(4);
        if (v79)
        {
          v72 = 9189;
          goto LABEL_113;
        }

LABEL_181:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.");
        goto LABEL_96;
      }
    }

    else
    {
      if (v36 != 30567)
      {
        if (v36 == 30568)
        {
          if (sub_1020A4(v140, &pixelBuffer, &v161, &v160, &v159 + 1, &v159, 0))
          {
            if (sub_160EF0(3u, 4))
            {
              v37 = sub_160F34(3u);
              v38 = sub_175AE4();
              v39 = sub_160F68(4);
              if (!v37)
              {
                goto LABEL_95;
              }

              v40 = v4;
              v41 = v9;
              v42 = 9059;
              goto LABEL_73;
            }

LABEL_96:
            v29 = 4294966296;
LABEL_97:
            if (v161 == 1 && pixelBuffer)
            {
              CVPixelBufferRelease(pixelBuffer);
            }

            ++*(v140 + 104648);
            goto LABEL_101;
          }

LABEL_115:
          *v15 = 30568;
          bzero(v163, 0x1738uLL);
          v157 = 0u;
          v158 = 0u;
          *&v154[16] = 0u;
          v155 = 0;
          v153 = 0u;
          *v154 = 0u;
          v151 = 0u;
          v152 = 0u;
          v150 = 0u;
          v149 = 0u;
          v148 = 0u;
          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          v146 = 0;
          bzero(&v167, 0x4A40uLL);
          v80 = pixelBuffer;
          v147[0] = v9;
          v147[1] = pixelBuffer;
          v156 = v163;
          *&v157 = v136;
          DWORD2(v157) = *(v140 + 104668);
          *&v154[8] = *v17;
          v155 = &v167;
          if (*(v140 + 10804) == 2)
          {
            sub_15F768(pixelBuffer, &v141);
            sub_CD91C(*(v140 + 104720), *(v140 + 104668), *(v140 + 104648), &v141);
            v80 = pixelBuffer;
          }

          *&v154[24] = &v141;
          v81 = CMGetAttachment(v80, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
          if (v81)
          {
            sub_1C324(*(v140 + 104736), *(v140 + 104648), v81);
          }

          sub_207A4(*(v140 + 104736), *(v140 + 104648));
          sub_20464(*(v140 + 104736), *(v140 + 104648), *(v140 + 56));
          sub_1D808(*(v140 + 104736), *(v140 + 104648), *&v142);
          sub_1DC50(*(v140 + 104736), *(v140 + 104648), *&v141);
          sub_1CE6C(*(v140 + 104736), *(v140 + 104648), SDWORD1(v145));
          sub_1F124(*(v140 + 104736), *(v140 + 104648), v138[2], *v138);
          if (sub_160EF0(0xCu, 7))
          {
            v82 = sub_160F34(0xCu);
            v83 = sub_175AE4();
            v84 = sub_160F68(7);
            if (v82)
            {
              printf("%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData\n", v83, 12, v84);
              v85 = sub_175AE4();
              v123 = sub_160F68(7);
              syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData", v85, 12, v123);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData", v83, 12, v84);
            }
          }

          v172[1301] = *(v140 + 10788) == 4;
          v86 = *(v140 + 10808);
          v172[1305] = *(v140 + 10845);
          *(v140 + 10845) = 0;
          v172[1306] = *(v140 + 10204);
          v173 = v86;
          DWORD2(v170) = 0;
          *&v170 = 0;
          if (theDict)
          {
            if (CFDictionaryContainsKey(theDict, @"SessionIndicator"))
            {
              sub_13FDC0(*(v140 + 104712));
            }

            Value = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_UserQpMap);
            DWORD2(v170) = 0;
            *&v170 = 0;
            v166 &= ~0x10000u;
            if (*(v140 + 1338))
            {
              v88 = Value;
              if (Value)
              {
                DWORD2(v170) = CFDataGetLength(Value);
                *&v170 = CFDataGetBytePtr(v88);
                v166 |= 0x10000u;
              }
            }

            v89 = CFDictionaryGetValue(theDict, @"ForceNonRefFrame");
            if (v89 && CFEqual(v89, kCFBooleanTrue))
            {
              v165 |= 2u;
            }

            else
            {
              v90 = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_ForceKeyFrame);
              if (v90 && CFEqual(v90, kCFBooleanTrue))
              {
                if (*(v140 + 10532))
                {
                  v91 = 3;
                }

                else
                {
                  v91 = (*(v140 + 1241) & 1) != 0 ? 1 : 2;
                }

                LODWORD(v167) = v91;
                v164 |= 1u;
                if (sub_160EF0(0x1Du, 6))
                {
                  v92 = sub_160F34(0x1Du);
                  v93 = sub_175AE4();
                  v94 = sub_160F68(6);
                  if (v92)
                  {
                    printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x\n", v93, 29, v94, v167, v164);
                    v93 = sub_175AE4();
                    v94 = sub_160F68(6);
                  }

                  syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v93, 29, v94, v167, v164);
                }
              }
            }

            if (*(v140 + 1297))
            {
              v95 = CFDictionaryGetValue(theDict, @"ReconstructedPixelBuffer");
              if (!v95)
              {
                if (sub_160EF0(3u, 4))
                {
                  v113 = sub_160F34(3u);
                  v114 = sub_175AE4();
                  v115 = sub_160F68(4);
                  if (v113)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | AVE ERR: failed to get ReconstructedPixelBuffer %p\n", v114, 3, v115, "AVE_GetPerTileData", 8560, "pUseReconBuffer != __null", 0);
                    v114 = sub_175AE4();
                    sub_160F68(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: failed to get ReconstructedPixelBuffer %p", v114);
                }

                v96 = 0;
LABEL_150:
                if (sub_160EF0(0xCu, 7))
                {
                  v97 = sub_160F34(0xCu);
                  v98 = sub_175AE4();
                  v99 = sub_160F68(7);
                  if (v97)
                  {
                    printf("%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData\n", v98, 12, v99);
                    v100 = sub_175AE4();
                    v124 = sub_160F68(7);
                    syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData", v100, 12, v124);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData", v98, 12, v99);
                  }
                }

                if (v96)
                {
                  if (sub_114384(v140, &v167, v137))
                  {
                    if (sub_160EF0(3u, 4))
                    {
                      v101 = sub_160F34(3u);
                      v102 = sub_175AE4();
                      v103 = sub_160F68(4);
                      if (v101)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_GetTileInfo failed.\n", v102, 3, v103, "AVE_Session_HEVC_ProcessTile", 9266, "err == noErr");
                        sub_175AE4();
                        sub_160F68(4);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_GetTileInfo failed.");
                    }
                  }

                  else
                  {
                    *(&v158 + 1) = *(v140 + 104648);
                    if (v160)
                    {
                      v107 = pixelBuffer;
                    }

                    else
                    {
                      v107 = 0;
                    }

                    *(&v150 + 1) = v107;
                    v108 = sub_12D95C(*(v140 + 120), v147);
                    v29 = v108;
                    if (!v108)
                    {
                      goto LABEL_97;
                    }

                    if (v108 == -536870173)
                    {
                      if (sub_160EF0(0x10u, 5))
                      {
                        v109 = sub_160F34(0x10u);
                        v110 = sub_175AE4();
                        v111 = sub_160F68(5);
                        if (v109)
                        {
                          printf("%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame\n", v110, 16, v111);
                          v112 = sub_175AE4();
                          v125 = sub_160F68(5);
                          syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame", v112, 16, v125);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame", v110, 16, v111);
                        }
                      }

                      v29 = 0;
                      goto LABEL_97;
                    }

                    if (sub_160EF0(3u, 4))
                    {
                      v116 = sub_160F34(3u);
                      v117 = sub_175AE4();
                      v118 = sub_160F68(4);
                      if (v116)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.\n", v117, 3, v118, "AVE_Session_HEVC_ProcessTile", 9290, "err == noErr");
                        sub_175AE4();
                        sub_160F68(4);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.");
                    }
                  }
                }

                else if (sub_160EF0(3u, 4))
                {
                  v104 = sub_160F34(3u);
                  v105 = sub_175AE4();
                  v106 = sub_160F68(4);
                  if (v104)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_GetPerTileData failed.\n", v105, 3, v106, "AVE_Session_HEVC_ProcessTile", 9261, "err == noErr");
                    sub_175AE4();
                    sub_160F68(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_GetPerTileData failed.");
                }

                goto LABEL_96;
              }

              v183 = v95;
            }
          }

          v96 = 1;
          goto LABEL_150;
        }

        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_96;
        }

        v52 = sub_160F34(3u);
        v53 = sub_175AE4();
        v54 = sub_160F68(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.\n", v53, 3, v54, "AVE_Session_HEVC_ProcessTile", 9196, "false", *v15);
          v53 = sub_175AE4();
          v54 = sub_160F68(4);
          v128 = "false";
          v130 = *v15;
          v126 = 9196;
        }

        else
        {
          v130 = *v15;
          v126 = 9196;
          v128 = "false";
        }

        v121 = v54;
        v55 = "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.";
LABEL_77:
        syslog(3, v55, v53, 3, v121, "AVE_Session_HEVC_ProcessTile", v126, v128, v130, v131, v134);
        goto LABEL_96;
      }

      v43 = (v140 + 106096);
      v44 = v9;
      if (sub_15F5D0(pixelBuffer))
      {
        v45 = 1;
      }

      else
      {
        v45 = 2;
      }

      *(v140 + 10804) = v45;
      sub_102728(v140, pixelBuffer);
      if (sub_1020A4(v140, &pixelBuffer, &v161, &v160, &v159 + 1, &v159, 1))
      {
        if (sub_160EF0(3u, 4))
        {
          v46 = sub_160F34(3u);
          v38 = sub_175AE4();
          v39 = sub_160F68(4);
          if (!v46)
          {
            goto LABEL_95;
          }

          v40 = v4;
          v41 = v9;
          v42 = 9076;
          goto LABEL_73;
        }

        goto LABEL_93;
      }

      sub_10298C(v140, *(v140 + 10804) == 2);
      if (sub_102AD4(v140))
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_93;
        }

        v61 = sub_160F34(3u);
        v62 = sub_175AE4();
        v63 = sub_160F68(4);
        if (v61)
        {
          v64 = v4;
          v65 = v9;
          v66 = 9084;
LABEL_92:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v62, 3, v63, "AVE_Session_HEVC_ProcessTile", v66, "err == noErr");
          sub_175AE4();
          v4 = v64;
          v9 = v65;
          sub_160F68(4);
          goto LABEL_139;
        }

        goto LABEL_139;
      }

      v68 = v4;
      sub_107808(v140, pixelBuffer);
      sub_10A354(v140);
      bzero(v172, 0x8C8uLL);
      v167 = v140 + 672;
      v168 = v140 + 1440;
      v170 = *(v140 + 104712);
      v171 = *(v140 + 104728);
      v169 = v140 + 10752;
      v174 = v140 + 12000;
      v175 = v140 + 24236;
      v177 = v140 + 39844;
      v176 = v140 + 32040;
      v178 = v140 + 49476;
      v179 = v140 + 59112;
      v180 = v140 + 80600;
      memcpy(v181, (v140 + 106112), sizeof(v181));
      v182 = v136;
      if (theDict && CFDictionaryContainsKey(theDict, @"ReconstructedPixelBuffer"))
      {
        *(v167 + 624) |= 0x100u;
      }

      if (sub_12A644(*(v140 + 120), &v167, v140 + 128, *(v140 + 16), *(v140 + 112), *(v140 + 104652), *(v140 + 104656), v140 + 160, (v140 + 11772), (v140 + 11464)))
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_96;
        }

        v69 = sub_160F34(3u);
        v70 = sub_175AE4();
        v71 = sub_160F68(4);
        if (v69)
        {
          v72 = 9120;
LABEL_113:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v70, 3, v71, "AVE_Session_HEVC_ProcessTile", v72, "err == noErr");
          sub_175AE4();
          v4 = v68;
          v9 = v44;
          sub_160F68(4);
          goto LABEL_181;
        }

        goto LABEL_181;
      }
    }

    v17 = v43;
    goto LABEL_115;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v24 = sub_160F34(0xCu);
    v25 = sub_175AE4();
    v26 = sub_160F68(4);
    if (v24)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v25, 12, v26, "AVE_Session_HEVC_ProcessTile", 8999, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v140, v9, pixelBuffer, v137, v138, v4, theDict);
      v27 = sub_175AE4();
      v120 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v27, 12, v120, "AVE_Session_HEVC_ProcessTile", 8999, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v140);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v25, 12, v26, "AVE_Session_HEVC_ProcessTile", 8999, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v140);
    }
  }

  v29 = 4294966295;
LABEL_101:
  if (sub_160EF0(0xCu, 7))
  {
    v74 = sub_160F34(0xCu);
    v75 = sub_175AE4();
    v76 = sub_160F68(7);
    if (v74)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v75, 12, v76, "AVE_Session_HEVC_ProcessTile", v140, v9, pixelBuffer, v137, v138, v4, theDict, v29);
      v77 = sub_175AE4();
      v122 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v77, 12, v122, "AVE_Session_HEVC_ProcessTile", v140, v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v75, 12, v76, "AVE_Session_HEVC_ProcessTile", v140, v9);
    }
  }

  return v29;
}

uint64_t sub_114384(int32x2_t *a1, uint64_t a2, unsigned int *a3)
{
  v6 = &a1[1271] + 3;
  v7 = *a3;
  v8 = *(a3 + 2);
  if (sub_160EF0(0xCu, 7))
  {
    v9 = sub_160F34(0xCu);
    v10 = sub_175AE4();
    v11 = sub_160F68(7);
    v12 = a1[1358].u32[1];
    v13 = a1[1359].i32[0];
    if (v9)
    {
      printf("%lld %d AVE %s: FIG: Pixelbuffer width %d height %d\n", v10, 12, v11, a1[1358].i32[1], v13);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: Pixelbuffer width %d height %d", v14, 12, v15, a1[1358].i32[1], a1[1359].i32[0]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: Pixelbuffer width %d height %d", v10, 12, v11, a1[1358].i32[1], v13);
    }
  }

  v16 = v6[684];
  v17 = *a3;
  if (v6[684])
  {
    v18 = a3[1];
    goto LABEL_7;
  }

  if (v17 != ((v17 + 63) & 0xFFFFFFC0))
  {
    if (!sub_160EF0(3u, 4))
    {
      return 4294966296;
    }

    v29 = sub_160F34(3u);
    v26 = sub_175AE4();
    v30 = sub_160F68(4);
    if (v29)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x = %d not aligned\n", v26, 3, v30, "AVE_GetTileInfo", 8588, "pRect->iX == (((pRect->iX) + (64) - 1) & ~((64) - 1))", *a3);
      v26 = sub_175AE4();
      v30 = sub_160F68(4);
      v107 = "pRect->iX == (((pRect->iX) + (64) - 1) & ~((64) - 1))";
      v110 = *a3;
      v104 = 8588;
    }

    else
    {
      v110 = *a3;
      v104 = 8588;
      v107 = "pRect->iX == (((pRect->iX) + (64) - 1) & ~((64) - 1))";
    }

    v100 = v30;
    v28 = "%lld %d AVE %s: %s:%d %s | AVE ERR: x = %d not aligned";
    goto LABEL_66;
  }

  v18 = a3[1];
  if (v18 != ((v18 + 15) & 0xFFFFFFF0))
  {
    if (!sub_160EF0(3u, 4))
    {
      return 4294966296;
    }

    v25 = sub_160F34(3u);
    v26 = sub_175AE4();
    v27 = sub_160F68(4);
    if (v25)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y = %d not aligned\n", v26, 3, v27, "AVE_GetTileInfo", 8591, "pRect->iY == (((pRect->iY) + (16) - 1) & ~((16) - 1))", a3[1]);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      v107 = "pRect->iY == (((pRect->iY) + (16) - 1) & ~((16) - 1))";
      v110 = a3[1];
      v104 = 8591;
    }

    else
    {
      v110 = a3[1];
      v104 = 8591;
      v107 = "pRect->iY == (((pRect->iY) + (16) - 1) & ~((16) - 1))";
    }

    v100 = v27;
    v28 = "%lld %d AVE %s: %s:%d %s | AVE ERR: y = %d not aligned";
LABEL_66:
    syslog(3, v28, v26, 3, v100, "AVE_GetTileInfo", v104, v107, v110);
    return 4294966296;
  }

LABEL_7:
  v19 = vadd_s32(v8, v7);
  v20 = *&vadd_s32(v8, 0xF0000000FLL) & 0xFFFFFFF0FFFFFFF0;
  *(a2 + 552) = v17;
  *(a2 + 556) = v18;
  v132 = v20;
  if (a1[9].i32[1] < 12)
  {
    *(a2 + 560) = *(v6 + 697);
    v24 = v19.i32[0];
    v23 = v19.u32[1];
  }

  else if (v16)
  {
    v21 = vceq_s32(a1[180], v20);
    v22 = *(v6 + 697);
    *(a2 + 560) = vbsl_s8(v21, v22, vmin_u32(v19, v22));
    v23 = v22.u32[1];
    v24 = v22.i32[0];
  }

  else
  {
    v31 = a1[1358].u32[1];
    if (v19.i32[0] <= v31)
    {
      v32 = a3[2];
    }

    else
    {
      v32 = v31 - v17;
    }

    *(a2 + 560) = v32;
    v24 = v32 + v17;
    v33 = a1[1359].u32[0];
    if (v19.i32[1] <= v33)
    {
      v34 = a3[3];
    }

    else
    {
      v34 = v33 - v18;
    }

    *(a2 + 564) = v34;
    v23 = v34 + v18;
  }

  if (sub_160EF0(0xCu, 7))
  {
    v35 = sub_160F34(0xCu);
    v36 = sub_175AE4();
    v37 = sub_160F68(7);
    v38 = a1[180].u32[0];
    if (v35)
    {
      printf("%lld %d AVE %s: FIG: Tile: %d %d | %u %u | %d %d | %d %d | %d %d\n\n", v36, 12, v37, v38, a1[180].i32[1], a1[1358].i32[1], a1[1359].i32[0], v132, HIDWORD(v132), *(a2 + 560), *(a2 + 564), v24, v23);
      v39 = sub_175AE4();
      v40 = sub_160F68(7);
      v122 = *(a2 + 560);
      v127 = *(a2 + 564);
      v108 = a1[1358].u32[1];
      v111 = a1[1359].u32[0];
      v105 = a1[180].u32[1];
      syslog(3, "%lld %d AVE %s: FIG: Tile: %d %d | %u %u | %d %d | %d %d | %d %d\n", v39, 12, v40, a1[180].u32[0]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: Tile: %d %d | %u %u | %d %d | %d %d | %d %d\n", v36, 12, v37, v38);
    }
  }

  if (v6[33] != 1)
  {
    if (*v6)
    {
      v52 = a1[1274].i32[0] == 10;
      if ((v24 << v52) > a1[1358].i32[0])
      {
        if (!sub_160EF0(3u, 4))
        {
          return 4294966296;
        }

        v53 = sub_160F34(3u);
        v54 = sub_175AE4();
        v55 = sub_160F68(4);
        v56 = a3[2];
        if (v53)
        {
          v57 = 8711;
          printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)\n", v54, 3, v55, "AVE_GetTileInfo", 8711, "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride", *a3, a3[2], a1[1358].i32[0]);
LABEL_47:
          v54 = sub_175AE4();
          v60 = sub_160F68(4);
          v116 = a3[2];
          v120 = a1[1358].u32[0];
          v109 = "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride";
          v112 = *a3;
          v106 = v57;
          v102 = v60;
          v61 = "%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)";
          goto LABEL_98;
        }

        v116 = a3[2];
        v120 = a1[1358].u32[0];
        v112 = *a3;
        v99 = 8711;
        goto LABEL_97;
      }

      if (v23 > a1[1359].i32[0])
      {
        if (!sub_160EF0(3u, 4))
        {
          return 4294966296;
        }

        v66 = sub_160F34(3u);
        v54 = sub_175AE4();
        v67 = sub_160F68(4);
        v68 = a3[3];
        if (v66)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height (%u)\n", v54, 3, v67, "AVE_GetTileInfo", 8716, "height <= pINS->VideoParamsDriver.pixelBuffer.Height", a3[1], a3[3], a1[1359].i32[0]);
          v54 = sub_175AE4();
          v67 = sub_160F68(4);
          v116 = a3[3];
          v120 = a1[1359].u32[0];
          v109 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
          v112 = a3[1];
          v106 = 8716;
        }

        else
        {
          v116 = a3[3];
          v120 = a1[1359].u32[0];
          v112 = a3[1];
          v106 = 8716;
          v109 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
        }

        v102 = v67;
        v61 = "%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height (%u)";
LABEL_98:
        syslog(3, v61, v54, 3, v102, "AVE_GetTileInfo", v106, v109, v112, v116, v120, v121, v126, v131);
        return 4294966296;
      }

      result = 0;
      v73 = a3[1];
      v74 = *a3 << v52;
    }

    else
    {
      if (((2 * ((2863311531u * (v24 + 2)) >> 32)) & 0xFFFFFFFC) > a1[1358].i32[0])
      {
        if (!sub_160EF0(3u, 4))
        {
          return 4294966296;
        }

        v58 = sub_160F34(3u);
        v54 = sub_175AE4();
        v55 = sub_160F68(4);
        v59 = a3[2];
        if (v58)
        {
          v57 = 8691;
          printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)\n", v54, 3, v55, "AVE_GetTileInfo", 8691, "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride", *a3, a3[2], a1[1358].i32[0]);
          goto LABEL_47;
        }

        v116 = a3[2];
        v120 = a1[1358].u32[0];
        v112 = *a3;
        v99 = 8691;
LABEL_97:
        v106 = v99;
        v109 = "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride";
        v102 = v55;
        v61 = "%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)";
        goto LABEL_98;
      }

      if (v23 > a1[1359].i32[0])
      {
        if (!sub_160EF0(3u, 4))
        {
          return 4294966296;
        }

        v69 = sub_160F34(3u);
        v54 = sub_175AE4();
        v70 = sub_160F68(4);
        v71 = a3[3];
        if (v69)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height(%u)\n", v54, 3, v70, "AVE_GetTileInfo", 8696, "height <= pINS->VideoParamsDriver.pixelBuffer.Height", a3[1], a3[3], a1[1359].i32[0]);
          v54 = sub_175AE4();
          v70 = sub_160F68(4);
          v116 = a3[3];
          v120 = a1[1359].u32[0];
          v109 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
          v112 = a3[1];
          v106 = 8696;
        }

        else
        {
          v116 = a3[3];
          v120 = a1[1359].u32[0];
          v112 = a3[1];
          v106 = 8696;
          v109 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
        }

        v102 = v70;
        v61 = "%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height(%u)";
        goto LABEL_98;
      }

      result = 0;
      v73 = a3[1];
      v74 = (*a3 / 48) << 6;
    }

    *(a2 + 544) = v74;
    *(a2 + 548) = v73;
    return result;
  }

  if (a1[9].i32[1] < 12)
  {
LABEL_103:
    result = 0;
    *(a2 + 544) = 0;
    return result;
  }

  v41.i32[0] = a1[1358].i32[1];
  v41.i32[1] = *(a2 + 560);
  v42 = vadd_s32(v41, 0x1F0000001FLL);
  v43.i32[0] = a1[1359].i32[0];
  v43.i32[1] = *(a2 + 564);
  v44 = vadd_s32(v43, 0x1F0000001FLL);
  v45 = vand_s8(vmin_u32(vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v44, 5uLL))), vbic_s8(vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v42, 5uLL))), vcgt_u32(0x4000000040, v42))), vcgt_u32(v44, 0x3F0000003FLL));
  v46 = v45.i32[1];
  v47 = v45.i32[0];
  if (v45.i32[0] == v45.i32[1])
  {
    if (sub_160EF0(0xCu, 7))
    {
      v48 = sub_160F34(0xCu);
      v49 = sub_175AE4();
      v50 = sub_160F68(7);
      if (v48)
      {
        printf("%lld %d AVE %s: uiPixelBufferTwiddleBitsLuma %d uiEncodedRegionTwiddleBitsLuma %d\n", v49, 12, v50, v47, v47);
        v51 = sub_175AE4();
        v101 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: uiPixelBufferTwiddleBitsLuma %d uiEncodedRegionTwiddleBitsLuma %d", v51, 12, v101, v47, v47);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: uiPixelBufferTwiddleBitsLuma %d uiEncodedRegionTwiddleBitsLuma %d", v49, 12, v50, v47, v47);
      }
    }

    v75 = a1[3086].i32[0];
    if (v75 > 3)
    {
      v78 = 0;
      v77 = 0;
    }

    else
    {
      v76 = (&unk_1A2B74 + 8 * v75);
      v78 = *v76;
      v77 = v76[1];
    }

    v79 = a1[1358].i32[1] / v78 + 15;
    v80 = 32 - __clz((v79 >> 4) - 1);
    if (v79 >= 0x20)
    {
      v81 = v80;
    }

    else
    {
      v81 = 0;
    }

    v82 = a1[1359].i32[0] / v77 + 15;
    v83 = 32 - __clz((v82 >> 4) - 1);
    if (v83 < v81)
    {
      v81 = v83;
    }

    if (v82 <= 0x1F)
    {
      v84 = 0;
    }

    else
    {
      v84 = v81;
    }

    v85 = *(a2 + 560) / v78 + 15;
    v86 = 32 - __clz((v85 >> 4) - 1);
    if (v85 >= 0x20)
    {
      v87 = v86;
    }

    else
    {
      v87 = 0;
    }

    v88 = *(a2 + 564) / v77 + 15;
    v89 = 32 - __clz((v88 >> 4) - 1);
    if (v89 < v87)
    {
      v87 = v89;
    }

    if (v88 <= 0x1F)
    {
      v90 = 0;
    }

    else
    {
      v90 = v87;
    }

    if (v84 == v90)
    {
      if (sub_160EF0(0xCu, 7))
      {
        v91 = sub_160F34(0xCu);
        v92 = sub_175AE4();
        v93 = sub_160F68(7);
        if (v91)
        {
          printf("%lld %d AVE %s: uiPixelBufferTwiddleBitsChroma %d uiEncodedRegionTwiddleBitsChroma %d\n", v92, 12, v93, v84, v84);
          v94 = sub_175AE4();
          v103 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: uiPixelBufferTwiddleBitsChroma %d uiEncodedRegionTwiddleBitsChroma %d", v94, 12, v103, v84, v84);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: uiPixelBufferTwiddleBitsChroma %d uiEncodedRegionTwiddleBitsChroma %d", v92, 12, v93, v84, v84);
        }
      }

      goto LABEL_103;
    }

    if (sub_160EF0(3u, 4))
    {
      v95 = sub_160F34(3u);
      v63 = sub_175AE4();
      v64 = sub_160F68(4);
      v96 = *(a2 + 564);
      if (v95)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: Encoded region of compressed buffer is not within correct size. (%d ,%d)%d | (%d, %d)%d \n", v63, 3, v64, "AVE_GetTileInfo", 8677, "uiPixelBufferTwiddleBitsChroma == uiEncodedRegionTwiddleBitsChroma", a1[1358].i32[1], a1[1359].i32[0], v84, *(a2 + 560), *(a2 + 564), v90);
        goto LABEL_94;
      }

      v130 = *(a2 + 564);
      v125 = *(a2 + 560);
      v115 = a1[1358].u32[1];
      v119 = a1[1359].u32[0];
      goto LABEL_105;
    }
  }

  else if (sub_160EF0(3u, 4))
  {
    v62 = sub_160F34(3u);
    v63 = sub_175AE4();
    v64 = sub_160F68(4);
    v65 = *(a2 + 564);
    if (v62)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERR: Encoded region of compressed buffer is not within correct size. (%d ,%d)%d | (%d, %d)%d \n", v63, 3, v64, "AVE_GetTileInfo", 8663, "uiPixelBufferTwiddleBitsLuma == uiEncodedRegionTwiddleBitsLuma", a1[1358].i32[1], a1[1359].i32[0], v47, *(a2 + 560), *(a2 + 564), v46);
LABEL_94:
      v97 = sub_175AE4();
      v98 = sub_160F68(4);
      v128 = *(a2 + 564);
      v123 = *(a2 + 560);
      v113 = a1[1358].u32[1];
      v117 = a1[1359].u32[0];
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: Encoded region of compressed buffer is not within correct size. (%d ,%d)%d | (%d, %d)%d ", v97, 3, v98);
      return 4294966296;
    }

    v129 = *(a2 + 564);
    v124 = *(a2 + 560);
    v114 = a1[1358].u32[1];
    v118 = a1[1359].u32[0];
LABEL_105:
    syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: Encoded region of compressed buffer is not within correct size. (%d ,%d)%d | (%d, %d)%d ", v63, 3, v64);
  }

  return 4294966296;
}

uint64_t sub_114FC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 104636;
  v5 = (a1 + 760);
  v6 = sub_175AE4();
  if (sub_160EF0(0xCu, 6))
  {
    v7 = sub_160F34(0xCu);
    v8 = sub_175AE4();
    v9 = sub_160F68(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%llx\n", v8, 12, v9, "AVE_Session_HEVC_Create", a1, a2);
      v10 = sub_175AE4();
      v26 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%llx", v10, 12, v26, "AVE_Session_HEVC_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%llx", v8, 12, v9, "AVE_Session_HEVC_Create", a1, a2);
    }
  }

  v11 = sub_1502C8();
  *(a1 + 64) = 1;
  *v4 = 2;
  *(a1 + 1256) = -1;
  *(a1 + 10772) = 2;
  *(a1 + 10556) = 0x100000001;
  *(a1 + 776) = 1;
  *v5 = xmmword_185A80;
  *(a1 + 712) = v11[103];
  v12 = sub_1289FC(1, 2);
  if (!v12)
  {
    *(a1 + 68) = sub_129100(*(a1 + 120));
    *(a1 + 72) = sub_12910C(*(a1 + 120));
    *(a1 + 56) = sub_129118(*(a1 + 120));
    *(a1 + 76) = *(sub_16FD90(*(a1 + 68)) + 1);
    sub_DE2C4(a1 + 106112, *(a1 + 56));
    operator new();
  }

  v13 = v12;
  if (sub_160EF0(0xCu, 4))
  {
    v14 = sub_160F34(0xCu);
    v15 = sub_175AE4();
    v16 = sub_160F68(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to open HEVC %p %lld %d\n", v15, 12, v16, "AVE_Session_HEVC_Create", 9358, "ret == 0", a1, 0, v13);
      v17 = sub_175AE4();
      v27 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open HEVC %p %lld %d", v17, 12, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open HEVC %p %lld %d", v15, 12, v16);
    }
  }

  v18 = *(v4 + 68);
  if (v18)
  {
    sub_153A34(v18);
    operator delete();
  }

  v19 = *(v4 + 100);
  if (v19)
  {
    sub_16934(v19);
    operator delete();
  }

  v20 = sub_175AE4() - v6;
  if (sub_160EF0(0xCu, 4))
  {
    v21 = sub_160F34(0xCu);
    v22 = sub_175AE4();
    v23 = sub_160F68(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d\n", v22, 12, v23, "AVE_Session_HEVC_Create", a1, a2, 0, v20, v13);
      v24 = sub_175AE4();
      v28 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d", v24, 12, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d", v22, 12, v23);
    }
  }

  return v13;
}

void sub_11565C(uint64_t a1)
{
  v2 = sub_1502C8();
  v3 = v2[221];
  if (v3 <= 3)
  {
    *(a1 + 1256) = v3;
  }

  v4 = v2[220];
  if ((v4 & 0x80000000) == 0)
  {
    *(a1 + 1252) = v4;
  }

  v5 = v2[223];
  if (v5 >= 1)
  {
    *(a1 + 1288) = v5;
  }

  v6 = v2[232];
  if (v6 >= 1)
  {
    *(a1 + 1308) = v6;
  }

  v7 = v2[233];
  if (v7 >= 1)
  {
    *(a1 + 1312) = v7;
  }

  if (*(a1 + 1256) < 1)
  {
    *(a1 + 1256) = 0x100000000;
    *(a1 + 1288) = 1;
    *(a1 + 1240) &= ~0x400u;
    if (sub_160EF0(0x1Eu, 6))
    {
      v12 = sub_160F34(0x1Eu);
      v13 = sub_175AE4();
      v14 = sub_160F68(6);
      if (v12)
      {
        printf("%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF\n", v13, 30, v14);
        sub_175AE4();
        sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF");
    }
  }

  else
  {
    if (*(a1 + 1132) != 20)
    {
      *(a1 + 10764) = 1;
    }

    if (sub_160EF0(0x1Eu, 6))
    {
      v8 = sub_160F34(0x1Eu);
      v9 = sub_175AE4();
      v10 = sub_160F68(6);
      v11 = *(a1 + 1256);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)\n", v9, 30, v10, "AVE_HEVCNewDefaultsBasedOnProfileUsageDefault", 5512, *(a1 + 1256), *(a1 + 107716));
        v9 = sub_175AE4();
        v10 = sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)", v9, 30, v10, "AVE_HEVCNewDefaultsBasedOnProfileUsageDefault", 5512, *(a1 + 1256), *(a1 + 107716));
    }
  }

  *(a1 + 39880) = *(a1 + 1144) - 26;
  if (*(a1 + 1338))
  {
    *(a1 + 39886) = 1;
    *(a1 + 10205) = 0;
  }

  if (*(a1 + 39959) == 1)
  {
    *(a1 + 1132) = 3;
    *(a1 + 10764) = 1;
    *(a1 + 1464) = 0;
    *(a1 + 1352) = 0;
    *(a1 + 1240) &= ~0x400u;
    v15 = *(a1 + 24732);
    *(a1 + 39886) = 0;
    v15 *= -6;
    *(a1 + 1348) = v15;
    *(a1 + 1344) = v15;
    *(a1 + 1152) = v15;
    *(a1 + 1148) = v15;
    *(a1 + 1144) = v15;
    *(a1 + 1232) = *(a1 + 1344);
    *(a1 + 1336) = 0;
    *(a1 + 10604) = 0;
  }
}

void H9EncoderRegister()
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
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v2);
      if (MutableCopy)
      {
        v4 = MutableCopy;
        CFDictionaryAddValue(v2, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.hevc");
        v0 = VTRegisterVideoEncoderWithInfo();
        if (!v0)
        {
          CFDictionaryAddValue(v4, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.ohvc");
          CFDictionaryAddValue(v4, kVTVideoEncoder_Hide, kCFBooleanTrue);
          v0 = VTRegisterVideoEncoderWithInfo();
        }

        CFRelease(v2);
      }

      else
      {
        v0 = 0;
        v4 = v2;
      }

      CFRelease(v4);
    }

    else
    {
      v0 = 0;
    }
  }

  if (sub_160EF0(2u, 5))
  {
    v5 = sub_160F34(2u);
    v6 = sub_175AE4();
    v7 = sub_160F68(5);
    if (v5)
    {
      printf("%lld %d AVE %s: Register HEVC video encoder of AVE %d\n", v6, 2, v7, v0);
      v8 = sub_175AE4();
      v9 = sub_160F68(5);
      syslog(3, "%lld %d AVE %s: Register HEVC video encoder of AVE %d", v8, 2, v9, v0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Register HEVC video encoder of AVE %d", v6, 2, v7, v0);
    }
  }
}

uint64_t sub_115AF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 137792;
  v5 = a1 + 25784;
  sub_1285DC(a1 + 16);
  *(a1 + 29328) = *(a2 + 16);
  *(v5 + 3552) = *a2;
  *(a1 + 29352) = *(a2 + 32);
  *(a1 + 29312) = *(a2 + 72);
  *(v4 + 16) = *(a2 + 204);
  *(v4 + 12) = *(a2 + 200);
  *(v4 + 24) = *(a2 + 208);
  *a1 = 0;
  *(a1 + 8) = 0;
  *v4 = *(a2 + 216);
  v6 = *(a2 + 40);
  *(a1 + 29296) = *(a2 + 56);
  *(a1 + 29280) = v6;
  v7 = *(a2 + 80);
  if (v7)
  {
    memcpy((a1 + 29368), v7, 0x300uLL);
  }

  v8 = *(a2 + 88);
  if (v8)
  {
    memcpy((a1 + 30136), v8, 0x2460uLL);
  }

  memcpy((a1 + 39448), *(a2 + 96), 0x4E0uLL);
  v9 = *(a2 + 96);
  *(a1 + 40696) = *(a2 + 104);
  v10 = *(v9 + 20);
  if (v10 == 2)
  {
    v16 = *(a2 + 144);
    if (v16)
    {
      memcpy((a1 + 45152), v16, 0x2FCCuLL);
    }

    v17 = 0;
    v18 = 1;
    do
    {
      v19 = v18;
      v20 = *(a2 + 152 + 8 * v17);
      if (v20)
      {
        memcpy((a1 + 57388 + 7804 * v17), v20, 0x1E7CuLL);
      }

      v21 = *(a2 + 168 + 8 * v17);
      if (v21)
      {
        memcpy((a1 + 72996 + 9632 * v17), v21, 0x25A0uLL);
      }

      v18 = 0;
      v17 = 1;
    }

    while ((v19 & 1) != 0);
    v22 = *(a2 + 184);
    if (v22)
    {
      memcpy((a1 + 92264), v22, 0x53F0uLL);
    }

    v13 = *(a2 + 192);
    if (v13)
    {
      v14 = (a1 + 113752);
      v15 = 24024;
      goto LABEL_25;
    }
  }

  else if (v10 == 1)
  {
    v11 = *(a2 + 120);
    if (v11)
    {
      memcpy((a1 + 40712), v11, 0x6B4uLL);
    }

    v12 = *(a2 + 128);
    if (v12)
    {
      memcpy((a1 + 42428), v12, 0x180uLL);
    }

    v13 = *(a2 + 136);
    if (v13)
    {
      v14 = (a1 + 42812);
      v15 = 2340;
LABEL_25:
      memcpy(v14, v13, v15);
    }
  }

  else if (sub_160EF0(0x2Eu, 4))
  {
    if (sub_160F34(0x2Eu))
    {
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      printf("%lld %d AVE %s: codectype not recognized! %d\n", v23, 46, v24, *(*(a2 + 96) + 20));
    }

    v25 = sub_175AE4();
    v26 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: codectype not recognized! %d", v25, 46, v26, *(*(a2 + 96) + 20));
  }

  *(a1 + 29100) = 0;
  *(a1 + 29084) = 0u;
  *(a1 + 29112) = 0u;
  bzero((a1 + 28032), 0x418uLL);
  *(v5 + 3488) = -1;
  *(v5 + 3492) = 0;
  *(a1 + 29360) = 0;
  *v5 = 0;
  *(a1 + 143688) = 0;
  *(a1 + 25792) = 0u;
  *(a1 + 25808) = 0u;
  *(a1 + 25824) = 0u;
  *(a1 + 25840) = 0u;
  *(a1 + 25856) = 0u;
  *(a1 + 25872) = 0u;
  *(a1 + 25888) = 0u;
  *(a1 + 25904) = 0u;
  *(a1 + 25920) = 0u;
  *(a1 + 25936) = 0u;
  *(a1 + 25952) = 0u;
  *(a1 + 25968) = 0u;
  *(a1 + 25984) = 0u;
  *(a1 + 26000) = 0u;
  *(a1 + 26016) = 0u;
  *(a1 + 26032) = 0u;
  *(a1 + 26048) = 0u;
  *(a1 + 26064) = 0u;
  *(a1 + 26080) = 0u;
  *(a1 + 26096) = 0u;
  *(a1 + 26112) = 0u;
  *(a1 + 26128) = 0u;
  *(a1 + 26144) = 0u;
  *(a1 + 26160) = 0u;
  *(a1 + 26176) = 0u;
  *(a1 + 26192) = 0u;
  *(a1 + 26208) = 0u;
  *(a1 + 26224) = 0u;
  *(a1 + 26240) = 0u;
  *(a1 + 26256) = 0u;
  *(a1 + 26920) = 0u;
  *(a1 + 26936) = 0u;
  *(a1 + 26888) = 0u;
  *(a1 + 26904) = 0u;
  *(a1 + 26856) = 0u;
  *(a1 + 26872) = 0u;
  *(a1 + 26824) = 0u;
  *(a1 + 26840) = 0u;
  *(a1 + 26792) = 0u;
  *(a1 + 26808) = 0u;
  *(a1 + 26760) = 0u;
  *(a1 + 26776) = 0u;
  *(a1 + 26728) = 0u;
  *(a1 + 26744) = 0u;
  *(a1 + 26696) = 0u;
  *(a1 + 26712) = 0u;
  *(a1 + 26664) = 0u;
  *(a1 + 26680) = 0u;
  *(a1 + 26632) = 0u;
  *(a1 + 26648) = 0u;
  *(a1 + 26600) = 0u;
  *(a1 + 26616) = 0u;
  *(a1 + 26568) = 0u;
  *(a1 + 26584) = 0u;
  *(a1 + 26536) = 0u;
  *(a1 + 26552) = 0u;
  *(a1 + 26504) = 0u;
  *(a1 + 26520) = 0u;
  *(a1 + 26472) = 0u;
  *(a1 + 26488) = 0u;
  bzero((a1 + 27072), 0x3C0uLL);
  *(a1 + 143680) = 0;
  *(a1 + 143664) = 0u;
  *(a1 + 143696) = *(a2 + 232);
  return a1;
}

uint64_t sub_115F10(uint64_t a1)
{
  v2 = -240;
  do
  {
    v3 = a1 + v2;
    v4 = *(a1 + v2 + 26272);
    if (v4)
    {
      IOSurfaceUnlock(v4, 0, 0);
      CFRelease(*(v3 + 26272));
      *(v3 + 26272) = 0;
    }

    v5 = *(v3 + 26952);
    if (v5)
    {
      IOSurfaceUnlock(v5, 0, 0);
      CFRelease(*(v3 + 26952));
      *(v3 + 26952) = 0;
    }

    v6 = a1 + v2;
    v7 = *(a1 + v2 + 27552);
    if (v7)
    {
      IOSurfaceUnlock(v7, 0, 0);
      CFRelease(*(v6 + 27552));
      *(v6 + 27552) = 0;
    }

    v8 = *(v6 + 28032);
    if (v8)
    {
      IOSurfaceUnlock(v8, 0, 0);
      CFRelease(*(v6 + 28032));
      *(v6 + 28032) = 0;
    }

    v2 += 8;
  }

  while (v2);
  if (*(a1 + 29360))
  {
    FigFormatDescriptionRelease();
    *(a1 + 29360) = 0;
  }

  v9 = *(a1 + 29112);
  if (v9)
  {
    free(v9);
    *(a1 + 29112) = 0;
    *(a1 + 29120) = 0;
  }

  sub_1287C0((a1 + 25448));
  sub_1287C0((a1 + 25400));
  v10 = *(a1 + 25368);
  if (v10)
  {
    *(a1 + 25376) = v10;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_11602C(uint64_t a1, const void *a2, char *a3, unsigned int *a4, unsigned int *a5)
{
  v150[0] = 0;
  v148 = 0;
  v149 = 0;
  if (sub_160EF0(0x2Eu, 7))
  {
    v9 = sub_160F34(0x2Eu);
    v10 = sub_175AE4();
    v11 = sub_160F68(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %p %p %p\n", v10, 46, v11, "AVE_FrameRecv", "CreateVideoFormatDesc", a2, a3, a4, a5);
      v12 = sub_175AE4();
      v118 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %p %p %p", v12, 46, v118);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %p %p %p", v10, 46, v11);
    }
  }

  if (a5 && *a5)
  {
    v143 = a1 + 39252;
    if (sub_160EF0(0x2Eu, 8))
    {
      v13 = sub_160F34(0x2Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(8);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d sPSInfo.iNum %d\n", v14, 46, v15, "AVE_FrameRecv", "CreateVideoFormatDesc", 244, *a5);
        v14 = sub_175AE4();
        sub_160F68(8);
        v16 = *a5;
      }

      else
      {
        v124 = *a5;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d sPSInfo.iNum %d", v14);
    }

    v145 = a2;
    v141 = (a1 + 30136);
    v142 = a1;
    v147 = a5;
    if (*a5 >= 1)
    {
      v27 = 0;
      v28 = (a5 + 4);
      do
      {
        if (sub_160EF0(0x2Eu, 8))
        {
          v29 = sub_160F34(0x2Eu);
          v30 = sub_175AE4();
          v31 = sub_160F68(8);
          v32 = *(v28 - 3);
          v33 = *(v28 - 2);
          v34 = *(v28 - 1);
          v35 = *v28;
          if (v29)
          {
            printf("%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d\n", v30, 46, v31, "AVE_FrameRecv", "CreateVideoFormatDesc", 249, v27, v32, v33, *(v28 - 1), v35);
            v30 = sub_175AE4();
            v31 = sub_160F68(8);
            v32 = *(v28 - 3);
            v33 = *(v28 - 2);
            v34 = *(v28 - 1);
            v35 = *v28;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d", v30, 46, v31, "AVE_FrameRecv", "CreateVideoFormatDesc", 249, v27, v32, v33, v34, v35);
          a5 = v147;
        }

        ++v27;
        v28 += 4;
      }

      while (v27 < *a5);
    }

    v36 = (a1 + 39448);
    v37 = *(a1 + 39468);
    if (v37 == 1)
    {
      v46 = (a1 + 40712);
      v21 = sub_16A75C(0, a3, a5, (a1 + 40712), &v149);
      a2 = v145;
      if (v149)
      {
        if (*(a1 + 41808))
        {
          CFDictionarySetValue(v149, kCMFormatDescriptionExtension_FullRangeVideo, kCFBooleanTrue);
        }

        v47 = *v141;
        v48 = *(a1 + 40748);
        if (v48 > 3)
        {
          v50 = 0;
        }

        else
        {
          v49 = (&unk_1A2B74 + 8 * v48);
          v51 = *v49;
          v50 = v49[1];
          v47 -= v51 * *(a1 + 41896);
        }

        v60 = *(a1 + 30140) - *(a1 + 41904) * v50;
        if (sub_160EF0(0x2Eu, 8))
        {
          v61 = sub_160F34(0x2Eu);
          v62 = sub_175AE4();
          v63 = sub_160F68(8);
          v64 = *(a1 + 41896);
          if (v61)
          {
            printf("%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d\n", v62, 46, v63, "AVE_FrameRecv", "CreateVideoFormatDesc", 277, *(a1 + 30136), *(a1 + 30140), v47, v60, *(a1 + 41896), *(a1 + 41904));
            v62 = sub_175AE4();
            v63 = sub_160F68(8);
            v133 = *(a1 + 41896);
            v138 = *(a1 + 41904);
            v125 = *v141;
            v127 = *(a1 + 30140);
          }

          else
          {
            v134 = *(a1 + 41896);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v62, 46, v63);
          a2 = v145;
        }

        if (*v36 == 2)
        {
          VideoFormatDescription = VTTileEncoderSessionCreateVideoFormatDescription();
        }

        else
        {
          VideoFormatDescription = VTEncoderSessionCreateVideoFormatDescription();
        }

        v69 = VideoFormatDescription;
        if (!VideoFormatDescription)
        {
          v20 = 0;
LABEL_139:
          a5 = v147;
          goto LABEL_17;
        }

        if (sub_160EF0(0x2Eu, 4))
        {
          v70 = sub_160F34(0x2Eu);
          v71 = sub_175AE4();
          v72 = sub_160F68(4);
          if (v70)
          {
            a2 = v145;
            printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %p %p %d\n", v71, 46, v72, "AVE_FrameRecv", "CreateVideoFormatDesc", 305, "res == noErr", *v36, v145, v47, v60, v149, (a1 + 29360), v69);
            v71 = sub_175AE4();
            v72 = sub_160F68(4);
            v128 = *v36;
          }

          else
          {
            a2 = v145;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %p %p %d", v71, 46, v72, "AVE_FrameRecv", "CreateVideoFormatDesc", 305, "res == noErr");
        }

        v20 = 0;
LABEL_110:
        v21 = 4294966296;
        goto LABEL_139;
      }

      if (sub_160EF0(0x2Eu, 4))
      {
        v56 = sub_160F34(0x2Eu);
        v57 = sub_175AE4();
        v58 = sub_160F68(4);
        if (v56)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d\n", v57, 46, v58, "AVE_FrameRecv", "CreateVideoFormatDesc", 261, "pCFDict != __null", a3, a5, v46, &v149, v21);
          v59 = sub_175AE4();
          v120 = sub_160F68(4);
          a5 = v147;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d", v59, 46, v120, "AVE_FrameRecv", "CreateVideoFormatDesc", 261);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d", v57, 46, v58, "AVE_FrameRecv", "CreateVideoFormatDesc", 261);
        }
      }

      v20 = 0;
    }

    else
    {
      a2 = v145;
      v38 = a1;
      if (v37 == 2)
      {
        v39 = *(a1 + 30144);
        v40 = sub_21ECC(*(v142 + 143696), a4[10], 64);
        if (v40 >= 1)
        {
          v41 = v40;
          v42 = malloc_type_malloc(v40, 0x100004077774924uLL);
          if (!v42)
          {
            if (sub_160EF0(0x2Eu, 4))
            {
              v65 = sub_160F34(0x2Eu);
              v66 = sub_175AE4();
              v67 = sub_160F68(4);
              if (v65)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | failed to allocate SEI buffer %d\n", v66, 46, v67, "AVE_FrameRecv", "CreateVideoFormatDesc", 323, "piSEIData != __null", v41);
                v66 = sub_175AE4();
                sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to allocate SEI buffer %d", v66, 46);
            }

            v20 = 0;
            goto LABEL_116;
          }

          v20 = v42;
          if (sub_160EF0(0x2Eu, 7))
          {
            v43 = sub_160F34(0x2Eu);
            v44 = sub_175AE4();
            v45 = sub_160F68(7);
            if (v43)
            {
              printf("%lld %d AVE %s: %s::%s:%d allocated %d bytes for ambient viewing environment\n", v44, 46, v45, "AVE_FrameRecv", "CreateVideoFormatDesc", 326, v41);
              v44 = sub_175AE4();
              sub_160F68(7);
              v38 = v142;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d allocated %d bytes for ambient viewing environment", v44);
            a5 = v147;
          }

          v73 = sub_17AF8(*(v38 + 143696), a4[10], 64, v20, v41, v150);
          if (v73)
          {
            v21 = v73;
            if (!sub_160EF0(0x2Eu, 4))
            {
              goto LABEL_17;
            }

            v74 = sub_160F34(0x2Eu);
            v75 = sub_175AE4();
            v76 = sub_160F68(4);
            if (v74)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d\n", v75, 46, v76, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0", v41, v20, v36, a4, v150, v21);
              v77 = sub_175AE4();
              a2 = v145;
              v121 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d", v77, 46, v121, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d", v75, 46, v76, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0");
            }

            goto LABEL_139;
          }

          if (v150[0])
          {
LABEL_84:
            if (*v143 >= 2u)
            {
              v78 = *(v143 + 1252);
              v79 = *(v143 + 1253);
              MVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults = VTEncoderSessionCreateMVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults();
              if (sub_160EF0(0x2Eu, 4))
              {
                v94 = sub_160F34(0x2Eu);
                v95 = sub_175AE4();
                v96 = sub_160F68(4);
                if (v94)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | failed to create SEI %p %d %d %p %d\n", v95, 46, v96, "AVE_FrameRecv", "CreateVideoFormatDesc", 354, "pSEI3D != __null", v145, *(v143 + 1252), *(v143 + 1253), &v148, MVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults);
                  v95 = sub_175AE4();
                  v96 = sub_160F68(4);
                  v97 = *(v143 + 1252);
                  v131 = *(v143 + 1253);
                  a5 = v147;
                }

                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create SEI %p %d %d %p %d", v95, 46, v96, "AVE_FrameRecv", "CreateVideoFormatDesc");
              }

LABEL_116:
              v21 = 4294966293;
              goto LABEL_17;
            }

            v21 = sub_16B828(0, a3, v147, v20, v150[0], 0, 0, (v38 + 57388), &v149);
            v81 = v149;
            if (v149)
            {
              if (*v143 < 2u)
              {
                a2 = v145;
                a5 = v147;
              }

              else
              {
                a5 = v147;
                v21 = sub_16C9A8(1, a3, v147, (v38 + 57388), v149);
                v81 = v149;
                a2 = v145;
                if (!v149)
                {
                  if (sub_160EF0(0x2Eu, 4))
                  {
                    v82 = sub_160F34(0x2Eu);
                    v83 = sub_175AE4();
                    v84 = sub_160F68(4);
                    if (v82)
                    {
                      a5 = v147;
                      printf("%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d\n", v83, 46, v84, "AVE_FrameRecv", "CreateVideoFormatDesc", 373, "pCFDict != __null", a3, v147, (v38 + 57388), v149, v21);
                      v85 = sub_175AE4();
                      v122 = sub_160F68(4);
                      a2 = v145;
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d", v85, 46, v122, "AVE_FrameRecv", "CreateVideoFormatDesc", 373);
                    }

                    else
                    {
                      a5 = v147;
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d", v83, 46, v84, "AVE_FrameRecv", "CreateVideoFormatDesc", 373);
                    }
                  }

                  goto LABEL_17;
                }
              }

              if (*(v38 + 64508))
              {
                CFDictionarySetValue(v81, kCMFormatDescriptionExtension_FullRangeVideo, kCFBooleanTrue);
              }

              if ((v39 & 0x800) != 0)
              {
                v21 = sub_1606EC(a2, (v38 + 40676), *(v143 + 216), v149);
                if (v21)
                {
                  if (!sub_160EF0(0x2Eu, 4))
                  {
                    goto LABEL_17;
                  }

                  v91 = sub_160F34(0x2Eu);
                  v92 = sub_175AE4();
                  v93 = sub_160F68(4);
                  if (v91)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %s | failed to create crypto SINF %p %p %d %p %d\n", v92, 46, v93, "AVE_FrameRecv", "CreateVideoFormatDesc", 392, "ret == 0", a2, (v38 + 40676), *(v143 + 216), v149, v21);
                    v92 = sub_175AE4();
                    v93 = sub_160F68(4);
                    v130 = *(v143 + 216);
                    a2 = v145;
                  }

                  else
                  {
                    v132 = *(v143 + 216);
                  }

                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create crypto SINF %p %p %d %p %d", v92, 46, v93, "AVE_FrameRecv", "CreateVideoFormatDesc", 392);
                  goto LABEL_139;
                }

                v90 = 1902671459;
              }

              else
              {
                v90 = 1752589105;
              }

              v144 = v90;
              v98 = *v141;
              v99 = *(v38 + 57840);
              if (v99 > 3)
              {
                v101 = 0;
              }

              else
              {
                v100 = (&unk_1A2B74 + 8 * v99);
                v102 = *v100;
                v101 = v100[1];
                v98 -= v102 * *(v38 + 57872);
              }

              v103 = v141[1] - *(v38 + 57880) * v101;
              if (sub_160EF0(0x2Eu, 8))
              {
                v104 = sub_160F34(0x2Eu);
                v140 = sub_175AE4();
                v105 = sub_160F68(8);
                v106 = *(v38 + 57872);
                if (v104)
                {
                  printf("%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d\n", v140, 46, v105, "AVE_FrameRecv", "CreateVideoFormatDesc", 403, *v141, v141[1], v98, v103, *(v38 + 57872), *(v38 + 57880));
                  v107 = sub_175AE4();
                  v108 = sub_160F68(8);
                  v135 = *(v38 + 57872);
                  v139 = *(v38 + 57880);
                  v126 = *v141;
                  v129 = v141[1];
                  v38 = v142;
                  syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v107, 46, v108);
                }

                else
                {
                  v136 = *(v38 + 57872);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v140, 46, v105);
                }
              }

              v109 = (v38 + 29360);
              if (*v36 == 2)
              {
                v110 = VTTileEncoderSessionCreateVideoFormatDescription();
              }

              else
              {
                v110 = VTEncoderSessionCreateVideoFormatDescription();
              }

              v111 = v110;
              if (v110)
              {
                if (sub_160EF0(0x2Eu, 4))
                {
                  v112 = sub_160F34(0x2Eu);
                  v113 = sub_175AE4();
                  v114 = sub_160F68(4);
                  v115 = *v36;
                  if (v112)
                  {
                    v137 = v98;
                    a2 = v145;
                    printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d\n", v113, 46, v114, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", v115, v145, v144, v137, v103, v149, v109, v111);
                    v116 = sub_175AE4();
                    v117 = sub_160F68(4);
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d", v116, 46, v117, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", *v36);
                  }

                  else
                  {
                    a2 = v145;
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d", v113, 46, v114, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", v115);
                  }

                  goto LABEL_110;
                }

                v21 = 4294966296;
              }
            }

            else if (sub_160EF0(0x2Eu, 4))
            {
              v86 = sub_160F34(0x2Eu);
              v87 = sub_175AE4();
              v88 = sub_160F68(4);
              if (v86)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d\n", v87, 46, v88, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v147, v20, v150[0], 0, 0, (v38 + 57388), &v149, v21);
                v89 = sub_175AE4();
                a5 = v147;
                v123 = sub_160F68(4);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d", v89, 46, v123, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v147, v20);
              }

              else
              {
                a5 = v147;
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d", v87, 46, v88, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v147, v20);
              }

              a2 = v145;
              goto LABEL_17;
            }

            a2 = v145;
            goto LABEL_139;
          }

          free(v20);
        }

        v20 = 0;
        goto LABEL_84;
      }

      if (sub_160EF0(0x2Eu, 4))
      {
        v52 = sub_160F34(0x2Eu);
        v53 = sub_175AE4();
        v54 = sub_160F68(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | encode type %d not recognized.\n", v53, 46, v54, "AVE_FrameRecv", "CreateVideoFormatDesc", 437, "false", *(a1 + 39468));
          v53 = sub_175AE4();
          sub_160F68(4);
          v55 = *(a1 + 39468);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | encode type %d not recognized.", v53, 46);
      }

      v20 = 0;
      v21 = 4294966281;
    }
  }

  else
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v17 = sub_160F34(0x2Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p\n", v18, 46, v19, "AVE_FrameRecv", "CreateVideoFormatDesc", 241, "(psInfo != __null) && (psInfo->iNum != 0)", a5);
        v18 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p", v18, 46);
    }

    v20 = 0;
    v21 = 4294966295;
  }

LABEL_17:
  if (v149)
  {
    CFRelease(v149);
    v149 = 0;
  }

  if (v20)
  {
    free(v20);
  }

  if (v148)
  {
    CFRelease(v148);
    v148 = 0;
  }

  if (sub_160EF0(0x2Eu, 7))
  {
    v22 = sub_160F34(0x2Eu);
    v23 = sub_175AE4();
    v24 = sub_160F68(7);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %p %p %p %d\n", v23, 46, v24, "AVE_FrameRecv", "CreateVideoFormatDesc", a2, a3, a4, a5, v21);
      v25 = sub_175AE4();
      v119 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %p %p %p %d", v25, 46, v119, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %p %p %p %d", v23, 46, v24, "AVE_FrameRecv");
    }
  }

  return v21;
}

uint64_t sub_117768(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v4 = *(a2 + 3180);
    if (v4 >= 0x1E)
    {
      v13 = 3758097084;
      if (sub_160EF0(0x2Eu, 4))
      {
        v17 = sub_160F34(0x2Eu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v18, 46, v19, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 476, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          v18 = sub_175AE4();
          v19 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v18, 46, v19, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 476, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      v6 = *(a1 + 8 * v4 + 27072);
      if (v6)
      {
        if (sub_160EF0(0x2Eu, 7))
        {
          v8 = sub_160F34(0x2Eu);
          v9 = sub_175AE4();
          v10 = sub_160F68(7);
          v11 = *(a2 + 3180);
          if (v8)
          {
            printf("%lld %d AVE %s: %s::%s:%d DoneWithThis PlaneNumber %d size %d\n", v9, 46, v10, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 483, *(a2 + 3180), *(v6 + 288));
            v9 = sub_175AE4();
            sub_160F68(7);
            v12 = *(a2 + 3180);
            v28 = *(v6 + 288);
          }

          else
          {
            v27 = *(a2 + 3180);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d DoneWithThis PlaneNumber %d size %d", v9);
        }

        sub_CE3A0(*(a1 + 40704), *(a2 + 20), *(a2 + 40), (v6 + 45320));
        sub_CE6DC(*(a1 + 40704), *(a2 + 20), *(a2 + 40), (a2 + 72664));
        v24 = sub_CBC74(*(a1 + 40704), 7u, *(a2 + 20));
        sub_156920((v6 + 42608), v24, *(a2 + 40));
        v25 = sub_CBC74(*(a1 + 40704), 6u, *(a2 + 20));
        sub_15600C((v6 + 4720), (a2 + 33012), v25, *(a2 + 40), a3);
        sub_CE05C(*(a1 + 40704), *(a2 + 20), (v6 + 42760));
        bzero(v6, 0xBAA8uLL);
      }

      else if (sub_160EF0(3u, 4))
      {
        v13 = sub_160F34(3u);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (!v13)
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL");
          return v13;
        }

        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v20, 3, v21, "DoneWithThisFrameFromTheHW", 480, "codedHeader != __null");
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v22, 3, v23, "DoneWithThisFrameFromTheHW", 480, "codedHeader != __null");
      }

      return 0;
    }
  }

  else
  {
    v13 = 3758097084;
    if (sub_160EF0(3u, 4))
    {
      v14 = sub_160F34(3u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: DoneWithThisFrameFromTheHW Frame == NULL\n", v15, 3, v16, "DoneWithThisFrameFromTheHW", 473, "Frame != __null");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: DoneWithThisFrameFromTheHW Frame == NULL");
    }
  }

  return v13;
}

uint64_t sub_117BCC(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  if (sub_160EF0(0x2Eu, 7))
  {
    v6 = sub_160F34(0x2Eu);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %d %d\n", v7, 46, v8, "AVE_FrameRecv", "CollectSlicesInfo", a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %d %d", v7);
  }

  if (a2 >= 0x1E)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v19 = sub_160F34(0x2Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong plane number %d\n", v20, 46, v21, "AVE_FrameRecv", "CollectSlicesInfo", 521, "0 <= iPlaneNumber && iPlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", a1, a2);
        v20 = sub_175AE4();
        v51 = sub_160F68(4);
      }

      else
      {
        v51 = v21;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong plane number %d", v20, 46, v51);
    }

    goto LABEL_46;
  }

  if (a3 >= 2)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v22 = sub_160F34(0x2Eu);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong layer ID %d\n", v23, 46, v24, "AVE_FrameRecv", "CollectSlicesInfo", 524, "0 <= iLayerID && iLayerID < ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1, a3);
        v23 = sub_175AE4();
        v52 = sub_160F68(4);
      }

      else
      {
        v52 = v24;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong layer ID %d", v23, 46, v52);
    }

    goto LABEL_46;
  }

  v9 = *&a1[2 * a2 + 6768];
  if (!v9)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v25 = sub_160F34(0x2Eu);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d\n", v26, 46, v27, "AVE_FrameRecv", "CollectSlicesInfo", 528, "codedHeader != __null", a1, a2);
        v28 = sub_175AE4();
        v53 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d", v28, 46, v53);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d", v26, 46, v27);
      }
    }

    goto LABEL_46;
  }

  v10 = a1 + 7008;
  v11 = v9 + 12 * a3;
  v12 = &a1[3 * a3];
  v13 = *(v11 + 144);
  v14 = v12 + 7271;
  v12[7273] = *(v11 + 152);
  *(v12 + 7271) = v13;
  if (sub_160EF0(0x2Eu, 7))
  {
    v15 = sub_160F34(0x2Eu);
    v16 = sub_175AE4();
    v17 = sub_160F68(7);
    v18 = *(v14 + 7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d Filler[%d] %d %d\n", v16, 46, v17, "AVE_FrameRecv", "CollectSlicesInfo", 531, a3, *(v14 + 7), v14[2]);
      v16 = sub_175AE4();
      sub_160F68(7);
      v55 = *(v14 + 7);
      v57 = v14[2];
    }

    else
    {
      v56 = *(v14 + 7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d Filler[%d] %d %d", v16, 46);
  }

  a1[7270] = 3 * *(v9 + 140);
  memcpy(a1 + 7008, (v9 + 280), 0x204uLL);
  if (sub_160EF0(0x2Eu, 7))
  {
    v29 = sub_160F34(0x2Eu);
    v30 = sub_175AE4();
    v31 = sub_160F68(7);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s:%d slice number %d\n", v30, 46, v31, "AVE_FrameRecv", "CollectSlicesInfo", 539, *v10);
      v30 = sub_175AE4();
      sub_160F68(7);
      v32 = *v10;
    }

    else
    {
      v54 = *v10;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d slice number %d", v30);
  }

  if (*v10 > 0x20)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v43 = sub_160F34(0x2Eu);
      v44 = sub_175AE4();
      v45 = sub_160F68(4);
      if (v43)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong slices %d\n", v44, 46, v45, "AVE_FrameRecv", "CollectSlicesInfo", 542, "0 <= m_sSliceInfo.iNum && m_sSliceInfo.iNum <= ((32) < (256) ? (32) : (256))", a1, *v10);
        v44 = sub_175AE4();
        v45 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong slices %d", v44, 46, v45, "AVE_FrameRecv", "CollectSlicesInfo", 542, "0 <= m_sSliceInfo.iNum && m_sSliceInfo.iNum <= ((32) < (256) ? (32) : (256))", a1, *v10);
    }

LABEL_46:
    v42 = 4294966295;
    goto LABEL_47;
  }

  if (*v10)
  {
    v33 = 0;
    v34 = a1 + 7012;
    do
    {
      if (sub_160EF0(0x2Eu, 7))
      {
        v35 = sub_160F34(0x2Eu);
        v36 = sub_175AE4();
        v37 = sub_160F68(7);
        v38 = *(v34 - 3);
        v39 = *(v34 - 2);
        v40 = *(v34 - 1);
        v41 = *v34;
        if (v35)
        {
          printf("%lld %d AVE %s: %s::%s:%d slice %2d offset %8d size %8d header offset %8d size %8d\n", v36, 46, v37, "AVE_FrameRecv", "CollectSlicesInfo", 548, v33, v38, v39, *(v34 - 1), v41);
          v36 = sub_175AE4();
          v37 = sub_160F68(7);
          v38 = *(v34 - 3);
          v39 = *(v34 - 2);
          v40 = *(v34 - 1);
          v41 = *v34;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d slice %2d offset %8d size %8d header offset %8d size %8d", v36, 46, v37, "AVE_FrameRecv", "CollectSlicesInfo", 548, v33, v38, v39, v40, v41);
      }

      ++v33;
      v34 += 4;
    }

    while (v33 < *v10);
    v42 = 0;
  }

  else
  {
    v42 = 0;
  }

LABEL_47:
  if (sub_160EF0(0x2Eu, 7))
  {
    v46 = sub_160F34(0x2Eu);
    v47 = sub_175AE4();
    v48 = sub_160F68(7);
    if (v46)
    {
      printf("%lld %d AVE %s: %s::%s Exit %d %d %d\n", v47, 46, v48, "AVE_FrameRecv", "CollectSlicesInfo", a2, a3, v42);
      v49 = sub_175AE4();
      sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %d %d %d", v49);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %d %d %d", v47);
    }
  }

  return v42;
}

uint64_t sub_11846C(void **a1, unsigned int *a2, char *a3, int a4, int a5, int a6)
{
  v32 = a1 + 17227;
  if (sub_160EF0(0x2Eu, 7))
  {
    v12 = sub_160F34(0x2Eu);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d %d %d\n", v13, 46, v14, "AVE_FrameRecv", "AddAllSEIs", a1, *v32, a2, a3, a4, a5, a6);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      v15 = *v32;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d %d %d", v13, 46, v14, "AVE_FrameRecv", "AddAllSEIs");
  }

  if (a2 && a3)
  {
    if (a2[795] >= 0x1E)
    {
      v16 = 3758097084;
      if (sub_160EF0(0x2Eu, 4))
      {
        v21 = sub_160F34(0x2Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v22, 46, v23, "AVE_FrameRecv", "AddAllSEIs", 579, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", a2[795]);
          v22 = sub_175AE4();
          sub_160F68(4);
          v31 = a2[795];
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v22, 46);
      }
    }

    else
    {
      *(v32 + 2) = 0;
      if (!a6 || (v16 = 0, (a5 & 1) == 0))
      {
        v33 = 0;
        sub_11891C(a1, &v33, a2);
        v17 = sub_17AF8(a1[17962], a2[10], v33, a3, a4, v32 + 2);
        v16 = sub_175994(v17);
      }
    }
  }

  else
  {
    v16 = 3758097084;
    if (sub_160EF0(3u, 4))
    {
      v18 = sub_160F34(3u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | H264FrameRec ERROR\n", v19, 3, v20, "AVE_FrameRecv", "AddAllSEIs", 575, "pFrame != __null && pBuf != __null");
        v19 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | H264FrameRec ERROR", v19);
    }
  }

  if (sub_160EF0(0x2Eu, 7))
  {
    v24 = sub_160F34(0x2Eu);
    v25 = sub_175AE4();
    v26 = sub_160F68(7);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d %d %d\n", v25, 46, v26, "AVE_FrameRecv", "AddAllSEIs", a1, *v32, a2, a3, a4, a5, a6, v16);
      v27 = sub_175AE4();
      v28 = sub_160F68(7);
      v30 = *v32;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d %d %d", v27, 46, v28, "AVE_FrameRecv", "AddAllSEIs");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d %d %d", v25, 46, v26, "AVE_FrameRecv", "AddAllSEIs");
    }
  }

  return v16;
}

uint64_t sub_11891C(void *a1, uint64_t *a2, _DWORD *a3)
{
  v6 = a1 + 39468;
  if (sub_160EF0(0xD3u, 7))
  {
    v7 = sub_160F34(0xD3u);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", v8, 211, v9, "AVE_FrameRecv", "DecideSEIBits", a1, a1[17227], a2, a3);
      v8 = sub_175AE4();
      v9 = sub_160F68(7);
      v10 = a1[17227];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", v8, 211, v9);
  }

  v11 = a3[614];
  if (v11)
  {
    v12 = v11 == 3;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || !a3[10])
  {
    if (a3[10])
    {
      v13 = 0x6B00000381;
    }

    else
    {
      v13 = 0x3FF000003E1;
    }

    v14 = 2;
    if (!a3[10])
    {
      v14 = 6;
    }
  }

  else
  {
    v13 = 0x6300000381;
    v14 = 2;
  }

  if (v6[156] == 1 && *v6 == 2)
  {
    v15 = v13 | v14;
    if (v11 == 3 || a3[7432] == 21)
    {
      v13 = v15 | 0x18;
    }

    else
    {
      v13 = v15 | 8;
    }
  }

  *a2 = v13;
  if (sub_160EF0(0xD3u, 7))
  {
    v16 = sub_160F34(0xD3u);
    v17 = sub_175AE4();
    v18 = sub_160F68(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p 0x%llx %d\n", v17, 211, v18, "AVE_FrameRecv", "DecideSEIBits", a1, a1[17227], a2, a3, v13, 0);
      v17 = sub_175AE4();
      v18 = sub_160F68(7);
      v19 = a1[17227];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p 0x%llx %d", v17, 211, v18, "AVE_FrameRecv", "DecideSEIBits");
  }

  return 0;
}

uint64_t sub_118BC0(void *a1, unsigned int *a2, int a3, char *a4)
{
  if (sub_160EF0(0x2Eu, 7))
  {
    v8 = sub_160F34(0x2Eu);
    v9 = sub_175AE4();
    v10 = sub_160F68(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %d %p\n", v9, 46, v10, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", a1, a1[17227], a2, a3, a4);
      v9 = sub_175AE4();
      v10 = sub_160F68(7);
      v11 = a1[17227];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %d %p", v9, 46, v10, "AVE_FrameRecv");
  }

  if (!a2 || a3 < 1 || !a4)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v20 = sub_160F34(0x2Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %d %p\n", v21, 46, v22, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 709, "(psEncFrameInfo != __null) && (iSize > 0) && (piFinalBuf != __null)", a1, a1[17227], a2, a3, a4);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
      }

      v36 = a1[17227];
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %d %p", v21, 46, v22, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 709);
    }

    goto LABEL_34;
  }

  v12 = *a2;
  if (v12 < 1)
  {
    v13 = 0;
    goto LABEL_23;
  }

  v13 = 0;
  v14 = 6;
  do
  {
    v13 += a2[v14];
    v14 += 8;
    --v12;
  }

  while (v12);
  if (v13 != a3)
  {
LABEL_23:
    if (sub_160EF0(0x2Eu, 4))
    {
      v23 = sub_160F34(0x2Eu);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong total size %p %lld %p %d %p %d\n", v24, 46, v25, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 717, "size == iSize", a1, a1[17227], a2, a3, a4, v13);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
      }

      v37 = a1[17227];
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong total size %p %lld %p %d %p %d", v24, 46, v25, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 717, "size == iSize");
    }

    goto LABEL_34;
  }

  v15 = 0;
  v16 = a2 + 4;
  v17 = a4;
  while (*v16)
  {
    v18 = v16[2];
    if (v18 <= 0)
    {
      break;
    }

    memcpy(v17, *v16, v18);
    *(v16 + 2) = v17;
    v17 += v16[2];
    ++v15;
    v16 += 8;
    if (v15 >= *a2)
    {
      v19 = 0;
      goto LABEL_35;
    }
  }

  if (sub_160EF0(0x2Eu, 4))
  {
    v26 = sub_160F34(0x2Eu);
    v27 = sub_175AE4();
    v28 = sub_160F68(4);
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p %d\n", v27, 46, v28, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 727, "(psEncFrameInfo->saEntry[i].sBuf.pBuf != __null) && (psEncFrameInfo->saEntry[i].sBuf.iSize > 0)", a1, a1[17227], a2, v16, v16[2]);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
    }

    v39 = v16[2];
    v38 = a1[17227];
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p %d", v27, 46, v28, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 727);
  }

LABEL_34:
  v19 = 4294966295;
LABEL_35:
  if (sub_160EF0(0x2Eu, 7))
  {
    v29 = sub_160F34(0x2Eu);
    v30 = sub_175AE4();
    v31 = sub_160F68(7);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d %p %d\n", v30, 46, v31, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", a1, a1[17227], a2, a3, a4, v19);
      v32 = sub_175AE4();
      v33 = sub_160F68(7);
      v35 = a1[17227];
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d %p %d", v32, 46, v33, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d %p %d", v30, 46, v31, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer");
    }
  }

  return v19;
}

uint64_t sub_1191C0(uint64_t a1, uint64_t a2)
{
  if (sub_160EF0(0x2Eu, 7))
  {
    v4 = sub_160F34(0x2Eu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p\n", v5, 46, v6, "AVE_FrameRecv", "SendPS", a2);
      v7 = sub_175AE4();
      v82 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v7, 46, v82, "AVE_FrameRecv", "SendPS", a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v5, 46, v6, "AVE_FrameRecv", "SendPS", a2);
    }
  }

  if (!*(a1 + 29352))
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v22 = sub_160F34(0x2Eu);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | nobody wants this SPS PPS header. dump it\n", v23, 46, v24, "AVE_FrameRecv", "SendPS", 757, "m_pSession != __null");
        v23 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | nobody wants this SPS PPS header. dump it", v23);
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v25 = sub_160F34(0x2Eu);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter psFrameInfo == NULL\n", v26, 46, v27, "AVE_FrameRecv", "SendPS", 760, "psFrameInfo != __null");
        v26 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter psFrameInfo == NULL", v26);
    }

    goto LABEL_33;
  }

  v8 = *(a2 + 3180);
  if (v8 >= 0x1E)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v28 = sub_160F34(0x2Eu);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v29, 46, v30, "AVE_FrameRecv", "SendPS", 764, "0 <= psFrameInfo->PlaneNumber && psFrameInfo->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
        v29 = sub_175AE4();
        sub_160F68(4);
      }

      v87 = *(a2 + 3180);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v29, 46);
    }

LABEL_33:
    v34 = 4294966295;
    goto LABEL_34;
  }

  v9 = a1 + 143664;
  v10 = *(a1 + 8 * v8 + 27072);
  if (v10)
  {
    v11 = v10 + 45056;
    v12 = (v10 + 45392);
    v13 = *(v10 + 45392);
    if (v13 > 0)
    {
      v14 = v10 + 16 * (v13 - 1) + 45396;
      v15 = *(v14 + 8);
      LODWORD(v14) = *(v14 + 12);
      v16 = __OFADD__(v14, v15);
      LODWORD(v14) = v14 + v15;
      *(a1 + 143680) = v14;
      if ((v14 < 0) ^ v16 | (v14 == 0))
      {
        if (sub_160EF0(0x2Eu, 4))
        {
          v42 = sub_160F34(0x2Eu);
          v43 = sub_175AE4();
          v44 = sub_160F68(4);
          if (v42)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong PS size %d\n", v43, 46, v44, "AVE_FrameRecv", "SendPS", 777, "m_iPSSize > 0", *(a1 + 143680));
            v43 = sub_175AE4();
            sub_160F68(4);
            v45 = *(a1 + 143680);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong PS size %d", v43, 46);
        }

        v34 = 4294966281;
        goto LABEL_60;
      }

      v96 = v10;
      v97 = (v10 + 45392);
      if (sub_160EF0(0x2Eu, 7))
      {
        v17 = sub_160F34(0x2Eu);
        v18 = sub_175AE4();
        v19 = sub_160F68(7);
        v20 = *v12;
        if (v17)
        {
          printf("%lld %d AVE %s: %s::%s:%d codec %d PSInfo num %d size %d\n", v18, 46, v19, "AVE_FrameRecv", "SendPS", 780, *(a1 + 39468), *v12, *(a1 + 143680));
          v18 = sub_175AE4();
          sub_160F68(7);
          v21 = *(a1 + 39468);
          v86 = *v12;
          v92 = *(a1 + 143680);
        }

        else
        {
          v88 = *v12;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d codec %d PSInfo num %d size %d", v18, 46);
      }

      v46 = *(a2 + 2552);
      v47 = sub_11A0D0(a1, *(a1 + 143680), (a1 + 143672));
      *v9 = v47;
      if (!v47)
      {
        if (sub_160EF0(0x2Eu, 4))
        {
          v53 = sub_160F34(0x2Eu);
          v54 = sub_175AE4();
          v55 = sub_160F68(4);
          if (v53)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to create buffer. %d %p %p\n", v54, 46, v55, "AVE_FrameRecv", "SendPS", 785, "m_piPSOutput != __null", *(a1 + 143680), (a1 + 143672), *(a1 + 143672));
            v54 = sub_175AE4();
            v55 = sub_160F68(4);
            v56 = *(a1 + 143672);
            v90 = *(a1 + 143680);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create buffer. %d %p %p", v54, 46, v55, "AVE_FrameRecv");
        }

        v34 = 4294966293;
        goto LABEL_60;
      }

      if (sub_160EF0(0x2Eu, 7))
      {
        v48 = sub_160F34(0x2Eu);
        v49 = sub_175AE4();
        v50 = sub_160F68(7);
        v51 = *(a1 + 143680);
        if (v48)
        {
          printf("%lld %d AVE %s: %s::%s:%d create buffer %p %d %p\n", v49, 46, v50, "AVE_FrameRecv", "SendPS", 788, *v9, *(a1 + 143680), *(a1 + 143672));
          v49 = sub_175AE4();
          v50 = sub_160F68(7);
          v52 = *v9;
          v89 = *(a1 + 143680);
          v93 = *(a1 + 143672);
        }

        else
        {
          v91 = *(a1 + 143680);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d create buffer %p %d %p", v49, 46, v50);
      }

      v95 = (a1 + 143664);
      if (*v12 >= 1)
      {
        v58 = 0;
        v59 = (v11 + 352);
        do
        {
          if (sub_160EF0(0x2Eu, 8))
          {
            v60 = sub_160F34(0x2Eu);
            v61 = sub_175AE4();
            v62 = sub_160F68(8);
            v63 = *(v59 - 3);
            v64 = *(v59 - 2);
            v65 = *(v59 - 1);
            v66 = *v59;
            if (v60)
            {
              printf("%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d\n", v61, 46, v62, "AVE_FrameRecv", "SendPS", 793, v58, v63, v64, *(v59 - 1), v66);
              v61 = sub_175AE4();
              v62 = sub_160F68(8);
              v63 = *(v59 - 3);
              v64 = *(v59 - 2);
              v65 = *(v59 - 1);
              v66 = *v59;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d", v61, 46, v62, "AVE_FrameRecv", "SendPS", 793, v58, v63, v64, v65, v66);
            v12 = v97;
          }

          ++v58;
          v59 += 4;
        }

        while (v58 < *v12);
      }

      v9 = a1 + 143664;
      memcpy(*(a1 + 143664), (v96 + 45732), *(a1 + 143680));
      if (sub_160EF0(0x2Eu, 8))
      {
        v67 = sub_160F34(0x2Eu);
        v68 = sub_175AE4();
        v69 = sub_160F68(8);
        v70 = *(a1 + 39448);
        if (v67)
        {
          printf("%lld %d AVE %s: %s::%s:%d %d %p\n", v68, 46, v69, "AVE_FrameRecv", "SendPS", 800, *(a1 + 39448), *(a1 + 29352));
          v68 = sub_175AE4();
          sub_160F68(8);
          v71 = *(a1 + 29352);
          v83 = *(a1 + 39448);
          v12 = v97;
        }

        else
        {
          v84 = *(a1 + 39448);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %d %p", v68, 46);
      }

      v72 = *(a1 + 29352);
      if (v72 == &dword_0 + 1)
      {
        if (*(a1 + 29288) && *(a1 + 29280))
        {
          if (sub_160EF0(0x2Eu, 7))
          {
            v78 = sub_160F34(0x2Eu);
            v79 = sub_175AE4();
            v80 = sub_160F68(7);
            if (v78)
            {
              printf("%lld %d AVE %s: %s::%s:%d calling emitEncodedFrame on %d bytes (SPS PPS)\n", v79, 46, v80, "AVE_FrameRecv", "SendPS", 810, *(a1 + 143680));
              v79 = sub_175AE4();
              sub_160F68(7);
              v81 = *(a1 + 143680);
            }

            else
            {
              v85 = *(a1 + 143680);
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d calling emitEncodedFrame on %d bytes (SPS PPS)", v79);
          }

          (*(a1 + 29288))(*(a1 + 29280), *(a1 + 143664), *(a1 + 143680), 0, *(a1 + 39468));
        }

        *(a1 + 25784) = 1;
      }

      else
      {
        if (*(a1 + 39252) >= 2u)
        {
          sub_1700F4(a1 + 57388, a1 + 137776, 4);
          sub_170148(a1 + 57388, (a1 + 137780), 6);
          v72 = *(a1 + 29352);
        }

        v73 = sub_11602C(a1, v72, *v95, a2, v12);
        if (v73)
        {
          v34 = v73;
          if (sub_160EF0(0x2Eu, 4))
          {
            v74 = sub_160F34(0x2Eu);
            v75 = sub_175AE4();
            v76 = sub_160F68(4);
            if (v74)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %p %p %p %d\n", v75, 46, v76, "AVE_FrameRecv", "SendPS", 831, "ret == 0", *(a1 + 29352), *v95, a2, v34);
              v75 = sub_175AE4();
              v76 = sub_160F68(4);
              v77 = *(a1 + 29352);
              v94 = *v95;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %p %p %p %d", v75, 46, v76, "AVE_FrameRecv", "SendPS");
          }

          goto LABEL_60;
        }
      }

      sub_CD240(*(a1 + 40704), *(a2 + 20), *(a1 + 143664), *(a1 + 143680));
      v34 = 0;
      goto LABEL_34;
    }

    if (sub_160EF0(0x2Eu, 4))
    {
      v39 = sub_160F34(0x2Eu);
      v40 = sub_175AE4();
      v41 = sub_160F68(4);
      if (v39)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong PS number %p %d\n", v40, 46, v41, "AVE_FrameRecv", "SendPS", 772, "psPSInfo->iNum > 0", v12, *v12);
        v40 = sub_175AE4();
        v41 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong PS number %p %d", v40, 46, v41, "AVE_FrameRecv", "SendPS", 772, "psPSInfo->iNum > 0", v12, *v12);
    }
  }

  else if (sub_160EF0(0x2Eu, 4))
  {
    v31 = sub_160F34(0x2Eu);
    v32 = sub_175AE4();
    v33 = sub_160F68(4);
    if (v31)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | m_CodedBuffPointerDataHeader[%d] == NULL\n", v32, 46, v33, "AVE_FrameRecv", "SendPS", 768, "codedHeader != __null", *(a2 + 3180));
      v32 = sub_175AE4();
      v33 = sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | m_CodedBuffPointerDataHeader[%d] == NULL", v32, 46, v33, "AVE_FrameRecv", "SendPS", 768, "codedHeader != __null", *(a2 + 3180));
  }

  v34 = 4294966296;
LABEL_60:
  *(v9 + 16) = 0;
  if (*v9)
  {
    sub_11A5A0(a1, *v9);
    *v9 = 0;
  }

  v57 = *(v9 + 8);
  if (v57)
  {
    CFRelease(v57);
    *(v9 + 8) = 0;
  }

LABEL_34:
  if (sub_160EF0(0x2Eu, 7))
  {
    v35 = sub_160F34(0x2Eu);
    v36 = sub_175AE4();
    v37 = sub_160F68(7);
    if (v35)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %d\n", v36, 46, v37, "AVE_FrameRecv", "SendPS", a2, v34);
      v36 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %d", v36);
  }

  return v34;
}

char *sub_11A0D0(uint64_t a1, size_t a2, CMBlockBufferRef *a3)
{
  dataPointerOut = 0;
  if (sub_160EF0(0x2Eu, 7))
  {
    v6 = sub_160F34(0x2Eu);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %ld %p\n", v7, 46, v8, "AVE_FrameRecv", "CreateBuffer", a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %ld %p", v7);
  }

  if (!a2)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v13 = sub_160F34(0x2Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter size %p %ld\n", v14, 46, v15, "AVE_FrameRecv", "CreateBuffer", 1600, "size != 0", a1, 0);
        v16 = sub_175AE4();
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter size %p %ld", v16, 46, v28);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter size %p %ld", v14, 46, v15);
      }
    }

    goto LABEL_32;
  }

  if (!a3 || *a3)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v9 = sub_160F34(0x2Eu);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        if (a3)
        {
          v12 = *a3;
        }

        else
        {
          v12 = 0;
        }

        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p %p\n", v10, 46, v11, "AVE_FrameRecv", "CreateBuffer", 1603, "(bbuf != __null) && (*bbuf == __null)", a1, a3, v12);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        if (a3)
        {
          v22 = *a3;
        }
      }

      else if (a3)
      {
        v20 = *a3;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p %p", v10, 46, v11, "AVE_FrameRecv");
    }

LABEL_32:
    v21 = -1001;
    goto LABEL_33;
  }

  v17 = *(a1 + 137804);
  if (*(a1 + 29352) == 1)
  {
    if (v17 != 2)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (v17 == 2)
  {
LABEL_24:
    if (*(a1 + 29304))
    {
      VTMotionEstimationProcessorSessionCreateMotionVectorPixelBufferWithOptions();
      goto LABEL_39;
    }

LABEL_26:
    Typed = malloc_type_malloc(a2, 0x100004077774924uLL);
    goto LABEL_27;
  }

  if (*(a1 + 39448) == 2)
  {
    v18 = *(a1 + 29312);
    Typed = CFAllocatorAllocateTyped();
LABEL_27:
    v21 = 0;
    dataPointerOut = Typed;
    goto LABEL_33;
  }

  VTEncoderSessionCreateCMBlockBuffer();
  CMBlockBufferGetDataPointer(*a3, 0, 0, 0, &dataPointerOut);
LABEL_39:
  v21 = 0;
LABEL_33:
  if (sub_160EF0(0x2Eu, 7))
  {
    v23 = sub_160F34(0x2Eu);
    v24 = sub_175AE4();
    v25 = sub_160F68(7);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s Exit %ld %p %p %d\n", v24, 46, v25, "AVE_FrameRecv", "CreateBuffer", a2, a3, dataPointerOut, v21);
      v26 = sub_175AE4();
      v29 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %ld %p %p %d", v26, 46, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %ld %p %p %d", v24, 46, v25);
    }
  }

  return dataPointerOut;
}

void sub_11A5A0(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (sub_160EF0(0x2Eu, 7))
    {
      v4 = sub_160F34(0x2Eu);
      v5 = sub_175AE4();
      v6 = sub_160F68(7);
      if (v4)
      {
        printf("%lld %d AVE %s: H264FrameRec: DeleteBuffer %p\n", v5, 46, v6, a2);
        v7 = sub_175AE4();
        v15 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec: DeleteBuffer %p", v7, 46, v15, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec: DeleteBuffer %p", v5, 46, v6, a2);
      }
    }

    v12 = *(a1 + 137804);
    if (*(a1 + 29352) != 1)
    {
      if (v12 != 2)
      {
        if (*(a1 + 39448) == 2)
        {
          v13 = *(a1 + 29312);

          CFAllocatorDeallocate(v13, a2);
        }

        return;
      }

      goto LABEL_16;
    }

    if (v12 == 2)
    {
LABEL_16:
      if (!CVPixelBufferUnlockBaseAddress(a2, 0))
      {
        CVPixelBufferRelease(a2);
        v14 = *(a1 + 29304);

        _VTMotionEstimationProcessorSessionCleanUpAfterProcessing(v14);
      }

      return;
    }

    free(a2);
  }

  else if (sub_160EF0(0x2Eu, 4))
  {
    v8 = sub_160F34(0x2Eu);
    v9 = sub_175AE4();
    v10 = sub_160F68(4);
    if (v8)
    {
      printf("%lld %d AVE %s: H264FrameRec ERROR: Trying to free a buffer that is NULL.\n", v9, 46, v10);
      v11 = sub_175AE4();
      v16 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: Trying to free a buffer that is NULL.", v11, 46, v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: Trying to free a buffer that is NULL.", v9, 46, v10);
    }
  }
}

uint64_t sub_11A7B8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a1 + 39224);
  v5 = 3758097084;
  v256[0] = 0;
  if (*(a1 + 39224))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (!a2)
  {
    if (sub_160EF0(3u, 4))
    {
      v17 = sub_160F34(3u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with Frame == NULL.\n", v18, 3, v19, "ProcessAndEmitLrmeStats", 996, "false");
        sub_175AE4();
        LODWORD(v5) = -536870212;
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with Frame == NULL.");
    }

    goto LABEL_27;
  }

  if (*(a1 + 137804) != 2)
  {
    if (sub_160EF0(3u, 4))
    {
      v20 = sub_160F34(3u);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec WARNING: ProcessAndEmitLrmeStats called with AVE_ClientType_LRME == false.\n", v21, 3, v22, "ProcessAndEmitLrmeStats", 998, "false");
        sub_175AE4();
        LODWORD(v5) = -536870212;
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec WARNING: ProcessAndEmitLrmeStats called with AVE_ClientType_LRME == false.");
    }

LABEL_27:
    sub_117768(a1, v2, 0);
    v31 = 0;
    v29 = 0;
    goto LABEL_28;
  }

  if (*(a2 + 2456) != 3)
  {
    v23 = 26432;
    if (!*(a1 + 39227))
    {
      v23 = 26392;
    }

    v24 = *(a1 + v23 + 4 * *(a2 + 3180));
    if (!v24)
    {
      if (sub_160EF0(3u, 4))
      {
        v31 = sub_160F34(3u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (!v31)
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.", v37, 3, v38, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
          v29 = 0;
          goto LABEL_68;
        }

        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.\n", v37, 3, v38, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
        v39 = sub_175AE4();
        v40 = sub_160F68(4);
        LODWORD(v5) = -536870212;
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.", v39, 3, v40, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
      }

      v29 = 0;
LABEL_39:
      v31 = 0;
LABEL_68:
      sub_117768(a1, v2, 0);
      goto LABEL_28;
    }

    v25 = (a1 + 30136);
    v26 = *(a1 + 30136);
    v27 = *(a1 + 30140);
    v28 = IOSurfaceLookup(v24);
    if (v28)
    {
      v29 = v28;
      v30 = IOSurfaceLock(v28, 0, 0);
      if (v30)
      {
        v31 = v30;
        if (sub_160EF0(3u, 4))
        {
          v32 = sub_160F34(3u);
          v33 = sub_175AE4();
          v34 = sub_160F68(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: IOSurfaceLock statSurfaceRef failed.\n", v33, 3, v34, "ProcessAndEmitLrmeStats", 1011, "lockErr == 0");
            v35 = sub_175AE4();
            v229 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: IOSurfaceLock statSurfaceRef failed.", v35, 3, v229, "ProcessAndEmitLrmeStats", 1011, "lockErr == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: IOSurfaceLock statSurfaceRef failed.", v33, 3, v34, "ProcessAndEmitLrmeStats", 1011, "lockErr == 0");
          }
        }

        LODWORD(v5) = v31;
        goto LABEL_68;
      }

      v255 = v29;
      if (v4[3])
      {
        if (*(a1 + 137808) < 30)
        {
          v51 = v4[3];
          v52 = (IOSurfaceGetAllocSize(v29) >> 1) * ((v51 & 1) == 0);
        }

        else if (v4[3])
        {
          v52 = ((2 * (*v25 << v6) + 254) & 0xFFFFFF00) * (((*(a1 + 30140) << v6) + 127) >> 7);
        }

        else
        {
          v52 = 0;
        }
      }

      else
      {
        v52 = 0;
      }

      BaseAddress = IOSurfaceGetBaseAddress(v255);
      if (BaseAddress)
      {
        v251 = v2;
        v54 = v26 << v6;
        v55 = v27 << v6;
        v244 = v54;
        v247 = v54 + 15;
        v56 = (v54 + 15) >> 4;
        v249 = v55 + 15;
        v57 = (v55 + 15) >> 4;
        v254 = BaseAddress + v52;
        AllocSize = IOSurfaceGetAllocSize(v255);
        v59 = *(a1 + 137808);
        if (v59 <= 8)
        {
          v10 = 0;
          v7 = 0;
          v60 = *(v4 + 309);
          if (v60 > 1)
          {
            if (v60 != 2)
            {
              v2 = v251;
              if (v60 == 3)
              {
                v5 = 3758097084;
                if (sub_160EF0(0x2Eu, 5))
                {
                  v94 = sub_160F34(0x2Eu);
                  v95 = sub_175AE4();
                  v96 = sub_160F68(5);
                  if (v94)
                  {
                    printf("%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported yet \n\n", v95, 46, v96);
                    sub_175AE4();
                    sub_160F68(5);
                    v5 = 3758097084;
                  }

                  syslog(3, "%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported yet \n");
                }
              }

              else
              {
                v5 = 3758097084;
                if (v60 != 4)
                {
                  v8 = 0;
                  v9 = 0;
                  goto LABEL_8;
                }

                if (sub_160EF0(0x2Eu, 5))
                {
                  v61 = sub_160F34(0x2Eu);
                  v62 = sub_175AE4();
                  v63 = sub_160F68(5);
                  if (v61)
                  {
                    printf("%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported yet \n\n", v62, 46, v63);
                    sub_175AE4();
                    sub_160F68(5);
                    v5 = 3758097084;
                  }

                  syslog(3, "%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported yet \n");
                }
              }

              v7 = 0;
              v8 = 0;
              v9 = 0;
              v10 = 0;
              goto LABEL_8;
            }

            v2 = v251;
            if (sub_160EF0(0xDu, 4))
            {
              v91 = sub_160F34(0xDu);
              v92 = sub_175AE4();
              v93 = sub_160F68(4);
              v29 = v255;
              if (v91)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_STATISTICS_ONLY is not supported in video toolbox path\n", v92, 13, v93, "ProcessAndEmitLrmeStats", 1236, "bVTOF == false");
                sub_175AE4();
                sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_STATISTICS_ONLY is not supported in video toolbox path");
LABEL_216:
              LODWORD(v5) = 0;
              v31 = 4294954394;
              goto LABEL_68;
            }

LABEL_125:
            LODWORD(v5) = 0;
            v31 = 4294954394;
            goto LABEL_126;
          }

          if (v60)
          {
            if (v60 == 1)
            {
              v2 = v251;
              if (sub_160EF0(0xDu, 4))
              {
                v70 = sub_160F34(0xDu);
                v71 = sub_175AE4();
                v72 = sub_160F68(4);
                v29 = v255;
                if (v70)
                {
                  printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path\n", v71, 13, v72, "ProcessAndEmitLrmeStats", 1193, "bVTOF == false");
                  sub_175AE4();
                  sub_160F68(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path");
                goto LABEL_216;
              }

              goto LABEL_125;
            }

            goto LABEL_181;
          }

          v250 = AllocSize;
          v97 = *(v251 + 2552);
          v98 = sub_11A0D0(a1, 4 * v56 * v57, v256);
          v99 = CVPixelBufferGetBaseAddress(v98);
          v252 = v98;
          if (v99)
          {
            v7 = v99;
            v100 = v55 + 31;
            v253 = 4 * v56 * v57;
            bzero(v99, v253);
            BytesPerRow = CVPixelBufferGetBytesPerRow(v98);
            if (*v4)
            {
              v102 = 0;
            }

            else
            {
              v102 = 2;
            }

            if (v100 >= 0x20)
            {
              v103 = 0;
              v104 = 0;
              v105 = 0;
              v106 = v244 + 31;
              v107 = (v244 + 31) >> 5;
              v248 = BytesPerRow >> 3;
              v108 = (96 * v107 + 63) & 0xFFFFFFC0;
              v109 = v56 * v57 - 1;
              v110 = 2 * v107;
              v111 = 2 * (BytesPerRow >> 3);
              v112 = 8 * v107;
              v113 = 8 * (BytesPerRow >> 3);
              v114 = v111;
              v115 = 2 * v107;
              do
              {
                if (v106 >= 0x20)
                {
                  v116 = 0;
                  v117 = v105 * v108;
                  do
                  {
                    if (v104 + v116 <= v109)
                    {
                      v118 = (v254 + v117);
                      if (v116 < v56)
                      {
                        _S0 = (*v118 << 25 >> 25 << v102);
                        __asm { FCVT            H0, S0 }

                        v124 = &v7[4 * v103 + 4 * v116];
                        *v124 = LOWORD(_S0);
                        _S0 = (*v118 << 19 >> 26 << v102);
                        __asm { FCVT            H0, S0 }

                        *(v124 + 1) = LOWORD(_S0);
                      }

                      if (v116 + 1 < v56)
                      {
                        _S0 = (v118[9] << 25 >> 25 << v102);
                        __asm { FCVT            H0, S0 }

                        v127 = &v7[4 * v103 + 4 + 4 * v116];
                        *v127 = LOWORD(_S0);
                        _S0 = (v118[9] << 19 >> 26 << v102);
                        __asm { FCVT            H0, S0 }

                        *(v127 + 1) = LOWORD(_S0);
                      }

                      if (v115 + v116 <= v109 && ((4 * v105) | 1u) < v57)
                      {
                        if (v116 < v56)
                        {
                          _S0 = (v118[18] << 25 >> 25 << v102);
                          __asm { FCVT            H0, S0 }

                          v130 = &v7[4 * v114 + 4 * v116];
                          *v130 = LOWORD(_S0);
                          _S0 = (v118[18] << 19 >> 26 << v102);
                          __asm { FCVT            H0, S0 }

                          *(v130 + 1) = LOWORD(_S0);
                        }

                        if (v116 + 1 < v56)
                        {
                          _S0 = (v118[27] << 25 >> 25 << v102);
                          __asm { FCVT            H0, S0 }

                          v133 = &v7[4 * v114 + 4 + 4 * v116];
                          *v133 = LOWORD(_S0);
                          _S0 = (v118[27] << 19 >> 26 << v102);
                          __asm { FCVT            H0, S0 }

                          *(v133 + 1) = LOWORD(_S0);
                        }
                      }
                    }

                    v117 += 96;
                    v116 += 2;
                  }

                  while (v110 != v116);
                }

                ++v105;
                v115 += v112;
                v104 += v112;
                v114 += v113;
                v103 += v113;
              }

              while (v105 != ((v100 >> 5) + 1) >> 1);
              if (v100 >= 0x40)
              {
                v166 = 0;
                v167 = v100 >> 6;
                v9 = 4 * v56 * v57;
                v168 = 4 * v248;
                v169 = 6 * v107;
                v170 = 4 * v107;
                v171 = v111 + 4 * v248;
                v8 = v252;
                do
                {
                  if (v106 >= 0x20)
                  {
                    v172 = 0;
                    v173 = v166 * v108;
                    do
                    {
                      if (v170 + v172 <= v109)
                      {
                        v174 = (v254 + (v250 >> 1) + v173);
                        if (v172 < v56)
                        {
                          _S0 = (*v174 << 25 >> 25 << v102);
                          __asm { FCVT            H0, S0 }

                          v176 = &v7[4 * v168 + 4 * v172];
                          *v176 = LOWORD(_S0);
                          _S0 = (*v174 << 19 >> 26 << v102);
                          __asm { FCVT            H0, S0 }

                          *(v176 + 1) = LOWORD(_S0);
                        }

                        if (v172 + 1 < v56)
                        {
                          _S0 = (v174[9] << 25 >> 25 << v102);
                          __asm { FCVT            H0, S0 }

                          v179 = &v7[4 * v168 + 4 + 4 * v172];
                          *v179 = LOWORD(_S0);
                          _S0 = (v174[9] << 19 >> 26 << v102);
                          v8 = v252;
                          __asm { FCVT            H0, S0 }

                          *(v179 + 1) = LOWORD(_S0);
                        }

                        v9 = 4 * v56 * v57;
                        if (v169 + v172 <= v109 && ((4 * v166) | 3u) < v57)
                        {
                          if (v172 < v56)
                          {
                            _S0 = (v174[18] << 25 >> 25 << v102);
                            __asm { FCVT            H0, S0 }

                            v182 = &v7[4 * v171 + 4 * v172];
                            *v182 = LOWORD(_S0);
                            _S0 = (v174[18] << 19 >> 26 << v102);
                            v8 = v252;
                            __asm { FCVT            H0, S0 }

                            *(v182 + 1) = LOWORD(_S0);
                            v9 = 4 * v56 * v57;
                          }

                          if (v172 + 1 < v56)
                          {
                            _S0 = (v174[27] << 25 >> 25 << v102);
                            __asm { FCVT            H0, S0 }

                            v185 = &v7[4 * v171 + 4 + 4 * v172];
                            *v185 = LOWORD(_S0);
                            _S0 = (v174[27] << 19 >> 26 << v102);
                            __asm { FCVT            H0, S0 }

                            *(v185 + 1) = LOWORD(_S0);
                          }
                        }
                      }

                      v173 += 96;
                      v172 += 2;
                    }

                    while (v110 != v172);
                  }

                  ++v166;
                  v169 += v112;
                  v170 += v112;
                  v171 += v113;
                  v168 += v113;
                }

                while (v166 != v167);
                goto LABEL_243;
              }
            }

            goto LABEL_281;
          }

          if (sub_160EF0(3u, 4))
          {
            v162 = sub_160F34(3u);
            v163 = sub_175AE4();
            v164 = sub_160F68(4);
            v2 = v251;
            v8 = v98;
            if (v162)
            {
              printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: MvStatsBuffer = NULL.\n", v163, 3, v164, "ProcessAndEmitLrmeStats", 1077, "MvStatsBuffer != __null");
              v165 = sub_175AE4();
              v235 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: MvStatsBuffer = NULL.", v165, 3, v235, "ProcessAndEmitLrmeStats", 1077, "MvStatsBuffer != __null");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: MvStatsBuffer = NULL.", v163, 3, v164, "ProcessAndEmitLrmeStats", 1077, "MvStatsBuffer != __null");
            }

            v10 = 0;
          }

          else
          {
            v10 = 0;
            v2 = v251;
            v8 = v98;
          }

LABEL_278:
          v5 = 3758097084;
          goto LABEL_47;
        }

        if (v4[3])
        {
          if (*v4)
          {
            _H8 = COERCE_UNSIGNED_INT(4.0);
          }

          else
          {
            _H8 = COERCE_UNSIGNED_INT(1.0);
          }

          v245 = -64;
          v69 = 63;
          goto LABEL_100;
        }

        v73 = *(v4 + 309);
        if (v59 >= 0x1E && !v73)
        {
          if (*v4)
          {
            _H8 = COERCE_UNSIGNED_INT(1.0);
          }

          else
          {
            _H8 = COERCE_UNSIGNED_INT(0.25);
          }

          v245 = -128;
          v69 = 127;
LABEL_100:
          v243 = v69;
          v74 = *v25;
          v75 = v56 * v57;
          v76 = *(v251 + 2552);
          v77 = sub_11A0D0(a1, 4 * v56 * v57, v256);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v77, 0);
          if (BaseAddressOfPlane)
          {
            v79 = BaseAddressOfPlane;
            v241 = v74;
            bzero(BaseAddressOfPlane, (4 * v75));
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v77, 0);
            v5 = 3758097084;
            v252 = v77;
            v253 = (4 * v75);
            v242 = v56 * v57;
            if (v4[1240] != 1)
            {
              v82 = 0;
              LODWORD(v83) = 0;
              goto LABEL_152;
            }

            v239 = BytesPerRowOfPlane;
            if (CVPixelBufferGetPlaneCount(v77) != 2)
            {
              v82 = 0;
              LODWORD(v83) = 0;
              goto LABEL_151;
            }

            v81 = CVPixelBufferGetBaseAddressOfPlane(v77, 1uLL);
            if (v81)
            {
              v82 = v81;
              v83 = CVPixelBufferGetBytesPerRowOfPlane(v77, 1uLL) >> 1;
LABEL_151:
              BytesPerRowOfPlane = v239;
LABEL_152:
              v135 = BytesPerRowOfPlane >> 2;
              if (sub_160EF0(0xDu, 7))
              {
                v240 = sub_160F34(0xDu);
                v136 = sub_175AE4();
                v137 = sub_160F68(7);
                if (v240)
                {
                  printf("%lld %d AVE %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n\n", v136, 13, v137, v56, v57, v253, v135);
                  v238 = sub_175AE4();
                  sub_160F68(7);
                  syslog(3, "%lld %d AVE %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n", v238);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n", v136);
                }
              }

              if (v249 >= 0x10)
              {
                v139 = 0;
                v140 = 0;
                v138 = 0;
                __asm { FCVT            S0, H8 }

                do
                {
                  if (v247 >= 0x10)
                  {
                    v142 = 0;
                    v143 = (v254 + (((v241 << v6) + v243) & v245) * v140);
                    v144 = 4 * v140 * v83;
                    v145 = 4 * v140 * v135;
                    do
                    {
                      v146 = 4;
                      v147 = v139;
                      v148 = v144;
                      v149 = v145;
                      do
                      {
                        if (v147 < v57)
                        {
                          _S1 = ((*v143 << 21) >> 21) / _S0;
                          __asm { FCVT            H1, S1 }

                          v151 = &v79[4 * v149];
                          *v151 = LOWORD(_S1);
                          _S1 = ((*v143 << 11) >> 22) / _S0;
                          __asm { FCVT            H1, S1 }

                          *(v151 + 1) = LOWORD(_S1);
                          if (v82)
                          {
                            _D1 = (2048.0 - (*v143 >> 21)) * 0.00048828125;
                            __asm { FCVT            H1, D1 }

                            v82[v148] = LOWORD(_D1);
                          }

                          if ((*v143 & 0x1FFFFF) != 0)
                          {
                            ++v138;
                          }
                        }

                        ++v143;
                        v149 += v135;
                        v148 += v83;
                        ++v147;
                        --v146;
                      }

                      while (v146);
                      ++v142;
                      ++v145;
                      ++v144;
                    }

                    while (v142 != v56);
                  }

                  ++v140;
                  v139 += 4;
                }

                while (v140 != (v57 + 3) >> 2);
              }

              else
              {
                v138 = 0;
              }

              if (sub_160EF0(0xDu, 7))
              {
                v154 = sub_160F34(0xDu);
                v155 = sub_175AE4();
                v156 = sub_160F68(7);
                v8 = v252;
                if (v154)
                {
                  printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_nonzero = %d\n\n", v155, 13, v156, "ProcessAndEmitLrmeStats", v242, v138);
                  v157 = sub_175AE4();
                  v233 = sub_160F68(7);
                  syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_nonzero = %d\n", v157, 13, v233, "ProcessAndEmitLrmeStats", v242, v138);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_nonzero = %d\n", v155, 13, v156, "ProcessAndEmitLrmeStats", v242, v138);
                }

                v7 = 0;
                v10 = 0;
                v2 = v251;
                goto LABEL_282;
              }

              goto LABEL_280;
            }

            if (sub_160EF0(0xDu, 4))
            {
              v187 = sub_160F34(0xDu);
              v85 = sub_175AE4();
              v188 = sub_160F68(4);
              v2 = v251;
              v8 = v77;
              if (v187)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: %s: MVCostBuffer is NULL\n", v85, 13, v188, "ProcessAndEmitLrmeStats", 1326, "psMVCostBuffer != __null", "ProcessAndEmitLrmeStats");
                v85 = sub_175AE4();
                v237 = "psMVCostBuffer != __null";
                v236 = 1326;
                v5 = 3758097084;
                v232 = sub_160F68(4);
              }

              else
              {
                v237 = "psMVCostBuffer != __null";
                v236 = 1326;
                v232 = v188;
              }

              v87 = "%lld %d AVE %s: %s:%d %s | OF: %s: MVCostBuffer is NULL";
LABEL_183:
              syslog(3, v87, v85, 13, v232, "ProcessAndEmitLrmeStats", v236, v237, "ProcessAndEmitLrmeStats");
              v10 = 0;
              goto LABEL_47;
            }
          }

          else
          {
            v5 = 3758097084;
            if (sub_160EF0(0xDu, 4))
            {
              v84 = sub_160F34(0xDu);
              v85 = sub_175AE4();
              v86 = sub_160F68(4);
              v2 = v251;
              v8 = v77;
              if (v84)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL\n", v85, 13, v86, "ProcessAndEmitLrmeStats", 1309, "MvStatsBuffer != __null", "ProcessAndEmitLrmeStats");
                v85 = sub_175AE4();
                v237 = "MvStatsBuffer != __null";
                v236 = 1309;
                v5 = 3758097084;
                v232 = sub_160F68(4);
              }

              else
              {
                v237 = "MvStatsBuffer != __null";
                v236 = 1309;
                v232 = v86;
              }

              v87 = "%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL";
              goto LABEL_183;
            }
          }

          v10 = 0;
          v2 = v251;
          v8 = v77;
          goto LABEL_47;
        }

        v10 = 0;
        v7 = 0;
        if (v73 <= 1)
        {
          if (!v73)
          {
            if (*v4)
            {
              v195 = 0;
            }

            else
            {
              v195 = 2;
            }

            v196 = *(v251 + 2552);
            v253 = 4 * v56 * v57;
            v197 = sub_11A0D0(a1, v253, v256);
            v198 = CVPixelBufferGetBaseAddress(v197);
            if (!v198)
            {
              v8 = v197;
              if (sub_160EF0(0xDu, 4))
              {
                v203 = sub_160F34(0xDu);
                v204 = sub_175AE4();
                v205 = sub_160F68(4);
                if (v203)
                {
                  printf("%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL\n", v204, 13, v205, "ProcessAndEmitLrmeStats", 1387, "MvStatsBuffer != __null", "ProcessAndEmitLrmeStats");
                  v204 = sub_175AE4();
                  sub_160F68(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL", v204);
              }

              v10 = 0;
              v2 = v251;
              goto LABEL_278;
            }

            v199 = v198;
            v252 = v197;
            v200 = CVPixelBufferGetBytesPerRow(v197) >> 2;
            if (sub_160EF0(0xDu, 7))
            {
              v201 = sub_160F34(0xDu);
              v246 = sub_175AE4();
              v202 = sub_160F68(7);
              if (v201)
              {
                printf("%lld %d AVE %s: OF: %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n\n", v246, 13, v202, "ProcessAndEmitLrmeStats", v56, v57, v253, v200);
                v246 = sub_175AE4();
                sub_160F68(7);
              }

              syslog(3, "%lld %d AVE %s: OF: %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n", v246, 13);
            }

            if (*(a1 + 137808) >= 23)
            {
              v206 = v199;
              v9 = 4 * v56 * v57;
              sub_11C4F0(v254, v206, v253, v56, v57, v200, *v4);
              v7 = 0;
              v10 = 0;
              v2 = v251;
              v8 = v252;
              goto LABEL_245;
            }

            bzero(v199, v253);
            if (v249 >= 0x10)
            {
              v210 = 0;
              v209 = 0;
              v208 = 0;
              v207 = 0;
              v211 = v254;
              do
              {
                if (v247 >= 0x10)
                {
                  v212 = 0;
                  do
                  {
                    v213 = 0;
                    v214 = v212 + 4 * v200 * v210;
                    v215 = v211;
                    do
                    {
                      for (i = 0; i != 7; ++i)
                      {
                        if (*(v215 + 2 * i) < 0)
                        {
                          break;
                        }
                      }

                      v217 = v211 + 16 * v213;
                      v218 = *(v217 + 2 * i);
                      if (v218 < 0 && v214 < v57 * v200)
                      {
                        _S0 = (v218 << v195);
                        __asm { FCVT            H0, S0 }

                        v220 = &v199[4 * v214];
                        *v220 = LOWORD(_S0);
                        _S1 = (*(v217 + 2 * i) << 17 >> 25 << v195);
                        __asm { FCVT            H1, S1 }

                        *(v220 + 1) = LOWORD(_S1);
                        ++v208;
                        __asm { FCMP            H0, #0 }

                        if (_ZF)
                        {
                          v222 = 0;
                        }

                        else
                        {
                          v222 = 1;
                        }

                        __asm { FCMP            H1, #0 }

                        if (!_ZF)
                        {
                          v222 = 1;
                        }

                        v209 += v222;
                      }

                      v214 += v200;
                      ++v213;
                      v215 += 16;
                    }

                    while (v213 != 4);
                    v211 += 64;
                    ++v212;
                  }

                  while (v212 != v56);
                  v207 += 4 * v56;
                }

                ++v210;
              }

              while (v210 != (v57 + 3) >> 2);
            }

            else
            {
              v207 = 0;
              v208 = 0;
              v209 = 0;
            }

            v224 = v207;
            if (sub_160EF0(0xDu, 7))
            {
              v225 = sub_160F34(0xDu);
              v226 = sub_175AE4();
              v227 = sub_160F68(7);
              if (v225)
              {
                printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n\n", v226, 13, v227, "ProcessAndEmitLrmeStats", v224, v208, v209);
                v226 = sub_175AE4();
                sub_160F68(7);
              }

              syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n", v226);
            }

LABEL_280:
            v7 = 0;
LABEL_281:
            v10 = 0;
            v2 = v251;
            v8 = v252;
LABEL_282:
            v5 = 3758097084;
            v9 = v253;
            goto LABEL_8;
          }

          if (v73 == 1)
          {
            if (sub_160EF0(0xDu, 4))
            {
              v158 = sub_160F34(0xDu);
              v159 = sub_175AE4();
              v160 = sub_160F68(4);
              if (v158)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path\n", v159, 13, v160, "ProcessAndEmitLrmeStats", 1443, "bVTOF == false");
                v161 = sub_175AE4();
                v234 = sub_160F68(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path", v161, 13, v234, "ProcessAndEmitLrmeStats", 1443, "bVTOF == false");
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path", v159, 13, v160, "ProcessAndEmitLrmeStats", 1443, "bVTOF == false");
              }
            }

            LODWORD(v5) = 0;
            v31 = 4294954394;
            v2 = v251;
            goto LABEL_126;
          }
        }

        else
        {
          switch(v73)
          {
            case 2:
              if (sub_160EF0(0x2Eu, 5))
              {
                v189 = sub_160F34(0x2Eu);
                v190 = sub_175AE4();
                v191 = sub_160F68(5);
                if (v189)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_STATISTICS_ONLY is not supported\n\n", v190, 46, v191);
                  sub_175AE4();
                  sub_160F68(5);
                }

                syslog(3, "%lld %d AVE %s: LRME_OUTPUT_STATISTICS_ONLY is not supported\n");
              }

              goto LABEL_242;
            case 3:
              if (sub_160EF0(0x2Eu, 5))
              {
                v192 = sub_160F34(0x2Eu);
                v193 = sub_175AE4();
                v194 = sub_160F68(5);
                if (v192)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported\n\n", v193, 46, v194);
                  sub_175AE4();
                  sub_160F68(5);
                }

                syslog(3, "%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported\n");
              }

              goto LABEL_242;
            case 4:
              if (sub_160EF0(0x2Eu, 5))
              {
                v88 = sub_160F34(0x2Eu);
                v89 = sub_175AE4();
                v90 = sub_160F68(5);
                if (v88)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported\n\n", v89, 46, v90);
                  sub_175AE4();
                  sub_160F68(5);
                }

                syslog(3, "%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported\n");
              }

LABEL_242:
              v7 = 0;
              v8 = 0;
              v9 = 0;
LABEL_243:
              v10 = 0;
              goto LABEL_244;
          }
        }

LABEL_181:
        v8 = 0;
        v9 = 0;
LABEL_244:
        v2 = v251;
LABEL_245:
        v5 = 3758097084;
        goto LABEL_8;
      }

      if (!sub_160EF0(3u, 4))
      {
        LODWORD(v5) = 0;
        v31 = 0;
LABEL_126:
        v29 = v255;
        goto LABEL_68;
      }

      v64 = sub_160F34(3u);
      v65 = sub_175AE4();
      v66 = sub_160F68(4);
      v29 = v255;
      if (v64)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.\n", v65, 3, v66, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
        v67 = sub_175AE4();
        v231 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.", v67, 3, v231, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.", v65, 3, v66, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
      }

      LODWORD(v5) = 0;
      goto LABEL_39;
    }

    if (sub_160EF0(3u, 4))
    {
      v31 = sub_160F34(3u);
      v47 = sub_175AE4();
      v48 = sub_160F68(4);
      if (!v31)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: statSurfaceRef IOSurfaceLookup failed.", v47, 3, v48, "ProcessAndEmitLrmeStats", 1008, "LrmeStatSurfaceRef != __null");
        v29 = 0;
        goto LABEL_67;
      }

      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: statSurfaceRef IOSurfaceLookup failed.\n", v47, 3, v48, "ProcessAndEmitLrmeStats", 1008, "LrmeStatSurfaceRef != __null");
      v49 = sub_175AE4();
      v50 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: statSurfaceRef IOSurfaceLookup failed.", v49, 3, v50, "ProcessAndEmitLrmeStats", 1008, "LrmeStatSurfaceRef != __null");
    }

    v29 = 0;
    v31 = 0;
LABEL_67:
    LODWORD(v5) = -536870212;
    goto LABEL_68;
  }

  v7 = 0;
  v255 = 0;
  v8 = 0;
  v9 = 0;
  v10 = -536870212;
LABEL_8:
  sub_CD240(*(v4 + 185), *(v2 + 20), v7, v9);
  if (sub_160EF0(0x2Eu, 7))
  {
    v11 = v2;
    v12 = sub_160F34(0x2Eu);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    v15 = *(v11 + 40);
    if (v12)
    {
      printf("%lld %d AVE %s: ARK H264FrameRec:ProcessAndEmitLrmeStats %d\n", v13, 46, v14, v15);
      v16 = sub_175AE4();
      v228 = sub_160F68(7);
      v5 = 3758097084;
      syslog(3, "%lld %d AVE %s: ARK H264FrameRec:ProcessAndEmitLrmeStats %d", v16, 46, v228, *(v11 + 40));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ARK H264FrameRec:ProcessAndEmitLrmeStats %d", v13, 46, v14, v15);
    }

    v2 = v11;
  }

  if (*(v2 + 2456) != 3)
  {
    v41 = *(a1 + 29288);
    if (!v41 || (v42 = *(a1 + 29280)) == 0)
    {
      if (sub_160EF0(3u, 4))
      {
        v43 = sub_160F34(3u);
        v44 = sub_175AE4();
        v45 = sub_160F68(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | OF: Session callbacks are not set properly, output will be dropped\n", v44, 3, v45, "ProcessAndEmitLrmeStats", 1522, "false");
          v46 = sub_175AE4();
          v5 = 3758097084;
          v230 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | OF: Session callbacks are not set properly, output will be dropped", v46, 3, v230, "ProcessAndEmitLrmeStats", 1522, "false");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | OF: Session callbacks are not set properly, output will be dropped", v44, 3, v45, "ProcessAndEmitLrmeStats", 1522, "false");
        }
      }

      goto LABEL_47;
    }

    v41(v42, v8, v9, v2, *(v4 + 61));
  }

  v5 = 0;
LABEL_47:
  sub_117768(a1, v2, 0);
  if (v8)
  {
    sub_11A5A0(a1, v8);
  }

  v31 = v5;
  LODWORD(v5) = v10;
  v29 = v255;
LABEL_28:
  if (v256[0])
  {
    CFRelease(v256[0]);
    v256[0] = 0;
  }

  if (v29)
  {
    if (!v5)
    {
      IOSurfaceUnlock(v29, 0, 0);
    }

    CFRelease(v29);
  }

  return v31;
}