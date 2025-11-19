uint64_t Core_Get_ExtA_AT_Vel(int a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 343) != 1)
  {
    goto LABEL_7;
  }

  v5 = *(p_NA + 20184);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 120001)
    {
      goto LABEL_5;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 20200);
      *a2 = *(p_NA + 20184);
      *(a2 + 16) = v10;
      result = 1;
      goto LABEL_8;
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_AT_Vel", v6 - v5, v6, v5);
LABEL_5:
  result = 0;
  *(v2 + 347) = 0;
  *(v2 + 343) = 0;
LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_V_Vel(int a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 349) != 1)
  {
    goto LABEL_7;
  }

  v5 = *(p_NA + 20328);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 120001)
    {
      goto LABEL_5;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 20344);
      *a2 = *(p_NA + 20328);
      *(a2 + 16) = v10;
      result = 1;
      goto LABEL_8;
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_V_Vel", v6 - v5, v6, v5);
LABEL_5:
  result = 0;
  *(v2 + 353) = 0;
  *(v2 + 349) = 0;
LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_Heading(int a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 355) != 1)
  {
    goto LABEL_7;
  }

  v5 = *(p_NA + 20472);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 120001)
    {
      goto LABEL_5;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 20488);
      *a2 = *(p_NA + 20472);
      *(a2 + 16) = v10;
      result = 1;
      goto LABEL_8;
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_Heading", v6 - v5, v6, v5);
LABEL_5:
  result = 0;
  *(v2 + 359) = 0;
  *(v2 + 355) = 0;
LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_TunnelEP(int a1, _OWORD *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 361) != 1)
  {
    goto LABEL_7;
  }

  v5 = *(p_NA + 20616);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 30001)
    {
      goto LABEL_5;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 20664);
      v12 = *(p_NA + 20616);
      v11 = *(p_NA + 20632);
      a2[2] = *(p_NA + 20648);
      a2[3] = v10;
      *a2 = v12;
      a2[1] = v11;
      result = 1;
      goto LABEL_8;
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_TunnelEP", v6 - v5, v6, v5);
LABEL_5:
  result = 0;
  *(v2 + 365) = 0;
  *(v2 + 361) = 0;
LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_Speed(int a1, unsigned int *a2, double *a3, double *a4, double *a5)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = p_NA;
  if (*(p_NA + 373) == 1)
  {
    v6 = *(p_api + 8);
    if (*v6)
    {
      v7 = *(p_NA + 21480) + *v6 - v6[4];
    }

    else
    {
      v7 = 0;
    }

    if (a1 - v7 <= -3001)
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Speed", a1 - v7, a1, v7);
      v5 = p_NA;
LABEL_10:
      result = 0;
      *(v5 + 373) = 0;
      goto LABEL_11;
    }

    if (a1 - v7 >= 3001)
    {
      goto LABEL_10;
    }

    *a2 = v7;
    *a3 = *(v5 + 21488);
    *a4 = *(v5 + 21496);
    *a5 = 0.0;
    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GSpeed(int a1, unsigned int *a2, double *a3, double *a4, double *a5)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = p_NA;
  if (*(p_NA + 374) == 1)
  {
    v6 = *(p_api + 8);
    if (*v6)
    {
      v7 = *(p_NA + 21504) + *v6 - v6[4];
    }

    else
    {
      v7 = 0;
    }

    if (a1 - v7 <= -3001)
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "GSpeed", a1 - v7, a1, v7);
      v5 = p_NA;
LABEL_10:
      result = 0;
      *(v5 + 374) = 0;
      goto LABEL_11;
    }

    if (a1 - v7 >= 3001)
    {
      goto LABEL_10;
    }

    *a2 = v7;
    *a3 = *(v5 + 21512);
    *a4 = *(v5 + 21520);
    *a5 = 0.0;
    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_Track(int a1, unsigned int *a2, double *a3, double *a4, double *a5, double *a6)
{
  v11 = *MEMORY[0x29EDCA608];
  v6 = p_NA;
  if (*(p_NA + 375) == 1)
  {
    v7 = *(p_api + 8);
    if (*v7)
    {
      v8 = *(p_NA + 21528) + *v7 - v7[4];
    }

    else
    {
      v8 = 0;
    }

    if (a1 - v8 <= -3001)
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Track", a1 - v8, a1, v8);
      v6 = p_NA;
LABEL_10:
      result = 0;
      *(v6 + 375) = 0;
      goto LABEL_11;
    }

    if (a1 - v8 >= 3001)
    {
      goto LABEL_10;
    }

    *a2 = v8;
    *a3 = *(v6 + 21544);
    *a4 = *(v6 + 21536);
    *a5 = *(v6 + 21552);
    *a6 = 0.0;
    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_11:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GPS_Alm(int a1, int a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if ((a1 - 33) < 0xFFFFFFE0)
  {
    goto LABEL_2;
  }

  v4 = (a1 - 1);
  v5 = *(p_NA + 47 + v4);
  if (a2 >= 619315201 && *(p_NA + 47 + v4))
  {
    v6 = *(p_NA + 36 * v4 + 3152);
    if (a2 - v6 >= 15724801)
    {
      result = 0;
      *(p_NA + 47 + v4) = 0;
      goto LABEL_23;
    }
  }

  else
  {
    if (!*(p_NA + 47 + v4))
    {
LABEL_2:
      result = 0;
      goto LABEL_23;
    }

    v6 = *(p_NA + 36 * v4 + 3152);
  }

  v7 = p_NA + 36 * v4;
  v8 = *(v7 + 3156);
  *a3 = v6;
  *(a3 + 4) = v8;
  *(a3 + 8) = 0;
  *(a3 + 10) = *(v7 + 3160);
  v9 = (v7 + 3162);
  v10 = 9;
  v11 = 12;
  do
  {
    v12 = a3 + v11;
    *v12 = *v9;
    *(v12 + 1) = v9[1];
    *(v12 + 2) = v9[2];
    --v10;
    v11 += 4;
    v9 += 3;
  }

  while (v10 > 1);
  v13 = *a3;
  if (a2)
  {
    v14 = v13 < a2 + 50;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  if (v13)
  {
    v16 = v13 < 619315201;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    result = 0;
  }

  else
  {
    result = v15;
  }

LABEL_23:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_QZSS_Alm(int a1, int a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if ((a1 - 203) < 0xFFFFFFF6)
  {
    goto LABEL_2;
  }

  v4 = (a1 - 193);
  v5 = *(p_NA + 89 + v4);
  if (a2 >= 619315201 && *(p_NA + 89 + v4))
  {
    v6 = *(p_NA + 36 * v4 + 5024);
    if (a2 - v6 >= 15724801)
    {
      result = 0;
      *(p_NA + 89 + v4) = 0;
      goto LABEL_23;
    }
  }

  else
  {
    if (!*(p_NA + 89 + v4))
    {
LABEL_2:
      result = 0;
      goto LABEL_23;
    }

    v6 = *(p_NA + 36 * v4 + 5024);
  }

  v7 = p_NA + 36 * v4;
  v8 = *(v7 + 5028);
  *a3 = v6;
  *(a3 + 4) = v8;
  *(a3 + 8) = 0;
  *(a3 + 10) = *(v7 + 5032);
  v9 = (v7 + 5034);
  v10 = 9;
  v11 = 12;
  do
  {
    v12 = a3 + v11;
    *v12 = *v9;
    *(v12 + 1) = v9[1];
    *(v12 + 2) = v9[2];
    --v10;
    v11 += 4;
    v9 += 3;
  }

  while (v10 > 1);
  v13 = *a3;
  if (a2)
  {
    v14 = v13 < a2 + 50;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  if (v13)
  {
    v16 = v13 < 619315201;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    result = 0;
  }

  else
  {
    result = v15;
  }

LABEL_23:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GLON_Alm(int a1, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if ((a1 - 25) < 0xFFFFFFE8)
  {
    goto LABEL_2;
  }

  v5 = (a1 - 1);
  v6 = *(p_NA + 123 + v5);
  if (a2 >= 619315201 && *(p_NA + 123 + v5))
  {
    if (a2 - *(p_NA + 36 * v5 + 16748) >= 15724801)
    {
      result = 0;
      *(p_NA + 123 + v5) = 0;
      goto LABEL_3;
    }
  }

  else if (!*(p_NA + 123 + v5))
  {
LABEL_2:
    result = 0;
    goto LABEL_3;
  }

  v7 = p_NA + 36 * v5 + 16748;
  v9 = *v7;
  v8 = *(v7 + 16);
  *(a3 + 32) = *(v7 + 32);
  *a3 = v9;
  *(a3 + 16) = v8;
  v10 = *a3;
  if (*a3 && v10 < 619315201)
  {
    goto LABEL_2;
  }

  if (a2)
  {
    v11 = v10 < a2 + 50;
  }

  else
  {
    v11 = 1;
  }

  result = v11;
LABEL_3:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GAL_Alm(int a1, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if ((a1 - 37) < 0xFFFFFFDC)
  {
    goto LABEL_2;
  }

  v5 = (a1 - 1);
  v6 = *(p_NA + 186 + v5);
  if (a2 >= 619315201 && *(p_NA + 186 + v5))
  {
    if (a2 - *(p_NA + 36 * v5 + 8568) >= 15724801)
    {
      result = 0;
      *(p_NA + 186 + v5) = 0;
      goto LABEL_3;
    }
  }

  else if (!*(p_NA + 186 + v5))
  {
LABEL_2:
    result = 0;
    goto LABEL_3;
  }

  v7 = p_NA + 36 * v5;
  v9 = *(v7 + 8568);
  v8 = *(v7 + 8584);
  *(a3 + 32) = *(v7 + 8600);
  *a3 = v9;
  *(a3 + 16) = v8;
  v10 = *a3;
  if (*a3 && v10 < 619315201)
  {
    goto LABEL_2;
  }

  if (a2)
  {
    v11 = v10 < a2 + 50;
  }

  else
  {
    v11 = 1;
  }

  result = v11;
LABEL_3:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_BDS_Alm(int a1, int a2, _OWORD *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if ((a1 - 38) < 0xFFFFFFDB)
  {
    goto LABEL_2;
  }

  v5 = (a1 - 1);
  v6 = *(p_NA + 260 + v5);
  if (a2 >= 619315201 && *(p_NA + 260 + v5))
  {
    if (a2 - *(p_NA + 44 * v5 + 13584) >= 15724801)
    {
      result = 0;
      *(p_NA + 260 + v5) = 0;
      goto LABEL_3;
    }
  }

  else if (!*(p_NA + 260 + v5))
  {
LABEL_2:
    result = 0;
    goto LABEL_3;
  }

  v7 = (p_NA + 44 * v5);
  v8 = v7[850];
  v9 = v7[849];
  *(a3 + 28) = *(v7 + 13612);
  *a3 = v9;
  a3[1] = v8;
  v10 = *a3;
  if (*a3 && v10 < 619315201)
  {
    goto LABEL_2;
  }

  if (a2)
  {
    v11 = v10 < a2 + 50;
  }

  else
  {
    v11 = 1;
  }

  result = v11;
LABEL_3:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GPS_Eph(uint64_t a1, uint64_t a2, int *a3)
{
  v32 = *MEMORY[0x29EDCA608];
  if ((a1 - 33) < 0xFFFFFFE0)
  {
    goto LABEL_5;
  }

  v6 = (a1 - 1);
  v7 = p_NA + 15;
  if (!a2 && !a3)
  {
    *(v7 + v6) = 0;
    EvLog_d("Core_Get_GPS_Eph:  (a) Deleted SV", a1);
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  v10 = *(v7 + v6);
  if (a2 >= 619315201 && (v10 & 1) != 0)
  {
    v11 = *(p_NA + 72 * v6 + 848);
    if (v11 >= 619315201 && a2 - v11 > 21600)
    {
      EvLog_nd("Core_Get_GPS_Eph:  (b) Deleted SV", 3, a3, a1, a2, v11);
      result = 0;
      *(p_NA + v6 + 15) = 0;
      goto LABEL_6;
    }

    v10 = 1;
  }

  result = 0;
  if (a3 && (v10 & 1) != 0)
  {
    UnCompact_GPS_BinEph(a3, p_NA + 72 * v6 + 848);
    v14 = a3[2];
    v15 = a3[7];
    v16 = 16 * a3[7];
    v17 = a3[17];
    if ((v14 & 0xFFC000) != 0 || ((a3[9] | v17) & 3) != 0 || (a3[25] & 3) != 0)
    {
      v18 = *a3;
      if (v18 >= 1)
      {
        v19 = (v14 >> 14) & 0x3FF;
        do
        {
          v20 = v19;
          LOWORD(v19) = v19 + 1024;
        }

        while (v20 < *(*(p_api + 72) + 1026));
        v21 = 604800 * v20;
        v22 = v21 + v16 - v18;
        if (v18 >= 619315201 && v22 >= 618105601)
        {
          if (v22 >= 0x49C18B00)
          {
            v22 = 1237420800;
          }

          v22 = v22 - 1238630399 + (v16 + v21 - v18 - v22 + 619315199) % 0x24EA0000u;
        }

        if (v22 > -21601 || v16 >> 5 > 0x2A2)
        {
          v24 = v16 <= 0x8E620 || v22 <= 21600;
          LODWORD(v23) = v22 - 604800;
          if (v24)
          {
            v23 = v22;
          }

          else
          {
            v23 = v23;
          }
        }

        else
        {
          v23 = (v22 + 604800);
        }

        if (v23 >= 0)
        {
          v25 = v23;
        }

        else
        {
          v25 = -v23;
        }

        if (v25 >= 0x5461)
        {
          *(p_NA + v6 + 15) = 0;
          EvLog_nd("Core_Get_GPS_Eph:  (c) Deleted SV", 5, v13, a1, a2, v23, v16, v18);
        }
      }
    }

    if (a2 >= 1)
    {
      LODWORD(v26) = (a2 - v16) % 604800;
      if (v26 <= 302400)
      {
        v26 = v26;
      }

      else
      {
        v26 = (v26 - 604800);
      }

      v27 = v26 > 10800 && (v17 & 0x80) == 0;
      v28 = *a3;
      if (v27 || v26 >= 16201)
      {
        *(p_NA + v6 + 15) = 0;
        EvLog_nd("Core_Get_GPS_Eph:  (d) Deleted SV", 5, v13, a1, a2, v26, v16, v28);
        LODWORD(v28) = *a3;
      }

      if (!v28)
      {
        *a3 = a2;
      }
    }

    if (*(p_NA + v6 + 15) != 1)
    {
      goto LABEL_5;
    }

    v30 = *a3;
    if (*a3)
    {
      if (v30 < 619315201)
      {
        goto LABEL_5;
      }
    }

    if (a2 && v30 >= a2 + 300)
    {
      goto LABEL_5;
    }

    if (v30)
    {
      v31 = v30 <= a2 - 7200;
    }

    else
    {
      v31 = 0;
    }

    result = !v31;
  }

LABEL_6:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_QZSS_Eph(uint64_t a1, uint64_t a2, int *a3)
{
  v32 = *MEMORY[0x29EDCA608];
  if ((a1 - 203) < 0xFFFFFFF6)
  {
    goto LABEL_5;
  }

  v6 = (a1 - 193);
  v7 = p_NA + 79;
  if (!a2 && !a3)
  {
    *(v7 + v6) = 0;
    EvLog_d("Core_Get_QZSS_Eph:  (a) Deleted SV", a1);
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  v10 = *(v7 + v6);
  if (a2 >= 619315201 && (v10 & 1) != 0)
  {
    v11 = *(p_NA + 72 * v6 + 4304);
    if (v11 >= 619315201 && a2 - v11 > 21600)
    {
      EvLog_nd("Core_Get_QZSS_Eph:  (b) Deleted SV", 3, a3, a1, a2, v11);
      result = 0;
      *(p_NA + v6 + 79) = 0;
      goto LABEL_6;
    }

    v10 = 1;
  }

  result = 0;
  if (a3 && (v10 & 1) != 0)
  {
    UnCompact_GPS_BinEph(a3, p_NA + 72 * v6 + 4304);
    v14 = a3[2];
    v15 = a3[7];
    v16 = 16 * a3[7];
    v17 = a3[17];
    if ((v14 & 0xFFC000) != 0 || ((a3[9] | v17) & 3) != 0 || (a3[25] & 3) != 0)
    {
      v18 = *a3;
      if (v18 >= 1)
      {
        v19 = (v14 >> 14) & 0x3FF;
        do
        {
          v20 = v19;
          LOWORD(v19) = v19 + 1024;
        }

        while (v20 < *(*(p_api + 72) + 1026));
        v21 = 604800 * v20;
        v22 = v21 + v16 - v18;
        if (v18 >= 619315201 && v22 >= 618105601)
        {
          if (v22 >= 0x49C18B00)
          {
            v22 = 1237420800;
          }

          v22 = v22 - 1238630399 + (v16 + v21 - v18 - v22 + 619315199) % 0x24EA0000u;
        }

        if (v22 > -21601 || v16 >> 5 > 0x2A2)
        {
          v24 = v16 <= 0x8E620 || v22 <= 21600;
          LODWORD(v23) = v22 - 604800;
          if (v24)
          {
            v23 = v22;
          }

          else
          {
            v23 = v23;
          }
        }

        else
        {
          v23 = (v22 + 604800);
        }

        if (v23 >= 0)
        {
          v25 = v23;
        }

        else
        {
          v25 = -v23;
        }

        if (v25 >= 0x5461)
        {
          *(p_NA + v6 + 79) = 0;
          EvLog_nd("Core_Get_QZSS_Eph:  (c) Deleted SV", 5, v13, a1, a2, v23, v16, v18);
        }
      }
    }

    if (a2 >= 1)
    {
      LODWORD(v26) = (a2 - v16) % 604800;
      if (v26 <= 302400)
      {
        v26 = v26;
      }

      else
      {
        v26 = (v26 - 604800);
      }

      v27 = v26 > 10800 && (v17 & 0x80) == 0;
      v28 = *a3;
      if (v27 || v26 >= 16201)
      {
        *(p_NA + v6 + 79) = 0;
        EvLog_nd("Core_Get_QZSS_Eph:  (d) Deleted SV", 5, v13, a1, a2, v26, v16, v28);
        LODWORD(v28) = *a3;
      }

      if (!v28)
      {
        *a3 = a2;
      }
    }

    if (*(p_NA + v6 + 79) != 1)
    {
      goto LABEL_5;
    }

    v30 = *a3;
    if (*a3)
    {
      if (v30 < 619315201)
      {
        goto LABEL_5;
      }
    }

    if (a2 && v30 >= a2 + 300)
    {
      goto LABEL_5;
    }

    if (v30)
    {
      v31 = v30 <= a2 - 7200;
    }

    else
    {
      v31 = 0;
    }

    result = !v31;
  }

LABEL_6:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GAL_Eph(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if ((a1 - 37) < 0xFFFFFFDC)
  {
    goto LABEL_32;
  }

  v4 = a2;
  v6 = (a1 - 1);
  v7 = p_NA;
  v8 = p_NA + 150;
  if (!a2 && !a3)
  {
    *(v8 + v6) = 0;
    EvLog_d("Core_Get_GAL_Eph:  (a) Deleted SV", a1);
LABEL_32:
    result = 0;
    goto LABEL_33;
  }

  if (a2 >= 619315201 && (*(v8 + v6) & 1) != 0)
  {
    v9 = *(p_NA + 88 * v6 + 5400);
    if (v9 >= 619315201 && a2 - v9 >= 14401)
    {
      EvLog_nd("Core_Get_GAL_Eph:  (b) Deleted SV", 3, a3, a1, a2, v9);
      v7 = p_NA;
      *(p_NA + v6 + 150) = 0;
    }

    v11 = 60 * *(v7 + 88 * v6 + 5418);
    v12 = v4 % 0x93A80 - v11;
    LODWORD(v13) = v12 + 604800;
    if (v12 >= -302400)
    {
      LODWORD(v13) = v4 % 0x93A80 - v11;
    }

    if (v12 <= 302399)
    {
      v13 = v13;
    }

    else
    {
      v13 = (v12 - 604800);
    }

    if (v13 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = -v13;
    }

    if (v14 >= 0x3841)
    {
      *(v7 + v6 + 150) = 0;
      EvLog_nd("Core_Get_GAL_Eph:  (c) Deleted SV", 4, a3, a1, v13, v4 % 0x93A80, v11);
    }
  }

  if (!a3)
  {
    goto LABEL_32;
  }

  v15 = p_NA + 150;
  if (*(p_NA + 150 + v6) != 1)
  {
    goto LABEL_32;
  }

  v16 = p_NA + 88 * v6;
  v17 = *(v16 + 5416);
  *a3 = *(v16 + 5400);
  *(a3 + 16) = v17;
  v18 = *(v16 + 5432);
  v19 = *(v16 + 5448);
  v20 = *(v16 + 5464);
  *(a3 + 80) = *(v16 + 5480);
  *(a3 + 48) = v19;
  *(a3 + 64) = v20;
  *(a3 + 32) = v18;
  v21 = *a3;
  if (v4 >= 1 && !v21)
  {
    *a3 = v4;
    v21 = v4;
  }

  if (*(v15 + v6) != 1 || v21 && v21 < 619315201 || v4 && v21 >= (v4 + 300))
  {
    goto LABEL_32;
  }

  if (v21)
  {
    v24 = v21 <= (v4 - 1800);
  }

  else
  {
    v24 = 0;
  }

  result = !v24;
LABEL_33:
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_BDS_Eph(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  if ((a1 - 38) < 0xFFFFFFDB)
  {
    goto LABEL_32;
  }

  v4 = a2;
  v6 = (a1 - 1);
  v7 = p_NA;
  v8 = p_NA + 223;
  if (!a2 && !a3)
  {
    *(v8 + v6) = 0;
    EvLog_d("Core_Get_BDS_Eph:  (a) Deleted SV", a1);
LABEL_32:
    result = 0;
    goto LABEL_33;
  }

  if (a2 >= 619315201 && (*(v8 + v6) & 1) != 0)
  {
    v9 = *(p_NA + 100 * v6 + 9884);
    if (v9 >= 619315201 && a2 - v9 >= 14401)
    {
      EvLog_nd("Core_Get_BDS_Eph:  (b) Deleted SV", 3, a3, a1, a2, v9);
      v7 = p_NA;
      *(p_NA + v6 + 223) = 0;
    }

    v11 = *(v7 + 100 * v6 + 9896);
    v12 = v4 % 0x93A80 - 8 * v11;
    LODWORD(v13) = v12 + 604800;
    if (v12 >= -302400)
    {
      LODWORD(v13) = v4 % 0x93A80 - 8 * v11;
    }

    if (v12 <= 302399)
    {
      v13 = v13;
    }

    else
    {
      v13 = (v12 - 604800);
    }

    if (v13 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = -v13;
    }

    if (v14 >= 0x3841)
    {
      *(v7 + v6 + 223) = 0;
      EvLog_nd("Core_Get_BDS_Eph:  (c) Deleted SV", 4, a3, a1, v13, v4 % 0x93A80, (8 * v11));
    }
  }

  if (!a3)
  {
    goto LABEL_32;
  }

  v15 = p_NA + 223;
  if (*(p_NA + 223 + v6) != 1)
  {
    goto LABEL_32;
  }

  v16 = p_NA + 100 * v6;
  v17 = *(v16 + 9916);
  v18 = *(v16 + 9884);
  *(a3 + 16) = *(v16 + 9900);
  *(a3 + 32) = v17;
  *a3 = v18;
  v19 = *(v16 + 9932);
  v20 = *(v16 + 9948);
  v21 = *(v16 + 9964);
  *(a3 + 96) = *(v16 + 9980);
  *(a3 + 64) = v20;
  *(a3 + 80) = v21;
  *(a3 + 48) = v19;
  v22 = *a3;
  if (v4 >= 1 && !v22)
  {
    *a3 = v4;
    v22 = v4;
  }

  if (*(v15 + v6) != 1 || v22 && v22 < 619315201 || v4 && v22 >= (v4 + 300))
  {
    goto LABEL_32;
  }

  if (v22)
  {
    v25 = v22 <= (v4 - 1800);
  }

  else
  {
    v25 = 0;
  }

  result = !v25;
LABEL_33:
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GLON_Eph(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  if ((a1 - 25) < 0xFFFFFFE8)
  {
    goto LABEL_30;
  }

  v6 = (a1 - 1);
  v7 = p_NA;
  v8 = p_NA + 99;
  if (!a2 && !a3)
  {
    *(v8 + v6) = 0;
    EvLog_d("Core_Get_GLON_Eph:  (a) Deleted SV", a1);
LABEL_30:
    result = 0;
    goto LABEL_31;
  }

  if (a2 >= 619315201 && (*(v8 + v6) & 1) != 0)
  {
    v9 = *(p_NA + (v6 << 6) + 15212);
    if (v9 >= 619315201 && a2 - v9 >= 9901)
    {
      EvLog_nd("Core_Get_GLON_Eph:  (b) Deleted SV", 3, a3, a1, a2, v9);
      v7 = p_NA;
      v11 = p_NA + v6;
      *(v11 + 99) = 0;
      *(v11 + 17640) = 127;
    }

    v12 = 900 * (*(v7 + (v6 << 6) + 15238) & 0x7Fu);
    v13 = (a2 + 10800) % 0x15180u - v12;
    v14 = v13 + 86400;
    if (v13 >= -43200)
    {
      v14 = (a2 + 10800) % 0x15180u - v12;
    }

    if (v13 > 43199)
    {
      v14 = v13 - 86400;
    }

    if (v14 < 0)
    {
      v14 = -v14;
    }

    if (v14 >= 0x26AD)
    {
      *(v7 + v6 + 99) = 0;
      EvLog_nd("Core_Get_GLON_Eph:  (c) Deleted SV", 4, a3, a1, a2, (a2 + 10800) % 0x15180u, v12);
      v7 = p_NA;
      *(p_NA + v6 + 17640) = 127;
    }
  }

  if (!a3)
  {
    goto LABEL_30;
  }

  v15 = v7 + 99;
  if (*(v7 + 99 + v6) != 1)
  {
    goto LABEL_30;
  }

  v16 = (v7 + (v6 << 6) + 15212);
  v17 = v16[3];
  v19 = *v16;
  v18 = v16[1];
  a3[2] = v16[2];
  a3[3] = v17;
  *a3 = v19;
  a3[1] = v18;
  v20 = *a3;
  if (a2 >= 1 && !v20)
  {
    *a3 = a2;
    v20 = a2;
  }

  if (*(v15 + v6) != 1 || v20 && v20 < 619315201 || a2 && v20 >= a2 + 300)
  {
    goto LABEL_30;
  }

  if (v20)
  {
    v23 = v20 <= a2 - 1800;
  }

  else
  {
    v23 = 0;
  }

  result = !v23;
LABEL_31:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GLON_Clk1(int a1, _OWORD *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 147) != 1)
  {
    goto LABEL_13;
  }

  v3 = p_NA + 17612;
  v4 = *(p_NA + 17612);
  if (a1 < 619315201 || v4)
  {
    if (a1 < 619315201)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = a1 - 900;
    *v3 = a1 - 900;
  }

  if (a1 - v4 < 1209601)
  {
LABEL_8:
    if (v4)
    {
      v6 = v4 < 619315201;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      v7 = *v3;
      *(a2 + 12) = *(v3 + 12);
      *a2 = v7;
      result = 1;
      goto LABEL_14;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  result = 0;
  *(v2 + 147) = 0;
LABEL_14:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GPS_Klob(int a1, _OWORD *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 13) != 1)
  {
    goto LABEL_13;
  }

  v3 = (p_NA + 808);
  v4 = *(p_NA + 808);
  if (a1 < 619315201 || v4)
  {
    if (a1 < 619315201)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = a1 - 900;
    *v3 = a1 - 900;
  }

  if (a1 - v4 < 1209601)
  {
LABEL_8:
    if (v4)
    {
      v6 = v4 < 619315201;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      *a2 = *v3;
      result = 1;
      goto LABEL_14;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  result = 0;
  *(v2 + 13) = 0;
LABEL_14:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GPS_UTC(int a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 14) != 1)
  {
    goto LABEL_13;
  }

  v3 = p_NA + 824;
  v4 = *(p_NA + 824);
  if (a1 < 619315201 || v4)
  {
    if (a1 < 619315201)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = a1 - 900;
    *v3 = a1 - 900;
  }

  if (a1 - v4 < 1209601)
  {
LABEL_8:
    if (v4)
    {
      v6 = v4 < 619315201;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      v7 = *v3;
      *(a2 + 16) = *(v3 + 16);
      *a2 = v7;
      result = 1;
      goto LABEL_14;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  result = 0;
  *(v2 + 14) = 0;
LABEL_14:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GAL_GGTO(int a1, _OWORD *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 149) != 1)
  {
    goto LABEL_13;
  }

  v3 = *(p_NA + 5384);
  if (a1 < 619315201 || v3)
  {
    if (a1 < 619315201)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = a1 - 900;
    *(p_NA + 5384) = a1 - 900;
  }

  if (a1 - v3 < 1209601)
  {
LABEL_8:
    if (v3)
    {
      v5 = v3 < 619315201;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      *a2 = *(v2 + 5384);
      result = 1;
      goto LABEL_14;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  result = 0;
  *(v2 + 149) = 0;
LABEL_14:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_BDS_BGTO(int a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 222) != 1)
  {
    goto LABEL_13;
  }

  v3 = (p_NA + 9864);
  v4 = *(p_NA + 9864);
  if (a1 < 619315201 || v4)
  {
    if (a1 < 619315201)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = a1 - 900;
    *v3 = a1 - 900;
  }

  if (a1 - v4 < 1209601)
  {
LABEL_8:
    if (v4)
    {
      v6 = v4 < 619315201;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      v7 = *v3;
      *(a2 + 16) = v3[4];
      *a2 = v7;
      result = 1;
      goto LABEL_14;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  result = 0;
  *(v2 + 222) = 0;
LABEL_14:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_AGNSS_AcqAss(_DWORD *a1, _BYTE *a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = p_NA;
  if (*(p_NA + 297) != 1)
  {
    goto LABEL_25;
  }

  v7 = *(p_api + 48);
  if (*(v7 + 5) != 1 || *v7 < 3 || (v8 = *(v7 + 24) + 604800 * *(v7 + 16), v8 < 619315201) || (v9 = *(p_NA + 17664), v10 = 1000 * (v8 % 0x93A80u), v10 - v9 - 180001 > 0xFFFCCBAE) || (*(p_NA + 297) = 0, EvCrt_v("Core_Get_AGPS_AcqAss:  AcqAss Invalidated,  d_ITOW = %d =(%d - %d)", v10 - v9, v10, v9), v3 = p_NA, *(p_NA + 148) = 0, (*(v3 + 297) & 1) != 0))
  {
    LOBYTE(v11) = *(v3 + 17672);
    if (v11)
    {
      v12 = 0;
      v11 = 0;
      v13 = 17676;
      do
      {
        v14 = (v3 + v13);
        if (*(v3 + v13) != 4)
        {
          v15 = a3 + 28 * v11;
          v16 = *(v14 + 12);
          *v15 = *v14;
          *(v15 + 12) = v16;
          if (*v15 == 2)
          {
            v17 = v3 + 17676 + 28 * v11;
            v18 = *(v17 + 2);
            v19 = *(*(p_api + 56) + 4 * (v18 - 1) + 16336);
            if (v19 != 2139062143)
            {
              *(v17 + 3) = v19;
              *(v15 + 3) = v19;
LABEL_17:
              if ((v18 - 1) <= 0x17 && (v19 + 7) <= 0xDu)
              {
                v21 = v19;
                v22 = *(p_api + 56);
                v23 = v22 + 4 * (v21 + 7);
                *(v23 + 16432) = v18;
                *(v23 + 16488) = 3;
                *(v22 + 4 * (v18 - 1) + 16336) = v21;
              }

              ++v11;
              v3 = p_NA;
              goto LABEL_23;
            }

            if (*(v3 + 148) == 1)
            {
              v19 = *(v3 + v18 - 1 + 17640);
              if (v19 != 127)
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
            ++v11;
          }
        }

LABEL_23:
        ++v12;
        v13 += 28;
      }

      while (v12 < *(v3 + 17672));
    }

    *a2 = v11;
    *a1 = *(v3 + 17664);
    result = 1;
  }

  else
  {
LABEL_25:
    result = 0;
  }

  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GPS_TOWAss(unsigned int *__b)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(p_api + 48);
  if (*(v2 + 5) == 1 && *v2 >= 3)
  {
    v3 = *(v2 + 24) + 604800 * *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = p_NA;
  if (*(p_NA + 298) == 1)
  {
    if (v3 < 619315201 || (v5 = *(p_NA + 19020), v6 = 1000 * (v3 % 0x93A80u), v6 - v5 - 180001 > 0xFFFD0646) || (*(p_NA + 298) = 0, EvCrt_v("Core_Get_GPS_TOWAss:  TOW_Assist Invalidated,  d_ITOW = %d =(%d - %d)", v6 - v5, 1000 * (v3 % 0x93A80u), v5), v4 = p_NA, (*(p_NA + 298) & 1) != 0))
    {
      v7 = v4[1189];
      v8 = v4[1190];
      v9 = v4[1192];
      *(__b + 2) = v4[1191];
      *(__b + 3) = v9;
      *__b = v7;
      *(__b + 1) = v8;
      v10 = v4[1193];
      v11 = v4[1194];
      v12 = v4[1196];
      *(__b + 6) = v4[1195];
      *(__b + 7) = v12;
      *(__b + 4) = v10;
      *(__b + 5) = v11;
LABEL_15:
      result = 1;
      goto LABEL_16;
    }
  }

  if ((v3 - 681909601) < 0x1869F || (v3 - 758719201) < 0x1869F || (v3 - 790368801) < 0x1869F)
  {
    memset_pattern16(__b, &unk_2997294B0, 0x80uLL);
    goto LABEL_15;
  }

  result = 0;
  *__b = 0;
LABEL_16:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void s_NA_Ram::s_NA_Ram(s_NA_Ram *this)
{
  v24 = *MEMORY[0x29EDCA608];
  *(this + 89) = 0;
  v2 = this + 17612;
  *(this + 720) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 410) = 0u;
  *(this + 240) = 0;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 27) = 0u;
  *(this + 61) = 0;
  *(this + 31) = 0u;
  *(this + 128) = 0;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 548) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0;
  *(this + 37) = 0u;
  *(this + 152) = 0;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 692) = 0u;
  *(this + 105) = 0;
  v3 = 848;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  do
  {
    v4 = this + v3;
    *(v4 + 63) = 0;
    *(v4 + 2) = 0uLL;
    *(v4 + 3) = 0uLL;
    v3 += 72;
    *v4 = 0uLL;
    *(v4 + 1) = 0uLL;
  }

  while (v3 != 3152);
  do
  {
    v5 = this + v3;
    *(v5 + 16) = 0;
    *v5 = 0uLL;
    *(v5 + 1) = 0uLL;
    v3 += 36;
  }

  while (v3 != 4304);
  v6 = -720;
  do
  {
    v7 = (this + v6);
    v7[317] = 0uLL;
    v7[316] = 0uLL;
    v7[315] = 0uLL;
    v7[314] = 0uLL;
    *(this + v6 + 5087) = 0;
    v6 += 72;
  }

  while (v6);
  v8 = -360;
  do
  {
    *(this + v8 + 5416) = 0;
    v9 = (this + v8 + 5384);
    *v9 = 0uLL;
    v9[1] = 0uLL;
    v8 += 36;
  }

  while (v8);
  *(this + 673) = 0;
  *(this + 5390) = 0;
  v10 = -3168;
  do
  {
    v11 = this + v10 + 8568;
    *(v11 + 79) = 0;
    *(v11 + 3) = 0uLL;
    *(v11 + 4) = 0uLL;
    *(v11 + 1) = 0uLL;
    *(v11 + 2) = 0uLL;
    *v11 = 0uLL;
    v10 += 88;
  }

  while (v10);
  v12 = -1296;
  do
  {
    v13 = this + v12 + 9864;
    *(v13 + 31) = 0;
    *v13 = 0uLL;
    *(v13 + 1) = 0uLL;
    v12 += 36;
  }

  while (v12);
  *(this + 9864) = 0u;
  *(this + 2470) = 0;
  v14 = -3700;
  do
  {
    v15 = this + v14;
    *(v15 + 3420) = 0;
    v16 = this + v14 + 13608;
    *(v15 + 849) = 0uLL;
    *(this + v14 + 13599) = 0;
    *v16 = 0uLL;
    *(v16 + 1) = 0uLL;
    *(v16 + 2) = 0uLL;
    *(v16 + 3) = 0uLL;
    *(v16 + 62) = 0;
    v14 += 100;
  }

  while (v14);
  bzero(this + 13584, 0x65CuLL);
  for (i = 0; i != 1536; i += 64)
  {
    v18 = (this + i + 15212);
    *(v18 + 46) = 0uLL;
    v18[1] = 0uLL;
    v18[2] = 0uLL;
    *v18 = 0uLL;
  }

  v19 = (this + 16760);
  v20 = 864;
  do
  {
    *(v19 - 12) = 0;
    *(v19 - 2) = 0;
    v19[1] = 0;
    v19[2] = 0;
    *v19 = 0;
    v19 = (v19 + 36);
    v20 -= 36;
  }

  while (v20);
  *v2 = 0;
  *(v2 + 4) = 0;
  *(v2 + 3) = 0;
  v2[16] = 0;
  *(v2 + 5) = 0;
  *(this + 17640) = 0u;
  *(this + 17656) = 0u;
  *(this + 17672) = 0;
  v21 = this + 17676;
  v22 = 1344;
  v2[24] = 0;
  do
  {
    *(v21 + 5) = 0;
    *(v21 + 6) = 0;
    *v21 = 0;
    *(v21 + 1) = 0;
    *(v21 + 8) = 0;
    v21 += 28;
    v22 -= 28;
  }

  while (v22);
  *(v2 + 967) = 0;
  *(this + 19020) = 0u;
  *(this + 19036) = 0u;
  *(this + 19052) = 0u;
  *(this + 19068) = 0u;
  *(this + 19084) = 0u;
  *(this + 19100) = 0u;
  *(this + 19116) = 0u;
  *(this + 19132) = 0u;
  *(this + 19141) = 0u;
  *(this + 2395) = 0;
  *(this + 19168) = 0;
  *(this + 1343) = 0u;
  *(this + 5376) = 0;
  *(this + 21512) = 0u;
  *(this + 5382) = 0;
  *(this + 2694) = 0;
  *(this + 1346) = 0u;
  v23 = *MEMORY[0x29EDCA608];
}

__n128 SBAS_Eph2RefState(__n128 *a1, char a2, __int16 a3, int a4, uint64_t a5)
{
  v20 = *MEMORY[0x29EDCA608];
  *(a5 + 176) = 0;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  *(a5 + 180) = a2;
  *(a5 + 184) = 1;
  *(a5 + 176) = 6;
  *(a5 + 112) = 0x4083880000000000;
  v8 = a1->n128_u32[2];
  v9 = ldiv(a4, 86400);
  if ((LODWORD(v9.rem) - v8) >= -43200)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if ((LODWORD(v9.rem) - v8) > 43199)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = v8 + 86400 * (v11 + LODWORD(v9.quot));
  v13 = v12 - 604800;
  if (v12 > 0x93A7F)
  {
    v14 = a3 + 1;
  }

  else
  {
    v13 = v12;
    v14 = a3;
  }

  v15 = v12 >= 0;
  if (v12 < 0)
  {
    v16 = v12 + 604800;
  }

  else
  {
    v16 = v13;
  }

  if (v15)
  {
    v17 = v14;
  }

  else
  {
    v17 = a3 - 1;
  }

  *(a5 + 160) = v16;
  *(a5 + 164) = v17;
  *a5 = a1[2].n128_u64[0];
  *(a5 + 8) = a1[2].n128_u64[1];
  *(a5 + 16) = a1[3].n128_u64[0];
  *(a5 + 24) = a1[3].n128_u64[1];
  *(a5 + 32) = a1[4].n128_u64[0];
  *(a5 + 40) = a1[4].n128_u64[1];
  *(a5 + 48) = a1[5].n128_u64[0];
  *(a5 + 56) = a1[5].n128_u64[1];
  *(a5 + 64) = a1[6].n128_u64[0];
  result = a1[1];
  *(a5 + 96) = result;
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void ds_Intermittent(char **a1, unsigned int a2, double *a3)
{
  v6 = 0;
  *&v42[99] = *MEMORY[0x29EDCA608];
  v7 = *a1;
  v8 = 84;
  do
  {
    *a1 = v7 + 1;
    *v7 = v8;
    v7 = *a1;
    if (*a1 >= a1[3])
    {
      v7 = a1[2];
      *a1 = v7;
    }

    v8 = aTsx[++v6];
  }

  while (v6 != 4);
  sprintf_5d(a1, *(a3 + 124));
  sprintf_sgR8(a1, a3[10]);
  sprintf_sgR8(a1, a3[11]);
  sprintf_sgR8(a1, a3[12]);
  sprintf_sgR8(a1, a3[13]);
  sprintf_sgR8(a1, a3[14]);
  sprintf_sgR8(a1, a3[15]);
  sprintf_sgR8(a1, a3[16]);
  sprintf_sgR8(a1, a3[18]);
  sprintf_sgR8(a1, a3[19]);
  sprintf_sgR8(a1, a3[20]);
  sprintf_sgR8(a1, a3[21]);
  sprintf_sgR8(a1, a3[22]);
  sprintf_sgR8(a1, a3[23]);
  sprintf_sgR8(a1, a3[24]);
  sprintf_sgR8(a1, a3[25]);
  sprintf_sgR8(a1, a3[26]);
  sprintf_sgR8(a1, a3[27]);
  sprintf_sgR8(a1, a3[28]);
  sprintf_sgR8(a1, a3[29]);
  sprintf_sgR8(a1, a3[30]);
  v9 = (*a1)++;
  *v9 = 10;
  v10 = *a1;
  if (*a1 >= a1[3])
  {
    v10 = a1[2];
  }

  v11 = "INT";
  if (a2 == 11)
  {
    v11 = "Int";
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = (v11 + 1);
    do
    {
      *a1 = v10 + 1;
      *v10 = v12;
      v10 = *a1;
      if (*a1 >= a1[3])
      {
        v10 = a1[2];
        *a1 = v10;
      }

      v14 = *v13++;
      v12 = v14;
    }

    while (v14);
  }

  v15 = &ch_GNSS_Exe_States[20 * a2 + 1];
  v16 = 32;
  do
  {
    *a1 = v10 + 1;
    *v10 = v16;
    v10 = *a1;
    if (*a1 >= a1[3])
    {
      v10 = a1[2];
      *a1 = v10;
    }

    v17 = *v15++;
    v16 = v17;
  }

  while (v17);
  v18 = **(p_api + 8);
  *a1 = v10 + 1;
  *v10 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf_10u(a1, v18);
  if (a2 <= 0xB)
  {
    if (((1 << a2) & 0xA48) != 0)
    {
      sprintf_5d(a1, *(a3 + 237));
      v19 = *a1;
      v20 = &ch_Oper_Mode[6 * *a3 + 1];
      v21 = 32;
      do
      {
        *a1 = v19 + 1;
        *v19 = v21;
        v19 = *a1;
        if (*a1 >= a1[3])
        {
          v19 = a1[2];
          *a1 = v19;
        }

        v22 = *v20++;
        v21 = v22;
      }

      while (v22);
      sprintf_ACC(a1, a3[*a3 + 120]);
      v23 = (*a1)++;
      *v23 = 32;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }

      sprintf_ACC(a1, a3[*a3 + 122]);
      v24 = *a1;
      v25 = &ch_Sens_Mode[4 * *(a3 + 1) + 1];
      v26 = 32;
      do
      {
        *a1 = v24 + 1;
        *v24 = v26;
        v24 = *a1;
        if (*a1 >= a1[3])
        {
          v24 = a1[2];
          *a1 = v24;
        }

        v27 = *v25++;
        v26 = v27;
      }

      while (v27);
      v28 = &ch_Sens_Mode[4 * *(a3 + 2) + 1];
      v29 = 32;
      do
      {
        *a1 = v24 + 1;
        *v24 = v29;
        v24 = *a1;
        if (*a1 >= a1[3])
        {
          v24 = a1[2];
          *a1 = v24;
        }

        v30 = *v28++;
        v29 = v30;
      }

      while (v30);
      v31 = &ch_Power_Mode[4 * *(a3 + 4) + 1];
      v32 = 32;
      do
      {
        *a1 = v24 + 1;
        *v24 = v32;
        v24 = *a1;
        if (*a1 >= a1[3])
        {
          v24 = a1[2];
          *a1 = v24;
        }

        v33 = *v31++;
        v32 = v33;
      }

      while (v33);
      sprintf_sp1d(a1, *(a3 + 17));
      sprintf_sp1d(a1, *(a3 + 72));
      sprintf_sp1d(a1, *(a3 + 73));
      sprintf_sp1d(a1, *(a3 + 6));
      sprintf_sp1d(a1, *(a3 + 28));
      sprintf_4d(a1, *(a3 + 250));
      sprintf_4d(a1, *(a3 + 251));
    }

    else if (a2 == 2)
    {
      GN_GPS_Get_LibVersion(&v41);
      v36 = *a1;
      for (i = 5; i > 1; --i)
      {
        *a1 = v36 + 1;
        *v36 = 32;
        v36 = *a1;
        if (*a1 >= a1[3])
        {
          v36 = a1[2];
          *a1 = v36;
        }
      }

      v38 = v41;
      if (v41)
      {
        v39 = v42;
        do
        {
          *a1 = v36 + 1;
          *v36 = v38;
          v36 = *a1;
          if (*a1 >= a1[3])
          {
            v36 = a1[2];
            *a1 = v36;
          }

          v40 = *v39++;
          v38 = v40;
        }

        while (v40);
      }
    }
  }

  v34 = (*a1)++;
  *v34 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v35 = *MEMORY[0x29EDCA608];
}

BOOL Is_Legal(int a1)
{
  result = 0;
  if (BYTE2(a1) && a1 & 0xFF00FFFF | (BYTE2(a1) << 16))
  {
    v3 = BYTE2(a1) < 0x26u;
    v4 = BYTE2(a1) - 193 < 0xA;
    v5 = BYTE2(a1) - 120 < 0x27;
    if (a1 != 6)
    {
      v5 = 0;
    }

    if (a1 != 5)
    {
      v4 = v5;
    }

    if (a1 != 4)
    {
      v3 = v4;
    }

    v6 = BYTE2(a1) < 0x25u;
    if (a1 != 3)
    {
      v6 = 0;
    }

    if (a1 == 2)
    {
      v6 = BYTE2(a1) < 0x19u;
    }

    if (a1 == 1)
    {
      v6 = BYTE2(a1) < 0x21u;
    }

    if (a1 <= 3u)
    {
      result = v6;
    }

    else
    {
      result = v3;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PP_Acq_Ass_Update_AA(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v8 = 0;
  *&v107[1324] = *MEMORY[0x29EDCA608];
  do
  {
    v9 = &v106[v8];
    *(v9 + 5) = 0;
    *(v9 + 6) = 0;
    *v9 = 0;
    *(v9 + 1) = 0;
    v8 += 28;
    *(v9 + 8) = 0;
  }

  while (v8 != 1344);
  v10 = 0;
  *(a2 + 5008) = 0;
  *(a2 + 300) = -1;
  v11 = a2 + 304;
  do
  {
    v12 = (v11 + v10);
    *(v12 + 29) = 0uLL;
    *v12 = 0uLL;
    v12[1] = 0uLL;
    v10 += 48;
  }

  while (v10 != 3936);
  v100 = 0;
  v99 = 0;
  *&v13 = -1;
  *(&v13 + 1) = -1;
  *(a2 + 4240) = v13;
  *(a2 + 4256) = v13;
  *(a2 + 4272) = v13;
  *(a2 + 4288) = v13;
  *(a2 + 4304) = v13;
  *(a2 + 4320) = v13;
  *(a2 + 4336) = v13;
  *(a2 + 4352) = v13;
  *(a2 + 4368) = v13;
  *(a2 + 4384) = v13;
  *(a2 + 4400) = v13;
  *(a2 + 4416) = -1;
  *(a2 + 4594) = -25187;
  *&v13 = 0x9D9D9D9D9D9D9D9DLL;
  *(&v13 + 1) = 0x9D9D9D9D9D9D9D9DLL;
  *(a2 + 4418) = v13;
  *(a2 + 4434) = v13;
  *(a2 + 4450) = v13;
  *(a2 + 4466) = v13;
  *(a2 + 4482) = v13;
  *(a2 + 4498) = v13;
  *(a2 + 4514) = v13;
  *(a2 + 4530) = v13;
  *(a2 + 4546) = v13;
  *(a2 + 4562) = v13;
  *(a2 + 4578) = v13;
  memset_pattern16((a2 + 4596), &unk_299728F50, 0x164uLL);
  *(a2 + 4952) = 0;
  AGNSS_AcqAss = Core_Get_AGNSS_AcqAss(&v100, &v99, v106);
  result = 0;
  if (AGNSS_AcqAss)
  {
    v17 = *(a1 + 16);
    v18 = *(a2 + 284);
    if (v18 == 11)
    {
      v19 = (a2 + 192);
    }

    else
    {
      v19 = (&TOW_stat_Sigma_m_Table + 8 * v18);
    }

    v20 = *v19;
    if (*v19 > 300.0)
    {
      v97 = 0;
      v101 = 0.0;
      v96 = 0.0;
      if (Get_FSP_Time(*(a2 + 176), &v97, &v101, &v96, &v98))
      {
        v21 = sqrt(v96) * 299792458.0;
        if (v21 < v20)
        {
          v20 = v21;
          v17 = v101;
        }
      }
    }

    *(a2 + 5008) = v20;
    *(a2 + 5000) = v17;
    if (v20 > 1500000000.0)
    {
      EvLog_v("PP_Acq_Ass_Update_AA:  Exit:  TOW_Sigma_m = %g,  Too high!", v20);
      result = 0;
      goto LABEL_161;
    }

    v95 = a2 + 4240;
    v22 = -0.5;
    if (v17 * 1000.0 > 0.0)
    {
      v22 = 0.5;
    }

    v23 = v17 * 1000.0 + v22;
    v94 = a4;
    if (v23 <= 2147483650.0)
    {
      if (v23 >= -2147483650.0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0x80000000;
      }
    }

    else
    {
      v24 = 0x7FFFFFFF;
    }

    *(a2 + 300) = v24;
    v25 = v99;
    if (v99)
    {
      v26 = 0;
      v27 = v24 - v100;
      if (v24 - v100 >= 0)
      {
        v28 = v24 - v100;
      }

      else
      {
        v28 = v100 - v24;
      }

      v29 = v28 / 0x1F40;
      v30 = v107;
      v31 = a2 + 304;
      do
      {
        v105 = 0;
        v104 = 0u;
        v103 = 0u;
        v32 = *(v30 - 5);
        if (v32)
        {
          v33 = *(a2 + 176);
          LODWORD(v101) = v33 - v27;
          BYTE4(v101) = 1;
          v102 = v32;
          LOWORD(v103) = 257;
          v34 = 154;
          if (v32 <= 3u)
          {
            if (v32 == 2)
            {
              v34 = 146;
            }

            else if (v32 == 3)
            {
              v34 = 174;
            }

            else
            {
              v34 = 154;
            }
          }

          else if (v32 == 4)
          {
            if ((v32 & 0xFF0000u) <= 0xA0000)
            {
              v34 = 258;
            }

            else
            {
              v34 = 162;
            }
          }

          else if (v32 == 5 || v32 == 6)
          {
            v34 = 258;
          }

          WORD2(v103) = v34;
          HIWORD(v103) = *(v30 - 2);
          *&v104 = *v30;
          *(&v103 + 6) = vext_s8(*(v30 - 12), *(v30 - 12), 2uLL);
          *v31 = v33;
          Comp_Cur_Acq_Aid(&v101, v31);
          v35 = *(v31 + 18) + v29;
          *(v31 + 18) = v35;
          v36 = v27 * v35 / 3079450 + *(v31 + 26);
          if (v36 > 500)
          {
            LOWORD(v36) = 512;
          }

          *(v31 + 26) = v36;
          v37 = GNSS_Id_To_Num_Prn_Idx(*(v31 + 8));
          *(a2 + 4418 + v37) = *(v30 - 15);
          *(a2 + 4596 + 2 * v37) = *(v30 - 7);
          *(v95 + v37) = v26;
          v25 = v99;
        }

        ++v26;
        v30 = (v30 + 28);
        v31 += 48;
      }

      while (v26 < v25);
    }

    v38 = *a3;
    if (*v94 != v38)
    {
      EvCrt_nd("PP_Acq_Ass_Update_AA:  Error:  Database time-tag miss-match ", 2, v14, *v94, v38);
LABEL_160:
      result = 1;
      goto LABEL_161;
    }

    v39 = 0;
    v91 = 0;
    v92 = 0;
    v40 = 0;
    v41 = 0;
    v93 = 0;
    v42 = v94 + 1365;
    v43 = (v94 + 11);
    v44 = 0xFFFF;
    do
    {
      v45 = *(v42 - 5);
      if (Is_Legal(v45) && *(v42 - 6) >= 0xAu && *v42 && ((v46 = &a3[v39], v45 != 4) ? (v47 = LOBYTE(a3[v39 + 19]) == v45) : (v47 = 0), v47 && (*(v46 + 78) == BYTE2(v45) || v45 == 2 && HIBYTE(a3[v39 + 19]) == HIBYTE(v45)) && a3[v39 + 103] >= 10 && (v48 = *(v95 + GNSS_Id_To_Num_Prn_Idx(v46[19])), (v48 & 0x8000000000000000) == 0)))
      {
        v49 = v11 + 48 * v48;
        v50 = (100 * (*(v42 - 1) & 0x300)) | *(v42 - 6);
        if (v50 <= v40 || *(v49 + 24) >> 4 > 0x3FEu)
        {
          v50 = v40;
        }

        else
        {
          v51 = *(v43 - 3) - *(v49 + 28);
          if (v51 >= 0)
          {
            v52 = *(v43 - 3) - *(v49 + 28);
          }

          else
          {
            v52 = *(v49 + 28) - *(v43 - 3);
          }

          if (v52 <= 0x62)
          {
            LODWORD(v91) = *(v43 - 2) + 1534500 * v51 - *(v49 + 32);
          }

          HIDWORD(v91) = *(v42 - 1) & 0x300;
        }

        v53 = (*(v43 - 2) - *(v49 + 32)) % 1023;
        if (v44 == 0xFFFF)
        {
          v44 = (*(v43 - 2) - *(v49 + 32)) % 1023;
        }

        v54 = v53 - v44;
        if (v53 - v44 >= 513)
        {
          if (v54 >= 0x5FF)
          {
            v54 = 1535;
          }

          v55 = 1023 * ((v53 - v44 - v54 + 1022) / 0x3FFu);
          v56 = v53 - 1023;
          v53 = v53 - 1023 - v55;
          v54 = v56 - v44 - v55;
        }

        if (v54 <= -513)
        {
          v57 = -1535 - v54;
          if (v54 > 0xFFFFFA01)
          {
            v57 = 0;
          }

          v58 = __CFADD__(v54, 1535);
          v59 = ((__PAIR64__(v57, v54) - 4294965761u) >> 32) / 0x3FF;
          if (!v58)
          {
            ++v59;
          }

          v53 = v53 - v59 + (v59 << 10) + 1023;
        }

        ++v41;
        LODWORD(v92) = v92 + (*v43 >> 8) - *(v49 + 22);
        HIDWORD(v92) += v53;
        LODWORD(v93) = v93 + *(v49 + 18);
        HIDWORD(v93) += *(v49 + 26);
      }

      else
      {
        v50 = v40;
      }

      ++v39;
      v42 += 18;
      v43 += 14;
      v40 = v50;
    }

    while (v39 != 48);
    HIDWORD(v61) = HIDWORD(v91);
    LODWORD(v61) = HIDWORD(v91);
    v60 = v61 >> 8;
    if (v60 < 2)
    {
      v63 = 0;
      v62 = v91;
    }

    else
    {
      v62 = v91;
      if (v60 == 3)
      {
        v63 = 1;
      }

      else
      {
        if (v60 != 2)
        {
          EvCrt_Illegal_Default("PP_Acq_Ass_Update_AA", 0x1B2u);
          v63 = 0;
          v60 = 0;
          goto LABEL_94;
        }

        v63 = 0;
      }

      v60 = 1;
    }

    if (*(a2 + 200) <= 900.0)
    {
      goto LABEL_99;
    }

LABEL_94:
    if (*(a2 + 258) < 0x13Bu)
    {
      v64 = 1;
      goto LABEL_100;
    }

    if (*(p_NA + 8) == 1)
    {
      v64 = (sqrt(*(p_NA + 576)) * 1000000000.0) < 0x32;
    }

    else
    {
LABEL_99:
      v64 = 0;
    }

LABEL_100:
    if (v41 < 1)
    {
      if (*(a2 + 256) >= 0x73u)
      {
        v75 = 115;
      }

      else
      {
        v75 = *(a2 + 256);
      }

      if (v64)
      {
        v74 = v75;
      }

      else
      {
        v74 = *(a2 + 256);
      }

      v76 = *(a2 + 72) * 1575420000.0;
      v77 = -0.5;
      if (v76 > 0.0)
      {
        v77 = 0.5;
      }

      v78 = v76 + v77;
      if (v78 <= 2147483650.0)
      {
        if (v78 >= -2147483650.0)
        {
          v79 = v78;
        }

        else
        {
          v79 = 0x80000000;
        }
      }

      else
      {
        v79 = 0x7FFFFFFF;
      }

      *(a2 + 4952) = -v79;
    }

    else
    {
      *(a2 + 4952) = v92 / v41;
      v65 = SHIDWORD(v92) / v41;
      if (SHIDWORD(v92) / v41 <= 1022)
      {
        v66 = 1022;
      }

      else
      {
        v66 = SHIDWORD(v92) / v41;
      }

      v67 = 1023 * (((2149582851u * v66) >> 32) >> 9);
      v68 = v65 - v67;
      if ((v65 - v67) <= -1023)
      {
        if (v68 <= 0xFFFFF803)
        {
          v69 = -2045;
        }

        else
        {
          v69 = v65 - v67;
        }

        v70 = v69 + v67;
        v47 = v70 == v65;
        v71 = (v70 - v65 - (v70 != v65)) / 0x3FF;
        if (!v47)
        {
          ++v71;
        }

        v68 = v68 - v71 + (v71 << 10) + 1023;
      }

      if (v62 <= 0)
      {
        v63 = 0;
      }

      if (v63 == 1)
      {
        if (v62 > v68)
        {
          v72 = 512;
        }

        else
        {
          v72 = -512;
        }

        v68 += 1023 * ((v72 + v62 - v68) / 1023);
      }

      *(a2 + 4956) = v68;
      if (v41 == 1 && v64)
      {
        v74 = v93 + *(a2 + 260) + (*(a2 + 260) >> 2);
      }

      else
      {
        v74 = v93 / v41 + *(a2 + 260) + *(a2 + 260) / v41;
      }

      v80 = SHIDWORD(v93) / v41;
      if (SHIDWORD(v93) / v41 <= (v20 * 0.0102370821))
      {
        goto LABEL_148;
      }
    }

    v81 = *(a2 + 64) * 1023000.0;
    v82 = -0.5;
    if (v81 > 0.0)
    {
      v82 = 0.5;
    }

    v83 = v81 + v82;
    if (v83 <= 2147483650.0)
    {
      if (v83 >= -2147483650.0)
      {
        v84 = v83;
      }

      else
      {
        v84 = 0x80000000;
      }
    }

    else
    {
      v84 = 0x7FFFFFFF;
    }

    *(a2 + 4956) = -v84;
    v80 = (v20 * 0.0102370821);
LABEL_148:
    v85 = 0;
    if (v20 >= 299792.458)
    {
      v86 = v60;
    }

    else
    {
      v86 = 2;
    }

    do
    {
      if (*(a2 + v85 + 312) && *(a2 + v85 + 308) == 1)
      {
        v87 = a2 + v85;
        *(a2 + v85 + 326) += *(a2 + 4952);
        v88 = v74 + *(a2 + v85 + 322);
        if (v88 >= 0xFFFF)
        {
          LOWORD(v88) = -1;
        }

        *(v87 + 322) = v88;
        Inc_CA_Chips(*(a2 + 4956), (v87 + 336), (v87 + 332));
        v89 = v80 + (*(v87 + 328) >> 4);
        if (v89 > 500)
        {
          LOWORD(v89) = 512;
        }

        *(v87 + 330) = v89;
        if (v86 > *(v87 + 318))
        {
          *(v87 + 318) = v86;
        }
      }

      v85 += 48;
    }

    while (v85 != 3936);
    goto LABEL_160;
  }

LABEL_161:
  v90 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PP_Acq_Ass_Replace_AA(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 300) & 0x80000000) != 0)
  {
LABEL_57:
    result = 0;
    goto LABEL_58;
  }

  *&__src[352] = -1;
  v41 = (a3 + 4096);
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *&__src[320] = v8;
  *&__src[336] = v8;
  *&__src[288] = v8;
  *&__src[304] = v8;
  *&__src[256] = v8;
  *&__src[272] = v8;
  *&__src[224] = v8;
  *&__src[240] = v8;
  *&__src[192] = v8;
  *&__src[208] = v8;
  *&__src[160] = v8;
  *&__src[176] = v8;
  *&__src[128] = v8;
  *&__src[144] = v8;
  *&__src[96] = v8;
  *&__src[112] = v8;
  *&__src[64] = v8;
  *&__src[80] = v8;
  *&__src[32] = v8;
  *&__src[48] = v8;
  *__src = v8;
  *&__src[16] = v8;
  LODWORD(v46[22]) = -1;
  v46[20] = v8;
  v46[21] = v8;
  v46[18] = v8;
  v46[19] = v8;
  v46[16] = v8;
  v46[17] = v8;
  v46[14] = v8;
  v46[15] = v8;
  v46[12] = v8;
  v46[13] = v8;
  v46[10] = v8;
  v46[11] = v8;
  v46[8] = v8;
  v46[9] = v8;
  v46[6] = v8;
  v46[7] = v8;
  v46[4] = v8;
  v46[5] = v8;
  v46[2] = v8;
  v46[3] = v8;
  v46[0] = v8;
  v46[1] = v8;
  memset_pattern16(__b, &unk_299728F40, 0x2C8uLL);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v10 = 0;
  v11 = a1 + 308;
  v12 = 82;
  do
  {
    if (*(v11 + 6) && *v11 == 1)
    {
      v13 = GNSS_Id_To_Num_Prn_Idx(*(v11 + 4));
      __b[v13] = 1;
      *&__src[2 * v10] = v13 + 1;
      v10 = (v10 + 1);
      v14 = *(v11 + 4);
      if (v14 <= 2)
      {
        if (!*(v11 + 4))
        {
          goto LABEL_20;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            ++HIDWORD(v43);
            goto LABEL_20;
          }

          goto LABEL_16;
        }

        LODWORD(v43) = v43 + 1;
      }

      else if (*(v11 + 4) > 4u)
      {
        if (v14 != 5)
        {
          if (v14 == 6)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        }

        LODWORD(v44) = v44 + 1;
      }

      else
      {
        if (v14 != 3)
        {
          if (v14 == 4)
          {
            ++HIDWORD(v44);
            goto LABEL_20;
          }

LABEL_16:
          EvCrt_Illegal_Default("PP_Acq_Ass_Replace_AA", 0x2A5u);
          goto LABEL_20;
        }

        ++v42;
      }
    }

LABEL_20:
    v11 += 48;
    --v12;
  }

  while (v12);
  if (*(a3 + 48))
  {
    v15 = 1;
  }

  else
  {
    v15 = v10 > 7;
  }

  if (!v15)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      Constell_Prn = Get_Constell_Prn(v16);
      if (Constell_Prn <= 2)
      {
        if (Constell_Prn)
        {
          if (Constell_Prn == 1)
          {
            if (v43 && (a2[31] & 1) != 0)
            {
              goto LABEL_47;
            }
          }

          else if (HIDWORD(v43) && (a2[32] & 1) != 0)
          {
LABEL_47:
            if (__b[v16] == 2)
            {
              __b[v16] = 0;
              *(v46 + v17++) = v16 + 1;
            }
          }
        }
      }

      else if (Constell_Prn > 4)
      {
        if (Constell_Prn == 5 && v44 && (a2[33] & 1) != 0)
        {
          goto LABEL_47;
        }
      }

      else if (Constell_Prn == 3)
      {
        if (v42 && (a2[36] & 1) != 0)
        {
          goto LABEL_47;
        }
      }

      else if (HIDWORD(v44) && (a2[35] & 1) != 0)
      {
        goto LABEL_47;
      }

      if (++v16 == 178)
      {
        goto LABEL_50;
      }
    }
  }

  LOBYTE(v17) = 0;
LABEL_50:
  EvLog_nd("PP_Acq_Ass_Replace_AA: ", 4, v9, *(a1 + 300), v10, *(a1 + 4952), *(a1 + 4956));
  if (!v10)
  {
    goto LABEL_57;
  }

  memcpy((a3 + 60), (a1 + 304), 0xF60uLL);
  v19 = (a3 + 70);
  v20 = 82;
  do
  {
    if (*(v19 - 2) == 2 && *v19)
    {
      *v19 = *(*(a3 + 6216) + 4 * (*v19 - 1));
    }

    v19 += 48;
    --v20;
  }

  while (v20);
  v21 = *(a1 + 4240);
  v22 = *(a1 + 4256);
  v23 = *(a1 + 4288);
  *(a3 + 4028) = *(a1 + 4272);
  *(a3 + 4044) = v23;
  *(a3 + 3996) = v21;
  *(a3 + 4012) = v22;
  v24 = *(a1 + 4304);
  v25 = *(a1 + 4320);
  v26 = *(a1 + 4352);
  *(a3 + 4092) = *(a1 + 4336);
  *(a3 + 4108) = v26;
  *(a3 + 4060) = v24;
  *(a3 + 4076) = v25;
  v27 = *(a1 + 4368);
  v28 = *(a1 + 4384);
  v29 = *(a1 + 4400);
  *(a3 + 4172) = *(a1 + 4416);
  *(a3 + 4140) = v28;
  *(a3 + 4156) = v29;
  *(a3 + 4124) = v27;
  memcpy((a3 + 5420), __b, 0x2C8uLL);
  memcpy((a3 + 4174), __src, 0x164uLL);
  memcpy((a3 + 4530), v46, 0x164uLL);
  v41[2036] = v10;
  v41[2037] = v17;
  v41[2038] = -78 - (v17 + v10);
  v41[2039] = 0;
  *(a3 + 6360) = *(a1 + 4952);
  v30 = *(a1 + 4466);
  v32 = *(a1 + 4418);
  v31 = *(a1 + 4434);
  *(a4 + 32) = *(a1 + 4450);
  *(a4 + 48) = v30;
  *a4 = v32;
  *(a4 + 16) = v31;
  v33 = *(a1 + 4530);
  v35 = *(a1 + 4482);
  v34 = *(a1 + 4498);
  *(a4 + 96) = *(a1 + 4514);
  *(a4 + 112) = v33;
  *(a4 + 64) = v35;
  *(a4 + 80) = v34;
  v37 = *(a1 + 4562);
  v36 = *(a1 + 4578);
  v38 = *(a1 + 4546);
  *(a4 + 176) = *(a1 + 4594);
  *(a4 + 144) = v37;
  *(a4 + 160) = v36;
  *(a4 + 128) = v38;
  memcpy((a4 + 178), (a1 + 4596), 0x164uLL);
  *(a4 + 534) = v10;
  result = 1;
  *(a4 + 535) = 1;
LABEL_58:
  v40 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PP_Acq_Ass_Merge_AA(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v96 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 300);
  if ((v7 & 0x80000000) != 0)
  {
LABEL_139:
    result = 0;
    goto LABEL_140;
  }

  v8 = a3;
  v95 = 0;
  memset(v94, 0, sizeof(v94));
  v92 = (a2 + 4096);
  if (!*(a2 + 6132))
  {
    goto LABEL_28;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  a3 = v94;
  a4 = 1;
  a5 = 4294200046;
  a6 = 4293432796;
  a7 = 767250;
  v14 = 2130706432;
  do
  {
    v15 = *(a2 + 3996 + v10);
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = a2 + 60 + 48 * *(a2 + 3996 + v10);
      if (*(v16 + 8))
      {
        if (*(v16 + 4) == 1)
        {
          *(v94 + v15) = 1;
          if ((*(a1 + 4240 + v10) & 0x8000000000000000) == 0)
          {
            v17 = a1 + 304 + 48 * *(a1 + 4240 + v10);
            if (*(v17 + 8))
            {
              if (*(v17 + 4) == 1)
              {
                v18 = vsub_s32(*(v17 + 28), *(v16 + 28));
                LODWORD(v19) = v18.i32[1] + 1534500 * v18.i32[0];
                if (v19 < -767250)
                {
                  LODWORD(v19) = v19 + 1534500;
                }

                if (v19 <= 767250)
                {
                  v19 = v19;
                }

                else
                {
                  v19 = (v19 - 1534500);
                }

                v20 = v19;
                if (v14 != 2130706432)
                {
                  if (v19 - v14 >= 511)
                  {
                    v21 = 511;
                  }

                  else
                  {
                    v21 = v19 - v14;
                  }

                  v22 = 1023 * ((v19 - v14 - v21 + 1022) / 0x3FFu);
                  v23 = v19 - v14 - v22;
                  if (v23 <= -511)
                  {
                    v23 = -511;
                  }

                  v24 = v22 + v14 + v23;
                  v25 = (v24 - v19 - (v24 != v19)) / 0x3FF;
                  if (v24 != v19)
                  {
                    ++v25;
                  }

                  LODWORD(v19) = v19 - v22 - v25 + (v25 << 10);
                  v20 = v14;
                }

                ++v13;
                v11 = v11 + *(v17 + 22) - *(v16 + 22);
                v12 += v19;
                v14 = v20;
              }
            }
          }
        }
      }
    }

    ++v10;
  }

  while (v10 != 178);
  if (v13 >= 1)
  {
    v86 = (v12 / v13);
    v26 = (v11 / v13);
  }

  else
  {
LABEL_28:
    v27 = (*(a1 + 64) - (*(a1 + 96) - v7 * 0.001)) * 1023000.0;
    v28 = -0.5;
    if (v27 <= 0.0)
    {
      v29 = -0.5;
    }

    else
    {
      v29 = 0.5;
    }

    v30 = v27 + v29;
    if (v30 <= 2147483650.0)
    {
      if (v30 >= -2147483650.0)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0x80000000;
      }
    }

    else
    {
      v31 = 0x7FFFFFFF;
    }

    v32 = (v31 + *(a1 + 4956));
    v33 = *(a1 + 72) * 1575420000.0;
    if (v33 > 0.0)
    {
      v28 = 0.5;
    }

    v34 = v33 + v28;
    if (v34 <= 2147483650.0)
    {
      if (v34 >= -2147483650.0)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0x80000000;
      }
    }

    else
    {
      v35 = 0x7FFFFFFF;
    }

    v86 = v32;
    v26 = (v35 + *(a1 + 4952));
  }

  v88 = v26;
  v89 = 0;
  v36 = 0;
  v37 = 0;
  v38 = a1 + 304;
  v39 = a2 + 3996;
  v93 = a2 + 60;
  v40 = a2 + 5420;
  v90 = a2 + 4174;
  v91 = 0;
  do
  {
    v41 = (v38 + 48 * v36);
    if (!*(v41 + 10) || *(v41 + 4) != 1)
    {
      goto LABEL_68;
    }

    v42 = GNSS_Id_To_Num_Prn_Idx(*(v41 + 2));
    v43 = *(v39 + v42);
    if (v43 < 0 || (v44 = v93 + 48 * *(v39 + v42), !*(v44 + 10)) || *(v44 + 4) != 1)
    {
      v43 = 0;
      v51 = (a2 + 70);
      while (*(v51 - 2) || (*(v51 - 6) & 1) != 0)
      {
        ++v43;
        v51 += 48;
        if (v43 == 82)
        {
          goto LABEL_66;
        }
      }

      v53 = v41[1];
      v52 = v41[2];
      *(v51 - 10) = *v41;
      *(v51 + 22) = v52;
      *(v51 + 6) = v53;
      if (*(v51 - 2) == 2)
      {
        *v51 = *(*(a2 + 6216) + 4 * *v51 - 4);
      }

      v91 = (v91 + 1);
      *(v39 + v42) = v43;
      v50 = 3;
      goto LABEL_65;
    }

    v45 = *(v44 + 26);
    if (!*(v44 + 15))
    {
      goto LABEL_143;
    }

    v46 = *(v44 + 12);
    if (v45 < 0x101)
    {
      if (!*(v44 + 12))
      {
        v55 = *(v41 + 13);
        if (v45 > v55)
        {
          LOWORD(v55) = *(v44 + 26);
        }

        *(v44 + 26) = v55;
      }

      goto LABEL_66;
    }

    if (!*(v44 + 12))
    {
LABEL_143:
      v47 = (*(v41 + 13) >> 4) + 1;
      if (v47 + v47 * (*(v41 + 9) >> 5) < (v45 >> 4) + 1 + ((v45 >> 4) + 1) * (*(v44 + 18) >> 5))
      {
        v48 = v41[2];
        v49 = *v41;
        *(v44 + 16) = v41[1];
        *(v44 + 32) = v48;
        *v44 = v49;
        if (*(v44 + 8) == 2)
        {
          *(v44 + 10) = *(*(a2 + 6216) + 4 * *(v44 + 10) - 4);
        }

        v89 = (v89 + 1);
        v50 = 2;
LABEL_65:
        *(v94 + v43) = v50;
      }
    }

LABEL_66:
    v37 = (v37 + 1);
    if (*(v40 + 4 * v42) != 1)
    {
      *(v40 + 4 * v42) = 1;
      v54 = v92[2036];
      *(v90 + 2 * v54) = v42 + 1;
      v92[2036] = v54 + 1;
    }

LABEL_68:
    ++v36;
  }

  while (v36 != 82);
  if (v89 > 0 || v91 >= 1)
  {
    v56 = 0;
    v57 = a2 + 64;
    v58 = 512;
    v59 = 512;
    do
    {
      if (*(v57 + 4) && *v57 == 1)
      {
        v60 = *(v57 + 22);
        v61 = v58;
        if (v58 >= v60)
        {
          v61 = *(v57 + 22);
        }

        if (v59 < v60)
        {
          LOWORD(v60) = v59;
        }

        if ((*(v94 + v56) & 0xFFFFFFFE) == 2)
        {
          v59 = v60;
        }

        else
        {
          v58 = v61;
        }
      }

      v56 += 4;
      v57 += 48;
    }

    while (v56 != 328);
    if (v59 != 512 || v58 != 512)
    {
      if (v59 >= v58)
      {
        v64 = 0;
        v65 = v94;
        do
        {
          if (*(a2 + v64 + 68) && *(a2 + v64 + 64) == 1 && (*v65 & 0xFFFFFFFE) == 2)
          {
            *(a2 + v64 + 82) -= v88;
            Inc_CA_Chips(-v86, (a2 + v64 + 92), (a2 + v64 + 88));
          }

          v64 += 48;
          ++v65;
        }

        while (v64 != 3936);
      }

      else
      {
        v62 = 0;
        v63 = v94;
        do
        {
          if (*(a2 + v62 + 68) && *(a2 + v62 + 64) == 1 && (*v63 & 0xFFFFFFFE) != 2)
          {
            *(a2 + v62 + 82) += v88;
            Inc_CA_Chips(v86, (a2 + v62 + 92), (a2 + v62 + 88));
          }

          v62 += 48;
          ++v63;
        }

        while (v62 != 3936);
      }
    }
  }

  if (*(a2 + 48))
  {
    v66 = 1;
  }

  else
  {
    v66 = v37 < 8;
  }

  if (v66 || v92[2037] < 7u)
  {
    v70 = 0;
    v69 = 0;
    v71 = a2 + 4530;
    do
    {
      v72 = *(v71 + v70);
      if (v72 >= 1 && !*(v40 + 4 * (v72 - 1)))
      {
        *(v71 + 2 * v69++) = v72;
      }

      v70 += 2;
    }

    while (v70 != 356);
    v92[2037] = v69;
    if (v69 <= 0xB1u)
    {
      memset((v71 + 2 * v69), 255, 356 - 2 * v69);
    }
  }

  else
  {
    v67 = 0;
    *(a2 + 4882) = -1;
    *&v68 = -1;
    *(&v68 + 1) = -1;
    *(a2 + 4530) = v68;
    *(a2 + 4546) = v68;
    *(a2 + 4562) = v68;
    *(a2 + 4578) = v68;
    *(a2 + 4594) = v68;
    *(a2 + 4610) = v68;
    *(a2 + 4626) = v68;
    *(a2 + 4642) = v68;
    *(a2 + 4658) = v68;
    *(a2 + 4674) = v68;
    *(a2 + 4690) = v68;
    *(a2 + 4706) = v68;
    *(a2 + 4722) = v68;
    *(a2 + 4738) = v68;
    *(a2 + 4754) = v68;
    *(a2 + 4770) = v68;
    *(a2 + 4786) = v68;
    *(a2 + 4802) = v68;
    *(a2 + 4818) = v68;
    *(a2 + 4834) = v68;
    *(a2 + 4850) = v68;
    *(a2 + 4866) = v68;
    v92[2037] = 0;
    do
    {
      if (!*(v40 + v67))
      {
        *(v40 + v67) = 2;
      }

      v67 += 4;
    }

    while (v67 != 712);
    LOBYTE(v69) = 0;
    *(v8 + 535) = 1;
  }

  v73 = 0;
  v92[2038] = -78 - v92[2039] - (v69 + v92[2036]);
  *(a2 + 6360) = *(a1 + 4952);
  v74 = a1 + 4418;
  do
  {
    v75 = *(v74 + v73);
    if ((v75 > 0 || *(v74 + 2 * v73 + 178) >= 1) && *(v8 + v73) < 0)
    {
      v76 = v8 + 2 * v73;
      if (*(v76 + 89) < 0)
      {
        *(v8 + v73) = v75;
        *(v76 + 89) = *(v74 + 2 * v73 + 178);
      }
    }

    ++v73;
  }

  while (v73 != 178);
  EvLog_nd("PP_Acq_Ass_Merge_AA: ", 10, a3, a4, a5, a6, a7, *(a1 + 300), v37, v89, v91, v92[2036], v92[2037], *(a1 + 4952), *(a1 + 4956), v88, v86);
  if (!v92[2036])
  {
    goto LABEL_139;
  }

  if (g_Enable_Event_Log)
  {
    for (i = 0; i != 178; ++i)
    {
      v78 = *(v39 + i);
      if ((v78 & 0x8000000000000000) == 0 && (*(a1 + 4240 + i) & 0x80000000) == 0)
      {
        v79 = v93 + 48 * *(v39 + i);
        v80 = *(v79 + 8);
        v81 = *(v79 + 10);
        if (v80 == 2 || (v81 = *(v79 + 10), v80 <= 6))
        {
          v82 = PP_Acq_Ass_Merge_AA(s_Pre_Positioning_WD *,s_DB_Acq_Aid_Table *,s_DB_SV_AzEl *)::ch_CONSTELL_ID[*(v79 + 8)];
        }

        else
        {
          v82 = 88;
        }

        v83 = v38 + 48 * *(a1 + 4240 + i);
        EvLog_v("PP_Acq_Ass_Merge_AA:  %c %3d %2d %3d  %c   D %3d %3d %4d   C %3d %3d %5d   S %d %d  GR %d %d", v82, v81, *(v79 + 11), *(v83 + 10), PP_Acq_Ass_Merge_AA(s_Pre_Positioning_WD *,s_DB_Acq_Aid_Table *,s_DB_SV_AzEl *)::ch_MERGE_STATE[*(v94 + v78)], *(v79 + 18), *(v83 + 18), *(v79 + 22) - *(v83 + 22), *(v79 + 26), *(v83 + 26), *(v79 + 32) - *(v83 + 32), *(v79 + 14), *(v83 + 14), *(v79 + 15), *(v83 + 15));
      }
    }
  }

  result = 1;
LABEL_140:
  v85 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm07_06EncodeNSend(unsigned __int8 *a1, uint64_t a2, const char *a3)
{
  v36 = *MEMORY[0x29EDCA608];
  __s = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
  PlcGnssHw = Gnm03_64GetPlcGnssHw();
  plc00_05EncodeMsg(2, a1, a2, v24, 2048, &__s, &v25, PlcGnssHw);
  if (v25)
  {
    if (IsLoggingAllowed == 1)
    {
      if (!plc00_15GetExtErrAsString(&v25, &__s_2, 0x104uLL) || !LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        goto LABEL_12;
      }

      bzero(__str, 0x410uLL);
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v19 = a1[2];
      v15 = *a1;
      v17 = a1[1];
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDE,%u,Err,%s\n", v7, "GNM", 87);
LABEL_11:
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
LABEL_12:
      result = 0;
      goto LABEL_13;
    }

    v12 = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    result = 0;
    if (v12)
    {
      bzero(__str, 0x410uLL);
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v18 = a1[1];
      v20 = a1[2];
      v16 = *a1;
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDE,%u\n", v13, "GNM");
      goto LABEL_11;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:zx%c%c,%u =>GNCorHW %s\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm07_06EncodeNSend", *a1, a1[1], a1[2], a3);
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
    }

    result = Gnm07_01Send(*a1, a1[2], v24, __s);
  }

LABEL_13:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm07_01Send(int a1, int a2, uint64_t a3, unsigned __int8 *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  HIDWORD(v6) = a1 - 66;
  LODWORD(v6) = a1 - 66;
  v5 = v6 >> 1;
  if (v5 <= 8)
  {
    if (v5 <= 1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if (v5 == 9 || v5 == 10)
  {
    goto LABEL_8;
  }

  if (v5 != 11)
  {
LABEL_10:
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    if (!result)
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm07_01Send", 777, a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  if (a2 != 77)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (!off_2A1939588)
  {
    goto LABEL_12;
  }

  off_2A1939588(a4, a3);
  result = 1;
LABEL_13:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm05_22PopulateGnssShapeType(uint64_t a1, int a2)
{
  v3 = *(a1 + 30);
  if ((a2 & 2) != 0 || a2 == 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (v3 == 255)
  {
    v5 = 1;
  }

  v6 = *(a1 + 36);
  if ((a2 & 8) != 0 || a2 == 0)
  {
    v8 = 8;
  }

  else
  {
    v8 = v5;
  }

  if (v6)
  {
    result = v8;
  }

  else
  {
    result = v5;
  }

  if (v3 != 255 && *(a1 + 31) != 255 && *(a1 + 41) != 255 && *(a1 + 32) != 255)
  {
    if ((a2 & 4) != 0 || a2 == 0)
    {
      v11 = 4;
    }

    else
    {
      v11 = result;
    }

    v12 = *(a1 + 40);
    if ((a2 & 0x10) != 0 || a2 == 0)
    {
      v14 = 16;
    }

    else
    {
      v14 = v11;
    }

    if (v12 == 255)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    if (v6)
    {
      result = v15;
    }

    else
    {
      result = v11;
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm05_23PopulateGnssVelocityType(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 8);
  if (*(a1 + 10) != -1)
  {
    if ((a2 & 8) != 0 && v2 != 0xFFFF)
    {
      result = 8;
      goto LABEL_11;
    }

    if ((a2 & 2) != 0)
    {
      result = 2;
      goto LABEL_11;
    }
  }

  if ((a2 & 4) == 0 || v2 == 0xFFFF)
  {
    result = a2 & (*(a1 + 2) != -1);
  }

  else
  {
    result = 4;
  }

LABEL_11:
  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm05_25PopulateGnssAidReq(_BYTE *a1, void *a2, int a3)
{
  v58 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AllwdGnss,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm05_25PopulateGnssAidReq", a3);
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
  }

  v8 = gnssOsa_Calloc("Gnm05_25PopulateGnssAidReq", 407, 1, 8uLL);
  a2[1] = v8;
  if (!v8)
  {
    v20 = 0;
    goto LABEL_102;
  }

  if (a1[16] == 1 && (a1[19] & 1) == 0)
  {
    *v8 = 1;
  }

  if (a1[17] == 1)
  {
    v8[1] = 1;
  }

  if (a1[18] == 1 && (a1[21] & 1) == 0)
  {
    v8[2] = 1;
  }

  v9 = (*v8 & 1) != 0 || (v8[1] & 1) != 0 || v8[2] == 1;
  v10 = 0;
  if (a3 & 1) != 0 && (a1[24])
  {
    v11 = gnssOsa_Calloc("Gnm05_25PopulateGnssAidReq", 442, 1, 0xD8uLL);
    a2[2] = v11;
    if (!v11)
    {
      v40 = a2[1];
      if (v40)
      {
        free(v40);
      }

      v20 = 0;
      a2[1] = 0;
      goto LABEL_102;
    }

    v10 = Gnm05_24PopulateGnssAssistData(v11, 1, (a1 + 24), 8u, 0x18u, 8u);
    v8 = a2[1];
    v8[3] = 1;
  }

  v12 = 0;
  if (a3 & 0x20) != 0 && (a1[256])
  {
    v13 = gnssOsa_Calloc("Gnm05_25PopulateGnssAidReq", 458, 1, 0xD8uLL);
    a2[3] = v13;
    if (!v13)
    {
      v41 = a2[1];
      if (v41)
      {
        free(v41);
      }

      a2[1] = 0;
      v42 = a2[2];
      if (v42)
      {
        free(v42);
      }

      v20 = 0;
      a2[2] = 0;
      goto LABEL_102;
    }

    v12 = Gnm05_24PopulateGnssAssistData(v13, 32, (a1 + 256), 6u, 0x14u, 6u);
    v8 = a2[1];
    v8[4] = 1;
  }

  v14 = 0;
  if (a3 & 0x40) != 0 && (a1[952])
  {
    v15 = gnssOsa_Calloc("Gnm05_25PopulateGnssAidReq", 477, 1, 0xD8uLL);
    a2[6] = v15;
    if (!v15)
    {
      v43 = a2[1];
      if (v43)
      {
        free(v43);
      }

      a2[1] = 0;
      v44 = a2[2];
      if (v44)
      {
        free(v44);
      }

      a2[2] = 0;
      v45 = a2[3];
      if (v45)
      {
        free(v45);
      }

      v20 = 0;
      a2[3] = 0;
      goto LABEL_102;
    }

    v14 = Gnm05_24PopulateGnssAssistData(v15, 64, (a1 + 952), 6u, 0x14u, 6u);
    v8 = a2[1];
    v8[7] = 1;
  }

  v16 = 0;
  if (a3 & 0x10) != 0 && (a1[488])
  {
    v17 = gnssOsa_Calloc("Gnm05_25PopulateGnssAidReq", 496, 1, 0xD8uLL);
    a2[4] = v17;
    if (!v17)
    {
      v46 = a2[1];
      if (v46)
      {
        free(v46);
      }

      a2[1] = 0;
      v47 = a2[2];
      if (v47)
      {
        free(v47);
      }

      a2[2] = 0;
      v48 = a2[3];
      if (v48)
      {
        free(v48);
      }

      a2[3] = 0;
      v49 = a2[6];
      if (v49)
      {
        free(v49);
      }

      v20 = 0;
      a2[6] = 0;
      goto LABEL_102;
    }

    v16 = Gnm05_24PopulateGnssAssistData(v17, 16, (a1 + 488), 4u, 4u, 4u);
    v8 = a2[1];
    v8[5] = 1;
  }

  v18 = 0;
  if ((a3 & 4) == 0 || (a1[720] & 1) == 0)
  {
    goto LABEL_36;
  }

  v19 = gnssOsa_Calloc("Gnm05_25PopulateGnssAidReq", 517, 1, 0xD8uLL);
  a2[5] = v19;
  if (v19)
  {
    v18 = Gnm05_24PopulateGnssAssistData(v19, 4, (a1 + 720), 4u, 4u, 4u);
    v8 = a2[1];
    v8[6] = 1;
LABEL_36:
    v20 = v14 | v9 | v10 | v12 | v16 | v18;
    if (v20 == 1 && a1[18] == 1 && (v8[2] & 1) == 0)
    {
      v8[2] = 1;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v22 = a2[1];
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v26 = v22[3];
      v27 = v22[4];
      v28 = v22[5];
      v29 = v22[6];
      v30 = v22[7] == 0;
      v31 = 78;
      if (v30)
      {
        v32 = 78;
      }

      else
      {
        v32 = 89;
      }

      if (v29)
      {
        v33 = 89;
      }

      else
      {
        v33 = 78;
      }

      if (v28)
      {
        v34 = 89;
      }

      else
      {
        v34 = 78;
      }

      if (v27)
      {
        v35 = 89;
      }

      else
      {
        v35 = 78;
      }

      if (v26)
      {
        v36 = 89;
      }

      else
      {
        v36 = 78;
      }

      if (v25)
      {
        v37 = 89;
      }

      else
      {
        v37 = 78;
      }

      if (v24)
      {
        v38 = 89;
      }

      else
      {
        v38 = 78;
      }

      if (v23)
      {
        v31 = 89;
      }

      v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RefTime,%c,RefPos,%c,Iono,%c,Agps,%c,Aglon,%c,Aqzss,%c,Asbas,%c,Abds,%c\n", v21, "GNM", 73, "Gnm05_25PopulateGnssAidReq", v31, v38, v37, v36, v35, v34, v33, v32);
      LbsOsaTrace_WriteLog(0xBu, __str, v39, 4, 1);
    }

    goto LABEL_102;
  }

  v50 = a2[2];
  if (v50)
  {
    free(v50);
  }

  a2[2] = 0;
  v51 = a2[3];
  if (v51)
  {
    free(v51);
  }

  a2[3] = 0;
  v52 = a2[6];
  if (v52)
  {
    free(v52);
  }

  a2[6] = 0;
  v53 = a2[1];
  if (v53)
  {
    free(v53);
  }

  a2[1] = 0;
  v54 = a2[4];
  if (v54)
  {
    free(v54);
  }

  v20 = 0;
  a2[4] = 0;
LABEL_102:
  v55 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t Gnm05_24PopulateGnssAssistData(uint64_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v32 = *MEMORY[0x29EDCA608];
  *a1 = a2;
  v8 = *(a3 + 16);
  *(a1 + 4) = v8;
  *(a1 + 10) = *(a3 + 22);
  if (*(a3 + 18) == 1 && *(a3 + 3) < a5)
  {
    *(a1 + 6) = 1;
    *(a1 + 13) = *(a3 + 25);
  }

  if (*(a3 + 19) == 1 && *(a3 + 1) < a4)
  {
    *(a1 + 7) = 1;
    *(a1 + 14) = *(a3 + 26);
  }

  if (*(a3 + 20) == 1 && *(a3 + 2) < a6)
  {
    *(a1 + 8) = 1;
  }

  *(a1 + 16) = *(a3 + 30);
  *(a1 + 18) = *(a3 + 28);
  LODWORD(v9) = *(a3 + 33);
  *(a1 + 20) = v9;
  *(a1 + 19) = *(a3 + 32);
  if (v9)
  {
    if (v9 >= 0x30)
    {
      v9 = 48;
    }

    else
    {
      v9 = v9;
    }

    v10 = (a1 + 21);
    v11 = (a1 + 86);
    v12 = (a3 + 36);
    do
    {
      *v10++ = *(v12 - 2);
      v13 = *v12;
      v12 += 2;
      *v11++ = v13;
      --v9;
    }

    while (v9);
  }

  if ((v8 & 1) != 0 || (*(a1 + 6) & 1) != 0 || (*(a1 + 7) & 1) != 0 || *(a1 + 8) == 1)
  {
    v14 = 1;
    *(a1 + 5) = 1;
    *(a1 + 12) = *(a3 + 24);
    if (a2 == 64)
    {
      *(a1 + 11) = *(a3 + 23);
    }
  }

  else
  {
    v14 = 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (v14)
    {
      v16 = 89;
    }

    else
    {
      v16 = 78;
    }

    if (*(a1 + 15))
    {
      v17 = 89;
    }

    else
    {
      v17 = 78;
    }

    if (*(a1 + 14))
    {
      v18 = 89;
    }

    else
    {
      v18 = 78;
    }

    if (*(a1 + 13))
    {
      v19 = 89;
    }

    else
    {
      v19 = 78;
    }

    if (*(a1 + 10))
    {
      v20 = 89;
    }

    else
    {
      v20 = 78;
    }

    if (*(a1 + 8))
    {
      v21 = 89;
    }

    else
    {
      v21 = 78;
    }

    if (*(a1 + 7))
    {
      v22 = 89;
    }

    else
    {
      v22 = 78;
    }

    if (*(a1 + 6))
    {
      v23 = 89;
    }

    else
    {
      v23 = 78;
    }

    if (*(a1 + 12))
    {
      v24 = 89;
    }

    else
    {
      v24 = 78;
    }

    if (*(a1 + 11))
    {
      v25 = 89;
    }

    else
    {
      v25 = 78;
    }

    if (*(a1 + 5))
    {
      v26 = 89;
    }

    else
    {
      v26 = 78;
    }

    if (*(a1 + 4))
    {
      v27 = 89;
    }

    else
    {
      v27 = 78;
    }

    v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AssistReq GNSSID,%u,Utc,%c,Rti,%c,Grid,%c,TimeModel,%c,Alm,%c,Eph,%c,RefMeas,%c,AuxInfo,%c,AlmModId,%c,EphModId,%c,ClkModId,%c,AidReq,%c\n", v15, "GNM", 73, "Gnm05_24PopulateGnssAssistData", a2, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16);
    LbsOsaTrace_WriteLog(0xBu, __str, v28, 4, 1);
  }

  v29 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t Gnm05_27PopulateDefaultGnssAidReq(void *a1, char a2)
{
  v27 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm05_27PopulateDefaultGnssAidReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  v6 = gnssOsa_Calloc("Gnm05_27PopulateDefaultGnssAidReq", 655, 1, 8uLL);
  a1[1] = v6;
  if (!v6)
  {
    v11 = 0;
    goto LABEL_48;
  }

  *v6 = 257;
  v6[2] = 1;
  if (a2)
  {
    v7 = gnssOsa_Calloc("Gnm05_27PopulateDefaultGnssAidReq", 668, 1, 0xD8uLL);
    a1[2] = v7;
    if (!v7)
    {
      goto LABEL_45;
    }

    *v7 = 0x101010100000001;
    *(v7 + 7) = 16843009;
    v7[20] = 0;
    v7[15] = 2;
    *(v7 + 11) = 33685760;
    *(a1[1] + 3) = 1;
  }

  if ((a2 & 0x20) != 0)
  {
    v8 = gnssOsa_Calloc("Gnm05_27PopulateDefaultGnssAidReq", 682, 1, 0xD8uLL);
    a1[3] = v8;
    if (!v8)
    {
      v13 = a1[2];
      if (v13)
      {
        free(v13);
      }

      a1[2] = 0;
      goto LABEL_45;
    }

    *v8 = 0x101010100000020;
    *(v8 + 7) = 16843009;
    v8[20] = 0;
    v8[15] = 4;
    *(v8 + 11) = 67436800;
    *(a1[1] + 4) = 1;
  }

  if ((a2 & 0x40) != 0)
  {
    v9 = gnssOsa_Calloc("Gnm05_27PopulateDefaultGnssAidReq", 699, 1, 0xD8uLL);
    a1[6] = v9;
    if (!v9)
    {
      v14 = a1[2];
      if (v14)
      {
        free(v14);
      }

      a1[2] = 0;
      v15 = a1[3];
      if (v15)
      {
        free(v15);
      }

      a1[3] = 0;
      goto LABEL_45;
    }

    *v9 = 0x101010100000040;
    *(v9 + 7) = 16843009;
    v9[20] = 0;
    v9[15] = 6;
    *(v9 + 11) = 101122304;
    *(a1[1] + 7) = 1;
  }

  if ((a2 & 0x10) != 0)
  {
    v10 = gnssOsa_Calloc("Gnm05_27PopulateDefaultGnssAidReq", 717, 1, 0xD8uLL);
    a1[4] = v10;
    if (!v10)
    {
      v16 = a1[2];
      if (v16)
      {
        free(v16);
      }

      a1[2] = 0;
      v17 = a1[3];
      if (v17)
      {
        free(v17);
      }

      a1[3] = 0;
      v18 = a1[6];
      if (v18)
      {
        free(v18);
      }

      a1[6] = 0;
      goto LABEL_45;
    }

    Gnm05_26PopulateDefaultAssistData(v10, 16);
    *(a1[1] + 5) = 1;
  }

  if ((a2 & 4) == 0)
  {
    v11 = 1;
    goto LABEL_48;
  }

  v11 = 1;
  v12 = gnssOsa_Calloc("Gnm05_27PopulateDefaultGnssAidReq", 736, 1, 0xD8uLL);
  a1[5] = v12;
  if (v12)
  {
    Gnm05_26PopulateDefaultAssistData(v12, 4);
    *(a1[1] + 6) = 1;
    goto LABEL_48;
  }

  v19 = a1[2];
  if (v19)
  {
    free(v19);
  }

  a1[2] = 0;
  v20 = a1[3];
  if (v20)
  {
    free(v20);
  }

  a1[3] = 0;
  v21 = a1[6];
  if (v21)
  {
    free(v21);
  }

  a1[6] = 0;
  v22 = a1[4];
  if (v22)
  {
    free(v22);
  }

  a1[4] = 0;
LABEL_45:
  v23 = a1[1];
  if (v23)
  {
    free(v23);
  }

  v11 = 0;
  a1[1] = 0;
LABEL_48:
  v24 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t Gnm05_26PopulateDefaultAssistData(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  *a1 = a2;
  *(a1 + 4) = 16843009;
  *(a1 + 7) = 16843009;
  *(a1 + 20) = 0;
  *(a1 + 15) = 0;
  *(a1 + 11) = 256;
  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnssType,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm05_26PopulateDefaultAssistData", 770, a2);
    result = LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm05_31PrintNavSoln(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 168);
    if (*(a1 + 10))
    {
      v8 = 89;
    }

    else
    {
      v8 = 78;
    }

    if (*(a1 + 9))
    {
      v9 = 89;
    }

    else
    {
      v9 = 78;
    }

    if (*(a1 + 8))
    {
      v10 = 89;
    }

    else
    {
      v10 = 78;
    }

    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NAV:OsTime,%ums,BBTick,%ums,DateSet,%c,TimeSet,%c,UtcValid,%c,Year,%u,Month,%u,Day,%u,Hours,%u,Min,%u,Sec,%u,Msec,%u,WkNo,%d,Tow,%.12f,TowUnc%.12f,UtcCorr,%.1f,ClkDrift,%.12f,ClkDriftUnc,%.12f\n", v2, "GNM", 73, "Gnm05_31PrintNavSoln", *(a1 + 4), *a1, v10, v9, v8, *(a1 + 12), *(a1 + 14), *(a1 + 16), *(a1 + 18), *(a1 + 20), *(a1 + 22), *(a1 + 24), *(a1 + 28), *(a1 + 40), *(a1 + 32), *(a1 + 64), *(a1 + 72), *(a1 + 168));
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NAV:OsTime,%ums,Lat,%.9f,Lon,%.9f,AltMSL,%f,Speed,%f,Course,%f,VerVel,%f,HAccMaj,%f,HAccMin,%f,PRRes,%f,FixT,%u,VSF,%u,VNM,%u,FixMode,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm05_31PrintNavSoln", *(a1 + 4), *(a1 + 104), *(a1 + 112), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 200), *(a1 + 208), *(a1 + 248), *(a1 + 288), *(a1 + 289), *(a1 + 290), *(a1 + 291));
    LbsOsaTrace_WriteLog(0xBu, __str, v13, 4, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 1);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NAV:OsTime,%ums,SatView,%u,SatUsed,%u,UsrS,%u,GnssC,%u,Reliab,%u,AsstUsed,0x%X,SpoofMsk,0x%X\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 73, "Gnm05_31PrintNavSoln", *(a1 + 4), *(a1 + 306), *(a1 + 307), *(a1 + 292), *(a1 + 293), *(a1 + 304), *(a1 + 300), *(a1 + 296));
    result = LbsOsaTrace_WriteLog(0xBu, __str, v16, 4, 1);
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm05_32PrintGadData(uint64_t result)
{
  v12 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v1 = result;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GAD:SessId,%u,Final,%u,GnssMask,%x,VelType,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm05_32PrintGadData", *v1, *(v1 + 4), *(v1 + 5), *(v1 + 68));
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GAD:Tow,%ums,TowUncK,%u,GnssTod,%ums,GnssTodFrac,%u(250ns),GnssTodUncK,%u,DeltaGnssTodK,%u,RefDeltaCellTime,%u,GnssTimeId,%u,GpsWkNo,%u,GPSLeapSec,%d,LocalBBTimeMs,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm05_32PrintGadData", *(v1 + 84), *(v1 + 88), *(v1 + 92), *(v1 + 96), *(v1 + 98), *(v1 + 99), *(v1 + 100), *(v1 + 104), *(v1 + 110), *(v1 + 112), *(v1 + 116));
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GAD:OsTime,%ums,Status,%u,FixType,%u,ShapeType,%u,LatSign,%u,Lat,%u,Lon,%d,Alt,%u,UncSemMajK,%u,UncSemMinK,%u,AxisB,%u,AltDir,%u,UncAltK,%u,Conf,%u,InclAngle,%u,OffsetAngle,%u,InRad,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm05_32PrintGadData", *(v1 + 16), *(v1 + 20), *(v1 + 24), *(v1 + 28), *(v1 + 32), *(v1 + 36), *(v1 + 40), *(v1 + 44), *(v1 + 46), *(v1 + 47), *(v1 + 48), *(v1 + 52), *(v1 + 56), *(v1 + 57), *(v1 + 58), *(v1 + 59), *(v1 + 60));
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 1);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GAD:Bearing,%u,HorSpeed,%u,VerDir,%u,VerSpeed,%u,HorSpeedUnc,%u,VerSpeedUnc,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm05_32PrintGadData", *(v1 + 72), *(v1 + 74), *(v1 + 76), *(v1 + 78), *(v1 + 80), *(v1 + 82));
      result = LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm05_35PrintMeas(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: 3GPPMEAS:SessId,%u,FinalRep,%u,AsstMask,0x%X,MeasMask,0x%X\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm05_35PrintMeas", *a1, *(a1 + 4), *(a1 + 12), *(a1 + 16));
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: 3GPPMEAS:GNSS:Status,%u,GpsTow,%ums,TowUncK,%u,Tod,%ums,TodFrac,%u(250ns),TodUncK,%u,DeltaTodK,%u,RefDeltaCellTime,%dus,NumGnssID,%u,GpsWkNo,%u,GPSLeapSec,%d,LocalBBTimeMs,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm05_34PrintGnssMeas", *(a1 + 680), *(a1 + 684), *(a1 + 688), *(a1 + 692), *(a1 + 696), *(a1 + 698), *(a1 + 699), *(a1 + 700), *(a1 + 720), *(a1 + 710), *(a1 + 712), *(a1 + 716));
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  v6 = *(a1 + 720);
  if (*(a1 + 720))
  {
    v7 = 0;
    v25 = a1;
    v26 = a1 + 724;
    v8 = (a1 + 736);
    do
    {
      v9 = v26 + 10280 * v7;
      v10 = *(v9 + 4);
      if (v10)
      {
        v11 = 0;
        v28 = v7;
        v27 = v8;
        do
        {
          v12 = (v9 + 8 + 1284 * v11);
          if (v12[2])
          {
            v13 = 0;
            v14 = v8;
            do
            {
              if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v15 = mach_continuous_time();
                v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: 3GPPMEAS:GNSS:GnssId,%u,SignalId,%u,SvId,%u,CPAmbig,%u,Snr,%u,MPathInd,%u,CarQualInd,%u,IntCodePh,%ums,CPRmsErr,%u,CodePh,%ums,Dopp,%dm/s,ADR,%um\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 73, "Gnm05_34PrintGnssMeas", *v9, *v12, *v14, v12[1], v14[1], v14[2], v14[3], v14[4], v14[5], *(v14 + 2), *(v14 + 6), *(v14 + 4));
                LbsOsaTrace_WriteLog(0xBu, __str, v16, 4, 1);
              }

              if (v13 > 0x3E)
              {
                break;
              }

              ++v13;
              v14 += 20;
            }

            while (v13 < v12[2]);
            v10 = *(v9 + 4);
          }

          if (v11 > 6)
          {
            break;
          }

          ++v11;
          v8 += 1284;
        }

        while (v11 < v10);
        a1 = v25;
        v6 = *(v25 + 720);
        v8 = v27;
        v7 = v28;
      }

      if (v7 > 0xE)
      {
        break;
      }

      ++v7;
      v8 += 10280;
    }

    while (v7 < v6);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: 3GPPMEAS:GPS:Status,%u,GpsTow,%ums,GpsTowUncK,%u,RefDeltaCellTime,%dus,DeltaTowK,%u,NoSv,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 73, "Gnm05_33PrintGpsMeas", *(a1 + 32), *(a1 + 20), *(a1 + 28), *(a1 + 24), *(a1 + 29), *(a1 + 37));
    result = LbsOsaTrace_WriteLog(0xBu, __str, v19, 4, 1);
  }

  if (*(a1 + 37))
  {
    v20 = 0;
    v21 = (a1 + 47);
    do
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: 3GPPMEAS:GPS:SatId,%u,Cno,%u,Doppler,%u,WholeChips,%u,FracChips,%u,MPathInd,%u,PsRmsErr,%u\n", (*&g_MacClockTicksToMsRelation * v22), "GNM", 73, "Gnm05_33PrintGpsMeas", *(v21 - 9), *(v21 - 8), *(v21 - 7), *(v21 - 5), *(v21 - 3), *(v21 - 1), *v21);
        result = LbsOsaTrace_WriteLog(0xBu, __str, v23, 4, 1);
      }

      if (v20 > 0x3E)
      {
        break;
      }

      ++v20;
      v21 += 10;
    }

    while (v20 < *(a1 + 37));
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm05_43ConvertNavToGpsGad(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v27 = *MEMORY[0x29EDCA608];
  v8 = 1;
  *a1 = a4;
  *(a1 + 4) = 1;
  v9 = *(a3 + 288);
  if (v9 != 2)
  {
    if (v9 == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
      *(a1 + 4) = 7;
    }
  }

  v10 = *(a3 + 104);
  v11 = *(a3 + 112);
  *(a1 + 8) = v8;
  v12 = (fabs(v10) * 93206.7444 + 0.5);
  if (v10 >= 0.0)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  *(a1 + 16) = v13;
  *(a1 + 20) = v12;
  v14 = (v11 * 46603.3778);
  if (v14 >= 0x800000)
  {
    v14 -= 0x1000000;
  }

  *(a1 + 24) = v14;
  v15 = (log(*(a3 + 200) / 10.0 + 1.0) / 0.0953101798 + 1.0);
  if (v15 >= 0x7F)
  {
    LOBYTE(v15) = 127;
  }

  *(a1 + 30) = v15;
  v16 = (log(*(a3 + 208) / 10.0 + 1.0) / 0.0953101798 + 1.0);
  if (v16 >= 0x7F)
  {
    LOBYTE(v16) = 127;
  }

  *(a1 + 31) = v16;
  v17 = *(a3 + 216);
  *(a1 + 32) = v17;
  v18 = *(a3 + 120);
  if (v18 >= 0.0)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0.0)
  {
    v18 = -v18;
  }

  *(a1 + 36) = v19;
  *(a1 + 28) = v18;
  v20 = (log(*(a3 + 192) / 45.0 + 1.0) / 0.0246926126 + 1.0);
  if (v20 >= 0x7F)
  {
    LOBYTE(v20) = 127;
  }

  *(a1 + 40) = v20;
  *(a1 + 44) = -1;
  *(a1 + 41) = -189;
  *(a1 + 43) = -1;
  if (v17 == 255)
  {
    v21 = 8;
  }

  else
  {
    v21 = 16;
  }

  *(a1 + 12) = v21;
  *(a2 + 16) = a4;
  *a2 = *(a3 + 12);
  *(a2 + 8) = *(a3 + 20);
  *(a2 + 10) = *(a3 + 22);
  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 1);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GAD Lat,%u,Long,%d\n", (*&g_MacClockTicksToMsRelation * v23), "GNM", 73, "Gnm05_43ConvertNavToGpsGad", *(a1 + 20), *(a1 + 24));
    result = LbsOsaTrace_WriteLog(0xBu, __str, v24, 4, 1);
  }

  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm05_55AssignAppInfo(_BYTE *a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 && *a1 == 1)
  {
    v4 = 1;
    v5 = gnssOsa_Calloc("Gnm05_55AssignAppInfo", 1083, 1, 0xC4uLL);
    *a2 = v5;
    if (v5)
    {
      *v5 = 1;
      memcpy_s("Gnm05_55AssignAppInfo", 1091, v5 + 66, 0x41u, a1 + 66, 0x41uLL);
      memcpy_s("Gnm05_55AssignAppInfo", 1092, (*a2 + 1), 0x41u, a1 + 1, 0x41uLL);
      memcpy_s("Gnm05_55AssignAppInfo", 1093, (*a2 + 131), 0x41u, a1 + 131, 0x41uLL);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

BOOL Gnm05_57GenerateInitCLT(__int16 *a1, unsigned int a2, double a3, double **a4, unsigned __int16 *a5)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a2 <= 8)
  {
    v10 = gnssOsa_Calloc("Gnm05_57GenerateInitCLT", 1125, a2, 8uLL);
    v11 = v10;
    if (a2)
    {
      v12 = a2;
      v13 = v10;
      v14 = a2;
      do
      {
        v15 = *a1++;
        *v13++ = a3 + (a3 + a3) * v15 * 0.000000999999997;
        a3 = a3 + a3;
        --v14;
      }

      while (v14);
    }

    else
    {
      v12 = 0;
    }

    v16 = 1 << a2;
    v17 = gnssOsa_Calloc("Gnm05_57GenerateInitCLT", 1138, 1 << a2, 8uLL);
    v18 = 0;
    do
    {
      v19 = 0.0;
      if (a2)
      {
        v20 = v11;
        v21 = v12;
        v22 = v18;
        do
        {
          if (v22)
          {
            v19 = v19 + *v20;
          }

          if (v22 < 2u)
          {
            break;
          }

          v22 >>= 1;
          ++v20;
          --v21;
        }

        while (v21);
      }

      v17[v18++] = v19;
    }

    while (v16 > v18);
    *a4 = v17;
    *a5 = v16;
    if (v11)
    {
      free(v11);
    }
  }

  result = a2 < 9;
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim25_01HandleEeApiStatus(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim25_01HandleEeApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("lsim25_01HandleEeApiStatus", 38, 1, 0x28uLL);
  if (v4)
  {
    v5 = v4;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EEAPI_IND\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim25_01HandleEeApiStatus");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }

    if (g_GnsEeCallback)
    {
      *v5 = *(a1 + 12);
      *(v5 + 2) = *(a1 + 20);
      v5[16] = *(a1 + 24);
      *(v5 + 24) = *(a1 + 32);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>EeCB,Api,%u,Id,%u,Status,%u,DataIntValid,%u,StartGpsSecs,%llu,EndGpsSecs,%llu\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 77, "lsim25_01HandleEeApiStatus", *(v5 + 1), *v5, *(v5 + 2), v5[16], *(v5 + 3), *(v5 + 4));
        LbsOsaTrace_WriteLog(0xCu, __str, v9, 3, 1);
      }

      g_GnsEeCallback(0, 40, v5);
      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        goto LABEL_14;
      }

      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim25_01HandleEeApiStatus");
      v12 = 4;
    }

    else
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
      {
LABEL_14:
        free(v5);
        goto LABEL_15;
      }

      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EE\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 68, "lsim25_01HandleEeApiStatus", 258);
      v12 = 5;
    }

    LbsOsaTrace_WriteLog(0xCu, __str, v11, v12, 1);
    goto LABEL_14;
  }

LABEL_15:
  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim25_01EeCbInit(uint64_t result)
{
  v1 = result;
  v8 = *MEMORY[0x29EDCA608];
  if (result)
  {
LABEL_2:
    g_GnsEeCallback = v1;
    goto LABEL_3;
  }

  if (g_GnsEeCallback)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim25_01EeCbInit", 513);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

    goto LABEL_2;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim25_01EeCbInit", 513);
    result = LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

LABEL_3:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_EeInitialize(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GNS_EeInitialize", 102, 1, 0x18uLL);
  if (v2)
  {
    v2[3] = 8;
    *(v2 + 2) = a1;
    AgpsSendFsmMsg(131, 131, 8635139, v2);
    result = 1;
  }

  else
  {
    result = 6;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_EeInjectOrbitData(int a1, signed __int8 *a2, size_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_EeInjectOrbitData");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ORB\n");
      goto LABEL_9;
    }

LABEL_10:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "GNS_EeInjectOrbitData");
      LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
    }

    v11 = 2;
    goto LABEL_24;
  }

  if ((a3 - 427673) < 0xFFF979E7)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ORBLen,%u\n", v23);
LABEL_9:
      LbsOsaTrace_WriteLog(0xCu, __str, v8, 2, 1);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v12 = gnssOsa_Calloc("GNS_EeInjectOrbitData", 153, 1, 0x28uLL);
  if (v12)
  {
    v13 = v12;
    v14 = gnssOsa_Calloc("GNS_EeInjectOrbitData", 161, a3, 1uLL);
    v13[3] = v14;
    if (v14)
    {
      memcpy_s("GNS_EeInjectOrbitData", 170, v14, a3, a2, a3);
      *(v13 + 8) = a3;
      *(v13 + 3) = a1;
      *(v13 + 4) = 1;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EEDATA_IND =>GNC,ORB,DataLen,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "GNS_EeInjectOrbitData", *(v13 + 8), *(v13 + 3));
        LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
      }

      AgpsSendFsmMsg(131, 134, 8783619, v13);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "GNS_EeInjectOrbitData");
        v11 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
      }

      else
      {
        v11 = 1;
      }

      goto LABEL_24;
    }

    free(v13);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "GNS_EeInjectOrbitData");
    LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
  }

  v11 = 6;
LABEL_24:
  v21 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t GNS_EeInjectRtiData(int a1, signed __int8 *a2, int a3)
{
  v27 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_EeInjectRtiData");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RTI\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 87, "GNS_EeInjectRtiData", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_19;
    }

LABEL_18:
    bzero(__str, 0x410uLL);
    v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v20, "LSM", 73, "GNS_EeInjectRtiData");
    LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
LABEL_19:
    v15 = 2;
    goto LABEL_25;
  }

  if (a3 != 160)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RTILen,%d\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 87, "GNS_EeInjectRtiData", 514, a3);
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v8 = gnssOsa_Calloc("GNS_EeInjectRtiData", 222, 1, 0x28uLL);
  if (v8)
  {
    v9 = v8;
    v10 = gnssOsa_Calloc("GNS_EeInjectRtiData", 230, 160, 1uLL);
    v9[3] = v10;
    if (v10)
    {
      memcpy_s("GNS_EeInjectRtiData", 239, v10, 0xA0u, a2, 0xA0uLL);
      *(v9 + 8) = 160;
      *(v9 + 3) = a1;
      *(v9 + 4) = 2;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EEDATA_IND =>GNC,RTI,DataLen,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_EeInjectRtiData", *(v9 + 8), *(v9 + 3));
        LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
      }

      AgpsSendFsmMsg(131, 134, 8783619, v9);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "GNS_EeInjectRtiData");
        v15 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
      }

      else
      {
        v15 = 1;
      }

      goto LABEL_25;
    }

    free(v9);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "GNS_EeInjectRtiData");
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
  }

  v15 = 6;
LABEL_25:
  v24 = *MEMORY[0x29EDCA608];
  return v15;
}

_BYTE *EvLog(_BYTE *result)
{
  v14 = *MEMORY[0x29EDCA608];
  if (g_Enable_Event_Log < 2u)
  {
    goto LABEL_19;
  }

  v1 = result;
  v2 = mach_continuous_time();
  sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v2));
  v3 = g_CB_ELog++;
  *v3 = 32;
  if (g_CB_ELog >= qword_2A1938F18)
  {
    g_CB_ELog = qword_2A1938F10;
  }

  result = sprintf_10u(&g_CB_ELog, **(p_api + 8));
  v4 = g_CB_ELog++;
  *v4 = 32;
  v5 = g_CB_ELog;
  if (g_CB_ELog >= qword_2A1938F18)
  {
    v5 = qword_2A1938F10;
    g_CB_ELog = qword_2A1938F10;
  }

  v6 = *v1;
  if (*v1)
  {
    v7 = v1 + 1;
    do
    {
      g_CB_ELog = (v5 + 1);
      *v5 = v6;
      v5 = g_CB_ELog;
      if (g_CB_ELog >= qword_2A1938F18)
      {
        v5 = qword_2A1938F10;
        g_CB_ELog = qword_2A1938F10;
      }

      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }

  g_CB_ELog = (v5 + 1);
  *v5 = 10;
  v9 = g_CB_ELog;
  if (g_CB_ELog >= qword_2A1938F18)
  {
    g_CB_ELog = qword_2A1938F10;
    v9 = qword_2A1938F10;
  }

  v10 = dword_2A1938F08 - v9;
  v11 = qword_2A1938F18 - qword_2A1938F10;
  if (v10 > 0)
  {
    v11 = 0;
  }

  if ((v11 + v10) > 0xFF)
  {
LABEL_19:
    v13 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v12 = *MEMORY[0x29EDCA608];

    return GNSS_Event_Log_Ctl(&g_CB_ELog);
  }

  return result;
}

void *EvLog_d(void *result, int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (g_Enable_Event_Log < 2u)
  {
    goto LABEL_19;
  }

  v3 = result;
  v4 = mach_continuous_time();
  sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v4));
  v5 = g_CB_ELog++;
  *v5 = 32;
  if (g_CB_ELog >= qword_2A1938F18)
  {
    g_CB_ELog = qword_2A1938F10;
  }

  sprintf_10u(&g_CB_ELog, **(p_api + 8));
  v6 = g_CB_ELog++;
  *v6 = 32;
  v7 = g_CB_ELog;
  if (g_CB_ELog >= qword_2A1938F18)
  {
    v7 = qword_2A1938F10;
    g_CB_ELog = qword_2A1938F10;
  }

  v8 = *v3;
  if (*v3)
  {
    v9 = v3 + 1;
    do
    {
      g_CB_ELog = (v7 + 1);
      *v7 = v8;
      v7 = g_CB_ELog;
      if (g_CB_ELog >= qword_2A1938F18)
      {
        v7 = qword_2A1938F10;
        g_CB_ELog = qword_2A1938F10;
      }

      v10 = *v9++;
      v8 = v10;
    }

    while (v10);
  }

  result = sprintf_sp1d(&g_CB_ELog, a2);
  v11 = g_CB_ELog++;
  *v11 = 10;
  v12 = g_CB_ELog;
  if (g_CB_ELog >= qword_2A1938F18)
  {
    g_CB_ELog = qword_2A1938F10;
    v12 = qword_2A1938F10;
  }

  v13 = dword_2A1938F08 - v12;
  v14 = qword_2A1938F18 - qword_2A1938F10;
  if (v13 > 0)
  {
    v14 = 0;
  }

  if ((v14 + v13) > 0xFF)
  {
LABEL_19:
    v16 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v15 = *MEMORY[0x29EDCA608];

    return GNSS_Event_Log_Ctl(&g_CB_ELog);
  }

  return result;
}

_BYTE *EvLog_nd(_BYTE *result, int a2, uint64_t a3, ...)
{
  v19 = *MEMORY[0x29EDCA608];
  if (g_Enable_Event_Log >= 2u)
  {
    v4 = result;
    v5 = mach_continuous_time();
    sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v5));
    v6 = g_CB_ELog++;
    *v6 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    result = sprintf_10u(&g_CB_ELog, **(p_api + 8));
    v7 = g_CB_ELog++;
    *v7 = 32;
    v8 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      v8 = qword_2A1938F10;
      g_CB_ELog = qword_2A1938F10;
    }

    v9 = *v4;
    if (*v4)
    {
      v10 = v4 + 1;
      do
      {
        g_CB_ELog = (v8 + 1);
        *v8 = v9;
        v8 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A1938F18)
        {
          v8 = qword_2A1938F10;
          g_CB_ELog = qword_2A1938F10;
        }

        v11 = *v10++;
        v9 = v11;
      }

      while (v11);
    }

    for (i = &a3; a2; --a2)
    {
      v12 = i;
      i += 2;
      result = sprintf_sp1d(&g_CB_ELog, *v12);
    }

    v13 = g_CB_ELog++;
    *v13 = 10;
    v14 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
      v14 = qword_2A1938F10;
    }

    v15 = dword_2A1938F08 - v14;
    v16 = qword_2A1938F18 - qword_2A1938F10;
    if (v15 > 0)
    {
      v16 = 0;
    }

    if ((v16 + v15) <= 0xFF)
    {
      result = GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *EvLog_VecI4(_BYTE *result, unsigned int a2, int *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (g_Enable_Event_Log < 2u)
  {
    goto LABEL_23;
  }

  v5 = result;
  v6 = mach_continuous_time();
  sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v6));
  v7 = g_CB_ELog++;
  *v7 = 32;
  if (g_CB_ELog >= qword_2A1938F18)
  {
    g_CB_ELog = qword_2A1938F10;
  }

  result = sprintf_10u(&g_CB_ELog, **(p_api + 8));
  v8 = g_CB_ELog++;
  *v8 = 32;
  v9 = g_CB_ELog;
  if (g_CB_ELog >= qword_2A1938F18)
  {
    v9 = qword_2A1938F10;
    g_CB_ELog = qword_2A1938F10;
  }

  v10 = *v5;
  if (*v5)
  {
    v11 = v5 + 1;
    do
    {
      g_CB_ELog = (v9 + 1);
      *v9 = v10;
      v9 = g_CB_ELog;
      if (g_CB_ELog >= qword_2A1938F18)
      {
        v9 = qword_2A1938F10;
        g_CB_ELog = qword_2A1938F10;
      }

      v12 = *v11++;
      v10 = v12;
    }

    while (v12);
  }

  if (a2)
  {
    v13 = a2;
    do
    {
      v14 = *a3++;
      result = sprintf_sp1d(&g_CB_ELog, v14);
      --v13;
    }

    while (v13);
    v9 = g_CB_ELog;
  }

  g_CB_ELog = (v9 + 1);
  *v9 = 10;
  v15 = g_CB_ELog;
  if (g_CB_ELog >= qword_2A1938F18)
  {
    g_CB_ELog = qword_2A1938F10;
    v15 = qword_2A1938F10;
  }

  v16 = dword_2A1938F08 - v15;
  v17 = qword_2A1938F18 - qword_2A1938F10;
  if (v16 > 0)
  {
    v17 = 0;
  }

  if ((v17 + v16) > 0xFF)
  {
LABEL_23:
    v19 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v18 = *MEMORY[0x29EDCA608];

    return GNSS_Event_Log_Ctl(&g_CB_ELog);
  }

  return result;
}

char *EvLog_v(char *result, ...)
{
  va_start(va, result);
  v7 = *MEMORY[0x29EDCA608];
  if (g_Enable_Event_Log >= 2u)
  {
    v1 = result;
    v2 = mach_continuous_time();
    sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v2));
    v3 = g_CB_ELog++;
    *v3 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    sprintf_10u(&g_CB_ELog, **(p_api + 8));
    v4 = g_CB_ELog++;
    *v4 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    result = sprintf_v(&g_CB_ELog, v1, va);
    v5 = qword_2A1938F18 - qword_2A1938F10;
    if (dword_2A1938F08 - g_CB_ELog > 0)
    {
      v5 = 0;
    }

    if ((v5 + dword_2A1938F08 - g_CB_ELog) <= 0xFF)
    {
      result = GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DbgLog_v(uint64_t result, char *a2, ...)
{
  va_start(va, a2);
  v3 = result;
  v13 = *MEMORY[0x29EDCA608];
  if (result)
  {
    if (!g_Enable_Nav_Debug)
    {
      goto LABEL_18;
    }

    v4 = g_CB_NDbg;
    v5 = 69;
    v6 = 1u;
    v7 = &g_CB_NDbg;
    do
    {
      g_CB_NDbg = (v4 + 1);
      *v4 = v5;
      v4 = g_CB_NDbg;
      if (g_CB_NDbg >= qword_2A1938ED8)
      {
        v4 = qword_2A1938ED0;
        g_CB_NDbg = qword_2A1938ED0;
      }

      v5 = str_3_6[v6++];
    }

    while (v6 != 4);
  }

  else
  {
    if (g_Enable_Event_Log < 2u)
    {
      goto LABEL_18;
    }

    v8 = mach_continuous_time();
    v7 = &g_CB_ELog;
    sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v8));
    v9 = g_CB_ELog++;
    *v9 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }
  }

  sprintf_10u(v7, **(p_api + 8));
  v10 = (*v7)++;
  *v10 = 32;
  if (*v7 >= v7[3])
  {
    *v7 = v7[2];
  }

  result = sprintf_v(v7, a2, va);
  if ((v3 & 1) == 0)
  {
    v11 = *(v7 + 2) - *v7;
    if (v11 <= 0)
    {
      v11 += *(v7 + 6) - *(v7 + 4);
    }

    if (v11 <= 0xFF)
    {
      result = GNSS_Event_Log_Ctl(v7);
    }
  }

LABEL_18:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void *EvCrt_d(void *result, int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (!g_Enable_Event_Log)
  {
    goto LABEL_19;
  }

  v3 = result;
  v4 = mach_continuous_time();
  sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v4));
  v5 = g_CB_ELog++;
  *v5 = 32;
  if (g_CB_ELog >= qword_2A1938F18)
  {
    g_CB_ELog = qword_2A1938F10;
  }

  sprintf_10u(&g_CB_ELog, **(p_api + 8));
  v6 = g_CB_ELog++;
  *v6 = 32;
  v7 = g_CB_ELog;
  if (g_CB_ELog >= qword_2A1938F18)
  {
    v7 = qword_2A1938F10;
    g_CB_ELog = qword_2A1938F10;
  }

  v8 = *v3;
  if (*v3)
  {
    v9 = v3 + 1;
    do
    {
      g_CB_ELog = (v7 + 1);
      *v7 = v8;
      v7 = g_CB_ELog;
      if (g_CB_ELog >= qword_2A1938F18)
      {
        v7 = qword_2A1938F10;
        g_CB_ELog = qword_2A1938F10;
      }

      v10 = *v9++;
      v8 = v10;
    }

    while (v10);
  }

  result = sprintf_sp1d(&g_CB_ELog, a2);
  v11 = g_CB_ELog++;
  *v11 = 10;
  v12 = g_CB_ELog;
  if (g_CB_ELog >= qword_2A1938F18)
  {
    g_CB_ELog = qword_2A1938F10;
    v12 = qword_2A1938F10;
  }

  v13 = dword_2A1938F08 - v12;
  v14 = qword_2A1938F18 - qword_2A1938F10;
  if (v13 > 0)
  {
    v14 = 0;
  }

  if ((v14 + v13) <= 0xFF)
  {
    v15 = *MEMORY[0x29EDCA608];

    return GNSS_Event_Log_Ctl(&g_CB_ELog);
  }

  else
  {
LABEL_19:
    v16 = *MEMORY[0x29EDCA608];
  }

  return result;
}

_BYTE *EvCrt_nd(_BYTE *result, int a2, uint64_t a3, ...)
{
  v19 = *MEMORY[0x29EDCA608];
  if (g_Enable_Event_Log)
  {
    v4 = result;
    v5 = mach_continuous_time();
    sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v5));
    v6 = g_CB_ELog++;
    *v6 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    result = sprintf_10u(&g_CB_ELog, **(p_api + 8));
    v7 = g_CB_ELog++;
    *v7 = 32;
    v8 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      v8 = qword_2A1938F10;
      g_CB_ELog = qword_2A1938F10;
    }

    v9 = *v4;
    if (*v4)
    {
      v10 = v4 + 1;
      do
      {
        g_CB_ELog = (v8 + 1);
        *v8 = v9;
        v8 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A1938F18)
        {
          v8 = qword_2A1938F10;
          g_CB_ELog = qword_2A1938F10;
        }

        v11 = *v10++;
        v9 = v11;
      }

      while (v11);
    }

    for (i = &a3; a2; --a2)
    {
      v12 = i;
      i += 2;
      result = sprintf_sp1d(&g_CB_ELog, *v12);
    }

    v13 = g_CB_ELog++;
    *v13 = 10;
    v14 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
      v14 = qword_2A1938F10;
    }

    v15 = dword_2A1938F08 - v14;
    v16 = qword_2A1938F18 - qword_2A1938F10;
    if (v15 > 0)
    {
      v16 = 0;
    }

    if ((v16 + v15) <= 0xFF)
    {
      result = GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

char *EvCrt_v(char *result, ...)
{
  va_start(va, result);
  v7 = *MEMORY[0x29EDCA608];
  if (g_Enable_Event_Log)
  {
    v1 = result;
    v2 = mach_continuous_time();
    sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v2));
    v3 = g_CB_ELog++;
    *v3 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    sprintf_10u(&g_CB_ELog, **(p_api + 8));
    v4 = g_CB_ELog++;
    *v4 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    result = sprintf_v(&g_CB_ELog, v1, va);
    v5 = qword_2A1938F18 - qword_2A1938F10;
    if (dword_2A1938F08 - g_CB_ELog > 0)
    {
      v5 = 0;
    }

    if ((v5 + dword_2A1938F08 - g_CB_ELog) <= 0xFF)
    {
      result = GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void *EvCrt_Illegal_Default(void *result, unsigned int a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!g_Enable_Event_Log)
  {
    goto LABEL_23;
  }

  v3 = result;
  v4 = mach_continuous_time();
  sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v4));
  v5 = g_CB_ELog++;
  *v5 = 32;
  if (g_CB_ELog >= qword_2A1938F18)
  {
    g_CB_ELog = qword_2A1938F10;
  }

  sprintf_10u(&g_CB_ELog, **(p_api + 8));
  v6 = g_CB_ELog++;
  *v6 = 32;
  v7 = g_CB_ELog;
  if (g_CB_ELog >= qword_2A1938F18)
  {
    v7 = qword_2A1938F10;
    g_CB_ELog = qword_2A1938F10;
  }

  v8 = *v3;
  if (*v3)
  {
    v9 = v3 + 1;
    do
    {
      g_CB_ELog = (v7 + 1);
      *v7 = v8;
      v7 = g_CB_ELog;
      if (g_CB_ELog >= qword_2A1938F18)
      {
        v7 = qword_2A1938F10;
        g_CB_ELog = qword_2A1938F10;
      }

      v10 = *v9++;
      v8 = v10;
    }

    while (v10);
  }

  v11 = 58;
  v12 = 1u;
  do
  {
    g_CB_ELog = (v7 + 1);
    *v7 = v11;
    v7 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      v7 = qword_2A1938F10;
      g_CB_ELog = qword_2A1938F10;
    }

    v11 = str_5_7[v12++];
  }

  while (v12 != 46);
  result = sprintf_1u(&g_CB_ELog, a2);
  v13 = g_CB_ELog++;
  *v13 = 10;
  v14 = g_CB_ELog;
  if (g_CB_ELog >= qword_2A1938F18)
  {
    g_CB_ELog = qword_2A1938F10;
    v14 = qword_2A1938F10;
  }

  v15 = dword_2A1938F08 - v14;
  v16 = qword_2A1938F18 - qword_2A1938F10;
  if (v15 > 0)
  {
    v16 = 0;
  }

  if ((v16 + v15) <= 0xFF)
  {
    v17 = *MEMORY[0x29EDCA608];

    return GNSS_Event_Log_Ctl(&g_CB_ELog);
  }

  else
  {
LABEL_23:
    v18 = *MEMORY[0x29EDCA608];
  }

  return result;
}

double Comp_Sig_TOT(int a1, int a2, unsigned int a3, double a4, double a5)
{
    ;
  }

  while (i < 0.0)
  {
    i = i + a5;
  }

  v6 = a5 + -600.0;
  while (a4 - i > v6)
  {
    i = i + a5;
  }

  while (i - a4 > v6)
  {
    i = i - a5;
  }

  v7 = *MEMORY[0x29EDCA608];
  v8 = *MEMORY[0x29EDCA608];
  return i;
}

double *UTC_To_GPS_Time(__int16 *a1, double *a2, int a3, unsigned int a4, int a5, int a6, int a7, int a8, double a9, unsigned __int16 a10)
{
  v16 = *MEMORY[0x29EDCA608];
  v10 = a3 - 1898;
  if (a3 >= 1901)
  {
    v10 = a3 - 1901;
  }

  v11 = (a3 & 3) == 0 && a4 > 2;
  v12 = 365 * (a3 - 1901) + (v10 >> 2) + a5;
  if (v11)
  {
    ++v12;
  }

  v13 = v12 + Days_to_Month[a4 - 1] - 28860;
  *a1 = v13 / 7;
  *a2 = (3600 * a6 + 60 * a7 + a8 + 86400 * (v13 % 7)) + a10 * 0.001;
  v14 = *MEMORY[0x29EDCA608];

  return Inc_GPS_TOW(a9, a2, a1);
}

void *plc00_03DecodeMsg(int a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned __int16 *a5, _DWORD *a6, unsigned __int8 *a7, int a8)
{
  v38 = *MEMORY[0x29EDCA608];
  v28 = 0;
  __s = 0;
  v35 = 0;
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  v27 = 0;
  result = memset_s(&__s, 0x98uLL, 0, 0x98uLL);
  if (a1 < 3)
  {
    v31 = a3;
    v29 = a2;
    v30 = 0;
    v32 = a4;
    v33 = 133955584;
    v36[138] = *(a6 + 144);
    plc01_01DecHeader(&v29, a7, &v28, &__s);
    if (__s)
    {
      goto LABEL_4;
    }

    if (v28 + 9 != a3)
    {
      __s = 7;
      if (v36[138] != 1)
      {
        goto LABEL_4;
      }

      snprintf(&v36[10], 0x80uLL, "D HDR PL %d != L %d", v28, a3 - 9);
      if (__s)
      {
        goto LABEL_4;
      }
    }

    if (a1 != 2)
    {
      if (a1 == 1)
      {
        goto LABEL_12;
      }

      if (a1)
      {
        goto LABEL_13;
      }
    }

    plc00_04GetPayloadFields(a7, g_ListAll_Chip2Host, &v27, &__s, a8);
    if (a1)
    {
      goto LABEL_13;
    }

    if (!__s)
    {
      goto LABEL_14;
    }

LABEL_12:
    plc00_04GetPayloadFields(a7, g_ListAll_Host2Chip, &v27, &__s, a8);
LABEL_13:
    if (!__s)
    {
LABEL_14:
      v30 = 8;
      v18 = v27;
      if (a3 <= 0xB)
      {
        v19 = -1;
      }

      else
      {
        v19 = -3;
      }

      if ((*(v27 + 4) & 0x1000) != 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = -1;
      }

      v31 = v20 + a3;
      plc00_13CodecProcess(1, &v29, v27, &v32, &__s);
      if (!__s && (*(v18 + 4) & 0xE000) != 0x2000 && a3 >= 0xA && (*(v18 + 4) & 0x1000) != 0)
      {
        __dst = 0;
        if (v31 - 3 <= v30)
        {
          v21 = v29;
          memcpy_s("plc00_03DecodeMsg", 222, &__dst, 2u, (v29 + v30), 2uLL);
          if (v28 < 3uLL)
          {
            v22 = 0;
          }

          else
          {
            v22 = 0;
            v23 = (v21 + 8);
            v24 = v28 - 2;
            do
            {
              v25 = *v23++;
              v22 += v25;
              --v24;
            }

            while (v24);
          }

          if (v22 != __dst)
          {
            __s = 21;
            if (v36[138] == 1)
            {
              snprintf(&v36[10], 0x80uLL, "D PL CS %d != %d\n", __dst, v22);
            }
          }
        }

        else
        {
          __s = 22;
        }
      }
    }

LABEL_4:
    result = memcpy_s("plc00_03DecodeMsg", 243, a6, 0x94u, &__s, 0x94uLL);
    *a5 = v30;
    goto LABEL_5;
  }

  *a6 = 51;
  *(a6 + 3) = 0;
LABEL_5:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t plc00_13CodecProcess(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 4) >> 13;
  if (v5 == 1)
  {
LABEL_15:
    v14 = *MEMORY[0x29EDCA608];
    return result;
  }

  v8 = result;
  if (v5 != 3)
  {
    if (v5 == 2)
    {
      if (result == 1)
      {
        v9 = a4;
      }

      else
      {
        v9 = a2;
      }

      v10 = *(v9 + 8);
      result = plc03_06CodecFields(result, a2, *(a3 + 8), *(a3 + 3), a4, a5);
      if (!*a5)
      {
        v11 = (*(v9 + 8) - v10);
        if (v11 != (*(a3 + 4) & 0xFFF))
        {
          *a5 = 56;
          if (*(a5 + 144) == 1)
          {
            result = snprintf((a5 + 16), 0x80uLL, "%c PL T %d != S %d\n", g_CodecChar[v8], v11, *(a3 + 4) & 0xFFF);
          }
        }
      }
    }

    else
    {
      *a5 = 53;
    }

    goto LABEL_15;
  }

  v12 = *(a3 + 8);
  v13 = *MEMORY[0x29EDCA608];

  return v12(result, a4, a4, a5, a4);
}

unsigned __int8 *plc00_04GetPayloadFields(unsigned __int8 *result, unsigned __int8 *a2, void *a3, int *a4, int a5)
{
  v12 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  if (!*(a2 + 1))
  {
    goto LABEL_17;
  }

  v5 = *result;
  do
  {
    v6 = *a2;
    a2 += 16 * (v6 != v5);
    v7 = *(a2 + 1);
  }

  while (v6 != v5 && v7 != 0);
  if (v6 == v5)
  {
    v9 = a2[1];
    if (a2[1])
    {
      while (v7[1] != result[1] || v7[2] && (v7[2] != result[2] || *v7 && *v7 != a5))
      {
        v7 += 16;
        if (!--v9)
        {
          goto LABEL_16;
        }
      }

      v10 = 0;
      *a3 = v7;
    }

    else
    {
LABEL_16:
      v10 = 5;
    }
  }

  else
  {
LABEL_17:
    v10 = 4;
  }

  *a4 = v10;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t plc00_05EncodeMsg(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, __int16 a5, unsigned __int16 *a6, uint64_t a7, int a8)
{
  v39 = *MEMORY[0x29EDCA608];
  *__s = 0;
  __s[4] = 0;
  memset(&__s[6], 0, 139);
  v38 = 0;
  v31 = 0;
  result = memset_s(__s, 0x98uLL, 0, 0x98uLL);
  if (a1 < 3)
  {
    __s[144] = *(a7 + 144);
    v35 = a3;
    v36 = 133955584;
    v32 = a4;
    v33 = 8;
    result = plc00_07GetPayloadFieldsEnc(a1, a2, &v31, __s, a8);
    v17 = a5 - 1;
    v34 = a5 - 1;
    v18 = *__s;
    v19 = v31;
    if (!*__s && v31)
    {
      if ((*(v31 + 4) & 0x1000) != 0)
      {
        v34 = a5 - 3;
      }

      result = plc00_13CodecProcess(0, &v35, v31, &v32, __s);
      v18 = *__s;
    }

    v20 = 0;
    if (!v18 && v19)
    {
      v21 = v33;
      *a6 = v33;
      v22 = v21 >= 8;
      v23 = v21 - 8;
      if (v23 != 0 && v22)
      {
        v24 = *(v19 + 4);
        v25 = (v24 >> 11) & 2 | 1;
      }

      else
      {
        LOWORD(v23) = 0;
        v24 = *(v19 + 4);
        LOWORD(v25) = 1;
      }

      result = plc00_10EncodeHdrPlCs(a2, v32, v17, v23, (v24 >> 12) & 1, __s);
      v20 = v33 + v25;
    }

    *a6 = v20;
    v26 = *&__s[112];
    *(a7 + 96) = *&__s[96];
    *(a7 + 112) = v26;
    *(a7 + 128) = *&__s[128];
    *(a7 + 144) = __s[144];
    v27 = *&__s[48];
    *(a7 + 32) = *&__s[32];
    *(a7 + 48) = v27;
    v28 = *&__s[80];
    *(a7 + 64) = *&__s[64];
    *(a7 + 80) = v28;
    v29 = *&__s[16];
    *a7 = *__s;
    *(a7 + 16) = v29;
  }

  else
  {
    *a7 = 51;
    *(a7 + 6) = 0;
  }

  v30 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int8 *plc00_07GetPayloadFieldsEnc(unsigned __int8 *result, unsigned __int8 *a2, void *a3, int *a4, int a5)
{
  v9 = result;
  v12 = *MEMORY[0x29EDCA608];
  if (result != 2)
  {
    if (result == 1)
    {
      goto LABEL_7;
    }

    if (result)
    {
      goto LABEL_10;
    }
  }

  result = plc00_04GetPayloadFields(a2, g_ListAll_Host2Chip, a3, a4, a5);
  if (v9 != 1 && (v9 || !*a4))
  {
LABEL_10:
    v11 = *MEMORY[0x29EDCA608];
    return result;
  }

LABEL_7:
  v10 = *MEMORY[0x29EDCA608];

  return plc00_04GetPayloadFields(a2, g_ListAll_Chip2Host, a3, a4, a5);
}

_BYTE *plc00_10EncodeHdrPlCs(_BYTE *a1, uint64_t a2, int a3, unsigned int a4, int a5, uint64_t a6)
{
  v24 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v15 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  memset(v23, 0, 27);
  v23[30] = 0;
  memset_s(&v14, 0x98uLL, 0, 0x98uLL);
  *a6 = 0;
  if (a4 && a5)
  {
    plc00_14AddPlCs((a2 + 8), (a3 - 8), a4);
    LOWORD(a4) = a4 + 2;
  }

  result = plc02_01EncHeader(a1, a4, a2, a3, &v14);
  *(a2 + a4 + 8) = 10;
  *a6 = v14;
  *(a6 + 6) = 0;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t plc00_09GetPayloadLength(unsigned __int8 *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  __dst = 0;
  memcpy_s("plc00_09GetPayloadLength", 541, &__dst, 2u, a1 + 5, 2uLL);
  v1 = *MEMORY[0x29EDCA608];
  return (__dst + 1);
}

void *plc00_14AddPlCs(unsigned __int8 *a1, int a2, unsigned int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v3 = 0;
    v4 = a3;
    v5 = a1;
    v6 = a3;
    do
    {
      v7 = *v5++;
      v3 += v7;
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  __src = v3;
  result = memcpy_s("plc00_14AddPlCs", 748, &a1[v4], a2 - a3, &__src, 2uLL);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL plc00_15GetExtErrAsString(uint64_t a1, char *__s, rsize_t __smax)
{
  v3 = __smax;
  v26 = *MEMORY[0x29EDCA608];
  memset_s(__s, __smax, 0, __smax);
  if (v3 >= 0x104)
  {
    v6 = a1 + 8;
    snprintf(__str, 0x40uLL, "ErrCode,%u", *a1);
    v7 = strnlen(__str, 0x40uLL);
    memcpy_s("plc00_15GetExtErrAsString", 797, __s, 0x104u, __str, v7);
    v8 = 0;
    __s[v7] = 32;
    __s[(v7 + 1)] = 58;
    __s[(v7 + 2)] = 32;
    v9 = v7 + 4;
    __s[(v7 + 3)] = 80;
    v10 = v7 + 5;
    __s[v9] = 76;
    do
    {
      v11 = *(v6 + v8);
      if (*(v6 + v8))
      {
        v12 = v11 >> 6;
        __s[v10] = 45;
        __s[(v10 + 1)] = 62;
        v13 = v11 & 0x3F;
        if (v12 == 2)
        {
          v14 = 85;
        }

        else
        {
          v14 = 70;
        }

        if (v12 == 1)
        {
          v15 = 65;
        }

        else
        {
          v15 = v14;
        }

        __s[(v10 + 2)] = v15;
        __s[(v10 + 3)] = 40;
        if (v13 < 0xA)
        {
          v16 = v10 + 4;
        }

        else
        {
          v16 = v10 + 5;
          __s[(v10 + 4)] = ((26 * v13) >> 8) | 0x30;
          LOBYTE(v13) = v13 - 10 * ((26 * v13) >> 8);
        }

        __s[v16] = v13 + 48;
        v10 = v16 + 2;
        __s[(v16 + 1)] = 41;
      }

      ++v8;
    }

    while (v8 != 8);
    v17 = strnlen((a1 + 16), 0x80uLL);
    __s[v10] = 32;
    __s[(v10 + 1)] = 58;
    v18 = v10 + 3;
    __s[(v10 + 2)] = 32;
    v19 = &__s[(v10 + 3)];
    v20 = 260 - (v10 + 3);
    if (v17)
    {
      if (v17 >= 0x80u)
      {
        v21 = 128;
      }

      else
      {
        v21 = v17;
      }

      memcpy_s("plc00_15GetExtErrAsString", 877, v19, v20, (a1 + 16), v21);
      v22 = v18 + v21;
    }

    else
    {
      memcpy_s("plc00_15GetExtErrAsString", 884, v19, v20, "NO ERROR DETAIL", 0xFuLL);
      v22 = v10 + 18;
    }

    __s[v22] = 0;
  }

  result = v3 > 0x103;
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t send_is_supl_last_transaction(int a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = lpp_session_exists(a1);
  if (!v1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 69, "send_is_supl_last_transaction", 2052);
      v4 = 1;
      LbsOsaTrace_WriteLog(0x13u, __str, v6, 0, 1);
      goto LABEL_11;
    }

LABEL_10:
    v4 = 1;
    goto LABEL_11;
  }

  v2 = **(v1 + 40);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = 0;
  do
  {
    if (*(v2 + 25) == 1)
    {
      v3 = 1;
    }

    v2 = *v2;
  }

  while (v2);
  v4 = v3 ^ 1;
LABEL_11:
  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

void send_supl_caps_rsp(int a1, int a2, int a3, void *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionID,%u,result,%u\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 73, "send_supl_caps_rsp", a1, a2);
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 4, 1);
  }

  v12 = a2 != 0;
  *__str = a1;
  v14 = a4;
  v13 = a3;
  is_supl_last_transaction = send_is_supl_last_transaction(a1);
  HandleLppCapsResponse(__str);
  if (a4)
  {
    free(a4);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void send_supl_pos_ind(int a1, int a2, int a3, void *a4, char a5)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionID,%u,result,%u\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 73, "send_supl_pos_ind", a1, a2);
    LbsOsaTrace_WriteLog(0x13u, __str, v11, 4, 1);
  }

  v16 = a2 != 0;
  v17 = a1;
  *__str = a3;
  v14 = a4;
  v18 = a5;
  is_supl_last_transaction = send_is_supl_last_transaction(a1);
  HandleLppPosResponse(__str);
  if (a4)
  {
    free(a4);
  }

  v12 = *MEMORY[0x29EDCA608];
}

void send_lpm_supl_ad_rsp(int a1, int a2, unsigned int *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionID,%u,result,%u\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 73, "send_lpm_supl_ad_rsp", a1, a2);
    LbsOsaTrace_WriteLog(0x13u, __str, v7, 4, 1);
  }

  if (a2)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = gnssOsa_Calloc("posp_alloc", 18, 1, *a3);
    memcpy_s("send_lpm_supl_ad_rsp", 92, v8, *a3, *(a3 + 1), *a3);
    v9 = *a3;
  }

  v14 = a2 != 0;
  v13 = v8;
  *__str = a1;
  v12 = v9;
  is_supl_last_transaction = send_is_supl_last_transaction(a1);
  HandleLppAdResponse(__str);
  if (v8)
  {
    free(v8);
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t PERDecode(unsigned int *a1, unsigned __int8 *a2, int *a3)
{
  v17[1] = *MEMORY[0x29EDCA608];
  result = *a1;
  if (!result)
  {
    v7 = setjmp(a1 + 1);
    *(a1 + 196) = 1;
    if (v7)
    {
      MMSRelease(a1);
    }

    else
    {
      *a1 = 0;
      v17[0] = 0;
      *(a1 + 25) = a2;
      *(a1 + 89) = 1;
      *(a1 + 130) = a2;
      *(a1 + 131) = a3;
      v8 = (*(a1 + 106))(a1, v17);
      *(a1 + 134) = v8;
      *(a1 + 135) = v8 + v17[0];
      v9 = (*(a1 + 110))(a1, a1 + 276);
      *(a1 + 136) = v9;
      if (*(a1 + 1104) != 7)
      {
        *(a1 + 136) = v9 + 1;
      }

      v10 = (*(a1 + 108))(a1, a1 + 1105);
      *(a1 + 137) = v10;
      v11 = *(a1 + 1105);
      if ((*(a1 + 1057) & 8) == 0)
      {
        *(a1 + 132) = 2080;
      }

      v12 = v11;
      *(a1 + 139) = 0;
      PERDecVal(a1, a2, a3, 0);
      if (*(a1 + 137) == v10 && *(a1 + 1105) == v12)
      {
        PERGetByte(a1);
      }

      if ((a1[264] & 0x10) != 0)
      {
        v14 = *(a1 + 137);
        v15 = *(a1 + 1105);
      }

      else
      {
        v13 = *(a1 + 1105);
        v14 = *(a1 + 137);
        if (v13 != 7)
        {
          *v14 &= -2 << v13;
          v14 = (*(a1 + 137) + 1);
          *(a1 + 137) = v14;
          *(a1 + 1105) = 7;
        }

        v15 = 7;
      }

      (*(a1 + 109))(a1, &v14[-v10], v15);
      *(a1 + 133) = v12 - *(a1 + 1105) + 8 * (*(a1 + 137) - v10);
      SDLFinalizeValue(a1, a2, a3);
    }

    *(a1 + 196) = 0;
    result = *a1;
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim26_01HandleInitCalibReq(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim26_01HandleInitCalibReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_INIT_CALIB_REQ\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim26_01HandleInitCalibReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (g_GnsXOCallback)
  {
    v6 = gnssOsa_Calloc("lsim26_01HandleInitCalibReq", 50, 1, 4uLL);
    if (v6)
    {
      v7 = v6;
      memcpy_s("lsim26_01HandleInitCalibReq", 60, v6, 1u, (a1 + 12), 1uLL);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:INIT_CAL_REQ =>XoCB\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim26_01HandleInitCalibReq");
        LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
      }

      g_GnsXOCallback(0, 4, v7);
      free(v7);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
LABEL_28:
        bzero(__str, 0x410uLL);
        v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v24, "LSM", 73, "lsim26_01HandleInitCalibReq");
        LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InitCalReq\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 69, "lsim26_01HandleInitCalibReq", 1537);
        LbsOsaTrace_WriteLog(0xCu, __str, v19, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XoCal\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 87, "lsim26_01HandleInitCalibReq", 258);
      LbsOsaTrace_WriteLog(0xCu, __str, v11, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim26_02InitCalibErrRsp");
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
    }

    v14 = gnssOsa_Calloc("lsim26_02InitCalibErrRsp", 78, 1, 0x50uLL);
    if (v14)
    {
      v15 = v14;
      v14[3] = 12;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_CALIB_RSP =>GNM,Status,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "lsim26_02InitCalibErrRsp", v15[3]);
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
      }

      AgpsSendFsmMsg(131, 128, 8604420, v15);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InitCalRsp\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 69, "lsim26_02InitCalibErrRsp", 1537);
      LbsOsaTrace_WriteLog(0xCu, __str, v21, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "lsim26_02InitCalibErrRsp");
      LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_28;
    }
  }

  v26 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim26_03XoCbInit(uint64_t result)
{
  v1 = result;
  v8 = *MEMORY[0x29EDCA608];
  if (result)
  {
LABEL_2:
    g_GnsXOCallback = v1;
    goto LABEL_3;
  }

  if (g_GnsXOCallback)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim26_03XoCbInit", 513);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

    goto LABEL_2;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim26_03XoCbInit", 513);
    result = LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

LABEL_3:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_XOSetCallback(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GNS_XOSetCallback", 124, 1, 0x18uLL);
  if (v2)
  {
    v2[3] = 13;
    *(v2 + 2) = a1;
    AgpsSendFsmMsg(131, 131, 8635139, v2);
    result = 1;
  }

  else
  {
    result = 6;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_XOInitCalInd(const void *a1, const void *a2, const void *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_XOInitCalInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InitCal\n");
LABEL_17:
    LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
    goto LABEL_18;
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CurrSrcCal\n");
    goto LABEL_17;
  }

  if (a3)
  {
    v8 = gnssOsa_Calloc("GNS_XOInitCalInd", 185, 1, 0x50uLL);
    if (v8)
    {
      v9 = v8;
      memcpy_s("GNS_XOInitCalInd", 195, v8 + 12, 0x2Cu, a1, 0x2CuLL);
      memcpy_s("GNS_XOInitCalInd", 196, v9 + 56, 0x12u, a2, 0x12uLL);
      memcpy_s("GNS_XOInitCalInd", 197, v9 + 74, 4u, a3, 4uLL);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_CALIB_RSP =>GNM,Status,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 77, "GNS_XOInitCalInd", *(v9 + 3));
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 3, 1);
      }

      AgpsSendFsmMsg(131, 128, 8604420, v9);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "GNS_XOInitCalInd");
        v14 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XoInitCal\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 87, "GNS_XOInitCalInd", 1537);
        LbsOsaTrace_WriteLog(0xCu, __str, v21, 2, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "GNS_XOInitCalInd");
        LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
      }

      v14 = 6;
    }

    goto LABEL_21;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AdcPreCal\n");
    goto LABEL_17;
  }

LABEL_18:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GNS_XOInitCalInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
  }

  v14 = 2;
LABEL_21:
  v18 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t GNS_XOLearntCurveInd()
{
  v5 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XoLearntCurve\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 87, "GNS_XOLearntCurveInd", 1026);
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 2, 1);
  }

  v2 = *MEMORY[0x29EDCA608];
  return 3;
}

uint64_t Is_GN_API_Set_Allowed(const char *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *p_api;
  if (v1 <= 7 && ((0x93u >> v1) & 1) != 0)
  {
    EvCrt_v("%s:  FAILED:  Not allowed when in %s Mode", a1, off_29EF27BD0[v1]);
    result = 0;
  }

  else
  {
    result = 1;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL API_Set_Inter_Chan_Bias_Model(unsigned __int16 a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a2 >= 6)
  {
    EvCrt_d("API_Set_Inter_Chan_Bias_Model:  FAILED  Illegal ME RF Type", a2);
  }

  else
  {
    Init_Set_Inter_Chan_Bias(*(p_api + 72), a2);
  }

  result = a2 < 6;
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t API_Set_TSX_ClkCorr_Params(double a1, double a2, unsigned int a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    if (a3 >= 0xFA1)
    {
      v5 = 4000;
      EvLog_v("API_Set_TSX_ClkCorr_Params: Offset Unc %d capped to %d ppb");
LABEL_6:
      LOWORD(a3) = v5;
      goto LABEL_7;
    }

    if (a3 <= 0xAE)
    {
      v5 = 175;
      EvLog_v("API_Set_TSX_ClkCorr_Params: Offset Unc %d increased to %d ppb");
      goto LABEL_6;
    }
  }

LABEL_7:
  v6 = *(p_api + 72);
  *(v6 + 232) = a1;
  *(v6 + 240) = a2;
  *(v6 + 248) = a3;
  v7 = *MEMORY[0x29EDCA608];
  return 1;
}

BOOL API_Set_Config(uint64_t a1)
{
  v17[1] = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = *(p_api + 72);
    *(v2 + 24) = *(a1 + 12);
    *(v2 + 28) = *(a1 + 16);
    *(v2 + 72) = *(a1 + 17);
    v3 = *(a1 + 8);
    *(v2 + 12) = v3;
    *(v2 + 73) = 0;
    if (v3 == 1 || v3 == 2)
    {
      *(v2 + 73) = v3;
    }

    if (*a1 == 1)
    {
      *(v2 + 4) = 0x100000001;
    }

    else if (*a1)
    {
      *(v2 + 4) = 2;
    }

    else
    {
      *(v2 + 4) = 0;
      *(v2 + 8) = 0;
    }

    if (*(a1 + 32))
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(v2 + 66) = v4;
    API_Set_FixInterval(*(a1 + 34));
    *(v2 + 1012) = *(a1 + 36);
    *(v2 + 1020) = *(a1 + 44);
    *(v2 + 1052) = 60000 * *(a1 + 48);
    *(v2 + 1024) = *(a1 + 58);
    v5 = *(a1 + 60);
    if (v5 < 0x400)
    {
      LOWORD(v5) = 1930;
    }

    *(v2 + 1026) = v5;
    *(v2 + 41) = *(a1 + 28);
    *(v2 + 39) = *(a1 + 26);
    *(v2 + 31) = *(a1 + 18);
    *(v2 + 40) = *(a1 + 27);
    *(v2 + 1028) = *(a1 + 62);
    *(v2 + 43) = *(a1 + 30);
    *(v2 + 46) = *(a1 + 31);
    *(v2 + 68) = *(a1 + 4);
    v6 = *(a1 + 46);
    if (v6 == 255)
    {
      v7 = -1;
    }

    else
    {
      v7 = 60000 * v6;
    }

    *(v2 + 1060) = v7;
    *(v2 + 1120) = *(a1 + 88);
    *(v2 + 1132) = *(a1 + 96);
    *(v2 + 1134) = *(a1 + 98);
    g_Enable_Nav_Debug = *(a1 + 50);
    g_Enable_GNB_Debug = *(a1 + 52);
    g_Enable_Event_Log = *(a1 + 54);
    g_Enable_LCD_Debug = *(a1 + 56);
    v17[0] = 0.0;
    if (!R8_EQ((a1 + 64), v17) || (v16 = 0.0, !R8_EQ((a1 + 72), &v16)) || (v15 = 0, !R8_EQ((a1 + 80), &v15)))
    {
      v8 = *(p_api + 176);
      v8[1689].__cosval = *(a1 + 64) * 0.0174532925;
      v8[1690].__sinval = *(a1 + 72) * 0.0174532925;
      v8[1690].__cosval = *(a1 + 80);
      Geo2ECEF(&v8[1689].__cosval, &WGS84_Datum, &v8[1688].__sinval);
      v9 = __sincos_stret(v8[1689].__cosval);
      v8[1691] = v9;
      v10 = 1.0 / sqrt(v9.__sinval * v9.__sinval * -0.00669437999 + 1.0);
      cosval = v8[1690].__cosval;
      v12 = v9.__cosval * (cosval + v10 * 6378137.0);
      if (v12 < 1.0)
      {
        v12 = 1.0;
      }

      v8[1692].__cosval = v12;
      v8[1692].__sinval = cosval + v10 * (v10 * v10) * 6335439.33;
    }
  }

  result = a1 != 0;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t API_Set_FixInterval(int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(p_api + 72);
  v3 = *(v2 + 952);
  if (!v3)
  {
    v4 = *(v2 + 948);
    if (a1 == v4)
    {
      goto LABEL_14;
    }

    v5 = *p_api;
    if (*p_api <= 0xBu)
    {
      if (((1 << v5) & 0xE48) != 0)
      {
        v7 = *(p_api + 160);
        v8 = v7[117];
        v9 = v7[134];
        v10 = v7[112];
        if ((v9 + v8 - v10 - (*&g_MacClockTicksToMsRelation * mach_continuous_time())) > 99)
        {
          v11 = v7[134] + a1 - *(v2 + 948);
          EvLog_v("API_Set_FixInterval:  GNSS_Exe_State   RUNNING(%d) Fix_Int %d %d", *p_api, *(v2 + 948), a1);
          *(v2 + 948) = a1;
          v7[134] = v11;
          G5K_ME_enc_n(*(p_api + 352), v11, a1);
          GNSS_Write_GNB_Ctrl(*(p_api + 352));
          goto LABEL_14;
        }

        v5 = *p_api;
        v4 = *(v2 + 948);
      }

      else if (((1 << v5) & 0x93) != 0)
      {
        v6 = 0;
LABEL_9:
        EvLog_v("API_Set_FixInterval:  GNSS_Exe_State NOT RUNNING(%d) Fix_Int %d %d", v5, v6, a1);
        *(v2 + 948) = a1;
        *(v2 + 952) = 0;
        goto LABEL_14;
      }

      *(v2 + 952) = a1;
      EvLog_v("API_Set_FixInterval:  GNSS_Exe_State   RUNNING(%d) Fix_Int To Be Updated %d %d", v5, v4, a1);
      goto LABEL_14;
    }

    EvCrt_Illegal_Default("API_Set_FixInterval", 0x2F2u);
    v5 = *p_api;
    v6 = *(v2 + 952);
    goto LABEL_9;
  }

  if (a1 != v3)
  {
    EvLog_v("API_Set_FixInterval:  Fix_Int Update Pending %d %d", *(v2 + 952), a1);
    *(v2 + 952) = a1;
  }

LABEL_14:
  v12 = *MEMORY[0x29EDCA608];
  return 1;
}

BOOL API_Query_Config(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    *(a1 + 96) = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v1 = p_api;
    v2 = *(p_api + 72);
    v3 = *(v2 + 4);
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v2 + 68);
    *a1 = v5;
    *(a1 + 4) = v6;
    v7 = *(v2 + 24);
    *(a1 + 8) = *(v2 + 12);
    *(a1 + 12) = v7;
    *(a1 + 16) = *(v2 + 28);
    *(a1 + 17) = *(v2 + 72) == 1;
    *(a1 + 26) = *(v2 + 39);
    *(a1 + 27) = *(v2 + 40);
    *(a1 + 28) = *(v2 + 41);
    *(a1 + 18) = *(v2 + 31);
    *(a1 + 29) = *(v2 + 42);
    *(a1 + 31) = *(v2 + 46);
    *(a1 + 32) = *(v2 + 66) != 0;
    v8 = *(v1 + 72);
    v9 = *(v8 + 952);
    if (!v9)
    {
      v9 = *(v8 + 948);
    }

    *(a1 + 34) = v9;
    *(a1 + 36) = *(v2 + 1012);
    *(a1 + 44) = *(v2 + 1020);
    v10 = *(v2 + 1060);
    if (v10 == 0xFFFFFFFFLL)
    {
      v11 = -1;
    }

    else
    {
      v11 = v10 / 0xEA60;
    }

    *(a1 + 46) = v11;
    *(a1 + 48) = *(v2 + 1052) / 0xEA60u;
    *(a1 + 58) = *(v2 + 1024);
    *(a1 + 60) = *(v2 + 1026);
    v12 = *(v1 + 176);
    *(a1 + 64) = *(v12 + 27032) * 57.2957795;
    v13 = *(v12 + 27040) * 57.2957795;
    v14 = *(v2 + 1120);
    *(a1 + 96) = *(v2 + 1132);
    *(a1 + 97) = *(v2 + 1133);
    *(a1 + 98) = *(v2 + 1134);
    *(a1 + 50) = g_Enable_Nav_Debug;
    *(a1 + 52) = g_Enable_GNB_Debug;
    *(a1 + 54) = g_Enable_Event_Log;
    *(a1 + 56) = g_Enable_LCD_Debug;
    *(a1 + 72) = v13;
    *(a1 + 80) = *(v12 + 27048);
    *(a1 + 88) = v14;
  }

  result = a1 != 0;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t API_Set_Inhib_SVID(BOOL *a1, BOOL *a2)
{
  v4 = 0;
  v5 = 0;
  v47 = *MEMORY[0x29EDCA608];
  v6 = *(p_api + 72);
  v7 = *(p_api + 96);
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 1);
  *(v6 + 253) = *a1;
  *(v6 + 285) = v8;
  *(v6 + 301) = v9;
  *(v6 + 269) = v10;
  v11 = *(a1 + 7);
  v13 = *(a1 + 4);
  v12 = *(a1 + 5);
  *(v6 + 349) = *(a1 + 6);
  *(v6 + 365) = v11;
  *(v6 + 317) = v13;
  *(v6 + 333) = v12;
  v15 = *(a1 + 9);
  v14 = *(a1 + 10);
  v16 = *(a1 + 8);
  *(v6 + 429) = *(a1 + 88);
  *(v6 + 397) = v15;
  *(v6 + 413) = v14;
  *(v6 + 381) = v16;
  v17 = 1;
  do
  {
    if (*(*(v6 + 432) + v4))
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v5 |= v18;
    v17 *= 2;
    ++v4;
  }

  while (v4 != 32);
  v19 = 0;
  v20 = 0;
  v21 = 1;
  do
  {
    if (*(*(v6 + 448) + v19))
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v20 |= v22;
    v21 *= 2;
    ++v19;
  }

  while (v19 != 10);
  v23 = 0;
  v24 = 0;
  v25 = 1;
  do
  {
    if (*(*(v6 + 440) + v23))
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v24 |= v26;
    v25 *= 2;
    ++v23;
  }

  while (v23 != 24);
  v27 = 0;
  v28 = 0;
  v29 = 1;
  do
  {
    if (*(*(v6 + 456) + v27))
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v28 |= v30;
    v29 *= 2;
    ++v27;
  }

  while (v27 != 39);
  v31 = 0;
  v32 = 0;
  v33 = 1;
  do
  {
    if (*(*(v6 + 464) + v31))
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v32 |= v34;
    v33 *= 2;
    ++v31;
  }

  while (v31 != 37);
  v35 = 0;
  v36 = 0;
  v37 = *(v6 + 472);
  v38 = 1;
  do
  {
    if (*(v37 + v35))
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v36 |= v39;
    v38 *= 2;
    ++v35;
  }

  while (v35 != 36);
  EvLog_v("API_Set_Inhib_SVID: G %x Q %x R %x S %X B %X E %X", v5, v20, v24, v28, v32, v36);
  v40 = 0;
  v41 = *(p_api + 56) + 33784;
  do
  {
    if (a1[v40])
    {
      if (v40 >= 0x8B)
      {
        v44 = 10;
        v42 = (v7 + 26872);
        while (v40 - 19 != *(v42 - 4))
        {
          v42 += 48;
          if (!--v44)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        v42 = (v7 + 192 * v40 + 184);
      }

      *v42 = 0;
LABEL_41:
      v43 = 2;
LABEL_42:
      *(v41 + 20 * v40 + 12) = v43;
      goto LABEL_43;
    }

    v43 = a2[v40];
    if (v43 == 1)
    {
      goto LABEL_42;
    }

LABEL_43:
    ++v40;
  }

  while (v40 != 178);
  v45 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t API_Set_Not_Broadcast_SVID(BOOL *a1)
{
  v1 = 0;
  v2 = 0;
  v38 = *MEMORY[0x29EDCA608];
  v3 = *(p_api + 72);
  v4 = *(a1 + 3);
  v6 = *a1;
  v5 = *(a1 + 1);
  *(v3 + 512) = *(a1 + 2);
  *(v3 + 528) = v4;
  *(v3 + 480) = v6;
  *(v3 + 496) = v5;
  v7 = *(a1 + 7);
  v9 = *(a1 + 4);
  v8 = *(a1 + 5);
  *(v3 + 576) = *(a1 + 6);
  *(v3 + 592) = v7;
  *(v3 + 544) = v9;
  *(v3 + 560) = v8;
  v11 = *(a1 + 9);
  v10 = *(a1 + 10);
  v12 = *(a1 + 8);
  *(v3 + 656) = *(a1 + 88);
  *(v3 + 624) = v11;
  *(v3 + 640) = v10;
  *(v3 + 608) = v12;
  v13 = 1;
  do
  {
    if (*(*(v3 + 664) + v1))
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v2 |= v14;
    v13 *= 2;
    ++v1;
  }

  while (v1 != 32);
  v15 = 0;
  v16 = 0;
  v17 = 1;
  do
  {
    if (*(*(v3 + 680) + v15))
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v16 |= v18;
    v17 *= 2;
    ++v15;
  }

  while (v15 != 10);
  v19 = 0;
  v20 = 0;
  v21 = 1;
  do
  {
    if (*(*(v3 + 672) + v19))
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v20 |= v22;
    v21 *= 2;
    ++v19;
  }

  while (v19 != 24);
  v23 = 0;
  v24 = 0;
  v25 = 1;
  do
  {
    if (*(*(v3 + 688) + v23))
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v24 |= v26;
    v25 *= 2;
    ++v23;
  }

  while (v23 != 39);
  v27 = 0;
  v28 = 0;
  v29 = 1;
  do
  {
    if (*(*(v3 + 696) + v27))
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v28 |= v30;
    v29 *= 2;
    ++v27;
  }

  while (v27 != 37);
  v31 = 0;
  v32 = 0;
  v33 = *(v3 + 704);
  v34 = 1;
  do
  {
    if (*(v33 + v31))
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v32 |= v35;
    v34 *= 2;
    ++v31;
  }

  while (v31 != 36);
  EvLog_v("API_Set_Not_Broadcast_SVID: G %x Q %x R %x S %X B %X E %X", v2, v16, v20, v24, v28, v32);
  v36 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t API_Set_RTI_Bad_SV_List(BOOL *a1)
{
  v1 = 0;
  v19 = *MEMORY[0x29EDCA608];
  v2 = p_api;
  v3 = *(p_api + 72);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 1);
  *(v3 + 253) = *a1;
  *(v3 + 285) = v4;
  *(v3 + 301) = v5;
  *(v3 + 269) = v6;
  v7 = *(a1 + 7);
  v9 = *(a1 + 4);
  v8 = *(a1 + 5);
  *(v3 + 349) = *(a1 + 6);
  *(v3 + 365) = v7;
  *(v3 + 317) = v9;
  *(v3 + 333) = v8;
  v11 = *(a1 + 9);
  v10 = *(a1 + 10);
  v12 = *(a1 + 8);
  *(v3 + 429) = *(a1 + 88);
  *(v3 + 397) = v11;
  *(v3 + 413) = v10;
  *(v3 + 381) = v12;
  v13 = *(v2 + 56) + 33800;
  v14 = v3;
  do
  {
    if (*(v14 + 253) == 1)
    {
      *(v14 + 712) = 1;
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    *(v13 + v1) = v15;
    v1 += 20;
    ++v14;
  }

  while (v1 != 3560);
  v16 = *(v3 + 1040);
  if (v16 > 0)
  {
    Core_Save_Inhib_EE((v3 + 712), v16);
  }

  v17 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t API_Get_Est_ME_TTick(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = *(p_api + 8);
  if (*v0)
  {
    v2 = v0[4];
    v1 = *v0;
    result = v1 - v2 + (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL API_Get_FS_Pulse_TTick(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *(p_api + 8);
  *a3 = *v4;
  *a1 = v4[1];
  *a2 = v4[2];
  v5 = v4[4];
  *a4 = v5;
  v6 = *a1;
  if (!*a1)
  {
    goto LABEL_4;
  }

  if (*a2 > 0x10000)
  {
    EvLog_v("API_Get_FS_Pulse_TTick:  FS_TTick_Fract = %u, out of range!", *a2);
LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  v10 = *a3 - v6;
  v7 = v10 < 60001;
  if (g_Enable_Event_Log >= 4u)
  {
    EvLog_v("API_Get_FS_Pulse_TTick:  valid %d,  age %d,  (%u, %u, %u, %u)", v10 < 60001, *a3 - v6, *a3, v6, *a2, v5);
  }

  if (v10 < 60001 != v10 < 63001)
  {
    EvCrt_v("API_Get_FS_Pulse_TTick:  Pulse invalidated, %d > 60s old", v10);
  }

LABEL_5:
  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t API_Get_TM_FSP_OS_Time_ms_for_TTick(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  *v6 = 0;
  TM_FSP_Time = Core_Get_TM_FSP_Time(&v6[1], v6);
  result = 0;
  if (TM_FSP_Time)
  {
    if (v6[1])
    {
      v4 = v6[0] == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      result = 0;
    }

    else
    {
      result = v6[1] + a1 - v6[0];
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t API_Get_Num_SV_and_Clock_Unknowns(unsigned int *a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v15 = *MEMORY[0x29EDCA608];
  v7 = *(p_api + 88);
  v8 = v7 + 1496;
  do
  {
    v9 = *(v8 + 4 * v2 - 528);
    if (Is_Legal(v9) && *(v8 + v2) == 1)
    {
      v3 = (v3 + 1);
      if (v9 <= 2u)
      {
        if (!v9)
        {
          goto LABEL_17;
        }

        if (v9 == 1)
        {
          goto LABEL_15;
        }

        if (v9 == 2)
        {
          v5 = 1;
          goto LABEL_17;
        }
      }

      else if (v9 > 4u)
      {
        if (v9 == 6)
        {
          goto LABEL_17;
        }

        if (v9 == 5)
        {
LABEL_15:
          v6 = 1;
          goto LABEL_17;
        }
      }

      else
      {
        if (v9 == 3)
        {
          goto LABEL_15;
        }

        if (v9 == 4)
        {
          v4 = 1;
          goto LABEL_17;
        }
      }

      EvCrt_Illegal_Default("API_Get_Num_SV_and_Clock_Unknowns", 0x5FCu);
    }

LABEL_17:
    ++v2;
  }

  while (v2 != 48);
  v10 = v6;
  if (v6)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if (v5)
  {
    v10 = v11;
  }

  v12 = v10 + (v4 & 1);
  if (v12 > 1)
  {
    if ((*(v7 + 462) & (v6 & v5) & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v12 - 3 > 0xFFFFFFFD)
    {
      goto LABEL_32;
    }

    v12 = 2;
LABEL_27:
    if (*(v7 + 463) & (v6 & v4))
    {
      if (v12 - 3 <= 0xFFFFFFFD)
      {
        v12 = 2;
        goto LABEL_30;
      }

LABEL_32:
      v12 = 1;
    }

    else
    {
LABEL_30:
      if (*(v7 + 464) & v5)
      {
        v12 -= v4 & 1;
      }
    }
  }

  if (*(v7 + 48) < 8)
  {
    ++v12;
  }

  *a1 = v12;
  v13 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t API_Get_Fix_Reliability(void)
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = *(p_api + 88);
  v1 = *(p_api + 232);
  v8 = 0;
  Num_SV_and_Clock_Unknowns = API_Get_Num_SV_and_Clock_Unknowns(&v8);
  if (*(v0 + 760) <= 10.0)
  {
    v3 = -3;
  }

  else
  {
    v3 = -4;
  }

  v4 = v3 + Num_SV_and_Clock_Unknowns - v8;
  if (*(v1 + 22992) == 1 && (*(v1 + 23008) & 1) == 0 && *(v1 + 22996) == 1 && *(v1 + 23040) <= 160000.0 && (*(v1 + 23000) - 3) < 2 || *(v1 + 23848) == 1 && (*(v1 + 23864) & 1) == 0 && *(v1 + 23852) == 1 && *(v1 + 23896) <= 160000.0)
  {
    v4 += 2;
  }

  if (*(v1 + 23120) == 1 && (*(v1 + 23136) & 1) == 0 && *(v1 + 23124) == 1 && *(v1 + 23152) <= 160000.0 && (*(v1 + 23000) - 3) < 2)
  {
    ++v4;
  }

  if (v4 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (v4 == 3)
  {
    v5 = 3;
  }

  if (v4 >= 4)
  {
    result = 4;
  }

  else
  {
    result = v5;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

double *API_Get_Dbg_Constell_ME_Data(double *result, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v44 = *MEMORY[0x29EDCA608];
  v7 = *(p_api + 104);
  v8 = *(p_api + 72);
  if (result > 3)
  {
    if (result == 4)
    {
      if ((v8[35] & 1) == 0)
      {
        goto LABEL_60;
      }

      v9 = 37;
      v10 = -1;
      v11 = 422;
      goto LABEL_17;
    }

    if (result != 5)
    {
      if ((v8[34] & 1) == 0)
      {
        goto LABEL_60;
      }

      v12 = 0;
      v9 = 39;
      v10 = -120;
      goto LABEL_18;
    }

    if ((v8[33] & 1) == 0)
    {
      goto LABEL_60;
    }

    v9 = 10;
    v10 = -193;
  }

  else
  {
    if (result != 1)
    {
      if (result == 2)
      {
        if ((v8[32] & 1) == 0)
        {
          goto LABEL_60;
        }

        v9 = 24;
        v10 = -1;
        v11 = 414;
      }

      else
      {
        if ((v8[36] & 1) == 0)
        {
          goto LABEL_60;
        }

        v9 = 36;
        v10 = -1;
        v11 = 418;
      }

      goto LABEL_17;
    }

    if ((v8[31] & 1) == 0)
    {
      goto LABEL_60;
    }

    v9 = 32;
    v10 = -1;
  }

  v11 = 410;
LABEL_17:
  v12 = *(*(p_api + 160) + v11);
LABEL_18:
  v13 = 0;
  v14 = 0;
  v15 = 0;
  *(a2 + 17) = v12;
  memset(v42, 0, sizeof(v42));
  memset(v41, 0, sizeof(v41));
  memset(v40, 0, sizeof(v40));
  v43 = 0;
  do
  {
    if (*(v7 + v13 + 76) == result)
    {
      v16 = v10 + *(v7 + v13 + 78);
      if (v16 < v9)
      {
        v17 = *(v7 + v13 + 412);
        if (v17 > 9 || v17 == 8)
        {
          ++*(v42 + v16);
          ++*(a2 + 2);
          v19 = (v7 + v14);
          LOBYTE(a5) = *(v7 + v14 + 604);
          LOBYTE(a6) = *(v7 + v14 + 652);
          *&v20 = *&a6;
          v21 = 0x3FB0000000000000;
          v22 = *&a5 + *&v20 * 0.0625;
          *(v41 + v15) = v22;
          LOBYTE(v22) = *(v7 + v14 + 700);
          LOBYTE(v20) = *(v7 + v14 + 748);
          v23 = *&v22 + v20 * 0.0625;
          *(v40 + v15) = v23;
          if ((*a2 & 1) == 0)
          {
            *a2 = 1;
          }

          v24 = *(v7 + 2 * v14 + 316);
          v25 = (v24 >> 8) & 3;
          if (*(a2 + 4) < v25)
          {
            *(a2 + 4) = v25;
          }

          v26 = v7 + 844;
          if ((v24 & 8) != 0)
          {
            v26 = (v24 & 0x30) != 0 ? v7 + 940 : v7 + 844;
            if ((v24 & 0xC0) != 0)
            {
              v26 = v7 + 1036;
            }
          }

          v27 = *(v26 + 2 * v14);
          if (*(a2 + 8) < v27)
          {
            *(a2 + 8) = v27;
          }

          LOWORD(v23) = *(a2 + 10);
          v28 = *&v23;
          LOBYTE(v23) = v19[700];
          LOBYTE(v21) = v19[748];
          v29 = v21;
          v30 = *&v23 + v29 * 0.0625;
          if (v30 > v28)
          {
            *(a2 + 10) = v30;
            LOBYTE(v30) = v19[700];
            LOBYTE(v28) = v19[748];
            v28 = *&v28;
            v29 = 0.0625;
            v30 = *&v30 + v28 * 0.0625;
          }

          LOBYTE(v28) = v19[604];
          LOBYTE(v29) = v19[652];
          a6 = *&v28 + *&v29 * 0.0625;
          a5 = a6 - v30;
          if (a5 <= 6.0)
          {
            ++*(a2 + 14);
            if (a5 <= 3.0)
            {
              ++*(a2 + 12);
            }
          }

          ++v15;
        }
      }
    }

    ++v14;
    v13 += 4;
  }

  while (v14 != 48);
  v31 = 0;
  *(a2 + 16) = v15;
  do
  {
    if (*(v42 + v31) >= 2u)
    {
      ++*(a2 + 6);
    }

    ++v31;
  }

  while (v9 != v31);
  if (v15 > 0)
  {
    if (v15 >= 5)
    {
      v32 = 5;
    }

    else
    {
      v32 = v15;
    }

    v33 = (v15 - 1);
    VecSortAscR8(v41, 0, v15 - 1);
    v34 = v15 + ~v32;
    v35 = v15 - 1;
    v36 = v34;
    v37 = 0.0;
    do
    {
      v37 = v37 + *(v41 + v35--);
    }

    while (v35 > v34);
    *(a2 + 24) = v37 / v32;
    result = VecSortAscR8(v40, 0, v33);
    v38 = 0.0;
    do
    {
      v38 = v38 + *(v40 + v33--);
    }

    while (v33 > v36);
    *(a2 + 32) = v38 / v32;
  }

LABEL_60:
  v39 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t API_Get_Dbg_Constell_PE_Data(uint64_t result, uint64_t a2)
{
  v3 = result;
  v85 = *MEMORY[0x29EDCA608];
  v4 = *(p_api + 56);
  v5 = *(p_api + 232);
  v6 = *(p_api + 72);
  v7 = *(p_api + 104);
  v8 = *(p_api + 40);
  memset(v84, 0, sizeof(v84));
  memset(v83, 0, 39);
  memset(v82, 0, 39);
  if (result > 3)
  {
    if (result == 4)
    {
      if (v6[35] != 1)
      {
        goto LABEL_86;
      }

      v9 = v4[3058];
      v10 = v4[3059];
      v66 = v4[3060];
      v4 += 3052;
      v73 = -1;
      v11 = 37;
    }

    else if (result == 5)
    {
      if (v6[33] != 1)
      {
        goto LABEL_86;
      }

      v9 = v4[1069];
      v10 = v4[1070];
      v66 = v4[1071];
      v4 += 1063;
      v73 = -193;
      v11 = 10;
    }

    else
    {
      if (v6[34] != 1)
      {
        goto LABEL_86;
      }

      for (i = 0; i != 39; ++i)
      {
        v13 = *(v8 + 6316 + i);
        if (v13 >= 3)
        {
          v60 = *MEMORY[0x29EDCA608];

          return EvCrt_Illegal_Default("API_Get_Dbg_Constell_PE_Data", 0x9B1u);
        }

        v84[i] = 0;
        *(v83 + i) = 0x10100u >> (8 * (v13 & 0x1F));
        *(v82 + i) = 0;
      }

      v4 += 2068;
      v9 = v84;
      v10 = v83;
      v66 = v82;
      v73 = -120;
      v11 = 39;
    }
  }

  else
  {
    if (result == 1)
    {
      if (v6[31] != 1)
      {
        goto LABEL_86;
      }

      v9 = v4[6];
      v10 = v4[7];
      v72 = 32;
      v73 = -1;
      v66 = v4[8];
      goto LABEL_22;
    }

    if (result == 2)
    {
      if (v6[32] != 1)
      {
        goto LABEL_86;
      }

      v9 = v4[2034];
      v10 = v4[2035];
      v66 = v4[2036];
      v4 += 1401;
      v73 = -1;
      v11 = 24;
    }

    else
    {
      if (v6[36] != 1)
      {
        goto LABEL_86;
      }

      v9 = v4[2076];
      v10 = v4[2077];
      v66 = v4[2078];
      v4 += 2070;
      v73 = -1;
      v11 = 36;
    }
  }

  v72 = v11;
LABEL_22:
  v14 = v8 + 4096;
  v70 = *v4;
  if (*(v8 + 6132))
  {
    v15 = 0;
    do
    {
      LODWORD(v81[0]) = 0;
      result = LongPrnIdx_To_ShortPrnIdx((*(v8 + 4174 + 2 * v15) - 1), v81);
      if (LODWORD(v81[0]) == v3)
      {
        ++*(a2 + 112);
        if ((v9[result] & 1) != 0 || *(v10 + result) == 1)
        {
          ++*(a2 + 113);
        }
      }

      ++v15;
    }

    while (v15 < *(v8 + 6132));
  }

  if (*(v8 + 6135))
  {
    v16 = 0;
    v17 = v8 + 4886;
    do
    {
      LODWORD(v81[0]) = 0;
      result = LongPrnIdx_To_ShortPrnIdx((*(v17 + 2 * v16) - 1), v81);
      if (LODWORD(v81[0]) == v3)
      {
        ++*(a2 + 114);
      }

      ++v16;
    }

    while (v16 < *(v14 + 2039));
  }

  v67 = v10;
  v71 = v9;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v75 = 0;
  v74 = 0;
  memset(v81, 0, sizeof(v81));
  memset(v80, 0, sizeof(v80));
  memset(v79, 0, sizeof(v79));
  memset(v78, 0, sizeof(v78));
  memset(v77, 0, sizeof(v77));
  v22 = -384;
  v23 = 14112;
  v24 = 2960;
  v25 = 8536;
  memset(v76, 0, sizeof(v76));
  v27 = v72;
  v26 = v73;
  v68 = v7;
  v69 = v5;
  do
  {
    if (*(v7 + v18 + 76) != v3)
    {
      goto LABEL_72;
    }

    if (*(v7 + v18 + 412) < 10)
    {
      goto LABEL_72;
    }

    v28 = v26 + *(v7 + v18 + 78);
    if (v28 >= v27)
    {
      goto LABEL_72;
    }

    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    if ((v71[v28] & 1) != 0 || *(v67 + v28) == 1)
    {
      ++*(a2 + 1);
    }

    else if (*(v66 + v28) == 1)
    {
      ++*(a2 + 2);
    }

    if (*(v70 + v28) == 1)
    {
      ++*(a2 + 3);
    }

    else
    {
      ++*(a2 + 4);
    }

    if (*(v5 + v24) == 1)
    {
      *(v81 + v74) = fabs(*(v5 + v22 + 5600));
      *(v78 + v74++) = fabs(*(v5 + v22 + 8000));
    }

    v29 = *(v5 + v18 + 3056);
    if ((v29 - 1) >= 0x1D)
    {
      if (!v29)
      {
        goto LABEL_56;
      }

      v62 = v20;
      v63 = v19;
      v61 = v21;
      result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
      v21 = v61;
      v20 = v62;
      v19 = v63;
      v27 = v72;
      v26 = v73;
    }

    if (v21 <= 15)
    {
      v30 = *(v5 + v18 + 3056);
      if (v30 >= 0x1D)
      {
        v32 = v19;
        v33 = v20;
        v34 = v21;
        result = gn_report_assertion_failure("SV_Meas_Edit_Char");
        LODWORD(v21) = v34;
        v20 = v33;
        v7 = v68;
        v5 = v69;
        v19 = v32;
        v27 = v72;
        v26 = v73;
        v31 = 120;
      }

      else
      {
        v31 = aGhkmnpqrstvyac_0[v30];
      }

      *(a2 + 9 + v21) = v31;
      v21 = (v21 + 1);
    }

LABEL_56:
    if (*(v5 + v25) == 1)
    {
      *(v80 + v75) = fabs(*(v5 + v22 + 11560));
      *(v77 + v75) = fabs(*(v5 + v22 + 13576));
      LODWORD(v75) = v75 + 1;
    }

    v35 = v5 + v18;
    v36 = *(v5 + v18 + 8632);
    if ((v36 - 1) < 0x1D)
    {
      goto LABEL_59;
    }

    if (v36)
    {
      v64 = v19;
      v49 = v20;
      v50 = v21;
      result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
      v21 = v50;
      v20 = v49;
      v7 = v68;
      v5 = v69;
      v19 = v64;
      v27 = v72;
      v26 = v73;
LABEL_59:
      if (v20 <= 15)
      {
        v37 = *(v35 + 8632);
        if (v37 >= 0x1D)
        {
          v39 = v19;
          v40 = v20;
          v41 = v21;
          result = gn_report_assertion_failure("SV_Meas_Edit_Char");
          v21 = v41;
          LODWORD(v20) = v40;
          v7 = v68;
          v5 = v69;
          v19 = v39;
          v27 = v72;
          v26 = v73;
          v38 = 120;
        }

        else
        {
          v38 = aGhkmnpqrstvyac_0[v37];
        }

        *(a2 + 25 + v20) = v38;
        v20 = (v20 + 1);
      }
    }

    if (*(v5 + v23) == 1)
    {
      *(v79 + HIDWORD(v75)) = fabs(*(v5 + v22 + 17136));
      *(v76 + HIDWORD(v75)) = fabs(*(v5 + v22 + 19152));
      ++HIDWORD(v75);
    }

    v42 = v5 + v18;
    v43 = *(v5 + v18 + 14208);
    if ((v43 - 1) >= 0x1D)
    {
      if (!v43)
      {
        goto LABEL_72;
      }

      v65 = v19;
      v51 = v20;
      v52 = v21;
      result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
      v21 = v52;
      v20 = v51;
      v7 = v68;
      v5 = v69;
      v19 = v65;
      v27 = v72;
      v26 = v73;
    }

    if (v19 <= 15)
    {
      v44 = *(v42 + 14208);
      if (v44 >= 0x1D)
      {
        v46 = v19;
        v47 = v20;
        v48 = v21;
        result = gn_report_assertion_failure("SV_Meas_Edit_Char");
        v21 = v48;
        v20 = v47;
        v7 = v68;
        v5 = v69;
        LODWORD(v19) = v46;
        v27 = v72;
        v26 = v73;
        v45 = 120;
      }

      else
      {
        v45 = aGhkmnpqrstvyac_0[v44];
      }

      *(a2 + 41 + v19) = v45;
      v19 = (v19 + 1);
    }

LABEL_72:
    v18 += 4;
    ++v23;
    ++v24;
    v22 += 8;
    ++v25;
  }

  while (v18 != 192);
  if (v74)
  {
    *(a2 + 6) = v74;
    VecMedian8(v81, v74);
    *(a2 + 64) = v53;
    result = VecMedian8(v78, v74);
    *(a2 + 88) = v54;
  }

  if (v75)
  {
    *(a2 + 7) = v75;
    VecMedian8(v80, v75);
    *(a2 + 72) = v55;
    result = VecMedian8(v77, v75);
    *(a2 + 96) = v56;
  }

  if (HIDWORD(v75))
  {
    *(a2 + 8) = BYTE4(v75);
    VecMedian8(v79, HIDWORD(v75));
    *(a2 + 80) = v57;
    result = VecMedian8(v76, HIDWORD(v75));
    *(a2 + 104) = v58;
  }

LABEL_86:
  v59 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t API_Get_Dbg_Constell_Orb_Data(unint64_t result, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(p_api + 56);
  v3 = *(p_api + 72);
  v4 = *(p_api + 40);
  *(a2 + 8) = 0u;
  *a2 = 0;
  *(a2 + 24) = 0u;
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, 39);
  memset(v21, 0, 39);
  if (result <= 3)
  {
    if (result == 1)
    {
      if (v3[31] != 1)
      {
        goto LABEL_38;
      }

      v5 = v2[6];
      v6 = v2[7];
      v8 = 32;
      v9 = 432;
      v7 = v2[8];
    }

    else
    {
      if (result == 2)
      {
        if (v3[32] == 1)
        {
          v5 = v2[2034];
          v6 = v2[2035];
          v7 = v2[2036];
          v2 += 1401;
          v8 = 24;
          v9 = 440;
          goto LABEL_21;
        }

LABEL_38:
        v19 = *MEMORY[0x29EDCA608];
        return result;
      }

      if (v3[36] != 1)
      {
        goto LABEL_38;
      }

      v5 = v2[2076];
      v6 = v2[2077];
      v7 = v2[2078];
      v2 += 2070;
      v8 = 36;
      v9 = 472;
    }

LABEL_21:
    v13 = 0;
    v14 = 0;
    v15 = 0;
    result = 0;
    v16 = 0;
    v17 = *v2;
    v18 = *&v3[v9];
    do
    {
      if (v5[v16] == 1)
      {
        result |= 1 << v16;
        *(a2 + 8) = result;
      }

      if (*(v7 + v16) == 1)
      {
        v15 |= 1 << v16;
        *(a2 + 24) = v15;
      }

      if (*(v17 + v16) == 1)
      {
        v14 |= 1 << v16;
        *(a2 + 32) = v14;
      }

      if (*(v6 + v16) == 1)
      {
        v13 |= 1 << v16;
        *(a2 + 16) = v13;
      }

      if (*(v18 + v16) == 1)
      {
        *(a2 + 40) |= 1 << v16;
      }

      ++v16;
    }

    while (v8 != v16);
    if (result || v15 || v13 || *(a2 + 40))
    {
      *a2 = 1;
    }

    goto LABEL_38;
  }

  if (result == 4)
  {
    if (v3[35] != 1)
    {
      goto LABEL_38;
    }

    v5 = v2[3058];
    v6 = v2[3059];
    v7 = v2[3060];
    v2 += 3052;
    v8 = 37;
    v9 = 464;
    goto LABEL_21;
  }

  if (result == 5)
  {
    if (v3[33] != 1)
    {
      goto LABEL_38;
    }

    v5 = v2[1069];
    v6 = v2[1070];
    v7 = v2[1071];
    v2 += 1063;
    v8 = 10;
    v9 = 448;
    goto LABEL_21;
  }

  if (v3[34] != 1)
  {
    goto LABEL_38;
  }

  v10 = 0;
  v11 = v4 + 6316;
  while (1)
  {
    v12 = *(v11 + v10);
    if (v12 >= 3)
    {
      break;
    }

    v23[v10] = 0;
    *(v22 + v10) = 0x10100u >> (8 * (v12 & 0x1F));
    *(v21 + v10++) = 0;
    if (v10 == 39)
    {
      v2 += 2068;
      v7 = v21;
      v6 = v22;
      v5 = v23;
      v8 = 39;
      v9 = 456;
      goto LABEL_21;
    }
  }

  v20 = *MEMORY[0x29EDCA608];

  return EvCrt_Illegal_Default("API_Get_Dbg_Constell_Orb_Data", 0xACCu);
}

uint64_t API_Get_UTC_Cor(char a1, double *a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v3 = *(p_api + 48);
  v4 = *(p_api + 56);
  v5 = *(v4 + 8444);
  if ((v5 - 1) > 5)
  {
    goto LABEL_4;
  }

  if (v5 == 1)
  {
    v6 = *(v4 + 8458);
    if (v6 >= 18)
    {
LABEL_4:
      if (*(v3 + 64) == 1 && (v7 = *(v3 + 66), v7 >= 1))
      {
        UTC_Leap_Second_For_GLON_Day_4yrBlk = Get_UTC_Leap_Second_For_GLON_Day_4yrBlk(v7, *(v3 + 68), *(v3 + 72));
        if (UTC_Leap_Second_For_GLON_Day_4yrBlk == -99)
        {
          LOBYTE(v6) = 18;
        }

        else
        {
          LOBYTE(v6) = UTC_Leap_Second_For_GLON_Day_4yrBlk;
        }

LABEL_9:
        v9 = 1;
      }

      else
      {
        if (*(v3 + 5) == 1 && (v10 = *(v3 + 16), v10 >= 1025))
        {
          v11 = v10;
          v12 = &byte_299761B32;
          v13 = 8;
          while (v11 < *(v12 - 3) || v11 >= *(v12 + 3))
          {
            v12 += 12;
            if (!--v13)
            {
              goto LABEL_39;
            }
          }

          LOBYTE(v6) = *v12;
          if (*v12 != 157)
          {
            goto LABEL_9;
          }

LABEL_39:
          v9 = 1;
        }

        else
        {
          v9 = 0;
        }

        LOBYTE(v6) = 18;
      }

      v28 = *(v4 + 8458);
      if (v28 != v6)
      {
        EvLog_v("API_Get_UTC_Cor:  Default %d sec GPS-UTC Correction updated from %d sec", v6, v28);
        *(v4 + 8458) = v6;
        *(v4 + 8461) = v6;
        v4 = *(p_api + 56);
      }

      *(v4 + 8444) = 1;
      goto LABEL_44;
    }

LABEL_24:
    v9 = 1;
LABEL_44:
    v27 = v6;
LABEL_45:
    *a2 = v27;
    goto LABEL_46;
  }

  v14 = v5 - 4;
  if (*(v3 + 5) != 1 || v14 >= 3)
  {
    LOBYTE(v6) = *(v4 + 8458);
    goto LABEL_24;
  }

  v16 = (*(v3 + 24) - *(v3 + 32) + 0.0005);
  v17 = *(v3 + 16);
  v18 = *(v4 + 8459);
  v19 = v17 - 127;
  v20 = v18 | 0x400;
  if (v17 - 127 > (v18 | 0x400))
  {
    v20 = v17 - 127;
  }

  v21 = (v20 - v18 - 769) & 0x1FFFF00 | v18;
  v22 = v16 + 604800 * v17;
  if (*(v4 + 8461) >= *(v4 + 8458))
  {
    v23 = *(v4 + 8458);
  }

  else
  {
    v23 = *(v4 + 8461);
  }

  if (86400 * *(v4 + 8460) - v22 + v23 + 604800 * v21 + 619315200 <= 0)
  {
    v24 = *(v4 + 8461);
  }

  else
  {
    v24 = *(v4 + 8458);
  }

  v25 = v24;
  *a2 = v25;
  if ((a1 & 1) == 0)
  {
    v26 = *(v4 + 8457);
    if (v19 <= (v26 | 0x400))
    {
      v19 = v26 | 0x400;
    }

    v27 = v25 + *(v4 + 8452) * 9.31322575e-10 + *(v4 + 8448) * 8.8817842e-16 * (v22 - (*(v4 + 8456) << 12) - 604800 * ((v19 - v26 - 769) & 0x1FFFF00 | v26) - 619315200);
    v9 = 1;
    goto LABEL_45;
  }

  v9 = 1;
LABEL_46:
  v29 = *MEMORY[0x29EDCA608];
  return v9;
}

int *API_Get_Next_Leap_Second(int *result, signed __int8 *a2, int *a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = p_api;
  v4 = *(p_api + 48);
  v5 = *(p_api + 56);
  *result = 0;
  *a2 = 0;
  *a3 = 0x7FFFFFFF;
  if (*(v4 + 5) == 1 && *v4 >= 1 && (*(*(v3 + 56) + 8444) - 4) <= 2)
  {
    v6 = (v5 + 0x2000);
    v7 = v6[269];
    v8 = v6[266];
    if (v7 != v8)
    {
      v11 = result;
      v12 = *(v4 + 24);
      v13 = *(v4 + 32);
      v14 = *(v4 + 16);
      v15 = v6[267];
      v16 = v6[268];
      result = Is_Future_Leap_Sec_Date_Not_Valid(v14, 1, v15, v6[268]);
      if ((result & 1) == 0)
      {
        v17 = v14 - 127;
        if (v14 - 127 <= (v15 | 0x400))
        {
          v17 = v15 | 0x400;
        }

        v18 = 604800 * ((v17 - v15 - 769) & 0x1FFFF00 | v15) + 86400 * v16 + 619315200;
        *v11 = v18;
        v19 = v8;
        if (v7 < v8)
        {
          v19 = v7;
        }

        *a3 = v19 - (v12 - v13 + 0.0005) - 604800 * v14 + v18;
        *v11 += v19;
        *a2 = v7 - v8;
      }
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t API_Get_Nav_Data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v8 = v7;
  v9 = v6;
  v362 = *MEMORY[0x29EDCA608];
  v10 = p_api;
  v11 = *(p_api + 88);
  v305 = *(p_api + 72);
  v12 = *(p_api + 104);
  v13 = *(p_api + 328);
  v14 = *(p_api + 232);
  v15 = *(p_api + 176);
  v16 = *(p_api + 56);
  v279 = *(p_api + 48);
  v17 = *(p_api + 160);
  bzero(v6, 0x18C8uLL);
  bzero(v8, 0x30A8uLL);
  if (*(*(v10 + 88) + 344) > 600.0)
  {
    goto LABEL_532;
  }

  v18 = 0;
  v295 = v16 + 33552;
  v280 = (v16 + 8458);
  v300 = v14 + 2840;
  v301 = v15;
  v286 = (v17 + 529);
  v287 = (v11 + 856);
  v285 = v13 + 5;
  v325 = v13 + 520;
  v311 = v13 + 512;
  v309 = v13 + 496;
  v290 = v13;
  v308 = v13 + 552;
  v303 = v14 + 92;
  v282 = v14 + 93;
  v283 = v15 + 175;
  v281 = v14 + 94;
  v19 = v16 + 16336;
  v323 = v12 + 79;
  v20 = (v12 + 76);
  v321 = v12 + 604;
  v319 = v12 + 652;
  v317 = v12 + 700;
  v284 = vdupq_n_s64(0x3E2CA726EB25F9DBuLL);
  v313 = v12 + 268;
  v315 = v12 + 748;
  v21 = v305;
  v329 = v11 + 968;
  v327 = v11 + 1160;
  v307 = v11 + 1496;
  v22 = *(v11 + 32);
  v288 = v17;
  v289 = v14;
  v291 = v9;
  v292 = v11;
  v293 = v16;
  v294 = v20;
  while (2)
  {
    v298 = v18;
    v299 = v22;
    v23 = *(v11 + 36);
    v9[1] = v23;
    v8[1] = v23;
    v24 = *(v11 + 48);
    *(v9 + 8) = v24 > 0;
    if (v24 < 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(v11 + 52);
    }

    *(v9 + 9) = v25 & 1;
    *(v9 + 12) = *(v11 + 54);
    v26 = *(v11 + 40);
    *(v9 + 4) = v26;
    *(v9 + 5) = v26;
    *(v9 + 6) = *(v11 + 144);
    *(v9 + 7) = *(v11 + 168);
    *(v9 + 12) = *(v11 + 208) * 57.2957795;
    *(v9 + 13) = *(v11 + 216) * 57.2957795;
    v27 = *(v11 + 224);
    *(v9 + 14) = v27;
    *(v9 + 15) = v27 - *(v11 + 232);
    *(v9 + 9) = *(v11 + 72);
    *(v9 + 10) = *(v11 + 80);
    *(v9 + 11) = *(v11 + 88);
    v28 = 952;
    if (!*(v21 + 66))
    {
      v28 = 352;
    }

    v29 = 960;
    if (!*(v21 + 66))
    {
      v29 = 360;
    }

    v30 = 936;
    if (!*(v21 + 66))
    {
      v30 = 336;
    }

    *(v9 + 16) = *(v11 + v28);
    *(v9 + 17) = *(v11 + v29);
    *(v9 + 18) = -*(v11 + v30);
    v31 = *(v11 + 848);
    if (v31 >= 9499050.0)
    {
      v32 = g_TOW_stat_Sigma_Table[v24];
    }

    else
    {
      v32 = v31 * 0.00000000333564095;
    }

    *(v9 + 19) = v32;
    v33.f64[0] = *(v11 + 840);
    v33.f64[1] = *(v11 + 888);
    *(v9 + 10) = vmulq_f64(v33, v284);
    *(v9 + 11) = *(v11 + 800);
    *(v9 + 24) = *(v11 + 824);
    *(v9 + 50) = *(v11 + 896);
    *(v9 + 27) = *(v11 + 912);
    *(v9 + 14) = *v287;
    v33.f64[0] = *(v11 + 880);
    *(v9 + 30) = *&v33.f64[0];
    *(v9 + 31) = *(v11 + 1984);
    if (v33.f64[0] > 360.0)
    {
      *(v9 + 30) = 0x408F380000000000;
    }

    *(v9 + 32) = *(v11 + 784);
    *(v9 + 33) = *(v11 + 760);
    *(v9 + 17) = *(v11 + 768);
    v34 = *(p_api + 104);
    v35 = *(p_api + 48);
    v36 = *(p_api + 56);
    v37 = *(p_api + 232);
    if (*(v35 + 5) == 1)
    {
      v38 = *(p_api + 72);
      v39 = *(v35 + 16);
      v40 = v39 < *(v38 + 1028);
      if (*v35 >= 9 && *(v38 + 1040) > *(v35 + 24) + 604800 * v39)
      {
        v40 |= 2u;
      }
    }

    else
    {
      v40 = 0;
    }

    v41 = *(v37 + 32);
    if (v41 > 100.0 && *(v37 + 12) > 8)
    {
      v40 |= 4u;
    }

    if (v41 < -100.0 && *(v37 + 12) > 8)
    {
      v40 |= 8u;
    }

    v297 = v40;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = (v34 + 844);
    v46 = v34 + 940;
    do
    {
      if (*(v46 + 4 * v42 - 528) >= 10 && *v45 >= 0xC8u)
      {
        v47 = *(v46 + v42 - 336);
        v48 = *(v46 + v42 - 240);
        v49 = v47 <= 0x2C ? v43 : v43 + 1;
        v50 = v48 - v47;
        v51 = v48 <= 0x2C && v50 <= 5;
        v52 = v51 ? v44 : v44 + 1;
        if (v45[48] >= 0xC8u)
        {
          v44 = v52;
          v43 = v49;
        }
      }

      ++v42;
      ++v45;
    }

    while (v42 != 48);
    v53 = 0;
    v54 = 0;
    v55.i64[0] = 0x101010101010101;
    v55.i64[1] = 0x101010101010101;
    v56 = veorq_s8(*(v36 + 8466), v55);
    v57 = veorq_s8(*(v36 + 8482), v55);
    v58 = vaddl_high_u8(v56, v57);
    v59 = vaddl_u8(*v56.i8, *v57.i8);
    v296 = vaddvq_s32(vaddq_s32(vaddl_u16(*v59.i8, *v58.i8), vaddl_high_u16(v59, v58)));
    do
    {
      v54 += *(v36 + 39124 + v53++);
    }

    while (v53 != 178);
    v60 = 0;
    v61 = 0;
    v62 = *(p_api + 88) + 968;
    do
    {
      v63 = *(v62 + v60);
      if (!Is_Legal(v63))
      {
        goto LABEL_66;
      }

      if (v63 <= 3u)
      {
        switch(v63)
        {
          case 1u:
            v66 = BYTE2(v63) - 1;
            if (*(*(v36 + 48) + v66) != 1)
            {
              goto LABEL_66;
            }

            v67 = v36 + 104;
LABEL_64:
            v65 = Is_GPS_BinEph_Real(v67 + 108 * v66);
            break;
          case 2u:
            goto LABEL_66;
          case 3u:
            v64 = BYTE2(v63) - 1;
            if (*(*(v36 + 16608) + v64) != 1)
            {
              goto LABEL_66;
            }

            v65 = Is_GAL_IntEph_Real(v36 + 16736 + 88 * v64);
            break;
          default:
            goto LABEL_57;
        }

LABEL_65:
        v61 += !v65;
        goto LABEL_66;
      }

      if (v63 == 4)
      {
        v68 = BYTE2(v63) - 1;
        if (*(*(v36 + 24464) + v68) != 1)
        {
          goto LABEL_66;
        }

        v65 = Is_BDS_IntEph_Real(v36 + 24520 + 100 * v68);
        goto LABEL_65;
      }

      if (v63 != 5)
      {
        if (v63 == 6)
        {
          goto LABEL_66;
        }

LABEL_57:
        EvCrt_Illegal_Default("API_Get_Spoofing_Flags", 0x870u);
        goto LABEL_66;
      }

      v66 = BYTE2(v63) - 193;
      if (*(*(v36 + 8552) + v66) == 1)
      {
        v67 = v36 + 8608;
        goto LABEL_64;
      }

LABEL_66:
      v60 += 4;
    }

    while (v60 != 192);
    v69 = v297 | 0x10;
    if (v43 <= 2)
    {
      v69 = v297;
    }

    if (v44 > 2)
    {
      v69 |= 0x20u;
    }

    if (v296 > 2)
    {
      v69 |= 0x100u;
    }

    if (v54 > 2)
    {
      v69 |= 0x200u;
    }

    if (v61 > 2)
    {
      v69 |= 0x400u;
    }

    if (*(v36 + 8464))
    {
      v69 |= 0x1000u;
    }

    if (*(v36 + 8465))
    {
      v69 |= 0x2000u;
    }

    v9 = v291;
    v291[72] = v69;
    v291[73] = *(v305 + 48);
    v70 = *(p_api + 88);
    v71 = *(v70 + 4);
    if (v71 > 3)
    {
      v72 = v293;
      v73 = v294;
      v74 = v283;
      if (v71 == 4)
      {
        v75 = *(v70 + 17) == 0;
        v71 = 2;
      }

      else
      {
        if (v71 != 5)
        {
          goto LABEL_88;
        }

        v75 = *(v70 + 17) == 0;
        v71 = 4;
      }

      if (!v75)
      {
        ++v71;
      }
    }

    else
    {
      v72 = v293;
      v73 = v294;
      v74 = v283;
      if ((v71 - 1) < 3)
      {
        v71 = 1;
        goto LABEL_92;
      }

      if (v71)
      {
LABEL_88:
        EvCrt_Illegal_Default("API_Get_Fix_Type", 0x679u);
        v71 = 0;
        v70 = *(p_api + 88);
      }
    }

LABEL_92:
    v291[74] = v71;
    v336[0] = 0;
    Num_SV_and_Clock_Unknowns = API_Get_Num_SV_and_Clock_Unknowns(v336);
    v77 = Num_SV_and_Clock_Unknowns - v336[0];
    if (Num_SV_and_Clock_Unknowns - v336[0] < 3)
    {
      if (v77 == 2)
      {
        goto LABEL_96;
      }

      if (v77 >= 1)
      {
        goto LABEL_99;
      }
    }

    else
    {
      if (*(v70 + 776) < 10.0)
      {
        v78 = 4;
        goto LABEL_103;
      }

LABEL_96:
      if (*(v70 + 760) < 10.0)
      {
        v78 = 3;
        goto LABEL_103;
      }

LABEL_99:
      if (*(v70 + 784) < 10.0 && *(v70 + 4))
      {
        v78 = 2;
        goto LABEL_103;
      }
    }

    v78 = Num_SV_and_Clock_Unknowns > 0;
LABEL_103:
    v291[75] = v78;
    v291[76] = API_Get_Fix_Reliability();
    v81 = p_api;
    v82 = *(p_api + 88);
    if (*(v82 + 19) == 1)
    {
      v83 = *(v82 + 12);
      if (v83)
      {
        if (*(v82 + 896) > 30000.0)
        {
          goto LABEL_106;
        }

        if (*(v82 + 476) == 1 && (*(v82 + 492) & 1) != 0)
        {
          v83 = 3;
        }

        else if (*(v82 + 16))
        {
          v83 = 2;
        }

        else
        {
          v83 = 1;
        }
      }
    }

    else
    {
LABEL_106:
      v83 = 0;
    }

    v291[77] = v83;
    v84 = *(v81 + 48);
    v85 = 2 * (*(v82 + 4) != 0);
    if (*v84 <= 8)
    {
      v86 = v84[21];
      if (v86)
      {
        if (((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v86) < 300000)
        {
          v85 |= 4u;
        }
      }
    }

    if (*(v82 + 408) == 1)
    {
      v87 = v85 | 8;
    }

    else
    {
      v87 = v85;
    }

    if (*(v82 + 396) == 1)
    {
      v87 |= 0x10u;
    }

    if (*(v82 + 392) == 1)
    {
      v88 = v87 | 0x20;
    }

    else
    {
      v88 = v87;
    }

    if (*(v82 + 416) == 1)
    {
      v89 = v88 | 0x40;
      v88 |= 0x80u;
      if (*(v82 + 420) != 1)
      {
        v88 = v89;
      }
    }

    v90 = 0;
    if (*(v82 + 524))
    {
      v88 |= 0x100u;
    }

    if (*(v82 + 540))
    {
      v88 |= 0x200u;
    }

    if (*(v82 + 556))
    {
      v88 |= 0x400u;
    }

    if (*(v82 + 572))
    {
      v88 |= 0x800u;
    }

    if (*(v82 + 668))
    {
      v88 |= 0x1000u;
    }

    if (*(v82 + 604))
    {
      v88 |= 0x2000u;
    }

    if (*(v82 + 588))
    {
      v88 |= 0x4000u;
    }

    if (*(v82 + 732))
    {
      v88 |= 0x8000u;
    }

    if (*(v82 + 684))
    {
      v88 |= 0x10000u;
    }

    if (*(v82 + 700))
    {
      v88 |= 0x20000u;
    }

    if (*(v82 + 716))
    {
      v88 |= 0x40000u;
    }

    if (*(v82 + 508))
    {
      v88 |= 0x1000000u;
    }

    if (*(v82 + 492))
    {
      v88 |= 0x2000000u;
    }

    if (*(v82 + 476))
    {
      v88 |= 0x4000000u;
    }

    if (*(v82 + 652))
    {
      v88 |= 0x80000u;
    }

    v11 = v292;
    while (*(*(p_api + 72) + 253 + v90) != 1 || *(*(p_api + 32) + v90) < 1)
    {
      if (++v90 == 178)
      {
        goto LABEL_158;
      }
    }

    v88 |= 0x10000000u;
LABEL_158:
    v91 = 0;
    while (*(*(p_api + 56) + 38768 + v91) != 1)
    {
      if (++v91 == 178)
      {
        goto LABEL_163;
      }
    }

    v88 |= 0x20000000u;
LABEL_163:
    if (v88 <= 1)
    {
      v92 = 1;
    }

    else
    {
      v92 = v88;
    }

    v291[78] = v92;
    *(v291 + 316) = 2;
    v93 = 400.0;
    if (sqrt(*(v291 + 26) * *(v291 + 26) + *(v291 + 25) * *(v291 + 25)) >= 400.0)
    {
      goto LABEL_190;
    }

    v94 = v291[75];
    if (!(v94 | v92 & 2))
    {
      goto LABEL_190;
    }

    v95 = v291[76];
    if (!v95)
    {
      goto LABEL_190;
    }

    v96 = v94 >= 3;
    v97 = v94 - 3;
    if (v96)
    {
      if (v97 >= 2)
      {
        EvCrt_Illegal_Default("API_Get_Nav_Data", 0xDDEu);
        v95 = v291[76];
        goto LABEL_180;
      }

      v98 = 0;
    }

    else
    {
LABEL_180:
      v98 = 1;
    }

    if ((v95 - 2) >= 3)
    {
      if (v95 != 1)
      {
        EvCrt_Illegal_Default("API_Get_Nav_Data", 0xDEDu);
      }
    }

    else if ((v98 & 1) == 0)
    {
      *(v291 + 317) = 1;
    }

    v99 = v291[75];
    if (v99 - 2 < 3)
    {
LABEL_189:
      *(v291 + 318) = 1;
      goto LABEL_190;
    }

    if (v99 >= 2)
    {
      EvCrt_Illegal_Default("API_Get_Nav_Data", 0xE04u);
      if ((v92 & 2) == 0)
      {
        goto LABEL_190;
      }

      goto LABEL_189;
    }

    if ((v92 & 2) != 0)
    {
      goto LABEL_189;
    }

LABEL_190:
    *(v8 + 73) = 0;
    *(v8 + 75) = 0;
    *(v8 + 38) = *(v288 + 520);
    HIDWORD(v100) = *(v288 + 522);
    LODWORD(v100) = HIDWORD(v100);
    *(v8 + 78) = v100 >> 16;
    *(v8 + 82) = *v286;
    *(v8 + 43) = *(v305 + 250);
    *(v8 + 88) = *(v288 + 527);
    *(v8 + 89) = *(v288 + 440);
    *(v8 + 45) = *(v288 + 444);
    *(v8 + 92) = *(v288 + 464);
    *(v8 + 94) = 0;
    *(v8 + 101) = 0;
    *(v8 + 14) = *(v305 + 96);
    *(v8 + 15) = *(v305 + 176);
    *(v8 + 16) = *(v305 + 232);
    v101 = *(v305 + 208);
    *(v8 + 17) = v101;
    *(v8 + 18) = 0;
    API_Get_Dbg_Constell_ME_Data(1, (v8 + 38), v101, v93, v79, v80);
    API_Get_Dbg_Constell_ME_Data(5, (v8 + 48), v102, v103, v104, v105);
    API_Get_Dbg_Constell_ME_Data(2, (v8 + 58), v106, v107, v108, v109);
    API_Get_Dbg_Constell_ME_Data(3, (v8 + 68), v110, v111, v112, v113);
    API_Get_Dbg_Constell_ME_Data(4, (v8 + 78), v114, v115, v116, v117);
    API_Get_Dbg_Constell_ME_Data(6, (v8 + 88), v118, v119, v120, v121);
    v122 = *(v305 + 1032);
    if (v122 < 1)
    {
      v125 = 0;
    }

    else
    {
      v123 = *(p_api + 48);
      if (*(v123 + 5) == 1 && *v123 >= 3)
      {
        v124 = *(v123 + 24) + 604800 * *(v123 + 16);
      }

      else
      {
        v124 = 0;
      }

      v125 = (v124 - v122) / 3600;
    }

    v8[98] = v125;
    v126 = *(v305 + 1036);
    if (v126 < 1)
    {
      *(v8 + 198) = 0;
      v127 = p_api;
    }

    else
    {
      v127 = p_api;
      v128 = *(p_api + 48);
      if (*(v128 + 5) == 1 && *v128 >= 3)
      {
        v129 = *(v128 + 24) + 604800 * *(v128 + 16);
      }

      else
      {
        LOBYTE(v129) = 0;
      }

      *(v8 + 198) = ((v129 - v126) / 16);
    }

    v130 = 0;
    v131 = *(v127 + 64) + 365;
    v132 = 0uLL;
    do
    {
      v132 = vsubq_s8(v132, vtstq_s8(*(v131 + v130), *(v131 + v130)));
      v130 += 16;
    }

    while (v130 != 48);
    *(v8 + 398) = vaddvq_s8(v132);
    if (*(v301 + 128) == 1)
    {
      v133 = *(v301 + 132);
    }

    else
    {
      v133 = 0;
    }

    v134 = 0;
    v8[100] = v133;
    do
    {
      *(v8 + v134 + 404) = *(v74 + v134);
      ++v134;
    }

    while (v134 != 6);
    *(v8 + 410) = *(v289 + 31344);
    v132.i32[0] = *(v301 + 11048);
    *(v8 + 52) = v132.u64[0] * 0.001;
    *(v8 + 53) = *(v292 + 1976);
    *(v8 + 54) = *(v292 + 2000);
    *(v8 + 55) = *(v292 + 2024);
    *(v8 + 448) = *(v292 + 19);
    *(v8 + 449) = *(v301 + 232);
    API_Get_Dbg_Constell_PE_Data(1, (v8 + 114));
    API_Get_Dbg_Constell_PE_Data(5, (v8 + 144));
    API_Get_Dbg_Constell_PE_Data(2, (v8 + 174));
    API_Get_Dbg_Constell_PE_Data(3, (v8 + 204));
    API_Get_Dbg_Constell_PE_Data(4, (v8 + 234));
    API_Get_Dbg_Constell_PE_Data(6, (v8 + 264));
    API_Get_Dbg_Constell_Orb_Data(1uLL, (v8 + 308));
    API_Get_Dbg_Constell_Orb_Data(5uLL, (v8 + 320));
    API_Get_Dbg_Constell_Orb_Data(2uLL, (v8 + 332));
    API_Get_Dbg_Constell_Orb_Data(3uLL, (v8 + 344));
    API_Get_Dbg_Constell_Orb_Data(4uLL, (v8 + 356));
    API_Get_Dbg_Constell_Orb_Data(6uLL, (v8 + 368));
    *(v8 + 8) = *(v292 + 532);
    *(v8 + 9) = *(v292 + 540);
    *(v8 + 10) = *(v292 + 536) != 0;
    v8[3] = *(v292 + 544);
    *(v8 + 16) = *(v300 + 3);
    *(v8 + 17) = *(v300 + 5);
    *(v8 + 18) = *(v292 + 516);
    *(v8 + 19) = *(v292 + 524);
    *(v8 + 20) = *(v292 + 520) != 0;
    v8[6] = *(v292 + 528);
    *(v8 + 28) = *v300;
    *(v8 + 29) = *(v300 + 2);
    *(v8 + 30) = *(v292 + 548);
    *(v8 + 31) = *(v292 + 556);
    *(v8 + 32) = *(v292 + 552) != 0;
    v8[9] = *(v292 + 560);
    *(v8 + 40) = *(v300 + 6);
    *(v8 + 41) = *(v300 + 8);
    *(v8 + 42) = *(v292 + 596);
    *(v8 + 43) = *(v292 + 604);
    *(v8 + 44) = *(v292 + 600) != 0;
    v8[12] = *(v292 + 608);
    memset(v336, 0, sizeof(v336));
    Core_Get_ExtA_Alt(6000, v336);
    *(v8 + 14) = *&v336[2];
    *(v8 + 72) = v336[6];
    *(v8 + 1176) = *(v292 + 580);
    *(v8 + 1177) = *(v292 + 588);
    *(v8 + 1178) = *(v292 + 584) != 0;
    v8[295] = *(v292 + 592);
    *(v8 + 1184) = *(v300 + 1088);
    *(v8 + 149) = -(*(v292 + 208) - v289[2973] * 0.0174532925) * 6378137.0;
    *(v8 + 150) = *(v292 + 312) * (-(*(v292 + 216) - v289[2974] * 0.0174532925) * 6378137.0);
    v135 = v289[2977];
    v136 = v135 - *(v292 + 360);
    *(v8 + 151) = v136;
    v137 = -360.0;
    if (v136 >= 180.0 || (v137 = 360.0, v136 < -180.0))
    {
      *(v8 + 151) = v136 + v137;
      v135 = v289[2977];
    }

    if (v135 <= 0.0)
    {
      v138 = -0.5;
    }

    else
    {
      v138 = 0.5;
    }

    v139 = v135 + v138;
    if (v139 <= 2147483650.0)
    {
      if (v139 >= -2147483650.0)
      {
        v140 = v139;
      }

      else
      {
        LOWORD(v140) = 0;
      }
    }

    else
    {
      LOWORD(v140) = -1;
    }

    *(v8 + 608) = v140;
    v141 = v289[2978];
    if (v141 <= 0.0)
    {
      v142 = -0.5;
    }

    else
    {
      v142 = 0.5;
    }

    v143 = v141 + v142;
    if (v143 <= 2147483650.0)
    {
      if (v143 >= -2147483650.0)
      {
        v144 = v143;
      }

      else
      {
        LOWORD(v144) = 0;
      }
    }

    else
    {
      LOWORD(v144) = -1;
    }

    *(v8 + 609) = v144;
    v145 = v289[2979];
    if (v145 <= 0.0)
    {
      v146 = -0.5;
    }

    else
    {
      v146 = 0.5;
    }

    v147 = v145 + v146;
    if (v147 <= 2147483650.0)
    {
      if (v147 >= -2147483650.0)
      {
        v148 = v147;
      }

      else
      {
        LOBYTE(v148) = 0;
      }
    }

    else
    {
      LOBYTE(v148) = -1;
    }

    *(v8 + 1220) = v148;
    *(v8 + 1221) = *(v300 + 280);
    *(v8 + 1225) = *(v300 + 1124);
    v335 = 0;
    memset(v336, 0, 24);
    memset(v347, 0, 24);
    *v331 = 0;
    v334 = 0;
    v333 = 0;
    Pos_LLH = Core_Get_Pos_LLH(*v289, 150000, 0, &v335, v336, v347, v331, v8 + 1530, &v334, &v333 + 1, &v333);
    *(v8 + 1520) = Pos_LLH;
    if (Pos_LLH)
    {
      v8[381] = *(v292 + 412);
      *(v8 + 1528) = BYTE4(v333);
      *(v8 + 1529) = v333;
      v150 = *(v292 + 416);
      v151 = v150 == 1 ? *(v292 + 620) : 0;
      *(v8 + 1521) = v151 & 1;
      *(v8 + 1522) = v150 == 1;
      *(v8 + 1523) = *(v292 + 616) != 0;
      v152 = *&v336[2];
      *(v8 + 192) = (*v336 - *(v292 + 208)) * 6378137.0;
      *(v8 + 193) = *(v292 + 312) * ((v152 - *(v292 + 216)) * 6378137.0);
      *(v8 + 195) = vmovn_s64(vcvtq_u64_f64(vsqrtq_f64(v347[0])));
      *(v8 + 1568) = (v347[1].f64[0] * 57.2957795);
      if (*(v8 + 1530) == 1)
      {
        *(v8 + 194) = *&v336[4];
        *(v8 + 785) = sqrt(*v331);
      }
    }

    *(v8 + 1572) = *(v292 + 660);
    *(v8 + 1573) = *(v292 + 668);
    *(v8 + 1574) = *(v292 + 664) != 0;
    *(v8 + 1575) = 0;
    if (*(p_NA + 319) == 1)
    {
      v153 = *(p_NA + 19388);
      *(v8 + 1572) = 1;
      *(v8 + 1575) = v153;
    }

    *(v8 + 1576) = *(v292 + 724);
    *(v8 + 1577) = *(v292 + 732);
    *(v8 + 1578) = *(v292 + 728) != 0;
    v8[395] = *(v292 + 736);
    *(v8 + 199) = v289[3014];
    memset(v336, 0, 24);
    if (Core_Get_ExtA_AT_Vel(120000, v336))
    {
      *(v8 + 1600) = *(v292 + 676);
      *(v8 + 1601) = *(v292 + 684);
      *(v8 + 1602) = *(v292 + 680) != 0;
      *(v8 + 402) = *&v336[2];
    }

    memset(v347, 0, 24);
    if (Core_Get_ExtA_Heading(120000, v347))
    {
      *(v8 + 1624) = *(v292 + 708);
      *(v8 + 1625) = *(v292 + 716);
      *(v8 + 1626) = *(v292 + 712) != 0;
      *(v8 + 102) = *(v347 + 8);
    }

    v332 = 0uLL;
    *v331 = 0;
    if (Core_Get_ExtA_V_Vel(120000, v331))
    {
      *(v8 + 1648) = *(v292 + 692);
      *(v8 + 1649) = *(v292 + 700);
      *(v8 + 1650) = *(v292 + 696) != 0;
      *(v8 + 414) = v332;
    }

    v154 = 0;
    v155 = *(v292 + 36);
    v8[418] = v155;
    v8[419] = *(v292 + 32);
    *(v8 + 1680) = 0;
    v156 = 1;
    do
    {
      v157 = v156;
      if (*(v285 + v154) == 1 && *(v325 + 8 * v154) > 0.0)
      {
        *(v8 + 1680) = 1;
        *(v8 + 841) = *(v311 + 2 * v154);
        *(v8 + 211) = *(v309 + 8 * v154);
        *(v8 + 212) = *(v325 + 8 * v154);
        v8[426] = v155 - *(v308 + 4 * v154);
      }

      v156 = 0;
      v154 = 1;
    }

    while ((v157 & 1) != 0);
    *(v8 + 1708) = *(v290 + 8);
    v158 = *(v290 + 568) * 1000000000.0;
    if (v158 <= 0.0)
    {
      v159 = -0.5;
    }

    else
    {
      v159 = 0.5;
    }

    v160 = v158 + v159;
    v161 = v160;
    if (v160 < -2147483650.0)
    {
      v161 = 0x80000000;
    }

    if (v160 > 2147483650.0)
    {
      v161 = 0x7FFFFFFF;
    }

    v8[428] = v161;
    v8[429] = (sqrt(*(v290 + 576)) * 1000000000.0);
    *(v8 + 1720) = *(v289 + 16);
    *(v8 + 1721) = *(v292 + 48);
    *(v8 + 216) = *(v292 + 40);
    *(v8 + 868) = *(v292 + 54);
    *(v8 + 1738) = *(v292 + 180);
    *(v8 + 218) = *(v292 + 192);
    HIDWORD(v162) = *(v292 + 186);
    LODWORD(v162) = HIDWORD(v162);
    v8[438] = v162 >> 16;
    *(v8 + 1756) = 0;
    if ((*(v292 + 52) & 1) != 0 && (*(v72 + 2111) - 4) <= 2)
    {
      v163 = *(*(p_api + 56) + 8456);
      v164 = *(*(p_api + 56) + 8457);
      v165 = *(*(p_api + 56) + 8459);
      v166 = *(*(p_api + 56) + 8460);
      *(v8 + 1756) = 1;
      v167 = v164 | 0x400;
      v168 = *(v279 + 16) - 127;
      do
      {
        v169 = v167;
        v167 += 256;
      }

      while (v168 > v169);
      *(v8 + 880) = v169;
      *(v8 + 1758) = (795365 * (v163 << 12)) >> 36;
      *(v8 + 1757) = *v280;
      v170 = v165 | 0x400;
      do
      {
        v171 = v170;
        v170 += 256;
      }

      while (v168 > v171);
      *(v8 + 882) = v171;
      *(v8 + 1763) = v166;
      *(v8 + 1762) = v280[3];
    }

    *(v8 + 883) = 0;
    if (*(v72 + 16296) == 1)
    {
      *(v8 + 883) = (vcvtd_n_f64_s32(*(v72 + 4059), 0x1EuLL) * 1000000000.0);
    }

    *(v8 + 884) = 0;
    *v336 = 0;
    if (!R8_EQ(v303, v336))
    {
      v347[0].f64[0] = 0.0;
      if (!R8_EQ(v282, v347[0].f64))
      {
        *(v8 + 884) = ((*v282 - *v303) * 1000000000.0);
      }
    }

    *(v8 + 885) = 0;
    if ((*v295 - 2) <= 4)
    {
      *(v8 + 885) = (*(v295 + 4) * 0.1);
    }

    *(v8 + 886) = 0;
    *v336 = 0;
    v172 = R8_EQ(v303, v336);
    if (!v172)
    {
      v347[0].f64[0] = 0.0;
      v172 = R8_EQ(v281, v347[0].f64);
      if (!v172)
      {
        *(v8 + 886) = ((*v281 - *v303) * 1000000000.0);
      }
    }

    *(v8 + 111) = *(v305 + 88);
    *(v8 + 112) = *(v305 + 104);
    *(v8 + 113) = *(v305 + 120);
    *(v8 + 114) = *(v305 + 136);
    *(v8 + 115) = *(v305 + 152);
    *(v8 + 116) = *(v305 + 168);
    *(v8 + 117) = *(v305 + 184);
    *(v8 + 118) = *(v305 + 232);
    *(v8 + 952) = *(v305 + 248);
    *(v8 + 478) = *(v305 + 200);
    *(v8 + 482) = *(v305 + 216);
    v173 = *(p_api + 288);
    *(v8 + 972) = *(v173 + 8);
    *(v8 + 1946) = *(v173 + 16);
    *(v8 + 1947) = *(v173 + 17);
    v8[487] = 1224998914;
    strcpy(v8 + 1952, "230302");
    *(v8 + 245) = vrev64_s32(vsub_s32(*(v292 + 32), *(v305 + 1064)));
    *(v8 + 1968) = *(v305 + 73);
    *(v8 + 1969) = *(v305 + 43);
    v174 = *(v305 + 31);
    *(v8 + 1970) = v174;
    if (*(v305 + 34) == 1)
    {
      v174 |= 2u;
      *(v8 + 1970) = v174;
    }

    if (*(v305 + 33) == 1)
    {
      v174 |= 4u;
      *(v8 + 1970) = v174;
    }

    if (*(v305 + 32) == 1)
    {
      v174 |= 8u;
      *(v8 + 1970) = v174;
    }

    if (*(v305 + 36) == 1)
    {
      v174 |= 0x10u;
      *(v8 + 1970) = v174;
    }

    if (*(v305 + 35) == 1)
    {
      *(v8 + 1970) = v174 | 0x20;
    }

    v175 = *(v305 + 37);
    *(v8 + 1971) = v175;
    if (*(v305 + 40) == 1)
    {
      v175 |= 2u;
      *(v8 + 1971) = v175;
    }

    if (*(v305 + 39) == 1)
    {
      v175 |= 4u;
      *(v8 + 1971) = v175;
    }

    if (*(v305 + 38) == 1)
    {
      v175 |= 8u;
      *(v8 + 1971) = v175;
    }

    if (*(v305 + 42) == 1)
    {
      v175 |= 0x10u;
      *(v8 + 1971) = v175;
    }

    if (*(v305 + 41) == 1)
    {
      *(v8 + 1971) = v175 | 0x20;
    }

    *(v8 + 1972) = *(v305 + 52);
    v176 = *(v305 + 1072);
    v177 = *(v305 + 1088);
    *(v8 + 501) = *(v305 + 1100);
    *(v8 + 494) = v176;
    *(v8 + 498) = v177;
    v179 = *(v305 + 1420);
    v178 = *(v305 + 1436);
    v180 = *(v305 + 1404);
    *(v8 + 521) = *(v305 + 1452);
    *(v8 + 513) = v179;
    *(v8 + 517) = v178;
    *(v8 + 509) = v180;
    *(v8 + 505) = *(v305 + 1388);
    v182 = *(v305 + 1540);
    v181 = *(v305 + 1556);
    v183 = *(v305 + 1524);
    *(v8 + 551) = *(v305 + 1572);
    *(v8 + 543) = v182;
    *(v8 + 547) = v181;
    *(v8 + 539) = v183;
    v184 = *(v305 + 1476);
    v185 = *(v305 + 1508);
    *(v8 + 531) = *(v305 + 1492);
    *(v8 + 535) = v185;
    *(v8 + 527) = v184;
    *(v8 + 523) = *(v305 + 1460);
    if (gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v172))
    {
      memcpy(v8 + 553, (*(p_api + 152) + 4), 0x2800uLL);
    }

    v361 = 0;
    memset(v360, 0, sizeof(v360));
    memset(v358, 0, sizeof(v358));
    v359 = 0;
    bzero(v357, 0x590uLL);
    bzero(v356, 0x590uLL);
    v186 = 0;
    v355 = 0;
    memset(v354, 0, sizeof(v354));
    memset(v351, 0, 14);
    memset(v350, 0, sizeof(v350));
    memset(v349, 0, sizeof(v349));
    memset(v348, 0, 14);
    *&v187 = 0x8181818181818181;
    *(&v187 + 1) = 0x8181818181818181;
    v352[0] = v187;
    v352[1] = v187;
    v352[2] = v187;
    v352[3] = v187;
    v352[4] = v187;
    v352[5] = v187;
    v352[6] = v187;
    v352[7] = v187;
    v352[8] = v187;
    v352[9] = v187;
    v352[10] = v187;
    v353 = -32383;
    while (2)
    {
      Constell_Prn = Get_Constell_Prn(v186);
      if (Constell_Prn <= 3)
      {
        if (Constell_Prn != 1)
        {
          if (Constell_Prn == 2)
          {
            v360[v186] = 4;
          }

          else
          {
            if (Constell_Prn == 3)
            {
              v189 = 8;
              goto LABEL_313;
            }

LABEL_314:
            v360[v186] = 15;
            EvCrt_Illegal_Default("API_Get_Nav_Data", 0x1027u);
          }

          goto LABEL_316;
        }

LABEL_310:
        v360[v186] = 0;
        goto LABEL_316;
      }

      if ((Constell_Prn - 5) < 2)
      {
        goto LABEL_310;
      }

      if (Constell_Prn != 4)
      {
        goto LABEL_314;
      }

      v189 = 12;
LABEL_313:
      v360[v186] = v189;
LABEL_316:
      if (++v186 != 178)
      {
        continue;
      }

      break;
    }

    memset(v351, 4, 14);
    v190 = 47;
    do
    {
      v191 = v190;
      v192 = *(v329 + 4 * v190);
      v193 = HIWORD(v192);
      if ((v192 & 0xFF00FF) == 2)
      {
        v194 = 0;
        while (*(v19 + 4 * v194) != *(v323 + 4 * v191))
        {
          if (++v194 == 24)
          {
            goto LABEL_324;
          }
        }

        LOBYTE(v193) = v194 + 1;
      }

LABEL_324:
      v195 = v192 & 0xFF00FFFF | (v193 << 16);
      if (Is_Legal(v195))
      {
        v198 = GNSS_Id_To_Num_Prn_Idx(v195);
        if (*(v327 + 4 * v191) >= 10)
        {
          v201 = &v73[v191];
          v360[v198] = *(v201 + 1);
          LOBYTE(v199) = *(v321 + v191);
          LOBYTE(v200) = *(v319 + v191);
          *&v202 = v200;
          *&v203 = v199 + *&v202 * 0.0625;
          v357[v198] = *&v203;
          LOBYTE(v203) = *(v317 + v191);
          LOBYTE(v202) = *(v315 + v191);
          v356[v198] = v203 + v202 * 0.0625;
          v354[v198] = *(v313 + v191);
          if (*(v307 + v191) == 1)
          {
            v358[v198] = 1;
          }

          if (v192 == 2)
          {
            *(v352 + v198) = *(v201 + 3);
          }
        }
      }

      else if (*(v327 + 4 * v191) >= 10)
      {
        v204 = &v73[v191];
        if ((*(v204 + 3) + 7) <= 0xDu)
        {
          v205 = (*(v204 + 3) + 7);
          v351[v205] = *(v204 + 1);
          LOBYTE(v196) = *(v321 + v191);
          LOBYTE(v197) = *(v319 + v191);
          *&v206 = v197;
          *&v207 = v196 + *&v206 * 0.0625;
          v350[v205] = *&v207;
          LOBYTE(v207) = *(v317 + v191);
          LOBYTE(v206) = *(v315 + v191);
          v349[v205] = v207 + v206 * 0.0625;
          v348[v205] = *(v313 + v191);
        }
      }

      v190 = v191 - 1;
    }

    while (v191);
    v22 = *(v292 + 32);
    if (v22 != v299)
    {
      v18 = v298 + 1;
      v21 = v305;
      if (v298 == 5)
      {
LABEL_531:
        bzero(v291, 0x18C8uLL);
        bzero(v8, 0x30A8uLL);
LABEL_532:
        result = 0;
        goto LABEL_533;
      }

      continue;
    }

    break;
  }

  if (v298 > 3)
  {
    goto LABEL_531;
  }

  Inc_GPS_TOW(-*(v291 + 6), v291 + 4, v291 + 12);
  API_Get_UTC_Cor(0, v291 + 8);
  GPS_To_UTC_Time(v291 + 5, v291 + 6, v291 + 7, v291 + 8, v291 + 9, v291 + 10, v291 + 11, *(v291 + 12), *(v291 + 4), *(v291 + 8));
  if (*(v291 + 9) == 1 && *(v291 + 8) == 23 && *(v291 + 9) == 59)
  {
    v208 = *(v291 + 10);
    if (v208 >= 0x3A)
    {
      v336[0] = 0;
      v331[0] = 0;
      LODWORD(v347[0].f64[0]) = 0;
      API_Get_Next_Leap_Second(v336, v331, v347);
      if (!LODWORD(v347[0].f64[0]) && v331[0] == 1)
      {
        *(v291 + 10) = v208 + 1;
      }
    }
  }

  v209 = 0;
  v210 = 0;
  v211 = *(p_api + 32);
  v343 = *(v211 + 128);
  v344 = *(v211 + 144);
  v345 = *(v211 + 160);
  v346 = *(v211 + 176);
  v339 = *(v211 + 64);
  v340 = *(v211 + 80);
  v341 = *(v211 + 96);
  v326 = v291 + 1554;
  v324 = v291 + 1266;
  v322 = v291 + 1522;
  v342 = *(v211 + 112);
  *v336 = *v211;
  *&v336[4] = *(v211 + 16);
  v337 = *(v211 + 32);
  v338 = *(v211 + 48);
  v306 = v72 + 33605;
  v330 = v291 + 433;
  v320 = v291 + 81;
  v316 = v291 + 465;
  v318 = v291 + 209;
  v312 = v291 + 754;
  v314 = v291 + 498;
  v302 = v211 + 178;
  v304 = (v72 + 37522);
  v310 = v291 + 1010;
  while (2)
  {
    v212 = 0;
    v213 = -100;
    LODWORD(v214) = -1;
    do
    {
      if (*(v336 + v212) <= v213)
      {
        v214 = v214;
      }

      else
      {
        v213 = *(v336 + v212);
        v214 = v212;
      }

      ++v212;
    }

    while (v212 != 178);
    if ((v214 & 0x80000000) == 0)
    {
      *(v336 + v214) = -120;
      if (*(v211 + v214) < 0 && v357[v214] <= 0.0)
      {
        goto LABEL_529;
      }

      v215 = v211;
      LODWORD(v347[0].f64[0]) = 0;
      v216 = 0;
      v217 = LongPrnIdx_To_Prn(v214, v347);
      *(v330 + v210) = v217;
      v218 = v360[v214];
      v328 = v209;
      if (SLODWORD(v347[0].f64[0]) > 3)
      {
        if (LODWORD(v347[0].f64[0]) == 4)
        {
          v222 = v218 - 12;
          v223 = v218 + 69;
          v216 = 5;
          if (v222 >= 3)
          {
            v219 = 0;
          }

          else
          {
            v219 = v223;
          }
        }

        else if (LODWORD(v347[0].f64[0]) == 5)
        {
          if (v360[v214])
          {
            if (v218 == 1)
            {
              v219 = 50;
            }

            else
            {
              v219 = 0;
            }
          }

          else
          {
            v219 = 49;
          }

          v216 = 3;
        }

        else
        {
          v219 = 0;
          if (LODWORD(v347[0].f64[0]) == 6)
          {
            if (v360[v214])
            {
              v219 = 0;
            }

            else
            {
              v219 = 65;
            }

            v216 = 4;
          }
        }
      }

      else if (LODWORD(v347[0].f64[0]) == 1)
      {
        if (v360[v214])
        {
          if (v218 == 1)
          {
            v219 = 18;
          }

          else
          {
            v219 = 0;
          }
        }

        else
        {
          v219 = 17;
        }

        v216 = 1;
      }

      else if (LODWORD(v347[0].f64[0]) == 2)
      {
        if (v218 >= 8)
        {
          v219 = 0;
        }

        else
        {
          v219 = *&asc_29972A558[4 * v360[v214]];
        }

        v216 = 2;
      }

      else
      {
        v219 = 0;
        if (LODWORD(v347[0].f64[0]) == 3)
        {
          v220 = v218 & 0xFC;
          v221 = v218 + 89;
          v216 = 6;
          if (v220 == 8)
          {
            v219 = v221;
          }

          else
          {
            v219 = 0;
          }
        }
      }

      *(v330 + v210) = LongPrnIdx_To_Prn(v214, v347);
      v320[v210] = v216;
      v318[v210] = v219;
      *(v316 + v210) = *(v352 + v214);
      *&v314[2 * v210] = v357[v214];
      *&v312[2 * v210] = v356[v214];
      *(v326 + v210) = v354[v214];
      v224 = 5928;
      v225 = 2120;
      while (1)
      {
        v227 = *v73++;
        v226 = v227;
        if (Is_Legal(v227) && GNSS_Id_To_Num_Prn_Idx(v226) == v214)
        {
          break;
        }

        v225 += 40;
        v224 += 4;
        if (v225 == 4040)
        {
          goto LABEL_401;
        }
      }

      v228 = *(p_api + 176);
      v229 = *(v228 + v224);
      if (v229)
      {
        v230 = *(v292 + 32) - v229;
      }

      else
      {
        v230 = 0x7FFFFFFF;
      }

      if (v230 < 0)
      {
        v230 = -v230;
      }

      if (v230 >> 5 <= 0x752)
      {
        v231 = v228 + v225;
        *&v310[2 * v210] = *(v231 + 1920);
        v232 = *v231;
        v73 = v294;
        v211 = v215;
        goto LABEL_404;
      }

LABEL_401:
      if ((*(v302 + 2 * v214) & 0x80000000) == 0)
      {
        *&v310[2 * v210] = *(v302 + 2 * v214);
      }

      v211 = v215;
      v232 = *(v215 + v214);
      v73 = v294;
LABEL_404:
      *&v324[2 * v210] = v232;
      v233 = v358[v214];
      *(v322 + v210) = v233;
      if (*(v72 + v214 + 37344))
      {
        v234 = 1;
      }

      else
      {
        v234 = *(v304 + v214);
      }

      v235 = v291 + 3 * v210 + 1348;
      v236 = *v235 & 0xFFFE | v234 & 1;
      *v235 = v236;
      v237 = v236 & 0xFFFD | (2 * (*(v304 + v214) & 1));
      *v235 = v237;
      if ((v234 & 1) == 0)
      {
        goto LABEL_444;
      }

      if (SLODWORD(v347[0].f64[0]) > 3)
      {
        if (LODWORD(v347[0].f64[0]) != 4)
        {
          if (LODWORD(v347[0].f64[0]) != 5)
          {
            if (LODWORD(v347[0].f64[0]) != 6)
            {
              goto LABEL_416;
            }

            goto LABEL_472;
          }

          v242 = v217 - 193;
          v239 = *(v72 + 27 * v242 + 2153);
          v243 = v293[1073];
          goto LABEL_424;
        }

        v238 = v293[3062] + v217;
        v239 = *(v72 + 25 * v217 + 6106);
LABEL_420:
        if (*(v238 - 1))
        {
          goto LABEL_421;
        }

LABEL_425:
        v241 = 0;
      }

      else
      {
        switch(LODWORD(v347[0].f64[0]))
        {
          case 1:
            v239 = *(v72 + 27 * v217);
            if (*(v293[10] + v217 - 1) != 1)
            {
              goto LABEL_425;
            }

            break;
          case 2:
            v242 = v217 - 1;
            v239 = HIDWORD(v72[8 * v242 + 1403]);
            v243 = v293[2039];
LABEL_424:
            if ((*(v243 + v242) & 1) == 0)
            {
              goto LABEL_425;
            }

            break;
          case 3:
            v238 = v293[2080] + v217;
            v239 = HIDWORD(v72[11 * v217 + 2081]);
            goto LABEL_420;
          default:
LABEL_416:
            v240 = 4483;
LABEL_443:
            EvCrt_Illegal_Default("API_Get_Nav_Data", v240);
LABEL_444:
            if (SLODWORD(v347[0].f64[0]) > 3)
            {
              if (LODWORD(v347[0].f64[0]) != 4)
              {
                if (LODWORD(v347[0].f64[0]) != 5)
                {
                  if (LODWORD(v347[0].f64[0]) == 6)
                  {
                    goto LABEL_472;
                  }

                  goto LABEL_453;
                }

                v246 = v217 - 193;
                if ((*(v290 + 79 + v246) & 1) == 0)
                {
                  goto LABEL_472;
                }

                v247 = v290 + 4304;
                goto LABEL_462;
              }

              v246 = v217 - 1;
              if ((*(v290 + 223 + v246) & 1) == 0)
              {
                goto LABEL_472;
              }

              v247 = v290 + 9884;
              v248 = 100;
            }

            else
            {
              if (LODWORD(v347[0].f64[0]) != 1)
              {
                if (LODWORD(v347[0].f64[0]) != 2)
                {
                  if (LODWORD(v347[0].f64[0]) == 3)
                  {
                    v246 = v217 - 1;
                    if (*(v290 + 150 + v246))
                    {
                      v247 = v290 + 5400;
                      v248 = 88;
                      goto LABEL_463;
                    }

LABEL_472:
                    if (*(v72 + v214 + 37700) != 1)
                    {
                      goto LABEL_501;
                    }

                    v254 = *v235;
                    *v235 |= 0x200u;
                    if (SLODWORD(v347[0].f64[0]) > 3)
                    {
                      if (LODWORD(v347[0].f64[0]) != 4)
                      {
                        if (LODWORD(v347[0].f64[0]) != 5)
                        {
                          if (LODWORD(v347[0].f64[0]) != 6)
                          {
                            goto LABEL_481;
                          }

                          goto LABEL_528;
                        }

                        v260 = v72 + 11 * v217 + 570;
                        goto LABEL_488;
                      }

                      v258 = v217;
                      v259 = v72 + 3990;
                    }

                    else
                    {
                      if (LODWORD(v347[0].f64[0]) != 1)
                      {
                        if (LODWORD(v347[0].f64[0]) != 2)
                        {
                          if (LODWORD(v347[0].f64[0]) == 3)
                          {
                            v255 = v217;
                            v256 = v72 + 2884;
                            goto LABEL_486;
                          }

LABEL_481:
                          v257 = 4588;
LABEL_497:
                          EvCrt_Illegal_Default("API_Get_Nav_Data", v257);
LABEL_501:
                          if (SLODWORD(v347[0].f64[0]) > 3)
                          {
                            if (LODWORD(v347[0].f64[0]) != 4)
                            {
                              if (LODWORD(v347[0].f64[0]) != 5)
                              {
                                if (LODWORD(v347[0].f64[0]) == 6)
                                {
                                  goto LABEL_528;
                                }

                                goto LABEL_510;
                              }

                              v263 = v217 - 193;
                              if ((*(v290 + 89 + v263) & 1) == 0)
                              {
                                goto LABEL_528;
                              }

                              v264 = v290 + 5024;
                              goto LABEL_519;
                            }

                            v263 = v217 - 1;
                            if ((*(v290 + 260 + v263) & 1) == 0)
                            {
                              goto LABEL_528;
                            }

                            v264 = v290 + 13584;
                            v266 = 44;
                          }

                          else
                          {
                            switch(LODWORD(v347[0].f64[0]))
                            {
                              case 1:
                                v263 = v217 - 1;
                                if (*(v290 + 47 + v263) != 1)
                                {
                                  goto LABEL_528;
                                }

                                v264 = v290 + 3152;
                                break;
                              case 2:
                                v263 = v217 - 1;
                                if ((*(v290 + 123 + v263) & 1) == 0)
                                {
                                  goto LABEL_528;
                                }

                                v264 = v290 + 16748;
                                break;
                              case 3:
                                v263 = v217 - 1;
                                if (*(v290 + 186 + v263))
                                {
                                  v264 = v290 + 8568;
                                  break;
                                }

LABEL_528:
                                v269 = *(v235 + 2) & 0xFE | v306[v214];
                                *(v235 + 2) = v269;
                                v270 = v269 & 0xFD | (2 * v306[v214]);
                                *(v235 + 2) = v270;
                                v271 = v270 & 0xFB | (4 * v306[v214]);
                                *(v235 + 2) = v271;
                                v272 = v271 & 0xF7 | (8 * v306[v214]);
                                *(v235 + 2) = v272;
                                *(v235 + 2) = v272 & 0xEF | (16 * v306[v214]);
                                ++v210;
                                v209 = v328 + v233;
LABEL_529:
                                if (v210 >= 0x80)
                                {
                                  goto LABEL_542;
                                }

                                continue;
                              default:
LABEL_510:
                                v265 = 4625;
LABEL_527:
                                EvCrt_Illegal_Default("API_Get_Nav_Data", v265);
                                goto LABEL_528;
                            }

LABEL_519:
                            v266 = 36;
                          }

                          v267 = *(v264 + v263 * v266 + 4);
                          if (v267 <= 6)
                          {
                            if (((1 << v267) & 0x57) == 0)
                            {
                              if (v267 == 3)
                              {
                                v268 = *v235 | 0x1000;
                              }

                              else
                              {
                                v268 = *v235 | 0x800;
                              }

                              *v235 = v268;
                            }

                            goto LABEL_528;
                          }

                          v265 = 4656;
                          goto LABEL_527;
                        }

                        v255 = v217;
                        v256 = v72 + 1919;
LABEL_486:
                        v260 = v256 + 9 * v255 - 8;
LABEL_488:
                        v261 = *v260;
                        if (v261 <= 2)
                        {
                          if (v261 < 3)
                          {
                            goto LABEL_501;
                          }
                        }

                        else
                        {
                          if (v261 <= 4)
                          {
                            if (v261 == 3)
                            {
                              v262 = -28160;
                            }

                            else
                            {
                              v262 = 9728;
                            }

                            goto LABEL_500;
                          }

                          if (v261 == 5)
                          {
                            v262 = 18944;
LABEL_500:
                            *v235 = v254 | v262;
                            goto LABEL_501;
                          }

                          if (v261 == 6)
                          {
                            goto LABEL_501;
                          }
                        }

                        v257 = 4607;
                        goto LABEL_497;
                      }

                      v258 = v217;
                      v259 = v72 + 877;
                    }

                    v260 = v259 + 11 * v258 - 10;
                    goto LABEL_488;
                  }

LABEL_453:
                  v249 = 4532;
LABEL_471:
                  EvCrt_Illegal_Default("API_Get_Nav_Data", v249);
                  goto LABEL_472;
                }

                v250 = v217 - 1;
                if ((*(v290 + 99 + v250) & 1) == 0)
                {
                  goto LABEL_472;
                }

                v251 = v290 + 15212 + (v250 << 6);
LABEL_464:
                v252 = *(v251 + 4);
                if (v252 <= 6)
                {
                  if (((1 << v252) & 0x57) == 0)
                  {
                    if (v252 == 3)
                    {
                      v253 = *v235 | 0x10;
                    }

                    else
                    {
                      v253 = *v235 | 8;
                    }

                    *v235 = v253;
                  }

                  goto LABEL_472;
                }

                v249 = 4563;
                goto LABEL_471;
              }

              v246 = v217 - 1;
              if (*(v290 + 15 + v246) != 1)
              {
                goto LABEL_472;
              }

              v247 = v290 + 848;
LABEL_462:
              v248 = 72;
            }

LABEL_463:
            v251 = v247 + v246 * v248;
            goto LABEL_464;
        }

LABEL_421:
        v237 |= 0x20u;
        *v235 = v237;
        v241 = 1;
      }

      if (v239 <= 2)
      {
        if (v239 < 3)
        {
          goto LABEL_444;
        }
      }

      else
      {
        if (v239 <= 4)
        {
          if (v239 == 3)
          {
            *v235 = v237 | 0x10;
            if (v241)
            {
              goto LABEL_444;
            }

            v244 = 272;
          }

          else
          {
            *v235 = v237 | 4;
            if (v241)
            {
              goto LABEL_444;
            }

            v244 = 68;
          }

          goto LABEL_440;
        }

        if (v239 == 5)
        {
          *v235 = v237 | 8;
          if (v241)
          {
            goto LABEL_444;
          }

          v244 = 136;
LABEL_440:
          v245 = v237 | v244;
LABEL_441:
          *v235 = v245;
          goto LABEL_444;
        }

        if (v239 == 6)
        {
          v245 = v237 | 2;
          goto LABEL_441;
        }
      }

      v240 = 4512;
      goto LABEL_443;
    }

    break;
  }

  v275 = 0;
  do
  {
    v276 = v350[v275];
    if (v276 > 0.0)
    {
      *(v316 + v210) = v275 - 7;
      v277 = v351[v275];
      if (v277 > 7)
      {
        v278 = 0;
      }

      else
      {
        v278 = *&asc_29972A558[4 * v277];
      }

      v320[v210] = 2;
      v318[v210] = v278;
      *&v314[2 * v210] = v276;
      *&v312[2 * v210] = v349[v275];
      *(v326 + v210) = v348[v275];
      *&v310[2 * v210] = 0;
      *&v324[2 * v210] = 0xC058C00000000000;
      *(v322 + v210++) = 0;
    }

    if (v275 > 0xC)
    {
      break;
    }

    ++v275;
  }

  while (v210 < 0x80);
LABEL_542:
  *(v291 + 319) = v210;
  *(v291 + 320) = v209;
  *v291 = v299;
  result = 1;
  *v8 = v299;
LABEL_533:
  v274 = *MEMORY[0x29EDCA608];
  return result;
}