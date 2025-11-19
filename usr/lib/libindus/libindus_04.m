char **G5K_ME_enc_n(char **a1, int a2, __int16 a3)
{
  *&v8[254] = *MEMORY[0x29EDCA608];
  v6 = a2;
  v7 = a3;
  v5 = v8;
  result = STEU_Encode(a1, 110, &v6, &v5);
  if (v5 - &v6 != 6)
  {
    result = gn_report_assertion_failure("ME_enc_n: Wrong Length!");
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

char **Encode_b(char **a1, int a2, char a3, unsigned int a4, unsigned int a5, unsigned __int8 *a6)
{
  v11 = 0;
  v22 = *MEMORY[0x29EDCA608];
  memset(__src, 0, sizeof(__src));
  v18 = 0;
  v12 = a5;
  v13 = a4;
  do
  {
    v14 = *a6++;
    if (v14 == 1)
    {
      *(__src + v11++) = Encode_SVid_STE(a2, v13, &v18);
    }

    ++v13;
    --v12;
  }

  while (v12);
  if (!v11)
  {
    Encode_SVid_STE(a2, a4 + 1, &v18);
  }

  memset(v20, 0, sizeof(v20));
  v19[0] = a3 | (16 * v18);
  v19[1] = v11;
  v17 = v20;
  if (v11 >= 1)
  {
    memcpy(v20, __src, v11);
    v17 = v20 + v11;
  }

  result = STEU_Encode(a1, 98, v19, &v17);
  if (v17 - v19 >= 67)
  {
    result = gn_report_assertion_failure("ME_enc_b: Wrong Length!");
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncS02_09UpdatedPosAval(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_UPDT_POS_AVAL_IND\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 73, "GncS02_09UpdatedPosAval");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    GncS04_72SendUpdates(1);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 69, "GncS02_09UpdatedPosAval", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncS02_21FGSchedTimExp(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_FG_SCHED_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncS02_21FGSchedTimExp");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    GncS04_73FGPosTimerExpiry();
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 69, "GncS02_21FGSchedTimExp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncS02_22SessStopAckTimExp(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_SESS_STOP_ACK_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncS02_22SessStopAckTimExp");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    GncS04_33SessStopAckTimrExpiry();
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 69, "GncS02_22SessStopAckTimExp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncS02_23SessStartAckTimExp(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_SESS_START_ACK_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncS02_23SessStartAckTimExp");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    GncS04_36SessStartAckTimrExp();
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 69, "GncS02_23SessStartAckTimExp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GM_Prop_AAD(uint64_t result, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = (a2 - 1);
  if (a2 - 1 >= 0)
  {
    v4 = result;
    v5 = v3 + 1;
    v6 = a3 + 48 * v3;
    do
    {
      if (*(v6 + 8) && *(v6 + 4) == 1)
      {
        v7 = *(v6 + 16);
        v10[0] = *v6;
        v10[1] = v7;
        v10[2] = *(v6 + 32);
        *v6 = v4;
        result = Comp_Cur_Acq_Aid(v10, v6);
      }

      v6 -= 48;
    }

    while (v5-- > 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

double Nav_Kalman_Update_Init(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v20 = *MEMORY[0x29EDCA608];
  v7 = v1 + 68160;
  v8 = v1 + 27224;
  bzero(v18, 0x10EF0uLL);
  s_Nav_Kalman_SD::s_Nav_Kalman_SD(v18);
  *v6 = *v18;
  *(v6 + 20) = *&v18[5];
  memcpy((v6 + 28), v19, 0x10ED4uLL);
  *v6 = 167870469;
  *(v6 + 4) = 279;
  *(v6 + 8) = 0x10001000105DCLL;
  *(v6 + 16) = 655366;
  *(v6 + 1704) = 1;
  v9 = *(v3 + 52);
  *(v6 + 20) = v9;
  NK_Set_Dynamics(v9, v6 + 32);
  *(v6 + 136) = 1;
  *(v6 + 140) = 1;
  *(v6 + 160) = -1;
  *(v8 + 25) = 1;
  *v8 = -1;
  *(v8 + 304) = -1;
  v10 = vdupq_n_s64(0x416312D000000000uLL);
  *(v6 + 27568) = v10;
  *(v6 + 27584) = v10;
  *(v8 + 392) = -1;
  *(v8 + 400) = -1;
  *(v6 + 27664) = v10;
  *(v6 + 27680) = v10;
  *(v8 + 488) = -1;
  v11 = dbl_299050620[*(v3 + 52) < 5u];
  *(v6 + 280) = *(v5 + 240);
  *(v6 + 288) = v11;
  if (*(v5 + 18) == 1)
  {
    *(v6 + 288) = v11 * 0.5;
  }

  *(v6 + 336) = 0x4163125300000000;
  *(v6 + 312) = 0x4163125300000000;
  *(v6 + 15408) = 4626;
  *(v6 + 241) = 513;
  *(v6 + 244) = 5;
  *v7 = xmmword_299050630;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  Geo2ECEF(v7 + 56, &WGS84_Datum, (v6 + 68192));
  v12 = __sincos_stret(*(v7 + 56));
  *(v7 + 112) = v12;
  v13 = 1.0 / sqrt(v12.__sinval * v12.__sinval * -0.00669437999 + 1.0);
  v14 = *(v7 + 72);
  v15 = v12.__cosval * (v14 + v13 * 6378137.0);
  if (v15 < 1.0)
  {
    v15 = 1.0;
  }

  result = v14 + v13 * (v13 * v13) * 6335439.33;
  *(v7 + 128) = result;
  *(v7 + 136) = v15;
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Set_Dynamics(uint64_t result, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  *a2 = xmmword_299050640;
  *(a2 + 16) = xmmword_299050650;
  *(a2 + 32) = xmmword_299050660;
  if (result > 4)
  {
    if (result <= 6)
    {
      if (result == 5)
      {
        *(a2 + 48) = vdupq_n_s64(0x3FB9B9A5A89B951DuLL);
        *(a2 + 64) = 0x3FF0000000000000;
        *(a2 + 80) = 0x4039000000000000;
        *(a2 + 96) = 0x3FB0000000000000;
        v13 = 25.0;
        v4 = 0.0625;
LABEL_33:
        *(a2 + 88) = v4 * v13;
        *(a2 + 72) = v4;
        goto LABEL_34;
      }

      __asm { FMOV            V0.2D, #1.0 }

      *(a2 + 48) = _Q0;
      *(a2 + 64) = 0x3FF0000000000000;
      v11 = 0x4059000000000000;
      *(a2 + 80) = 0x4059000000000000;
      *(a2 + 96) = 0x3FD0000000000000;
      v4 = 0.25;
LABEL_31:
      v13 = *&v11;
      goto LABEL_33;
    }

    if (result == 7)
    {
      v5 = 25.0;
      v12 = 400.0;
    }

    else
    {
      if (result != 8)
      {
        goto LABEL_20;
      }

      v12 = 1000000.0;
      v5 = 1.0e10;
    }

    *(a2 + 48) = v5;
    *(a2 + 56) = v5;
    *(a2 + 64) = 0x3FF0000000000000;
    goto LABEL_25;
  }

  if (result > 2)
  {
    if (result == 3)
    {
      v3 = 4.0;
      v4 = 0.01;
    }

    else
    {
      v3 = 9.0;
      v4 = 0.00694444444;
    }

    v5 = 0.100489;
    goto LABEL_19;
  }

  v2 = 0;
  if (result < 2)
  {
    goto LABEL_21;
  }

  if (result == 2)
  {
    v3 = 0.25;
    v4 = 0.0204081633;
    v5 = 0.04;
LABEL_19:
    *(a2 + 48) = v5;
    *(a2 + 56) = v5;
    *(a2 + 64) = 0x3FF0000000000000;
    *(a2 + 80) = v3;
    *(a2 + 96) = v4;
LABEL_29:
    *(a2 + 88) = v4 * v3;
    *(a2 + 72) = v4;
    *(a2 + 56) = v5 * 0.5;
    goto LABEL_34;
  }

LABEL_20:
  v2 = 0x4202A05F20000000;
LABEL_21:
  v5 = 1.0e10;
  if (result < 2)
  {
    v5 = 0.0;
  }

  *(a2 + 48) = v2;
  *(a2 + 56) = v5;
  *(a2 + 64) = 0x3FF0000000000000;
  v12 = 1000000.0;
  if (result < 2)
  {
    v12 = 0.0;
  }

LABEL_25:
  *(a2 + 80) = v12;
  *(a2 + 96) = 0x3FF0000000000000;
  v3 = 0.0;
  v4 = 1.0;
  if (result < 2)
  {
    goto LABEL_29;
  }

  if (result == 7)
  {
    v11 = 0x4079000000000000;
    goto LABEL_31;
  }

  if (result != 8)
  {
    v13 = 1000000.0;
    goto LABEL_33;
  }

  *(a2 + 88) = 0x412E848000000000;
  *(a2 + 72) = 0x3FF0000000000000;
  *(a2 + 24) = xmmword_299050670;
LABEL_34:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Set_XO_PN(uint64_t result, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  *(a2 + 24) = xmmword_299050680;
  if (*(result + 240))
  {
    v2 = xmmword_299050690;
    *(a2 + 24) = xmmword_299050690;
    v3 = fabs(*(result + 112)) + -0.1;
    if (v3 > 0.0)
    {
      v2 = vmulq_n_f64(xmmword_299050690, fmin(v3 * 19.375 + 1.0, 32.0));
      *(a2 + 24) = v2;
    }

    v4 = *(result + 72);
    if ((v4 - 71) <= 0xFFFFFFAE)
    {
      if ((v4 - 101) >= 0xFFFFFF73)
      {
        if ((v4 - 96) >= 0xFFFFFF7D)
        {
          if ((v4 - 91) >= 0xFFFFFF87)
          {
            if ((v4 - 86) >= 0xFFFFFF91)
            {
              if ((v4 - 81) >= 0xFFFFFF9B)
              {
                v6 = vdup_n_s32((v4 - 76) < 0xFFFFFFA5);
                v7.i64[0] = v6.u32[0];
                v7.i64[1] = v6.u32[1];
                v5 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v7, 0x3FuLL)), xmmword_299050700, xmmword_2990506F0);
              }

              else
              {
                v5 = xmmword_2990506E0;
              }
            }

            else
            {
              v5 = xmmword_2990506D0;
            }
          }

          else
          {
            v5 = xmmword_2990506C0;
          }
        }

        else
        {
          v5 = xmmword_2990506B0;
        }
      }

      else
      {
        v5 = xmmword_2990506A0;
      }

      *(a2 + 24) = vmulq_f64(v2, v5);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void s_Nav_Kalman_SD::s_Nav_Kalman_SD(s_Nav_Kalman_SD *this)
{
  v12 = *MEMORY[0x29EDCA608];
  *(this + 4) = 0;
  *this = 0u;
  *(this + 20) = 0x500000002;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 140) = 0;
  *(this + 148) = 0u;
  *(this + 168) = 0u;
  *(this + 181) = 0;
  *(this + 19) = 0u;
  *(this + 80) = 0;
  *(this + 86) = 0;
  *(this + 328) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 121) = 0u;
  *(this + 248) = 0u;
  v2 = this + 248;
  v3 = this + 68088;
  v4 = this + 27224;
  v5 = this + 20120;
  v6 = (this + 1712);
  *(this + 238) = 0;
  *(this + 14) = 0u;
  *(this + 13) = 0u;
  *(this + 12) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 74) = 0;
  bzero(this + 352, 0x54CuLL);
  *(v2 + 185) = 0;
  *v6 = 0u;
  *(v2 + 372) = -1;
  *(v2 + 187) = 0;
  *(v2 + 94) = 0u;
  *(v2 + 1517) = 0;
  *(v2 + 1528) = 0u;
  *(v2 + 1544) = 0u;
  *(v2 + 1560) = 0u;
  *(v2 + 1576) = 0u;
  v2[1592] = 0;
  *(v2 + 200) = 0;
  *(v2 + 402) = -1;
  *(v2 + 101) = 0u;
  *(v2 + 102) = 0u;
  *(v2 + 103) = 0u;
  v7 = -5120;
  *(v2 + 1663) = 0;
  do
  {
    *(this + v7 + 7040) = 0;
    v8 = (this + v7 + 7048);
    *v8 = 0uLL;
    v8[1] = 0uLL;
    v7 += 40;
  }

  while (v7);
  v9 = -5120;
  do
  {
    *(this + v9 + 12160) = 0;
    v10 = (this + v9 + 12168);
    *v10 = 0uLL;
    v10[1] = 0uLL;
    v9 += 40;
  }

  while (v9);
  *(this + 3854) = 0;
  *(this + 1928) = 0;
  *(this + 3858) = 0;
  *(this + 1930) = 0;
  *(this + 3862) = 0;
  *(this + 2514) = 0;
  *v5 = 0;
  *(this + 2516) = 0;
  v5[16] = 0;
  *(this + 3402) = 0;
  *v4 = 0;
  *(this + 3416) = 0;
  *(v4 + 28) = 0;
  *(this + 3451) = 0;
  v4[392] = 0;
  *(this + 1721) = 0u;
  *(this + 1722) = 0u;
  *(this + 1723) = 0u;
  *(this + 1724) = 0u;
  *(this + 27600) = 0;
  *(this + 3463) = 0;
  v4[488] = 0;
  *(v4 + 100) = 0;
  *(this + 1727) = 0u;
  *(this + 1728) = 0u;
  *(this + 1729) = 0u;
  *(this + 1730) = 0u;
  *(this + 27696) = 0;
  v4[496] = 0;
  *v3 = 0;
  *(v3 + 92) = 0;
  *(v3 + 236) = 0;
  bzero(this + 68336, 0x400uLL);
  bzero(this + 12160, 0xCB5uLL);
  *(this + 15596) = 0u;
  *(this + 974) = 0u;
  *(this + 973) = 0u;
  *(this + 972) = 0u;
  *(this + 971) = 0u;
  *(this + 970) = 0u;
  *(this + 969) = 0u;
  *(this + 968) = 0u;
  *(this + 967) = 0u;
  *(this + 966) = 0u;
  bzero(this + 15616, 0x118BuLL);
  bzero(this + 20144, 0x1B5CuLL);
  *(this + 27176) = 0;
  *(this + 3396) = 0;
  *(this + 1697) = 0u;
  *(this + 27180) = 0u;
  *(this + 27196) = 0u;
  *(this + 1702) = 0u;
  *(this + 27247) = 0;
  *(this + 27252) = 0u;
  *(this + 27266) = 0;
  *(this + 27276) = 0;
  *(this + 27284) = 0u;
  *(this + 27304) = 0u;
  *(this + 27320) = 0;
  *(this + 27516) = 0u;
  *(this + 1719) = 0u;
  *(this + 1718) = 0u;
  *(this + 1717) = 0u;
  *(this + 1716) = 0u;
  *(this + 1715) = 0u;
  *(this + 1714) = 0u;
  *(this + 1713) = 0u;
  *(this + 1712) = 0u;
  *(this + 1711) = 0u;
  *(this + 1710) = 0u;
  *(this + 1709) = 0u;
  bzero(this + 27724, 0x9D68uLL);
  *(this + 68048) = 0;
  *(this + 8505) = 0;
  *(this + 68024) = 0u;
  *(this + 8507) = 0;
  *(this + 4254) = 0u;
  *(this + 68077) = 0;
  *(this + 4256) = 0u;
  *(this + 4257) = 0u;
  *(this + 4258) = 0u;
  *(this + 4259) = 0u;
  *(this + 4260) = 0u;
  *(this + 68176) = 0;
  *(this + 4262) = 0u;
  *(this + 4263) = 0u;
  *(this + 4264) = 0u;
  *(this + 4265) = 0u;
  *(this + 68249) = 0u;
  *(this + 68320) = 0;
  *(this + 4268) = 0u;
  *(this + 4269) = 0u;
  *(this + 4267) = 0u;
  v11 = *MEMORY[0x29EDCA608];
}

uint64_t STEU_Checksum_OK(char *a1)
{
  v1 = 0;
  v10 = *MEMORY[0x29EDCA608];
  v2 = a1[1];
  v3 = 3;
  do
  {
    if (!v2 || ((v4 = a1[v3 - 1], v4 != 10) ? (v5 = v4 == 13) : (v5 = 1), v5))
    {
      result = 0;
      goto LABEL_11;
    }

    v1 += v2;
    ++v3;
    v2 = v4;
  }

  while (v4 != 125);
  v8 = 0;
  v9[0] = a1[v3 - 1];
  v9[1] = a1[v3];
  result = AscToU1(v9, &v8);
  if (result)
  {
    result = v8 == v1;
  }

LABEL_11:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Comp_NEDvar_UDU(uint64_t result, unsigned int a2, int a3, double (*a4)[3], double *a5)
{
  v5 = 0;
  v39[9] = *MEMORY[0x29EDCA608];
  v6 = a3;
  do
  {
    v7 = v6++;
    v8 = (v7 * v7 + v7) >> 1;
    v9 = (v5 + a3);
    v10 = (v9 * v9 + v9) >> 1;
    v11 = &v39[3 * v5];
    v12 = v5;
    v13 = v6;
    do
    {
      v14 = (v12 + a3);
      if (v5 == v12)
      {
        v15 = *(result + 8 * (v10 + (v5 + a3)));
        v16 = v14 + 1;
      }

      else
      {
        v16 = v14 + 1;
        v17 = v9 + (((v14 + 1) * v14) >> 1);
        if (v9 >= v14)
        {
          v17 = v10 + v14;
        }

        v15 = *(result + 8 * (v14 + ((v16 * v14) >> 1))) * *(result + 8 * v17);
      }

      v18 = v13;
      *&v11[v12] = v15;
      if (a2 > v16)
      {
        v19 = v13;
        v20 = v13 * v13 + v13;
        v21 = 2 * v18 + 2;
        v22 = v18 + ((v16 * v7) >> 1);
        do
        {
          v23 = v19 + (v20 >> 1);
          v24 = v19 + v19 * v19;
          v25 = v8 + v19;
          if (v19 > v9)
          {
            v25 = v9 + (v24 >> 1);
          }

          v26 = v19 > v14;
          v27 = v19 + 1;
          v28 = v14 + (v24 >> 1);
          if (!v26)
          {
            v28 = v22;
          }

          v15 = v15 + *(result + 8 * v23) * *(result + 8 * v25) * *(result + 8 * v28);
          ++v22;
          v20 += v21;
          v21 += 2;
          v19 = v27;
        }

        while (v27 < a2);
        *&v11[v12] = v15;
      }

      *&v39[3 * v12++ + v5] = v15;
      v13 = v18 + 1;
      ++v7;
    }

    while (v12 != 3);
    ++v5;
  }

  while (v5 != 3);
  v29 = 0;
  v30 = 0.0;
  v31 = a4;
  do
  {
    v32 = 0;
    v33 = v39;
    v34 = 0.0;
    do
    {
      v35 = 0;
      v36 = 0.0;
      do
      {
        v36 = v36 + *&v33[v35] * (*v31)[v35];
        ++v35;
      }

      while (v35 != 3);
      if (!v29)
      {
        v30 = v30 + v36 * (*a4)[v32 + 3];
      }

      v34 = v34 + v36 * (*a4)[3 * v29 + v32++];
      v33 += 3;
    }

    while (v32 != 3);
    a5[v29++] = v34;
    ++v31;
  }

  while (v29 != 3);
  for (i = 0; i != 3; ++i)
  {
    if (a5[i] <= 0.00000001)
    {
      a5[i] = 0.00000001;
    }
  }

  v38 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GM_Get_Best_NSSS(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v3 = 0;
    v4 = 0;
    v5 = (a1 + 8);
    v6 = (a2 + 12);
    v7 = 0xFFFFFFFFLL;
    v8 = a3;
    do
    {
      if (Is_Legal(*(v5 - 2)) && (*v5 & 8) != 0 && (*v5 & 0x300) != 0x300 && *(v6 - 8) == 1 && v6[3] == 1)
      {
        if (*(v5 - 4) + 6 * *v6 <= v4)
        {
          v7 = v7;
        }

        else
        {
          v4 = *(v5 - 4) + 6 * *v6;
          v7 = v3;
        }
      }

      ++v3;
      v5 += 18;
      v6 += 48;
    }

    while (v8 != v3);
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  v9 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t GncP27_30PopulateRawMeas(uint64_t a1, uint64_t a2)
{
  v78 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 88);
  if (*(a1 + 88))
  {
    if (v4 >= 0x101)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v5 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SigMeas Cnt,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncP27_30PopulateRawMeas", 514, *(a1 + 88));
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      result = 0;
      goto LABEL_76;
    }

    result = gnssOsa_Calloc("GncP27_30PopulateRawMeas", 423, v4, 0xC0uLL);
    *(a2 + 96) = result;
    if (!result)
    {
      goto LABEL_76;
    }
  }

  v7 = *(a1 + 57664);
  if (*(a1 + 57664))
  {
    if (v7 >= 0x101)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SvUsg Cnt,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncP27_30PopulateRawMeas", 514, *(a1 + 57664));
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      goto LABEL_16;
    }

    v9 = gnssOsa_Calloc("GncP27_30PopulateRawMeas", 441, v7, 0x68uLL);
    *(a2 + 336) = v9;
    if (!v9)
    {
LABEL_16:
      v13 = *(a2 + 96);
      if (v13)
      {
        free(v13);
      }

      result = 0;
      *(a2 + 96) = 0;
      goto LABEL_76;
    }
  }

  v10 = (a1 + 84296);
  v11 = *(a1 + 84296);
  if (*(a1 + 84296))
  {
    if (v11 >= 0x101)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SvUsg Cnt,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GncP27_30PopulateRawMeas", 514, *v10);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      goto LABEL_71;
    }

    v14 = gnssOsa_Calloc("GncP27_30PopulateRawMeas", 461, v11, 0x108uLL);
    *(a2 + 352) = v14;
    if (!v14)
    {
LABEL_71:
      v66 = *(a2 + 96);
      if (v66)
      {
        free(v66);
      }

      *(a2 + 96) = 0;
      v67 = *(a2 + 336);
      if (v67)
      {
        free(v67);
      }

      result = 0;
      *(a2 + 336) = 0;
      goto LABEL_76;
    }
  }

  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v15 = *(a1 + 88);
  *(a2 + 88) = v15;
  if (v15)
  {
    v16 = 0;
    if (v15 >= 0x100)
    {
      v15 = 256;
    }

    v17 = 224 * v15;
    v18 = (*(a2 + 96) + 190);
    do
    {
      v19 = a1 + v16;
      *(v18 - 95) = *(a1 + v16 + 96);
      *(v18 - 188) = GncP07_01PopulateSigId(*(a1 + v16 + 100));
      *(v18 - 187) = GncP07_09PopulateConstellId(*(a1 + v16 + 104));
      *(v18 - 93) = *(a1 + v16 + 108);
      *(v18 - 91) = *(a1 + v16 + 112);
      *(v18 - 83) = *(a1 + v16 + 128);
      *(v18 - 158) = *(a1 + v16 + 136);
      *(v18 - 75) = *(a1 + v16 + 144);
      *(v18 - 67) = *(a1 + v16 + 160);
      *(v18 - 63) = *(a1 + v16 + 176);
      *(v18 - 118) = *(a1 + v16 + 184);
      *(v18 - 58) = *(a1 + v16 + 186);
      *(v18 - 55) = *(a1 + v16 + 192);
      *(v18 - 47) = *(a1 + v16 + 208);
      *(v18 - 39) = *(a1 + v16 + 224);
      v20 = *(a1 + v16 + 240);
      if (v20 >= 5)
      {
        LOBYTE(v20) = 0;
      }

      *(v18 - 62) = v20;
      v21 = *(v19 + 244);
      if (v21 >= 5)
      {
        LOBYTE(v21) = 0;
      }

      *(v18 - 61) = v21;
      *(v18 - 30) = *(v19 + 248);
      *(v18 - 29) = *(v19 + 250);
      *(v18 - 56) = *(v19 + 252);
      *(v18 - 27) = *(v19 + 256);
      v22 = *(v19 + 264);
      if (v22 == 2)
      {
        v23 = 2;
      }

      else
      {
        v23 = v22 == 1;
      }

      *(v18 - 46) = v23;
      *(v18 - 19) = *(v19 + 272);
      *(v18 - 11) = *(v19 + 288);
      v24 = *(v19 + 304);
      if (v24 == 2)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      if (v24)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      *(v18 - 6) = v26;
      *(v18 - 2) = *(v19 + 308);
      *(v18 - 1) = *(v19 + 310);
      *v18 = *(v19 + 312);
      v18 += 96;
      v16 += 224;
    }

    while (v17 != v16);
  }

  v69 = a1 + 160080;
  *(a2 + 104) = *(a1 + 57440);
  *(a2 + 108) = *(a1 + 57444);
  *(a2 + 110) = *(a1 + 57446);
  *(a2 + 112) = *(a1 + 57448);
  *(a2 + 120) = *(a1 + 57456);
  *(a2 + 176) = *(a1 + 57512);
  *(a2 + 256) = *(a1 + 57592);
  *(a2 + 264) = *(a1 + 57600);
  *(a2 + 280) = *(a1 + 57616);
  *(a2 + 116) = *(a1 + 57452);
  *(a2 + 118) = *(a1 + 57454);
  *(a2 + 119) = *(a1 + 57455);
  *(a2 + 128) = *(a1 + 57464);
  *(a2 + 132) = *(a1 + 57468);
  *(a2 + 136) = *(a1 + 57472);
  *(a2 + 152) = *(a1 + 57488);
  *(a2 + 160) = *(a1 + 57496);
  *(a2 + 162) = *(a1 + 57498);
  *(a2 + 168) = *(a1 + 57504);
  *(a2 + 184) = *(a1 + 57520);
  *(a2 + 188) = *(a1 + 57524);
  *(a2 + 192) = *(a1 + 57528);
  *(a2 + 208) = *(a1 + 57544);
  *(a2 + 212) = *(a1 + 57548);
  *(a2 + 216) = *(a1 + 57552);
  *(a2 + 232) = *(a1 + 57568);
  *(a2 + 236) = *(a1 + 57572);
  *(a2 + 240) = *(a1 + 57576);
  *(a2 + 296) = *(a1 + 57632);
  *(a2 + 312) = *(a1 + 57648);
  *(a2 + 320) = *(a1 + 57656);
  v27 = *(a1 + 57664);
  *(a2 + 328) = v27;
  if (v27)
  {
    v28 = 0;
    if (v27 >= 0x100)
    {
      v29 = 256;
    }

    else
    {
      v29 = v27;
    }

    v30 = a1 + 57672;
    v31 = *(a2 + 336);
    v32 = 104 * v29;
    v33 = a1 + 57720;
    do
    {
      v34 = v31 + v28;
      *(v31 + v28) = *(v30 + v28);
      v35 = *(a1 + 57676 + v28);
      if (v35 >= 5)
      {
        LOBYTE(v35) = 1;
      }

      *(v34 + 2) = v35;
      *(v34 + 8) = *(a1 + v28 + 57680);
      v36 = *(a1 + 57696 + v28);
      if (v36 >= 5)
      {
        LOBYTE(v36) = 1;
      }

      *(v34 + 24) = v36;
      *(v34 + 25) = *(v30 + v28 + 28);
      *(v34 + 32) = *(v33 + v28 - 16);
      *(v34 + 48) = *(v33 + v28);
      *(v34 + 64) = *(v33 + v28 + 16);
      *(v34 + 80) = *(v33 + v28 + 32);
      *(v34 + 96) = *(a1 + 57768 + v28);
      v28 += 104;
    }

    while (v32 != v28);
  }

  v37 = *v10;
  *(a2 + 344) = v37;
  if (v37)
  {
    v38 = 0;
    v70 = a1 + 84304;
    v71 = a2;
    v39 = a1 + 84516;
    v40 = a1 + 84592;
    v75 = v10 + 132;
    v76 = 0;
    v41 = v10 + 52;
    v42 = 48;
    do
    {
      v72 = v42;
      v73 = v41;
      v43 = v70 + 296 * v38;
      v74 = *(a2 + 352);
      v44 = v74 + 264 * v38;
      *v44 = GncP07_09PopulateConstellId(*v43);
      *(v44 + 2) = *(v43 + 4);
      *(v44 + 4) = *(v43 + 6);
      *(v44 + 144) = *(v43 + 144);
      v45 = *(v43 + 160);
      v46 = *(v43 + 176);
      v47.i64[0] = 0x200000002;
      v47.i64[1] = 0x200000002;
      v48 = vmovn_s16(vuzp1q_s16(vceqq_s32(v45, v47), vceqq_s32(v46, v47)));
      *(v44 + 160) = vbic_s8(vsub_s8(vand_s8(v48, 0x202020202020202), vmvn_s8(v48)), vmovn_s16(vuzp1q_s16(vceqzq_s32(v45), vceqzq_s32(v46))));
      v49 = *(v43 + 192);
      if (v49 == 2)
      {
        v50 = 2;
      }

      else
      {
        v50 = 1;
      }

      if (v49)
      {
        v51 = v50;
      }

      else
      {
        v51 = 0;
      }

      *(v44 + 168) = v51;
      *(v44 + 176) = *(v43 + 200);
      v52 = *(v43 + 208);
      *(v44 + 184) = v52;
      if (v52)
      {
        v53 = 0;
        if (v52 >= 2)
        {
          v54 = 2;
        }

        else
        {
          v54 = v52;
        }

        v55 = v75;
        v56 = v74 + v76;
        v57 = 192;
        do
        {
          v58 = GncP07_01PopulateSigId(*(v39 + 4 * v53));
          v59 = v56 + v53;
          *(v59 + 186) = v58;
          v60 = (v56 + v57);
          *v60 = *(v55 - 4);
          v60[2] = *(v55 - 2);
          v60[4] = *v55;
          v60[6] = *(v55 + 2);
          *(v59 + 256) = *(v40 + v53++);
          v57 += 8;
          v55 += 4;
        }

        while (v54 != v53);
      }

      v61 = *(v43 + 8);
      if (v61 >= 5)
      {
        LOBYTE(v61) = 0;
      }

      *(v44 + 8) = v61;
      *(v44 + 16) = *(v43 + 16);
      *(v44 + 120) = *(v43 + 120);
      *(v44 + 136) = *(v43 + 136);
      v62 = (v74 + v72);
      v63 = v73;
      v64 = 3;
      do
      {
        *(v62 - 3) = *(v63 - 9);
        *v62 = *(v63 - 6);
        v62[3] = *(v63 - 3);
        v65 = *v63;
        v63 += 4;
        v62[6] = v65;
        ++v62;
        --v64;
      }

      while (v64);
      a2 = v71;
      if (v38 > 0xFE)
      {
        break;
      }

      ++v38;
      v39 += 296;
      v40 += 296;
      v75 += 148;
      v76 += 264;
      v42 = v72 + 264;
      v41 = v73 + 148;
    }

    while (v38 < *(v71 + 344));
  }

  if (*(v69 + 72))
  {
    *(a2 + 360) = *v69;
    *(a2 + 368) = *(v69 + 8);
    *(a2 + 384) = *(v69 + 24);
    *(a2 + 400) = *(v69 + 40);
    *(a2 + 416) = *(v69 + 56);
  }

  result = 1;
LABEL_76:
  v68 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP07_01PopulateSigId(unsigned int a1)
{
  if (a1 >= 0xA)
  {
    v1 = 1;
  }

  else
  {
    v1 = a1;
  }

  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return v1;
}

unint64_t GncP07_09PopulateConstellId(unsigned int a1)
{
  v1 = 0x7060503020100uLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 0;
  }

  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return v1 & 7;
}

BOOL R8_EQ(const double *a1, const double *a2)
{
  v2 = *a1;
  v3 = *a1 | 0x8000000000000000;
  if (*a1 < 0)
  {
    v3 = -v2;
  }

  v4 = *a2;
  v5 = *a2 | 0x8000000000000000;
  if (*a2 < 0)
  {
    v5 = -v4;
  }

  v6 = ~v2 & 0x7FF0000000000000;
  v7 = v2 & 0xFFFFFFFFFFFFFLL;
  v8 = ~v4 & 0x7FF0000000000000;
  v9 = v4 & 0xFFFFFFFFFFFFFLL;
  v10 = v5 - v3;
  v11 = v3 >= v5;
  v12 = v3 - v5;
  if (!v11)
  {
    v12 = v10;
  }

  v13 = v12 < 4;
  if (v8)
  {
    v14 = 1;
  }

  else
  {
    v14 = v9 == 0;
  }

  if (!v14)
  {
    v13 = 0;
  }

  if (v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = v7 == 0;
  }

  result = v15 && v13;
  v17 = *MEMORY[0x29EDCA608];
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_TM_FSP_Time(unsigned int *a1, unsigned int *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  *a2 = 0;
  if (*p_NA != 1)
  {
    goto LABEL_9;
  }

  v4 = *(p_NA + 392);
  v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v6 = p_NA;
  v7 = *(p_NA + 396);
  v8 = **(p_api + 8) - v7;
  if (v5 - v4 <= 0xDBBA0 && (v8 - 900001) >= 0xFFF230D7)
  {
    if (*p_NA)
    {
      *a1 = *(p_NA + 392);
      *a2 = *(v6 + 396);
      result = 1;
      goto LABEL_10;
    }

LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  EvCrt_v("Core_Get_TM_FSP_Time: WARNING: Deleted OS_Time %u Age %d TTick %u Age %d ms", *(p_NA + 392), v5 - v4, v7, v8);
  result = 0;
  v11 = p_NA;
  *p_NA = 0;
  *(v11 + 392) = 0;
LABEL_10:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_Ref_Time(int a1, double *a2, __int16 *a3, double *a4)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = p_NA;
  if (*(p_NA + 2) == 1)
  {
    v5 = a1 - *(p_NA + 404);
    if ((v5 - 900001) >= 0xFFF238A7)
    {
      *a2 = *(p_NA + 408);
      *a3 = *(v4 + 416);
      *a4 = *(v4 + 424);
      v8 = v5;
      Inc_GPS_TOW(v5 * 0.001, a2, a3);
      *a4 = *a4 + v8 * 0.00000001;
      result = 1;
    }

    else
    {
      result = 0;
      *(p_NA + 2) = 0;
    }
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Get_FSP_Time(unsigned int a1, __int16 *a2, double *a3, double *a4, unsigned __int8 *a5)
{
  v38 = *MEMORY[0x29EDCA608];
  if (*(p_NA + 3) != 1)
  {
    goto LABEL_20;
  }

  *v37 = 0;
  v36 = 0;
  v35 = 0;
  result = API_Get_FS_Pulse_TTick(&v36, &v35, &v37[1], v37);
  if (result)
  {
    v11 = v37[1];
    v12 = (v37[1] - v36) + v35 * -0.0000152587891;
    if (fabs(v12) > 60000.0)
    {
      EvCrt_v("Get_FSP_Time:  ERROR:  fabs(DeltaTTick) = fabs(%g) > %d", (v37[1] - v36) + v35 * -0.0000152587891, 60000);
LABEL_20:
      result = 0;
      goto LABEL_21;
    }

    v34 = v36;
    v13 = *(p_api + 80);
    v14 = *(v13 + 920) / 299792458.0;
    v33 = v35;
    if (v14 > 0.000001)
    {
      EvLog("Get_FSP_Time:  Neglecting Clock Drift in FSP Time propogation!");
      v15 = 0.0;
      v14 = 0.000001;
    }

    else
    {
      v15 = *(v13 + 184);
    }

    v16 = 0;
    v17 = v37[0];
    v18 = v37[0] - v12;
    v19 = p_NA;
    v20 = p_NA + 456;
    v21 = 1;
    while (1)
    {
      v22 = v21;
      if (*(v19 + 3 + v16) == 1 && *(v20 + 8 * v16) > 0.0)
      {
        v23 = *(v19 + 448 + 2 * v16);
        *a3 = *(v19 + 432 + 8 * v16);
        v24 = *(v20 + 8 * v16);
        *a2 = v23;
        v25 = v24 * v24;
        *a4 = v25;
        v26 = *(v19 + 488 + 4 * v16);
        if (!*(v19 + 5))
        {
          break;
        }

        if (v26 >= v18 - 500 && v26 <= v18 + 400)
        {
          break;
        }
      }

      v21 = 0;
      v16 = 1;
      if ((v22 & 1) == 0)
      {
        v28 = "Get_FSP_Time:  WARNING:  No pulse found !";
LABEL_19:
        EvLog(v28);
        goto LABEL_20;
      }
    }

    v30 = a1 - v11;
    if (a1 == v11)
    {
      v31 = v17;
    }

    else
    {
      if (a1 < v11)
      {
        v28 = "Get_FSP_Time:  ReqTTick earlier than FSP FS_DBTT_TTick !";
        goto LABEL_19;
      }

      v31 = v17;
      v12 = v12 + v30;
    }

    v32 = (1.0 - v15) * (v12 * 0.001);
    *a4 = v25 + v14 * v32 * (v14 * v32);
    Inc_GPS_TOW(v32, a3, a2);
    EvLog_v("Get_FSP_Time:  %d %d %d %d %d %d %g %d %g %d %d %g %g", a1, v16, v34, v33, v31, v18, *(p_NA + 8 * v16 + 432), v26, v32, *a2, *a3, *a3 - *a3, *a4 * 1000000.0 * 1000000.0);
    *a5 = 2;
    result = 1;
  }

LABEL_21:
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GPS_TimePos(unsigned int a1, _BYTE *a2, char *a3, int *a4, double *a5, double *a6, uint64_t a7, double *a8, double *a9)
{
  v27[3] = *MEMORY[0x29EDCA608];
  v24 = 0;
  v21 = 0.0;
  *a2 = 0;
  *a3 = 0;
  *a8 = 0.0;
  *a9 = 0.0;
  *a6 = 0.0;
  if (Get_FSP_Time(a1, &v24, a5, &v21, &v25))
  {
    *a6 = sqrt(v21) * 3.0;
    *a2 = 1;
  }

  v26 = 0;
  v22 = 0.0;
  if (Core_Get_Pos_LLH(a1, 150000, 1, &v23, a7, v27, &v22, &v26, &v25, &v20, a4))
  {
    v16 = v26;
    if (v26 == 1)
    {
      *a8 = sqrt(v27[0]) * 3.0;
      *a9 = sqrt(v22) * 3.0;
      *a3 = v16;
    }
  }

  if (*a2)
  {
    v17 = 1;
  }

  else
  {
    v17 = *a3;
  }

  v18 = *MEMORY[0x29EDCA608];
  return v17 & 1;
}

uint64_t Core_Get_Pos_LLH(int a1, int a2, int a3, int *a4, uint64_t a5, uint64_t a6, uint64_t *a7, _BYTE *a8, _BYTE *a9, int *a10, int *a11)
{
  v11 = 0;
  v36 = *MEMORY[0x29EDCA608];
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  *a11 = 0;
  v12 = p_NA;
  if (*(p_NA + 8) != 1)
  {
    goto LABEL_49;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    *(p_NA + 632) = 1;
  }

  v13 = *(p_api + 8);
  if (*v13)
  {
    v14 = *(v12 + 544) + *v13 - v13[4];
  }

  else
  {
    v14 = 0;
  }

  v15 = a1 - v14;
  if (a1 - v14 <= -3001)
  {
    v35 = a3;
    v16 = a6;
    v17 = a7;
    v18 = a4;
    v19 = a5;
    v20 = a2;
    v21 = a8;
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Pos_LLH [0]", a1 - v14, a1, v14);
    a8 = v21;
    a2 = v20;
    a5 = v19;
    a4 = v18;
    a7 = v17;
    a6 = v16;
    a3 = v35;
    v15 = 999999000;
  }

  if (v15 > a2)
  {
    v11 = 0;
    *(p_NA + 8) = 0;
    goto LABEL_49;
  }

  *a4 = v14;
  v22 = p_NA;
  v23 = *(p_NA + 568);
  *a5 = *(p_NA + 552);
  *(a5 + 16) = v23;
  v24 = *(v22 + 592);
  *a6 = *(v22 + 576);
  *(a6 + 16) = v24;
  *a7 = *(v22 + 624);
  *a8 = *(v22 + 9);
  *a9 = *(v22 + 656);
  v25 = *(v22 + 640);
  *a10 = v25;
  v26 = *(v22 + 632);
  if (v26)
  {
    *a11 = v26;
    if ((v25 - 7) < 2)
    {
      goto LABEL_41;
    }

LABEL_32:
    if (*(v22 + 9) == 1)
    {
      v28 = 0x412E848000000000;
      if (*a7 > 1000000.0 || (v28 = 0x4059000000000000, *a7 < 100.0))
      {
        *a7 = v28;
      }
    }

    if (*(v22 + 8) == 1 && *(a6 + 8) < 250000.0)
    {
      v29 = *a6;
      *(a6 + 8) = *a6;
      if (v29 < 250000.0)
      {
        *a6 = vdupq_n_s64(0x410E848000000000uLL);
      }

      *(a6 + 16) = 0;
    }

    goto LABEL_41;
  }

  *a11 = 0;
  v27 = 1;
  if (v25 <= 3)
  {
    if (v25 > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (!v25)
      {
        goto LABEL_31;
      }

      if (v25 != 1)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v27 = 4;
    goto LABEL_31;
  }

  if (v25 <= 5)
  {
    if (v25 != 4)
    {
      goto LABEL_29;
    }

LABEL_30:
    v27 = 3;
    goto LABEL_31;
  }

  if (v25 == 6)
  {
LABEL_31:
    *a11 = v27;
    goto LABEL_32;
  }

  if (v25 != 7 && v25 != 8)
  {
    goto LABEL_32;
  }

  *a11 = 2;
LABEL_41:
  v30 = *a6;
  v31 = *(a6 + 8);
  if (*a6 < v31)
  {
    *(a6 + 8) = v30;
    *(a6 + 16) = 0;
    v31 = v30;
  }

  if (a3)
  {
    v32 = v15 * 0.015 * (v15 * 0.015);
    if (v31 < v32)
    {
      *(a6 + 8) = v30;
      if (v30 < v32)
      {
        *a6 = v32;
        *(a6 + 8) = v32;
      }

      *(a6 + 16) = 0;
    }
  }

  v11 = 1;
LABEL_49:
  v33 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t Core_Get_Clk_Drift(int a1, int a2, unsigned int *a3, double *a4, double *a5, unsigned __int8 *a6)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*(p_NA + 6) != 1)
  {
    goto LABEL_5;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10)
  {
    EvLog("Core_Get_Clk_Drift: Ext Freq Assist skipped in Airborne mode");
LABEL_5:
    result = 0;
    goto LABEL_19;
  }

  v12 = *(p_api + 8);
  if (*v12)
  {
    v13 = *(p_NA + 496) + *v12 - v12[4];
  }

  else
  {
    v13 = 0;
  }

  v14 = a1 - v13;
  if (a1 - v13 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Clk_Drift", a1 - v13, a1, v13);
    v14 = 999999000;
  }

  if (v14 / 1000 <= a2)
  {
    *a3 = v13;
    v15 = p_NA;
    *a4 = *(p_NA + 504);
    *a5 = *(v15 + 512);
    *a6 = *(v15 + 520);
    v16 = 9.0e-16;
    if (*a5 < 9.0e-16 || (v16 = *a5, *a5 < 2.77777778e-14))
    {
      if (v14 > 899999)
      {
        *a5 = 2.77777778e-14;
      }

      else
      {
        *a5 = v16 + (2.77777778e-14 - v16) * (-((900 - v14 / 1000) * 0.00111111111 * ((900 - v14 / 1000) * 0.00111111111)) * ((900 - v14 / 1000) * 0.00111111111) + 1.0);
      }
    }

    result = 1;
  }

  else
  {
    result = 0;
    *(p_NA + 6) = 0;
  }

LABEL_19:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_Pos_H(int a1, int a2, double *a3, double *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = p_NA;
  if (*(p_NA + 9) == 1)
  {
    if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
    {
      *(p_NA + 632) = 1;
    }

    v8 = *(p_api + 8);
    v9 = *v8;
    if (*v8)
    {
      v9 = *(v4 + 544) + v9 - v8[4];
    }

    v10 = a1 - v9;
    if (a1 - v9 <= -3001)
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Pos_H", a1 - v9, a1, v9);
      v4 = p_NA;
      v10 = 999999000;
    }

    if (v10 <= a2)
    {
      *a3 = *(v4 + 568);
      *a4 = *(v4 + 624);
      result = 1;
    }

    else
    {
      result = 0;
      *(v4 + 9) = 0;
    }
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_Static_Status(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = p_NA;
  if (*(p_NA + 376) == 1)
  {
    if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
    {
      goto LABEL_10;
    }

    v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v1 = p_NA;
    v4 = *(p_NA + 26724);
    v5 = v3 - v4;
    if (v5 <= -3001)
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Static_Status", v3 - v4, v3, v4);
      v1 = p_NA;
LABEL_10:
      result = 0;
      *(v1 + 376) = 0;
      goto LABEL_11;
    }

    if (v5 >= 2001)
    {
      goto LABEL_10;
    }

    *a1 = *(p_NA + 26728);
    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_11:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_Ped_Status(_DWORD *a1, _BYTE *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 377) == 1)
  {
    if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
    {
      goto LABEL_10;
    }

    v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v2 = p_NA;
    v6 = *(p_NA + 26732);
    v7 = v5 - v6;
    if (v7 <= -3001)
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Ped_Status", v5 - v6, v5, v6);
      v2 = p_NA;
LABEL_10:
      result = 0;
      *(v2 + 377) = 0;
      goto LABEL_11;
    }

    if (v7 >= 2001)
    {
      goto LABEL_10;
    }

    *a1 = *(p_NA + 26736);
    *a2 = *(v2 + 26740);
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

uint64_t Core_Get_ExtA_DMS(int a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 378) != 1)
  {
    goto LABEL_10;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    goto LABEL_8;
  }

  v5 = *(p_NA + 26744);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 43200001)
    {
      goto LABEL_8;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 26744);
      *(a2 + 8) = *(p_NA + 26752);
      *a2 = v10;
      result = 1;
      goto LABEL_11;
    }

LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_DMS", v6 - v5, v6, v5);
LABEL_8:
  result = 0;
  *(v2 + 378) = 0;
LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_UAC(int a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 379) != 1)
  {
    goto LABEL_7;
  }

  v5 = *(p_NA + 26756);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 43200001)
    {
      goto LABEL_5;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 26756);
      *(a2 + 8) = *(p_NA + 26764);
      *a2 = v10;
      result = 1;
      goto LABEL_8;
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_UAC", v6 - v5, v6, v5);
LABEL_5:
  result = 0;
  *(v2 + 379) = 0;
LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_FIV_Ind(int a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 380) != 1)
  {
    goto LABEL_7;
  }

  v5 = *(p_NA + 26768);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 43200001)
    {
      goto LABEL_5;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 26768);
      *(a2 + 8) = *(p_NA + 26776);
      *a2 = v10;
      result = 1;
      goto LABEL_8;
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_FIV_Ind", v6 - v5, v6, v5);
LABEL_5:
  result = 0;
  *(v2 + 380) = 0;
LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_Alt(int a1, _OWORD *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 382) != 1)
  {
    goto LABEL_10;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    goto LABEL_8;
  }

  v5 = *(p_NA + 26784);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 120001)
    {
      goto LABEL_8;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 26800);
      *a2 = *(p_NA + 26784);
      a2[1] = v10;
      result = 1;
      goto LABEL_11;
    }

LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_Alt", v6 - v5, v6, v5);
LABEL_8:
  result = 0;
  *(v2 + 382) = 0;
LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_MapV(int a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 383) != 1)
  {
    goto LABEL_10;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    goto LABEL_8;
  }

  v5 = *(p_NA + 26816);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 120001)
    {
      goto LABEL_8;
    }

    if (v7 <= a1)
    {
      v10 = p_NA;
      *a2 = *(p_NA + 26816);
      v11 = *(v10 + 26848);
      v12 = *(v10 + 26864);
      v13 = *(v10 + 26832);
      *(a2 + 64) = *(v10 + 26880);
      *(a2 + 32) = v11;
      *(a2 + 48) = v12;
      *(a2 + 16) = v13;
      result = 1;
      goto LABEL_11;
    }

LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_MapV", v6 - v5, v6, v5);
LABEL_8:
  result = 0;
  *(v2 + 383) = 0;
LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_SpdC(int a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 384) != 1)
  {
    goto LABEL_10;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    goto LABEL_8;
  }

  v5 = *(p_NA + 26888);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 120001)
    {
      goto LABEL_8;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 26904);
      *a2 = *(p_NA + 26888);
      *(a2 + 16) = v10;
      result = 1;
      goto LABEL_11;
    }

LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_SpdC", v6 - v5, v6, v5);
LABEL_8:
  result = 0;
  *(v2 + 384) = 0;
LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_AT_Vel(int a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 385) != 1)
  {
    goto LABEL_10;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    goto LABEL_8;
  }

  v5 = *(p_NA + 26912);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 120001)
    {
      goto LABEL_8;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 26928);
      *a2 = *(p_NA + 26912);
      *(a2 + 16) = v10;
      result = 1;
      goto LABEL_11;
    }

LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_AT_Vel", v6 - v5, v6, v5);
LABEL_8:
  result = 0;
  *(v2 + 385) = 0;
LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_V_Vel(int a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 386) != 1)
  {
    goto LABEL_10;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    goto LABEL_8;
  }

  v5 = *(p_NA + 26936);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 120001)
    {
      goto LABEL_8;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 26952);
      *a2 = *(p_NA + 26936);
      *(a2 + 16) = v10;
      result = 1;
      goto LABEL_11;
    }

LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_V_Vel", v6 - v5, v6, v5);
LABEL_8:
  result = 0;
  *(v2 + 386) = 0;
LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_Heading(int a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 387) != 1)
  {
    goto LABEL_10;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    goto LABEL_8;
  }

  v5 = *(p_NA + 26960);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 120001)
    {
      goto LABEL_8;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 26976);
      *a2 = *(p_NA + 26960);
      *(a2 + 16) = v10;
      result = 1;
      goto LABEL_11;
    }

LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_Heading", v6 - v5, v6, v5);
LABEL_8:
  result = 0;
  *(v2 + 387) = 0;
LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_TunnelEP(int a1, _OWORD *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 388) != 1)
  {
    goto LABEL_10;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    goto LABEL_8;
  }

  v5 = *(p_NA + 26984);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 30001)
    {
      goto LABEL_8;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 27032);
      v12 = *(p_NA + 26984);
      v11 = *(p_NA + 27000);
      a2[2] = *(p_NA + 27016);
      a2[3] = v10;
      *a2 = v12;
      a2[1] = v11;
      result = 1;
      goto LABEL_11;
    }

LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_TunnelEP", v6 - v5, v6, v5);
LABEL_8:
  result = 0;
  *(v2 + 388) = 0;
LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_Speed(int a1, unsigned int *a2, double *a3, double *a4, double *a5)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = p_NA;
  if (*(p_NA + 389) == 1)
  {
    if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
    {
      goto LABEL_13;
    }

    v6 = *(p_api + 8);
    if (*v6)
    {
      v7 = *(p_NA + 27048) + *v6 - v6[4];
    }

    else
    {
      v7 = 0;
    }

    if (a1 - v7 <= -3001)
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Speed", a1 - v7, a1, v7);
      v5 = p_NA;
LABEL_13:
      result = 0;
      *(v5 + 389) = 0;
      goto LABEL_14;
    }

    if (a1 - v7 >= 3001)
    {
      goto LABEL_13;
    }

    *a2 = v7;
    *a3 = *(v5 + 27056);
    *a4 = *(v5 + 27064);
    *a5 = 0.0;
    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_14:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GSpeed(int a1, unsigned int *a2, double *a3, double *a4, double *a5)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = p_NA;
  if (*(p_NA + 390) == 1)
  {
    if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
    {
      goto LABEL_13;
    }

    v6 = *(p_api + 8);
    if (*v6)
    {
      v7 = *(p_NA + 27072) + *v6 - v6[4];
    }

    else
    {
      v7 = 0;
    }

    if (a1 - v7 <= -3001)
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "GSpeed", a1 - v7, a1, v7);
      v5 = p_NA;
LABEL_13:
      result = 0;
      *(v5 + 390) = 0;
      goto LABEL_14;
    }

    if (a1 - v7 >= 3001)
    {
      goto LABEL_13;
    }

    *a2 = v7;
    *a3 = *(v5 + 27080);
    *a4 = *(v5 + 27088);
    *a5 = 0.0;
    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_14:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_Track(int a1, unsigned int *a2, double *a3, double *a4, double *a5, double *a6)
{
  v11 = *MEMORY[0x29EDCA608];
  v6 = p_NA;
  if (*(p_NA + 391) == 1)
  {
    if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
    {
      goto LABEL_13;
    }

    v7 = *(p_api + 8);
    if (*v7)
    {
      v8 = *(p_NA + 27096) + *v7 - v7[4];
    }

    else
    {
      v8 = 0;
    }

    if (a1 - v8 <= -3001)
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Track", a1 - v8, a1, v8);
      v6 = p_NA;
LABEL_13:
      result = 0;
      *(v6 + 391) = 0;
      goto LABEL_14;
    }

    if (a1 - v8 >= 3001)
    {
      goto LABEL_13;
    }

    *a2 = v8;
    *a3 = *(v6 + 27112);
    *a4 = *(v6 + 27104);
    *a5 = *(v6 + 27120);
    *a6 = 0.0;
    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_14:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GPS_Alm(int a1, int a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if ((a1 - 33) < 0xFFFFFFE0)
  {
    goto LABEL_2;
  }

  v4 = (a1 - 1);
  v5 = *(p_NA + 44 + v4);
  if (a2 >= 619315201 && *(p_NA + 44 + v4))
  {
    v6 = *(p_NA + 36 * v4 + 3260);
    if (v6 >= 619315201 && a2 - v6 >= 15724801)
    {
      result = 0;
      *(p_NA + 44 + v4) = 0;
      goto LABEL_29;
    }
  }

  else
  {
    if (!*(p_NA + 44 + v4))
    {
LABEL_2:
      result = 0;
      goto LABEL_29;
    }

    v6 = *(p_NA + 36 * v4 + 3260);
  }

  v8 = p_NA + 36 * v4;
  v9 = *(v8 + 3264);
  *a3 = v6;
  *(a3 + 4) = v9;
  *(a3 + 8) = 0;
  *(a3 + 10) = *(v8 + 3268);
  v10 = (v8 + 3270);
  v11 = 9;
  v12 = 12;
  do
  {
    v13 = a3 + v12;
    *v13 = *v10;
    *(v13 + 1) = v10[1];
    *(v13 + 2) = v10[2];
    --v11;
    v12 += 4;
    v10 += 3;
  }

  while (v11 > 1);
  v14 = *a3;
  if (a2 >= 1 && !v14)
  {
    *a3 = a2;
    v14 = a2;
  }

  if (a2)
  {
    v15 = v14 < a2 + 50;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  if (v14)
  {
    v17 = v14 < 619315201;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    result = 0;
  }

  else
  {
    result = v16;
  }

LABEL_29:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_QZSS_Alm(int a1, int a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if ((a1 - 203) < 0xFFFFFFF6)
  {
    goto LABEL_2;
  }

  v4 = (a1 - 193);
  v5 = *(p_NA + 86 + v4);
  if (a2 >= 619315201 && *(p_NA + 86 + v4))
  {
    v6 = *(p_NA + 36 * v4 + 5212);
    if (v6 >= 619315201 && a2 - v6 >= 15724801)
    {
      result = 0;
      *(p_NA + 86 + v4) = 0;
      goto LABEL_29;
    }
  }

  else
  {
    if (!*(p_NA + 86 + v4))
    {
LABEL_2:
      result = 0;
      goto LABEL_29;
    }

    v6 = *(p_NA + 36 * v4 + 5212);
  }

  v8 = p_NA + 36 * v4;
  v9 = *(v8 + 5216);
  *a3 = v6;
  *(a3 + 4) = v9;
  *(a3 + 8) = 0;
  *(a3 + 10) = *(v8 + 5220);
  v10 = (v8 + 5222);
  v11 = 9;
  v12 = 12;
  do
  {
    v13 = a3 + v12;
    *v13 = *v10;
    *(v13 + 1) = v10[1];
    *(v13 + 2) = v10[2];
    --v11;
    v12 += 4;
    v10 += 3;
  }

  while (v11 > 1);
  v14 = *a3;
  if (a2 >= 1 && !v14)
  {
    *a3 = a2;
    v14 = a2;
  }

  if (a2)
  {
    v15 = v14 < a2 + 50;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  if (v14)
  {
    v17 = v14 < 619315201;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    result = 0;
  }

  else
  {
    result = v16;
  }

LABEL_29:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GLON_Alm(int a1, int a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((a1 - 25) < 0xFFFFFFE8)
  {
    goto LABEL_2;
  }

  v5 = (a1 - 1);
  v6 = *(p_NA + 120 + v5);
  if (a2 >= 619315201 && *(p_NA + 120 + v5))
  {
    v7 = *(p_NA + 36 * v5 + 25808);
    if (v7 >= 619315201 && a2 - v7 >= 15724801)
    {
      result = 0;
      *(p_NA + 120 + v5) = 0;
      goto LABEL_3;
    }
  }

  else if (!*(p_NA + 120 + v5))
  {
LABEL_2:
    result = 0;
    goto LABEL_3;
  }

  v9 = p_NA + 36 * v5;
  v10 = *(v9 + 25824);
  v11 = *(v9 + 25808);
  *(a3 + 32) = *(v9 + 25840);
  *a3 = v11;
  *(a3 + 16) = v10;
  v12 = *a3;
  if (a2 >= 1 && !v12)
  {
    *a3 = a2;
    v12 = a2;
  }

  if (v12 && v12 < 619315201)
  {
    goto LABEL_2;
  }

  if (a2)
  {
    v13 = v12 < a2 + 50;
  }

  else
  {
    v13 = 1;
  }

  result = v13;
LABEL_3:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GAL_Alm(int a1, int a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((a1 - 37) < 0xFFFFFFDC)
  {
    goto LABEL_2;
  }

  v5 = (a1 - 1);
  v6 = *(p_NA + 183 + v5);
  if (a2 >= 619315201 && *(p_NA + 183 + v5))
  {
    v7 = *(p_NA + 36 * v5 + 8756);
    if (v7 >= 619315201 && a2 - v7 >= 15724801)
    {
      result = 0;
      *(p_NA + 183 + v5) = 0;
      goto LABEL_3;
    }
  }

  else if (!*(p_NA + 183 + v5))
  {
LABEL_2:
    result = 0;
    goto LABEL_3;
  }

  v9 = p_NA + 36 * v5;
  v11 = *(v9 + 8756);
  v10 = *(v9 + 8772);
  *(a3 + 32) = *(v9 + 8788);
  *a3 = v11;
  *(a3 + 16) = v10;
  v12 = *a3;
  if (a2 >= 1 && !v12)
  {
    *a3 = a2;
    v12 = a2;
  }

  if (v12 && v12 < 619315201)
  {
    goto LABEL_2;
  }

  if (a2)
  {
    v13 = v12 < a2 + 50;
  }

  else
  {
    v13 = 1;
  }

  result = v13;
LABEL_3:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_BDS_Alm(int a1, int a2, _OWORD *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((a1 - 64) < 0xFFFFFFC1)
  {
    goto LABEL_2;
  }

  v5 = (a1 - 1);
  v6 = *(p_NA + 284 + v5);
  if (a2 >= 619315201 && *(p_NA + 284 + v5))
  {
    v7 = *(p_NA + 44 * v5 + 19688);
    if (v7 >= 619315201 && a2 - v7 >= 15724801)
    {
      result = 0;
      *(p_NA + 284 + v5) = 0;
      goto LABEL_3;
    }
  }

  else if (!*(p_NA + 284 + v5))
  {
LABEL_2:
    result = 0;
    goto LABEL_3;
  }

  v9 = (p_NA + 44 * v5 + 19688);
  v11 = *v9;
  v10 = v9[1];
  *(a3 + 28) = *(v9 + 28);
  *a3 = v11;
  a3[1] = v10;
  v12 = *a3;
  if (a2 >= 1 && !v12)
  {
    *a3 = a2;
    v12 = a2;
  }

  if (v12 && v12 < 619315201)
  {
    goto LABEL_2;
  }

  if (a2)
  {
    v13 = v12 < a2 + 50;
  }

  else
  {
    v13 = 1;
  }

  result = v13;
LABEL_3:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_NVIC_Alm(int a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((a1 - 15) < 0xFFFFFFF2)
  {
    goto LABEL_2;
  }

  v5 = (a1 - 1);
  v6 = *(p_NA + 362 + v5);
  if (a2 >= 619315201 && *(p_NA + 362 + v5))
  {
    v7 = *(p_NA + 52 * v5 + 23544);
    if (v7 >= 619315201 && a2 - v7 >= 15724801)
    {
      result = 0;
      *(p_NA + 362 + v5) = 0;
      goto LABEL_3;
    }
  }

  else if (!*(p_NA + 362 + v5))
  {
LABEL_2:
    result = 0;
    goto LABEL_3;
  }

  v9 = p_NA + 52 * v5 + 23544;
  v11 = *(v9 + 16);
  v10 = *(v9 + 32);
  v12 = *v9;
  *(a3 + 48) = *(v9 + 48);
  *(a3 + 16) = v11;
  *(a3 + 32) = v10;
  *a3 = v12;
  v13 = *a3;
  if (a2 >= 1 && !v13)
  {
    *a3 = a2;
    v13 = a2;
  }

  if (v13 && v13 < 619315201)
  {
    goto LABEL_2;
  }

  if (a2)
  {
    v14 = v13 < a2 + 50;
  }

  else
  {
    v14 = 1;
  }

  result = v14;
LABEL_3:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Core_Get_GPS_Eph(uint64_t a1, uint64_t a2, int *a3)
{
  v32 = *MEMORY[0x29EDCA608];
  if ((a1 - 33) < 0xFFFFFFE0)
  {
    goto LABEL_5;
  }

  v6 = (a1 - 1);
  v7 = p_NA + 12;
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
    v11 = *(p_NA + 80 * v6 + 700);
    if (v11 >= 619315201 && a2 - v11 > 21600)
    {
      EvLog_nd("Core_Get_GPS_Eph:  (b) Deleted SV", 3, a3, a1, a2, v11);
      result = 0;
      *(p_NA + v6 + 12) = 0;
      goto LABEL_6;
    }

    v10 = 1;
  }

  result = 0;
  if (a3 && (v10 & 1) != 0)
  {
    UnCompact_GPS_BinEph(a3, p_NA + 80 * v6 + 700);
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

        while (v20 < *(*(p_api + 72) + 1734));
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
          *(p_NA + v6 + 12) = 0;
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
        *(p_NA + v6 + 12) = 0;
        EvLog_nd("Core_Get_GPS_Eph:  (d) Deleted SV", 5, v13, a1, a2, v26, v16, v28);
        LODWORD(v28) = *a3;
      }

      if (!v28)
      {
        *a3 = a2;
      }
    }

    if (*(p_NA + v6 + 12) != 1)
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

BOOL Core_Get_QZSS_Eph(uint64_t a1, uint64_t a2, int *a3)
{
  v32 = *MEMORY[0x29EDCA608];
  if ((a1 - 203) < 0xFFFFFFF6)
  {
    goto LABEL_5;
  }

  v6 = (a1 - 193);
  v7 = p_NA + 76;
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
    v11 = *(p_NA + 80 * v6 + 4412);
    if (v11 >= 619315201 && a2 - v11 > 21600)
    {
      EvLog_nd("Core_Get_QZSS_Eph:  (b) Deleted SV", 3, a3, a1, a2, v11);
      result = 0;
      *(p_NA + v6 + 76) = 0;
      goto LABEL_6;
    }

    v10 = 1;
  }

  result = 0;
  if (a3 && (v10 & 1) != 0)
  {
    UnCompact_GPS_BinEph(a3, p_NA + 80 * v6 + 4412);
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

        while (v20 < *(*(p_api + 72) + 1734));
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
          *(p_NA + v6 + 76) = 0;
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
        *(p_NA + v6 + 76) = 0;
        EvLog_nd("Core_Get_QZSS_Eph:  (d) Deleted SV", 5, v13, a1, a2, v26, v16, v28);
        LODWORD(v28) = *a3;
      }

      if (!v28)
      {
        *a3 = a2;
      }
    }

    if (*(p_NA + v6 + 76) != 1)
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

BOOL Core_Get_GAL_Eph(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if ((a1 - 37) < 0xFFFFFFDC)
  {
    goto LABEL_32;
  }

  v4 = a2;
  v6 = (a1 - 1);
  v7 = p_NA;
  v8 = p_NA + 147;
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
    v9 = *(p_NA + 88 * v6 + 5588);
    if (v9 >= 619315201 && a2 - v9 >= 14401)
    {
      EvLog_nd("Core_Get_GAL_Eph:  (b) Deleted SV", 3, a3, a1, a2, v9);
      v7 = p_NA;
      *(p_NA + v6 + 147) = 0;
    }

    v11 = 60 * *(v7 + 88 * v6 + 5606);
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
      *(v7 + v6 + 147) = 0;
      EvLog_nd("Core_Get_GAL_Eph:  (c) Deleted SV", 4, a3, a1, v13, v4 % 0x93A80, v11);
    }
  }

  if (!a3)
  {
    goto LABEL_32;
  }

  v15 = p_NA + 147;
  if (*(p_NA + 147 + v6) != 1)
  {
    goto LABEL_32;
  }

  v16 = p_NA + 88 * v6 + 5588;
  v17 = *(p_NA + 88 * v6 + 5604);
  *a3 = *v16;
  *(a3 + 16) = v17;
  v18 = *(v16 + 32);
  v19 = *(v16 + 48);
  v20 = *(v16 + 64);
  *(a3 + 80) = *(v16 + 80);
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

BOOL Core_Get_BDS_Eph(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x29EDCA608];
  if ((a1 - 64) < 0xC1u)
  {
    goto LABEL_32;
  }

  v4 = a2;
  v6 = p_NA;
  v7 = p_NA + 221;
  v8 = (a1 - 1);
  if (!a2 && !a3)
  {
    *(v7 + v8) = 0;
    EvLog_d("Core_Get_BDS_Eph:  (a) Deleted SV", a1);
LABEL_32:
    result = 0;
    goto LABEL_33;
  }

  if (a2 >= 619315201 && (*(v7 + v8) & 1) != 0)
  {
    v9 = *(p_NA + 152 * (a1 - 1) + 10112);
    if (v9 >= 619315201 && a2 - v9 >= 14401)
    {
      EvLog_nd("Core_Get_BDS_Eph:  (b) Deleted SV", 3, a3, a1, a2, v9);
      v6 = p_NA;
      *(p_NA + v8 + 221) = 0;
    }

    v11 = (300 * *(v6 + 152 * v8 + 10132));
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
      *(v6 + v8 + 221) = 0;
      EvLog_nd("Core_Get_BDS_Eph:  (c) Deleted SV", 4, a3, a1, v13, v4 % 0x93A80, v11);
    }
  }

  if (!a3)
  {
    goto LABEL_32;
  }

  v15 = p_NA + 221;
  if (*(p_NA + 221 + v8) != 1)
  {
    goto LABEL_32;
  }

  v16 = p_NA + 152 * v8;
  v17 = *(v16 + 10128);
  *a3 = *(v16 + 10112);
  *(a3 + 16) = v17;
  v18 = *(v16 + 10144);
  v19 = *(v16 + 10160);
  v20 = *(v16 + 10192);
  *(a3 + 64) = *(v16 + 10176);
  *(a3 + 80) = v20;
  *(a3 + 32) = v18;
  *(a3 + 48) = v19;
  v21 = *(v16 + 10208);
  v22 = *(v16 + 10224);
  v23 = *(v16 + 10240);
  *(a3 + 144) = *(v16 + 10256);
  *(a3 + 112) = v22;
  *(a3 + 128) = v23;
  *(a3 + 96) = v21;
  v24 = *a3;
  if (v4 >= 1 && !v24)
  {
    *a3 = v4;
    v24 = v4;
  }

  if (*(v15 + v8) != 1 || v24 && v24 < 619315201 || v4 && v24 >= (v4 + 300))
  {
    goto LABEL_32;
  }

  if (v24)
  {
    v27 = v24 <= (v4 - 1800);
  }

  else
  {
    v27 = 0;
  }

  result = !v27;
LABEL_33:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Core_Get_NVIC_Eph(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  if ((a1 - 15) < 0xFFFFFFF2)
  {
    goto LABEL_32;
  }

  v4 = a2;
  v6 = (a1 - 1);
  v7 = p_NA;
  v8 = p_NA + 348;
  if (!a2 && !a3)
  {
    *(v8 + v6) = 0;
    EvLog_d("Core_Get_NVIC_Eph:  (a) Deleted SV", a1);
LABEL_32:
    result = 0;
    goto LABEL_33;
  }

  if (a2 >= 619315201 && (*(v8 + v6) & 1) != 0)
  {
    v9 = *(p_NA + 76 * v6 + 22480);
    if (v9 >= 619315201 && a2 - v9 >= 14401)
    {
      EvLog_nd("Core_Get_NVIC_Eph:  (b) Deleted SV", 3, a3, a1, a2, v9);
      v7 = p_NA;
      *(p_NA + v6 + 348) = 0;
    }

    v11 = *(v7 + 76 * v6 + 22498);
    v12 = v4 % 0x93A80 - 16 * v11;
    LODWORD(v13) = v12 + 604800;
    if (v12 >= -302400)
    {
      LODWORD(v13) = v4 % 0x93A80 - 16 * v11;
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
      *(v7 + v6 + 348) = 0;
      EvLog_nd("Core_Get_NVIC_Eph:  (c) Deleted SV", 4, a3, a1, v13, v4 % 0x93A80, (16 * v11));
    }
  }

  if (!a3)
  {
    goto LABEL_32;
  }

  v15 = p_NA + 348;
  if (*(p_NA + 348 + v6) != 1)
  {
    goto LABEL_32;
  }

  v16 = (p_NA + 76 * v6);
  *a3 = v16[1405];
  v17 = v16[1406];
  v18 = v16[1407];
  v19 = v16[1408];
  *(a3 + 60) = *(v16 + 22540);
  a3[2] = v18;
  a3[3] = v19;
  a3[1] = v17;
  v20 = *a3;
  if (v4 >= 1 && !v20)
  {
    *a3 = v4;
    v20 = v4;
  }

  if (*(v15 + v6) != 1 || v20 && v20 < 619315201 || v4 && v20 >= (v4 + 300))
  {
    goto LABEL_32;
  }

  if (v20)
  {
    v23 = v20 <= (v4 - 1800);
  }

  else
  {
    v23 = 0;
  }

  result = !v23;
LABEL_33:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Core_Get_GLON_Eph(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  if ((a1 - 25) < 0xFFFFFFE8)
  {
    goto LABEL_30;
  }

  v6 = (a1 - 1);
  v7 = p_NA;
  v8 = p_NA + 96;
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
    v9 = *(p_NA + (v6 << 6) + 24272);
    if (v9 >= 619315201 && a2 - v9 >= 9901)
    {
      EvLog_nd("Core_Get_GLON_Eph:  (b) Deleted SV", 3, a3, a1, a2, v9);
      v7 = p_NA;
      v11 = p_NA + v6;
      *(v11 + 96) = 0;
      *(v11 + 26700) = 127;
    }

    v12 = 900 * (*(v7 + (v6 << 6) + 24298) & 0x7Fu);
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
      *(v7 + v6 + 96) = 0;
      EvLog_nd("Core_Get_GLON_Eph:  (c) Deleted SV", 4, a3, a1, a2, (a2 + 10800) % 0x15180u, v12);
      v7 = p_NA;
      *(p_NA + v6 + 26700) = 127;
    }
  }

  if (!a3)
  {
    goto LABEL_30;
  }

  v15 = v7 + 96;
  if (*(v7 + 96 + v6) != 1)
  {
    goto LABEL_30;
  }

  v16 = (v7 + (v6 << 6));
  v17 = v16[1518];
  v18 = v16[1520];
  v19 = v16[1517];
  a3[2] = v16[1519];
  a3[3] = v18;
  *a3 = v19;
  a3[1] = v17;
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
  if (*(p_NA + 144) != 1)
  {
    goto LABEL_13;
  }

  v3 = p_NA + 26672;
  v4 = *(p_NA + 26672);
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
  *(v2 + 144) = 0;
LABEL_14:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GPS_Klob(int a1, _OWORD *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 10) != 1)
  {
    goto LABEL_13;
  }

  v3 = (p_NA + 660);
  v4 = *(p_NA + 660);
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
  *(v2 + 10) = 0;
LABEL_14:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GPS_UTC(int a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 11) != 1)
  {
    goto LABEL_13;
  }

  v3 = p_NA + 676;
  v4 = *(p_NA + 676);
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
  *(v2 + 11) = 0;
LABEL_14:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GAL_GGTO(int a1, _OWORD *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 146) != 1)
  {
    goto LABEL_13;
  }

  v3 = *(p_NA + 5572);
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
    *(p_NA + 5572) = a1 - 900;
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
      *a2 = *(v2 + 5572);
      result = 1;
      goto LABEL_14;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  result = 0;
  *(v2 + 146) = 0;
LABEL_14:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_BDS_BGTO(int a1, _OWORD *a2, _OWORD *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = p_NA;
  v4 = *(p_NA + 219);
  if (v4 == 1 && a1 >= 619315201 && !*(p_NA + 10052))
  {
    *(p_NA + 10052) = a1 - 900;
  }

  v5 = *(v3 + 220);
  if (v5 == 1 && a1 >= 619315201 && !*(v3 + 10080))
  {
    *(v3 + 10080) = a1 - 900;
  }

  if (a1 >= 619315201 && v4)
  {
    if (a1 - *(v3 + 10052) <= 1209600)
    {
      v4 = 1;
    }

    else
    {
      v4 = 0;
      *(v3 + 219) = 0;
    }
  }

  if (a1 >= 619315201 && v5)
  {
    if (a1 - *(v3 + 10080) <= 1209600)
    {
      v5 = 1;
      if (!v4)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v5 = 0;
    *(v3 + 220) = 0;
  }

  if (!v4)
  {
    goto LABEL_25;
  }

LABEL_19:
  v6 = *(v3 + 10052);
  if (v6)
  {
    v7 = v6 < 619315201;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = (v3 + 10052);
    v9 = *v8;
    *(a2 + 12) = *(v8 + 12);
    *a2 = v9;
    goto LABEL_31;
  }

LABEL_25:
  if (!v5 || ((v10 = *(v3 + 10080)) != 0 ? (v11 = v10 < 619315201) : (v11 = 0), v11))
  {
    result = 0;
    goto LABEL_33;
  }

  v12 = (v3 + 10080);
  v13 = *v12;
  *(a3 + 12) = *(v12 + 12);
  *a3 = v13;
LABEL_31:
  result = 1;
LABEL_33:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_NVIC_NGTO(int a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 347) != 1)
  {
    goto LABEL_13;
  }

  v3 = (p_NA + 22460);
  v4 = *(p_NA + 22460);
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
  *(v2 + 347) = 0;
LABEL_14:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void s_NA_Ram::s_NA_Ram(s_NA_Ram *this)
{
  v2 = 0;
  v25 = *MEMORY[0x29EDCA608];
  *(this + 81) = 0;
  v3 = this + 26680;
  *(this + 656) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  v4 = (this + 10060);
  *(this + 484) = 0u;
  v5 = this + 4490;
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
  *(this + 208) = 0;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 112) = 0;
  *(this + 55) = 0;
  *(this + 504) = 0u;
  *(this + 520) = 0;
  *(this + 33) = 0u;
  *(this + 136) = 0;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 628) = 0u;
  *(this + 690) = 0;
  *(this + 660) = 0u;
  *(this + 676) = 0u;
  do
  {
    *(this + v2 + 774) = 0;
    v6 = (this + v2 + 700);
    *(this + v2 + 778) = 0;
    *v6 = 0uLL;
    v6[1] = 0uLL;
    v6[2] = 0uLL;
    v6[3] = 0uLL;
    v2 += 80;
    *(v6 + 57) = 0uLL;
  }

  while (v2 != 2560);
  for (i = 3260; i != 4412; i += 36)
  {
    v8 = this + i;
    *(v8 + 16) = 0;
    *v8 = 0uLL;
    *(v8 + 1) = 0uLL;
  }

  v9 = 800;
  do
  {
    *(v5 - 1) = 0;
    *v5 = 0;
    *(v5 - 78) = 0uLL;
    *(v5 - 62) = 0uLL;
    *(v5 - 46) = 0uLL;
    *(v5 - 30) = 0uLL;
    *(v5 - 21) = 0uLL;
    v5 += 80;
    v9 -= 80;
  }

  while (v9);
  do
  {
    v10 = this + v9 + 5212;
    *(v10 + 16) = 0;
    *v10 = 0uLL;
    *(v10 + 1) = 0uLL;
    v9 += 36;
  }

  while (v9 != 360);
  *(this + 5578) = 0;
  *(this + 5572) = 0;
  bzero(this + 5588, 0xC60uLL);
  for (j = 0; j != 1296; j += 36)
  {
    v12 = this + j + 8756;
    *(v12 + 31) = 0;
    *v12 = 0uLL;
    *(v12 + 1) = 0uLL;
  }

  *(this + 10052) = 0;
  *v4 = 0;
  v4[8] = 0;
  *(this + 1258) = 0;
  *(this + 10071) = 0;
  v4[14] = 0;
  v4[22] = 0;
  *(this + 10092) = 0;
  *(this + 10099) = 0;
  v13 = this + 10112;
  v14 = 9576;
  *(this + 1260) = 0;
  do
  {
    *v13 = 0;
    *(v13 + 1) = 0;
    *(v13 + 8) = 0;
    *(v13 + 20) = 0uLL;
    *(v13 + 36) = 0uLL;
    *(v13 + 52) = 0uLL;
    *(v13 + 68) = 0uLL;
    *(v13 + 82) = 0uLL;
    *(v13 + 100) = 0uLL;
    *(v13 + 116) = 0uLL;
    *(v13 + 132) = 0uLL;
    v13 += 152;
    v14 -= 152;
  }

  while (v14);
  for (k = 0; k != 2772; k += 44)
  {
    v16 = (this + k + 19688);
    *(v16 + 27) = 0uLL;
    *v16 = 0uLL;
    v16[1] = 0uLL;
  }

  *(this + 22474) = 0;
  *(this + 22460) = 0;
  *(this + 22465) = 0;
  bzero(this + 22480, 0x428uLL);
  v17 = 0;
  v18 = this + 23558;
  do
  {
    v19 = &v18[v17];
    *(v19 - 1) = 0;
    *&v18[v17] = 0;
    *(v19 + 1) = 0;
    *(v19 + 6) = 0;
    *(v19 + 5) = 0;
    *(v19 - 14) = 0;
    *(v19 - 7) = 0;
    *(v19 + 22) = 0;
    *(v19 + 14) = 0;
    v17 += 52;
    *(v19 + 27) = 0;
  }

  while (v17 != 728);
  v20 = -1536;
  do
  {
    v21 = (this + v20);
    v21[1615] = 0uLL;
    v21[1614] = 0uLL;
    v21[1613] = 0uLL;
    *(this + v20 + 25854) = 0uLL;
    v20 += 64;
  }

  while (v20);
  v22 = (this + 25820);
  v23 = 864;
  do
  {
    *(v22 - 12) = 0;
    *(v22 - 2) = 0;
    v22[1] = 0;
    v22[2] = 0;
    *v22 = 0;
    v22 = (v22 + 36);
    v23 -= 36;
  }

  while (v23);
  *(this + 3334) = 0;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[8] = 0;
  *(v3 + 3) = 0;
  v3[16] = 0;
  *(v3 + 34) = 0;
  *(this + 26700) = 0;
  *(this + 26708) = 0u;
  *(this + 26721) = 0;
  *(this + 26732) = 0;
  *(this + 26740) = 0;
  *(this + 26744) = 0u;
  *(this + 26760) = 0u;
  *(this + 26772) = 0u;
  *(this + 6702) = 0;
  *(this + 26792) = 0u;
  *(this + 3355) = 0;
  *(this + 26824) = 0u;
  *(this + 26848) = 0;
  *(this + 26877) = 0;
  *(this + 3359) = 0;
  *(this + 26856) = 0u;
  *(this + 3363) = 0;
  *(this + 6728) = 0;
  *(this + 26888) = 0u;
  *(this + 6734) = 0;
  *(this + 26920) = 0u;
  *(this + 6740) = 0;
  *(this + 1684) = 0u;
  *(this + 6746) = 0;
  *(this + 26968) = 0u;
  *(this + 1687) = 0u;
  *(this + 1688) = 0u;
  *(this + 27023) = 0;
  *(this + 27032) = 0u;
  *(this + 6762) = 0;
  *(this + 6768) = 0;
  *(this + 1691) = 0u;
  *(this + 6774) = 0;
  *(this + 27080) = 0u;
  *(this + 3390) = 0;
  *(this + 1694) = 0u;
  v24 = *MEMORY[0x29EDCA608];
}

__n128 SBAS_Eph2RefState(__n128 *a1, char a2, __int16 a3, int a4, uint64_t a5)
{
  v16 = *MEMORY[0x29EDCA608];
  *(a5 + 175) = 0u;
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
  *(a5 + 188) = a2;
  *(a5 + 176) = 1;
  *(a5 + 184) = 7;
  *(a5 + 112) = 0x4083880000000000;
  v5 = a1->n128_u32[2];
  v6 = a4 % 86400 - v5;
  if (v6 >= -43200)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v6 > 43199)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v5 + 86400 * (v8 + a4 / 86400);
  v10 = v9 - 604800;
  if (v9 > 0x93A7F)
  {
    v11 = a3 + 1;
  }

  else
  {
    v10 = v9;
    v11 = a3;
  }

  if (v9 < 0)
  {
    v12 = v9 + 604800;
  }

  else
  {
    v12 = v10;
  }

  if (v9 < 0)
  {
    v13 = a3 - 1;
  }

  else
  {
    v13 = v11;
  }

  *(a5 + 160) = v12;
  *(a5 + 164) = v13;
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
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void ds_Intermittent(char **a1, unsigned int a2, double *a3)
{
  v6 = 0;
  *&v44[127] = *MEMORY[0x29EDCA608];
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
  sprintf_5d(a1, *(a3 + 120));
  sprintf_sgR8(a1, a3[9]);
  sprintf_sgR8(a1, a3[10]);
  sprintf_sgR8(a1, a3[11]);
  sprintf_sgR8(a1, a3[12]);
  sprintf_sgR8(a1, a3[13]);
  sprintf_sgR8(a1, a3[14]);
  sprintf_sgR8(a1, a3[15]);
  sprintf_sgR8(a1, a3[17]);
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
  if (a2 > 0xB)
  {
    goto LABEL_59;
  }

  if (((1 << a2) & 0xA48) != 0)
  {
    sprintf_5d(a1, *(a3 + 417));
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
    sprintf_ACC(a1, a3[*a3 + 210]);
    v23 = (*a1)++;
    *v23 = 32;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf_ACC(a1, a3[*a3 + 212]);
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
    sprintf_sp1d(a1, *(a3 + 65));
    sprintf_4d(a1, *(a3 + 242));
    sprintf_4d(a1, *(a3 + 243));
    v31 = 0;
    v32 = *a1;
    v33 = 32;
    do
    {
      *a1 = v32 + 1;
      *v32 = v33;
      v32 = *a1;
      if (*a1 >= a1[3])
      {
        v32 = a1[2];
        *a1 = v32;
      }

      v33 = aPu[++v31];
    }

    while (v31 != 4);
    v34 = " --";
    if (*(a3 + 12))
    {
      v34 = " DC";
    }

    v35 = *v34;
    if (*v34)
    {
      v36 = (v34 + 1);
      do
      {
        *a1 = v32 + 1;
        *v32 = v35;
        v32 = *a1;
        if (*a1 >= a1[3])
        {
          v32 = a1[2];
          *a1 = v32;
        }

        v37 = *v36++;
        v35 = v37;
      }

      while (v37);
    }

    goto LABEL_60;
  }

  if (a2 != 2)
  {
LABEL_59:
    v32 = *a1;
    goto LABEL_60;
  }

  GN_GPS_Get_LibVersion(&v43);
  v32 = *a1;
  for (i = 5; i > 1; --i)
  {
    *a1 = v32 + 1;
    *v32 = 32;
    v32 = *a1;
    if (*a1 >= a1[3])
    {
      v32 = a1[2];
      *a1 = v32;
    }
  }

  v39 = v43;
  if (v43)
  {
    v40 = v44;
    do
    {
      *a1 = v32 + 1;
      *v32 = v39;
      v32 = *a1;
      if (*a1 >= a1[3])
      {
        v32 = a1[2];
        *a1 = v32;
      }

      v41 = *v40++;
      v39 = v41;
    }

    while (v41);
  }

LABEL_60:
  *a1 = v32 + 1;
  *v32 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v42 = *MEMORY[0x29EDCA608];
}

BOOL Is_Legal(int a1)
{
  result = 0;
  if (BYTE2(a1) && a1 & 0xFF00FFFF | (BYTE2(a1) << 16))
  {
    v3 = BYTE2(a1) < 0xFu;
    v4 = BYTE2(a1) - 120 < 0x27;
    if (a1 != 7)
    {
      v4 = 0;
    }

    if (a1 != 6)
    {
      v3 = v4;
    }

    v5 = BYTE2(a1) < 0x40u;
    v6 = BYTE2(a1) - 193 < 0xA;
    if (a1 != 5)
    {
      v6 = 0;
    }

    if (a1 != 4)
    {
      v5 = v6;
    }

    if (a1 <= 5u)
    {
      v3 = v5;
    }

    v7 = BYTE2(a1) < 0x25u;
    if (a1 != 3)
    {
      v7 = 0;
    }

    if (a1 == 2)
    {
      v7 = BYTE2(a1) < 0x19u;
    }

    if (a1 == 1)
    {
      v7 = BYTE2(a1) < 0x21u;
    }

    if (a1 <= 3u)
    {
      result = v7;
    }

    else
    {
      result = v3;
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

char *Get_GNSS_SV_Str(unint64_t a1)
{
  v1 = a1;
  v13 = *MEMORY[0x29EDCA608];
  v2 = a1 >> 8;
  v3 = Get_GNSS_SV_Str(GNSS_SV)::ch_Constell_Id[a1];
  v4 = BYTE2(a1);
  result = &g_GNSS_SV_Str;
  g_GNSS_SV_Str = v3;
  unk_2A13EC331 = *(&Get_GNSS_SV_Str(GNSS_SV)::str_Signal_Id[BYTE1(v1)] + v2);
  byte_2A13EC333 = 32;
  v6 = BYTE2(v1);
  v7 = (41 * v6) >> 12;
  v8 = -100 * v7 + v4;
  v9 = v7 | 0x30;
  if (v6 <= 0x63)
  {
    v9 = 32;
  }

  v10 = v8 > 9 || v6 > 0x63;
  byte_2A13EC334 = v9;
  v11 = v8 / 0xA + 48;
  if (!v10)
  {
    LOBYTE(v11) = 32;
  }

  byte_2A13EC335 = v11;
  byte_2A13EC336 = v8 % 0xA + 48;
  byte_2A13EC337 = 0;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm05_31PrintNavSoln(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 176);
    if (*(a1 + 10))
    {
      v6 = 89;
    }

    else
    {
      v6 = 78;
    }

    if (*(a1 + 9))
    {
      v7 = 89;
    }

    else
    {
      v7 = 78;
    }

    if (*(a1 + 8))
    {
      v8 = 89;
    }

    else
    {
      v8 = 78;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NAV:OsTime,%ums,BBTick,%ums,DateSet,%c,TimeSet,%c,UtcValid,%c,Year,%u,Month,%u,Day,%u,Hours,%u,Min,%u,Sec,%u,Msec,%u,WkNo,%d,Tow,%.12f,TowUnc%.12f,BCT_Tick,%llu,UtcCorr,%.1f,ClkDrift,%.12f,ClkDriftUnc,%.12f\n", v2, "GNM", 73, "Gnm05_31PrintNavSoln", *(a1 + 4), *a1, v8, v7, v6, *(a1 + 12), *(a1 + 14), *(a1 + 16), *(a1 + 18), *(a1 + 20), *(a1 + 22), *(a1 + 24), *(a1 + 28), *(a1 + 48), *(a1 + 40), *(a1 + 32), *(a1 + 72), *(a1 + 80), *(a1 + 176));
    gnssOsa_PrintLog(__str, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NAV:OsTime,%ums,Lat,%.9f,Lon,%.9f,AltMSL,%f,Speed,%f,Course,%f,VerVel,%f,HAccMaj,%f,HAccMin,%f,PRRes,%f,FixT,%u,VSF,%u,VNM,%u,FixMode,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm05_31PrintNavSoln", *(a1 + 4), *(a1 + 112), *(a1 + 120), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 208), *(a1 + 216), *(a1 + 256), *(a1 + 296), *(a1 + 297), *(a1 + 298), *(a1 + 299));
      gnssOsa_PrintLog(__str, 4, 1, 0);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v10 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NAV:OsTime,%ums,SVSignalsInView,%u,SatsUsed,%u,UsrS,%u,GnssC,%u,Reliab,%u,AsstUsed,0x%X,SpoofMsk,0x%X\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm05_31PrintNavSoln", *(a1 + 4), *(a1 + 315), *(a1 + 316), *(a1 + 300), *(a1 + 301), *(a1 + 312), *(a1 + 308), *(a1 + 304));
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm05_55AssignAppInfo(_BYTE *a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 && *a1 == 1)
  {
    v4 = 1;
    v5 = gnssOsa_Calloc("Gnm05_55AssignAppInfo", 126, 1, 0xC4uLL);
    *a2 = v5;
    if (v5)
    {
      *v5 = 1;
      memcpy_s("Gnm05_55AssignAppInfo", 134, v5 + 66, 0x41u, a1 + 66, 0x41uLL);
      memcpy_s("Gnm05_55AssignAppInfo", 135, (*a2 + 1), 0x41u, a1 + 1, 0x41uLL);
      memcpy_s("Gnm05_55AssignAppInfo", 136, (*a2 + 131), 0x41u, a1 + 131, 0x41uLL);
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

_BYTE *EvLog(_BYTE *result)
{
  v10 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg < 4)
  {
    goto LABEL_15;
  }

  v1 = result;
  result = EvLog_Header();
  v2 = *v1;
  v3 = g_CB_ELog;
  if (*v1)
  {
    v4 = v1 + 1;
    do
    {
      g_CB_ELog = (v3 + 1);
      *v3 = v2;
      v3 = g_CB_ELog;
      if (g_CB_ELog >= qword_2A14540F8)
      {
        v3 = qword_2A14540F0;
        g_CB_ELog = qword_2A14540F0;
      }

      v5 = *v4++;
      v2 = v5;
    }

    while (v5);
  }

  g_CB_ELog = (v3 + 1);
  *v3 = 10;
  v6 = g_CB_ELog;
  if (g_CB_ELog >= qword_2A14540F8)
  {
    g_CB_ELog = qword_2A14540F0;
    v6 = qword_2A14540F0;
  }

  v7 = qword_2A14540F8 - qword_2A14540F0;
  if (dword_2A14540E8 - v6 > 0)
  {
    v7 = 0;
  }

  if ((v7 + dword_2A14540E8 - v6) > 0xFF)
  {
LABEL_15:
    v9 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];

    return GNSS_Event_Log_Ctl(&g_CB_ELog);
  }

  return result;
}

uint64_t EvLog_Header()
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = mach_continuous_time();
  sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v0));
  v1 = g_CB_ELog++;
  *v1 = 32;
  if (g_CB_ELog >= qword_2A14540F8)
  {
    g_CB_ELog = qword_2A14540F0;
  }

  result = sprintf_10u(&g_CB_ELog, **(p_api + 8));
  v3 = g_CB_ELog++;
  *v3 = 32;
  if (g_CB_ELog >= qword_2A14540F8)
  {
    g_CB_ELog = qword_2A14540F0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void *EvLog_d(void *result, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg < 4)
  {
    goto LABEL_15;
  }

  v3 = result;
  EvLog_Header();
  v4 = *v3;
  if (*v3)
  {
    v5 = g_CB_ELog;
    v6 = v3 + 1;
    do
    {
      g_CB_ELog = (v5 + 1);
      *v5 = v4;
      v5 = g_CB_ELog;
      if (g_CB_ELog >= qword_2A14540F8)
      {
        v5 = qword_2A14540F0;
        g_CB_ELog = qword_2A14540F0;
      }

      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  result = sprintf_sp1d(&g_CB_ELog, a2);
  v8 = g_CB_ELog++;
  *v8 = 10;
  v9 = g_CB_ELog;
  if (g_CB_ELog >= qword_2A14540F8)
  {
    g_CB_ELog = qword_2A14540F0;
    v9 = qword_2A14540F0;
  }

  v10 = dword_2A14540E8 - v9;
  v11 = qword_2A14540F8 - qword_2A14540F0;
  if (v10 > 0)
  {
    v11 = 0;
  }

  if ((v11 + v10) > 0xFF)
  {
LABEL_15:
    v13 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v12 = *MEMORY[0x29EDCA608];

    return GNSS_Event_Log_Ctl(&g_CB_ELog);
  }

  return result;
}

_BYTE *EvLog_nd(_BYTE *result, int a2, uint64_t a3, ...)
{
  v16 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg >= 4)
  {
    v4 = result;
    result = EvLog_Header();
    v5 = *v4;
    if (*v4)
    {
      v6 = g_CB_ELog;
      v7 = v4 + 1;
      do
      {
        g_CB_ELog = (v6 + 1);
        *v6 = v5;
        v6 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A14540F8)
        {
          v6 = qword_2A14540F0;
          g_CB_ELog = qword_2A14540F0;
        }

        v8 = *v7++;
        v5 = v8;
      }

      while (v8);
    }

    for (i = &a3; a2; --a2)
    {
      v9 = i;
      i += 2;
      result = sprintf_sp1d(&g_CB_ELog, *v9);
    }

    v10 = g_CB_ELog++;
    *v10 = 10;
    v11 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A14540F8)
    {
      g_CB_ELog = qword_2A14540F0;
      v11 = qword_2A14540F0;
    }

    v12 = dword_2A14540E8 - v11;
    v13 = qword_2A14540F8 - qword_2A14540F0;
    if (v12 > 0)
    {
      v13 = 0;
    }

    if ((v13 + v12) <= 0xFF)
    {
      result = GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *EvLog_VecI4(_BYTE *result, unsigned int a2, int *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg < 4)
  {
    goto LABEL_18;
  }

  v5 = result;
  result = EvLog_Header();
  v6 = *v5;
  if (*v5)
  {
    v7 = g_CB_ELog;
    v8 = v5 + 1;
    do
    {
      g_CB_ELog = (v7 + 1);
      *v7 = v6;
      v7 = g_CB_ELog;
      if (g_CB_ELog >= qword_2A14540F8)
      {
        v7 = qword_2A14540F0;
        g_CB_ELog = qword_2A14540F0;
      }

      v9 = *v8++;
      v6 = v9;
    }

    while (v9);
  }

  if (a2)
  {
    v10 = a2;
    do
    {
      v11 = *a3++;
      result = sprintf_sp1d(&g_CB_ELog, v11);
      --v10;
    }

    while (v10);
  }

  v12 = g_CB_ELog++;
  *v12 = 10;
  v13 = g_CB_ELog;
  if (g_CB_ELog >= qword_2A14540F8)
  {
    g_CB_ELog = qword_2A14540F0;
    v13 = qword_2A14540F0;
  }

  v14 = dword_2A14540E8 - v13;
  v15 = qword_2A14540F8 - qword_2A14540F0;
  if (v14 > 0)
  {
    v15 = 0;
  }

  if ((v15 + v14) > 0xFF)
  {
LABEL_18:
    v17 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v16 = *MEMORY[0x29EDCA608];

    return GNSS_Event_Log_Ctl(&g_CB_ELog);
  }

  return result;
}

char *EvLog_v(char *result, ...)
{
  va_start(va, result);
  v4 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg >= 4)
  {
    v1 = result;
    EvLog_Header();
    result = sprintf_v(&g_CB_ELog, v1, va);
    v2 = qword_2A14540F8 - qword_2A14540F0;
    if (dword_2A14540E8 - g_CB_ELog > 0)
    {
      v2 = 0;
    }

    if ((v2 + dword_2A14540E8 - g_CB_ELog) <= 0xFF)
    {
      result = GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DbgLog_v(uint64_t result, char *a2, ...)
{
  va_start(va, a2);
  v13 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg >= 4)
  {
    v3 = result;
    if (result)
    {
      v4 = g_CB_NDbg;
      v5 = 69;
      v6 = 1u;
      v7 = &g_CB_NDbg;
      do
      {
        g_CB_NDbg = (v4 + 1);
        *v4 = v5;
        v4 = g_CB_NDbg;
        if (g_CB_NDbg >= qword_2A1454118)
        {
          v4 = qword_2A1454110;
          g_CB_NDbg = qword_2A1454110;
        }

        v5 = str_3_0[v6++];
      }

      while (v6 != 4);
    }

    else
    {
      v8 = mach_continuous_time();
      v7 = &g_CB_ELog;
      sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v8));
      v9 = g_CB_ELog++;
      *v9 = 32;
      if (g_CB_ELog >= qword_2A14540F8)
      {
        g_CB_ELog = qword_2A14540F0;
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
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void *EvCrt_d(void *result, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!g_Logging_Cfg)
  {
    goto LABEL_15;
  }

  v3 = result;
  EvLog_Header();
  v4 = *v3;
  if (*v3)
  {
    v5 = g_CB_ELog;
    v6 = v3 + 1;
    do
    {
      g_CB_ELog = (v5 + 1);
      *v5 = v4;
      v5 = g_CB_ELog;
      if (g_CB_ELog >= qword_2A14540F8)
      {
        v5 = qword_2A14540F0;
        g_CB_ELog = qword_2A14540F0;
      }

      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  result = sprintf_sp1d(&g_CB_ELog, a2);
  v8 = g_CB_ELog++;
  *v8 = 10;
  v9 = g_CB_ELog;
  if (g_CB_ELog >= qword_2A14540F8)
  {
    g_CB_ELog = qword_2A14540F0;
    v9 = qword_2A14540F0;
  }

  v10 = dword_2A14540E8 - v9;
  v11 = qword_2A14540F8 - qword_2A14540F0;
  if (v10 > 0)
  {
    v11 = 0;
  }

  if ((v11 + v10) <= 0xFF)
  {
    v12 = *MEMORY[0x29EDCA608];

    return GNSS_Event_Log_Ctl(&g_CB_ELog);
  }

  else
  {
LABEL_15:
    v13 = *MEMORY[0x29EDCA608];
  }

  return result;
}

_BYTE *EvCrt_nd(_BYTE *result, int a2, uint64_t a3, ...)
{
  v16 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v4 = result;
    result = EvLog_Header();
    v5 = *v4;
    if (*v4)
    {
      v6 = g_CB_ELog;
      v7 = v4 + 1;
      do
      {
        g_CB_ELog = (v6 + 1);
        *v6 = v5;
        v6 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A14540F8)
        {
          v6 = qword_2A14540F0;
          g_CB_ELog = qword_2A14540F0;
        }

        v8 = *v7++;
        v5 = v8;
      }

      while (v8);
    }

    for (i = &a3; a2; --a2)
    {
      v9 = i;
      i += 2;
      result = sprintf_sp1d(&g_CB_ELog, *v9);
    }

    v10 = g_CB_ELog++;
    *v10 = 10;
    v11 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A14540F8)
    {
      g_CB_ELog = qword_2A14540F0;
      v11 = qword_2A14540F0;
    }

    v12 = dword_2A14540E8 - v11;
    v13 = qword_2A14540F8 - qword_2A14540F0;
    if (v12 > 0)
    {
      v13 = 0;
    }

    if ((v13 + v12) <= 0xFF)
    {
      result = GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

char *EvCrt_v(char *result, ...)
{
  va_start(va, result);
  v4 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v1 = result;
    EvLog_Header();
    result = sprintf_v(&g_CB_ELog, v1, va);
    v2 = qword_2A14540F8 - qword_2A14540F0;
    if (dword_2A14540E8 - g_CB_ELog > 0)
    {
      v2 = 0;
    }

    if ((v2 + dword_2A14540E8 - g_CB_ELog) <= 0xFF)
    {
      result = GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *EvCrt_Illegal_switch_case(void *result, unsigned int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (!g_Logging_Cfg)
  {
    goto LABEL_19;
  }

  v3 = result;
  EvLog_Header();
  v4 = *v3;
  v5 = g_CB_ELog;
  if (*v3)
  {
    v6 = v3 + 1;
    do
    {
      g_CB_ELog = (v5 + 1);
      *v5 = v4;
      v5 = g_CB_ELog;
      if (g_CB_ELog >= qword_2A14540F8)
      {
        v5 = qword_2A14540F0;
        g_CB_ELog = qword_2A14540F0;
      }

      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  v8 = 58;
  v9 = 1u;
  do
  {
    g_CB_ELog = (v5 + 1);
    *v5 = v8;
    v5 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A14540F8)
    {
      v5 = qword_2A14540F0;
      g_CB_ELog = qword_2A14540F0;
    }

    v8 = str_5_2[v9++];
  }

  while (v9 != 50);
  result = sprintf_1u(&g_CB_ELog, a2);
  v10 = g_CB_ELog++;
  *v10 = 10;
  v11 = g_CB_ELog;
  if (g_CB_ELog >= qword_2A14540F8)
  {
    g_CB_ELog = qword_2A14540F0;
    v11 = qword_2A14540F0;
  }

  v12 = dword_2A14540E8 - v11;
  v13 = qword_2A14540F8 - qword_2A14540F0;
  if (v12 > 0)
  {
    v13 = 0;
  }

  if ((v13 + v12) <= 0xFF)
  {
    v14 = *MEMORY[0x29EDCA608];

    return GNSS_Event_Log_Ctl(&g_CB_ELog);
  }

  else
  {
LABEL_19:
    v15 = *MEMORY[0x29EDCA608];
  }

  return result;
}

void *EvCrt_Illegal_switch_default(void *result, unsigned int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (!g_Logging_Cfg)
  {
    goto LABEL_19;
  }

  v3 = result;
  EvLog_Header();
  v4 = *v3;
  v5 = g_CB_ELog;
  if (*v3)
  {
    v6 = v3 + 1;
    do
    {
      g_CB_ELog = (v5 + 1);
      *v5 = v4;
      v5 = g_CB_ELog;
      if (g_CB_ELog >= qword_2A14540F8)
      {
        v5 = qword_2A14540F0;
        g_CB_ELog = qword_2A14540F0;
      }

      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  v8 = 58;
  v9 = 1u;
  do
  {
    g_CB_ELog = (v5 + 1);
    *v5 = v8;
    v5 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A14540F8)
    {
      v5 = qword_2A14540F0;
      g_CB_ELog = qword_2A14540F0;
    }

    v8 = str_6_1[v9++];
  }

  while (v9 != 53);
  result = sprintf_1u(&g_CB_ELog, a2);
  v10 = g_CB_ELog++;
  *v10 = 10;
  v11 = g_CB_ELog;
  if (g_CB_ELog >= qword_2A14540F8)
  {
    g_CB_ELog = qword_2A14540F0;
    v11 = qword_2A14540F0;
  }

  v12 = dword_2A14540E8 - v11;
  v13 = qword_2A14540F8 - qword_2A14540F0;
  if (v12 > 0)
  {
    v13 = 0;
  }

  if ((v13 + v12) <= 0xFF)
  {
    v14 = *MEMORY[0x29EDCA608];

    return GNSS_Event_Log_Ctl(&g_CB_ELog);
  }

  else
  {
LABEL_19:
    v15 = *MEMORY[0x29EDCA608];
  }

  return result;
}

char *EvDbg_v(char *result, ...)
{
  va_start(va, result);
  v4 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg >= 5)
  {
    v1 = result;
    EvLog_Header();
    result = sprintf_v(&g_CB_ELog, v1, va);
    v2 = qword_2A14540F8 - qword_2A14540F0;
    if (dword_2A14540E8 - g_CB_ELog > 0)
    {
      v2 = 0;
    }

    if ((v2 + dword_2A14540E8 - g_CB_ELog) <= 0xFF)
    {
      result = GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

char *EvVrb_v(char *result, ...)
{
  va_start(va, result);
  v4 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg >= 6)
  {
    v1 = result;
    EvLog_Header();
    result = sprintf_v(&g_CB_ELog, v1, va);
    v2 = qword_2A14540F8 - qword_2A14540F0;
    if (dword_2A14540E8 - g_CB_ELog > 0)
    {
      v2 = 0;
    }

    if ((v2 + dword_2A14540E8 - g_CB_ELog) <= 0xFF)
    {
      result = GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
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

uint64_t Is_GN_API_Set_Allowed(const char *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *p_api;
  if (v1 <= 7 && ((0x93u >> v1) & 1) != 0)
  {
    EvCrt_v("%s:  FAILED:  Not allowed when in %s Mode", a1, off_29EF06398[v1]);
    result = 0;
  }

  else
  {
    result = 1;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL API_Set_Platform_Calibration_GLONASS_Group_Delays(double *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (fabs(*a1) <= 100.0)
  {
    v4 = 0;
    while (v4 != 13)
    {
      v1 = a1[++v4];
      if (fabs(v1) > 100.0)
      {
        v2 = (v4 - 1) > 0xC;
        v3 = v4 - 7;
        goto LABEL_7;
      }
    }

    v5 = p_api;
    v6 = (*(p_api + 72) + 1880);
    v8 = *(a1 + 1);
    v7 = *(a1 + 2);
    *v6 = *a1;
    v6[1] = v8;
    v6[2] = v7;
    v9 = *(a1 + 6);
    v11 = *(a1 + 3);
    v10 = *(a1 + 4);
    v6[5] = *(a1 + 5);
    v6[6] = v9;
    v6[3] = v11;
    v6[4] = v10;
    v2 = 1;
    *(*(v5 + 72) + 1992) = 1;
  }

  else
  {
    v2 = 0;
    v3 = -7;
LABEL_7:
    EvCrt_v("API_Set_Platform_Calibration_GLONASS_Group_Delays:  FAILED  Group Delay %f larger than +/-100m on Freq Channel %d", v1, v3);
  }

  v12 = *MEMORY[0x29EDCA608];
  return v2;
}

BOOL API_Set_Inter_Chan_Bias_Model(unsigned int a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (a1 >= 8)
  {
    EvCrt_d("API_Set_Inter_Chan_Bias_Model:  FAILED  Illegal ME RF Type", a1);
  }

  else
  {
    Init_Set_Inter_Chan_Bias(*(p_api + 72), a1);
  }

  result = a1 < 8;
  v3 = *MEMORY[0x29EDCA608];
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
  *(v6 + 224) = a1;
  *(v6 + 232) = a2;
  *(v6 + 240) = a3;
  v7 = *MEMORY[0x29EDCA608];
  return 1;
}

BOOL API_Set_Config(uint64_t a1)
{
  v15[1] = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = *(p_api + 72);
    API_Set_FixInterval(*(a1 + 34));
    *(v2 + 1732) = *(a1 + 44);
    v3 = *(a1 + 46);
    if (v3 < 0x400)
    {
      LOWORD(v3) = 2139;
    }

    *(v2 + 1734) = v3;
    *(v2 + 14) = *a1;
    *(v2 + 30) = *(a1 + 16);
    *(v2 + 38) = *(a1 + 24);
    *(v2 + 42) = *(a1 + 28);
    *(v2 + 43) = *(a1 + 29);
    *(v2 + 1736) = *(a1 + 48);
    v4 = *(a1 + 36);
    if (v4 == 255)
    {
      v5 = -1;
    }

    else
    {
      v5 = 60000 * v4;
    }

    *(v2 + 1768) = v5;
    *(v2 + 1840) = *(a1 + 80);
    *(v2 + 1852) = *(a1 + 88);
    *(v2 + 1853) = *(a1 + 89);
    *(v2 + 1854) = *(a1 + 90);
    g_Logging_Cfg = *(a1 + 40);
    v15[0] = 0.0;
    if (!R8_EQ((a1 + 56), v15) || (v14 = 0.0, !R8_EQ((a1 + 64), &v14)) || (v13 = 0, !R8_EQ((a1 + 72), &v13)))
    {
      v6 = *(p_api + 136) + 0x10000;
      *(v6 + 2680) = *(a1 + 56) * 0.0174532925;
      *(v6 + 2688) = *(a1 + 64) * 0.0174532925;
      *(v6 + 2696) = *(a1 + 72);
      Geo2ECEF(v6 + 2680, &WGS84_Datum, (v6 + 2656));
      v7 = __sincos_stret(*(v6 + 2680));
      *(v6 + 2736) = v7;
      v8 = 1.0 / sqrt(v7.__sinval * v7.__sinval * -0.00669437999 + 1.0);
      v9 = *(v6 + 2696);
      v10 = v7.__cosval * (v9 + v8 * 6378137.0);
      if (v10 < 1.0)
      {
        v10 = 1.0;
      }

      *(v6 + 2760) = v10;
      *(v6 + 2752) = v9 + v8 * (v8 * v8) * 6335439.33;
    }
  }

  result = a1 != 0;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t API_Set_FixInterval(int a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(p_api + 72);
  v3 = *(v2 + 1672);
  if (!v3)
  {
    v4 = *(v2 + 1668);
    if (a1 == v4)
    {
      goto LABEL_13;
    }

    v5 = *p_api;
    if (*p_api <= 0xBu)
    {
      if (((1 << v5) & 0xE48) != 0)
      {
        v6 = *(p_api + 120);
        v7 = v6[115];
        v8 = v6[141];
        v9 = v6[110];
        if ((v8 + v7 - v9 - (*&g_MacClockTicksToMsRelation * mach_continuous_time())) > 99)
        {
          v10 = v6[141] + a1 - *(v2 + 1668);
          EvLog_v("API_Set_FixInterval:  GNSS_Exe_State   RUNNING(%d) Fix_Int %d %d", *p_api, *(v2 + 1668), a1);
          *(v2 + 1668) = a1;
          v6[141] = v10;
          G5K_ME_enc_n(*(p_api + 272), v10, a1);
          GNSS_Write_GNB_Ctrl(*(p_api + 272));
          GNSS_GNB_Debug_Ctl(*(p_api + 304));
          goto LABEL_13;
        }

        v5 = *p_api;
        v4 = *(v2 + 1668);
LABEL_12:
        *(v2 + 1672) = a1;
        EvLog_v("API_Set_FixInterval:  GNSS_Exe_State   RUNNING(%d) Fix_Int To Be Updated %d %d", v5, v4, a1);
        goto LABEL_13;
      }

      if (((1 << v5) & 0x124) != 0)
      {
        goto LABEL_12;
      }
    }

    EvLog_v("API_Set_FixInterval:  GNSS_Exe_State NOT RUNNING(%d) Fix_Int %d %d", v5, 0, a1);
    *(v2 + 1668) = a1;
    *(v2 + 1672) = 0;
    goto LABEL_13;
  }

  if (a1 != v3)
  {
    EvLog_v("API_Set_FixInterval:  Fix_Int Update Pending %d %d", *(v2 + 1672), a1);
    *(v2 + 1672) = a1;
  }

LABEL_13:
  v11 = *MEMORY[0x29EDCA608];
  return 1;
}

BOOL API_Query_Config(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v1 = p_api;
    v2 = *(p_api + 72);
    *a1 = *(v2 + 14);
    *(a1 + 16) = *(v2 + 30);
    *(a1 + 32) = *(v2 + 46);
    v3 = *(v2 + 1672);
    if (!v3)
    {
      v3 = *(v2 + 1668);
    }

    *(a1 + 34) = v3;
    v4 = *(v2 + 1768);
    if (v4 == 0xFFFFFFFFLL)
    {
      v5 = -1;
    }

    else
    {
      v5 = v4 / 0xEA60;
    }

    *(a1 + 36) = v5;
    *(a1 + 44) = *(v2 + 1732);
    *(a1 + 46) = *(v2 + 1734);
    *(a1 + 80) = *(v2 + 1840);
    *(a1 + 88) = *(v2 + 1852);
    *(a1 + 89) = *(v2 + 1853);
    *(a1 + 40) = g_Logging_Cfg;
    v6 = *(v1 + 136) + 0x10000;
    *(a1 + 56) = *(v6 + 2680) * 57.2957795;
    *(a1 + 64) = *(v6 + 2688) * 57.2957795;
    *(a1 + 72) = *(v6 + 2696);
  }

  result = a1 != 0;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t API_Set_Not_Broadcast_SVID(int a1, _OWORD *a2)
{
  v62 = *MEMORY[0x29EDCA608];
  v4 = *(p_api + 72);
  if (a1)
  {
    if (a1 != 1)
    {
      __assert_rtn("API_Set_Not_Broadcast_SVID", "GNSS_Core_api.cpp", 1103, "(sizeof_DBss_Not_Brd_SV) >= (((( 32)) + (( 24)) + (( 36)) + ((63)) + (( 10)) + (( 14)) + (( 39)))*sizeof(Not_Brd_SVID[0]))");
    }

    v5 = 1376;
    v6 = 1368;
    v7 = 1360;
    v8 = 1352;
    v9 = 1344;
    v10 = 1336;
    v11 = 1328;
    v12 = 1104;
    v13 = "L5";
  }

  else
  {
    v5 = 1096;
    v6 = 1088;
    v7 = 1080;
    v8 = 1072;
    v9 = 1064;
    v10 = 1056;
    v11 = 1048;
    v12 = 824;
    v13 = "L1";
  }

  v14 = 0;
  v15 = 0;
  v16 = *(v4 + v5);
  v17 = *(v4 + v6);
  v18 = *(v4 + v7);
  v19 = *(v4 + v8);
  v20 = *(v4 + v9);
  v21 = *(v4 + v10);
  v22 = *(v4 + v11);
  v23 = (v4 + v12);
  v24 = a2[5];
  v26 = a2[2];
  v25 = a2[3];
  v23[4] = a2[4];
  v23[5] = v24;
  v23[2] = v26;
  v23[3] = v25;
  v27 = a2[9];
  v29 = a2[6];
  v28 = a2[7];
  v23[8] = a2[8];
  v23[9] = v27;
  v23[6] = v29;
  v23[7] = v28;
  v31 = a2[11];
  v30 = a2[12];
  v32 = a2[10];
  *(v23 + 202) = *(a2 + 202);
  v23[11] = v31;
  v23[12] = v30;
  v23[10] = v32;
  v33 = a2[1];
  *v23 = *a2;
  v23[1] = v33;
  v34 = 1;
  do
  {
    if (*(v22 + v14))
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v15 |= v35;
    v34 *= 2;
    ++v14;
  }

  while (v14 != 32);
  v36 = 0;
  v37 = 0;
  v38 = 1;
  do
  {
    if (*(v20 + v36))
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v37 |= v39;
    v38 *= 2;
    ++v36;
  }

  while (v36 != 10);
  v40 = 0;
  v41 = 0;
  v42 = 1;
  do
  {
    if (*(v21 + v40))
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    v41 |= v43;
    v42 *= 2;
    ++v40;
  }

  while (v40 != 24);
  v44 = 0;
  v45 = 0;
  v46 = 1;
  do
  {
    if (*(v19 + v44))
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    v45 |= v47;
    v46 *= 2;
    ++v44;
  }

  while (v44 != 39);
  v48 = 0;
  v49 = 0;
  v50 = 1;
  do
  {
    if (*(v18 + v48))
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    v49 |= v51;
    v50 *= 2;
    ++v48;
  }

  while (v48 != 63);
  v52 = 0;
  v53 = 0;
  v54 = 1;
  do
  {
    if (*(v17 + v52))
    {
      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    v53 |= v55;
    v54 *= 2;
    ++v52;
  }

  while (v52 != 36);
  v56 = 0;
  v57 = 0;
  v58 = 1;
  do
  {
    if (*(v16 + v56))
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    v57 |= v59;
    v58 *= 2;
    ++v56;
  }

  while (v56 != 14);
  EvLog_v("API_Set_Not_Broadcast_SVID:  %s  G %x Q %x R %x S %X B %X E %X N %X", v13, v15, v37, v41, v45, v49, v53, v57);
  Core_Save_Not_Brd_SV(a1, a2);
  *(*(p_api + 120) + 28240) = 0;
  v60 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t API_Set_RTI_Bad_SV_List(int a1, _OWORD *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *(p_api + 72);
  v5 = *(p_api + 56);
  if (a1)
  {
    if (a1 != 1)
    {
      __assert_rtn("API_Set_RTI_Bad_SV_List", "GNSS_Core_api.cpp", 1179, "(sizeof_DBss_Inhib) >= (((( 32)) + (( 24)) + (( 36)) + ((63)) + (( 10)) + (( 14)) + (( 39))) * sizeof(Inhib[0]))");
    }

    v6 = 55412;
    v7 = 544;
  }

  else
  {
    v6 = 51052;
    v7 = 265;
  }

  v8 = 0;
  v9 = (v4 + v7);
  v10 = a2[1];
  *v9 = *a2;
  v9[1] = v10;
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[5];
  v9[4] = a2[4];
  v9[5] = v13;
  v9[2] = v11;
  v9[3] = v12;
  v14 = a2[6];
  v15 = a2[7];
  v16 = a2[9];
  v9[8] = a2[8];
  v9[9] = v16;
  v9[6] = v14;
  v9[7] = v15;
  v17 = a2[10];
  v18 = a2[11];
  v19 = a2[12];
  *(v9 + 202) = *(a2 + 202);
  v9[11] = v18;
  v9[12] = v19;
  v9[10] = v17;
  v20 = (v6 + v5 + 16);
  do
  {
    if (*(a2 + v8) != 1)
    {
      v22 = 1;
LABEL_18:
      *v20 = v22;
      goto LABEL_19;
    }

    Constell_Prn = Get_Constell_Prn(v8);
    if (a1 == 1)
    {
      if (Constell_Prn > 7 || ((1 << Constell_Prn) & 0x85) == 0)
      {
LABEL_14:
        if (*(v4 + v8 + 265) == 1 && *(v4 + v8 + 544) == 1)
        {
          *(v4 + v8 + 1384) = 1;
        }

        v22 = 2;
        goto LABEL_18;
      }
    }

    else if (Constell_Prn && Constell_Prn != 6)
    {
      goto LABEL_14;
    }

LABEL_19:
    ++v8;
    v20 += 5;
  }

  while (v8 != 218);
  v23 = *(v4 + 1752);
  if (v23 > 0)
  {
    Core_Save_Inhib_EE((v4 + 1384), v23);
  }

  v24 = *MEMORY[0x29EDCA608];
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
  if (g_Logging_Cfg >= 6)
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
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v16 = *MEMORY[0x29EDCA608];
  v6 = *(p_api + 80);
  memset(v15, 0, sizeof(v15));
  do
  {
    v7 = *(v6 + 4 * v1 + 1000);
    if (Is_Legal(v7) && *(v6 + v1 + 2536) == 1 && (*(v15 + v1) & 1) == 0)
    {
      *(v15 + v1) = 1;
      v8 = *(v6 + v1 + 1512);
      if (v8 != 255)
      {
        *(v15 + v8) = 1;
      }

      v2 = (v2 + 1);
      if (v7 <= 6u)
      {
        if (((1 << v7) & 0x6A) != 0)
        {
          v3 = 1;
        }

        else if (v7 == 2)
        {
          v5 = 1;
        }

        else if (v7 == 4)
        {
          v4 = 1;
        }
      }
    }

    ++v1;
  }

  while (v1 != 128);
  v9 = v3;
  if (v3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if (v5)
  {
    v9 = v10;
  }

  v11 = v9 + (v4 & 1);
  if (v11 > 1)
  {
    if (*(v6 + 488) & (v3 & v5))
    {
      if (v11 - 3 > 0xFFFFFFFD)
      {
        goto LABEL_30;
      }

      v11 = 2;
    }

    if ((*(v6 + 489) & (v3 & v4) & 1) == 0)
    {
      goto LABEL_28;
    }

    if (v11 - 3 <= 0xFFFFFFFD)
    {
      v11 = 2;
LABEL_28:
      if (*(v6 + 490) & v5)
      {
        v11 -= v4 & 1;
      }

      goto LABEL_31;
    }

LABEL_30:
    v11 = 1;
  }

LABEL_31:
  if (*(v6 + 56) < 8)
  {
    ++v11;
  }

  *a1 = v11;
  v12 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t API_Get_Fix_Reliability(void)
{
  v19 = *MEMORY[0x29EDCA608];
  v0 = p_api;
  v1 = *(p_api + 80);
  v2 = *(v1 + 56);
  if (v2 < 6)
  {
LABEL_2:
    result = 1;
    goto LABEL_42;
  }

  v4 = *(p_api + 176) + 60216;
  v18 = 0;
  Num_SV_and_Clock_Unknowns = API_Get_Num_SV_and_Clock_Unknowns(&v18);
  if (*(v1 + 784) <= 10.0)
  {
    v6 = -3;
  }

  else
  {
    v6 = -4;
  }

  v7 = v6 + Num_SV_and_Clock_Unknowns - v18;
  v8 = *(v4 + 2532);
  if (v8 > 0xC8)
  {
    v7 -= 2;
  }

  if (*v4 == 1 && (*(v4 + 16) & 1) == 0 && *(v4 + 4) == 1 && *(v4 + 48) <= 160000.0 && (*(v4 + 8) - 3) < 2 || *(v4 + 856) == 1 && (*(v4 + 872) & 1) == 0 && *(v4 + 860) == 1 && *(v4 + 904) <= 160000.0)
  {
    v7 += 2;
  }

  if (*(v4 + 128) == 1 && (*(v4 + 144) & 1) == 0 && *(v4 + 132) == 1 && *(v4 + 160) <= 160000.0 && (*(v4 + 8) - 3) < 2)
  {
    ++v7;
  }

  v9 = *(v0 + 72);
  if (!*(v9 + 1780) && *(v9 + 18) == 1)
  {
    v10 = *(v9 + 1854) == 1 && v2 == 11;
    if (v10 && v7 >= 2)
    {
      v14 = *(v1 + 32) - *(*(v0 + 136) + 68180);
      if (v14 <= 3000)
      {
        v15 = *(v1 + 401);
        v16 = *(v1 + 391);
        v17 = v15 >= v16 || v15 >= 6;
        if (!v17 || v8 >= 0xC9)
        {
          EvCrt_v("BDS Consistency delay engaged:  dT %d  EDOF %d  SVs %d %d  BDS %d %d  GPS %d %d  GLON %d %d  MagPosCor %d", v14, v7, *(v1 + 384), *(v1 + 385), *(v1 + 400), v15, *(v1 + 390), v16, *(v1 + 395), *(v1 + 396), v8);
          if (!*(v9 + 1784))
          {
            *(v9 + 1784) = *(v1 + 32);
          }

          goto LABEL_2;
        }
      }
    }
  }

  if (v7 == 3)
  {
    result = 3;
  }

  else
  {
    if (v7 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    if (v7 >= 4)
    {
      result = 4;
    }

    else
    {
      result = v12;
    }
  }

LABEL_42:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void API_Get_Dbg_Constell_ME_Data(int a1, uint64_t a2)
{
  v42 = *MEMORY[0x29EDCA608];
  v4 = *(p_api + 96);
  v5 = *(p_api + 72);
  if (a1 <= 3)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        if ((v5[15] & 1) == 0)
        {
          goto LABEL_62;
        }

        v7 = 24;
        v8 = -1;
        v9 = 413;
      }

      else
      {
        if ((v5[19] & 1) == 0)
        {
          goto LABEL_62;
        }

        v7 = 36;
        v8 = -1;
        v9 = 417;
      }

      goto LABEL_21;
    }

    if ((v5[14] & 1) == 0)
    {
      goto LABEL_62;
    }

    v7 = 32;
    v8 = -1;
  }

  else
  {
    if (a1 > 5)
    {
      if (a1 != 6)
      {
        if ((v5[17] & 1) == 0)
        {
          goto LABEL_62;
        }

        v6 = 0;
        v7 = 39;
        v8 = -120;
        goto LABEL_22;
      }

      if ((v5[20] & 1) == 0)
      {
        goto LABEL_62;
      }

      v6 = 0;
      v7 = 14;
      goto LABEL_13;
    }

    if (a1 == 4)
    {
      if ((v5[18] & 1) == 0)
      {
        goto LABEL_62;
      }

      v6 = 0;
      v7 = 63;
LABEL_13:
      v8 = -1;
      goto LABEL_22;
    }

    if ((v5[16] & 1) == 0)
    {
      goto LABEL_62;
    }

    v7 = 10;
    v8 = -193;
  }

  v9 = 409;
LABEL_21:
  v6 = *(*(p_api + 120) + v9);
LABEL_22:
  *(a2 + 17) = v6;
  memset(v41, 0, 218);
  bzero(v40, 0x400uLL);
  bzero(v39, 0x400uLL);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    if (*(v4 + v12 + 96) == a1)
    {
      v15 = v8 + *(v4 + v12 + 98);
      if (v15 < v7)
      {
        v16 = *(v4 + v12 + 1248);
        if (v16 > 9 || v16 == 8)
        {
          ++*(v41 + v15);
          ++*(a2 + 2);
          v18 = (v4 + v13);
          LOBYTE(v10) = *(v4 + v13 + 1760);
          LOBYTE(v11) = *(v4 + v13 + 1888);
          *&v19 = *&v11;
          v20 = 0x3FB0000000000000;
          v21 = *&v10 + *&v19 * 0.0625;
          v40[v14] = v21;
          LOBYTE(v21) = *(v4 + v13 + 2016);
          LOBYTE(v19) = *(v4 + v13 + 2144);
          v22 = *&v21 + v19 * 0.0625;
          v39[v14] = v22;
          if ((*a2 & 1) == 0)
          {
            *a2 = 1;
          }

          v23 = *(v4 + 2 * v13 + 992);
          v24 = (v23 >> 8) & 3;
          if (*(a2 + 4) < v24)
          {
            *(a2 + 4) = v24;
          }

          v25 = v4 + 2400;
          if ((v23 & 8) != 0)
          {
            v25 = (v23 & 0x30) != 0 ? v4 + 2656 : v4 + 2400;
            if ((v23 & 0xC0) != 0)
            {
              v25 = v4 + 2912;
            }
          }

          v26 = *(v25 + 2 * v13);
          if (*(a2 + 8) < v26)
          {
            *(a2 + 8) = v26;
          }

          LOWORD(v22) = *(a2 + 10);
          v27 = *&v22;
          LOBYTE(v22) = v18[2016];
          LOBYTE(v20) = v18[2144];
          v28 = v20;
          v29 = *&v22 + v28 * 0.0625;
          if (v29 > v27)
          {
            *(a2 + 10) = v29;
            LOBYTE(v29) = v18[2016];
            LOBYTE(v27) = v18[2144];
            v27 = *&v27;
            v28 = 0.0625;
            v29 = *&v29 + v27 * 0.0625;
          }

          LOBYTE(v27) = v18[1760];
          LOBYTE(v28) = v18[1888];
          v11 = *&v27 + *&v28 * 0.0625;
          v10 = v11 - v29;
          if (v10 <= 6.0)
          {
            ++*(a2 + 14);
            if (v10 <= 3.0)
            {
              ++*(a2 + 12);
            }
          }

          ++v14;
        }
      }
    }

    ++v13;
    v12 += 4;
  }

  while (v13 != 128);
  v30 = 0;
  *(a2 + 16) = v14;
  do
  {
    if (*(v41 + v30) >= 2u)
    {
      ++*(a2 + 6);
    }

    ++v30;
  }

  while (v7 != v30);
  if (v14 > 0)
  {
    if (v14 >= 5)
    {
      v31 = 5;
    }

    else
    {
      v31 = v14;
    }

    v32 = (v14 - 1);
    VecSortAscR8(v40, 0, v14 - 1);
    v33 = v14 + ~v31;
    v34 = v14 - 1;
    v35 = v33;
    v36 = 0.0;
    do
    {
      v36 = v36 + v40[v34--];
    }

    while (v34 > v33);
    *(a2 + 24) = v36 / v31;
    VecSortAscR8(v39, 0, v14 - 1);
    v37 = 0.0;
    do
    {
      v37 = v37 + v39[v32--];
    }

    while (v32 > v35);
    *(a2 + 32) = v37 / v31;
  }

LABEL_62:
  v38 = *MEMORY[0x29EDCA608];
}

uint64_t API_Get_Dbg_Constell_PE_Data(uint64_t a1)
{
  result = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = result;
  v58 = *MEMORY[0x29EDCA608];
  v5 = *(p_api + 56);
  v6 = *(p_api + 176);
  v7 = *(p_api + 72);
  v8 = *(p_api + 96);
  v9 = *(p_api + 40);
  memset(v57, 0, sizeof(v57));
  memset(v56, 0, 39);
  memset(v55, 0, 39);
  if (result <= 3)
  {
    if (result == 1)
    {
      if (v7[14] == 1)
      {
        v10 = v5[8];
        v45 = -1;
        v11 = 32;
        v13 = v5[10];
        v47 = v13;
        v48 = v5[9];
        goto LABEL_24;
      }
    }

    else if (result == 2)
    {
      if (v7[15] == 1)
      {
        v10 = v5[2146];
        v47 = v5[2148];
        v48 = v5[2147];
        v5 += 1489;
        v45 = -1;
        v11 = 24;
        goto LABEL_24;
      }
    }

    else if (v7[19] == 1)
    {
      v10 = v5[2202];
      v47 = v5[2204];
      v48 = v5[2203];
      v5 += 2194;
      v45 = -1;
      v11 = 36;
      goto LABEL_24;
    }

LABEL_73:
    v43 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (result <= 5)
  {
    if (result == 4)
    {
      if (v7[18] == 1)
      {
        v10 = v5[3182];
        v47 = v5[3184];
        v48 = v5[3183];
        v5 += 3174;
        v45 = -1;
        v11 = 63;
LABEL_24:
        v16 = v9;
        v17 = v9 + 0x2000;
        v46 = *v5;
        if (*(v9 + 8592))
        {
          v18 = 0;
          do
          {
            LODWORD(v54[0]) = 0;
            v19 = LongPrnIdx_To_ShortPrnIdx((*(v16 + 6194 + 2 * v18) - 1), v54);
            if (LODWORD(v54[0]) == v4)
            {
              ++*(v3 + 88);
              if ((v10[v19] & 1) != 0 || *(v48 + v19) == 1)
              {
                ++*(v3 + 89);
              }
            }

            ++v18;
          }

          while (v18 < *(v17 + 400));
        }

        if (*(v17 + 403))
        {
          v20 = 0;
          do
          {
            LODWORD(v54[0]) = 0;
            LongPrnIdx_To_ShortPrnIdx((*(v16 + 7066 + 2 * v20) - 1), v54);
            if (LODWORD(v54[0]) == v4)
            {
              ++*(v3 + 90);
            }

            ++v20;
          }

          while (v20 < *(v17 + 403));
        }

        bzero(v54, 0x400uLL);
        bzero(v53, 0x400uLL);
        bzero(v52, 0x400uLL);
        bzero(v51, 0x400uLL);
        bzero(v50, 0x400uLL);
        bzero(v49, 0x400uLL);
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = -1024;
        v28 = 36888;
        v29 = 22240;
        v30 = 7080;
        result = 29024;
        v31 = 21984;
        v32 = 7336;
        do
        {
          if (*(v8 + 96) == v4 && *(v8 + 1248) >= 10)
          {
            v33 = v45 + *(v8 + 98);
            if (v33 < v11)
            {
              if ((*v3 & 1) == 0)
              {
                *v3 = 1;
              }

              if ((v10[v33] & 1) != 0 || *(v48 + v33) == 1)
              {
                ++*(v3 + 1);
              }

              else if (*(v47 + v33) == 1)
              {
                ++*(v3 + 2);
              }

              if (*(v46 + v33) == 1)
              {
                ++*(v3 + 3);
              }

              else
              {
                ++*(v3 + 4);
              }

              if (*(v6 + v30) == 1)
              {
                v54[v26] = fabs(*(v6 + v27 + 14120));
                v51[v26++] = fabs(*(v6 + v27 + 20648));
              }

              v34 = *(v6 + v32);
              if ((v34 - 1) <= 0x1D && v23 <= 7)
              {
                *(v3 + 9 + v23++) = aCghkmnpqrstvya_0[v34 - 1];
              }

              if (*(v6 + v31) == 1)
              {
                v53[v25] = fabs(*(v6 + result));
                v50[v25++] = fabs(*(v6 + result + 5504));
              }

              v35 = *(v6 + v29);
              if ((v35 - 1) <= 0x1D && v22 <= 7)
              {
                *(v3 + 17 + v22++) = aCghkmnpqrstvya_0[v35 - 1];
              }

              if (*(v6 + v28) == 1)
              {
                v52[v24] = fabs(*(v6 + result + 14904));
                v49[v24++] = fabs(*(v6 + result + 20408));
              }

              v36 = *(v6 + v29 + 14904);
              if ((v36 - 1) <= 0x1D && v21 <= 7)
              {
                *(v3 + 25 + v21++) = aCghkmnpqrstvya_0[v36 - 1];
              }
            }
          }

          v8 += 4;
          ++v28;
          v29 += 4;
          ++v30;
          result += 8;
          ++v31;
          v32 += 4;
          v27 += 8;
        }

        while (v27);
        if (v26)
        {
          *(v3 + 6) = v26;
          VecMedian8(v54, v26);
          *(v3 + 40) = v37;
          result = VecMedian8(v51, v26);
          *(v3 + 64) = v38;
        }

        if (v25)
        {
          *(v3 + 7) = v25;
          VecMedian8(v53, v25);
          *(v3 + 48) = v39;
          result = VecMedian8(v50, v25);
          *(v3 + 72) = v40;
        }

        if (v24)
        {
          *(v3 + 8) = v24;
          VecMedian8(v52, v24);
          *(v3 + 56) = v41;
          result = VecMedian8(v49, v24);
          *(v3 + 80) = v42;
        }

        goto LABEL_73;
      }
    }

    else if (v7[16] == 1)
    {
      v10 = v5[1137];
      v47 = v5[1139];
      v48 = v5[1138];
      v5 += 1129;
      v45 = -193;
      v11 = 10;
      goto LABEL_24;
    }

    goto LABEL_73;
  }

  if (result == 6)
  {
    if (v7[20] == 1)
    {
      v12 = v5 + 5632;
      v10 = v12[323];
      v47 = v12[325];
      v48 = v12[324];
      v5 = v12 + 316;
      v45 = -1;
      v11 = 14;
      goto LABEL_24;
    }

    goto LABEL_73;
  }

  if (v7[17] != 1)
  {
    goto LABEL_73;
  }

  v14 = 0;
  while (1)
  {
    v15 = *(v9 + 8783 + v14);
    if (v15 >= 3)
    {
      break;
    }

    v57[v14] = 0;
    *(v56 + v14) = 0x10100u >> (8 * (v15 & 0x1F));
    *(v55 + v14++) = 0;
    if (v14 == 39)
    {
      v5 += 2192;
      v10 = v57;
      v48 = v56;
      v47 = v55;
      v45 = -120;
      v11 = 39;
      goto LABEL_24;
    }
  }

  v44 = *MEMORY[0x29EDCA608];

  return EvCrt_Illegal_switch_default("API_Get_Dbg_Constell_PE_Data", 0xAA0u);
}

unint64_t API_Get_Dbg_Constell_Orb_Data(unint64_t result, uint64_t a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = *(p_api + 56);
  v3 = *(p_api + 72);
  v4 = *(p_api + 40);
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  memset(v28, 0, sizeof(v28));
  memset(v27, 0, 39);
  memset(v26, 0, 39);
  if (result <= 3)
  {
    if (result == 1)
    {
      if (v3[14] != 1)
      {
        goto LABEL_44;
      }

      v5 = v2[8];
      v6 = v2[9];
      v8 = 32;
      v9 = 768;
      v10 = 488;
      v7 = v2[10];
    }

    else if (result == 2)
    {
      if (v3[15] != 1)
      {
        goto LABEL_44;
      }

      v5 = v2[2146];
      v6 = v2[2147];
      v7 = v2[2148];
      v2 += 1489;
      v8 = 24;
      v9 = 776;
      v10 = 496;
    }

    else
    {
      if (v3[19] != 1)
      {
        goto LABEL_44;
      }

      v5 = v2[2202];
      v6 = v2[2203];
      v7 = v2[2204];
      v2 += 2194;
      v8 = 36;
      v9 = 808;
      v10 = 528;
    }

    goto LABEL_24;
  }

  if (result <= 5)
  {
    if (result == 4)
    {
      if (v3[18] == 1)
      {
        v5 = v2[3182];
        v6 = v2[3183];
        v7 = v2[3184];
        v2 += 3174;
        v8 = 63;
        v9 = 800;
        v10 = 520;
        goto LABEL_24;
      }

LABEL_44:
      v24 = *MEMORY[0x29EDCA608];
      return result;
    }

    if (v3[16] != 1)
    {
      goto LABEL_44;
    }

    v5 = v2[1137];
    v6 = v2[1138];
    v7 = v2[1139];
    v2 += 1129;
    v8 = 10;
    v9 = 784;
    v10 = 504;
LABEL_24:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    result = 0;
    v19 = 0;
    v20 = 0;
    v21 = *v2;
    v22 = *&v3[v10];
    v23 = *&v3[v9];
    do
    {
      if (v5[v20] == 1)
      {
        v19 |= 1 << v20;
        *(a2 + 8) = v19;
      }

      if (*(v7 + v20) == 1)
      {
        result |= 1 << v20;
        *(a2 + 24) = result;
      }

      if (*(v21 + v20) == 1)
      {
        v18 |= 1 << v20;
        *(a2 + 32) = v18;
      }

      if (*(v6 + v20) == 1)
      {
        v17 |= 1 << v20;
        *(a2 + 16) = v17;
      }

      if (*(v22 + v20) == 1)
      {
        v16 |= 1 << v20;
        *(a2 + 40) = v16;
      }

      if (*(v23 + v20) == 1)
      {
        v15 |= 1 << v20;
        *(a2 + 48) = v15;
      }

      ++v20;
    }

    while (v8 != v20);
    if (v19 || result || v17 || v15 || v16)
    {
      *a2 = 1;
    }

    goto LABEL_44;
  }

  if (result == 6)
  {
    if (v3[20] != 1)
    {
      goto LABEL_44;
    }

    v11 = v2 + 5632;
    v5 = v11[323];
    v6 = v11[324];
    v7 = v11[325];
    v2 = v11 + 316;
    v8 = 14;
    v9 = 816;
    v10 = 536;
    goto LABEL_24;
  }

  if (v3[17] != 1)
  {
    goto LABEL_44;
  }

  v12 = 0;
  v13 = v4 + 8783;
  while (1)
  {
    v14 = *(v13 + v12);
    if (v14 >= 3)
    {
      break;
    }

    v28[v12] = 0;
    *(v27 + v12) = 0x10100u >> (8 * (v14 & 0x1F));
    *(v26 + v12++) = 0;
    if (v12 == 39)
    {
      v2 += 2192;
      v7 = v26;
      v6 = v27;
      v5 = v28;
      v8 = 39;
      v9 = 792;
      v10 = 512;
      goto LABEL_24;
    }
  }

  v25 = *MEMORY[0x29EDCA608];

  return EvCrt_Illegal_switch_default("API_Get_Dbg_Constell_Orb_Data", 0xBC6u);
}

uint64_t API_Get_UTC_Cor(char a1, double *a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v3 = *(p_api + 48);
  v4 = *(p_api + 56);
  v5 = *(v4 + 8972);
  if ((v5 - 1) > 5)
  {
    goto LABEL_4;
  }

  if (v5 == 1)
  {
    v6 = *(v4 + 8986);
    if (v6 >= 18)
    {
LABEL_4:
      if (*(v3 + 80) == 1 && (v7 = *(v3 + 82), v7 >= 1))
      {
        UTC_Leap_Second_For_GLON_Day_4yrBlk = Get_UTC_Leap_Second_For_GLON_Day_4yrBlk(v7, *(v3 + 84), *(v3 + 88));
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
        if (*(v3 + 16) == 1 && (v10 = *(v3 + 32), v10 >= 1025))
        {
          v11 = v10;
          v12 = &byte_299053DC2;
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

      v28 = *(v4 + 8986);
      if (v28 != v6)
      {
        EvLog_v("API_Get_UTC_Cor:  Default %d sec GPS-UTC Correction updated from %d sec", v6, v28);
        *(v4 + 8986) = v6;
        *(v4 + 8989) = v6;
        v4 = *(p_api + 56);
      }

      *(v4 + 8972) = 1;
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
  if (*(v3 + 16) != 1 || v14 >= 3)
  {
    LOBYTE(v6) = *(v4 + 8986);
    goto LABEL_24;
  }

  v16 = (*(v3 + 40) - *(v3 + 48) + 0.0005);
  v17 = *(v3 + 32);
  v18 = *(v4 + 8987);
  v19 = v17 - 127;
  v20 = v18 | 0x400;
  if (v17 - 127 > (v18 | 0x400))
  {
    v20 = v17 - 127;
  }

  v21 = (v20 - v18 - 769) & 0x1FFFF00 | v18;
  v22 = v16 + 604800 * v17;
  if (*(v4 + 8989) >= *(v4 + 8986))
  {
    v23 = *(v4 + 8986);
  }

  else
  {
    v23 = *(v4 + 8989);
  }

  if (86400 * *(v4 + 8988) - v22 + v23 + 604800 * v21 + 619315200 <= 0)
  {
    v24 = *(v4 + 8989);
  }

  else
  {
    v24 = *(v4 + 8986);
  }

  v25 = v24;
  *a2 = v25;
  if ((a1 & 1) == 0)
  {
    v26 = *(v4 + 8985);
    if (v19 <= (v26 | 0x400))
    {
      v19 = v26 | 0x400;
    }

    v27 = v25 + *(v4 + 8980) * 9.31322575e-10 + *(v4 + 8976) * 8.8817842e-16 * (v22 - (*(v4 + 8984) << 12) - 604800 * ((v19 - v26 - 769) & 0x1FFFF00 | v26) - 619315200);
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
  if (*(v4 + 16) == 1 && *v4 >= 1 && (*(*(v3 + 56) + 8972) - 4) <= 2)
  {
    v6 = (v5 + 0x2000);
    v7 = v6[797];
    v8 = v6[794];
    if (v7 != v8)
    {
      v11 = result;
      v12 = *(v4 + 40);
      v13 = *(v4 + 48);
      v14 = *(v4 + 32);
      v15 = v6[795];
      v16 = v6[796];
      result = Is_Future_Leap_Sec_Date_Not_Valid(v14, 1, v15, v6[796]);
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

uint64_t API_Get_Nav_Data(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v395 = *MEMORY[0x29EDCA608];
  v5 = &unk_2A13EC000;
  v6 = p_api;
  v7 = *(p_api + 80);
  v361 = *(p_api + 72);
  v358 = *(p_api + 96);
  v8 = *(p_api + 256);
  v9 = *(p_api + 176);
  v10 = *(p_api + 136);
  v11 = *(p_api + 56);
  v261 = *(p_api + 48);
  v12 = *(p_api + 120);
  bzero(v1, 0x18E0uLL);
  bzero(v3, 0x878uLL);
  if (*(*(v6 + 80) + 360) > 600.0)
  {
LABEL_592:
    result = 0;
    goto LABEL_593;
  }

  v13 = 0;
  v14 = (v7 + 824);
  v320 = v11 + 25364;
  v323 = v11 + 17132;
  v264 = (v11 + 8986);
  v313 = v12;
  v308 = (v12 + 547);
  v306 = v10 + 183;
  v333 = v10;
  v304 = (v10 + 27136);
  v302 = v8 + 3;
  v300 = v8 + 456;
  v298 = v8 + 448;
  v296 = v8 + 432;
  v317 = v8;
  v294 = v8 + 488;
  v325 = v11;
  v15 = v11 + 17328;
  v353 = v358 + 99;
  v16 = (v358 + 96);
  v351 = v358 + 1760;
  v349 = v358 + 1888;
  v347 = v358 + 2016;
  v291 = vdupq_n_s64(0x3E2CA726EB25F9DBuLL);
  v345 = v358 + 2144;
  v343 = v358 + 864;
  v337 = v9 + 204;
  v268 = v9 + 205;
  v266 = v9 + 206;
  v263 = (v11 + 50584);
  v359 = v361 + 824;
  v357 = v7 + 1000;
  v355 = v7 + 1640;
  v341 = v7 + 2536;
  v17 = *(v7 + 32);
  v259 = (v11 + 50592);
  v339 = v11 + 47500;
  v257 = (v11 + 50600);
  v270 = (v7 + 824);
  v315 = v9;
  v319 = v4;
  v322 = v7;
  v340 = v16;
  v311 = v9 + 7493;
  while (2)
  {
    v18 = *(v7 + 36);
    *(v4 + 1) = v18;
    v3[1] = v18;
    v19 = *(v7 + 40);
    *(v4 + 1) = v19;
    *(v3 + 1) = v19;
    v20 = *(v7 + 56);
    v4[16] = v20 > 0;
    if (v20 < 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v7 + 60);
    }

    v4[17] = v21 & 1;
    *(v4 + 16) = *(v7 + 62);
    v22 = *(v7 + 48);
    *(v4 + 5) = v22;
    *(v4 + 6) = v22;
    *(v4 + 7) = *(v7 + 152);
    *(v4 + 8) = *(v7 + 184);
    *(v4 + 13) = *(v7 + 224) * 57.2957795;
    *(v4 + 14) = *(v7 + 232) * 57.2957795;
    v23 = *(v7 + 240);
    *(v4 + 15) = v23;
    *(v4 + 16) = v23 - *(v7 + 248);
    *(v4 + 10) = *(v7 + 80);
    *(v4 + 11) = *(v7 + 88);
    *(v4 + 12) = *(v7 + 96);
    *(v4 + 136) = v14[10];
    *(v4 + 19) = -*(v7 + 968);
    v24 = *(v7 + 872);
    if (v24 >= 9499050.0)
    {
      v25 = g_TOW_stat_Sigma_Table[v20];
    }

    else
    {
      v25 = v24 * 0.00000000333564095;
    }

    v331 = v13;
    v336 = v17;
    *(v4 + 20) = v25;
    v26.f64[0] = *(v7 + 864);
    v26.f64[1] = *(v7 + 920);
    *(v4 + 168) = vmulq_f64(v26, v291);
    *(v4 + 184) = *v14;
    *(v4 + 25) = *(v7 + 848);
    *(v4 + 13) = *(v7 + 928);
    *(v4 + 28) = *(v7 + 944);
    *(v4 + 232) = v14[4];
    v26.f64[0] = *(v7 + 912);
    *(v4 + 31) = *&v26.f64[0];
    *(v4 + 32) = *(v7 + 3824);
    if (v26.f64[0] > 360.0)
    {
      *(v4 + 31) = 0x408F380000000000;
    }

    *(v4 + 33) = *(v7 + 808);
    *(v4 + 17) = *(v7 + 784);
    *(v4 + 36) = *(v7 + 800);
    v27 = v5[103];
    v28 = v27[10];
    v29 = v27[12];
    v30 = v27[6];
    v31 = v27[7];
    v32 = v27[22];
    if (*(v30 + 16) == 1)
    {
      v33 = v27[9];
      v34 = *(v30 + 32);
      v35 = v34 < *(v33 + 1736);
      if (*v30 >= 9 && *(v33 + 1752) > *(v30 + 40) + 604800 * v34)
      {
        v35 |= 2u;
      }
    }

    else
    {
      v35 = 0;
    }

    v36 = *(v32 + 40);
    if (v36 > 100.0 && *(v32 + 20) > 8)
    {
      v35 |= 4u;
    }

    v330 = v30;
    if (v36 < -100.0 && *(v32 + 20) > 8)
    {
      v35 |= 8u;
    }

    v328 = v35;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = (v29 + 2656);
    v41 = v40;
    do
    {
      if (*&v40[2 * v37 - 704] >= 10 && *(v41 - 128) >= 0xC8u)
      {
        v42 = *(v40 + v37 - 896);
        v43 = *(v40 + v37 - 640);
        v44 = v42 <= 0x2C ? v38 : v38 + 1;
        v45 = v43 - v42;
        v46 = v43 <= 0x2C && v45 <= 5;
        v47 = v46 ? v39 : v39 + 1;
        if (*v41 >= 0xC8u)
        {
          v39 = v47;
          v38 = v44;
        }
      }

      ++v37;
      ++v41;
    }

    while (v37 != 128);
    v48 = 0;
    v49 = 0;
    v50.i64[0] = 0x101010101010101;
    v50.i64[1] = 0x101010101010101;
    v51 = veorq_s8(*(v31 + 8994), v50);
    v52 = veorq_s8(*(v31 + 9010), v50);
    v53 = vaddl_high_u8(v51, v52);
    v54 = vaddl_u8(*v51.i8, *v52.i8);
    v326 = vaddvq_s32(vaddq_s32(vaddl_u16(*v54.i8, *v53.i8), vaddl_high_u16(v54, v53)));
    do
    {
      v49 += *(v31 + 61952 + v48++);
    }

    while (v48 != 218);
    v55 = 0;
    v56 = 0;
    v57 = v28 + 1000;
    do
    {
      v58 = *(v57 + v55);
      if (!Is_Legal(v58))
      {
        goto LABEL_62;
      }

      if (v58 > 3u)
      {
        switch(v58)
        {
          case 4u:
            v62 = BYTE2(v58) - 1;
            if (*(*(v31 + 25456) + v62) != 1)
            {
              break;
            }

            v60 = Is_BDS_IntEph_Real(v31 + 25512 + 152 * v62);
            goto LABEL_61;
          case 5u:
            v63 = BYTE2(v58) - 193;
            if (*(*(v31 + 9096) + v63) != 1)
            {
              break;
            }

            v64 = v31 + 9152;
LABEL_60:
            v60 = Is_GPS_BinEph_Real(v64 + 116 * v63);
LABEL_61:
            v56 += !v60;
            break;
          case 6u:
            v61 = BYTE2(v58) - 1;
            if (*(*(v31 + 47640) + v61) == 1)
            {
              v60 = Is_NVIC_IntEph_Real(v31 + 47696 + 76 * v61);
              goto LABEL_61;
            }

            break;
        }
      }

      else
      {
        if (!v58)
        {
          EvCrt_Illegal_switch_case("API_Get_Spoofing_Flags", 0x94Bu);
          goto LABEL_62;
        }

        if (v58 == 1)
        {
          v63 = BYTE2(v58) - 1;
          if (*(*(v31 + 64) + v63) != 1)
          {
            goto LABEL_62;
          }

          v64 = v31 + 120;
          goto LABEL_60;
        }

        if (v58 == 3)
        {
          v59 = BYTE2(v58) - 1;
          if (*(*(v31 + 17616) + v59) == 1)
          {
            v60 = Is_GAL_IntEph_Real(v31 + 17708 + 88 * v59);
            goto LABEL_61;
          }
        }
      }

LABEL_62:
      v55 += 4;
    }

    while (v55 != 512);
    v65 = v328 | 0x10;
    if (v38 <= 2)
    {
      v65 = v328;
    }

    if (v39 > 2)
    {
      v65 |= 0x20u;
    }

    if (v326 > 2)
    {
      v65 |= 0x100u;
    }

    if (v49 > 2)
    {
      v65 |= 0x200u;
    }

    if (v56 > 2)
    {
      v65 |= 0x400u;
    }

    if (*(v31 + 8992))
    {
      v65 |= 0x1000u;
    }

    if (*(v31 + 8993))
    {
      v65 |= 0x2000u;
    }

    if (*(v330 + 104))
    {
      v65 |= 0x10000u;
    }

    if (*(v330 + 105))
    {
      v65 |= 0x20000u;
    }

    v4 = v319;
    *(v319 + 74) = v65;
    *(v319 + 75) = *(v361 + 1788);
    *(v319 + 76) = *(v361 + 48);
    v66 = *(p_api + 80);
    v67 = *(v66 + 4);
    if (v67)
    {
      v7 = v322;
      v68 = v340;
      if (v67 == 4)
      {
        v69 = *(v66 + 17) == 0;
        v70 = 2;
        goto LABEL_86;
      }

      if (v67 == 5)
      {
        v69 = *(v66 + 17) == 0;
        v70 = 4;
LABEL_86:
        if (!v69)
        {
          ++v70;
        }
      }

      else
      {
        v70 = 1;
      }
    }

    else
    {
      v70 = 0;
      v7 = v322;
      v68 = v340;
    }

    *(v319 + 77) = v70;
    v368[0] = 0;
    Num_SV_and_Clock_Unknowns = API_Get_Num_SV_and_Clock_Unknowns(v368);
    v72 = Num_SV_and_Clock_Unknowns - v368[0];
    if (*(v66 + 56) >= 6)
    {
      if (v72 >= 3)
      {
        if (*(v66 + 800) < 10.0)
        {
          v76 = 4;
          goto LABEL_112;
        }
      }

      else if (v72 != 2)
      {
        if (v72 < 1)
        {
          goto LABEL_111;
        }

LABEL_107:
        if (!v67)
        {
          goto LABEL_111;
        }

        v75 = *(v66 + 808);
        v74 = 10.0;
LABEL_109:
        if (v75 >= v74)
        {
          goto LABEL_111;
        }

        v76 = 2;
        goto LABEL_112;
      }

      if (*(v66 + 784) >= 10.0)
      {
        goto LABEL_107;
      }

      v76 = 3;
      goto LABEL_112;
    }

    if (v67)
    {
      v73 = v72 < 3;
    }

    else
    {
      v73 = 1;
    }

    if (!v73)
    {
      v74 = 10.0;
      if (*(v66 + 808) < 10.0 && *(v66 + 784) < 10.0)
      {
        v75 = *(v66 + 800);
        goto LABEL_109;
      }
    }

LABEL_111:
    v76 = Num_SV_and_Clock_Unknowns > 0;
LABEL_112:
    *(v319 + 78) = v76;
    *(v319 + 79) = API_Get_Fix_Reliability();
    v77 = p_api;
    v78 = *(p_api + 80);
    if (*(v78 + 18) == 1)
    {
      v79 = *(v78 + 12);
      if (v79)
      {
        if (*(v78 + 840) > 30000.0)
        {
          goto LABEL_115;
        }

        if (*(v78 + 500) == 1 && (*(v78 + 516) & 1) != 0)
        {
          v79 = 3;
        }

        else if (*(v78 + 16))
        {
          v79 = 2;
        }

        else
        {
          v79 = 1;
        }
      }
    }

    else
    {
LABEL_115:
      v79 = 0;
    }

    *(v319 + 80) = v79;
    v80 = *(v77 + 48);
    v81 = 2 * (*(v78 + 4) != 0);
    if (*v80 <= 8)
    {
      v82 = v80[25];
      if (v82)
      {
        if (((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v82) < 300000)
        {
          v81 |= 4u;
        }
      }
    }

    if (*(v78 + 432) == 1)
    {
      v83 = v81 | 8;
    }

    else
    {
      v83 = v81;
    }

    if (*(v78 + 420) == 1)
    {
      v83 |= 0x10u;
    }

    if (*(v78 + 416) == 1)
    {
      v83 |= 0x20u;
    }

    if (*(v78 + 440) == 1)
    {
      v84 = v83 | 0x40;
      v83 |= 0x80u;
      if (*(v78 + 444) != 1)
      {
        v83 = v84;
      }
    }

    if (*(v78 + 548))
    {
      v83 |= 0x100u;
    }

    if (*(v78 + 564))
    {
      v83 |= 0x200u;
    }

    if (*(v78 + 580))
    {
      v83 |= 0x400u;
    }

    if (*(v78 + 596))
    {
      v83 |= 0x800u;
    }

    if (*(v78 + 692))
    {
      v83 |= 0x1000u;
    }

    if (*(v78 + 628))
    {
      v83 |= 0x2000u;
    }

    if (*(v78 + 612))
    {
      v83 |= 0x4000u;
    }

    if (*(v78 + 756))
    {
      v83 |= 0x8000u;
    }

    if (*(v78 + 708))
    {
      v83 |= 0x10000u;
    }

    if (*(v78 + 724))
    {
      v83 |= 0x20000u;
    }

    if (*(v78 + 740))
    {
      v83 |= 0x40000u;
    }

    if (*(v78 + 532))
    {
      v83 |= 0x1000000u;
    }

    if (*(v78 + 516))
    {
      v83 |= 0x2000000u;
    }

    if (*(v78 + 500))
    {
      v83 |= 0x4000000u;
    }

    if (*(v78 + 676))
    {
      v83 |= 0x80000u;
    }

    v85 = *(p_api + 72);
    v86 = *(p_api + 32);
    v87 = 218;
    while ((*(v85 + 265) & 1) == 0 && *(v85 + 544) != 1 || *v86 <= 0)
    {
      ++v86;
      ++v85;
      if (!--v87)
      {
        goto LABEL_167;
      }
    }

    v83 |= 0x10000000u;
LABEL_167:
    v88 = 0;
    while (*(*(p_api + 56) + 61516 + v88) != 1)
    {
      if (++v88 == 218)
      {
        goto LABEL_172;
      }
    }

    v83 |= 0x20000000u;
LABEL_172:
    if (v83 <= 1)
    {
      v83 = 1;
    }

    *(v319 + 82) = v83;
    if (*(v7 + 19) < 2u)
    {
      if (!*(v7 + 19))
      {
        goto LABEL_183;
      }

      v89 = *(v7 + 20);
LABEL_179:
      if (v89 > 1)
      {
        v90 = 3;
        goto LABEL_184;
      }

      if (v89)
      {
        v90 = 2;
        goto LABEL_184;
      }

LABEL_183:
      v90 = 1;
      goto LABEL_184;
    }

    v89 = *(v7 + 20);
    if (v89 <= 2)
    {
      goto LABEL_179;
    }

    v90 = 4;
LABEL_184:
    *(v319 + 81) = v90;
    v319[332] = 2;
    if (sqrt(*(v319 + 27) * *(v319 + 27) + *(v319 + 26) * *(v319 + 26)) < 400.0)
    {
      v91 = *(v319 + 78);
      if (v91 | v83 & 2)
      {
        v92 = *(v319 + 79);
        if (v92)
        {
          if ((v91 - 5) >= 0xFFFFFFFE && (v92 - 5) >= 0xFFFFFFFD)
          {
            v319[333] = 1;
            goto LABEL_190;
          }

          if ((v91 - 2) < 3 || (v83 & 2) != 0)
          {
LABEL_190:
            v319[334] = 1;
          }
        }
      }
    }

    v93 = *(v361 + 1780);
    if (v93)
    {
LABEL_200:
      *(v319 + 84) = v93 - *(v361 + 1772);
      v94 = *(v361 + 1784);
      if (v94)
      {
        *(v319 + 85) = v93 - v94;
      }
    }

    else if (v319[333])
    {
      *(v361 + 1780) = v336;
      v93 = v336;
      if (v336)
      {
        goto LABEL_200;
      }
    }

    else
    {
      v319[334] = 0;
      *(v319 + 77) = 0;
    }

    *(v3 + 81) = v313[69].i16[0];
    *(v3 + 21) = vuzp1_s16(v313[67], vrev32_s16(v313[67]));
    v3[23] = *v308;
    *(v3 + 96) = v313[68].i8[7];
    *(v3 + 97) = *(v361 + 242);
    *(v3 + 99) = v313[68].i8[1];
    *(v3 + 100) = v313[54].i8[0];
    *(v3 + 51) = v313[54].i32[1];
    *(v3 + 104) = v313[57].i8[0];
    *(v3 + 106) = 0;
    *(v3 + 113) = 0;
    *(v3 + 15) = *(v361 + 88);
    *(v3 + 16) = *(v361 + 168);
    *(v3 + 17) = *(v361 + 224);
    *(v3 + 18) = *(v361 + 200);
    *(v3 + 19) = 0;
    API_Get_Dbg_Constell_ME_Data(1, (v3 + 40));
    API_Get_Dbg_Constell_ME_Data(5, (v3 + 50));
    API_Get_Dbg_Constell_ME_Data(2, (v3 + 60));
    API_Get_Dbg_Constell_ME_Data(3, (v3 + 70));
    API_Get_Dbg_Constell_ME_Data(4, (v3 + 80));
    API_Get_Dbg_Constell_ME_Data(6, (v3 + 90));
    API_Get_Dbg_Constell_ME_Data(7, (v3 + 100));
    v95 = v361;
    v96 = *(v361 + 1740);
    if (v96 < 1)
    {
      v100 = 0;
      v98 = v306;
    }

    else
    {
      v97 = *(p_api + 48);
      v98 = v306;
      if (*(v97 + 16) == 1 && *v97 >= 3)
      {
        v99 = *(v97 + 40) + 604800 * *(v97 + 32);
      }

      else
      {
        v99 = 0;
      }

      v95 = v361;
      v100 = (v99 - v96) / 3600;
    }

    v3[110] = v100;
    v101 = *(v95 + 1744);
    if (v101 < 1)
    {
      *(v3 + 222) = 0;
      v102 = p_api;
    }

    else
    {
      v102 = p_api;
      v103 = *(p_api + 48);
      if (*(v103 + 16) == 1 && *v103 >= 3)
      {
        v104 = *(v103 + 40) + 604800 * *(v103 + 32);
      }

      else
      {
        LOBYTE(v104) = 0;
      }

      *(v3 + 222) = ((v104 - v101) / 16);
    }

    v105 = 0;
    v106 = *(v102 + 64) + 448;
    v107 = 0uLL;
    do
    {
      v107 = vsubq_s8(v107, vtstq_s8(*(v106 + v105), *(v106 + v105)));
      v105 += 16;
    }

    while (v105 != 128);
    *(v3 + 446) = vaddvq_s8(v107);
    if (*(v333 + 136) == 1)
    {
      v108 = *(v333 + 140);
    }

    else
    {
      v108 = 0;
    }

    v109 = 0;
    v3[112] = v108;
    do
    {
      *(v3 + v109 + 452) = *(v98 + v109);
      ++v109;
    }

    while (v109 != 6);
    *(v3 + 458) = *(v315 + 79672);
    v107.i32[0] = *v304;
    *(v3 + 58) = v107.u64[0] * 0.001;
    *(v3 + 59) = *(v7 + 3816);
    *(v3 + 60) = *(v7 + 3840);
    *(v3 + 61) = *(v7 + 3864);
    *(v3 + 496) = *(v7 + 18);
    *(v3 + 497) = *(v333 + 240);
    API_Get_Dbg_Constell_PE_Data(1);
    API_Get_Dbg_Constell_PE_Data(5);
    API_Get_Dbg_Constell_PE_Data(2);
    API_Get_Dbg_Constell_PE_Data(3);
    API_Get_Dbg_Constell_PE_Data(4);
    API_Get_Dbg_Constell_PE_Data(6);
    API_Get_Dbg_Constell_PE_Data(7);
    API_Get_Dbg_Constell_Orb_Data(1uLL, (v3 + 308));
    API_Get_Dbg_Constell_Orb_Data(5uLL, (v3 + 322));
    API_Get_Dbg_Constell_Orb_Data(2uLL, (v3 + 336));
    API_Get_Dbg_Constell_Orb_Data(3uLL, (v3 + 350));
    API_Get_Dbg_Constell_Orb_Data(4uLL, (v3 + 364));
    API_Get_Dbg_Constell_Orb_Data(6uLL, (v3 + 378));
    API_Get_Dbg_Constell_Orb_Data(7uLL, (v3 + 392));
    *(v3 + 16) = *(v7 + 556);
    *(v3 + 17) = *(v7 + 564);
    *(v3 + 18) = *(v7 + 560) != 0;
    v3[5] = *(v7 + 568);
    *(v3 + 24) = *(v311 + 3);
    *(v3 + 25) = *(v311 + 5);
    *(v3 + 26) = *(v7 + 540);
    *(v3 + 27) = *(v7 + 548);
    *(v3 + 28) = *(v7 + 544) != 0;
    v3[8] = *(v7 + 552);
    *(v3 + 36) = *v311;
    *(v3 + 37) = *(v311 + 2);
    *(v3 + 38) = *(v7 + 572);
    *(v3 + 39) = *(v7 + 580);
    *(v3 + 40) = *(v7 + 576) != 0;
    v3[11] = *(v7 + 584);
    *(v3 + 48) = *(v311 + 6);
    *(v3 + 49) = *(v311 + 8);
    *(v3 + 50) = *(v7 + 620);
    *(v3 + 51) = *(v7 + 628);
    *(v3 + 52) = *(v7 + 624) != 0;
    v3[14] = *(v7 + 632);
    memset(v368, 0, sizeof(v368));
    Core_Get_ExtA_Alt(6000, v368);
    *(v3 + 4) = *&v368[2];
    *(v3 + 80) = v368[6];
    *(v3 + 1176) = *(v7 + 604);
    *(v3 + 1177) = *(v7 + 612);
    *(v3 + 1178) = *(v7 + 608) != 0;
    v3[295] = *(v7 + 616);
    *(v3 + 1184) = *(v311 + 1088);
    *(v3 + 149) = -(*(v7 + 224) - v311[133] * 0.0174532925) * 6378137.0;
    *(v3 + 150) = *(v7 + 328) * (-(*(v7 + 232) - v311[134] * 0.0174532925) * 6378137.0);
    v110 = v311[137];
    v111 = v110 - *(v7 + 376);
    *(v3 + 151) = v111;
    v112 = -360.0;
    if (v111 >= 180.0 || (v112 = 360.0, v111 < -180.0))
    {
      *(v3 + 151) = v111 + v112;
      v110 = v311[137];
    }

    if (v110 <= 0.0)
    {
      v113 = -0.5;
    }

    else
    {
      v113 = 0.5;
    }

    v114 = v110 + v113;
    if (v114 <= 2147483650.0)
    {
      if (v114 >= -2147483650.0)
      {
        v115 = v114;
      }

      else
      {
        LOWORD(v115) = 0;
      }
    }

    else
    {
      LOWORD(v115) = -1;
    }

    *(v3 + 608) = v115;
    v116 = v311[138];
    if (v116 <= 0.0)
    {
      v117 = -0.5;
    }

    else
    {
      v117 = 0.5;
    }

    v118 = v116 + v117;
    if (v118 <= 2147483650.0)
    {
      if (v118 >= -2147483650.0)
      {
        v119 = v118;
      }

      else
      {
        LOWORD(v119) = 0;
      }
    }

    else
    {
      LOWORD(v119) = -1;
    }

    *(v3 + 609) = v119;
    v120 = v311[139];
    if (v120 <= 0.0)
    {
      v121 = -0.5;
    }

    else
    {
      v121 = 0.5;
    }

    v122 = v120 + v121;
    if (v122 <= 2147483650.0)
    {
      if (v122 >= -2147483650.0)
      {
        v123 = v122;
      }

      else
      {
        LOBYTE(v123) = 0;
      }
    }

    else
    {
      LOBYTE(v123) = -1;
    }

    *(v3 + 1220) = v123;
    *(v3 + 1221) = *(v311 + 280);
    *(v3 + 1225) = *(v311 + 1124);
    v367 = 0;
    memset(v368, 0, 24);
    memset(v380, 0, 24);
    *v363 = 0;
    v366 = 0;
    v365 = 0;
    Pos_LLH = Core_Get_Pos_LLH(*v315, 150000, 0, &v367, v368, v380, v363, v3 + 1634, &v366, &v365 + 1, &v365);
    *(v3 + 1624) = Pos_LLH;
    if (Pos_LLH)
    {
      v3[407] = *(v7 + 436);
      *(v3 + 1632) = BYTE4(v365);
      *(v3 + 1633) = v365;
      v125 = *(v7 + 440);
      v126 = v125 == 1 ? *(v7 + 644) : 0;
      *(v3 + 1625) = v126 & 1;
      *(v3 + 1626) = v125 == 1;
      *(v3 + 1627) = *(v7 + 640) != 0;
      v127 = *&v368[2];
      *(v3 + 205) = (*v368 - *(v7 + 224)) * 6378137.0;
      *(v3 + 206) = *(v7 + 328) * ((v127 - *(v7 + 232)) * 6378137.0);
      *(v3 + 208) = vmovn_s64(vcvtq_u64_f64(vsqrtq_f64(v380[0])));
      *(v3 + 1672) = (v380[1].f64[0] * 57.2957795);
      if (*(v3 + 1634) == 1)
      {
        *(v3 + 207) = *&v368[4];
        *(v3 + 837) = sqrt(*v363);
      }
    }

    *(v3 + 1676) = *(v7 + 684);
    *(v3 + 1677) = *(v7 + 692);
    *(v3 + 1678) = *(v7 + 688) != 0;
    *(v3 + 1679) = 0;
    if (*(p_NA + 381) == 1)
    {
      v128 = *(p_NA + 26780);
      *(v3 + 1676) = 1;
      *(v3 + 1679) = v128;
    }

    *(v3 + 1680) = *(v7 + 748);
    *(v3 + 1681) = *(v7 + 756);
    *(v3 + 1682) = *(v7 + 752) != 0;
    v3[421] = *(v7 + 760);
    *(v3 + 212) = v311[183];
    memset(v368, 0, 24);
    if (Core_Get_ExtA_AT_Vel(120000, v368))
    {
      *(v3 + 1704) = *(v7 + 700);
      *(v3 + 1705) = *(v7 + 708);
      *(v3 + 1706) = *(v7 + 704) != 0;
      *(v3 + 107) = *&v368[2];
    }

    memset(v380, 0, 24);
    if (Core_Get_ExtA_Heading(120000, v380))
    {
      *(v3 + 1728) = *(v7 + 732);
      *(v3 + 1729) = *(v7 + 740);
      *(v3 + 1730) = *(v7 + 736) != 0;
      *(v3 + 434) = *(v380 + 8);
    }

    v364 = 0uLL;
    *v363 = 0;
    if (Core_Get_ExtA_V_Vel(120000, v363))
    {
      *(v3 + 1752) = *(v7 + 716);
      *(v3 + 1753) = *(v7 + 724);
      *(v3 + 1754) = *(v7 + 720) != 0;
      *(v3 + 110) = v364;
    }

    v129 = 0;
    v130 = *(v7 + 36);
    v3[444] = v130;
    v3[445] = *(v7 + 32);
    *(v3 + 223) = *(v7 + 40);
    *(v3 + 1792) = 0;
    v131 = 1;
    do
    {
      v132 = v131;
      if (*(v302 + v129) == 1 && *(v300 + 8 * v129) > 0.0)
      {
        *(v3 + 1792) = 1;
        *(v3 + 897) = *(v298 + 2 * v129);
        *(v3 + 225) = *(v296 + 8 * v129);
        *(v3 + 226) = *(v300 + 8 * v129);
        v3[454] = v130 - *(v294 + 4 * v129);
      }

      v131 = 0;
      v129 = 1;
    }

    while ((v132 & 1) != 0);
    *(v3 + 1820) = *(v317 + 6);
    v133 = *(v317 + 504) * 1000000000.0;
    if (v133 <= 0.0)
    {
      v134 = -0.5;
    }

    else
    {
      v134 = 0.5;
    }

    v135 = v133 + v134;
    v136 = v135;
    if (v135 < -2147483650.0)
    {
      v136 = 0x80000000;
    }

    if (v135 > 2147483650.0)
    {
      v136 = 0x7FFFFFFF;
    }

    v3[456] = v136;
    v3[457] = (sqrt(*(v317 + 512)) * 1000000000.0);
    *(v3 + 1832) = *(v315 + 24);
    *(v3 + 1833) = *(v7 + 56);
    *(v3 + 230) = *(v7 + 48);
    *(v3 + 924) = *(v7 + 62);
    *(v3 + 1850) = *(v7 + 204);
    *(v3 + 232) = *(v7 + 216);
    HIDWORD(v137) = *(v7 + 210);
    LODWORD(v137) = HIDWORD(v137);
    v3[466] = v137 >> 16;
    *(v3 + 1868) = 0;
    if ((*(v7 + 60) & 1) != 0 && (*(v325 + 8972) - 4) <= 2)
    {
      v138 = *(*(p_api + 56) + 8984);
      v139 = *(*(p_api + 56) + 8985);
      v140 = *(*(p_api + 56) + 8987);
      v141 = *(*(p_api + 56) + 8988);
      *(v3 + 1868) = 1;
      v142 = v139 | 0x400;
      v143 = *(v261 + 32) - 127;
      do
      {
        v144 = v142;
        v142 += 256;
      }

      while (v143 > v144);
      *(v3 + 936) = v144;
      *(v3 + 1870) = (795365 * (v138 << 12)) >> 36;
      *(v3 + 1869) = *v264;
      v145 = v140 | 0x400;
      do
      {
        v146 = v145;
        v145 += 256;
      }

      while (v143 > v146);
      *(v3 + 938) = v146;
      *(v3 + 1875) = v141;
      *(v3 + 1874) = v264[3];
    }

    v3[470] = 0;
    if (*(v323 + 60) == 1)
    {
      v3[470] = (vcvtd_n_f64_s32(*v323, 0x1EuLL) * 1.0e12);
    }

    v3[471] = 0;
    *v368 = 0;
    if (!R8_EQ(v337, v368))
    {
      v380[0].f64[0] = 0.0;
      if (!R8_EQ(v268, v380[0].f64))
      {
        v147 = *v268 - *v337;
        v148 = 0.000999999999;
        if (v147 <= 0.000999999999)
        {
          v148 = *v268 - *v337;
          if (v147 < -0.000999999999)
          {
            v148 = -0.000999999999;
          }
        }

        v3[471] = (v148 * 1.0e12);
      }
    }

    v3[472] = 0;
    if ((*v339 - 2) <= 4)
    {
      v3[472] = (*(v339 + 12) * -1000000000.0 * 1000.0);
    }

    v3[473] = 0;
    *v368 = 0;
    if (R8_EQ(v337, v368))
    {
      v149 = v361;
    }

    else
    {
      v380[0].f64[0] = 0.0;
      v150 = R8_EQ(v266, v380[0].f64);
      v149 = v361;
      if (!v150)
      {
        v151 = *v266 - *v337;
        v152 = 0.000999999999;
        if (v151 <= 0.000999999999)
        {
          v152 = *v266 - *v337;
          if (v151 < -0.000999999999)
          {
            v152 = -0.000999999999;
          }
        }

        v3[473] = (v152 * 1.0e12);
      }
    }

    v3[474] = 0;
    if ((*v320 - 2) <= 4)
    {
      v153 = *(v325 + 25368);
      if (v319[17] == 1 && v319[16] == 1)
      {
        if (*(v320 + 24) - *(v319 + 16) >= 0)
        {
          v154 = -((*(v320 + 24) - *(v319 + 16)) & 0x3F);
        }

        else
        {
          v154 = (*(v319 + 16) - *(v320 + 24)) & 0x3F;
        }

        if (v154 > 31)
        {
          v154 -= 64;
        }

        v149 = v361;
        v153 = v153 + *(v325 + 25376) * (*(v319 + 5) - *(v320 + 20) + 604800 * v154);
      }

      v3[474] = (v153 * -1.0e12);
    }

    v3[475] = 0;
    if ((*(v339 + 3080) - 2) <= 4)
    {
      v155 = *v263;
      if (v319[17] == 1 && v319[16] == 1)
      {
        if (*(v339 + 3112) - *(v319 + 16) >= 0)
        {
          v156 = -((*(v339 + 3112) - *(v319 + 16)) & 0x3FF);
        }

        else
        {
          v156 = (*(v319 + 16) - *(v339 + 3112)) & 0x3FF;
        }

        if (v156 > 511)
        {
          v156 -= 1024;
        }

        if (v156 < -512)
        {
          v156 += 1024;
        }

        v149 = v361;
        v157 = *(v319 + 5) - *(v339 + 3108) + (604800 * v156);
        v155 = v155 + *v259 * v157 + *v257 * (v157 * v157);
      }

      v3[475] = (v155 * -1.0e12);
    }

    *(v3 + 952) = *(v149 + 2044);
    *(v3 + 478) = *(v149 + 80);
    *(v3 + 482) = *(v149 + 96);
    *(v3 + 486) = *(v149 + 112);
    *(v3 + 490) = *(v149 + 128);
    *(v3 + 494) = *(v149 + 144);
    *(v3 + 498) = *(v149 + 160);
    *(v3 + 502) = *(v149 + 176);
    *(v3 + 506) = *(v149 + 224);
    *(v3 + 1020) = *(v149 + 240);
    *(v3 + 128) = *(v149 + 192);
    *(v3 + 129) = *(v149 + 208);
    v158 = *(p_api + 216);
    *(v3 + 1040) = *(v158 + 8);
    *(v3 + 2082) = *(v158 + 10);
    *(v3 + 2083) = *(v158 + 11);
    *(v3 + 2084) = *(v158 + 12);
    *(v3 + 2085) = *(v158 + 13);
    *(v3 + 1043) = *(v158 + 14);
    *(v3 + 2088) = *(v158 + 16);
    *(v3 + 2089) = *(v158 + 20);
    *(v3 + 2094) = 862912514;
    strcpy(v3 + 2098, "250711");
    *(v3 + 527) = vrev64_s32(vsub_s32(*(v7 + 32), *(v361 + 1772)));
    *(v3 + 2116) = *(v149 + 12);
    *(v3 + 2117) = *(v149 + 45);
    v159 = *(v149 + 14);
    *(v3 + 2118) = v159;
    if (*(v149 + 17) == 1)
    {
      v159 |= 2u;
      *(v3 + 2118) = v159;
    }

    if (*(v149 + 16) == 1)
    {
      v159 |= 4u;
      *(v3 + 2118) = v159;
    }

    if (*(v149 + 15) == 1)
    {
      v159 |= 8u;
      *(v3 + 2118) = v159;
    }

    if (*(v149 + 19) == 1)
    {
      v159 |= 0x10u;
      *(v3 + 2118) = v159;
    }

    if (*(v149 + 18) == 1)
    {
      *(v3 + 2118) = v159 | 0x20;
    }

    v160 = *(v149 + 28);
    *(v3 + 2119) = v160;
    if (*(v149 + 31) == 1)
    {
      v160 |= 2u;
      *(v3 + 2119) = v160;
    }

    if (*(v149 + 30) == 1)
    {
      v160 |= 4u;
      *(v3 + 2119) = v160;
    }

    if (*(v149 + 29) == 1)
    {
      v160 |= 8u;
      *(v3 + 2119) = v160;
    }

    if (*(v149 + 33) == 1)
    {
      v160 |= 0x10u;
      *(v3 + 2119) = v160;
    }

    if (*(v149 + 32) == 1)
    {
      *(v3 + 2119) = v160 | 0x20;
    }

    *(v3 + 2120) = *(v149 + 52);
    v161 = *(v361 + 1792);
    v162 = *(v361 + 1808);
    *(v3 + 538) = *(v361 + 1820);
    *(v3 + 531) = v161;
    *(v3 + 535) = v162;
    memset(v393, 0, sizeof(v393));
    v394 = 0;
    v392 = 0;
    memset(v391, 0, sizeof(v391));
    bzero(v390, 0xDA0uLL);
    bzero(v389, 0xDA0uLL);
    v163 = 0;
    v388 = 0;
    memset(v387, 0, sizeof(v387));
    memset(v384, 0, 14);
    memset(v382, 0, sizeof(v382));
    memset(v383, 0, sizeof(v383));
    memset(v381, 0, 14);
    *&v164 = 0x8181818181818181;
    *(&v164 + 1) = 0x8181818181818181;
    *(v386 + 10) = v164;
    v385[11] = v164;
    v386[0] = v164;
    v385[9] = v164;
    v385[10] = v164;
    v385[7] = v164;
    v385[8] = v164;
    v385[5] = v164;
    v385[6] = v164;
    v385[3] = v164;
    v385[4] = v164;
    v385[1] = v164;
    v385[2] = v164;
    v165 = v393 + 1;
    v385[0] = v164;
    while (2)
    {
      Constell_Prn = Get_Constell_Prn(v163);
      *(v165 - 1) = 3855;
      v167 = (*(v361 + 42) & 1) == 0 && *(v359 + v163) == 0;
      v168 = *(v361 + 43) == 1 && *(v359 + v163 + 280) == 0;
      if (Constell_Prn > 3)
      {
        if (Constell_Prn > 5)
        {
          if (Constell_Prn == 6)
          {
            if ((v168 & *(v361 + 20)) == 1)
            {
              goto LABEL_377;
            }
          }

          else if ((v167 & *(v361 + 17)) == 1)
          {
            *(v165 - 1) = 0;
          }
        }

        else
        {
          if (Constell_Prn != 4)
          {
            v170 = *(v361 + 16);
            goto LABEL_373;
          }

          if (*(v361 + 18) == 1 && Num_Prn_Idx_To_GNSS_Id(v163) - 6 <= 0x34)
          {
            if (v167)
            {
              *(v165 - 1) = 11;
            }

            if (v168)
            {
              v169 = 13;
              goto LABEL_378;
            }
          }
        }
      }

      else if (Constell_Prn > 1)
      {
        if (Constell_Prn == 2)
        {
          if ((v167 & *(v361 + 15)) == 1)
          {
            *(v165 - 1) = 4;
          }
        }

        else if (*(v361 + 19) == 1)
        {
          if (v167)
          {
            *(v165 - 1) = 8;
          }

          if (v168)
          {
            v169 = 9;
LABEL_378:
            *v165 = v169;
          }
        }
      }

      else
      {
        if (!Constell_Prn)
        {
          EvCrt_Illegal_switch_case("API_Get_Nav_Data", 0x116Au);
          goto LABEL_386;
        }

        v170 = *(v361 + 14);
LABEL_373:
        if (v170 == 1)
        {
          if (v167)
          {
            *(v165 - 1) = 0;
          }

          if (v168)
          {
LABEL_377:
            v169 = 3;
            goto LABEL_378;
          }
        }
      }

LABEL_386:
      ++v163;
      v165 += 2;
      if (v163 != 218)
      {
        continue;
      }

      break;
    }

    v171 = 0;
    memset(v384, 4, 14);
    while (2)
    {
      v172 = *(v357 + 4 * v171);
      v173 = HIWORD(v172);
      if ((v172 & 0xFF00FF) == 2)
      {
        v174 = 0;
        while (*(v15 + 4 * v174) != *(v353 + 4 * v171))
        {
          if (++v174 == 24)
          {
            goto LABEL_394;
          }
        }

        LOBYTE(v173) = v174 + 1;
      }

LABEL_394:
      v175 = v172 & 0xFF00FFFF | (v173 << 16);
      if (Is_Legal(v175))
      {
        v178 = GNSS_Id_To_Num_Prn_Idx(v175);
        if (*(v355 + 4 * v171) >= 10)
        {
          v180 = 0;
          v181 = &v68[v171];
          v182 = *(v181 + 1);
          if (v182 > 0xF)
          {
            goto LABEL_399;
          }

          if (((1 << v182) & 0x6688) != 0)
          {
            v180 = 1;
            goto LABEL_399;
          }

          if (((1 << v182) & 0x8044) == 0)
          {
LABEL_399:
            *(&v393[v178] | v180) = v182;
            LOBYTE(v179) = *(v351 + v171);
            LOBYTE(v177) = *(v349 + v171);
            *&v183 = *&v177;
            v184 = v179 + *&v183 * 0.0625;
            *(&v390[v178] + v180) = v184;
            LOBYTE(v184) = *(v347 + v171);
            LOBYTE(v183) = *(v345 + v171);
            v177 = v183;
            *(&v389[v178] + v180) = *&v184 + v177 * 0.0625;
            *(&v387[v178] | v180) = *(v343 + v171);
            if (*(v341 + v171) == 1)
            {
              *(&v391[v178] | v180) = 1;
            }

            if (v172 == 2)
            {
              *(v385 + v178) = *(v181 + 3);
            }
          }
        }
      }

      else if (*(v355 + 4 * v171) >= 10)
      {
        v185 = &v68[v171];
        if ((*(v185 + 3) + 7) <= 0xDu)
        {
          v186 = (*(v185 + 3) + 7);
          v384[v186] = *(v185 + 1);
          LOBYTE(v176) = *(v351 + v171);
          LOBYTE(v177) = *(v349 + v171);
          *&v187 = *&v177;
          *&v188 = v176 + *&v187 * 0.0625;
          v383[v186] = *&v188;
          LOBYTE(v188) = *(v347 + v171);
          LOBYTE(v187) = *(v345 + v171);
          v177 = v187;
          v382[v186] = v188 + v177 * 0.0625;
          v381[v186] = *(v343 + v171);
        }
      }

      if (++v171 != 128)
      {
        continue;
      }

      break;
    }

    if (*(v7 + 32) != v336)
    {
      v13 = v331 + 1;
      v17 = *(v7 + 32);
      v14 = v270;
      v5 = &unk_2A13EC000;
      if (v331 == 5)
      {
LABEL_591:
        bzero(v319, 0x18E0uLL);
        bzero(v3, 0x878uLL);
        goto LABEL_592;
      }

      continue;
    }

    break;
  }

  if (v331 > 3)
  {
    goto LABEL_591;
  }

  LOWORD(v177) = *(v361 + 2044);
  Inc_GPS_TOW(-(*(v319 + 7) - *&v177 * 0.000000001), v319 + 5, v319 + 16);
  API_Get_UTC_Cor(0, v319 + 9);
  GPS_To_UTC_Time(v319 + 9, v319 + 10, v319 + 11, v319 + 12, v319 + 13, v319 + 14, v319 + 15, *(v319 + 16), *(v319 + 5), *(v319 + 9));
  if (v319[17] == 1 && *(v319 + 12) == 23 && *(v319 + 13) == 59)
  {
    v189 = *(v319 + 14);
    if (v189 >= 0x3A)
    {
      v368[0] = 0;
      v363[0] = 0;
      LODWORD(v380[0].f64[0]) = 0;
      API_Get_Next_Leap_Second(v368, v363, v380);
      if (!LODWORD(v380[0].f64[0]) && v363[0] == 1)
      {
        *(v319 + 14) = v189 + 1;
      }
    }
  }

  v324 = 0;
  v190 = 0;
  v191 = *(p_api + 32);
  v377 = *(v191 + 10);
  v378 = *(v191 + 11);
  v379[0] = *(v191 + 12);
  *(v379 + 10) = *(v191 + 202);
  v373 = *(v191 + 6);
  v374 = *(v191 + 7);
  v375 = *(v191 + 8);
  v376 = *(v191 + 9);
  v356 = v319 + 6240;
  v265 = v191 + 1172;
  v354 = v319 + 5088;
  v352 = v319 + 6112;
  v332 = v325 + 59990;
  v369 = *(v191 + 2);
  v262 = v317 + 22480;
  v260 = v317 + 4412;
  v258 = v317 + 10112;
  v256 = v317 + 5588;
  v255 = v317 + 24272;
  v370 = *(v191 + 3);
  v371 = *(v191 + 4);
  v254 = v317 + 23544;
  v253 = v317 + 5212;
  v372 = *(v191 + 5);
  v252 = v317 + 19688;
  v251 = v317 + 8756;
  *v368 = *v191;
  v250 = v317 + 25808;
  *&v368[4] = *(v191 + 1);
  v286 = v317 + 76;
  v287 = v317 + 348;
  v284 = v317 + 147;
  v285 = v317 + 221;
  v282 = v317 + 12;
  v283 = v317 + 96;
  v280 = v317 + 86;
  v281 = v317 + 362;
  v278 = v317 + 183;
  v279 = v317 + 284;
  v276 = v317 + 44;
  v277 = v317 + 120;
  v248 = v317 + 3260;
  v249 = v317 + 700;
  v329 = v325 + 50616;
  v338 = (v319 + 1756);
  v350 = v319 + 348;
  v348 = v319 + 860;
  v346 = v319 + 1884;
  v344 = v319 + 2016;
  v342 = v319 + 3040;
  v327 = v319 + 4064;
  v247 = v191 + 82;
  v267 = v191;
  while (2)
  {
    v192 = 0;
    v193 = -100;
    LODWORD(v194) = -1;
    do
    {
      if (*(v368 + v192) <= v193)
      {
        v194 = v194;
      }

      else
      {
        v193 = *(v368 + v192);
        v194 = v192;
      }

      ++v192;
    }

    while (v192 != 218);
    if ((v194 & 0x80000000) == 0)
    {
      *(v368 + v194) = -120;
      if (*(v191 + v194) < 0 && (v195 = &v390[v194], *v195 <= 0.0) && v195[1] <= 0.0 || (LODWORD(v380[0].f64[0]) = 0, v196 = LongPrnIdx_To_Prn(v194, v380), LODWORD(v380[0].f64[0]) == 7))
      {
LABEL_589:
        if (v190 >= 0x80)
        {
          goto LABEL_602;
        }

        continue;
      }

      v197 = 0;
      v360 = v265 + 40 * v194;
      v334 = &v391[v194];
      v198 = v196 - 1;
      v275 = v325 + 11928 + (v198 << 6);
      v199 = 44 * v196;
      v274 = v325 + 47696 + 76 * v198;
      v321 = v196 - 193;
      v273 = v325 + 9152 + 116 * v196;
      v272 = v325 + 25512 + 152 * v198;
      v271 = (v325 + 120 + 116 * v196 - 112);
      v312 = v262 + 76 * v198 + 4;
      v310 = v260 + 80 * v196 - 15436;
      v309 = v258 + 152 * v198 + 4;
      v307 = v256 + 88 * v198 + 4;
      v303 = v249 + 80 * v196 - 76;
      v305 = v255 + (v198 << 6) + 4;
      v289 = v325 + 49824 + 52 * v198 + 4;
      *(v338 + v190) = v196;
      v316 = v325 + 11472 + v199 - 8488;
      v200 = v199 - 44;
      v288 = v325 + 44664 + v199 - 44 + 4;
      v201 = 36 * v196 - 36;
      v314 = v325 + 24044 + v201 + 4;
      v290 = v325 + 16248 + v201 + 4;
      v318 = v325 + 7544 + v200 + 4;
      v301 = v254 + 52 * v198 + 4;
      v299 = v253 + 36 * v196 - 6944;
      v295 = v251 + v201 + 4;
      v297 = v252 + v200 + 4;
      v293 = v250 + v201 + 4;
      v292 = v248 + v201 + 4;
      v202 = &v393[v194];
      v362 = v198;
      v269 = (v325 + 17708 + 88 * v198);
      v203 = 1;
      v335 = v196;
      while (2)
      {
        v204 = v203;
        v205 = *(v202 + v197);
        if (v205 == 15)
        {
LABEL_585:
          v203 = 0;
          v197 = 1;
          if ((v204 & 1) == 0)
          {
            v4 = v319;
            v191 = v267;
            goto LABEL_589;
          }

          continue;
        }

        break;
      }

      v206 = 0;
      if (SLODWORD(v380[0].f64[0]) > 3)
      {
        if (LODWORD(v380[0].f64[0]) == 4)
        {
          if ((v205 - 11) >= 4u)
          {
            v207 = 0;
          }

          else
          {
            v207 = dword_299050980[(v205 - 11)];
          }

          v206 = 4;
        }

        else if (LODWORD(v380[0].f64[0]) == 5)
        {
          if (v205 >= 4)
          {
            v207 = 0;
          }

          else
          {
            v207 = dword_299050990[v205];
          }

          v206 = 3;
        }

        else
        {
          v207 = 0;
          if (LODWORD(v380[0].f64[0]) == 6)
          {
            if (v205 == 3)
            {
              v207 = 98;
            }

            else
            {
              v207 = 0;
            }

            v206 = 6;
          }
        }
      }

      else if (LODWORD(v380[0].f64[0]) == 1)
      {
        if (v205 >= 4)
        {
          v207 = 0;
        }

        else
        {
          v207 = dword_299050970[v205];
        }

        v206 = 1;
      }

      else if (LODWORD(v380[0].f64[0]) == 2)
      {
        v207 = v205 + 29;
        v206 = 2;
        if ((v205 & 0xFC) != 4)
        {
          v207 = 0;
        }
      }

      else
      {
        v207 = 0;
        if (LODWORD(v380[0].f64[0]) == 3)
        {
          v207 = (v205 + 73);
          v206 = 5;
          if ((v205 - 8) >= 3u)
          {
            v207 = 0;
          }
        }
      }

      *(v338 + v190) = v196;
      *&v350[4 * v190] = v206;
      *&v348[4 * v190] = v207;
      v346[v190] = *(v385 + v194);
      *&v344[8 * v190] = *(&v390[v194] + v197);
      *&v342[8 * v190] = *(&v389[v194] + v197);
      v356[v190] = *(&v387[v194] + v197);
      v208 = v68;
      v209 = 3040;
      v210 = 1952;
      while (1)
      {
        v212 = *v208++;
        v211 = v212;
        if (Is_Legal(v212) && GNSS_Id_To_Num_Prn_Idx(v211) == v194)
        {
          break;
        }

        v210 += 40;
        if (++v209 == 3168)
        {
          goto LABEL_471;
        }
      }

      v213 = *(p_api + 136);
      v214 = *(v213 + 4 * v209);
      if (v214)
      {
        v215 = *(v322 + 32) - v214;
      }

      else
      {
        v215 = 0x7FFFFFFF;
      }

      if (v215 < 0)
      {
        v215 = -v215;
      }

      if (v215 >> 5 <= 0x752)
      {
        v216 = (v213 + v210);
        *&v327[8 * v190] = v216[640];
        goto LABEL_473;
      }

LABEL_471:
      v216 = v247 + 5 * v194 + 4;
      if ((*v360 & 0x80000000) == 0)
      {
        *&v327[8 * v190] = *(v360 + 4);
        v216 = v247 + 5 * v194 + 4;
      }

LABEL_473:
      *&v354[8 * v190] = *v216;
      v352[v190] = v334[v197];
      v68 = v340;
      if (*(v325 + 59772 + v194))
      {
        v217 = 1;
      }

      else
      {
        v217 = *(v332 + v194);
      }

      v218 = &v319[3 * v190 + 1372];
      v219 = *v218 & 0xFFFE | v217 & 1;
      *v218 = v219;
      v220 = v219 & 0xFFFD | (2 * (*(v332 + v194) & 1));
      *v218 = v220;
      v221 = LODWORD(v380[0].f64[0]);
      if ((v217 & 1) == 0)
      {
        goto LABEL_510;
      }

      if (SLODWORD(v380[0].f64[0]) <= 2)
      {
        if (LODWORD(v380[0].f64[0]))
        {
          if (LODWORD(v380[0].f64[0]) == 1)
          {
            v222 = *v271;
            if (*(*(v325 + 96) + v362) == 1)
            {
              goto LABEL_492;
            }

            goto LABEL_495;
          }

          if (LODWORD(v380[0].f64[0]) == 2)
          {
            v222 = *(v275 + 4);
            v223 = *(v325 + 17208);
            goto LABEL_490;
          }
        }

        else
        {
          EvCrt_Illegal_switch_case("API_Get_Nav_Data", 0x12EFu);
          v221 = LODWORD(v380[0].f64[0]);
        }

        goto LABEL_510;
      }

      if (SLODWORD(v380[0].f64[0]) > 4)
      {
        if (LODWORD(v380[0].f64[0]) == 5)
        {
          v222 = *(v273 - 22384);
          v223 = *(v325 + 9128);
          v224 = v321;
          goto LABEL_491;
        }

        if (LODWORD(v380[0].f64[0]) == 6)
        {
          v222 = *(v274 + 4);
          v223 = *(v339 + 172);
          goto LABEL_490;
        }

        goto LABEL_510;
      }

      if (LODWORD(v380[0].f64[0]) == 3)
      {
        v222 = *(v269 + 1);
        v223 = *(v325 + 17648);
      }

      else
      {
        v222 = *(v272 + 4);
        v223 = *(v325 + 25488);
      }

LABEL_490:
      v224 = v362;
LABEL_491:
      if (*(v223 + v224))
      {
LABEL_492:
        v220 |= 0x20u;
        *v218 = v220;
        v225 = 1;
        goto LABEL_496;
      }

LABEL_495:
      v225 = 0;
LABEL_496:
      if (v222 > 4)
      {
        if (v222 == 5)
        {
          *v218 = v220 | 8;
          if (v225)
          {
            goto LABEL_510;
          }

          v226 = 136;
          goto LABEL_508;
        }

        if (v222 != 6)
        {
          goto LABEL_510;
        }

        v227 = v220 | 2;
      }

      else
      {
        if (v222 != 3)
        {
          if (v222 == 4)
          {
            *v218 = v220 | 4;
            if ((v225 & 1) == 0)
            {
              v226 = 68;
              goto LABEL_508;
            }
          }

LABEL_510:
          if (v221 <= 2)
          {
            if (v221)
            {
              if (v221 == 1)
              {
                v228 = v303;
                if (*(v282 + v362) == 1)
                {
                  goto LABEL_530;
                }

                v221 = 1;
              }

              else if (v221 == 2)
              {
                v228 = v305;
                if (*(v283 + v362))
                {
                  goto LABEL_530;
                }

                v221 = 2;
              }
            }

            else
            {
              EvCrt_Illegal_switch_case("API_Get_Nav_Data", 0x131Cu);
              v221 = LODWORD(v380[0].f64[0]);
            }
          }

          else if (v221 > 4)
          {
            if (v221 == 5)
            {
              v228 = v310;
              if (*(v286 + v321))
              {
                goto LABEL_530;
              }

              v221 = 5;
            }

            else if (v221 == 6)
            {
              v228 = v312;
              if (*(v287 + v362))
              {
                goto LABEL_530;
              }

              v221 = 6;
            }
          }

          else if (v221 == 3)
          {
            v228 = v307;
            if (*(v284 + v362))
            {
              goto LABEL_530;
            }

            v221 = 3;
          }

          else
          {
            v228 = v309;
            if ((*(v285 + v362) & 1) == 0)
            {
              v221 = 4;
              goto LABEL_535;
            }

LABEL_530:
            v229 = *v228;
            if (v229 == 5)
            {
              v230 = *v218 | 8;
LABEL_534:
              *v218 = v230;
            }

            else if (v229 == 3)
            {
              v230 = *v218 | 0x10;
              goto LABEL_534;
            }
          }

LABEL_535:
          if (*(v325 + 60208 + v194) != 1)
          {
            goto LABEL_553;
          }

          v231 = *v218;
          *v218 |= 0x200u;
          if (v221 <= 2)
          {
            if (v221)
            {
              v232 = v318;
              if (v221 == 1)
              {
                goto LABEL_546;
              }

              v232 = v290;
              if (v221 == 2)
              {
                goto LABEL_546;
              }
            }

            else
            {
              EvCrt_Illegal_switch_case("API_Get_Nav_Data", 0x134Du);
              v221 = LODWORD(v380[0].f64[0]);
            }

            goto LABEL_553;
          }

          if (v221 > 4)
          {
            v232 = v316;
            if (v221 == 5)
            {
              goto LABEL_546;
            }

            v232 = v289;
            if (v221 == 6)
            {
              goto LABEL_546;
            }

            goto LABEL_553;
          }

          v232 = v314;
          if (v221 != 3)
          {
            v232 = v288;
          }

LABEL_546:
          v233 = *v232;
          switch(v233)
          {
            case 5:
              v234 = 18944;
              break;
            case 4:
              v234 = 9728;
              break;
            case 3:
              v234 = -28160;
              break;
            default:
LABEL_553:
              if (v221 <= 2)
              {
                switch(v221)
                {
                  case 0:
                    EvCrt_Illegal_switch_case("API_Get_Nav_Data", 0x136Eu);
                    break;
                  case 1:
                    v235 = v292;
                    if (*(v276 + v362) != 1)
                    {
                      break;
                    }

                    goto LABEL_573;
                  case 2:
                    v235 = v293;
                    if (*(v277 + v362))
                    {
                      goto LABEL_573;
                    }

                    break;
                }
              }

              else if (v221 > 4)
              {
                if (v221 == 5)
                {
                  v235 = v299;
                  if (*(v280 + v321))
                  {
                    goto LABEL_573;
                  }
                }

                else if (v221 == 6)
                {
                  v235 = v301;
                  if (*(v281 + v362))
                  {
                    goto LABEL_573;
                  }
                }
              }

              else if (v221 == 3)
              {
                v235 = v295;
                if (*(v278 + v362))
                {
                  goto LABEL_573;
                }
              }

              else
              {
                v235 = v297;
                if ((*(v279 + v362) & 1) == 0)
                {
                  goto LABEL_578;
                }

LABEL_573:
                v236 = *v235;
                if (v236 == 5)
                {
                  v237 = *v218 | 0x800;
                }

                else
                {
                  if (v236 != 3)
                  {
                    goto LABEL_578;
                  }

                  v237 = *v218 | 0x1000;
                }

                *v218 = v237;
              }

LABEL_578:
              v238 = *(v218 + 2) & 0xFE | *(v329 + v194);
              *(v218 + 2) = v238;
              v239 = v238 & 0xFD | (2 * *(v329 + v194));
              *(v218 + 2) = v239;
              v240 = v239 & 0xFB | (4 * *(v329 + v194));
              *(v218 + 2) = v240;
              v241 = v240 & 0xF7 | (8 * *(v329 + v194));
              *(v218 + 2) = v241;
              *(v218 + 2) = v241 & 0xEF | (16 * *(v329 + v194));
              ++v190;
              if (v197)
              {
                v196 = v335;
                if (v334[1] != 1 || (*v334 & 1) != 0)
                {
LABEL_584:
                  v202 = &v393[v194];
                  goto LABEL_585;
                }
              }

              else
              {
                v196 = v335;
                if ((*v334 & 1) == 0)
                {
                  goto LABEL_584;
                }
              }

              ++v324;
              goto LABEL_584;
          }

          *v218 = v231 | v234;
          goto LABEL_553;
        }

        *v218 = v220 | 0x10;
        if (v225)
        {
          goto LABEL_510;
        }

        v226 = 272;
LABEL_508:
        v227 = v220 | v226;
      }

      *v218 = v227;
      goto LABEL_510;
    }

    break;
  }

  v244 = 0;
  do
  {
    v245 = v383[v244];
    if (v245 > 0.0)
    {
      v346[v190] = v244 - 7;
      if (((v384[v244] - 4) & 0xFC) != 0)
      {
        v246 = 0;
      }

      else
      {
        v246 = (v384[v244] - 4) + 33;
      }

      *&v350[4 * v190] = 2;
      *&v348[4 * v190] = v246;
      *&v344[8 * v190] = v245;
      *&v342[8 * v190] = v382[v244];
      v356[v190] = v381[v244];
      *&v327[8 * v190] = 0;
      *&v354[8 * v190] = 0xC058C00000000000;
      v352[v190++] = 0;
    }

    if (v244 > 0xC)
    {
      break;
    }

    ++v244;
  }

  while (v190 < 0x80);
LABEL_602:
  v4[344] = v190;
  v4[345] = v324;
  *v4 = v336;
  result = 1;
  *v3 = v336;
LABEL_593:
  v243 = *MEMORY[0x29EDCA608];
  return result;
}