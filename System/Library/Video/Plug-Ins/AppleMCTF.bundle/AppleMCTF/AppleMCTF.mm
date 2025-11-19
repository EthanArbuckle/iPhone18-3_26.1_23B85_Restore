uint64_t sub_B8C(uint64_t *a1, uint64_t *a2)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v4 = sub_56AD0(0xD3u);
    v5 = sub_66A18();
    v6 = sub_56B04(7);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p\n", v5, 211, v6, "AVE_SEI", "RemoveFrame", a1, *a1, a2);
      v5 = sub_66A18();
      sub_56B04(7);
      v8 = *a1;
    }

    else
    {
      v17 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p", v5, 211);
  }

  sub_1C168(a2);
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
  v10 = sub_43464(a1[5], a2);
  if (v10)
  {
    v11 = 4;
  }

  else
  {
    v11 = 7;
  }

  if (sub_56A8C(0xD3u, v11))
  {
    v12 = sub_56AD0(0xD3u);
    v13 = sub_66A18();
    v14 = sub_56B04(v11);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %d\n", v13, 211, v14, "AVE_SEI", "RemoveFrame", a1, *a1, a2, v10);
      v13 = sub_66A18();
      v14 = sub_56B04(v11);
      v15 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d", v13, 211, v14);
  }

  return v10;
}

uint64_t sub_DD0(pthread_mutex_t **a1, uint64_t a2)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v4 = sub_56AD0(0xD3u);
    v5 = sub_66A18();
    v6 = sub_56B04(7);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", v5, 211, v6, "AVE_SEI", "DeleteFrame", a1, *a1, a2);
      v5 = sub_66A18();
      sub_56B04(7);
      v8 = *a1;
    }

    else
    {
      v17 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", v5, 211);
  }

  v9 = sub_422D8(a1[4]);
  v10 = sub_FFC(a1, a2);
  if (v10)
  {
    v9 = sub_B8C(a1, v10);
  }

  sub_4230C(a1[4]);
  if (v9)
  {
    v11 = 4;
  }

  else
  {
    v11 = 7;
  }

  if (sub_56A8C(0xD3u, v11))
  {
    v12 = sub_56AD0(0xD3u);
    v13 = sub_66A18();
    v14 = sub_56B04(v11);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d\n", v13, 211, v14, "AVE_SEI", "DeleteFrame", a1, *a1, a2, v9);
      v13 = sub_66A18();
      v14 = sub_56B04(v11);
      v15 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v13, 211, v14);
  }

  return v9;
}

void *sub_FFC(void *a1, uint64_t a2)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v4 = sub_56AD0(0xD3u);
    v5 = sub_66A18();
    v6 = sub_56B04(7);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", v5, 211, v6, "AVE_SEI", "FindFrame", a1, *a1, a2);
      v5 = sub_66A18();
      sub_56B04(7);
      v8 = *a1;
    }

    else
    {
      v22 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", v5, 211);
  }

  v9 = sub_1C304((a1 + 6));
  if (v9 != sub_1C320((a1 + 6)))
  {
    while (!sub_56A8C(0xD3u, 8))
    {
LABEL_17:
      if (v9[3] == a2)
      {
        goto LABEL_20;
      }

      v9 = sub_1C14C(v9);
      if (v9 == sub_1C320((a1 + 6)))
      {
        goto LABEL_19;
      }
    }

    v10 = sub_56AD0(0xD3u);
    v11 = sub_66A18();
    v12 = sub_56B04(8);
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
      v11 = sub_66A18();
      v12 = sub_56B04(8);
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
  if (sub_56A8C(0xD3u, 7))
  {
    v17 = sub_56AD0(0xD3u);
    v18 = sub_66A18();
    v19 = sub_56B04(7);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p\n", v18, 211, v19, "AVE_SEI", "FindFrame", a1, *a1, a2, v9);
      v18 = sub_66A18();
      v19 = sub_56B04(7);
      v20 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p", v18, 211, v19);
  }

  return v9;
}

uint64_t sub_12F4(void *a1, uint64_t a2, uint64_t a3, char *a4, int a5, int *a6)
{
  v115 = 0;
  if (sub_56A8C(0xD3u, 7))
  {
    v12 = sub_56AD0(0xD3u);
    v13 = sub_66A18();
    v14 = sub_56B04(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx %p %d\n", v13, 211, v14, "AVE_SEI", "Generate", a1, *a1, a2, a3, a4, a5);
      v13 = sub_66A18();
      v14 = sub_56B04(7);
      v15 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx %p %d", v13, 211, v14, "AVE_SEI", "Generate");
  }

  if (a4 && (a5 & 0x80000000) == 0 && a6)
  {
    *a6 = 0;
    sub_422D8(a1[4]);
    v16 = sub_FFC(a1, a2);
    if (v16)
    {
      v17 = v16;
      v18 = a1[1] & a3 & v16[4];
      if (v18)
      {
        v115 = 0;
        v19 = sub_23E8(a1, a4, a5 - *a6, v16, v18, &v115);
        if (v19)
        {
          v20 = v19;
          if (!sub_56A8C(0xD3u, 4))
          {
LABEL_28:
            sub_4230C(a1[4]);
            v25 = 4;
            goto LABEL_90;
          }

          v21 = sub_56AD0(0xD3u);
          v22 = sub_66A18();
          v23 = sub_56B04(4);
          v24 = *a1;
          if (v21)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 345, "ret == 0", a1, *a1, v20);
            v22 = sub_66A18();
            v23 = sub_56B04(4);
          }

          v105 = *a1;
LABEL_27:
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v22, 211, v23, "AVE_SEI");
          goto LABEL_28;
        }

        if (v115 >= 1 && sub_56A8C(0xD3u, 7))
        {
          v32 = sub_56AD0(0xD3u);
          v33 = sub_66A18();
          v34 = sub_56B04(7);
          v35 = *a1;
          if (v32)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateISPMetadataNALU added %d bytes\n", v33, 211, v34, "AVE_SEI", "Generate", 349, a1, *a1, v115);
            v33 = sub_66A18();
            v34 = sub_56B04(7);
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
          v39 = sub_27EC(a1, v38, a5 - v37, v17, v18, &v115);
          if (v39)
          {
            v20 = v39;
            if (!sub_56A8C(0xD3u, 4))
            {
              goto LABEL_28;
            }

            v40 = sub_56AD0(0xD3u);
            v22 = sub_66A18();
            v23 = sub_56B04(4);
            v41 = *a1;
            if (v40)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 361, "ret == 0", a1, *a1, v20);
              v22 = sub_66A18();
              v23 = sub_56B04(4);
            }

            v106 = *a1;
            goto LABEL_27;
          }

          if (v115 >= 1 && sub_56A8C(0xD3u, 7))
          {
            v42 = sub_56AD0(0xD3u);
            v111 = sub_66A18();
            v43 = sub_56B04(7);
            v44 = *a1;
            if (v42)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateTimingInfoMetadata added %d bytes\n", v111, 211, v43, "AVE_SEI", "Generate", 366, a1, *a1, v115);
              v45 = sub_66A18();
              v46 = sub_56B04(7);
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
          v50 = sub_3068(a1, v49, a5 - v48, v17, v18, &v115);
          if (v50)
          {
            v20 = v50;
            if (!sub_56A8C(0xD3u, 4))
            {
              goto LABEL_28;
            }

            v51 = sub_56AD0(0xD3u);
            v22 = sub_66A18();
            v23 = sub_56B04(4);
            v52 = *a1;
            if (v51)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 376, "ret == 0", a1, *a1, v20);
              v22 = sub_66A18();
              v23 = sub_56B04(4);
            }

            v107 = *a1;
            goto LABEL_27;
          }

          if (v115 >= 1 && sub_56A8C(0xD3u, 7))
          {
            v53 = sub_56AD0(0xD3u);
            v112 = sub_66A18();
            v54 = sub_56B04(7);
            v55 = *a1;
            if (v53)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateContentColorVolumeNALU added %d bytes\n", v112, 211, v54, "AVE_SEI", "Generate", 381, a1, *a1, v115);
              v56 = sub_66A18();
              v57 = sub_56B04(7);
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
          v61 = sub_3448(a1, v60, a5 - v59, v17, v18, &v115);
          if (v61)
          {
            v20 = v61;
            if (!sub_56A8C(0xD3u, 4))
            {
              goto LABEL_28;
            }

            v62 = sub_56AD0(0xD3u);
            v22 = sub_66A18();
            v23 = sub_56B04(4);
            v63 = *a1;
            if (v62)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 390, "ret == 0", a1, *a1, v20);
              v22 = sub_66A18();
              v23 = sub_56B04(4);
            }

            v108 = *a1;
            goto LABEL_27;
          }

          if (v115 >= 1 && sub_56A8C(0xD3u, 7))
          {
            v64 = sub_56AD0(0xD3u);
            v113 = sub_66A18();
            v65 = sub_56B04(7);
            v66 = *a1;
            if (v64)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateAmbientViewingEnvironmentNALU added %d bytes\n", v113, 211, v65, "AVE_SEI", "Generate", 396, a1, *a1, v115);
              v67 = sub_66A18();
              v68 = sub_56B04(7);
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
        v70 = sub_381C(a1, v38, a5 - v37, v17, v18, &v115);
        if (v70)
        {
          v20 = v70;
          if (!sub_56A8C(0xD3u, 4))
          {
            goto LABEL_28;
          }

          v71 = sub_56AD0(0xD3u);
          v22 = sub_66A18();
          v23 = sub_56B04(4);
          v72 = *a1;
          if (v71)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 407, "ret == 0", a1, *a1, v20);
            v22 = sub_66A18();
            v23 = sub_56B04(4);
          }

          v109 = *a1;
          goto LABEL_27;
        }

        if (v115 >= 1 && sub_56A8C(0xD3u, 7))
        {
          v73 = sub_56AD0(0xD3u);
          v114 = sub_66A18();
          v74 = sub_56B04(7);
          v75 = *a1;
          if (v73)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateLuxLevelNALU added %d bytes\n", v114, 211, v74, "AVE_SEI", "Generate", 411, a1, *a1, v115);
            v76 = sub_66A18();
            v77 = sub_56B04(7);
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
        v80 = sub_3BF0(a1, &v38[v78], a5 - v79, v17, v18, &v115);
        if (v80)
        {
          v20 = v80;
          if (!sub_56A8C(0xD3u, 4))
          {
            goto LABEL_28;
          }

          v81 = sub_56AD0(0xD3u);
          v22 = sub_66A18();
          v23 = sub_56B04(4);
          v82 = *a1;
          if (v81)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 421, "ret == 0", a1, *a1, v20);
            v22 = sub_66A18();
            v23 = sub_56B04(4);
          }

          v110 = *a1;
          goto LABEL_27;
        }

        if (v115 >= 1 && sub_56A8C(0xD3u, 7))
        {
          v83 = sub_56AD0(0xD3u);
          v84 = sub_66A18();
          v85 = sub_56B04(7);
          v86 = *a1;
          if (v83)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateUnregisteredSEINALU added %d bytes\n", v84, 211, v85, "AVE_SEI", "Generate", 425, a1, *a1, v115);
            v84 = sub_66A18();
            v85 = sub_56B04(7);
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

    sub_4230C(a1[4]);
    v20 = 0;
    v25 = 7;
  }

  else
  {
    v25 = 4;
    if (sub_56A8C(0xD3u, 4))
    {
      v26 = sub_56AD0(0xD3u);
      v27 = sub_66A18();
      v28 = sub_56B04(4);
      v29 = *a1;
      if (v26)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %llu %p %p %d\n", v27, 211, v28, "AVE_SEI", "Generate", 321, "pBytesWritten != __null && pOutputBuffer != __null && bufSize >= 0", a1, v29, a6, a4, a5);
        v30 = sub_66A18();
        v25 = 4;
        v31 = sub_56B04(4);
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
  if (sub_56A8C(0xD3u, v25))
  {
    v88 = sub_56AD0(0xD3u);
    v89 = sub_66A18();
    v90 = sub_56B04(v25);
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
      v89 = sub_66A18();
      v90 = sub_56B04(v25);
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

uint64_t sub_23E8(void *a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v12 = sub_56AD0(0xD3u);
    v13 = sub_66A18();
    v14 = sub_56B04(7);
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
      v13 = sub_66A18();
      v14 = sub_56B04(7);
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
  v20 = sub_E1FC(a2, a3, BytePtr, Length, *(a4 + 24), *(a1 + 5), a1[2] & 1, a6);
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
  if (sub_56A8C(0xD3u, 4))
  {
    v23 = sub_56AD0(0xD3u);
    v24 = sub_66A18();
    v25 = sub_56B04(4);
    v26 = *a1;
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d\n", v24, 211, v25, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
      v27 = sub_66A18();
      v22 = 4;
      v28 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d", v27, 211, v28, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d", v24, 211, v25, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
      v22 = 4;
    }
  }

LABEL_21:
  if (sub_56A8C(0xD3u, v22))
  {
    v29 = sub_56AD0(0xD3u);
    v30 = sub_66A18();
    v31 = sub_56B04(v22);
    v32 = *a1;
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d\n", v30, 211, v31, "AVE_SEI", "GenerateISPMetadataNALU", a1, v32, a2, a4, *(a4 + 24), a5, a6, v21);
      v33 = sub_66A18();
      v34 = sub_56B04(v22);
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

uint64_t sub_27EC(void *a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v72 = 0;
  if (sub_56A8C(0xD3u, 7))
  {
    v12 = sub_56AD0(0xD3u);
    v13 = sub_66A18();
    v14 = sub_56B04(7);
    v15 = *a1;
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p %lld 0x%llx %p\n", v13, 211, v14, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v15, a2, a3, a4, *(a4 + 24), a5, a6);
      v16 = sub_66A18();
      v17 = sub_56B04(7);
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

  v22 = sub_FC10(a2, a3, *(a4 + 24), *(a1 + 5), *(a4 + 224), &v72);
  if (v22)
  {
    v20 = v22;
    v21 = 4;
    if (!sub_56A8C(0xD3u, 4))
    {
      goto LABEL_43;
    }

    v23 = sub_56AD0(0xD3u);
    v24 = sub_66A18();
    v25 = sub_56B04(4);
    v26 = *a1;
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v24, 211, v25, "AVE_SEI", "GenerateTimingInfoMetadata", 2117, "ret == 0", a1, *a1, v20);
      v27 = sub_66A18();
      v21 = 4;
      v28 = sub_56B04(4);
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
    v31 = sub_10C70(a2, a3 - v30, *(a4 + 228), *(a4 + 24), *(a1 + 5), &v72);
    if (v31)
    {
      v20 = v31;
      v21 = 4;
      if (!sub_56A8C(0xD3u, 4))
      {
        goto LABEL_43;
      }

      v32 = sub_56AD0(0xD3u);
      v33 = sub_66A18();
      v34 = sub_56B04(4);
      v35 = *a1;
      if (v32)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v33, 211, v34, "AVE_SEI", "GenerateTimingInfoMetadata", 2136, "ret == 0", a1, *a1, v20);
        v36 = sub_66A18();
        v21 = 4;
        v37 = sub_56B04(4);
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
    v47 = sub_11C04(a2, a3 - v30, *(a4 + 24), *(a1 + 5), *(a4 + 232) != 0, *(a4 + 236), *(a4 + 224), *(a4 + 240), &v72);
    if (v47)
    {
      v20 = v47;
      v21 = 4;
      if (!sub_56A8C(0xD3u, 4))
      {
        goto LABEL_43;
      }

      v48 = sub_56AD0(0xD3u);
      v49 = sub_66A18();
      v50 = sub_56B04(4);
      v51 = *a1;
      if (v48)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v49, 211, v50, "AVE_SEI", "GenerateTimingInfoMetadata", 2160, "ret == 0", a1, *a1, v20);
        v36 = sub_66A18();
        v21 = 4;
        v37 = sub_56B04(4);
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

    v54 = sub_12A5C(a2, a3 - v53, *(a4 + 24), *(a4 + 228), *(a1 + 5), &v72);
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
    if (sub_56A8C(0xD3u, 4))
    {
      v55 = sub_56AD0(0xD3u);
      v56 = sub_66A18();
      v57 = sub_56B04(4);
      v58 = *a1;
      if (v55)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v56, 211, v57, "AVE_SEI", "GenerateTimingInfoMetadata", 2178, "ret == 0", a1, *a1, v20);
        v36 = sub_66A18();
        v21 = 4;
        v37 = sub_56B04(4);
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
    if (sub_56A8C(0xD3u, 4))
    {
      v40 = sub_56AD0(0xD3u);
      v41 = sub_66A18();
      v42 = sub_56B04(4);
      v43 = *a1;
      v44 = *(a4 + 24);
      if (v40)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu No picture timing data for frame %lld, failed\n", v41, 211, v42, "AVE_SEI", "GenerateTimingInfoMetadata", 2154, "(activeBits & (1ULL << (AVE_SEI_Idx_PictureTiming))) != 0", a1, *a1, v44);
        v45 = sub_66A18();
        v21 = 4;
        v46 = sub_56B04(4);
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
  if (sub_56A8C(0xD3u, v21))
  {
    v59 = sub_56AD0(0xD3u);
    v60 = sub_66A18();
    v61 = sub_56B04(v21);
    v62 = *a1;
    if (v59)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p ret:%d\n", v60, 211, v61, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v62, a2, a4, *(a4 + 24), a5, a6, v20);
      v63 = sub_66A18();
      v64 = sub_56B04(v21);
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

uint64_t sub_3068(void *a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v12 = sub_56AD0(0xD3u);
    v13 = sub_66A18();
    v14 = sub_56B04(7);
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
      v13 = sub_66A18();
      v14 = sub_56B04(7);
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

  v18 = sub_C7DC(a2, a3, *(a1 + 5), a6);
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
  if (sub_56A8C(0xD3u, 4))
  {
    v21 = sub_56AD0(0xD3u);
    v22 = sub_66A18();
    v23 = sub_56B04(4);
    v24 = *a1;
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
      v25 = sub_66A18();
      v20 = 4;
      v26 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v25, 211, v26, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v22, 211, v23, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
      v20 = 4;
    }
  }

LABEL_21:
  if (sub_56A8C(0xD3u, v20))
  {
    v27 = sub_56AD0(0xD3u);
    v28 = sub_66A18();
    v29 = sub_56B04(v20);
    v30 = *a1;
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p %d\n", v28, 211, v29, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v30, a2, a4, *(a4 + 24), a5, a6, v19);
      v31 = sub_66A18();
      v32 = sub_56B04(v20);
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

uint64_t sub_3448(void *a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v12 = sub_56AD0(0xD3u);
    v13 = sub_66A18();
    v14 = sub_56B04(7);
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
      v13 = sub_66A18();
      v14 = sub_56B04(7);
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
  v18 = sub_B7BC(a2, a3, (a4 + 148), *(a1 + 5), &v35);
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
  if (sub_56A8C(0xD3u, 4))
  {
    v21 = sub_56AD0(0xD3u);
    v22 = sub_66A18();
    v23 = sub_56B04(4);
    v24 = *a1;
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", 2237, "ret == 0", a1, *a1, v20);
      v22 = sub_66A18();
      v23 = sub_56B04(4);
    }

    v33 = *a1;
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v22, 211, v23, "AVE_SEI");
  }

  v25 = 4;
LABEL_24:
  if (sub_56A8C(0xD3u, v25))
  {
    v26 = sub_56AD0(0xD3u);
    v27 = sub_66A18();
    v28 = sub_56B04(v25);
    v29 = *a1;
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d\n", v27, 211, v28, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v29, a2, a4, *(a4 + 24), a5, a6, v20);
      v30 = sub_66A18();
      v31 = sub_56B04(v25);
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

uint64_t sub_381C(void *a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v12 = sub_56AD0(0xD3u);
    v13 = sub_66A18();
    v14 = sub_56B04(7);
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
      v13 = sub_66A18();
      v14 = sub_56B04(7);
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

  v18 = sub_F104(a2, a3, *(a4 + 24), *(a4 + 60), *(a1 + 5), 1, a6);
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
  if (sub_56A8C(0xD3u, 4))
  {
    v21 = sub_56AD0(0xD3u);
    v22 = sub_66A18();
    v23 = sub_56B04(4);
    v24 = *a1;
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
      v25 = sub_66A18();
      v20 = 4;
      v26 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d", v25, 211, v26, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d", v22, 211, v23, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
      v20 = 4;
    }
  }

LABEL_21:
  if (sub_56A8C(0xD3u, v20))
  {
    v27 = sub_56AD0(0xD3u);
    v28 = sub_66A18();
    v29 = sub_56B04(v20);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d\n", v28, 211, v29, "AVE_SEI", "GenerateLuxLevelNALU", a1, *a1, a4, *(a4 + 24), a5, a6, v19);
      v28 = sub_66A18();
      v29 = sub_56B04(v20);
      v32 = *(a4 + 24);
      v31 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d", v28, 211, v29, "AVE_SEI", "GenerateLuxLevelNALU", a1);
  }

  return v19;
}

uint64_t sub_3BF0(uint64_t *a1, _DWORD *a2, int a3, void *a4, uint64_t a5, unsigned int *a6)
{
  v197 = xmmword_9BA20;
  if (sub_56A8C(0xD3u, 7))
  {
    v10 = sub_56AD0(0xD3u);
    v11 = sub_66A18();
    v12 = sub_56B04(7);
    v13 = *a1;
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p\n", v11, 211, v12, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v13, a2, a3, a4, a5, a6);
      v14 = sub_66A18();
      v15 = sub_56B04(7);
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
    if (sub_56A8C(0xD3u, 7))
    {
      v28 = sub_56AD0(0xD3u);
      v29 = sub_66A18();
      v30 = sub_56B04(7);
      v31 = *a1;
      if (v28)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early\n", v29, 211, v30, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, v31);
        v32 = sub_66A18();
        v33 = sub_56B04(7);
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
  v18 = sub_8A68(a1, a4, v16 & a5);
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
    sub_633D0(v20, a2, a3, 0);
    v22 = sub_635EC(v21);
    if (v22)
    {
      v23 = v22;
      if (sub_56A8C(0xD3u, 4))
      {
        v24 = sub_56AD0(0xD3u);
        v25 = sub_66A18();
        v26 = sub_56B04(4);
        v27 = *a1;
        if (v24)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v25, 211, v26, "AVE_SEI", "GenerateUnregisteredSEINALU", 1762, "ret == 0", a1, *a1, v23);
          v25 = sub_66A18();
          v26 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v25, 211, v26, "AVE_SEI", "GenerateUnregisteredSEINALU", 1762, "ret == 0", a1, *a1, v23);
      }

      goto LABEL_41;
    }

    if (sub_56A8C(0xD3u, 8))
    {
      v37 = sub_56AD0(0xD3u);
      v38 = sub_66A18();
      v39 = sub_56B04(8);
      v40 = *(v21 + 12);
      v41 = *(v21 + 32) + v40;
      if (v37)
      {
        printf("%lld %d AVE %s: %s::%s:%d start code %p (%d)\n", v38, 211, v39, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 32) + v40), v40);
        v42 = sub_66A18();
        v43 = sub_56B04(8);
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
      v51 = sub_B0BC(39, v21);
      if (v51)
      {
        v23 = v51;
        if (sub_56A8C(0xD3u, 4))
        {
          v46 = v21;
          v52 = sub_56AD0(0xD3u);
          v53 = sub_66A18();
          v54 = sub_56B04(4);
          v55 = *a1;
          if (v52)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v53, 211, v54, "AVE_SEI", "GenerateUnregisteredSEINALU", 1778, "ret == 0", a1, *a1, v23);
            v53 = sub_66A18();
            v54 = sub_56B04(4);
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
        if (sub_56A8C(0xD3u, 4))
        {
          v66 = sub_56AD0(0xD3u);
          v67 = sub_66A18();
          v68 = sub_56B04(4);
          v69 = *a1;
          v70 = *(a1 + 5);
          if (v66)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL\n", v67, 211, v68, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, v70);
            v71 = sub_66A18();
            v72 = sub_56B04(4);
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

      v45 = sub_B0B0(v21);
      if (v45)
      {
        v23 = v45;
        if (sub_56A8C(0xD3u, 4))
        {
          v46 = v21;
          v47 = sub_56AD0(0xD3u);
          v48 = sub_66A18();
          v49 = sub_56B04(4);
          v50 = *a1;
          if (v47)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v48, 211, v49, "AVE_SEI", "GenerateUnregisteredSEINALU", 1772, "ret == 0", a1, *a1, v23);
            v48 = sub_66A18();
            v49 = sub_56B04(4);
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

    if (sub_56A8C(0xD3u, 8))
    {
      v73 = sub_56AD0(0xD3u);
      v74 = sub_66A18();
      v75 = sub_56B04(8);
      v76 = *a1;
      v77 = *(v21 + 12);
      v78 = *(v21 + 32) + v77;
      if (v73)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)\n", v74, 211, v75, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, v76, (*(v21 + 32) + v77), v77);
        v79 = sub_66A18();
        v80 = sub_56B04(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)", v79, 211, v80, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, *a1, (*(v21 + 32) + *(v21 + 12)), *(v21 + 12));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)", v74, 211, v75, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, v76, (*(v21 + 32) + v77), v77);
      }
    }

    sub_635C4(v21, 5, 8);
    if (sub_56A8C(0xD3u, 8))
    {
      v81 = sub_56AD0(0xD3u);
      v82 = sub_66A18();
      v83 = sub_56B04(8);
      v84 = *a1;
      v85 = *(v21 + 12);
      v86 = *(v21 + 32) + v85;
      if (v81)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)\n", v82, 211, v83, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, v84, (*(v21 + 32) + v85), v85);
        v87 = sub_66A18();
        v88 = sub_56B04(8);
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
      if (sub_56A8C(0xD3u, 4))
      {
        v94 = sub_56AD0(0xD3u);
        v95 = sub_66A18();
        v96 = sub_56B04(4);
        v97 = *a1;
        if (v94)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.\n", v95, 211, v96, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, v97);
          v98 = sub_66A18();
          v99 = sub_56B04(4);
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
    if (sub_56A8C(0xD3u, 8))
    {
      v90 = sub_56AD0(0xD3u);
      v91 = sub_66A18();
      v92 = sub_56B04(8);
      v93 = *a1;
      if (v90)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for SEI Buffer\n", v91, 211, v92, "AVE_SEI", "GenerateUnregisteredSEINALU", 1803, a1, *a1, v19);
        v91 = sub_66A18();
        v92 = sub_56B04(8);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for SEI Buffer", v91, 211, v92, "AVE_SEI", "GenerateUnregisteredSEINALU", 1803, a1, *a1, v19);
    }

    v100 = 0;
    v101 = &off_BCB00;
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
      if (sub_56A8C(0xD3u, 8))
      {
        v104 = sub_56AD0(0xD3u);
        v105 = sub_66A18();
        v106 = sub_56B04(8);
        v107 = *a1;
        if (v104)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for EPB Buffer\n", v105, 211, v106, "AVE_SEI", "GenerateUnregisteredSEINALU", 1828, a1, *a1, v191);
          v105 = sub_66A18();
          v106 = sub_56B04(8);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for EPB Buffer", v105, 211, v106, "AVE_SEI", "GenerateUnregisteredSEINALU", 1828, a1, *a1, v191);
      }

      v114 = operator new(0x1030uLL, &std::nothrow);
      if (v114)
      {
        v115 = v114;
        sub_633D0(v114, v56, v191, 1);
        v190 = v115;
        v23 = sub_63684(v115, &v197, 16);
        if (v23)
        {
          if (sub_56A8C(0xD3u, 4))
          {
            v116 = sub_56AD0(0xD3u);
            v117 = sub_66A18();
            v118 = sub_56B04(4);
            v119 = *a1;
            if (v116)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v117, 211, v118, "AVE_SEI", "GenerateUnregisteredSEINALU", 1838, "ret == 0", a1, *a1, v23);
              v117 = sub_66A18();
              v118 = sub_56B04(4);
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v117, 211, v118, "AVE_SEI", "GenerateUnregisteredSEINALU", 1838, "ret == 0", a1, *a1, v23);
          }
        }

        else
        {
          v23 = sub_63684(v115, v193, v100);
          if (v23)
          {
            if (sub_56A8C(0xD3u, 4))
            {
              v123 = sub_56AD0(0xD3u);
              v124 = sub_66A18();
              v125 = sub_56B04(4);
              v126 = *a1;
              if (v123)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v124, 211, v125, "AVE_SEI", "GenerateUnregisteredSEINALU", 1843, "ret == 0", a1, *a1, v23);
                v124 = sub_66A18();
                v125 = sub_56B04(4);
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
            if (sub_56A8C(0xD3u, 8))
            {
              v131 = sub_56AD0(0xD3u);
              v132 = sub_66A18();
              v133 = sub_56B04(8);
              v134 = *a1;
              v135 = *(v192 + 12);
              v136 = *(v192 + 32) + v135;
              if (v131)
              {
                printf("%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)\n", v132, 211, v133, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, v134, v128 - (v129 >> 3), (*(v192 + 32) + v135), v135);
                v137 = sub_66A18();
                v138 = sub_56B04(8);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)", v137, 211, v138, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, *a1, v130, (*(v192 + 32) + *(v192 + 12)), *(v192 + 12));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)", v132, 211, v133, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, v134, v128 - (v129 >> 3), (*(v192 + 32) + v135), v135);
              }
            }

            v23 = sub_B0D4(v130, v192);
            if (v23)
            {
              if (sub_56A8C(0xD3u, 4))
              {
                v139 = sub_56AD0(0xD3u);
                v140 = sub_66A18();
                v141 = sub_56B04(4);
                v142 = *a1;
                if (v139)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v140, 211, v141, "AVE_SEI", "GenerateUnregisteredSEINALU", 1856, "ret == 0", a1, *a1, v23);
                  v140 = sub_66A18();
                  v141 = sub_56B04(4);
                }

                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v140, 211, v141, "AVE_SEI", "GenerateUnregisteredSEINALU", 1856, "ret == 0", a1, *a1, v23);
              }
            }

            else
            {
              if (sub_56A8C(0xD3u, 8))
              {
                v143 = sub_56AD0(0xD3u);
                v144 = sub_66A18();
                v145 = sub_56B04(8);
                v146 = *a1;
                v147 = *(v192 + 12);
                v148 = *(v192 + 32) + v147;
                if (v143)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)\n", v144, 211, v145, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, v146, v147 - v189, (*(v192 + 32) + v147), v147);
                  v149 = sub_66A18();
                  v150 = sub_56B04(8);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)", v149, 211, v150, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, *a1, *(v192 + 12) - v189, (*(v192 + 32) + *(v192 + 12)), *(v192 + 12));
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)", v144, 211, v145, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, v146, v147 - v189, (*(v192 + 32) + v147), v147);
                }
              }

              if (sub_56A8C(0xD3u, 8))
              {
                v151 = sub_56AD0(0xD3u);
                v152 = sub_66A18();
                v153 = sub_56B04(8);
                v154 = v190[3];
                v155 = *(v192 + 12);
                if (v151)
                {
                  printf("%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d\n", v152, 211, v153, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v154, v191, *(v192 + 12), a3);
                  v156 = sub_66A18();
                  v157 = sub_56B04(8);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d", v156, 211, v157, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v190[3], v191, *(v192 + 12), a3);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d", v152, 211, v153, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v154, v191, *(v192 + 12), a3);
                }
              }

              v23 = sub_636E8(v192, v190);
              if (v23)
              {
                if (sub_56A8C(0xD3u, 4))
                {
                  v158 = sub_56AD0(0xD3u);
                  v159 = sub_66A18();
                  v160 = sub_56B04(4);
                  v161 = *a1;
                  if (v158)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to copy payload into SyntaxWriterNALU ret %d\n", v159, 211, v160, "AVE_SEI", "GenerateUnregisteredSEINALU", 1870, "ret == 0", a1, *a1, v23);
                    v159 = sub_66A18();
                    v160 = sub_56B04(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to copy payload into SyntaxWriterNALU ret %d", v159, 211, v160, "AVE_SEI", "GenerateUnregisteredSEINALU", 1870, "ret == 0", a1, *a1, v23);
                }
              }

              else
              {
                if (sub_56A8C(0xD3u, 8))
                {
                  v162 = sub_56AD0(0xD3u);
                  v163 = sub_66A18();
                  v164 = sub_56B04(8);
                  v165 = *a1;
                  v166 = *(v192 + 12);
                  v167 = *(v192 + 32) + v166;
                  if (v162)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)\n", v163, 211, v164, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, v165, (*(v192 + 32) + v166), v166);
                    v168 = sub_66A18();
                    v169 = sub_56B04(8);
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)", v168, 211, v169, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, *a1, (*(v192 + 32) + *(v192 + 12)), *(v192 + 12));
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)", v163, 211, v164, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, v165, (*(v192 + 32) + v166), v166);
                  }
                }

                v23 = sub_6376C(v192);
                if (v23)
                {
                  if (sub_56A8C(0xD3u, 4))
                  {
                    v170 = sub_56AD0(0xD3u);
                    v171 = sub_66A18();
                    v172 = sub_56B04(4);
                    v173 = *a1;
                    if (v170)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v171, 211, v172, "AVE_SEI", "GenerateUnregisteredSEINALU", 1879, "ret == 0", a1, *a1, v23);
                      v171 = sub_66A18();
                      v172 = sub_56B04(4);
                    }

                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v171, 211, v172, "AVE_SEI", "GenerateUnregisteredSEINALU", 1879, "ret == 0", a1, *a1, v23);
                  }
                }

                else
                {
                  if (sub_56A8C(0xD3u, 8))
                  {
                    v174 = sub_56AD0(0xD3u);
                    v175 = sub_66A18();
                    v176 = sub_56B04(8);
                    v177 = *a1;
                    v178 = *(v192 + 12);
                    v179 = *(v192 + 32) + v178;
                    if (v174)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)\n", v175, 211, v176, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, v177, (*(v192 + 32) + v178), v178);
                      v180 = sub_66A18();
                      v181 = sub_56B04(8);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)", v180, 211, v181, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, *a1, (*(v192 + 32) + *(v192 + 12)), *(v192 + 12));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)", v175, 211, v176, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, v177, (*(v192 + 32) + v178), v178);
                    }
                  }

                  *a6 = *(v192 + 12);
                  if (sub_56A8C(0xD3u, 8))
                  {
                    v182 = sub_56AD0(0xD3u);
                    v183 = sub_66A18();
                    v184 = sub_56B04(8);
                    v185 = *a1;
                    v186 = *a6;
                    if (v182)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d\n", v183, 211, v184, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, v186);
                      v187 = sub_66A18();
                      v188 = sub_56B04(8);
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

      if (sub_56A8C(0xD3u, 4))
      {
        v120 = sub_56AD0(0xD3u);
        v121 = sub_66A18();
        v122 = sub_56B04(4);
        if (v120)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter\n", v121, 211, v122, "GenerateUnregisteredSEINALU", 1832, "pcSyntaxWriter != __null");
          v121 = sub_66A18();
          v122 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter", v121, 211, v122, "GenerateUnregisteredSEINALU", 1832, "pcSyntaxWriter != __null");
      }
    }

    else
    {
      if (sub_56A8C(0xD3u, 4))
      {
        v108 = sub_56AD0(0xD3u);
        v109 = sub_66A18();
        v110 = sub_56B04(4);
        v111 = *a1;
        if (v108)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed\n", v109, 211, v110, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, v111);
          v112 = sub_66A18();
          v113 = sub_56B04(4);
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

  if (sub_56A8C(0xD3u, 4))
  {
    v34 = sub_56AD0(0xD3u);
    v35 = sub_66A18();
    v36 = sub_56B04(4);
    if (v34)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter\n", v35, 211, v36, "GenerateUnregisteredSEINALU", 1757, "pcSyntaxWriter_NALU != __null");
      v35 = sub_66A18();
      v36 = sub_56B04(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter", v35, 211, v36, "GenerateUnregisteredSEINALU", 1757, "pcSyntaxWriter_NALU != __null");
  }

  v23 = 4294966293;
LABEL_46:
  if (sub_56A8C(0xD3u, 7))
  {
    v58 = sub_56AD0(0xD3u);
    v59 = sub_66A18();
    v60 = sub_56B04(7);
    v61 = *a1;
    v62 = *a6;
    if (v58)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d\n", v59, 211, v60, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v61, a2, a3, a4, a5, a6, *a6, v23);
      v63 = sub_66A18();
      v64 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d", v63, 211, v64, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, *a1, a2, a3, a4, a5, a6, *a6, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d", v59, 211, v60, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v61, a2, a3, a4, a5, a6, *a6, v23);
    }
  }

  return v23;
}

void *sub_5B20(uint64_t *a1, uint64_t a2)
{
  if (sub_56A8C(0xD3u, 8))
  {
    v4 = sub_56AD0(0xD3u);
    v5 = sub_66A18();
    v6 = sub_56B04(8);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", v5, 211, v6, "AVE_SEI", "FindOrCreateFrame", a1, *a1, a2);
      v5 = sub_66A18();
      sub_56B04(8);
      v8 = *a1;
    }

    else
    {
      v16 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", v5, 211);
  }

  v17 = sub_FFC(a1, a2);
  if (v17)
  {
    v9 = 0;
LABEL_8:
    v10 = 8;
    goto LABEL_11;
  }

  v9 = sub_81AC(a1, a2, &v17);
  if (!v9)
  {
    goto LABEL_8;
  }

  v17 = 0;
  v10 = 4;
LABEL_11:
  if (sub_56A8C(0xD3u, v10))
  {
    v11 = sub_56AD0(0xD3u);
    v12 = sub_66A18();
    v13 = sub_56B04(v10);
    if (v11)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %p\n", v12, 211, v13, "AVE_SEI", "FindOrCreateFrame", a1, *a1, a2, v9, v17);
      v12 = sub_66A18();
      v13 = sub_56B04(v10);
      v14 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %p", v12, 211, v13, "AVE_SEI");
  }

  return v17;
}

uint64_t sub_5D54(pthread_mutex_t **a1, uint64_t a2)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v4 = sub_56AD0(0xD3u);
    v5 = sub_66A18();
    v6 = sub_56B04(7);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", v5, 211, v6, "AVE_SEI", "SetContentColorVolume", a1, *a1, a2);
      v5 = sub_66A18();
      sub_56B04(7);
      v8 = *a1;
    }

    else
    {
      v22 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", v5, 211);
  }

  v9 = sub_422D8(a1[4]);
  v10 = sub_5B20(a1, a2);
  if (v10)
  {
    v10[4] |= 0x20uLL;
    sub_4230C(a1[4]);
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
    if (sub_56A8C(0xD3u, 4))
    {
      v12 = sub_56AD0(0xD3u);
      v13 = sub_66A18();
      v14 = sub_56B04(4);
      v15 = *a1;
      if (v12)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v13, 211, v14, "AVE_SEI", "SetContentColorVolume", 539, "pPFData != __null", a1, *a1, a2);
        v13 = sub_66A18();
        v14 = sub_56B04(4);
        v16 = *a1;
      }

      else
      {
        v23 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v13, 211, v14, "AVE_SEI");
    }

    sub_4230C(a1[4]);
    v11 = 4;
    v9 = 4294966296;
  }

  if (sub_56A8C(0xD3u, v11))
  {
    v17 = sub_56AD0(0xD3u);
    v18 = sub_66A18();
    v19 = sub_56B04(v11);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d\n", v18, 211, v19, "AVE_SEI", "SetContentColorVolume", a1, *a1, a2, v9);
      v18 = sub_66A18();
      v19 = sub_56B04(v11);
      v20 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v18, 211, v19);
  }

  return v9;
}

uint64_t sub_6080(pthread_mutex_t **a1, uint64_t a2, int a3)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v6 = sub_56AD0(0xD3u);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", v7, 211, v8, "AVE_SEI", "SetRCMode", a1, *a1, a2, a3);
      v7 = sub_66A18();
      v8 = sub_56B04(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v7, 211, v8);
  }

  if (a3 < 0)
  {
    v12 = 4;
    if (sub_56A8C(0xD3u, 4))
    {
      v13 = sub_56AD0(0xD3u);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      v16 = *a1;
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid RCMode %d\n", v14, 211, v15, "AVE_SEI", "SetRCMode", 733, "eRCMode >= AVE_RCMode_None", a1, *a1, a3);
        v17 = sub_66A18();
        v12 = 4;
        v18 = sub_56B04(4);
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
    v10 = sub_422D8(a1[4]);
    v11 = sub_5B20(a1, a2);
    if (v11)
    {
      v11[4] |= 0x400000000uLL;
      *(v11 + 20) = a3;
      sub_4230C(a1[4]);
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
      if (sub_56A8C(0xD3u, 4))
      {
        v19 = sub_56AD0(0xD3u);
        v20 = sub_66A18();
        v21 = sub_56B04(4);
        v22 = *a1;
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v20, 211, v21, "AVE_SEI", "SetRCMode", 740, "pPFData != __null", a1, *a1, a2);
          v20 = sub_66A18();
          v21 = sub_56B04(4);
          v23 = *a1;
        }

        else
        {
          v31 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v21, "AVE_SEI");
      }

      sub_4230C(a1[4]);
      v12 = 4;
      v10 = 4294966296;
    }
  }

  if (sub_56A8C(0xD3u, v12))
  {
    v24 = sub_56AD0(0xD3u);
    v25 = sub_66A18();
    v26 = sub_56B04(v12);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v25, 211, v26, "AVE_SEI", "SetRCMode", a1, *a1, a2, a3, v10);
      v27 = sub_66A18();
      v28 = sub_56B04(v12);
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

uint64_t sub_64E8(pthread_mutex_t **a1, uint64_t a2, unsigned int a3)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v6 = sub_56AD0(0xD3u);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", v7, 211, v8, "AVE_SEI", "SetThroughputMode", a1, *a1, a2, a3);
      v7 = sub_66A18();
      v8 = sub_56B04(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v7, 211, v8);
  }

  if (a3 >= 8)
  {
    v12 = 4;
    if (sub_56A8C(0xD3u, 4))
    {
      v13 = sub_56AD0(0xD3u);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      v16 = *a1;
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid ThroughputMode %d\n", v14, 211, v15, "AVE_SEI", "SetThroughputMode", 772, "AVE_ThroughputMode_Invalid <= eThroughputMode && eThroughputMode < AVE_ThroughputMode_Max", a1, *a1, a3);
        v17 = sub_66A18();
        v12 = 4;
        v18 = sub_56B04(4);
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
    v10 = sub_422D8(a1[4]);
    v11 = sub_5B20(a1, a2);
    if (v11)
    {
      v11[4] |= 0x800000000uLL;
      *(v11 + 21) = a3;
      sub_4230C(a1[4]);
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
      if (sub_56A8C(0xD3u, 4))
      {
        v19 = sub_56AD0(0xD3u);
        v20 = sub_66A18();
        v21 = sub_56B04(4);
        v22 = *a1;
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v20, 211, v21, "AVE_SEI", "SetThroughputMode", 779, "pPFData != __null", a1, *a1, a2);
          v20 = sub_66A18();
          v21 = sub_56B04(4);
          v23 = *a1;
        }

        else
        {
          v31 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v21, "AVE_SEI");
      }

      sub_4230C(a1[4]);
      v12 = 4;
      v10 = 4294966296;
    }
  }

  if (sub_56A8C(0xD3u, v12))
  {
    v24 = sub_56AD0(0xD3u);
    v25 = sub_66A18();
    v26 = sub_56B04(v12);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v25, 211, v26, "AVE_SEI", "SetThroughputMode", a1, *a1, a2, a3, v10);
      v27 = sub_66A18();
      v28 = sub_56B04(v12);
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

uint64_t sub_6954(pthread_mutex_t **a1, uint64_t a2, int a3)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v6 = sub_56AD0(0xD3u);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", v7, 211, v8, "AVE_SEI", "SetBitrate", a1, *a1, a2, a3);
      v7 = sub_66A18();
      v8 = sub_56B04(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v7, 211, v8);
  }

  if (a3 <= 0)
  {
    v12 = 4;
    if (sub_56A8C(0xD3u, 4))
    {
      v13 = sub_56AD0(0xD3u);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      v16 = *a1;
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid bitrate %d\n", v14, 211, v15, "AVE_SEI", "SetBitrate", 809, "bitrate > 0", a1, *a1, a3);
        v17 = sub_66A18();
        v12 = 4;
        v18 = sub_56B04(4);
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
    v10 = sub_422D8(a1[4]);
    v11 = sub_5B20(a1, a2);
    if (v11)
    {
      v11[4] |= 0x1000000000uLL;
      *(v11 + 22) = a3;
      sub_4230C(a1[4]);
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
      if (sub_56A8C(0xD3u, 4))
      {
        v19 = sub_56AD0(0xD3u);
        v20 = sub_66A18();
        v21 = sub_56B04(4);
        v22 = *a1;
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v20, 211, v21, "AVE_SEI", "SetBitrate", 816, "pPFData != __null", a1, *a1, a2);
          v20 = sub_66A18();
          v21 = sub_56B04(4);
          v23 = *a1;
        }

        else
        {
          v31 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v21, "AVE_SEI");
      }

      sub_4230C(a1[4]);
      v12 = 4;
      v10 = 4294966296;
    }
  }

  if (sub_56A8C(0xD3u, v12))
  {
    v24 = sub_56AD0(0xD3u);
    v25 = sub_66A18();
    v26 = sub_56B04(v12);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v25, 211, v26, "AVE_SEI", "SetBitrate", a1, *a1, a2, a3, v10);
      v27 = sub_66A18();
      v28 = sub_56B04(v12);
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

uint64_t sub_6DC0(pthread_mutex_t **a1, uint64_t a2, int a3)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v6 = sub_56AD0(0xD3u);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", v7, 211, v8, "AVE_SEI", "SetLookAheadInfo", a1, *a1, a2, a3);
      v7 = sub_66A18();
      v8 = sub_56B04(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v7, 211, v8);
  }

  v10 = sub_422D8(a1[4]);
  v11 = sub_5B20(a1, a2);
  if (v11)
  {
    v11[4] |= 0x20000000000uLL;
    *(v11 + 23) = a3;
    sub_4230C(a1[4]);
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
    if (sub_56A8C(0xD3u, 4))
    {
      v13 = sub_56AD0(0xD3u);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      v16 = *a1;
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetLookAheadInfo", 850, "pPFData != __null", a1, *a1, a2);
        v14 = sub_66A18();
        v15 = sub_56B04(4);
        v17 = *a1;
      }

      else
      {
        v25 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI");
    }

    sub_4230C(a1[4]);
    v12 = 4;
    v10 = 4294966296;
  }

  if (sub_56A8C(0xD3u, v12))
  {
    v18 = sub_56AD0(0xD3u);
    v19 = sub_66A18();
    v20 = sub_56B04(v12);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v19, 211, v20, "AVE_SEI", "SetLookAheadInfo", a1, *a1, a2, a3, v10);
      v21 = sub_66A18();
      v22 = sub_56B04(v12);
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

uint64_t sub_710C(pthread_mutex_t **a1, uint64_t a2, int a3, int a4, int a5, double a6, double a7, double a8, double a9, double a10)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v20 = sub_56AD0(0xD3u);
    v21 = sub_66A18();
    v22 = sub_56B04(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %f %f %f %f %f %d %d %d\n", v21, 211, v22, "AVE_SEI", "SetMCTFTag", a1, *a1, a2, a6, a7, a8, a9, a10, a3, a4, a5);
      v21 = sub_66A18();
      v22 = sub_56B04(7);
      v23 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f %f %f %f %f %d %d %d", v21, 211, v22, "AVE_SEI");
  }

  sub_422D8(a1[4]);
  v24 = sub_5B20(a1, a2);
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
  if (!sub_56A8C(0xD3u, 4))
  {
    goto LABEL_11;
  }

  v27 = sub_56AD0(0xD3u);
  v28 = sub_66A18();
  v29 = sub_56B04(4);
  v30 = *a1;
  if (v27)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v28, 211, v29, "AVE_SEI", "SetMCTFTag", 1028, "pPFData != __null", a1, *a1, a2);
    v31 = sub_66A18();
    v26 = 4;
    v32 = sub_56B04(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v31, 211, v32, "AVE_SEI", "SetMCTFTag", 1028, "pPFData != __null", a1, *a1, a2);
LABEL_11:
    v25 = 4294966296;
    goto LABEL_13;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v28, 211, v29, "AVE_SEI", "SetMCTFTag", 1028, "pPFData != __null", a1, *a1, a2);
  v25 = 4294966296;
  v26 = 4;
LABEL_13:
  sub_4230C(a1[4]);
  if (sub_56A8C(0xD3u, v26))
  {
    v33 = sub_56AD0(0xD3u);
    v34 = sub_66A18();
    v35 = sub_56B04(v26);
    if (v33)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %f %f %f %f %d %d %d %d\n", v34, 211, v35, "AVE_SEI", "SetMCTFTag", a1, *a1, a2, a6, a7, a8, a9, a10, a3, a4, a5, v25);
      v36 = sub_66A18();
      v37 = sub_56B04(v26);
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

uint64_t sub_7520(pthread_mutex_t **a1, uint64_t a2, int a3)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v6 = sub_56AD0(0xD3u);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %u\n", v7, 211, v8, "AVE_SEI", "SetActiveParameterSets", a1, *a1, a2, a3);
      v7 = sub_66A18();
      v8 = sub_56B04(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %u", v7, 211, v8);
  }

  sub_422D8(a1[4]);
  v10 = sub_5B20(a1, a2);
  if (v10)
  {
    v11 = 0;
    v10[4] |= 4uLL;
    *(v10 + 57) = a3;
    v12 = 7;
    goto LABEL_13;
  }

  v12 = 4;
  if (!sub_56A8C(0xD3u, 4))
  {
    goto LABEL_11;
  }

  v13 = sub_56AD0(0xD3u);
  v14 = sub_66A18();
  v15 = sub_56B04(4);
  v16 = *a1;
  if (v13)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", a1, *a1, a2);
    v17 = sub_66A18();
    v12 = 4;
    v18 = sub_56B04(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v17, 211, v18, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", a1, *a1, a2);
LABEL_11:
    v11 = 4294966296;
    goto LABEL_13;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", a1, *a1, a2);
  v11 = 4294966296;
  v12 = 4;
LABEL_13:
  sub_4230C(a1[4]);
  if (sub_56A8C(0xD3u, v12))
  {
    v19 = sub_56AD0(0xD3u);
    v20 = sub_66A18();
    v21 = sub_56B04(v12);
    if (v19)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d\n", v20, 211, v21, "AVE_SEI", "SetActiveParameterSets", a1, *a1, a2, a3, v11);
      v22 = sub_66A18();
      v23 = sub_56B04(v12);
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

uint64_t sub_7868(pthread_mutex_t **a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v12 = sub_56AD0(0xD3u);
    v13 = sub_66A18();
    v14 = sub_56B04(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %d %u %d\n", v13, 211, v14, "AVE_SEI", "SetPictureTiming", a1, *a1, a2, a3, a4, a5, a6);
      v13 = sub_66A18();
      v14 = sub_56B04(7);
      v15 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %d %u %d", v13, 211, v14, "AVE_SEI");
  }

  if (a3 >= 4)
  {
    v18 = 4;
    if (sub_56A8C(0xD3u, 4))
    {
      v19 = sub_56AD0(0xD3u);
      v20 = sub_66A18();
      v21 = sub_56B04(4);
      v22 = *a1;
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid frame type %d\n", v20, 211, v21, "AVE_SEI", "SetPictureTiming", 1185, "AVE_FrameType_None <= eFrameType && eFrameType < AVE_FrameType_Max", a1, *a1, a3);
        v23 = sub_66A18();
        v18 = 4;
        v24 = sub_56B04(4);
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
    sub_422D8(a1[4]);
    v16 = sub_5B20(a1, a2);
    if (v16)
    {
      v16[4] |= 0xAuLL;
      *(v16 + 58) = a4;
      *(v16 + 59) = a5;
      *(v16 + 56) = a3;
      *(v16 + 60) = a6;
      sub_4230C(a1[4]);
      v17 = 0;
      v18 = 7;
    }

    else
    {
      if (sub_56A8C(0xD3u, 4))
      {
        v25 = sub_56AD0(0xD3u);
        v26 = sub_66A18();
        v27 = sub_56B04(4);
        v28 = *a1;
        if (v25)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v26, 211, v27, "AVE_SEI", "SetPictureTiming", 1192, "pPFData != __null", a1, *a1, a2);
          v26 = sub_66A18();
          v27 = sub_56B04(4);
        }

        v36 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v26, 211, v27, "AVE_SEI");
      }

      sub_4230C(a1[4]);
      v18 = 4;
      v17 = 4294966296;
    }
  }

  if (sub_56A8C(0xD3u, v18))
  {
    v29 = sub_56AD0(0xD3u);
    v30 = sub_66A18();
    v31 = sub_56B04(v18);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d %u %d %d\n", v30, 211, v31, "AVE_SEI", "SetPictureTiming", a1, *a1, a2, a3, a4, a5, a6, v17);
      v32 = sub_66A18();
      v33 = sub_56B04(v18);
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

uint64_t sub_7D4C(pthread_mutex_t **a1, uint64_t a2, unsigned int a3)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v6 = sub_56AD0(0xD3u);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %u\n", v7, 211, v8, "AVE_SEI", "SetBufferingPeriod", a1, *a1, a2, a3);
      v7 = sub_66A18();
      v8 = sub_56B04(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %u", v7, 211, v8);
  }

  if (a3 >= 0x10)
  {
    v12 = 4;
    if (sub_56A8C(0xD3u, 4))
    {
      v13 = sub_56AD0(0xD3u);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      v16 = *a1;
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid sps_seq_parameter_set_id value %u\n", v14, 211, v15, "AVE_SEI", "SetBufferingPeriod", 1229, "iSPSID <= 15", a1, *a1, a3);
        v17 = sub_66A18();
        v12 = 4;
        v18 = sub_56B04(4);
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
    sub_422D8(a1[4]);
    v10 = sub_5B20(a1, a2);
    if (v10)
    {
      v10[4] |= 0x10uLL;
      *(v10 + 57) = a3;
      sub_4230C(a1[4]);
      v11 = 0;
      v12 = 7;
    }

    else
    {
      if (sub_56A8C(0xD3u, 4))
      {
        v19 = sub_56AD0(0xD3u);
        v20 = sub_66A18();
        v21 = sub_56B04(4);
        v22 = *a1;
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v20, 211, v21, "AVE_SEI", "SetBufferingPeriod", 1236, "pPFData != __null", a1, *a1, a2);
          v20 = sub_66A18();
          v21 = sub_56B04(4);
          v23 = *a1;
        }

        else
        {
          v31 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v21, "AVE_SEI");
      }

      sub_4230C(a1[4]);
      v12 = 4;
      v11 = 4294966296;
    }
  }

  if (sub_56A8C(0xD3u, v12))
  {
    v24 = sub_56AD0(0xD3u);
    v25 = sub_66A18();
    v26 = sub_56B04(v12);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d\n", v25, 211, v26, "AVE_SEI", "SetBufferingPeriod", a1, *a1, a2, a3, v11);
      v27 = sub_66A18();
      v28 = sub_56B04(v12);
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

uint64_t sub_81AC(uint64_t *a1, uint64_t a2, void *a3)
{
  v36 = 0;
  if (sub_56A8C(0xD3u, 7))
  {
    v6 = sub_56AD0(0xD3u);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", v7, 211, v8, "AVE_SEI", "CreateFrame", a1, *a1, a2, a3);
      v7 = sub_66A18();
      v8 = sub_56B04(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v7, 211, v8);
  }

  v10 = sub_4311C(a1[5], &v36, 0);
  if (v10)
  {
    if (v10 == -1007)
    {
      if (sub_56A8C(0xD3u, 4))
      {
        v17 = sub_56AD0(0xD3u);
        v18 = sub_66A18();
        v19 = sub_56B04(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %llu No more SEI frame data blocks available. Possible memory leak?\n", v18, 211, v19, "AVE_SEI", "CreateFrame", 1351, a1, *a1);
          v18 = sub_66A18();
          sub_56B04(4);
          v20 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu No more SEI frame data blocks available. Possible memory leak?", v18, 211);
      }

      sub_86E0(a1, 5, v11, v12, v13, v14, v15, v16);
    }

    else if (sub_56A8C(0xD3u, 4))
    {
      v26 = sub_56AD0(0xD3u);
      v27 = sub_66A18();
      v28 = sub_56B04(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu error while creating frame data for frameNum %lld %d\n", v27, 211, v28, "AVE_SEI", "CreateFrame", 1360, "ret == 0", a1, *a1, a2, v10);
        v27 = sub_66A18();
        v28 = sub_56B04(4);
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
    sub_1C238((a1 + 6), v21);
    *(v21 + 3) = a2;
    if (sub_56A8C(0xD3u, 7))
    {
      v22 = sub_56AD0(0xD3u);
      v23 = sub_66A18();
      v24 = sub_56B04(7);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu Created frame #%lld at %p\n", v23, 211, v24, "AVE_SEI", "CreateFrame", 1369, a1, *a1, a2, v21);
        v23 = sub_66A18();
        v24 = sub_56B04(7);
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

  if (sub_56A8C(0xD3u, v30))
  {
    v31 = sub_56AD0(0xD3u);
    v32 = sub_66A18();
    v33 = sub_56B04(v30);
    if (v31)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v32, 211, v33, "AVE_SEI", "CreateFrame", a1, *a1, a2, a3, v10);
      v32 = sub_66A18();
      v33 = sub_56B04(v30);
      v34 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v32, 211, v33, "AVE_SEI");
  }

  return v10;
}

uint64_t sub_86E0(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v14, 0, sizeof(v14));
  v13 = *a1;
  sub_63330(v14, 32, "%p %llu", a4, a5, a6, a7, a8, a1);
  for (i = sub_1C304((a1 + 6)); ; i = sub_1C14C(v11))
  {
    v11 = i;
    if (i == sub_1C320((a1 + 6)))
    {
      break;
    }

    sub_9458(v11, a2, v14);
  }

  return 0;
}

uint64_t sub_87A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v6 = sub_56AD0(0xD3u);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx\n", v7, 211, v8, "AVE_SEI", "EstimateSEISize", a1, *a1, a2, a3);
      v7 = sub_66A18();
      v8 = sub_56B04(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx", v7, 211, v8);
  }

  sub_422D8(a1[4]);
  v10 = sub_FFC(a1, a2);
  v11 = v10;
  if (v10)
  {
    if ((a1[1] & a3 & v10[4]) != 0)
    {
      v12 = sub_8A68(a1, v10, a3);
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

      v19 = sub_8E54(a1, v11, a3);
      v11 = v18 + sub_90E8(a1, v11) + (v19 & ~(v19 >> 31)) + (v19 & ~(v19 >> 31)) + v17 + (((v19 & ~(v19 >> 31)) + v17) >> 1);
    }

    else
    {
      v11 = 0;
    }
  }

  sub_4230C(a1[4]);
  if (sub_56A8C(0xD3u, 7))
  {
    v20 = sub_56AD0(0xD3u);
    v21 = sub_66A18();
    v22 = sub_56B04(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %d\n", v21, 211, v22, "AVE_SEI", "EstimateSEISize", a1, *a1, a2, a3, v11);
      v21 = sub_66A18();
      v22 = sub_56B04(7);
      v23 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %d", v21, 211, v22, "AVE_SEI");
  }

  return v11;
}

uint64_t sub_8A68(uint64_t *a1, void *a2, uint64_t a3)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v6 = sub_56AD0(0xD3u);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
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
      v7 = sub_66A18();
      v8 = sub_56B04(7);
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
  if (sub_56A8C(0xD3u, 8))
  {
    v13 = sub_56AD0(0xD3u);
    v14 = sub_66A18();
    v15 = sub_56B04(8);
    v16 = a2[3];
    if (v13)
    {
      printf("%lld %d AVE %s: Active bits for frame %lld: 0x%016llx\n", v14, 211, v15, a2[3], v12);
      v14 = sub_66A18();
      v15 = sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: Active bits for frame %lld: 0x%016llx", v14, 211, v15, a2[3], v12);
  }

  if (sub_56A8C(0xD3u, 8))
  {
    v17 = sub_56AD0(0xD3u);
    v18 = sub_66A18();
    v19 = sub_56B04(8);
    v20 = a1[1];
    v21 = a2[4];
    if (v17)
    {
      printf("%lld %d AVE %s: SEI bits 0x%016llx Frame bits 0x%016llx\n", v18, 211, v19, a1[1], v21);
      v22 = sub_66A18();
      v23 = sub_56B04(8);
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

  if (sub_56A8C(0xD3u, 7))
  {
    v27 = sub_56AD0(0xD3u);
    v28 = sub_66A18();
    v29 = sub_56B04(7);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d\n", v28, 211, v29, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes", a1, *a1, a2, a2[3], a3, v26);
      v28 = sub_66A18();
      v29 = sub_56B04(7);
      v30 = *a1;
      v32 = a2[3];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d", v28, 211, v29, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes");
  }

  return v26;
}

uint64_t sub_8E54(uint64_t *a1, void *a2, uint64_t a3)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v6 = sub_56AD0(0xD3u);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
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
      v7 = sub_66A18();
      v8 = sub_56B04(7);
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

  if (sub_56A8C(0xD3u, 7))
  {
    v17 = sub_56AD0(0xD3u);
    v18 = sub_66A18();
    v19 = sub_56B04(7);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d\n", v18, 211, v19, "AVE_SEI", "EstimateRegisteredSEINALUSizes", a1, *a1, a2, a2[3], a3, v16);
      v18 = sub_66A18();
      v19 = sub_56B04(7);
      v20 = *a1;
      v22 = a2[3];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d", v18, 211, v19, "AVE_SEI", "EstimateRegisteredSEINALUSizes");
  }

  return v16;
}

uint64_t sub_90E8(uint64_t *a1, uint64_t a2)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v4 = sub_56AD0(0xD3u);
    v5 = sub_66A18();
    v6 = sub_56B04(7);
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
      v5 = sub_66A18();
      v6 = sub_56B04(7);
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
    if (sub_56A8C(0xD3u, 8))
    {
      v16 = sub_56AD0(0xD3u);
      v17 = sub_66A18();
      v18 = sub_56B04(8);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu ISP metadata length: %d, payload size: %d\n", v17, 211, v18, "AVE_SEI", "EstimateISPMetadataSEITagSize", 1687, a1, *a1, v11, v15);
        v17 = sub_66A18();
        v18 = sub_56B04(8);
        v19 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu ISP metadata length: %d, payload size: %d", v17, 211, v18);
    }
  }

  else
  {
    v15 = 0;
  }

  if (sub_56A8C(0xD3u, 7))
  {
    v20 = sub_56AD0(0xD3u);
    v21 = sub_66A18();
    v22 = sub_56B04(7);
    v23 = *(a2 + 24);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld %d\n", v21, 211, v22, "AVE_SEI", "EstimateISPMetadataSEITagSize", a1, *a1, a2, *(a2 + 24), v15);
      v21 = sub_66A18();
      v22 = sub_56B04(7);
      v24 = *a1;
    }

    v26 = *(a2 + 24);
    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld %d", v21, 211, v22, "AVE_SEI");
  }

  return v15;
}

void sub_9458(uint64_t a1, int a2, const char *a3)
{
  v4 = a2;
  v6 = a2;
  if (sub_56A8C(0xD3u, a2))
  {
    v7 = sub_56AD0(0xD3u);
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
      v10 = sub_66A18();
      v11 = sub_56B04(v6);
      v12 = *(a1 + 24);
      v13 = *(a1 + 32);
      if ((v9 | (v8 >> 5)))
      {
        syslog(3, "%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx", v10, 211, v11, a3, *(a1 + 24), v13);
      }

      else
      {
        printf("%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx\n", v10, 211, v11, a3, *(a1 + 24), v13);
        v14 = sub_66A18();
        v15 = sub_56B04(v6);
        syslog(3, "%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx", v14, 211, v15, a3, *(a1 + 24), *(a1 + 32));
      }

      v4 = a2;
    }
  }

  v238 = a3;
  if (*(a1 + 32))
  {
    if (sub_56A8C(0xD3u, v6))
    {
      v16 = sub_56AD0(0xD3u);
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
        v19 = sub_66A18();
        v20 = sub_56B04(v6);
        v21 = *(a1 + 216);
        if ((v18 | (v17 >> 5)))
        {
          syslog(3, "%lld %d AVE %s: %s ISP Metadata: %p", v19, 211, v20, a3, v21);
        }

        else
        {
          printf("%lld %d AVE %s: %s ISP Metadata: %p\n", v19, 211, v20, a3, v21);
          v22 = sub_66A18();
          v23 = sub_56B04(v6);
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

              sub_63330(v240 + v36, 4, "%02x ", v28, v29, v30, v31, v32, v26[v37]);
              v36 += 3;
              ++v37;
            }

            while (v36 != 96);
            if (sub_56A8C(0xD3u, v6))
            {
              v38 = sub_56AD0(0xD3u);
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
                v41 = sub_66A18();
                v42 = sub_56B04(v6);
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
                  v41 = sub_66A18();
                  v42 = sub_56B04(v6);
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

  if ((*(a1 + 32) & 4) != 0 && sub_56A8C(0xD3u, v6))
  {
    v45 = sub_56AD0(0xD3u);
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
      v47 = sub_66A18();
      v48 = sub_56B04(v6);
      if (((v46 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Active Parameter Sets %d\n", v47, 211, v48, a3, *(a1 + 228));
        sub_66A18();
        sub_56B04(v6);
        v49 = *(a1 + 228);
      }

      syslog(3, "%lld %d AVE %s: %s Active Parameter Sets %d");
    }
  }

  if ((*(a1 + 32) & 8) != 0 && sub_56A8C(0xD3u, v6))
  {
    v51 = sub_56AD0(0xD3u);
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
      v53 = sub_66A18();
      v54 = sub_56B04(v6);
      if (((v52 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Picture Timing %d %d %d %d %d\n", v53, 211, v54, a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
        v53 = sub_66A18();
        v54 = sub_56B04(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Picture Timing %d %d %d %d %d", v53, 211, v54, a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
    }
  }

  if ((*(a1 + 32) & 0x10) != 0 && sub_56A8C(0xD3u, v6))
  {
    v56 = sub_56AD0(0xD3u);
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
      v58 = sub_66A18();
      v59 = sub_56B04(v6);
      if (((v57 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Buffering Period %d\n", v58, 211, v59, a3, *(a1 + 228));
        sub_66A18();
        sub_56B04(v6);
        v60 = *(a1 + 228);
      }

      syslog(3, "%lld %d AVE %s: %s Buffering Period %d");
    }
  }

  if ((*(a1 + 32) & 0x20) != 0 && sub_56A8C(0xD3u, v6))
  {
    v62 = sub_56AD0(0xD3u);
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
      v64 = sub_66A18();
      v65 = sub_56B04(v6);
      if (((v63 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Content Color Volume bit is set\n", v64, 211, v65, a3);
        sub_66A18();
        sub_56B04(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Content Color Volume bit is set");
    }
  }

  if ((*(a1 + 32) & 0x40) != 0 && sub_56A8C(0xD3u, v6))
  {
    v66 = sub_56AD0(0xD3u);
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
      v68 = sub_66A18();
      v69 = sub_56B04(v6);
      v70 = *(a1 + 154);
      if (((v67 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n", v68, 211, v69, a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
        v68 = sub_66A18();
        v69 = sub_56B04(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x", v68, 211, v69, a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
    }
  }

  if ((*(a1 + 32) & 0x80) != 0 && sub_56A8C(0xD3u, v6))
  {
    v71 = sub_56AD0(0xD3u);
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
      v73 = sub_66A18();
      v74 = sub_56B04(v6);
      if (((v72 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Lux Level %d\n", v73, 211, v74, a3, *(a1 + 60));
        sub_66A18();
        sub_56B04(v6);
        v75 = *(a1 + 60);
      }

      syslog(3, "%lld %d AVE %s: %s Lux Level %d");
    }
  }

  if ((*(a1 + 36) & 1) != 0 && sub_56A8C(0xD3u, v6))
  {
    v77 = sub_56AD0(0xD3u);
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
      v79 = sub_66A18();
      v80 = sub_56B04(v6);
      v81 = *(a1 + 64);
      if ((v78 | ((v4 & 0x20) >> 5)))
      {
        v211 = *(a1 + 64);
      }

      else
      {
        printf("%lld %d AVE %s: %s Exposure Time %f\n", v79, 211, v80, a3, *(a1 + 64));
        sub_66A18();
        sub_56B04(v6);
        v82 = *(a1 + 64);
      }

      syslog(3, "%lld %d AVE %s: %s Exposure Time %f");
    }
  }

  if ((*(a1 + 36) & 2) != 0 && sub_56A8C(0xD3u, v6))
  {
    v84 = sub_56AD0(0xD3u);
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
      v86 = sub_66A18();
      v87 = sub_56B04(v6);
      v88 = *(a1 + 72);
      if ((v85 | ((v4 & 0x20) >> 5)))
      {
        v212 = *(a1 + 72);
      }

      else
      {
        printf("%lld %d AVE %s: %s SNR %f\n", v86, 211, v87, a3, *(a1 + 72));
        sub_66A18();
        sub_56B04(v6);
        v89 = *(a1 + 72);
      }

      syslog(3, "%lld %d AVE %s: %s SNR %f");
    }
  }

  if ((*(a1 + 36) & 4) != 0 && sub_56A8C(0xD3u, v6))
  {
    v91 = sub_56AD0(0xD3u);
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
      v93 = sub_66A18();
      v94 = sub_56B04(v6);
      if (((v92 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s RC %d\n", v93, 211, v94, a3, *(a1 + 80));
        sub_66A18();
        sub_56B04(v6);
        v95 = *(a1 + 80);
      }

      syslog(3, "%lld %d AVE %s: %s RC %d");
    }
  }

  if ((*(a1 + 36) & 8) != 0 && sub_56A8C(0xD3u, v6))
  {
    v97 = sub_56AD0(0xD3u);
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
      v99 = sub_66A18();
      v100 = sub_56B04(v6);
      if (((v98 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Throughput Mode %d\n", v99, 211, v100, a3, *(a1 + 84));
        sub_66A18();
        sub_56B04(v6);
        v101 = *(a1 + 84);
      }

      syslog(3, "%lld %d AVE %s: %s Throughput Mode %d");
    }
  }

  if ((*(a1 + 36) & 0x10) != 0 && sub_56A8C(0xD3u, v6))
  {
    v103 = sub_56AD0(0xD3u);
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
      v105 = sub_66A18();
      v106 = sub_56B04(v6);
      if (((v104 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Bitrate %d\n", v105, 211, v106, a3, *(a1 + 88));
        sub_66A18();
        sub_56B04(v6);
        v107 = *(a1 + 88);
      }

      syslog(3, "%lld %d AVE %s: %s Bitrate %d");
    }
  }

  if ((*(a1 + 36) & 0x20) != 0 && sub_56A8C(0xD3u, v6))
  {
    v109 = sub_56AD0(0xD3u);
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
      v111 = sub_66A18();
      v112 = sub_56B04(v6);
      v113 = *(a1 + 104);
      if (((v110 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Timecode %d %lld\n", v111, 211, v112, a3, *(a1 + 104), *(a1 + 96));
        sub_66A18();
        sub_56B04(v6);
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
      if (sub_56A8C(0xD3u, v6))
      {
        v118 = sub_56AD0(0xD3u);
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
          v121 = sub_66A18();
          v122 = sub_56B04(v6);
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
            v127 = sub_66A18();
            v128 = sub_56B04(v6);
            syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x", v127, 211, v128, v238, v116, *(v117 - 3), *(v117 - 2), *(v117 - 1), *v117);
          }

          v4 = a2;
        }
      }

      ++v116;
      v117 += 4;
    }

    while (v116 != 3);
    if (sub_56A8C(0xD3u, v6))
    {
      v134 = sub_56AD0(0xD3u);
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
        v136 = sub_66A18();
        v137 = sub_56B04(v6);
        v138 = *(a1 + 134);
        if (((v135 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x\n", v136, 211, v137, a3, *(a1 + 132), *(a1 + 133), *(a1 + 134), *(a1 + 135));
          v136 = sub_66A18();
          v137 = sub_56B04(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x", v136, 211, v137, a3, *(a1 + 132), *(a1 + 133), *(a1 + 134), *(a1 + 135));
      }
    }

    if (sub_56A8C(0xD3u, v6))
    {
      v145 = sub_56AD0(0xD3u);
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
        v147 = sub_66A18();
        v148 = sub_56B04(v6);
        v149 = *(a1 + 138);
        if (((v146 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", v147, 211, v148, a3, *(a1 + 136), *(a1 + 137), *(a1 + 138), *(a1 + 139));
          v147 = sub_66A18();
          v148 = sub_56B04(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x", v147, 211, v148, a3, *(a1 + 136), *(a1 + 137), *(a1 + 138), *(a1 + 139));
      }
    }

    if (sub_56A8C(0xD3u, v6))
    {
      v156 = sub_56AD0(0xD3u);
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
        v158 = sub_66A18();
        v159 = sub_56B04(v6);
        v160 = *(a1 + 142);
        if (((v157 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", v158, 211, v159, a3, *(a1 + 140), *(a1 + 141), *(a1 + 142), *(a1 + 143));
          v158 = sub_66A18();
          v159 = sub_56B04(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x", v158, 211, v159, a3, *(a1 + 140), *(a1 + 141), *(a1 + 142), *(a1 + 143));
      }
    }
  }

  if ((*(a1 + 33) & 2) != 0 && sub_56A8C(0xD3u, v6))
  {
    v167 = sub_56AD0(0xD3u);
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
      v169 = sub_66A18();
      v170 = sub_56B04(v6);
      v171 = *(a1 + 146);
      if (((v168 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x\n", v169, 211, v170, a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
        v169 = sub_66A18();
        v170 = sub_56B04(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x", v169, 211, v170, a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
    }
  }

  if ((*(a1 + 36) & 0x40) != 0 && sub_56A8C(0xD3u, v6))
  {
    v173 = sub_56AD0(0xD3u);
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
      v175 = sub_66A18();
      v176 = sub_56B04(v6);
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
        v175 = sub_66A18();
        sub_56B04(v6);
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

  if ((*(a1 + 36) & 0x80) != 0 && sub_56A8C(0xD3u, v6))
  {
    v182 = sub_56AD0(0xD3u);
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
      v184 = sub_66A18();
      v185 = sub_56B04(v6);
      if (((v183 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Session ID %llu\n", v184, 211, v185, a3, *(a1 + 40));
        sub_66A18();
        sub_56B04(v6);
        v186 = *(a1 + 40);
      }

      syslog(3, "%lld %d AVE %s: %s Session ID %llu");
    }
  }

  if ((*(a1 + 37) & 1) != 0 && sub_56A8C(0xD3u, v6))
  {
    v188 = sub_56AD0(0xD3u);
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
      v190 = sub_66A18();
      v191 = sub_56B04(v6);
      v192 = *(a1 + 52);
      if (((v189 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Driver Version %d.%d.%d\n", v190, 211, v191, a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
        v190 = sub_66A18();
        v191 = sub_56B04(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Driver Version %d.%d.%d", v190, 211, v191, a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
    }
  }

  if ((*(a1 + 37) & 2) != 0 && sub_56A8C(0xD3u, v6))
  {
    v194 = sub_56AD0(0xD3u);
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
      v197 = sub_66A18();
      v198 = sub_56B04(v6);
      if (((v196 | (v195 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s LookAhead Frame Count %d\n", v197, 211, v198, a3, *(a1 + 92));
        sub_66A18();
        sub_56B04(v6);
        v199 = *(a1 + 92);
      }

      syslog(3, "%lld %d AVE %s: %s LookAhead Frame Count %d");
    }
  }
}

uint64_t sub_B0D4(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 < 255)
  {
    v5 = a1;
LABEL_7:

    return sub_635C4(a2, v5, 8);
  }

  else
  {
    while (1)
    {
      result = sub_635C4(a2, 255, 8);
      if (result)
      {
        break;
      }

      v5 = (v3 - 255);
      v6 = v3 <= 509;
      v3 -= 255;
      if (v6)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_B150(uint64_t a1, int a2, uint64_t a3, const char *a4)
{
  v8 = sub_635EC(a1);
  if (!v8)
  {
    if (sub_56A8C(0xD3u, 8))
    {
      v16 = sub_56AD0(0xD3u);
      v17 = sub_66A18();
      v18 = sub_56B04(8);
      v19 = *(a1 + 12);
      v20 = *(a1 + 32) + v19;
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s start code %p (%d)\n", v17, 211, v18, "AVE_SEI_StartNALU", 112, a4, (*(a1 + 32) + v19), v19);
        v17 = sub_66A18();
        sub_56B04(8);
        v21 = *(a1 + 32) + *(a1 + 12);
      }

      else
      {
        v54 = *(a1 + 32) + v19;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s start code %p (%d)", v17, 211);
    }

    if (a2 == 2)
    {
      v26 = sub_635C4(a1, 19969, 16);
      if (v26)
      {
        v9 = v26;
        if (!sub_56A8C(0xD3u, 4))
        {
          return v9;
        }

        v27 = sub_56AD0(0xD3u);
        v11 = sub_66A18();
        v28 = sub_56B04(4);
        v29 = *(a1 + 32);
        if (!v27)
        {
          v57 = *(a1 + 32);
          goto LABEL_10;
        }

        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v28, "AVE_SEI_StartNALU", 123, "(ret) == 0", *(a1 + 32), v9);
        goto LABEL_37;
      }
    }

    else
    {
      if (a2 != 1)
      {
        if (sub_56A8C(0xD3u, 4))
        {
          v30 = sub_56AD0(0xD3u);
          v31 = sub_66A18();
          v32 = sub_56B04(4);
          if (v30)
          {
            printf("%lld %d AVE %s: %s:%d %s | %s encType %d not recognized. FAIL %p\n", v31, 211, v32, "AVE_SEI_StartNALU", 128, "false", a4, a2, *(a1 + 32));
            v31 = sub_66A18();
            v32 = sub_56B04(4);
            v33 = *(a1 + 32);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | %s encType %d not recognized. FAIL %p", v31, 211, v32);
        }

        return 4294966295;
      }

      v22 = sub_635C4(a1, 6, 8);
      if (v22)
      {
        v9 = v22;
        if (!sub_56A8C(0xD3u, 4))
        {
          return v9;
        }

        v23 = sub_56AD0(0xD3u);
        v11 = sub_66A18();
        v24 = sub_56B04(4);
        v25 = *(a1 + 32);
        if (!v23)
        {
          v56 = *(a1 + 32);
          goto LABEL_10;
        }

        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v24, "AVE_SEI_StartNALU", 119, "(ret) == 0", *(a1 + 32), v9);
        goto LABEL_37;
      }
    }

    if (sub_56A8C(0xD3u, 8))
    {
      v34 = sub_56AD0(0xD3u);
      v35 = sub_66A18();
      v36 = sub_56B04(8);
      v37 = *(a1 + 12);
      v38 = *(a1 + 32) + v37;
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s nal_unit_type %p (%d)\n", v35, 211, v36, "AVE_SEI_StartNALU", 133, a4, (*(a1 + 32) + v37), v37);
        v35 = sub_66A18();
        sub_56B04(8);
        v39 = *(a1 + 32) + *(a1 + 12);
      }

      else
      {
        v55 = *(a1 + 32) + v37;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s nal_unit_type %p (%d)", v35, 211);
    }

    v40 = sub_635C4(a1, a3, 8);
    if (!v40)
    {
      if (sub_56A8C(0xD3u, 8))
      {
        v47 = sub_56AD0(0xD3u);
        v48 = sub_66A18();
        v49 = sub_56B04(8);
        v50 = *(a1 + 12);
        v51 = *(a1 + 32) + v50;
        if (v47)
        {
          printf("%lld %d AVE %s: %s:%d %s payloadType %p (%d)\n", v48, 211, v49, "AVE_SEI_StartNALU", 140, a4, (*(a1 + 32) + v50), v50);
          v48 = sub_66A18();
          sub_56B04(8);
          v52 = *(a1 + 32) + *(a1 + 12);
        }

        else
        {
          v59 = *(a1 + 32) + v50;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s payloadType %p (%d)", v48, 211);
      }

      return 0;
    }

    v9 = v40;
    if (!sub_56A8C(0xD3u, 4))
    {
      return v9;
    }

    v41 = sub_56AD0(0xD3u);
    v11 = sub_66A18();
    v42 = sub_56B04(4);
    v43 = *(a1 + 32);
    if (!v41)
    {
      v58 = *(a1 + 32);
      goto LABEL_10;
    }

    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v42, "AVE_SEI_StartNALU", 137, "(ret) == 0", *(a1 + 32), v9);
LABEL_37:
    v44 = sub_66A18();
    sub_56B04(4);
    v45 = *(a1 + 32);
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v44, 211);
    return v9;
  }

  v9 = v8;
  if (sub_56A8C(0xD3u, 4))
  {
    v10 = sub_56AD0(0xD3u);
    v11 = sub_66A18();
    v12 = sub_56B04(4);
    v13 = *(a1 + 32);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v12, "AVE_SEI_StartNALU", 109, "(ret) == 0", *(a1 + 32), v9);
      v14 = sub_66A18();
      sub_56B04(4);
      v15 = *(a1 + 32);
      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v14, 211);
      return v9;
    }

    v53 = *(a1 + 32);
LABEL_10:
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v11, 211);
  }

  return v9;
}

uint64_t sub_B7BC(const void *a1, int a2, unsigned __int8 *a3, int a4, int *a5)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v7 = sub_56AD0(0xD3u);
    v8 = sub_66A18();
    v9 = sub_56B04(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d %p\n", v8, 211, v9, "AVE_SEI_WriteAmbientViewingEnvironment", a1, a2, a3, a4, a5);
      v10 = sub_66A18();
      v60 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %p", v10, 211, v60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %p", v8, 211, v9);
    }
  }

  if (!a3 || !a1 || !a5)
  {
    v21 = 4;
    if (sub_56A8C(0xD3u, 4))
    {
      v22 = sub_56AD0(0xD3u);
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      if (!v22)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid parameters %p %p %p", v23, 211, v24);
        goto LABEL_27;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid parameters %p %p %p\n", v23, 211, v24, "AVE_SEI_WriteAmbientViewingEnvironment", 222, "pBuf != __null && pBytesWritten != __null && pViewingEnv != __null", a1, a3, a5);
      v25 = sub_66A18();
      v21 = 4;
      v61 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid parameters %p %p %p", v25, 211, v61);
    }

LABEL_28:
    v16 = 4294966295;
    goto LABEL_29;
  }

  if (a4 != 2)
  {
    v21 = 4;
    if (sub_56A8C(0xD3u, 4))
    {
      v26 = sub_56AD0(0xD3u);
      v27 = sub_66A18();
      v28 = sub_56B04(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v27, 211, v28, "AVE_SEI_WriteAmbientViewingEnvironment", 226, "encType == AVE_EncType_HEVC", a4, a1);
        v29 = sub_66A18();
        v21 = 4;
        sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v29, 211);
        goto LABEL_28;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v27, 211);
LABEL_27:
      v21 = 4;
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v11 = operator new(0x1030uLL, &std::nothrow);
  if (v11)
  {
    v12 = v11;
    sub_6338C(v11);
    v13 = operator new(0x1030uLL, &std::nothrow);
    v14 = v13;
    if (v13)
    {
      sub_633D0(v13, a1, a2, 0);
    }

    *a5 = 0;
    v15 = sub_B150(v14, 2, 148, "AVE_SEI_WriteAmbientViewingEnvironment");
    if (v15)
    {
      v16 = v15;
      if (!sub_56A8C(0xD3u, 4))
      {
        goto LABEL_52;
      }

      v17 = sub_56AD0(0xD3u);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v19, "AVE_SEI_WriteAmbientViewingEnvironment", 240, "(ret) == 0", a1, v16);
        v20 = sub_66A18();
        sub_56B04(4);
LABEL_38:
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v20, 211);
        goto LABEL_52;
      }
    }

    else
    {
      v40 = sub_63684(v12, a3, 8);
      if (v40)
      {
        v16 = v40;
        if (!sub_56A8C(0xD3u, 4))
        {
          goto LABEL_52;
        }

        v41 = sub_56AD0(0xD3u);
        v18 = sub_66A18();
        v42 = sub_56B04(4);
        if (v41)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v42, "AVE_SEI_WriteAmbientViewingEnvironment", 245, "(ret) == 0", a1, v16);
          v20 = sub_66A18();
          sub_56B04(4);
          goto LABEL_38;
        }
      }

      else if (v12[2] && (v43 = sub_6376C(v12), v43))
      {
        v16 = v43;
        if (!sub_56A8C(0xD3u, 4))
        {
          goto LABEL_52;
        }

        v44 = sub_56AD0(0xD3u);
        v18 = sub_66A18();
        v45 = sub_56B04(4);
        if (v44)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v45, "AVE_SEI_WriteAmbientViewingEnvironment", 251, "(ret) == 0", a1, v16);
          v20 = sub_66A18();
          sub_56B04(4);
          goto LABEL_38;
        }
      }

      else
      {
        if (sub_56A8C(0xD3u, 8))
        {
          v46 = sub_56AD0(0xD3u);
          v47 = sub_66A18();
          v48 = sub_56B04(8);
          v49 = v12[3];
          v50 = (v12[2] + 8 * v49);
          if (v46)
          {
            printf("%lld %d AVE %s: %s:%d New bits %d (%d bytes)\n", v47, 211, v48, "AVE_SEI_WriteAmbientViewingEnvironment", 254, v12[2] + 8 * v49, v49);
            v47 = sub_66A18();
            sub_56B04(8);
            v63 = (v12[2] + 8 * v12[3]);
          }

          else
          {
            v64 = (v12[2] + 8 * v49);
          }

          syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v47);
        }

        v51 = sub_C2AC(v12, v14, "AVE_SEI_WriteAmbientViewingEnvironment");
        if (!v51)
        {
          *a5 = v14[3];
          if (sub_56A8C(0xD3u, 7))
          {
            v54 = sub_56AD0(0xD3u);
            v55 = sub_66A18();
            v56 = sub_56B04(7);
            v57 = *a5;
            if (v54)
            {
              printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v55, 211, v56, "AVE_SEI_WriteAmbientViewingEnvironment", 260, v57);
              v58 = sub_66A18();
              v59 = sub_56B04(7);
              syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v58, 211, v59, "AVE_SEI_WriteAmbientViewingEnvironment", 260, *a5);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v55, 211, v56, "AVE_SEI_WriteAmbientViewingEnvironment", 260, v57);
            }
          }

          v16 = 0;
          goto LABEL_52;
        }

        v16 = v51;
        if (!sub_56A8C(0xD3u, 4))
        {
LABEL_52:
          (*(*v12 + 8))(v12);
          (*(*v14 + 8))(v14);
          if (v16)
          {
            v21 = 4;
          }

          else
          {
            v21 = 7;
          }

          goto LABEL_29;
        }

        v52 = sub_56AD0(0xD3u);
        v18 = sub_66A18();
        v53 = sub_56B04(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v53, "AVE_SEI_WriteAmbientViewingEnvironment", 257, "(ret) == 0", a1, v16);
          v20 = sub_66A18();
          sub_56B04(4);
          goto LABEL_38;
        }
      }
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v18, 211);
    goto LABEL_52;
  }

  v21 = 4;
  if (sub_56A8C(0xD3u, 4))
  {
    v30 = sub_56AD0(0xD3u);
    v31 = sub_66A18();
    v32 = sub_56B04(4);
    if (v30)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v31, 211, v32, "AVE_SEI_WriteAmbientViewingEnvironment", 230, "pcSyntaxWriter != __null", a1);
      v33 = sub_66A18();
      v21 = 4;
      v34 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v33, 211, v34, "AVE_SEI_WriteAmbientViewingEnvironment", 230, "pcSyntaxWriter != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v31, 211, v32, "AVE_SEI_WriteAmbientViewingEnvironment", 230, "pcSyntaxWriter != __null", a1);
      v21 = 4;
    }
  }

  v16 = 4294966293;
LABEL_29:
  if (sub_56A8C(0xD3u, v21))
  {
    v35 = sub_56AD0(0xD3u);
    v36 = sub_66A18();
    v37 = sub_56B04(v21);
    if (v35)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %p %d\n", v36, 211, v37, "AVE_SEI_WriteAmbientViewingEnvironment", a1, a2, a3, a4, a5, v16);
      v38 = sub_66A18();
      v62 = sub_56B04(v21);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %p %d", v38, 211, v62, "AVE_SEI_WriteAmbientViewingEnvironment");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %p %d", v36, 211, v37, "AVE_SEI_WriteAmbientViewingEnvironment");
    }
  }

  return v16;
}

uint64_t sub_C2AC(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = (*(a1 + 12) - *(a1 + 16) / 8);
  v7 = *(a2 + 12);
  if (sub_56A8C(0xD3u, 8))
  {
    v8 = sub_56AD0(0xD3u);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    v11 = *(a2 + 12);
    v12 = *(a2 + 32) + v11;
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %s start payload size %d %p (%d)\n", v9, 211, v10, "AVE_SEI_FinishNALU", 171, a3, v6, (*(a2 + 32) + v11), v11);
      v9 = sub_66A18();
      v10 = sub_56B04(8);
      v13 = *(a2 + 32) + *(a2 + 12);
    }

    else
    {
      v48 = *(a2 + 32) + v11;
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s start payload size %d %p (%d)", v9, 211, v10);
  }

  v14 = sub_B0D4(v6, a2);
  if (!v14)
  {
    if (sub_56A8C(0xD3u, 8))
    {
      v22 = sub_56AD0(0xD3u);
      v23 = sub_66A18();
      v24 = sub_56B04(8);
      v25 = *(a2 + 12);
      v26 = *(a2 + 32) + v25;
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s end payload size %d %p (%d)\n", v23, 211, v24, "AVE_SEI_FinishNALU", 179, a3, v25 - v7, (*(a2 + 32) + v25), v25);
        v23 = sub_66A18();
        v24 = sub_56B04(8);
        v49 = *(a2 + 32) + *(a2 + 12);
      }

      else
      {
        v50 = *(a2 + 32) + v25;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s end payload size %d %p (%d)", v23, 211, v24);
    }

    v27 = sub_636E8(a2, a1);
    if (v27)
    {
      v15 = v27;
      if (!sub_56A8C(0xD3u, 4))
      {
        return v15;
      }

      v28 = sub_56AD0(0xD3u);
      v17 = sub_66A18();
      v29 = sub_56B04(4);
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
      v31 = sub_6376C(a2);
      if (!v31)
      {
        if (sub_56A8C(0xD3u, 8))
        {
          v37 = sub_56AD0(0xD3u);
          v38 = sub_66A18();
          v39 = sub_56B04(8);
          v40 = *(a2 + 12);
          v41 = *(a2 + 32) + v40;
          if (v37)
          {
            printf("%lld %d AVE %s: %s:%d %s rbsp_trailing_bits %p (%d)\n", v38, 211, v39, "AVE_SEI_FinishNALU", 191, a3, (*(a2 + 32) + v40), v40);
            v38 = sub_66A18();
            sub_56B04(8);
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
      if (!sub_56A8C(0xD3u, 4))
      {
        return v15;
      }

      v32 = sub_56AD0(0xD3u);
      v17 = sub_66A18();
      v33 = sub_56B04(4);
      v34 = *(a2 + 32);
      if (!v32)
      {
        v46 = *(a2 + 32);
        goto LABEL_31;
      }

      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v17, 211, v33, "AVE_SEI_FinishNALU", 187, "(ret) == 0", *(a2 + 32), v15);
    }

    v35 = sub_66A18();
    sub_56B04(4);
    v36 = *(a2 + 32);
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v35, 211);
    return v15;
  }

  v15 = v14;
  if (sub_56A8C(0xD3u, 4))
  {
    v16 = sub_56AD0(0xD3u);
    v17 = sub_66A18();
    v18 = sub_56B04(4);
    v19 = *(a2 + 32);
    if (v16)
    {
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v17, 211, v18, "AVE_SEI_FinishNALU", 174, "(ret) == 0", *(a2 + 32), v15);
      v20 = sub_66A18();
      sub_56B04(4);
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

uint64_t sub_C7DC(const void *a1, int a2, int a3, int *a4)
{
  memset(v120, 0, sizeof(v120));
  v119[0] = xmmword_9BA30;
  v119[1] = xmmword_9BA40;
  v119[2] = xmmword_9BA50;
  if (sub_56A8C(0xD3u, 7))
  {
    v4 = sub_56AD0(0xD3u);
    v5 = sub_66A18();
    v6 = sub_56B04(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", v5, 211, v6, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4);
      v5 = sub_66A18();
      v6 = sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", v5, 211, v6, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4);
  }

  if (!a1 || !a4)
  {
    v10 = 4;
    if (sub_56A8C(0xD3u, 4))
    {
      v11 = sub_56AD0(0xD3u);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v12, 211, v13, "AVE_SEI_WriteContentColorVolume", 319, "pBuf != __null && pBytesWritten != __null", a1, a4);
        v12 = sub_66A18();
        v13 = sub_56B04(4);
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
    if (sub_56A8C(0xD3u, 4))
    {
      v14 = sub_56AD0(0xD3u);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v15, 211, v16, "AVE_SEI_WriteContentColorVolume", 323, "encType == AVE_EncType_HEVC", a3, a1);
        v15 = sub_66A18();
        v16 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v15, 211, v16, "AVE_SEI_WriteContentColorVolume", 323, "encType == AVE_EncType_HEVC", a3, a1);
LABEL_41:
      v10 = 4;
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  if (sub_56A8C(0xD3u, 8))
  {
    v7 = sub_56AD0(0xD3u);
    v8 = sub_66A18();
    v9 = sub_56B04(8);
    if (v7)
    {
      printf("%lld %d AVE %s: %s:%d ccv primaries\n", v8, 211, v9, "AVE_SEI_WriteContentColorVolume", 328);
      v8 = sub_66A18();
      v9 = sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d ccv primaries", v8, 211, v9, "AVE_SEI_WriteContentColorVolume", 328);
  }

  v17 = 0;
  v117 = vdupq_n_s64(0x40E86A0000000000uLL);
  do
  {
    v118 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(v119[v17], v117)));
    v120[v17] = v118;
    if (sub_56A8C(0xD3u, 7))
    {
      v18 = sub_56AD0(0xD3u);
      v19 = sub_66A18();
      v20 = sub_56B04(7);
      if (v18)
      {
        printf("%lld %d AVE %s: ccv_primaries %d (x, y) (%d, %d)\n", v19, 211, v20, v17, v118.i32[0], v118.i32[1]);
        v19 = sub_66A18();
        v20 = sub_56B04(7);
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
    sub_6338C(v21);
    v23 = operator new(0x1030uLL, &std::nothrow);
    v24 = v23;
    if (v23)
    {
      sub_633D0(v23, a1, a2, 0);
      v25 = sub_B150(v24, 2, 149, "AVE_SEI_WriteContentColorVolume");
      if (v25)
      {
        v26 = v25;
        if (sub_56A8C(0xD3u, 4))
        {
          v27 = sub_56AD0(0xD3u);
          v28 = sub_66A18();
          v29 = sub_56B04(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v28, 211, v29, "AVE_SEI_WriteContentColorVolume", 352, "(ret) == 0", a1, v26);
            v28 = sub_66A18();
            v29 = sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v28, 211, v29, "AVE_SEI_WriteContentColorVolume", 352, "(ret) == 0", a1, v26);
        }
      }

      else
      {
        v42 = sub_63420(v22, 0);
        if (v42)
        {
          v26 = v42;
          if (sub_56A8C(0xD3u, 4))
          {
            v43 = sub_56AD0(0xD3u);
            v44 = sub_66A18();
            v45 = sub_56B04(4);
            if (v43)
            {
              printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v44, 211, v45, "AVE_SEI_WriteContentColorVolume", 356, "(ret) == 0", a1, v26);
              v44 = sub_66A18();
              v45 = sub_56B04(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v44, 211, v45, "AVE_SEI_WriteContentColorVolume", 356, "(ret) == 0", a1, v26);
          }
        }

        else
        {
          v46 = sub_63420(v22, 1);
          if (v46)
          {
            v26 = v46;
            if (sub_56A8C(0xD3u, 4))
            {
              v47 = sub_56AD0(0xD3u);
              v48 = sub_66A18();
              v49 = sub_56B04(4);
              if (v47)
              {
                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v48, 211, v49, "AVE_SEI_WriteContentColorVolume", 361, "(ret) == 0", a1, v26);
                v48 = sub_66A18();
                v49 = sub_56B04(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v48, 211, v49, "AVE_SEI_WriteContentColorVolume", 361, "(ret) == 0", a1, v26);
            }
          }

          else
          {
            v50 = sub_63420(v22, 1);
            if (v50)
            {
              v26 = v50;
              if (sub_56A8C(0xD3u, 4))
              {
                v51 = sub_56AD0(0xD3u);
                v52 = sub_66A18();
                v53 = sub_56B04(4);
                if (v51)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v52, 211, v53, "AVE_SEI_WriteContentColorVolume", 363, "(ret) == 0", a1, v26);
                  v52 = sub_66A18();
                  v53 = sub_56B04(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v52, 211, v53, "AVE_SEI_WriteContentColorVolume", 363, "(ret) == 0", a1, v26);
              }
            }

            else
            {
              v54 = sub_63420(v22, 1);
              if (v54)
              {
                v26 = v54;
                if (sub_56A8C(0xD3u, 4))
                {
                  v55 = sub_56AD0(0xD3u);
                  v56 = sub_66A18();
                  v57 = sub_56B04(4);
                  if (v55)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v56, 211, v57, "AVE_SEI_WriteContentColorVolume", 365, "(ret) == 0", a1, v26);
                    v56 = sub_66A18();
                    v57 = sub_56B04(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v56, 211, v57, "AVE_SEI_WriteContentColorVolume", 365, "(ret) == 0", a1, v26);
                }
              }

              else
              {
                v58 = sub_63420(v22, 1);
                if (v58)
                {
                  v26 = v58;
                  if (sub_56A8C(0xD3u, 4))
                  {
                    v59 = sub_56AD0(0xD3u);
                    v60 = sub_66A18();
                    v61 = sub_56B04(4);
                    if (v59)
                    {
                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v60, 211, v61, "AVE_SEI_WriteContentColorVolume", 367, "(ret) == 0", a1, v26);
                      v60 = sub_66A18();
                      v61 = sub_56B04(4);
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v60, 211, v61, "AVE_SEI_WriteContentColorVolume", 367, "(ret) == 0", a1, v26);
                  }
                }

                else
                {
                  v62 = sub_63420(v22, 1);
                  if (v62)
                  {
                    v26 = v62;
                    if (sub_56A8C(0xD3u, 4))
                    {
                      v63 = sub_56AD0(0xD3u);
                      v64 = sub_66A18();
                      v65 = sub_56B04(4);
                      if (v63)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v64, 211, v65, "AVE_SEI_WriteContentColorVolume", 369, "(ret) == 0", a1, v26);
                        v64 = sub_66A18();
                        v65 = sub_56B04(4);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v64, 211, v65, "AVE_SEI_WriteContentColorVolume", 369, "(ret) == 0", a1, v26);
                    }
                  }

                  else
                  {
                    v66 = sub_635C4(v22, 0, 2);
                    if (v66)
                    {
                      v26 = v66;
                      if (sub_56A8C(0xD3u, 4))
                      {
                        v67 = sub_56AD0(0xD3u);
                        v68 = sub_66A18();
                        v69 = sub_56B04(4);
                        if (v67)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v68, 211, v69, "AVE_SEI_WriteContentColorVolume", 371, "(ret) == 0", a1, v26);
                          v68 = sub_66A18();
                          v69 = sub_56B04(4);
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
                        v72 = sub_635B0(v22, *(v70 - 1), 32);
                        if (v72)
                        {
                          break;
                        }

                        v73 = sub_635B0(v22, *v70, 32);
                        if (v73)
                        {
                          v26 = v73;
                          if (sub_56A8C(0xD3u, 4))
                          {
                            v81 = sub_56AD0(0xD3u);
                            v82 = sub_66A18();
                            v83 = sub_56B04(4);
                            if (v81)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v82, 211, v83, "AVE_SEI_WriteContentColorVolume", 381, "(ret) == 0", a1, v26);
                              v82 = sub_66A18();
                              v83 = sub_56B04(4);
                            }

                            syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v82, 211, v83, "AVE_SEI_WriteContentColorVolume", 381, "(ret) == 0", a1, v26);
                          }

                          goto LABEL_62;
                        }

                        v70 += 2;
                        if (!--v71)
                        {
                          v74 = sub_635C4(v22, 0, 32);
                          if (v74)
                          {
                            v26 = v74;
                            if (sub_56A8C(0xD3u, 4))
                            {
                              v75 = sub_56AD0(0xD3u);
                              v76 = sub_66A18();
                              v77 = sub_56B04(4);
                              if (v75)
                              {
                                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v76, 211, v77, "AVE_SEI_WriteContentColorVolume", 388, "(ret) == 0", a1, v26);
                                v76 = sub_66A18();
                                v77 = sub_56B04(4);
                              }

                              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v76, 211, v77, "AVE_SEI_WriteContentColorVolume", 388, "(ret) == 0", a1, v26);
                            }
                          }

                          else
                          {
                            v84 = sub_635C4(v22, 1000000, 32);
                            if (v84)
                            {
                              v26 = v84;
                              if (sub_56A8C(0xD3u, 4))
                              {
                                v85 = sub_56AD0(0xD3u);
                                v86 = sub_66A18();
                                v87 = sub_56B04(4);
                                if (v85)
                                {
                                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v86, 211, v87, "AVE_SEI_WriteContentColorVolume", 393, "(ret) == 0", a1, v26);
                                  v86 = sub_66A18();
                                  v87 = sub_56B04(4);
                                }

                                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v86, 211, v87, "AVE_SEI_WriteContentColorVolume", 393, "(ret) == 0", a1, v26);
                              }
                            }

                            else
                            {
                              v88 = sub_635C4(v22, 100000, 32);
                              if (v88)
                              {
                                v26 = v88;
                                if (sub_56A8C(0xD3u, 4))
                                {
                                  v89 = sub_56AD0(0xD3u);
                                  v90 = sub_66A18();
                                  v91 = sub_56B04(4);
                                  if (v89)
                                  {
                                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v90, 211, v91, "AVE_SEI_WriteContentColorVolume", 398, "(ret) == 0", a1, v26);
                                    v90 = sub_66A18();
                                    v91 = sub_56B04(4);
                                  }

                                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v90, 211, v91, "AVE_SEI_WriteContentColorVolume", 398, "(ret) == 0", a1, v26);
                                }
                              }

                              else if (v22[2] && (v92 = sub_6376C(v22), v92))
                              {
                                v26 = v92;
                                if (sub_56A8C(0xD3u, 4))
                                {
                                  v93 = sub_56AD0(0xD3u);
                                  v94 = sub_66A18();
                                  v95 = sub_56B04(4);
                                  if (v93)
                                  {
                                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v94, 211, v95, "AVE_SEI_WriteContentColorVolume", 406, "(ret) == 0", a1, v26);
                                    v94 = sub_66A18();
                                    v95 = sub_56B04(4);
                                  }

                                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v94, 211, v95, "AVE_SEI_WriteContentColorVolume", 406, "(ret) == 0", a1, v26);
                                }
                              }

                              else
                              {
                                if (sub_56A8C(0xD3u, 8))
                                {
                                  v96 = sub_56AD0(0xD3u);
                                  v97 = sub_66A18();
                                  v98 = sub_56B04(8);
                                  v99 = v22[3];
                                  v100 = (v22[2] + 8 * v99);
                                  if (v96)
                                  {
                                    printf("%lld %d AVE %s: %s:%d New bits %d (%d bytes)\n", v97, 211, v98, "AVE_SEI_WriteContentColorVolume", 410, v22[2] + 8 * v99, v99);
                                    v101 = sub_66A18();
                                    v102 = sub_56B04(8);
                                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v101, 211, v102, "AVE_SEI_WriteContentColorVolume", 410, v22[2] + 8 * v22[3], v22[3]);
                                  }

                                  else
                                  {
                                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v97, 211, v98, "AVE_SEI_WriteContentColorVolume", 410, v22[2] + 8 * v99, v99);
                                  }
                                }

                                v103 = sub_C2AC(v22, v24, "AVE_SEI_WriteContentColorVolume");
                                if (v103)
                                {
                                  v26 = v103;
                                  if (sub_56A8C(0xD3u, 4))
                                  {
                                    v104 = sub_56AD0(0xD3u);
                                    v105 = sub_66A18();
                                    v106 = sub_56B04(4);
                                    if (v104)
                                    {
                                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v105, 211, v106, "AVE_SEI_WriteContentColorVolume", 413, "(ret) == 0", a1, v26);
                                      v105 = sub_66A18();
                                      v106 = sub_56B04(4);
                                    }

                                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v105, 211, v106, "AVE_SEI_WriteContentColorVolume", 413, "(ret) == 0", a1, v26);
                                  }
                                }

                                else
                                {
                                  *a4 = v24[3];
                                  if (sub_56A8C(0xD3u, 7))
                                  {
                                    v107 = sub_56AD0(0xD3u);
                                    v108 = sub_66A18();
                                    v109 = sub_56B04(7);
                                    v110 = *a4;
                                    if (v107)
                                    {
                                      printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v108, 211, v109, "AVE_SEI_WriteContentColorVolume", 416, v110);
                                      v111 = sub_66A18();
                                      v112 = sub_56B04(7);
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
                      if (sub_56A8C(0xD3u, 4))
                      {
                        v78 = sub_56AD0(0xD3u);
                        v79 = sub_66A18();
                        v80 = sub_56B04(4);
                        if (v78)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v79, 211, v80, "AVE_SEI_WriteContentColorVolume", 378, "(ret) == 0", a1, v26);
                          v79 = sub_66A18();
                          v80 = sub_56B04(4);
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
      if (sub_56A8C(0xD3u, 4))
      {
        v39 = sub_56AD0(0xD3u);
        v40 = sub_66A18();
        v41 = sub_56B04(4);
        if (v39)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v40, 211, v41, "AVE_SEI_WriteContentColorVolume", 348, "pcSyntaxWriter_NALU != __null", a1);
          v40 = sub_66A18();
          v41 = sub_56B04(4);
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
    if (sub_56A8C(0xD3u, 4))
    {
      v30 = sub_56AD0(0xD3u);
      v31 = sub_66A18();
      v32 = sub_56B04(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v31, 211, v32, "AVE_SEI_WriteContentColorVolume", 342, "pcSyntaxWriter != __null", a1);
        v31 = sub_66A18();
        v32 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v31, 211, v32, "AVE_SEI_WriteContentColorVolume", 342, "pcSyntaxWriter != __null", a1);
      v10 = 4;
    }

    v26 = 4294966293;
  }

LABEL_43:
  if (sub_56A8C(0xD3u, v10))
  {
    v33 = sub_56AD0(0xD3u);
    v34 = sub_66A18();
    v35 = sub_56B04(v10);
    if (v33)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v34, 211, v35, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4, v26);
      v36 = sub_66A18();
      v37 = sub_56B04(v10);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v36, 211, v37, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4, v26);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v34, 211, v35, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4, v26);
    }
  }

  return v26;
}

uint64_t sub_E024(uint64_t a1, double a2)
{
  v3 = sub_1BFB0(a2);
  *a1 = 0;
  *(a1 + 1) = bswap64(v3);
  return 9;
}

uint64_t sub_E058(uint64_t a1, double a2)
{
  v3 = sub_1BFB0(a2);
  *a1 = 4;
  *(a1 + 1) = bswap64(v3);
  return 9;
}

uint64_t sub_E090(uint64_t a1, unsigned int a2)
{
  *a1 = 1;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t sub_E0A8(uint64_t a1, unsigned int a2)
{
  *a1 = 3;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t sub_E0C0(uint64_t a1, unsigned int a2)
{
  *a1 = 2;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t sub_E0D8(uint64_t a1, unsigned int a2)
{
  *a1 = 13;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t sub_E0F0(uint64_t a1, unsigned int a2, unint64_t a3)
{
  *a1 = 9;
  *(a1 + 1) = bswap32(a2);
  *(a1 + 5) = bswap64(a3);
  return 13;
}

uint64_t sub_E110(uint64_t a1, char a2, char a3, char a4, double a5, double a6, double a7, double a8, double a9)
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
  *(a1 + 7) = bswap64(sub_1BFB0(a9));
  return 15;
}

uint64_t sub_E1C4(uint64_t a1, unint64_t a2)
{
  *a1 = 11;
  *(a1 + 1) = bswap64(a2);
  return 9;
}

uint64_t sub_E1DC(uint64_t a1, unsigned int a2, char a3, char a4)
{
  *a1 = 12;
  *(a1 + 1) = __rev16(a2);
  *(a1 + 3) = a3;
  *(a1 + 4) = a4;
  return 5;
}

uint64_t sub_E1FC(const void *a1, int a2, unsigned __int8 *a3, int a4, uint64_t a5, int a6, int a7, int *a8)
{
  v92 = xmmword_9BA60;
  v91 = 1635018093;
  if (sub_56A8C(0xD3u, 7))
  {
    v10 = sub_56AD0(0xD3u);
    v11 = sub_66A18();
    v12 = sub_56B04(7);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d %lld %d %d %p\n", v11, 211, v12, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8);
      v13 = sub_66A18();
      v14 = sub_56B04(7);
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
    if (sub_56A8C(0xD3u, 4))
    {
      v30 = sub_56AD0(0xD3u);
      v31 = sub_66A18();
      v32 = sub_56B04(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | Invalid arguments %p %p %p\n", v31, 211, v32, "AVE_SEI_WriteSEIISPMetadata", 844, "pBuf != __null && pSEIData != __null && pSEISize != __null", a1, a3, a8);
        v33 = sub_66A18();
        v34 = sub_56B04(4);
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
        sub_633D0(v18, v17, v15, a7);
        v20 = operator new(0x1030uLL, &std::nothrow);
        v21 = v20;
        if (v20)
        {
          sub_633D0(v20, a1, a2, 0);
          v22 = sub_B150(v21, a6, 5, "AVE_SEI_WriteSEIISPMetadata");
          if (v22)
          {
            v23 = v22;
            if (sub_56A8C(0xD3u, 4))
            {
              v24 = sub_56AD0(0xD3u);
              v25 = sub_66A18();
              v26 = sub_56B04(4);
              if (v24)
              {
                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v25, 211, v26, "AVE_SEI_WriteSEIISPMetadata", 869, "(ret) == 0", a1, v23);
                v27 = sub_66A18();
                v28 = sub_56B04(4);
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
            v23 = sub_63684(v19, &v92, 16);
            if (v23)
            {
              if (sub_56A8C(0xD3u, 4))
              {
                v55 = sub_56AD0(0xD3u);
                v56 = sub_66A18();
                v57 = sub_56B04(4);
                if (v55)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v56, 211, v57, "AVE_SEI_WriteSEIISPMetadata", 875, "(ret) == 0", a1, v23);
                  v58 = sub_66A18();
                  v59 = sub_56B04(4);
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
              v23 = sub_63684(v19, &v91, 4);
              if (v23)
              {
                if (sub_56A8C(0xD3u, 4))
                {
                  v64 = sub_56AD0(0xD3u);
                  v65 = sub_66A18();
                  v66 = sub_56B04(4);
                  if (v64)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v65, 211, v66, "AVE_SEI_WriteSEIISPMetadata", 879, "(ret) == 0", a1, v23);
                    v67 = sub_66A18();
                    v68 = sub_56B04(4);
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
                v23 = sub_63684(v19, a3, a4);
                if (v23)
                {
                  if (sub_56A8C(0xD3u, 4))
                  {
                    v69 = sub_56AD0(0xD3u);
                    v70 = sub_66A18();
                    v71 = sub_56B04(4);
                    if (v69)
                    {
                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v70, 211, v71, "AVE_SEI_WriteSEIISPMetadata", 883, "(ret) == 0", a1, v23);
                      v72 = sub_66A18();
                      v73 = sub_56B04(4);
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
                  v23 = sub_C2AC(v19, v21, "AVE_SEI_WriteSEIISPMetadata");
                  if (v23)
                  {
                    if (sub_56A8C(0xD3u, 4))
                    {
                      v74 = sub_56AD0(0xD3u);
                      v75 = sub_66A18();
                      v76 = sub_56B04(4);
                      if (v74)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v75, 211, v76, "AVE_SEI_WriteSEIISPMetadata", 886, "(ret) == 0", a1, v23);
                        v77 = sub_66A18();
                        v78 = sub_56B04(4);
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
                    if (sub_56A8C(0xD3u, 7))
                    {
                      v79 = sub_56AD0(0xD3u);
                      v80 = sub_66A18();
                      v81 = sub_56B04(7);
                      v82 = *a8;
                      if (v79)
                      {
                        printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v80, 211, v81, "AVE_SEI_WriteSEIISPMetadata", 889, v82);
                        v83 = sub_66A18();
                        v84 = sub_56B04(7);
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
          if (sub_56A8C(0xD3u, 4))
          {
            v50 = sub_56AD0(0xD3u);
            v51 = sub_66A18();
            v52 = sub_56B04(4);
            if (v50)
            {
              printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v51, 211, v52, "AVE_SEI_WriteSEIISPMetadata", 865, "pcSyntaxWriter_NALU != __null", a1);
              v53 = sub_66A18();
              v54 = sub_56B04(4);
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

      if (sub_56A8C(0xD3u, 4))
      {
        v45 = sub_56AD0(0xD3u);
        v46 = sub_66A18();
        v47 = sub_56B04(4);
        if (v45)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v46, 211, v47, "AVE_SEI_WriteSEIISPMetadata", 859, "pcSyntaxWriter != __null", a1);
          v48 = sub_66A18();
          v49 = sub_56B04(4);
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
    if (sub_56A8C(0xD3u, 4))
    {
      v40 = sub_56AD0(0xD3u);
      v41 = sub_66A18();
      v42 = sub_56B04(4);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to malloc SEI EPB buffer %p\n", v41, 211, v42, "AVE_SEI_WriteSEIISPMetadata", 855, "pEPB_SEIData != __null", a1);
        v43 = sub_66A18();
        v44 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to malloc SEI EPB buffer %p", v43, 211, v44, "AVE_SEI_WriteSEIISPMetadata", 855, "pEPB_SEIData != __null", a1);
        goto LABEL_41;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to malloc SEI EPB buffer %p", v41, 211, v42, "AVE_SEI_WriteSEIISPMetadata", 855, "pEPB_SEIData != __null", a1);
    }

    goto LABEL_42;
  }

  v29 = 4;
  if (sub_56A8C(0xD3u, 4))
  {
    v35 = sub_56AD0(0xD3u);
    v36 = sub_66A18();
    v37 = sub_56B04(4);
    if (v35)
    {
      printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v36, 211, v37, "AVE_SEI_WriteSEIISPMetadata", 848, "encType == AVE_EncType_HEVC || encType == AVE_EncType_AVC", a6, a1);
      v38 = sub_66A18();
      v39 = sub_56B04(4);
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
  if (sub_56A8C(0xD3u, v29))
  {
    v60 = sub_56AD0(0xD3u);
    v61 = sub_66A18();
    v62 = sub_56B04(v29);
    if (v60)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %lld %d %d %p %d\n", v61, 211, v62, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8, v23);
      v61 = sub_66A18();
      v62 = sub_56B04(v29);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %lld %d %d %p %d", v61, 211, v62, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8, v23);
  }

  return v23;
}

uint64_t sub_F104(const void *a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, int *a7)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v12 = sub_56AD0(0xD3u);
    v13 = sub_66A18();
    v14 = sub_56B04(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %d %p\n", v13, 211, v14, "AVE_SEI_WriteLuxLevel", a1, a2, a3, a4, a5, a6, a7);
      v15 = sub_66A18();
      v67 = sub_56B04(7);
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
    if (sub_56A8C(0xD3u, 4))
    {
      v26 = sub_56AD0(0xD3u);
      v27 = sub_66A18();
      v28 = sub_56B04(4);
      if (!v26)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v27, 211);
        goto LABEL_25;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v27, 211, v28, "AVE_SEI_WriteLuxLevel", 947, "pBuf != __null && pSEISize != __null", a1, a7);
      v29 = sub_66A18();
      v25 = 4;
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v29, 211);
    }

LABEL_26:
    v21 = 4294966295;
    goto LABEL_27;
  }

  if ((a5 - 1) >= 2)
  {
    v25 = 4;
    if (sub_56A8C(0xD3u, 4))
    {
      v30 = sub_56AD0(0xD3u);
      v31 = sub_66A18();
      v32 = sub_56B04(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v31, 211, v32, "AVE_SEI_WriteLuxLevel", 951, "encType == AVE_EncType_HEVC || encType == AVE_EncType_AVC", a5, a1);
        v33 = sub_66A18();
        v25 = 4;
        sub_56B04(4);
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
    sub_6338C(v16);
    v18 = operator new(0x1030uLL, &std::nothrow);
    v19 = v18;
    if (!v18)
    {
      if (sub_56A8C(0xD3u, 4))
      {
        v45 = a6;
        v46 = sub_56AD0(0xD3u);
        v47 = sub_66A18();
        v48 = sub_56B04(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v47, 211, v48, "AVE_SEI_WriteLuxLevel", 961, "pcSyntaxWriter_NALU != __null", a1);
          v49 = sub_66A18();
          sub_56B04(4);
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

    sub_633D0(v18, a1, a2, 0);
    v20 = sub_B150(v19, a5, 4, "AVE_SEI_WriteLuxLevel");
    if (v20)
    {
      v21 = v20;
      if (sub_56A8C(0xD3u, 4))
      {
        v22 = sub_56AD0(0xD3u);
        v72 = sub_66A18();
        v23 = sub_56B04(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v72, 211, v23, "AVE_SEI_WriteLuxLevel", 965, "(ret) == 0", a1, v21);
          v24 = sub_66A18();
          v70 = a1;
          v71 = v21;
          v69 = 965;
          v68 = sub_56B04(4);
LABEL_50:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v24, 211, v68, "AVE_SEI_WriteLuxLevel", v69, "(ret) == 0", v70, v71);
          goto LABEL_56;
        }

        goto LABEL_55;
      }
    }

    else
    {
      sub_635C4(v17, 181, 8);
      sub_635C4(v17, 48879, 16);
      sub_635C4(v17, 21930, 16);
      sub_635C4(v17, a4, 32);
      if (sub_56A8C(0xD3u, 8))
      {
        v50 = a6;
        v51 = sub_56AD0(0xD3u);
        v52 = sub_66A18();
        v53 = sub_56B04(8);
        v54 = v17[3];
        if (v51)
        {
          printf("%lld %d AVE %s: %s:%d payloadSize EPB %d\n", v52, 211, v53, "AVE_SEI_WriteLuxLevel", 980, v54);
          v55 = sub_66A18();
          v56 = sub_56B04(8);
          syslog(3, "%lld %d AVE %s: %s:%d payloadSize EPB %d", v55, 211, v56, "AVE_SEI_WriteLuxLevel", 980, v17[3]);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d payloadSize EPB %d", v52, 211, v53, "AVE_SEI_WriteLuxLevel", 980, v54);
        }

        a6 = v50;
      }

      v57 = sub_C2AC(v17, v19, "AVE_SEI_WriteLuxLevel");
      if (!v57)
      {
        *a7 = v19[3];
        if (sub_56A8C(0xD3u, 7))
        {
          v60 = a6;
          v61 = sub_56AD0(0xD3u);
          v62 = sub_66A18();
          v63 = sub_56B04(7);
          v64 = *a7;
          if (v61)
          {
            printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v62, 211, v63, "AVE_SEI_WriteLuxLevel", 987, v64);
            v65 = sub_66A18();
            v66 = sub_56B04(7);
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
      if (sub_56A8C(0xD3u, 4))
      {
        v58 = sub_56AD0(0xD3u);
        v72 = sub_66A18();
        v59 = sub_56B04(4);
        if (v58)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v72, 211, v59, "AVE_SEI_WriteLuxLevel", 984, "(ret) == 0", a1, v21);
          v24 = sub_66A18();
          v70 = a1;
          v71 = v21;
          v69 = 984;
          v68 = sub_56B04(4);
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
  if (sub_56A8C(0xD3u, 4))
  {
    v34 = sub_56AD0(0xD3u);
    v35 = sub_66A18();
    v36 = sub_56B04(4);
    if (v34)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v35, 211, v36, "AVE_SEI_WriteLuxLevel", 955, "pcSyntaxWriter != __null", a1);
      v37 = sub_66A18();
      v25 = 4;
      v38 = sub_56B04(4);
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
  if (sub_56A8C(0xD3u, v25))
  {
    v39 = sub_56AD0(0xD3u);
    v40 = sub_66A18();
    v41 = sub_56B04(v25);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d %d %d %p %d\n", v40, 211, v41, "AVE_SEI_WriteLuxLevel", a1, a2, a3, a4, a5, a6, a7, v21);
      v42 = sub_66A18();
      v43 = sub_56B04(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %d %p %d", v42, 211, v43, "AVE_SEI_WriteLuxLevel", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %d %p %d", v40, 211, v41, "AVE_SEI_WriteLuxLevel", a1);
    }
  }

  return v21;
}

uint64_t sub_FC10(const void *a1, int a2, uint64_t a3, int a4, int a5, unsigned int *a6)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v8 = sub_56AD0(0xD3u);
    v9 = sub_66A18();
    v10 = sub_56B04(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %p\n", v9, 211, v10, "AVE_SEI_WriteAccessUnitDelimiter", a1, a2, a3, a4, a5, a6);
      v11 = sub_66A18();
      v94 = sub_56B04(7);
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
      sub_6338C(v12);
      v14 = operator new(0x1030uLL, &std::nothrow);
      v15 = v14;
      if (v14)
      {
        sub_633D0(v14, a1, a2, 0);
        v16 = sub_635EC(v15);
        if (!v16)
        {
          if (sub_56A8C(0xD3u, 8))
          {
            v37 = sub_56AD0(0xD3u);
            v38 = sub_66A18();
            v39 = sub_56B04(8);
            v40 = *(v15 + 12);
            v41 = *(v15 + 32) + v40;
            if (v37)
            {
              printf("%lld %d AVE %s: %s:%d nal_unit_type %p (%d)\n", v38, 211, v39, "AVE_SEI_WriteAccessUnitDelimiter", 1050, (*(v15 + 32) + v40), v40);
              v42 = sub_66A18();
              sub_56B04(8);
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
            v44 = sub_635C4(v15, 17921, 16);
            if (v44)
            {
              v17 = v44;
              if (!sub_56A8C(0xD3u, 4))
              {
                goto LABEL_48;
              }

              v18 = a5;
              v45 = sub_56AD0(0xD3u);
              v20 = sub_66A18();
              v46 = sub_56B04(4);
              if (v45)
              {
                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v46, "AVE_SEI_WriteAccessUnitDelimiter", 1055, "(ret) == 0", a1, v17);
                v22 = sub_66A18();
                sub_56B04(4);
                goto LABEL_13;
              }

LABEL_31:
              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v20, 211);
              goto LABEL_33;
            }

            if (sub_56A8C(0xD3u, 8))
            {
              v51 = sub_56AD0(0xD3u);
              v52 = sub_66A18();
              v53 = sub_56B04(8);
              v54 = *(v15 + 32) + *(v15 + 12);
              v55 = *(v54 - 2);
              v56 = *(v54 - 1);
              if (v51)
              {
                printf("%lld %d AVE %s: %s:%d NUT %0x %0x\n", v52, 211, v53, "AVE_SEI_WriteAccessUnitDelimiter", 1059, v55, v56);
                v57 = sub_66A18();
                sub_56B04(8);
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
              v65 = sub_635C4(v13, v64, 3);
              if (v65)
              {
                v17 = v65;
                if (!sub_56A8C(0xD3u, 4))
                {
                  goto LABEL_48;
                }

                v18 = a5;
                v66 = sub_56AD0(0xD3u);
                v20 = sub_66A18();
                v67 = sub_56B04(4);
                if (v66)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v67, "AVE_SEI_WriteAccessUnitDelimiter", 1089, "(ret) == 0", a1, v17);
                  v22 = sub_66A18();
                  sub_56B04(4);
                  goto LABEL_13;
                }
              }

              else if (v13[2] && (v72 = sub_6376C(v13), v72))
              {
                v17 = v72;
                if (!sub_56A8C(0xD3u, 4))
                {
                  goto LABEL_48;
                }

                v18 = a5;
                v73 = sub_56AD0(0xD3u);
                v20 = sub_66A18();
                v74 = sub_56B04(4);
                if (v73)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v74, "AVE_SEI_WriteAccessUnitDelimiter", 1095, "(ret) == 0", a1, v17);
                  v22 = sub_66A18();
                  sub_56B04(4);
                  goto LABEL_13;
                }
              }

              else
              {
                if (sub_56A8C(0xD3u, 8))
                {
                  v75 = sub_56AD0(0xD3u);
                  v76 = sub_66A18();
                  v77 = sub_56B04(8);
                  if (v75)
                  {
                    printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v76, 211, v77, "AVE_SEI_WriteAccessUnitDelimiter", 1099, v13[2] + 8 * v13[3], (v13[2] + 8 * v13[3]) >> 3);
                    v78 = sub_66A18();
                    sub_56B04(8);
                    v98 = (v13[2] + 8 * v13[3]);
                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v78);
                  }

                  else
                  {
                    v99 = (v13[2] + 8 * v13[3]);
                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v76);
                  }
                }

                v79 = sub_636E8(v15, v13);
                if (!v79)
                {
                  v17 = sub_6376C(v15);
                  if (sub_56A8C(0xD3u, 8))
                  {
                    v82 = a5;
                    v83 = sub_56AD0(0xD3u);
                    v84 = sub_66A18();
                    v85 = sub_56B04(8);
                    v86 = *(v15 + 12);
                    v87 = *(v15 + 32) + v86;
                    if (v83)
                    {
                      printf("%lld %d AVE %s: %s:%d rbsp_trailing_bits %p (%d)\n", v84, 211, v85, "AVE_SEI_WriteAccessUnitDelimiter", 1109, (*(v15 + 32) + v86), v86);
                      v88 = sub_66A18();
                      sub_56B04(8);
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
                  if (!sub_56A8C(0xD3u, 7))
                  {
                    goto LABEL_48;
                  }

                  v18 = a5;
                  v90 = sub_56AD0(0xD3u);
                  v91 = sub_66A18();
                  v92 = sub_56B04(7);
                  if (v90)
                  {
                    printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v91, 211, v92, "AVE_SEI_WriteAccessUnitDelimiter", 1112, *a6);
                    sub_66A18();
                    sub_56B04(7);
                    v93 = *a6;
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d");
                  goto LABEL_33;
                }

                v17 = v79;
                if (!sub_56A8C(0xD3u, 4))
                {
                  goto LABEL_48;
                }

                v18 = a5;
                v80 = sub_56AD0(0xD3u);
                v20 = sub_66A18();
                v81 = sub_56B04(4);
                if (v80)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v81, "AVE_SEI_WriteAccessUnitDelimiter", 1103, "(ret) == 0", a1, v17);
                  v22 = sub_66A18();
                  sub_56B04(4);
                  goto LABEL_13;
                }
              }

              goto LABEL_31;
            }

            if (sub_56A8C(0xD3u, 4))
            {
              v68 = sub_56AD0(0xD3u);
              v69 = sub_66A18();
              v70 = sub_56B04(4);
              if (v68)
              {
                printf("%lld %d AVE %s: %s:%d %s | ERROR: FrameType NOT RECOGNIZED = %d. FAIL %p\n", v69, 211, v70, "AVE_SEI_WriteAccessUnitDelimiter", 1084, "false", a5, a1);
                v71 = sub_66A18();
                sub_56B04(4);
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

          else if (sub_56A8C(0xD3u, 4))
          {
            v47 = sub_56AD0(0xD3u);
            v48 = sub_66A18();
            v49 = sub_56B04(4);
            if (v47)
            {
              printf("%lld %d AVE %s: %s:%d %s | encType %d not recognized. FAIL %p\n", v48, 211, v49, "AVE_SEI_WriteAccessUnitDelimiter", 1064, "false", a4, a1);
              v50 = sub_66A18();
              sub_56B04(4);
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
        if (sub_56A8C(0xD3u, 4))
        {
          v18 = a5;
          v19 = sub_56AD0(0xD3u);
          v20 = sub_66A18();
          v21 = sub_56B04(4);
          if (v19)
          {
            printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v21, "AVE_SEI_WriteAccessUnitDelimiter", 1047, "(ret) == 0", a1, v17);
            v22 = sub_66A18();
            sub_56B04(4);
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
        if (sub_56A8C(0xD3u, 4))
        {
          v18 = a5;
          v34 = sub_56AD0(0xD3u);
          v35 = sub_66A18();
          v36 = sub_56B04(4);
          if (v34)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v35, 211, v36, "AVE_SEI_WriteAccessUnitDelimiter", 1043, "pcSyntaxWriter_NALU != __null", a1);
            v35 = sub_66A18();
            sub_56B04(4);
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
    if (sub_56A8C(0xD3u, 4))
    {
      v29 = sub_56AD0(0xD3u);
      v30 = sub_66A18();
      v31 = sub_56B04(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v30, 211, v31, "AVE_SEI_WriteAccessUnitDelimiter", 1039, "pcSyntaxWriter != __null", a1);
        v32 = sub_66A18();
        v23 = 4;
        v33 = sub_56B04(4);
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
    if (sub_56A8C(0xD3u, 4))
    {
      v24 = sub_56AD0(0xD3u);
      v25 = sub_66A18();
      v26 = sub_56B04(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v25, 211, v26, "AVE_SEI_WriteAccessUnitDelimiter", 1035, "pBuf != __null && pSEISize != __null", a1, a6);
        v27 = sub_66A18();
        v23 = 4;
        v28 = sub_56B04(4);
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
  if (sub_56A8C(0xD3u, v23))
  {
    v59 = sub_56AD0(0xD3u);
    v60 = sub_66A18();
    v61 = sub_56B04(v23);
    if (v59)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d\n", v60, 211, v61, "AVE_SEI_WriteAccessUnitDelimiter", a1, a2, a3, a4, a5, a6, v17);
      v62 = sub_66A18();
      v95 = sub_56B04(v23);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d", v62, 211, v95, "AVE_SEI_WriteAccessUnitDelimiter");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d", v60, 211, v61, "AVE_SEI_WriteAccessUnitDelimiter");
    }
  }

  return v17;
}

uint64_t sub_10C70(const void *a1, int a2, int a3, uint64_t a4, int a5, int *a6)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v10 = sub_56AD0(0xD3u);
    v11 = sub_66A18();
    v12 = sub_56B04(7);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %lld %d %p\n", v11, 211, v12, "AVE_SEI_WriteActiveParameterSets", a1, a2, a3, a4, a5, a6);
      v13 = sub_66A18();
      v72 = sub_56B04(7);
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
    if (sub_56A8C(0xD3u, 4))
    {
      v23 = sub_56AD0(0xD3u);
      v24 = sub_66A18();
      v25 = sub_56B04(4);
      if (!v23)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v24, 211);
        goto LABEL_25;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v24, 211, v25, "AVE_SEI_WriteActiveParameterSets", 1166, "pBuf != __null && pSEISize != __null", a1, a6);
      v26 = sub_66A18();
      v22 = 4;
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v26, 211);
    }

LABEL_26:
    v36 = 4294966295;
    goto LABEL_27;
  }

  if (a5 != 2)
  {
    v22 = 4;
    if (sub_56A8C(0xD3u, 4))
    {
      v27 = sub_56AD0(0xD3u);
      v28 = sub_66A18();
      v29 = sub_56B04(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v28, 211, v29, "AVE_SEI_WriteActiveParameterSets", 1169, "encType == AVE_EncType_HEVC", a5, a1);
        v30 = sub_66A18();
        v22 = 4;
        sub_56B04(4);
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
    sub_6338C(v14);
    v16 = operator new(0x1030uLL, &std::nothrow);
    v17 = v16;
    if (!v16)
    {
      if (sub_56A8C(0xD3u, 4))
      {
        v43 = sub_56AD0(0xD3u);
        v44 = sub_66A18();
        v45 = sub_56B04(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v44, 211, v45, "AVE_SEI_WriteActiveParameterSets", 1177, "pcSyntaxWriter_NALU != __null", a1);
          v44 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v44);
      }

      v83 = 4294966293;
      goto LABEL_76;
    }

    sub_633D0(v16, a1, a2, 0);
    v83 = sub_B150(v17, 2, 129, "AVE_SEI_WriteActiveParameterSets");
    if (v83)
    {
      if (sub_56A8C(0xD3u, 4))
      {
        v18 = sub_56AD0(0xD3u);
        v19 = sub_66A18();
        v20 = sub_56B04(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v20, "AVE_SEI_WriteActiveParameterSets", 1181, "(ret) == 0", a1, v83);
          v21 = sub_66A18();
          v77 = a1;
          v79 = v83;
          v74 = 1181;
          v73 = sub_56B04(4);
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

    v83 = sub_635C4(v15, 0, 4);
    if (v83)
    {
      if (!sub_56A8C(0xD3u, 4))
      {
        goto LABEL_76;
      }

      v46 = sub_56AD0(0xD3u);
      v19 = sub_66A18();
      v47 = sub_56B04(4);
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
      v83 = sub_63420(v15, 1);
      if (v83)
      {
        if (!sub_56A8C(0xD3u, 4))
        {
          goto LABEL_76;
        }

        v52 = sub_56AD0(0xD3u);
        v19 = sub_66A18();
        v47 = sub_56B04(4);
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
        v83 = sub_63420(v15, 1);
        if (v83)
        {
          if (!sub_56A8C(0xD3u, 4))
          {
            goto LABEL_76;
          }

          v53 = sub_56AD0(0xD3u);
          v19 = sub_66A18();
          v47 = sub_56B04(4);
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
          v83 = sub_635C8(v15, 0);
          if (v83)
          {
            if (!sub_56A8C(0xD3u, 4))
            {
              goto LABEL_76;
            }

            v54 = sub_56AD0(0xD3u);
            v19 = sub_66A18();
            v47 = sub_56B04(4);
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
            v83 = sub_635C8(v15, a3);
            if (!v83)
            {
              if (v15[2])
              {
                v83 = sub_6376C(v15);
                if (v83)
                {
                  if (!sub_56A8C(0xD3u, 4))
                  {
                    goto LABEL_76;
                  }

                  v56 = sub_56AD0(0xD3u);
                  v19 = sub_66A18();
                  v57 = sub_56B04(4);
                  if (v56)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v57, "AVE_SEI_WriteActiveParameterSets", 1199, "(ret) == 0", a1, v83);
                    v58 = sub_66A18();
                    sub_56B04(4);
                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v58, 211);
                    goto LABEL_76;
                  }

                  goto LABEL_75;
                }
              }

              if (sub_56A8C(0xD3u, 8))
              {
                v59 = sub_56AD0(0xD3u);
                v60 = sub_66A18();
                v61 = sub_56B04(8);
                if (v59)
                {
                  printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v60, 211, v61, "AVE_SEI_WriteActiveParameterSets", 1203, v15[2] + 8 * v15[3], (v15[2] + 8 * v15[3]) >> 3);
                  v62 = sub_66A18();
                  sub_56B04(8);
                  v75 = (v15[2] + 8 * v15[3]);
                  syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v62);
                }

                else
                {
                  v76 = (v15[2] + 8 * v15[3]);
                  syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v60);
                }
              }

              v83 = sub_C2AC(v15, v17, "AVE_SEI_WriteActiveParameterSets");
              if (!v83)
              {
                *a6 = v17[3];
                if (sub_56A8C(0xD3u, 7))
                {
                  v66 = sub_56AD0(0xD3u);
                  v67 = sub_66A18();
                  v68 = sub_56B04(7);
                  v69 = *a6;
                  if (v66)
                  {
                    printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v67, 211, v68, "AVE_SEI_WriteActiveParameterSets", 1209, v69);
                    v70 = sub_66A18();
                    v71 = sub_56B04(7);
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

              if (sub_56A8C(0xD3u, 4))
              {
                v63 = sub_56AD0(0xD3u);
                v19 = sub_66A18();
                v64 = sub_56B04(4);
                if (v63)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v64, "AVE_SEI_WriteActiveParameterSets", 1206, "(ret) == 0", a1, v83);
                  v65 = sub_66A18();
                  sub_56B04(4);
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

            if (!sub_56A8C(0xD3u, 4))
            {
              goto LABEL_76;
            }

            v55 = sub_56AD0(0xD3u);
            v19 = sub_66A18();
            v47 = sub_56B04(4);
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
    v21 = sub_66A18();
    v77 = v49;
    v79 = v48;
    v74 = v51;
    a3 = v50;
    v17 = v81;
    a5 = v82;
    v73 = sub_56B04(4);
    goto LABEL_65;
  }

  v22 = 4;
  if (sub_56A8C(0xD3u, 4))
  {
    v31 = sub_56AD0(0xD3u);
    v32 = sub_66A18();
    v33 = sub_56B04(4);
    if (v31)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v32, 211, v33, "AVE_SEI_WriteActiveParameterSets", 1173, "pcSyntaxWriter != __null", a1);
      v34 = sub_66A18();
      v22 = 4;
      v35 = sub_56B04(4);
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
  if (sub_56A8C(0xD3u, v22))
  {
    v37 = sub_56AD0(0xD3u);
    v38 = sub_66A18();
    v39 = sub_56B04(v22);
    if (v37)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %lld %d %p %d\n", v38, 211, v39, "AVE_SEI_WriteActiveParameterSets", a1, a2, a3, a4, a5, a6, v36);
      v40 = sub_66A18();
      v41 = sub_56B04(v22);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %lld %d %p %d", v40, 211, v41, "AVE_SEI_WriteActiveParameterSets", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %lld %d %p %d", v38, 211, v39, "AVE_SEI_WriteActiveParameterSets", a1);
    }
  }

  return v36;
}

uint64_t sub_11C04(const void *a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int *a9)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v13 = sub_56AD0(0xD3u);
    v14 = sub_66A18();
    v15 = sub_56B04(7);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %u %d %d %p\n", v14, 211, v15, "AVE_SEI_WritePictureTiming", a1, a2, a3, a4, a5, a6, a7, a8, a9);
      v16 = sub_66A18();
      v91 = sub_56B04(7);
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
    if (sub_56A8C(0xD3u, 4))
    {
      v30 = sub_56AD0(0xD3u);
      v31 = sub_66A18();
      v32 = sub_56B04(4);
      if (!v30)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v31, 211);
        goto LABEL_34;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v31, 211, v32, "AVE_SEI_WritePictureTiming", 1267, "pBuf != __null && pSEISize != __null", a1, a9);
      v33 = sub_66A18();
      v29 = 4;
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v33, 211);
    }

LABEL_35:
    v24 = 4294966295;
    goto LABEL_36;
  }

  if (a4 != 2)
  {
    v29 = 4;
    if (sub_56A8C(0xD3u, 4))
    {
      v34 = sub_56AD0(0xD3u);
      v35 = sub_66A18();
      v36 = sub_56B04(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v35, 211, v36, "AVE_SEI_WritePictureTiming", 1270, "encType == AVE_EncType_HEVC", a4, a1);
        v37 = sub_66A18();
        v29 = 4;
        sub_56B04(4);
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
    sub_6338C(v17);
    v19 = operator new(0x1030uLL, &std::nothrow);
    v20 = v19;
    if (!v19)
    {
      if (sub_56A8C(0xD3u, 4))
      {
        v48 = sub_56AD0(0xD3u);
        v49 = sub_66A18();
        v50 = sub_56B04(4);
        if (v48)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v49, 211, v50, "AVE_SEI_WritePictureTiming", 1279, "pcSyntaxWriter_NALU != __null", a1);
          v51 = sub_66A18();
          sub_56B04(4);
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

    sub_633D0(v19, a1, a2, 0);
    if (dword_C41A0 == dword_C41A4)
    {
      v21 = 0;
    }

    else
    {
      v21 = (dword_C41A0 + ~dword_C41A4);
    }

    if (a5)
    {
      v22 = (a6 - dword_C41A0 + 2);
    }

    else
    {
      v22 = 0;
    }

    if (a7 == 1 || a8 == 21)
    {
      dword_C41A4 = dword_C41A0;
    }

    ++dword_C41A0;
    v23 = sub_B150(v20, 2, 1, "AVE_SEI_WritePictureTiming");
    if (v23)
    {
      v24 = v23;
      if (sub_56A8C(0xD3u, 4))
      {
        v25 = sub_56AD0(0xD3u);
        v26 = sub_66A18();
        v27 = sub_56B04(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v26, 211, v27, "AVE_SEI_WritePictureTiming", 1304, "(ret) == 0", a1, v24);
          v28 = sub_66A18();
          v99 = a1;
          v100 = v24;
          v94 = 1304;
          v92 = sub_56B04(4);
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

    if (sub_56A8C(0xD3u, 8))
    {
      v52 = v21;
      v53 = sub_56AD0(0xD3u);
      v54 = sub_66A18();
      v55 = sub_56B04(8);
      v56 = *(v20 + 12);
      v57 = *(v20 + 32) + v56;
      if (v53)
      {
        printf("%lld %d AVE %s: %s:%d payloadType %p (%d)\n", v54, 211, v55, "AVE_SEI_WritePictureTiming", 1308, (*(v20 + 32) + v56), v56);
        v58 = sub_66A18();
        sub_56B04(8);
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

    v59 = sub_635C4(v18, v21, 24);
    if (v59)
    {
      v24 = v59;
      if (!sub_56A8C(0xD3u, 4))
      {
        goto LABEL_74;
      }

      v60 = sub_56AD0(0xD3u);
      v26 = sub_66A18();
      v61 = sub_56B04(4);
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
      v69 = sub_635C4(v18, v22, 24);
      if (v69)
      {
        v24 = v69;
        if (!sub_56A8C(0xD3u, 4))
        {
          goto LABEL_74;
        }

        v70 = sub_56AD0(0xD3u);
        v26 = sub_66A18();
        v71 = sub_56B04(4);
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

      else if (v18[2] && (v73 = sub_6376C(v18), v73))
      {
        v24 = v73;
        if (!sub_56A8C(0xD3u, 4))
        {
          goto LABEL_74;
        }

        v74 = sub_56AD0(0xD3u);
        v26 = sub_66A18();
        v75 = sub_56B04(4);
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
        if (sub_56A8C(0xD3u, 8))
        {
          v77 = sub_56AD0(0xD3u);
          v78 = sub_66A18();
          v79 = sub_56B04(8);
          if (v77)
          {
            printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v78, 211, v79, "AVE_SEI_WritePictureTiming", 1324, v18[2] + 8 * v18[3], (v18[2] + 8 * v18[3]) >> 3);
            v80 = sub_66A18();
            sub_56B04(8);
            v97 = (v18[2] + 8 * v18[3]);
            syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v80);
          }

          else
          {
            v98 = (v18[2] + 8 * v18[3]);
            syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v78);
          }
        }

        v81 = sub_C2AC(v18, v20, "AVE_SEI_WritePictureTiming");
        if (!v81)
        {
          *a9 = *(v20 + 12);
          if (sub_56A8C(0xD3u, 7))
          {
            v85 = sub_56AD0(0xD3u);
            v86 = sub_66A18();
            v87 = sub_56B04(7);
            v88 = *a9;
            if (v85)
            {
              printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v86, 211, v87, "AVE_SEI_WritePictureTiming", 1330, v88);
              v89 = sub_66A18();
              v90 = sub_56B04(7);
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
        if (!sub_56A8C(0xD3u, 4))
        {
          goto LABEL_74;
        }

        v82 = sub_56AD0(0xD3u);
        v26 = sub_66A18();
        v83 = sub_56B04(4);
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

    v28 = sub_66A18();
    v99 = v64;
    v100 = v63;
    v94 = v68;
    a7 = v67;
    a4 = v66;
    a8 = v65;
    v92 = sub_56B04(4);
    goto LABEL_63;
  }

  v29 = 4;
  if (sub_56A8C(0xD3u, 4))
  {
    v38 = sub_56AD0(0xD3u);
    v39 = sub_66A18();
    v40 = sub_56B04(4);
    if (v38)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v39, 211, v40, "AVE_SEI_WritePictureTiming", 1274, "pcSyntaxWriter != __null", a1);
      v41 = sub_66A18();
      v29 = 4;
      v42 = sub_56B04(4);
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
  if (sub_56A8C(0xD3u, v29))
  {
    v43 = sub_56AD0(0xD3u);
    v44 = sub_66A18();
    v45 = sub_56B04(v29);
    if (v43)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %d %u %d %d %p %d\n", v44, 211, v45, "AVE_SEI_WritePictureTiming", a1, a3, a4, a5, a6, a7, a8, a9, v24);
      v46 = sub_66A18();
      v93 = sub_56B04(v29);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d %u %d %d %p %d", v46, 211, v93, "AVE_SEI_WritePictureTiming", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d %u %d %d %p %d", v44, 211, v45, "AVE_SEI_WritePictureTiming", a1);
    }
  }

  return v24;
}

uint64_t sub_12A5C(void *a1, int a2, uint64_t a3, int a4, const void *a5, int *a6)
{
  if (sub_56A8C(0xD3u, 7))
  {
    v12 = sub_56AD0(0xD3u);
    v13 = sub_66A18();
    v14 = sub_56B04(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %p\n", v13, 211, v14, "AVE_SEI_WriteBufferingPeriod", a1, a2, a3, a4, a5, a6);
      v15 = sub_66A18();
      v99 = sub_56B04(7);
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
    if (sub_56A8C(0xD3u, 4))
    {
      v26 = sub_56AD0(0xD3u);
      v27 = sub_66A18();
      v28 = sub_56B04(4);
      if (v26)
      {
        v29 = a3;
        printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v27, 211, v28, "AVE_SEI_WriteBufferingPeriod", 1383, "pBuf != __null && pSEISize != __null", a1, a6);
        v30 = sub_66A18();
        v25 = 4;
        v105 = a1;
        v106 = a6;
        v101 = 1383;
        v102 = "pBuf != __null && pSEISize != __null";
        v100 = sub_56B04(4);
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
    if (sub_56A8C(0xD3u, 4))
    {
      v32 = sub_56AD0(0xD3u);
      v33 = sub_66A18();
      v34 = sub_56B04(4);
      if (v32)
      {
        v29 = a3;
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v33, 211, v34, "AVE_SEI_WriteBufferingPeriod", 1386, "encType == AVE_EncType_HEVC", a5, a1);
        v30 = sub_66A18();
        v25 = 4;
        v105 = a5;
        v106 = a1;
        v101 = 1386;
        v102 = "encType == AVE_EncType_HEVC";
        v100 = sub_56B04(4);
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
    sub_6338C(v16);
    v18 = operator new(0x1030uLL, &std::nothrow);
    v19 = v18;
    if (!v18)
    {
      if (sub_56A8C(0xD3u, 4))
      {
        v48 = a6;
        v49 = sub_56AD0(0xD3u);
        v50 = sub_66A18();
        v51 = sub_56B04(4);
        if (!v49)
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v50, 211, v51, "AVE_SEI_WriteBufferingPeriod", 1394, "pcSyntaxWriter_NALU != __null", a1);
          v114 = 4294966293;
          a6 = v48;
          goto LABEL_72;
        }

        a6 = v48;
        printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v50, 211, v51, "AVE_SEI_WriteBufferingPeriod", 1394, "pcSyntaxWriter_NALU != __null", a1);
        v52 = sub_66A18();
        v53 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v52, 211, v53, "AVE_SEI_WriteBufferingPeriod", 1394, "pcSyntaxWriter_NALU != __null", a1);
      }

      v114 = 4294966293;
      goto LABEL_72;
    }

    sub_633D0(v18, a1, a2, 0);
    v114 = sub_B150(v19, 2, 0, "AVE_SEI_WriteBufferingPeriod");
    if (v114)
    {
      if (sub_56A8C(0xD3u, 4))
      {
        v20 = a6;
        v21 = sub_56AD0(0xD3u);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v22, 211, v23, "AVE_SEI_WriteBufferingPeriod", 1398, "(ret) == 0", a1, v114);
          v24 = sub_66A18();
          sub_56B04(4);
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

    v114 = sub_635C8(v17, a4);
    if (v114)
    {
      if (!sub_56A8C(0xD3u, 4))
      {
        goto LABEL_72;
      }

      v20 = a6;
      v54 = sub_56AD0(0xD3u);
      v55 = sub_66A18();
      v56 = sub_56B04(4);
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
      v61 = sub_66A18();
      sub_56B04(4);
      a6 = v108;
LABEL_64:
      a2 = v60;
      a4 = v59;
      LODWORD(a5) = v58;
      v19 = v57;
      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v61, 211);
      goto LABEL_72;
    }

    v114 = sub_63420(v17, 0);
    if (v114)
    {
      if (!sub_56A8C(0xD3u, 4))
      {
        goto LABEL_72;
      }

      v20 = a6;
      v62 = sub_56AD0(0xD3u);
      v63 = sub_66A18();
      v64 = sub_56B04(4);
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
      v61 = sub_66A18();
      sub_56B04(4);
      a6 = v109;
      goto LABEL_64;
    }

    v114 = sub_63420(v17, 0);
    if (v114)
    {
      if (!sub_56A8C(0xD3u, 4))
      {
        goto LABEL_72;
      }

      v20 = a6;
      v65 = sub_56AD0(0xD3u);
      v66 = sub_66A18();
      v67 = sub_56B04(4);
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
      v61 = sub_66A18();
      sub_56B04(4);
      a6 = v110;
      goto LABEL_64;
    }

    v114 = sub_635C4(v17, 0, 24);
    if (v114)
    {
      if (!sub_56A8C(0xD3u, 4))
      {
        goto LABEL_72;
      }

      v20 = a6;
      v68 = sub_56AD0(0xD3u);
      v69 = sub_66A18();
      v70 = sub_56B04(4);
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
      v61 = sub_66A18();
      sub_56B04(4);
      a6 = v111;
      goto LABEL_64;
    }

    v114 = sub_635C4(v17, 90000, 24);
    if (v114)
    {
      if (!sub_56A8C(0xD3u, 4))
      {
        goto LABEL_72;
      }

      v20 = a6;
      v71 = sub_56AD0(0xD3u);
      v72 = sub_66A18();
      v73 = sub_56B04(4);
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
      v61 = sub_66A18();
      sub_56B04(4);
      a6 = v112;
      goto LABEL_64;
    }

    v114 = sub_635C4(v17, 0, 24);
    if (v114)
    {
      if (sub_56A8C(0xD3u, 4))
      {
        v107 = v19;
        v74 = a5;
        v75 = a2;
        v76 = a6;
        v77 = sub_56AD0(0xD3u);
        v78 = sub_66A18();
        v79 = sub_56B04(4);
        if (v77)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v78, 211, v79, "AVE_SEI_WriteBufferingPeriod", 1412, "(ret) == 0", a1, v114);
          v80 = sub_66A18();
          sub_56B04(4);
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
    if (v17[2] && (v114 = sub_6376C(v17), v114))
    {
      if (sub_56A8C(0xD3u, 4))
      {
        v83 = sub_56AD0(0xD3u);
        v84 = sub_66A18();
        v85 = sub_56B04(4);
        if (v83)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v84, 211, v85, "AVE_SEI_WriteBufferingPeriod", 1418, "(ret) == 0", a1, v114);
          v86 = sub_66A18();
          sub_56B04(4);
LABEL_92:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v86, 211);
          goto LABEL_99;
        }

        goto LABEL_96;
      }
    }

    else
    {
      if (sub_56A8C(0xD3u, 8))
      {
        v87 = sub_56AD0(0xD3u);
        v88 = sub_66A18();
        v89 = sub_56B04(8);
        if (v87)
        {
          printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v88, 211, v89, "AVE_SEI_WriteBufferingPeriod", 1422, v17[2] + 8 * v17[3], (v17[2] + 8 * v17[3]) >> 3);
          v90 = sub_66A18();
          sub_56B04(8);
          v103 = (v17[2] + 8 * v17[3]);
          syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v90);
        }

        else
        {
          v104 = (v17[2] + 8 * v17[3]);
          syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v88);
        }
      }

      v114 = sub_C2AC(v17, v19, "AVE_SEI_WriteBufferingPeriod");
      if (v114)
      {
        if (sub_56A8C(0xD3u, 4))
        {
          v91 = sub_56AD0(0xD3u);
          v84 = sub_66A18();
          v92 = sub_56B04(4);
          if (v91)
          {
            printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v84, 211, v92, "AVE_SEI_WriteBufferingPeriod", 1425, "(ret) == 0", a1, v114);
            v86 = sub_66A18();
            sub_56B04(4);
            goto LABEL_92;
          }

LABEL_96:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v84, 211);
        }
      }

      else
      {
        *a6 = v19[3];
        if (sub_56A8C(0xD3u, 7))
        {
          v93 = sub_56AD0(0xD3u);
          v94 = sub_66A18();
          v95 = sub_56B04(7);
          v96 = *v82;
          if (v93)
          {
            printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v94, 211, v95, "AVE_SEI_WriteBufferingPeriod", 1428, v96);
            v97 = sub_66A18();
            v98 = sub_56B04(7);
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
  if (sub_56A8C(0xD3u, 4))
  {
    v35 = sub_56AD0(0xD3u);
    v36 = sub_66A18();
    v37 = sub_56B04(4);
    if (v35)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v36, 211, v37, "AVE_SEI_WriteBufferingPeriod", 1390, "pcSyntaxWriter != __null", a1);
      v38 = sub_66A18();
      v25 = 4;
      v39 = sub_56B04(4);
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
  if (sub_56A8C(0xD3u, v25))
  {
    v41 = a6;
    v42 = sub_56AD0(0xD3u);
    v43 = sub_66A18();
    v44 = sub_56B04(v25);
    if (v42)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d\n", v43, 211, v44, "AVE_SEI_WriteBufferingPeriod", a1, a2, a3, a4, a5, v41, v40);
      v45 = sub_66A18();
      v46 = sub_56B04(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d", v45, 211, v46, "AVE_SEI_WriteBufferingPeriod");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d", v43, 211, v44, "AVE_SEI_WriteBufferingPeriod");
    }
  }

  return v40;
}

uint64_t sub_13C24(const void *a1, int a2, int a3, uint64_t a4, __CFDictionary *a5)
{
  if (a1 && a2 <= 8 && a5)
  {
    if (a2 > 3)
    {
      if ((a2 - 4) < 4)
      {
        v10 = 0;
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    switch(a2)
    {
      case 1:
        v15 = &kVTPropertyType_Boolean;
        break;
      case 2:
        v15 = &kVTPropertyType_Number;
        break;
      case 3:
        v15 = &kVTPropertyType_Enumeration;
        break;
      default:
LABEL_17:
        if (sub_56A8C(0x1Eu, 4))
        {
          v17 = sub_56AD0(0x1Eu);
          v18 = sub_66A18();
          v19 = sub_56B04(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | unsupported property type %p %d 0x%x %lld %p\n", v18, 30, v19, "AVE_Prop_Add", 58, "ret == 0", a1, a2, a3, a4, a5);
            v20 = sub_66A18();
            v29 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | unsupported property type %p %d 0x%x %lld %p", v20, 30, v29, "AVE_Prop_Add");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | unsupported property type %p %d 0x%x %lld %p", v18, 30, v19, "AVE_Prop_Add");
          }
        }

        return 4294966294;
    }

    v10 = *v15;
LABEL_22:
    if ((a3 & 0x30000) == 0x10000)
    {
      v21 = kVTPropertyReadWriteStatus_ReadOnly;
    }

    else
    {
      v21 = kVTPropertyReadWriteStatus_ReadWrite;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v23 = Mutable;
      if (v10)
      {
        CFDictionarySetValue(Mutable, kVTPropertyTypeKey, v10);
      }

      CFDictionarySetValue(v23, kVTPropertyReadWriteStatusKey, v21);
      CFDictionarySetValue(a5, a1, v23);
      CFRelease(v23);
      return 0;
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v24 = sub_56AD0(0x1Eu);
        v25 = sub_66A18();
        v26 = sub_56B04(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %d 0x%x %lld %p\n", v25, 30, v26, "AVE_Prop_Add", 68, "pTmpDict != __null", a1, a2, a3, a4, a5);
          v27 = sub_66A18();
          v30 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %d 0x%x %lld %p", v27, 30, v30, "AVE_Prop_Add");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %d 0x%x %lld %p", v25, 30, v26, "AVE_Prop_Add");
        }
      }

      return 4294966293;
    }
  }

  if (sub_56A8C(0x1Eu, 4))
  {
    v11 = sub_56AD0(0x1Eu);
    v12 = sub_66A18();
    v13 = sub_56B04(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d 0x%x %lld %p\n", v12, 30, v13, "AVE_Prop_Add", 34, "pKey != __null && AVE_Prop_Type_None <= type && type < AVE_Prop_Type_Max && pDict != __null", a1, a2, a3, a4, a5);
      v14 = sub_66A18();
      v28 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d 0x%x %lld %p", v14, 30, v28, "AVE_Prop_Add");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d 0x%x %lld %p", v12, 30, v13, "AVE_Prop_Add");
    }
  }

  return 4294966295;
}

uint64_t sub_14048(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __CFDictionary *a6)
{
  v12 = sub_202BC(a3);
  if (!v12)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v20 = sub_56AD0(0x1Eu);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %d 0x%x %lld %p\n", v21, 30, v22, "AVE_Prop_MakeDict", 110, "pDevCap != __null", a1, a2, a3, a4, a5, a6);
        v23 = sub_66A18();
        v32 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %d 0x%x %lld %p", v23, 30, v32, "AVE_Prop_MakeDict", 110);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %d 0x%x %lld %p", v21, 30, v22, "AVE_Prop_MakeDict", 110);
      }
    }

    return 4294966294;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v13 = v12;
  v14 = 0;
  v39 = a1;
  for (i = a1 + 4; ; i += 16)
  {
    v16 = i[1];
    if ((v16 & 0x40000) != 0 || (v16 & a4) != a4 || ((*(i + 1) >> *(v13 + 1)) & 1) == 0)
    {
      goto LABEL_12;
    }

    if (*i == 8)
    {
      break;
    }

    v18 = sub_13C24(*(i - 1), *i, v16, a5, a6);
LABEL_11:
    v19 = v18;
    if (v18)
    {
      goto LABEL_21;
    }

LABEL_12:
    if (a2 == ++v14)
    {
      return 0;
    }
  }

  v17 = *(i + 2);
  if (v17)
  {
    v18 = v17(a3, a4, a5, a6);
    goto LABEL_11;
  }

  v19 = 4294966288;
LABEL_21:
  if (sub_56A8C(0x1Eu, 4))
  {
    v25 = sub_56AD0(0x1Eu);
    v26 = sub_66A18();
    v27 = sub_56B04(4);
    v28 = *(i + 1);
    if (v25)
    {
      v29 = a3;
      printf("%lld %d AVE %s: %s:%d %s | fail to add property %p %d %d 0x%x %lld | %d %s %p %d 0x%x 0x%llx %d\n", v26, 30, v27, "AVE_Prop_MakeDict", 154, "ret == 0", v39, a2, a3, a4, a5, v14, *(i - 2), *(i - 1), *i, i[1], *(i + 1), v19);
      v30 = sub_66A18();
      v31 = sub_56B04(4);
      v37 = *(i + 1);
      v35 = *i;
      v36 = i[1];
      v33 = *(i - 2);
      v34 = *(i - 1);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add property %p %d %d 0x%x %lld | %d %s %p %d 0x%x 0x%llx %d", v30, 30, v31, "AVE_Prop_MakeDict", 154, "ret == 0", v39, a2, v29, a4);
    }

    else
    {
      v38 = *(i + 1);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add property %p %d %d 0x%x %lld | %d %s %p %d 0x%x 0x%llx %d", v26, 30, v27, "AVE_Prop_MakeDict", 154, "ret == 0", v39, a2, a3, a4);
    }
  }

  return v19;
}

uint64_t sub_14394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, const __CFString *a7)
{
  v12 = a2;
  v13 = a1;
  memset(v38, 0, sizeof(v38));
  if (!a1 || a2 < 1 || !a5 || !a7)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v21 = sub_56AD0(0x1Eu);
      v22 = sub_66A18();
      v23 = sub_56B04(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p\n", v22, 30, v23, "AVE_Prop_FindPropertyEntry", 190, "pArray != __null && num > 0 && pINS != __null && pKey != __null", v13, v12, a5, a6, a3, a4, a7);
        v22 = sub_66A18();
        v36 = a4;
        v37 = a7;
        v34 = a6;
        v35 = a3;
        v32 = v12;
        v33 = a5;
        v31 = v13;
        v30 = sub_56B04(4);
      }

      else
      {
        v36 = a4;
        v37 = a7;
        v34 = a6;
        v35 = a3;
        v32 = v12;
        v33 = a5;
        v31 = v13;
        v30 = v23;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p", v22, 30, v30, "AVE_Prop_FindPropertyEntry", 190, "pArray != __null && num > 0 && pINS != __null && pKey != __null", v31, v32, v33, v34, v35, v36, v37);
    }

    return 0;
  }

  v14 = sub_4765C(a7, v38, 64);
  v15 = sub_202BC(a3);
  if (!v15)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v24 = sub_56AD0(0x1Eu);
      v25 = sub_66A18();
      v26 = sub_56B04(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %p %lld %d 0x%x %s\n", v25, 30, v26, "AVE_Prop_FindPropertyEntry", 196, "pDevCap != __null", v13, v12, a5, a6, a3, a4, v14);
        v27 = sub_66A18();
        v28 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %p %lld %d 0x%x %s", v27, 30, v28, "AVE_Prop_FindPropertyEntry", 196, "pDevCap != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %p %lld %d 0x%x %s", v25, 30, v26, "AVE_Prop_FindPropertyEntry", 196, "pDevCap != __null");
      }
    }

    return 0;
  }

  v16 = v15;
  v12 = v12;
  while (1)
  {
    if ((*(v13 + 24) >> *(v16 + 1)))
    {
      v17 = *(v13 + 20);
      v18 = a4 & 0xFFFCFFFF & ~v17;
      v19 = a4 & 0x30000 & v17;
      v20 = v18 || v19 == 0;
      if (!v20 && CFEqual(a7, *(v13 + 8)))
      {
        break;
      }
    }

    v13 += 64;
    if (!--v12)
    {
      return 0;
    }
  }

  return v13;
}

uint64_t sub_146B0(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, const __CFString *a7, const void *a8)
{
  memset(v58, 0, sizeof(v58));
  if (a1 && a2 >= 1 && a5 && a7)
  {
    v16 = sub_14394(a1, a2, a3, a4 | 0x20000, a5, a6, a7);
    if (v16)
    {
      v17 = v16;
      v18 = *(v16 + 40);
      if (v18)
      {
        v19 = v18(a5, v16, a7, a8);
        if (v19 && sub_56A8C(0x1Eu, 4))
        {
          v20 = sub_56AD0(0x1Eu);
          v21 = sub_66A18();
          v22 = sub_56B04(4);
          v23 = v17[3];
          if (v20)
          {
            v24 = a3;
            printf("%lld %d AVE %s: %s:%d %s | fail to set property %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx %d\n", v21, 30, v22, "AVE_Prop_SetProperty", 268, "ret == 0", a5, a6, a3, a4, a7, a8, *v17, v17[1], *(v17 + 4), *(v17 + 5), v17[3], v19);
            v25 = sub_66A18();
            v26 = sub_56B04(4);
            v54 = v17[3];
            v49 = *(v17 + 4);
            v51 = *(v17 + 5);
            v45 = *v17;
            v47 = v17[1];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx %d", v25, 30, v26, "AVE_Prop_SetProperty", 268, "ret == 0", a5, a6, v24, a4);
          }

          else
          {
            v56 = v17[3];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx %d", v21, 30, v22, "AVE_Prop_SetProperty", 268, "ret == 0", a5, a6, a3, a4);
          }
        }
      }

      else
      {
        if (sub_56A8C(0x1Eu, 4))
        {
          v35 = sub_56AD0(0x1Eu);
          v36 = sub_66A18();
          v37 = sub_56B04(4);
          v38 = *(v17 + 5);
          if (v35)
          {
            v39 = a3;
            printf("%lld %d AVE %s: %s:%d %s | set function is not supported %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx\n", v36, 30, v37, "AVE_Prop_SetProperty", 260, "pEntry->Set != __null", a5, a6, a3, a4, a7, a8, *v17, v17[1], *(v17 + 4), *(v17 + 5), v17[3]);
            v40 = sub_66A18();
            v41 = sub_56B04(4);
            v52 = *(v17 + 5);
            v55 = v17[3];
            v48 = v17[1];
            v50 = *(v17 + 4);
            v46 = *v17;
            syslog(3, "%lld %d AVE %s: %s:%d %s | set function is not supported %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx", v40, 30, v41, "AVE_Prop_SetProperty", 260, "pEntry->Set != __null", a5, a6, v39);
          }

          else
          {
            v53 = *(v17 + 5);
            syslog(3, "%lld %d AVE %s: %s:%d %s | set function is not supported %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx", v36, 30, v37, "AVE_Prop_SetProperty", 260, "pEntry->Set != __null", a5, a6, a3);
          }
        }

        return 4294966294;
      }
    }

    else
    {
      v31 = sub_4765C(a7, v58, 64);
      if (sub_56A8C(0x1Eu, 5))
      {
        v32 = sub_56AD0(0x1Eu);
        v57 = sub_66A18();
        v33 = sub_56B04(5);
        if (v32)
        {
          printf("%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %s %p %d\n", v57, 30, v33, a1, a2, a5, a6, a3, a4, v31, a8, -2002);
          v34 = sub_66A18();
          v44 = sub_56B04(5);
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %s %p %d", v34, 30, v44, a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %s %p %d", v57, 30, v33, a1, a2);
        }
      }

      CFShow(a7);
      CFShow(a8);
      return 4294965294;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v27 = sub_56AD0(0x1Eu);
      v28 = sub_66A18();
      v29 = sub_56B04(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p\n", v28, 30, v29, "AVE_Prop_SetProperty", 249, "pArray != __null && num > 0 && pINS != __null && pKey != __null", a1, a2, a5, a6, a3, a4, a7, a8);
        v30 = sub_66A18();
        v43 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p", v30, 30, v43, "AVE_Prop_SetProperty", 249, "pArray != __null && num > 0 && pINS != __null && pKey != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p", v28, 30, v29, "AVE_Prop_SetProperty", 249, "pArray != __null && num > 0 && pINS != __null && pKey != __null", a1);
      }
    }

    return 4294966295;
  }

  return v19;
}

uint64_t sub_14C24(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, const __CFString *a8, const void *a9)
{
  memset(v60, 0, sizeof(v60));
  if (a1 && a2 >= 1 && a5 && a8 && a9)
  {
    v17 = sub_14394(a1, a2, a3, a4 | 0x10000, a5, a6, a8);
    if (v17)
    {
      v18 = v17;
      v19 = *(v17 + 48);
      if (v19)
      {
        v20 = v19(a5, v17, a7, a8, a9);
        if (v20 && sub_56A8C(0x1Eu, 4))
        {
          v21 = a7;
          v22 = sub_56AD0(0x1Eu);
          v57 = sub_66A18();
          v23 = sub_56B04(4);
          v24 = v18[3];
          if (v22)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to get property %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx %d\n", v57, 30, v23, "AVE_Prop_GetProperty", 330, "ret == 0", a5, a6, a3, a4, v21, a8, a9, *v18, v18[1], *(v18 + 4), *(v18 + 5), v18[3], v20);
            v25 = sub_66A18();
            v26 = sub_56B04(4);
            v52 = v18[3];
            v47 = *(v18 + 4);
            v49 = *(v18 + 5);
            v43 = *v18;
            v45 = v18[1];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx %d", v25, 30, v26, "AVE_Prop_GetProperty", 330, "ret == 0", a5, a6, a3, a4, v21);
          }

          else
          {
            v54 = v18[3];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx %d", v57, 30, v23, "AVE_Prop_GetProperty", 330, "ret == 0", a5, a6, a3, a4, v21);
          }
        }
      }

      else
      {
        if (sub_56A8C(0x1Eu, 4))
        {
          v35 = a7;
          v36 = sub_56AD0(0x1Eu);
          v37 = sub_66A18();
          v38 = sub_56B04(4);
          v39 = *(v18 + 5);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | get function is not supported %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx\n", v37, 30, v38, "AVE_Prop_GetProperty", 322, "pEntry->Get != __null", a5, a6, a3, a4, v35, a8, a9, *v18, v18[1], *(v18 + 4), *(v18 + 5), v18[3]);
            v37 = sub_66A18();
            v38 = sub_56B04(4);
            v50 = *(v18 + 5);
            v53 = v18[3];
            v46 = v18[1];
            v48 = *(v18 + 4);
            v44 = *v18;
          }

          else
          {
            v51 = *(v18 + 5);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | get function is not supported %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx", v37, 30, v38, "AVE_Prop_GetProperty", 322, "pEntry->Get != __null", a5, a6, a3, a4);
        }

        return 4294966294;
      }
    }

    else
    {
      v32 = sub_4765C(a8, v60, 64);
      if (sub_56A8C(0x1Eu, 5))
      {
        v59 = a7;
        v33 = sub_56AD0(0x1Eu);
        v55 = sub_66A18();
        v34 = sub_56B04(5);
        if (v33)
        {
          printf("%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %p %s %p %d\n", v55, 30, v34, a1, a2, a5, a6, a3, a4, v59, v32, a9, -2002);
          v56 = sub_66A18();
          v42 = sub_56B04(5);
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %p %s %p %d", v56, 30, v42, a1, a2, a5);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %p %s %p %d", v55, 30, v34, a1, a2, a5);
        }
      }

      CFShow(a8);
      CFShow(a9);
      return 4294965294;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v27 = a6;
      v28 = a7;
      v29 = sub_56AD0(0x1Eu);
      v58 = sub_66A18();
      v30 = sub_56B04(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p %p\n", v58, 30, v30, "AVE_Prop_GetProperty", 311, "pArray != __null && num > 0 && pINS != __null && pKey != __null && pValue != __null", a1, a2, a5, v27, a3, a4, v28, a8, a9);
        v31 = sub_66A18();
        v41 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p %p", v31, 30, v41, "AVE_Prop_GetProperty", 311, "pArray != __null && num > 0 && pINS != __null && pKey != __null && pValue != __null", a1, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p %p", v58, 30, v30, "AVE_Prop_GetProperty", 311, "pArray != __null && num > 0 && pINS != __null && pKey != __null && pValue != __null", a1, a2);
      }
    }

    return 4294966295;
  }

  return v20;
}

uint64_t sub_15204(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3)
  {
    if (!a4)
    {
      Value = -1;
LABEL_11:
      *(a1 + 87208) = Value;
      *(a1 + 644) = Value;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v15 = sub_56AD0(0x1Eu);
        v16 = sub_66A18();
        v17 = sub_56B04(7);
        v18 = *a2;
        if (v15)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v16, 30, v17, a1, *(a1 + 24), *a2, Value);
          v16 = sub_66A18();
          sub_56B04(7);
          v19 = *(a1 + 24);
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

    if (sub_56A8C(0x1Eu, 4))
    {
      v20 = sub_56AD0(0x1Eu);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      v23 = *(a1 + 24);
      v24 = CFGetTypeID(a4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_MCTF_SetRealTime", 55, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        v25 = *(a1 + 24);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_MCTF_SetRealTime", 55, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v10 = sub_56AD0(0x1Eu);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v11, 30, v12, "AVE_Prop_MCTF_SetRealTime", 43, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v13 = sub_66A18();
        v26 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 30, v26, "AVE_Prop_MCTF_SetRealTime");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v11, 30, v12, "AVE_Prop_MCTF_SetRealTime");
      }
    }

    return 4294966295;
  }
}

uint64_t sub_15548(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = &kCFBooleanTrue;
    v11 = *(a1 + 644);
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
    result = sub_56A8C(0x1Eu, 7);
    if (result)
    {
      v14 = sub_56AD0(0x1Eu);
      v15 = sub_66A18();
      v16 = sub_56B04(7);
      v17 = *a2;
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v15, 30, v16, a1, *(a1 + 24), *a2, v11);
        v15 = sub_66A18();
        sub_56B04(7);
        v18 = *(a1 + 24);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v15);
      return 0;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v19 = sub_56AD0(0x1Eu);
      v20 = sub_66A18();
      v21 = sub_56B04(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_MCTF_GetRealTime", 93, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_MCTF_GetRealTime", 93);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_MCTF_GetRealTime", 93);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1576C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_56A8C(0x1Eu, 4))
        {
          v26 = sub_56AD0(0x1Eu);
          v27 = sub_66A18();
          v28 = sub_56B04(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v27, 30, v28, "AVE_Prop_MCTF_SetPriority", 157, "-100 <= iPriority && iPriority <= 200", a1, *(a1 + 24), a2, a3, a4, valuePtr, -100, 200);
            v27 = sub_66A18();
            v28 = sub_56B04(4);
            v29 = *(a1 + 24);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v27, 30, v28, "AVE_Prop_MCTF_SetPriority", 157, "-100 <= iPriority && iPriority <= 200", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 87212) = valuePtr;
        *(a1 + 648) = v9;
        result = sub_56A8C(0x1Eu, 7);
        if (result)
        {
          v11 = sub_56AD0(0x1Eu);
          v12 = sub_66A18();
          v13 = sub_56B04(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 24), *a2, valuePtr);
            v12 = sub_66A18();
            sub_56B04(7);
            v15 = *(a1 + 24);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v20 = sub_56AD0(0x1Eu);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        v23 = *(a1 + 24);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_MCTF_SetPriority", 147, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_66A18();
          v22 = sub_56B04(4);
          v25 = *(a1 + 24);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_MCTF_SetPriority", 147, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v16 = sub_56AD0(0x1Eu);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_MCTF_SetPriority", 137, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_66A18();
        v30 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_MCTF_SetPriority");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_MCTF_SetPriority");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_15BE4(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 648);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v13 = sub_56AD0(0x1Eu);
        v14 = sub_66A18();
        v15 = sub_56B04(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 24), *a2, valuePtr, v11);
          v14 = sub_66A18();
          sub_56B04(7);
          v16 = *(a1 + 24);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v21 = sub_56AD0(0x1Eu);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_MCTF_GetPriority", 203, "pNum != __null", a1, *(a1 + 24), a2, allocator, a4, a5, valuePtr);
          v22 = sub_66A18();
          v23 = sub_56B04(4);
          v24 = *(a1 + 24);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_MCTF_GetPriority", 203, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v17 = sub_56AD0(0x1Eu);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_MCTF_GetPriority", 193, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_66A18();
        v25 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_MCTF_GetPriority", 193);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_MCTF_GetPriority", 193);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_15F14(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  v77 = 0;
  memset(v76, 0, 44);
  v78 = 0u;
  v79 = 0u;
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = sub_500F4(*(a1 + 32), *(a1 + 16), *(a1 + 668), 2, valuePtr);
      if (v9)
      {
        v10 = v9;
        if (sub_56A8C(0x1Eu, 4))
        {
          v11 = sub_56AD0(0x1Eu);
          v12 = sub_66A18();
          v13 = sub_56B04(4);
          if (v11)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid source frame pixel format %p %lld %p %p %p 0x%x\n", v12, 30, v13, "AVE_Prop_MCTF_SetSourceFramePixelFormat", 265, "ret == 0", a1, *(a1 + 24), a2, a3, a4, valuePtr);
            v12 = sub_66A18();
            v13 = sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid source frame pixel format %p %lld %p %p %p 0x%x", v12, 30, v13, "AVE_Prop_MCTF_SetSourceFramePixelFormat", 265, "ret == 0", a1, *(a1 + 24), a2, a3, a4, valuePtr);
        }

        goto LABEL_51;
      }

      v24 = sub_5D820(valuePtr);
      if (!v24)
      {
        if (sub_56A8C(0x1Eu, 4))
        {
          v31 = sub_56AD0(0x1Eu);
          v32 = sub_66A18();
          v33 = sub_56B04(4);
          if (v31)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to get pixel format details %p %lld %p %p %p %d\n", v32, 30, v33, "AVE_Prop_MCTF_SetSourceFramePixelFormat", 271, "pPixelFmt != __null", a1, *(a1 + 24), a2, a3, a4, valuePtr);
            v32 = sub_66A18();
            v33 = sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get pixel format details %p %lld %p %p %p %d", v32, 30, v33, "AVE_Prop_MCTF_SetSourceFramePixelFormat", 271, "pPixelFmt != __null", a1, *(a1 + 24), a2, a3, a4, valuePtr);
        }

        goto LABEL_50;
      }

      v25 = v24;
      v26 = sub_507A8(*(a1 + 32), *(a1 + 16), *(a1 + 668), 2, *(a1 + 1392), *(a1 + 1396), *(a1 + 87152), *(a1 + 87156), valuePtr);
      if (v26)
      {
        v10 = v26;
        if (!sub_56A8C(0x1Eu, 4))
        {
          goto LABEL_51;
        }

        v27 = sub_56AD0(0x1Eu);
        v28 = sub_66A18();
        v29 = sub_56B04(4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create input pixel buffer attribute %d %d 0x%x %d %dx%d %dx%d 0x%x %d\n", v28, 30, v29, "AVE_Prop_MCTF_SetSourceFramePixelFormat", 283, "ret == 0", *(a1 + 32), *(a1 + 16), *(a1 + 668), 2, *(a1 + 1392), *(a1 + 1396), *(a1 + 87152), *(a1 + 87156), valuePtr, v10);
          v28 = sub_66A18();
          v29 = sub_56B04(4);
        }

        v73 = valuePtr;
        v74 = v10;
        v71 = *(a1 + 87152);
        v72 = *(a1 + 87156);
        v69 = *(a1 + 1392);
        v70 = *(a1 + 1396);
        v65 = *(a1 + 668);
        v67 = 2;
        v61 = *(a1 + 32);
        v62 = *(a1 + 16);
        v59 = 283;
        v58 = v29;
        v30 = "%lld %d AVE %s: %s:%d %s | fail to create input pixel buffer attribute %d %d 0x%x %d %dx%d %dx%d 0x%x %d";
        goto LABEL_39;
      }

      v34 = *(a1 + 48);
      if (v34)
      {
        CFRelease(v34);
        *(a1 + 48) = 0;
      }

      *(a1 + 48) = CFRetain(v77);
      v35 = *(a1 + 8);
      v36 = VTTemporalFilterPluginSessionSetInputPixelBufferAttributes();
      if (v36)
      {
        v37 = v36;
        if (sub_56A8C(0x1Eu, 4))
        {
          v38 = sub_56AD0(0x1Eu);
          v39 = sub_66A18();
          v40 = sub_56B04(4);
          if (v38)
          {
            printf("%lld %d AVE %s: %s:%d %s | Fail to set MCTF InputPixelBufferAttributes, %p %lld %p %p 0x%x %d\n", v39, 30, v40, "AVE_Prop_MCTF_SetSourceFramePixelFormat", 295, "err == noErr", a1, *(a1 + 24), *(a1 + 8), *(a1 + 48), valuePtr, v37);
            v39 = sub_66A18();
            v40 = sub_56B04(4);
          }

          v66 = *(a1 + 8);
          v68 = *(a1 + 48);
          v63 = *(a1 + 24);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Fail to set MCTF InputPixelBufferAttributes, %p %lld %p %p 0x%x %d", v39, 30, v40, "AVE_Prop_MCTF_SetSourceFramePixelFormat", 295);
        }

LABEL_50:
        v10 = 4294966296;
        goto LABEL_51;
      }

      if (*(v25 + 6) == 3)
      {
        v41 = valuePtr;
      }

      else
      {
        v42 = *(v25 + 28);
        v43 = *(v25 + 1);
        v76[0] = *v25;
        *&v76[1] = v43;
        *(&v76[1] + 12) = v42;
        DWORD2(v76[1]) = 3;
        v41 = sub_5D858(v76);
        if (!v41)
        {
          if (sub_56A8C(0x1Eu, 4))
          {
            v54 = sub_56AD0(0x1Eu);
            v55 = sub_66A18();
            v56 = sub_56B04(4);
            if (v54)
            {
              printf("%lld %d AVE %s: %s:%d %s | Find output pixel format failed, %p %lld %d %d %d %d %d %d %d\n", v55, 30, v56, "AVE_Prop_MCTF_SetSourceFramePixelFormat", 308, "iOutPixelFormat != 0", a1, *(a1 + 24), LODWORD(v76[2]), DWORD2(v76[1]), HIDWORD(v76[0]), DWORD1(v76[0]), DWORD2(v76[0]), LODWORD(v76[1]), DWORD1(v76[1]));
              v55 = sub_66A18();
              v56 = sub_56B04(4);
            }

            v64 = *(a1 + 24);
            syslog(3, "%lld %d AVE %s: %s:%d %s | Find output pixel format failed, %p %lld %d %d %d %d %d %d %d", v55, 30, v56, "AVE_Prop_MCTF_SetSourceFramePixelFormat", 308, "iOutPixelFormat != 0");
          }

          goto LABEL_50;
        }
      }

      v44 = sub_4394C(a1, v41);
      if (v44)
      {
        v10 = v44;
        if (!sub_56A8C(0x1Eu, 4))
        {
          goto LABEL_51;
        }

        v45 = sub_56AD0(0x1Eu);
        v28 = sub_66A18();
        v46 = sub_56B04(4);
        if (v45)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE_Session_MCTF_BuildDestPixelBufAttributes failed, %p %lld 0x%x %d\n", v28, 30, v46, "AVE_Prop_MCTF_SetSourceFramePixelFormat", 314, "ret == 0", a1, *(a1 + 24), v41, v10);
          v28 = sub_66A18();
          v46 = sub_56B04(4);
        }

        v65 = v41;
        v67 = v10;
        v61 = a1;
        v62 = *(a1 + 24);
        v59 = 314;
        v58 = v46;
        v30 = "%lld %d AVE %s: %s:%d %s | AVE_Session_MCTF_BuildDestPixelBufAttributes failed, %p %lld 0x%x %d";
LABEL_39:
        syslog(3, v30, v28, 30, v58, "AVE_Prop_MCTF_SetSourceFramePixelFormat", v59, "ret == 0", v61, v62, v65, v67, v69, v70, v71, v72, v73, v74);
        goto LABEL_51;
      }

      v48 = valuePtr;
      *(a1 + 87216) = valuePtr;
      *(a1 + 87936) = v48;
      if (sub_56A8C(0x1Eu, 7))
      {
        v49 = sub_56AD0(0x1Eu);
        v50 = sub_66A18();
        v51 = sub_56B04(7);
        v52 = *a2;
        if (v49)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", v50, 30, v51, a1, *(a1 + 24), *a2, valuePtr);
          v50 = sub_66A18();
          sub_56B04(7);
          v53 = *(a1 + 24);
        }

        v60 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", v50);
      }

      v10 = 0;
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v18 = sub_56AD0(0x1Eu);
        v19 = sub_66A18();
        v20 = sub_56B04(4);
        v21 = *(a1 + 24);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_MCTF_SetSourceFramePixelFormat", 253, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_66A18();
          v20 = sub_56B04(4);
          v23 = *(a1 + 24);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_MCTF_SetSourceFramePixelFormat", 253, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      v10 = 4294965293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v14 = sub_56AD0(0x1Eu);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_MCTF_SetSourceFramePixelFormat", 243, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_66A18();
        v57 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v57, "AVE_Prop_MCTF_SetSourceFramePixelFormat");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_MCTF_SetSourceFramePixelFormat");
      }
    }

    v10 = 4294966295;
  }

LABEL_51:
  if (v77)
  {
    CFRelease(v77);
  }

  return v10;
}

uint64_t sub_169C8(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 87936);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v13 = sub_56AD0(0x1Eu);
        v14 = sub_66A18();
        v15 = sub_56B04(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", v14, 30, v15, a1, *(a1 + 24), *a2, valuePtr, v11);
          v14 = sub_66A18();
          sub_56B04(7);
          v16 = *(a1 + 24);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v21 = sub_56AD0(0x1Eu);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_MCTF_GetSourceFramePixelFormat", 366, "pNum != __null", a1, *(a1 + 24), a2, allocator, a4, a5, valuePtr);
          v22 = sub_66A18();
          v23 = sub_56B04(4);
          v24 = *(a1 + 24);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_MCTF_GetSourceFramePixelFormat", 366, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v17 = sub_56AD0(0x1Eu);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_MCTF_GetSourceFramePixelFormat", 356, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_66A18();
        v25 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_MCTF_GetSourceFramePixelFormat", 356);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_MCTF_GetSourceFramePixelFormat", 356);
      }
    }

    return 4294966295;
  }

  return result;
}