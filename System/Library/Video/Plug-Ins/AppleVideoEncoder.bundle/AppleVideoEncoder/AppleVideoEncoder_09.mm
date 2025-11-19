uint64_t sub_CFEC0(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = (*(a1 + 12) - *(a1 + 16) / 8);
  v7 = *(a2 + 12);
  if (sub_160EF0(0xD3u, 8))
  {
    v8 = sub_160F34(0xD3u);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    v11 = *(a2 + 12);
    v12 = *(a2 + 32) + v11;
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %s start payload size %d %p (%d)\n", v9, 211, v10, "AVE_SEI_FinishNALU", 171, a3, v6, (*(a2 + 32) + v11), v11);
      v9 = sub_175AE4();
      v10 = sub_160F68(8);
      v13 = *(a2 + 32) + *(a2 + 12);
    }

    else
    {
      v48 = *(a2 + 32) + v11;
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s start payload size %d %p (%d)", v9, 211, v10);
  }

  v14 = sub_CECE8(v6, a2);
  if (!v14)
  {
    if (sub_160EF0(0xD3u, 8))
    {
      v22 = sub_160F34(0xD3u);
      v23 = sub_175AE4();
      v24 = sub_160F68(8);
      v25 = *(a2 + 12);
      v26 = *(a2 + 32) + v25;
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s end payload size %d %p (%d)\n", v23, 211, v24, "AVE_SEI_FinishNALU", 179, a3, v25 - v7, (*(a2 + 32) + v25), v25);
        v23 = sub_175AE4();
        v24 = sub_160F68(8);
        v49 = *(a2 + 32) + *(a2 + 12);
      }

      else
      {
        v50 = *(a2 + 32) + v25;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s end payload size %d %p (%d)", v23, 211, v24);
    }

    v27 = sub_1728F4(a2, a1);
    if (v27)
    {
      v15 = v27;
      if (!sub_160EF0(0xD3u, 4))
      {
        return v15;
      }

      v28 = sub_160F34(0xD3u);
      v17 = sub_175AE4();
      v29 = sub_160F68(4);
      v30 = *(a2 + 32);
      if (!v28)
      {
        v45 = *(a2 + 32);
        goto LABEL_31;
      }

      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v17, 211, v29, "AVE_SEI_FinishNALU", 183, "(ret) == 0", *(a2 + 32), v15);
    }

    else
    {
      v31 = sub_172978(a2);
      if (!v31)
      {
        if (sub_160EF0(0xD3u, 8))
        {
          v37 = sub_160F34(0xD3u);
          v38 = sub_175AE4();
          v39 = sub_160F68(8);
          v40 = *(a2 + 12);
          v41 = *(a2 + 32) + v40;
          if (v37)
          {
            printf("%lld %d AVE %s: %s:%d %s rbsp_trailing_bits %p (%d)\n", v38, 211, v39, "AVE_SEI_FinishNALU", 191, a3, (*(a2 + 32) + v40), v40);
            v38 = sub_175AE4();
            sub_160F68(8);
            v42 = *(a2 + 32) + *(a2 + 12);
          }

          else
          {
            v47 = *(a2 + 32) + v40;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s rbsp_trailing_bits %p (%d)", v38, 211);
        }

        return 0;
      }

      v15 = v31;
      if (!sub_160EF0(0xD3u, 4))
      {
        return v15;
      }

      v32 = sub_160F34(0xD3u);
      v17 = sub_175AE4();
      v33 = sub_160F68(4);
      v34 = *(a2 + 32);
      if (!v32)
      {
        v46 = *(a2 + 32);
        goto LABEL_31;
      }

      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v17, 211, v33, "AVE_SEI_FinishNALU", 187, "(ret) == 0", *(a2 + 32), v15);
    }

    v35 = sub_175AE4();
    sub_160F68(4);
    v36 = *(a2 + 32);
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v35, 211);
    return v15;
  }

  v15 = v14;
  if (sub_160EF0(0xD3u, 4))
  {
    v16 = sub_160F34(0xD3u);
    v17 = sub_175AE4();
    v18 = sub_160F68(4);
    v19 = *(a2 + 32);
    if (v16)
    {
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v17, 211, v18, "AVE_SEI_FinishNALU", 174, "(ret) == 0", *(a2 + 32), v15);
      v20 = sub_175AE4();
      sub_160F68(4);
      v21 = *(a2 + 32);
      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v20, 211);
      return v15;
    }

    v44 = *(a2 + 32);
LABEL_31:
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v17, 211);
  }

  return v15;
}

uint64_t sub_D03F0(const void *a1, int a2, int a3, int *a4)
{
  memset(v120, 0, sizeof(v120));
  v119[0] = xmmword_183560;
  v119[1] = xmmword_183570;
  v119[2] = xmmword_183580;
  if (sub_160EF0(0xD3u, 7))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", v5, 211, v6, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4);
      v5 = sub_175AE4();
      v6 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", v5, 211, v6, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4);
  }

  if (!a1 || !a4)
  {
    v10 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v11 = sub_160F34(0xD3u);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v12, 211, v13, "AVE_SEI_WriteContentColorVolume", 319, "pBuf != __null && pBytesWritten != __null", a1, a4);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v12, 211, v13, "AVE_SEI_WriteContentColorVolume", 319, "pBuf != __null && pBytesWritten != __null", a1, a4);
      goto LABEL_41;
    }

LABEL_42:
    v26 = 4294966295;
    goto LABEL_43;
  }

  if (a3 != 2)
  {
    v10 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v14 = sub_160F34(0xD3u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v15, 211, v16, "AVE_SEI_WriteContentColorVolume", 323, "encType == AVE_EncType_HEVC", a3, a1);
        v15 = sub_175AE4();
        v16 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v15, 211, v16, "AVE_SEI_WriteContentColorVolume", 323, "encType == AVE_EncType_HEVC", a3, a1);
LABEL_41:
      v10 = 4;
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  if (sub_160EF0(0xD3u, 8))
  {
    v7 = sub_160F34(0xD3u);
    v8 = sub_175AE4();
    v9 = sub_160F68(8);
    if (v7)
    {
      printf("%lld %d AVE %s: %s:%d ccv primaries\n", v8, 211, v9, "AVE_SEI_WriteContentColorVolume", 328);
      v8 = sub_175AE4();
      v9 = sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d ccv primaries", v8, 211, v9, "AVE_SEI_WriteContentColorVolume", 328);
  }

  v17 = 0;
  v117 = vdupq_n_s64(0x40E86A0000000000uLL);
  do
  {
    v118 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(v119[v17], v117)));
    v120[v17] = v118;
    if (sub_160EF0(0xD3u, 7))
    {
      v18 = sub_160F34(0xD3u);
      v19 = sub_175AE4();
      v20 = sub_160F68(7);
      if (v18)
      {
        printf("%lld %d AVE %s: ccv_primaries %d (x, y) (%d, %d)\n", v19, 211, v20, v17, v118.i32[0], v118.i32[1]);
        v19 = sub_175AE4();
        v20 = sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: ccv_primaries %d (x, y) (%d, %d)", v19, 211, v20, v17, v118.i32[0], v118.i32[1]);
    }

    ++v17;
  }

  while (v17 != 3);
  v21 = operator new(0x1030uLL, &std::nothrow);
  if (v21)
  {
    v22 = v21;
    sub_172598(v21);
    v23 = operator new(0x1030uLL, &std::nothrow);
    v24 = v23;
    if (v23)
    {
      sub_1725DC(v23, a1, a2, 0);
      v25 = sub_CED64(v24, 2, 149, "AVE_SEI_WriteContentColorVolume");
      if (v25)
      {
        v26 = v25;
        if (sub_160EF0(0xD3u, 4))
        {
          v27 = sub_160F34(0xD3u);
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v28, 211, v29, "AVE_SEI_WriteContentColorVolume", 352, "(ret) == 0", a1, v26);
            v28 = sub_175AE4();
            v29 = sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v28, 211, v29, "AVE_SEI_WriteContentColorVolume", 352, "(ret) == 0", a1, v26);
        }
      }

      else
      {
        v42 = sub_17262C(v22, 0);
        if (v42)
        {
          v26 = v42;
          if (sub_160EF0(0xD3u, 4))
          {
            v43 = sub_160F34(0xD3u);
            v44 = sub_175AE4();
            v45 = sub_160F68(4);
            if (v43)
            {
              printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v44, 211, v45, "AVE_SEI_WriteContentColorVolume", 356, "(ret) == 0", a1, v26);
              v44 = sub_175AE4();
              v45 = sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v44, 211, v45, "AVE_SEI_WriteContentColorVolume", 356, "(ret) == 0", a1, v26);
          }
        }

        else
        {
          v46 = sub_17262C(v22, 1);
          if (v46)
          {
            v26 = v46;
            if (sub_160EF0(0xD3u, 4))
            {
              v47 = sub_160F34(0xD3u);
              v48 = sub_175AE4();
              v49 = sub_160F68(4);
              if (v47)
              {
                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v48, 211, v49, "AVE_SEI_WriteContentColorVolume", 361, "(ret) == 0", a1, v26);
                v48 = sub_175AE4();
                v49 = sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v48, 211, v49, "AVE_SEI_WriteContentColorVolume", 361, "(ret) == 0", a1, v26);
            }
          }

          else
          {
            v50 = sub_17262C(v22, 1);
            if (v50)
            {
              v26 = v50;
              if (sub_160EF0(0xD3u, 4))
              {
                v51 = sub_160F34(0xD3u);
                v52 = sub_175AE4();
                v53 = sub_160F68(4);
                if (v51)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v52, 211, v53, "AVE_SEI_WriteContentColorVolume", 363, "(ret) == 0", a1, v26);
                  v52 = sub_175AE4();
                  v53 = sub_160F68(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v52, 211, v53, "AVE_SEI_WriteContentColorVolume", 363, "(ret) == 0", a1, v26);
              }
            }

            else
            {
              v54 = sub_17262C(v22, 1);
              if (v54)
              {
                v26 = v54;
                if (sub_160EF0(0xD3u, 4))
                {
                  v55 = sub_160F34(0xD3u);
                  v56 = sub_175AE4();
                  v57 = sub_160F68(4);
                  if (v55)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v56, 211, v57, "AVE_SEI_WriteContentColorVolume", 365, "(ret) == 0", a1, v26);
                    v56 = sub_175AE4();
                    v57 = sub_160F68(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v56, 211, v57, "AVE_SEI_WriteContentColorVolume", 365, "(ret) == 0", a1, v26);
                }
              }

              else
              {
                v58 = sub_17262C(v22, 1);
                if (v58)
                {
                  v26 = v58;
                  if (sub_160EF0(0xD3u, 4))
                  {
                    v59 = sub_160F34(0xD3u);
                    v60 = sub_175AE4();
                    v61 = sub_160F68(4);
                    if (v59)
                    {
                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v60, 211, v61, "AVE_SEI_WriteContentColorVolume", 367, "(ret) == 0", a1, v26);
                      v60 = sub_175AE4();
                      v61 = sub_160F68(4);
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v60, 211, v61, "AVE_SEI_WriteContentColorVolume", 367, "(ret) == 0", a1, v26);
                  }
                }

                else
                {
                  v62 = sub_17262C(v22, 1);
                  if (v62)
                  {
                    v26 = v62;
                    if (sub_160EF0(0xD3u, 4))
                    {
                      v63 = sub_160F34(0xD3u);
                      v64 = sub_175AE4();
                      v65 = sub_160F68(4);
                      if (v63)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v64, 211, v65, "AVE_SEI_WriteContentColorVolume", 369, "(ret) == 0", a1, v26);
                        v64 = sub_175AE4();
                        v65 = sub_160F68(4);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v64, 211, v65, "AVE_SEI_WriteContentColorVolume", 369, "(ret) == 0", a1, v26);
                    }
                  }

                  else
                  {
                    v66 = sub_1727D0(v22, 0, 2);
                    if (v66)
                    {
                      v26 = v66;
                      if (sub_160EF0(0xD3u, 4))
                      {
                        v67 = sub_160F34(0xD3u);
                        v68 = sub_175AE4();
                        v69 = sub_160F68(4);
                        if (v67)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v68, 211, v69, "AVE_SEI_WriteContentColorVolume", 371, "(ret) == 0", a1, v26);
                          v68 = sub_175AE4();
                          v69 = sub_160F68(4);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v68, 211, v69, "AVE_SEI_WriteContentColorVolume", 371, "(ret) == 0", a1, v26);
                      }
                    }

                    else
                    {
                      v70 = v120 + 1;
                      v71 = 3;
                      while (1)
                      {
                        v72 = sub_1727BC(v22, *(v70 - 1), 32);
                        if (v72)
                        {
                          break;
                        }

                        v73 = sub_1727BC(v22, *v70, 32);
                        if (v73)
                        {
                          v26 = v73;
                          if (sub_160EF0(0xD3u, 4))
                          {
                            v81 = sub_160F34(0xD3u);
                            v82 = sub_175AE4();
                            v83 = sub_160F68(4);
                            if (v81)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v82, 211, v83, "AVE_SEI_WriteContentColorVolume", 381, "(ret) == 0", a1, v26);
                              v82 = sub_175AE4();
                              v83 = sub_160F68(4);
                            }

                            syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v82, 211, v83, "AVE_SEI_WriteContentColorVolume", 381, "(ret) == 0", a1, v26);
                          }

                          goto LABEL_62;
                        }

                        v70 += 2;
                        if (!--v71)
                        {
                          v74 = sub_1727D0(v22, 0, 32);
                          if (v74)
                          {
                            v26 = v74;
                            if (sub_160EF0(0xD3u, 4))
                            {
                              v75 = sub_160F34(0xD3u);
                              v76 = sub_175AE4();
                              v77 = sub_160F68(4);
                              if (v75)
                              {
                                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v76, 211, v77, "AVE_SEI_WriteContentColorVolume", 388, "(ret) == 0", a1, v26);
                                v76 = sub_175AE4();
                                v77 = sub_160F68(4);
                              }

                              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v76, 211, v77, "AVE_SEI_WriteContentColorVolume", 388, "(ret) == 0", a1, v26);
                            }
                          }

                          else
                          {
                            v84 = sub_1727D0(v22, 1000000, 32);
                            if (v84)
                            {
                              v26 = v84;
                              if (sub_160EF0(0xD3u, 4))
                              {
                                v85 = sub_160F34(0xD3u);
                                v86 = sub_175AE4();
                                v87 = sub_160F68(4);
                                if (v85)
                                {
                                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v86, 211, v87, "AVE_SEI_WriteContentColorVolume", 393, "(ret) == 0", a1, v26);
                                  v86 = sub_175AE4();
                                  v87 = sub_160F68(4);
                                }

                                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v86, 211, v87, "AVE_SEI_WriteContentColorVolume", 393, "(ret) == 0", a1, v26);
                              }
                            }

                            else
                            {
                              v88 = sub_1727D0(v22, 100000, 32);
                              if (v88)
                              {
                                v26 = v88;
                                if (sub_160EF0(0xD3u, 4))
                                {
                                  v89 = sub_160F34(0xD3u);
                                  v90 = sub_175AE4();
                                  v91 = sub_160F68(4);
                                  if (v89)
                                  {
                                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v90, 211, v91, "AVE_SEI_WriteContentColorVolume", 398, "(ret) == 0", a1, v26);
                                    v90 = sub_175AE4();
                                    v91 = sub_160F68(4);
                                  }

                                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v90, 211, v91, "AVE_SEI_WriteContentColorVolume", 398, "(ret) == 0", a1, v26);
                                }
                              }

                              else if (v22[2] && (v92 = sub_172978(v22), v92))
                              {
                                v26 = v92;
                                if (sub_160EF0(0xD3u, 4))
                                {
                                  v93 = sub_160F34(0xD3u);
                                  v94 = sub_175AE4();
                                  v95 = sub_160F68(4);
                                  if (v93)
                                  {
                                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v94, 211, v95, "AVE_SEI_WriteContentColorVolume", 406, "(ret) == 0", a1, v26);
                                    v94 = sub_175AE4();
                                    v95 = sub_160F68(4);
                                  }

                                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v94, 211, v95, "AVE_SEI_WriteContentColorVolume", 406, "(ret) == 0", a1, v26);
                                }
                              }

                              else
                              {
                                if (sub_160EF0(0xD3u, 8))
                                {
                                  v96 = sub_160F34(0xD3u);
                                  v97 = sub_175AE4();
                                  v98 = sub_160F68(8);
                                  v99 = v22[3];
                                  v100 = (v22[2] + 8 * v99);
                                  if (v96)
                                  {
                                    printf("%lld %d AVE %s: %s:%d New bits %d (%d bytes)\n", v97, 211, v98, "AVE_SEI_WriteContentColorVolume", 410, v22[2] + 8 * v99, v99);
                                    v101 = sub_175AE4();
                                    v102 = sub_160F68(8);
                                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v101, 211, v102, "AVE_SEI_WriteContentColorVolume", 410, v22[2] + 8 * v22[3], v22[3]);
                                  }

                                  else
                                  {
                                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v97, 211, v98, "AVE_SEI_WriteContentColorVolume", 410, v22[2] + 8 * v99, v99);
                                  }
                                }

                                v103 = sub_CFEC0(v22, v24, "AVE_SEI_WriteContentColorVolume");
                                if (v103)
                                {
                                  v26 = v103;
                                  if (sub_160EF0(0xD3u, 4))
                                  {
                                    v104 = sub_160F34(0xD3u);
                                    v105 = sub_175AE4();
                                    v106 = sub_160F68(4);
                                    if (v104)
                                    {
                                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v105, 211, v106, "AVE_SEI_WriteContentColorVolume", 413, "(ret) == 0", a1, v26);
                                      v105 = sub_175AE4();
                                      v106 = sub_160F68(4);
                                    }

                                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v105, 211, v106, "AVE_SEI_WriteContentColorVolume", 413, "(ret) == 0", a1, v26);
                                  }
                                }

                                else
                                {
                                  *a4 = v24[3];
                                  if (sub_160EF0(0xD3u, 7))
                                  {
                                    v107 = sub_160F34(0xD3u);
                                    v108 = sub_175AE4();
                                    v109 = sub_160F68(7);
                                    v110 = *a4;
                                    if (v107)
                                    {
                                      printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v108, 211, v109, "AVE_SEI_WriteContentColorVolume", 416, v110);
                                      v111 = sub_175AE4();
                                      v112 = sub_160F68(7);
                                      syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v111, 211, v112, "AVE_SEI_WriteContentColorVolume", 416, *a4);
                                    }

                                    else
                                    {
                                      syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v108, 211, v109, "AVE_SEI_WriteContentColorVolume", 416, v110);
                                    }
                                  }

                                  v26 = 0;
                                }
                              }
                            }
                          }

                          goto LABEL_62;
                        }
                      }

                      v26 = v72;
                      if (sub_160EF0(0xD3u, 4))
                      {
                        v78 = sub_160F34(0xD3u);
                        v79 = sub_175AE4();
                        v80 = sub_160F68(4);
                        if (v78)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v79, 211, v80, "AVE_SEI_WriteContentColorVolume", 378, "(ret) == 0", a1, v26);
                          v79 = sub_175AE4();
                          v80 = sub_160F68(4);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v79, 211, v80, "AVE_SEI_WriteContentColorVolume", 378, "(ret) == 0", a1, v26);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v39 = sub_160F34(0xD3u);
        v40 = sub_175AE4();
        v41 = sub_160F68(4);
        if (v39)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v40, 211, v41, "AVE_SEI_WriteContentColorVolume", 348, "pcSyntaxWriter_NALU != __null", a1);
          v40 = sub_175AE4();
          v41 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v40, 211, v41, "AVE_SEI_WriteContentColorVolume", 348, "pcSyntaxWriter_NALU != __null", a1);
      }

      v26 = 4294966293;
    }

LABEL_62:
    (*(*v22 + 8))(v22);
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    if (v26)
    {
      v10 = 4;
    }

    else
    {
      v10 = 7;
    }
  }

  else
  {
    v10 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v30 = sub_160F34(0xD3u);
      v31 = sub_175AE4();
      v32 = sub_160F68(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v31, 211, v32, "AVE_SEI_WriteContentColorVolume", 342, "pcSyntaxWriter != __null", a1);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v31, 211, v32, "AVE_SEI_WriteContentColorVolume", 342, "pcSyntaxWriter != __null", a1);
      v10 = 4;
    }

    v26 = 4294966293;
  }

LABEL_43:
  if (sub_160EF0(0xD3u, v10))
  {
    v33 = sub_160F34(0xD3u);
    v34 = sub_175AE4();
    v35 = sub_160F68(v10);
    if (v33)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v34, 211, v35, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4, v26);
      v36 = sub_175AE4();
      v37 = sub_160F68(v10);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v36, 211, v37, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4, v26);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v34, 211, v35, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4, v26);
    }
  }

  return v26;
}

uint64_t sub_D1C38(uint64_t a1, double a2)
{
  v3 = sub_CB26C(a2);
  *a1 = 0;
  *(a1 + 1) = bswap64(v3);
  return 9;
}

uint64_t sub_D1C6C(uint64_t a1, double a2)
{
  v3 = sub_CB26C(a2);
  *a1 = 4;
  *(a1 + 1) = bswap64(v3);
  return 9;
}

uint64_t sub_D1CA4(uint64_t a1, unsigned int a2)
{
  *a1 = 1;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t sub_D1CBC(uint64_t a1, unsigned int a2)
{
  *a1 = 3;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t sub_D1CD4(uint64_t a1, unsigned int a2)
{
  *a1 = 2;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t sub_D1CEC(uint64_t a1, unsigned int a2)
{
  *a1 = 13;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t sub_D1D04(uint64_t a1, unsigned int a2, unint64_t a3)
{
  *a1 = 9;
  *(a1 + 1) = bswap32(a2);
  *(a1 + 5) = bswap64(a3);
  return 13;
}

uint64_t sub_D1D24(uint64_t a1, char a2, char a3, char a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = 0;
  if (a5 <= 0.0 || a6 <= 0.0 || a7 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    if (a8 > 0.0)
    {
      v9 = (a5 * a6 * a7 / (a8 * 16777216.0));
      v10 = 32;
    }
  }

  *a1 = 1380865034;
  *(a1 + 4) = a3;
  if (v9 >= 0xFF)
  {
    LOBYTE(v9) = -1;
  }

  *(a1 + 5) = v9;
  *(a1 + 6) = v10 | (a2 << 6) | a4 & 0x1F;
  *(a1 + 7) = bswap64(sub_CB26C(a9));
  return 15;
}

uint64_t sub_D1DD8(uint64_t a1, unint64_t a2)
{
  *a1 = 11;
  *(a1 + 1) = bswap64(a2);
  return 9;
}

uint64_t sub_D1DF0(uint64_t a1, unsigned int a2, char a3, char a4)
{
  *a1 = 12;
  *(a1 + 1) = __rev16(a2);
  *(a1 + 3) = a3;
  *(a1 + 4) = a4;
  return 5;
}

uint64_t sub_D1E10(const void *a1, int a2, unsigned __int8 *a3, int a4, uint64_t a5, int a6, int a7, int *a8)
{
  v92 = xmmword_183590;
  v91 = 1635018093;
  if (sub_160EF0(0xD3u, 7))
  {
    v10 = sub_160F34(0xD3u);
    v11 = sub_175AE4();
    v12 = sub_160F68(7);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d %lld %d %d %p\n", v11, 211, v12, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %lld %d %d %p", v13, 211, v14, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %lld %d %d %p", v11, 211, v12, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  if (!a1 || !a3 || !a8)
  {
    v29 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v30 = sub_160F34(0xD3u);
      v31 = sub_175AE4();
      v32 = sub_160F68(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | Invalid arguments %p %p %p\n", v31, 211, v32, "AVE_SEI_WriteSEIISPMetadata", 844, "pBuf != __null && pSEIData != __null && pSEISize != __null", a1, a3, a8);
        v33 = sub_175AE4();
        v34 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Invalid arguments %p %p %p", v33, 211, v34, "AVE_SEI_WriteSEIISPMetadata", 844, "pBuf != __null && pSEIData != __null && pSEISize != __null", a1, a3, a8);
LABEL_41:
        v29 = 4;
        goto LABEL_42;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Invalid arguments %p %p %p", v31, 211, v32, "AVE_SEI_WriteSEIISPMetadata", 844, "pBuf != __null && pSEIData != __null && pSEISize != __null", a1, a3, a8);
    }

LABEL_42:
    v23 = 4294966293;
    goto LABEL_43;
  }

  if ((a6 - 1) < 2)
  {
    v15 = a4 + a4 / 2 + 1;
    v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
    if (v16)
    {
      v17 = v16;
      v18 = operator new(0x1030uLL, &std::nothrow);
      if (v18)
      {
        v19 = v18;
        sub_1725DC(v18, v17, v15, a7);
        v20 = operator new(0x1030uLL, &std::nothrow);
        v21 = v20;
        if (v20)
        {
          sub_1725DC(v20, a1, a2, 0);
          v22 = sub_CED64(v21, a6, 5, "AVE_SEI_WriteSEIISPMetadata");
          if (v22)
          {
            v23 = v22;
            if (sub_160EF0(0xD3u, 4))
            {
              v24 = sub_160F34(0xD3u);
              v25 = sub_175AE4();
              v26 = sub_160F68(4);
              if (v24)
              {
                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v25, 211, v26, "AVE_SEI_WriteSEIISPMetadata", 869, "(ret) == 0", a1, v23);
                v27 = sub_175AE4();
                v28 = sub_160F68(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v27, 211, v28, "AVE_SEI_WriteSEIISPMetadata", 869, "(ret) == 0", a1, v23);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v25, 211, v26, "AVE_SEI_WriteSEIISPMetadata", 869, "(ret) == 0", a1, v23);
              }
            }
          }

          else
          {
            v23 = sub_172890(v19, &v92, 16);
            if (v23)
            {
              if (sub_160EF0(0xD3u, 4))
              {
                v55 = sub_160F34(0xD3u);
                v56 = sub_175AE4();
                v57 = sub_160F68(4);
                if (v55)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v56, 211, v57, "AVE_SEI_WriteSEIISPMetadata", 875, "(ret) == 0", a1, v23);
                  v58 = sub_175AE4();
                  v59 = sub_160F68(4);
                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v58, 211, v59, "AVE_SEI_WriteSEIISPMetadata", 875, "(ret) == 0", a1, v23);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v56, 211, v57, "AVE_SEI_WriteSEIISPMetadata", 875, "(ret) == 0", a1, v23);
                }
              }
            }

            else
            {
              v23 = sub_172890(v19, &v91, 4);
              if (v23)
              {
                if (sub_160EF0(0xD3u, 4))
                {
                  v64 = sub_160F34(0xD3u);
                  v65 = sub_175AE4();
                  v66 = sub_160F68(4);
                  if (v64)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v65, 211, v66, "AVE_SEI_WriteSEIISPMetadata", 879, "(ret) == 0", a1, v23);
                    v67 = sub_175AE4();
                    v68 = sub_160F68(4);
                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v67, 211, v68, "AVE_SEI_WriteSEIISPMetadata", 879, "(ret) == 0", a1, v23);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v65, 211, v66, "AVE_SEI_WriteSEIISPMetadata", 879, "(ret) == 0", a1, v23);
                  }
                }
              }

              else
              {
                v23 = sub_172890(v19, a3, a4);
                if (v23)
                {
                  if (sub_160EF0(0xD3u, 4))
                  {
                    v69 = sub_160F34(0xD3u);
                    v70 = sub_175AE4();
                    v71 = sub_160F68(4);
                    if (v69)
                    {
                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v70, 211, v71, "AVE_SEI_WriteSEIISPMetadata", 883, "(ret) == 0", a1, v23);
                      v72 = sub_175AE4();
                      v73 = sub_160F68(4);
                      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v72, 211, v73, "AVE_SEI_WriteSEIISPMetadata", 883, "(ret) == 0", a1, v23);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v70, 211, v71, "AVE_SEI_WriteSEIISPMetadata", 883, "(ret) == 0", a1, v23);
                    }
                  }
                }

                else
                {
                  v23 = sub_CFEC0(v19, v21, "AVE_SEI_WriteSEIISPMetadata");
                  if (v23)
                  {
                    if (sub_160EF0(0xD3u, 4))
                    {
                      v74 = sub_160F34(0xD3u);
                      v75 = sub_175AE4();
                      v76 = sub_160F68(4);
                      if (v74)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v75, 211, v76, "AVE_SEI_WriteSEIISPMetadata", 886, "(ret) == 0", a1, v23);
                        v77 = sub_175AE4();
                        v78 = sub_160F68(4);
                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v77, 211, v78, "AVE_SEI_WriteSEIISPMetadata", 886, "(ret) == 0", a1, v23);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v75, 211, v76, "AVE_SEI_WriteSEIISPMetadata", 886, "(ret) == 0", a1, v23);
                      }
                    }
                  }

                  else
                  {
                    *a8 = v21[3];
                    if (sub_160EF0(0xD3u, 7))
                    {
                      v79 = sub_160F34(0xD3u);
                      v80 = sub_175AE4();
                      v81 = sub_160F68(7);
                      v82 = *a8;
                      if (v79)
                      {
                        printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v80, 211, v81, "AVE_SEI_WriteSEIISPMetadata", 889, v82);
                        v83 = sub_175AE4();
                        v84 = sub_160F68(7);
                        syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v83, 211, v84, "AVE_SEI_WriteSEIISPMetadata", 889, *a8);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v80, 211, v81, "AVE_SEI_WriteSEIISPMetadata", 889, v82);
                      }
                    }

                    v23 = 0;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (sub_160EF0(0xD3u, 4))
          {
            v50 = sub_160F34(0xD3u);
            v51 = sub_175AE4();
            v52 = sub_160F68(4);
            if (v50)
            {
              printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v51, 211, v52, "AVE_SEI_WriteSEIISPMetadata", 865, "pcSyntaxWriter_NALU != __null", a1);
              v53 = sub_175AE4();
              v54 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v53, 211, v54, "AVE_SEI_WriteSEIISPMetadata", 865, "pcSyntaxWriter_NALU != __null", a1);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v51, 211, v52, "AVE_SEI_WriteSEIISPMetadata", 865, "pcSyntaxWriter_NALU != __null", a1);
            }
          }

          v23 = 4294966293;
        }

        (*(*v19 + 8))(v19);
        if (v21)
        {
          (*(*v21 + 8))(v21);
        }

        free(v17);
        if (v23)
        {
          v29 = 4;
        }

        else
        {
          v29 = 7;
        }

        goto LABEL_43;
      }

      if (sub_160EF0(0xD3u, 4))
      {
        v45 = sub_160F34(0xD3u);
        v46 = sub_175AE4();
        v47 = sub_160F68(4);
        if (v45)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v46, 211, v47, "AVE_SEI_WriteSEIISPMetadata", 859, "pcSyntaxWriter != __null", a1);
          v48 = sub_175AE4();
          v49 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v48, 211, v49, "AVE_SEI_WriteSEIISPMetadata", 859, "pcSyntaxWriter != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v46, 211, v47, "AVE_SEI_WriteSEIISPMetadata", 859, "pcSyntaxWriter != __null", a1);
        }
      }

      free(v17);
      goto LABEL_41;
    }

    v29 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v40 = sub_160F34(0xD3u);
      v41 = sub_175AE4();
      v42 = sub_160F68(4);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to malloc SEI EPB buffer %p\n", v41, 211, v42, "AVE_SEI_WriteSEIISPMetadata", 855, "pEPB_SEIData != __null", a1);
        v43 = sub_175AE4();
        v44 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to malloc SEI EPB buffer %p", v43, 211, v44, "AVE_SEI_WriteSEIISPMetadata", 855, "pEPB_SEIData != __null", a1);
        goto LABEL_41;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to malloc SEI EPB buffer %p", v41, 211, v42, "AVE_SEI_WriteSEIISPMetadata", 855, "pEPB_SEIData != __null", a1);
    }

    goto LABEL_42;
  }

  v29 = 4;
  if (sub_160EF0(0xD3u, 4))
  {
    v35 = sub_160F34(0xD3u);
    v36 = sub_175AE4();
    v37 = sub_160F68(4);
    if (v35)
    {
      printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v36, 211, v37, "AVE_SEI_WriteSEIISPMetadata", 848, "encType == AVE_EncType_HEVC || encType == AVE_EncType_AVC", a6, a1);
      v38 = sub_175AE4();
      v39 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v38, 211, v39, "AVE_SEI_WriteSEIISPMetadata", 848, "encType == AVE_EncType_HEVC || encType == AVE_EncType_AVC", a6, a1);
      v29 = 4;
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v36, 211, v37, "AVE_SEI_WriteSEIISPMetadata", 848, "encType == AVE_EncType_HEVC || encType == AVE_EncType_AVC", a6, a1);
    }
  }

  v23 = 4294966295;
LABEL_43:
  if (sub_160EF0(0xD3u, v29))
  {
    v60 = sub_160F34(0xD3u);
    v61 = sub_175AE4();
    v62 = sub_160F68(v29);
    if (v60)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %lld %d %d %p %d\n", v61, 211, v62, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8, v23);
      v61 = sub_175AE4();
      v62 = sub_160F68(v29);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %lld %d %d %p %d", v61, 211, v62, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8, v23);
  }

  return v23;
}

uint64_t sub_D2D18(const void *a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, int *a7)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %d %p\n", v13, 211, v14, "AVE_SEI_WriteLuxLevel", a1, a2, a3, a4, a5, a6, a7);
      v15 = sub_175AE4();
      v67 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %d %p", v15, 211, v67, "AVE_SEI_WriteLuxLevel");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %d %p", v13, 211, v14, "AVE_SEI_WriteLuxLevel");
    }
  }

  if (!a1 || !a7)
  {
    v25 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v26 = sub_160F34(0xD3u);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (!v26)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v27, 211);
        goto LABEL_25;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v27, 211, v28, "AVE_SEI_WriteLuxLevel", 947, "pBuf != __null && pSEISize != __null", a1, a7);
      v29 = sub_175AE4();
      v25 = 4;
      sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v29, 211);
    }

LABEL_26:
    v21 = 4294966295;
    goto LABEL_27;
  }

  if ((a5 - 1) >= 2)
  {
    v25 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v30 = sub_160F34(0xD3u);
      v31 = sub_175AE4();
      v32 = sub_160F68(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v31, 211, v32, "AVE_SEI_WriteLuxLevel", 951, "encType == AVE_EncType_HEVC || encType == AVE_EncType_AVC", a5, a1);
        v33 = sub_175AE4();
        v25 = 4;
        sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v33, 211);
        goto LABEL_26;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v31, 211);
LABEL_25:
      v25 = 4;
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v16 = operator new(0x1030uLL, &std::nothrow);
  if (v16)
  {
    v17 = v16;
    sub_172598(v16);
    v18 = operator new(0x1030uLL, &std::nothrow);
    v19 = v18;
    if (!v18)
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v45 = a6;
        v46 = sub_160F34(0xD3u);
        v47 = sub_175AE4();
        v48 = sub_160F68(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v47, 211, v48, "AVE_SEI_WriteLuxLevel", 961, "pcSyntaxWriter_NALU != __null", a1);
          v49 = sub_175AE4();
          sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v49);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v47);
        }

        v21 = 4294966293;
        a6 = v45;
      }

      else
      {
        v21 = 4294966293;
      }

      goto LABEL_56;
    }

    sub_1725DC(v18, a1, a2, 0);
    v20 = sub_CED64(v19, a5, 4, "AVE_SEI_WriteLuxLevel");
    if (v20)
    {
      v21 = v20;
      if (sub_160EF0(0xD3u, 4))
      {
        v22 = sub_160F34(0xD3u);
        v72 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v72, 211, v23, "AVE_SEI_WriteLuxLevel", 965, "(ret) == 0", a1, v21);
          v24 = sub_175AE4();
          v70 = a1;
          v71 = v21;
          v69 = 965;
          v68 = sub_160F68(4);
LABEL_50:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v24, 211, v68, "AVE_SEI_WriteLuxLevel", v69, "(ret) == 0", v70, v71);
          goto LABEL_56;
        }

        goto LABEL_55;
      }
    }

    else
    {
      sub_1727D0(v17, 181, 8);
      sub_1727D0(v17, 48879, 16);
      sub_1727D0(v17, 21930, 16);
      sub_1727D0(v17, a4, 32);
      if (sub_160EF0(0xD3u, 8))
      {
        v50 = a6;
        v51 = sub_160F34(0xD3u);
        v52 = sub_175AE4();
        v53 = sub_160F68(8);
        v54 = v17[3];
        if (v51)
        {
          printf("%lld %d AVE %s: %s:%d payloadSize EPB %d\n", v52, 211, v53, "AVE_SEI_WriteLuxLevel", 980, v54);
          v55 = sub_175AE4();
          v56 = sub_160F68(8);
          syslog(3, "%lld %d AVE %s: %s:%d payloadSize EPB %d", v55, 211, v56, "AVE_SEI_WriteLuxLevel", 980, v17[3]);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d payloadSize EPB %d", v52, 211, v53, "AVE_SEI_WriteLuxLevel", 980, v54);
        }

        a6 = v50;
      }

      v57 = sub_CFEC0(v17, v19, "AVE_SEI_WriteLuxLevel");
      if (!v57)
      {
        *a7 = v19[3];
        if (sub_160EF0(0xD3u, 7))
        {
          v60 = a6;
          v61 = sub_160F34(0xD3u);
          v62 = sub_175AE4();
          v63 = sub_160F68(7);
          v64 = *a7;
          if (v61)
          {
            printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v62, 211, v63, "AVE_SEI_WriteLuxLevel", 987, v64);
            v65 = sub_175AE4();
            v66 = sub_160F68(7);
            syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v65, 211, v66, "AVE_SEI_WriteLuxLevel", 987, *a7);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v62, 211, v63, "AVE_SEI_WriteLuxLevel", 987, v64);
          }

          a6 = v60;
          v21 = 0;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_56;
      }

      v21 = v57;
      if (sub_160EF0(0xD3u, 4))
      {
        v58 = sub_160F34(0xD3u);
        v72 = sub_175AE4();
        v59 = sub_160F68(4);
        if (v58)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v72, 211, v59, "AVE_SEI_WriteLuxLevel", 984, "(ret) == 0", a1, v21);
          v24 = sub_175AE4();
          v70 = a1;
          v71 = v21;
          v69 = 984;
          v68 = sub_160F68(4);
          goto LABEL_50;
        }

LABEL_55:
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v72, 211);
      }
    }

LABEL_56:
    (*(*v17 + 8))(v17);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    if (v21)
    {
      v25 = 4;
    }

    else
    {
      v25 = 7;
    }

    goto LABEL_27;
  }

  v25 = 4;
  if (sub_160EF0(0xD3u, 4))
  {
    v34 = sub_160F34(0xD3u);
    v35 = sub_175AE4();
    v36 = sub_160F68(4);
    if (v34)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v35, 211, v36, "AVE_SEI_WriteLuxLevel", 955, "pcSyntaxWriter != __null", a1);
      v37 = sub_175AE4();
      v25 = 4;
      v38 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v37, 211, v38, "AVE_SEI_WriteLuxLevel", 955, "pcSyntaxWriter != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v35, 211, v36, "AVE_SEI_WriteLuxLevel", 955, "pcSyntaxWriter != __null", a1);
      v25 = 4;
    }
  }

  v21 = 4294966293;
LABEL_27:
  if (sub_160EF0(0xD3u, v25))
  {
    v39 = sub_160F34(0xD3u);
    v40 = sub_175AE4();
    v41 = sub_160F68(v25);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d %d %d %p %d\n", v40, 211, v41, "AVE_SEI_WriteLuxLevel", a1, a2, a3, a4, a5, a6, a7, v21);
      v42 = sub_175AE4();
      v43 = sub_160F68(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %d %p %d", v42, 211, v43, "AVE_SEI_WriteLuxLevel", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %d %p %d", v40, 211, v41, "AVE_SEI_WriteLuxLevel", a1);
    }
  }

  return v21;
}

uint64_t sub_D3824(const void *a1, int a2, uint64_t a3, int a4, int a5, unsigned int *a6)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v8 = sub_160F34(0xD3u);
    v9 = sub_175AE4();
    v10 = sub_160F68(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %p\n", v9, 211, v10, "AVE_SEI_WriteAccessUnitDelimiter", a1, a2, a3, a4, a5, a6);
      v11 = sub_175AE4();
      v94 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %p", v11, 211, v94);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %p", v9, 211, v10);
    }
  }

  if (a1 && a6)
  {
    v12 = operator new(0x1030uLL, &std::nothrow);
    if (v12)
    {
      v13 = v12;
      sub_172598(v12);
      v14 = operator new(0x1030uLL, &std::nothrow);
      v15 = v14;
      if (v14)
      {
        sub_1725DC(v14, a1, a2, 0);
        v16 = sub_1727F8(v15);
        if (!v16)
        {
          if (sub_160EF0(0xD3u, 8))
          {
            v37 = sub_160F34(0xD3u);
            v38 = sub_175AE4();
            v39 = sub_160F68(8);
            v40 = *(v15 + 12);
            v41 = *(v15 + 32) + v40;
            if (v37)
            {
              printf("%lld %d AVE %s: %s:%d nal_unit_type %p (%d)\n", v38, 211, v39, "AVE_SEI_WriteAccessUnitDelimiter", 1050, (*(v15 + 32) + v40), v40);
              v42 = sub_175AE4();
              sub_160F68(8);
              v43 = *(v15 + 32) + *(v15 + 12);
              syslog(3, "%lld %d AVE %s: %s:%d nal_unit_type %p (%d)", v42);
            }

            else
            {
              v96 = *(v15 + 32) + v40;
              syslog(3, "%lld %d AVE %s: %s:%d nal_unit_type %p (%d)", v38);
            }
          }

          if (a4 == 2)
          {
            v44 = sub_1727D0(v15, 17921, 16);
            if (v44)
            {
              v17 = v44;
              if (!sub_160EF0(0xD3u, 4))
              {
                goto LABEL_48;
              }

              v18 = a5;
              v45 = sub_160F34(0xD3u);
              v20 = sub_175AE4();
              v46 = sub_160F68(4);
              if (v45)
              {
                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v46, "AVE_SEI_WriteAccessUnitDelimiter", 1055, "(ret) == 0", a1, v17);
                v22 = sub_175AE4();
                sub_160F68(4);
                goto LABEL_13;
              }

LABEL_31:
              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v20, 211);
              goto LABEL_33;
            }

            if (sub_160EF0(0xD3u, 8))
            {
              v51 = sub_160F34(0xD3u);
              v52 = sub_175AE4();
              v53 = sub_160F68(8);
              v54 = *(v15 + 32) + *(v15 + 12);
              v55 = *(v54 - 2);
              v56 = *(v54 - 1);
              if (v51)
              {
                printf("%lld %d AVE %s: %s:%d NUT %0x %0x\n", v52, 211, v53, "AVE_SEI_WriteAccessUnitDelimiter", 1059, v55, v56);
                v57 = sub_175AE4();
                sub_160F68(8);
                v58 = *(v15 + 32) + *(v15 + 12);
                v97 = *(v58 - 2);
                v101 = *(v58 - 1);
                syslog(3, "%lld %d AVE %s: %s:%d NUT %0x %0x", v57);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d NUT %0x %0x", v52);
              }
            }

            v64 = (a5 - 1);
            if (v64 < 3)
            {
              v65 = sub_1727D0(v13, v64, 3);
              if (v65)
              {
                v17 = v65;
                if (!sub_160EF0(0xD3u, 4))
                {
                  goto LABEL_48;
                }

                v18 = a5;
                v66 = sub_160F34(0xD3u);
                v20 = sub_175AE4();
                v67 = sub_160F68(4);
                if (v66)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v67, "AVE_SEI_WriteAccessUnitDelimiter", 1089, "(ret) == 0", a1, v17);
                  v22 = sub_175AE4();
                  sub_160F68(4);
                  goto LABEL_13;
                }
              }

              else if (v13[2] && (v72 = sub_172978(v13), v72))
              {
                v17 = v72;
                if (!sub_160EF0(0xD3u, 4))
                {
                  goto LABEL_48;
                }

                v18 = a5;
                v73 = sub_160F34(0xD3u);
                v20 = sub_175AE4();
                v74 = sub_160F68(4);
                if (v73)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v74, "AVE_SEI_WriteAccessUnitDelimiter", 1095, "(ret) == 0", a1, v17);
                  v22 = sub_175AE4();
                  sub_160F68(4);
                  goto LABEL_13;
                }
              }

              else
              {
                if (sub_160EF0(0xD3u, 8))
                {
                  v75 = sub_160F34(0xD3u);
                  v76 = sub_175AE4();
                  v77 = sub_160F68(8);
                  if (v75)
                  {
                    printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v76, 211, v77, "AVE_SEI_WriteAccessUnitDelimiter", 1099, v13[2] + 8 * v13[3], (v13[2] + 8 * v13[3]) >> 3);
                    v78 = sub_175AE4();
                    sub_160F68(8);
                    v98 = (v13[2] + 8 * v13[3]);
                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v78);
                  }

                  else
                  {
                    v99 = (v13[2] + 8 * v13[3]);
                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v76);
                  }
                }

                v79 = sub_1728F4(v15, v13);
                if (!v79)
                {
                  v17 = sub_172978(v15);
                  if (sub_160EF0(0xD3u, 8))
                  {
                    v82 = a5;
                    v83 = sub_160F34(0xD3u);
                    v84 = sub_175AE4();
                    v85 = sub_160F68(8);
                    v86 = *(v15 + 12);
                    v87 = *(v15 + 32) + v86;
                    if (v83)
                    {
                      printf("%lld %d AVE %s: %s:%d rbsp_trailing_bits %p (%d)\n", v84, 211, v85, "AVE_SEI_WriteAccessUnitDelimiter", 1109, (*(v15 + 32) + v86), v86);
                      v88 = sub_175AE4();
                      sub_160F68(8);
                      v89 = *(v15 + 32) + *(v15 + 12);
                      syslog(3, "%lld %d AVE %s: %s:%d rbsp_trailing_bits %p (%d)", v88);
                    }

                    else
                    {
                      v100 = *(v15 + 32) + v86;
                      syslog(3, "%lld %d AVE %s: %s:%d rbsp_trailing_bits %p (%d)", v84);
                    }

                    a5 = v82;
                  }

                  *a6 = *(v15 + 12);
                  if (!sub_160EF0(0xD3u, 7))
                  {
                    goto LABEL_48;
                  }

                  v18 = a5;
                  v90 = sub_160F34(0xD3u);
                  v91 = sub_175AE4();
                  v92 = sub_160F68(7);
                  if (v90)
                  {
                    printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v91, 211, v92, "AVE_SEI_WriteAccessUnitDelimiter", 1112, *a6);
                    sub_175AE4();
                    sub_160F68(7);
                    v93 = *a6;
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d");
                  goto LABEL_33;
                }

                v17 = v79;
                if (!sub_160EF0(0xD3u, 4))
                {
                  goto LABEL_48;
                }

                v18 = a5;
                v80 = sub_160F34(0xD3u);
                v20 = sub_175AE4();
                v81 = sub_160F68(4);
                if (v80)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v81, "AVE_SEI_WriteAccessUnitDelimiter", 1103, "(ret) == 0", a1, v17);
                  v22 = sub_175AE4();
                  sub_160F68(4);
                  goto LABEL_13;
                }
              }

              goto LABEL_31;
            }

            if (sub_160EF0(0xD3u, 4))
            {
              v68 = sub_160F34(0xD3u);
              v69 = sub_175AE4();
              v70 = sub_160F68(4);
              if (v68)
              {
                printf("%lld %d AVE %s: %s:%d %s | ERROR: FrameType NOT RECOGNIZED = %d. FAIL %p\n", v69, 211, v70, "AVE_SEI_WriteAccessUnitDelimiter", 1084, "false", a5, a1);
                v71 = sub_175AE4();
                sub_160F68(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR: FrameType NOT RECOGNIZED = %d. FAIL %p", v71, 211);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR: FrameType NOT RECOGNIZED = %d. FAIL %p", v69, 211);
              }

              v17 = 4294966295;
              goto LABEL_48;
            }
          }

          else if (sub_160EF0(0xD3u, 4))
          {
            v47 = sub_160F34(0xD3u);
            v48 = sub_175AE4();
            v49 = sub_160F68(4);
            if (v47)
            {
              printf("%lld %d AVE %s: %s:%d %s | encType %d not recognized. FAIL %p\n", v48, 211, v49, "AVE_SEI_WriteAccessUnitDelimiter", 1064, "false", a4, a1);
              v50 = sub_175AE4();
              sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not recognized. FAIL %p", v50, 211);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not recognized. FAIL %p", v48, 211);
            }
          }

          v17 = 4294966295;
          goto LABEL_48;
        }

        v17 = v16;
        if (sub_160EF0(0xD3u, 4))
        {
          v18 = a5;
          v19 = sub_160F34(0xD3u);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          if (v19)
          {
            printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v21, "AVE_SEI_WriteAccessUnitDelimiter", 1047, "(ret) == 0", a1, v17);
            v22 = sub_175AE4();
            sub_160F68(4);
LABEL_13:
            syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v22, 211);
LABEL_33:
            a5 = v18;
            goto LABEL_48;
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (sub_160EF0(0xD3u, 4))
        {
          v18 = a5;
          v34 = sub_160F34(0xD3u);
          v35 = sub_175AE4();
          v36 = sub_160F68(4);
          if (v34)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v35, 211, v36, "AVE_SEI_WriteAccessUnitDelimiter", 1043, "pcSyntaxWriter_NALU != __null", a1);
            v35 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v35);
          v17 = 4294966293;
          goto LABEL_33;
        }

        v17 = 4294966293;
      }

LABEL_48:
      (*(*v13 + 8))(v13);
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      if (v17)
      {
        v23 = 4;
      }

      else
      {
        v23 = 7;
      }

      goto LABEL_53;
    }

    v23 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v29 = sub_160F34(0xD3u);
      v30 = sub_175AE4();
      v31 = sub_160F68(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v30, 211, v31, "AVE_SEI_WriteAccessUnitDelimiter", 1039, "pcSyntaxWriter != __null", a1);
        v32 = sub_175AE4();
        v23 = 4;
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v32, 211, v33, "AVE_SEI_WriteAccessUnitDelimiter", 1039, "pcSyntaxWriter != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v30, 211, v31, "AVE_SEI_WriteAccessUnitDelimiter", 1039, "pcSyntaxWriter != __null", a1);
        v23 = 4;
      }
    }

    v17 = 4294966293;
  }

  else
  {
    v23 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v24 = sub_160F34(0xD3u);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v25, 211, v26, "AVE_SEI_WriteAccessUnitDelimiter", 1035, "pBuf != __null && pSEISize != __null", a1, a6);
        v27 = sub_175AE4();
        v23 = 4;
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v27, 211, v28, "AVE_SEI_WriteAccessUnitDelimiter", 1035, "pBuf != __null && pSEISize != __null", a1, a6);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v25, 211, v26, "AVE_SEI_WriteAccessUnitDelimiter", 1035, "pBuf != __null && pSEISize != __null", a1, a6);
        v23 = 4;
      }
    }

    v17 = 4294966295;
  }

LABEL_53:
  if (sub_160EF0(0xD3u, v23))
  {
    v59 = sub_160F34(0xD3u);
    v60 = sub_175AE4();
    v61 = sub_160F68(v23);
    if (v59)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d\n", v60, 211, v61, "AVE_SEI_WriteAccessUnitDelimiter", a1, a2, a3, a4, a5, a6, v17);
      v62 = sub_175AE4();
      v95 = sub_160F68(v23);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d", v62, 211, v95, "AVE_SEI_WriteAccessUnitDelimiter");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d", v60, 211, v61, "AVE_SEI_WriteAccessUnitDelimiter");
    }
  }

  return v17;
}

uint64_t sub_D4884(const void *a1, int a2, int a3, uint64_t a4, int a5, int *a6)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v10 = sub_160F34(0xD3u);
    v11 = sub_175AE4();
    v12 = sub_160F68(7);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %lld %d %p\n", v11, 211, v12, "AVE_SEI_WriteActiveParameterSets", a1, a2, a3, a4, a5, a6);
      v13 = sub_175AE4();
      v72 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %lld %d %p", v13, 211, v72, "AVE_SEI_WriteActiveParameterSets");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %lld %d %p", v11, 211, v12, "AVE_SEI_WriteActiveParameterSets");
    }
  }

  if (!a1 || !a6)
  {
    v22 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v23 = sub_160F34(0xD3u);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (!v23)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v24, 211);
        goto LABEL_25;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v24, 211, v25, "AVE_SEI_WriteActiveParameterSets", 1166, "pBuf != __null && pSEISize != __null", a1, a6);
      v26 = sub_175AE4();
      v22 = 4;
      sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v26, 211);
    }

LABEL_26:
    v36 = 4294966295;
    goto LABEL_27;
  }

  if (a5 != 2)
  {
    v22 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v27 = sub_160F34(0xD3u);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v28, 211, v29, "AVE_SEI_WriteActiveParameterSets", 1169, "encType == AVE_EncType_HEVC", a5, a1);
        v30 = sub_175AE4();
        v22 = 4;
        sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v30, 211);
        goto LABEL_26;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v28, 211);
LABEL_25:
      v22 = 4;
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v14 = operator new(0x1030uLL, &std::nothrow);
  if (v14)
  {
    v15 = v14;
    sub_172598(v14);
    v16 = operator new(0x1030uLL, &std::nothrow);
    v17 = v16;
    if (!v16)
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v43 = sub_160F34(0xD3u);
        v44 = sub_175AE4();
        v45 = sub_160F68(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v44, 211, v45, "AVE_SEI_WriteActiveParameterSets", 1177, "pcSyntaxWriter_NALU != __null", a1);
          v44 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v44);
      }

      v83 = 4294966293;
      goto LABEL_76;
    }

    sub_1725DC(v16, a1, a2, 0);
    v83 = sub_CED64(v17, 2, 129, "AVE_SEI_WriteActiveParameterSets");
    if (v83)
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v18 = sub_160F34(0xD3u);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v20, "AVE_SEI_WriteActiveParameterSets", 1181, "(ret) == 0", a1, v83);
          v21 = sub_175AE4();
          v77 = a1;
          v79 = v83;
          v74 = 1181;
          v73 = sub_160F68(4);
LABEL_65:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v21, 211, v73, "AVE_SEI_WriteActiveParameterSets", v74, "(ret) == 0", v77, v79);
          goto LABEL_76;
        }

LABEL_75:
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v19, 211);
        goto LABEL_76;
      }

      goto LABEL_76;
    }

    v83 = sub_1727D0(v15, 0, 4);
    if (v83)
    {
      if (!sub_160EF0(0xD3u, 4))
      {
        goto LABEL_76;
      }

      v46 = sub_160F34(0xD3u);
      v19 = sub_175AE4();
      v47 = sub_160F68(4);
      if (!v46)
      {
        goto LABEL_75;
      }

      v81 = v17;
      v48 = v83;
      v80 = v83;
      v49 = a1;
      v78 = a1;
      v82 = a5;
      v50 = a3;
      v51 = 1185;
    }

    else
    {
      v83 = sub_17262C(v15, 1);
      if (v83)
      {
        if (!sub_160EF0(0xD3u, 4))
        {
          goto LABEL_76;
        }

        v52 = sub_160F34(0xD3u);
        v19 = sub_175AE4();
        v47 = sub_160F68(4);
        if (!v52)
        {
          goto LABEL_75;
        }

        v81 = v17;
        v48 = v83;
        v80 = v83;
        v49 = a1;
        v78 = a1;
        v82 = a5;
        v50 = a3;
        v51 = 1187;
      }

      else
      {
        v83 = sub_17262C(v15, 1);
        if (v83)
        {
          if (!sub_160EF0(0xD3u, 4))
          {
            goto LABEL_76;
          }

          v53 = sub_160F34(0xD3u);
          v19 = sub_175AE4();
          v47 = sub_160F68(4);
          if (!v53)
          {
            goto LABEL_75;
          }

          v81 = v17;
          v48 = v83;
          v80 = v83;
          v49 = a1;
          v78 = a1;
          v82 = a5;
          v50 = a3;
          v51 = 1189;
        }

        else
        {
          v83 = sub_1727D4(v15, 0);
          if (v83)
          {
            if (!sub_160EF0(0xD3u, 4))
            {
              goto LABEL_76;
            }

            v54 = sub_160F34(0xD3u);
            v19 = sub_175AE4();
            v47 = sub_160F68(4);
            if (!v54)
            {
              goto LABEL_75;
            }

            v81 = v17;
            v48 = v83;
            v80 = v83;
            v49 = a1;
            v78 = a1;
            v82 = a5;
            v50 = a3;
            v51 = 1191;
          }

          else
          {
            v83 = sub_1727D4(v15, a3);
            if (!v83)
            {
              if (v15[2])
              {
                v83 = sub_172978(v15);
                if (v83)
                {
                  if (!sub_160EF0(0xD3u, 4))
                  {
                    goto LABEL_76;
                  }

                  v56 = sub_160F34(0xD3u);
                  v19 = sub_175AE4();
                  v57 = sub_160F68(4);
                  if (v56)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v57, "AVE_SEI_WriteActiveParameterSets", 1199, "(ret) == 0", a1, v83);
                    v58 = sub_175AE4();
                    sub_160F68(4);
                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v58, 211);
                    goto LABEL_76;
                  }

                  goto LABEL_75;
                }
              }

              if (sub_160EF0(0xD3u, 8))
              {
                v59 = sub_160F34(0xD3u);
                v60 = sub_175AE4();
                v61 = sub_160F68(8);
                if (v59)
                {
                  printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v60, 211, v61, "AVE_SEI_WriteActiveParameterSets", 1203, v15[2] + 8 * v15[3], (v15[2] + 8 * v15[3]) >> 3);
                  v62 = sub_175AE4();
                  sub_160F68(8);
                  v75 = (v15[2] + 8 * v15[3]);
                  syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v62);
                }

                else
                {
                  v76 = (v15[2] + 8 * v15[3]);
                  syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v60);
                }
              }

              v83 = sub_CFEC0(v15, v17, "AVE_SEI_WriteActiveParameterSets");
              if (!v83)
              {
                *a6 = v17[3];
                if (sub_160EF0(0xD3u, 7))
                {
                  v66 = sub_160F34(0xD3u);
                  v67 = sub_175AE4();
                  v68 = sub_160F68(7);
                  v69 = *a6;
                  if (v66)
                  {
                    printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v67, 211, v68, "AVE_SEI_WriteActiveParameterSets", 1209, v69);
                    v70 = sub_175AE4();
                    v71 = sub_160F68(7);
                    syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v70, 211, v71, "AVE_SEI_WriteActiveParameterSets", 1209, *a6);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v67, 211, v68, "AVE_SEI_WriteActiveParameterSets", 1209, v69);
                  }
                }

                v83 = 0;
                goto LABEL_76;
              }

              if (sub_160EF0(0xD3u, 4))
              {
                v63 = sub_160F34(0xD3u);
                v19 = sub_175AE4();
                v64 = sub_160F68(4);
                if (v63)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v64, "AVE_SEI_WriteActiveParameterSets", 1206, "(ret) == 0", a1, v83);
                  v65 = sub_175AE4();
                  sub_160F68(4);
                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v65, 211);
                  goto LABEL_76;
                }

                goto LABEL_75;
              }

LABEL_76:
              (*(*v15 + 8))(v15);
              if (v17)
              {
                (*(*v17 + 8))(v17);
              }

              v36 = v83;
              if (v83)
              {
                v22 = 4;
              }

              else
              {
                v22 = 7;
              }

              goto LABEL_27;
            }

            if (!sub_160EF0(0xD3u, 4))
            {
              goto LABEL_76;
            }

            v55 = sub_160F34(0xD3u);
            v19 = sub_175AE4();
            v47 = sub_160F68(4);
            if (!v55)
            {
              goto LABEL_75;
            }

            v81 = v17;
            v48 = v83;
            v80 = v83;
            v49 = a1;
            v78 = a1;
            v82 = a5;
            v50 = a3;
            v51 = 1193;
          }
        }
      }
    }

    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v47, "AVE_SEI_WriteActiveParameterSets", v51, "(ret) == 0", v78, v80);
    v21 = sub_175AE4();
    v77 = v49;
    v79 = v48;
    v74 = v51;
    a3 = v50;
    v17 = v81;
    a5 = v82;
    v73 = sub_160F68(4);
    goto LABEL_65;
  }

  v22 = 4;
  if (sub_160EF0(0xD3u, 4))
  {
    v31 = sub_160F34(0xD3u);
    v32 = sub_175AE4();
    v33 = sub_160F68(4);
    if (v31)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v32, 211, v33, "AVE_SEI_WriteActiveParameterSets", 1173, "pcSyntaxWriter != __null", a1);
      v34 = sub_175AE4();
      v22 = 4;
      v35 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v34, 211, v35, "AVE_SEI_WriteActiveParameterSets", 1173, "pcSyntaxWriter != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v32, 211, v33, "AVE_SEI_WriteActiveParameterSets", 1173, "pcSyntaxWriter != __null", a1);
      v22 = 4;
    }
  }

  v36 = 4294966293;
LABEL_27:
  if (sub_160EF0(0xD3u, v22))
  {
    v37 = sub_160F34(0xD3u);
    v38 = sub_175AE4();
    v39 = sub_160F68(v22);
    if (v37)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %lld %d %p %d\n", v38, 211, v39, "AVE_SEI_WriteActiveParameterSets", a1, a2, a3, a4, a5, a6, v36);
      v40 = sub_175AE4();
      v41 = sub_160F68(v22);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %lld %d %p %d", v40, 211, v41, "AVE_SEI_WriteActiveParameterSets", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %lld %d %p %d", v38, 211, v39, "AVE_SEI_WriteActiveParameterSets", a1);
    }
  }

  return v36;
}

uint64_t sub_D5818(const void *a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int *a9)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v13 = sub_160F34(0xD3u);
    v14 = sub_175AE4();
    v15 = sub_160F68(7);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %u %d %d %p\n", v14, 211, v15, "AVE_SEI_WritePictureTiming", a1, a2, a3, a4, a5, a6, a7, a8, a9);
      v16 = sub_175AE4();
      v91 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %u %d %d %p", v16, 211, v91, "AVE_SEI_WritePictureTiming", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %u %d %d %p", v14, 211, v15, "AVE_SEI_WritePictureTiming", a1);
    }
  }

  if (!a1 || !a9)
  {
    v29 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v30 = sub_160F34(0xD3u);
      v31 = sub_175AE4();
      v32 = sub_160F68(4);
      if (!v30)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v31, 211);
        goto LABEL_34;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v31, 211, v32, "AVE_SEI_WritePictureTiming", 1267, "pBuf != __null && pSEISize != __null", a1, a9);
      v33 = sub_175AE4();
      v29 = 4;
      sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v33, 211);
    }

LABEL_35:
    v24 = 4294966295;
    goto LABEL_36;
  }

  if (a4 != 2)
  {
    v29 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v34 = sub_160F34(0xD3u);
      v35 = sub_175AE4();
      v36 = sub_160F68(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v35, 211, v36, "AVE_SEI_WritePictureTiming", 1270, "encType == AVE_EncType_HEVC", a4, a1);
        v37 = sub_175AE4();
        v29 = 4;
        sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v37, 211);
        goto LABEL_35;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v35, 211);
LABEL_34:
      v29 = 4;
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  v17 = operator new(0x1030uLL, &std::nothrow);
  if (v17)
  {
    v18 = v17;
    sub_172598(v17);
    v19 = operator new(0x1030uLL, &std::nothrow);
    v20 = v19;
    if (!v19)
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v48 = sub_160F34(0xD3u);
        v49 = sub_175AE4();
        v50 = sub_160F68(4);
        if (v48)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v49, 211, v50, "AVE_SEI_WritePictureTiming", 1279, "pcSyntaxWriter_NALU != __null", a1);
          v51 = sub_175AE4();
          sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v51);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v49);
        }
      }

      v24 = 4294966293;
      goto LABEL_74;
    }

    sub_1725DC(v19, a1, a2, 0);
    if (dword_20C9A8 == dword_20C9AC)
    {
      v21 = 0;
    }

    else
    {
      v21 = (dword_20C9A8 + ~dword_20C9AC);
    }

    if (a5)
    {
      v22 = (a6 - dword_20C9A8 + 2);
    }

    else
    {
      v22 = 0;
    }

    if (a7 == 1 || a8 == 21)
    {
      dword_20C9AC = dword_20C9A8;
    }

    ++dword_20C9A8;
    v23 = sub_CED64(v20, 2, 1, "AVE_SEI_WritePictureTiming");
    if (v23)
    {
      v24 = v23;
      if (sub_160EF0(0xD3u, 4))
      {
        v25 = sub_160F34(0xD3u);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v26, 211, v27, "AVE_SEI_WritePictureTiming", 1304, "(ret) == 0", a1, v24);
          v28 = sub_175AE4();
          v99 = a1;
          v100 = v24;
          v94 = 1304;
          v92 = sub_160F68(4);
LABEL_63:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v28, 211, v92, "AVE_SEI_WritePictureTiming", v94, "(ret) == 0", v99, v100);
          goto LABEL_74;
        }

LABEL_73:
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v26, 211);
      }

LABEL_74:
      (*(*v18 + 8))(v18);
      if (v20)
      {
        (*(*v20 + 8))(v20);
      }

      if (v24)
      {
        v29 = 4;
      }

      else
      {
        v29 = 7;
      }

      goto LABEL_36;
    }

    if (sub_160EF0(0xD3u, 8))
    {
      v52 = v21;
      v53 = sub_160F34(0xD3u);
      v54 = sub_175AE4();
      v55 = sub_160F68(8);
      v56 = *(v20 + 12);
      v57 = *(v20 + 32) + v56;
      if (v53)
      {
        printf("%lld %d AVE %s: %s:%d payloadType %p (%d)\n", v54, 211, v55, "AVE_SEI_WritePictureTiming", 1308, (*(v20 + 32) + v56), v56);
        v58 = sub_175AE4();
        sub_160F68(8);
        v95 = *(v20 + 32) + *(v20 + 12);
        syslog(3, "%lld %d AVE %s: %s:%d payloadType %p (%d)", v58);
      }

      else
      {
        v96 = *(v20 + 32) + v56;
        syslog(3, "%lld %d AVE %s: %s:%d payloadType %p (%d)", v54);
      }

      v21 = v52;
    }

    v59 = sub_1727D0(v18, v21, 24);
    if (v59)
    {
      v24 = v59;
      if (!sub_160EF0(0xD3u, 4))
      {
        goto LABEL_74;
      }

      v60 = sub_160F34(0xD3u);
      v26 = sub_175AE4();
      v61 = sub_160F68(4);
      if (!v60)
      {
        goto LABEL_73;
      }

      v62 = v26;
      v63 = v24;
      v64 = a1;
      v65 = a8;
      v66 = a4;
      v67 = a7;
      v68 = 1312;
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v62, 211, v61, "AVE_SEI_WritePictureTiming", 1312, "(ret) == 0", a1, v24);
    }

    else
    {
      v69 = sub_1727D0(v18, v22, 24);
      if (v69)
      {
        v24 = v69;
        if (!sub_160EF0(0xD3u, 4))
        {
          goto LABEL_74;
        }

        v70 = sub_160F34(0xD3u);
        v26 = sub_175AE4();
        v71 = sub_160F68(4);
        if (!v70)
        {
          goto LABEL_73;
        }

        v72 = v26;
        v63 = v24;
        v64 = a1;
        v65 = a8;
        v66 = a4;
        v67 = a7;
        v68 = 1314;
        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v72, 211, v71, "AVE_SEI_WritePictureTiming", 1314, "(ret) == 0", a1, v24);
      }

      else if (v18[2] && (v73 = sub_172978(v18), v73))
      {
        v24 = v73;
        if (!sub_160EF0(0xD3u, 4))
        {
          goto LABEL_74;
        }

        v74 = sub_160F34(0xD3u);
        v26 = sub_175AE4();
        v75 = sub_160F68(4);
        if (!v74)
        {
          goto LABEL_73;
        }

        v76 = v26;
        v63 = v24;
        v64 = a1;
        v65 = a8;
        v66 = a4;
        v67 = a7;
        v68 = 1320;
        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v76, 211, v75, "AVE_SEI_WritePictureTiming", 1320, "(ret) == 0", a1, v24);
      }

      else
      {
        if (sub_160EF0(0xD3u, 8))
        {
          v77 = sub_160F34(0xD3u);
          v78 = sub_175AE4();
          v79 = sub_160F68(8);
          if (v77)
          {
            printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v78, 211, v79, "AVE_SEI_WritePictureTiming", 1324, v18[2] + 8 * v18[3], (v18[2] + 8 * v18[3]) >> 3);
            v80 = sub_175AE4();
            sub_160F68(8);
            v97 = (v18[2] + 8 * v18[3]);
            syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v80);
          }

          else
          {
            v98 = (v18[2] + 8 * v18[3]);
            syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v78);
          }
        }

        v81 = sub_CFEC0(v18, v20, "AVE_SEI_WritePictureTiming");
        if (!v81)
        {
          *a9 = *(v20 + 12);
          if (sub_160EF0(0xD3u, 7))
          {
            v85 = sub_160F34(0xD3u);
            v86 = sub_175AE4();
            v87 = sub_160F68(7);
            v88 = *a9;
            if (v85)
            {
              printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v86, 211, v87, "AVE_SEI_WritePictureTiming", 1330, v88);
              v89 = sub_175AE4();
              v90 = sub_160F68(7);
              syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v89, 211, v90, "AVE_SEI_WritePictureTiming", 1330, *a9);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v86, 211, v87, "AVE_SEI_WritePictureTiming", 1330, v88);
            }
          }

          v24 = 0;
          goto LABEL_74;
        }

        v24 = v81;
        if (!sub_160EF0(0xD3u, 4))
        {
          goto LABEL_74;
        }

        v82 = sub_160F34(0xD3u);
        v26 = sub_175AE4();
        v83 = sub_160F68(4);
        if (!v82)
        {
          goto LABEL_73;
        }

        v84 = v26;
        v63 = v24;
        v64 = a1;
        v65 = a8;
        v66 = a4;
        v67 = a7;
        v68 = 1327;
        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v84, 211, v83, "AVE_SEI_WritePictureTiming", 1327, "(ret) == 0", a1, v24);
      }
    }

    v28 = sub_175AE4();
    v99 = v64;
    v100 = v63;
    v94 = v68;
    a7 = v67;
    a4 = v66;
    a8 = v65;
    v92 = sub_160F68(4);
    goto LABEL_63;
  }

  v29 = 4;
  if (sub_160EF0(0xD3u, 4))
  {
    v38 = sub_160F34(0xD3u);
    v39 = sub_175AE4();
    v40 = sub_160F68(4);
    if (v38)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v39, 211, v40, "AVE_SEI_WritePictureTiming", 1274, "pcSyntaxWriter != __null", a1);
      v41 = sub_175AE4();
      v29 = 4;
      v42 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v41, 211, v42, "AVE_SEI_WritePictureTiming", 1274, "pcSyntaxWriter != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v39, 211, v40, "AVE_SEI_WritePictureTiming", 1274, "pcSyntaxWriter != __null", a1);
      v29 = 4;
    }
  }

  v24 = 4294966293;
LABEL_36:
  if (sub_160EF0(0xD3u, v29))
  {
    v43 = sub_160F34(0xD3u);
    v44 = sub_175AE4();
    v45 = sub_160F68(v29);
    if (v43)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %d %u %d %d %p %d\n", v44, 211, v45, "AVE_SEI_WritePictureTiming", a1, a3, a4, a5, a6, a7, a8, a9, v24);
      v46 = sub_175AE4();
      v93 = sub_160F68(v29);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d %u %d %d %p %d", v46, 211, v93, "AVE_SEI_WritePictureTiming", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d %u %d %d %p %d", v44, 211, v45, "AVE_SEI_WritePictureTiming", a1);
    }
  }

  return v24;
}

uint64_t sub_D6670(void *a1, int a2, uint64_t a3, int a4, const void *a5, int *a6)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %p\n", v13, 211, v14, "AVE_SEI_WriteBufferingPeriod", a1, a2, a3, a4, a5, a6);
      v15 = sub_175AE4();
      v99 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %p", v15, 211, v99);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %p", v13, 211, v14);
    }
  }

  if (!a1 || !a6)
  {
    v25 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v26 = sub_160F34(0xD3u);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        v29 = a3;
        printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v27, 211, v28, "AVE_SEI_WriteBufferingPeriod", 1383, "pBuf != __null && pSEISize != __null", a1, a6);
        v30 = sub_175AE4();
        v25 = 4;
        v105 = a1;
        v106 = a6;
        v101 = 1383;
        v102 = "pBuf != __null && pSEISize != __null";
        v100 = sub_160F68(4);
        v31 = "%lld %d AVE %s: %s:%d %s | invalid args %p %p";
LABEL_20:
        a3 = v29;
        syslog(3, v31, v30, 211, v100, "AVE_SEI_WriteBufferingPeriod", v101, v102, v105, v106);
        goto LABEL_27;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v27, 211);
LABEL_26:
      v25 = 4;
    }

LABEL_27:
    v40 = 4294966295;
    goto LABEL_28;
  }

  if (a5 != 2)
  {
    v25 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v32 = sub_160F34(0xD3u);
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      if (v32)
      {
        v29 = a3;
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v33, 211, v34, "AVE_SEI_WriteBufferingPeriod", 1386, "encType == AVE_EncType_HEVC", a5, a1);
        v30 = sub_175AE4();
        v25 = 4;
        v105 = a5;
        v106 = a1;
        v101 = 1386;
        v102 = "encType == AVE_EncType_HEVC";
        v100 = sub_160F68(4);
        v31 = "%lld %d AVE %s: %s:%d %s | encType %d not supported %p";
        goto LABEL_20;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v33, 211);
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v16 = operator new(0x1030uLL, &std::nothrow);
  if (v16)
  {
    v17 = v16;
    sub_172598(v16);
    v18 = operator new(0x1030uLL, &std::nothrow);
    v19 = v18;
    if (!v18)
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v48 = a6;
        v49 = sub_160F34(0xD3u);
        v50 = sub_175AE4();
        v51 = sub_160F68(4);
        if (!v49)
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v50, 211, v51, "AVE_SEI_WriteBufferingPeriod", 1394, "pcSyntaxWriter_NALU != __null", a1);
          v114 = 4294966293;
          a6 = v48;
          goto LABEL_72;
        }

        a6 = v48;
        printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v50, 211, v51, "AVE_SEI_WriteBufferingPeriod", 1394, "pcSyntaxWriter_NALU != __null", a1);
        v52 = sub_175AE4();
        v53 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v52, 211, v53, "AVE_SEI_WriteBufferingPeriod", 1394, "pcSyntaxWriter_NALU != __null", a1);
      }

      v114 = 4294966293;
      goto LABEL_72;
    }

    sub_1725DC(v18, a1, a2, 0);
    v114 = sub_CED64(v19, 2, 0, "AVE_SEI_WriteBufferingPeriod");
    if (v114)
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v20 = a6;
        v21 = sub_160F34(0xD3u);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v22, 211, v23, "AVE_SEI_WriteBufferingPeriod", 1398, "(ret) == 0", a1, v114);
          v24 = sub_175AE4();
          sub_160F68(4);
          a6 = v20;
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v24, 211);
          goto LABEL_72;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v22, 211, v23, "AVE_SEI_WriteBufferingPeriod", 1398, "(ret) == 0", a1, v114);
LABEL_71:
        a6 = v20;
      }

LABEL_72:
      (*(*v17 + 8))(v17);
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }

      v40 = v114;
      if (v114)
      {
        v25 = 4;
      }

      else
      {
        v25 = 7;
      }

      goto LABEL_28;
    }

    v114 = sub_1727D4(v17, a4);
    if (v114)
    {
      if (!sub_160EF0(0xD3u, 4))
      {
        goto LABEL_72;
      }

      v20 = a6;
      v54 = sub_160F34(0xD3u);
      v55 = sub_175AE4();
      v56 = sub_160F68(4);
      if (!v54)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v55, 211, v56, "AVE_SEI_WriteBufferingPeriod", 1402, "(ret) == 0", a1, v114);
        goto LABEL_71;
      }

      v108 = v20;
      v57 = v19;
      v58 = a5;
      v59 = a4;
      v60 = a2;
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v55, 211, v56, "AVE_SEI_WriteBufferingPeriod", 1402, "(ret) == 0", a1, v114);
      v61 = sub_175AE4();
      sub_160F68(4);
      a6 = v108;
LABEL_64:
      a2 = v60;
      a4 = v59;
      LODWORD(a5) = v58;
      v19 = v57;
      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v61, 211);
      goto LABEL_72;
    }

    v114 = sub_17262C(v17, 0);
    if (v114)
    {
      if (!sub_160EF0(0xD3u, 4))
      {
        goto LABEL_72;
      }

      v20 = a6;
      v62 = sub_160F34(0xD3u);
      v63 = sub_175AE4();
      v64 = sub_160F68(4);
      if (!v62)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v63, 211, v64, "AVE_SEI_WriteBufferingPeriod", 1404, "(ret) == 0", a1, v114);
        goto LABEL_71;
      }

      v109 = v20;
      v57 = v19;
      v58 = a5;
      v59 = a4;
      v60 = a2;
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v63, 211, v64, "AVE_SEI_WriteBufferingPeriod", 1404, "(ret) == 0", a1, v114);
      v61 = sub_175AE4();
      sub_160F68(4);
      a6 = v109;
      goto LABEL_64;
    }

    v114 = sub_17262C(v17, 0);
    if (v114)
    {
      if (!sub_160EF0(0xD3u, 4))
      {
        goto LABEL_72;
      }

      v20 = a6;
      v65 = sub_160F34(0xD3u);
      v66 = sub_175AE4();
      v67 = sub_160F68(4);
      if (!v65)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v66, 211, v67, "AVE_SEI_WriteBufferingPeriod", 1406, "(ret) == 0", a1, v114);
        goto LABEL_71;
      }

      v110 = v20;
      v57 = v19;
      v58 = a5;
      v59 = a4;
      v60 = a2;
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v66, 211, v67, "AVE_SEI_WriteBufferingPeriod", 1406, "(ret) == 0", a1, v114);
      v61 = sub_175AE4();
      sub_160F68(4);
      a6 = v110;
      goto LABEL_64;
    }

    v114 = sub_1727D0(v17, 0, 24);
    if (v114)
    {
      if (!sub_160EF0(0xD3u, 4))
      {
        goto LABEL_72;
      }

      v20 = a6;
      v68 = sub_160F34(0xD3u);
      v69 = sub_175AE4();
      v70 = sub_160F68(4);
      if (!v68)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v69, 211, v70, "AVE_SEI_WriteBufferingPeriod", 1408, "(ret) == 0", a1, v114);
        goto LABEL_71;
      }

      v111 = v20;
      v57 = v19;
      v58 = a5;
      v59 = a4;
      v60 = a2;
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v69, 211, v70, "AVE_SEI_WriteBufferingPeriod", 1408, "(ret) == 0", a1, v114);
      v61 = sub_175AE4();
      sub_160F68(4);
      a6 = v111;
      goto LABEL_64;
    }

    v114 = sub_1727D0(v17, 90000, 24);
    if (v114)
    {
      if (!sub_160EF0(0xD3u, 4))
      {
        goto LABEL_72;
      }

      v20 = a6;
      v71 = sub_160F34(0xD3u);
      v72 = sub_175AE4();
      v73 = sub_160F68(4);
      if (!v71)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v72, 211, v73, "AVE_SEI_WriteBufferingPeriod", 1410, "(ret) == 0", a1, v114);
        goto LABEL_71;
      }

      v112 = v20;
      v57 = v19;
      v58 = a5;
      v59 = a4;
      v60 = a2;
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v72, 211, v73, "AVE_SEI_WriteBufferingPeriod", 1410, "(ret) == 0", a1, v114);
      v61 = sub_175AE4();
      sub_160F68(4);
      a6 = v112;
      goto LABEL_64;
    }

    v114 = sub_1727D0(v17, 0, 24);
    if (v114)
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v107 = v19;
        v74 = a5;
        v75 = a2;
        v76 = a6;
        v77 = sub_160F34(0xD3u);
        v78 = sub_175AE4();
        v79 = sub_160F68(4);
        if (v77)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v78, 211, v79, "AVE_SEI_WriteBufferingPeriod", 1412, "(ret) == 0", a1, v114);
          v80 = sub_175AE4();
          sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v80, 211);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v78, 211);
        }

        a6 = v76;
        a2 = v75;
        LODWORD(a5) = v74;
        v19 = v107;
      }

      goto LABEL_72;
    }

    v113 = a4;
    v81 = a3;
    v82 = a6;
    if (v17[2] && (v114 = sub_172978(v17), v114))
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v83 = sub_160F34(0xD3u);
        v84 = sub_175AE4();
        v85 = sub_160F68(4);
        if (v83)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v84, 211, v85, "AVE_SEI_WriteBufferingPeriod", 1418, "(ret) == 0", a1, v114);
          v86 = sub_175AE4();
          sub_160F68(4);
LABEL_92:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v86, 211);
          goto LABEL_99;
        }

        goto LABEL_96;
      }
    }

    else
    {
      if (sub_160EF0(0xD3u, 8))
      {
        v87 = sub_160F34(0xD3u);
        v88 = sub_175AE4();
        v89 = sub_160F68(8);
        if (v87)
        {
          printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v88, 211, v89, "AVE_SEI_WriteBufferingPeriod", 1422, v17[2] + 8 * v17[3], (v17[2] + 8 * v17[3]) >> 3);
          v90 = sub_175AE4();
          sub_160F68(8);
          v103 = (v17[2] + 8 * v17[3]);
          syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v90);
        }

        else
        {
          v104 = (v17[2] + 8 * v17[3]);
          syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v88);
        }
      }

      v114 = sub_CFEC0(v17, v19, "AVE_SEI_WriteBufferingPeriod");
      if (v114)
      {
        if (sub_160EF0(0xD3u, 4))
        {
          v91 = sub_160F34(0xD3u);
          v84 = sub_175AE4();
          v92 = sub_160F68(4);
          if (v91)
          {
            printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v84, 211, v92, "AVE_SEI_WriteBufferingPeriod", 1425, "(ret) == 0", a1, v114);
            v86 = sub_175AE4();
            sub_160F68(4);
            goto LABEL_92;
          }

LABEL_96:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v84, 211);
        }
      }

      else
      {
        *a6 = v19[3];
        if (sub_160EF0(0xD3u, 7))
        {
          v93 = sub_160F34(0xD3u);
          v94 = sub_175AE4();
          v95 = sub_160F68(7);
          v96 = *v82;
          if (v93)
          {
            printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v94, 211, v95, "AVE_SEI_WriteBufferingPeriod", 1428, v96);
            v97 = sub_175AE4();
            v98 = sub_160F68(7);
            a6 = v82;
            syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v97, 211, v98, "AVE_SEI_WriteBufferingPeriod", 1428, *v82);
            v114 = 0;
LABEL_100:
            a3 = v81;
            a4 = v113;
            goto LABEL_72;
          }

          syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v94, 211, v95, "AVE_SEI_WriteBufferingPeriod", 1428, v96);
        }

        v114 = 0;
      }
    }

LABEL_99:
    a6 = v82;
    goto LABEL_100;
  }

  v25 = 4;
  if (sub_160EF0(0xD3u, 4))
  {
    v35 = sub_160F34(0xD3u);
    v36 = sub_175AE4();
    v37 = sub_160F68(4);
    if (v35)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v36, 211, v37, "AVE_SEI_WriteBufferingPeriod", 1390, "pcSyntaxWriter != __null", a1);
      v38 = sub_175AE4();
      v25 = 4;
      v39 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v38, 211, v39, "AVE_SEI_WriteBufferingPeriod", 1390, "pcSyntaxWriter != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v36, 211, v37, "AVE_SEI_WriteBufferingPeriod", 1390, "pcSyntaxWriter != __null", a1);
      v25 = 4;
    }
  }

  v40 = 4294966293;
LABEL_28:
  if (sub_160EF0(0xD3u, v25))
  {
    v41 = a6;
    v42 = sub_160F34(0xD3u);
    v43 = sub_175AE4();
    v44 = sub_160F68(v25);
    if (v42)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d\n", v43, 211, v44, "AVE_SEI_WriteBufferingPeriod", a1, a2, a3, a4, a5, v41, v40);
      v45 = sub_175AE4();
      v46 = sub_160F68(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d", v45, 211, v46, "AVE_SEI_WriteBufferingPeriod");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d", v43, 211, v44, "AVE_SEI_WriteBufferingPeriod");
    }
  }

  return v40;
}

double sub_D7838(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_D784C(uint64_t *a1)
{
  v2 = *a1;
  if (sub_160EF0(0x13u, 6))
  {
    v3 = sub_160F34(0x13u);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v4, 19, v5, "AVE_VCP", "Uninit", a1, v2);
      v4 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v4);
  }

  kdebug_trace();
  v6 = a1[3];
  if (v6)
  {
    if (a1[4])
    {
      v7 = dlsym(v6, "VCPAVEContextRelease");
      if (v7)
      {
        v7(a1[4]);
      }

      else if (sub_160EF0(0x13u, 5))
      {
        v8 = sub_160F34(0x13u);
        v9 = sub_175AE4();
        v10 = sub_160F68(5);
        v11 = *a1;
        v12 = dlerror();
        if (v8)
        {
          printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld | %s\n", v9, 19, v10, "AVE_VCP", "Uninit", 160, a1, v11, v12);
          v9 = sub_175AE4();
          v10 = sub_160F68(5);
          v13 = *a1;
          dlerror();
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld | %s", v9, 19, v10);
      }
    }

    dlclose(a1[3]);
  }

  a1[8] = 0;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  kdebug_trace();
  if (sub_160EF0(0x13u, 6))
  {
    v14 = sub_160F34(0x13u);
    v15 = sub_175AE4();
    v16 = sub_160F68(6);
    if (v14)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v15, 19, v16, "AVE_VCP", "Uninit", a1, v2, 0);
      v15 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v15, 19);
  }

  return 0;
}

uint64_t sub_D7B88(uint64_t a1)
{
  sub_D784C(a1);
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_D7BC4(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (sub_160EF0(0x13u, 6))
  {
    v10 = sub_160F34(0x13u);
    v11 = sub_175AE4();
    v12 = sub_160F68(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d\n", v11, 19, v12, "AVE_VCP", "Init", a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v54 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", v13, 19, v54);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", v11, 19, v12);
    }
  }

  kdebug_trace();
  v14 = dword_1835A8[a3];
  v15 = dlopen("/System/Library/PrivateFrameworks/VideoProcessing.framework/VideoProcessing", 1);
  a1[3] = v15;
  if (v15)
  {
    v16 = dlsym(v15, "VCPAVEContextCreate");
    if (v16)
    {
      v17 = v16(v14, a4, a5);
      a1[4] = v17;
      if (!v17 && sub_160EF0(0x13u, 5))
      {
        v18 = sub_160F34(0x13u);
        v19 = sub_175AE4();
        v20 = sub_160F68(5);
        if (v18)
        {
          printf("%lld %d AVE %s: %s::%s:%d VCP context create fail %p %lld %d %d %d\n", v19, 19, v20, "AVE_VCP", "Init", 81, a1, a2, a3, a4, a5);
          v19 = sub_175AE4();
          v55 = sub_160F68(5);
        }

        else
        {
          v55 = v20;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d VCP context create fail %p %lld %d %d %d", v19, 19, v55, "AVE_VCP");
      }
    }

    else if (sub_160EF0(0x13u, 5))
    {
      v25 = sub_160F34(0x13u);
      v26 = sub_175AE4();
      v27 = sub_160F68(5);
      v28 = dlerror();
      if (v25)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v26, 19, v27, "AVE_VCP", "Init", 73, a1, a2, a3, a4, a5, v28);
        v26 = sub_175AE4();
        v27 = sub_160F68(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v26, 19, v27, "AVE_VCP", "Init");
    }

    v29 = dlsym(a1[3], "VCPCompressionAllocateDPB");
    a1[5] = v29;
    if (!v29 && sub_160EF0(0x13u, 5))
    {
      v30 = sub_160F34(0x13u);
      v31 = sub_175AE4();
      v32 = sub_160F68(5);
      v33 = dlerror();
      if (v30)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v31, 19, v32, "AVE_VCP", "Init", 90, a1, a2, a3, a4, a5, v33);
        v31 = sub_175AE4();
        v32 = sub_160F68(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v31, 19, v32, "AVE_VCP", "Init");
    }

    v34 = dlsym(a1[3], "VCPAVEScaleReferenceFrames");
    a1[6] = v34;
    if (!v34 && sub_160EF0(0x13u, 5))
    {
      v35 = sub_160F34(0x13u);
      v36 = sub_175AE4();
      v37 = sub_160F68(5);
      v38 = dlerror();
      if (v35)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v36, 19, v37, "AVE_VCP", "Init", 98, a1, a2, a3, a4, a5, v38);
        v36 = sub_175AE4();
        v37 = sub_160F68(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v36, 19, v37, "AVE_VCP", "Init");
    }

    v39 = dlsym(a1[3], "VCPAVEExtraInloopChromaFilter");
    a1[7] = v39;
    if (!v39 && sub_160EF0(0x13u, 5))
    {
      v40 = sub_160F34(0x13u);
      v41 = sub_175AE4();
      v42 = sub_160F68(5);
      v43 = dlerror();
      if (v40)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v41, 19, v42, "AVE_VCP", "Init", 106, a1, a2, a3, a4, a5, v43);
        v41 = sub_175AE4();
        v42 = sub_160F68(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v41, 19, v42, "AVE_VCP", "Init");
    }

    v44 = dlsym(a1[3], "VCPAVECalculateFrameChecksum");
    a1[8] = v44;
    if (!v44 && sub_160EF0(0x13u, 5))
    {
      v45 = sub_160F34(0x13u);
      v46 = sub_175AE4();
      v47 = sub_160F68(5);
      v48 = dlerror();
      if (v45)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v46, 19, v47, "AVE_VCP", "Init", 114, a1, a2, a3, a4, a5, v48);
        v46 = sub_175AE4();
        v47 = sub_160F68(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v46, 19, v47, "AVE_VCP", "Init");
    }

    *a1 = a2;
    *(a1 + 2) = a3;
    *(a1 + 3) = a4;
    *(a1 + 4) = a5;
    *(a1 + 5) = v14;
  }

  else if (sub_160EF0(0x13u, 5))
  {
    v21 = sub_160F34(0x13u);
    v22 = sub_175AE4();
    v23 = sub_160F68(5);
    v24 = dlerror();
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d Unable to open VCP lib %p %lld %d %d %d | %s\n", v22, 19, v23, "AVE_VCP", "Init", 64, a1, a2, a3, a4, a5, v24);
      v22 = sub_175AE4();
      v23 = sub_160F68(5);
      dlerror();
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to open VCP lib %p %lld %d %d %d | %s", v22, 19, v23, "AVE_VCP", "Init");
  }

  kdebug_trace();
  if (sub_160EF0(0x13u, 6))
  {
    v49 = sub_160F34(0x13u);
    v50 = sub_175AE4();
    v51 = sub_160F68(6);
    if (v49)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d\n", v50, 19, v51, "AVE_VCP", "Init", a1, a2, a3, a4, a5, 0);
      v52 = sub_175AE4();
      v56 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d", v52, 19, v56);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d", v50, 19, v51);
    }
  }

  return 0;
}

uint64_t sub_D86F8(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  if (sub_160EF0(0x13u, 8))
  {
    v8 = sub_160F34(0x13u);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p 0x%x %p\n", v9, 19, v10, "AVE_VCP", "AllocDPB", a1, *a1, a2, a3, a4);
      v9 = sub_175AE4();
      v10 = sub_160F68(8);
      v11 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p 0x%x %p", v9, 19, v10, "AVE_VCP");
  }

  v12 = *a1;
  kdebug_trace();
  v13 = a1[5];
  if (v13)
  {
    v14 = v13(a2, *(a1 + 5), *(a1 + 3), *(a1 + 4), a3);
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      if (sub_160EF0(0x13u, 5))
      {
        v16 = sub_160F34(0x13u);
        v17 = sub_175AE4();
        v18 = sub_160F68(5);
        v19 = *(a1 + 4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to allocate DPB %p %lld %p %d %d %d 0x%x\n", v17, 19, v18, "AVE_VCP", "AllocDPB", 204, a1, *a1, a2, *(a1 + 5), *(a1 + 3), *(a1 + 4), a3);
          v17 = sub_175AE4();
          v18 = sub_160F68(5);
          v31 = *(a1 + 4);
          v29 = *(a1 + 5);
          v30 = *(a1 + 3);
          v28 = *a1;
        }

        else
        {
          v32 = *(a1 + 4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d fail to allocate DPB %p %lld %p %d %d %d 0x%x", v17, 19, v18, "AVE_VCP", "AllocDPB");
      }

      v14 = 0;
      v15 = 4294966293;
    }
  }

  else
  {
    v14 = 0;
    v15 = 4294966294;
  }

  *a4 = v14;
  v20 = *a1;
  kdebug_trace();
  if (sub_160EF0(0x13u, 8))
  {
    v21 = sub_160F34(0x13u);
    v22 = sub_175AE4();
    v23 = sub_160F68(8);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p 0x%x %p %d\n", v22, 19, v23, "AVE_VCP", "AllocDPB", a1, *a1, a2, a3, a4, v15);
      v24 = sub_175AE4();
      v25 = sub_160F68(8);
      v27 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p 0x%x %p %d", v24, 19, v25, "AVE_VCP", "AllocDPB");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p 0x%x %p %d", v22, 19, v23, "AVE_VCP", "AllocDPB");
    }
  }

  return v15;
}

uint64_t sub_D8AA4(void *a1, const void *a2, const void *a3)
{
  if (sub_160EF0(0x13u, 8))
  {
    v6 = sub_160F34(0x13u);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", v7, 19, v8, "AVE_VCP", "ScaleRefFrames", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(8);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", v7, 19, v8);
  }

  v10 = *a1;
  kdebug_trace();
  v11 = a1[6];
  if (v11 && (v12 = a1[4]) != 0)
  {
    v13 = v11(v12, a2, a3);
    if (sub_160EF0(0x13u, 8))
    {
      v14 = sub_160F34(0x13u);
      v15 = sub_175AE4();
      v16 = sub_160F68(8);
      if (v14)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %p %p %d\n", v15, 19, v16, "AVE_VCP", "ScaleRefFrames", 243, a1, *a1, a1[4], a2, a3, v13);
        v15 = sub_175AE4();
        v16 = sub_160F68(8);
        v17 = *a1;
        v30 = a1[4];
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %p %d", v15, 19, v16, "AVE_VCP", "ScaleRefFrames", 243);
    }

    if (v13)
    {
      if (sub_160EF0(0x13u, 5))
      {
        v18 = sub_160F34(0x13u);
        v19 = sub_175AE4();
        v20 = sub_160F68(5);
        if (v18)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to scale ref frame %p %lld %p %p %p %d\n", v19, 19, v20, "AVE_VCP", "ScaleRefFrames", 249, a1, *a1, a1[4], a2, a3, v13);
          v21 = sub_175AE4();
          v22 = sub_160F68(5);
          v31 = a1[4];
          v29 = *a1;
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to scale ref frame %p %lld %p %p %p %d", v21, 19, v22, "AVE_VCP", "ScaleRefFrames", 249);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to scale ref frame %p %lld %p %p %p %d", v19, 19, v20, "AVE_VCP", "ScaleRefFrames", 249);
        }
      }

      v13 = 4294966296;
    }
  }

  else
  {
    v13 = 4294966294;
  }

  v23 = *a1;
  kdebug_trace();
  if (sub_160EF0(0x13u, 8))
  {
    v24 = sub_160F34(0x13u);
    v25 = sub_175AE4();
    v26 = sub_160F68(8);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d\n", v25, 19, v26, "AVE_VCP", "ScaleRefFrames", a1, *a1, a2, a3, v13);
      v25 = sub_175AE4();
      v26 = sub_160F68(8);
      v27 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d", v25, 19, v26, "AVE_VCP");
  }

  return v13;
}

uint64_t sub_D8F04(void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (sub_160EF0(0x13u, 8))
  {
    v8 = sub_160F34(0x13u);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %d\n", v9, 19, v10, "AVE_VCP", "ChromaFilter", a1, *a1, a2, a3, a4);
      v9 = sub_175AE4();
      v10 = sub_160F68(8);
      v11 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %d", v9, 19, v10, "AVE_VCP");
  }

  v12 = *a1;
  kdebug_trace();
  v13 = a1[7];
  if (v13 && (v14 = a1[4]) != 0)
  {
    v15 = v13(v14, a2, a3, a4);
    if (sub_160EF0(0x13u, 8))
    {
      v16 = sub_160F34(0x13u);
      v17 = sub_175AE4();
      v18 = sub_160F68(8);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %d %d\n", v17, 19, v18, "AVE_VCP", "ChromaFilter", 287, a1, *a1, a1[4], a2, a3, a4, v15);
        v17 = sub_175AE4();
        v18 = sub_160F68(8);
        v32 = *a1;
        v34 = a1[4];
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %d %d", v17, 19, v18, "AVE_VCP", "ChromaFilter", 287);
    }

    if (v15)
    {
      if (sub_160EF0(0x13u, 5))
      {
        v19 = sub_160F34(0x13u);
        v20 = sub_175AE4();
        v21 = sub_160F68(5);
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to filter chroma %p %lld %p %p %lld %d %d\n", v20, 19, v21, "AVE_VCP", "ChromaFilter", 293, a1, *a1, a1[4], a2, a3, a4, v15);
          v22 = sub_175AE4();
          v23 = sub_160F68(5);
          v33 = *a1;
          v35 = a1[4];
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to filter chroma %p %lld %p %p %lld %d %d", v22, 19, v23, "AVE_VCP", "ChromaFilter", 293);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to filter chroma %p %lld %p %p %lld %d %d", v20, 19, v21, "AVE_VCP", "ChromaFilter", 293);
        }
      }

      v15 = 4294966296;
    }
  }

  else
  {
    v15 = 4294966294;
  }

  v24 = *a1;
  kdebug_trace();
  if (sub_160EF0(0x13u, 8))
  {
    v25 = sub_160F34(0x13u);
    v26 = sub_175AE4();
    v27 = sub_160F68(8);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %d\n", v26, 19, v27, "AVE_VCP", "ChromaFilter", a1, *a1, a2, a3, a4);
      v28 = sub_175AE4();
      v29 = sub_160F68(8);
      v30 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %d", v28, 19, v29, "AVE_VCP");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %d", v26, 19, v27, "AVE_VCP");
    }
  }

  return v15;
}

uint64_t sub_D93A4(void *a1, const void *a2, uint64_t a3, void *a4)
{
  if (sub_160EF0(0x13u, 8))
  {
    v8 = sub_160F34(0x13u);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %p\n", v9, 19, v10, "AVE_VCP", "CalcChecksum", a1, *a1, a2, a3, a4);
      v9 = sub_175AE4();
      v10 = sub_160F68(8);
      v11 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %p", v9, 19, v10, "AVE_VCP");
  }

  v12 = *a1;
  kdebug_trace();
  if (a1[8] && a1[4])
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v14 = Mutable;
      v15 = (a1[8])(a1[4], a2, a3, 1, Mutable);
      if (sub_160EF0(0x13u, 8))
      {
        v16 = sub_160F34(0x13u);
        v17 = sub_175AE4();
        v18 = sub_160F68(8);
        if (v16)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %p %d\n", v17, 19, v18, "AVE_VCP", "CalcChecksum", 338, a1, *a1, a1[4], a2, a3, v14, v15);
          v17 = sub_175AE4();
          v18 = sub_160F68(8);
          v33 = *a1;
          v35 = a1[4];
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %p %d", v17, 19, v18, "AVE_VCP", "CalcChecksum", 338, a1);
      }

      if (v15)
      {
        if (sub_160EF0(0x13u, 5))
        {
          v22 = sub_160F34(0x13u);
          v23 = sub_175AE4();
          v24 = sub_160F68(5);
          if (v22)
          {
            printf("%lld %d AVE %s: %s::%s:%d fail to calculate checksum %p %lld %p %p %lld %p %d\n", v23, 19, v24, "AVE_VCP", "CalcChecksum", 345, a1, *a1, a1[4], a2, a3, v14, v15);
            v25 = sub_175AE4();
            v26 = sub_160F68(5);
            v34 = *a1;
            v36 = a1[4];
            syslog(3, "%lld %d AVE %s: %s::%s:%d fail to calculate checksum %p %lld %p %p %lld %p %d", v25, 19, v26, "AVE_VCP", "CalcChecksum", 345, a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d fail to calculate checksum %p %lld %p %p %lld %p %d", v23, 19, v24, "AVE_VCP", "CalcChecksum", 345, a1);
          }
        }

        v15 = 4294966296;
      }

      else
      {
        CFDictionaryApplyFunction(v14, sub_D9974, a4);
      }

      CFRelease(v14);
    }

    else
    {
      if (sub_160EF0(0x13u, 4))
      {
        v19 = sub_160F34(0x13u);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary\n", v20, 19, v21, "AVE_VCP", "CalcChecksum", 334, "pDict != __null");
          v20 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary", v20);
      }

      v15 = 4294966293;
    }
  }

  else
  {
    v15 = 4294966294;
  }

  v27 = *a1;
  kdebug_trace();
  if (sub_160EF0(0x13u, 8))
  {
    v28 = sub_160F34(0x13u);
    v29 = sub_175AE4();
    v30 = sub_160F68(8);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %p %d\n", v29, 19, v30, "AVE_VCP", "CalcChecksum", a1, *a1, a2, a3, a4, v15);
      v29 = sub_175AE4();
      v30 = sub_160F68(8);
      v31 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %p %d", v29, 19, v30, "AVE_VCP", "CalcChecksum");
  }

  return v15;
}

uint64_t sub_D9988(int a1, int a2, unsigned int a3)
{
  if (sub_160EF0(0x10u, 6))
  {
    v6 = sub_160F34(0x10u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %d\n", v7, 16, v8, "AVE_MCTF_SupportAllLight", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %d", v7);
  }

  if ((a2 - 1) > 0x1F || a3 - 1 >= 3)
  {
    if (sub_160EF0(0x10u, 4))
    {
      v12 = sub_160F34(0x10u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong params, %d %d %d\n", v13, 16, v14, "AVE_MCTF_SupportAllLight", 707, "eDevType > AVE_DevType_None && eDevType < AVE_DevType_Max && eMCTFWorkMode > AVE_MCTF_WorkMode_None && eMCTFWorkMode < AVE_MCTF_WorkMode_Max", a2, a1, a3);
        v13 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong params, %d %d %d", v13, 16);
    }
  }

  else if ((a2 & 0x38) == 0x18)
  {
    v9 = qword_203630[a2];
    v10 = sub_1502C8();
    if (v10[274] <= 0)
    {
      v11 = *(v9 + 8 * a3);
    }

    else
    {
      v11 = v10 + 274;
      *(v9 + 8 * a3) = v11;
    }

    if (sub_F18(v11, a1))
    {
      v18 = 1;
      goto LABEL_30;
    }

    if (sub_160EF0(0x10u, 8))
    {
      v19 = sub_160F34(0x10u);
      v20 = sub_175AE4();
      v21 = sub_160F68(8);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | Sensor not supported for MCTF in all-light: devType=%d, sensorID=0x%x, workMode=%d\n", v20, 16, v21, "AVE_MCTF_SupportAllLight", 726, "pMap != NULL", a2, a1, a3);
        v20 = sub_175AE4();
        sub_160F68(8);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Sensor not supported for MCTF in all-light: devType=%d, sensorID=0x%x, workMode=%d", v20, 16);
    }
  }

  else if (sub_160EF0(0x10u, 8))
  {
    v15 = sub_160F34(0x10u);
    v16 = sub_175AE4();
    v17 = sub_160F68(8);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | Device not supported for MCTF in all-light: devType=%d, sensorID=0x%x, workMode=%d\n", v16, 16, v17, "AVE_MCTF_SupportAllLight", 714, "paMCTF_StrengthMapSet != NULL", a2, a1, a3);
      v16 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | Device not supported for MCTF in all-light: devType=%d, sensorID=0x%x, workMode=%d", v16, 16);
  }

  v18 = 0;
LABEL_30:
  if (sub_160EF0(0x10u, 6))
  {
    v22 = sub_160F34(0x10u);
    v23 = sub_175AE4();
    v24 = sub_160F68(6);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d %d\n", v23, 16, v24, "AVE_MCTF_SupportAllLight", a1, a2, a3, v18);
      v25 = sub_175AE4();
      sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v23);
    }
  }

  return v18;
}

uint64_t sub_D9E84(int *a1, int a2, unsigned int a3, unsigned int *a4, _DWORD *a5)
{
  if (sub_160EF0(0x10u, 6))
  {
    v10 = sub_160F34(0x10u);
    v11 = sub_175AE4();
    v12 = sub_160F68(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p %p\n", v11, 16, v12, "AVE_MCTF_AdjustStrength", a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v59 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p %p", v13, 16, v59);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p %p", v11, 16, v12);
    }
  }

  if (a3 - 1 <= 2 && (a2 - 1) <= 0x1F && a1 && a4 && a5)
  {
    if ((a2 & 0x38) == 0x18)
    {
      v14 = qword_203630[a2];
      v15 = sub_1502C8();
      if (v15[274] <= 0)
      {
        v16 = *(v14 + 8 * a3);
      }

      else
      {
        v16 = v15 + 274;
        *(v14 + 8 * a3) = v16;
      }

      v26 = sub_F18(v16, a1[16]);
      if (v26)
      {
        v27 = v26;
        v68 = a5;
        sub_1354(v26, 16, 6, "MCTF_SMap");
        v28 = qword_203738[v27[1]](a1);
        v29 = *a4;
        if (sub_160EF0(0x10u, 6))
        {
          v30 = sub_160F34(0x10u);
          v31 = sub_175AE4();
          v32 = sub_160F68(6);
          if (v30)
          {
            printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", v31, 16, v32, "AVE_MCTF_FindRangeIdx", v27, v29, v28, a4);
            v31 = sub_175AE4();
            sub_160F68(6);
          }

          syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", v31, 16);
        }

        if (v29 >= 1)
        {
          v37 = v29 + 1;
          do
          {
            v38 = sub_F48(v27, v37 - 2);
            if (!v38)
            {
              break;
            }

            if (*(v38 + 4) < v28)
            {
              break;
            }

            *a4 = v37 - 2;
            --v37;
          }

          while (v37 > 1);
        }

        if (*a4 == v29)
        {
          for (i = v29 + 1; i < v27[2]; ++i)
          {
            v40 = sub_F48(v27, i);
            if (!v40 || *v40 > v28)
            {
              break;
            }

            *a4 = i;
          }
        }

        if (sub_160EF0(0x10u, 6))
        {
          v41 = sub_160F34(0x10u);
          v42 = sub_175AE4();
          v43 = sub_160F68(6);
          if (v41)
          {
            printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v42, 16, v43, "AVE_MCTF_FindRangeIdx", v27, v29, v28, a4, 0);
            v44 = sub_175AE4();
            v61 = sub_160F68(6);
            syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v44, 16, v61);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v42, 16, v43);
          }
        }

        a5 = v68;
        if (sub_F68(v27, *a4, v68))
        {
          if (sub_160EF0(0x10u, 4))
          {
            v45 = sub_160F34(0x10u);
            v46 = sub_175AE4();
            v47 = sub_160F68(4);
            if (v45)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get strength level for rangeIdx %p %d\n", v46, 16, v47, "AVE_MCTF_AdjustStrength", 799, "ret == 0", v27, *a4);
              v46 = sub_175AE4();
              sub_160F68(4);
              v48 = *a4;
              a5 = v68;
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get strength level for rangeIdx %p %d", v46, 16);
          }

          v25 = 4294966296;
        }

        else
        {
          if (sub_160EF0(0x10u, 8))
          {
            v49 = sub_160F34(0x10u);
            v50 = sub_175AE4();
            v51 = sub_160F68(8);
            v52 = *a4;
            if (v49)
            {
              printf("%lld %d AVE %s: %s:%d %p sID 0x%x noise level %d rIdx %d s %d\n", v50, 16, v51, "AVE_MCTF_AdjustStrength", 802, a1, a1[16], v28, *a4, *v68);
              v50 = sub_175AE4();
              sub_160F68(8);
              v53 = a1[16];
              v65 = *a4;
              v67 = *v68;
            }

            else
            {
              v66 = *a4;
            }

            syslog(3, "%lld %d AVE %s: %s:%d %p sID 0x%x noise level %d rIdx %d s %d", v50, 16);
          }

          v25 = 0;
        }

        goto LABEL_62;
      }

      if (sub_160EF0(0x10u, 5))
      {
        v33 = sub_160F34(0x10u);
        v34 = sub_175AE4();
        v35 = sub_160F68(5);
        v36 = a1[16];
        if (v33)
        {
          printf("%lld %d AVE %s: %s:%d %s | SensorID not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d\n", v34, 16, v35, "AVE_MCTF_AdjustStrength", 783, "pMap != NULL", a2, a1[16], a3);
          v34 = sub_175AE4();
          sub_160F68(5);
        }

        v64 = a1[16];
        syslog(3, "%lld %d AVE %s: %s:%d %s | SensorID not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d", v34, 16);
      }
    }

    else if (sub_160EF0(0x10u, 5))
    {
      v21 = sub_160F34(0x10u);
      v22 = sub_175AE4();
      v23 = sub_160F68(5);
      v24 = a1[16];
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | Device not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d\n", v22, 16, v23, "AVE_MCTF_AdjustStrength", 771, "paMCTF_StrengthMapSet != NULL", a2, a1[16], a3);
        v22 = sub_175AE4();
        sub_160F68(5);
      }

      v63 = a1[16];
      syslog(3, "%lld %d AVE %s: %s:%d %s | Device not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d", v22, 16);
    }

    v25 = 4294966294;
    goto LABEL_62;
  }

  if (sub_160EF0(0x10u, 4))
  {
    v17 = sub_160F34(0x10u);
    v18 = sub_175AE4();
    v19 = sub_160F68(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong params, %p %d %d %p %p\n", v18, 16, v19, "AVE_MCTF_AdjustStrength", 764, "(psData != __null) && (piRangeIdx != __null) && (piStrength != __null) && eDevType > AVE_DevType_None && eDevType < AVE_DevType_Max && eMCTFWorkMode > AVE_MCTF_WorkMode_None && eMCTFWorkMode < AVE_MCTF_WorkMode_Max", a1, a2, a3, a4, a5);
      v20 = sub_175AE4();
      v60 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong params, %p %d %d %p %p", v20, 16, v60, "AVE_MCTF_AdjustStrength");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong params, %p %d %d %p %p", v18, 16, v19, "AVE_MCTF_AdjustStrength");
    }
  }

  v25 = 4294966295;
LABEL_62:
  if (sub_160EF0(0x10u, 6))
  {
    v54 = sub_160F34(0x10u);
    v55 = sub_175AE4();
    v56 = sub_160F68(6);
    if (v54)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %p %d\n", v55, 16, v56, "AVE_MCTF_AdjustStrength", a1, a2, a3, a4, a5, v25);
      v57 = sub_175AE4();
      v62 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %p %d", v57, 16, v62, "AVE_MCTF_AdjustStrength");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %p %d", v55, 16, v56, "AVE_MCTF_AdjustStrength");
    }
  }

  return v25;
}

uint64_t sub_DA7E0(uint64_t a1)
{
  v1 = vdupq_lane_s64(0x4170000000000000, 0);
  v1.f64[0] = *(a1 + 24);
  v2 = vmulq_f64(*(a1 + 40), v1);
  return (*(a1 + 32) * v2.f64[0] / v2.f64[1]);
}

uint64_t sub_DA814(_DWORD *a1)
{
  v2 = vdupq_lane_s64(0x4170000000000000, 0);
  v2.f64[0] = *(a1 + 3);
  v3 = vmulq_f64(*(a1 + 10), v2);
  v4 = (*(a1 + 4) * v3.f64[0] / v3.f64[1]);
  v5 = (*a1 + 0.5);
  if (v5 >= 21)
  {
    v5 = 21;
  }

  if (*a1 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (v4 >= 15)
  {
    v7 = (36 - v6);
  }

  else
  {
    v7 = v4;
  }

  if (sub_160EF0(0x10u, 8))
  {
    v8 = sub_160F34(0x10u);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %p sID 0x%x gain %d snr %d noise level %d\n", v9, 16, v10, "AVE_MCTF_CalculateNoiseLevel_TotalGainSNR", 607, a1, a1[16], v4, v6, v7);
      v9 = sub_175AE4();
      sub_160F68(8);
      v11 = a1[16];
    }

    syslog(3, "%lld %d AVE %s: %s:%d %p sID 0x%x gain %d snr %d noise level %d", v9, 16);
  }

  return v7;
}

uint64_t sub_DA98C(const void *a1, const void *a2, const void *a3)
{
  v19 = 0;
  if (sub_160EF0(0x2Eu, 7))
  {
    v6 = sub_160F34(0x2Eu);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 46, v8, "AVE_FrameStats_PrintStatFrame", a2, a1, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2)
  {
    if (a3)
    {
      operator new[]();
    }

    v13 = 4294966288;
  }

  else
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v9 = sub_160F34(0x2Eu);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 46, v11, "AVE_FrameStats_PrintStatFrame", 265, "(psFrame != __null) && (psMgr != __null)", a2, a1, a3);
        v12 = sub_175AE4();
        v18 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 46, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 46, v11);
      }
    }

    v13 = 4294966295;
  }

  if (sub_160EF0(0x74u, 7))
  {
    v14 = sub_160F34(0x74u);
    v15 = sub_175AE4();
    v16 = sub_160F68(7);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v15, 116, v16, "AVE_FrameStats_PrintStatFrame", a2, a1, a3, v13);
      v15 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v15, 116);
  }

  return v13;
}

uint64_t sub_DB374(__CVBuffer *a1, uint64_t a2, uint64_t a3, _DWORD *a4, char a5)
{
  extraColumnsOnLeft = 0;
  extraRowsOnTop = 0;
  extraColumnsOnRight = 0;
  extraRowsOnBottom = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v11 = BaseAddressOfPlane;
  if (!BaseAddressOfPlane || (BaseAddressOfPlane & 0x3F) != 0)
  {
    if (sub_160EF0(3u, 4))
    {
      v13 = sub_160F34(3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address 0x%lx\n", v14, 3, v15, "AVE_ImgBuf_VerifyUncompressed", 81, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v11);
        v14 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer base address 0x%lx", v14);
    }

    goto LABEL_39;
  }

  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  if (a5)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
    v12 = (extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight);
    v18 = (extraRowsOnTop + HeightOfPlane + extraRowsOnBottom);
    if (v12 < a2 || v18 < a3)
    {
      if (!sub_160EF0(3u, 4))
      {
        goto LABEL_39;
      }

      v35 = sub_160F34(3u);
      v36 = sub_175AE4();
      v37 = sub_160F68(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 93, "width >= videoWidth && height >= videoHeight", v12, v18, a2, a3);
        v36 = sub_175AE4();
        v61 = a2;
        v62 = a3;
        v59 = v12;
        v60 = v18;
        v57 = 93;
        v58 = "width >= videoWidth && height >= videoHeight";
        v56 = sub_160F68(4);
LABEL_51:
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v36, 3, v56, "AVE_ImgBuf_VerifyUncompressed", v57, v58, v59, v60, v61, v62);
        goto LABEL_39;
      }

      v61 = a2;
      v62 = a3;
      v59 = v12;
      v60 = v18;
      v50 = "width >= videoWidth && height >= videoHeight";
      v51 = 93;
      goto LABEL_50;
    }
  }

  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v20 = BytesPerRowOfPlane;
  if (a4[6] == 1)
  {
    v21 = (2 * ((2863311531u * (v12 + 2)) >> 32)) & 0xFFFFFFFC;
    if (!BytesPerRowOfPlane)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v12 << (a4[1] != 8);
    if (!BytesPerRowOfPlane)
    {
      goto LABEL_23;
    }
  }

  if ((BytesPerRowOfPlane & 0x3F) != 0 || v21 > BytesPerRowOfPlane)
  {
LABEL_23:
    if (sub_160EF0(3u, 4))
    {
      v32 = sub_160F34(3u);
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x\n", v33, 3, v34, "AVE_ImgBuf_VerifyUncompressed", 101, "stride != 0 && (stride & 0x3F) == 0 && stride >= neededStride", v20, v21);
        v33 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v33);
    }

    goto LABEL_39;
  }

  if (!a4[3])
  {
    if ((a5 & 1) != 0 || (v38 = CVPixelBufferGetWidthOfPlane(a1, 1uLL), v39 = CVPixelBufferGetHeightOfPlane(a1, 1uLL), !(v38 | v39)))
    {
      v40 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      if (v40)
      {
        if (sub_160EF0(3u, 4))
        {
          v41 = sub_160F34(3u);
          v42 = sub_175AE4();
          v43 = sub_160F68(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride %x\n", v42, 3, v43, "AVE_ImgBuf_VerifyUncompressed", 120, "stride == 0", v40);
            v42 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride %x", v42);
        }

        goto LABEL_39;
      }

      goto LABEL_45;
    }

    if (!sub_160EF0(3u, 4))
    {
      goto LABEL_39;
    }

    v54 = sub_160F34(3u);
    v36 = sub_175AE4();
    v37 = sub_160F68(4);
    if (v54)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 114, "width == 0 && height == 0", v38, v39, a2, a3);
      v55 = sub_175AE4();
      sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v55, 3);
      goto LABEL_39;
    }

    v61 = a2;
    v62 = a3;
    v59 = v38;
    v60 = v39;
    v50 = "width == 0 && height == 0";
    v51 = 114;
LABEL_50:
    v57 = v51;
    v58 = v50;
    v56 = v37;
    goto LABEL_51;
  }

  if ((a5 & 1) != 0 || (v22 = CVPixelBufferGetWidthOfPlane(a1, 1uLL), v23 = CVPixelBufferGetHeightOfPlane(a1, 1uLL), v24 = a4[4] >> 1, v25 = (extraColumnsOnRight >> v24) + v22 + (extraColumnsOnLeft >> v24), v26 = a4[5] >> 1, v27 = (extraRowsOnBottom >> v26) + v23 + (extraRowsOnTop >> v26), a2 >> v24 <= v25) && (LODWORD(v12) = (extraColumnsOnRight >> v24) + v22 + (extraColumnsOnLeft >> v24), a3 >> v26 <= v27))
  {
    v28 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    v29 = v28;
    v30 = (2 * v12) >> (a4[4] >> 1);
    if (a4[6] == 1)
    {
      v31 = (2 * ((2863311531u * (v30 + 2)) >> 32)) & 0xFFFFFFFC;
    }

    else
    {
      v31 = v30 << (a4[1] != 8);
    }

    if (!v28 || (v28 & 0x3F) != 0 || v31 > v28)
    {
      if (sub_160EF0(3u, 4))
      {
        v46 = sub_160F34(3u);
        v47 = sub_175AE4();
        v48 = sub_160F68(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x\n", v47, 3, v48, "AVE_ImgBuf_VerifyUncompressed", 144, "stride != 0 && (stride & 0x3F) == 0 && stride >= neededStride", v29, v31);
          v49 = sub_175AE4();
          sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v49);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v47);
        }
      }

      goto LABEL_39;
    }

LABEL_45:
    v44 = 0;
    goto LABEL_40;
  }

  if (sub_160EF0(3u, 4))
  {
    v52 = sub_160F34(3u);
    v36 = sub_175AE4();
    v37 = sub_160F68(4);
    if (v52)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 134, "(width >= (videoWidth >> ((pFmt->iSubWidthC) >> 1))) && (height >= (videoHeight >> ((pFmt->iSubHeightC) >> 1)))", v25, v27, a2, a3);
      v53 = sub_175AE4();
      sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v53, 3);
      goto LABEL_39;
    }

    v61 = a2;
    v62 = a3;
    v59 = v25;
    v60 = v27;
    v50 = "(width >= (videoWidth >> ((pFmt->iSubWidthC) >> 1))) && (height >= (videoHeight >> ((pFmt->iSubHeightC) >> 1)))";
    v51 = 134;
    goto LABEL_50;
  }

LABEL_39:
  v44 = 4294954394;
LABEL_40:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v44;
}

uint64_t sub_DBB70(__CVBuffer *a1, _DWORD *a2)
{
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  v5 = BaseAddressOfCompressedTileHeaderRegionOfPlane;
  if (!BaseAddressOfCompressedTileHeaderRegionOfPlane || (BaseAddressOfCompressedTileHeaderRegionOfPlane & 0x3F) != 0)
  {
    if (!sub_160EF0(3u, 4))
    {
      goto LABEL_49;
    }

    v22 = sub_160F34(3u);
    v23 = sub_175AE4();
    v24 = sub_160F68(4);
    if (v22)
    {
      v25 = 186;
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", v23, 3, v24, "AVE_ImgBuf_VerifyHTPC", 186, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v5);
LABEL_20:
      v23 = sub_175AE4();
      v63 = v5;
      v61 = v25;
      v59 = sub_160F68(4);
LABEL_27:
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx", v23, 3, v59, "AVE_ImgBuf_VerifyHTPC", v61, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v63);
      goto LABEL_49;
    }

    v63 = v5;
    v30 = 186;
LABEL_26:
    v61 = v30;
    v59 = v24;
    goto LABEL_27;
  }

  BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v7 = BaseAddressOfCompressedTileDataRegionOfPlane;
  if (!BaseAddressOfCompressedTileDataRegionOfPlane || (BaseAddressOfCompressedTileDataRegionOfPlane & 0x3F) != 0)
  {
    if (!sub_160EF0(3u, 4))
    {
      goto LABEL_49;
    }

    v26 = sub_160F34(3u);
    v27 = sub_175AE4();
    v28 = sub_160F68(4);
    if (v26)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v27, 3, v28, "AVE_ImgBuf_VerifyHTPC", 190, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v7);
LABEL_24:
      v29 = sub_175AE4();
      sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v29);
      goto LABEL_49;
    }

LABEL_31:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v27);
    goto LABEL_49;
  }

  BytesPerCompressedTileHeaderOfPlane = IOSurfaceGetBytesPerCompressedTileHeaderOfPlane();
  WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
  HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v13 = extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight;
  v14 = extraRowsOnTop + HeightOfPlane + extraRowsOnBottom;
  v15 = (v13 & 0xF) == 0;
  v16 = v13 >> 4;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if ((v14 & 7) != 0)
  {
    v18 = (v14 >> 3) + 1;
  }

  else
  {
    v18 = v14 >> 3;
  }

  if (v17 != WidthInCompressedTilesOfPlane || v18 != HeightInCompressedTilesOfPlane)
  {
    if (!sub_160EF0(3u, 4))
    {
      goto LABEL_49;
    }

    v31 = sub_160F34(3u);
    v32 = sub_175AE4();
    v33 = sub_160F68(4);
    if (v31)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v32, 3, v33, "AVE_ImgBuf_VerifyHTPC", 214, "width == neededWidth && height == neededHeight", WidthInCompressedTilesOfPlane, HeightInCompressedTilesOfPlane, v17, v18);
      v34 = sub_175AE4();
      sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v34, 3);
      goto LABEL_49;
    }

LABEL_48:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v32, 3);
    goto LABEL_49;
  }

  if ((WidthInCompressedTilesOfPlane * BytesPerCompressedTileHeaderOfPlane * HeightInCompressedTilesOfPlane) + v5 > v7)
  {
    if (sub_160EF0(3u, 4))
    {
      v19 = sub_160F34(3u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address/size 0x%lx 0x%lx %d %d %d\n", v20, 3, v21, "AVE_ImgBuf_VerifyHTPC", 218, "dataBaseAddr >= (baseAddr + width * height * size)", v7, v5, WidthInCompressedTilesOfPlane, HeightInCompressedTilesOfPlane, BytesPerCompressedTileHeaderOfPlane);
        v20 = sub_175AE4();
        v66 = HeightInCompressedTilesOfPlane;
        v67 = BytesPerCompressedTileHeaderOfPlane;
        v64 = v5;
        v65 = WidthInCompressedTilesOfPlane;
        v62 = v7;
        v60 = 218;
        v58 = sub_160F68(4);
LABEL_57:
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer base address/size 0x%lx 0x%lx %d %d %d", v20, 3, v58, "AVE_ImgBuf_VerifyHTPC", v60, "dataBaseAddr >= (baseAddr + width * height * size)", v62, v64, v65, v66, v67);
        goto LABEL_49;
      }

      v66 = HeightInCompressedTilesOfPlane;
      v67 = BytesPerCompressedTileHeaderOfPlane;
      v64 = v5;
      v65 = WidthInCompressedTilesOfPlane;
      v62 = v7;
      v52 = 218;
      goto LABEL_56;
    }

    goto LABEL_49;
  }

  if (!a2[3])
  {
LABEL_51:
    v49 = 0;
    goto LABEL_50;
  }

  v35 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  v5 = v35;
  if (!v35 || (v35 & 0x3F) != 0)
  {
    if (!sub_160EF0(3u, 4))
    {
      goto LABEL_49;
    }

    v51 = sub_160F34(3u);
    v23 = sub_175AE4();
    v24 = sub_160F68(4);
    if (v51)
    {
      v25 = 227;
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", v23, 3, v24, "AVE_ImgBuf_VerifyHTPC", 227, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v5);
      goto LABEL_20;
    }

    v63 = v5;
    v30 = 227;
    goto LABEL_26;
  }

  v36 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v37 = v36;
  if (!v36 || (v36 & 0x3F) != 0)
  {
    if (!sub_160EF0(3u, 4))
    {
      goto LABEL_49;
    }

    v53 = sub_160F34(3u);
    v27 = sub_175AE4();
    v54 = sub_160F68(4);
    if (v53)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v27, 3, v54, "AVE_ImgBuf_VerifyHTPC", 231, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v37);
      goto LABEL_24;
    }

    goto LABEL_31;
  }

  v38 = IOSurfaceGetBytesPerCompressedTileHeaderOfPlane();
  v39 = IOSurfaceGetWidthInCompressedTilesOfPlane();
  v40 = IOSurfaceGetHeightInCompressedTilesOfPlane();
  v41 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
  v42 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
  v43 = (extraColumnsOnLeft >> (a2[4] >> 1)) + v41 + (extraColumnsOnRight >> (a2[4] >> 1));
  v44 = (extraRowsOnTop >> (a2[5] >> 1)) + v42 + (extraRowsOnBottom >> (a2[5] >> 1));
  v15 = (v43 & 7) == 0;
  v45 = v43 >> 3;
  if (v15)
  {
    v46 = v45;
  }

  else
  {
    v46 = v45 + 1;
  }

  if ((v44 & 7) != 0)
  {
    v47 = (v44 >> 3) + 1;
  }

  else
  {
    v47 = v44 >> 3;
  }

  if (v46 != v39)
  {
    if (!sub_160EF0(3u, 4))
    {
      goto LABEL_49;
    }

    v55 = sub_160F34(3u);
    v32 = sub_175AE4();
    v56 = sub_160F68(4);
    if (v55)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v32, 3, v56, "AVE_ImgBuf_VerifyHTPC", 261, "width == neededWidth", v39, v40, v46, v47);
      v57 = sub_175AE4();
      sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v57, 3);
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if ((v39 * v38 * v40) + v5 <= v37)
  {
    goto LABEL_51;
  }

  if (sub_160EF0(3u, 4))
  {
    v48 = sub_160F34(3u);
    v20 = sub_175AE4();
    v21 = sub_160F68(4);
    if (v48)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address/size 0x%lx 0x%lx %d %d %d\n", v20, 3, v21, "AVE_ImgBuf_VerifyHTPC", 266, "dataBaseAddr >= (baseAddr + width * height * size)", v37, v5, v39, v40, v38);
      v20 = sub_175AE4();
      v66 = v40;
      v67 = v38;
      v64 = v5;
      v65 = v39;
      v62 = v37;
      v60 = 266;
      v58 = sub_160F68(4);
      goto LABEL_57;
    }

    v66 = v40;
    v67 = v38;
    v64 = v5;
    v65 = v39;
    v62 = v37;
    v52 = 266;
LABEL_56:
    v60 = v52;
    v58 = v21;
    goto LABEL_57;
  }

LABEL_49:
  v49 = 4294954394;
LABEL_50:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v49;
}

uint64_t sub_DC33C(__CVBuffer *a1, _DWORD *a2)
{
  extraColumnsOnLeft = 0;
  extraRowsOnTop = 0;
  extraColumnsOnRight = 0;
  extraRowsOnBottom = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  v5 = BaseAddressOfCompressedTileHeaderRegionOfPlane;
  if (!BaseAddressOfCompressedTileHeaderRegionOfPlane || (BaseAddressOfCompressedTileHeaderRegionOfPlane & 0x3F) != 0)
  {
    if (!sub_160EF0(3u, 4))
    {
      goto LABEL_44;
    }

    v32 = sub_160F34(3u);
    v33 = sub_175AE4();
    v34 = sub_160F68(4);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", v33, 3, v34, "AVE_ImgBuf_VerifyInterchange", 308, "hdrBaseAddr != 0 && (hdrBaseAddr & 0x3F) == 0", v5);
LABEL_29:
      v35 = sub_175AE4();
      sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx", v35);
      goto LABEL_44;
    }

LABEL_34:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx", v33);
    goto LABEL_44;
  }

  BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v7 = BaseAddressOfCompressedTileDataRegionOfPlane;
  if (!BaseAddressOfCompressedTileDataRegionOfPlane || (BaseAddressOfCompressedTileDataRegionOfPlane & 0x3F) != 0)
  {
    if (!sub_160EF0(3u, 4))
    {
      goto LABEL_44;
    }

    v36 = sub_160F34(3u);
    v37 = sub_175AE4();
    v38 = sub_160F68(4);
    if (v36)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v37, 3, v38, "AVE_ImgBuf_VerifyInterchange", 312, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v7);
LABEL_33:
      v39 = sub_175AE4();
      sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v39);
      goto LABEL_44;
    }

LABEL_39:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v37);
    goto LABEL_44;
  }

  WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
  HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v12 = extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight;
  v13 = extraRowsOnTop + HeightOfPlane + extraRowsOnBottom;
  v14 = (v12 & 0x1F) == 0;
  v15 = v12 >> 5;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  if ((v13 & 0x1F) != 0)
  {
    v17 = (v13 >> 5) + 1;
  }

  else
  {
    v17 = v13 >> 5;
  }

  if (v16 != WidthInCompressedTilesOfPlane || v17 != HeightInCompressedTilesOfPlane)
  {
    if (sub_160EF0(3u, 4))
    {
      v40 = sub_160F34(3u);
      v41 = sub_175AE4();
      v42 = sub_160F68(4);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid Luma buffer dimension %d %d %d %d.\n", v41, 3, v42, "AVE_ImgBuf_VerifyInterchange", 332, "width == neededWidth && height == neededHeight", WidthInCompressedTilesOfPlane, HeightInCompressedTilesOfPlane, v16, v17);
        v41 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid Luma buffer dimension %d %d %d %d.", v41, 3);
    }

    goto LABEL_44;
  }

  if (a2[3])
  {
    v18 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
    v19 = v18;
    if (v18 && (v18 & 0x3F) == 0)
    {
      v20 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
      v21 = v20;
      if (v20 && (v20 & 0x3F) == 0)
      {
        v22 = IOSurfaceGetWidthInCompressedTilesOfPlane();
        v23 = IOSurfaceGetHeightInCompressedTilesOfPlane();
        v24 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
        v25 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
        v26 = (extraColumnsOnLeft >> (a2[4] >> 1)) + v24 + (extraColumnsOnRight >> (a2[4] >> 1));
        v27 = (extraRowsOnTop >> (a2[5] >> 1)) + v25 + (extraRowsOnBottom >> (a2[5] >> 1));
        v14 = (v26 & 0xF) == 0;
        v28 = v26 >> 4;
        if (v14)
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 + 1;
        }

        if ((v27 & 0xF) != 0)
        {
          v30 = (v27 >> 4) + 1;
        }

        else
        {
          v30 = v27 >> 4;
        }

        if (v29 == v22)
        {
          goto LABEL_25;
        }

        if (sub_160EF0(3u, 4))
        {
          v48 = sub_160F34(3u);
          v49 = sub_175AE4();
          v50 = sub_160F68(4);
          if (v48)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid Chroma buffer dimension %d %d %d %d\n", v49, 3, v50, "AVE_ImgBuf_VerifyInterchange", 371, "width == neededWidth", v22, v23, v29, v30);
            v49 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid Chroma buffer dimension %d %d %d %d", v49, 3);
        }

LABEL_44:
        v31 = 4294954394;
        goto LABEL_45;
      }

      if (!sub_160EF0(3u, 4))
      {
        goto LABEL_44;
      }

      v46 = sub_160F34(3u);
      v37 = sub_175AE4();
      v47 = sub_160F68(4);
      if (v46)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v37, 3, v47, "AVE_ImgBuf_VerifyInterchange", 345, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v21);
        goto LABEL_33;
      }

      goto LABEL_39;
    }

    if (!sub_160EF0(3u, 4))
    {
      goto LABEL_44;
    }

    v43 = sub_160F34(3u);
    v33 = sub_175AE4();
    v44 = sub_160F68(4);
    if (v43)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", v33, 3, v44, "AVE_ImgBuf_VerifyInterchange", 341, "hdrBaseAddr != 0 && (hdrBaseAddr & 0x3F) == 0", v19);
      goto LABEL_29;
    }

    goto LABEL_34;
  }

LABEL_25:
  v31 = 0;
LABEL_45:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v31;
}

uint64_t sub_DCDC0(unsigned int *a1, const void **a2, CVPixelBufferPoolRef *a3)
{
  pixelBufferOut = 0;
  poolOut = 0;
  if (!a3 || !*a2)
  {
    if (sub_160EF0(3u, 4))
    {
      v15 = sub_160F34(3u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      v18 = *a2;
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p\n", v16, 3, v17, "AVE_VerifyImageBuffer", 476, "pImgBuf != __null && ppImgBufPool != __null", *a2, a3);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p", v16, 3, v17, "AVE_VerifyImageBuffer", 476, "pImgBuf != __null && ppImgBufPool != __null", *a2, a3);
    }

    goto LABEL_43;
  }

  CVPixelBufferRetain(*a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  v7 = sub_167CD8(PixelFormatType);
  if (!v7)
  {
    if (sub_160EF0(3u, 4))
    {
      v19 = sub_160F34(3u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | pixel format is not supported %d\n", v20, 3, v21, "AVE_VerifyImageBuffer", 483, "pPixelFmt != __null", PixelFormatType);
        v20 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | pixel format is not supported %d", v20);
    }

    goto LABEL_43;
  }

  v8 = v7;
  v9 = sub_151C84(*a2, v7, a1[2], a1[6], *(a1 + 52), a1[14], a1[7], a1 + 8, a1[12]);
  if (sub_160EF0(0x12u, 7))
  {
    v10 = sub_160F34(0x12u);
    v11 = sub_175AE4();
    v12 = sub_160F68(7);
    v13 = *(v8 + 24);
    if (v10)
    {
      printf("%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d\n", v11, 18, v12, PixelFormatType, *(v8 + 4), *(v8 + 8), *(v8 + 12), *(v8 + 16), *(v8 + 20), *(v8 + 24), *(v8 + 28));
      v11 = sub_175AE4();
      v12 = sub_160F68(7);
      v14 = *(v8 + 4);
      v120 = *(v8 + 24);
      v122 = *(v8 + 28);
      v117 = *(v8 + 16);
      v119 = *(v8 + 20);
      v113 = *(v8 + 8);
      v114 = *(v8 + 12);
    }

    else
    {
      v121 = *(v8 + 24);
    }

    syslog(3, "%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d", v11, 18, v12);
  }

  if (sub_160EF0(0x12u, 7))
  {
    v22 = sub_160F34(0x12u);
    v23 = sub_175AE4();
    v24 = sub_160F68(7);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(*a2, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(*a2, 0);
    if (v22)
    {
      printf("%lld %d AVE %s: Pixel Buffer Width %d Height %d\n", v23, 18, v24, WidthOfPlane, HeightOfPlane);
      v27 = sub_175AE4();
      v28 = sub_160F68(7);
      v29 = CVPixelBufferGetWidthOfPlane(*a2, 0);
      v111 = CVPixelBufferGetHeightOfPlane(*a2, 0);
      syslog(3, "%lld %d AVE %s: Pixel Buffer Width %d Height %d", v27, 18, v28, v29, v111);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Pixel Buffer Width %d Height %d", v23, 18, v24, WidthOfPlane, HeightOfPlane);
    }
  }

  if ((v9 & 2) == 0)
  {
    v30 = *a2;
    v31 = a1[2];
    v32 = a1[3];
    v33 = a1[4];
    v34 = a1[5];
    v35 = *a1;
    v36 = a1[1];
    v37 = *(a1 + 147);
    sub_DC93C();
  }

  v38 = *a3;
  if (!*a3)
  {
    v45 = CVPixelBufferGetWidthOfPlane(*a2, 0);
    v46 = CVPixelBufferGetHeightOfPlane(*a2, 0);
    v47 = sub_159334(a1[2], a1[3], a1[4], a1[5], v45, v46, *a1, a1[1], PixelFormatType, &poolOut);
    if (v47)
    {
      v48 = v47;
      if (sub_160EF0(3u, 4))
      {
        v49 = sub_160F34(3u);
        v50 = sub_175AE4();
        v51 = sub_160F68(4);
        if (!v49)
        {
          v115 = v48;
          v112 = 511;
          v110 = v51;
          v109 = "%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d";
          goto LABEL_75;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d\n", v50, 3, v51, "AVE_VerifyImageBuffer", 511, "rc == noErr", v48);
        v52 = sub_175AE4();
        sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d", v52);
      }

LABEL_44:
      if (pixelBufferOut)
      {
        CVPixelBufferRelease(pixelBufferOut);
        pixelBufferOut = 0;
      }

      if (poolOut)
      {
        CFRelease(poolOut);
        poolOut = 0;
      }

      goto LABEL_48;
    }

    v38 = *a3;
  }

  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = poolOut;
  }

  v40 = CVPixelBufferPoolCreatePixelBuffer(0, v39, &pixelBufferOut);
  if (v40)
  {
    v41 = v40;
    if (sub_160EF0(3u, 4))
    {
      v42 = sub_160F34(3u);
      v43 = sub_175AE4();
      v44 = sub_160F68(4);
      if (v42)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to crete pixel buffer from a pool %d\n", v43, 3, v44, "AVE_VerifyImageBuffer", 517, "cvrc == kCVReturnSuccess", v41);
        v43 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to crete pixel buffer from a pool %d", v43);
    }

LABEL_43:
    v48 = 4294954394;
    goto LABEL_44;
  }

  v53 = sub_15A3B0(*a2, pixelBufferOut);
  if (v53)
  {
    v48 = v53;
    if (sub_160EF0(3u, 4))
    {
      v54 = sub_160F34(3u);
      v50 = sub_175AE4();
      v55 = sub_160F68(4);
      if (v54)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d\n", v50, 3, v55, "AVE_VerifyImageBuffer", 521, "rc == noErr", *a2, pixelBufferOut, v48);
        v56 = sub_175AE4();
        v57 = sub_160F68(4);
        v58 = *a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d", v56, 3, v57);
        goto LABEL_44;
      }

      v116 = pixelBufferOut;
      v118 = v48;
      v115 = *a2;
      v112 = 521;
      v110 = v55;
      v109 = "%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d";
LABEL_75:
      syslog(3, v109, v50, 3, v110, "AVE_VerifyImageBuffer", v112, "rc == noErr", v115, v116, v118);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  CVPixelBufferRelease(*a2);
  v60 = pixelBufferOut;
  *a2 = pixelBufferOut;
  pixelBufferOut = 0;
  v61 = v9 & 2;
  sub_152320(v60, v9, v8);
  if (sub_160EF0(0x12u, 7))
  {
    v62 = sub_160F34(0x12u);
    v150 = sub_175AE4();
    v63 = sub_160F68(7);
    v64 = a1[1];
    v147 = *a1;
    v148 = v63;
    v65 = a1[2];
    v66 = a1[3];
    v67 = a1[4];
    v68 = a1[5];
    v69 = a1[6];
    v70 = *(a1 + 145);
    if (v62)
    {
      printf("%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x\n", v150, 18, v148, "AVE_VerifyImageBuffer", 541, v147, v64, v65, v66, v67, v68, v69, a1[7], a1[12], *(a1 + 52), a1[14], a1[26], a1[27], a1[32], a1[33], a1[34], a1[35], a1[30], a1[31], a1[28], a1[29], *(a1 + 146), *(a1 + 144), *(a1 + 145), v9);
      v151 = sub_175AE4();
      v149 = sub_160F68(7);
      v71 = a1[7];
      v72 = a1[12];
      v73 = a1[14];
      v74 = a1[26];
      v75 = a1[27];
      v76 = a1[32];
      v143 = *(a1 + 145);
      v139 = *(a1 + 146);
      v141 = *(a1 + 144);
      v135 = a1[28];
      v137 = a1[29];
      v131 = a1[30];
      v133 = a1[31];
      v127 = a1[34];
      v129 = a1[35];
      v125 = a1[33];
      v123 = *(a1 + 52);
      syslog(3, "%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v151, 18, v149, "AVE_VerifyImageBuffer", 541, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6]);
    }

    else
    {
      v144 = *(a1 + 145);
      syslog(3, "%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v150, 18, v148, "AVE_VerifyImageBuffer", 541, v147, v64, v65, v66, v67, v68, v69);
    }

    v61 = v9 & 2;
  }

  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(*a2, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  v77 = CVPixelBufferGetWidthOfPlane(*a2, 0);
  v78 = CVPixelBufferGetHeightOfPlane(*a2, 0);
  v79 = extraColumnsOnLeft;
  v80 = extraColumnsOnRight;
  v81 = extraColumnsOnLeft + extraColumnsOnRight + v77;
  v82 = extraRowsOnTop;
  v83 = extraRowsOnBottom;
  v84 = extraRowsOnTop + extraRowsOnBottom + v78;
  v85 = *(v8 + 28);
  v86 = *(v8 + 16);
  *(a1 + 15) = *v8;
  *(a1 + 19) = v86;
  *(a1 + 22) = v85;
  a1[26] = v81;
  a1[27] = v84;
  a1[32] = v79;
  a1[33] = v80;
  a1[34] = v82;
  a1[35] = v83;
  a1[30] = CVPixelBufferGetBytesPerRowOfPlane(*a2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*a2, 1uLL);
  a1[31] = BytesPerRowOfPlane;
  if (*(v8 + 12))
  {
    v88 = BytesPerRowOfPlane;
  }

  else
  {
    v88 = 0;
  }

  a1[28] = a1[30];
  a1[29] = v88;
  v89 = v9 & 1;
  if ((v9 & 0x10) != 0)
  {
    v89 = 1;
  }

  *(a1 + 146) = v89;
  *(a1 + 144) = v61 >> 1;
  if ((~v9 & 0x500) != 0)
  {
    v90 = 0;
  }

  else
  {
    v90 = 5;
  }

  if ((~v9 & 0x50000) == 0)
  {
    v90 |= 0xAu;
  }

  *(a1 + 145) = v90;
  if (poolOut)
  {
    *a3 = poolOut;
  }

  if (sub_160EF0(0x12u, 7))
  {
    v91 = sub_160F34(0x12u);
    v152 = sub_175AE4();
    v92 = sub_160F68(7);
    v93 = *a1;
    v94 = a1[1];
    v95 = a1[2];
    v96 = a1[3];
    v97 = a1[4];
    v98 = a1[5];
    v99 = a1[6];
    v100 = *(a1 + 145);
    if (v91)
    {
      printf("%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x\n", v152, 18, v92, "AVE_VerifyImageBuffer", 616, v93, v94, v95, v96, v97, v98, v99, a1[7], a1[12], *(a1 + 52), a1[14], a1[26], a1[27], a1[32], a1[33], a1[34], a1[35], a1[30], a1[31], a1[28], a1[29], *(a1 + 146), *(a1 + 144), *(a1 + 145), v9);
      v101 = sub_175AE4();
      v102 = sub_160F68(7);
      v103 = a1[7];
      v104 = a1[12];
      v105 = a1[14];
      v106 = a1[26];
      v107 = a1[27];
      v108 = a1[32];
      v145 = *(a1 + 145);
      v140 = *(a1 + 146);
      v142 = *(a1 + 144);
      v136 = a1[28];
      v138 = a1[29];
      v132 = a1[30];
      v134 = a1[31];
      v128 = a1[34];
      v130 = a1[35];
      v126 = a1[33];
      v124 = *(a1 + 52);
      syslog(3, "%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v101, 18, v102, "AVE_VerifyImageBuffer", 616, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6]);
    }

    else
    {
      v146 = *(a1 + 145);
      syslog(3, "%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v152, 18, v92, "AVE_VerifyImageBuffer", 616, v93, v94, v95, v96, v97, v98, v99);
    }
  }

  v48 = 0;
LABEL_48:
  if ((a1[36] & 1) == 0)
  {
    CVPixelBufferRelease(*a2);
  }

  return v48;
}

uint64_t sub_DDADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, unsigned int a11, uint64_t a12)
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = a2;
  v17 = a1;
  if (a10 > 0)
  {
    v18 = sub_157F5C(a1, a2, a3, a4, a10, a5, a6, a7, a8, a9);
    if (v18)
    {
      v19 = v18;
      if (sub_160EF0(3u, 4))
      {
        v20 = sub_160F34(3u);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %d %d 0x%x %d %d %dx%d 0x%x\n", v21, 3, v22, "AVE_UpdatePixelBufferDict", 701, "ret == 0", v17, v16, v15, v14, v13, v12, a11, v19);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
        }

LABEL_10:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %d %d 0x%x %d %d %dx%d 0x%x", v21, 3, v22, "AVE_UpdatePixelBufferDict");
        return v19;
      }

      return v19;
    }

LABEL_11:
    if (a12 == 1)
    {
      return 0;
    }

    v19 = VTEncoderSessionSetPixelBufferAttributes();
    if (v19)
    {
      if (sub_160EF0(3u, 4))
      {
        v25 = sub_160F34(3u);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to update pixel buffer attribute %d %d 0x%x %d %d %d 0x%x %d 0x%x\n", v26, 3, v27, "AVE_UpdatePixelBufferDict", 710, "res == noErr", v17, v16, v15, v14, v13, v12, a11, v19, 0);
          v28 = sub_175AE4();
          v30 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to update pixel buffer attribute %d %d 0x%x %d %d %d 0x%x %d 0x%x", v28, 3, v30, "AVE_UpdatePixelBufferDict", 710);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to update pixel buffer attribute %d %d 0x%x %d %d %d 0x%x %d 0x%x", v26, 3, v27, "AVE_UpdatePixelBufferDict", 710);
        }
      }

      return 4294966296;
    }

    return v19;
  }

  v23 = sub_158978(a1, a2, a3, a4, a5, a6, a7, a8, a11);
  if (!v23)
  {
    goto LABEL_11;
  }

  v19 = v23;
  if (sub_160EF0(3u, 4))
  {
    v24 = sub_160F34(3u);
    v21 = sub_175AE4();
    v22 = sub_160F68(4);
    if (v24)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %d %d 0x%x %d %d %dx%d 0x%x\n", v21, 3, v22, "AVE_UpdatePixelBufferDict", 690, "ret == 0", v17, v16, v15, v14, v13, v12, a11, v19);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
    }

    goto LABEL_10;
  }

  return v19;
}

uint64_t sub_DDF24(unsigned int *a1, CVPixelBufferRef *a2, CVPixelBufferPoolRef *a3, uint64_t a4)
{
  pixelBufferOut = 0;
  CVPixelBufferRetain(*a2);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(*a2, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(*a2, 0);
  v10 = *a3;
  if (*a3)
  {
LABEL_2:
    v11 = CVPixelBufferPoolCreatePixelBuffer(0, v10, &pixelBufferOut);
    if (v11)
    {
      v12 = v11;
      if (sub_160EF0(3u, 4))
      {
        v13 = sub_160F34(3u);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to crete pixel buffer from a pool %d\n", v14, 3, v15, "AVE_ImageBuf_Transfer", 758, "err == kCVReturnSuccess", v12);
          v14 = sub_175AE4();
          v26 = "err == kCVReturnSuccess";
          v27 = v12;
          v25 = 758;
          v24 = sub_160F68(4);
        }

        else
        {
          v27 = v12;
          v25 = 758;
          v26 = "err == kCVReturnSuccess";
          v24 = v15;
        }

        v16 = "%lld %d AVE %s: %s:%d %s | failed to crete pixel buffer from a pool %d";
LABEL_20:
        syslog(3, v16, v14, 3, v24, "AVE_ImageBuf_Transfer", v25, v26, v27);
        goto LABEL_22;
      }
    }

    else
    {
      v12 = sub_15B248(*a2, pixelBufferOut);
      if (!v12)
      {
        CVPixelBufferRelease(*a2);
        *a2 = pixelBufferOut;
        return v12;
      }

      if (sub_160EF0(3u, 4))
      {
        v20 = sub_160F34(3u);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.\n", v21, 3, v22, "AVE_ImageBuf_Transfer", 763, "err == noErr", *a2, a1[15], a4, v12);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", v21, 3, v22, "AVE_ImageBuf_Transfer", 763, "err == noErr", *a2, a1[15], a4, v12);
      }
    }

    goto LABEL_22;
  }

  v17 = sub_159334(a1[2], a1[3], a1[4], a1[5], WidthOfPlane, HeightOfPlane, *a1, a1[1], a4, a3);
  if (!v17)
  {
    v10 = *a3;
    goto LABEL_2;
  }

  v12 = v17;
  if (sub_160EF0(3u, 4))
  {
    v18 = sub_160F34(3u);
    v14 = sub_175AE4();
    v19 = sub_160F68(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %s | failed to create a buffer pool %d\n", v14, 3, v19, "AVE_ImageBuf_Transfer", 751, "err == noErr", v12);
      v14 = sub_175AE4();
      v26 = "err == noErr";
      v27 = v12;
      v25 = 751;
      v24 = sub_160F68(4);
    }

    else
    {
      v27 = v12;
      v25 = 751;
      v26 = "err == noErr";
      v24 = v19;
    }

    v16 = "%lld %d AVE %s: %s:%d %s | failed to create a buffer pool %d";
    goto LABEL_20;
  }

LABEL_22:
  CVPixelBufferRelease(*a2);
  if (pixelBufferOut)
  {
    CVPixelBufferRelease(pixelBufferOut);
    pixelBufferOut = 0;
  }

  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v12;
}

uint64_t sub_DE2C4(uint64_t a1, uint64_t a2)
{
  if (sub_160EF0(0x1Eu, 7))
  {
    v4 = sub_160F34(0x1Eu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v5, 30, v6, "AVE_Prop_Cfg_HEVC_Init", a1, a2);
      v7 = sub_175AE4();
      v19 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v7, 30, v19, "AVE_Prop_Cfg_HEVC_Init", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v5, 30, v6, "AVE_Prop_Cfg_HEVC_Init", a1, a2);
    }
  }

  bzero((a1 + 32), 0x738uLL);
  *a1 = a2;
  *(a1 + 8) = xmmword_1846C0;
  *(a1 + 24) = -101;
  *(a1 + 32) = -1;
  *(a1 + 40) = -1;
  *&v8 = 0xC0000000CLL;
  *(&v8 + 1) = 0xC0000000CLL;
  *(a1 + 172) = v8;
  *(a1 + 188) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 256) = _Q0;
  *(a1 + 272) = 0xBFF0000000000000;
  *(a1 + 280) = -1;
  *&_Q0 = -1;
  *(&_Q0 + 1) = -1;
  *(a1 + 288) = _Q0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = -1;
  *(a1 + 328) = 0xBFF0000000000000;
  *(a1 + 336) = 0xBFF0000000000000;
  *(a1 + 356) = 0xFFFFFFFEFFFFFFFFLL;
  *(a1 + 392) = -1;
  *(a1 + 408) = -1;
  *(a1 + 416) = -1;
  *(a1 + 372) = -1;
  *(a1 + 380) = -1;
  *(a1 + 364) = -1;
  *(a1 + 476) = -1;
  *(a1 + 444) = _Q0;
  *(a1 + 460) = _Q0;
  *(a1 + 428) = _Q0;
  *(a1 + 480) = 0xBFF0000000000000;
  *(a1 + 488) = -1;
  *(a1 + 500) = -1;
  *(a1 + 512) = -1;
  *(a1 + 540) = -1;
  *(a1 + 548) = -1;
  *(a1 + 576) = -1;
  *(a1 + 568) = -1;
  *(a1 + 560) = -1;
  memset_pattern16((a1 + 580), &unk_1846D0, 8uLL);
  memset_pattern16((a1 + 588), &unk_1846D0, 8uLL);
  *(a1 + 596) = -2;
  *(a1 + 648) = -1;
  *(a1 + 788) = -1;
  *(a1 + 800) = -1;
  *(a1 + 980) = -1;
  *(a1 + 620) = -1;
  *(a1 + 628) = -1;
  *(a1 + 636) = -1;
  *(a1 + 1528) = 0xC0000000CLL;
  *(a1 + 1536) = -13;
  *(a1 + 1560) = -1;
  *(a1 + 1572) = -1;
  *(a1 + 1584) = 0xBFF0000000000000;
  *&v14 = -1;
  *(&v14 + 1) = -1;
  *(a1 + 1600) = -1;
  *(a1 + 1652) = -1;
  *(a1 + 1664) = -1;
  *(a1 + 1708) = -1;
  *(a1 + 1844) = v14;
  *(a1 + 1816) = v14;
  *(a1 + 1832) = v14;
  *(a1 + 1784) = v14;
  *(a1 + 1800) = v14;
  *(a1 + 1752) = v14;
  *(a1 + 1768) = v14;
  *(a1 + 1720) = v14;
  *(a1 + 1736) = v14;
  if (sub_160EF0(0x1Eu, 7))
  {
    v15 = sub_160F34(0x1Eu);
    v16 = sub_175AE4();
    v17 = sub_160F68(7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d\n", v16, 30, v17, "AVE_Prop_Cfg_HEVC_Init", a1, a2, 0);
      v16 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d", v16);
  }

  return 0;
}

uint64_t sub_DE5B8(uint64_t *a1)
{
  if (sub_160EF0(0x1Eu, 7))
  {
    v2 = sub_160F34(0x1Eu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v3, 30, v4, "AVE_Prop_Cfg_HEVC_Uninit", a1, 0);
      v5 = sub_175AE4();
      v11 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v5, 30, v11, "AVE_Prop_Cfg_HEVC_Uninit", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v3, 30, v4, "AVE_Prop_Cfg_HEVC_Uninit", a1, 0);
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
      printf("%lld %d AVE %s: %s Exit %p %lld %d\n", v8, 30, v9, "AVE_Prop_Cfg_HEVC_Uninit", a1, v6, 0);
      v8 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d", v8);
  }

  return 0;
}

double sub_DE744(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return result;
}

uint64_t sub_DE76C(pthread_t *a1)
{
  if (sub_160EF0(0x24u, 6))
  {
    v2 = sub_160F34(0x24u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "Uninit", a1, *a1);
      v3 = sub_175AE4();
      sub_160F68(6);
      v5 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  v6 = sub_DED78(a1);
  v7 = a1[6];
  if (v7)
  {
    v6 = sub_13DBD0(v7);
    a1[6] = 0;
  }

  v8 = a1[1];
  if (v8)
  {
    v6 = sub_13DBD0(v8);
    a1[1] = 0;
  }

  if (v6)
  {
    v9 = 4;
  }

  else
  {
    v9 = 6;
  }

  if (sub_160EF0(0x24u, v9))
  {
    v10 = sub_160F34(0x24u);
    v11 = sub_175AE4();
    v12 = sub_160F68(v9);
    v13 = *a1;
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v11, 36, v12, "AVE_DAL", "Uninit", a1, *a1, v6);
      v11 = sub_175AE4();
      sub_160F68(v9);
      v14 = *a1;
    }

    else
    {
      v16 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v11, 36);
  }

  return v6;
}

uint64_t sub_DE9B4(void *a1)
{
  if (sub_160EF0(0x24u, 6))
  {
    v2 = sub_160F34(0x24u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "Init", a1, *a1);
      v3 = sub_175AE4();
      sub_160F68(6);
      v5 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  v6 = sub_13DB68();
  if (v6)
  {
    v7 = v6;
    v8 = sub_13DB68();
    if (v8)
    {
      a1[1] = v7;
      a1[6] = v8;
    }

    else if (sub_160EF0(0x24u, 4))
    {
      v12 = sub_160F34(0x24u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create thread mutex %p %lld\n", v13, 36, v14, "AVE_DAL", "Init", 102, "pThreadMutex != __null", a1, *a1);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
      }

      v23 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread mutex %p %lld", v13, 36, v14);
    }
  }

  else if (sub_160EF0(0x24u, 4))
  {
    v9 = sub_160F34(0x24u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to create mutex %p %lld\n", v10, 36, v11, "AVE_DAL", "Init", 98, "pMutex != __null", a1, *a1);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
    }

    v22 = *a1;
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create mutex %p %lld", v10, 36, v11);
  }

  if (sub_160EF0(0x24u, 6))
  {
    v15 = sub_160F34(0x24u);
    v16 = sub_175AE4();
    v17 = sub_160F68(6);
    v18 = *a1;
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v16, 36, v17, "AVE_DAL", "Init", a1, *a1, 0);
      v16 = sub_175AE4();
      sub_160F68(6);
      v19 = *a1;
    }

    else
    {
      v21 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v16, 36);
  }

  return 0;
}

uint64_t sub_DED78(pthread_t *a1)
{
  if (sub_160EF0(0x24u, 6))
  {
    v2 = sub_160F34(0x24u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "TearDownIPC", a1, *a1);
      v3 = sub_175AE4();
      sub_160F68(6);
      v5 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  sub_E04CC(a1);
  v6 = sub_DF46C(a1);
  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = 6;
  }

  if (sub_160EF0(0x24u, v7))
  {
    v8 = sub_160F34(0x24u);
    v9 = sub_175AE4();
    v10 = sub_160F68(v7);
    v11 = *a1;
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v9, 36, v10, "AVE_DAL", "TearDownIPC", a1, *a1, v6);
      v9 = sub_175AE4();
      sub_160F68(v7);
      v12 = *a1;
    }

    else
    {
      v14 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v9, 36);
  }

  return v6;
}

uint64_t sub_DEF74(uint64_t *a1, int a2, int a3)
{
  v22 = 0;
  if (a2 < 1 || a3 <= 0)
  {
    if (sub_160EF0(0x24u, 4))
    {
      v7 = sub_160F34(0x24u);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d\n", v8, 36, v9, "AVE_DAL", "CreatePool", 178, "num > 0 && size > 0", a1, *a1, a2, a3);
        v8 = sub_175AE4();
        v9 = sub_160F68(4);
        v10 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v8, 36, v9, "AVE_DAL");
    }

    v6 = 4294966295;
  }

  else
  {
    if (a1[4])
    {
      return 0;
    }

    v11 = sub_14E230(3);
    v12 = sub_13E130(*a1, 0, a3 * a2, v11[1], &v22);
    if (!v12)
    {
      operator new();
    }

    v6 = v12;
    if (sub_160EF0(0x24u, 4))
    {
      v13 = sub_160F34(0x24u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create surface %p %lld %s %llx %d %d %d\n", v14, 36, v15, "AVE_DAL", "CreatePool", 190, "ret == 0", a1, *a1, *v11, v11[1], a2, a3, v6);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        v21 = v11[1];
        v19 = *a1;
        v20 = *v11;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create surface %p %lld %s %llx %d %d %d", v16, 36, v17, "AVE_DAL", "CreatePool", 190, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create surface %p %lld %s %llx %d %d %d", v14, 36, v15, "AVE_DAL", "CreatePool", 190, "ret == 0");
      }
    }
  }

  if (v22)
  {
    sub_13E518(v22);
  }

  return v6;
}

uint64_t sub_DF46C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = sub_1341D4(v2);
    if (v3 && sub_160EF0(0x24u, 4))
    {
      v4 = sub_160F34(0x24u);
      v5 = sub_175AE4();
      v6 = sub_160F68(4);
      v7 = a1[4];
      if (v4)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %d\n", v5, 36, v6, "AVE_DAL", "DestroyPool", 243, a1, *a1, a1[4], v3);
        v5 = sub_175AE4();
        v6 = sub_160F68(4);
        v8 = *a1;
      }

      v12 = a1[4];
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %d", v5, 36, v6, "AVE_DAL");
    }

    v9 = a1[4];
    if (v9)
    {
      sub_1344B4(v9);
      operator delete();
    }

    a1[4] = 0;
  }

  else
  {
    v3 = 0;
  }

  v10 = a1[3];
  if (v10)
  {
    v3 = sub_13E518(v10);
    a1[3] = 0;
  }

  a1[2] = 0;
  return v3;
}

uint64_t sub_DF5F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (sub_160EF0(0x24u, 6))
  {
    v6 = sub_160F34(0x24u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d\n", v7, 36, v8, "AVE_DAL", "SetUpIPC", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d", v7, 36);
  }

  if (a2 < 1 || a3 <= 0)
  {
    if (sub_160EF0(0x24u, 4))
    {
      v17 = sub_160F34(0x24u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d\n", v18, 36, v19, "AVE_DAL", "SetUpIPC", 277, "num > 0 && size > 0", a1, *a1, a2, a3);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        v35 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v18, 36, v19, "AVE_DAL");
    }

    v11 = 4294966295;
    goto LABEL_27;
  }

  v10 = sub_DEF74(a1, a2, a3);
  if (v10)
  {
    v11 = v10;
    if (sub_160EF0(0x24u, 4))
    {
      v12 = sub_160F34(0x24u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create pool %p %lld %d %d %d\n", v13, 36, v14, "AVE_DAL", "SetUpIPC", 282, "ret == 0", a1, *a1, a2, a3, v11);
        v15 = sub_175AE4();
        v16 = sub_160F68(4);
        v34 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create pool %p %lld %d %d %d", v15, 36, v16, "AVE_DAL", "SetUpIPC");
        goto LABEL_27;
      }

      v38 = a3;
      v39 = v11;
      v36 = *a1;
      v37 = a2;
      v33 = a1;
      v31 = 282;
      v30 = v14;
      v22 = "%lld %d AVE %s: %s::%s:%d %s | fail to create pool %p %lld %d %d %d";
LABEL_26:
      syslog(3, v22, v13, 36, v30, "AVE_DAL", "SetUpIPC", v31, "ret == 0", v33, v36, v37, v38, v39);
    }
  }

  else
  {
    v11 = sub_DFBA4(a1);
    if (!v11)
    {
      v23 = 6;
      goto LABEL_28;
    }

    if (sub_160EF0(0x24u, 4))
    {
      v20 = sub_160F34(0x24u);
      v13 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d %d\n", v13, 36, v21, "AVE_DAL", "SetUpIPC", 286, "ret == 0", a1, *a1, a2, a3, v11);
        v13 = sub_175AE4();
        v21 = sub_160F68(4);
      }

      v38 = a3;
      v39 = v11;
      v36 = *a1;
      v37 = a2;
      v33 = a1;
      v31 = 286;
      v30 = v21;
      v22 = "%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d %d";
      goto LABEL_26;
    }
  }

LABEL_27:
  sub_E04CC(a1);
  sub_DF46C(a1);
  v23 = 4;
LABEL_28:
  if (sub_160EF0(0x24u, v23))
  {
    v24 = sub_160F34(0x24u);
    v25 = sub_175AE4();
    v26 = sub_160F68(v23);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d\n", v25, 36, v26, "AVE_DAL", "SetUpIPC", a1, *a1, a2, a3, v11);
      v27 = sub_175AE4();
      v28 = sub_160F68(v23);
      v32 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v27, 36, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v25, 36, v26);
    }
  }

  return v11;
}

uint64_t sub_DFBA4(pthread_t *a1)
{
  memset(&v64, 0, sizeof(v64));
  object = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  if (sub_160EF0(0x24u, 6))
  {
    v2 = sub_160F34(0x24u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "CreateRecvThread", a1, *a1);
      v3 = sub_175AE4();
      sub_160F68(6);
      v5 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  if (a1[9])
  {
    goto LABEL_7;
  }

  v60 = a1;
  LODWORD(v61) = 0;
  object = voucher_copy();
  v8 = pthread_attr_init(&v64);
  if (v8)
  {
    v9 = v8;
    v7 = 4;
    if (!sub_160EF0(0x24u, 4))
    {
LABEL_21:
      v6 = 4294966296;
      goto LABEL_31;
    }

    v10 = sub_160F34(0x24u);
    v11 = sub_175AE4();
    v12 = sub_160F68(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to initialize thread attribute %p %lld %d %d\n", v11, 36, v12, "AVE_DAL", "CreateRecvThread", 1635, "res == 0", a1, *a1, v9, 0);
      v13 = sub_175AE4();
      v7 = 4;
      v14 = sub_160F68(4);
      v15 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to initialize thread attribute %p %lld %d %d", v13, 36, v14, "AVE_DAL");
      goto LABEL_21;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to initialize thread attribute %p %lld %d %d", v11, 36, v12, "AVE_DAL");
    goto LABEL_29;
  }

  v16 = pthread_attr_getschedparam(&v64, &v63);
  if (v16)
  {
    v17 = v16;
    v7 = 4;
    if (!sub_160EF0(0x24u, 4))
    {
      goto LABEL_21;
    }

    v18 = sub_160F34(0x24u);
    v19 = sub_175AE4();
    v20 = sub_160F68(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to get scheduling parameter %p %lld %d %d\n", v19, 36, v20, "AVE_DAL", "CreateRecvThread", 1639, "res == 0", a1, *a1, v17, 0);
      v21 = sub_175AE4();
      v7 = 4;
      v22 = sub_160F68(4);
      v23 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to get scheduling parameter %p %lld %d %d", v21, 36, v22, "AVE_DAL");
      goto LABEL_21;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to get scheduling parameter %p %lld %d %d", v19, 36, v20, "AVE_DAL");
    goto LABEL_29;
  }

  v63.sched_priority = 47;
  v24 = pthread_attr_setschedparam(&v64, &v63);
  if (v24)
  {
    v25 = v24;
    v7 = 4;
    if (!sub_160EF0(0x24u, 4))
    {
      goto LABEL_21;
    }

    v26 = sub_160F34(0x24u);
    v27 = sub_175AE4();
    v28 = sub_160F68(4);
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to set scheduling parameter %p %lld %d %d\n", v27, 36, v28, "AVE_DAL", "CreateRecvThread", 1645, "res == 0", a1, *a1, v25, 0);
      v29 = sub_175AE4();
      v7 = 4;
      v30 = sub_160F68(4);
      v31 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set scheduling parameter %p %lld %d %d", v29, 36, v30, "AVE_DAL");
      goto LABEL_21;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set scheduling parameter %p %lld %d %d", v27, 36, v28, "AVE_DAL");
LABEL_29:
    v6 = 4294966296;
LABEL_30:
    v7 = 4;
    goto LABEL_31;
  }

  v32 = pthread_create(a1 + 9, &v64, sub_E6BF8, &v60);
  if (v32)
  {
    v33 = v32;
    v7 = 4;
    if (sub_160EF0(0x24u, 4))
    {
      v34 = sub_160F34(0x24u);
      v35 = sub_175AE4();
      v36 = sub_160F68(4);
      v37 = *a1;
      if (!v34)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d", v35, 36, v36, "AVE_DAL", "CreateRecvThread", 1649, "res == 0", a1, v37, v33, 0);
        v6 = 4294966292;
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d\n", v35, 36, v36, "AVE_DAL", "CreateRecvThread", 1649, "res == 0", a1, v37, v33, 0);
      v38 = sub_175AE4();
      v7 = 4;
      v39 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d", v38, 36, v39, "AVE_DAL", "CreateRecvThread", 1649, "res == 0", a1, *a1, v33, 0);
    }

    v6 = 4294966292;
    goto LABEL_31;
  }

  if (v61)
  {
    v46 = 0;
  }

  else
  {
    v47 = 0;
    do
    {
      v46 = v47 + 1;
      HIDWORD(v48) = 652835029 * (v47 + 1);
      LODWORD(v48) = HIDWORD(v48);
      if ((v48 >> 2) <= 0x83126E && sub_160EF0(0x24u, 5))
      {
        v49 = sub_160F34(0x24u);
        v50 = sub_175AE4();
        v51 = sub_160F68(5);
        v52 = *a1;
        if (v49)
        {
          printf("%lld %d AVE %s: %s::%s:%d long thread creation time %p %lld %d\n", v50, 36, v51, "AVE_DAL", "CreateRecvThread", 1658, a1, *a1, v47 + 1);
          v50 = sub_175AE4();
          v51 = sub_160F68(5);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d long thread creation time %p %lld %d", v50, 36, v51, "AVE_DAL", "CreateRecvThread", 1658, a1, *a1, v47 + 1);
      }

      usleep(0x3E8u);
      if (v47 > 0xBB6)
      {
        break;
      }

      ++v47;
    }

    while (!v61);
  }

  if (v61)
  {
LABEL_7:
    v6 = 0;
    v7 = 6;
    goto LABEL_31;
  }

  v7 = 4;
  if (sub_160EF0(0x24u, 4))
  {
    v53 = sub_160F34(0x24u);
    v54 = sub_175AE4();
    v55 = sub_160F68(4);
    v56 = *a1;
    if (!v53)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | creating thread time out %p %lld %d %d", v54, 36, v55, "AVE_DAL", "CreateRecvThread", 1664, "cfg.iReady != 0", a1, v56, v46, 0);
      v6 = 4294966279;
      goto LABEL_30;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | creating thread time out %p %lld %d %d\n", v54, 36, v55, "AVE_DAL", "CreateRecvThread", 1664, "cfg.iReady != 0", a1, v56, v46, 0);
    v57 = sub_175AE4();
    v7 = 4;
    v58 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | creating thread time out %p %lld %d %d", v57, 36, v58, "AVE_DAL", "CreateRecvThread", 1664, "cfg.iReady != 0", a1, *a1, v46, 0);
  }

  v6 = 4294966279;
LABEL_31:
  if (object != -1)
  {
    os_release(object);
  }

  pthread_attr_destroy(&v64);
  if (sub_160EF0(0x24u, v7))
  {
    v40 = sub_160F34(0x24u);
    v41 = sub_175AE4();
    v42 = sub_160F68(v7);
    v43 = *a1;
    if (v40)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v41, 36, v42, "AVE_DAL", "CreateRecvThread", a1, *a1, v6);
      v41 = sub_175AE4();
      sub_160F68(v7);
      v44 = *a1;
    }

    else
    {
      v59 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v41, 36);
  }

  return v6;
}

uint64_t sub_E04CC(pthread_t *a1)
{
  if (sub_160EF0(0x24u, 6))
  {
    v2 = sub_160F34(0x24u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "DestroyRecvThread", a1, *a1);
      v3 = sub_175AE4();
      sub_160F68(6);
      v5 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  if (a1[9])
  {
    sub_E6A20(a1);
    pthread_join(a1[9], 0);
    a1[9] = 0;
  }

  if (sub_160EF0(0x24u, 6))
  {
    v6 = sub_160F34(0x24u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    v9 = *a1;
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v7, 36, v8, "AVE_DAL", "DestroyRecvThread", a1, *a1, 0);
      v7 = sub_175AE4();
      sub_160F68(6);
      v10 = *a1;
    }

    else
    {
      v12 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v7, 36);
  }

  return 0;
}

uint64_t sub_E06B8(void *a1, int a2, void *a3)
{
  v37 = a2;
  if (sub_160EF0(0x24u, 8))
  {
    v6 = sub_160F34(0x24u);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %p\n", v7, 36, v8, "AVE_DAL", "Alloc", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(8);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", v7, 36, v8);
  }

  if (a2 >= 1 && a3 && *(a1 + 5) >= a2)
  {
    *a3 = 0;
    sub_13DC18(a1[1]);
    v10 = a1[4];
    if (v10)
    {
      v11 = sub_135428(v10, a3, &v37);
      if (v11)
      {
        if (sub_160EF0(0x24u, 4))
        {
          v12 = sub_160F34(0x24u);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to allocate memory from UC info pool %p %lld %p %d %d\n", v13, 36, v14, "AVE_DAL", "Alloc", 357, "ret == 0", a1, *a1, a3, v37, v11);
            v13 = sub_175AE4();
            v14 = sub_160F68(4);
            v15 = *a1;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate memory from UC info pool %p %lld %p %d %d", v13, 36, v14, "AVE_DAL", "Alloc");
        }

        sub_13DC4C(a1[1]);
        v16 = 4;
      }

      else
      {
        sub_13DC4C(a1[1]);
        v16 = 8;
      }
    }

    else
    {
      v16 = 4;
      if (sub_160EF0(0x24u, 4))
      {
        v30 = sub_160F34(0x24u);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        v33 = *a1;
        if (v30)
        {
          v34 = a2;
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p\n", v31, 36, v32, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", a1, v33, a2, a3);
          v35 = sub_175AE4();
          v16 = 4;
          v36 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v35, 36, v36, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", a1, *a1, v34, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v31, 36, v32, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", a1, v33, a2, a3);
          v16 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  else
  {
    v16 = 4;
    if (sub_160EF0(0x24u, 4))
    {
      v17 = sub_160F34(0x24u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      v20 = *a1;
      v21 = *(a1 + 5);
      if (v17)
      {
        v22 = a2;
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p\n", v18, 36, v19, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", a1, v20, v21, a2, a3);
        v23 = sub_175AE4();
        v16 = 4;
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p", v23, 36, v24, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", a1, *a1, *(a1 + 5), v22, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p", v18, 36, v19, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", a1, v20, v21, a2, a3);
        v16 = 4;
      }
    }

    v11 = 4294966295;
  }

  if (sub_160EF0(0x24u, v16))
  {
    v25 = sub_160F34(0x24u);
    v26 = sub_175AE4();
    v27 = sub_160F68(v16);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v26, 36, v27, "AVE_DAL", "Alloc", a1, *a1, v37, a3, v11);
      v26 = sub_175AE4();
      v27 = sub_160F68(v16);
      v28 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v26, 36, v27, "AVE_DAL");
  }

  return v11;
}

uint64_t sub_E0C68(void *a1, uint64_t *a2)
{
  if (sub_160EF0(0x24u, 8))
  {
    v4 = sub_160F34(0x24u);
    v5 = sub_175AE4();
    v6 = sub_160F68(8);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p\n", v5, 36, v6, "AVE_DAL", "Free", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(8);
      v8 = *a1;
    }

    else
    {
      v33 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p", v5, 36);
  }

  if (a2)
  {
    sub_13DC18(a1[1]);
    v9 = a1[4];
    if (v9)
    {
      v10 = sub_135770(v9, a2);
      if (v10)
      {
        if (sub_160EF0(0x24u, 4))
        {
          v11 = sub_160F34(0x24u);
          v12 = sub_175AE4();
          v13 = sub_160F68(4);
          if (v11)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to free memory to UC info pool %p %lld %p %d\n", v12, 36, v13, "AVE_DAL", "Free", 398, "ret == 0", a1, *a1, a2, v10);
            v12 = sub_175AE4();
            v13 = sub_160F68(4);
            v14 = *a1;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to free memory to UC info pool %p %lld %p %d", v12, 36, v13, "AVE_DAL", "Free");
        }

        sub_13DC4C(a1[1]);
        v15 = 4;
      }

      else
      {
        sub_13DC4C(a1[1]);
        v15 = 8;
      }
    }

    else
    {
      v15 = 4;
      if (sub_160EF0(0x24u, 4))
      {
        v22 = sub_160F34(0x24u);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        v25 = *a1;
        if (v22)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p\n", v23, 36, v24, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", a1, *a1, a2);
          v26 = sub_175AE4();
          v15 = 4;
          v27 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p", v26, 36, v27, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", a1, *a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p", v23, 36, v24, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", a1, *a1, a2);
          v15 = 4;
        }
      }

      v10 = 4294966285;
    }
  }

  else
  {
    v15 = 4;
    if (sub_160EF0(0x24u, 4))
    {
      v16 = sub_160F34(0x24u);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      v19 = *a1;
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p\n", v17, 36, v18, "AVE_DAL", "Free", 387, "addr != 0", a1, *a1, 0);
        v20 = sub_175AE4();
        v15 = 4;
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p", v20, 36, v21, "AVE_DAL", "Free", 387, "addr != 0", a1, *a1, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p", v17, 36, v18, "AVE_DAL", "Free", 387, "addr != 0", a1, *a1, 0);
        v15 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x24u, v15))
  {
    v28 = sub_160F34(0x24u);
    v29 = sub_175AE4();
    v30 = sub_160F68(v15);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d\n", v29, 36, v30, "AVE_DAL", "Free", a1, *a1, a2, v10);
      v29 = sub_175AE4();
      v30 = sub_160F68(v15);
      v31 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v29, 36, v30);
  }

  return v10;
}

uint64_t sub_E11A4(uint64_t *a1, int a2, void *a3)
{
  if (sub_160EF0(0x24u, 8))
  {
    v6 = sub_160F34(0x24u);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %p\n", v7, 36, v8, "AVE_DAL", "Idx2Addr", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(8);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", v7, 36, v8);
  }

  if (a2 < 0 || !a3)
  {
    v15 = 4;
    if (sub_160EF0(0x24u, 4))
    {
      v16 = sub_160F34(0x24u);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      v19 = *a1;
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p\n", v17, 36, v18, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", a1, v19, a2, a3);
        v20 = sub_175AE4();
        v15 = 4;
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p", v20, 36, v21, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p", v17, 36, v18, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", a1, v19, a2, a3);
        v15 = 4;
      }
    }

    v11 = 4294966295;
  }

  else
  {
    sub_13DC18(a1[1]);
    v10 = a1[4];
    if (v10)
    {
      v11 = sub_135B60(v10, a2, a3);
      if (v11)
      {
        if (sub_160EF0(0x24u, 4))
        {
          v12 = sub_160F34(0x24u);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to convert index in UC info pool %p %lld %d %p %d\n", v13, 36, v14, "AVE_DAL", "Idx2Addr", 443, "ret == 0", a1, *a1, a2, a3, v11);
            v13 = sub_175AE4();
            v14 = sub_160F68(4);
            v35 = *a1;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert index in UC info pool %p %lld %d %p %d", v13, 36, v14, "AVE_DAL", "Idx2Addr", 443);
        }

        sub_13DC4C(a1[1]);
        v15 = 4;
      }

      else
      {
        sub_13DC4C(a1[1]);
        v15 = 8;
      }
    }

    else
    {
      v15 = 4;
      if (sub_160EF0(0x24u, 4))
      {
        v22 = sub_160F34(0x24u);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        v25 = *a1;
        if (v22)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p\n", v23, 36, v24, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", a1, v25, a2, a3);
          v26 = sub_175AE4();
          v15 = 4;
          v27 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v26, 36, v27, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", a1, *a1, a2, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v23, 36, v24, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", a1, v25, a2, a3);
          v15 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  if (sub_160EF0(0x24u, v15))
  {
    v28 = sub_160F34(0x24u);
    v29 = sub_175AE4();
    v30 = sub_160F68(v15);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v29, 36, v30, "AVE_DAL", "Idx2Addr", a1, *a1, a2, a3, v11);
      v31 = sub_175AE4();
      v32 = sub_160F68(v15);
      v34 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v31, 36, v32, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v29, 36, v30, "AVE_DAL");
    }
  }

  return v11;
}

uint64_t sub_E1750(uint64_t *a1, const void *a2, _DWORD *a3)
{
  if (sub_160EF0(0x24u, 8))
  {
    v6 = sub_160F34(0x24u);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", v7, 36, v8, "AVE_DAL", "Addr2Idx", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(8);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", v7, 36, v8);
  }

  if (a3)
  {
    sub_13DC18(a1[1]);
    v10 = a1[4];
    if (v10)
    {
      v11 = sub_135BDC(v10, a2, a3);
      if (v11)
      {
        if (sub_160EF0(0x24u, 4))
        {
          v12 = sub_160F34(0x24u);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to convert address in UC info pool %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "Addr2Idx", 488, "ret == 0", a1, *a1, a2, a3, v11);
            v13 = sub_175AE4();
            v14 = sub_160F68(4);
            v15 = *a1;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert address in UC info pool %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "Addr2Idx", 488);
        }

        sub_13DC4C(a1[1]);
        v16 = 4;
      }

      else
      {
        sub_13DC4C(a1[1]);
        v16 = 8;
      }
    }

    else
    {
      v16 = 4;
      if (sub_160EF0(0x24u, 4))
      {
        v23 = sub_160F34(0x24u);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        v26 = *a1;
        if (v23)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p\n", v24, 36, v25, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", a1, v26, a2, a3);
          v27 = sub_175AE4();
          v16 = 4;
          v28 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p", v27, 36, v28, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", a1, *a1, a2, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p", v24, 36, v25, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", a1, v26, a2, a3);
          v16 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  else
  {
    v16 = 4;
    if (sub_160EF0(0x24u, 4))
    {
      v17 = sub_160F34(0x24u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      v20 = *a1;
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p\n", v18, 36, v19, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", a1, v20, a2, 0);
        v21 = sub_175AE4();
        v16 = 4;
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v21, 36, v22, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", a1, *a1, a2, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v18, 36, v19, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", a1, v20, a2, 0);
        v16 = 4;
      }
    }

    v11 = 4294966295;
  }

  if (sub_160EF0(0x24u, v16))
  {
    v29 = sub_160F34(0x24u);
    v30 = sub_175AE4();
    v31 = sub_160F68(v16);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d\n", v30, 36, v31, "AVE_DAL", "Addr2Idx", a1, *a1, a2, a3, v11);
      v30 = sub_175AE4();
      v31 = sub_160F68(v16);
      v32 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d", v30, 36, v31, "AVE_DAL");
  }

  return v11;
}

uint64_t sub_E1CC0(uint64_t *a1, const void *a2, const void *a3)
{
  if (sub_160EF0(0x24u, 6))
  {
    v6 = sub_160F34(0x24u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", v7, 36, v8, "AVE_DAL", "SetCallback", a1, *a1, a1[5], a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(6);
      v9 = *a1;
      v23 = *a1;
      v24 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v7, 36, v8, "AVE_DAL");
  }

  if (a2 && a3)
  {
    v10 = 0;
    a1[15] = a2;
    a1[16] = a3;
    v11 = 6;
    goto LABEL_14;
  }

  v11 = 4;
  if (!sub_160EF0(0x24u, 4))
  {
    goto LABEL_12;
  }

  v12 = sub_160F34(0x24u);
  v13 = sub_175AE4();
  v14 = sub_160F68(4);
  v15 = *a1;
  if (v12)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v13, 36, v14, "AVE_DAL", "SetCallback", 521, "pCB != __null && pParam != __null", a1, v15, a2, a3);
    v16 = sub_175AE4();
    v11 = 4;
    v17 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v16, 36, v17, "AVE_DAL", "SetCallback", 521, "pCB != __null && pParam != __null", a1, *a1, a2, a3);
LABEL_12:
    v10 = 4294966295;
    goto LABEL_14;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v13, 36, v14, "AVE_DAL", "SetCallback", 521, "pCB != __null && pParam != __null", a1, v15, a2, a3);
  v10 = 4294966295;
  v11 = 4;
LABEL_14:
  if (sub_160EF0(0x24u, v11))
  {
    v18 = sub_160F34(0x24u);
    v19 = sub_175AE4();
    v20 = sub_160F68(v11);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v19, 36, v20, "AVE_DAL", "SetCallback", a1, *a1, a1[5], a2, a3, v10);
      v19 = sub_175AE4();
      v20 = sub_160F68(v11);
      v21 = *a1;
      v25 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v19, 36, v20, "AVE_DAL", "SetCallback");
  }

  return v10;
}

uint64_t sub_E2008(uint64_t *a1, int a2, int a3)
{
  if (sub_160EF0(0x24u, 6))
  {
    v6 = sub_160F34(0x24u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d\n", v7, 36, v8, "AVE_DAL", "UpdatePriorityPolicy", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d", v7, 36);
  }

  if ((a3 | a2) < 0)
  {
    v14 = 4;
    if (sub_160EF0(0x24u, 4))
    {
      v15 = sub_160F34(0x24u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      v18 = *a1;
      if (!v15)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v16, 36, v17, "AVE_DAL", "UpdatePriorityPolicy", 555, "policy >= 0 && frameRate >= 0", a1, v18, a2, a3);
        v13 = 4294966295;
        v14 = 4;
        goto LABEL_25;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d\n", v16, 36, v17, "AVE_DAL", "UpdatePriorityPolicy", 555, "policy >= 0 && frameRate >= 0", a1, v18, a2, a3);
      v19 = sub_175AE4();
      v14 = 4;
      v20 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v19, 36, v20, "AVE_DAL", "UpdatePriorityPolicy", 555, "policy >= 0 && frameRate >= 0", a1, *a1, a2, a3);
    }

    v13 = 4294966295;
    goto LABEL_25;
  }

  sub_13DC18(a1[6]);
  if (a3 <= 59)
  {
    v10 = 33;
  }

  else
  {
    v10 = 15;
  }

  if (a3 <= 119)
  {
    v11 = v10;
  }

  else
  {
    v11 = 8;
  }

  if (a3 <= 239)
  {
    v12 = v11;
  }

  else
  {
    v12 = 4;
  }

  if (v12 != *(a1 + 15) || *(a1 + 14) != a2)
  {
    *(a1 + 14) = a2;
    *(a1 + 15) = v12;
    ++*(a1 + 16);
  }

  sub_13DC4C(a1[6]);
  v13 = 0;
  v14 = 6;
LABEL_25:
  if (sub_160EF0(0x24u, v14))
  {
    v21 = sub_160F34(0x24u);
    v22 = sub_175AE4();
    v23 = sub_160F68(v14);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d\n", v22, 36, v23, "AVE_DAL", "UpdatePriorityPolicy", a1, *a1, a2, a3, v13);
      v24 = sub_175AE4();
      v25 = sub_160F68(v14);
      v26 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v24, 36, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v22, 36, v23);
    }
  }

  return v13;
}

uint64_t sub_E23B8(uint64_t *a1, uint32_t a2)
{
  v34 = 0;
  if (sub_160EF0(0x24u, 6))
  {
    v4 = sub_160F34(0x24u);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d\n", v5, 36, v6, "AVE_DAL", "UCCreate", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(6);
      v8 = *a1;
    }

    else
    {
      v31 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d", v5, 36);
  }

  if (a2 - 1 >= 5)
  {
    v10 = 4;
    if (sub_160EF0(0x24u, 4))
    {
      v17 = sub_160F34(0x24u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      v20 = *a1;
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %d\n", v18, 36, v19, "AVE_DAL", "UCCreate", 653, "AVE_ClientType_None < type && type < AVE_ClientType_Max", a1, *a1, a2);
        v21 = sub_175AE4();
        v10 = 4;
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %d", v21, 36, v22, "AVE_DAL", "UCCreate", 653, "AVE_ClientType_None < type && type < AVE_ClientType_Max", a1, *a1, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %d", v18, 36, v19, "AVE_DAL", "UCCreate", 653, "AVE_ClientType_None < type && type < AVE_ClientType_Max", a1, *a1, a2);
        v10 = 4;
      }
    }

    v9 = 4294966295;
  }

  else
  {
    v9 = sub_15B8C4(a2, &v34);
    if (v9)
    {
      v10 = 4;
      if (sub_160EF0(0x24u, 4))
      {
        v11 = sub_160F34(0x24u);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        v14 = *a1;
        if (v11)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to create UC %p %lld %d %d\n", v12, 36, v13, "AVE_DAL", "UCCreate", 657, "ret == 0", a1, v14, a2, v9);
          v15 = sub_175AE4();
          v10 = 4;
          v16 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create UC %p %lld %d %d", v15, 36, v16, "AVE_DAL", "UCCreate", 657, "ret == 0", a1, *a1, a2, v9);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create UC %p %lld %d %d", v12, 36, v13, "AVE_DAL", "UCCreate", 657, "ret == 0", a1, v14, a2, v9);
          v10 = 4;
        }
      }
    }

    else
    {
      a1[5] = v34;
      v10 = 6;
    }
  }

  if (sub_160EF0(0x24u, v10))
  {
    v23 = sub_160F34(0x24u);
    v24 = sub_175AE4();
    v25 = sub_160F68(v10);
    v26 = a1[5];
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v24, 36, v25, "AVE_DAL", "UCCreate", a1, *a1, a2, a1[5], v9);
      v27 = sub_175AE4();
      v28 = sub_160F68(v10);
      v29 = *a1;
      v32 = a1[5];
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v27, 36, v28, "AVE_DAL");
    }

    else
    {
      v33 = a1[5];
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v24, 36, v25, "AVE_DAL");
    }
  }

  return v9;
}

uint64_t sub_E2824(const void **a1)
{
  if (sub_160EF0(0x24u, 6))
  {
    v2 = sub_160F34(0x24u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    v5 = *a1;
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p\n", v3, 36, v4, "AVE_DAL", "UCDestroy", a1, *a1, a1[5]);
      v3 = sub_175AE4();
      sub_160F68(6);
      v6 = *a1;
      v17 = *a1;
      v19 = a1[5];
    }

    else
    {
      v18 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p", v3, 36);
  }

  v7 = a1[5];
  if (v7 && (v8 = sub_15BE1C(v7), a1[5] = 0, v8))
  {
    v9 = v8;
    v10 = 4;
  }

  else
  {
    v9 = 0;
    v10 = 6;
  }

  if (sub_160EF0(0x24u, v10))
  {
    v11 = sub_160F34(0x24u);
    v12 = sub_175AE4();
    v13 = sub_160F68(v10);
    v14 = a1[5];
    if (v11)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d\n", v12, 36, v13, "AVE_DAL", "UCDestroy", a1, *a1, a1[5], v9);
      v12 = sub_175AE4();
      v13 = sub_160F68(v10);
      v15 = *a1;
    }

    v20 = a1[5];
    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v12, 36, v13);
  }

  return v9;
}

uint64_t sub_E2A40(const void **a1, uint64_t a2, uint64_t *a3)
{
  if (sub_160EF0(0x24u, 6))
  {
    v6 = sub_160F34(0x24u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", v7, 36, v8, "AVE_DAL", "UCOpen", a1, *a1, a1[5], a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(6);
      v9 = *a1;
      v30 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v7, 36, v8, "AVE_DAL");
  }

  if (a2 && a3)
  {
    sub_17212C((a2 + 40), "905.5.3", 16);
    v10 = sub_1502C8();
    memcpy((a2 + 56), v10, 0x650uLL);
    *(a2 + 1672) = 0;
    sub_161394((a2 + 1672), a2 + 1680);
    v11 = sub_15C1CC(a1[5], a2, a3);
    if (v11)
    {
      v12 = 4;
      if (sub_160EF0(0x24u, 4))
      {
        v13 = sub_160F34(0x24u);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        v16 = *a1;
        if (v13)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to open client %p %lld %p %p %d\n", v14, 36, v15, "AVE_DAL", "UCOpen", 723, "ret == 0", a1, v16, a2, a3, v11);
          v17 = sub_175AE4();
          v12 = 4;
          v18 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to open client %p %lld %p %p %d", v17, 36, v18, "AVE_DAL", "UCOpen", 723, "ret == 0", a1, *a1, a2, a3, v11);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to open client %p %lld %p %p %d", v14, 36, v15, "AVE_DAL", "UCOpen", 723, "ret == 0", a1, v16, a2, a3, v11);
          v12 = 4;
        }
      }
    }

    else
    {
      *a1 = *a3;
      v12 = 6;
    }
  }

  else
  {
    v12 = 4;
    if (sub_160EF0(0x24u, 4))
    {
      v19 = sub_160F34(0x24u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      v22 = *a1;
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v20, 36, v21, "AVE_DAL", "UCOpen", 712, "pIn != __null && pOut != __null", a1, v22, a2, a3);
        v23 = sub_175AE4();
        v12 = 4;
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v23, 36, v24, "AVE_DAL", "UCOpen", 712, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v20, 36, v21, "AVE_DAL", "UCOpen", 712, "pIn != __null && pOut != __null", a1, v22, a2, a3);
        v12 = 4;
      }
    }

    v11 = 4294966295;
  }

  if (sub_160EF0(0x24u, v12))
  {
    v25 = sub_160F34(0x24u);
    v26 = sub_175AE4();
    v27 = sub_160F68(v12);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v26, 36, v27, "AVE_DAL", "UCOpen", a1, *a1, a1[5], a2, a3, v11);
      v26 = sub_175AE4();
      v27 = sub_160F68(v12);
      v28 = *a1;
      v32 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v26, 36, v27, "AVE_DAL", "UCOpen");
  }

  return v11;
}

uint64_t sub_E2EF4(const void **a1, uint64_t *a2, void *a3)
{
  if (sub_160EF0(0x24u, 6))
  {
    v6 = sub_160F34(0x24u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", v7, 36, v8, "AVE_DAL", "UCClose", a1, *a1, a1[5], a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(6);
      v9 = *a1;
      v29 = *a1;
      v30 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v7, 36, v8, "AVE_DAL");
  }

  if (a2 && a3)
  {
    v10 = sub_15C704(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (sub_160EF0(0x24u, 4))
      {
        v12 = sub_160F34(0x24u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to close client %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCClose", 758, "ret == 0", a1, v15, a2, a3, v10);
          v16 = sub_175AE4();
          v11 = 4;
          v17 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to close client %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCClose", 758, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to close client %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCClose", 758, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (sub_160EF0(0x24u, 4))
    {
      v18 = sub_160F34(0x24u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCClose", 754, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = sub_175AE4();
        v11 = 4;
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCClose", 754, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCClose", 754, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x24u, v11))
  {
    v24 = sub_160F34(0x24u);
    v25 = sub_175AE4();
    v26 = sub_160F68(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCClose", a1, *a1, a1[5], a2, a3, v10);
      v25 = sub_175AE4();
      v26 = sub_160F68(v11);
      v27 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCClose");
  }

  return v10;
}

uint64_t sub_E3368(const void **a1, uint64_t *a2, void *a3)
{
  if (sub_160EF0(0x24u, 6))
  {
    v6 = sub_160F34(0x24u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", v7, 36, v8, "AVE_DAL", "UCPrepare", a1, *a1, a1[5], a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(6);
      v9 = *a1;
      v29 = *a1;
      v30 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v7, 36, v8, "AVE_DAL");
  }

  if (a2 && a3)
  {
    v10 = sub_15D208(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (sub_160EF0(0x24u, 4))
      {
        v12 = sub_160F34(0x24u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to prepare %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCPrepare", 791, "ret == 0", a1, v15, a2, a3, v10);
          v16 = sub_175AE4();
          v11 = 4;
          v17 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to prepare %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCPrepare", 791, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to prepare %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCPrepare", 791, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (sub_160EF0(0x24u, 4))
    {
      v18 = sub_160F34(0x24u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCPrepare", 787, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = sub_175AE4();
        v11 = 4;
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCPrepare", 787, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCPrepare", 787, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x24u, v11))
  {
    v24 = sub_160F34(0x24u);
    v25 = sub_175AE4();
    v26 = sub_160F68(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCPrepare", a1, *a1, a1[5], a2, a3, v10);
      v25 = sub_175AE4();
      v26 = sub_160F68(v11);
      v27 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCPrepare");
  }

  return v10;
}

uint64_t sub_E37DC(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (sub_160EF0(0x24u, 6))
  {
    v6 = sub_160F34(0x24u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", v7, 36, v8, "AVE_DAL", "UCStart", a1, *a1, a1[5], a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(6);
      v9 = *a1;
      v29 = *a1;
      v30 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v7, 36, v8, "AVE_DAL");
  }

  if (a2 && a3)
  {
    *(a2 + 10) = sub_132370(a1[3]);
    v10 = sub_15D758(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (sub_160EF0(0x24u, 4))
      {
        v12 = sub_160F34(0x24u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to start %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCStart", 833, "ret == 0", a1, v15, a2, a3, v10);
          v16 = sub_175AE4();
          v11 = 4;
          v17 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to start %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCStart", 833, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to start %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCStart", 833, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      *(a2 + 10) = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (sub_160EF0(0x24u, 4))
    {
      v18 = sub_160F34(0x24u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCStart", 826, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = sub_175AE4();
        v11 = 4;
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCStart", 826, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCStart", 826, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x24u, v11))
  {
    v24 = sub_160F34(0x24u);
    v25 = sub_175AE4();
    v26 = sub_160F68(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCStart", a1, *a1, a1[5], a2, a3, v10);
      v25 = sub_175AE4();
      v26 = sub_160F68(v11);
      v27 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCStart");
  }

  return v10;
}

uint64_t sub_E3C60(const void **a1, uint64_t *a2, void *a3)
{
  if (sub_160EF0(0x24u, 6))
  {
    v6 = sub_160F34(0x24u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", v7, 36, v8, "AVE_DAL", "UCStop", a1, *a1, a1[5], a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(6);
      v9 = *a1;
      v29 = *a1;
      v30 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v7, 36, v8, "AVE_DAL");
  }

  if (a2 && a3)
  {
    v10 = sub_15DCA8(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (sub_160EF0(0x24u, 4))
      {
        v12 = sub_160F34(0x24u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to stop %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCStop", 873, "ret == 0", a1, v15, a2, a3, v10);
          v16 = sub_175AE4();
          v11 = 4;
          v17 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to stop %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCStop", 873, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to stop %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCStop", 873, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (sub_160EF0(0x24u, 4))
    {
      v18 = sub_160F34(0x24u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCStop", 869, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = sub_175AE4();
        v11 = 4;
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCStop", 869, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCStop", 869, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x24u, v11))
  {
    v24 = sub_160F34(0x24u);
    v25 = sub_175AE4();
    v26 = sub_160F68(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCStop", a1, *a1, a1[5], a2, a3, v10);
      v25 = sub_175AE4();
      v26 = sub_160F68(v11);
      v27 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCStop");
  }

  return v10;
}

uint64_t sub_E40D4(const void **a1, uint64_t *a2, void *a3)
{
  if (sub_160EF0(0x24u, 8))
  {
    v6 = sub_160F34(0x24u);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", v7, 36, v8, "AVE_DAL", "UCProcess", a1, *a1, a1[5], a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(8);
      v9 = *a1;
      v29 = *a1;
      v30 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v7, 36, v8, "AVE_DAL");
  }

  if (a2 && a3)
  {
    v10 = sub_15E1F4(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (sub_160EF0(0x24u, 4))
      {
        v12 = sub_160F34(0x24u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to process %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCProcess", 906, "ret == 0", a1, v15, a2, a3, v10);
          v16 = sub_175AE4();
          v11 = 4;
          v17 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to process %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCProcess", 906, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to process %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCProcess", 906, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 8;
    }
  }

  else
  {
    v11 = 4;
    if (sub_160EF0(0x24u, 4))
    {
      v18 = sub_160F34(0x24u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCProcess", 902, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = sub_175AE4();
        v11 = 4;
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCProcess", 902, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCProcess", 902, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x24u, v11))
  {
    v24 = sub_160F34(0x24u);
    v25 = sub_175AE4();
    v26 = sub_160F68(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCProcess", a1, *a1, a1[5], a2, a3, v10);
      v25 = sub_175AE4();
      v26 = sub_160F68(v11);
      v27 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCProcess");
  }

  return v10;
}

uint64_t sub_E4548(const void **a1, uint64_t *a2, void *a3)
{
  if (sub_160EF0(0x24u, 7))
  {
    v6 = sub_160F34(0x24u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", v7, 36, v8, "AVE_DAL", "UCComplete", a1, *a1, a1[5], a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
      v29 = *a1;
      v30 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v7, 36, v8, "AVE_DAL");
  }

  if (a2 && a3)
  {
    v10 = sub_15E740(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (sub_160EF0(0x24u, 4))
      {
        v12 = sub_160F34(0x24u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to complete %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCComplete", 939, "ret == 0", a1, v15, a2, a3, v10);
          v16 = sub_175AE4();
          v11 = 4;
          v17 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to complete %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCComplete", 939, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to complete %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCComplete", 939, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 7;
    }
  }

  else
  {
    v11 = 4;
    if (sub_160EF0(0x24u, 4))
    {
      v18 = sub_160F34(0x24u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCComplete", 935, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = sub_175AE4();
        v11 = 4;
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCComplete", 935, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCComplete", 935, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x24u, v11))
  {
    v24 = sub_160F34(0x24u);
    v25 = sub_175AE4();
    v26 = sub_160F68(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCComplete", a1, *a1, a1[5], a2, a3, v10);
      v25 = sub_175AE4();
      v26 = sub_160F68(v11);
      v27 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCComplete");
  }

  return v10;
}

uint64_t sub_E49BC(const void **a1, uint64_t *a2, void *a3)
{
  if (sub_160EF0(0x24u, 6))
  {
    v6 = sub_160F34(0x24u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", v7, 36, v8, "AVE_DAL", "UCReset", a1, *a1, a1[5], a2, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(6);
      v9 = *a1;
      v29 = *a1;
      v30 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v7, 36, v8, "AVE_DAL");
  }

  if (a2 && a3)
  {
    v10 = sub_15EC8C(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (sub_160EF0(0x24u, 4))
      {
        v12 = sub_160F34(0x24u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to reset %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCReset", 1005, "ret == 0", a1, v15, a2, a3, v10);
          v16 = sub_175AE4();
          v11 = 4;
          v17 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to reset %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCReset", 1005, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to reset %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCReset", 1005, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (sub_160EF0(0x24u, 4))
    {
      v18 = sub_160F34(0x24u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCReset", 1001, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = sub_175AE4();
        v11 = 4;
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCReset", 1001, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCReset", 1001, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x24u, v11))
  {
    v24 = sub_160F34(0x24u);
    v25 = sub_175AE4();
    v26 = sub_160F68(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCReset", a1, *a1, a1[5], a2, a3, v10);
      v25 = sub_175AE4();
      v26 = sub_160F68(v11);
      v27 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCReset");
  }

  return v10;
}

void sub_E4E30(void *a1, int a2, unsigned int *a3, int a4)
{
  if (sub_160EF0(0x24u, 8))
  {
    v8 = sub_160F34(0x24u);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d\n", v9, 36, v10, "AVE_DAL", "UCRecv", a1, a2, a3, a4);
      v11 = sub_175AE4();
      v42 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d", v11, 36, v42);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d", v9, 36, v10);
    }
  }

  if (a1 && a3 && a4 > 0)
  {
    if (*(a1 + 28))
    {
      if (a1[15])
      {
        v12 = sub_E55F8(a1);
        if (v12)
        {
          v13 = v12;
          if (sub_160EF0(0x24u, 4))
          {
            v14 = sub_160F34(0x24u);
            v15 = sub_175AE4();
            v16 = sub_160F68(4);
            v17 = *a1;
            if (v14)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d\n", v15, 36, v16, "AVE_DAL", "UCRecv", 1184, "ret == 0", a1, *a1, v13);
              v15 = sub_175AE4();
              v16 = sub_160F68(4);
            }

            v46 = *a1;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d", v15, 36, v16, "AVE_DAL");
          }

          v25 = 5;
        }

        else
        {
          v30 = sub_175B74(a2);
          v31 = *a3;
          v32 = a3[2];
          v33 = a3[4];
          if (sub_160EF0(0x24u, 8))
          {
            v34 = a2;
            v35 = sub_160F34(0x24u);
            v36 = sub_175AE4();
            v37 = sub_160F68(8);
            if (v35)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d %d\n", v36, 36, v37, "AVE_DAL", "UCRecv", 1192, a1, *a1, v30, v31, v32, v33);
              v36 = sub_175AE4();
              v37 = sub_160F68(8);
              v45 = *a1;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d %d", v36, 36, v37, "AVE_DAL");
            a2 = v34;
          }

          v13 = (a1[15])(a1[16], v30, v31, v32, v33);
          if (v13)
          {
            v25 = 5;
          }

          else
          {
            v25 = 8;
          }
        }

        goto LABEL_36;
      }

      if (sub_160EF0(0x24u, 4))
      {
        v26 = sub_160F34(0x24u);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        v29 = a1[15];
        if (v26)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | invalid configuration %p 0x%x %p %d %p %p\n", v27, 36, v28, "AVE_DAL", "UCRecv", 1179, "pDAL->m_pCB != __null", a1, a2, a3, a4, a1[15], a1[16]);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
        }

        v48 = a1[15];
        v49 = a1[16];
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | invalid configuration %p 0x%x %p %d %p %p", v27, 36, v28, "AVE_DAL", "UCRecv", 1179, "pDAL->m_pCB != __null");
      }
    }

    else if (sub_160EF0(0x24u, 4))
    {
      v22 = sub_160F34(0x24u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p 0x%x %p %d %d\n", v23, 36, v24, "AVE_DAL", "UCRecv", 1175, "pDAL->m_iThreadState != 0", a1, a2, a3, a4, *(a1 + 28));
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
      }

      v47 = *(a1 + 28);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p 0x%x %p %d %d", v23, 36, v24, "AVE_DAL", "UCRecv");
    }

    v25 = 5;
    v13 = -1011;
    goto LABEL_36;
  }

  if (sub_160EF0(0x24u, 4))
  {
    v18 = sub_160F34(0x24u);
    v19 = sub_175AE4();
    v20 = sub_160F68(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p 0x%x %p %d\n", v19, 36, v20, "AVE_DAL", "UCRecv", 1169, "pCtx != __null && pArgs != __null && num > 0", a1, a2, a3, a4);
      v21 = sub_175AE4();
      v43 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p 0x%x %p %d", v21, 36, v43, "AVE_DAL", "UCRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p 0x%x %p %d", v19, 36, v20, "AVE_DAL", "UCRecv");
    }
  }

  v25 = 5;
  v13 = -1001;
LABEL_36:
  if (sub_160EF0(0x24u, v25))
  {
    v38 = sub_160F34(0x24u);
    v39 = sub_175AE4();
    v40 = sub_160F68(v25);
    if (v38)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d\n", v39, 36, v40, "AVE_DAL", "UCRecv", a1, a2, a3, a4, v13);
      v41 = sub_175AE4();
      v44 = sub_160F68(v25);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d", v41, 36, v44);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d", v39, 36, v40);
    }
  }
}

uint64_t sub_E55F8(void *a1)
{
  if (sub_160EF0(0x24u, 8))
  {
    v2 = sub_160F34(0x24u);
    v3 = sub_175AE4();
    v4 = sub_160F68(8);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "SetThreadPolicy", a1, *a1);
      v3 = sub_175AE4();
      sub_160F68(8);
      v5 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  sub_13DC18(a1[6]);
  if (*(a1 + 16) <= 0)
  {
    sub_13DC4C(a1[6]);
  }

  else
  {
    v6 = sub_E581C(a1, *(a1 + 14), *(a1 + 15));
    *(a1 + 16) = 0;
    sub_13DC4C(a1[6]);
    if (v6)
    {
      v7 = 4;
      goto LABEL_11;
    }
  }

  v6 = 0;
  v7 = 8;
LABEL_11:
  if (sub_160EF0(0x24u, v7))
  {
    v8 = sub_160F34(0x24u);
    v9 = sub_175AE4();
    v10 = sub_160F68(v7);
    v11 = *a1;
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v9, 36, v10, "AVE_DAL", "SetThreadPolicy", a1, *a1, v6);
      v9 = sub_175AE4();
      sub_160F68(v7);
      v12 = *a1;
    }

    else
    {
      v14 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v9, 36);
  }

  return v6;
}

uint64_t sub_E581C(void *a1, int a2, int a3)
{
  if (a2)
  {
    result = setpriority(3, 0, 4096);
    if (result)
    {
      v7 = result;
      result = sub_160EF0(0x24u, 5);
      if (result)
      {
        v8 = sub_160F34(0x24u);
        v9 = sub_175AE4();
        v10 = sub_160F68(5);
        if (v8)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d\n", v9, 36, v10, "AVE_DAL", "AdjustThreadPolicy", 1254, a1, *a1, a2, a3, v7, 0);
          v9 = sub_175AE4();
          v10 = sub_160F68(5);
          v11 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d", v9, 36, v10, "AVE_DAL");
        return 0;
      }
    }
  }

  else
  {
    info = 0;
    mach_timebase_info(&info);
    if (a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = 33;
    }

    LODWORD(v13) = info.numer;
    LODWORD(v12) = info.denom;
    __asm { FMOV            V2.2D, #3.0 }

    _Q2.f64[0] = v14;
    *policy_info = vmovn_s64(vcvtq_u64_f64(vmulq_n_f64(_Q2, v12 / v13 * 1000000.0)));
    v34 = policy_info[0];
    v35 = 1;
    v20 = setpriority(3, 0, 0);
    if (v20)
    {
      v21 = v20;
      if (sub_160EF0(0x24u, 5))
      {
        v22 = sub_160F34(0x24u);
        v23 = sub_175AE4();
        v24 = sub_160F68(5);
        if (v22)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d\n", v23, 36, v24, "AVE_DAL", "AdjustThreadPolicy", 1238, a1, *a1, 0, v14, v21, 0);
          v23 = sub_175AE4();
          v24 = sub_160F68(5);
          v25 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d", v23, 36, v24, "AVE_DAL");
      }
    }

    v26 = pthread_self();
    v27 = pthread_mach_thread_np(v26);
    result = thread_policy_set(v27, 2u, policy_info, 4u);
    if (result)
    {
      v28 = result;
      if (sub_160EF0(0x24u, 4))
      {
        v29 = sub_160F34(0x24u);
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d %d 0x%x %d\n", v30, 36, v31, "AVE_DAL", "AdjustThreadPolicy", 1246, "res == 0", a1, *a1, 0, v14, v28, 0);
          v30 = sub_175AE4();
          v31 = sub_160F68(4);
          v32 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d %d 0x%x %d", v30, 36, v31, "AVE_DAL", "AdjustThreadPolicy");
      }

      return 4294966296;
    }
  }

  return result;
}

uint64_t sub_E5C00(void *a1)
{
  recvPort = 0;
  memset(&context, 0, sizeof(context));
  if (sub_160EF0(0x24u, 7))
  {
    v2 = sub_160F34(0x24u);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "AddRunLoopSource", a1, *a1);
      v3 = sub_175AE4();
      sub_160F68(7);
      v5 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  v6 = IOCreateReceivePort(0x39u, &recvPort);
  if (v6)
  {
    v7 = v6;
    if (sub_160EF0(0x24u, 4))
    {
      v8 = sub_160F34(0x24u);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create port %p %lld 0x%x %d\n", v9, 36, v10, "AVE_DAL", "AddRunLoopSource", 1318, "res == 0", a1, *a1, v7, 0);
        v9 = sub_175AE4();
        v10 = sub_160F68(4);
        v11 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create port %p %lld 0x%x %d", v9, 36, v10, "AVE_DAL");
    }

    v15 = 4294966292;
  }

  else
  {
    context.version = 1;
    context.info = a1;
    memset(&context.retain, 0, 24);
    v12 = CFMachPortCreateWithPort(0, recvPort, &IODispatchCalloutFromMessage, &context, 0);
    if (v12)
    {
      v13 = v12;
      RunLoopSource = CFMachPortCreateRunLoopSource(0, v12, 0);
      CFRunLoopAddSource(a1[10], RunLoopSource, kCFRunLoopDefaultMode);
      v15 = 0;
      *(a1 + 22) = recvPort;
      a1[12] = v13;
      a1[13] = RunLoopSource;
      v16 = 7;
      goto LABEL_18;
    }

    if (sub_160EF0(0x24u, 4))
    {
      v23 = sub_160F34(0x24u);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create mach port %p %lld 0x%x %d\n", v24, 36, v25, "AVE_DAL", "AddRunLoopSource", 1332, "pAsyncPort != __null", a1, *a1, recvPort, 0);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        v26 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create mach port %p %lld 0x%x %d", v24, 36, v25, "AVE_DAL");
    }

    v15 = 4294966293;
  }

  if (recvPort)
  {
    mach_port_mod_refs(mach_task_self_, recvPort, 1u, -1);
    recvPort = 0;
  }

  v16 = 4;
LABEL_18:
  if (sub_160EF0(0x24u, v16))
  {
    v17 = sub_160F34(0x24u);
    v18 = sub_175AE4();
    v19 = sub_160F68(v16);
    v20 = *a1;
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v18, 36, v19, "AVE_DAL", "AddRunLoopSource", a1, *a1, v15);
      v18 = sub_175AE4();
      sub_160F68(v16);
      v21 = *a1;
    }

    else
    {
      v27 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v18, 36);
  }

  return v15;
}

uint64_t sub_E60A0(void *a1)
{
  if (sub_160EF0(0x24u, 7))
  {
    v2 = sub_160F34(0x24u);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "DelRunLoopSource", a1, *a1);
      v3 = sub_175AE4();
      sub_160F68(7);
      v5 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  v6 = a1[13];
  if (v6)
  {
    CFRunLoopRemoveSource(a1[10], v6, kCFRunLoopDefaultMode);
    CFRelease(a1[13]);
    a1[13] = 0;
  }

  v7 = a1[12];
  if (v7)
  {
    CFMachPortInvalidate(v7);
    CFRelease(a1[12]);
    a1[12] = 0;
  }

  v8 = *(a1 + 22);
  if (v8)
  {
    mach_port_mod_refs(mach_task_self_, v8, 1u, -1);
    *(a1 + 22) = 0;
  }

  if (sub_160EF0(0x24u, 7))
  {
    v9 = sub_160F34(0x24u);
    v10 = sub_175AE4();
    v11 = sub_160F68(7);
    v12 = *a1;
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v10, 36, v11, "AVE_DAL", "DelRunLoopSource", a1, *a1, 0);
      v10 = sub_175AE4();
      sub_160F68(7);
      v13 = *a1;
    }

    else
    {
      v15 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v10, 36);
  }

  return 0;
}

uint64_t sub_E62D0(uint64_t *a1)
{
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  if (sub_160EF0(0x24u, 6))
  {
    v2 = sub_160F34(0x24u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "SetUpRunLoop", a1, *a1);
      v3 = sub_175AE4();
      sub_160F68(6);
      v5 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  if (a1[10])
  {
    v6 = 0;
LABEL_8:
    v7 = 6;
    goto LABEL_31;
  }

  Current = CFRunLoopGetCurrent();
  a1[10] = Current;
  if (!Current)
  {
    if (sub_160EF0(0x24u, 4))
    {
      v17 = sub_160F34(0x24u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      v20 = *a1;
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to get run loop %p %lld %d\n", v18, 36, v19, "AVE_DAL", "SetUpRunLoop", 1439, "m_pcRunLoop != __null", a1, *a1, 0);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        v21 = *a1;
      }

      else
      {
        v40 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to get run loop %p %lld %d", v18, 36, v19, "AVE_DAL");
    }

    v6 = 4294966296;
    goto LABEL_28;
  }

  CFRetain(Current);
  v9 = sub_E5C00(a1);
  if (v9)
  {
    v6 = v9;
    if (sub_160EF0(0x24u, 4))
    {
      v10 = sub_160F34(0x24u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      v13 = *a1;
      if (v10)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to add run loop source %p %lld %d\n", v11, 36, v12, "AVE_DAL", "SetUpRunLoop", 1445, "ret == 0", a1, *a1, v6);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        v16 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to add run loop source %p %lld %d", v14, 36, v15, "AVE_DAL");
        goto LABEL_28;
      }

      v39 = *a1;
      v41 = v6;
      v38 = a1;
      v36 = 1445;
      v35 = v12;
      v28 = "%lld %d AVE %s: %s::%s:%d %s | fail to add run loop source %p %lld %d";
LABEL_27:
      syslog(3, v28, v11, 36, v35, "AVE_DAL", "SetUpRunLoop", v36, "ret == 0", v38, v39, v41, v42, v43, v44, v45, v46, v47);
    }
  }

  else
  {
    *&v44 = *a1;
    *(&v46 + 1) = sub_E4E30;
    v47 = a1;
    v6 = sub_15CC50(a1[5], *(a1 + 22), &v44, &v42);
    if (!v6)
    {
      *(a1 + 28) = 1;
      goto LABEL_8;
    }

    if (sub_160EF0(0x24u, 4))
    {
      v22 = sub_160F34(0x24u);
      v11 = sub_175AE4();
      v23 = sub_160F68(4);
      v24 = *a1;
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to config driver %p %lld %d\n", v11, 36, v23, "AVE_DAL", "SetUpRunLoop", 1453, "ret == 0", a1, *a1, v6);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        v27 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to config driver %p %lld %d", v25, 36, v26, "AVE_DAL");
        goto LABEL_28;
      }

      v39 = *a1;
      v41 = v6;
      v38 = a1;
      v36 = 1453;
      v35 = v23;
      v28 = "%lld %d AVE %s: %s::%s:%d %s | fail to config driver %p %lld %d";
      goto LABEL_27;
    }
  }

LABEL_28:
  if (a1[10])
  {
    sub_E60A0(a1);
    CFRelease(a1[10]);
    a1[10] = 0;
  }

  v7 = 4;
LABEL_31:
  if (sub_160EF0(0x24u, v7))
  {
    v29 = sub_160F34(0x24u);
    v30 = sub_175AE4();
    v31 = sub_160F68(v7);
    v32 = *a1;
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v30, 36, v31, "AVE_DAL", "SetUpRunLoop", a1, *a1, v6);
      v30 = sub_175AE4();
      sub_160F68(v7);
      v33 = *a1;
    }

    else
    {
      v37 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v30, 36);
  }

  return v6;
}

uint64_t sub_E6834(void *a1)
{
  if (sub_160EF0(0x24u, 6))
  {
    v2 = sub_160F34(0x24u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "TearDownRunLoop", a1, *a1);
      v3 = sub_175AE4();
      sub_160F68(6);
      v5 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  if (a1[10])
  {
    *(a1 + 28) = 0;
    sub_E60A0(a1);
    CFRelease(a1[10]);
    a1[10] = 0;
  }

  if (sub_160EF0(0x24u, 6))
  {
    v6 = sub_160F34(0x24u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    v9 = *a1;
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v7, 36, v8, "AVE_DAL", "TearDownRunLoop", a1, *a1, 0);
      v7 = sub_175AE4();
      sub_160F68(6);
      v10 = *a1;
    }

    else
    {
      v12 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v7, 36);
  }

  return 0;
}

uint64_t sub_E6A20(void *a1)
{
  if (sub_160EF0(0x24u, 6))
  {
    v2 = sub_160F34(0x24u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "TerminateRunLoop", a1, *a1);
      v3 = sub_175AE4();
      sub_160F68(6);
      v5 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  v6 = a1[10];
  if (v6)
  {
    CFRunLoopStop(v6);
  }

  if (sub_160EF0(0x24u, 6))
  {
    v7 = sub_160F34(0x24u);
    v8 = sub_175AE4();
    v9 = sub_160F68(6);
    v10 = *a1;
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v8, 36, v9, "AVE_DAL", "TerminateRunLoop", a1, *a1, 0);
      v8 = sub_175AE4();
      sub_160F68(6);
      v11 = *a1;
    }

    else
    {
      v13 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v8, 36);
  }

  return 0;
}

void sub_E6BF8(uint64_t **a1)
{
  if (sub_160EF0(0x24u, 7))
  {
    v2 = sub_160F34(0x24u);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p\n", v3, 36, v4, "AVE_DAL", "RecvThread", a1);
      v5 = sub_175AE4();
      v33 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v5, 36, v33, "AVE_DAL", "RecvThread", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v3, 36, v4, "AVE_DAL", "RecvThread", a1);
    }
  }

  if (a1)
  {
    v12 = *a1;
    if (*a1)
    {
      os_retain(a1[2]);
      v18 = voucher_adopt();
      pthread_setname_np("AVE_UCRecv");
      v19 = sub_E581C(v12, 0, 0);
      if (v19)
      {
        v20 = v19;
        if (sub_160EF0(0x24u, 4))
        {
          v21 = sub_160F34(0x24u);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *v12;
          if (v21)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d\n", v22, 36, v23, "AVE_DAL", "RecvThread", 1572, "ret == 0", v12, *v12, v20);
            v22 = sub_175AE4();
            v23 = sub_160F68(4);
          }

          v34 = *v12;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d", v22, 36, v23, "AVE_DAL");
        }
      }

      else
      {
        v20 = sub_E62D0(v12);
        if (v20)
        {
          if (sub_160EF0(0x24u, 4))
          {
            v25 = sub_160F34(0x24u);
            v26 = sub_175AE4();
            v27 = sub_160F68(4);
            v28 = *v12;
            if (v25)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | fail to set up run loop %p %lld %d\n", v26, 36, v27, "AVE_DAL", "RecvThread", 1576, "ret == 0", v12, *v12, v20);
              v26 = sub_175AE4();
              v27 = sub_160F68(4);
            }

            v35 = *v12;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set up run loop %p %lld %d", v26, 36, v27, "AVE_DAL");
          }
        }

        else
        {
          *(a1 + 2) = 1;
          CFRunLoopRun();
          sub_E6834(v12);
        }
      }

      if (v18 != -1)
      {
        v29 = voucher_adopt();
        os_release(v29);
      }

      if (v20)
      {
        v6 = 4;
      }

      else
      {
        v6 = 7;
      }
    }

    else
    {
      v6 = 4;
      if (sub_160EF0(0x24u, 4))
      {
        v13 = sub_160F34(0x24u);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong class %p\n", v14, 36, v15, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
          v16 = sub_175AE4();
          v6 = 4;
          v17 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong class %p", v16, 36, v17, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong class %p", v14, 36, v15, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
          v6 = 4;
        }
      }

      v20 = -1015;
    }
  }

  else
  {
    v6 = 4;
    if (sub_160EF0(0x24u, 4))
    {
      v7 = sub_160F34(0x24u);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p\n", v8, 36, v9, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
        v10 = sub_175AE4();
        v6 = 4;
        v11 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p", v10, 36, v11, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p", v8, 36, v9, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
        v6 = 4;
      }
    }

    v20 = -1001;
  }

  if (sub_160EF0(0x24u, v6))
  {
    v30 = sub_160F34(0x24u);
    v31 = sub_175AE4();
    v32 = sub_160F68(v6);
    if (v30)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %d\n", v31, 36, v32, "AVE_DAL", "RecvThread", a1, v20);
      v31 = sub_175AE4();
      v32 = sub_160F68(v6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %d", v31, 36, v32, "AVE_DAL", "RecvThread", a1, v20);
  }

  pthread_exit(0);
}

unsigned int *sub_E71EC(int a1, int a2, int a3, int a4)
{
  result = sub_16FEFC(a1, a2, a3);
  if (result)
  {

    return sub_14E748(result, a4);
  }

  return result;
}

uint64_t sub_E7234(int a1, int a2, int a3, int a4, int a5, int a6)
{
  result = sub_16FFA4(a1, a2, a3);
  if (result)
  {
    result = sub_14E6F8(result, a4, a5, a6);
    if (result)
    {
      return *(result + 16);
    }
  }

  return result;
}

uint64_t sub_E7284(int a1, int a2, int a3, int a4, uint64_t a5, _DWORD *a6)
{
  result = 4294966295;
  if (!a5 || !a6)
  {
LABEL_5:
    if (!a6)
    {
      return result;
    }

    goto LABEL_6;
  }

  v11 = sub_16FE54(a1, a2, a4);
  if (v11)
  {
    result = sub_175BA8(v11, a3, a5, a6);
    goto LABEL_5;
  }

  result = 4294966288;
  if (!a6)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *a6 = 0;
  }

  return result;
}

uint64_t sub_E72FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v8 = a8;
  v9 = 1;
  v10 = 4294966295;
  if (a7 && a8)
  {
    v17 = sub_167D08();
    v18 = malloc_type_malloc(4 * v17, 0x100004052888210uLL);
    if (v18)
    {
      v19 = v18;
      if (a4 == 1)
      {
        v20 = &dword_1846F8;
        v22 = 9;
        while (*v20 != a5)
        {
          v20 += 8;
          if (!--v22)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        if (a4 != 2)
        {
          goto LABEL_17;
        }

        v20 = &dword_184818;
        v21 = 9;
        while (*v20 != a5)
        {
          v20 += 8;
          if (!--v21)
          {
            goto LABEL_16;
          }
        }
      }

      v51 = v20;
      v59[0] = v17;
      if (!sub_E7284(a1, a2, a3, a4, v18, v59))
      {
        v45 = v8;
        if (v59[0] < 1)
        {
          LODWORD(v54) = 0;
        }

        else
        {
          v24 = 0;
          v54 = 0;
          v25 = 36;
          if (a4 == 2)
          {
            v25 = 40;
          }

          v50 = v25;
          v26 = a6;
          v47 = a5;
          v46 = a4;
          v58 = a5;
          v57 = a4;
          v49 = a5;
          v56 = a5;
          v48 = a4;
          v55 = a4;
          do
          {
            v52 = v24;
            v27 = sub_167CD8(v19[v24]);
            v28 = *&v27[v50];
            v29 = 2;
            v30 = v54;
            do
            {
              v31 = v51[v29];
              if (!v31)
              {
                break;
              }

              if (v31 == v28 && (*(v51 + 4) != 1 || *(v27 + 1) == v26))
              {
                *(a7 + 4 * v30) = *v27;
                v30 = (v30 + 1);
              }

              ++v29;
            }

            while (v29 != 8);
            v54 = v30;
            if (sub_160EF0(0x4Bu, 8))
            {
              v32 = sub_160F34(0x4Bu);
              v33 = sub_175AE4();
              v34 = sub_160F68(8);
              if (v32)
              {
                printf("%lld %d AVE %s: %s:%d number of supported pixel format %d %d 0x%x %d %d %d %d\n", v33, 75, v34, "AVE_PixelFmt_GetSupportedListByProfile", 249, a1, a2, a3, v48, v49, v26, v30);
                v35 = sub_175AE4();
                v44 = sub_160F68(8);
                syslog(3, "%lld %d AVE %s: %s:%d number of supported pixel format %d %d 0x%x %d %d %d %d", v35, 75, v44, "AVE_PixelFmt_GetSupportedListByProfile", 249, a1, a2, a3, v48, v49, v26, v30);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d number of supported pixel format %d %d 0x%x %d %d %d %d", v33, 75, v34, "AVE_PixelFmt_GetSupportedListByProfile", 249, a1, a2, a3, v46, v47, a6, v30);
              }
            }

            if (v30 >= 1)
            {
              v36 = 0;
              v37 = v30;
              do
              {
                if (sub_160EF0(0x4Bu, 8))
                {
                  v38 = sub_160F34(0x4Bu);
                  v39 = sub_175AE4();
                  v40 = sub_160F68(8);
                  v41 = *(a7 + 4 * v36);
                  if (v38)
                  {
                    printf("%lld %d AVE %s: %s:%d list of supported pixel format %d %d 0x%x %d %d %d [%d] 0x%x\n", v39, 75, v40, "AVE_PixelFmt_GetSupportedListByProfile", 255, a1, a2, a3, v57, v58, a6, v36, v41);
                    v42 = sub_175AE4();
                    v43 = sub_160F68(8);
                    v37 = v30;
                    syslog(3, "%lld %d AVE %s: %s:%d list of supported pixel format %d %d 0x%x %d %d %d [%d] 0x%x", v42, 75, v43, "AVE_PixelFmt_GetSupportedListByProfile", 255, a1, a2, a3, v57, v58, a6, v36, *(a7 + 4 * v36));
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d list of supported pixel format %d %d 0x%x %d %d %d [%d] 0x%x", v39, 75, v40, "AVE_PixelFmt_GetSupportedListByProfile", 255, a1, a2, a3, v55, v56, a6, v36, v41);
                  }
                }

                ++v36;
              }

              while (v37 != v36);
            }

            v24 = v52 + 1;
            v26 = a6;
          }

          while (v52 + 1 < v59[0]);
        }

        v10 = 0;
        v9 = 0;
        v8 = v45;
        *v45 = v54;
        goto LABEL_18;
      }

LABEL_16:
      v9 = 1;
LABEL_17:
      v10 = 4294966288;
LABEL_18:
      free(v19);
      goto LABEL_19;
    }

    v10 = 4294966293;
  }

LABEL_19:
  if (v8 && v9)
  {
    *v8 = 0;
  }

  return v10;
}

uint64_t sub_E7834(int a1, int a2, int a3, int a4, int a5)
{
  v10 = sub_167D08();
  v11 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  if (!v11)
  {
    return 4294966293;
  }

  v12 = v11;
  v18 = v10;
  v13 = sub_E7284(a1, a2, a3, a4, v11, &v18);
  if (!v13)
  {
    v14 = v18;
    if (v18 < 1)
    {
LABEL_7:
      v13 = 4294966295;
    }

    else
    {
      v15 = v12;
      while (1)
      {
        v16 = *v15++;
        if (v16 == a5)
        {
          break;
        }

        if (!--v14)
        {
          goto LABEL_7;
        }
      }

      v13 = 0;
    }
  }

  free(v12);
  return v13;
}