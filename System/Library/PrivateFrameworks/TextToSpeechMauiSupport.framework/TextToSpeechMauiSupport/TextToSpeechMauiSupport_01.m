uint64_t compstats_Reset(uint64_t a1)
{
  if (!a1)
  {
    return 2285903879;
  }

  *(a1 + 24) = 0;
  *(a1 + 296) = 0;
  *(a1 + 312) = 0;
  v1 = *(a1 + 284);
  if (v1)
  {
    v2 = 0;
    for (i = 0; i < v1; ++i)
    {
      v4 = *(a1 + 288);
      if (v4)
      {
        v5 = v4 + v2;
        *(v5 + 32) = 0;
        *v5 = 0uLL;
        *(v5 + 16) = 0uLL;
        v1 = *(a1 + 284);
      }

      v2 += 56;
    }
  }

  return 0;
}

uint64_t compstats_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 61435, 320);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(*(a1 + 16) + 8);
    heap_Free(v4, *(a1 + 288));
    heap_Free(v4, a1);
  }

  return v3;
}

uint64_t compstats_Start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2285903879;
  if (a1)
  {
    v9 = a3;
    if (*(a1 + 284) <= a3)
    {
      log_OutPublic(*(*(a1 + 16) + 32), "CompStats", 2689, 0, a5, a6, a7, a8, v21);
    }

    else if (*(a1 + 24) < 0x40u)
    {
      v11 = compstats_ClockXStart(*(a1 + 288) + 56 * a3, *(a1 + 16) + 392, a3, a4, a5, a6, a7, a8);
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }

      else
      {
        v18 = *(a1 + 24);
        if (v18 && (v19 = *(a1 + 4 * (v18 - 1) + 28)) != 0)
        {
          v8 = compstats_ClockXStop(*(a1 + 288) + 56 * v19, *(a1 + 16) + 392, v12, v13, v14, v15, v16, v17);
          v18 = *(a1 + 24);
        }

        else
        {
          v8 = 0;
        }

        *(a1 + 4 * v18 + 28) = v9;
        *(a1 + 24) = v18 + 1;
      }
    }

    else
    {
      log_OutPublic(*(*(a1 + 16) + 32), "CompStats", 2690, 0, a5, a6, a7, a8, v21);
      return 2285903889;
    }
  }

  return v8;
}

uint64_t compstats_ClockXStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2285903879;
  if (a1)
  {
    if (*(a1 + 12))
    {
      log_OutPublic(0, "CompStats", 2693, 0, a5, a6, a7, a8, v12[0]);
      return 2285903889;
    }

    else
    {
      v10 = *a2;
      if (*a2)
      {
        memset(v12, 0, 12);
        (*v10)(*(a2 + 8), v12);
        v8 = 0;
        *(a1 + 12) = v12[0];
        *(a1 + 4) = *(v12 + 4);
      }

      else
      {
        return 0;
      }
    }
  }

  return v8;
}

uint64_t compstats_ClockXStop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2285903879;
  if (a1)
  {
    if (*(a1 + 12))
    {
      v16 = 0;
      v17 = 0;
      memset(v14, 0, sizeof(v14));
      v15 = 0;
      compstats_ClockXStart(v14, a2, a3, a4, a5, a6, a7, a8);
      v10 = vsub_s32(*(v14 + 4), *(a1 + 4));
      v11 = *(a1 + 16);
      v12 = HIDWORD(v14[0]) - *(a1 + 12);
      *(a1 + 28) = vadd_s32(*(a1 + 28), v10);
      *(a1 + 36) += v12;
      if (*(a1 + 20) + v11 < vadd_s32(vdup_lane_s32(v10, 1), v10).u32[0])
      {
        *(a1 + 16) = v10;
      }

      if (*(a1 + 24) < v12)
      {
        *(a1 + 24) = v12;
      }

      v8 = 0;
      *(a1 + 8) = 0;
      *a1 = (*a1 + 1);
    }

    else
    {
      log_OutPublic(0, "CompStats", 2694, 0, a5, a6, a7, a8, v14[0]);
      return 2285903889;
    }
  }

  return v8;
}

uint64_t compstats_InsertNewAt(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2285903879;
  if (a1)
  {
    v11 = *(a1 + 284);
    v12 = *(a1 + 16);
    if (v11 <= a3)
    {
      log_OutPublic(*(v12 + 32), "CompStats", 2689, 0, a5, a6, a7, a8, v53);
    }

    else
    {
      v13 = heap_Realloc(*(v12 + 8), *(a1 + 288), 56 * (2 * v11 + 2));
      *(a1 + 288) = v13;
      if (v13)
      {
        v18 = *(a1 + 284);
        v19 = v18 + 1;
        *(a1 + 284) = v18 + 1;
        if (2 * (v18 + 1) - 1 >= (v18 + 1))
        {
          v20 = 2 * v18;
          do
          {
            v21 = *(a1 + 288);
            v22 = v21 + 56 * (v20 + 1);
            v23 = v21 + 56 * v20;
            v24 = *(v23 + 16);
            *v22 = *v23;
            *(v22 + 16) = v24;
            *(v22 + 32) = *(v23 + 32);
            *(v22 + 48) = *(v23 + 48);
            v19 = *(a1 + 284);
          }

          while (v20-- >= v19);
          v13 = *(a1 + 288);
        }

        *(a1 + 304) = v13 + 56 * v19;
        v26 = v19 - 1;
        if (v19 - 1 > a3)
        {
          v27 = 56 * (v19 - 2);
          v28 = 56 * v26;
          do
          {
            v29 = *(a1 + 288);
            v30 = v29 + v28;
            v31 = (v29 + v27);
            v32 = *v31;
            v33 = v31[1];
            v34 = v31[2];
            *(v30 + 48) = *(v31 + 6);
            *(v30 + 16) = v33;
            *(v30 + 32) = v34;
            *v30 = v32;
            v35 = *(a1 + 304);
            v36 = v35 + v28;
            v37 = (v35 + v27);
            v38 = *v37;
            v39 = v37[1];
            v40 = v37[2];
            *(v36 + 48) = *(v37 + 6);
            *(v36 + 16) = v39;
            *(v36 + 32) = v40;
            *v36 = v38;
            v27 -= 56;
            v28 -= 56;
            --v26;
          }

          while (v26 > a3);
          v13 = *(a1 + 288);
        }

        __asm { FMOV            V1.2D, #1.0 }

        v54 = _Q1;
        if (v13)
        {
          v45 = (v13 + 56 * a3);
          cstdlib_memset(v45, 0, 0x38uLL);
          *(v45 + 40) = v54;
          *v45 = 0u;
          v45[1] = 0u;
          *(v45 + 4) = 0;
        }

        v46 = *(a1 + 304);
        if (v46)
        {
          v47 = (v46 + 56 * a3);
          cstdlib_memset(v47, 0, 0x38uLL);
          *(v47 + 40) = v54;
          *v47 = 0u;
          v47[1] = 0u;
          *(v47 + 4) = 0;
        }

        v48 = *(a1 + 24);
        if (v48)
        {
          v49 = 0;
          v50 = a1 + 28;
          do
          {
            v51 = *(v50 + 4 * v49);
            if (v51 >= a3)
            {
              *(v50 + 4 * v49) = v51 + 1;
            }

            ++v49;
          }

          while (v49 < v48);
        }

        return 0;
      }

      else
      {
        log_OutPublic(*(*(a1 + 16) + 32), "CompStats", 2688, 0, v14, v15, v16, v17, v53);
        *(a1 + 284) = 0;
        return 2285903882;
      }
    }
  }

  return v8;
}

uint64_t compstats_Stop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2285903879;
  if (!a1)
  {
    return v8;
  }

  if (*(a1 + 284) <= a3)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "CompStats", 2691, 0, a5, a6, a7, a8, v22);
    return v8;
  }

  v10 = *(a1 + 24);
  if (!v10 || *(a1 + 28 + 4 * (v10 - 1)) != a3)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "CompStats", 2692, 0, a5, a6, a7, a8, v22);
    return 2285903889;
  }

  v8 = compstats_ClockXStop(*(a1 + 288) + 56 * a3, *(a1 + 16) + 392, a3, a4, a5, a6, a7, a8);
  v17 = *(a1 + 24);
  *(a1 + 24) = v17 - 1;
  if (v17 == 1)
  {
    return v8;
  }

  v18 = *(a1 + 28 + 4 * (v17 - 2));
  if (!v18)
  {
    return v8;
  }

  v19 = *(a1 + 288) + 56 * v18;
  v20 = *(a1 + 16) + 392;

  return compstats_ClockXStart(v19, v20, v11, v12, v13, v14, v15, v16);
}

uint64_t compstats_Notify(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 2285903879;
  }

  if (a3 != 8)
  {
    return 0;
  }

  if (!*(a1 + 296))
  {
    *(a1 + 296) = 1;
    cstdlib_memcpy(*(a1 + 304), *(a1 + 288), 56 * *(a1 + 284));
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = 4 * v10;
      do
      {
        v12 = *(a1 + 304) + 56 * *(a1 + 24 + v11);
        if (*(v12 + 12))
        {
          compstats_ClockXStop(v12, *(a1 + 16) + 392, v4, v5, v6, v7, v8, v9);
        }

        v11 -= 4;
      }

      while (v11);
    }

    paramc_ParamGetUInt(*(*(a1 + 16) + 40), "audiooutputbufsamples", (a1 + 312));
  }

  return 0;
}

uint64_t compstats_ClockReset(uint64_t a1)
{
  if (!a1)
  {
    return 2285903879;
  }

  result = 0;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t compstats_Log(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, int a6, int a7)
{
  v15 = 0;
  result = 2285903879;
  if (a1 && a3)
  {
    if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "pipeline", &v15) & 0x80000000) != 0)
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v14 = v15;
    }

    if (*(a1 + 296))
    {
      compstats_LogReport(*(a1 + 284), *(a1 + 304), a3, a4, " Latency", v14, *(a1 + 312), a5, 0, 0);
      v14 = v15;
    }

    compstats_LogReport(*(a1 + 284), *(a1 + 288), a3, a4, 0, v14, *(a1 + 312), a5, a6, a7);
    return 0;
  }

  return result;
}

uint64_t compstats_LogReport(unsigned int a1, _DWORD *a2, uint64_t a3, const char *a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = "";
  }

  log_OutText(a3, "CompStats", 2, 0, "====================Compstats %s%s Report Start====================", a6, a7, a8, v16);
  if (a6 && *a6)
  {
    log_OutText(a3, "CompStats", 2, 0, "Pipeline %s", v17, v18, v19, a6);
  }

  if (a7)
  {
    log_OutText(a3, "CompStats", 2, 0, "Audio output buffer samples %u", v17, v18, v19, a7);
  }

  v20 = a9;
  v21 = a10;
  log_OutText(a3, "CompStats", 2, 0, "<CPU msec> / <real-time msec>, <%% CPU> / <%% real-time> (timer starts), <max CPU> / <max real-time>", v17, v18, v19, v53);
  log_OutText(a3, "CompStats", 2, 0, "----------------------------------------------------------------------------------------", v22, v23, v24, v54);
  v28 = a2[8] + a2[7];
  if (a1 <= 1)
  {
    v39 = v28 == 0;
  }

  else
  {
    v59 = v16;
    v29 = 0;
    v30 = 0;
    v31 = a1 - 1;
    v60 = a2;
    v32 = a2 + 23;
    v33 = v31;
    v34 = a2[9];
    v35 = v28;
    do
    {
      v35 -= *(v32 - 2) + *(v32 - 1);
      v34 -= *v32;
      if (v30 <= *(v32 - 4) + *(v32 - 5))
      {
        v30 = *(v32 - 4) + *(v32 - 5);
      }

      if (v29 <= *(v32 - 3))
      {
        v29 = *(v32 - 3);
      }

      v32 += 14;
      --v33;
    }

    while (v33);
    v58 = v28 == 0;
    v36 = (a8 + 8);
    v37 = v60 + 26;
    do
    {
      if (a8)
      {
        v38 = *v36;
        if (!*v36)
        {
          v38 = "";
        }
      }

      else
      {
        v38 = "";
      }

      log_OutText(a3, "CompStats", 2, 0, "%-25s %7.1f / %7.1f, %6.1f%% / %6.1f%% (%4u), %7.1f / %7.1f", v25, v26, v27, v38);
      ++v36;
      v37 += 14;
      --v31;
    }

    while (v31);
    v16 = v59;
    v21 = a10;
    v20 = a9;
    v39 = v58;
  }

  log_OutText(a3, "CompStats", 2, 0, "%-25s %7.1f / %7.1f, %6.1f%% / %6.1f%% (%4u)", v25, v26, v27, "Other");
  log_OutText(a3, "CompStats", 2, 0, "----------------------------------------------------------------------------------------", v40, v41, v42, v55);
  log_OutText(a3, "CompStats", 2, 0, "%-25s %7.1f / %7.1f  %6s    %6s   %4s   %7.1f / %7.1f", v43, v44, v45, "TOTAL");
  if (v21 | v20)
  {
    log_OutText(a3, "CompStats", 2, 0, "----------------------------------------------------------------------------------------", v46, v47, v48, v56);
    if (v20)
    {
      log_OutText(a3, "CompStats", 2, 0, "%-25s %7u", v49, v50, v51, "Input text length (bytes)");
    }

    if (v21)
    {
      log_OutText(a3, "CompStats", 2, 0, "%-25s %7u", v49, v50, v51, "Output duration (msec)");
      if (!v39)
      {
        log_OutText(a3, "CompStats", 2, 0, "%-25s %7.2f / %7.2f", v49, v50, v51, "Real-time rate");
      }
    }

    if (v20)
    {
      log_OutText(a3, "CompStats", 2, 0, "%-25s %7.2f / %7.2f", v49, v50, v51, "Msec per byte of input");
    }

    log_OutText(a3, "CompStats", 2, 0, "----------------------------------------------------------------------------------------", v49, v50, v51, v57);
  }

  return log_OutText(a3, "CompStats", 2, 0, "====================Compstats %s%s Report End====================", v46, v47, v48, v16);
}

uint64_t compstats_ClockStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2285903879;
  if (a1)
  {
    if (*(a1 + 12))
    {
      log_OutPublic(0, "CompStats", 2693, 0, a5, a6, a7, a8, v10);
      return 2285903889;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t compstats_ClockStop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2285903879;
  if (a1)
  {
    if (*(a1 + 12))
    {
      return 0;
    }

    else
    {
      log_OutPublic(0, "CompStats", 2694, 0, a5, a6, a7, a8, v10);
      return 2285903889;
    }
  }

  return v8;
}

uint64_t critsec_cb_ClassOpen(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 2168463367;
  if (a3)
  {
    v11 = heap_Calloc(a1, 1, 32);
    *a5 = v11;
    if (v11)
    {
      v5 = 0;
      *v11 = a1;
      *(*a5 + 8) = a2;
      *(*a5 + 16) = a3;
      *(*a5 + 24) = a4;
    }

    else
    {
      return 2168463370;
    }
  }

  return v5;
}

uint64_t critsec_cb_ClassClose(uint64_t *a1)
{
  result = 2168463367;
  if (a1)
  {
    if (*a1)
    {
      heap_Free(**a1, *a1);
      result = 0;
      *a1 = 0;
    }
  }

  return result;
}

uint64_t critsec_ObjOpen(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = 2168463367;
  if (a1 && a2 && a3)
  {
    v7 = heap_Calloc(a2, 1, 24);
    *a3 = v7;
    if (v7)
    {
      *v7 = a1;
      *(*a3 + 8) = a2;
      v8 = **(a1 + 16);
      if (v8)
      {
        v3 = v8(*(a1 + 24), *(a1 + 8), *a3 + 16);
        if ((v3 & 0x80000000) != 0)
        {
          heap_Free(a2, *a3);
          *a3 = 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2168463370;
    }
  }

  return v3;
}

uint64_t critsec_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2168463367;
  }

  v2 = *(*(*a1 + 16) + 8);
  if (v2)
  {
    v3 = v2(*(a1 + 16));
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
  }

  heap_Free(*(a1 + 8), a1);
  return v3;
}

uint64_t critsec_Enter(void *a1)
{
  if (!a1)
  {
    return 2168463367;
  }

  v1 = *(*(*a1 + 16) + 16);
  if (v1)
  {
    return v1(a1[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t critsec_Leave(void *a1)
{
  if (!a1)
  {
    return 2168463367;
  }

  v1 = *(*(*a1 + 16) + 24);
  if (v1)
  {
    return v1(a1[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t brk_ClassOpen(_WORD *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = 0;
  result = InitRsrcFunction(a1, a2, &v14);
  if ((result & 0x80000000) == 0)
  {
    v13 = v14;
    memcpy((v14 + 80), a3, 0x138uLL);
    return (*(v13 + 96))(a1, a2, a4, a5, a6);
  }

  return result;
}

uint64_t brk_ClassClose(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 104))();
  }

  return result;
}

uint64_t brk_ClassUpdate(uint64_t a1)
{
  if (a1)
  {
    return (*(*(a1 + 16) + 352))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ObjOpen(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a2 + 16) + 120))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ObjClose(uint64_t a1)
{
  if (a1)
  {
    return (*(*(*a1 + 16) + 128))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_SetLog(uint64_t a1)
{
  if (a1)
  {
    return (*(*(*a1 + 16) + 144))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_SetRsrc(uint64_t a1)
{
  if (a1)
  {
    return (*(*(*a1 + 16) + 384))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ObjGetClass(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 136))();
  }

  if (a2)
  {
    *a2 = 0;
  }

  return 2169528327;
}

uint64_t brk_InterfaceQueryEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && a2 && a6)
  {
    return (*(*(*a1 + 16) + 272))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_InterfaceRelease(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 280))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_TagQueryEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 && a5 && a3 && a2 && *a1)
  {
    return (*(*(*a1 + 16) + 160))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_TagRelease(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 168))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ComponentTableIteratorOpen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3 && a2 && *a1)
  {
    return (*(*(*a1 + 16) + 240))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ComponentTableIteratorNext(uint64_t a1)
{
  if (a1)
  {
    return (*(*a1 + 248))(a1);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ComponentTableIteratorClose(uint64_t a1)
{
  if (a1)
  {
    return (*(*a1 + 256))(a1);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataReplace(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return (*(*(*a1 + 16) + 288))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataOpenEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2 && a4)
  {
    return (*(*(*a1 + 16) + 304))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataClose(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 312))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && a1 && a5)
  {
    return (*(*(*a1 + 16) + 320))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataMapEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && a1 && a4 && a5)
  {
    return (*(*(*a1 + 16) + 328))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataUnmap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return (*(*(*a1 + 16) + 336))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataMapDeRefCnt(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t a5)
{
  v10 = 0;
  v11 = 0;
  result = InitRsrcFunction(a1, a2, &v11);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v10);
    if ((result & 0x80000000) == 0)
    {
      ObjcForThisApi = getObjcForThisApi(v11, v10);
      return objc_ReleaseObject(ObjcForThisApi, a5);
    }
  }

  return result;
}

uint64_t getObjcForThisApi(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  __s1 = 0;
  if ((paramc_ParamGetStr(*(a1 + 40), "clcpppipelinemode", &__s1) & 0x80000000) != 0 || !__s1 || !*__s1 || !cstdlib_strcmp(__s1, "internal"))
  {
    v3 = a2;
  }

  return *(v3 + 48);
}

uint64_t brk_DataMapRefCnt(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, void *a8)
{
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0u;
  v20 = 0u;
  cstdlib_memset(&v19, 0, 0x28uLL);
  result = InitRsrcFunction(a1, a2, &v24);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v23);
    if ((result & 0x80000000) == 0)
    {
      *&v19 = a1;
      *(&v19 + 1) = a2;
      *&v20 = a3;
      *(&v20 + 1) = a4;
      v21 = __PAIR64__(a7, a6);
      ObjcForThisApi = getObjcForThisApi(v24, v23);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a5, brkDataMap_ObjcLoad, brkDataMap_ObjcClose, &v19, &v22);
      if ((result & 0x80000000) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v22 + 32);
      }

      *a8 = v18;
    }
  }

  return result;
}

uint64_t brkDataMap_ObjcLoad(_WORD *a1, int a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v42 = 0;
  v43 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  inited = InitRsrcFunction(a1, a2, &v42);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*(a5 + 16), *(a5 + 24), &v43);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = 2169528327;
  cstdlib_memcpy(v17, v42, 0x1A0uLL);
  v10 = v42;
  v18 = *(v43 + 32);
  v11 = heap_Calloc(*(v42 + 1), 1, 272);
  *(a4 + 32) = v11;
  if (!v11)
  {
    return 2169528330;
  }

  if (a3)
  {
    v12 = v10[3];
    if (v12)
    {
      inited = (*(*(*v12 + 16) + 304))(v10[3], a3, 1, v11 + 256);
      if ((inited & 0x80000000) == 0)
      {
        v13 = v10[3];
        v14 = *(a4 + 32);
        if (v13)
        {
          v15 = *(v14 + 256);
          if (v15)
          {
            v9 = (*(*(*v13 + 16) + 320))(v10[3], v15, *(a5 + 32), *(a5 + 36), v14 + 264);
            v14 = *(a4 + 32);
          }
        }

        cstdlib_strcpy(v14, a3);
        return v9;
      }

      return inited;
    }
  }

  return v9;
}

uint64_t brkDataMap_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v13 = 0;
  inited = InitRsrcFunction(a1, a2, &v13);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v5 = 2169528327;
  v6 = *(a3 + 32);
  v7 = *(v13 + 24);
  if (v7)
  {
    v8 = *(v6 + 256) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && *(v6 + 264) != 0)
  {
    inited = (*(*(*v7 + 16) + 336))();
    if ((inited & 0x80000000) == 0)
    {
      v10 = *(v13 + 24);
      if (v10)
      {
        v11 = *(v6 + 256) == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v5 = (*(*(*v10 + 16) + 312))();
        if ((v5 & 0x80000000) == 0)
        {
          heap_Free(*(v13 + 8), v6);
        }
      }

      return v5;
    }

    return inited;
  }

  return v5;
}

uint64_t brk_DataFreeze(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 344))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataGetSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a3 && a1 && a4)
  {
    return (*(*(*a1 + 16) + 360))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_TagIteratorOpen(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, void *a5)
{
  if (!a1 || !a2 || !a3 || !*a2 || !a5 || !*a3)
  {
    return 2169528327;
  }

  v5 = *(*a1 + 16);
  *a5 = 0;
  return (*(v5 + 200))();
}

uint64_t brk_TagIteratorNext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return (*(*a1 + 208))(a1);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_TagIteratorClose(uint64_t a1)
{
  if (a1)
  {
    return (*(*a1 + 216))(a1);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ComponentPathQuery(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3 && a2 && *a1)
  {
    return (*(*(*a1 + 16) + 224))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ComponentPathRelease(uint64_t a1, uint64_t a2)
{
  v2 = 2169528327;
  if (a1 && a2)
  {
    (*(*(*a1 + 16) + 232))();
    return 0;
  }

  return v2;
}

uint64_t brk_RegisterCupAddon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2 && *a1 && (v4 = *(*a1 + 16)) != 0)
  {
    return (*(v4 + 368))(a2, a3, a4, a1);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_UnregisterCupAddon(uint64_t *a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *a1) != 0 && (v3 = *(v2 + 16)) != 0)
  {
    return (*(v3 + 376))(a2, v2);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_AddSystemInfo(uint64_t a1)
{
  if (a1)
  {
    return (*(*(a1 + 16) + 176))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_GetSystemInfo(uint64_t a1)
{
  if (a1)
  {
    return (*(*(a1 + 16) + 184))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_FreeSystemInfo(uint64_t a1)
{
  if (a1)
  {
    return (*(*(a1 + 16) + 192))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t filespi_fopen(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2153783303;
  if (a1 && a2 && a5)
  {
    if (**(a1 + 16))
    {
      v11 = heap_Calloc(a2, 1, 24);
      *a5 = v11;
      if (v11)
      {
        *v11 = a1;
        *(*a5 + 8) = a2;
        v5 = (**(a1 + 16))(*(a1 + 24), *(a1 + 8), a3, a4, *a5 + 16);
        if ((v5 & 0x80000000) != 0)
        {
          heap_Free(a2, *a5);
          *a5 = 0;
        }
      }

      else
      {
        return 2153783306;
      }
    }

    else
    {
      return 2153783297;
    }
  }

  return v5;
}

uint64_t filespi_fclose(uint64_t a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  v2 = (*(*(*a1 + 16) + 8))(*(a1 + 16));
  if ((v2 & 0x80000000) == 0)
  {
    heap_Free(*(a1 + 8), a1);
  }

  return v2;
}

uint64_t filespi_fread(uint64_t a1, int a2, int a3, uint64_t a4)
{
  result = 2153783303;
  if (a3 && a2 && a1 && a4)
  {
    v6 = *(*(*a4 + 16) + 16);
    if (v6)
    {
      return v6(a1);
    }

    else
    {
      return 2153783297;
    }
  }

  return result;
}

uint64_t filespi_fseek(void *a1)
{
  result = 2153783297;
  if (!a1)
  {
    return 2153783303;
  }

  v3 = *(*(*a1 + 16) + 24);
  if (v3)
  {
    return v3(a1[2]);
  }

  return result;
}

uint64_t filespi_ftell(void *a1)
{
  if (a1 && (v1 = *(*(*a1 + 16) + 40)) != 0)
  {
    return v1(a1[2]);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t filespi_GetFileSize(void *a1)
{
  if (a1 && (v1 = *(*(*a1 + 16) + 32)) != 0)
  {
    return v1(a1[2]);
  }

  else
  {
    return 2153783296;
  }
}

uint64_t filespi_fwrite(uint64_t a1, int a2, int a3, uint64_t a4)
{
  result = 2153783303;
  if (a3 && a2 && a1 && a4)
  {
    v6 = *(*(*a4 + 16) + 48);
    if (v6)
    {
      return v6(a1);
    }

    else
    {
      return 2153783297;
    }
  }

  return result;
}

uint64_t filespi_fflush(void *a1)
{
  result = 2153783297;
  if (!a1)
  {
    return 2153783303;
  }

  v3 = *(*(*a1 + 16) + 56);
  if (v3)
  {
    return v3(a1[2]);
  }

  return result;
}

uint64_t filespi_rename(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 2153783303;
  if (a1 && a2 && a3 && a4)
  {
    v6 = *(a1[2] + 64);
    if (v6)
    {
      return v6(a1[3], a1[1]);
    }

    else
    {
      return 2153783297;
    }
  }

  return result;
}

uint64_t filespi_remove(void *a1, uint64_t a2, uint64_t a3)
{
  result = 2153783303;
  if (a1 && a2 && a3)
  {
    v5 = *(a1[2] + 72);
    if (v5)
    {
      return v5(a1[3], a1[1]);
    }

    else
    {
      return 2153783297;
    }
  }

  return result;
}

uint64_t heap_cb_Open(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 2159026183;
  if (a1)
  {
    v7 = (*(a1 + 8))(a2, 1, 16);
    *a3 = v7;
    if (v7)
    {
      v3 = 0;
      *v7 = a1;
      *(*a3 + 8) = a2;
    }

    else
    {
      return 2159026186;
    }
  }

  return v3;
}

uint64_t heap_cb_Close(void *a1)
{
  if (!a1)
  {
    return 2159026183;
  }

  (*(*a1 + 24))(a1[1], a1);
  return 0;
}

uint64_t heap_Alloc(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (**a1)(*(a1 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t heap_Calloc(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return (*(*a1 + 8))(a1[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t heap_Realloc(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !a3)
  {
    return 0;
  }

  v3 = *a1;
  if (a2)
  {
    return (*(v3 + 16))(a1[1]);
  }

  else
  {
    return (*v3)(a1[1], a3);
  }
}

void *heap_Free(void *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      return (*(*result + 24))(result[1]);
    }
  }

  return result;
}

uint64_t heap_SetLog(void *a1)
{
  result = 2159026177;
  if (!a1)
  {
    return 2159026183;
  }

  v3 = *(*a1 + 32);
  if (v3)
  {
    return v3(a1[1]);
  }

  return result;
}

uint64_t heap_SetSizeTracking(void *a1)
{
  result = 2159026177;
  if (!a1)
  {
    return 2159026183;
  }

  v3 = *(*a1 + 40);
  if (v3)
  {
    return v3(a1[1]);
  }

  return result;
}

uint64_t heap_GetSize(void *a1, uint64_t a2, uint64_t a3)
{
  result = 2159026183;
  if (a1 && a2 && a3)
  {
    v5 = *(*a1 + 48);
    if (v5)
    {
      return v5(a1[1]);
    }

    else
    {
      return 2159026177;
    }
  }

  return result;
}

uint64_t thread_cb_ClassOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 2153783303;
  if (a3 && a4)
  {
    v13 = heap_Alloc(a1, 40);
    *a6 = v13;
    if (v13)
    {
      v6 = 0;
      *v13 = a1;
      *(*a6 + 8) = a2;
      *(*a6 + 16) = a3;
      *(*a6 + 24) = a4;
      *(*a6 + 32) = a5;
    }

    else
    {
      return 2153783306;
    }
  }

  return v6;
}

uint64_t thread_cb_ClassClose(uint64_t *a1)
{
  result = 2153783303;
  if (a1)
  {
    if (*a1)
    {
      heap_Free(**a1, *a1);
      result = 0;
      *a1 = 0;
    }
  }

  return result;
}

uint64_t thread_ObjOpen(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = 2153783303;
  if (a1 && a2 && a3)
  {
    v7 = heap_Alloc(a2, 24);
    *a3 = v7;
    if (v7)
    {
      *v7 = a1;
      *(*a3 + 8) = a2;
      v8 = **(a1 + 16);
      if (v8)
      {
        v3 = v8(*(a1 + 32), *(a1 + 8), *a3 + 16);
        if ((v3 & 0x80000000) != 0)
        {
          heap_Free(a2, *a3);
          *a3 = 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2153783306;
    }
  }

  return v3;
}

uint64_t thread_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  v2 = *(*(*a1 + 16) + 8);
  if (v2)
  {
    v3 = v2(*(a1 + 16));
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
  }

  heap_Free(*(a1 + 8), a1);
  return v3;
}

uint64_t thread_Start(void *a1)
{
  result = 2153783304;
  if (!a1)
  {
    return 2153783314;
  }

  v3 = *(*(*a1 + 16) + 16);
  if (v3)
  {
    return v3(a1[2]);
  }

  return result;
}

uint64_t thread_Join(void *a1)
{
  result = 2153783304;
  if (!a1)
  {
    return 2153783314;
  }

  v3 = *(*(*a1 + 16) + 24);
  if (v3)
  {
    return v3(a1[2]);
  }

  return result;
}

uint64_t thread_SleepMs(void *a1)
{
  result = 2153783304;
  if (!a1)
  {
    return 2153783314;
  }

  v3 = *(*(*a1 + 16) + 32);
  if (v3)
  {
    return v3(a1[2]);
  }

  return result;
}

uint64_t thread_GetCallingId(void *a1)
{
  result = 2153783304;
  if (!a1)
  {
    return 2153783314;
  }

  v3 = *(*(*a1 + 16) + 40);
  if (v3)
  {
    return v3(a1[2]);
  }

  return result;
}

uint64_t semaphore_ObjectOpen(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2153783303;
  if (a1 && a2 && a5)
  {
    v11 = heap_Alloc(a2, 24);
    *a5 = v11;
    if (v11)
    {
      *v11 = a1;
      *(*a5 + 8) = a2;
      v12 = **(a1 + 24);
      if (v12)
      {
        v5 = v12(*(a1 + 32), *(a1 + 8), a3, a4, *a5 + 16);
        if ((v5 & 0x80000000) != 0)
        {
          heap_Free(a2, *a5);
          *a5 = 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2153783306;
    }
  }

  return v5;
}

uint64_t semaphore_ObjectClose(uint64_t a1)
{
  v1 = 2153783303;
  if (a1)
  {
    v3 = *(*(*a1 + 24) + 8);
    if (v3)
    {
      v1 = v3(*(a1 + 16));
      if ((v1 & 0x80000000) == 0)
      {
        heap_Free(*(a1 + 8), a1);
      }
    }

    else
    {
      return 2153783304;
    }
  }

  return v1;
}

uint64_t semaphore_Acquire(void *a1)
{
  result = 2153783303;
  if (a1)
  {
    v3 = *(*(*a1 + 24) + 16);
    if (v3)
    {
      return v3(a1[2]);
    }

    else
    {
      return 2153783304;
    }
  }

  return result;
}

uint64_t semaphore_Release(void *a1)
{
  result = 2153783303;
  if (a1)
  {
    v3 = *(*(*a1 + 24) + 24);
    if (v3)
    {
      return v3(a1[2]);
    }

    else
    {
      return 2153783304;
    }
  }

  return result;
}

double MD5Init(void *a1)
{
  cstdlib_memset(a1, 0, 0x58uLL);
  a1[2] = 0;
  result = -3.59869635e230;
  *a1 = xmmword_26ECC77F0;
  return result;
}

void *MD5Update(uint64_t a1, char *__src, unint64_t a3)
{
  v6 = (*(a1 + 16) >> 3) & 0x3F;
  *(a1 + 16) += __PAIR64__(a3 >> 29, 8 * a3);
  v7 = 64 - v6;
  if (64 - v6 <= a3)
  {
    cstdlib_memcpy((a1 + 24 + v6), __src, 64 - v6);
    MD5Transform(a1, (a1 + 24));
    for (i = v6 ^ 0x7F; i < a3; i = v9 + 127)
    {
      v9 = v7;
      MD5Transform(a1, &__src[v7]);
      v7 += 64;
    }

    v6 = 0;
  }

  else
  {
    v7 = 0;
  }

  return cstdlib_memcpy((a1 + v6 + 24), &__src[v7], a3 - v7);
}

void *MD5Transform(int *a1, const char *a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v96 = vld4q_s8(a2);
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = vmovl_u8(*v96.val[0].i8);
  v7 = vmovl_u16(*v6.i8);
  v8 = vmovl_high_u8(v96.val[0]);
  v9 = vmovl_u16(*v8.i8);
  v10 = vmovl_high_u8(v96.val[1]);
  v11 = vmovl_u8(*v96.val[1].i8);
  v12 = vorrq_s8(vshll_high_n_u16(v10, 8uLL), vmovl_high_u16(v8));
  v13 = vorrq_s8(vshll_n_u16(*v10.i8, 8uLL), v9);
  v14 = vorrq_s8(vshll_high_n_u16(v11, 8uLL), vmovl_high_u16(v6));
  v15 = vorrq_s8(vshll_n_u16(*v11.i8, 8uLL), v7);
  _Q16 = vmovl_u8(*v96.val[2].i8);
  _Q17 = vmovl_high_u8(v96.val[2]);
  __asm
  {
    SHLL2           V18.4S, V17.8H, #0x10
    SHLL2           V19.4S, V16.8H, #0x10
  }

  v24 = vorrq_s8(v15, vshll_n_s16(*_Q16.i8, 0x10uLL));
  v25 = vmovl_high_u8(v96.val[3]);
  v96.val[0] = vmovl_u8(*v96.val[3].i8);
  __b = vorrq_s8(v24, vshlq_n_s32(vmovl_u16(*v96.val[0].i8), 0x18uLL));
  v92 = vorrq_s8(vorrq_s8(v14, _Q19), vshlq_n_s32(vmovl_high_u16(v96.val[0]), 0x18uLL));
  v93 = vorrq_s8(vorrq_s8(v13, vshll_n_s16(*_Q17.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v25.i8), 0x18uLL));
  v94 = vorrq_s8(vorrq_s8(v12, _Q18), vshlq_n_s32(vmovl_high_u16(v25), 0x18uLL));
  HIDWORD(v26) = v3 + __b.i32[0] - 680876936 + (v4 & ~v2 | v5 & v2);
  LODWORD(v26) = HIDWORD(v26);
  v27 = (v26 >> 25) + v2;
  HIDWORD(v26) = v4 + __b.i32[1] - 389564586 + (v27 & v2 | v5 & ~v27);
  LODWORD(v26) = HIDWORD(v26);
  v28 = (v26 >> 20) + v27;
  HIDWORD(v26) = v5 + __b.i32[2] + 606105819 + (v28 & v27 | v2 & ~v28);
  LODWORD(v26) = HIDWORD(v26);
  v29 = (v26 >> 15) + v28;
  HIDWORD(v26) = v2 + __b.i32[3] - 1044525330 + (v29 & v28 | v27 & ~v29);
  LODWORD(v26) = HIDWORD(v26);
  v30 = (v26 >> 10) + v29;
  HIDWORD(v26) = v92.i32[0] + v27 - 176418897 + (v30 & v29 | v28 & ~v30);
  LODWORD(v26) = HIDWORD(v26);
  v31 = (v26 >> 25) + v30;
  HIDWORD(v26) = v92.i32[1] + v28 + 1200080426 + (v31 & v30 | v29 & ~v31);
  LODWORD(v26) = HIDWORD(v26);
  v32 = (v26 >> 20) + v31;
  HIDWORD(v26) = v92.i32[2] + v29 - 1473231341 + (v32 & v31 | v30 & ~v32);
  LODWORD(v26) = HIDWORD(v26);
  v33 = (v26 >> 15) + v32;
  HIDWORD(v26) = v92.i32[3] + v30 - 45705983 + (v33 & v32 | v31 & ~v33);
  LODWORD(v26) = HIDWORD(v26);
  v34 = (v26 >> 10) + v33;
  HIDWORD(v26) = v93.i32[0] + v31 + 1770035416 + (v34 & v33 | v32 & ~v34);
  LODWORD(v26) = HIDWORD(v26);
  v35 = (v26 >> 25) + v34;
  HIDWORD(v26) = v93.i32[1] + v32 - 1958414417 + (v35 & v34 | v33 & ~v35);
  LODWORD(v26) = HIDWORD(v26);
  v36 = (v26 >> 20) + v35;
  HIDWORD(v26) = v93.i32[2] + v33 - 42063 + (v36 & v35 | v34 & ~v36);
  LODWORD(v26) = HIDWORD(v26);
  v37 = (v26 >> 15) + v36;
  HIDWORD(v26) = v93.i32[3] + v34 - 1990404162 + (v37 & v36 | v35 & ~v37);
  LODWORD(v26) = HIDWORD(v26);
  v38 = (v26 >> 10) + v37;
  HIDWORD(v26) = v94.i32[0] + v35 + 1804603682 + (v38 & v37 | v36 & ~v38);
  LODWORD(v26) = HIDWORD(v26);
  v39 = (v26 >> 25) + v38;
  HIDWORD(v26) = v94.i32[1] + v36 - 40341101 + (v39 & v38 | v37 & ~v39);
  LODWORD(v26) = HIDWORD(v26);
  v40 = (v26 >> 20) + v39;
  HIDWORD(v26) = v94.i32[2] + v37 - 1502002290 + (v40 & v39 | v38 & ~v40);
  LODWORD(v26) = HIDWORD(v26);
  v41 = (v26 >> 15) + v40;
  HIDWORD(v26) = v94.i32[3] + v38 + 1236535329 + (v41 & v40 | v39 & ~v41);
  LODWORD(v26) = HIDWORD(v26);
  v42 = (v26 >> 10) + v41;
  HIDWORD(v26) = __b.i32[1] + v39 - 165796510 + (v42 & v40 | v41 & ~v40);
  LODWORD(v26) = HIDWORD(v26);
  v43 = (v26 >> 27) + v42;
  HIDWORD(v26) = v92.i32[2] + v40 - 1069501632 + (v43 & v41 | v42 & ~v41);
  LODWORD(v26) = HIDWORD(v26);
  v44 = (v26 >> 23) + v43;
  HIDWORD(v26) = v93.i32[3] + v41 + 643717713 + (v44 & v42 | v43 & ~v42);
  LODWORD(v26) = HIDWORD(v26);
  v45 = (v26 >> 18) + v44;
  HIDWORD(v26) = __b.i32[0] + v42 - 373897302 + (v45 & v43 | v44 & ~v43);
  LODWORD(v26) = HIDWORD(v26);
  v46 = (v26 >> 12) + v45;
  HIDWORD(v26) = v92.i32[1] + v43 - 701558691 + (v46 & v44 | v45 & ~v44);
  LODWORD(v26) = HIDWORD(v26);
  v47 = (v26 >> 27) + v46;
  HIDWORD(v26) = v93.i32[2] + v44 + 38016083 + (v47 & v45 | v46 & ~v45);
  LODWORD(v26) = HIDWORD(v26);
  v48 = (v26 >> 23) + v47;
  HIDWORD(v26) = v94.i32[3] + v45 - 660478335 + (v48 & v46 | v47 & ~v46);
  LODWORD(v26) = HIDWORD(v26);
  v49 = (v26 >> 18) + v48;
  HIDWORD(v26) = v92.i32[0] + v46 - 405537848 + (v49 & v47 | v48 & ~v47);
  LODWORD(v26) = HIDWORD(v26);
  v50 = (v26 >> 12) + v49;
  HIDWORD(v26) = v93.i32[1] + v47 + 568446438 + (v50 & v48 | v49 & ~v48);
  LODWORD(v26) = HIDWORD(v26);
  v51 = (v26 >> 27) + v50;
  HIDWORD(v26) = v94.i32[2] + v48 - 1019803690 + (v51 & v49 | v50 & ~v49);
  LODWORD(v26) = HIDWORD(v26);
  v52 = (v26 >> 23) + v51;
  HIDWORD(v26) = __b.i32[3] + v49 - 187363961 + (v52 & v50 | v51 & ~v50);
  LODWORD(v26) = HIDWORD(v26);
  v53 = (v26 >> 18) + v52;
  HIDWORD(v26) = v93.i32[0] + v50 + 1163531501 + (v53 & v51 | v52 & ~v51);
  LODWORD(v26) = HIDWORD(v26);
  v54 = (v26 >> 12) + v53;
  HIDWORD(v26) = v94.i32[1] + v51 - 1444681467 + (v54 & v52 | v53 & ~v52);
  LODWORD(v26) = HIDWORD(v26);
  v55 = (v26 >> 27) + v54;
  HIDWORD(v26) = __b.i32[2] + v52 - 51403784 + (v55 & v53 | v54 & ~v53);
  LODWORD(v26) = HIDWORD(v26);
  v56 = (v26 >> 23) + v55;
  HIDWORD(v26) = v92.i32[3] + v53 + 1735328473 + (v56 & v54 | v55 & ~v54);
  LODWORD(v26) = HIDWORD(v26);
  v57 = (v26 >> 18) + v56;
  HIDWORD(v26) = v94.i32[0] + v54 - 1926607734 + (v57 & v55 | v56 & ~v55);
  LODWORD(v26) = HIDWORD(v26);
  v58 = (v26 >> 12) + v57;
  HIDWORD(v26) = v92.i32[1] + v55 - 378558 + (v58 ^ v57 ^ v56);
  LODWORD(v26) = HIDWORD(v26);
  v59 = (v26 >> 28) + v58;
  HIDWORD(v26) = v93.i32[0] + v56 - 2022574463 + (v58 ^ v57 ^ v59);
  LODWORD(v26) = HIDWORD(v26);
  v60 = (v26 >> 21) + v59;
  HIDWORD(v26) = v93.i32[3] + v57 + 1839030562 + (v59 ^ v58 ^ v60);
  LODWORD(v26) = HIDWORD(v26);
  v61 = (v26 >> 16) + v60;
  HIDWORD(v26) = v94.i32[2] + v58 - 35309556 + (v60 ^ v59 ^ v61);
  LODWORD(v26) = HIDWORD(v26);
  v62 = (v26 >> 9) + v61;
  HIDWORD(v26) = __b.i32[1] + v59 - 1530992060 + (v61 ^ v60 ^ v62);
  LODWORD(v26) = HIDWORD(v26);
  v63 = (v26 >> 28) + v62;
  HIDWORD(v26) = v92.i32[0] + v60 + 1272893353 + (v62 ^ v61 ^ v63);
  LODWORD(v26) = HIDWORD(v26);
  v64 = (v26 >> 21) + v63;
  HIDWORD(v26) = v92.i32[3] + v61 - 155497632 + (v63 ^ v62 ^ v64);
  LODWORD(v26) = HIDWORD(v26);
  v65 = (v26 >> 16) + v64;
  HIDWORD(v26) = v93.i32[2] + v62 - 1094730640 + (v64 ^ v63 ^ v65);
  LODWORD(v26) = HIDWORD(v26);
  v66 = (v26 >> 9) + v65;
  HIDWORD(v26) = v94.i32[1] + v63 + 681279174 + (v65 ^ v64 ^ v66);
  LODWORD(v26) = HIDWORD(v26);
  v67 = (v26 >> 28) + v66;
  HIDWORD(v26) = __b.i32[0] + v64 - 358537222 + (v66 ^ v65 ^ v67);
  LODWORD(v26) = HIDWORD(v26);
  v68 = (v26 >> 21) + v67;
  HIDWORD(v26) = __b.i32[3] + v65 - 722521979 + (v67 ^ v66 ^ v68);
  LODWORD(v26) = HIDWORD(v26);
  v69 = (v26 >> 16) + v68;
  HIDWORD(v26) = v92.i32[2] + v66 + 76029189 + (v68 ^ v67 ^ v69);
  LODWORD(v26) = HIDWORD(v26);
  v70 = (v26 >> 9) + v69;
  HIDWORD(v26) = v93.i32[1] + v67 - 640364487 + (v69 ^ v68 ^ v70);
  LODWORD(v26) = HIDWORD(v26);
  v71 = (v26 >> 28) + v70;
  HIDWORD(v26) = v94.i32[0] + v68 - 421815835 + (v70 ^ v69 ^ v71);
  LODWORD(v26) = HIDWORD(v26);
  v72 = (v26 >> 21) + v71;
  HIDWORD(v26) = v94.i32[3] + v69 + 530742520 + (v71 ^ v70 ^ v72);
  LODWORD(v26) = HIDWORD(v26);
  v73 = (v26 >> 16) + v72;
  HIDWORD(v26) = __b.i32[2] + v70 - 995338651 + (v72 ^ v71 ^ v73);
  LODWORD(v26) = HIDWORD(v26);
  v74 = (v26 >> 9) + v73;
  HIDWORD(v26) = __b.i32[0] + v71 - 198630844 + ((v74 | ~v72) ^ v73);
  LODWORD(v26) = HIDWORD(v26);
  v75 = (v26 >> 26) + v74;
  HIDWORD(v26) = v92.i32[3] + v72 + 1126891415 + ((v75 | ~v73) ^ v74);
  LODWORD(v26) = HIDWORD(v26);
  v76 = (v26 >> 22) + v75;
  HIDWORD(v26) = v94.i32[2] + v73 - 1416354905 + ((v76 | ~v74) ^ v75);
  LODWORD(v26) = HIDWORD(v26);
  v77 = (v26 >> 17) + v76;
  HIDWORD(v26) = v92.i32[1] + v74 - 57434055 + ((v77 | ~v75) ^ v76);
  LODWORD(v26) = HIDWORD(v26);
  v78 = (v26 >> 11) + v77;
  HIDWORD(v26) = v94.i32[0] + v75 + 1700485571 + ((v78 | ~v76) ^ v77);
  LODWORD(v26) = HIDWORD(v26);
  v79 = (v26 >> 26) + v78;
  HIDWORD(v26) = __b.i32[3] + v76 - 1894986606 + ((v79 | ~v77) ^ v78);
  LODWORD(v26) = HIDWORD(v26);
  v80 = (v26 >> 22) + v79;
  HIDWORD(v26) = v93.i32[2] + v77 - 1051523 + ((v80 | ~v78) ^ v79);
  LODWORD(v26) = HIDWORD(v26);
  v81 = (v26 >> 17) + v80;
  HIDWORD(v26) = __b.i32[1] + v78 - 2054922799 + ((v81 | ~v79) ^ v80);
  LODWORD(v26) = HIDWORD(v26);
  v82 = (v26 >> 11) + v81;
  HIDWORD(v26) = v93.i32[0] + v79 + 1873313359 + ((v82 | ~v80) ^ v81);
  LODWORD(v26) = HIDWORD(v26);
  v83 = (v26 >> 26) + v82;
  HIDWORD(v26) = v94.i32[3] + v80 - 30611744 + ((v83 | ~v81) ^ v82);
  LODWORD(v26) = HIDWORD(v26);
  v84 = (v26 >> 22) + v83;
  HIDWORD(v26) = v92.i32[2] + v81 - 1560198380 + ((v84 | ~v82) ^ v83);
  LODWORD(v26) = HIDWORD(v26);
  v85 = (v26 >> 17) + v84;
  HIDWORD(v26) = v94.i32[1] + v82 + 1309151649 + ((v85 | ~v83) ^ v84);
  LODWORD(v26) = HIDWORD(v26);
  v86 = (v26 >> 11) + v85;
  HIDWORD(v26) = v92.i32[0] + v83 - 145523070 + ((v86 | ~v84) ^ v85);
  LODWORD(v26) = HIDWORD(v26);
  v87 = (v26 >> 26) + v86;
  HIDWORD(v26) = v93.i32[3] + v84 - 1120210379 + ((v87 | ~v85) ^ v86);
  LODWORD(v26) = HIDWORD(v26);
  v88 = (v26 >> 22) + v87;
  HIDWORD(v26) = __b.i32[2] + v85 + 718787259 + ((v88 | ~v86) ^ v87);
  LODWORD(v26) = HIDWORD(v26);
  v89 = (v26 >> 17) + v88;
  HIDWORD(v26) = v93.i32[1] + v86 - 343485551 + ((v89 | ~v87) ^ v88);
  LODWORD(v26) = HIDWORD(v26);
  *a1 = v87 + v3;
  a1[1] = v89 + v2 + (v26 >> 11);
  a1[2] = v89 + v5;
  a1[3] = v88 + v4;
  return cstdlib_memset(&__b, 0, 0x40uLL);
}

void *MD5Final(uint64_t a1, unsigned int *a2)
{
  v4 = 0;
  v12 = *MEMORY[0x277D85DE8];
  do
  {
    *&v11[v4 * 4] = a2[v4 + 4];
    ++v4;
  }

  while (v4 != 2);
  v5 = (a2[4] >> 3) & 0x3F;
  v6 = 120;
  if (v5 < 0x38)
  {
    v6 = 56;
  }

  MD5Update(a2, PADDING, v6 - v5);
  MD5Update(a2, v11, 8uLL);
  v7 = 0;
  v8 = (a1 + 3);
  do
  {
    v9 = &a2[v7];
    *(v8 - 3) = *v9;
    *(v8 - 1) = *(v9 + 1);
    *v8 = *(v9 + 3);
    v8 += 4;
    ++v7;
  }

  while (v7 != 4);
  return cstdlib_memset(a2, 0, 0x58uLL);
}

uint64_t cache_ClassOpen(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 2153783303;
  if (a5 && !*a5)
  {
    v11 = heap_Calloc(a1, 1, 32);
    if (v11)
    {
      v5 = 0;
      v11[2] = a3;
      v11[3] = a4;
      *v11 = a1;
      v11[1] = a2;
    }

    else
    {
      v5 = 2153783306;
    }

    *a5 = v11;
  }

  return v5;
}

uint64_t cache_ClassClose(void **a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  heap_Free(*a1, a1);
  return 0;
}

uint64_t cache_ObjOpen(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t *a5)
{
  v5 = 2153783303;
  if (a1 && a5 && !*a5)
  {
    v11 = *a1;
    v12 = heap_Calloc(*a1, 1, 72);
    v13 = v12;
    if (v12)
    {
      *v12 = a1;
      *(v12 + 8) = v11;
      *(v12 + 24) = *(a1 + 16);
      v14 = critsec_ObjOpen(*(a1 + 8), v11, (v12 + 16));
      if ((v14 & 0x80000000) == 0)
      {
        v15 = v14;
        if (!a2 || !a3 || !a4)
        {
          goto LABEL_28;
        }

        v16 = heap_Calloc(v11, 56, 1);
        *(v13 + 64) = v16;
        if (v16)
        {
          v17 = v16;
          v16[10] = a2;
          v16[11] = a3;
          if (a4 >= a3)
          {
            v18 = a3;
          }

          else
          {
            v18 = a4;
          }

          v16[12] = v18;
          if (a2 <= 1)
          {
            a2 = 2;
            v16[10] = 2;
          }

          v19 = heap_Alloc(v11, a2 * a3);
          *(v17 + 4) = v19;
          if (v19)
          {
            v20 = heap_Alloc(v11, 40 * v17[10]);
            *(v17 + 3) = v20;
            if (v20)
            {
              v21 = v20 + 40;
              *v20 = 0;
              *(v20 + 8) = v20 + 40;
              *(v20 + 16) = -1;
              v22 = *(v17 + 4);
              *(v20 + 24) = v22;
              *(v20 + 32) = 0;
              v23 = v17[11];
              v24 = (v17[10] - 1);
              if (v24 < 2)
              {
                v29 = v20;
              }

              else
              {
                v25 = v24 - 1;
                v26 = v17[11];
                do
                {
                  v27 = v21;
                  v28 = v21 - 40;
                  v21 += 40;
                  *v27 = v28;
                  *(v27 + 8) = v21;
                  *(v27 + 16) = -1;
                  *(v27 + 24) = v22 + v26;
                  *(v27 + 32) = 0;
                  v26 += v23;
                  --v25;
                }

                while (v25);
                v29 = v21 - 40;
              }

              v15 = 0;
              *v21 = v29;
              *(v21 + 8) = 0;
              *(v21 + 16) = -1;
              *(v21 + 24) = v22 + (v23 * v24);
              *(v21 + 32) = 0;
              *(v17 + 1) = v20;
              *(v17 + 2) = v20 + 40 * v24;
              goto LABEL_28;
            }

            heap_Free(v11, *(v17 + 4));
          }
        }
      }

      v30 = *(v13 + 16);
      if (v30)
      {
        critsec_ObjClose(v30);
      }

      v31 = *(v13 + 64);
      if (v31)
      {
        heap_Free(v11, v31);
      }

      heap_Free(v11, v13);
      v13 = 0;
    }

    v15 = 2153783306;
LABEL_28:
    *a5 = v13;
    return v15;
  }

  return v5;
}

uint64_t cache_ObjClose(void *a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  critsec_Enter(a1[2]);
  v2 = a1[1];
  v3 = a1[8];
  if (v3)
  {
    v4 = *v3;
    heap_Free(a1[1], *(v3 + 32));
    heap_Free(v2, *(v3 + 24));
    if (v4)
    {
      do
      {
        heap_Free(v2, v4[1]);
        v5 = *v4;
        heap_Free(v2, v4);
        v4 = v5;
      }

      while (v5);
    }

    *(v3 + 48) = 0;
    v6 = a1[8];
  }

  else
  {
    v6 = 0;
  }

  heap_Free(v2, v6);
  a1[8] = 0;
  critsec_Leave(a1[2]);
  v8 = critsec_ObjClose(a1[2]);
  heap_Free(v2, a1);
  return v8;
}

uint64_t cache_ObjSetLog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 2153783303;
  }

  if (a3 || !*(a1 + 48))
  {
    if (a3)
    {
      v7 = log_GetLogLevel(a3) > 0x63;
      *(a1 + 56) = v7;
      *(a1 + 60) = v7;
    }
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    cstdlib_memset(v8, 0, 0x30uLL);
  }

  result = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  return result;
}

uint64_t cache_datastream_Open(int8x16_t *a1, uint64_t a2, char *a3, _BYTE *a4, uint64_t *a5)
{
  v5 = 2153783306;
  v6 = 2153783303;
  if (a1 && a5)
  {
    v12 = a1[3].i64[0];
    v13 = *(v12 + 24);
    v14 = *(v12 + 64);
    v15 = heap_Calloc(*(v12 + 8), 1, 56);
    v16 = v15;
    if (!v15)
    {
LABEL_26:
      *a5 = v16;
      return v5;
    }

    v17 = a1[3];
    *v15 = vextq_s8(v17, v17, 8uLL);
    v18 = *(v17.i64[0] + 8);
    *(v15 + 24) = 0u;
    *(v15 + 16) = v18;
    *(v15 + 40) = 0u;
    critsec_Enter(*(v17.i64[0] + 16));
    if (!v14)
    {
      v6 = (*v13)(a1[2].i64[1], a2, a3, a4, v16 + 24);
      goto LABEL_23;
    }

    if (!a3 || !a4)
    {
      goto LABEL_23;
    }

    if (*a4 == 114 && !cstdlib_strchr(a3, 46))
    {
      FileInfoDesc = GetFileInfoDesc(v14, *(v16 + 16), a3);
      *(v16 + 48) = FileInfoDesc;
      v6 = 2153783306;
      if (!FileInfoDesc)
      {
        goto LABEL_23;
      }

      *(FileInfoDesc + 40) = 1;
      if (*(FileInfoDesc + 20))
      {
LABEL_11:
        v6 = 0;
        v20 = *(FileInfoDesc + 24);
        v21 = *(FileInfoDesc + 32);
        *(v16 + 24) = v20;
        *(v16 + 40) = v21;
        if (!v20)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v22 = (*v13)(a1[2].i64[1], a2, a3, "rb", v16 + 24);
    }

    else
    {
      FileInfoDesc = GetFileInfoDesc(v14, *(v16 + 16), a3);
      *(v16 + 48) = FileInfoDesc;
      v6 = 2153783306;
      if (!FileInfoDesc)
      {
        goto LABEL_23;
      }

      *(FileInfoDesc + 40) = 0;
      if (*(FileInfoDesc + 20))
      {
        goto LABEL_11;
      }

      v22 = (*v13)(a1[2].i64[1], a2, a3, a4, v16 + 24);
    }

    v6 = v22;
    if ((v22 & 0x80000000) != 0)
    {
      v23 = *(v16 + 40);
    }

    else
    {
      v23 = (*(v13 + 32))(*(v16 + 24));
      *(v16 + 40) = v23;
    }

    v24 = *(v16 + 24);
    FileInfoDesc = *(v16 + 48);
    *(FileInfoDesc + 24) = v24;
    *(FileInfoDesc + 32) = v23;
    if (v24)
    {
LABEL_22:
      ++*(FileInfoDesc + 20);
    }

LABEL_23:
    critsec_Leave(*(*(v16 + 8) + 16));
    if (!*(v16 + 24))
    {
      heap_Free(*(v16 + 16), v16);
      v16 = 0;
    }

    v5 = v6;
    goto LABEL_26;
  }

  return v6;
}

uint64_t GetFileInfoDesc(uint64_t *a1, void *a2, char *__s2)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = 0;
    while (cstdlib_strcmp(*(v6 + 8), __s2))
    {
      ++v7;
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v7 = 0;
LABEL_7:
    v8 = heap_Alloc(a2, 48);
    v6 = v8;
    if (v8)
    {
      *v8 = *a1;
      v9 = cstdlib_strlen(__s2);
      v10 = heap_Alloc(a2, (v9 + 1));
      *(v6 + 8) = v10;
      if (v10)
      {
        cstdlib_strcpy(v10, __s2);
        *(v6 + 16) = v7;
        *(v6 + 28) = 0;
        *(v6 + 20) = 0;
        *(v6 + 36) = 0;
        *a1 = v6;
      }

      else
      {
        heap_Free(a2, v6);
        return 0;
      }
    }
  }

  return v6;
}

uint64_t cache_datastream_Close(uint64_t a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  critsec_Enter(*(*(a1 + 8) + 16));
  v2 = *(a1 + 8);
  v3 = *(v2 + 24);
  if (*(v2 + 64) && (v4 = *(a1 + 48), v5 = *(v4 + 20) - 1, (*(v4 + 20) = v5) != 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = (*(v3 + 8))(*(a1 + 24));
    *(a1 + 24) = 0;
  }

  critsec_Leave(*(*(a1 + 8) + 16));
  heap_Free(*(a1 + 16), a1);
  return v6;
}

uint64_t cache_datastream_Read(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    critsec_Enter(*(a4[1] + 16));
    v8 = a4[1];
    v9 = *(v8 + 24);
    v10 = *(v8 + 64);
    if (v10)
    {
      v11 = a3 * a2;
      if (*(v10 + 48) < v11 || (v12 = a4[6], *(v12 + 40) != 1))
      {
        if (((*(v9 + 24))(a4[3], *(a4 + 8), 0, 1) & 0x80000000) != 0)
        {
          v16 = 0;
        }

        else
        {
          v16 = (*(v9 + 16))(a1, 1, v11, a4[3]);
        }

        v21 = a4[4] + v11;
LABEL_19:
        a4[4] = v21;
        goto LABEL_20;
      }

      v13 = *(v10 + 16);
      if (*(v13 + 4) != -1)
      {
        v14 = 0;
        v15 = *(v12 + 16);
        v16 = v11;
        while (1)
        {
          if (*(v13 + 4) == v15)
          {
            v17 = a4[4];
            v18 = v13[4];
            v19 = v17 >= v18;
            v20 = v17 - v18;
            if (v19 && v20 + v11 <= *(v10 + 44))
            {
              break;
            }
          }

          v13 = *v13;
          --v14;
          if (!v13)
          {
            goto LABEL_12;
          }
        }

        cstdlib_memcpy(a1, (v13[3] + v20), v11);
        if (v14)
        {
          v23 = *v13;
          if (*v13)
          {
            v24 = v13[1];
            v23[1] = v24;
            *v24 = v23;
            v25 = *(v10 + 16);
          }

          else
          {
            v25 = *(v10 + 16);
            v26 = *(*(v10 + 8) + 8);
            *(v10 + 8) = v26;
            *v26 = 0;
          }

          *(v25 + 8) = v13;
          *v13 = v25;
          v13[1] = 0;
          *(v10 + 16) = v13;
        }

        v21 = a4[4] + v11;
        goto LABEL_19;
      }

LABEL_12:
      v16 = AddCacheData(a4, v11, a1);
    }

    else
    {
      v16 = (*(v9 + 16))(a1, a2, a3, a4[3]);
    }

LABEL_20:
    critsec_Leave(*(a4[1] + 16));
    return v16;
  }

  return 0;
}

uint64_t cache_datastream_Seek(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 2153783303;
  if (a1)
  {
    critsec_Enter(*(a1[1] + 16));
    v9 = a1[1];
    v10 = *(v9 + 24);
    if (!*(v9 + 64))
    {
      v11 = (*(v10 + 24))(a1[3], a2, a3, a4);
LABEL_17:
      v4 = v11;
      goto LABEL_18;
    }

    if (*(a1[6] + 40))
    {
      v11 = 0;
    }

    else
    {
      v11 = (*(v10 + 24))(a1[3], a2, a3, a4);
    }

    switch(a3)
    {
      case 2:
        v12 = a1[5];
        break;
      case 1:
        if (a4 == 1)
        {
          v12 = a1[4] + a2;
        }

        else
        {
          if (a4 != -1)
          {
            goto LABEL_18;
          }

          v12 = a1[4] - a2;
        }

        break;
      case 0:
        a1[4] = a2;
        goto LABEL_17;
      default:
LABEL_18:
        critsec_Leave(*(a1[1] + 16));
        return v4;
    }

    a1[4] = v12;
    goto LABEL_17;
  }

  return v4;
}

uint64_t cache_datastream_GetSize(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  critsec_Enter(*(*(a1 + 8) + 16));
  v2 = (*(*(*(a1 + 8) + 24) + 32))(*(a1 + 24));
  critsec_Leave(*(*(a1 + 8) + 16));
  return v2;
}

uint64_t cache_datastream_Write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  critsec_Enter(*(*(a4 + 8) + 16));
  v8 = (*(*(*(a4 + 8) + 24) + 48))(a1, a2, a3, *(a4 + 24));
  critsec_Leave(*(*(a4 + 8) + 16));
  return v8;
}

uint64_t cache_datastream_DataOpen(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = 2153783303;
  if (a1 && a4)
  {
    v9 = a1[3].i64[0];
    v10 = *(v9 + 24);
    v11 = heap_Calloc(*(v9 + 8), 1, 32);
    v12 = v11;
    if (v11)
    {
      v13 = a1[3];
      *v11 = vextq_s8(v13, v13, 8uLL);
      v11[1].i64[1] = *(v13.i64[0] + 8);
      v11[1].i64[0] = 0;
      v14 = v11 + 1;
      v4 = (*(v10 + 80))(a1[2].i64[1], a2, a3, v11 + 1);
      if (!v14->i64[0])
      {
        heap_Free(*(a1[3].i64[0] + 8), v12);
        v12 = 0;
      }
    }

    else
    {
      v4 = 2153783306;
    }

    *a4 = v12;
  }

  return v4;
}

uint64_t cache_datastream_DataClose(uint64_t a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  v2 = (*(*(*(a1 + 8) + 24) + 96))(*(a1 + 16));
  heap_Free(*(a1 + 24), a1);
  return v2;
}

uint64_t cache_datastream_DataMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a3 && a4)
  {
    return (*(*(*(a1 + 8) + 24) + 104))(*(a1 + 16));
  }

  else
  {
    return 2153783303;
  }
}

uint64_t cache_datastream_DataUnmap(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*(*(a1 + 8) + 24) + 112))(*(a1 + 16));
  }

  else
  {
    return 2153783303;
  }
}

uint64_t cache_datastream_DataFreeze(uint64_t a1)
{
  if (a1)
  {
    return (*(*(*(a1 + 8) + 24) + 120))(*(a1 + 16));
  }

  else
  {
    return 2153783303;
  }
}

uint64_t cache_datastream_DynModOpen(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2153783303;
  if (a1 && a5)
  {
    v11 = a1[3].i64[0];
    v12 = *(v11 + 24);
    v13 = heap_Calloc(*(v11 + 8), 1, 32);
    v14 = v13;
    if (v13)
    {
      v15 = a1[3];
      *v13 = vextq_s8(v15, v15, 8uLL);
      v13[1].i64[1] = *(v15.i64[0] + 8);
      v13[1].i64[0] = 0;
      v16 = v13 + 1;
      v5 = (*(v12 + 176))(a1[2].i64[1], a2, a3, a4, v13 + 1);
      if (!v16->i64[0])
      {
        heap_Free(*(a1[3].i64[0] + 8), v14);
        v14 = 0;
      }
    }

    else
    {
      v5 = 2153783306;
    }

    *a5 = v14;
  }

  return v5;
}

uint64_t cache_datastream_DynModClose(uint64_t a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  v2 = (*(*(*(a1 + 8) + 24) + 184))(*(a1 + 16));
  *(a1 + 16) = 0;
  heap_Free(*(a1 + 24), a1);
  return v2;
}

uint64_t cache_datastream_DynModObjLoad(uint64_t a1)
{
  if (a1)
  {
    return (*(*(*(a1 + 8) + 24) + 192))(*(a1 + 16));
  }

  else
  {
    return 2153783303;
  }
}

uint64_t AddCacheData(void *a1, unsigned int a2, void *a3)
{
  v4 = a1[1];
  v5 = *(v4 + 64);
  if (!v5)
  {
    return a2;
  }

  v8 = *(v4 + 24);
  v9 = *(a1[6] + 16);
  v10 = *(v5 + 8);
  v11 = *(v10 + 8);
  *(v5 + 8) = v11;
  *v11 = 0;
  *(v10 + 16) = v9;
  v13 = a1 + 3;
  v12 = a1[3];
  *(v10 + 32) = v13[1];
  if (((*(v8 + 24))(v12) & 0x80000000) != 0 || (*(v8 + 16))(*(v10 + 24), 1, *(v5 + 44), a1[3]) < a2)
  {
    return 0;
  }

  v14 = a2;
  cstdlib_memcpy(a3, *(v10 + 24), a2);
  a1[4] += a2;
  v15 = *(v5 + 16);
  *(v15 + 8) = v10;
  *v10 = v15;
  *(v10 + 8) = 0;
  *(v5 + 16) = v10;
  return v14;
}

uint64_t osspi_cb_cache_ClassOpen(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v21 = 0;
  v22 = 0;
  v6 = 2153783303;
  if (a4 && a6)
  {
    v13 = heap_Calloc(a1, 1, 96);
    *a6 = v13;
    if (!v13)
    {
      return 2153783306;
    }

    *v13 = a1;
    (*a6)[1] = a2;
    (*a6)[10] = 0;
    (*a6)[11] = 0;
    (*a6)[2] = heap_Calloc(a1, 1, 224);
    v14 = *a6;
    v15 = (*a6)[2];
    if (v15)
    {
      *v15 = cache_datastream_Open;
      *((*a6)[2] + 8) = cache_datastream_Close;
      *((*a6)[2] + 16) = cache_datastream_Read;
      *((*a6)[2] + 24) = cache_datastream_Seek;
      *((*a6)[2] + 32) = cache_datastream_GetSize;
      *((*a6)[2] + 48) = cache_datastream_Write;
      if (*(a4 + 80))
      {
        *((*a6)[2] + 80) = cache_datastream_DataOpen;
        *((*a6)[2] + 96) = cache_datastream_DataClose;
        *((*a6)[2] + 104) = cache_datastream_DataMap;
        *((*a6)[2] + 112) = cache_datastream_DataUnmap;
        *((*a6)[2] + 120) = cache_datastream_DataFreeze;
      }

      if (*(a4 + 176))
      {
        *((*a6)[2] + 176) = cache_datastream_DynModOpen;
        *((*a6)[2] + 184) = cache_datastream_DynModClose;
        *((*a6)[2] + 192) = cache_datastream_DynModObjLoad;
        *((*a6)[2] + 200) = cache_datastream_DynModObjUnload;
      }

      (*a6)[4] = a4;
      (*a6)[5] = a5;
      v16 = cache_ClassOpen(a1, a3, a4, a5, &v22);
      if ((v16 & 0x80000000) != 0)
      {
        v6 = v16;
      }

      else
      {
        v17 = v22;
        (*a6)[7] = v22;
        v6 = cache_ObjOpen(v17, 0x10u, 0x200u, 0x100u, &v21);
        if ((v6 & 0x80000000) == 0)
        {
          (*a6)[6] = v21;
          (*a6)[3] = *a6;
          return v6;
        }
      }

      v14 = *a6;
      if (!*a6)
      {
        return v6;
      }
    }

    else
    {
      v6 = 2153783306;
    }

    v18 = v14[6];
    if (v18)
    {
      cache_ObjClose(v18);
      v14 = *a6;
    }

    v19 = v14[7];
    if (v19)
    {
      cache_ClassClose(v19);
      v14 = *a6;
    }

    if (v14[2])
    {
      heap_Free(a1, v14[2]);
      v14 = *a6;
    }

    heap_Free(a1, v14);
    *a6 = 0;
  }

  return v6;
}

uint64_t osspi_cb_cache_SetLog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return cache_ObjSetLog(*(a1 + 48), a2, a3);
  }

  else
  {
    return 2153783303;
  }
}

uint64_t osspi_cb_cache_SetClock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 2153783303;
  }

  result = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  return result;
}

uint64_t osspi_cb_cache_ClassClose(void **a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  cache_ObjClose(a1[6]);
  a1[6] = 0;
  cache_ClassClose(a1[7]);
  a1[7] = 0;
  heap_Free(*a1, a1[2]);
  *(a1 + 1) = *(a1 + 2);
  heap_Free(*a1, a1);
  return 0;
}

uint64_t osspi_DynModOpen(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2153783303;
  if (a1 && a2 && a5)
  {
    if (*(a1[2] + 176))
    {
      v11 = heap_Calloc(a2, 1, 24);
      *a5 = v11;
      if (v11)
      {
        *v11 = a1;
        *(*a5 + 8) = a2;
        v5 = (*(a1[2] + 176))(a1[3], a1[1], a3, a4, *a5 + 16);
        if ((v5 & 0x80000000) != 0)
        {
          heap_Free(a2, *a5);
          *a5 = 0;
        }
      }

      else
      {
        return 2153783306;
      }
    }

    else
    {
      return 2153783297;
    }
  }

  return v5;
}

uint64_t osspi_DynModClose(uint64_t a1)
{
  v1 = 2153783297;
  if (!a1)
  {
    return 2153783303;
  }

  v3 = *(*(*a1 + 16) + 184);
  if (v3)
  {
    v1 = v3(*(a1 + 16));
    if ((v1 & 0x80000000) == 0)
    {
      heap_Free(*(a1 + 8), a1);
    }
  }

  return v1;
}

uint64_t osspi_DynModObjLoad(void *a1, uint64_t a2, uint64_t a3)
{
  result = 2153783303;
  if (a1 && a2 && a3)
  {
    v5 = *(*(*a1 + 16) + 192);
    if (v5)
    {
      return v5(a1[2]);
    }

    else
    {
      return 2153783297;
    }
  }

  return result;
}

uint64_t osspi_DynModObjUnload(void *a1, uint64_t a2)
{
  v2 = 2153783303;
  if (a1 && a2)
  {
    v3 = *(*(*a1 + 16) + 200);
    if (v3)
    {
      return v3(a1[2]);
    }

    return 2153783297;
  }

  return v2;
}

uint64_t osspi_DataOpen(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  safeh_GetNullHandle();

  return osspi_DataOpenEx(a1, a2, v8, v9, v10, a3, a4);
}

uint64_t osspi_DataOpenEx(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v7 = 2153783303;
  if (!a6 || !a1 || !a2 || !a7)
  {
    return v7;
  }

  v12 = heap_Calloc(a2, 1, 56);
  *a7 = v12;
  if (!v12)
  {
    return 2153783306;
  }

  *v12 = a1;
  *(*a7 + 8) = a2;
  v13 = a1[2];
  v14 = *(v13 + 80);
  if (v14)
  {
    v7 = v14(a1[3], a1[1], a6, *a7 + 24);
    if ((v7 & 0x1FFF) != 1)
    {
      goto LABEL_10;
    }

    v13 = a1[2];
  }

  v7 = (*v13)(a1[3], a1[1], a6, "rb", *a7 + 32);
LABEL_10:
  if ((v7 & 0x80000000) != 0)
  {
    heap_Free(a2, *a7);
    *a7 = 0;
  }

  return v7;
}

uint64_t osspi_DataClose(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      v2 = 96;
    }

    else
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        heap_Free(*(a1 + 8), v4);
      }

      if (!*(a1 + 32))
      {
        v3 = 0;
LABEL_12:
        heap_Free(*(a1 + 8), a1);
        return v3;
      }

      v2 = 8;
    }

    v3 = (*(*(*a1 + 16) + v2))();
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    goto LABEL_12;
  }

  return 2153783303;
}

uint64_t osspi_DataReplace(void *a1, uint64_t a2, uint64_t a3)
{
  result = 2153783303;
  if (a1 && a2 && a3)
  {
    v5 = *(a1[2] + 128);
    if (v5)
    {
      return v5(a1[3], a1[1]);
    }

    else
    {
      return 2153783297;
    }
  }

  return result;
}

uint64_t osspi_DataMap(uint64_t a1, uint64_t a2, unsigned int *a3, void *a4)
{
  v4 = 2153783303;
  if (a1 && a3 && a4)
  {
    if (*(a1 + 16))
    {
      return 2153783313;
    }

    *a4 = 0;
    v9 = *(a1 + 24);
    if (v9)
    {
      v16 = *a3;
      v10 = (*(*(*a1 + 16) + 104))(v9, a2, &v16, a4);
      *a3 = v16;
      v4 = v10;
      if ((v10 & 0x80000000) != 0)
      {
        return v4;
      }

      goto LABEL_8;
    }

    v4 = 2153783300;
    if (!*a3)
    {
      v12 = (*(*(*a1 + 16) + 32))(*(a1 + 32));
      *a3 = v12;
      if (v12 <= a2)
      {
        return v4;
      }

      *a3 = v12 - a2;
    }

    v10 = (*(*(*a1 + 16) + 24))(*(a1 + 32), a2, 0, 1);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v13 = *a3;
    if (*(a1 + 48) >= v13)
    {
      v14 = *(a1 + 40);
    }

    else
    {
      v14 = heap_Realloc(*(a1 + 8), *(a1 + 40), v13);
      if (!v14)
      {
        return 2153783306;
      }

      *(a1 + 40) = v14;
      *(a1 + 48) = *a3;
    }

    v15 = (*(*(*a1 + 16) + 16))(v14, 1);
    if (v15 + 1 >= 2)
    {
      *a3 = v15;
      *a4 = *(a1 + 40);
LABEL_8:
      *(a1 + 16) = 1;
      return v10;
    }
  }

  return v4;
}

uint64_t osspi_DataUnmap(uint64_t a1, uint64_t a2)
{
  result = 2153783303;
  if (a1 && a2)
  {
    if (!*(a1 + 16))
    {
      return 2153783313;
    }

    if (*(a1 + 24))
    {
      result = (*(*(*a1 + 16) + 112))();
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    else if (*(a1 + 48) < 0x401u)
    {
      result = 0;
    }

    else
    {
      heap_Free(*(a1 + 8), *(a1 + 40));
      result = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
    }

    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t osspi_DataFreeze(void *a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  if (a1[3])
  {
    v2 = *(*(*a1 + 16) + 120);
    if (v2)
    {

      return v2();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = a1[4];
    if (result)
    {
      result = (*(*(*a1 + 16) + 8))();
      a1[4] = 0;
    }
  }

  return result;
}

uint64_t osspi_FindOpen(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = 2153783303;
  if (a5 && a3 && a1 && a2 && a6)
  {
    if (*(a1[2] + 152))
    {
      v13 = heap_Calloc(a2, 1, 24);
      *a6 = v13;
      if (v13)
      {
        *v13 = a1;
        *(*a6 + 8) = a2;
        v6 = (*(a1[2] + 152))(a1[3], a1[1], a3, a4, a5, *a6 + 16);
        if ((v6 & 0x80000000) != 0)
        {
          heap_Free(a2, *a6);
          *a6 = 0;
        }
      }

      else
      {
        return 2153783306;
      }
    }

    else
    {
      return 2153783297;
    }
  }

  return v6;
}

uint64_t osspi_FindNext(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 160))(a1[2]);
  }

  else
  {
    return 2153783303;
  }
}

uint64_t osspi_FindClose(uint64_t a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  v2 = (*(*(*a1 + 16) + 168))(*(a1 + 16));
  if ((v2 & 0x80000000) == 0)
  {
    heap_Free(*(a1 + 8), a1);
  }

  return v2;
}

uint64_t osspi_time(uint64_t result, uint64_t *a2)
{
  v7 = 0;
  if (!result)
  {
LABEL_7:
    if (!a2)
    {
      return result;
    }

    goto LABEL_8;
  }

  v3 = *(*(result + 16) + 136);
  if (v3)
  {
    result = v3(*(result + 24), &v7);
    if (!a2)
    {
      return result;
    }

    goto LABEL_8;
  }

  v4 = *(result + 88);
  if (v4)
  {
    v6 = 0;
    v5 = 0;
    v4(*(result + 80), &v5);
    result = v5;
    goto LABEL_7;
  }

  result = 0;
  if (!a2)
  {
    return result;
  }

LABEL_8:
  *a2 = result;
  return result;
}

uint64_t osspi_ctime(void *a1, void *a2, int a3, char *a4)
{
  result = 2153783303;
  if (a3 && a1 && a2 && a4)
  {
    v7 = *(a1[2] + 144);
    if (v7)
    {
      v8 = a1[3];

      return v7(v8);
    }

    else if (*a2)
    {
      result = 2153783297;
      if (a1[11])
      {
        LH_itoa(*a2, a4, 0xAu);
        return 0;
      }
    }

    else
    {
      return 2153783297;
    }
  }

  return result;
}

uint64_t osspi_ClcDataOpen(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v4[0] = xmmword_287EE7CC0;
  v4[1] = *off_287EE7CD0;
  result = 2153783303;
  if (a1)
  {
    if (a2)
    {
      return clcarchive_Parse(a2, v4, a1, &v5, 0);
    }
  }

  return result;
}

size_t osspi_ClcDataRead(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  if (!v6)
  {
    return (*(*(*a4 + 16) + 16))(a1, a2, a3, *(a4 + 32));
  }

  v8 = 0;
  v9 = a3 * a2;
  if (((*(*(*a4 + 16) + 104))(v6, *(a4 + 52), &v9, &v8) & 0x80000000) != 0)
  {
    return 0;
  }

  cstdlib_memcpy(a1, v8, v9);
  *(a4 + 52) += v9;
  if ((*(*(*a4 + 16) + 112))(*(a4 + 24), v8) >= 0)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t osspi_ClcDataSeek(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 24))
  {
    return (*(*(*a1 + 16) + 24))(*(a1 + 32), a2, a3, 1);
  }

  *(a1 + 52) = a2;
  return 0;
}

uint64_t osspi_ClcDataClose(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 2153783303;
  }

  else
  {
    return 0;
  }
}

uint64_t safeh_HandleCheck(uint64_t a1, int a2, int a3, int a4)
{
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = -2123341816;
  }

  if (!a4)
  {
    v4 = 0;
  }

  if (a2 == a3)
  {
    return v4;
  }

  else
  {
    return 2171625480;
  }
}

unsigned __int16 *LH_wcscat(unsigned __int16 *result, unsigned __int16 *a2)
{
  v2 = result;
    ;
  }

  v4 = *a2;
  *(v2 - 1) = v4;
  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = a2[v5 + 1];
      v2[v5++] = v6;
    }

    while (v6);
  }

  return result;
}

_WORD *LH_wcscpy(_WORD *result, unsigned __int16 *a2)
{
  v2 = *a2;
  *result = v2;
  if (v2)
  {
    v3 = result + 1;
    v4 = a2 + 1;
    do
    {
      v5 = *v4++;
      *v3++ = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t LH_wcscat_from_wchart(uint64_t result, unsigned int *a2)
{
  v2 = (result - 2);
  do
  {
    v3 = v2[1];
    ++v2;
  }

  while (v3);
  v4 = *a2;
  if (*a2)
  {
    v5 = a2 + 1;
    do
    {
      if (v4 >= 0x10000)
      {
        LOWORD(v4) = 63;
      }

      *v2++ = v4;
      v6 = *v5++;
      v4 = v6;
    }

    while (v6);
  }

  *v2 = 0;
  return result;
}

_WORD *LH_wcscpy_from_wchart(_WORD *result, unsigned int *a2)
{
  v2 = *a2;
  v3 = result;
  if (*a2)
  {
    v4 = a2 + 1;
    v3 = result;
    do
    {
      if (v2 >= 0x10000)
      {
        LOWORD(v2) = 63;
      }

      *v3++ = v2;
      v5 = *v4++;
      v2 = v5;
    }

    while (v5);
  }

  *v3 = 0;
  return result;
}

_DWORD *LH_wcscat_to_wchart(_DWORD *result, unsigned __int16 *a2)
{
  v2 = result;
    ;
  }

  v4 = *a2;
  *(v2 - 1) = v4;
  if (v4)
  {
    v5 = a2 + 1;
    do
    {
      v6 = *v5++;
      *v2++ = v6;
    }

    while (v6);
  }

  return result;
}

_DWORD *LH_wcscpy_to_wchart(_DWORD *result, unsigned __int16 *a2)
{
  v2 = *a2;
  *result = v2;
  if (v2)
  {
    v3 = result + 1;
    v4 = a2 + 1;
    do
    {
      v5 = *v4++;
      *v3++ = v5;
    }

    while (v5);
  }

  return result;
}

unsigned __int16 *LH_wcscat_from_char(unsigned __int16 *result, unsigned __int8 *a2)
{
  v2 = result;
  do
  {
    v3 = v2;
  }

  while (*v2++);
  v5 = *a2;
  *v3 = v5;
  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = a2[v6 + 1];
      v2[v6++] = v7;
    }

    while (v7);
  }

  return result;
}

_WORD *LH_wcsncpy_from_char(_WORD *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  if (a3)
  {
    for (i = 2 * a3 - 2; ; i -= 2)
    {
      v6 = *a2;
      *a1 = v6;
      if (!v6)
      {
        break;
      }

      ++a1;
      ++a2;
      if (!--a3)
      {
        return v3;
      }
    }

    if (a3 != 1)
    {
      bzero(a1, i);
    }
  }

  return v3;
}

_WORD *LH_wcscpy_from_char(_WORD *result, unsigned __int8 *a2)
{
  v2 = *a2;
  *result = v2;
  if (v2)
  {
    v3 = result + 1;
    v4 = a2 + 1;
    do
    {
      v5 = *v4++;
      *v3++ = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t LH_wcscat_to_char(uint64_t result, _WORD *a2)
{
  v2 = (result - 1);
    ;
  }

  v4 = *a2;
  if (*a2)
  {
    v5 = a2 + 1;
    do
    {
      if (v4 >= 0x100)
      {
        LOBYTE(v4) = 63;
      }

      *v2++ = v4;
      v6 = *v5++;
      v4 = v6;
    }

    while (v6);
  }

  *v2 = 0;
  return result;
}

_BYTE *LH_wcscpy_to_char(_BYTE *result, _WORD *a2)
{
  v2 = *a2;
  v3 = result;
  if (*a2)
  {
    v4 = a2 + 1;
    v3 = result;
    do
    {
      if (v2 >= 0x100)
      {
        LOBYTE(v2) = 63;
      }

      *v3++ = v2;
      v5 = *v4++;
      v2 = v5;
    }

    while (v5);
  }

  *v3 = 0;
  return result;
}

uint64_t LH_wcsncpy_to_char(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a3)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5;
      v7 = *(a2 + 2 * v5);
      *(a1 + v6) = v7;
      if (!v7)
      {
        break;
      }

      v5 = v6 + 1;
      if (a3 == v6 + 1)
      {
        return a1 + v6 + 1;
      }
    }

    v8 = (a1 + v6 + 1);
    if (a3 - 1 == v6)
    {
      v3 += v6 + 1;
    }

    else
    {
      bzero(v8, ~v6 + a3);
      v3 += a3;
    }
  }

  return v3;
}

uint64_t LH_wcschr(uint64_t a1, int a2)
{
  v2 = a1 - 2;
  do
  {
    v4 = *(v2 + 2);
    v2 += 2;
    v3 = v4;
    if (v4)
    {
      v5 = v3 == a2;
    }

    else
    {
      v5 = 1;
    }
  }

  while (!v5);
  if (v3 == a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

unsigned __int16 *LH_wcsstr(unsigned __int16 *result, unsigned __int16 *a2)
{
  if (*a2)
  {
    v2 = *result;
    if (*result)
    {
      while (1)
      {
        v3 = 1;
        v4 = a2;
        while (1)
        {
          v5 = *v4;
          if (v2 != v5)
          {
            break;
          }

          ++v4;
          v2 = result[v3++];
          if (!v2)
          {
            v5 = *v4;
            break;
          }
        }

        if (!v5)
        {
          break;
        }

        v6 = result[1];
        ++result;
        v2 = v6;
        if (!v6)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t LH_wcscmp(_WORD *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1 + 1;
    do
    {
      if (v2 != *a2)
      {
        break;
      }

      ++a2;
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  return v2 - *a2;
}

uint64_t LH_wcsncmp(_WORD *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  while (1)
  {
    v3 = *a1;
    v4 = *a2;
    if (!*a1 || v3 != v4)
    {
      break;
    }

    ++a1;
    ++a2;
    if (!--a3)
    {
      return 0;
    }
  }

  return (v3 - v4);
}

uint64_t LH_wcslen(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = *(a1 + v1);
    v1 += 2;
  }

  while (v2);
  return (v1 >> 1) - 1;
}

uint64_t LH_wcsncpy(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 2 * a3 - 2;
    for (i = (a1 + 2); ; ++i)
    {
      v7 = *a2;
      *(i - 1) = v7;
      if (!v7)
      {
        break;
      }

      ++a2;
      v5 -= 2;
      if (!--a3)
      {
        return a1;
      }
    }

    if (a3 != 1)
    {
      bzero(i, v5);
    }
  }

  return a1;
}

uint64_t LH_wtol(unsigned __int16 *a1)
{
  v1 = *a1;
  if (v1 <= 0xFF)
  {
    do
    {
      if (v1 - 9 >= 5 && v1 != 32)
      {
        break;
      }

      v2 = a1[1];
      ++a1;
      v1 = v2;
    }

    while (v2 < 0x100);
  }

  if (v1 == 45 || v1 == 43)
  {
    v3 = a1 + 2;
    v4 = a1[1];
  }

  else
  {
    v3 = a1 + 1;
    v4 = v1;
  }

  if (v4 - 48 > 9)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v5 = (v4 & 0xF) + 10 * v5;
      v6 = *v3++;
      LOBYTE(v4) = v6;
    }

    while ((v6 - 48) < 0xA);
  }

  if (v1 == 45)
  {
    return -v5;
  }

  else
  {
    return v5;
  }
}

unint64_t LH_wcstoxl(unsigned __int16 *a1, unsigned __int16 **a2, unsigned int a3, int a4)
{
  v4 = a4;
  v8 = a1 + 1;
  v7 = *a1;
  if (v7 <= 0xFF)
  {
    while (v7 - 9 < 5 || v7 == 32)
    {
      v9 = *v8++;
      v7 = v9;
      if (v9 >= 0x100)
      {
        goto LABEL_10;
      }
    }

    if (v7 == 43)
    {
      goto LABEL_9;
    }

    if (v7 == 45)
    {
      v4 = a4 | 2;
LABEL_9:
      v10 = *v8++;
      v7 = v10;
    }
  }

LABEL_10:
  if (a3 > 0x24 || a3 == 1)
  {
    result = 0;
    if (a2)
    {
      *a2 = a1;
    }

    return result;
  }

  if (a3)
  {
    goto LABEL_17;
  }

  if (v7 == 48)
  {
    if (((*v8 - 88) & 0xFFDF) != 0)
    {
      a3 = 8;
    }

    else
    {
      a3 = 16;
    }

LABEL_17:
    if (a3 == 16 && v7 == 48)
    {
      if ((*v8 | 0x20) == 0x78)
      {
        v7 = v8[1];
        v8 += 2;
      }

      else
      {
        v7 = 48;
      }

      a3 = 16;
    }

    goto LABEL_26;
  }

  a3 = 10;
LABEL_26:
  v12 = 0;
  v13 = a3;
  v14 = 0xFFFFFFFFFFFFFFFFLL / a3;
  v15 = v8 - 1;
  v16 = ~(v14 * a3);
  while (1)
  {
    v17 = v7 - 48;
    if ((v7 - 48) <= 9)
    {
      goto LABEL_31;
    }

    if (v7 > 0xFF || (v7 & 0xDF) - 65 > 0x19)
    {
      break;
    }

    v17 = cstdlib_toupper(v7) - 55;
LABEL_31:
    if (v17 >= v13)
    {
      break;
    }

    if (v12 < v14 || v12 == v14 && v16 >= v17)
    {
      v4 |= 8u;
      v12 = v17 + v12 * v13;
    }

    else
    {
      v4 |= 0xCu;
    }

    v18 = v15[1];
    ++v15;
    v7 = v18;
  }

  if ((v4 & 8) != 0)
  {
    if ((v4 & 4) != 0)
    {
      if (v4)
      {
        v12 = -1;
        if (!a2)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }
    }

    else if ((v4 & 1) != 0 || ((v4 & 2) == 0 || v12 <= 0x8000000000000000) && ((v4 & 2) != 0 || (v12 & 0x8000000000000000) == 0))
    {
LABEL_52:
      if (!a2)
      {
        goto LABEL_54;
      }

LABEL_53:
      *a2 = v15;
      goto LABEL_54;
    }

    if ((v4 & 2) != 0)
    {
      v12 = 0x8000000000000000;
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_52;
  }

  v12 = 0;
  if (a2)
  {
    v15 = a1;
    goto LABEL_53;
  }

LABEL_54:
  if ((v4 & 2) != 0)
  {
    return -v12;
  }

  else
  {
    return v12;
  }
}

uint64_t ssftstring_ObjOpen(void *a1, void *a2)
{
  v2 = 2319458311;
  if (a2)
  {
    v5 = heap_Calloc(a1, 1, 24);
    *a2 = v5;
    if (v5)
    {
      v2 = 0;
      *v5 = a1;
    }

    else
    {
      return 2319458314;
    }
  }

  return v2;
}

uint64_t ssftstring_ObjClone(uint64_t a1, uint64_t *a2)
{
  v2 = 2319458311;
  if (a1 && a2)
  {
    v5 = heap_Calloc(*a1, 1, 24);
    *a2 = v5;
    if (v5)
    {
      *v5 = *a1;
      v6 = *(a1 + 8);
      v7 = v6 != 0;
      v8 = v6 - 1;
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = ssftstring_Reserve(*a2, v9);
      if ((v10 & 0x80000000) != 0)
      {
        v2 = v10;
        heap_Free(*a1, *a2);
        *a2 = 0;
      }

      else
      {
        cstdlib_strcpy(*(*a2 + 16), *(a1 + 16));
        v2 = 0;
        *(*a2 + 12) = *(a1 + 12);
      }
    }

    else
    {
      return 2319458314;
    }
  }

  return v2;
}

uint64_t ssftstring_Reserve(uint64_t a1, int a2)
{
  v2 = 2319458314;
  if (!a1)
  {
    return 2319458311;
  }

  v4 = (a2 + 1);
  if (*(a1 + 8) >= v4)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *a1;
  if (v5)
  {
    v7 = heap_Realloc(v6, v5, v4);
    if (!v7)
    {
      return v2;
    }

    goto LABEL_10;
  }

  v7 = heap_Alloc(v6, v4);
  if (v7)
  {
    *v7 = 0;
LABEL_10:
    v2 = 0;
    *(a1 + 16) = v7;
    *(a1 + 8) = v4;
  }

  return v2;
}

uint64_t ssftstring_ObjCloneCStr(void *a1, char *a2, uint64_t *a3)
{
  v3 = 2319458311;
  if (a3)
  {
    v7 = heap_Calloc(a1, 1, 24);
    *a3 = v7;
    if (v7)
    {
      *v7 = a1;
      v8 = ssftstring_AssignCStr(*a3, a2);
      if ((v8 & 0x80000000) != 0)
      {
        v3 = v8;
        ssftstring_ObjClose(*a3);
        *a3 = 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2319458314;
    }
  }

  return v3;
}

uint64_t ssftstring_AssignCStr(uint64_t a1, char *__s)
{
  if (__s)
  {
    v4 = cstdlib_strlen(__s);
    if (a1)
    {
      goto LABEL_3;
    }

    return 2319458311;
  }

  v4 = 0;
  if (!a1)
  {
    return 2319458311;
  }

LABEL_3:
  result = ssftstring_Reserve(a1, v4);
  if ((result & 0x80000000) == 0)
  {
    v6 = *(a1 + 16);
    if (__s)
    {
      cstdlib_strcpy(v6, __s);
    }

    else
    {
      v4 = 0;
      *v6 = 0;
    }

    result = 0;
    *(a1 + 12) = v4;
  }

  return result;
}

uint64_t ssftstring_ObjClose(void **a1)
{
  if (!a1)
  {
    return 2319458311;
  }

  v2 = a1[2];
  if (v2)
  {
    heap_Free(*a1, v2);
  }

  heap_Free(*a1, a1);
  return 0;
}

uint64_t ssftstring_CStr(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t ssftstring_CStrWritable(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t ssftstring_CStrDetach(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 16);
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  return result;
}

uint64_t ssftstring_Size(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t ssftstring_Assign(uint64_t a1, uint64_t a2)
{
  result = 2319458311;
  if (a1)
  {
    if (a2)
    {
      result = ssftstring_Reserve(a1, *(a2 + 12));
      if ((result & 0x80000000) == 0)
      {
        v5 = *(a2 + 16);
        v6 = *(a1 + 16);
        if (v5)
        {
          cstdlib_strcpy(v6, v5);
          v7 = *(a2 + 12);
        }

        else
        {
          v7 = 0;
          *v6 = 0;
        }

        result = 0;
        *(a1 + 12) = v7;
      }
    }
  }

  return result;
}

uint64_t ssftstring_Append(uint64_t a1, uint64_t a2)
{
  result = 2319458311;
  if (a1 && a2)
  {
    if (*(a2 + 16))
    {
      result = ssftstring_Reserve(a1, *(a2 + 12) + *(a1 + 12));
      if ((result & 0x80000000) == 0)
      {
        cstdlib_strcpy((*(a1 + 16) + *(a1 + 12)), *(a2 + 16));
        result = 0;
        *(a1 + 12) += *(a2 + 12);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ssftstring_AppendChar(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 2319458311;
  }

  result = ssftstring_Reserve(a1, *(a1 + 12) + 1);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    *(*(a1 + 16) + *(a1 + 12)) = a2;
    v5 = *(a1 + 12) + 1;
    *(a1 + 12) = v5;
    *(*(a1 + 16) + v5) = 0;
  }

  return result;
}

uint64_t ssftstring_AppendCStr(uint64_t a1, char *__s)
{
  if (!a1 || !__s)
  {
    return 2319458311;
  }

  v4 = cstdlib_strlen(__s);

  return ssftstring_AppendCStrN(a1, __s, v4);
}

uint64_t ssftstring_AppendCStrN(uint64_t a1, const char *a2, unsigned int a3)
{
  result = 2319458311;
  if (a1 && a2)
  {
    result = ssftstring_Reserve(a1, *(a1 + 12) + a3);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strncpy((*(a1 + 16) + *(a1 + 12)), a2, a3);
      result = 0;
      v7 = *(a1 + 12) + a3;
      *(a1 + 12) = v7;
      *(*(a1 + 16) + v7) = 0;
    }
  }

  return result;
}

uint64_t ssftstring_Clear(uint64_t a1)
{
  if (!a1)
  {
    return 2319458311;
  }

  v2 = *(a1 + 16);
  result = 0;
  if (v2)
  {
    *v2 = 0;
    *(a1 + 12) = 0;
  }

  return result;
}

uint64_t ssftstring_Compare(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (!a2)
      {
        return 1;
      }

LABEL_12:
      v6 = *(a2 + 16);
      if (v6)
      {
        return cstdlib_strcmp(v3, v6);
      }

      return 1;
    }
  }

  if (!a2)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (v4)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  if (a1 && v4)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      goto LABEL_12;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ssftstring_CompareCStr(uint64_t a1, const char *a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (a2 | v2)
    {
      v3 = -1;
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      result = 1;
    }

    else
    {
      result = v3;
    }

    if (v2)
    {
      v5 = a2 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      return cstdlib_strcmp(v2, a2);
    }
  }

  else if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t ssftstring_ReplaceAllCStrByCStr(uint64_t a1, char *__s2, char *a3)
{
  v3 = 2319458311;
  *v15 = 0;
  if (!a1 || !__s2 || !*__s2)
  {
    return v3;
  }

  v6 = *(a1 + 16);
  if (!v6 || (v8 = cstdlib_strstr(*(a1 + 16), __s2)) == 0)
  {
    v3 = 0;
LABEL_17:
    if (*v15)
    {
      ssftstring_ObjClose(*v15);
    }

    return v3;
  }

  v9 = v8;
  v10 = ssftstring_ObjClone(a1, v15);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = *v15;
  if (*v15)
  {
    v12 = *(*v15 + 16);
    if (v12)
    {
      *v12 = 0;
      *(v11 + 12) = 0;
    }

    while (1)
    {
      appended = ssftstring_AppendCStrN(*v15, v6, v9 - v6);
      if ((appended & 0x80000000) != 0)
      {
        break;
      }

      appended = ssftstring_AppendCStr(*v15, a3);
      if ((appended & 0x80000000) != 0)
      {
        break;
      }

      v6 = &v9[cstdlib_strlen(__s2)];
      v9 = cstdlib_strstr(v6, __s2);
      if (!v9)
      {
        appended = ssftstring_AppendCStr(*v15, v6);
        if ((appended & 0x80000000) == 0)
        {
          appended = ssftstring_Assign(a1, *v15);
        }

        break;
      }
    }

    v3 = appended;
    goto LABEL_17;
  }

  return v3;
}

uint64_t ssftstring_ReplaceAllBy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return ssftstring_ReplaceAllCStrByCStr(a1, *(a2 + 16), *(a3 + 16));
  }

  else
  {
    return 2319458311;
  }
}

uint64_t vector_ObjOpen(void *a1, __int128 *a2, __int16 a3, uint64_t *a4)
{
  v8 = *(a2 + 2);
  result = 0;
  if (*(a2 + 1))
  {
    if (!a4 || !v8)
    {
      return result;
    }

LABEL_7:
    result = heap_Calloc(a1, 1, 56);
    *a4 = result;
    if (result)
    {
      *result = 0;
      v10 = *a4;
      *(v10 + 32) = 0;
      v11 = *a2;
      *(v10 + 24) = *(a2 + 2);
      *(v10 + 8) = v11;
      v12 = *a4;
      *(v12 + 40) = a3;
      *(v12 + 48) = a1;
      return 1;
    }

    return result;
  }

  if (a4 && !v8)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t vector_ObjClone(const void **a1, uint64_t **a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = heap_Calloc(a1[6], 1, 56);
      *a2 = result;
      if (result)
      {
        cstdlib_memcpy(result, a1, 0x38uLL);
        **a2 = heap_Alloc((*a2)[6], *(*a2 + 8) * *(*a2 + 4));
        v5 = *a2;
        v6 = **a2;
        if (!v6)
        {
LABEL_24:
          heap_Free(v5[6], v5);
          result = 0;
          *a2 = 0;
          return result;
        }

        cstdlib_memcpy(v6, *a1, *(v5 + 9) * *(v5 + 4));
        if (!(*a2)[2])
        {
          return 1;
        }

        v7 = 0;
        v8 = 0;
        result = 1;
        while (result == 1)
        {
          if (v7 >= *(*a2 + 9))
          {
            return 1;
          }

          result = ((*a2)[2])(*a1 + v7 * *(a1 + 4), (*a2)[6], **a2 + v7 * *(*a2 + 4));
          if (result == 1)
          {
            ++v8;
          }

          ++v7;
        }

        if (!result)
        {
          v5 = *a2;
          if (!*a2)
          {
            return 0;
          }

          v9 = *v5;
          if (*v5)
          {
            if (v5[3])
            {
              v10 = v8 == 0;
            }

            else
            {
              v10 = 1;
            }

            if (!v10)
            {
              v11 = 0;
              do
              {
                ((*a2)[3])(**a2 + v11 * *(*a2 + 4), (*a2)[6]);
                ++v11;
              }

              while (v8 != v11);
              v5 = *a2;
              v9 = **a2;
            }

            heap_Free(v5[6], v9);
            v5 = *a2;
          }

          goto LABEL_24;
        }
      }
    }
  }

  return result;
}

uint64_t vector_ObjClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      if (*(result + 24) && *(result + 36))
      {
        v3 = 0;
        do
        {
          (*(v1 + 24))(*v1 + v3 * *(v1 + 8), *(v1 + 48));
          ++v3;
        }

        while (v3 < *(v1 + 36));
        v2 = *v1;
      }

      heap_Free(*(v1 + 48), v2);
    }

    heap_Free(*(v1 + 48), v1);
    return 1;
  }

  return result;
}

uint64_t vector_AddGet(uint64_t a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 36);
    v6 = v5 + 1;
    v7 = *a1;
    if (*(a1 + 32) < v5 + 1)
    {
      v8 = *(a1 + 40) + *(a1 + 40) * (v5 / *(a1 + 40));
      v9 = *(a1 + 48);
      v10 = v8 * *(a1 + 8);
      if (v7)
      {
        result = heap_Realloc(v9, v7, v10);
        if (!result)
        {
          return result;
        }

        v7 = result;
        *a1 = result;
      }

      else
      {
        result = heap_Calloc(v9, 1, v10);
        v7 = result;
        *a1 = result;
        if (!result)
        {
          return result;
        }
      }

      *(a1 + 32) = v8;
      v5 = *(a1 + 36);
      v6 = v5 + 1;
    }

    *a2 = v7 + v5 * *(a1 + 8);
    *(a1 + 36) = v6;
    return 1;
  }

  return result;
}

uint64_t vector_Add(uint64_t a1, const void *a2)
{
  __dst = 0;
  result = vector_AddGet(a1, &__dst);
  if (result)
  {
    cstdlib_memcpy(__dst, a2, *(a1 + 8));
    v5 = *(a1 + 16);
    if (v5 && (result = v5(a2, *(a1 + 48), __dst), !result))
    {
      --*(a1 + 36);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t vector_AddElemAt(uint64_t a1, unsigned int a2, const void *a3)
{
  __dst = 0;
  result = vector_AddGet(a1, &__dst);
  if (result)
  {
    v7 = *(a1 + 36);
    v8 = v7 - 1;
    if (v7 - 1 > a2)
    {
      v9 = *a1;
      v10 = *(a1 + 8);
      __dst = (*a1 + v10 * a2);
      cstdlib_memmove((v9 + (a2 + 1) * v10), __dst, (v7 - (a2 + 1)) * v10);
      v8 = a2;
    }

    cstdlib_memcpy(__dst, a3, *(a1 + 8));
    v11 = *(a1 + 16);
    if (v11 && !v11(a3, *(a1 + 48), __dst))
    {
      v12 = *(a1 + 24);
      *(a1 + 24) = 0;
      vector_Remove(a1, v8);
      result = 0;
      *(a1 + 24) = v12;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t vector_Remove(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 36);
    if (v4 <= a2)
    {
      return 0;
    }

    else
    {
      v5 = *(result + 24);
      if (v5)
      {
        v5(*result + *(result + 8) * a2, *(result + 48));
        v4 = *(v3 + 36);
      }

      if (v4 + ~a2)
      {
        cstdlib_memmove((*v3 + *(v3 + 8) * a2), (*v3 + *(v3 + 8) + *(v3 + 8) * a2), (v4 + ~a2) * *(v3 + 8));
        v4 = *(v3 + 36);
      }

      *(v3 + 36) = v4 - 1;
      return 1;
    }
  }

  return result;
}

uint64_t vector_RemoveAddress(uint64_t result, char *__dst)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (__dst)
    {
      v4 = *(v3 + 8);
      v5 = *v3 + (*(v3 + 36) * v4);
      if (*v3 <= __dst && v5 >= __dst)
      {
        v7 = *(v3 + 24);
        if (v7)
        {
          v7(__dst, *(v3 + 48));
          v4 = *(v3 + 8);
        }

        cstdlib_memmove(__dst, &__dst[v4], (v5 - (__dst + v4)));
        --*(v3 + 36);
        return 1;
      }
    }
  }

  return result;
}

uint64_t vector_Clear(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 24) && *(result + 36))
    {
      v2 = 0;
      do
      {
        (*(v1 + 24))(*v1 + v2 * *(v1 + 8), *(v1 + 48));
        ++v2;
      }

      while (v2 < *(v1 + 36));
    }

    *(v1 + 36) = 0;
    return 1;
  }

  return result;
}

uint64_t vector_GetSize(uint64_t result)
{
  if (result)
  {
    return *(result + 36);
  }

  return result;
}

uint64_t vector_GetElemAt(uint64_t a1, unsigned int a2, void *a3)
{
  result = 0;
  if (a1 && a3)
  {
    if (*(a1 + 36) <= a2)
    {
      return 0;
    }

    else
    {
      *a3 = *a1 + *(a1 + 8) * a2;
      return 1;
    }
  }

  return result;
}

uint64_t vector_StackPop(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 36)) != 0)
  {
    return vector_Remove(a1, v1 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t vector_StackTop(uint64_t a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 36);
    if (v4)
    {
      *a2 = *a1 + (v4 - 1) * *(a1 + 8);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double crnc3rdprtyrnm_XmlPrologStateInit(uint64_t a1)
{
  *a1 = prolog0;
  *&result = 0x100000000;
  *(a1 + 16) = 0x100000000;
  *(a1 + 24) = 0;
  return result;
}

uint64_t prolog0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = prolog1;
  if (a2 <= 13)
  {
    switch(a2)
    {
      case 11:
        result = 55;
        break;
      case 12:
        result = 1;
        break;
      case 13:
        result = 56;
        break;
      default:
LABEL_13:
        if (a2 == 28 && !*(a1 + 20))
        {
          return 59;
        }

        goto LABEL_20;
    }

    v6 = prolog1;
  }

  else
  {
    if (a2 <= 15)
    {
      result = 0;
      if (a2 == 14)
      {
        return result;
      }

      goto LABEL_22;
    }

    if (a2 != 16)
    {
      if (a2 == 29)
      {
        result = 2;
LABEL_21:
        v6 = error;
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v8 = (*(a5 + 48))(a5, a3 + 2 * *(a5 + 128), a4, "DOCTYPE");
    v6 = doctype0;
    if (!v8)
    {
LABEL_20:
      result = 0xFFFFFFFFLL;
      goto LABEL_21;
    }

    result = 3;
  }

LABEL_22:
  *a1 = v6;
  return result;
}

void *crnc3rdprtyrnm_XmlPrologStateInitExternalEntity(void *result)
{
  *result = externalSubset0;
  result[2] = 0;
  return result;
}

void externalSubset0(_DWORD *a1, const xmlChar *a2, const xmlChar *a3, const xmlChar *a4)
{
  *a1 = externalSubset1;
  if (a2 != 12)
  {
    externalSubset1(a1, a2, a3, a4);
  }
}

uint64_t prolog1(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 <= 13)
  {
    if (a2 == 11)
    {
      return 55;
    }

    if (a2 == 13)
    {
      return 56;
    }

    goto LABEL_10;
  }

  if ((a2 - 14) < 2)
  {
    return 0;
  }

  if (a2 != 16)
  {
    if (a2 == 29)
    {
      *a1 = error;
      return 2;
    }

LABEL_10:
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_16;
  }

  if ((*(a5 + 48))(a5, a3 + 2 * *(a5 + 128), a4, "DOCTYPE"))
  {
    *a1 = doctype0;
    return 3;
  }

LABEL_16:
  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t doctype0(uint64_t a1, int a2)
{
  v2 = doctype1;
  if (a2 == 15)
  {
    return 3;
  }

  result = 4;
  if (a2 != 18 && a2 != 41)
  {
    result = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return result;
}

uint64_t doctype1(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = internalSubset;
  if (a2 > 17)
  {
    if (a2 == 18)
    {
      v11 = (*(a5 + 48))(a5, a3, a4, "SYSTEM");
      v6 = doctype3;
      if (v11 || (v12 = (*(a5 + 48))(a5, a3, a4, "PUBLIC"), v6 = doctype2, v12))
      {
        result = 3;
        goto LABEL_16;
      }

LABEL_15:
      result = 0xFFFFFFFFLL;
      v6 = error;
      goto LABEL_16;
    }

    if (a2 == 25)
    {
      result = 7;
      goto LABEL_16;
    }

LABEL_8:
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_15;
  }

  if (a2 == 15)
  {
    return 3;
  }

  if (a2 != 17)
  {
    goto LABEL_8;
  }

  result = 8;
  v6 = prolog2;
LABEL_16:
  *a1 = v6;
  return result;
}

void internalSubset(void *ctx, const xmlChar *name, const xmlChar *ExternalID, const xmlChar *SystemID)
{
  if (name > 14)
  {
    if (name > 25)
    {
      if (name == 26)
      {
        *ctx = doctype5;
        return;
      }

      if (name == 28)
      {
        return;
      }
    }

    else
    {
      if (name == 15)
      {
        return;
      }

      if (name == 16)
      {
        v6 = v4;
        if ((*(v4 + 48))(v4, &ExternalID[2 * *(v4 + 128)], SystemID, "ENTITY"))
        {
          *ctx = entity0;
          return;
        }

        if ((*(v6 + 48))(v6, &ExternalID[2 * *(v6 + 128)], SystemID, "ATTLIST"))
        {
          *ctx = attlist0;
          return;
        }

        if ((*(v6 + 48))(v6, &ExternalID[2 * *(v6 + 128)], SystemID, "ELEMENT"))
        {
          *ctx = element0;
          return;
        }

        if ((*(v6 + 48))(v6, &ExternalID[2 * *(v6 + 128)], SystemID, "NOTATION"))
        {
          *ctx = notation0;
          return;
        }
      }
    }

    goto LABEL_22;
  }

  if (name != -4 && name != 11 && name != 13)
  {
LABEL_22:
    *ctx = error;
  }
}

uint64_t prolog2(uint64_t a1, int a2)
{
  HIDWORD(v3) = a2 - 11;
  LODWORD(v3) = a2 - 11;
  v2 = v3 >> 1;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      return 0;
    }

    if (v2 == 9)
    {
      *a1 = error;
      return 2;
    }
  }

  else
  {
    if (!v2)
    {
      return 55;
    }

    if (v2 == 1)
    {
      return 56;
    }
  }

  if (a2 == 28 && !*(a1 + 20))
  {
    return 59;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t doctype3(uint64_t a1, int a2)
{
  v2 = doctype4;
  if (a2 == 15)
  {
    return 3;
  }

  if (a2 == 27)
  {
    result = 5;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t doctype2(uint64_t a1, int a2)
{
  v2 = doctype3;
  if (a2 == 15)
  {
    return 3;
  }

  if (a2 == 27)
  {
    result = 6;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity0(uint64_t a1, int a2)
{
  v3 = entity1;
  result = 11;
  if (a2 != 15)
  {
    if (a2 == 22)
    {
LABEL_5:
      *a1 = v3;
      return result;
    }

    if (a2 == 18)
    {
      result = 9;
      v3 = entity2;
      goto LABEL_5;
    }

    result = 0xFFFFFFFFLL;
    v3 = error;
    if (a2 != 28 || *(a1 + 20))
    {
      goto LABEL_5;
    }

    return 59;
  }

  return result;
}

uint64_t attlist0(uint64_t a1, int a2)
{
  v2 = attlist1;
  if (a2 == 15)
  {
    return 33;
  }

  result = 34;
  if (a2 != 18 && a2 != 41)
  {
    result = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return result;
}

uint64_t element0(uint64_t a1, int a2)
{
  v2 = element1;
  if (a2 == 15)
  {
    return 39;
  }

  result = 40;
  if (a2 != 18 && a2 != 41)
  {
    result = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return result;
}

uint64_t notation0(uint64_t a1, uint64_t a2)
{
  v2 = notation1;
  if (a2 == 15)
  {
    return 17;
  }

  if (a2 == 18)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return v3;
}

uint64_t doctype5(uint64_t a1, int a2)
{
  v2 = prolog2;
  if (a2 == 15)
  {
    return 3;
  }

  if (a2 == 17)
  {
    result = 8;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity1(uint64_t a1, int a2)
{
  v2 = entity7;
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 18)
  {
    result = 10;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2)
  {
    case 15:
      return 11;
    case 27:
      *a1 = declClose;
      *(a1 + 12) = 11;
      return 12;
    case 18:
      if ((*(a5 + 48))(a5, a3, a4, "SYSTEM"))
      {
        v9 = entity4;
LABEL_13:
        *a1 = v9;
        return 11;
      }

      if ((*(a5 + 48))(a5, a3, a4, "PUBLIC"))
      {
        v9 = entity3;
        goto LABEL_13;
      }

      break;
    default:
      if (a2 == 28 && !*(a1 + 20))
      {
        return 59;
      }

      break;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t entity7(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2)
  {
    case 15:
      return 11;
    case 27:
      *a1 = declClose;
      *(a1 + 12) = 11;
      return 12;
    case 18:
      if ((*(a5 + 48))(a5, a3, a4, "SYSTEM"))
      {
        v9 = entity9;
LABEL_13:
        *a1 = v9;
        return 11;
      }

      if ((*(a5 + 48))(a5, a3, a4, "PUBLIC"))
      {
        v9 = entity8;
        goto LABEL_13;
      }

      break;
    default:
      if (a2 == 28 && !*(a1 + 20))
      {
        return 59;
      }

      break;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t entity9(uint64_t a1, int a2)
{
  v2 = entity10;
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 27)
  {
    result = 13;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity8(uint64_t a1, int a2)
{
  v2 = entity9;
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 27)
  {
    result = 14;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t declClose(uint64_t a1, int a2)
{
  if (a2 == 17)
  {
    v3 = internalSubset;
    if (!*(a1 + 20))
    {
      v3 = externalSubset1;
    }

    *a1 = v3;
    return *(a1 + 12);
  }

  if (a2 == 15)
  {
    return *(a1 + 12);
  }

  if (a2 == 28 && !*(a1 + 20))
  {
    return 59;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t entity10(uint64_t a1, int a2)
{
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 17)
  {
    v2 = externalSubset1;
    if (*(a1 + 20))
    {
      v2 = internalSubset;
    }

    v3 = 15;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return v3;
}

void externalSubset1(_DWORD *a1, const xmlChar *a2, const xmlChar *a3, const xmlChar *a4)
{
  if (a2 > 25)
  {
    if (a2 != 26)
    {
      if (a2 != 34)
      {
        if (a2 == 33)
        {
          *a1 = condSect0;
          return;
        }

        goto LABEL_14;
      }

      v4 = a1[4];
      if (v4)
      {
        a1[4] = v4 - 1;
        return;
      }
    }

LABEL_12:
    *a1 = error;
    return;
  }

  if (a2 == -4)
  {
    if (!a1[4])
    {
      return;
    }

    goto LABEL_12;
  }

  if (a2 != 15)
  {
LABEL_14:
    internalSubset(a1, a2, a3, a4);
  }
}

uint64_t condSect0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 15)
  {
    return 0;
  }

  if (a2 != 18)
  {
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_10;
  }

  v9 = (*(a5 + 48))(a5, a3, a4, "INCLUDE");
  v10 = condSect1;
  if (!v9)
  {
    v11 = (*(a5 + 48))(a5, a3, a4, "IGNORE");
    v10 = condSect2;
    if (!v11)
    {
LABEL_10:
      result = 0xFFFFFFFFLL;
      v10 = error;
      goto LABEL_11;
    }
  }

  result = 0;
LABEL_11:
  *a1 = v10;
  return result;
}

uint64_t condSect1(uint64_t a1, int a2)
{
  if (a2 == 15)
  {
    return 0;
  }

  if (a2 == 25)
  {
    v2 = 0;
    *a1 = externalSubset1;
    ++*(a1 + 16);
  }

  else if (a2 != 28 || *(a1 + 20))
  {
    *a1 = error;
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 59;
  }

  return v2;
}

uint64_t condSect2(uint64_t a1, int a2)
{
  v2 = externalSubset1;
  if (a2 == 15)
  {
    return 0;
  }

  if (a2 == 25)
  {
    v3 = 58;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return v3;
}

uint64_t entity4(uint64_t a1, int a2)
{
  v2 = entity5;
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 27)
  {
    result = 13;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity3(uint64_t a1, int a2)
{
  v2 = entity4;
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 27)
  {
    result = 14;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity5(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 != 18)
  {
    if (a2 == 17)
    {
      v6 = externalSubset1;
      if (*(a1 + 20))
      {
        v6 = internalSubset;
      }

      result = 15;
      goto LABEL_14;
    }

    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_13;
  }

  v8 = (*(a5 + 48))(a5, a3, a4, "NDATA");
  v6 = entity6;
  if (!v8)
  {
LABEL_13:
    result = 0xFFFFFFFFLL;
    v6 = error;
    goto LABEL_14;
  }

  result = 11;
LABEL_14:
  *a1 = v6;
  return result;
}

uint64_t entity6(uint64_t a1, int a2)
{
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 18)
  {
    *a1 = declClose;
    *(a1 + 12) = 11;
    return 16;
  }

  else if (a2 != 28 || *(a1 + 20))
  {
    *a1 = error;
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 59;
  }
}

uint64_t attlist1(uint64_t a1, int a2)
{
  v2 = attlist2;
  if (a2 > 17)
  {
    v3 = 22;
    if (a2 == 18 || a2 == 41)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a2 == 15)
    {
      return 33;
    }

    if (a2 == 17)
    {
      v2 = externalSubset1;
      if (*(a1 + 20))
      {
        v2 = internalSubset;
      }

      v3 = 33;
      goto LABEL_12;
    }
  }

  v3 = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
LABEL_12:
    *a1 = v2;
    return v3;
  }

  return 59;
}

uint64_t attlist2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2)
  {
    case 15:
      return 33;
    case 23:
      v11 = attlist3;
LABEL_13:
      *a1 = v11;
      return 33;
    case 18:
      for (i = 0; i != 8; ++i)
      {
        if ((*(a5 + 48))(a5, a3, a4, attlist2_types[i]))
        {
          *a1 = attlist8;
          return (i + 23);
        }
      }

      if (!(*(a5 + 48))(a5, a3, a4, "NOTATION"))
      {
        break;
      }

      v11 = attlist5;
      goto LABEL_13;
  }

  if (a2 == 28 && !*(a1 + 20))
  {
    return 59;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t attlist8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = attlist1;
  if (a2 == 15)
  {
    return 33;
  }

  if (a2 == 27)
  {
    result = 37;
    goto LABEL_16;
  }

  if (a2 != 20)
  {
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_15;
  }

  v10 = (*(a5 + 48))(a5, a3 + *(a5 + 128), a4, "IMPLIED");
  v5 = attlist1;
  if (!v10)
  {
    v12 = (*(a5 + 48))(a5, a3 + *(a5 + 128), a4, "REQUIRED");
    v5 = attlist1;
    if (v12)
    {
      result = 36;
      goto LABEL_16;
    }

    v13 = (*(a5 + 48))(a5, a3 + *(a5 + 128), a4, "FIXED");
    v5 = attlist9;
    if (v13)
    {
      result = 33;
      goto LABEL_16;
    }

LABEL_15:
    result = 0xFFFFFFFFLL;
    v5 = error;
    goto LABEL_16;
  }

  result = 35;
LABEL_16:
  *a1 = v5;
  return result;
}

uint64_t attlist5(uint64_t a1, int a2)
{
  v3 = attlist6;
  result = 33;
  if (a2 != 15)
  {
    if (a2 == 23 || (result = 0xFFFFFFFFLL, v3 = error, a2 != 28) || *(a1 + 20))
    {
      *a1 = v3;
    }

    else
    {
      return 59;
    }
  }

  return result;
}

uint64_t attlist3(uint64_t a1, int a2)
{
  result = 31;
  v4 = attlist4;
  if ((a2 - 18) < 2)
  {
    goto LABEL_4;
  }

  if (a2 == 15)
  {
    return 33;
  }

  if (a2 == 41 || (result = 0xFFFFFFFFLL, v4 = error, a2 != 28) || *(a1 + 20))
  {
LABEL_4:
    *a1 = v4;
    return result;
  }

  return 59;
}

uint64_t attlist9(uint64_t a1, int a2)
{
  v2 = attlist1;
  if (a2 == 15)
  {
    return 33;
  }

  if (a2 == 27)
  {
    result = 38;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t attlist6(uint64_t a1, int a2)
{
  v2 = attlist7;
  if (a2 == 15)
  {
    return 33;
  }

  if (a2 == 18)
  {
    result = 32;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t attlist7(uint64_t a1, int a2)
{
  v3 = attlist8;
  result = 33;
  if (a2 != 15)
  {
    if (a2 == 24)
    {
LABEL_5:
      *a1 = v3;
      return result;
    }

    if (a2 == 21)
    {
      v3 = attlist6;
      goto LABEL_5;
    }

    result = 0xFFFFFFFFLL;
    v3 = error;
    if (a2 != 28 || *(a1 + 20))
    {
      goto LABEL_5;
    }

    return 59;
  }

  return result;
}

uint64_t attlist4(uint64_t a1, int a2)
{
  v3 = attlist8;
  result = 33;
  if (a2 != 15)
  {
    if (a2 == 24)
    {
LABEL_5:
      *a1 = v3;
      return result;
    }

    if (a2 == 21)
    {
      v3 = attlist3;
      goto LABEL_5;
    }

    result = 0xFFFFFFFFLL;
    v3 = error;
    if (a2 != 28 || *(a1 + 20))
    {
      goto LABEL_5;
    }

    return 59;
  }

  return result;
}

uint64_t element1(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2)
  {
    case 15:
      return 39;
    case 23:
      *a1 = element2;
      *(a1 + 8) = 1;
      return 44;
    case 18:
      if ((*(a5 + 48))(a5, a3, a4, "EMPTY"))
      {
        *a1 = declClose;
        *(a1 + 12) = 39;
        return 42;
      }

      if ((*(a5 + 48))(a5, a3, a4, "ANY"))
      {
        *a1 = declClose;
        *(a1 + 12) = 39;
        return 41;
      }

      break;
    default:
      if (a2 == 28 && !*(a1 + 20))
      {
        return 59;
      }

      break;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t element2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 51;
  v7 = element7;
  if (a2 > 29)
  {
    if (a2 > 31)
    {
      if (a2 != 32)
      {
        if (a2 == 41)
        {
          goto LABEL_24;
        }

        goto LABEL_14;
      }

      result = 54;
    }

    else if (a2 == 30)
    {
      result = 53;
    }

    else
    {
      result = 52;
    }

    v7 = element7;
    goto LABEL_24;
  }

  if (a2 > 19)
  {
    if (a2 == 20)
    {
      v8 = (*(a5 + 48))(a5, a3 + *(a5 + 128), a4, "PCDATA");
      v7 = element3;
      if (!v8)
      {
LABEL_23:
        result = 0xFFFFFFFFLL;
        v7 = error;
        goto LABEL_24;
      }

      result = 43;
      goto LABEL_24;
    }

    if (a2 == 23)
    {
      *(a1 + 8) = 2;
      result = 44;
      v7 = element6;
      goto LABEL_24;
    }

LABEL_14:
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_23;
  }

  if (a2 == 15)
  {
    return 39;
  }

  if (a2 != 18)
  {
    goto LABEL_14;
  }

LABEL_24:
  *a1 = v7;
  return result;
}

uint64_t element3(uint64_t a1, int a2)
{
  if (a2 > 23)
  {
    if (a2 == 36)
    {
      *a1 = declClose;
      *(a1 + 12) = 39;
      return 46;
    }

    if (a2 == 24)
    {
      *a1 = declClose;
      *(a1 + 12) = 39;
      return 45;
    }
  }

  else
  {
    if (a2 == 15)
    {
      return 39;
    }

    if (a2 == 21)
    {
      *a1 = element4;
      return 39;
    }
  }

  if (a2 == 28 && !*(a1 + 20))
  {
    return 59;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t element6(uint64_t a1, int a2)
{
  if (a2 <= 29)
  {
    switch(a2)
    {
      case 15:
        return 39;
      case 18:
        goto LABEL_11;
      case 23:
        ++*(a1 + 8);
        return 44;
    }
  }

  else
  {
    if (a2 <= 31)
    {
      *a1 = element7;
      if (a2 == 30)
      {
        return 53;
      }

      else
      {
        return 52;
      }
    }

    if (a2 == 32)
    {
      *a1 = element7;
      return 54;
    }

    if (a2 == 41)
    {
LABEL_11:
      *a1 = element7;
      return 51;
    }
  }

  if (a2 == 28 && !*(a1 + 20))
  {
    return 59;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t element7(uint64_t a1, int a2)
{
  if (a2 <= 34)
  {
    if (a2 == 15)
    {
      return 39;
    }

    if (a2 == 21)
    {
      *a1 = element6;
      return 49;
    }

    if (a2 != 24)
    {
      goto LABEL_17;
    }

    v4 = *(a1 + 8) - 1;
    *(a1 + 8) = v4;
    if (!v4)
    {
      *a1 = declClose;
      *(a1 + 12) = 39;
    }

    return 45;
  }

  else
  {
    if (a2 <= 36)
    {
      if (a2 == 35)
      {
        v5 = *(a1 + 8) - 1;
        *(a1 + 8) = v5;
        if (!v5)
        {
          *a1 = declClose;
          *(a1 + 12) = 39;
        }

        return 47;
      }

      else
      {
        v2 = *(a1 + 8) - 1;
        *(a1 + 8) = v2;
        if (!v2)
        {
          *a1 = declClose;
          *(a1 + 12) = 39;
        }

        return 46;
      }
    }

    if (a2 != 37)
    {
      if (a2 == 38)
      {
        *a1 = element6;
        return 50;
      }

LABEL_17:
      if (a2 == 28 && !*(a1 + 20))
      {
        return 59;
      }

      *a1 = error;
      return 0xFFFFFFFFLL;
    }

    v6 = *(a1 + 8) - 1;
    *(a1 + 8) = v6;
    if (!v6)
    {
      *a1 = declClose;
      *(a1 + 12) = 39;
    }

    return 48;
  }
}

uint64_t element4(uint64_t a1, int a2)
{
  v2 = element5;
  if (a2 == 15)
  {
    return 39;
  }

  result = 51;
  if (a2 != 18 && a2 != 41)
  {
    result = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return result;
}

uint64_t element5(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 15:
      return 39;
    case 21:
      *a1 = element4;
      return 39;
    case 36:
      *a1 = declClose;
      *(a1 + 12) = 39;
      return 46;
    default:
      if (a2 != 28 || *(a1 + 20))
      {
        *a1 = error;
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 59;
      }
  }
}

uint64_t notation1(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 15)
  {
    return 17;
  }

  if (a2 != 18)
  {
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_10;
  }

  v9 = (*(a5 + 48))(a5, a3, a4, "SYSTEM");
  v10 = notation3;
  if (!v9)
  {
    v11 = (*(a5 + 48))(a5, a3, a4, "PUBLIC");
    v10 = notation2;
    if (!v11)
    {
LABEL_10:
      result = 0xFFFFFFFFLL;
      v10 = error;
      goto LABEL_11;
    }
  }

  result = 17;
LABEL_11:
  *a1 = v10;
  return result;
}

uint64_t notation3(uint64_t a1, int a2)
{
  if (a2 == 15)
  {
    return 17;
  }

  if (a2 == 27)
  {
    *a1 = declClose;
    *(a1 + 12) = 17;
    return 19;
  }

  else if (a2 != 28 || *(a1 + 20))
  {
    *a1 = error;
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 59;
  }
}

uint64_t notation2(uint64_t a1, int a2)
{
  v2 = notation4;
  if (a2 == 15)
  {
    return 17;
  }

  if (a2 == 27)
  {
    result = 21;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t notation4(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 15:
      return 17;
    case 17:
      v3 = internalSubset;
      if (!*(a1 + 20))
      {
        v3 = externalSubset1;
      }

      *a1 = v3;
      return 20;
    case 27:
      *a1 = declClose;
      *(a1 + 12) = 17;
      return 19;
    default:
      if (a2 != 28 || *(a1 + 20))
      {
        *a1 = error;
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 59;
      }
  }
}

uint64_t doctype4(uint64_t a1, int a2)
{
  v2 = internalSubset;
  switch(a2)
  {
    case 15:
      return 3;
    case 25:
      v3 = 7;
      break;
    case 17:
      v3 = 8;
      v2 = prolog2;
      break;
    default:
      v3 = 0xFFFFFFFFLL;
      v2 = error;
      if (a2 == 28 && !*(a1 + 20))
      {
        return 59;
      }

      break;
  }

  *a1 = v2;
  return v3;
}

uint64_t parserCreate(unsigned __int8 *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = (*(a2 + 8))(*a2, 1016);
  if (!v8)
  {
    return v8;
  }

  *(v8 + 24) = *a2;
  v9 = v8 + 24;
  v10 = *(a2 + 8);
  *(v8 + 32) = v10;
  *(v8 + 48) = *(a2 + 24);
  *(v8 + 16) = 0;
  *(v8 + 72) = 0;
  *(v8 + 744) = 16;
  v11 = (v10)();
  *(v8 + 760) = v11;
  v12 = *(v8 + 24);
  if (!v11)
  {
    (*(v8 + 48))(v12, v8);
    return 0;
  }

  v13 = (*(v8 + 32))(v12, 1024);
  *(v8 + 112) = v13;
  if (!v13)
  {
LABEL_18:
    (*(v8 + 48))(*(v8 + 24), *(v8 + 760));
    (*(v8 + 48))(*(v8 + 24), v8);
    return 0;
  }

  *(v8 + 120) = v13 + 1024;
  v14 = a4;
  if (!a4)
  {
    v14 = (*(v8 + 32))(*(v8 + 24), 360);
    if (v14)
    {
      *(v14 + 160) = 0u;
      *(v14 + 176) = 0u;
      *(v14 + 192) = 0;
      *(v14 + 200) = v9;
      *(v14 + 208) = 0u;
      *(v14 + 224) = 0u;
      *(v14 + 240) = 0;
      *(v14 + 248) = v9;
      *(v14 + 8) = 0;
      *v14 = 0;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 48) = 0;
      *(v14 + 32) = v9;
      *(v14 + 40) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      *(v14 + 88) = 0;
      *(v14 + 72) = v9;
      *(v14 + 80) = 0;
      *(v14 + 96) = 0;
      *(v14 + 104) = 0;
      *(v14 + 128) = 0;
      *(v14 + 112) = v9;
      *(v14 + 120) = 0;
      *(v14 + 136) = 0;
      *(v14 + 144) = 0;
      *(v14 + 152) = v9;
      *(v14 + 272) = 0;
      *(v14 + 264) = 0;
      *(v14 + 280) = 0;
      *(v14 + 288) = 0;
      *(v14 + 296) = v9;
      *(v14 + 304) = 0;
      *(v14 + 312) = 0;
      *(v14 + 320) = 0;
      *(v14 + 328) = 0u;
      *(v14 + 344) = 0u;
      *(v14 + 256) = 1;
      goto LABEL_8;
    }

    *(v8 + 696) = 0;
    (*(v8 + 48))(*(v8 + 24), *(v8 + 112));
    goto LABEL_18;
  }

LABEL_8:
  *(v8 + 696) = v14;
  *(v8 + 736) = 0;
  *(v8 + 720) = 0;
  *(v8 + 600) = 0;
  *(v8 + 912) = 0;
  *(v8 + 904) = 0;
  *(v8 + 272) = 0;
  *(v8 + 504) = 0;
  *(v8 + 916) = 33;
  *(v8 + 480) = 0;
  *(v8 + 472) = 0;
  *(v8 + 840) = 0;
  *(v8 + 808) = 0u;
  *(v8 + 824) = 0u;
  *(v8 + 768) = 0u;
  *(v8 + 784) = 0;
  *(v8 + 848) = v9;
  *(v8 + 888) = 0;
  *(v8 + 856) = 0u;
  *(v8 + 872) = 0u;
  *(v8 + 896) = v9;
  parserInit(v8, a1);
  if (a1 && !*(v8 + 472))
  {
    if (a4)
    {
      *(v8 + 696) = 0;
    }

    crnc3rdprtyrnm_XML_ParserFree(v8);
    return 0;
  }

  if (a3)
  {
    *(v8 + 480) = 1;
    *(v8 + 464) = crnc3rdprtyrnm_XmlGetUtf8InternalEncodingNS();
    *(v8 + 916) = *a3;
  }

  else
  {
    *(v8 + 464) = crnc3rdprtyrnm_XmlGetUtf8InternalEncoding();
  }

  return v8;
}

uint64_t crnc3rdprtyrnm_XML_ParserReset(uint64_t result, unsigned __int8 *a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 920))
    {
      return 0;
    }

    v4 = *(result + 712);
    if (v4)
    {
      v5 = *(result + 720);
      do
      {
        v6 = v4;
        v4 = *v4;
        *v6 = v5;
        v7 = v6[10];
        if (v7)
        {
          v8 = *(result + 736);
          do
          {
            v9 = v7;
            v7 = *(v7 + 8);
            *(v9 + 8) = v8;
            v8 = v9;
          }

          while (v7);
          *(result + 736) = v9;
        }

        v6[10] = 0;
        v5 = v6;
      }

      while (v4);
      *(result + 720) = v6;
    }

    v10 = *(result + 592);
    if (v10)
    {
      v11 = *(result + 600);
      do
      {
        v12 = v10;
        v10 = *(v10 + 16);
        *(v12 + 16) = v11;
        v11 = v12;
      }

      while (v10);
      *(result + 600) = v12;
    }

    v13 = *(result + 728);
    if (v13)
    {
      v14 = *(result + 736);
      do
      {
        v15 = v13;
        v13 = *(v13 + 8);
        *(v15 + 8) = v14;
        v14 = v15;
      }

      while (v13);
      *(result + 736) = v15;
    }

    (*(result + 48))(*(result + 24), *(result + 488));
    v16 = *(v2 + 512);
    if (v16)
    {
      v16(*(v2 + 496));
    }

    v17 = *(v2 + 816);
    v18 = *(v2 + 808);
    if (v17)
    {
      if (!v18)
      {
        goto LABEL_28;
      }

      do
      {
        v19 = v18;
        v18 = *v18;
        *v19 = v17;
        v17 = v19;
      }

      while (v18);
    }

    else
    {
      v19 = *(v2 + 808);
    }

    *(v2 + 816) = v19;
LABEL_28:
    *(v2 + 808) = 0;
    *(v2 + 824) = 0;
    *(v2 + 840) = 0;
    *(v2 + 832) = 0;
    v20 = *(v2 + 864);
    v21 = *(v2 + 856);
    if (v20)
    {
      if (!v21)
      {
        goto LABEL_34;
      }

      do
      {
        v22 = v21;
        v21 = *v21;
        *v22 = v20;
        v20 = v22;
      }

      while (v21);
    }

    else
    {
      v22 = *(v2 + 856);
    }

    *(v2 + 864) = v22;
LABEL_34:
    *(v2 + 856) = 0;
    *(v2 + 872) = 0;
    *(v2 + 888) = 0;
    *(v2 + 880) = 0;
    (*(v2 + 48))(*(v2 + 24), *(v2 + 472));
    *(v2 + 472) = 0;
    parserInit(v2, a2);
    v23 = *(v2 + 696);
    v24 = *(v23 + 40);
    if (v24)
    {
      v25 = &v24[*(v23 + 56)];
    }

    else
    {
      v25 = 0;
    }

    while (v24 != v25)
    {
      v27 = *v24++;
      v26 = v27;
      if (v27 && *(v26 + 28))
      {
        (*(v2 + 48))(*(v2 + 24), *(v26 + 32));
      }
    }

    hashTableClear(v23);
    *(v23 + 259) = 0;
    hashTableClear(v23 + 264);
    hashTableClear(v23 + 40);
    hashTableClear(v23 + 80);
    hashTableClear(v23 + 120);
    v29 = *(v23 + 160);
    v28 = *(v23 + 168);
    if (v28)
    {
      if (!v29)
      {
        goto LABEL_47;
      }

      do
      {
        v30 = v29;
        v29 = *v29;
        *v30 = v28;
        v28 = v30;
      }

      while (v29);
    }

    else
    {
      v30 = *(v23 + 160);
    }

    *(v23 + 168) = v30;
LABEL_47:
    *(v23 + 160) = 0;
    *(v23 + 184) = 0;
    *(v23 + 192) = 0;
    *(v23 + 176) = 0;
    v32 = *(v23 + 208);
    v31 = *(v23 + 216);
    if (v31)
    {
      if (!v32)
      {
LABEL_53:
        *(v23 + 208) = 0;
        *(v23 + 232) = 0;
        *(v23 + 240) = 0;
        *(v23 + 224) = 0;
        *(v23 + 304) = 0;
        *(v23 + 312) = 0;
        *(v23 + 320) = 0;
        (*(v2 + 48))(*(v2 + 24), *(v23 + 352));
        *(v23 + 352) = 0;
        (*(v2 + 48))(*(v2 + 24), *(v23 + 328));
        *(v23 + 328) = 0;
        *(v23 + 336) = 0;
        *(v23 + 344) = 0;
        result = 1;
        *(v23 + 256) = 1;
        *(v23 + 258) = 0;
        return result;
      }

      do
      {
        v33 = v32;
        v32 = *v32;
        *v33 = v31;
        v31 = v33;
      }

      while (v32);
    }

    else
    {
      v33 = *(v23 + 208);
    }

    *(v23 + 216) = v33;
    goto LABEL_53;
  }

  return result;
}

unint64_t parserInit(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 552) = prologInitProcessor;
  crnc3rdprtyrnm_XmlPrologStateInit(a1 + 520);
  if (a2)
  {
    *(a1 + 472) = copyString(a2, a1 + 24);
  }

  *(a1 + 704) = 0;
  crnc3rdprtyrnm_XmlInitEncoding(a1 + 320, (a1 + 312), 0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = a1;
  *(a1 + 264) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 108) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 674) = 0u;
  cstdlib_memset((a1 + 792), 0, 0x10uLL);
  *(a1 + 560) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 608) = 1;
  *(a1 + 612) = 0;
  *(a1 + 712) = 0;
  *(a1 + 728) = 0;
  *(a1 + 748) = 0;
  *(a1 + 512) = 0;
  *(a1 + 920) = 0;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0;
  *(a1 + 940) = 0;
  *(a1 + 944) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  cstdlib_memset((a1 + 952), 0, 0x28uLL);
  *(a1 + 968) = getDebugLevel("EXPAT_ACCOUNTING_DEBUG");
  *(a1 + 976) = 1120403456;
  *(a1 + 984) = 0x800000;
  cstdlib_memset((a1 + 992), 0, 0x18uLL);
  result = getDebugLevel("EXPAT_ENTITY_DEBUG");
  *(a1 + 1008) = result;
  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetEncoding(uint64_t result, unsigned __int8 *a2)
{
  if (result)
  {
    v2 = result;
    if ((*(result + 928) | 2) == 3)
    {
      return 0;
    }

    (*(result + 48))(*(result + 24), *(result + 472));
    if (a2)
    {
      result = copyString(a2, v2 + 24);
      *(v2 + 472) = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      *(v2 + 472) = 0;
    }

    return 1;
  }

  return result;
}

void *copyString(unsigned __int8 *a1, uint64_t a2)
{
  v3 = 0;
    ;
  }

  v5 = (*(a2 + 8))(*a2, v3);
  v6 = v5;
  if (v5)
  {
    cstdlib_memcpy(v5, a1, v3);
  }

  return v6;
}

uint64_t crnc3rdprtyrnm_XML_ExternalEntityParserCreate(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  if (!a1)
  {
    return 0;
  }

  v64 = *(a1 + 144);
  v65 = *(a1 + 128);
  v62 = *(a1 + 176);
  v63 = *(a1 + 160);
  v60 = *(a1 + 224);
  v61 = *(a1 + 208);
  v58 = *(a1 + 272);
  v59 = *(a1 + 240);
  v57 = *(a1 + 288);
  v5 = *(a1 + 304);
  v6 = *(a1 + 672);
  v7 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 256);
  v9 = *(a1 + 264);
  v69 = *(a1 + 940);
  v67 = *(a1 + 608);
  v68 = *(a1 + 544);
  v11 = *(a1 + 481);
  v12 = *(a1 + 944);
  v66 = *(a1 + 104);
  v71 = *(a1 + 696);
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a1 + 696);
  }

  if (*(a1 + 480))
  {
    v72 = *(a1 + 916);
    v14 = a1 + 24;
    v15 = &v72;
    v16 = a3;
  }

  else
  {
    v14 = a1 + 24;
    v16 = a3;
    v15 = 0;
  }

  v17 = parserCreate(v16, v14, v15, v13);
  v18 = v17;
  if (v17)
  {
    *(v17 + 128) = v65;
    *(v17 + 144) = v64;
    *(v17 + 160) = v63;
    *(v17 + 176) = v62;
    *(v17 + 208) = v61;
    *(v17 + 224) = v60;
    *(v17 + 240) = v59;
    *(v17 + 264) = v9;
    *(v17 + 272) = v58;
    *(v17 + 288) = v57;
    *(v17 + 304) = v5;
    *(v17 + 672) = v6;
    if (v7 == v8)
    {
      v19 = v7;
    }

    else
    {
      v19 = v17;
    }

    *v17 = v7;
    *(v17 + 8) = v19;
    if (v10 != a1)
    {
      *(v17 + 256) = v10;
    }

    *(v17 + 608) = v67;
    *(v17 + 481) = v11;
    *(v17 + 944) = v12;
    *(v17 + 104) = v66;
    *(v17 + 920) = a1;
    *(v17 + 940) = v69;
    *(v17 + 544) = v68;
    if (a2)
    {
      v20 = *(v17 + 696);
      v21 = *(v71 + 120);
      if (v21)
      {
        v22 = &v21[*(v71 + 136)];
      }

      else
      {
        v22 = 0;
      }

      while (v21 != v22)
      {
        v25 = *v21++;
        v24 = v25;
        if (v25)
        {
          v26 = poolCopyString((v20 + 160), *v24);
          if (!v26 || !lookup(a1, (v20 + 120), v26, 0x10uLL))
          {
            goto LABEL_24;
          }
        }
      }

      v28 = *(v71 + 80);
      if (v28)
      {
        v29 = &v28[*(v71 + 96)];
      }

      else
      {
        v29 = 0;
      }

      while (v28 != v29)
      {
        v31 = *v28++;
        v30 = v31;
        if (v31)
        {
          v32 = *(v20 + 184);
          if (v32 == *(v20 + 176))
          {
            if (!poolGrow((v20 + 160)))
            {
              goto LABEL_24;
            }

            v32 = *(v20 + 184);
          }

          *(v20 + 184) = v32 + 1;
          *v32 = 0;
          v33 = poolCopyString((v20 + 160), *v30);
          if (!v33)
          {
            goto LABEL_24;
          }

          v34 = lookup(a1, (v20 + 80), (v33 + 1), 0x18uLL);
          if (!v34)
          {
            goto LABEL_24;
          }

          v35 = v34;
          *(v34 + 16) = *(v30 + 16);
          v36 = *(v30 + 8);
          if (v36)
          {
            *(v34 + 17) = *(v30 + 17);
            v37 = (v20 + 304);
            if (v36 != (v71 + 304))
            {
              v37 = lookup(a1, (v20 + 120), *v36, 0);
            }

            v35[1] = v37;
          }
        }
      }

      v38 = *(v71 + 40);
      if (v38)
      {
        v39 = &v38[*(v71 + 56)];
      }

      else
      {
        v39 = 0;
      }

      while (v38 != v39)
      {
        v41 = *v38++;
        v40 = v41;
        if (v41)
        {
          v42 = poolCopyString((v20 + 160), *v40);
          if (!v42)
          {
            goto LABEL_24;
          }

          v43 = lookup(a1, (v20 + 40), v42, 0x28uLL);
          if (!v43)
          {
            goto LABEL_24;
          }

          v44 = v43;
          v45 = *(v40 + 24);
          if (v45)
          {
            v46 = (*(v18 + 32))(*(v18 + 24), 24 * v45);
            v44[4] = v46;
            if (!v46)
            {
              goto LABEL_24;
            }
          }

          v47 = *(v40 + 16);
          if (v47)
          {
            v44[2] = lookup(a1, (v20 + 80), *v47, 0);
          }

          v48 = *(v40 + 24);
          *(v44 + 6) = v48;
          *(v44 + 7) = v48;
          v49 = *(v40 + 8);
          if (v49)
          {
            v44[1] = lookup(a1, (v20 + 120), *v49, 0);
            v48 = *(v44 + 6);
          }

          if (v48 >= 1)
          {
            v50 = 0;
            v51 = 0;
            do
            {
              v52 = lookup(a1, (v20 + 80), **(*(v40 + 32) + v50), 0);
              v53 = v44[4] + v50;
              *v53 = v52;
              v54 = *(v40 + 32) + v50;
              *(v53 + 8) = *(v54 + 8);
              v55 = *(v54 + 16);
              if (v55)
              {
                v56 = poolCopyString((v20 + 160), v55);
                *(v44[4] + v50 + 16) = v56;
                if (!v56)
                {
                  goto LABEL_24;
                }
              }

              else
              {
                *(v53 + 16) = 0;
              }

              ++v51;
              v50 += 24;
            }

            while (v51 < *(v44 + 6));
          }
        }
      }

      if (!copyEntityTable(a1, v20, (v20 + 160), v71) || !copyEntityTable(a1, (v20 + 264), (v20 + 160), v71 + 264) || (*(v20 + 256) = *(v71 + 256), *(v20 + 320) = *(v71 + 320), *(v20 + 328) = *(v71 + 328), *(v20 + 336) = *(v71 + 336), *(v20 + 348) = *(v71 + 348), *(v20 + 352) = *(v71 + 352), !setContext(v18, a2)))
      {
LABEL_24:
        crnc3rdprtyrnm_XML_ParserFree(v18);
        return 0;
      }

      v23 = externalEntityInitProcessor;
    }

    else
    {
      *(v17 + 936) = 1;
      crnc3rdprtyrnm_XmlPrologStateInitExternalEntity((v17 + 520));
      v23 = externalParEntInitProcessor;
    }

    *(v18 + 552) = v23;
  }

  return v18;
}

uint64_t setContext(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = 1;
  if (*a2)
  {
    v5 = *(a1 + 696);
    v6 = a2;
    while (1)
    {
      v7 = *v2;
      if (*v2)
      {
        if (v7 == 61)
        {
          v10 = *(a1 + 832);
          v11 = v5 + 38;
          if (v10 == *(a1 + 840))
          {
            goto LABEL_29;
          }

          if (v10 == *(a1 + 824))
          {
            if (!poolGrow((a1 + 808)))
            {
              return 0;
            }

            v10 = *(a1 + 832);
          }

          *(a1 + 832) = v10 + 1;
          *v10 = 0;
          v12 = lookup(a1, v5 + 15, *(a1 + 840), 0x10uLL);
          if (!v12)
          {
            return 0;
          }

          v11 = v12;
          v13 = *(a1 + 840);
          if (*v12 == v13)
          {
            v14 = poolCopyString(v5 + 20, *v12);
            *v11 = v14;
            if (!v14)
            {
              return 0;
            }

            v13 = *(a1 + 840);
          }

          *(a1 + 832) = v13;
LABEL_29:
          while (1)
          {
            v17 = *++v2;
            v16 = v17;
            if (!v17 || v16 == 12)
            {
              break;
            }

            v15 = *(a1 + 832);
            if (v15 == *(a1 + 824))
            {
              if (!poolGrow((a1 + 808)))
              {
                return 0;
              }

              LOBYTE(v16) = *v2;
              v15 = *(a1 + 832);
            }

            *(a1 + 832) = v15 + 1;
            *v15 = v16;
          }

          v19 = *(a1 + 832);
          if (v19 == *(a1 + 824))
          {
            if (!poolGrow((a1 + 808)))
            {
              return 0;
            }

            v19 = *(a1 + 832);
          }

          *(a1 + 832) = v19 + 1;
          *v19 = 0;
          if (addBinding(a1, v11, 0, *(a1 + 840), (a1 + 728)))
          {
            return 0;
          }

          *(a1 + 832) = *(a1 + 840);
          if (*v2)
          {
            v6 = v2 + 1;
          }

          else
          {
            v6 = v2;
          }

          goto LABEL_41;
        }

        if (v7 != 12)
        {
          v20 = *(a1 + 832);
          if (v20 == *(a1 + 824))
          {
            if (!poolGrow((a1 + 808)))
            {
              return 0;
            }

            LOBYTE(v7) = *v2;
            v20 = *(a1 + 832);
          }

          *(a1 + 832) = v20 + 1;
          *v20 = v7;
          ++v2;
          goto LABEL_46;
        }
      }

      v8 = *(a1 + 832);
      if (v8 == *(a1 + 824))
      {
        if (!poolGrow((a1 + 808)))
        {
          return 0;
        }

        v8 = *(a1 + 832);
      }

      *(a1 + 832) = v8 + 1;
      *v8 = 0;
      v9 = lookup(a1, v5, *(a1 + 840), 0);
      if (v9)
      {
        *(v9 + 56) = 1;
      }

      if (*v2)
      {
        v6 = v2 + 1;
      }

      else
      {
        v6 = v2;
      }

      *(a1 + 832) = *(a1 + 840);
LABEL_41:
      v2 = v6;
LABEL_46:
      if (!*v6)
      {
        return 1;
      }
    }
  }

  return v3;
}

uint64_t crnc3rdprtyrnm_XML_ParserFree(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 712);
    if (v2)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v2 = *(v1 + 720);
      if (!v2)
      {
        break;
      }

      *(v1 + 720) = 0;
      do
      {
LABEL_5:
        v3 = *v2;
        (*(v1 + 48))(*(v1 + 24), v2[8]);
        v4 = v2[10];
        if (v4)
        {
          do
          {
            v5 = *(v4 + 8);
            (*(v1 + 48))(*(v1 + 24), *(v4 + 32));
            (*(v1 + 48))(*(v1 + 24), v4);
            v4 = v5;
          }

          while (v5);
        }

        (*(v1 + 48))(*(v1 + 24), v2);
        v2 = v3;
      }

      while (v3);
    }

    v6 = *(v1 + 592);
    if (v6)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v6 = *(v1 + 600);
      if (!v6)
      {
        break;
      }

      *(v1 + 600) = 0;
      do
      {
LABEL_12:
        v7 = *(v6 + 16);
        (*(v1 + 48))(*(v1 + 24));
        v6 = v7;
      }

      while (v7);
    }

    v8 = *(v1 + 736);
    if (v8)
    {
      do
      {
        v9 = *(v8 + 8);
        (*(v1 + 48))(*(v1 + 24), *(v8 + 32));
        (*(v1 + 48))(*(v1 + 24), v8);
        v8 = v9;
      }

      while (v9);
    }

    v10 = *(v1 + 728);
    if (v10)
    {
      do
      {
        v11 = *(v10 + 8);
        (*(v1 + 48))(*(v1 + 24), *(v10 + 32));
        (*(v1 + 48))(*(v1 + 24), v10);
        v10 = v11;
      }

      while (v11);
    }

    poolDestroy((v1 + 808));
    poolDestroy((v1 + 856));
    (*(v1 + 48))(*(v1 + 24), *(v1 + 472));
    if (!*(v1 + 936))
    {
      v12 = *(v1 + 696);
      if (v12)
      {
        v13 = *(v12 + 40);
        if (v13)
        {
          v14 = &v13[*(v12 + 56)];
        }

        else
        {
          v14 = 0;
        }

        v15 = *(v1 + 920);
        while (v13 != v14)
        {
          v17 = *v13++;
          v16 = v17;
          if (v17 && *(v16 + 28))
          {
            (*(v1 + 48))(*(v1 + 24), *(v16 + 32));
          }
        }

        hashTableDestroy(v12);
        hashTableDestroy((v12 + 264));
        hashTableDestroy((v12 + 40));
        hashTableDestroy((v12 + 80));
        hashTableDestroy((v12 + 120));
        poolDestroy((v12 + 160));
        poolDestroy((v12 + 208));
        if (!v15)
        {
          (*(v1 + 48))(*(v1 + 24), *(v12 + 352));
          (*(v1 + 48))(*(v1 + 24), *(v12 + 328));
        }

        (*(v1 + 48))(*(v1 + 24), v12);
      }
    }

    (*(v1 + 48))(*(v1 + 24), *(v1 + 760));
    (*(v1 + 48))(*(v1 + 24), *(v1 + 904));
    (*(v1 + 48))(*(v1 + 24), *(v1 + 16));
    (*(v1 + 48))(*(v1 + 24), *(v1 + 112));
    (*(v1 + 48))(*(v1 + 24), *(v1 + 768));
    (*(v1 + 48))(*(v1 + 24), *(v1 + 488));
    v18 = *(v1 + 512);
    if (v18)
    {
      v18(*(v1 + 496));
    }

    v19 = *(v1 + 48);
    v20 = *(v1 + 24);

    return v19(v20, v1);
  }

  return result;
}

uint64_t externalEntityInitProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = initializeEncoding(a1);
  if (!result)
  {
    *(a1 + 552) = externalEntityInitProcessor2;

    return externalEntityInitProcessor2(a1, a2, a3, a4);
  }

  return result;
}

uint64_t externalParEntInitProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = initializeEncoding(a1);
  if (!result)
  {
    *(*(a1 + 696) + 259) = 1;
    if (*(a1 + 544))
    {
      *(a1 + 552) = entityValueInitProcessor;

      return entityValueInitProcessor(a1, a2, a3, a4);
    }

    else
    {
      *(a1 + 552) = externalParEntProcessor;

      return externalParEntProcessor(a1, a2, a3, a4);
    }
  }

  return result;
}

void **poolDestroy(void **result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    do
    {
      v3 = *v2;
      result = (v1[5][3])(*v1[5]);
      v2 = v3;
    }

    while (v3);
  }

  v4 = v1[1];
  if (v4)
  {
    do
    {
      v5 = *v4;
      result = (v1[5][3])(*v1[5]);
      v4 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_UseParserAsHandlerArg(uint64_t result)
{
  if (result)
  {
    *(result + 8) = result;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_UseForeignDTD(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 41;
  }

  if ((*(a1 + 928) | 2) == 3)
  {
    return 26;
  }

  result = 0;
  *(a1 + 937) = a2;
  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetReturnNSTriplet(uint64_t result, int a2)
{
  if (result)
  {
    if ((*(result + 928) | 2) != 3)
    {
      *(result + 481) = a2 != 0;
    }
  }

  return result;
}

uint64_t *crnc3rdprtyrnm_XML_SetUserData(uint64_t *result, uint64_t a2)
{
  if (result)
  {
    v3 = *result;
    v2 = result[1];
    *result = a2;
    if (v2 == v3)
    {
      result[1] = a2;
    }
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetBase(uint64_t result, char *a2)
{
  if (result)
  {
    v2 = result;
    if (a2)
    {
      result = poolCopyString((*(result + 696) + 160), a2);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = 0;
    }

    *(v2 + 704) = result;
    return 1;
  }

  return result;
}

uint64_t poolCopyString(uint64_t *a1, char *a2)
{
  while (1)
  {
    v4 = a1[3];
    if (v4 == a1[2])
    {
      break;
    }

LABEL_4:
    v5 = *a2;
    a1[3] = (v4 + 1);
    *v4 = v5;
    if (!*a2++)
    {
      result = a1[4];
      a1[4] = a1[3];
      return result;
    }
  }

  if (poolGrow(a1))
  {
    v4 = a1[3];
    goto LABEL_4;
  }

  return 0;
}

uint64_t crnc3rdprtyrnm_XML_GetBase(uint64_t result)
{
  if (result)
  {
    return *(result + 704);
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_GetSpecifiedAttributeCount(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 748);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t crnc3rdprtyrnm_XML_GetIdAttributeIndex(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 752);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t crnc3rdprtyrnm_XML_SetElementHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 128) = a2;
    *(result + 136) = a3;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetStartElementHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 128) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetEndElementHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 136) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetCharacterDataHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetProcessingInstructionHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 152) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetCommentHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 160) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetCdataSectionHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 168) = a2;
    *(result + 176) = a3;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetStartCdataSectionHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 168) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetEndCdataSectionHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 176) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetDefaultHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 184) = a2;
    *(result + 608) = 0;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetDefaultHandlerExpand(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 184) = a2;
    *(result + 608) = 1;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetDoctypeDeclHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 192) = a2;
    *(result + 200) = a3;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetStartDoctypeDeclHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 192) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetEndDoctypeDeclHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 200) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetUnparsedEntityDeclHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 208) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetNotationDeclHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 216) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetNamespaceDeclHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 224) = a2;
    *(result + 232) = a3;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetStartNamespaceDeclHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 224) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetEndNamespaceDeclHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 232) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetNotStandaloneHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 240) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetExternalEntityRefHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 248) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetExternalEntityRefHandlerArg(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = result;
    }

    *(result + 256) = v2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetSkippedEntityHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 264) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetUnknownEncodingHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 272) = a2;
    *(result + 504) = a3;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetElementDeclHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 280) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetAttlistDeclHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 288) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetEntityDeclHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 296) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetXmlDeclHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 304) = a2;
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetParamEntityParsing(uint64_t result, int a2)
{
  if (result)
  {
    if ((*(result + 928) | 2) == 3)
    {
      return 0;
    }

    else
    {
      *(result + 940) = a2;
      return 1;
    }
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetHashSalt(uint64_t result, uint64_t a2)
{
  while (result)
  {
    v2 = result;
    result = *(result + 920);
    if (!result)
    {
      if ((*(v2 + 928) | 2) == 3)
      {
        return 0;
      }

      *(v2 + 944) = a2;
      return 1;
    }
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_Parse(uint64_t a1, const void *a2, unsigned int a3, int a4)
{
  if (!a1 || (a3 & 0x80000000) != 0)
  {
    if (!a1)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (!a2 && a3)
  {
LABEL_10:
    v9 = 41;
    goto LABEL_11;
  }

  v8 = *(a1 + 928);
  if (v8)
  {
    if (v8 == 2)
    {
      v9 = 36;
      goto LABEL_11;
    }

    if (v8 == 3)
    {
      v9 = 33;
LABEL_11:
      *(a1 + 560) = v9;
      return 0;
    }
  }

  else if (!*(a1 + 920) && !startParsing(a1))
  {
    v9 = 1;
    goto LABEL_11;
  }

  *(a1 + 928) = 1;
  crnc3rdprtyrnm_XML_GetBuffer(a1, a3);
  if (!v11)
  {
    return 0;
  }

  if (a3)
  {
    cstdlib_memcpy(v11, a2, a3);
  }

  return crnc3rdprtyrnm_XML_ParseBuffer(a1, a3, a4);
}

uint64_t startParsing(uint64_t a1)
{
  if (!*(a1 + 944))
  {
    __buf = 0;
    arc4random_buf(&__buf, 8uLL);
    *(a1 + 944) = __buf;
  }

  if (*(a1 + 480))
  {
    return setContext(a1, "xml=http://www.w3.org/XML/1998/namespace");
  }

  else
  {
    return 1;
  }
}

double crnc3rdprtyrnm_XML_GetBuffer(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v3 = *(a1 + 928);
    if (v3 == 2)
    {
      v4 = 36;
      goto LABEL_56;
    }

    if (v3 == 3)
    {
      v4 = 33;
LABEL_56:
      *(a1 + 560) = v4;
      return result;
    }

    *(a1 + 108) = a2;
    v5 = *(a1 + 72);
    if (v5)
    {
      v6 = *(a1 + 64);
      if (v6)
      {
        v7 = v5 - v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    if (v7 < a2 || !*(a1 + 16))
    {
      v8 = *(a1 + 64);
      if (v8)
      {
        v9 = *(a1 + 56);
        if (v9)
        {
          v10 = v8 - v9;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = v10 + a2;
      if (v11 >= 0)
      {
        v12 = *(a1 + 56);
        if (v12)
        {
          v13 = *(a1 + 16);
          v14 = v13 ? v12 - v13 : 0;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14 >= 1024 ? 1024 : v14;
        if (v15 <= (v11 ^ 0x7FFFFFFF))
        {
          v16 = v15 + v11;
          v17 = *(a1 + 16);
          if (!v17)
          {
            goto LABEL_40;
          }

          if (v12)
          {
            LODWORD(v18) = v5 - v17;
            if (v5)
            {
              v19 = v5 - v17;
            }

            else
            {
              v19 = 0;
            }

            if (v19 >= v16)
            {
              if (v12 - v17 <= v15)
              {
LABEL_60:
                *(a1 + 584) = 0;
                result = 0.0;
                *(a1 + 568) = 0u;
                return result;
              }

              v20 = v12 - v17 - v15;
              cstdlib_memmove(*(a1 + 16), (v17 + v20), v8 - v12 + v15);
              v21 = *(a1 + 56);
              *(a1 + 64) -= v20;
              v22 = (v21 - v20);
LABEL_59:
              *(a1 + 56) = v22;
              goto LABEL_60;
            }
          }

          else
          {
            LODWORD(v18) = v5 - v17;
          }

          if (!v5 || !v18)
          {
LABEL_40:
            LODWORD(v18) = 1024;
          }

          do
          {
            v18 = (2 * v18);
          }

          while (v18 < v16 && v18 > 0);
          if (v18 > 0)
          {
            v24 = (*(a1 + 32))(*(a1 + 24), v18);
            if (v24)
            {
              v22 = v24;
              *(a1 + 72) = &v24[v18];
              v26 = *(a1 + 56);
              if (v26)
              {
                v27 = (v26 - v15);
                v28 = *(a1 + 64);
                v29 = v28 - v26;
                if (!v28)
                {
                  v29 = 0;
                }

                cstdlib_memcpy(v24, v27, v29 + v15);
                (*(a1 + 48))(*(a1 + 24), *(a1 + 16));
                *(a1 + 16) = v22;
                v30 = *(a1 + 64);
                if (v30)
                {
                  v31 = *(a1 + 56);
                  v30 -= v31;
                  if (!v31)
                  {
                    v30 = 0;
                  }
                }

                v22 += v15;
                *(a1 + 64) = &v22[v30];
              }

              else
              {
                *(a1 + 64) = v24;
                *(a1 + 16) = v24;
              }

              goto LABEL_59;
            }
          }
        }
      }

LABEL_55:
      v4 = 1;
      goto LABEL_56;
    }
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_ParseBuffer(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = *(a1 + 928);
  if (v6)
  {
    if (v6 == 2)
    {
      v7 = 0;
      v8 = 36;
      goto LABEL_17;
    }

    if (v6 == 3)
    {
      v7 = 0;
      v8 = 33;
LABEL_17:
      *(a1 + 560) = v8;
      return v7;
    }
  }

  else
  {
    if (!*(a1 + 56))
    {
      v7 = 0;
      v8 = 42;
      goto LABEL_17;
    }

    if (!*(a1 + 920) && !startParsing(a1))
    {
      v7 = 0;
      v8 = 1;
      goto LABEL_17;
    }
  }

  *(a1 + 928) = 1;
  v9 = *(a1 + 56);
  *(a1 + 584) = v9;
  v10 = *(a1 + 64) + a2;
  *(a1 + 64) = v10;
  *(a1 + 80) += a2;
  *(a1 + 88) = v10;
  *(a1 + 932) = a3;
  v11 = callProcessor(a1, v9, v10, (a1 + 56));
  *(a1 + 560) = v11;
  if (!v11)
  {
    v12 = *(a1 + 928);
    if (v12 >= 2)
    {
      if (v12 == 3)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      if (a3)
      {
        *(a1 + 928) = 2;
        return 1;
      }

      v7 = 1;
    }

    (*(*(a1 + 312) + 96))();
    *(a1 + 584) = *(a1 + 56);
    return v7;
  }

  v7 = 0;
  *(a1 + 576) = *(a1 + 568);
  *(a1 + 552) = errorProcessor;
  return v7;
}

uint64_t callProcessor(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = a2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3 - a2;
  }

  if (!*(a1 + 104) || *(a1 + 932))
  {
    goto LABEL_19;
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 16);
    v9 -= v10;
    if (!v10)
    {
      v9 = 0;
    }
  }

  v11 = v9 >= 0x400;
  v12 = v9 - 1024;
  if (!v11)
  {
    v12 = 0;
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    v14 = *(a1 + 64);
    v13 -= v14;
    if (!v14)
    {
      v13 = 0;
    }
  }

  if (v8 < 2 * *(a1 + 96) && v13 + v12 >= *(a1 + 108))
  {
    result = 0;
    *a4 = a2;
  }

  else
  {
LABEL_19:
    result = (*(a1 + 552))(a1, a2);
    if (!result)
    {
      result = 0;
      if (*a4 == a2)
      {
        *(a1 + 96) = v8;
      }

      else
      {
        *(a1 + 96) = 0;
      }
    }
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_StopParser(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = *(a1 + 928);
    if (v2 == 2)
    {
      v3 = 0;
      v4 = 36;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      if (a2)
      {
        v3 = 0;
        v4 = 33;
LABEL_11:
        *(a1 + 560) = v4;
        return v3;
      }
    }

    else if (a2)
    {
      if (*(a1 + 936))
      {
        v3 = 0;
        v4 = 37;
        goto LABEL_11;
      }

      v5 = 3;
LABEL_14:
      *(a1 + 928) = v5;
      return 1;
    }

    v5 = 2;
    goto LABEL_14;
  }

  return 0;
}

uint64_t crnc3rdprtyrnm_XML_ResumeParser(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 928) == 3)
  {
    *(a1 + 928) = 1;
    v2 = callProcessor(a1, *(a1 + 56), *(a1 + 88), (a1 + 56));
    *(a1 + 560) = v2;
    if (!v2)
    {
      v4 = *(a1 + 928);
      if (v4 >= 2)
      {
        if (v4 == 3)
        {
          v3 = 2;
        }

        else
        {
          v3 = 1;
        }
      }

      else
      {
        if (*(a1 + 932))
        {
          *(a1 + 928) = 2;
          return 1;
        }

        v3 = 1;
      }

      (*(*(a1 + 312) + 96))();
      *(a1 + 584) = *(a1 + 56);
      return v3;
    }

    v3 = 0;
    *(a1 + 576) = *(a1 + 568);
    *(a1 + 552) = errorProcessor;
  }

  else
  {
    v3 = 0;
    *(a1 + 560) = 34;
  }

  return v3;
}

uint64_t crnc3rdprtyrnm_XML_GetParsingStatus(uint64_t result, void *a2)
{
  if (result)
  {
    *a2 = *(result + 928);
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_GetErrorCode(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 560);
  }

  else
  {
    return 41;
  }
}

uint64_t crnc3rdprtyrnm_XML_GetCurrentByteIndex(void *a1)
{
  if (a1 && (v1 = a1[71]) != 0)
  {
    return a1[10] + v1 - a1[11];
  }

  else
  {
    return -1;
  }
}

uint64_t crnc3rdprtyrnm_XML_GetCurrentByteCount(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 576);
    if (v1)
    {
      v2 = *(result + 568);
      v3 = v1 - v2;
      if (v2)
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_GetInputContext(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 568);
    if (v4)
    {
      result = *(result + 16);
      if (result)
      {
        if (a2)
        {
          *a2 = v4 - result;
        }

        if (a3)
        {
          *a3 = *(v3 + 64) - result;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}