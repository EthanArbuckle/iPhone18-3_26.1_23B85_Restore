uint64_t AVE_SEI::GenerateAmbientViewingEnvironmentNALU(void *a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
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

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v15, a2, a4, v16, a5, a6);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
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

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x40) == 0)
  {
    goto LABEL_21;
  }

  v35 = 0;
  v18 = AVE_SEI_WriteAmbientViewingEnvironment(a2, a3, (a4 + 148), *(a1 + 5), &v35);
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
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v21 = AVE_Log_CheckConsole(0xD3u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    v24 = *a1;
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", 2237, "ret == 0", a1, *a1, v20);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
    }

    v33 = *a1;
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v22, 211, v23, "AVE_SEI");
  }

  v25 = 4;
LABEL_24:
  if (AVE_Log_CheckLevel(0xD3u, v25))
  {
    v26 = AVE_Log_CheckConsole(0xD3u);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(v25);
    v29 = *a1;
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d\n", v27, 211, v28, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v29, a2, a4, *(a4 + 24), a5, a6, v20);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(v25);
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

uint64_t AVE_SEI::GenerateLuxLevelNALU(void *a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
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

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateLuxLevelNALU", a1, v15, a2, a4, v16, a5, a6);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
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

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateLuxLevelNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x80) == 0)
  {
    goto LABEL_19;
  }

  v18 = AVE_SEI_WriteLuxLevel(a2, a3, *(a4 + 24), *(a4 + 60), *(a1 + 5), 1, a6);
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
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v21 = AVE_Log_CheckConsole(0xD3u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    v24 = *a1;
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
      v25 = AVE_GetCurrTime();
      v20 = 4;
      v26 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d", v25, 211, v26, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d", v22, 211, v23, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
      v20 = 4;
    }
  }

LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v20))
  {
    v27 = AVE_Log_CheckConsole(0xD3u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v20);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d\n", v28, 211, v29, "AVE_SEI", "GenerateLuxLevelNALU", a1, *a1, a4, *(a4 + 24), a5, a6, v19);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(v20);
      v32 = *(a4 + 24);
      v31 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d", v28, 211, v29, "AVE_SEI", "GenerateLuxLevelNALU", a1);
  }

  return v19;
}

uint64_t AVE_SEI::GenerateUnregisteredSEINALU(uint64_t *a1, unsigned __int8 *a2, int a3, void *a4, uint64_t a5, unsigned int *a6)
{
  v199 = *MEMORY[0x29EDCA608];
  *v198 = xmmword_2954DF860;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v13 = *a1;
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v13, a2, a3, a4, a5, a6);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p", v14, 211, v15, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, *a1, a2, a3, a4, a5, a6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v13, a2, a3, a4, a5, a6);
    }
  }

  *a6 = 0;
  v16 = a4[4] & a1[1];
  if ((a5 & v16 & 0x3FF00000000) == 0)
  {
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v28 = AVE_Log_CheckConsole(0xD3u);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(7);
      v31 = *a1;
      if (v28)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early\n", v29, 211, v30, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, v31);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(7);
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
  v18 = AVE_SEI::EstimateUnregisteredSEIMessageSizes(a1, a4, v16 & a5);
  if (v18 < 1)
  {
LABEL_21:
    v23 = 0;
    goto LABEL_46;
  }

  v19 = v18;
  v20 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v20)
  {
    v21 = v20;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v20, a2, a3, 0);
    v22 = AVE_SyntaxWriter::WriteStartCode(v21);
    if (v22)
    {
      v23 = v22;
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v24 = AVE_Log_CheckConsole(0xD3u);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        v27 = *a1;
        if (v24)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v25, 211, v26, "AVE_SEI", "GenerateUnregisteredSEINALU", 1762, "ret == 0", a1, *a1, v23);
          v25 = AVE_GetCurrTime();
          v26 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v25, 211, v26, "AVE_SEI", "GenerateUnregisteredSEINALU", 1762, "ret == 0", a1, *a1, v23);
      }

      goto LABEL_41;
    }

    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v37 = AVE_Log_CheckConsole(0xD3u);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(8);
      v40 = *(v21 + 3);
      v41 = *(v21 + 4) + v40;
      if (v37)
      {
        printf("%lld %d AVE %s: %s::%s:%d start code %p (%d)\n", v38, 211, v39, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 4) + v40), v40);
        v42 = AVE_GetCurrTime();
        v43 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d start code %p (%d)", v42, 211, v43, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 4) + *(v21 + 3)), *(v21 + 3));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d start code %p (%d)", v38, 211, v39, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 4) + v40), v40);
      }
    }

    v44 = *(a1 + 5);
    if (v44 == 2)
    {
      HEVCHeaderStart = AVE_SEI_GenerateHEVCHeaderStart(39, v21);
      if (HEVCHeaderStart)
      {
        v23 = HEVCHeaderStart;
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v46 = v21;
          v52 = AVE_Log_CheckConsole(0xD3u);
          v53 = AVE_GetCurrTime();
          v54 = AVE_Log_GetLevelStr(4);
          v55 = *a1;
          if (v52)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v53, 211, v54, "AVE_SEI", "GenerateUnregisteredSEINALU", 1778, "ret == 0", a1, *a1, v23);
            v53 = AVE_GetCurrTime();
            v54 = AVE_Log_GetLevelStr(4);
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
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v67 = AVE_Log_CheckConsole(0xD3u);
          v68 = AVE_GetCurrTime();
          v69 = AVE_Log_GetLevelStr(4);
          v70 = *a1;
          v71 = *(a1 + 5);
          if (v67)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL\n", v68, 211, v69, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, v71);
            v72 = AVE_GetCurrTime();
            v73 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL", v72, 211, v73, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, *(a1 + 5));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL", v68, 211, v69, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, v71);
          }
        }

        v56 = 0;
        v57 = 0;
        v23 = 4294966295;
        goto LABEL_42;
      }

      AVCHeaderStart = AVE_SEI_GenerateAVCHeaderStart(v21);
      if (AVCHeaderStart)
      {
        v23 = AVCHeaderStart;
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v46 = v21;
          v47 = AVE_Log_CheckConsole(0xD3u);
          v48 = AVE_GetCurrTime();
          v49 = AVE_Log_GetLevelStr(4);
          v50 = *a1;
          if (v47)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v48, 211, v49, "AVE_SEI", "GenerateUnregisteredSEINALU", 1772, "ret == 0", a1, *a1, v23);
            v48 = AVE_GetCurrTime();
            v49 = AVE_Log_GetLevelStr(4);
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

    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v74 = AVE_Log_CheckConsole(0xD3u);
      v75 = AVE_GetCurrTime();
      v76 = AVE_Log_GetLevelStr(8);
      v77 = *a1;
      v78 = *(v21 + 3);
      v79 = *(v21 + 4) + v78;
      if (v74)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)\n", v75, 211, v76, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, v77, (*(v21 + 4) + v78), v78);
        v80 = AVE_GetCurrTime();
        v81 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)", v80, 211, v81, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, *a1, (*(v21 + 4) + *(v21 + 3)), *(v21 + 3));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)", v75, 211, v76, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, v77, (*(v21 + 4) + v78), v78);
      }
    }

    AVE_SyntaxWriter::WriteU(v21, 5u, 8);
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v82 = AVE_Log_CheckConsole(0xD3u);
      v83 = AVE_GetCurrTime();
      v84 = AVE_Log_GetLevelStr(8);
      v85 = *a1;
      v86 = *(v21 + 3);
      v87 = *(v21 + 4) + v86;
      if (v82)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)\n", v83, 211, v84, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, v85, (*(v21 + 4) + v86), v86);
        v88 = AVE_GetCurrTime();
        v89 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)", v88, 211, v89, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, *a1, (*(v21 + 4) + *(v21 + 3)), *(v21 + 3));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)", v83, 211, v84, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, v85, (*(v21 + 4) + v86), v86);
      }
    }

    v90 = malloc_type_malloc(v19, 0x100004077774924uLL);
    if (!v90)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v95 = AVE_Log_CheckConsole(0xD3u);
        v96 = AVE_GetCurrTime();
        v97 = AVE_Log_GetLevelStr(4);
        v98 = *a1;
        if (v95)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.\n", v96, 211, v97, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, v98);
          v99 = AVE_GetCurrTime();
          v100 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.", v99, 211, v100, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, *a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.", v96, 211, v97, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, v98);
        }
      }

      v56 = 0;
      v57 = 0;
      v23 = 4294966293;
      goto LABEL_42;
    }

    v193 = v21;
    v194 = v90;
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v91 = AVE_Log_CheckConsole(0xD3u);
      v92 = AVE_GetCurrTime();
      v93 = AVE_Log_GetLevelStr(8);
      v94 = *a1;
      if (v91)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for SEI Buffer\n", v92, 211, v93, "AVE_SEI", "GenerateUnregisteredSEINALU", 1803, a1, *a1, v19);
        v92 = AVE_GetCurrTime();
        v93 = AVE_Log_GetLevelStr(8);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for SEI Buffer", v92, 211, v93, "AVE_SEI", "GenerateUnregisteredSEINALU", 1803, a1, *a1, v19);
    }

    v101 = 0;
    v102 = &off_2A1C7E128;
    v103 = 10;
    v104 = v194;
    do
    {
      if ((v17 >> *(v102 - 2)))
      {
        v197 = 0;
        (*v102)(a4, v104, v19, &v197);
        v104 += v197;
        v19 = (v19 - v197);
        v101 += v197;
      }

      v102 += 2;
      --v103;
    }

    while (v103);
    v192 = v101 + v101 / 2 + 17;
    v56 = malloc_type_malloc(v192, 0x100004077774924uLL);
    if (v56)
    {
      if (AVE_Log_CheckLevel(0xD3u, 8))
      {
        v105 = AVE_Log_CheckConsole(0xD3u);
        v106 = AVE_GetCurrTime();
        v107 = AVE_Log_GetLevelStr(8);
        v108 = *a1;
        if (v105)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for EPB Buffer\n", v106, 211, v107, "AVE_SEI", "GenerateUnregisteredSEINALU", 1828, a1, *a1, v192);
          v106 = AVE_GetCurrTime();
          v107 = AVE_Log_GetLevelStr(8);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for EPB Buffer", v106, 211, v107, "AVE_SEI", "GenerateUnregisteredSEINALU", 1828, a1, *a1, v192);
      }

      v115 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
      if (v115)
      {
        v116 = v115;
        AVE_SyntaxWriter::AVE_SyntaxWriter(v115, v56, v192, 1);
        v191 = v116;
        v23 = AVE_SyntaxWriter::WriteBytes(v116, v198, 16);
        if (v23)
        {
          if (AVE_Log_CheckLevel(0xD3u, 4))
          {
            v117 = AVE_Log_CheckConsole(0xD3u);
            v118 = AVE_GetCurrTime();
            v119 = AVE_Log_GetLevelStr(4);
            v120 = *a1;
            if (v117)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v118, 211, v119, "AVE_SEI", "GenerateUnregisteredSEINALU", 1838, "ret == 0", a1, *a1, v23);
              v118 = AVE_GetCurrTime();
              v119 = AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v118, 211, v119, "AVE_SEI", "GenerateUnregisteredSEINALU", 1838, "ret == 0", a1, *a1, v23);
          }
        }

        else
        {
          v23 = AVE_SyntaxWriter::WriteBytes(v116, v194, v101);
          if (v23)
          {
            if (AVE_Log_CheckLevel(0xD3u, 4))
            {
              v124 = AVE_Log_CheckConsole(0xD3u);
              v125 = AVE_GetCurrTime();
              v126 = AVE_Log_GetLevelStr(4);
              v127 = *a1;
              if (v124)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v125, 211, v126, "AVE_SEI", "GenerateUnregisteredSEINALU", 1843, "ret == 0", a1, *a1, v23);
                v125 = AVE_GetCurrTime();
                v126 = AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v125, 211, v126, "AVE_SEI", "GenerateUnregisteredSEINALU", 1843, "ret == 0", a1, *a1, v23);
            }
          }

          else
          {
            v129 = *(v116 + 3);
            v128 = *(v191 + 4);
            if (v128 >= 0)
            {
              v130 = *(v191 + 4);
            }

            else
            {
              v130 = v128 + 7;
            }

            v190 = *(v193 + 3);
            v131 = v129 - (v130 >> 3);
            if (AVE_Log_CheckLevel(0xD3u, 8))
            {
              v132 = AVE_Log_CheckConsole(0xD3u);
              v133 = AVE_GetCurrTime();
              v134 = AVE_Log_GetLevelStr(8);
              v135 = *a1;
              v136 = *(v193 + 3);
              v137 = *(v193 + 4) + v136;
              if (v132)
              {
                printf("%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)\n", v133, 211, v134, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, v135, v129 - (v130 >> 3), (*(v193 + 4) + v136), v136);
                v138 = AVE_GetCurrTime();
                v139 = AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)", v138, 211, v139, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, *a1, v131, (*(v193 + 4) + *(v193 + 3)), *(v193 + 3));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)", v133, 211, v134, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, v135, v129 - (v130 >> 3), (*(v193 + 4) + v136), v136);
              }
            }

            v23 = AVE_SEI_WritePayloadSize(v131, v193);
            if (v23)
            {
              if (AVE_Log_CheckLevel(0xD3u, 4))
              {
                v140 = AVE_Log_CheckConsole(0xD3u);
                v141 = AVE_GetCurrTime();
                v142 = AVE_Log_GetLevelStr(4);
                v143 = *a1;
                if (v140)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v141, 211, v142, "AVE_SEI", "GenerateUnregisteredSEINALU", 1856, "ret == 0", a1, *a1, v23);
                  v141 = AVE_GetCurrTime();
                  v142 = AVE_Log_GetLevelStr(4);
                }

                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v141, 211, v142, "AVE_SEI", "GenerateUnregisteredSEINALU", 1856, "ret == 0", a1, *a1, v23);
              }
            }

            else
            {
              if (AVE_Log_CheckLevel(0xD3u, 8))
              {
                v144 = AVE_Log_CheckConsole(0xD3u);
                v145 = AVE_GetCurrTime();
                v146 = AVE_Log_GetLevelStr(8);
                v147 = *a1;
                v148 = *(v193 + 3);
                v149 = *(v193 + 4) + v148;
                if (v144)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)\n", v145, 211, v146, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, v147, v148 - v190, (*(v193 + 4) + v148), v148);
                  v150 = AVE_GetCurrTime();
                  v151 = AVE_Log_GetLevelStr(8);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)", v150, 211, v151, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, *a1, *(v193 + 3) - v190, (*(v193 + 4) + *(v193 + 3)), *(v193 + 3));
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)", v145, 211, v146, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, v147, v148 - v190, (*(v193 + 4) + v148), v148);
                }
              }

              if (AVE_Log_CheckLevel(0xD3u, 8))
              {
                v152 = AVE_Log_CheckConsole(0xD3u);
                v153 = AVE_GetCurrTime();
                v154 = AVE_Log_GetLevelStr(8);
                v155 = *(v191 + 3);
                v156 = *(v193 + 3);
                if (v152)
                {
                  printf("%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d\n", v153, 211, v154, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v155, v192, *(v193 + 3), a3);
                  v157 = AVE_GetCurrTime();
                  v158 = AVE_Log_GetLevelStr(8);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d", v157, 211, v158, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, *(v191 + 3), v192, *(v193 + 3), a3);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d", v153, 211, v154, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v155, v192, *(v193 + 3), a3);
                }
              }

              v23 = AVE_SyntaxWriter::CopyFromSyntaxWriter(v193, v191);
              if (v23)
              {
                if (AVE_Log_CheckLevel(0xD3u, 4))
                {
                  v159 = AVE_Log_CheckConsole(0xD3u);
                  v160 = AVE_GetCurrTime();
                  v161 = AVE_Log_GetLevelStr(4);
                  v162 = *a1;
                  if (v159)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to copy payload into SyntaxWriterNALU ret %d\n", v160, 211, v161, "AVE_SEI", "GenerateUnregisteredSEINALU", 1870, "ret == 0", a1, *a1, v23);
                    v160 = AVE_GetCurrTime();
                    v161 = AVE_Log_GetLevelStr(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to copy payload into SyntaxWriterNALU ret %d", v160, 211, v161, "AVE_SEI", "GenerateUnregisteredSEINALU", 1870, "ret == 0", a1, *a1, v23);
                }
              }

              else
              {
                if (AVE_Log_CheckLevel(0xD3u, 8))
                {
                  v163 = AVE_Log_CheckConsole(0xD3u);
                  v164 = AVE_GetCurrTime();
                  v165 = AVE_Log_GetLevelStr(8);
                  v166 = *a1;
                  v167 = *(v193 + 3);
                  v168 = *(v193 + 4) + v167;
                  if (v163)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)\n", v164, 211, v165, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, v166, (*(v193 + 4) + v167), v167);
                    v169 = AVE_GetCurrTime();
                    v170 = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)", v169, 211, v170, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, *a1, (*(v193 + 4) + *(v193 + 3)), *(v193 + 3));
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)", v164, 211, v165, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, v166, (*(v193 + 4) + v167), v167);
                  }
                }

                v23 = AVE_SyntaxWriter::AlignToByte(v193);
                if (v23)
                {
                  if (AVE_Log_CheckLevel(0xD3u, 4))
                  {
                    v171 = AVE_Log_CheckConsole(0xD3u);
                    v172 = AVE_GetCurrTime();
                    v173 = AVE_Log_GetLevelStr(4);
                    v174 = *a1;
                    if (v171)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v172, 211, v173, "AVE_SEI", "GenerateUnregisteredSEINALU", 1879, "ret == 0", a1, *a1, v23);
                      v172 = AVE_GetCurrTime();
                      v173 = AVE_Log_GetLevelStr(4);
                    }

                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v172, 211, v173, "AVE_SEI", "GenerateUnregisteredSEINALU", 1879, "ret == 0", a1, *a1, v23);
                  }
                }

                else
                {
                  if (AVE_Log_CheckLevel(0xD3u, 8))
                  {
                    v175 = AVE_Log_CheckConsole(0xD3u);
                    v176 = AVE_GetCurrTime();
                    v177 = AVE_Log_GetLevelStr(8);
                    v178 = *a1;
                    v179 = *(v193 + 3);
                    v180 = *(v193 + 4) + v179;
                    if (v175)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)\n", v176, 211, v177, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, v178, (*(v193 + 4) + v179), v179);
                      v181 = AVE_GetCurrTime();
                      v182 = AVE_Log_GetLevelStr(8);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)", v181, 211, v182, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, *a1, (*(v193 + 4) + *(v193 + 3)), *(v193 + 3));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)", v176, 211, v177, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, v178, (*(v193 + 4) + v179), v179);
                    }
                  }

                  *a6 = *(v193 + 3);
                  if (AVE_Log_CheckLevel(0xD3u, 8))
                  {
                    v183 = AVE_Log_CheckConsole(0xD3u);
                    v184 = AVE_GetCurrTime();
                    v185 = AVE_Log_GetLevelStr(8);
                    v186 = *a1;
                    v187 = *a6;
                    if (v183)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d\n", v184, 211, v185, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, v187);
                      v188 = AVE_GetCurrTime();
                      v189 = AVE_Log_GetLevelStr(8);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d", v188, 211, v189, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, *a6);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d", v184, 211, v185, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, v187);
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

        v21 = v193;
        v57 = v194;
        (*(*v191 + 8))(v191);
        goto LABEL_42;
      }

      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v121 = AVE_Log_CheckConsole(0xD3u);
        v122 = AVE_GetCurrTime();
        v123 = AVE_Log_GetLevelStr(4);
        if (v121)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter\n", v122, 211, v123, "GenerateUnregisteredSEINALU", 1832, "pcSyntaxWriter != __null");
          v122 = AVE_GetCurrTime();
          v123 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter", v122, 211, v123, "GenerateUnregisteredSEINALU", 1832, "pcSyntaxWriter != __null");
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v109 = AVE_Log_CheckConsole(0xD3u);
        v110 = AVE_GetCurrTime();
        v111 = AVE_Log_GetLevelStr(4);
        v112 = *a1;
        if (v109)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed\n", v110, 211, v111, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, v112);
          v113 = AVE_GetCurrTime();
          v114 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed", v113, 211, v114, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, *a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed", v110, 211, v111, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, v112);
        }
      }

      v56 = 0;
    }

    v23 = 4294966293;
    v21 = v193;
    v57 = v194;
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

  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v34 = AVE_Log_CheckConsole(0xD3u);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(4);
    if (v34)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter\n", v35, 211, v36, "GenerateUnregisteredSEINALU", 1757, "pcSyntaxWriter_NALU != __null");
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter", v35, 211, v36, "GenerateUnregisteredSEINALU", 1757, "pcSyntaxWriter_NALU != __null");
  }

  v23 = 4294966293;
LABEL_46:
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v58 = AVE_Log_CheckConsole(0xD3u);
    v59 = AVE_GetCurrTime();
    v60 = AVE_Log_GetLevelStr(7);
    v61 = *a1;
    v62 = *a6;
    if (v58)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d\n", v59, 211, v60, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v61, a2, a3, a4, a5, a6, *a6, v23);
      v63 = AVE_GetCurrTime();
      v64 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d", v63, 211, v64, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, *a1, a2, a3, a4, a5, a6, *a6, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d", v59, 211, v60, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v61, a2, a3, a4, a5, a6, *a6, v23);
    }
  }

  v65 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t AVE_SEI::SetISPMetadata(AVE_SEI *this, uint64_t a2, const __CFDictionary *a3)
{
  error = 0;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetISPMetadata", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", CurrTime, 211, LevelStr);
  }

  if (a3 && (v10 = CFGetTypeID(a3), v10 == CFDictionaryGetTypeID()))
  {
    v11 = CFPropertyListCreateData(*MEMORY[0x29EDB8ED8], a3, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (v11)
    {
      v12 = v11;
      v13 = AVE_Mutex_Lock(*(this + 4));
      Frame = AVE_SEI::FindOrCreateFrame(this, a2);
      if (Frame)
      {
        Frame[4] |= 1uLL;
        Frame[27] = v12;
        AVE_Mutex_Unlock(*(this + 4));
        if (!v13)
        {
          v15 = 7;
          goto LABEL_21;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v27 = AVE_Log_CheckConsole(0xD3u);
          v28 = AVE_GetCurrTime();
          v29 = AVE_Log_GetLevelStr(4);
          v30 = *this;
          if (v27)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v28, 211, v29, "AVE_SEI", "SetISPMetadata", 496, "pPFData != __null", this, *this, a2);
            v28 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            v31 = *this;
          }

          else
          {
            v37 = *this;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v28, 211, v29, "AVE_SEI");
        }

        AVE_Mutex_Unlock(*(this + 4));
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

      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v33 = AVE_Log_CheckConsole(0xD3u);
        v34 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        if (v33)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | Failed to serialize ISP metadata %p %lld %lld %s %ld %p\n", v34, 211, v35, "AVE_SEI", "SetISPMetadata", 487, "false", this, *this, a2, CStringPtr, Code, a3);
          v34 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
          v36 = *this;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Failed to serialize ISP metadata %p %lld %lld %s %ld %p", v34, 211, v35, "AVE_SEI", "SetISPMetadata", 487, "false");
      }

      v13 = 4294966296;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD3u, 5))
    {
      v16 = AVE_Log_CheckConsole(0xD3u);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(5);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu ISPMetadata %p was null or not a dictionary for frame %lld, skipping\n", v17, 211, v18, "AVE_SEI", "SetISPMetadata", 464, "pISPMetadata != NULL && CFGetTypeID(pISPMetadata) == CFDictionaryGetTypeID()", this, *this, a3, a2);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(5);
        v19 = *this;
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
  if (AVE_Log_CheckLevel(0xD3u, v15))
  {
    v20 = AVE_Log_CheckConsole(0xD3u);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(v15);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v21, 211, v22, "AVE_SEI", "SetISPMetadata", this, *this, a2, a3, v13);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(v15);
      v23 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v21, 211, v22, "AVE_SEI");
  }

  return v13;
}

uint64_t AVE_SEI::SetLookAheadInfo(AVE_SEI *this, uint64_t a2, int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetLookAheadInfo", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", CurrTime, 211, LevelStr);
  }

  v10 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    Frame[4] |= 0x20000000000uLL;
    *(Frame + 23) = a3;
    AVE_Mutex_Unlock(*(this + 4));
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
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v13 = AVE_Log_CheckConsole(0xD3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      v16 = *this;
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetLookAheadInfo", 850, "pPFData != __null", this, *this, a2);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        v17 = *this;
      }

      else
      {
        v25 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI");
    }

    AVE_Mutex_Unlock(*(this + 4));
    v12 = 4;
    v10 = 4294966296;
  }

  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v18 = AVE_Log_CheckConsole(0xD3u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(v12);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v19, 211, v20, "AVE_SEI", "SetLookAheadInfo", this, *this, a2, a3, v10);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(v12);
      v23 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v21, 211, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v19, 211, v20);
    }
  }

  return v10;
}

uint64_t AVE_SEI::SetActiveParameterSets(AVE_SEI *this, uint64_t a2, int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %u\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetActiveParameterSets", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %u", CurrTime, 211, LevelStr);
  }

  AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    v11 = 0;
    Frame[4] |= 4uLL;
    *(Frame + 57) = a3;
    v12 = 7;
    goto LABEL_13;
  }

  v12 = 4;
  if (!AVE_Log_CheckLevel(0xD3u, 4))
  {
    goto LABEL_11;
  }

  v13 = AVE_Log_CheckConsole(0xD3u);
  v14 = AVE_GetCurrTime();
  v15 = AVE_Log_GetLevelStr(4);
  v16 = *this;
  if (v13)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", this, *this, a2);
    v17 = AVE_GetCurrTime();
    v12 = 4;
    v18 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v17, 211, v18, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", this, *this, a2);
LABEL_11:
    v11 = 4294966296;
    goto LABEL_13;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", this, *this, a2);
  v11 = 4294966296;
  v12 = 4;
LABEL_13:
  AVE_Mutex_Unlock(*(this + 4));
  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v19 = AVE_Log_CheckConsole(0xD3u);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(v12);
    if (v19)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d\n", v20, 211, v21, "AVE_SEI", "SetActiveParameterSets", this, *this, a2, a3, v11);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(v12);
      v24 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v22, 211, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v20, 211, v21);
    }
  }

  return v11;
}

uint64_t AVE_SEI::SetPictureTiming(pthread_mutex_t **a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %d %u %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetPictureTiming", a1, *a1, a2, a3, a4, a5, a6);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %d %u %d", CurrTime, 211, LevelStr, "AVE_SEI");
  }

  if (a3 >= 4)
  {
    v18 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v19 = AVE_Log_CheckConsole(0xD3u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      v22 = *a1;
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid frame type %d\n", v20, 211, v21, "AVE_SEI", "SetPictureTiming", 1185, "AVE_FrameType_None <= eFrameType && eFrameType < AVE_FrameType_Max", a1, *a1, a3);
        v23 = AVE_GetCurrTime();
        v18 = 4;
        v24 = AVE_Log_GetLevelStr(4);
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
    AVE_Mutex_Lock(a1[4]);
    Frame = AVE_SEI::FindOrCreateFrame(a1, a2);
    if (Frame)
    {
      Frame[4] |= 0xAuLL;
      *(Frame + 58) = a4;
      *(Frame + 59) = a5;
      *(Frame + 56) = a3;
      *(Frame + 60) = a6;
      AVE_Mutex_Unlock(a1[4]);
      v17 = 0;
      v18 = 7;
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v25 = AVE_Log_CheckConsole(0xD3u);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        v28 = *a1;
        if (v25)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v26, 211, v27, "AVE_SEI", "SetPictureTiming", 1192, "pPFData != __null", a1, *a1, a2);
          v26 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(4);
        }

        v36 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v26, 211, v27, "AVE_SEI");
      }

      AVE_Mutex_Unlock(a1[4]);
      v18 = 4;
      v17 = 4294966296;
    }
  }

  if (AVE_Log_CheckLevel(0xD3u, v18))
  {
    v29 = AVE_Log_CheckConsole(0xD3u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v18);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d %u %d %d\n", v30, 211, v31, "AVE_SEI", "SetPictureTiming", a1, *a1, a2, a3, a4, a5, a6, v17);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(v18);
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

uint64_t AVE_SEI::SetBufferingPeriod(AVE_SEI *this, uint64_t a2, unsigned int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %u\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetBufferingPeriod", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %u", CurrTime, 211, LevelStr);
  }

  if (a3 >= 0x10)
  {
    v12 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v13 = AVE_Log_CheckConsole(0xD3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      v16 = *this;
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid sps_seq_parameter_set_id value %u\n", v14, 211, v15, "AVE_SEI", "SetBufferingPeriod", 1229, "iSPSID <= 15", this, *this, a3);
        v17 = AVE_GetCurrTime();
        v12 = 4;
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid sps_seq_parameter_set_id value %u", v17, 211, v18, "AVE_SEI", "SetBufferingPeriod", 1229, "iSPSID <= 15", this, *this, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid sps_seq_parameter_set_id value %u", v14, 211, v15, "AVE_SEI", "SetBufferingPeriod", 1229, "iSPSID <= 15", this, *this, a3);
        v12 = 4;
      }
    }

    v11 = 4294966295;
  }

  else
  {
    AVE_Mutex_Lock(*(this + 4));
    Frame = AVE_SEI::FindOrCreateFrame(this, a2);
    if (Frame)
    {
      Frame[4] |= 0x10uLL;
      *(Frame + 57) = a3;
      AVE_Mutex_Unlock(*(this + 4));
      v11 = 0;
      v12 = 7;
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v19 = AVE_Log_CheckConsole(0xD3u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        v22 = *this;
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v20, 211, v21, "AVE_SEI", "SetBufferingPeriod", 1236, "pPFData != __null", this, *this, a2);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(4);
          v23 = *this;
        }

        else
        {
          v31 = *this;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v21, "AVE_SEI");
      }

      AVE_Mutex_Unlock(*(this + 4));
      v12 = 4;
      v11 = 4294966296;
    }
  }

  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v24 = AVE_Log_CheckConsole(0xD3u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v12);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d\n", v25, 211, v26, "AVE_SEI", "SetBufferingPeriod", this, *this, a2, a3, v11);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(v12);
      v29 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v27, 211, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v25, 211, v26);
    }
  }

  return v11;
}

uint64_t AVE_SEI::PrintAllPFData(AVE_SEI *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x29EDCA608];
  memset(v15, 0, sizeof(v15));
  v14 = *this;
  AVE_SNPrintf(v15, 32, "%p %llu", a4, a5, a6, a7, a8, this);
  for (i = AVE_DLList_Begin(this + 48); ; i = AVE_DLList_Next(v11))
  {
    v11 = i;
    if (i == AVE_DLList_End(this + 48))
    {
      break;
    }

    AVE_SEI_PrintPFData(v11, a2, v15);
  }

  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t AVE_SEI::EstimateUnregisteredSEIMessageSizes(uint64_t *a1, void *a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
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

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx\n", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes", a1, v9, a2, v10, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
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

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes", a1, v9, a2, v11, a3);
  }

  v12 = a1[1] & a2[4] & a3;
  if (AVE_Log_CheckLevel(0xD3u, 8))
  {
    v13 = AVE_Log_CheckConsole(0xD3u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(8);
    v16 = a2[3];
    if (v13)
    {
      printf("%lld %d AVE %s: Active bits for frame %lld: 0x%016llx\n", v14, 211, v15, a2[3], v12);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: Active bits for frame %lld: 0x%016llx", v14, 211, v15, a2[3], v12);
  }

  if (AVE_Log_CheckLevel(0xD3u, 8))
  {
    v17 = AVE_Log_CheckConsole(0xD3u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(8);
    v20 = a1[1];
    v21 = a2[4];
    if (v17)
    {
      printf("%lld %d AVE %s: SEI bits 0x%016llx Frame bits 0x%016llx\n", v18, 211, v19, a1[1], v21);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(8);
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

  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v27 = AVE_Log_CheckConsole(0xD3u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(7);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d\n", v28, 211, v29, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes", a1, *a1, a2, a2[3], a3, v26);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(7);
      v30 = *a1;
      v32 = a2[3];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d", v28, 211, v29, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes");
  }

  return v26;
}

uint64_t AVE_SEI::EstimateRegisteredSEINALUSizes(uint64_t *a1, void *a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
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

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx\n", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateRegisteredSEINALUSizes", a1, v9, a2, v10, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
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

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateRegisteredSEINALUSizes", a1, v9, a2, v11, a3);
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

  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v17 = AVE_Log_CheckConsole(0xD3u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(7);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d\n", v18, 211, v19, "AVE_SEI", "EstimateRegisteredSEINALUSizes", a1, *a1, a2, a2[3], a3, v16);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(7);
      v20 = *a1;
      v22 = a2[3];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d", v18, 211, v19, "AVE_SEI", "EstimateRegisteredSEINALUSizes");
  }

  return v16;
}

uint64_t AVE_SEI::EstimateISPMetadataSEITagSize(uint64_t *a1, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
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

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %lld\n", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateISPMetadataSEITagSize", a1, v7, a2, v8);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
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

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %lld", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateISPMetadataSEITagSize", a1, v7, a2, v9);
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
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v16 = AVE_Log_CheckConsole(0xD3u);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(8);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu ISP metadata length: %d, payload size: %d\n", v17, 211, v18, "AVE_SEI", "EstimateISPMetadataSEITagSize", 1687, a1, *a1, v11, v15);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(8);
        v19 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu ISP metadata length: %d, payload size: %d", v17, 211, v18);
    }
  }

  else
  {
    v15 = 0;
  }

  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v20 = AVE_Log_CheckConsole(0xD3u);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(7);
    v23 = *(a2 + 24);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld %d\n", v21, 211, v22, "AVE_SEI", "EstimateISPMetadataSEITagSize", a1, *a1, a2, *(a2 + 24), v15);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(7);
      v24 = *a1;
    }

    v26 = *(a2 + 24);
    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld %d", v21, 211, v22, "AVE_SEI");
  }

  return v15;
}

void AVE_SEI_PrintPFData(uint64_t a1, int a2, const char *a3)
{
  v4 = a2;
  v243 = *MEMORY[0x29EDCA608];
  v6 = a2;
  if (AVE_Log_CheckLevel(0xD3u, a2))
  {
    v7 = AVE_Log_CheckConsole(0xD3u);
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
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v6);
      v12 = *(a1 + 24);
      v13 = *(a1 + 32);
      if ((v9 | (v8 >> 5)))
      {
        syslog(3, "%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx", CurrTime, 211, LevelStr, a3, *(a1 + 24), v13);
      }

      else
      {
        printf("%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx\n", CurrTime, 211, LevelStr, a3, *(a1 + 24), v13);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(v6);
        syslog(3, "%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx", v14, 211, v15, a3, *(a1 + 24), *(a1 + 32));
      }

      v4 = a2;
    }
  }

  v239 = a3;
  if (*(a1 + 32))
  {
    if (AVE_Log_CheckLevel(0xD3u, v6))
    {
      v16 = AVE_Log_CheckConsole(0xD3u);
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
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(v6);
        v21 = *(a1 + 216);
        if ((v18 | (v17 >> 5)))
        {
          syslog(3, "%lld %d AVE %s: %s ISP Metadata: %p", v19, 211, v20, a3, v21);
        }

        else
        {
          printf("%lld %d AVE %s: %s ISP Metadata: %p\n", v19, 211, v20, a3, v21);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(v6);
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
        v242 = 0;
        memset(v241, 0, sizeof(v241));
        Length = CFDataGetLength(*(a1 + 216));
        v33 = Length;
        if (Length >= 1)
        {
          v34 = 0;
          v35 = Length & 0x7FFFFFFF;
          v237 = Length;
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

              AVE_SNPrintf(v241 + v36, 4, "%02x ", v28, v29, v30, v31, v32, v26[v37]);
              v36 += 3;
              ++v37;
            }

            while (v36 != 96);
            if (AVE_Log_CheckLevel(0xD3u, v6))
            {
              v38 = AVE_Log_CheckConsole(0xD3u);
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
                  printf("%s ISPData[%d-%d] %s\n", a3, v34, v44, v241);
                }

                syslog(3, "%s ISPData[%d-%d] %s", a3, v34, v44, v241);
              }

              else
              {
                v39 = v33;
                v40 = v38 ^ 1;
                v41 = AVE_GetCurrTime();
                v42 = AVE_Log_GetLevelStr(v6);
                if ((v34 | 0x1F) < v33)
                {
                  v39 = v34 | 0x1F;
                }

                if ((v40 | ((a2 & 0x20) >> 5)))
                {
                  a3 = v239;
                }

                else
                {
                  a3 = v239;
                  printf("%lld %d AVE %s: %s ISPData[%d-%d] %s\n", v41, 211, v42, v239, v34, v39, v241);
                  v41 = AVE_GetCurrTime();
                  v42 = AVE_Log_GetLevelStr(v6);
                }

                syslog(3, "%lld %d AVE %s: %s ISPData[%d-%d] %s", v41, 211, v42, v239, v34, v39, v241);
                v33 = v237;
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

  if ((*(a1 + 32) & 4) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v45 = AVE_Log_CheckConsole(0xD3u);
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
      v47 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(v6);
      if (((v46 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Active Parameter Sets %d\n", v47, 211, v48, a3, *(a1 + 228));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v49 = *(a1 + 228);
      }

      syslog(3, "%lld %d AVE %s: %s Active Parameter Sets %d");
    }
  }

  if ((*(a1 + 32) & 8) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v51 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v51 && (-v4 & 0x20) == 0)
      {
        printf("%s Picture Timing %d %d %d %d %d\n", a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
      }

      v55 = *(a1 + 232);
      v210 = *(a1 + 224);
      v218 = *(a1 + 240);
      v206 = *(a1 + 236);
      syslog(3, "%s Picture Timing %d %d %d %d %d");
    }

    else
    {
      v52 = v51 ^ 1;
      v53 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(v6);
      if (((v52 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Picture Timing %d %d %d %d %d\n", v53, 211, v54, a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
        v53 = AVE_GetCurrTime();
        v54 = AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Picture Timing %d %d %d %d %d", v53, 211, v54, a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
    }
  }

  if ((*(a1 + 32) & 0x10) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v56 = AVE_Log_CheckConsole(0xD3u);
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
      v58 = AVE_GetCurrTime();
      v59 = AVE_Log_GetLevelStr(v6);
      if (((v57 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Buffering Period %d\n", v58, 211, v59, a3, *(a1 + 228));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v60 = *(a1 + 228);
      }

      syslog(3, "%lld %d AVE %s: %s Buffering Period %d");
    }
  }

  if ((*(a1 + 32) & 0x20) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v62 = AVE_Log_CheckConsole(0xD3u);
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
      v64 = AVE_GetCurrTime();
      v65 = AVE_Log_GetLevelStr(v6);
      if (((v63 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Content Color Volume bit is set\n", v64, 211, v65, a3);
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Content Color Volume bit is set");
    }
  }

  if ((*(a1 + 32) & 0x40) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v66 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v66 && (-v4 & 0x20) == 0)
      {
        printf("%s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
      }

      v224 = *(a1 + 154);
      v227 = *(a1 + 155);
      v219 = *(a1 + 152);
      v221 = *(a1 + 153);
      v207 = *(a1 + 150);
      v211 = *(a1 + 151);
      v203 = *(a1 + 149);
      syslog(3, "%s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x", a3, *(a1 + 148));
    }

    else
    {
      v67 = v66 ^ 1;
      v68 = AVE_GetCurrTime();
      v69 = AVE_Log_GetLevelStr(v6);
      v70 = *(a1 + 154);
      if (((v67 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n", v68, 211, v69, a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
        v68 = AVE_GetCurrTime();
        v69 = AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x", v68, 211, v69, a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
    }
  }

  if ((*(a1 + 32) & 0x80) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v71 = AVE_Log_CheckConsole(0xD3u);
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
      v73 = AVE_GetCurrTime();
      v74 = AVE_Log_GetLevelStr(v6);
      if (((v72 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Lux Level %d\n", v73, 211, v74, a3, *(a1 + 60));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v75 = *(a1 + 60);
      }

      syslog(3, "%lld %d AVE %s: %s Lux Level %d");
    }
  }

  if ((*(a1 + 36) & 1) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v77 = AVE_Log_CheckConsole(0xD3u);
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
      v79 = AVE_GetCurrTime();
      v80 = AVE_Log_GetLevelStr(v6);
      v81 = *(a1 + 64);
      if ((v78 | ((v4 & 0x20) >> 5)))
      {
        v212 = *(a1 + 64);
      }

      else
      {
        printf("%lld %d AVE %s: %s Exposure Time %f\n", v79, 211, v80, a3, *(a1 + 64));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v82 = *(a1 + 64);
      }

      syslog(3, "%lld %d AVE %s: %s Exposure Time %f");
    }
  }

  if ((*(a1 + 36) & 2) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v84 = AVE_Log_CheckConsole(0xD3u);
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
      v86 = AVE_GetCurrTime();
      v87 = AVE_Log_GetLevelStr(v6);
      v88 = *(a1 + 72);
      if ((v85 | ((v4 & 0x20) >> 5)))
      {
        v213 = *(a1 + 72);
      }

      else
      {
        printf("%lld %d AVE %s: %s SNR %f\n", v86, 211, v87, a3, *(a1 + 72));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v89 = *(a1 + 72);
      }

      syslog(3, "%lld %d AVE %s: %s SNR %f");
    }
  }

  if ((*(a1 + 36) & 4) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v91 = AVE_Log_CheckConsole(0xD3u);
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
      v93 = AVE_GetCurrTime();
      v94 = AVE_Log_GetLevelStr(v6);
      if (((v92 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s RC %d\n", v93, 211, v94, a3, *(a1 + 80));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v95 = *(a1 + 80);
      }

      syslog(3, "%lld %d AVE %s: %s RC %d");
    }
  }

  if ((*(a1 + 36) & 8) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v97 = AVE_Log_CheckConsole(0xD3u);
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
      v99 = AVE_GetCurrTime();
      v100 = AVE_Log_GetLevelStr(v6);
      if (((v98 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Throughput Mode %d\n", v99, 211, v100, a3, *(a1 + 84));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v101 = *(a1 + 84);
      }

      syslog(3, "%lld %d AVE %s: %s Throughput Mode %d");
    }
  }

  if ((*(a1 + 36) & 0x10) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v103 = AVE_Log_CheckConsole(0xD3u);
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
      v105 = AVE_GetCurrTime();
      v106 = AVE_Log_GetLevelStr(v6);
      if (((v104 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Bitrate %d\n", v105, 211, v106, a3, *(a1 + 88));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v107 = *(a1 + 88);
      }

      syslog(3, "%lld %d AVE %s: %s Bitrate %d");
    }
  }

  if ((*(a1 + 36) & 0x20) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v109 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v109 && (-v4 & 0x20) == 0)
      {
        printf("%s Timecode %d %lld\n", a3, *(a1 + 104), *(a1 + 96));
      }

      v115 = *(a1 + 96);
      v202 = *(a1 + 104);
      syslog(3, "%s Timecode %d %lld");
    }

    else
    {
      v110 = v109 ^ 1;
      v111 = AVE_GetCurrTime();
      v112 = AVE_Log_GetLevelStr(v6);
      v113 = *(a1 + 104);
      if (((v110 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Timecode %d %lld\n", v111, 211, v112, a3, *(a1 + 104), *(a1 + 96));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v114 = *(a1 + 96);
      }

      v214 = *(a1 + 104);
      syslog(3, "%lld %d AVE %s: %s Timecode %d %lld");
    }
  }

  if (*(a1 + 33))
  {
    v116 = 0;
    *v238 = -v4;
    v117 = (a1 + 123);
    do
    {
      if (AVE_Log_CheckLevel(0xD3u, v6))
      {
        v118 = AVE_Log_CheckConsole(0xD3u);
        if (v4 < 0)
        {
          if ((v238[0] & 0x20) != 0)
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
          v121 = AVE_GetCurrTime();
          v122 = AVE_Log_GetLevelStr(v6);
          v123 = *(v117 - 3);
          v124 = *(v117 - 2);
          v125 = *(v117 - 1);
          v126 = *v117;
          if ((v120 | (v119 >> 5)))
          {
            a3 = v239;
            syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x", v121, 211, v122, v239, v116, v123, v124, *(v117 - 1), v126);
          }

          else
          {
            a3 = v239;
            printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x\n", v121, 211, v122, v239, v116, v123, v124, *(v117 - 1), v126);
            v127 = AVE_GetCurrTime();
            v128 = AVE_Log_GetLevelStr(v6);
            syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x", v127, 211, v128, v239, v116, *(v117 - 3), *(v117 - 2), *(v117 - 1), *v117);
          }

          v4 = a2;
        }
      }

      ++v116;
      v117 += 4;
    }

    while (v116 != 3);
    if (AVE_Log_CheckLevel(0xD3u, v6))
    {
      v134 = AVE_Log_CheckConsole(0xD3u);
      if (v4 < 0)
      {
        if ((v238[0] & 0x20) != 0)
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
        v136 = AVE_GetCurrTime();
        v137 = AVE_Log_GetLevelStr(v6);
        v138 = *(a1 + 134);
        if (((v135 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x\n", v136, 211, v137, a3, *(a1 + 132), *(a1 + 133), *(a1 + 134), *(a1 + 135));
          v136 = AVE_GetCurrTime();
          v137 = AVE_Log_GetLevelStr(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x", v136, 211, v137, a3, *(a1 + 132), *(a1 + 133), *(a1 + 134), *(a1 + 135));
      }
    }

    if (AVE_Log_CheckLevel(0xD3u, v6))
    {
      v145 = AVE_Log_CheckConsole(0xD3u);
      if (v4 < 0)
      {
        if ((v238[0] & 0x20) != 0)
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
        v147 = AVE_GetCurrTime();
        v148 = AVE_Log_GetLevelStr(v6);
        v149 = *(a1 + 138);
        if (((v146 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", v147, 211, v148, a3, *(a1 + 136), *(a1 + 137), *(a1 + 138), *(a1 + 139));
          v147 = AVE_GetCurrTime();
          v148 = AVE_Log_GetLevelStr(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x", v147, 211, v148, a3, *(a1 + 136), *(a1 + 137), *(a1 + 138), *(a1 + 139));
      }
    }

    if (AVE_Log_CheckLevel(0xD3u, v6))
    {
      v156 = AVE_Log_CheckConsole(0xD3u);
      if (v4 < 0)
      {
        if ((v238[0] & 0x20) != 0)
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
        v158 = AVE_GetCurrTime();
        v159 = AVE_Log_GetLevelStr(v6);
        v160 = *(a1 + 142);
        if (((v157 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", v158, 211, v159, a3, *(a1 + 140), *(a1 + 141), *(a1 + 142), *(a1 + 143));
          v158 = AVE_GetCurrTime();
          v159 = AVE_Log_GetLevelStr(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x", v158, 211, v159, a3, *(a1 + 140), *(a1 + 141), *(a1 + 142), *(a1 + 143));
      }
    }
  }

  if ((*(a1 + 33) & 2) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v167 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v167 && (-v4 & 0x20) == 0)
      {
        printf("%s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
      }

      v172 = *(a1 + 144);
      v208 = *(a1 + 146);
      v215 = *(a1 + 147);
      v204 = *(a1 + 145);
      syslog(3, "%s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x");
    }

    else
    {
      v168 = v167 ^ 1;
      v169 = AVE_GetCurrTime();
      v170 = AVE_Log_GetLevelStr(v6);
      v171 = *(a1 + 146);
      if (((v168 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x\n", v169, 211, v170, a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
        v169 = AVE_GetCurrTime();
        v170 = AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x", v169, 211, v170, a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
    }
  }

  if ((*(a1 + 36) & 0x40) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v173 = AVE_Log_CheckConsole(0xD3u);
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
      v225 = *(a1 + 204);
      v229 = *(a1 + 208);
      syslog(3, "%s MCTF %f %f %f %f %f %d %d %d");
    }

    else
    {
      v174 = v173 ^ 1;
      v175 = AVE_GetCurrTime();
      v176 = AVE_Log_GetLevelStr(v6);
      v177 = *(a1 + 204);
      if ((v174 | ((v4 & 0x20) >> 5)))
      {
        v234 = *(a1 + 204);
        v236 = *(a1 + 208);
        v232 = *(a1 + 200);
        v226 = *(a1 + 184);
        v230 = *(a1 + 192);
        v220 = *(a1 + 168);
        v223 = *(a1 + 176);
        v217 = *(a1 + 160);
      }

      else
      {
        printf("%lld %d AVE %s: %s MCTF %f %f %f %f %f %d %d %d\n", v175, 211, v176, a3, *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 204), *(a1 + 208));
        v175 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v233 = *(a1 + 204);
        v235 = *(a1 + 208);
        v231 = *(a1 + 200);
        v228 = *(a1 + 192);
        v216 = *(a1 + 160);
        v222 = *(a1 + 176);
      }

      syslog(3, "%lld %d AVE %s: %s MCTF %f %f %f %f %f %d %d %d", v175);
    }
  }

  if ((*(a1 + 36) & 0x80) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v182 = AVE_Log_CheckConsole(0xD3u);
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
      v184 = AVE_GetCurrTime();
      v185 = AVE_Log_GetLevelStr(v6);
      if (((v183 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Session ID %llu\n", v184, 211, v185, a3, *(a1 + 40));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v186 = *(a1 + 40);
      }

      syslog(3, "%lld %d AVE %s: %s Session ID %llu");
    }
  }

  if ((*(a1 + 37) & 1) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v188 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v188 && (-v4 & 0x20) == 0)
      {
        printf("%s Driver Version %d.%d.%d\n", a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
      }

      v193 = *(a1 + 48);
      v205 = *(a1 + 52);
      v209 = *(a1 + 56);
      syslog(3, "%s Driver Version %d.%d.%d");
    }

    else
    {
      v189 = v188 ^ 1;
      v190 = AVE_GetCurrTime();
      v191 = AVE_Log_GetLevelStr(v6);
      v192 = *(a1 + 52);
      if (((v189 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Driver Version %d.%d.%d\n", v190, 211, v191, a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
        v190 = AVE_GetCurrTime();
        v191 = AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Driver Version %d.%d.%d", v190, 211, v191, a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
    }
  }

  if ((*(a1 + 37) & 2) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v194 = AVE_Log_CheckConsole(0xD3u);
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
      v197 = AVE_GetCurrTime();
      v198 = AVE_Log_GetLevelStr(v6);
      if (((v196 | (v195 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s LookAhead Frame Count %d\n", v197, 211, v198, a3, *(a1 + 92));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v199 = *(a1 + 92);
      }

      syslog(3, "%lld %d AVE %s: %s LookAhead Frame Count %d");
    }
  }

  v201 = *MEMORY[0x29EDCA608];
}

uint64_t AVE_SEI_WritePayloadSize(int a1, AVE_SyntaxWriter *this)
{
  v3 = a1;
  if (a1 < 255)
  {
    v5 = a1;
LABEL_7:

    return AVE_SyntaxWriter::WriteU(this, v5, 8);
  }

  else
  {
    while (1)
    {
      result = AVE_SyntaxWriter::WriteU(this, 0xFFu, 8);
      if (result)
      {
        break;
      }

      v5 = v3 - 255;
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

uint64_t AVE_SEI_StartNALU(uint64_t a1, int a2, unsigned int a3, const char *a4)
{
  v8 = AVE_SyntaxWriter::WriteStartCode(a1);
  if (!v8)
  {
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v16 = AVE_Log_CheckConsole(0xD3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v19 = *(a1 + 12);
      v20 = *(a1 + 32) + v19;
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s start code %p (%d)\n", CurrTime, 211, LevelStr, "AVE_SEI_StartNALU", 112, a4, (*(a1 + 32) + v19), v19);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
        v21 = *(a1 + 32) + *(a1 + 12);
      }

      else
      {
        v54 = *(a1 + 32) + v19;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s start code %p (%d)", CurrTime, 211);
    }

    if (a2 == 2)
    {
      v26 = AVE_SyntaxWriter::WriteU(a1, 0x4E01u, 16);
      if (v26)
      {
        v9 = v26;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          return v9;
        }

        v27 = AVE_Log_CheckConsole(0xD3u);
        v11 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
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
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v30 = AVE_Log_CheckConsole(0xD3u);
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          if (v30)
          {
            printf("%lld %d AVE %s: %s:%d %s | %s encType %d not recognized. FAIL %p\n", v31, 211, v32, "AVE_SEI_StartNALU", 128, "false", a4, a2, *(a1 + 32));
            v31 = AVE_GetCurrTime();
            v32 = AVE_Log_GetLevelStr(4);
            v33 = *(a1 + 32);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | %s encType %d not recognized. FAIL %p", v31, 211, v32);
        }

        return 4294966295;
      }

      v22 = AVE_SyntaxWriter::WriteU(a1, 6u, 8);
      if (v22)
      {
        v9 = v22;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          return v9;
        }

        v23 = AVE_Log_CheckConsole(0xD3u);
        v11 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
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

    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v34 = AVE_Log_CheckConsole(0xD3u);
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(8);
      v37 = *(a1 + 12);
      v38 = *(a1 + 32) + v37;
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s nal_unit_type %p (%d)\n", v35, 211, v36, "AVE_SEI_StartNALU", 133, a4, (*(a1 + 32) + v37), v37);
        v35 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
        v39 = *(a1 + 32) + *(a1 + 12);
      }

      else
      {
        v55 = *(a1 + 32) + v37;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s nal_unit_type %p (%d)", v35, 211);
    }

    v40 = AVE_SyntaxWriter::WriteU(a1, a3, 8);
    if (!v40)
    {
      if (AVE_Log_CheckLevel(0xD3u, 8))
      {
        v47 = AVE_Log_CheckConsole(0xD3u);
        v48 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(8);
        v50 = *(a1 + 12);
        v51 = *(a1 + 32) + v50;
        if (v47)
        {
          printf("%lld %d AVE %s: %s:%d %s payloadType %p (%d)\n", v48, 211, v49, "AVE_SEI_StartNALU", 140, a4, (*(a1 + 32) + v50), v50);
          v48 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(8);
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
    if (!AVE_Log_CheckLevel(0xD3u, 4))
    {
      return v9;
    }

    v41 = AVE_Log_CheckConsole(0xD3u);
    v11 = AVE_GetCurrTime();
    v42 = AVE_Log_GetLevelStr(4);
    v43 = *(a1 + 32);
    if (!v41)
    {
      v58 = *(a1 + 32);
      goto LABEL_10;
    }

    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v42, "AVE_SEI_StartNALU", 137, "(ret) == 0", *(a1 + 32), v9);
LABEL_37:
    v44 = AVE_GetCurrTime();
    AVE_Log_GetLevelStr(4);
    v45 = *(a1 + 32);
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v44, 211);
    return v9;
  }

  v9 = v8;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(4);
    v13 = *(a1 + 32);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v12, "AVE_SEI_StartNALU", 109, "(ret) == 0", *(a1 + 32), v9);
      v14 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
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

uint64_t AVE_SEI_WriteAmbientViewingEnvironment(unsigned __int8 *a1, int a2, const unsigned __int8 *a3, int a4, int *a5)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v7 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteAmbientViewingEnvironment", a1, a2, a3, a4, a5);
      v10 = AVE_GetCurrTime();
      v60 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %p", v10, 211, v60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %p", CurrTime, 211, LevelStr);
    }
  }

  if (!a3 || !a1 || !a5)
  {
    v21 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v22 = AVE_Log_CheckConsole(0xD3u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (!v22)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid parameters %p %p %p", v23, 211, v24);
        goto LABEL_27;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid parameters %p %p %p\n", v23, 211, v24, "AVE_SEI_WriteAmbientViewingEnvironment", 222, "pBuf != __null && pBytesWritten != __null && pViewingEnv != __null", a1, a3, a5);
      v25 = AVE_GetCurrTime();
      v21 = 4;
      v61 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid parameters %p %p %p", v25, 211, v61);
    }

LABEL_28:
    v16 = 4294966295;
    goto LABEL_29;
  }

  if (a4 != 2)
  {
    v21 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v26 = AVE_Log_CheckConsole(0xD3u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v27, 211, v28, "AVE_SEI_WriteAmbientViewingEnvironment", 226, "encType == AVE_EncType_HEVC", a4, a1);
        v29 = AVE_GetCurrTime();
        v21 = 4;
        AVE_Log_GetLevelStr(4);
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

  v11 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v11)
  {
    v12 = v11;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v11);
    v13 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    v14 = v13;
    if (v13)
    {
      AVE_SyntaxWriter::AVE_SyntaxWriter(v13, a1, a2, 0);
    }

    *a5 = 0;
    started = AVE_SEI_StartNALU(v14, 2, 0x94u, "AVE_SEI_WriteAmbientViewingEnvironment");
    if (started)
    {
      v16 = started;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_52;
      }

      v17 = AVE_Log_CheckConsole(0xD3u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v19, "AVE_SEI_WriteAmbientViewingEnvironment", 240, "(ret) == 0", a1, v16);
        v20 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
LABEL_38:
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v20, 211);
        goto LABEL_52;
      }
    }

    else
    {
      v40 = AVE_SyntaxWriter::WriteBytes(v12, a3, 8);
      if (v40)
      {
        v16 = v40;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_52;
        }

        v41 = AVE_Log_CheckConsole(0xD3u);
        v18 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(4);
        if (v41)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v42, "AVE_SEI_WriteAmbientViewingEnvironment", 245, "(ret) == 0", a1, v16);
          v20 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_38;
        }
      }

      else if (*(v12 + 2) && (v43 = AVE_SyntaxWriter::AlignToByte(v12), v43))
      {
        v16 = v43;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_52;
        }

        v44 = AVE_Log_CheckConsole(0xD3u);
        v18 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        if (v44)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v45, "AVE_SEI_WriteAmbientViewingEnvironment", 251, "(ret) == 0", a1, v16);
          v20 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_38;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD3u, 8))
        {
          v46 = AVE_Log_CheckConsole(0xD3u);
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(8);
          v49 = *(v12 + 3);
          v50 = (*(v12 + 2) + 8 * v49);
          if (v46)
          {
            printf("%lld %d AVE %s: %s:%d New bits %d (%d bytes)\n", v47, 211, v48, "AVE_SEI_WriteAmbientViewingEnvironment", 254, *(v12 + 2) + 8 * v49, v49);
            v47 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(8);
            v63 = (*(v12 + 2) + 8 * *(v12 + 3));
          }

          else
          {
            v64 = (*(v12 + 2) + 8 * v49);
          }

          syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v47);
        }

        v51 = AVE_SEI_FinishNALU(v12, v14, "AVE_SEI_WriteAmbientViewingEnvironment");
        if (!v51)
        {
          *a5 = *(v14 + 3);
          if (AVE_Log_CheckLevel(0xD3u, 7))
          {
            v54 = AVE_Log_CheckConsole(0xD3u);
            v55 = AVE_GetCurrTime();
            v56 = AVE_Log_GetLevelStr(7);
            v57 = *a5;
            if (v54)
            {
              printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v55, 211, v56, "AVE_SEI_WriteAmbientViewingEnvironment", 260, v57);
              v58 = AVE_GetCurrTime();
              v59 = AVE_Log_GetLevelStr(7);
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
        if (!AVE_Log_CheckLevel(0xD3u, 4))
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

        v52 = AVE_Log_CheckConsole(0xD3u);
        v18 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v53, "AVE_SEI_WriteAmbientViewingEnvironment", 257, "(ret) == 0", a1, v16);
          v20 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_38;
        }
      }
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v18, 211);
    goto LABEL_52;
  }

  v21 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v30 = AVE_Log_CheckConsole(0xD3u);
    v31 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(4);
    if (v30)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v31, 211, v32, "AVE_SEI_WriteAmbientViewingEnvironment", 230, "pcSyntaxWriter != __null", a1);
      v33 = AVE_GetCurrTime();
      v21 = 4;
      v34 = AVE_Log_GetLevelStr(4);
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
  if (AVE_Log_CheckLevel(0xD3u, v21))
  {
    v35 = AVE_Log_CheckConsole(0xD3u);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(v21);
    if (v35)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %p %d\n", v36, 211, v37, "AVE_SEI_WriteAmbientViewingEnvironment", a1, a2, a3, a4, a5, v16);
      v38 = AVE_GetCurrTime();
      v62 = AVE_Log_GetLevelStr(v21);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %p %d", v38, 211, v62, "AVE_SEI_WriteAmbientViewingEnvironment");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %p %d", v36, 211, v37, "AVE_SEI_WriteAmbientViewingEnvironment");
    }
  }

  return v16;
}

uint64_t AVE_SEI_FinishNALU(const AVE_SyntaxWriter *a1, AVE_SyntaxWriter *a2, const char *a3)
{
  v6 = *(a1 + 3) - *(a1 + 4) / 8;
  v7 = *(a2 + 3);
  if (AVE_Log_CheckLevel(0xD3u, 8))
  {
    v8 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    v11 = *(a2 + 3);
    v12 = *(a2 + 4) + v11;
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %s start payload size %d %p (%d)\n", CurrTime, 211, LevelStr, "AVE_SEI_FinishNALU", 171, a3, v6, (*(a2 + 4) + v11), v11);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v13 = *(a2 + 4) + *(a2 + 3);
    }

    else
    {
      v48 = *(a2 + 4) + v11;
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s start payload size %d %p (%d)", CurrTime, 211, LevelStr);
  }

  v14 = AVE_SEI_WritePayloadSize(v6, a2);
  if (!v14)
  {
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v22 = AVE_Log_CheckConsole(0xD3u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(8);
      v25 = *(a2 + 3);
      v26 = *(a2 + 4) + v25;
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s end payload size %d %p (%d)\n", v23, 211, v24, "AVE_SEI_FinishNALU", 179, a3, v25 - v7, (*(a2 + 4) + v25), v25);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(8);
        v49 = *(a2 + 4) + *(a2 + 3);
      }

      else
      {
        v50 = *(a2 + 4) + v25;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s end payload size %d %p (%d)", v23, 211, v24);
    }

    v27 = AVE_SyntaxWriter::CopyFromSyntaxWriter(a2, a1);
    if (v27)
    {
      v15 = v27;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        return v15;
      }

      v28 = AVE_Log_CheckConsole(0xD3u);
      v17 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      v30 = *(a2 + 4);
      if (!v28)
      {
        v45 = *(a2 + 4);
        goto LABEL_31;
      }

      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v17, 211, v29, "AVE_SEI_FinishNALU", 183, "(ret) == 0", *(a2 + 4), v15);
    }

    else
    {
      v31 = AVE_SyntaxWriter::AlignToByte(a2);
      if (!v31)
      {
        if (AVE_Log_CheckLevel(0xD3u, 8))
        {
          v37 = AVE_Log_CheckConsole(0xD3u);
          v38 = AVE_GetCurrTime();
          v39 = AVE_Log_GetLevelStr(8);
          v40 = *(a2 + 3);
          v41 = *(a2 + 4) + v40;
          if (v37)
          {
            printf("%lld %d AVE %s: %s:%d %s rbsp_trailing_bits %p (%d)\n", v38, 211, v39, "AVE_SEI_FinishNALU", 191, a3, (*(a2 + 4) + v40), v40);
            v38 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(8);
            v42 = *(a2 + 4) + *(a2 + 3);
          }

          else
          {
            v47 = *(a2 + 4) + v40;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s rbsp_trailing_bits %p (%d)", v38, 211);
        }

        return 0;
      }

      v15 = v31;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        return v15;
      }

      v32 = AVE_Log_CheckConsole(0xD3u);
      v17 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(4);
      v34 = *(a2 + 4);
      if (!v32)
      {
        v46 = *(a2 + 4);
        goto LABEL_31;
      }

      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v17, 211, v33, "AVE_SEI_FinishNALU", 187, "(ret) == 0", *(a2 + 4), v15);
    }

    v35 = AVE_GetCurrTime();
    AVE_Log_GetLevelStr(4);
    v36 = *(a2 + 4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v35, 211);
    return v15;
  }

  v15 = v14;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v16 = AVE_Log_CheckConsole(0xD3u);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(4);
    v19 = *(a2 + 4);
    if (v16)
    {
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v17, 211, v18, "AVE_SEI_FinishNALU", 174, "(ret) == 0", *(a2 + 4), v15);
      v20 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      v21 = *(a2 + 4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v20, 211);
      return v15;
    }

    v44 = *(a2 + 4);
LABEL_31:
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v17, 211);
  }

  return v15;
}

uint64_t AVE_SEI_WriteContentColorVolume(unsigned __int8 *a1, int a2, int a3, int *a4)
{
  v121[3] = *MEMORY[0x29EDCA608];
  memset(v121, 0, 24);
  v120[0] = xmmword_2954DF870;
  v120[1] = xmmword_2954DF880;
  v120[2] = xmmword_2954DF890;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", CurrTime, 211, LevelStr, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4);
  }

  if (!a1 || !a4)
  {
    v10 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v11 = AVE_Log_CheckConsole(0xD3u);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v12, 211, v13, "AVE_SEI_WriteContentColorVolume", 319, "pBuf != __null && pBytesWritten != __null", a1, a4);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
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
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v14 = AVE_Log_CheckConsole(0xD3u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v15, 211, v16, "AVE_SEI_WriteContentColorVolume", 323, "encType == AVE_EncType_HEVC", a3, a1);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v15, 211, v16, "AVE_SEI_WriteContentColorVolume", 323, "encType == AVE_EncType_HEVC", a3, a1);
LABEL_41:
      v10 = 4;
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  if (AVE_Log_CheckLevel(0xD3u, 8))
  {
    v7 = AVE_Log_CheckConsole(0xD3u);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(8);
    if (v7)
    {
      printf("%lld %d AVE %s: %s:%d ccv primaries\n", v8, 211, v9, "AVE_SEI_WriteContentColorVolume", 328);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d ccv primaries", v8, 211, v9, "AVE_SEI_WriteContentColorVolume", 328);
  }

  v17 = 0;
  v118 = vdupq_n_s64(0x40E86A0000000000uLL);
  do
  {
    v119 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(v120[v17], v118)));
    v121[v17] = v119;
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v18 = AVE_Log_CheckConsole(0xD3u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(7);
      if (v18)
      {
        printf("%lld %d AVE %s: ccv_primaries %d (x, y) (%d, %d)\n", v19, 211, v20, v17, v119.i32[0], v119.i32[1]);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: ccv_primaries %d (x, y) (%d, %d)", v19, 211, v20, v17, v119.i32[0], v119.i32[1]);
    }

    ++v17;
  }

  while (v17 != 3);
  v21 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v21)
  {
    v22 = v21;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v21);
    v23 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    v24 = v23;
    if (v23)
    {
      AVE_SyntaxWriter::AVE_SyntaxWriter(v23, a1, a2, 0);
      started = AVE_SEI_StartNALU(v24, 2, 0x95u, "AVE_SEI_WriteContentColorVolume");
      if (started)
      {
        v26 = started;
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v27 = AVE_Log_CheckConsole(0xD3u);
          v28 = AVE_GetCurrTime();
          v29 = AVE_Log_GetLevelStr(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v28, 211, v29, "AVE_SEI_WriteContentColorVolume", 352, "(ret) == 0", a1, v26);
            v28 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v28, 211, v29, "AVE_SEI_WriteContentColorVolume", 352, "(ret) == 0", a1, v26);
        }
      }

      else
      {
        v43 = AVE_SyntaxWriter::WriteBit(v22, 0);
        if (v43)
        {
          v26 = v43;
          if (AVE_Log_CheckLevel(0xD3u, 4))
          {
            v44 = AVE_Log_CheckConsole(0xD3u);
            v45 = AVE_GetCurrTime();
            v46 = AVE_Log_GetLevelStr(4);
            if (v44)
            {
              printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v45, 211, v46, "AVE_SEI_WriteContentColorVolume", 356, "(ret) == 0", a1, v26);
              v45 = AVE_GetCurrTime();
              v46 = AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v45, 211, v46, "AVE_SEI_WriteContentColorVolume", 356, "(ret) == 0", a1, v26);
          }
        }

        else
        {
          v47 = AVE_SyntaxWriter::WriteBit(v22, 1);
          if (v47)
          {
            v26 = v47;
            if (AVE_Log_CheckLevel(0xD3u, 4))
            {
              v48 = AVE_Log_CheckConsole(0xD3u);
              v49 = AVE_GetCurrTime();
              v50 = AVE_Log_GetLevelStr(4);
              if (v48)
              {
                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v49, 211, v50, "AVE_SEI_WriteContentColorVolume", 361, "(ret) == 0", a1, v26);
                v49 = AVE_GetCurrTime();
                v50 = AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v49, 211, v50, "AVE_SEI_WriteContentColorVolume", 361, "(ret) == 0", a1, v26);
            }
          }

          else
          {
            v51 = AVE_SyntaxWriter::WriteBit(v22, 1);
            if (v51)
            {
              v26 = v51;
              if (AVE_Log_CheckLevel(0xD3u, 4))
              {
                v52 = AVE_Log_CheckConsole(0xD3u);
                v53 = AVE_GetCurrTime();
                v54 = AVE_Log_GetLevelStr(4);
                if (v52)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v53, 211, v54, "AVE_SEI_WriteContentColorVolume", 363, "(ret) == 0", a1, v26);
                  v53 = AVE_GetCurrTime();
                  v54 = AVE_Log_GetLevelStr(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v53, 211, v54, "AVE_SEI_WriteContentColorVolume", 363, "(ret) == 0", a1, v26);
              }
            }

            else
            {
              v55 = AVE_SyntaxWriter::WriteBit(v22, 1);
              if (v55)
              {
                v26 = v55;
                if (AVE_Log_CheckLevel(0xD3u, 4))
                {
                  v56 = AVE_Log_CheckConsole(0xD3u);
                  v57 = AVE_GetCurrTime();
                  v58 = AVE_Log_GetLevelStr(4);
                  if (v56)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v57, 211, v58, "AVE_SEI_WriteContentColorVolume", 365, "(ret) == 0", a1, v26);
                    v57 = AVE_GetCurrTime();
                    v58 = AVE_Log_GetLevelStr(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v57, 211, v58, "AVE_SEI_WriteContentColorVolume", 365, "(ret) == 0", a1, v26);
                }
              }

              else
              {
                v59 = AVE_SyntaxWriter::WriteBit(v22, 1);
                if (v59)
                {
                  v26 = v59;
                  if (AVE_Log_CheckLevel(0xD3u, 4))
                  {
                    v60 = AVE_Log_CheckConsole(0xD3u);
                    v61 = AVE_GetCurrTime();
                    v62 = AVE_Log_GetLevelStr(4);
                    if (v60)
                    {
                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v61, 211, v62, "AVE_SEI_WriteContentColorVolume", 367, "(ret) == 0", a1, v26);
                      v61 = AVE_GetCurrTime();
                      v62 = AVE_Log_GetLevelStr(4);
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v61, 211, v62, "AVE_SEI_WriteContentColorVolume", 367, "(ret) == 0", a1, v26);
                  }
                }

                else
                {
                  v63 = AVE_SyntaxWriter::WriteBit(v22, 1);
                  if (v63)
                  {
                    v26 = v63;
                    if (AVE_Log_CheckLevel(0xD3u, 4))
                    {
                      v64 = AVE_Log_CheckConsole(0xD3u);
                      v65 = AVE_GetCurrTime();
                      v66 = AVE_Log_GetLevelStr(4);
                      if (v64)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v65, 211, v66, "AVE_SEI_WriteContentColorVolume", 369, "(ret) == 0", a1, v26);
                        v65 = AVE_GetCurrTime();
                        v66 = AVE_Log_GetLevelStr(4);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v65, 211, v66, "AVE_SEI_WriteContentColorVolume", 369, "(ret) == 0", a1, v26);
                    }
                  }

                  else
                  {
                    v67 = AVE_SyntaxWriter::WriteU(v22, 0, 2);
                    if (v67)
                    {
                      v26 = v67;
                      if (AVE_Log_CheckLevel(0xD3u, 4))
                      {
                        v68 = AVE_Log_CheckConsole(0xD3u);
                        v69 = AVE_GetCurrTime();
                        v70 = AVE_Log_GetLevelStr(4);
                        if (v68)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v69, 211, v70, "AVE_SEI_WriteContentColorVolume", 371, "(ret) == 0", a1, v26);
                          v69 = AVE_GetCurrTime();
                          v70 = AVE_Log_GetLevelStr(4);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v69, 211, v70, "AVE_SEI_WriteContentColorVolume", 371, "(ret) == 0", a1, v26);
                      }
                    }

                    else
                    {
                      v71 = v121 + 1;
                      v72 = 3;
                      while (1)
                      {
                        v73 = AVE_SyntaxWriter::WriteI(v22, *(v71 - 1), 32);
                        if (v73)
                        {
                          break;
                        }

                        v74 = AVE_SyntaxWriter::WriteI(v22, *v71, 32);
                        if (v74)
                        {
                          v26 = v74;
                          if (AVE_Log_CheckLevel(0xD3u, 4))
                          {
                            v82 = AVE_Log_CheckConsole(0xD3u);
                            v83 = AVE_GetCurrTime();
                            v84 = AVE_Log_GetLevelStr(4);
                            if (v82)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v83, 211, v84, "AVE_SEI_WriteContentColorVolume", 381, "(ret) == 0", a1, v26);
                              v83 = AVE_GetCurrTime();
                              v84 = AVE_Log_GetLevelStr(4);
                            }

                            syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v83, 211, v84, "AVE_SEI_WriteContentColorVolume", 381, "(ret) == 0", a1, v26);
                          }

                          goto LABEL_62;
                        }

                        v71 += 2;
                        if (!--v72)
                        {
                          v75 = AVE_SyntaxWriter::WriteU(v22, 0, 32);
                          if (v75)
                          {
                            v26 = v75;
                            if (AVE_Log_CheckLevel(0xD3u, 4))
                            {
                              v76 = AVE_Log_CheckConsole(0xD3u);
                              v77 = AVE_GetCurrTime();
                              v78 = AVE_Log_GetLevelStr(4);
                              if (v76)
                              {
                                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v77, 211, v78, "AVE_SEI_WriteContentColorVolume", 388, "(ret) == 0", a1, v26);
                                v77 = AVE_GetCurrTime();
                                v78 = AVE_Log_GetLevelStr(4);
                              }

                              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v77, 211, v78, "AVE_SEI_WriteContentColorVolume", 388, "(ret) == 0", a1, v26);
                            }
                          }

                          else
                          {
                            v85 = AVE_SyntaxWriter::WriteU(v22, 0xF4240u, 32);
                            if (v85)
                            {
                              v26 = v85;
                              if (AVE_Log_CheckLevel(0xD3u, 4))
                              {
                                v86 = AVE_Log_CheckConsole(0xD3u);
                                v87 = AVE_GetCurrTime();
                                v88 = AVE_Log_GetLevelStr(4);
                                if (v86)
                                {
                                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v87, 211, v88, "AVE_SEI_WriteContentColorVolume", 393, "(ret) == 0", a1, v26);
                                  v87 = AVE_GetCurrTime();
                                  v88 = AVE_Log_GetLevelStr(4);
                                }

                                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v87, 211, v88, "AVE_SEI_WriteContentColorVolume", 393, "(ret) == 0", a1, v26);
                              }
                            }

                            else
                            {
                              v89 = AVE_SyntaxWriter::WriteU(v22, 0x186A0u, 32);
                              if (v89)
                              {
                                v26 = v89;
                                if (AVE_Log_CheckLevel(0xD3u, 4))
                                {
                                  v90 = AVE_Log_CheckConsole(0xD3u);
                                  v91 = AVE_GetCurrTime();
                                  v92 = AVE_Log_GetLevelStr(4);
                                  if (v90)
                                  {
                                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v91, 211, v92, "AVE_SEI_WriteContentColorVolume", 398, "(ret) == 0", a1, v26);
                                    v91 = AVE_GetCurrTime();
                                    v92 = AVE_Log_GetLevelStr(4);
                                  }

                                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v91, 211, v92, "AVE_SEI_WriteContentColorVolume", 398, "(ret) == 0", a1, v26);
                                }
                              }

                              else if (*(v22 + 2) && (v93 = AVE_SyntaxWriter::AlignToByte(v22), v93))
                              {
                                v26 = v93;
                                if (AVE_Log_CheckLevel(0xD3u, 4))
                                {
                                  v94 = AVE_Log_CheckConsole(0xD3u);
                                  v95 = AVE_GetCurrTime();
                                  v96 = AVE_Log_GetLevelStr(4);
                                  if (v94)
                                  {
                                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v95, 211, v96, "AVE_SEI_WriteContentColorVolume", 406, "(ret) == 0", a1, v26);
                                    v95 = AVE_GetCurrTime();
                                    v96 = AVE_Log_GetLevelStr(4);
                                  }

                                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v95, 211, v96, "AVE_SEI_WriteContentColorVolume", 406, "(ret) == 0", a1, v26);
                                }
                              }

                              else
                              {
                                if (AVE_Log_CheckLevel(0xD3u, 8))
                                {
                                  v97 = AVE_Log_CheckConsole(0xD3u);
                                  v98 = AVE_GetCurrTime();
                                  v99 = AVE_Log_GetLevelStr(8);
                                  v100 = *(v22 + 3);
                                  v101 = (*(v22 + 2) + 8 * v100);
                                  if (v97)
                                  {
                                    printf("%lld %d AVE %s: %s:%d New bits %d (%d bytes)\n", v98, 211, v99, "AVE_SEI_WriteContentColorVolume", 410, *(v22 + 2) + 8 * v100, v100);
                                    v102 = AVE_GetCurrTime();
                                    v103 = AVE_Log_GetLevelStr(8);
                                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v102, 211, v103, "AVE_SEI_WriteContentColorVolume", 410, *(v22 + 2) + 8 * *(v22 + 3), *(v22 + 3));
                                  }

                                  else
                                  {
                                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v98, 211, v99, "AVE_SEI_WriteContentColorVolume", 410, *(v22 + 2) + 8 * v100, v100);
                                  }
                                }

                                v104 = AVE_SEI_FinishNALU(v22, v24, "AVE_SEI_WriteContentColorVolume");
                                if (v104)
                                {
                                  v26 = v104;
                                  if (AVE_Log_CheckLevel(0xD3u, 4))
                                  {
                                    v105 = AVE_Log_CheckConsole(0xD3u);
                                    v106 = AVE_GetCurrTime();
                                    v107 = AVE_Log_GetLevelStr(4);
                                    if (v105)
                                    {
                                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v106, 211, v107, "AVE_SEI_WriteContentColorVolume", 413, "(ret) == 0", a1, v26);
                                      v106 = AVE_GetCurrTime();
                                      v107 = AVE_Log_GetLevelStr(4);
                                    }

                                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v106, 211, v107, "AVE_SEI_WriteContentColorVolume", 413, "(ret) == 0", a1, v26);
                                  }
                                }

                                else
                                {
                                  *a4 = *(v24 + 3);
                                  if (AVE_Log_CheckLevel(0xD3u, 7))
                                  {
                                    v108 = AVE_Log_CheckConsole(0xD3u);
                                    v109 = AVE_GetCurrTime();
                                    v110 = AVE_Log_GetLevelStr(7);
                                    v111 = *a4;
                                    if (v108)
                                    {
                                      printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v109, 211, v110, "AVE_SEI_WriteContentColorVolume", 416, v111);
                                      v112 = AVE_GetCurrTime();
                                      v113 = AVE_Log_GetLevelStr(7);
                                      syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v112, 211, v113, "AVE_SEI_WriteContentColorVolume", 416, *a4);
                                    }

                                    else
                                    {
                                      syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v109, 211, v110, "AVE_SEI_WriteContentColorVolume", 416, v111);
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

                      v26 = v73;
                      if (AVE_Log_CheckLevel(0xD3u, 4))
                      {
                        v79 = AVE_Log_CheckConsole(0xD3u);
                        v80 = AVE_GetCurrTime();
                        v81 = AVE_Log_GetLevelStr(4);
                        if (v79)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v80, 211, v81, "AVE_SEI_WriteContentColorVolume", 378, "(ret) == 0", a1, v26);
                          v80 = AVE_GetCurrTime();
                          v81 = AVE_Log_GetLevelStr(4);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v80, 211, v81, "AVE_SEI_WriteContentColorVolume", 378, "(ret) == 0", a1, v26);
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
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v40 = AVE_Log_CheckConsole(0xD3u);
        v41 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(4);
        if (v40)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v41, 211, v42, "AVE_SEI_WriteContentColorVolume", 348, "pcSyntaxWriter_NALU != __null", a1);
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v41, 211, v42, "AVE_SEI_WriteContentColorVolume", 348, "pcSyntaxWriter_NALU != __null", a1);
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
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v30 = AVE_Log_CheckConsole(0xD3u);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v31, 211, v32, "AVE_SEI_WriteContentColorVolume", 342, "pcSyntaxWriter != __null", a1);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v31, 211, v32, "AVE_SEI_WriteContentColorVolume", 342, "pcSyntaxWriter != __null", a1);
      v10 = 4;
    }

    v26 = 4294966293;
  }

LABEL_43:
  if (AVE_Log_CheckLevel(0xD3u, v10))
  {
    v33 = AVE_Log_CheckConsole(0xD3u);
    v34 = AVE_GetCurrTime();
    v35 = AVE_Log_GetLevelStr(v10);
    if (v33)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v34, 211, v35, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4, v26);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(v10);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v36, 211, v37, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4, v26);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v34, 211, v35, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4, v26);
    }
  }

  v38 = *MEMORY[0x29EDCA608];
  return v26;
}

uint64_t AVE_SEI_WriteExposureTime(unsigned __int8 *a1, double a2)
{
  v3 = AVE_Double2FixedPoint(a2);
  *a1 = 0;
  *(a1 + 1) = bswap64(v3);
  return 9;
}

uint64_t AVE_SEI_WriteSNR(unsigned __int8 *a1, double a2)
{
  v3 = AVE_Double2FixedPoint(a2);
  *a1 = 4;
  *(a1 + 1) = bswap64(v3);
  return 9;
}

uint64_t AVE_SEI_WriteRC(uint64_t a1, unsigned int a2)
{
  *a1 = 1;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t AVE_SEI_WriteThroughputMode(uint64_t a1, unsigned int a2)
{
  *a1 = 3;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t AVE_SEI_WriteBitrate(unsigned __int8 *a1, unsigned int a2)
{
  *a1 = 2;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t AVE_SEI_WriteLookAheadInfo(unsigned __int8 *a1, unsigned int a2)
{
  *a1 = 13;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t AVE_SEI_WriteTimecode(unsigned __int8 *a1, unsigned int a2, unint64_t a3)
{
  *a1 = 9;
  *(a1 + 1) = bswap32(a2);
  *(a1 + 5) = bswap64(a3);
  return 13;
}

uint64_t AVE_SEI_WriteMCTF(unsigned __int8 *a1, double a2, double a3, double a4, double a5, double a6, char a7, unsigned __int8 a8, char a9)
{
  v9 = 0;
  if (a2 <= 0.0 || a3 <= 0.0 || a4 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    if (a5 > 0.0)
    {
      v9 = (a2 * a3 * a4 / (a5 * 16777216.0));
      v10 = 32;
    }
  }

  *a1 = 1380865034;
  a1[4] = a8;
  if (v9 >= 0xFF)
  {
    LOBYTE(v9) = -1;
  }

  a1[5] = v9;
  a1[6] = v10 | (a7 << 6) | a9 & 0x1F;
  *(a1 + 7) = bswap64(AVE_Double2FixedPoint(a6));
  return 15;
}

uint64_t AVE_SEI_WriteSessionID(unsigned __int8 *a1, unint64_t a2)
{
  *a1 = 11;
  *(a1 + 1) = bswap64(a2);
  return 9;
}

uint64_t AVE_SEI_WriteDriverVersion(unsigned __int8 *a1, unsigned int a2, unsigned __int8 a3, unsigned __int8 a4)
{
  *a1 = 12;
  *(a1 + 1) = __rev16(a2);
  a1[3] = a3;
  a1[4] = a4;
  return 5;
}

uint64_t AVE_SEI_WriteSEIISPMetadata(unsigned __int8 *a1, int a2, const unsigned __int8 *a3, int a4, uint64_t a5, int a6, int a7, int *a8)
{
  v94 = *MEMORY[0x29EDCA608];
  *v93 = xmmword_2954DF8A0;
  *v92 = 1635018093;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d %lld %d %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %lld %d %d %p", v13, 211, v14, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %lld %d %d %p", CurrTime, 211, LevelStr, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  if (!a1 || !a3 || !a8)
  {
    v29 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v30 = AVE_Log_CheckConsole(0xD3u);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | Invalid arguments %p %p %p\n", v31, 211, v32, "AVE_SEI_WriteSEIISPMetadata", 844, "pBuf != __null && pSEIData != __null && pSEISize != __null", a1, a3, a8);
        v33 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
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
      v18 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
      if (v18)
      {
        v19 = v18;
        AVE_SyntaxWriter::AVE_SyntaxWriter(v18, v17, v15, a7);
        v20 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
        v21 = v20;
        if (v20)
        {
          AVE_SyntaxWriter::AVE_SyntaxWriter(v20, a1, a2, 0);
          started = AVE_SEI_StartNALU(v21, a6, 5u, "AVE_SEI_WriteSEIISPMetadata");
          if (started)
          {
            v23 = started;
            if (AVE_Log_CheckLevel(0xD3u, 4))
            {
              v24 = AVE_Log_CheckConsole(0xD3u);
              v25 = AVE_GetCurrTime();
              v26 = AVE_Log_GetLevelStr(4);
              if (v24)
              {
                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v25, 211, v26, "AVE_SEI_WriteSEIISPMetadata", 869, "(ret) == 0", a1, v23);
                v27 = AVE_GetCurrTime();
                v28 = AVE_Log_GetLevelStr(4);
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
            v23 = AVE_SyntaxWriter::WriteBytes(v19, v93, 16);
            if (v23)
            {
              if (AVE_Log_CheckLevel(0xD3u, 4))
              {
                v55 = AVE_Log_CheckConsole(0xD3u);
                v56 = AVE_GetCurrTime();
                v57 = AVE_Log_GetLevelStr(4);
                if (v55)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v56, 211, v57, "AVE_SEI_WriteSEIISPMetadata", 875, "(ret) == 0", a1, v23);
                  v58 = AVE_GetCurrTime();
                  v59 = AVE_Log_GetLevelStr(4);
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
              v23 = AVE_SyntaxWriter::WriteBytes(v19, v92, 4);
              if (v23)
              {
                if (AVE_Log_CheckLevel(0xD3u, 4))
                {
                  v65 = AVE_Log_CheckConsole(0xD3u);
                  v66 = AVE_GetCurrTime();
                  v67 = AVE_Log_GetLevelStr(4);
                  if (v65)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v66, 211, v67, "AVE_SEI_WriteSEIISPMetadata", 879, "(ret) == 0", a1, v23);
                    v68 = AVE_GetCurrTime();
                    v69 = AVE_Log_GetLevelStr(4);
                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v68, 211, v69, "AVE_SEI_WriteSEIISPMetadata", 879, "(ret) == 0", a1, v23);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v66, 211, v67, "AVE_SEI_WriteSEIISPMetadata", 879, "(ret) == 0", a1, v23);
                  }
                }
              }

              else
              {
                v23 = AVE_SyntaxWriter::WriteBytes(v19, a3, a4);
                if (v23)
                {
                  if (AVE_Log_CheckLevel(0xD3u, 4))
                  {
                    v70 = AVE_Log_CheckConsole(0xD3u);
                    v71 = AVE_GetCurrTime();
                    v72 = AVE_Log_GetLevelStr(4);
                    if (v70)
                    {
                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v71, 211, v72, "AVE_SEI_WriteSEIISPMetadata", 883, "(ret) == 0", a1, v23);
                      v73 = AVE_GetCurrTime();
                      v74 = AVE_Log_GetLevelStr(4);
                      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v73, 211, v74, "AVE_SEI_WriteSEIISPMetadata", 883, "(ret) == 0", a1, v23);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v71, 211, v72, "AVE_SEI_WriteSEIISPMetadata", 883, "(ret) == 0", a1, v23);
                    }
                  }
                }

                else
                {
                  v23 = AVE_SEI_FinishNALU(v19, v21, "AVE_SEI_WriteSEIISPMetadata");
                  if (v23)
                  {
                    if (AVE_Log_CheckLevel(0xD3u, 4))
                    {
                      v75 = AVE_Log_CheckConsole(0xD3u);
                      v76 = AVE_GetCurrTime();
                      v77 = AVE_Log_GetLevelStr(4);
                      if (v75)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v76, 211, v77, "AVE_SEI_WriteSEIISPMetadata", 886, "(ret) == 0", a1, v23);
                        v78 = AVE_GetCurrTime();
                        v79 = AVE_Log_GetLevelStr(4);
                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v78, 211, v79, "AVE_SEI_WriteSEIISPMetadata", 886, "(ret) == 0", a1, v23);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v76, 211, v77, "AVE_SEI_WriteSEIISPMetadata", 886, "(ret) == 0", a1, v23);
                      }
                    }
                  }

                  else
                  {
                    *a8 = *(v21 + 3);
                    if (AVE_Log_CheckLevel(0xD3u, 7))
                    {
                      v80 = AVE_Log_CheckConsole(0xD3u);
                      v81 = AVE_GetCurrTime();
                      v82 = AVE_Log_GetLevelStr(7);
                      v83 = *a8;
                      if (v80)
                      {
                        printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v81, 211, v82, "AVE_SEI_WriteSEIISPMetadata", 889, v83);
                        v84 = AVE_GetCurrTime();
                        v85 = AVE_Log_GetLevelStr(7);
                        syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v84, 211, v85, "AVE_SEI_WriteSEIISPMetadata", 889, *a8);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v81, 211, v82, "AVE_SEI_WriteSEIISPMetadata", 889, v83);
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
          if (AVE_Log_CheckLevel(0xD3u, 4))
          {
            v50 = AVE_Log_CheckConsole(0xD3u);
            v51 = AVE_GetCurrTime();
            v52 = AVE_Log_GetLevelStr(4);
            if (v50)
            {
              printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v51, 211, v52, "AVE_SEI_WriteSEIISPMetadata", 865, "pcSyntaxWriter_NALU != __null", a1);
              v53 = AVE_GetCurrTime();
              v54 = AVE_Log_GetLevelStr(4);
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

      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v45 = AVE_Log_CheckConsole(0xD3u);
        v46 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(4);
        if (v45)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v46, 211, v47, "AVE_SEI_WriteSEIISPMetadata", 859, "pcSyntaxWriter != __null", a1);
          v48 = AVE_GetCurrTime();
          v49 = AVE_Log_GetLevelStr(4);
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
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v40 = AVE_Log_CheckConsole(0xD3u);
      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(4);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to malloc SEI EPB buffer %p\n", v41, 211, v42, "AVE_SEI_WriteSEIISPMetadata", 855, "pEPB_SEIData != __null", a1);
        v43 = AVE_GetCurrTime();
        v44 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to malloc SEI EPB buffer %p", v43, 211, v44, "AVE_SEI_WriteSEIISPMetadata", 855, "pEPB_SEIData != __null", a1);
        goto LABEL_41;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to malloc SEI EPB buffer %p", v41, 211, v42, "AVE_SEI_WriteSEIISPMetadata", 855, "pEPB_SEIData != __null", a1);
    }

    goto LABEL_42;
  }

  v29 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v35 = AVE_Log_CheckConsole(0xD3u);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(4);
    if (v35)
    {
      printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v36, 211, v37, "AVE_SEI_WriteSEIISPMetadata", 848, "encType == AVE_EncType_HEVC || encType == AVE_EncType_AVC", a6, a1);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
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
  if (AVE_Log_CheckLevel(0xD3u, v29))
  {
    v60 = AVE_Log_CheckConsole(0xD3u);
    v61 = AVE_GetCurrTime();
    v62 = AVE_Log_GetLevelStr(v29);
    if (v60)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %lld %d %d %p %d\n", v61, 211, v62, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8, v23);
      v61 = AVE_GetCurrTime();
      v62 = AVE_Log_GetLevelStr(v29);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %lld %d %d %p %d", v61, 211, v62, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8, v23);
  }

  v63 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t AVE_SEI_WriteLuxLevel(unsigned __int8 *a1, int a2, uint64_t a3, unsigned int a4, int a5, int a6, int *a7)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteLuxLevel", a1, a2, a3, a4, a5, a6, a7);
      v15 = AVE_GetCurrTime();
      v67 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %d %p", v15, 211, v67, "AVE_SEI_WriteLuxLevel");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %d %p", CurrTime, 211, LevelStr, "AVE_SEI_WriteLuxLevel");
    }
  }

  if (!a1 || !a7)
  {
    v25 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v26 = AVE_Log_CheckConsole(0xD3u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (!v26)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v27, 211);
        goto LABEL_25;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v27, 211, v28, "AVE_SEI_WriteLuxLevel", 947, "pBuf != __null && pSEISize != __null", a1, a7);
      v29 = AVE_GetCurrTime();
      v25 = 4;
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v29, 211);
    }

LABEL_26:
    v21 = 4294966295;
    goto LABEL_27;
  }

  if ((a5 - 1) >= 2)
  {
    v25 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v30 = AVE_Log_CheckConsole(0xD3u);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v31, 211, v32, "AVE_SEI_WriteLuxLevel", 951, "encType == AVE_EncType_HEVC || encType == AVE_EncType_AVC", a5, a1);
        v33 = AVE_GetCurrTime();
        v25 = 4;
        AVE_Log_GetLevelStr(4);
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

  v16 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v16)
  {
    v17 = v16;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v16);
    v18 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    v19 = v18;
    if (!v18)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v45 = a6;
        v46 = AVE_Log_CheckConsole(0xD3u);
        v47 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v47, 211, v48, "AVE_SEI_WriteLuxLevel", 961, "pcSyntaxWriter_NALU != __null", a1);
          v49 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
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

    AVE_SyntaxWriter::AVE_SyntaxWriter(v18, a1, a2, 0);
    started = AVE_SEI_StartNALU(v19, a5, 4u, "AVE_SEI_WriteLuxLevel");
    if (started)
    {
      v21 = started;
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v22 = AVE_Log_CheckConsole(0xD3u);
        v72 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v72, 211, v23, "AVE_SEI_WriteLuxLevel", 965, "(ret) == 0", a1, v21);
          v24 = AVE_GetCurrTime();
          v70 = a1;
          v71 = v21;
          v69 = 965;
          v68 = AVE_Log_GetLevelStr(4);
LABEL_50:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v24, 211, v68, "AVE_SEI_WriteLuxLevel", v69, "(ret) == 0", v70, v71);
          goto LABEL_56;
        }

        goto LABEL_55;
      }
    }

    else
    {
      AVE_SyntaxWriter::WriteU(v17, 0xB5u, 8);
      AVE_SyntaxWriter::WriteU(v17, 0xBEEFu, 16);
      AVE_SyntaxWriter::WriteU(v17, 0x55AAu, 16);
      AVE_SyntaxWriter::WriteU(v17, a4, 32);
      if (AVE_Log_CheckLevel(0xD3u, 8))
      {
        v50 = a6;
        v51 = AVE_Log_CheckConsole(0xD3u);
        v52 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(8);
        v54 = *(v17 + 3);
        if (v51)
        {
          printf("%lld %d AVE %s: %s:%d payloadSize EPB %d\n", v52, 211, v53, "AVE_SEI_WriteLuxLevel", 980, v54);
          v55 = AVE_GetCurrTime();
          v56 = AVE_Log_GetLevelStr(8);
          syslog(3, "%lld %d AVE %s: %s:%d payloadSize EPB %d", v55, 211, v56, "AVE_SEI_WriteLuxLevel", 980, *(v17 + 3));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d payloadSize EPB %d", v52, 211, v53, "AVE_SEI_WriteLuxLevel", 980, v54);
        }

        a6 = v50;
      }

      v57 = AVE_SEI_FinishNALU(v17, v19, "AVE_SEI_WriteLuxLevel");
      if (!v57)
      {
        *a7 = *(v19 + 3);
        if (AVE_Log_CheckLevel(0xD3u, 7))
        {
          v60 = a6;
          v61 = AVE_Log_CheckConsole(0xD3u);
          v62 = AVE_GetCurrTime();
          v63 = AVE_Log_GetLevelStr(7);
          v64 = *a7;
          if (v61)
          {
            printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v62, 211, v63, "AVE_SEI_WriteLuxLevel", 987, v64);
            v65 = AVE_GetCurrTime();
            v66 = AVE_Log_GetLevelStr(7);
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
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v58 = AVE_Log_CheckConsole(0xD3u);
        v72 = AVE_GetCurrTime();
        v59 = AVE_Log_GetLevelStr(4);
        if (v58)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v72, 211, v59, "AVE_SEI_WriteLuxLevel", 984, "(ret) == 0", a1, v21);
          v24 = AVE_GetCurrTime();
          v70 = a1;
          v71 = v21;
          v69 = 984;
          v68 = AVE_Log_GetLevelStr(4);
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
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v34 = AVE_Log_CheckConsole(0xD3u);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(4);
    if (v34)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v35, 211, v36, "AVE_SEI_WriteLuxLevel", 955, "pcSyntaxWriter != __null", a1);
      v37 = AVE_GetCurrTime();
      v25 = 4;
      v38 = AVE_Log_GetLevelStr(4);
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
  if (AVE_Log_CheckLevel(0xD3u, v25))
  {
    v39 = AVE_Log_CheckConsole(0xD3u);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(v25);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d %d %d %p %d\n", v40, 211, v41, "AVE_SEI_WriteLuxLevel", a1, a2, a3, a4, a5, a6, a7, v21);
      v42 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %d %p %d", v42, 211, v43, "AVE_SEI_WriteLuxLevel", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %d %p %d", v40, 211, v41, "AVE_SEI_WriteLuxLevel", a1);
    }
  }

  return v21;
}

uint64_t AVE_SEI_WriteAccessUnitDelimiter(unsigned __int8 *a1, int a2, uint64_t a3, int a4, int a5, unsigned int *a6)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v8 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteAccessUnitDelimiter", a1, a2, a3, a4, a5, a6);
      v11 = AVE_GetCurrTime();
      v93 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %p", v11, 211, v93);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %p", CurrTime, 211, LevelStr);
    }
  }

  if (a1 && a6)
  {
    v12 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    if (v12)
    {
      v13 = v12;
      AVE_SyntaxWriter::AVE_SyntaxWriter(v12);
      v14 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
      v15 = v14;
      if (v14)
      {
        AVE_SyntaxWriter::AVE_SyntaxWriter(v14, a1, a2, 0);
        v16 = AVE_SyntaxWriter::WriteStartCode(v15);
        if (!v16)
        {
          if (AVE_Log_CheckLevel(0xD3u, 8))
          {
            v37 = AVE_Log_CheckConsole(0xD3u);
            v38 = AVE_GetCurrTime();
            v39 = AVE_Log_GetLevelStr(8);
            v40 = *(v15 + 3);
            v41 = *(v15 + 4) + v40;
            if (v37)
            {
              printf("%lld %d AVE %s: %s:%d nal_unit_type %p (%d)\n", v38, 211, v39, "AVE_SEI_WriteAccessUnitDelimiter", 1050, (*(v15 + 4) + v40), v40);
              v42 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(8);
              v43 = *(v15 + 4) + *(v15 + 3);
              syslog(3, "%lld %d AVE %s: %s:%d nal_unit_type %p (%d)", v42);
            }

            else
            {
              v95 = *(v15 + 4) + v40;
              syslog(3, "%lld %d AVE %s: %s:%d nal_unit_type %p (%d)", v38);
            }
          }

          if (a4 == 2)
          {
            v44 = AVE_SyntaxWriter::WriteU(v15, 0x4601u, 16);
            if (v44)
            {
              v17 = v44;
              if (!AVE_Log_CheckLevel(0xD3u, 4))
              {
                goto LABEL_48;
              }

              v18 = a5;
              v45 = AVE_Log_CheckConsole(0xD3u);
              v20 = AVE_GetCurrTime();
              v46 = AVE_Log_GetLevelStr(4);
              if (v45)
              {
                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v46, "AVE_SEI_WriteAccessUnitDelimiter", 1055, "(ret) == 0", a1, v17);
                v22 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
                goto LABEL_13;
              }

LABEL_31:
              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v20, 211);
              goto LABEL_33;
            }

            if (AVE_Log_CheckLevel(0xD3u, 8))
            {
              v51 = AVE_Log_CheckConsole(0xD3u);
              v52 = AVE_GetCurrTime();
              v53 = AVE_Log_GetLevelStr(8);
              v54 = *(v15 + 4) + *(v15 + 3);
              v55 = *(v54 - 2);
              v56 = *(v54 - 1);
              if (v51)
              {
                printf("%lld %d AVE %s: %s:%d NUT %0x %0x\n", v52, 211, v53, "AVE_SEI_WriteAccessUnitDelimiter", 1059, v55, v56);
                v57 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(8);
                v58 = *(v15 + 4) + *(v15 + 3);
                v96 = *(v58 - 2);
                v100 = *(v58 - 1);
                syslog(3, "%lld %d AVE %s: %s:%d NUT %0x %0x", v57);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d NUT %0x %0x", v52);
              }
            }

            if ((a5 - 1) < 3)
            {
              v64 = AVE_SyntaxWriter::WriteU(v13, a5 - 1, 3);
              if (v64)
              {
                v17 = v64;
                if (!AVE_Log_CheckLevel(0xD3u, 4))
                {
                  goto LABEL_48;
                }

                v18 = a5;
                v65 = AVE_Log_CheckConsole(0xD3u);
                v20 = AVE_GetCurrTime();
                v66 = AVE_Log_GetLevelStr(4);
                if (v65)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v66, "AVE_SEI_WriteAccessUnitDelimiter", 1089, "(ret) == 0", a1, v17);
                  v22 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                  goto LABEL_13;
                }
              }

              else if (*(v13 + 2) && (v71 = AVE_SyntaxWriter::AlignToByte(v13), v71))
              {
                v17 = v71;
                if (!AVE_Log_CheckLevel(0xD3u, 4))
                {
                  goto LABEL_48;
                }

                v18 = a5;
                v72 = AVE_Log_CheckConsole(0xD3u);
                v20 = AVE_GetCurrTime();
                v73 = AVE_Log_GetLevelStr(4);
                if (v72)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v73, "AVE_SEI_WriteAccessUnitDelimiter", 1095, "(ret) == 0", a1, v17);
                  v22 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                  goto LABEL_13;
                }
              }

              else
              {
                if (AVE_Log_CheckLevel(0xD3u, 8))
                {
                  v74 = AVE_Log_CheckConsole(0xD3u);
                  v75 = AVE_GetCurrTime();
                  v76 = AVE_Log_GetLevelStr(8);
                  if (v74)
                  {
                    printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v75, 211, v76, "AVE_SEI_WriteAccessUnitDelimiter", 1099, *(v13 + 2) + 8 * *(v13 + 3), (*(v13 + 2) + 8 * *(v13 + 3)) >> 3);
                    v77 = AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(8);
                    v97 = (*(v13 + 2) + 8 * *(v13 + 3));
                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v77);
                  }

                  else
                  {
                    v98 = (*(v13 + 2) + 8 * *(v13 + 3));
                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v75);
                  }
                }

                v78 = AVE_SyntaxWriter::CopyFromSyntaxWriter(v15, v13);
                if (!v78)
                {
                  v17 = AVE_SyntaxWriter::AlignToByte(v15);
                  if (AVE_Log_CheckLevel(0xD3u, 8))
                  {
                    v81 = a5;
                    v82 = AVE_Log_CheckConsole(0xD3u);
                    v83 = AVE_GetCurrTime();
                    v84 = AVE_Log_GetLevelStr(8);
                    v85 = *(v15 + 3);
                    v86 = *(v15 + 4) + v85;
                    if (v82)
                    {
                      printf("%lld %d AVE %s: %s:%d rbsp_trailing_bits %p (%d)\n", v83, 211, v84, "AVE_SEI_WriteAccessUnitDelimiter", 1109, (*(v15 + 4) + v85), v85);
                      v87 = AVE_GetCurrTime();
                      AVE_Log_GetLevelStr(8);
                      v88 = *(v15 + 4) + *(v15 + 3);
                      syslog(3, "%lld %d AVE %s: %s:%d rbsp_trailing_bits %p (%d)", v87);
                    }

                    else
                    {
                      v99 = *(v15 + 4) + v85;
                      syslog(3, "%lld %d AVE %s: %s:%d rbsp_trailing_bits %p (%d)", v83);
                    }

                    a5 = v81;
                  }

                  *a6 = *(v15 + 3);
                  if (!AVE_Log_CheckLevel(0xD3u, 7))
                  {
                    goto LABEL_48;
                  }

                  v18 = a5;
                  v89 = AVE_Log_CheckConsole(0xD3u);
                  v90 = AVE_GetCurrTime();
                  v91 = AVE_Log_GetLevelStr(7);
                  if (v89)
                  {
                    printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v90, 211, v91, "AVE_SEI_WriteAccessUnitDelimiter", 1112, *a6);
                    AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(7);
                    v92 = *a6;
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d");
                  goto LABEL_33;
                }

                v17 = v78;
                if (!AVE_Log_CheckLevel(0xD3u, 4))
                {
                  goto LABEL_48;
                }

                v18 = a5;
                v79 = AVE_Log_CheckConsole(0xD3u);
                v20 = AVE_GetCurrTime();
                v80 = AVE_Log_GetLevelStr(4);
                if (v79)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v80, "AVE_SEI_WriteAccessUnitDelimiter", 1103, "(ret) == 0", a1, v17);
                  v22 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                  goto LABEL_13;
                }
              }

              goto LABEL_31;
            }

            if (AVE_Log_CheckLevel(0xD3u, 4))
            {
              v67 = AVE_Log_CheckConsole(0xD3u);
              v68 = AVE_GetCurrTime();
              v69 = AVE_Log_GetLevelStr(4);
              if (v67)
              {
                printf("%lld %d AVE %s: %s:%d %s | ERROR: FrameType NOT RECOGNIZED = %d. FAIL %p\n", v68, 211, v69, "AVE_SEI_WriteAccessUnitDelimiter", 1084, "false", a5, a1);
                v70 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR: FrameType NOT RECOGNIZED = %d. FAIL %p", v70, 211);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR: FrameType NOT RECOGNIZED = %d. FAIL %p", v68, 211);
              }

              v17 = 4294966295;
              goto LABEL_48;
            }
          }

          else if (AVE_Log_CheckLevel(0xD3u, 4))
          {
            v47 = AVE_Log_CheckConsole(0xD3u);
            v48 = AVE_GetCurrTime();
            v49 = AVE_Log_GetLevelStr(4);
            if (v47)
            {
              printf("%lld %d AVE %s: %s:%d %s | encType %d not recognized. FAIL %p\n", v48, 211, v49, "AVE_SEI_WriteAccessUnitDelimiter", 1064, "false", a4, a1);
              v50 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
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
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v18 = a5;
          v19 = AVE_Log_CheckConsole(0xD3u);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(4);
          if (v19)
          {
            printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v21, "AVE_SEI_WriteAccessUnitDelimiter", 1047, "(ret) == 0", a1, v17);
            v22 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
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
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v18 = a5;
          v34 = AVE_Log_CheckConsole(0xD3u);
          v35 = AVE_GetCurrTime();
          v36 = AVE_Log_GetLevelStr(4);
          if (v34)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v35, 211, v36, "AVE_SEI_WriteAccessUnitDelimiter", 1043, "pcSyntaxWriter_NALU != __null", a1);
            v35 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
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
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v29 = AVE_Log_CheckConsole(0xD3u);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v30, 211, v31, "AVE_SEI_WriteAccessUnitDelimiter", 1039, "pcSyntaxWriter != __null", a1);
        v32 = AVE_GetCurrTime();
        v23 = 4;
        v33 = AVE_Log_GetLevelStr(4);
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
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v24 = AVE_Log_CheckConsole(0xD3u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v25, 211, v26, "AVE_SEI_WriteAccessUnitDelimiter", 1035, "pBuf != __null && pSEISize != __null", a1, a6);
        v27 = AVE_GetCurrTime();
        v23 = 4;
        v28 = AVE_Log_GetLevelStr(4);
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
  if (AVE_Log_CheckLevel(0xD3u, v23))
  {
    v59 = AVE_Log_CheckConsole(0xD3u);
    v60 = AVE_GetCurrTime();
    v61 = AVE_Log_GetLevelStr(v23);
    if (v59)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d\n", v60, 211, v61, "AVE_SEI_WriteAccessUnitDelimiter", a1, a2, a3, a4, a5, a6, v17);
      v62 = AVE_GetCurrTime();
      v94 = AVE_Log_GetLevelStr(v23);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d", v62, 211, v94, "AVE_SEI_WriteAccessUnitDelimiter");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d", v60, 211, v61, "AVE_SEI_WriteAccessUnitDelimiter");
    }
  }

  return v17;
}

uint64_t AVE_SEI_WriteActiveParameterSets(unsigned __int8 *a1, int a2, int a3, uint64_t a4, int a5, int *a6)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %lld %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteActiveParameterSets", a1, a2, a3, a4, a5, a6);
      v13 = AVE_GetCurrTime();
      v72 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %lld %d %p", v13, 211, v72, "AVE_SEI_WriteActiveParameterSets");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %lld %d %p", CurrTime, 211, LevelStr, "AVE_SEI_WriteActiveParameterSets");
    }
  }

  if (!a1 || !a6)
  {
    v22 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v23 = AVE_Log_CheckConsole(0xD3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (!v23)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v24, 211);
        goto LABEL_25;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v24, 211, v25, "AVE_SEI_WriteActiveParameterSets", 1166, "pBuf != __null && pSEISize != __null", a1, a6);
      v26 = AVE_GetCurrTime();
      v22 = 4;
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v26, 211);
    }

LABEL_26:
    v36 = 4294966295;
    goto LABEL_27;
  }

  if (a5 != 2)
  {
    v22 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v27 = AVE_Log_CheckConsole(0xD3u);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v28, 211, v29, "AVE_SEI_WriteActiveParameterSets", 1169, "encType == AVE_EncType_HEVC", a5, a1);
        v30 = AVE_GetCurrTime();
        v22 = 4;
        AVE_Log_GetLevelStr(4);
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

  v14 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v14)
  {
    v15 = v14;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v14);
    v16 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    v17 = v16;
    if (!v16)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v43 = AVE_Log_CheckConsole(0xD3u);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v44, 211, v45, "AVE_SEI_WriteActiveParameterSets", 1177, "pcSyntaxWriter_NALU != __null", a1);
          v44 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v44);
      }

      started = 4294966293;
      goto LABEL_76;
    }

    AVE_SyntaxWriter::AVE_SyntaxWriter(v16, a1, a2, 0);
    started = AVE_SEI_StartNALU(v17, 2, 0x81u, "AVE_SEI_WriteActiveParameterSets");
    if (started)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v18 = AVE_Log_CheckConsole(0xD3u);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v20, "AVE_SEI_WriteActiveParameterSets", 1181, "(ret) == 0", a1, started);
          v21 = AVE_GetCurrTime();
          v77 = a1;
          v79 = started;
          v74 = 1181;
          v73 = AVE_Log_GetLevelStr(4);
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

    started = AVE_SyntaxWriter::WriteU(v15, 0, 4);
    if (started)
    {
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_76;
      }

      v46 = AVE_Log_CheckConsole(0xD3u);
      v19 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(4);
      if (!v46)
      {
        goto LABEL_75;
      }

      v81 = v17;
      v48 = started;
      v80 = started;
      v49 = a1;
      v78 = a1;
      v82 = a5;
      v50 = a3;
      v51 = 1185;
    }

    else
    {
      started = AVE_SyntaxWriter::WriteBit(v15, 1);
      if (started)
      {
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_76;
        }

        v52 = AVE_Log_CheckConsole(0xD3u);
        v19 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(4);
        if (!v52)
        {
          goto LABEL_75;
        }

        v81 = v17;
        v48 = started;
        v80 = started;
        v49 = a1;
        v78 = a1;
        v82 = a5;
        v50 = a3;
        v51 = 1187;
      }

      else
      {
        started = AVE_SyntaxWriter::WriteBit(v15, 1);
        if (started)
        {
          if (!AVE_Log_CheckLevel(0xD3u, 4))
          {
            goto LABEL_76;
          }

          v53 = AVE_Log_CheckConsole(0xD3u);
          v19 = AVE_GetCurrTime();
          v47 = AVE_Log_GetLevelStr(4);
          if (!v53)
          {
            goto LABEL_75;
          }

          v81 = v17;
          v48 = started;
          v80 = started;
          v49 = a1;
          v78 = a1;
          v82 = a5;
          v50 = a3;
          v51 = 1189;
        }

        else
        {
          started = AVE_SyntaxWriter::WriteUE(v15, 0);
          if (started)
          {
            if (!AVE_Log_CheckLevel(0xD3u, 4))
            {
              goto LABEL_76;
            }

            v54 = AVE_Log_CheckConsole(0xD3u);
            v19 = AVE_GetCurrTime();
            v47 = AVE_Log_GetLevelStr(4);
            if (!v54)
            {
              goto LABEL_75;
            }

            v81 = v17;
            v48 = started;
            v80 = started;
            v49 = a1;
            v78 = a1;
            v82 = a5;
            v50 = a3;
            v51 = 1191;
          }

          else
          {
            started = AVE_SyntaxWriter::WriteUE(v15, a3);
            if (!started)
            {
              if (*(v15 + 2))
              {
                started = AVE_SyntaxWriter::AlignToByte(v15);
                if (started)
                {
                  if (!AVE_Log_CheckLevel(0xD3u, 4))
                  {
                    goto LABEL_76;
                  }

                  v56 = AVE_Log_CheckConsole(0xD3u);
                  v19 = AVE_GetCurrTime();
                  v57 = AVE_Log_GetLevelStr(4);
                  if (v56)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v57, "AVE_SEI_WriteActiveParameterSets", 1199, "(ret) == 0", a1, started);
                    v58 = AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(4);
                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v58, 211);
                    goto LABEL_76;
                  }

                  goto LABEL_75;
                }
              }

              if (AVE_Log_CheckLevel(0xD3u, 8))
              {
                v59 = AVE_Log_CheckConsole(0xD3u);
                v60 = AVE_GetCurrTime();
                v61 = AVE_Log_GetLevelStr(8);
                if (v59)
                {
                  printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v60, 211, v61, "AVE_SEI_WriteActiveParameterSets", 1203, *(v15 + 2) + 8 * *(v15 + 3), (*(v15 + 2) + 8 * *(v15 + 3)) >> 3);
                  v62 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(8);
                  v75 = (*(v15 + 2) + 8 * *(v15 + 3));
                  syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v62);
                }

                else
                {
                  v76 = (*(v15 + 2) + 8 * *(v15 + 3));
                  syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v60);
                }
              }

              started = AVE_SEI_FinishNALU(v15, v17, "AVE_SEI_WriteActiveParameterSets");
              if (!started)
              {
                *a6 = *(v17 + 3);
                if (AVE_Log_CheckLevel(0xD3u, 7))
                {
                  v66 = AVE_Log_CheckConsole(0xD3u);
                  v67 = AVE_GetCurrTime();
                  v68 = AVE_Log_GetLevelStr(7);
                  v69 = *a6;
                  if (v66)
                  {
                    printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v67, 211, v68, "AVE_SEI_WriteActiveParameterSets", 1209, v69);
                    v70 = AVE_GetCurrTime();
                    v71 = AVE_Log_GetLevelStr(7);
                    syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v70, 211, v71, "AVE_SEI_WriteActiveParameterSets", 1209, *a6);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v67, 211, v68, "AVE_SEI_WriteActiveParameterSets", 1209, v69);
                  }
                }

                started = 0;
                goto LABEL_76;
              }

              if (AVE_Log_CheckLevel(0xD3u, 4))
              {
                v63 = AVE_Log_CheckConsole(0xD3u);
                v19 = AVE_GetCurrTime();
                v64 = AVE_Log_GetLevelStr(4);
                if (v63)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v64, "AVE_SEI_WriteActiveParameterSets", 1206, "(ret) == 0", a1, started);
                  v65 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
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

              v36 = started;
              if (started)
              {
                v22 = 4;
              }

              else
              {
                v22 = 7;
              }

              goto LABEL_27;
            }

            if (!AVE_Log_CheckLevel(0xD3u, 4))
            {
              goto LABEL_76;
            }

            v55 = AVE_Log_CheckConsole(0xD3u);
            v19 = AVE_GetCurrTime();
            v47 = AVE_Log_GetLevelStr(4);
            if (!v55)
            {
              goto LABEL_75;
            }

            v81 = v17;
            v48 = started;
            v80 = started;
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
    v21 = AVE_GetCurrTime();
    v77 = v49;
    v79 = v48;
    v74 = v51;
    a3 = v50;
    v17 = v81;
    a5 = v82;
    v73 = AVE_Log_GetLevelStr(4);
    goto LABEL_65;
  }

  v22 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v31 = AVE_Log_CheckConsole(0xD3u);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(4);
    if (v31)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v32, 211, v33, "AVE_SEI_WriteActiveParameterSets", 1173, "pcSyntaxWriter != __null", a1);
      v34 = AVE_GetCurrTime();
      v22 = 4;
      v35 = AVE_Log_GetLevelStr(4);
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
  if (AVE_Log_CheckLevel(0xD3u, v22))
  {
    v37 = AVE_Log_CheckConsole(0xD3u);
    v38 = AVE_GetCurrTime();
    v39 = AVE_Log_GetLevelStr(v22);
    if (v37)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %lld %d %p %d\n", v38, 211, v39, "AVE_SEI_WriteActiveParameterSets", a1, a2, a3, a4, a5, a6, v36);
      v40 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(v22);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %lld %d %p %d", v40, 211, v41, "AVE_SEI_WriteActiveParameterSets", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %lld %d %p %d", v38, 211, v39, "AVE_SEI_WriteActiveParameterSets", a1);
    }
  }

  return v36;
}

uint64_t AVE_SEI_WritePictureTiming(unsigned __int8 *a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int *a9)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v13 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %u %d %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WritePictureTiming", a1, a2, a3, a4, a5, a6, a7, a8, a9);
      v16 = AVE_GetCurrTime();
      v91 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %u %d %d %p", v16, 211, v91, "AVE_SEI_WritePictureTiming", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %u %d %d %p", CurrTime, 211, LevelStr, "AVE_SEI_WritePictureTiming", a1);
    }
  }

  if (!a1 || !a9)
  {
    v29 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v30 = AVE_Log_CheckConsole(0xD3u);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      if (!v30)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v31, 211);
        goto LABEL_34;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v31, 211, v32, "AVE_SEI_WritePictureTiming", 1267, "pBuf != __null && pSEISize != __null", a1, a9);
      v33 = AVE_GetCurrTime();
      v29 = 4;
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v33, 211);
    }

LABEL_35:
    v24 = 4294966295;
    goto LABEL_36;
  }

  if (a4 != 2)
  {
    v29 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v34 = AVE_Log_CheckConsole(0xD3u);
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v35, 211, v36, "AVE_SEI_WritePictureTiming", 1270, "encType == AVE_EncType_HEVC", a4, a1);
        v37 = AVE_GetCurrTime();
        v29 = 4;
        AVE_Log_GetLevelStr(4);
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

  v17 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v17)
  {
    v18 = v17;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v17);
    v19 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    v20 = v19;
    if (!v19)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v48 = AVE_Log_CheckConsole(0xD3u);
        v49 = AVE_GetCurrTime();
        v50 = AVE_Log_GetLevelStr(4);
        if (v48)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v49, 211, v50, "AVE_SEI_WritePictureTiming", 1279, "pcSyntaxWriter_NALU != __null", a1);
          v51 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
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

    AVE_SyntaxWriter::AVE_SyntaxWriter(v19, a1, a2, 0);
    if (AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::Coded == AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::LastBufferingPeriodFrame)
    {
      v21 = 0;
    }

    else
    {
      v21 = AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::Coded + ~AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::LastBufferingPeriodFrame;
    }

    if (a5)
    {
      v22 = a6 - AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::Coded + 2;
    }

    else
    {
      v22 = 0;
    }

    if (a7 == 1 || a8 == 21)
    {
      AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::LastBufferingPeriodFrame = AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::Coded;
    }

    ++AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::Coded;
    started = AVE_SEI_StartNALU(v20, 2, 1u, "AVE_SEI_WritePictureTiming");
    if (started)
    {
      v24 = started;
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v25 = AVE_Log_CheckConsole(0xD3u);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v26, 211, v27, "AVE_SEI_WritePictureTiming", 1304, "(ret) == 0", a1, v24);
          v28 = AVE_GetCurrTime();
          v99 = a1;
          v100 = v24;
          v94 = 1304;
          v92 = AVE_Log_GetLevelStr(4);
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

    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v52 = v21;
      v53 = AVE_Log_CheckConsole(0xD3u);
      v54 = AVE_GetCurrTime();
      v55 = AVE_Log_GetLevelStr(8);
      v56 = *(v20 + 3);
      v57 = *(v20 + 4) + v56;
      if (v53)
      {
        printf("%lld %d AVE %s: %s:%d payloadType %p (%d)\n", v54, 211, v55, "AVE_SEI_WritePictureTiming", 1308, (*(v20 + 4) + v56), v56);
        v58 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
        v95 = *(v20 + 4) + *(v20 + 3);
        syslog(3, "%lld %d AVE %s: %s:%d payloadType %p (%d)", v58);
      }

      else
      {
        v96 = *(v20 + 4) + v56;
        syslog(3, "%lld %d AVE %s: %s:%d payloadType %p (%d)", v54);
      }

      v21 = v52;
    }

    v59 = AVE_SyntaxWriter::WriteU(v18, v21, 24);
    if (v59)
    {
      v24 = v59;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_74;
      }

      v60 = AVE_Log_CheckConsole(0xD3u);
      v26 = AVE_GetCurrTime();
      v61 = AVE_Log_GetLevelStr(4);
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
      v69 = AVE_SyntaxWriter::WriteU(v18, v22, 24);
      if (v69)
      {
        v24 = v69;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_74;
        }

        v70 = AVE_Log_CheckConsole(0xD3u);
        v26 = AVE_GetCurrTime();
        v71 = AVE_Log_GetLevelStr(4);
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

      else if (*(v18 + 2) && (v73 = AVE_SyntaxWriter::AlignToByte(v18), v73))
      {
        v24 = v73;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_74;
        }

        v74 = AVE_Log_CheckConsole(0xD3u);
        v26 = AVE_GetCurrTime();
        v75 = AVE_Log_GetLevelStr(4);
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
        if (AVE_Log_CheckLevel(0xD3u, 8))
        {
          v77 = AVE_Log_CheckConsole(0xD3u);
          v78 = AVE_GetCurrTime();
          v79 = AVE_Log_GetLevelStr(8);
          if (v77)
          {
            printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v78, 211, v79, "AVE_SEI_WritePictureTiming", 1324, *(v18 + 2) + 8 * *(v18 + 3), (*(v18 + 2) + 8 * *(v18 + 3)) >> 3);
            v80 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(8);
            v97 = (*(v18 + 2) + 8 * *(v18 + 3));
            syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v80);
          }

          else
          {
            v98 = (*(v18 + 2) + 8 * *(v18 + 3));
            syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v78);
          }
        }

        v81 = AVE_SEI_FinishNALU(v18, v20, "AVE_SEI_WritePictureTiming");
        if (!v81)
        {
          *a9 = *(v20 + 3);
          if (AVE_Log_CheckLevel(0xD3u, 7))
          {
            v85 = AVE_Log_CheckConsole(0xD3u);
            v86 = AVE_GetCurrTime();
            v87 = AVE_Log_GetLevelStr(7);
            v88 = *a9;
            if (v85)
            {
              printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v86, 211, v87, "AVE_SEI_WritePictureTiming", 1330, v88);
              v89 = AVE_GetCurrTime();
              v90 = AVE_Log_GetLevelStr(7);
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
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_74;
        }

        v82 = AVE_Log_CheckConsole(0xD3u);
        v26 = AVE_GetCurrTime();
        v83 = AVE_Log_GetLevelStr(4);
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

    v28 = AVE_GetCurrTime();
    v99 = v64;
    v100 = v63;
    v94 = v68;
    a7 = v67;
    a4 = v66;
    a8 = v65;
    v92 = AVE_Log_GetLevelStr(4);
    goto LABEL_63;
  }

  v29 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v38 = AVE_Log_CheckConsole(0xD3u);
    v39 = AVE_GetCurrTime();
    v40 = AVE_Log_GetLevelStr(4);
    if (v38)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v39, 211, v40, "AVE_SEI_WritePictureTiming", 1274, "pcSyntaxWriter != __null", a1);
      v41 = AVE_GetCurrTime();
      v29 = 4;
      v42 = AVE_Log_GetLevelStr(4);
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
  if (AVE_Log_CheckLevel(0xD3u, v29))
  {
    v43 = AVE_Log_CheckConsole(0xD3u);
    v44 = AVE_GetCurrTime();
    v45 = AVE_Log_GetLevelStr(v29);
    if (v43)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %d %u %d %d %p %d\n", v44, 211, v45, "AVE_SEI_WritePictureTiming", a1, a3, a4, a5, a6, a7, a8, a9, v24);
      v46 = AVE_GetCurrTime();
      v93 = AVE_Log_GetLevelStr(v29);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d %u %d %d %p %d", v46, 211, v93, "AVE_SEI_WritePictureTiming", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d %u %d %d %p %d", v44, 211, v45, "AVE_SEI_WritePictureTiming", a1);
    }
  }

  return v24;
}

uint64_t AVE_SEI_WriteBufferingPeriod(unsigned __int8 *a1, int a2, uint64_t a3, int a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteBufferingPeriod", a1, a2, a3, a4, a5, a6);
      v15 = AVE_GetCurrTime();
      v99 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %p", v15, 211, v99);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %p", CurrTime, 211, LevelStr);
    }
  }

  if (!a1 || !a6)
  {
    v25 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v26 = AVE_Log_CheckConsole(0xD3u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        v29 = a3;
        printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v27, 211, v28, "AVE_SEI_WriteBufferingPeriod", 1383, "pBuf != __null && pSEISize != __null", a1, a6);
        v30 = AVE_GetCurrTime();
        v25 = 4;
        v105 = a1;
        v106 = a6;
        v101 = 1383;
        v102 = "pBuf != __null && pSEISize != __null";
        v100 = AVE_Log_GetLevelStr(4);
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
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v32 = AVE_Log_CheckConsole(0xD3u);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        v29 = a3;
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v33, 211, v34, "AVE_SEI_WriteBufferingPeriod", 1386, "encType == AVE_EncType_HEVC", a5, a1);
        v30 = AVE_GetCurrTime();
        v25 = 4;
        v105 = a5;
        v106 = a1;
        v101 = 1386;
        v102 = "encType == AVE_EncType_HEVC";
        v100 = AVE_Log_GetLevelStr(4);
        v31 = "%lld %d AVE %s: %s:%d %s | encType %d not supported %p";
        goto LABEL_20;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v33, 211);
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v16 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v16)
  {
    v17 = v16;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v16);
    v18 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    v19 = v18;
    if (!v18)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v48 = a6;
        v49 = AVE_Log_CheckConsole(0xD3u);
        v50 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(4);
        if (!v49)
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v50, 211, v51, "AVE_SEI_WriteBufferingPeriod", 1394, "pcSyntaxWriter_NALU != __null", a1);
          started = 4294966293;
          a6 = v48;
          goto LABEL_72;
        }

        a6 = v48;
        printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v50, 211, v51, "AVE_SEI_WriteBufferingPeriod", 1394, "pcSyntaxWriter_NALU != __null", a1);
        v52 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v52, 211, v53, "AVE_SEI_WriteBufferingPeriod", 1394, "pcSyntaxWriter_NALU != __null", a1);
      }

      started = 4294966293;
      goto LABEL_72;
    }

    AVE_SyntaxWriter::AVE_SyntaxWriter(v18, a1, a2, 0);
    started = AVE_SEI_StartNALU(v19, 2, 0, "AVE_SEI_WriteBufferingPeriod");
    if (started)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v20 = a6;
        v21 = AVE_Log_CheckConsole(0xD3u);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v22, 211, v23, "AVE_SEI_WriteBufferingPeriod", 1398, "(ret) == 0", a1, started);
          v24 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          a6 = v20;
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v24, 211);
          goto LABEL_72;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v22, 211, v23, "AVE_SEI_WriteBufferingPeriod", 1398, "(ret) == 0", a1, started);
LABEL_71:
        a6 = v20;
      }

LABEL_72:
      (*(*v17 + 8))(v17);
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }

      v40 = started;
      if (started)
      {
        v25 = 4;
      }

      else
      {
        v25 = 7;
      }

      goto LABEL_28;
    }

    started = AVE_SyntaxWriter::WriteUE(v17, a4);
    if (started)
    {
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_72;
      }

      v20 = a6;
      v54 = AVE_Log_CheckConsole(0xD3u);
      v55 = AVE_GetCurrTime();
      v56 = AVE_Log_GetLevelStr(4);
      if (!v54)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v55, 211, v56, "AVE_SEI_WriteBufferingPeriod", 1402, "(ret) == 0", a1, started);
        goto LABEL_71;
      }

      v108 = v20;
      v57 = v19;
      v58 = a5;
      v59 = a4;
      v60 = a2;
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v55, 211, v56, "AVE_SEI_WriteBufferingPeriod", 1402, "(ret) == 0", a1, started);
      v61 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      a6 = v108;
LABEL_64:
      a2 = v60;
      a4 = v59;
      LODWORD(a5) = v58;
      v19 = v57;
      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v61, 211);
      goto LABEL_72;
    }

    started = AVE_SyntaxWriter::WriteBit(v17, 0);
    if (started)
    {
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_72;
      }

      v20 = a6;
      v62 = AVE_Log_CheckConsole(0xD3u);
      v63 = AVE_GetCurrTime();
      v64 = AVE_Log_GetLevelStr(4);
      if (!v62)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v63, 211, v64, "AVE_SEI_WriteBufferingPeriod", 1404, "(ret) == 0", a1, started);
        goto LABEL_71;
      }

      v109 = v20;
      v57 = v19;
      v58 = a5;
      v59 = a4;
      v60 = a2;
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v63, 211, v64, "AVE_SEI_WriteBufferingPeriod", 1404, "(ret) == 0", a1, started);
      v61 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      a6 = v109;
      goto LABEL_64;
    }

    started = AVE_SyntaxWriter::WriteBit(v17, 0);
    if (started)
    {
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_72;
      }

      v20 = a6;
      v65 = AVE_Log_CheckConsole(0xD3u);
      v66 = AVE_GetCurrTime();
      v67 = AVE_Log_GetLevelStr(4);
      if (!v65)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v66, 211, v67, "AVE_SEI_WriteBufferingPeriod", 1406, "(ret) == 0", a1, started);
        goto LABEL_71;
      }

      v110 = v20;
      v57 = v19;
      v58 = a5;
      v59 = a4;
      v60 = a2;
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v66, 211, v67, "AVE_SEI_WriteBufferingPeriod", 1406, "(ret) == 0", a1, started);
      v61 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      a6 = v110;
      goto LABEL_64;
    }

    started = AVE_SyntaxWriter::WriteU(v17, 0, 24);
    if (started)
    {
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_72;
      }

      v20 = a6;
      v68 = AVE_Log_CheckConsole(0xD3u);
      v69 = AVE_GetCurrTime();
      v70 = AVE_Log_GetLevelStr(4);
      if (!v68)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v69, 211, v70, "AVE_SEI_WriteBufferingPeriod", 1408, "(ret) == 0", a1, started);
        goto LABEL_71;
      }

      v111 = v20;
      v57 = v19;
      v58 = a5;
      v59 = a4;
      v60 = a2;
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v69, 211, v70, "AVE_SEI_WriteBufferingPeriod", 1408, "(ret) == 0", a1, started);
      v61 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      a6 = v111;
      goto LABEL_64;
    }

    started = AVE_SyntaxWriter::WriteU(v17, 0x15F90u, 24);
    if (started)
    {
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_72;
      }

      v20 = a6;
      v71 = AVE_Log_CheckConsole(0xD3u);
      v72 = AVE_GetCurrTime();
      v73 = AVE_Log_GetLevelStr(4);
      if (!v71)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v72, 211, v73, "AVE_SEI_WriteBufferingPeriod", 1410, "(ret) == 0", a1, started);
        goto LABEL_71;
      }

      v112 = v20;
      v57 = v19;
      v58 = a5;
      v59 = a4;
      v60 = a2;
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v72, 211, v73, "AVE_SEI_WriteBufferingPeriod", 1410, "(ret) == 0", a1, started);
      v61 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      a6 = v112;
      goto LABEL_64;
    }

    started = AVE_SyntaxWriter::WriteU(v17, 0, 24);
    if (started)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v107 = v19;
        v74 = a5;
        v75 = a2;
        v76 = a6;
        v77 = AVE_Log_CheckConsole(0xD3u);
        v78 = AVE_GetCurrTime();
        v79 = AVE_Log_GetLevelStr(4);
        if (v77)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v78, 211, v79, "AVE_SEI_WriteBufferingPeriod", 1412, "(ret) == 0", a1, started);
          v80 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
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
    if (*(v17 + 2) && (started = AVE_SyntaxWriter::AlignToByte(v17), started))
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v83 = AVE_Log_CheckConsole(0xD3u);
        v84 = AVE_GetCurrTime();
        v85 = AVE_Log_GetLevelStr(4);
        if (v83)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v84, 211, v85, "AVE_SEI_WriteBufferingPeriod", 1418, "(ret) == 0", a1, started);
          v86 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
LABEL_92:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v86, 211);
          goto LABEL_99;
        }

        goto LABEL_96;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 8))
      {
        v87 = AVE_Log_CheckConsole(0xD3u);
        v88 = AVE_GetCurrTime();
        v89 = AVE_Log_GetLevelStr(8);
        if (v87)
        {
          printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v88, 211, v89, "AVE_SEI_WriteBufferingPeriod", 1422, *(v17 + 2) + 8 * *(v17 + 3), (*(v17 + 2) + 8 * *(v17 + 3)) >> 3);
          v90 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(8);
          v103 = (*(v17 + 2) + 8 * *(v17 + 3));
          syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v90);
        }

        else
        {
          v104 = (*(v17 + 2) + 8 * *(v17 + 3));
          syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v88);
        }
      }

      started = AVE_SEI_FinishNALU(v17, v19, "AVE_SEI_WriteBufferingPeriod");
      if (started)
      {
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v91 = AVE_Log_CheckConsole(0xD3u);
          v84 = AVE_GetCurrTime();
          v92 = AVE_Log_GetLevelStr(4);
          if (v91)
          {
            printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v84, 211, v92, "AVE_SEI_WriteBufferingPeriod", 1425, "(ret) == 0", a1, started);
            v86 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            goto LABEL_92;
          }

LABEL_96:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v84, 211);
        }
      }

      else
      {
        *a6 = *(v19 + 3);
        if (AVE_Log_CheckLevel(0xD3u, 7))
        {
          v93 = AVE_Log_CheckConsole(0xD3u);
          v94 = AVE_GetCurrTime();
          v95 = AVE_Log_GetLevelStr(7);
          v96 = *v82;
          if (v93)
          {
            printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v94, 211, v95, "AVE_SEI_WriteBufferingPeriod", 1428, v96);
            v97 = AVE_GetCurrTime();
            v98 = AVE_Log_GetLevelStr(7);
            a6 = v82;
            syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v97, 211, v98, "AVE_SEI_WriteBufferingPeriod", 1428, *v82);
            started = 0;
LABEL_100:
            a3 = v81;
            a4 = v113;
            goto LABEL_72;
          }

          syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v94, 211, v95, "AVE_SEI_WriteBufferingPeriod", 1428, v96);
        }

        started = 0;
      }
    }

LABEL_99:
    a6 = v82;
    goto LABEL_100;
  }

  v25 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v35 = AVE_Log_CheckConsole(0xD3u);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(4);
    if (v35)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v36, 211, v37, "AVE_SEI_WriteBufferingPeriod", 1390, "pcSyntaxWriter != __null", a1);
      v38 = AVE_GetCurrTime();
      v25 = 4;
      v39 = AVE_Log_GetLevelStr(4);
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
  if (AVE_Log_CheckLevel(0xD3u, v25))
  {
    v41 = a6;
    v42 = AVE_Log_CheckConsole(0xD3u);
    v43 = AVE_GetCurrTime();
    v44 = AVE_Log_GetLevelStr(v25);
    if (v42)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d\n", v43, 211, v44, "AVE_SEI_WriteBufferingPeriod", a1, a2, a3, a4, a5, v41, v40);
      v45 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d", v45, 211, v46, "AVE_SEI_WriteBufferingPeriod");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d", v43, 211, v44, "AVE_SEI_WriteBufferingPeriod");
    }
  }

  return v40;
}

uint64_t AVE_Prop_Add(const void *a1, int a2, int a3, uint64_t a4, __CFDictionary *a5)
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
        v15 = MEMORY[0x29EDBD130];
        break;
      case 2:
        v15 = MEMORY[0x29EDBD140];
        break;
      case 3:
        v15 = MEMORY[0x29EDBD138];
        break;
      default:
LABEL_17:
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v17 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | unsupported property type %p %d 0x%x %lld %p\n", CurrTime, 30, LevelStr, "AVE_Prop_Add", 58, "ret == 0", a1, a2, a3, a4, a5);
            v20 = AVE_GetCurrTime();
            v30 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | unsupported property type %p %d 0x%x %lld %p", v20, 30, v30, "AVE_Prop_Add");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | unsupported property type %p %d 0x%x %lld %p", CurrTime, 30, LevelStr, "AVE_Prop_Add");
          }
        }

        return 4294966294;
    }

    v10 = *v15;
LABEL_22:
    v21 = *MEMORY[0x29EDBD118];
    if ((a3 & 0x30000) == 0x10000)
    {
      v22 = *MEMORY[0x29EDBD110];
    }

    else
    {
      v22 = *MEMORY[0x29EDBD118];
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v24 = Mutable;
      if (v10)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD128], v10);
      }

      CFDictionarySetValue(v24, *MEMORY[0x29EDBD108], v22);
      CFDictionarySetValue(a5, a1, v24);
      CFRelease(v24);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v25 = AVE_Log_CheckConsole(0x1Eu);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %d 0x%x %lld %p\n", v26, 30, v27, "AVE_Prop_Add", 68, "pTmpDict != __null", a1, a2, a3, a4, a5);
          v28 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %d 0x%x %lld %p", v28, 30, v31, "AVE_Prop_Add");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %d 0x%x %lld %p", v26, 30, v27, "AVE_Prop_Add");
        }
      }

      return 4294966293;
    }
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v11 = AVE_Log_CheckConsole(0x1Eu);
    v12 = AVE_GetCurrTime();
    v13 = AVE_Log_GetLevelStr(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d 0x%x %lld %p\n", v12, 30, v13, "AVE_Prop_Add", 34, "pKey != __null && AVE_Prop_Type_None <= type && type < AVE_Prop_Type_Max && pDict != __null", a1, a2, a3, a4, a5);
      v14 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d 0x%x %lld %p", v14, 30, v29, "AVE_Prop_Add");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d 0x%x %lld %p", v12, 30, v13, "AVE_Prop_Add");
    }
  }

  return 4294966295;
}

uint64_t AVE_Prop_MakeDict(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __CFDictionary *a6)
{
  v12 = AVE_DevCap_Find(a3);
  if (!v12)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %d 0x%x %lld %p\n", CurrTime, 30, LevelStr, "AVE_Prop_MakeDict", 110, "pDevCap != __null", a1, a2, a3, a4, a5, a6);
        v23 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %d 0x%x %lld %p", v23, 30, v32, "AVE_Prop_MakeDict", 110);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %d 0x%x %lld %p", CurrTime, 30, LevelStr, "AVE_Prop_MakeDict", 110);
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

    v18 = AVE_Prop_Add(*(i - 1), *i, v16, a5, a6);
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
  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v25 = AVE_Log_CheckConsole(0x1Eu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(4);
    v28 = *(i + 1);
    if (v25)
    {
      v29 = a3;
      printf("%lld %d AVE %s: %s:%d %s | fail to add property %p %d %d 0x%x %lld | %d %s %p %d 0x%x 0x%llx %d\n", v26, 30, v27, "AVE_Prop_MakeDict", 154, "ret == 0", v39, a2, a3, a4, a5, v14, *(i - 2), *(i - 1), *i, i[1], *(i + 1), v19);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
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

uint64_t AVE_Prop_FindPropertyEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, __CFString *a7)
{
  v12 = a2;
  v13 = a1;
  v43 = *MEMORY[0x29EDCA608];
  v41 = 0u;
  v42 = 0u;
  *v39 = 0u;
  v40 = 0u;
  if (!a1 || a2 < 1 || !a5 || !a7)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v21 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p\n", CurrTime, 30, LevelStr, "AVE_Prop_FindPropertyEntry", 190, "pArray != __null && num > 0 && pINS != __null && pKey != __null", v13, v12, a5, a6, a3, a4, a7);
        CurrTime = AVE_GetCurrTime();
        v37 = a4;
        v38 = a7;
        v35 = a6;
        v36 = a3;
        v33 = v12;
        v34 = a5;
        v32 = v13;
        v31 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v37 = a4;
        v38 = a7;
        v35 = a6;
        v36 = a3;
        v33 = v12;
        v34 = a5;
        v32 = v13;
        v31 = LevelStr;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p", CurrTime, 30, v31, "AVE_Prop_FindPropertyEntry", 190, "pArray != __null && num > 0 && pINS != __null && pKey != __null", v32, v33, v34, v35, v36, v37, v38);
    }

    goto LABEL_23;
  }

  Str = AVE_CFStr_GetStr(a7, v39, 64);
  v15 = AVE_DevCap_Find(a3);
  if (!v15)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v24 = AVE_Log_CheckConsole(0x1Eu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %p %lld %d 0x%x %s\n", v25, 30, v26, "AVE_Prop_FindPropertyEntry", 196, "pDevCap != __null", v13, v12, a5, a6, a3, a4, Str);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %p %lld %d 0x%x %s", v27, 30, v28, "AVE_Prop_FindPropertyEntry", 196, "pDevCap != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %p %lld %d 0x%x %s", v25, 30, v26, "AVE_Prop_FindPropertyEntry", 196, "pDevCap != __null");
      }
    }

LABEL_23:
    v13 = 0;
    goto LABEL_24;
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
      goto LABEL_23;
    }
  }

LABEL_24:
  v29 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t AVE_Prop_SetProperty(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, __CFString *a7, const void *a8)
{
  v63 = *MEMORY[0x29EDCA608];
  v61 = 0u;
  v62 = 0u;
  *v59 = 0u;
  v60 = 0u;
  if (a1 && a2 >= 1 && a5 && a7)
  {
    PropertyEntry = AVE_Prop_FindPropertyEntry(a1, a2, a3, a4 | 0x20000, a5, a6, a7);
    if (PropertyEntry)
    {
      v17 = PropertyEntry;
      v18 = *(PropertyEntry + 40);
      if (v18)
      {
        v19 = v18(a5, PropertyEntry, a7, a8);
        if (v19 && AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v20 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v23 = v17[3];
          if (v20)
          {
            v24 = a3;
            printf("%lld %d AVE %s: %s:%d %s | fail to set property %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx %d\n", CurrTime, 30, LevelStr, "AVE_Prop_SetProperty", 268, "ret == 0", a5, a6, a3, a4, a7, a8, *v17, v17[1], *(v17 + 4), *(v17 + 5), v17[3], v19);
            v25 = AVE_GetCurrTime();
            v26 = AVE_Log_GetLevelStr(4);
            v55 = v17[3];
            v50 = *(v17 + 4);
            v52 = *(v17 + 5);
            v46 = *v17;
            v48 = v17[1];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx %d", v25, 30, v26, "AVE_Prop_SetProperty", 268, "ret == 0", a5, a6, v24, a4);
          }

          else
          {
            v57 = v17[3];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx %d", CurrTime, 30, LevelStr, "AVE_Prop_SetProperty", 268, "ret == 0", a5, a6, a3, a4);
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v35 = AVE_Log_CheckConsole(0x1Eu);
          v36 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          v38 = *(v17 + 5);
          if (v35)
          {
            v39 = a3;
            printf("%lld %d AVE %s: %s:%d %s | set function is not supported %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx\n", v36, 30, v37, "AVE_Prop_SetProperty", 260, "pEntry->Set != __null", a5, a6, a3, a4, a7, a8, *v17, v17[1], *(v17 + 4), *(v17 + 5), v17[3]);
            v40 = AVE_GetCurrTime();
            v41 = AVE_Log_GetLevelStr(4);
            v53 = *(v17 + 5);
            v56 = v17[3];
            v49 = v17[1];
            v51 = *(v17 + 4);
            v47 = *v17;
            syslog(3, "%lld %d AVE %s: %s:%d %s | set function is not supported %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx", v40, 30, v41, "AVE_Prop_SetProperty", 260, "pEntry->Set != __null", a5, a6, v39);
          }

          else
          {
            v54 = *(v17 + 5);
            syslog(3, "%lld %d AVE %s: %s:%d %s | set function is not supported %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx", v36, 30, v37, "AVE_Prop_SetProperty", 260, "pEntry->Set != __null", a5, a6, a3);
          }
        }

        v19 = 4294966294;
      }
    }

    else
    {
      Str = AVE_CFStr_GetStr(a7, v59, 64);
      if (AVE_Log_CheckLevel(0x1Eu, 5))
      {
        v32 = AVE_Log_CheckConsole(0x1Eu);
        v58 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(5);
        if (v32)
        {
          printf("%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %s %p %d\n", v58, 30, v33, a1, a2, a5, a6, a3, a4, Str, a8, -2002);
          v34 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %s %p %d", v34, 30, v45, a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %s %p %d", v58, 30, v33, a1, a2);
        }
      }

      CFShow(a7);
      CFShow(a8);
      v19 = 4294965294;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v27 = AVE_Log_CheckConsole(0x1Eu);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p\n", v28, 30, v29, "AVE_Prop_SetProperty", 249, "pArray != __null && num > 0 && pINS != __null && pKey != __null", a1, a2, a5, a6, a3, a4, a7, a8);
        v30 = AVE_GetCurrTime();
        v44 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p", v30, 30, v44, "AVE_Prop_SetProperty", 249, "pArray != __null && num > 0 && pINS != __null && pKey != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p", v28, 30, v29, "AVE_Prop_SetProperty", 249, "pArray != __null && num > 0 && pINS != __null && pKey != __null", a1);
      }
    }

    v19 = 4294966295;
  }

  v42 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t AVE_Prop_GetProperty(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, __CFString *a8, const void *a9)
{
  v65 = *MEMORY[0x29EDCA608];
  v63 = 0u;
  v64 = 0u;
  *v61 = 0u;
  v62 = 0u;
  if (a1 && a2 >= 1 && a5 && a8 && a9)
  {
    PropertyEntry = AVE_Prop_FindPropertyEntry(a1, a2, a3, a4 | 0x10000, a5, a6, a8);
    if (PropertyEntry)
    {
      v18 = PropertyEntry;
      v19 = *(PropertyEntry + 48);
      if (v19)
      {
        v20 = v19(a5, PropertyEntry, a7, a8, a9);
        if (v20 && AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v21 = a7;
          v22 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v24 = v18[3];
          if (v22)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to get property %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx %d\n", CurrTime, 30, LevelStr, "AVE_Prop_GetProperty", 330, "ret == 0", a5, a6, a3, a4, v21, a8, a9, *v18, v18[1], *(v18 + 4), *(v18 + 5), v18[3], v20);
            v25 = AVE_GetCurrTime();
            v26 = AVE_Log_GetLevelStr(4);
            v53 = v18[3];
            v48 = *(v18 + 4);
            v50 = *(v18 + 5);
            v44 = *v18;
            v46 = v18[1];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx %d", v25, 30, v26, "AVE_Prop_GetProperty", 330, "ret == 0", a5, a6, a3, a4, v21);
          }

          else
          {
            v55 = v18[3];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx %d", CurrTime, 30, LevelStr, "AVE_Prop_GetProperty", 330, "ret == 0", a5, a6, a3, a4, v21);
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v35 = a7;
          v36 = AVE_Log_CheckConsole(0x1Eu);
          v37 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(4);
          v39 = *(v18 + 5);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | get function is not supported %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx\n", v37, 30, v38, "AVE_Prop_GetProperty", 322, "pEntry->Get != __null", a5, a6, a3, a4, v35, a8, a9, *v18, v18[1], *(v18 + 4), *(v18 + 5), v18[3]);
            v37 = AVE_GetCurrTime();
            v38 = AVE_Log_GetLevelStr(4);
            v51 = *(v18 + 5);
            v54 = v18[3];
            v47 = v18[1];
            v49 = *(v18 + 4);
            v45 = *v18;
          }

          else
          {
            v52 = *(v18 + 5);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | get function is not supported %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx", v37, 30, v38, "AVE_Prop_GetProperty", 322, "pEntry->Get != __null", a5, a6, a3, a4);
        }

        v20 = 4294966294;
      }
    }

    else
    {
      Str = AVE_CFStr_GetStr(a8, v61, 64);
      if (AVE_Log_CheckLevel(0x1Eu, 5))
      {
        v60 = a7;
        v33 = AVE_Log_CheckConsole(0x1Eu);
        v56 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(5);
        if (v33)
        {
          printf("%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %p %s %p %d\n", v56, 30, v34, a1, a2, a5, a6, a3, a4, v60, Str, a9, -2002);
          v57 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %p %s %p %d", v57, 30, v43, a1, a2, a5);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %p %s %p %d", v56, 30, v34, a1, a2, a5);
        }
      }

      CFShow(a8);
      CFShow(a9);
      v20 = 4294965294;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v27 = a6;
      v28 = a7;
      v29 = AVE_Log_CheckConsole(0x1Eu);
      v59 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p %p\n", v59, 30, v30, "AVE_Prop_GetProperty", 311, "pArray != __null && num > 0 && pINS != __null && pKey != __null && pValue != __null", a1, a2, a5, v27, a3, a4, v28, a8, a9);
        v31 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p %p", v31, 30, v42, "AVE_Prop_GetProperty", 311, "pArray != __null && num > 0 && pINS != __null && pKey != __null && pValue != __null", a1, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p %p", v59, 30, v30, "AVE_Prop_GetProperty", 311, "pArray != __null && num > 0 && pINS != __null && pKey != __null && pValue != __null", a1, a2);
      }
    }

    v20 = 4294966295;
  }

  v40 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t AVE_Prop_AVC_SetInputQueueMaxCount(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v21 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v21)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetInputQueueMaxCount", 139, "(-1) <= maxCnt && maxCnt <= 48", a1, a1[7], a2, a3, a4, valuePtr, -1, 48);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v24 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetInputQueueMaxCount", 139, "(-1) <= maxCnt && maxCnt <= 48", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4150) = valuePtr;
        if (*(a1 + 4117))
        {
          v10 = AVE_USL_Drv_SetQueueSize(a1[15], v9);
        }

        else
        {
          v10 = 0;
          *(a1 + 2943) = v9;
        }

        if (AVE_Log_CheckLevel(0x1Eu, 7))
        {
          v25 = AVE_Log_CheckConsole(0x1Eu);
          v26 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(7);
          v28 = *a2;
          if (v25)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v26, 30, v27, a1, a1[7], *a2, valuePtr);
            v26 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v29 = a1[7];
          }

          v32 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v26);
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v15 = AVE_Log_CheckConsole(0x1Eu);
        v16 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        v18 = a1[7];
        v19 = CFGetTypeID(a4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_AVC_SetInputQueueMaxCount", 129, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
          v16 = AVE_GetCurrTime();
          v17 = AVE_Log_GetLevelStr(4);
          v20 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_AVC_SetInputQueueMaxCount", 129, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v11 = AVE_Log_CheckConsole(0x1Eu);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_AVC_SetInputQueueMaxCount", 119, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v31, "AVE_Prop_AVC_SetInputQueueMaxCount");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_AVC_SetInputQueueMaxCount");
      }
    }

    return 4294966295;
  }

  return v10;
}

uint64_t AVE_Prop_AVC_GetInputQueueMaxCount(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[4150];
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
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v14 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v14)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v12);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v17 = *(a1 + 7);
          v27 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v22 = AVE_Log_CheckConsole(0x1Eu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v23, 30, v24, "AVE_Prop_AVC_GetInputQueueMaxCount", 193, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v24, "AVE_Prop_AVC_GetInputQueueMaxCount", 193, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x1Eu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_GetInputQueueMaxCount", 182, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v21 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v26, "AVE_Prop_AVC_GetInputQueueMaxCount", 182);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetInputQueueMaxCount", 182);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetPreemptiveLoadBalancing(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
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

      a1[4151] = v10;
      a1[2867] = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v12 = Value != 0;
        v13 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v16 = *a2;
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v12);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v17 = *(a1 + 7);
        }

        v29 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v22 = AVE_Log_CheckConsole(0x1Eu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        v25 = *(a1 + 7);
        v26 = CFGetTypeID(a4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_AVC_SetPreemptiveLoadBalancing", 236, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          v27 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_AVC_SetPreemptiveLoadBalancing", 236, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x1Eu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_SetPreemptiveLoadBalancing", 226, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v28, "AVE_Prop_AVC_SetPreemptiveLoadBalancing");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_SetPreemptiveLoadBalancing");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetPreemptiveLoadBalancing(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[2867];
    v11 = MEMORY[0x29EDB8F00];
    if (v10 != 2)
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = v10 == 2;
      v14 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v17 = *a2;
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v13);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v18 = *(a1 + 7);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", CurrTime);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_GetPreemptiveLoadBalancing", 273, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_AVC_GetPreemptiveLoadBalancing", 273);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetPreemptiveLoadBalancing", 273);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetMaximizePowerEfficiency(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4152] = v9;
      a1[172] = a1[172] & 0xFFFFFFFD | (2 * v9);
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v11 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v9);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v15 = *(a1 + 7);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v23 = *(a1 + 7);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetMaximizePowerEfficiency", 321, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetMaximizePowerEfficiency", 321, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetMaximizePowerEfficiency", 311, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_AVC_SetMaximizePowerEfficiency");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetMaximizePowerEfficiency");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetMaximizePowerEfficiency(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[172] & 2;
    v11 = MEMORY[0x29EDB8EF8];
    if (v10)
    {
      v11 = MEMORY[0x29EDB8F00];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v16 = *a2;
      v17 = v10 >> 1;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v17);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v18 = *(a1 + 7);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", CurrTime);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_GetMaximizePowerEfficiency", 366, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_AVC_GetMaximizePowerEfficiency", 366);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetMaximizePowerEfficiency", 366);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetRealTime(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3)
  {
    if (!a4)
    {
      Value = -1;
LABEL_11:
      a1[4153] = Value;
      a1[173] = Value;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v15 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v18 = *a2;
        if (v15)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, Value);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v19 = *(a1 + 7);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
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

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x1Eu);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      v23 = *(a1 + 7);
      v24 = CFGetTypeID(a4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetRealTime", 415, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v25 = *(a1 + 7);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetRealTime", 415, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v10 = AVE_Log_CheckConsole(0x1Eu);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v11, 30, v12, "AVE_Prop_AVC_SetRealTime", 403, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v13 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 30, v26, "AVE_Prop_AVC_SetRealTime");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v11, 30, v12, "AVE_Prop_AVC_SetRealTime");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_GetRealTime(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = MEMORY[0x29EDB8F00];
    v11 = a1[173];
    if (!v11)
    {
      v10 = MEMORY[0x29EDB8EF8];
    }

    v12 = *v10;
    if (v11 < 0)
    {
      v12 = 0;
    }

    *a5 = v12;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v14 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v17 = *a2;
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v11);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v18 = *(a1 + 7);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", CurrTime);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_GetRealTime", 453, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_AVC_GetRealTime", 453);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetRealTime", 453);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetPriority(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetPriority", 517, "-100 <= priority && priority <= 200", a1, a1[7], a2, a3, a4, valuePtr, -100, 200);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetPriority", 517, "-100 <= priority && priority <= 200", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4154) = valuePtr;
        *(a1 + 174) = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          v12 = AVE_GetCurrTime();
          v13 = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v23 = a1[7];
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetPriority", 507, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetPriority", 507, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetPriority", 497, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetPriority");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetPriority");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetPriority(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[174];
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v13 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = *(a1 + 7);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v21 = AVE_Log_CheckConsole(0x1Eu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetPriority", 563, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetPriority", 563, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetPriority", 553, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetPriority", 553);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetPriority", 553);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetThrottleForBackground(AVE_DAL ***a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      if (*(a1 + 4155) == v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = AVE_USL_Drv_SetInternalThreadPriority(a1[15], *(a1 + 16472));
      }

      *(a1 + 4155) = v9;
      *(a1 + 16472) = v9;
      if (AVE_Log_CheckLevel(0x1Eu, 7))
      {
        v21 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v24 = *a2;
        if (v21)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, v9);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v25 = a1[7];
        }

        v28 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v15 = AVE_Log_CheckConsole(0x1Eu);
        v16 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        v18 = a1[7];
        v19 = CFGetTypeID(a4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_AVC_SetThrottleForBackground", 606, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
          v16 = AVE_GetCurrTime();
          v17 = AVE_Log_GetLevelStr(4);
          v20 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_AVC_SetThrottleForBackground", 606, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v11 = AVE_Log_CheckConsole(0x1Eu);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_AVC_SetThrottleForBackground", 596, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v27, "AVE_Prop_AVC_SetThrottleForBackground");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_AVC_SetThrottleForBackground");
      }
    }

    return 4294966295;
  }

  return v10;
}

uint64_t AVE_Prop_AVC_GetThrottleForBackground(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[16472];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[16472])
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v10);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v17 = *(a1 + 7);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", CurrTime);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x1Eu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_GetThrottleForBackground", 650, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_AVC_GetThrottleForBackground", 650);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetThrottleForBackground", 650);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetMaximumRealTimeFrameRate(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMaximumRealTimeFrameRate", 708, "0 < maxFrameRate && maxFrameRate <= 100000", a1, a1[7], a2, a3, a4, valuePtr, 0, 100000);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMaximumRealTimeFrameRate", 708, "0 < maxFrameRate && maxFrameRate <= 100000", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4156) = valuePtr;
        *(a1 + 2992) = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          v12 = AVE_GetCurrTime();
          v13 = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v23 = a1[7];
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetMaximumRealTimeFrameRate", 698, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetMaximumRealTimeFrameRate", 698, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetMaximumRealTimeFrameRate", 688, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetMaximumRealTimeFrameRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetMaximumRealTimeFrameRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetMaximumRealTimeFrameRate(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2992];
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v13 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = *(a1 + 7);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v21 = AVE_Log_CheckConsole(0x1Eu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetMaximumRealTimeFrameRate", 754, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetMaximumRealTimeFrameRate", 754, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetMaximumRealTimeFrameRate", 744, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetMaximumRealTimeFrameRate", 744);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetMaximumRealTimeFrameRate", 744);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetPrioritizeEncodingSpeedOverQuality(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4157] = v9;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v11 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v9);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v15 = *(a1 + 7);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v23 = *(a1 + 7);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetPrioritizeEncodingSpeedOverQuality", 797, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetPrioritizeEncodingSpeedOverQuality", 797, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetPrioritizeEncodingSpeedOverQuality", 787, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_AVC_SetPrioritizeEncodingSpeedOverQuality");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetPrioritizeEncodingSpeedOverQuality");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetPrioritizeEncodingSpeedOverQuality(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[4157];
    v11 = MEMORY[0x29EDB8F00];
    if (v10 <= 0)
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = v10 > 0;
      v14 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v17 = *a2;
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v13);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v18 = *(a1 + 7);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", CurrTime);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_GetPrioritizeEncodingSpeedOverQuality", 836, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_AVC_GetPrioritizeEncodingSpeedOverQuality", 836);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetPrioritizeEncodingSpeedOverQuality", 836);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetNumberOfCores(unsigned int *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = AVE_DevCap_Find(a1[17]);
    if (v10)
    {
      v11 = v10;
      v12 = CFNumberCreate(a3, kCFNumberSInt32Type, (*(v10 + 2) + 4));
      if (v12)
      {
        v13 = v12;
        *a5 = v12;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v15 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          v18 = *(*(v11 + 2) + 4);
          if (v15)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, *(*(v11 + 2) + 4), v13);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v19 = *(a1 + 7);
            v33 = *(*(v11 + 2) + 4);
            v32 = *a2;
          }

          else
          {
            v34 = *(*(v11 + 2) + 4);
          }

          syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v28 = AVE_Log_CheckConsole(0x1Eu);
          v29 = AVE_GetCurrTime();
          v30 = AVE_Log_GetLevelStr(4);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v29, 30, v30, "AVE_Prop_AVC_GetNumberOfCores", 891, "pNum != __null", a1, *(a1 + 7), a2, a3, a4, a5, *(*(v11 + 2) + 4));
            v29 = AVE_GetCurrTime();
            v30 = AVE_Log_GetLevelStr(4);
            v37 = *(*(v11 + 2) + 4);
            v35 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v29, 30, v30, "AVE_Prop_AVC_GetNumberOfCores", 891, "pNum != __null", a1);
        }

        return 4294966293;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v24 = AVE_Log_CheckConsole(0x1Eu);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %lld %p %p %p %p %d\n", v25, 30, v26, "AVE_Prop_AVC_GetNumberOfCores", 886, "pDevCap != __null", a1, *(a1 + 7), a2, a3, a4, a5, a1[17]);
          v25 = AVE_GetCurrTime();
          v26 = AVE_Log_GetLevelStr(4);
          v27 = *(a1 + 7);
          v36 = a1[17];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %lld %p %p %p %p %d", v25, 30, v26, "AVE_Prop_AVC_GetNumberOfCores", 886, "pDevCap != __null", a1);
      }

      return 4294966294;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x1Eu);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v21, 30, v22, "AVE_Prop_AVC_GetNumberOfCores", 877, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v23 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v23, 30, v31, "AVE_Prop_AVC_GetNumberOfCores", 877);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_AVC_GetNumberOfCores", 877);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetMaxEncoderPixelRate(unsigned int *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    ProfileEntry = AVC_FindProfileEntry(a1[4112]);
    if (ProfileEntry)
    {
      v11 = ProfileEntry[2];
      v12 = ProfileEntry[3];
    }

    else
    {
      v12 = 1;
      v11 = 8;
    }

    PixelPerf = AVE_DevCap_FindPixelPerf(a1[17], 1, 1, v11, v12, 1);
    valuePtr = PixelPerf;
    if (PixelPerf <= 0)
    {
      v25 = PixelPerf;
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v26 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v29 = a1[17];
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find DevCap Pixel Perf %p %lld %p %p %p %d %lld\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetMaxEncoderPixelRate", 945, "pixelPerf > 0", a1, *(a1 + 7), a3, a4, a5, a1[17], v25);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v30 = *(a1 + 7);
        }

        v37 = a1[17];
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find DevCap Pixel Perf %p %lld %p %p %p %d %lld", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetMaxEncoderPixelRate", 945, "pixelPerf > 0", a1);
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
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v21 = AVE_Log_CheckConsole(0x1Eu);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(7);
          if (v21)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %lld %p\n", v22, 30, v23, a1, *(a1 + 7), *a2, valuePtr, v19);
            v22 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v24 = *(a1 + 7);
            v36 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %lld %p", v22, 30);
          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v31 = AVE_Log_CheckConsole(0x1Eu);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          if (v31)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %lld\n", v32, 30, v33, "AVE_Prop_AVC_GetMaxEncoderPixelRate", 950, "pNum != __null", a1, *(a1 + 7), a2, a3, a4, a5, valuePtr);
            v32 = AVE_GetCurrTime();
            v33 = AVE_Log_GetLevelStr(4);
            v34 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %lld", v32, 30, v33, "AVE_Prop_AVC_GetMaxEncoderPixelRate", 950, "pNum != __null", a1);
        }

        return 4294966293;
      }
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_GetMaxEncoderPixelRate", 928, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v16 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v16, 30, v35, "AVE_Prop_AVC_GetMaxEncoderPixelRate", 928);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v14, 30, v15, "AVE_Prop_AVC_GetMaxEncoderPixelRate", 928);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_AddProfileLevel(int a1, int a2, uint64_t a3, __CFDictionary *a4)
{
  if (a4)
  {
    if (AVE_DevCap_Find(a1))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (Mutable)
      {
        v9 = Mutable;
        if ((a2 & 0x30000) == 0x10000)
        {
          v10 = *MEMORY[0x29EDBD110];
        }

        else
        {
          v10 = *MEMORY[0x29EDBD118];
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD128], *MEMORY[0x29EDBD138]);
        CFDictionarySetValue(v9, *MEMORY[0x29EDBD108], v10);
        v11 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
        if (v11)
        {
          v12 = v11;
          for (i = 0; i != 70; i += 2)
          {
            CFArrayAppendValue(v12, gsc_saAVE_AVC_ProfileLevel[i]);
          }

          CFDictionarySetValue(v9, *MEMORY[0x29EDBD120], v12);
          CFDictionarySetValue(a4, *MEMORY[0x29EDBCDB8], v9);
          CFRelease(v12);
          v14 = 0;
        }

        else
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v27 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v27)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create array %d 0x%x %lld %p\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_AddProfileLevel", 1007, "pTmpArray != __null", a1, a2, a3, a4);
              v30 = AVE_GetCurrTime();
              v35 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create array %d 0x%x %lld %p", v30, 30, v35);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create array %d 0x%x %lld %p", CurrTime, 30, LevelStr);
            }
          }

          v14 = 4294966293;
        }

        CFRelease(v9);
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p\n", v24, 30, v25, "AVE_Prop_AVC_AddProfileLevel", 994, "pTmpDict != __null", a1, a2, a3, a4);
            v26 = AVE_GetCurrTime();
            v34 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p", v26, 30, v34);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p", v24, 30, v25);
          }
        }

        return 4294966293;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v19 = AVE_Log_CheckConsole(0x1Eu);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p\n", v20, 30, v21, "AVE_Prop_AVC_AddProfileLevel", 988, "pDevCap != __null", a1, a2, a3, a4);
          v22 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v22, 30, v33);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v20, 30, v21);
        }
      }

      return 4294966294;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x1Eu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v16, 30, v17, "AVE_Prop_AVC_AddProfileLevel", 983, "pDict != __null", a1, a2, a3, 0);
        v18 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v18, 30, v32);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v16, 30, v17);
      }
    }

    return 4294966295;
  }

  return v14;
}

uint64_t AVE_Prop_AVC_SetProfileLevel(char *a1, const char **a2, const __CFString *a3, const __CFString *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Str = AVE_CFStr_GetStr(a4, a1 + 16632, 128);
      AVE_SNPrintf(a1 + 16632, 128, "%s", v10, v11, v12, v13, v14, Str);
      v15 = &qword_2A189B3A0 + 1;
      v16 = 35;
      while (!CFEqual(a4, *(v15 - 3)))
      {
        v15 += 4;
        if (!--v16)
        {
          v17 = 0;
          v18 = 0;
          goto LABEL_18;
        }
      }

      v17 = *(v15 - 1);
      v18 = *v15;
LABEL_18:
      if (CFEqual(a4, *MEMORY[0x29EDBD008]))
      {
        *(a1 + 12012) = 0x100000001;
      }

      else if (CFEqual(a4, *MEMORY[0x29EDBD010]))
      {
        *(a1 + 12028) = 0x100000001;
        *(a1 + 3272) = 1;
        *(a1 + 157) = 0x100000000;
        *(a1 + 322) = 1;
        *(a1 + 310) &= ~0x400u;
      }

      if (v17)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 7))
        {
          v30 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v30)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v17, v18);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v49 = *(a1 + 7);
            v50 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d %d", CurrTime);
        }

        *(a1 + 4112) = v17;
        if (v18)
        {
          *(a1 + 4113) = v18;
        }

        if (v17 > 9 || ((1 << v17) & 0x354) == 0 || *(a1 + 2688) == 2)
        {
          goto LABEL_59;
        }

        v37 = *(a1 + 3013) + 8;
        if (v37 <= *(a1 + 3014) + 8)
        {
          v37 = *(a1 + 3014) + 8;
        }

        updated = AVE_UpdatePixelBufferDict(*(a1 + 17), *(a1 + 16), *(a1 + 179), 1, *(a1 + 2863), *(a1 + 2864), *(a1 + 360), *(a1 + 361), v37, v17, 0x414C4C20u, *(a1 + 2));
        if (updated)
        {
          v29 = updated;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v39 = AVE_Log_CheckConsole(0x1Eu);
            v40 = AVE_GetCurrTime();
            v41 = AVE_Log_GetLevelStr(4);
            if (v39)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d\n", v40, 30, v41, "AVE_Prop_AVC_SetProfileLevel", 1143, "ret == 0", a1, *(a1 + 7), a2, a3, a4, v29);
              v40 = AVE_GetCurrTime();
              v41 = AVE_Log_GetLevelStr(4);
              v42 = *(a1 + 7);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d", v40, 30, v41, "AVE_Prop_AVC_SetProfileLevel", 1143, "ret == 0");
          }
        }

        else
        {
LABEL_59:
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v43 = AVE_Log_CheckConsole(0x1Eu);
            v44 = AVE_GetCurrTime();
            v45 = AVE_Log_GetLevelStr(7);
            if (v43)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d %s\n", v44, 30, v45, a1, *(a1 + 7), *a2, 35, a1 + 16632);
              v44 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v46 = *(a1 + 7);
              v51 = *a2;
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d %s", v44, 30);
          }

          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v33 = AVE_Log_CheckConsole(0x1Eu);
          v34 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
          if (v33)
          {
            printf("%lld %d AVE %s: %s:%d %s | unsupported profile/level %p %lld %s %s %d %d\n", v34, 30, v35, "AVE_Prop_AVC_SetProfileLevel", 1108, "eProfile != AVC_Profile_Invalid", a1, *(a1 + 7), *a2, a1 + 16632, 0, v18);
            v34 = AVE_GetCurrTime();
            v35 = AVE_Log_GetLevelStr(4);
            v36 = *(a1 + 7);
            v52 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | unsupported profile/level %p %lld %s %s %d %d", v34, 30, v35, "AVE_Prop_AVC_SetProfileLevel", 1108);
        }

        return 4294965292;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v23 = AVE_Log_CheckConsole(0x1Eu);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        v26 = *(a1 + 7);
        v27 = CFGetTypeID(a4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_AVC_SetProfileLevel", 1069, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          v28 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_AVC_SetProfileLevel", 1069, "CFStringGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_SetProfileLevel", 1059, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v22 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 30, v48, "AVE_Prop_AVC_SetProfileLevel");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_SetProfileLevel");
      }
    }

    return 4294966295;
  }

  return v29;
}

uint64_t AVE_Prop_AVC_GetProfileLevel(const char *a1, const char **a2, CFAllocatorRef alloc, const __CFString *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = CFStringCreateWithCString(alloc, a1 + 16632, 0);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v13 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %s %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, a1 + 16632, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = *(a1 + 7);
          v27 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %s %p", CurrTime, 30);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v21 = AVE_Log_CheckConsole(0x1Eu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s\n", v22, 30, v23, "AVE_Prop_AVC_GetProfileLevel", 1185, "pStr != __null", a1, alloc, a4, a5, a1 + 16632);
          v24 = AVE_GetCurrTime();
          v26 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v24, 30, v26, "AVE_Prop_AVC_GetProfileLevel", 1185);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v22, 30, v23, "AVE_Prop_AVC_GetProfileLevel", 1185);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetProfileLevel", 1176, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, alloc, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetProfileLevel", 1176);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetProfileLevel", 1176);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetMaxAllowedFrameQP(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMaxAllowedFrameQP", 1238, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, a1[7], a2, a3, a4, valuePtr, -12, 51);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMaxAllowedFrameQP", 1238, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4190) = valuePtr;
        *(a1 + 337) = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          v12 = AVE_GetCurrTime();
          v13 = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v23 = a1[7];
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetMaxAllowedFrameQP", 1228, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetMaxAllowedFrameQP", 1228, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetMaxAllowedFrameQP", 1218, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetMaxAllowedFrameQP");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetMaxAllowedFrameQP");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetMaxAllowedFrameQP(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[337];
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v13 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = *(a1 + 7);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v21 = AVE_Log_CheckConsole(0x1Eu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetMaxAllowedFrameQP", 1284, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetMaxAllowedFrameQP", 1284, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetMaxAllowedFrameQP", 1274, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetMaxAllowedFrameQP", 1274);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetMaxAllowedFrameQP", 1274);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetMinAllowedFrameQP(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMinAllowedFrameQP", 1337, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, a1[7], a2, a3, a4, valuePtr, -12, 51);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMinAllowedFrameQP", 1337, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4191) = valuePtr;
        *(a1 + 336) = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          v12 = AVE_GetCurrTime();
          v13 = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v23 = a1[7];
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetMinAllowedFrameQP", 1327, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetMinAllowedFrameQP", 1327, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetMinAllowedFrameQP", 1317, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetMinAllowedFrameQP");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetMinAllowedFrameQP");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetMinAllowedFrameQP(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[336];
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v13 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = *(a1 + 7);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v21 = AVE_Log_CheckConsole(0x1Eu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetMinAllowedFrameQP", 1383, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetMinAllowedFrameQP", 1383, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetMinAllowedFrameQP", 1373, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetMinAllowedFrameQP", 1373);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetMinAllowedFrameQP", 1373);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetSoftMaxQuantizationParameter(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetSoftMaxQuantizationParameter", 1436, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, a1[7], a2, a3, a4, valuePtr, -12, 51);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetSoftMaxQuantizationParameter", 1436, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4192) = valuePtr;
        *(a1 + 309) = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          v12 = AVE_GetCurrTime();
          v13 = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v23 = a1[7];
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetSoftMaxQuantizationParameter", 1426, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetSoftMaxQuantizationParameter", 1426, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetSoftMaxQuantizationParameter", 1416, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetSoftMaxQuantizationParameter");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetSoftMaxQuantizationParameter");
      }
    }

    return 4294966295;
  }

  return result;
}